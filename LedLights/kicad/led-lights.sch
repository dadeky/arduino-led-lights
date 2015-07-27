EESchema Schematic File Version 2
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
LIBS:special
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
L arduino_nano U1
U 1 1 5555CA89
P 3850 4000
F 0 "U1" H 4350 2850 70  0000 C CNN
F 1 "arduino_nano" H 4600 2750 70  0000 C CNN
F 2 "DIL20" H 3850 3950 60  0000 C CNN
F 3 "" H 3850 4000 60  0000 C CNN
	1    3850 4000
	1    0    0    -1  
$EndComp
Text GLabel 4900 3700 2    60   Output ~ 0
LedLightPwm
Wire Wire Line
	4550 3700 4900 3700
$Comp
L R R1
U 1 1 5555D27C
P 2550 3700
F 0 "R1" V 2630 3700 40  0000 C CNN
F 1 "10K" V 2557 3701 40  0000 C CNN
F 2 "" V 2480 3700 30  0000 C CNN
F 3 "" H 2550 3700 30  0000 C CNN
	1    2550 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 3700 3150 3700
$Comp
L GND #PWR01
U 1 1 5555DE66
P 1900 3900
F 0 "#PWR01" H 1900 3900 30  0001 C CNN
F 1 "GND" H 1900 3830 30  0001 C CNN
F 2 "" H 1900 3900 60  0000 C CNN
F 3 "" H 1900 3900 60  0000 C CNN
	1    1900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3900 1900 3700
Wire Wire Line
	1900 3700 2300 3700
$Comp
L +5V #PWR02
U 1 1 5555DF8C
P 2150 3000
F 0 "#PWR02" H 2150 3090 20  0001 C CNN
F 1 "+5V" H 2150 3090 30  0000 C CNN
F 2 "" H 2150 3000 60  0000 C CNN
F 3 "" H 2150 3000 60  0000 C CNN
	1    2150 3000
	0    1    1    0   
$EndComp
$Comp
L BARREL_JACK CON1
U 1 1 5555E139
P 1900 1900
F 0 "CON1" H 1900 2150 60  0000 C CNN
F 1 "BARREL_JACK" H 1900 1700 60  0000 C CNN
F 2 "" H 1900 1900 60  0000 C CNN
F 3 "" H 1900 1900 60  0000 C CNN
	1    1900 1900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 5555E2DF
P 1650 2950
F 0 "P1" H 1650 3100 50  0000 C CNN
F 1 "LDR connector" V 1750 2950 50  0000 C CNN
F 2 "" H 1650 2950 60  0000 C CNN
F 3 "" H 1650 2950 60  0000 C CNN
	1    1650 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 3000 1850 3000
Wire Wire Line
	2950 3700 2950 2900
Wire Wire Line
	2950 2900 1850 2900
Connection ~ 2950 3700
$Comp
L GND #PWR03
U 1 1 5555E9E4
P 2400 2150
F 0 "#PWR03" H 2400 2150 30  0001 C CNN
F 1 "GND" H 2400 2080 30  0001 C CNN
F 2 "" H 2400 2150 60  0000 C CNN
F 3 "" H 2400 2150 60  0000 C CNN
	1    2400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2000 2400 2000
Wire Wire Line
	2400 2000 2400 2150
$Comp
L +12V #PWR04
U 1 1 5555EC4C
P 2750 1800
F 0 "#PWR04" H 2750 1750 20  0001 C CNN
F 1 "+12V" H 2750 1900 30  0000 C CNN
F 2 "" H 2750 1800 60  0000 C CNN
F 3 "" H 2750 1800 60  0000 C CNN
	1    2750 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 1800 2200 1800
$Comp
L +12V #PWR05
U 1 1 5555ED76
P 2950 4800
F 0 "#PWR05" H 2950 4750 20  0001 C CNN
F 1 "+12V" H 2950 4900 30  0000 C CNN
F 2 "" H 2950 4800 60  0000 C CNN
F 3 "" H 2950 4800 60  0000 C CNN
	1    2950 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 4800 2950 4800
$Comp
L +5V #PWR06
U 1 1 55566A68
P 2700 4500
F 0 "#PWR06" H 2700 4590 20  0001 C CNN
F 1 "+5V" H 2700 4590 30  0000 C CNN
F 2 "" H 2700 4500 60  0000 C CNN
F 3 "" H 2700 4500 60  0000 C CNN
	1    2700 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 4500 3150 4500
$Comp
L CONN_01X03 P2
U 1 1 5555EDFB
P 4900 1850
F 0 "P2" H 4900 2050 50  0000 C CNN
F 1 "PIR connector" V 5000 1850 50  0000 C CNN
F 2 "" H 4900 1850 60  0000 C CNN
F 3 "" H 4900 1850 60  0000 C CNN
	1    4900 1850
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR07
U 1 1 5555EEB4
P 4250 1750
F 0 "#PWR07" H 4250 1700 20  0001 C CNN
F 1 "+12V" H 4250 1850 30  0000 C CNN
F 2 "" H 4250 1750 60  0000 C CNN
F 3 "" H 4250 1750 60  0000 C CNN
	1    4250 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 1750 4700 1750
$Comp
L GND #PWR08
U 1 1 5555EF1D
P 4350 2150
F 0 "#PWR08" H 4350 2150 30  0001 C CNN
F 1 "GND" H 4350 2080 30  0001 C CNN
F 2 "" H 4350 2150 60  0000 C CNN
F 3 "" H 4350 2150 60  0000 C CNN
	1    4350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1950 4350 1950
Wire Wire Line
	4350 1950 4350 2150
Text GLabel 3950 1850 0    60   Output ~ 0
MotionSensor
Wire Wire Line
	4700 1850 3950 1850
Text GLabel 5100 4400 2    60   Input ~ 0
MotionSensor
Wire Wire Line
	5100 4400 4550 4400
$Comp
L CONN_01X03 P3
U 1 1 5555FA5D
P 4900 2500
F 0 "P3" H 4900 2700 50  0000 C CNN
F 1 "LED driver conn" V 5000 2500 50  0000 C CNN
F 2 "" H 4900 2500 60  0000 C CNN
F 3 "" H 4900 2500 60  0000 C CNN
	1    4900 2500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR09
U 1 1 5555FA92
P 4250 2400
F 0 "#PWR09" H 4250 2350 20  0001 C CNN
F 1 "+12V" H 4250 2500 30  0000 C CNN
F 2 "" H 4250 2400 60  0000 C CNN
F 3 "" H 4250 2400 60  0000 C CNN
	1    4250 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 2400 4250 2400
$Comp
L GND #PWR010
U 1 1 5555FAC0
P 4200 2800
F 0 "#PWR010" H 4200 2800 30  0001 C CNN
F 1 "GND" H 4200 2730 30  0001 C CNN
F 2 "" H 4200 2800 60  0000 C CNN
F 3 "" H 4200 2800 60  0000 C CNN
	1    4200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2800 4200 2600
Wire Wire Line
	4200 2600 4700 2600
Text GLabel 4250 2500 0    60   Input ~ 0
LedLightPwm
Wire Wire Line
	4700 2500 4250 2500
NoConn ~ 2200 1900
NoConn ~ 3150 3400
NoConn ~ 3150 3500
NoConn ~ 3150 3600
NoConn ~ 3150 3800
NoConn ~ 3150 3900
NoConn ~ 3150 4000
NoConn ~ 3150 4100
NoConn ~ 3150 4200
NoConn ~ 3150 4300
NoConn ~ 3150 4400
NoConn ~ 3150 4600
NoConn ~ 4550 4800
NoConn ~ 4550 4700
NoConn ~ 4550 4600
$Comp
L GND #PWR?
U 1 1 5555FDFA
P 2650 4700
F 0 "#PWR?" H 2650 4700 30  0001 C CNN
F 1 "GND" H 2650 4630 30  0001 C CNN
F 2 "" H 2650 4700 60  0000 C CNN
F 3 "" H 2650 4700 60  0000 C CNN
	1    2650 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 4700 2650 4700
$EndSCHEMATC
