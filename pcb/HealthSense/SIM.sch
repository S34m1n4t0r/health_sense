EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L HealthSense:SIM800L-sim800l GSM_Module?
U 1 1 5FD0172F
P 6350 3150
AR Path="/5FD0172F" Ref="GSM_Module?"  Part="1" 
AR Path="/5FCFD8C8/5FD0172F" Ref="GSM_Module1"  Part="1" 
F 0 "GSM_Module1" H 6375 4037 60  0000 C CNN
F 1 "n.B." H 6375 3931 60  0000 C CNN
F 2 "HealthSense:SIM800L" H 6350 3150 60  0001 C CNN
F 3 "" H 6350 3150 60  0001 C CNN
F 4 "n.B." H 6350 3150 50  0001 C CNN "PartNumber"
F 5 "n.B." H 6350 3150 50  0001 C CNN "DigiKey"
	1    6350 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5FD01758
P 4300 2650
AR Path="/5FD01758" Ref="C?"  Part="1" 
AR Path="/5FCFD8C8/5FD01758" Ref="C9"  Part="1" 
F 0 "C9" H 4418 2696 50  0000 L CNN
F 1 "865060245006" H 4300 2550 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 4338 2500 50  0001 C CNN
F 3 "~" H 4300 2650 50  0001 C CNN
F 4 "865060245006" H 4300 2650 50  0001 C CNN "PartNumber"
	1    4300 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5FD0175E
P 4650 2650
AR Path="/5FD0175E" Ref="C?"  Part="1" 
AR Path="/5FCFD8C8/5FD0175E" Ref="C10"  Part="1" 
F 0 "C10" H 4768 2696 50  0000 L CNN
F 1 "865060245006" H 4650 2550 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 4688 2500 50  0001 C CNN
F 3 "~" H 4650 2650 50  0001 C CNN
F 4 "865060245006" H 4650 2650 50  0001 C CNN "PartNumber"
	1    4650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2500 5000 3000
Wire Wire Line
	5000 3000 5200 3000
Wire Wire Line
	4300 2500 4650 2500
Connection ~ 4650 2500
Wire Wire Line
	4650 2500 5000 2500
$Comp
L power:GND #PWR?
U 1 1 5FD0176B
P 4900 3400
AR Path="/5FD0176B" Ref="#PWR?"  Part="1" 
AR Path="/5FCFD8C8/5FD0176B" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 4900 3150 50  0001 C CNN
F 1 "GND" H 5050 3350 50  0000 C CNN
F 2 "" H 4900 3400 50  0001 C CNN
F 3 "" H 4900 3400 50  0001 C CNN
	1    4900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3400 4900 3400
Wire Wire Line
	5200 3200 3950 3200
Text Label 3000 3200 0    50   ~ 0
TX
Text Label 3000 3300 0    50   ~ 0
RX
$Comp
L Device:R R?
U 1 1 5FD01775
P 3800 3200
AR Path="/5FD01775" Ref="R?"  Part="1" 
AR Path="/5FCFD8C8/5FD01775" Ref="R11"  Part="1" 
F 0 "R11" V 3700 3200 50  0000 C CNN
F 1 "1K" V 3800 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3730 3200 50  0001 C CNN
F 3 "~" H 3800 3200 50  0001 C CNN
F 4 "CRGCQ0603J1K0" H 3800 3200 50  0001 C CNN "PartNumber"
	1    3800 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 3200 3000 3200
Wire Wire Line
	3700 3300 5200 3300
$Comp
L power:GND #PWR?
U 1 1 5FD01780
P 4300 2800
AR Path="/5FD01780" Ref="#PWR?"  Part="1" 
AR Path="/5FCFD8C8/5FD01780" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 4300 2550 50  0001 C CNN
F 1 "GND" H 4450 2750 50  0000 C CNN
F 2 "" H 4300 2800 50  0001 C CNN
F 3 "" H 4300 2800 50  0001 C CNN
	1    4300 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD01786
P 4650 2800
AR Path="/5FD01786" Ref="#PWR?"  Part="1" 
AR Path="/5FCFD8C8/5FD01786" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 4650 2550 50  0001 C CNN
F 1 "GND" H 4800 2750 50  0000 C CNN
F 2 "" H 4650 2800 50  0001 C CNN
F 3 "" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FD0178C
P 3550 3300
AR Path="/5FD0178C" Ref="R?"  Part="1" 
AR Path="/5FCFD8C8/5FD0178C" Ref="R10"  Part="1" 
F 0 "R10" V 3450 3300 50  0000 C CNN
F 1 "1K" V 3550 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3480 3300 50  0001 C CNN
F 3 "~" H 3550 3300 50  0001 C CNN
F 4 "CRGCQ0603J1K0" H 3550 3300 50  0001 C CNN "PartNumber"
	1    3550 3300
	0    -1   -1   0   
$EndComp
Text HLabel 3000 3200 0    50   Input ~ 0
TX
Text HLabel 3000 3300 0    50   Output ~ 0
RX
$Comp
L Device:R R?
U 1 1 5FD21703
P 1400 2350
AR Path="/5FD21703" Ref="R?"  Part="1" 
AR Path="/5FC94345/5FD21703" Ref="R?"  Part="1" 
AR Path="/5FCFD8C8/5FD21703" Ref="R30"  Part="1" 
F 0 "R30" V 1300 2350 50  0000 C CNN
F 1 "0R" V 1400 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1330 2350 50  0001 C CNN
F 3 "~" H 1400 2350 50  0001 C CNN
F 4 "RMCF0402ZT0R00" H 1400 2350 50  0001 C CNN "PartNumber"
	1    1400 2350
	0    -1   -1   0   
$EndComp
Connection ~ 4300 2500
$Comp
L Device:CP C?
U 1 1 5FD23AF2
P 3500 2650
AR Path="/5FD23AF2" Ref="C?"  Part="1" 
AR Path="/5FCFD8C8/5FD23AF2" Ref="C30"  Part="1" 
F 0 "C30" H 3618 2696 50  0000 L CNN
F 1 "n.B." H 3500 2550 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 3538 2500 50  0001 C CNN
F 3 "~" H 3500 2650 50  0001 C CNN
F 4 "n.B." H 3500 2650 50  0001 C CNN "PartNumber"
	1    3500 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD23AF8
P 3500 2800
AR Path="/5FD23AF8" Ref="#PWR?"  Part="1" 
AR Path="/5FCFD8C8/5FD23AF8" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 3500 2550 50  0001 C CNN
F 1 "GND" H 3650 2750 50  0000 C CNN
F 2 "" H 3500 2800 50  0001 C CNN
F 3 "" H 3500 2800 50  0001 C CNN
	1    3500 2800
	1    0    0    -1  
$EndComp
Connection ~ 3500 2500
Wire Wire Line
	3500 2500 3850 2500
$Comp
L Device:CP C?
U 1 1 5FD2472A
P 3850 2650
AR Path="/5FD2472A" Ref="C?"  Part="1" 
AR Path="/5FCFD8C8/5FD2472A" Ref="C31"  Part="1" 
F 0 "C31" H 3968 2696 50  0000 L CNN
F 1 "n.B." H 3850 2550 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 3888 2500 50  0001 C CNN
F 3 "~" H 3850 2650 50  0001 C CNN
F 4 "n.B." H 3850 2650 50  0001 C CNN "PartNumber"
F 5 "n.B." H 3850 2650 50  0001 C CNN "DigiKey"
	1    3850 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD24730
P 3850 2800
AR Path="/5FD24730" Ref="#PWR?"  Part="1" 
AR Path="/5FCFD8C8/5FD24730" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 3850 2550 50  0001 C CNN
F 1 "GND" H 4000 2750 50  0000 C CNN
F 2 "" H 3850 2800 50  0001 C CNN
F 3 "" H 3850 2800 50  0001 C CNN
	1    3850 2800
	1    0    0    -1  
$EndComp
Connection ~ 3850 2500
Wire Wire Line
	3850 2500 4300 2500
$Comp
L Device:R R?
U 1 1 5FD4E8EA
P 5050 3100
AR Path="/5FD4E8EA" Ref="R?"  Part="1" 
AR Path="/5FC94345/5FD4E8EA" Ref="R?"  Part="1" 
AR Path="/5FCFD8C8/5FD4E8EA" Ref="R36"  Part="1" 
F 0 "R36" V 4950 3100 50  0000 C CNN
F 1 "n.B." V 5050 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4980 3100 50  0001 C CNN
F 3 "~" H 5050 3100 50  0001 C CNN
F 4 "n.B." H 5050 3100 50  0001 C CNN "PartNumber"
F 5 "n.B." H 5050 3100 50  0001 C CNN "DigiKey"
	1    5050 3100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 5FD60057
P 3500 2400
F 0 "TP10" H 3558 2518 50  0000 L CNN
F 1 "TestPoint" H 3558 2427 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3700 2400 50  0001 C CNN
F 3 "~" H 3700 2400 50  0001 C CNN
	1    3500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2500 3500 2400
NoConn ~ 7550 3100
NoConn ~ 7550 3200
NoConn ~ 7550 3300
NoConn ~ 7550 3400
NoConn ~ 7550 3500
NoConn ~ 7550 3600
NoConn ~ 5200 2900
Wire Wire Line
	3000 3300 3400 3300
$Comp
L power:VCOM #PWR?
U 1 1 600320FB
P 1000 2000
AR Path="/5FC94345/600320FB" Ref="#PWR?"  Part="1" 
AR Path="/5FCFD8C8/600320FB" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 1000 1850 50  0001 C CNN
F 1 "VCOM" H 1017 2173 50  0000 C CNN
F 2 "" H 1000 2000 50  0001 C CNN
F 3 "" H 1000 2000 50  0001 C CNN
	1    1000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2350 1000 2350
Wire Wire Line
	1000 2350 1000 2000
Wire Wire Line
	2750 2500 3500 2500
Wire Wire Line
	2750 2500 2750 2350
$Comp
L Device:R R?
U 1 1 60035995
P 1300 3100
AR Path="/60035995" Ref="R?"  Part="1" 
AR Path="/5FCFD8C8/60035995" Ref="R26"  Part="1" 
F 0 "R26" V 1200 3100 50  0000 C CNN
F 1 "1K" V 1300 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1230 3100 50  0001 C CNN
F 3 "~" H 1300 3100 50  0001 C CNN
F 4 "CRGCQ0603J1K0" H 1300 3100 50  0001 C CNN "PartNumber"
	1    1300 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 3100 1550 3100
$Comp
L power:GND #PWR?
U 1 1 6003942A
P 2750 2800
AR Path="/6003942A" Ref="#PWR?"  Part="1" 
AR Path="/5FC94345/6003942A" Ref="#PWR?"  Part="1" 
AR Path="/5FCFD8C8/6003942A" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 2750 2550 50  0001 C CNN
F 1 "GND" H 2755 2627 50  0000 C CNN
F 2 "" H 2750 2800 50  0001 C CNN
F 3 "" H 2750 2800 50  0001 C CNN
	1    2750 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60039430
P 2750 2650
AR Path="/60039430" Ref="C?"  Part="1" 
AR Path="/5FC94345/60039430" Ref="C?"  Part="1" 
AR Path="/5FCFD8C8/60039430" Ref="C19"  Part="1" 
F 0 "C19" H 2865 2696 50  0000 L CNN
F 1 "22u" H 2865 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2788 2500 50  0001 C CNN
F 3 "~" H 2750 2650 50  0001 C CNN
F 4 "GRM21BR61E226ME44L" H 2750 2650 50  0001 C CNN "PartNumber"
	1    2750 2650
	1    0    0    -1  
$EndComp
Connection ~ 2750 2500
Text HLabel 4900 3100 0    50   Input ~ 0
RESET_SIM
Text HLabel 1150 3100 0    50   Input ~ 0
EN_SIM
Wire Wire Line
	1550 2550 1550 3100
$Comp
L HealthSense:MIC5018 U7
U 1 1 6077ED33
P 1950 2450
F 0 "U7" H 1925 2815 50  0000 C CNN
F 1 "MIC5018" H 1925 2724 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 2550 2000 50  0001 C CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en579490" H 2550 2000 50  0001 C CNN
F 4 "MIC5018YM4-TR" H 1950 2450 50  0001 C CNN "PartNumber"
F 5 "576-1238-1-ND" H 1950 2450 50  0001 C CNN "DigiKey"
	1    1950 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6077FB9C
P 2300 2550
AR Path="/6077FB9C" Ref="#PWR?"  Part="1" 
AR Path="/5FC94345/6077FB9C" Ref="#PWR?"  Part="1" 
AR Path="/5FCFD8C8/6077FB9C" Ref="#PWR0186"  Part="1" 
F 0 "#PWR0186" H 2300 2300 50  0001 C CNN
F 1 "GND" H 2305 2377 50  0000 C CNN
F 2 "" H 2300 2550 50  0001 C CNN
F 3 "" H 2300 2550 50  0001 C CNN
	1    2300 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 6077FF78
P 2650 2150
F 0 "Q1" H 2856 2196 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 2856 2105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2850 2250 50  0001 C CNN
F 3 "~" H 2650 2150 50  0001 C CNN
F 4 "ZXMN2A01FTA" H 2650 2150 50  0001 C CNN "PartNumber"
F 5 "ZXMN2A01FCT-ND" H 2650 2150 50  0001 C CNN "DigiKey"
	1    2650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2150 2450 2350
Wire Wire Line
	2450 2350 2300 2350
Wire Wire Line
	2750 1950 1550 1950
Wire Wire Line
	1550 1950 1550 2350
Connection ~ 1550 2350
$EndSCHEMATC
