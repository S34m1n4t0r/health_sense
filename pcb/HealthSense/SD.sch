EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5900 1650 0    50   Output ~ 0
DO
Text HLabel 5900 1900 0    50   BiDi ~ 0
DI
Text HLabel 5900 2150 0    50   BiDi ~ 0
CLK
Text HLabel 5900 2400 0    50   BiDi ~ 0
CS
$Comp
L HealthSense:Micro_SD_Card-Connector J2
U 1 1 5FCAF2ED
P 8950 1800
AR Path="/5FCAF2ED" Ref="J2"  Part="1" 
AR Path="/5FC7DDC0/5FCAF2ED" Ref="J2"  Part="1" 
F 0 "J2" H 8900 2517 50  0000 C CNN
F 1 "Micro_SD_Card" H 8900 2426 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Wuerth_693072010801" H 10100 2100 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 8950 1800 50  0001 C CNN
F 4 "693072010801" H 8950 1800 50  0001 C CNN "PartNumber"
F 5 "732-3820-1-ND" H 8950 1800 50  0001 C CNN "DigiKey"
	1    8950 1800
	1    0    0    -1  
$EndComp
Text Label 7550 2100 0    50   ~ 0
S_DO
Wire Wire Line
	7550 2100 8050 2100
NoConn ~ 8050 1500
NoConn ~ 8050 2200
Text Label 7550 1600 0    50   ~ 0
S_CS
Wire Wire Line
	7550 1600 8050 1600
Wire Wire Line
	7550 1900 8050 1900
Text Label 7550 1900 0    50   ~ 0
S_SCK
Text Label 7550 1700 0    50   ~ 0
S_DI
Wire Wire Line
	7550 1700 8050 1700
Wire Wire Line
	8050 1800 7300 1800
$Comp
L power:+3V3 #PWR0111
U 1 1 5FCAFB73
P 7000 1500
F 0 "#PWR0111" H 7000 1350 50  0001 C CNN
F 1 "+3V3" H 7015 1673 50  0000 C CNN
F 2 "" H 7000 1500 50  0001 C CNN
F 3 "" H 7000 1500 50  0001 C CNN
	1    7000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2000 8050 2000
$Comp
L power:GND #PWR0112
U 1 1 5FCAFD8D
P 7350 2000
F 0 "#PWR0112" H 7350 1750 50  0001 C CNN
F 1 "GND" H 7355 1827 50  0000 C CNN
F 2 "" H 7350 2000 50  0001 C CNN
F 3 "" H 7350 2000 50  0001 C CNN
	1    7350 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCB20F7
P 7000 1950
AR Path="/5FCB20F7" Ref="C?"  Part="1" 
AR Path="/5FC7DDC0/5FCB20F7" Ref="C24"  Part="1" 
F 0 "C24" H 7115 1996 50  0000 L CNN
F 1 "100n" H 7115 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7038 1800 50  0001 C CNN
F 3 "~" H 7000 1950 50  0001 C CNN
F 4 "CL10B104KB8NNNL" H 7000 1950 50  0001 C CNN "PartNumber"
	1    7000 1950
	1    0    0    -1  
$EndComp
Connection ~ 7000 1800
$Comp
L power:GND #PWR0113
U 1 1 5FCB242C
P 7000 2100
F 0 "#PWR0113" H 7000 1850 50  0001 C CNN
F 1 "GND" H 7005 1927 50  0000 C CNN
F 2 "" H 7000 2100 50  0001 C CNN
F 3 "" H 7000 2100 50  0001 C CNN
	1    7000 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FCB29E2
P 6050 1650
F 0 "R2" V 5950 1650 50  0000 C CNN
F 1 "1K" V 6050 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 1650 50  0001 C CNN
F 3 "~" H 6050 1650 50  0001 C CNN
F 4 "CRGCQ0603J1K0" H 6050 1650 50  0001 C CNN "PartNumber"
	1    6050 1650
	0    1    1    0   
$EndComp
Text Label 6200 1900 0    50   ~ 0
S_DI
Text Label 6200 2400 0    50   ~ 0
S_CS
Text Label 6200 2150 0    50   ~ 0
S_SCK
$Comp
L Device:R R22
U 1 1 5FD275F3
P 6050 1900
F 0 "R22" V 5950 1900 50  0000 C CNN
F 1 "1K" V 6050 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 1900 50  0001 C CNN
F 3 "~" H 6050 1900 50  0001 C CNN
F 4 "CRGCQ0603J1K0" H 6050 1900 50  0001 C CNN "PartNumber"
	1    6050 1900
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 5FD278BE
P 6050 2150
F 0 "R25" V 5950 2150 50  0000 C CNN
F 1 "1K" V 6050 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 2150 50  0001 C CNN
F 3 "~" H 6050 2150 50  0001 C CNN
F 4 "CRGCQ0603J1K0" H 6050 2150 50  0001 C CNN "PartNumber"
	1    6050 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 5FD279EC
P 6050 2400
F 0 "R28" V 5950 2400 50  0000 C CNN
F 1 "1K" V 6050 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 2400 50  0001 C CNN
F 3 "~" H 6050 2400 50  0001 C CNN
F 4 "CRGCQ0603J1K0" H 6050 2400 50  0001 C CNN "PartNumber"
	1    6050 2400
	0    1    1    0   
$EndComp
Text Label 6200 1650 0    50   ~ 0
S_DO
$Comp
L power:GND #PWR0121
U 1 1 5FD29452
P 9750 2700
F 0 "#PWR0121" H 9750 2450 50  0001 C CNN
F 1 "GND" H 9755 2527 50  0000 C CNN
F 2 "" H 9750 2700 50  0001 C CNN
F 3 "" H 9750 2700 50  0001 C CNN
	1    9750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2400 9750 2700
$Comp
L Device:R R42
U 1 1 5FD530F5
P 7000 1650
F 0 "R42" H 7070 1696 50  0000 L CNN
F 1 "0R" H 7070 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6930 1650 50  0001 C CNN
F 3 "~" H 7000 1650 50  0001 C CNN
F 4 "RMCF0402ZT0R00" H 7000 1650 50  0001 C CNN "PartNumber"
	1    7000 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5FD57B8A
P 7300 1450
F 0 "TP8" H 7358 1568 50  0000 L CNN
F 1 "TestPoint" H 7358 1477 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7500 1450 50  0001 C CNN
F 3 "~" H 7500 1450 50  0001 C CNN
	1    7300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1450 7300 1800
Connection ~ 7300 1800
Wire Wire Line
	7300 1800 7000 1800
$EndSCHEMATC
