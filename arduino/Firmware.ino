/* 
 * This file is part of the HealthSense project (https://gitlab.com/S34m1n4t0r/HealthSense.git).
 * Copyright (c) 2021 Stefan Slooten.
 * 
 * This program is free software: you can redistribute it and/or modify  
 * it under the terms of the GNU General Public License as published by  
 * the Free Software Foundation, version 3.
 *
 * This program is distributed in the hope that it will be useful, but 
 * WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License 
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
/* ################################################## */
/* ############### Include Libraries ################ */
/* ################################################## */
#include "Wire.h"
#include "I2Cdev.h"
#include <MPU6050.h>
#include "I2C_BM8563.h"
#include "SD.h"
#include "BH1750.h"
#include "phone_number.h"
/*Define phone_number in phone_number.h*/

/* ################################################## */
/* ############ Destination Phone Number ############ */
/* ################################################## */
const char PHONE_NUMBER_DESTINATION[] = PHONE_NUMBER_DEFINE;

/* ################################################## */
/* ################### Definitions ################## */
/* ################################################## */
#define SDFILE_PIN_CS	10
#define SIM800L_RESET_PIN 9
#define UVSENSOR_PIN_OUT	A1
#define UVSENSOR_PIN_3_3V	A0
#define UVSENSOR_ENABLE_PIN A2
#define MOVEMENT_TIMEOUT_IN_MULTIPLES_OF_30S 720 //6h
#define MOVEMENT_THRESHOLD 2000
#define TIME_START 8 //Uhr
#define TIME_STOP 20 //Uhr
#define LED_PIN 2     //D2
#define SIM_EN 17
#define EN_A_VBAT 6

/* ################################################## */
/* ########## Global object initialization ########## */
/* ################################################## */
MPU6050 mpu6050;
File sdFile;
BH1750 lightMeter;
I2C_BM8563 rtc(I2C_BM8563_DEFAULT_ADDRESS, Wire);

/* ################################################## */
/* ################ type definitions ################ */
/* ################################################## */
typedef struct {
  uint8_t year;
  uint8_t month;
  uint8_t day;
  uint8_t hour;
  uint8_t minute;
  uint8_t second;
} timestamp_t;

typedef struct{
  int16_t gx;
  int16_t gy;
  int16_t gz;  
} movement_t;

/* ################################################## */
/* ############### Function Prototypes ############## */
/* ################################################## */
void SendInitCompleteViaSms(void);
void SendSdCardInitErrorViaSms(void);
void SendSdCardRuntimeErrorViaSms(void);
void SendNoMovementErrorViaSms(void);
void SendWrongDateErrorViaSms(void);
void SetupSms(void);
void TriggerSendSms(void);
void UpdateRtcTimeFromSim800(void);
//void SetSleepModeForSimModule(bool enable);
timestamp_t GetTimestamp();
movement_t GetMovement(void);

void blink_once()
{
  digitalWrite(LED_PIN,HIGH);
  delay(1000);
  digitalWrite(LED_PIN,LOW);
  delay(1000);
  digitalWrite(LED_PIN,HIGH);
}

/* ################################################## */
/* ############# Arduino Setup Routine ############## */
/* ################################################## */
void setup()
{
  // I2C interface init for RTC, GYRO and Lightsensor (BH1750)
  Wire.begin();
  //Setup Debug-Led. Activate during init
  pinMode(LED_PIN, OUTPUT);
  
  //Setup Vbat meas
  pinMode(EN_A_VBAT, INPUT); 
  //digitalWrite(EN_A_VBAT,HIGH);
  //Enable Sim800 Module
  pinMode(SIM_EN, OUTPUT); 
  digitalWrite(SIM_EN,LOW);
  
  delay(100);
  // Lightsensor (visible) init
  lightMeter.begin(BH1750::ONE_TIME_HIGH_RES_MODE);
  blink_once();
  // rtc init
  rtc.begin();
  blink_once();
  // Gyro
  mpu6050.initialize();
  blink_once();
  // Lightsensor UV enable
  pinMode(UVSENSOR_ENABLE_PIN, OUTPUT); 
  digitalWrite(UVSENSOR_ENABLE_PIN,LOW);
  // SIM800L UMTS module enable
  pinMode(SIM800L_RESET_PIN, OUTPUT); 
  digitalWrite(SIM800L_RESET_PIN,HIGH);
  
  // SIM800L init
  Serial.begin(9600);
  // sd card init and error message if failed
  pinMode(SDFILE_PIN_CS, OUTPUT);  
  
  if (SD.begin())
  {
    blink_once();
    UpdateRtcTimeFromSim800();
    blink_once();
    SendInitCompleteViaSms();
  }
  else
  {
    SendSdCardInitErrorViaSms();
    while (true)
    {
      /* safe state */
      delay(1000);
      digitalWrite(LED_PIN,LOW);
      delay(1000);
      digitalWrite(LED_PIN,HIGH);
    }
  }
  digitalWrite(LED_PIN,LOW);
  /*LED indicates setup */

  //SetSleepModeForSimModule(true);
}

/* ################################################## */
/* ############### Arduino Main Loop ################ */
/* ################################################## */
uint16_t movementTimeout = MOVEMENT_TIMEOUT_IN_MULTIPLES_OF_30S;
void loop()
{
  timestamp_t timestamp = GetTimestamp();
  movement_t movement = GetMovement();
  sdFile = SD.open("protocol.txt", FILE_WRITE);
  if (sdFile)
  {
    digitalWrite(LED_PIN,HIGH);
    sdFile.print(String(timestamp.year));
    sdFile.print(",");
    sdFile.print(String(timestamp.month));
    sdFile.print(",");
    sdFile.print(String(timestamp.day));
    sdFile.print(",");
    sdFile.print(String(timestamp.hour));
    sdFile.print(",");
    sdFile.print(String(timestamp.minute));
    sdFile.print(",");
    sdFile.print(String(timestamp.second));
    sdFile.print(",");
    sdFile.print(String((uint16_t)analogRead(A1)));//uv
    sdFile.print(",");
    sdFile.print(String((uint16_t)lightMeter.readLightLevel(true)));//lux 
    sdFile.print(",");
    sdFile.print(String(movement.gx));
    sdFile.print(",");
    sdFile.print(String(movement.gy));
    sdFile.print(",");
    sdFile.print(String(movement.gz));
    //digitalWrite(EN_A_VBAT,LOW);
    sdFile.print(",");
    sdFile.print(String((uint16_t)analogRead(A0)));//supply
    //digitalWrite(EN_A_VBAT,HIGH);
    sdFile.print("\r\n");
    sdFile.close();
    digitalWrite(LED_PIN,LOW);
  }
  else
  {
    //SetSleepModeForSimModule(false);
    SendSdCardRuntimeErrorViaSms();
    //SetSleepModeForSimModule(true);
  }

  // reset movement counter in night time
  if((timestamp.hour < TIME_START) || (timestamp.hour > TIME_STOP))
  {
    movementTimeout = MOVEMENT_TIMEOUT_IN_MULTIPLES_OF_30S;
  }

  if((abs(movement.gx) + abs(movement.gy) + abs(movement.gz)) < MOVEMENT_THRESHOLD)
  {
    if(0 != movementTimeout)
    {
      movementTimeout--;
    }
    else
    {
      SendNoMovementErrorViaSms();
      movementTimeout = MOVEMENT_TIMEOUT_IN_MULTIPLES_OF_30S;
    }
  }
  else
  {
    movementTimeout = MOVEMENT_TIMEOUT_IN_MULTIPLES_OF_30S;
  }
    
  delay(30000);
}

/* ################################################## */
/* ########### Application Code Functions ########### */
/* ################################################## */
/** 
 * @brief: Sends a SMS to indicate, that initialization has been successfully completed
 * @param: void
 * @return: void
 */
void SendInitCompleteViaSms(void)
{
  SetupSms();
  Serial.print("Setup Complete. Logger is up and running :)");
  TriggerSendSms();
}

/** 
 * @brief: Sends a SMS to indicate, that SD-Card initialization failed
 * @param: void
 * @return: void
 */
void SendSdCardInitErrorViaSms(void)
{
  SetupSms();
  Serial.print("SD-Card Setup Failed. Please insert correctly formatteed SD-Card.");
  TriggerSendSms();
}

/** 
 * @brief: Sends a SMS to indicate, that the SD-Card has been corrupted during runtime
 * @param: void
 * @return: void
 */
void SendSdCardRuntimeErrorViaSms(void)
{
  SetupSms();
  Serial.print("SD-Card Corrupted. Please reformat SD-Card.");
  TriggerSendSms();
}

void FlushSerialBuffer(void)
{
  while(Serial.available() > 0)
  {
    (void)Serial.read();
  }
}

/** 
 * @brief: Sends a SMS to indicate, that no movement has been detected for more than 12h
 * @param: void
 * @return: void
 */
void SendNoMovementErrorViaSms(void)
{
  SetupSms();
  Serial.print("No movement for more than 6h detected.");
  TriggerSendSms();
}

/** 
 * @brief: Sends a SMS to indicate, that date was wrint during init
 * @param: void
 * @return: void
 */
void SendWrongDateErrorViaSms(void)
{
  SetupSms();
  Serial.print("Date could not be acquired.");
  TriggerSendSms();
}

/** 
 * @brief: Sets up the SIM800L module for SMS transmission 
 * @param: void
 * @return: void
 */
void SetupSms(void)
{
  SetSleepModeForSimModule(false);
  Serial.println("AT"); //Once the handshake test is successful, it will back to OK
  delay(1000);
  FlushSerialBuffer();
  Serial.println("ATI"); //Get the module name and revision
  delay(1000);
  FlushSerialBuffer();
  Serial.println("AT+CSQ"); //Signal quality test, value range is 0-31 , 31 is the best
  delay(1000);
  FlushSerialBuffer();
  Serial.println("AT+CCID"); //Read SIM information to confirm whether the SIM is plugged
  delay(1000);
  FlushSerialBuffer();
  Serial.println("AT+CREG=1");
  delay(1000);
  FlushSerialBuffer();
  Serial.println("AT+CREG?"); //Check whether it has registered in the network
  delay(1000);
  FlushSerialBuffer();
  Serial.println("AT+CMGF=1"); // Configuring TEXT mode
  delay(1000);
  FlushSerialBuffer();
  Serial.println("AT+CMGS=\""+String(PHONE_NUMBER_DESTINATION)+"\"");
  delay(1000);
  FlushSerialBuffer();
}

/** 
 * @brief: Triggers the sending of a previously prepared SMS
 * @param: void
 * @return: void
 */
void TriggerSendSms(void)
{
  delay(1000);
  FlushSerialBuffer();
  Serial.write(26);
  Serial.print("AT+CSIM?");
  delay(1000);
  FlushSerialBuffer();

  SetSleepModeForSimModule(true);

}

void UpdateRtcTimeFromSim800(void)
{
  bool isSet = false;
  char uartBuffer[160] = {0}; 
  uint8_t i;
  I2C_BM8563_DateTypeDef dateStruct;
  I2C_BM8563_TimeTypeDef timeStruct;
  uint8_t timeout = 20;

  SetSleepModeForSimModule(false);
  while(!isSet)
  {
    delay(2000);
    FlushSerialBuffer();
    // Check if Time Sync is activated
    Serial.println("AT+CLTS?");
    delay(10000);
    i = 0;
    while(Serial.available() > 0)
    {
      uartBuffer[i] = Serial.read();
      i++;
    }
    for(uint8_t w = 0; w < i ; w++)
    {
      if(uartBuffer[w] == ':')
      {
        isSet = uartBuffer[w + 2] == '1';
      }
    }
    delay(1000);
    timeout--;
    if (timeout == 0)
      isSet=1;
    if(!isSet)
    {
      //Serial.println("AT+CLTS=1");
      Serial.println("AT+CLTS=1;&W");
      delay(1000);
      FlushSerialBuffer();
      Serial.println("AT+CFUN=1,1");
      delay(4000);
      FlushSerialBuffer();
    }
  }

  delay(10000);
  FlushSerialBuffer();
  Serial.println("AT+CTZU=1");
  delay(10000);
  FlushSerialBuffer();
  Serial.println("AT+CREG=1");
  delay(10000);
  FlushSerialBuffer();
  Serial.println("AT+CCLK?");
  delay(10000);
  i = 0;
  while(Serial.available() > 0)
  {
    uartBuffer[i] = Serial.read();
    i++;
  }
  uint8_t w = 0;
  for(w = 0; w < i ; w++)
  {
    if(uartBuffer[w] == '"')
    {
      dateStruct.year = (10 * (uartBuffer[w+1] - 48)) + (uartBuffer[w+2] - 48) + 1900;
      dateStruct.month =  (10 * (uartBuffer[w+4] - 48)) + (uartBuffer[w+5] - 48);
      dateStruct.date =  (10 * (uartBuffer[w+7] - 48)) + (uartBuffer[w+8] - 48);
      timeStruct.hours =  (10 * (uartBuffer[w+10] - 48)) + (uartBuffer[w+11] - 48);
      timeStruct.minutes =  (10 * (uartBuffer[w+13] - 48)) + (uartBuffer[w+14] - 48);
      timeStruct.seconds =  (10 * (uartBuffer[w+16] - 48)) + (uartBuffer[w+17] - 48);
      rtc.setDate(&dateStruct);
      rtc.setTime(&timeStruct);
      break;
    }
  }
  if((dateStruct.year < 21) || (dateStruct.month == 0) || (dateStruct.date == 0))
  {
    SendWrongDateErrorViaSms();
  }
}

/** 
 * @brief: Reads the current time from the BM8563 RTC
 * @param: void
 * @return: timestamp_t   timestamp structure
 */
timestamp_t GetTimestamp()
{
  I2C_BM8563_DateTypeDef dateStruct;
  I2C_BM8563_TimeTypeDef timeStruct;
  rtc.getDate(&dateStruct);
  rtc.getTime(&timeStruct);
  timestamp_t loc_Timestamp;
  loc_Timestamp.year = dateStruct.year % 100;
  loc_Timestamp.month = dateStruct.month;
  loc_Timestamp.day = dateStruct.date;
  loc_Timestamp.hour = timeStruct.hours;
  loc_Timestamp.minute = timeStruct.minutes;
  loc_Timestamp.second = timeStruct.seconds;
  return loc_Timestamp;
}

/** 
 * @brief: Reads the current movement from the MPU6050 Gyro
 * @param: void
 * @return: movement_t   movement structure
 */
movement_t GetMovement(void)
{
  movement_t movement;
  int16_t dump;
  mpu6050.getMotion6(&dump, &dump, &dump, &(movement.gx), &(movement.gy), &(movement.gz));
  return movement;
}

void SetSleepModeForSimModule(bool enable)
{
  if (enable)
  {
    Serial.println("AT+CSCLK=2");
    delay(1000);
     FlushSerialBuffer();
  }else
  {
    Serial.println("AT+CSCLK=0");
     delay(1000);
     FlushSerialBuffer();
    delay(10000);
  }
}
