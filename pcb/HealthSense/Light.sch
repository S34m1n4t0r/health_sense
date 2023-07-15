EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L HealthSense:BH1750-HealthSense U?
U 1 1 5FD06B22
P 5200 5150
AR Path="/5FD06B22" Ref="U?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B22" Ref="U3"  Part="1" 
F 0 "U3" H 5200 6531 50  0000 C CNN
F 1 "BH1750" H 5200 6440 50  0000 C CNN
F 2 "HealthSense:WSOF6I" H 5200 5150 50  0001 C CNN
F 3 "" H 5200 5150 50  0001 C CNN
F 4 "BH1750FVI-TR" H 5200 5150 50  0001 C CNN "PartNumber"
F 5 "BH1750FVICT-ND " H 5200 5150 50  0001 C CNN "DigiKey"
	1    5200 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FD06B28
P 4400 4150
AR Path="/5FD06B28" Ref="R?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B28" Ref="R12"  Part="1" 
F 0 "R12" V 4300 4150 50  0000 C CNN
F 1 "1K" V 4400 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4330 4150 50  0001 C CNN
F 3 "~" H 4400 4150 50  0001 C CNN
F 4 "CRGCQ0603J1K0" H 4400 4150 50  0001 C CNN "PartNumber"
	1    4400 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 4300 4400 4300
$Comp
L Device:R R?
U 1 1 5FD06B35
P 4400 4600
AR Path="/5FD06B35" Ref="R?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B35" Ref="R16"  Part="1" 
F 0 "R16" V 4300 4600 50  0000 C CNN
F 1 "1K" V 4400 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4330 4600 50  0001 C CNN
F 3 "~" H 4400 4600 50  0001 C CNN
F 4 "CRGCQ0603J1K0" H 4400 4600 50  0001 C CNN "PartNumber"
	1    4400 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 4450 4850 4450
$Comp
L power:GND #PWR?
U 1 1 5FD06B3C
P 4400 4750
AR Path="/5FD06B3C" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B3C" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 4400 4500 50  0001 C CNN
F 1 "GND" H 4550 4700 50  0000 C CNN
F 2 "" H 4400 4750 50  0001 C CNN
F 3 "" H 4400 4750 50  0001 C CNN
	1    4400 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD06B42
P 5200 4750
AR Path="/5FD06B42" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B42" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 5200 4500 50  0001 C CNN
F 1 "GND" H 5350 4700 50  0000 C CNN
F 2 "" H 5200 4750 50  0001 C CNN
F 3 "" H 5200 4750 50  0001 C CNN
	1    5200 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD06B48
P 6100 4050
AR Path="/5FD06B48" Ref="C?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B48" Ref="C22"  Part="1" 
F 0 "C22" H 6215 4096 50  0000 L CNN
F 1 "100n" H 6215 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6138 3900 50  0001 C CNN
F 3 "~" H 6100 4050 50  0001 C CNN
F 4 "CL10B104KB8NNNL" H 6100 4050 50  0001 C CNN "PartNumber"
	1    6100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3900 5700 3900
Wire Wire Line
	5200 3900 5200 3950
Connection ~ 5700 3900
Wire Wire Line
	5700 3900 5200 3900
Text Label 7000 4300 0    50   ~ 0
SCL
Text Label 7000 4450 0    50   ~ 0
SDA
$Comp
L power:GND #PWR?
U 1 1 5FD06B54
P 5700 4200
AR Path="/5FD06B54" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B54" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 5700 3950 50  0001 C CNN
F 1 "GND" H 5850 4150 50  0000 C CNN
F 2 "" H 5700 4200 50  0001 C CNN
F 3 "" H 5700 4200 50  0001 C CNN
	1    5700 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD06B5A
P 6100 4200
AR Path="/5FD06B5A" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B5A" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 6100 3950 50  0001 C CNN
F 1 "GND" H 6250 4150 50  0000 C CNN
F 2 "" H 6100 4200 50  0001 C CNN
F 3 "" H 6100 4200 50  0001 C CNN
	1    6100 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD06B66
P 4000 4450
AR Path="/5FD06B66" Ref="C?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B66" Ref="C11"  Part="1" 
F 0 "C11" H 4115 4496 50  0000 L CNN
F 1 "100n" H 4115 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4038 4300 50  0001 C CNN
F 3 "~" H 4000 4450 50  0001 C CNN
F 4 "CL10B104KB8NNNL" H 4000 4450 50  0001 C CNN "PartNumber"
	1    4000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4300 4000 4300
Connection ~ 4400 4300
$Comp
L power:GND #PWR?
U 1 1 5FD06B6E
P 4000 4600
AR Path="/5FD06B6E" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B6E" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 4000 4350 50  0001 C CNN
F 1 "GND" H 4150 4550 50  0000 C CNN
F 2 "" H 4000 4600 50  0001 C CNN
F 3 "" H 4000 4600 50  0001 C CNN
	1    4000 4600
	1    0    0    -1  
$EndComp
Wire Notes Line
	3800 4900 7200 4900
Wire Notes Line
	7200 4900 7200 3500
Wire Notes Line
	7200 3500 3800 3500
Wire Notes Line
	3800 3500 3800 4900
Text Notes 3800 3500 0    50   ~ 0
LUX-Sensor (Visible)
$Comp
L HealthSense:ML8511-HealthSense U?
U 1 1 5FD06B79
P 5400 3450
AR Path="/5FD06B79" Ref="U?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B79" Ref="U6"  Part="1" 
F 0 "U6" H 5200 4450 50  0000 L CNN
F 1 "n.B." H 5400 3800 50  0000 L CNN
F 2 "SIM800L:ML8511" H 5400 3450 50  0001 C CNN
F 3 "" H 5400 3450 50  0001 C CNN
F 4 "ML8511" H 5400 3450 50  0001 C CNN "PartNumber"
	1    5400 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FD06B86
P 4800 3050
AR Path="/5FD06B86" Ref="C?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B86" Ref="C13"  Part="1" 
F 0 "C13" H 4915 3096 50  0000 L CNN
F 1 "n.B." H 4915 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4838 2900 50  0001 C CNN
F 3 "~" H 4800 3050 50  0001 C CNN
F 4 "n.B." H 4800 3050 50  0001 C CNN "PartNumber"
	1    4800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2900 4800 2900
$Comp
L power:GND #PWR?
U 1 1 5FD06B8E
P 4800 3200
AR Path="/5FD06B8E" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B8E" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 4800 2950 50  0001 C CNN
F 1 "GND" H 4950 3150 50  0000 C CNN
F 2 "" H 4800 3200 50  0001 C CNN
F 3 "" H 4800 3200 50  0001 C CNN
	1    4800 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD06B94
P 5400 3150
AR Path="/5FD06B94" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B94" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 5400 2900 50  0001 C CNN
F 1 "GND" H 5550 3100 50  0000 C CNN
F 2 "" H 5400 3150 50  0001 C CNN
F 3 "" H 5400 3150 50  0001 C CNN
	1    5400 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5FD06B9A
P 5400 1900
AR Path="/5FD06B9A" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FD06B9A" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 5400 1750 50  0001 C CNN
F 1 "+3V3" H 5415 2073 50  0000 C CNN
F 2 "" H 5400 1900 50  0001 C CNN
F 3 "" H 5400 1900 50  0001 C CNN
	1    5400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2700 6050 2700
Wire Notes Line
	4650 1650 6750 1650
Wire Notes Line
	4650 3350 6750 3350
$Comp
L Device:C C?
U 1 1 5FD06BB9
P 5850 2350
AR Path="/5FD06BB9" Ref="C?"  Part="1" 
AR Path="/5FCFDD8D/5FD06BB9" Ref="C17"  Part="1" 
F 0 "C17" H 5965 2396 50  0000 L CNN
F 1 "n.B." H 5965 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5888 2200 50  0001 C CNN
F 3 "~" H 5850 2350 50  0001 C CNN
F 4 "n.B." H 5850 2350 50  0001 C CNN "PartNumber"
	1    5850 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2200 5400 2200
Connection ~ 5400 2200
Wire Wire Line
	5400 2200 5400 2400
$Comp
L power:GND #PWR?
U 1 1 5FD06BC3
P 5850 2500
AR Path="/5FD06BC3" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FD06BC3" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 5850 2250 50  0001 C CNN
F 1 "GND" H 6000 2450 50  0000 C CNN
F 2 "" H 5850 2500 50  0001 C CNN
F 3 "" H 5850 2500 50  0001 C CNN
	1    5850 2500
	1    0    0    -1  
$EndComp
Text Notes 4650 1650 0    50   ~ 0
UV-Sensor A
$Comp
L Device:C C?
U 1 1 5FD06BCA
P 5700 4050
AR Path="/5FD06BCA" Ref="C?"  Part="1" 
AR Path="/5FC94345/5FD06BCA" Ref="C?"  Part="1" 
AR Path="/5FCFDD8D/5FD06BCA" Ref="C16"  Part="1" 
F 0 "C16" H 5815 4096 50  0000 L CNN
F 1 "10u" H 5815 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5738 3900 50  0001 C CNN
F 3 "~" H 5700 4050 50  0001 C CNN
F 4 "490-10475-1-ND" H 5700 4050 50  0001 C CNN "DigiKey"
F 5 "CL10B222KB8NNNC" H 5700 4050 50  0001 C CNN "PartNumber"
	1    5700 4050
	1    0    0    -1  
$EndComp
Text HLabel 9100 1850 2    50   Output ~ 0
UV_OUT
Text Label 8600 1850 0    50   ~ 0
UV_OUT
Text HLabel 7550 4300 2    50   Input ~ 0
SCL
Wire Wire Line
	5550 4300 7550 4300
Text HLabel 7550 4450 2    50   BiDi ~ 0
SDA
Wire Wire Line
	7550 4450 5550 4450
Text Label 4700 2700 0    50   ~ 0
EN
Text Label 8600 2000 0    50   ~ 0
EN
Wire Wire Line
	8600 2000 9100 2000
Text HLabel 9100 2000 2    50   Input ~ 0
UV_EN
Wire Wire Line
	4700 2700 5100 2700
Wire Notes Line
	6750 1650 6750 3350
Wire Notes Line
	4650 1650 4650 3350
$Comp
L Device:R R?
U 1 1 5FD1505B
P 5400 2050
AR Path="/5FD1505B" Ref="R?"  Part="1" 
AR Path="/5FCFDD8D/5FD1505B" Ref="R37"  Part="1" 
F 0 "R37" V 5300 2050 50  0000 C CNN
F 1 "n.B." V 5400 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5330 2050 50  0001 C CNN
F 3 "~" H 5400 2050 50  0001 C CNN
F 4 "n.B." H 5400 2050 50  0001 C CNN "PartNumber"
	1    5400 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FD158A8
P 4200 3750
AR Path="/5FD158A8" Ref="R?"  Part="1" 
AR Path="/5FCFDD8D/5FD158A8" Ref="R17"  Part="1" 
F 0 "R17" V 4100 3750 50  0000 C CNN
F 1 "0R" V 4200 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4130 3750 50  0001 C CNN
F 3 "~" H 4200 3750 50  0001 C CNN
F 4 "RMCF0402ZT0R00" H 4200 3750 50  0001 C CNN "PartNumber"
	1    4200 3750
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5FD17B4E
P 4050 3750
AR Path="/5FD17B4E" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FD17B4E" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 4050 3600 50  0001 C CNN
F 1 "+3V3" H 4065 3923 50  0000 C CNN
F 2 "" H 4050 3750 50  0001 C CNN
F 3 "" H 4050 3750 50  0001 C CNN
	1    4050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3750 4400 3750
Wire Wire Line
	5700 3750 5700 3900
Wire Wire Line
	4400 4000 4400 3750
Connection ~ 4400 3750
Wire Wire Line
	4400 3750 5700 3750
$Comp
L Connector:TestPoint TP11
U 1 1 5FD5D3AA
P 5850 2200
F 0 "TP11" H 5908 2318 50  0000 L CNN
F 1 "TestPoint" H 5908 2227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6050 2200 50  0001 C CNN
F 3 "~" H 6050 2200 50  0001 C CNN
	1    5850 2200
	1    0    0    -1  
$EndComp
Connection ~ 5850 2200
$Comp
L Connector:TestPoint TP12
U 1 1 5FD5E9A2
P 6100 3900
F 0 "TP12" H 6158 4018 50  0000 L CNN
F 1 "TestPoint" H 6158 3927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6300 3900 50  0001 C CNN
F 3 "~" H 6300 3900 50  0001 C CNN
	1    6100 3900
	1    0    0    -1  
$EndComp
Connection ~ 6100 3900
$Comp
L Sensor_Optical:SFH225FA D4
U 1 1 5FCEB6FB
P 1650 2500
F 0 "D4" V 1646 2422 50  0000 R CNN
F 1 "GUVA-S12SD" V 1555 2422 50  0000 R CNN
F 2 "Diode_SMD:D_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 1650 2675 50  0001 C CNN
F 3 "https://cdn-shop.adafruit.com/datasheets/1918guva.pdf" H 1600 2500 50  0001 C CNN
F 4 "GUVA-S12SD " H 1650 2500 50  0001 C CNN "PartNumber"
F 5 "2096-GUVA-S12SDCT-ND" H 1650 2500 50  0001 C CNN "DigiKey"
	1    1650 2500
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:MCP6001-OT U10
U 1 1 5FCED2D4
P 2900 2250
F 0 "U10" H 2950 2450 50  0000 L CNN
F 1 "MCP6001-OT" H 2850 2000 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2800 2050 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 2900 2450 50  0001 C CNN
F 4 "AD8541ARTZ-REEL" H 2900 2250 50  0001 C CNN "PartNumber"
F 5 "AD8541ARTZ-REEL" H 2900 2250 50  0001 C CNN "DigiKey"
	1    2900 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2600 1650 3000
Wire Wire Line
	1650 3000 2300 3000
Wire Wire Line
	2800 3000 2800 2550
Connection ~ 2300 3000
Wire Wire Line
	2300 3000 2800 3000
$Comp
L power:GND #PWR?
U 1 1 5FCEFCE6
P 2300 3000
AR Path="/5FCEFCE6" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FCEFCE6" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 2300 2750 50  0001 C CNN
F 1 "GND" H 2450 2950 50  0000 C CNN
F 2 "" H 2300 3000 50  0001 C CNN
F 3 "" H 2300 3000 50  0001 C CNN
	1    2300 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FCF0923
P 1650 2000
AR Path="/5FCF0923" Ref="C?"  Part="1" 
AR Path="/5FCFDD8D/5FCF0923" Ref="C23"  Part="1" 
F 0 "C23" H 1765 2046 50  0000 L CNN
F 1 "100n" H 1765 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1688 1850 50  0001 C CNN
F 3 "~" H 1650 2000 50  0001 C CNN
F 4 "CL10B104KB8NNNL" H 1650 2000 50  0001 C CNN "PartNumber"
	1    1650 2000
	1    0    0    -1  
$EndComp
Connection ~ 1650 2150
$Comp
L Device:R R?
U 1 1 5FCF0D33
P 2050 2000
AR Path="/5FCF0D33" Ref="R?"  Part="1" 
AR Path="/5FCFDD8D/5FCF0D33" Ref="R39"  Part="1" 
F 0 "R39" V 1950 2000 50  0000 C CNN
F 1 "7M15" V 2050 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1980 2000 50  0001 C CNN
F 3 "~" H 2050 2000 50  0001 C CNN
F 4 "CRCW06037M15FKEA" H 2050 2000 50  0001 C CNN "PartNumber"
F 5 "541-7.15MHCT-ND" H 2050 2000 50  0001 C CNN "DigiKey"
	1    2050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2150 1650 2150
$Comp
L Device:R R?
U 1 1 5FCF176F
P 3400 2100
AR Path="/5FCF176F" Ref="R?"  Part="1" 
AR Path="/5FCFDD8D/5FCF176F" Ref="R43"  Part="1" 
F 0 "R43" V 3300 2100 50  0000 C CNN
F 1 "3K3" V 3400 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 2100 50  0001 C CNN
F 3 "~" H 3400 2100 50  0001 C CNN
F 4 "CRGCQ0603J3K3" H 3400 2100 50  0001 C CNN "PartNumber"
F 5 "A130094CT-ND" H 3400 2100 50  0001 C CNN "DigiKey"
	1    3400 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 2250 3200 2250
Wire Wire Line
	3400 2250 3700 2250
Connection ~ 3400 2250
$Comp
L Device:C C?
U 1 1 5FCF31FF
P 2450 2000
AR Path="/5FCF31FF" Ref="C?"  Part="1" 
AR Path="/5FCFDD8D/5FCF31FF" Ref="C36"  Part="1" 
F 0 "C36" H 2565 2046 50  0000 L CNN
F 1 "100n" H 2565 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2488 1850 50  0001 C CNN
F 3 "~" H 2450 2000 50  0001 C CNN
F 4 "CL10B104KB8NNNL" H 2450 2000 50  0001 C CNN "PartNumber"
	1    2450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1850 2800 1850
Wire Wire Line
	2800 1850 2800 1950
$Comp
L power:GND #PWR?
U 1 1 5FCF4493
P 2450 2150
AR Path="/5FCF4493" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FCF4493" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 2450 1900 50  0001 C CNN
F 1 "GND" H 2600 2100 50  0000 C CNN
F 2 "" H 2450 2150 50  0001 C CNN
F 3 "" H 2450 2150 50  0001 C CNN
	1    2450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1850 2050 1850
Wire Wire Line
	2050 1850 2050 1400
Wire Wire Line
	2050 1400 3400 1400
Wire Wire Line
	3400 1400 3400 1950
Connection ~ 2050 1850
$Comp
L Device:R R?
U 1 1 5FCF7635
P 7850 1950
AR Path="/5FCF7635" Ref="R?"  Part="1" 
AR Path="/5FCFDD8D/5FCF7635" Ref="R45"  Part="1" 
F 0 "R45" V 7750 1950 50  0000 C CNN
F 1 "0R" V 7850 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7780 1950 50  0001 C CNN
F 3 "~" H 7850 1950 50  0001 C CNN
F 4 "RMCF0402ZT0R00" H 7850 1950 50  0001 C CNN "PartNumber"
	1    7850 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FCF7E05
P 7850 1750
AR Path="/5FCF7E05" Ref="R?"  Part="1" 
AR Path="/5FCFDD8D/5FCF7E05" Ref="R44"  Part="1" 
F 0 "R44" V 7750 1750 50  0000 C CNN
F 1 "n.B." V 7850 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7780 1750 50  0001 C CNN
F 3 "~" H 7850 1750 50  0001 C CNN
F 4 "n.B." H 7850 1750 50  0001 C CNN "PartNumber"
F 5 "n.B." H 7850 1750 50  0001 C CNN "DigiKey"
	1    7850 1750
	0    1    1    0   
$EndComp
Text Label 7350 1750 0    50   ~ 0
UV1_OUT
Text Label 3500 2250 0    50   ~ 0
UV2_OUT
Text Label 7350 1950 0    50   ~ 0
UV2_OUT
Wire Wire Line
	7350 1950 7700 1950
Wire Wire Line
	7350 1750 7700 1750
Text Label 6050 2700 0    50   ~ 0
UV1_OUT
$Comp
L Device:C C?
U 1 1 5FCFD8F7
P 8350 2000
AR Path="/5FCFD8F7" Ref="C?"  Part="1" 
AR Path="/5FCFDD8D/5FCFD8F7" Ref="C37"  Part="1" 
F 0 "C37" H 8465 2046 50  0000 L CNN
F 1 "2n2" H 8465 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8388 1850 50  0001 C CNN
F 3 "~" H 8350 2000 50  0001 C CNN
F 4 "CL10B222KB8NNNC" H 8350 2000 50  0001 C CNN "PartNumber"
F 5 "1276-1110-1-ND" H 8350 2000 50  0001 C CNN "DigiKey"
	1    8350 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FCFD8FD
P 8150 1850
AR Path="/5FCFD8FD" Ref="R?"  Part="1" 
AR Path="/5FCFDD8D/5FCFD8FD" Ref="R46"  Part="1" 
F 0 "R46" V 8050 1850 50  0000 C CNN
F 1 "1K" V 8150 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8080 1850 50  0001 C CNN
F 3 "~" H 8150 1850 50  0001 C CNN
F 4 "CRGCQ0603J1K0" H 8150 1850 50  0001 C CNN "PartNumber"
	1    8150 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 1850 8350 1850
$Comp
L power:GND #PWR?
U 1 1 5FCFD904
P 8350 2150
AR Path="/5FCFD904" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FCFD904" Ref="#PWR0182"  Part="1" 
F 0 "#PWR0182" H 8350 1900 50  0001 C CNN
F 1 "GND" H 8500 2100 50  0000 C CNN
F 2 "" H 8350 2150 50  0001 C CNN
F 3 "" H 8350 2150 50  0001 C CNN
	1    8350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1750 8000 1850
Connection ~ 8000 1850
Wire Wire Line
	8000 1850 8000 1950
Wire Wire Line
	8350 1850 9100 1850
Connection ~ 8350 1850
Text Notes 1250 750  0    50   ~ 0
UV-Sensor A
Wire Notes Line
	1250 3150 3850 3150
Wire Notes Line
	1250 750  3850 750 
$Comp
L power:+3V3 #PWR?
U 1 1 5FD11A7F
P 2450 1050
AR Path="/5FD11A7F" Ref="#PWR?"  Part="1" 
AR Path="/5FCFDD8D/5FD11A7F" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 2450 900 50  0001 C CNN
F 1 "+3V3" H 2465 1223 50  0000 C CNN
F 2 "" H 2450 1050 50  0001 C CNN
F 3 "" H 2450 1050 50  0001 C CNN
	1    2450 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FD11A85
P 2450 1200
AR Path="/5FD11A85" Ref="R?"  Part="1" 
AR Path="/5FCFDD8D/5FD11A85" Ref="R47"  Part="1" 
F 0 "R47" V 2350 1200 50  0000 C CNN
F 1 "0R" V 2450 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2380 1200 50  0001 C CNN
F 3 "~" H 2450 1200 50  0001 C CNN
F 4 "RMCF0402ZT0R00" H 2450 1200 50  0001 C CNN "PartNumber"
	1    2450 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP20
U 1 1 5FD37D5A
P 2800 1850
F 0 "TP20" H 2858 1968 50  0000 L CNN
F 1 "TestPoint" H 2858 1877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 3000 1850 50  0001 C CNN
F 3 "~" H 3000 1850 50  0001 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2150 2450 2150
Wire Wire Line
	1650 2150 1650 2300
Connection ~ 2450 2150
Wire Wire Line
	2600 2350 2100 2350
Wire Wire Line
	2100 2350 2100 2150
Wire Wire Line
	2100 2150 2050 2150
Connection ~ 2050 2150
Connection ~ 2450 1850
Connection ~ 2800 1850
$Comp
L Transistor_BJT:BC857 Q3
U 1 1 5FCF9CF2
P 2350 1650
F 0 "Q3" H 2541 1604 50  0000 L CNN
F 1 "BC857" H 2541 1695 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2550 1575 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC856.pdf" H 2350 1650 50  0001 L CNN
F 4 "BC857BLT3G" H 2350 1650 50  0001 C CNN "PartNumber"
F 5 "BC857BLT3GOSCT-ND" H 2350 1650 50  0001 C CNN "DigiKey"
	1    2350 1650
	1    0    0    1   
$EndComp
Wire Notes Line
	3850 750  3850 3150
Wire Notes Line
	1250 750  1250 3150
Wire Wire Line
	2450 1350 2450 1450
$Comp
L Device:R R?
U 1 1 5FCFCBD4
P 1850 1650
AR Path="/5FCFCBD4" Ref="R?"  Part="1" 
AR Path="/5FCFDD8D/5FCFCBD4" Ref="R18"  Part="1" 
F 0 "R18" V 1750 1650 50  0000 C CNN
F 1 "47K" V 1850 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1780 1650 50  0001 C CNN
F 3 "~" H 1850 1650 50  0001 C CNN
F 4 "RC0402FR-0747KL" H 1850 1650 50  0001 C CNN "PartNumber"
F 5 "311-47.0KLRCT-ND" H 1850 1650 50  0001 C CNN "DigiKey"
	1    1850 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 1650 2000 1650
Text Label 1600 1650 2    50   ~ 0
EN
Wire Wire Line
	1500 1650 1700 1650
$EndSCHEMATC
