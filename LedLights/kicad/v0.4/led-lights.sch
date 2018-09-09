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
L arduino_nano U1
U 1 1 5555CA89
P 3850 4000
F 0 "U1" H 4350 2850 70  0000 C CNN
F 1 "arduino_nano" H 4600 2750 70  0000 C CNN
F 2 "lib:arduino_nano" V 3850 3950 60  0000 C CNN
F 3 "" H 3850 4000 60  0000 C CNN
	1    3850 4000
	1    0    0    -1  
$EndComp
Text GLabel 4800 4300 2    60   Output ~ 0
ledPwmPin1
$Comp
L +12V #PWR01
U 1 1 5555ED76
P 2950 4800
F 0 "#PWR01" H 2950 4750 20  0001 C CNN
F 1 "+12V" H 2950 4900 30  0000 C CNN
F 2 "" H 2950 4800 60  0000 C CNN
F 3 "" H 2950 4800 60  0000 C CNN
	1    2950 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 4800 2950 4800
$Comp
L +5V #PWR02
U 1 1 55566A68
P 2700 4500
F 0 "#PWR02" H 2700 4590 20  0001 C CNN
F 1 "+5V" H 2700 4590 30  0000 C CNN
F 2 "" H 2700 4500 60  0000 C CNN
F 3 "" H 2700 4500 60  0000 C CNN
	1    2700 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 4500 3150 4500
NoConn ~ 3150 3400
NoConn ~ 3150 3600
NoConn ~ 3150 3800
NoConn ~ 3150 3900
NoConn ~ 3150 4000
NoConn ~ 3150 4100
NoConn ~ 3150 4200
NoConn ~ 3150 4300
NoConn ~ 3150 4400
NoConn ~ 3150 4600
NoConn ~ 4550 4600
Wire Wire Line
	3150 4700 2650 4700
Text GLabel 4800 4100 2    60   Output ~ 0
ledPwmPin2
Wire Wire Line
	4550 4100 4800 4100
Text GLabel 5500 4000 2    60   Output ~ 0
ledPwmPin3
Wire Wire Line
	4550 4000 5500 4000
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
L GND #PWR04
U 1 1 55FFF74F
P 2650 4700
F 0 "#PWR04" H 2650 4450 50  0001 C CNN
F 1 "GND" H 2650 4550 50  0000 C CNN
F 2 "" H 2650 4700 60  0000 C CNN
F 3 "" H 2650 4700 60  0000 C CNN
	1    2650 4700
	0    1    1    0   
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
NoConn ~ 4550 3400
NoConn ~ 4550 3500
NoConn ~ 4550 3600
NoConn ~ 4550 3700
NoConn ~ 4550 3800
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
L Wlan_ESP8266 U5
U 1 1 5B559F39
P 7550 3400
F 0 "U5" H 7900 2900 50  0000 C CNN
F 1 "Wlan_ESP8266" V 7712 3434 50  0000 C CNN
F 2 "lib:Wlan_ESP8266" H 7550 2700 50  0000 C CNN
F 3 "DOCUMENTATION" H 7550 2800 50  0000 C CNN
	1    7550 3400
	1    0    0    -1  
$EndComp
NoConn ~ 3150 3700
NoConn ~ 4550 4400
Wire Wire Line
	4550 4300 4800 4300
Text GLabel 5500 4200 2    60   Input ~ 0
wlanTX
Text GLabel 4800 3900 2    60   Output ~ 0
wlanRX
Wire Wire Line
	4550 3900 4800 3900
Wire Wire Line
	4550 4200 5500 4200
Text GLabel 6950 3050 0    60   Output ~ 0
wlanTX
Wire Wire Line
	6950 3050 7150 3050
Text GLabel 6950 3750 0    60   Input ~ 0
wlanRX
Wire Wire Line
	6950 3750 7150 3750
$Comp
L +3.3V #PWR017
U 1 1 5B71EA25
P 6650 3350
F 0 "#PWR017" H 6650 3200 50  0001 C CNN
F 1 "+3.3V" H 6650 3490 50  0000 C CNN
F 2 "" H 6650 3350 50  0001 C CNN
F 3 "" H 6650 3350 50  0001 C CNN
	1    6650 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 3350 7150 3350
$Comp
L GND #PWR018
U 1 1 5B71EAC2
P 6900 3450
F 0 "#PWR018" H 6900 3200 50  0001 C CNN
F 1 "GND" H 6900 3300 50  0000 C CNN
F 2 "" H 6900 3450 60  0000 C CNN
F 3 "" H 6900 3450 60  0000 C CNN
	1    6900 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 3450 7150 3450
NoConn ~ 7150 3150
NoConn ~ 7150 3250
NoConn ~ 7150 3550
NoConn ~ 7150 3650
$Comp
L GND #PWR019
U 1 1 5B7202FA
P 4900 4500
F 0 "#PWR019" H 4900 4250 50  0001 C CNN
F 1 "GND" H 4900 4350 50  0000 C CNN
F 2 "" H 4900 4500 50  0001 C CNN
F 3 "" H 4900 4500 50  0001 C CNN
	1    4900 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 4500 4900 4500
NoConn ~ 4550 4700
NoConn ~ 4550 4800
$EndSCHEMATC