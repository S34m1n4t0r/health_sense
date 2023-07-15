EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Sensor_Motion:MPU-6050 U11
U 1 1 5FC912A0
P 5750 3500
F 0 "U11" H 5300 4050 50  0000 C CNN
F 1 "MPU-6050" H 6000 2950 50  0000 C CNN
F 2 "Sensor_Motion:InvenSense_QFN-24_4x4mm_P0.5mm" H 5750 2700 50  0001 C CNN
F 3 "https://store.invensense.com/datasheets/invensense/MPU-6050_DataSheet_V3%204.pdf" H 5750 3350 50  0001 C CNN
F 4 "MPU-6050" H 5750 3500 50  0001 C CNN "PartNumber"
F 5 "1428-1007-1-ND" H 5750 3500 50  0001 C CNN "DigiKey"
	1    5750 3500
	1    0    0    -1  
$EndComp
Text HLabel 4500 3200 0    50   BiDi ~ 0
SDA
Text HLabel 4500 3300 0    50   Input ~ 0
SCL
Wire Wire Line
	4500 3200 5050 3200
Wire Wire Line
	4500 3300 5050 3300
$Comp
L Device:C C?
U 1 1 5FC9592F
P 6450 3950
AR Path="/5FC9592F" Ref="C?"  Part="1" 
AR Path="/5FC90726/5FC9592F" Ref="C26"  Part="1" 
F 0 "C26" H 6565 3996 50  0000 L CNN
F 1 "100n" H 6565 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6488 3800 50  0001 C CNN
F 3 "~" H 6450 3950 50  0001 C CNN
F 4 "CL10B104KB8NNNL" H 6450 3950 50  0001 C CNN "PartNumber"
	1    6450 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FC9596C
P 7000 3950
AR Path="/5FC9596C" Ref="C?"  Part="1" 
AR Path="/5FC90726/5FC9596C" Ref="C28"  Part="1" 
F 0 "C28" H 7115 3996 50  0000 L CNN
F 1 "2n2" H 7115 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7038 3800 50  0001 C CNN
F 3 "~" H 7000 3950 50  0001 C CNN
F 4 "CL10B222KB8NNNC" H 7000 3950 50  0001 C CNN "PartNumber"
F 5 "1276-1110-1-ND" H 7000 3950 50  0001 C CNN "DigiKey"
	1    7000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3800 7000 3700
Wire Wire Line
	7000 3700 6450 3700
$Comp
L power:GND #PWR0170
U 1 1 5FC95CF7
P 7000 4100
F 0 "#PWR0170" H 7000 3850 50  0001 C CNN
F 1 "GND" H 7005 3927 50  0000 C CNN
F 2 "" H 7000 4100 50  0001 C CNN
F 3 "" H 7000 4100 50  0001 C CNN
	1    7000 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0171
U 1 1 5FC9647D
P 6450 4100
F 0 "#PWR0171" H 6450 3850 50  0001 C CNN
F 1 "GND" H 6455 3927 50  0000 C CNN
F 2 "" H 6450 4100 50  0001 C CNN
F 3 "" H 6450 4100 50  0001 C CNN
	1    6450 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0172
U 1 1 5FC966AD
P 5750 4200
F 0 "#PWR0172" H 5750 3950 50  0001 C CNN
F 1 "GND" H 5755 4027 50  0000 C CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "" H 5750 4200 50  0001 C CNN
	1    5750 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FC97229
P 6100 2600
AR Path="/5FC97229" Ref="C?"  Part="1" 
AR Path="/5FC90726/5FC97229" Ref="C25"  Part="1" 
F 0 "C25" H 6215 2646 50  0000 L CNN
F 1 "100n" H 6215 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6138 2450 50  0001 C CNN
F 3 "~" H 6100 2600 50  0001 C CNN
F 4 "CL10B104KB8NNNL" H 6100 2600 50  0001 C CNN "PartNumber"
	1    6100 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0173
U 1 1 5FC975DE
P 6100 2750
F 0 "#PWR0173" H 6100 2500 50  0001 C CNN
F 1 "GND" H 6105 2577 50  0000 C CNN
F 2 "" H 6100 2750 50  0001 C CNN
F 3 "" H 6100 2750 50  0001 C CNN
	1    6100 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2800 5850 2450
Wire Wire Line
	5850 2450 6100 2450
Connection ~ 6100 2450
Wire Wire Line
	6100 2450 6650 2450
$Comp
L power:+3V3 #PWR0174
U 1 1 5FC98215
P 7650 2450
F 0 "#PWR0174" H 7650 2300 50  0001 C CNN
F 1 "+3V3" H 7665 2623 50  0000 C CNN
F 2 "" H 7650 2450 50  0001 C CNN
F 3 "" H 7650 2450 50  0001 C CNN
	1    7650 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FC986C9
P 6650 2600
AR Path="/5FC986C9" Ref="C?"  Part="1" 
AR Path="/5FC90726/5FC986C9" Ref="C27"  Part="1" 
F 0 "C27" H 6765 2646 50  0000 L CNN
F 1 "100n" H 6765 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6688 2450 50  0001 C CNN
F 3 "~" H 6650 2600 50  0001 C CNN
F 4 "CL10B104KB8NNNL" H 6650 2600 50  0001 C CNN "PartNumber"
	1    6650 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0175
U 1 1 5FC988B0
P 6650 2750
F 0 "#PWR0175" H 6650 2500 50  0001 C CNN
F 1 "GND" H 6655 2577 50  0000 C CNN
F 2 "" H 6650 2750 50  0001 C CNN
F 3 "" H 6650 2750 50  0001 C CNN
	1    6650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2450 5650 2450
Wire Wire Line
	5650 2450 5650 2800
Connection ~ 5850 2450
$Comp
L power:GND #PWR0176
U 1 1 5FC990CF
P 5050 3700
F 0 "#PWR0176" H 5050 3450 50  0001 C CNN
F 1 "GND" V 5055 3572 50  0000 R CNN
F 2 "" H 5050 3700 50  0001 C CNN
F 3 "" H 5050 3700 50  0001 C CNN
	1    5050 3700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0177
U 1 1 5FC995EC
P 4750 3400
F 0 "#PWR0177" H 4750 3150 50  0001 C CNN
F 1 "GND" V 4755 3272 50  0000 R CNN
F 2 "" H 4750 3400 50  0001 C CNN
F 3 "" H 4750 3400 50  0001 C CNN
	1    4750 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FC9D12A
P 4900 3400
AR Path="/5FC9D12A" Ref="R?"  Part="1" 
AR Path="/5FC90726/5FC9D12A" Ref="R4"  Part="1" 
F 0 "R4" V 4850 3250 50  0000 C CNN
F 1 "1K" V 4900 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4830 3400 50  0001 C CNN
F 3 "~" H 4900 3400 50  0001 C CNN
F 4 "CRGCQ0603J1K0" H 4900 3400 50  0001 C CNN "PartNumber"
	1    4900 3400
	0    1    1    0   
$EndComp
NoConn ~ 5050 3800
NoConn ~ 6450 3500
NoConn ~ 6450 3400
Connection ~ 6650 2450
Wire Wire Line
	6650 2450 7100 2450
$Comp
L Device:R R?
U 1 1 5FD2083B
P 7250 2450
AR Path="/5FD2083B" Ref="R?"  Part="1" 
AR Path="/5FC94345/5FD2083B" Ref="R?"  Part="1" 
AR Path="/5FC90726/5FD2083B" Ref="R29"  Part="1" 
F 0 "R29" V 7150 2450 50  0000 C CNN
F 1 "0R" V 7250 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7180 2450 50  0001 C CNN
F 3 "~" H 7250 2450 50  0001 C CNN
F 4 "RMCF0402ZT0R00" H 7250 2450 50  0001 C CNN "PartNumber"
	1    7250 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 2450 7650 2450
NoConn ~ 6450 3200
$Comp
L Connector:TestPoint TP9
U 1 1 5FD59D38
P 5650 2350
F 0 "TP9" H 5708 2468 50  0000 L CNN
F 1 "TestPoint" H 5708 2377 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5850 2350 50  0001 C CNN
F 3 "~" H 5850 2350 50  0001 C CNN
	1    5650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2350 5650 2450
Connection ~ 5650 2450
$EndSCHEMATC
