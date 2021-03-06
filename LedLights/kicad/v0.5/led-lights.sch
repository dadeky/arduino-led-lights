EESchema Schematic File Version 2
LIBS:led-lights-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:arduino
LIBS:led-lights-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Led lights"
Date "2015-10-09"
Rev "1.01"
Comp ""
Comment1 "The schema that describes the wiring for LedLights project"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X02 P1
U 1 1 55FFC574
P 1150 3200
F 0 "P1" H 1150 3350 50  0000 C CNN
F 1 "Power input" V 1250 3200 50  0000 C CNN
F 2 "Connectors:AK300-2" H 1150 3200 60  0001 C CNN
F 3 "" H 1150 3200 60  0000 C CNN
	1    1150 3200
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR03
U 1 1 55FFCA52
P 1550 3250
F 0 "#PWR03" H 1550 3200 20  0001 C CNN
F 1 "+12V" H 1550 3350 30  0000 C CNN
F 2 "" H 1550 3250 60  0000 C CNN
F 3 "" H 1550 3250 60  0000 C CNN
	1    1550 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 3250 1550 3250
$Comp
L CONN_01X02 P3
U 1 1 55FFD4B0
P 4200 1500
F 0 "P3" H 4200 1650 50  0000 C CNN
F 1 "LED 1" V 4300 1500 50  0000 C CNN
F 2 "Connectors:AK300-2" H 4200 1500 60  0001 C CNN
F 3 "" H 4200 1500 60  0000 C CNN
	1    4200 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 55FFD727
P 6150 1500
F 0 "P4" H 6150 1650 50  0000 C CNN
F 1 "LED 2" V 6250 1500 50  0000 C CNN
F 2 "Connectors:AK300-2" H 6150 1500 60  0001 C CNN
F 3 "" H 6150 1500 60  0000 C CNN
	1    6150 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 55FFFF3B
P 8050 1500
F 0 "P5" H 8050 1650 50  0000 C CNN
F 1 "LED 3" V 8150 1500 50  0000 C CNN
F 2 "Connectors:AK300-2" H 8050 1500 60  0001 C CNN
F 3 "" H 8050 1500 60  0000 C CNN
	1    8050 1500
	1    0    0    -1  
$EndComp
Text GLabel 7900 1800 2    60   Input ~ 0
ledPwmPin3
$Comp
L GND #PWR05
U 1 1 560286AB
P 1750 3350
F 0 "#PWR05" H 1750 3100 50  0001 C CNN
F 1 "GND" H 1750 3200 50  0000 C CNN
F 2 "" H 1750 3350 60  0000 C CNN
F 3 "" H 1750 3350 60  0000 C CNN
	1    1750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3150 1750 3150
Wire Wire Line
	1750 3150 1750 3350
$Comp
L LED_Driver_700mA U2
U 1 1 5A4C9D64
P 3050 1500
F 0 "U2" H 3089 1500 60  0000 C CNN
F 1 "LED_Driver_700mA" H 3200 850 60  0000 C CNN
F 2 "lib:LED_Driver_700mA_foot" H 3200 1750 60  0000 C CNN
F 3 "" H 3200 1750 60  0000 C CNN
	1    3050 1500
	1    0    0    -1  
$EndComp
Text GLabel 4050 1800 2    60   Input ~ 0
ledPwmPin1
Wire Wire Line
	4050 1800 3700 1800
$Comp
L GND #PWR08
U 1 1 5A4CCE7C
P 3900 2100
F 0 "#PWR08" H 3900 1850 50  0001 C CNN
F 1 "GND" H 3900 1950 50  0000 C CNN
F 2 "" H 3900 2100 60  0000 C CNN
F 3 "" H 3900 2100 60  0000 C CNN
	1    3900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2000 3900 2000
Wire Wire Line
	3900 2000 3900 2100
Wire Wire Line
	3700 1400 3900 1400
Wire Wire Line
	3900 1400 3900 1450
Wire Wire Line
	3900 1450 4000 1450
Wire Wire Line
	3700 1600 3900 1600
Wire Wire Line
	3900 1600 3900 1550
Wire Wire Line
	3900 1550 4000 1550
$Comp
L +12V #PWR09
U 1 1 5A4D0211
P 3900 1000
F 0 "#PWR09" H 3900 950 20  0001 C CNN
F 1 "+12V" H 3900 1100 30  0000 C CNN
F 2 "" H 3900 1000 60  0000 C CNN
F 3 "" H 3900 1000 60  0000 C CNN
	1    3900 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1000 3900 1000
$Comp
L GND #PWR010
U 1 1 5A4D08A5
P 3950 1200
F 0 "#PWR010" H 3950 950 50  0001 C CNN
F 1 "GND" H 3950 1050 50  0000 C CNN
F 2 "" H 3950 1200 60  0000 C CNN
F 3 "" H 3950 1200 60  0000 C CNN
	1    3950 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1200 3950 1200
$Comp
L LED_Driver_700mA U3
U 1 1 5A4D11CB
P 5000 1500
F 0 "U3" H 5039 1500 60  0000 C CNN
F 1 "LED_Driver_700mA" H 5150 850 60  0000 C CNN
F 2 "lib:LED_Driver_700mA_foot" H 5150 1750 60  0000 C CNN
F 3 "" H 5150 1750 60  0000 C CNN
	1    5000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1800 5650 1800
$Comp
L GND #PWR011
U 1 1 5A4D11D3
P 5850 2100
F 0 "#PWR011" H 5850 1850 50  0001 C CNN
F 1 "GND" H 5850 1950 50  0000 C CNN
F 2 "" H 5850 2100 60  0000 C CNN
F 3 "" H 5850 2100 60  0000 C CNN
	1    5850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2000 5850 2000
Wire Wire Line
	5850 2000 5850 2100
Wire Wire Line
	5650 1400 5850 1400
Wire Wire Line
	5850 1400 5850 1450
Wire Wire Line
	5850 1450 5950 1450
Wire Wire Line
	5650 1600 5850 1600
Wire Wire Line
	5850 1600 5850 1550
Wire Wire Line
	5850 1550 5950 1550
$Comp
L +12V #PWR012
U 1 1 5A4D11E1
P 5850 1000
F 0 "#PWR012" H 5850 950 20  0001 C CNN
F 1 "+12V" H 5850 1100 30  0000 C CNN
F 2 "" H 5850 1000 60  0000 C CNN
F 3 "" H 5850 1000 60  0000 C CNN
	1    5850 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1000 5850 1000
$Comp
L GND #PWR013
U 1 1 5A4D11E8
P 5900 1200
F 0 "#PWR013" H 5900 950 50  0001 C CNN
F 1 "GND" H 5900 1050 50  0000 C CNN
F 2 "" H 5900 1200 60  0000 C CNN
F 3 "" H 5900 1200 60  0000 C CNN
	1    5900 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1200 5900 1200
Text GLabel 6000 1800 2    60   Input ~ 0
ledPwmPin2
$Comp
L LED_Driver_700mA U4
U 1 1 5A4D1F3E
P 6900 1500
F 0 "U4" H 6939 1500 60  0000 C CNN
F 1 "LED_Driver_700mA" H 7050 850 60  0000 C CNN
F 2 "lib:LED_Driver_700mA_foot" H 7050 1750 60  0000 C CNN
F 3 "" H 7050 1750 60  0000 C CNN
	1    6900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1800 7550 1800
$Comp
L GND #PWR014
U 1 1 5A4D1F45
P 7750 2100
F 0 "#PWR014" H 7750 1850 50  0001 C CNN
F 1 "GND" H 7750 1950 50  0000 C CNN
F 2 "" H 7750 2100 60  0000 C CNN
F 3 "" H 7750 2100 60  0000 C CNN
	1    7750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2000 7750 2000
Wire Wire Line
	7750 2000 7750 2100
Wire Wire Line
	7550 1400 7750 1400
Wire Wire Line
	7750 1400 7750 1450
Wire Wire Line
	7750 1450 7850 1450
Wire Wire Line
	7550 1600 7750 1600
Wire Wire Line
	7750 1600 7750 1550
Wire Wire Line
	7750 1550 7850 1550
$Comp
L +12V #PWR015
U 1 1 5A4D1F53
P 7750 1000
F 0 "#PWR015" H 7750 950 20  0001 C CNN
F 1 "+12V" H 7750 1100 30  0000 C CNN
F 2 "" H 7750 1000 60  0000 C CNN
F 3 "" H 7750 1000 60  0000 C CNN
	1    7750 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 1000 7750 1000
$Comp
L GND #PWR016
U 1 1 5A4D1F5A
P 7800 1200
F 0 "#PWR016" H 7800 950 50  0001 C CNN
F 1 "GND" H 7800 1050 50  0000 C CNN
F 2 "" H 7800 1200 60  0000 C CNN
F 3 "" H 7800 1200 60  0000 C CNN
	1    7800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1200 7800 1200
$Comp
L ESP8266_WeMos_D1_R1 WeMos_D1?
U 1 1 5B73E322
P 4100 3750
F 0 "WeMos_D1?" H 4050 4300 60  0001 C CNN
F 1 "ESP8266_WeMos_D1_R1" H 4100 2650 60  0000 C CNN
F 2 "U1" H 3750 2850 60  0000 C CNN
F 3 "" H 4100 2650 60  0000 C CNN
	1    4100 3750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5B73E62D
P 3050 3650
F 0 "#PWR?" H 3050 3500 50  0001 C CNN
F 1 "+12V" H 3050 3790 50  0000 C CNN
F 2 "" H 3050 3650 50  0001 C CNN
F 3 "" H 3050 3650 50  0001 C CNN
	1    3050 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 3650 3300 3650
$Comp
L GND #PWR?
U 1 1 5B73E6D6
P 3050 3450
F 0 "#PWR?" H 3050 3200 50  0001 C CNN
F 1 "GND" H 3050 3300 50  0000 C CNN
F 2 "" H 3050 3450 50  0001 C CNN
F 3 "" H 3050 3450 50  0001 C CNN
	1    3050 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 3450 3300 3450
Text GLabel 5500 3750 2    60   Output ~ 0
ledPwmPin1
Wire Wire Line
	5500 3750 4900 3750
Text GLabel 6150 3650 2    60   Output ~ 0
ledPwmPin2
Wire Wire Line
	4900 3650 6150 3650
Text GLabel 5500 3550 2    60   Output ~ 0
ledPwmPin3
Wire Wire Line
	4900 3550 5500 3550
$Comp
L GND #PWR?
U 1 1 5B73E9C9
P 5300 3250
F 0 "#PWR?" H 5300 3000 50  0001 C CNN
F 1 "GND" H 5300 3100 50  0000 C CNN
F 2 "" H 5300 3250 50  0001 C CNN
F 3 "" H 5300 3250 50  0001 C CNN
	1    5300 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 3250 5300 3250
$EndSCHEMATC
