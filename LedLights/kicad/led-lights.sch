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
Text GLabel 5500 4300 2    60   Output ~ 0
ledPwmPin1
$Comp
L R-RESCUE-led-lights R1
U 1 1 5555D27C
P 2550 3700
F 0 "R1" V 2630 3700 40  0000 C CNN
F 1 "10K" V 2557 3701 40  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM15mm" V 2480 3700 30  0001 C CNN
F 3 "" H 2550 3700 30  0000 C CNN
	1    2550 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 3700 3150 3700
Wire Wire Line
	1900 3900 1900 3700
Wire Wire Line
	1900 3700 2300 3700
$Comp
L +5V #PWR01
U 1 1 5555DF8C
P 2150 3000
F 0 "#PWR01" H 2150 3090 20  0001 C CNN
F 1 "+5V" H 2150 3090 30  0000 C CNN
F 2 "" H 2150 3000 60  0000 C CNN
F 3 "" H 2150 3000 60  0000 C CNN
	1    2150 3000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 5555E2DF
P 1650 2950
F 0 "P3" H 1650 3100 50  0000 C CNN
F 1 "LDR connector" V 1750 2950 50  0000 C CNN
F 2 "Connect:AK300-2" H 1650 2950 60  0001 C CNN
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
L +12V #PWR02
U 1 1 5555ED76
P 2950 4800
F 0 "#PWR02" H 2950 4750 20  0001 C CNN
F 1 "+12V" H 2950 4900 30  0000 C CNN
F 2 "" H 2950 4800 60  0000 C CNN
F 3 "" H 2950 4800 60  0000 C CNN
	1    2950 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 4800 2950 4800
$Comp
L +5V #PWR03
U 1 1 55566A68
P 2700 4500
F 0 "#PWR03" H 2700 4590 20  0001 C CNN
F 1 "+5V" H 2700 4590 30  0000 C CNN
F 2 "" H 2700 4500 60  0000 C CNN
F 3 "" H 2700 4500 60  0000 C CNN
	1    2700 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 4500 3150 4500
$Comp
L CONN_01X04 P2
U 1 1 5555EDFB
P 10350 1300
F 0 "P2" H 10350 1536 50  0000 C CNN
F 1 "PIR1 connector" V 10450 1300 50  0000 C CNN
F 2 "Connect:AK300-4" H 10350 1300 60  0001 C CNN
F 3 "" H 10350 1300 60  0000 C CNN
	1    10350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1150 10150 1150
Wire Wire Line
	10150 1350 9800 1350
Wire Wire Line
	9800 1350 9800 1550
Text GLabel 9400 1250 0    60   Output ~ 0
pirInPin1
Wire Wire Line
	10150 1250 9400 1250
Text GLabel 4800 4400 2    60   Input ~ 0
pirInPin1
Wire Wire Line
	4800 4400 4550 4400
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
Wire Wire Line
	3150 4700 2650 4700
$Comp
L GND-RESCUE-led-lights #PWR04
U 1 1 55FFC077
P 4800 4500
F 0 "#PWR04" H 4800 4500 30  0001 C CNN
F 1 "GND" H 4800 4430 30  0001 C CNN
F 2 "" H 4800 4500 60  0000 C CNN
F 3 "" H 4800 4500 60  0000 C CNN
	1    4800 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 4500 4550 4500
$Comp
L +5V #PWR05
U 1 1 55FFC2AE
P 9700 1150
F 0 "#PWR05" H 9700 1000 50  0001 C CNN
F 1 "+5V" H 9700 1290 50  0000 C CNN
F 2 "" H 9700 1150 60  0000 C CNN
F 3 "" H 9700 1150 60  0000 C CNN
	1    9700 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 4300 5500 4300
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
P 1650 2350
F 0 "P1" H 1650 2500 50  0000 C CNN
F 1 "Power input" V 1750 2350 50  0000 C CNN
F 2 "Connect:AK300-2" H 1650 2350 60  0001 C CNN
F 3 "" H 1650 2350 60  0000 C CNN
	1    1650 2350
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR06
U 1 1 55FFCA52
P 2050 2400
F 0 "#PWR06" H 2050 2350 20  0001 C CNN
F 1 "+12V" H 2050 2500 30  0000 C CNN
F 2 "" H 2050 2400 60  0000 C CNN
F 3 "" H 2050 2400 60  0000 C CNN
	1    2050 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 2400 2050 2400
NoConn ~ 10150 1450
$Comp
L CONN_01X02 P5
U 1 1 55FFD4B0
P 10350 3600
F 0 "P5" H 10350 3750 50  0000 C CNN
F 1 "LED 1" V 10450 3600 50  0000 C CNN
F 2 "Connect:AK300-2" H 10350 3600 60  0001 C CNN
F 3 "" H 10350 3600 60  0000 C CNN
	1    10350 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 55FFD502
P 9800 3750
F 0 "#PWR07" H 9800 3500 50  0001 C CNN
F 1 "GND" H 9800 3600 50  0000 C CNN
F 2 "" H 9800 3750 60  0000 C CNN
F 3 "" H 9800 3750 60  0000 C CNN
	1    9800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3750 9800 3650
Wire Wire Line
	9800 3650 10150 3650
Text GLabel 9800 3550 0    60   Input ~ 0
ledPwmPin1
Wire Wire Line
	10150 3550 9800 3550
$Comp
L CONN_01X02 P6
U 1 1 55FFD727
P 10350 4250
F 0 "P6" H 10350 4400 50  0000 C CNN
F 1 "LED 2" V 10450 4250 50  0000 C CNN
F 2 "Connect:AK300-2" H 10350 4250 60  0001 C CNN
F 3 "" H 10350 4250 60  0000 C CNN
	1    10350 4250
	1    0    0    -1  
$EndComp
Text GLabel 9800 4200 0    60   Input ~ 0
ledPwmPin2
Wire Wire Line
	10150 4200 9800 4200
$Comp
L GND #PWR08
U 1 1 55FFD87C
P 9800 4450
F 0 "#PWR08" H 9800 4200 50  0001 C CNN
F 1 "GND" H 9800 4300 50  0000 C CNN
F 2 "" H 9800 4450 60  0000 C CNN
F 3 "" H 9800 4450 60  0000 C CNN
	1    9800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4450 9800 4300
Wire Wire Line
	9800 4300 10150 4300
$Comp
L CONN_01X04 P7
U 1 1 55FFDDF5
P 10350 2150
F 0 "P7" H 10350 2386 50  0000 C CNN
F 1 "PIR2 connector" V 10450 2150 50  0000 C CNN
F 2 "Connect:AK300-4" H 10350 2150 60  0001 C CNN
F 3 "" H 10350 2150 60  0000 C CNN
	1    10350 2150
	1    0    0    -1  
$EndComp
Text GLabel 9400 2100 0    60   Output ~ 0
pirInPin2
Wire Wire Line
	10150 2100 9400 2100
$Comp
L +5V #PWR09
U 1 1 55FFE275
P 9750 2000
F 0 "#PWR09" H 9750 1850 50  0001 C CNN
F 1 "+5V" H 9750 2140 50  0000 C CNN
F 2 "" H 9750 2000 60  0000 C CNN
F 3 "" H 9750 2000 60  0000 C CNN
	1    9750 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 2000 9750 2000
NoConn ~ 10150 2300
Wire Wire Line
	10150 2200 9850 2200
Wire Wire Line
	9850 2200 9850 2400
$Comp
L GND #PWR010
U 1 1 55FFE742
P 9800 1550
F 0 "#PWR010" H 9800 1300 50  0001 C CNN
F 1 "GND" H 9800 1400 50  0000 C CNN
F 2 "" H 9800 1550 60  0000 C CNN
F 3 "" H 9800 1550 60  0000 C CNN
	1    9800 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 55FFE76F
P 9850 2400
F 0 "#PWR011" H 9850 2150 50  0001 C CNN
F 1 "GND" H 9850 2250 50  0000 C CNN
F 2 "" H 9850 2400 60  0000 C CNN
F 3 "" H 9850 2400 60  0000 C CNN
	1    9850 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 55FFF74F
P 2650 4700
F 0 "#PWR012" H 2650 4450 50  0001 C CNN
F 1 "GND" H 2650 4550 50  0000 C CNN
F 2 "" H 2650 4700 60  0000 C CNN
F 3 "" H 2650 4700 60  0000 C CNN
	1    2650 4700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR013
U 1 1 55FFF8D9
P 1900 3900
F 0 "#PWR013" H 1900 3650 50  0001 C CNN
F 1 "GND" H 1900 3750 50  0000 C CNN
F 2 "" H 1900 3900 60  0000 C CNN
F 3 "" H 1900 3900 60  0000 C CNN
	1    1900 3900
	1    0    0    -1  
$EndComp
Text GLabel 6100 4200 2    60   Input ~ 0
pirInPin2
Wire Wire Line
	6100 4200 4550 4200
$Comp
L CONN_01X02 P8
U 1 1 55FFFF3B
P 10350 4850
F 0 "P8" H 10350 5000 50  0000 C CNN
F 1 "LED 3" V 10450 4850 50  0000 C CNN
F 2 "Connect:AK300-2" H 10350 4850 60  0001 C CNN
F 3 "" H 10350 4850 60  0000 C CNN
	1    10350 4850
	1    0    0    -1  
$EndComp
Text GLabel 9750 4800 0    60   Input ~ 0
ledPwmPin3
$Comp
L GND #PWR014
U 1 1 56000D5E
P 9800 5050
F 0 "#PWR014" H 9800 4800 50  0001 C CNN
F 1 "GND" H 9800 4900 50  0000 C CNN
F 2 "" H 9800 5050 60  0000 C CNN
F 3 "" H 9800 5050 60  0000 C CNN
	1    9800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4800 9750 4800
Wire Wire Line
	10150 4900 9800 4900
Wire Wire Line
	9800 4900 9800 5050
NoConn ~ 4550 3400
NoConn ~ 4550 3500
NoConn ~ 4550 3600
NoConn ~ 4550 3700
NoConn ~ 4550 3800
NoConn ~ 4550 3900
$Comp
L GND #PWR?
U 1 1 560286AB
P 2250 2500
F 0 "#PWR?" H 2250 2250 50  0001 C CNN
F 1 "GND" H 2250 2350 50  0000 C CNN
F 2 "" H 2250 2500 60  0000 C CNN
F 3 "" H 2250 2500 60  0000 C CNN
	1    2250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2300 2250 2300
Wire Wire Line
	2250 2300 2250 2500
$EndSCHEMATC
