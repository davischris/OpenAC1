EESchema Schematic File Version 4
LIBS:Open Apple 1 SBC-cache
EELAYER 26 0
EELAYER END
$Descr USLedger 17000 11000
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
Text GLabel 5525 2375 2    60   BiDi ~ 0
D0
Text GLabel 5525 2475 2    60   BiDi ~ 0
D1
Text GLabel 5525 2575 2    60   BiDi ~ 0
D2
Text GLabel 5525 2675 2    60   BiDi ~ 0
D3
Text GLabel 5525 2775 2    60   BiDi ~ 0
D4
Text GLabel 5525 2975 2    60   BiDi ~ 0
D6
Text GLabel 5525 3075 2    60   BiDi ~ 0
D7
Text GLabel 900  725  0    60   Input ~ 0
A12
Text GLabel 5525 2175 2    60   Input ~ 0
A1
Text GLabel 5525 2075 2    60   Input ~ 0
A0
Text Notes 8300 7500 2    60   ~ 0
Open Apple 1
Text GLabel 5525 2875 2    60   BiDi ~ 0
D5
$Comp
L Open-Apple-1-SBC-rescue:WD65C21 U8
U 1 1 594126CF
P 4875 2575
F 0 "U8" H 4875 3625 60  0000 C CNN
F 1 "WD65C21" V 4875 2525 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 4375 2775 60  0001 C CNN
F 3 "" H 4375 2775 60  0000 C CNN
	1    4875 2575
	1    0    0    -1  
$EndComp
Text GLabel 5525 2275 2    60   Input ~ 0
RESET
Text GLabel 5525 3175 2    60   Input ~ 0
PHI2
$Comp
L Open-Apple-1-SBC-rescue:74LS138 U3
U 1 1 594126D0
P 1500 1075
F 0 "U3" H 1500 1575 50  0000 C CNN
F 1 "74HCT138" V 1500 1075 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 1500 1075 50  0001 C CNN
F 3 "" H 1500 1075 50  0001 C CNN
	1    1500 1075
	1    0    0    -1  
$EndComp
Text GLabel 5525 3575 2    60   Input ~ 0
RW
Text GLabel 900  825  0    60   Input ~ 0
A13
Text GLabel 900  925  0    60   Input ~ 0
A14
Text GLabel 900  1225 0    60   Input ~ 0
A15
Text GLabel 600  1575 3    60   Output ~ 0
GND
NoConn ~ 2100 725 
NoConn ~ 2100 825 
NoConn ~ 2100 925 
NoConn ~ 2100 1025
NoConn ~ 2100 1125
Text GLabel 4225 3575 0    60   Input ~ 0
VCC
Text GLabel 5525 1675 2    60   Input ~ 0
KBD_STROBE
Text GLabel 5525 1775 2    60   Output ~ 0
KBD_READY
NoConn ~ 5525 1875
NoConn ~ 5525 1975
Text GLabel 4225 1675 0    60   Output ~ 0
GND
Text GLabel 5925 3275 2    60   Input ~ 0
VCC
Text GLabel 5525 3475 2    60   Input ~ 0
A4
$Comp
L Device:C C12
U 1 1 594126D2
P 2825 3475
F 0 "C12" H 2850 3575 50  0000 L CNN
F 1 "10nF" H 2850 3375 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2825 3475 50  0001 C CNN
F 3 "" H 2825 3475 50  0001 C CNN
	1    2825 3475
	0    -1   -1   0   
$EndComp
Text GLabel 4225 3375 0    60   Input ~ 0
OUT_RDA
Text GLabel 2400 3275 0    60   Output ~ 0
OUT_DA
Text GLabel 4225 1775 0    60   Input ~ 0
KBD_D0
Text GLabel 4225 1875 0    60   Input ~ 0
KBD_D1
Text GLabel 4225 1975 0    60   Input ~ 0
KBD_D2
Text GLabel 4225 2075 0    60   Input ~ 0
KBD_D3
Text GLabel 4225 2175 0    60   Input ~ 0
KBD_D4
Text GLabel 4225 2275 0    60   Input ~ 0
KBD_D5
Text GLabel 4225 2375 0    60   Input ~ 0
KBD_D6
Text GLabel 4225 2575 0    60   Output ~ 0
OUT_D0
Text GLabel 4225 2675 0    60   Output ~ 0
OUT_D1
Text GLabel 4225 2775 0    60   Output ~ 0
OUT_D2
Text GLabel 4225 2875 0    60   Output ~ 0
OUT_D3
Text GLabel 4225 2975 0    60   Output ~ 0
OUT_D4
Text GLabel 4225 3075 0    60   Output ~ 0
OUT_D5
Text GLabel 4225 3175 0    60   Output ~ 0
OUT_D6
$Comp
L Open-Apple-1-SBC-rescue:MCP23S17 U9
U 1 1 594126D3
P 7275 2525
F 0 "U9" H 7025 3475 50  0000 R CNN
F 1 "MCP23S17" V 7275 2525 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W7.62mm_Socket" H 7325 1575 50  0001 L CNN
F 3 "" H 7525 3525 50  0001 C CNN
	1    7275 2525
	1    0    0    -1  
$EndComp
Text GLabel 6775 2625 0    60   Input ~ 0
OUT_D0
Text GLabel 6775 2725 0    60   Input ~ 0
OUT_D1
Text GLabel 6775 2825 0    60   Input ~ 0
OUT_D2
Text GLabel 6775 2925 0    60   Input ~ 0
OUT_D3
Text GLabel 6775 3025 0    60   Input ~ 0
OUT_D4
Text GLabel 6775 3125 0    60   Input ~ 0
OUT_D5
Text GLabel 6775 3225 0    60   Input ~ 0
OUT_D6
Text GLabel 7925 3675 3    60   Output ~ 0
GND
Text GLabel 7275 1525 1    60   Input ~ 0
VCC
$Comp
L Open-Apple-1-SBC-rescue:Arduino_Nano_Header J2
U 1 1 594126D4
P 9325 2425
F 0 "J2" H 9325 3225 60  0000 C CNN
F 1 "Arduino Nano" V 9325 2425 60  0000 C CNN
F 2 "Modules:Arduino_Nano" H 9325 2425 60  0001 C CNN
F 3 "" H 9325 2425 60  0000 C CNN
	1    9325 2425
	1    0    0    -1  
$EndComp
Text GLabel 9825 1825 2    60   Output ~ 0
GND
Text GLabel 10550 2025 2    60   Output ~ 0
VCC
$Comp
L Device:R R9
U 1 1 594126D5
P 9325 3350
F 0 "R9" V 9405 3350 50  0000 C CNN
F 1 "10k" V 9325 3350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9255 3350 50  0001 C CNN
F 3 "" H 9325 3350 50  0001 C CNN
	1    9325 3350
	0    1    1    0   
$EndComp
Text GLabel 8975 2125 0    60   Input ~ 0
KBD_READY
Text GLabel 8975 2625 0    60   Output ~ 0
KBD_STROBE
Text GLabel 8975 2425 0    60   Output ~ 0
OUT_RDA
Text GLabel 8975 2225 0    60   Input ~ 0
OUT_DA
Text GLabel 6775 1725 0    60   Output ~ 0
KBD_D0
Text GLabel 6775 1825 0    60   Output ~ 0
KBD_D1
Text GLabel 6775 1925 0    60   Output ~ 0
KBD_D2
Text GLabel 6775 2025 0    60   Output ~ 0
KBD_D3
Text GLabel 6775 2125 0    60   Output ~ 0
KBD_D4
Text GLabel 6775 2225 0    60   Output ~ 0
KBD_D5
Text GLabel 6775 2325 0    60   Output ~ 0
KBD_D6
Text GLabel 6775 2425 0    60   Output ~ 0
KBD_D7
Text GLabel 9600 3350 2    60   Input ~ 0
VCC
NoConn ~ 7775 2125
NoConn ~ 7775 2225
NoConn ~ 9675 2925
NoConn ~ 9675 2825
NoConn ~ 9675 2725
NoConn ~ 9675 2625
NoConn ~ 9675 2525
NoConn ~ 9675 2425
NoConn ~ 9675 2325
NoConn ~ 9675 2225
NoConn ~ 9675 2125
NoConn ~ 6775 3325
Text GLabel 4225 2475 0    60   Input ~ 0
KBD_D7
Text GLabel 9825 1925 2    60   Output ~ 0
P_RESET
Text GLabel 7925 1725 2    60   Input ~ 0
P_RESET
$Comp
L Open-Apple-1-SBC-rescue:HM62256BLP-7 U2
U 1 1 5941878A
P 4375 4850
F 0 "U2" H 4075 5750 50  0000 C CNN
F 1 "HM62256BLP-7" V 4375 4875 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 4375 4850 50  0001 C CIN
F 3 "" H 4375 4850 50  0001 C CNN
	1    4375 4850
	1    0    0    -1  
$EndComp
Text GLabel 4875 4100 2    60   Input ~ 0
D0
Text GLabel 4875 4200 2    60   Input ~ 0
D1
Text GLabel 4875 4300 2    60   Input ~ 0
D2
Text GLabel 4875 4400 2    60   Input ~ 0
D3
Text GLabel 4875 4500 2    60   Input ~ 0
D4
Text GLabel 4875 4600 2    60   Input ~ 0
D5
Text GLabel 4875 4700 2    60   Input ~ 0
D6
Text GLabel 4875 4800 2    60   Input ~ 0
D7
Text GLabel 3875 5500 0    60   Input ~ 0
A14
Text GLabel 3875 5400 0    60   Input ~ 0
A13
Text GLabel 3875 5300 0    60   Input ~ 0
A12
Text GLabel 3875 5200 0    60   Input ~ 0
A11
Text GLabel 3875 5100 0    60   Input ~ 0
A10
Text GLabel 3875 5000 0    60   Input ~ 0
A9
Text GLabel 3875 4900 0    60   Input ~ 0
A8
Text GLabel 3875 4800 0    60   Input ~ 0
A7
Text GLabel 3875 4700 0    60   Input ~ 0
A6
Text GLabel 3875 4600 0    60   Input ~ 0
A5
Text GLabel 3875 4500 0    60   Input ~ 0
A4
Text GLabel 3875 4400 0    60   Input ~ 0
A3
Text GLabel 3875 4300 0    60   Input ~ 0
A2
Text GLabel 3875 4200 0    60   Input ~ 0
A1
Text GLabel 3875 4100 0    60   Input ~ 0
A0
Text GLabel 9775 4450 2    60   Output ~ 0
PHI2
Text GLabel 9775 4350 2    60   Input ~ 0
RESET
$Comp
L Device:R R6
U 1 1 5941A3D5
P 7350 4450
F 0 "R6" V 7430 4450 50  0000 C CNN
F 1 "3.3k" V 7350 4450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 4450 50  0001 C CNN
F 3 "" H 7350 4450 50  0001 C CNN
	1    7350 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5941A3D6
P 7350 4650
F 0 "R7" V 7430 4650 50  0000 C CNN
F 1 "3.3k" V 7350 4650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 4650 50  0001 C CNN
F 3 "" H 7350 4650 50  0001 C CNN
	1    7350 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5941A3D7
P 7350 4850
F 0 "R8" V 7430 4850 50  0000 C CNN
F 1 "3.3k" V 7350 4850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 4850 50  0001 C CNN
F 3 "" H 7350 4850 50  0001 C CNN
	1    7350 4850
	0    1    1    0   
$EndComp
Text GLabel 7150 4250 1    60   Input ~ 0
VCC
$Comp
L Open-Apple-1-SBC-rescue:WD65C02 U1
U 1 1 5941A3D9
P 9125 5250
F 0 "U1" H 9125 4100 60  0000 C CNN
F 1 "WD65C02" V 9125 5150 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 8625 5450 60  0001 C CNN
F 3 "" H 8625 5450 60  0000 C CNN
	1    9125 5250
	1    0    0    -1  
$EndComp
Text GLabel 10225 4225 1    60   Input ~ 0
VCC
Text GLabel 9775 6250 2    60   Output ~ 0
GND
Text GLabel 9775 4950 2    60   Output ~ 0
RW
Text GLabel 8475 5150 0    60   Output ~ 0
A0
Text GLabel 8475 5250 0    60   Output ~ 0
A1
Text GLabel 8475 5350 0    60   Output ~ 0
A2
Text GLabel 8475 5450 0    60   Output ~ 0
A3
Text GLabel 8475 5550 0    60   Output ~ 0
A4
Text GLabel 8475 5650 0    60   Output ~ 0
A5
Text GLabel 8475 5750 0    60   Output ~ 0
A6
Text GLabel 8475 5850 0    60   Output ~ 0
A7
Text GLabel 8475 5950 0    60   Output ~ 0
A8
Text GLabel 8475 6050 0    60   Output ~ 0
A9
Text GLabel 8475 6150 0    60   Output ~ 0
A10
Text GLabel 8475 6250 0    60   Output ~ 0
A11
Text GLabel 9775 5850 2    60   Output ~ 0
A15
Text GLabel 9775 5950 2    60   Output ~ 0
A14
Text GLabel 9775 6050 2    60   Output ~ 0
A13
Text GLabel 9775 6150 2    60   Output ~ 0
A12
Text GLabel 9775 5050 2    60   Output ~ 0
D0
Text GLabel 9775 5150 2    60   Output ~ 0
D1
Text GLabel 9775 5250 2    60   Output ~ 0
D2
Text GLabel 9775 5350 2    60   Output ~ 0
D3
Text GLabel 9775 5450 2    60   Output ~ 0
D4
Text GLabel 9775 5550 2    60   Output ~ 0
D5
Text GLabel 9775 5750 2    60   Output ~ 0
D7
Text GLabel 9775 5650 2    60   Output ~ 0
D6
NoConn ~ 9775 4850
NoConn ~ 8475 4750
Text GLabel 9775 4650 2    60   Input ~ 0
CLOCK
Text GLabel 7875 4350 0    60   Output ~ 0
GND
$Comp
L Open-Apple-1-SBC-rescue:CONN_01X02 J1
U 1 1 5941A3E0
P 8125 4150
F 0 "J1" H 8125 4300 50  0000 C CNN
F 1 "VP GND" V 8225 4150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8125 4150 50  0001 C CNN
F 3 "" H 8125 4150 50  0001 C CNN
	1    8125 4150
	0    -1   -1   0   
$EndComp
Text GLabel 3100 3825 2    60   Input ~ 0
D0
Text GLabel 3100 3925 2    60   Input ~ 0
D1
Text GLabel 3100 4025 2    60   Input ~ 0
D2
Text GLabel 3100 4125 2    60   Input ~ 0
D3
Text GLabel 3100 4225 2    60   Input ~ 0
D4
Text GLabel 3100 4425 2    60   Input ~ 0
D6
Text GLabel 3100 4525 2    60   Input ~ 0
D7
Text GLabel 1700 5025 0    60   Input ~ 0
A12
Text GLabel 1700 4925 0    60   Input ~ 0
A11
Text GLabel 1700 4825 0    60   Input ~ 0
A10
Text GLabel 1700 4725 0    60   Input ~ 0
A9
Text GLabel 1700 4625 0    60   Input ~ 0
A8
Text GLabel 1700 4525 0    60   Input ~ 0
A7
Text GLabel 1700 4425 0    60   Input ~ 0
A6
Text GLabel 1700 4325 0    60   Input ~ 0
A5
Text GLabel 1700 4225 0    60   Input ~ 0
A4
Text GLabel 1700 4125 0    60   Input ~ 0
A3
Text GLabel 1700 4025 0    60   Input ~ 0
A2
Text GLabel 1700 3925 0    60   Input ~ 0
A1
Text GLabel 1700 3825 0    60   Input ~ 0
A0
Text GLabel 3100 4325 2    60   Input ~ 0
D5
$Comp
L Open-Apple-1-SBC-rescue:28C256 U4
U 1 1 5941C8BB
P 2400 4725
F 0 "U4" H 2600 5725 50  0000 C CNN
F 1 "28C256" H 2700 3725 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 2400 4725 50  0001 C CNN
F 3 "" H 2400 4725 50  0001 C CNN
	1    2400 4725
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Dual A13
U 1 1 5941C8BC
P 1025 2000
F 0 "A13" H 1075 1900 50  0000 L CNN
F 1 "A13 Select" H 1025 2100 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1025 2000 50  0001 C CNN
F 3 "" H 1025 2000 50  0001 C CNN
	1    1025 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Dual A14
U 1 1 5941C8BD
P 2100 2000
F 0 "A14" H 2150 1900 50  0000 L CNN
F 1 "A14 Select" H 2100 2100 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2100 2000 50  0001 C CNN
F 3 "" H 2100 2000 50  0001 C CNN
	1    2100 2000
	1    0    0    -1  
$EndComp
Text GLabel 1700 5125 0    60   Input ~ 0
A13_W
Text GLabel 1700 5225 0    60   Input ~ 0
A14_W
Text GLabel 775  2000 0    60   Input ~ 0
VCC
Text GLabel 1850 2000 0    60   Input ~ 0
VCC
Text GLabel 2350 2000 2    60   Input ~ 0
GND
Text GLabel 1275 2000 2    60   Input ~ 0
GND
Text GLabel 1025 2100 3    60   Output ~ 0
A13_W
Text GLabel 2100 2100 3    60   Output ~ 0
A14_W
$Comp
L Device:R R1
U 1 1 5941C8C9
P 1425 5425
F 0 "R1" V 1505 5425 50  0000 C CNN
F 1 "3.3k" V 1425 5425 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1355 5425 50  0001 C CNN
F 3 "" H 1425 5425 50  0001 C CNN
	1    1425 5425
	0    1    1    0   
$EndComp
Text GLabel 1275 5425 0    60   Input ~ 0
VCC
$Comp
L Open-Apple-1-SBC-rescue:NE555 U6
U 1 1 59421FC7
P 3175 6575
F 0 "U6" H 2775 6925 50  0000 L CNN
F 1 "NE555" H 2775 6225 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 3175 6575 50  0001 C CNN
F 3 "" H 3175 6575 50  0001 C CNN
	1    3175 6575
	1    0    0    -1  
$EndComp
Text GLabel 750  5725 1    60   Input ~ 0
VCC
Text GLabel 750  7500 3    60   Output ~ 0
GND
$Comp
L Device:R R2
U 1 1 59421FC8
P 2175 6125
F 0 "R2" V 2100 6125 50  0000 C CNN
F 1 "1M" V 2175 6125 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2105 6125 50  0001 C CNN
F 3 "" H 2175 6125 50  0001 C CNN
	1    2175 6125
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 59421FC9
P 2175 7025
F 0 "C6" H 2200 7125 50  0000 L CNN
F 1 "100nF" H 2200 6925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2213 6875 50  0001 C CNN
F 3 "" H 2175 7025 50  0001 C CNN
	1    2175 7025
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 59421FCA
P 4475 7000
F 0 "C11" H 4500 7100 50  0000 L CNN
F 1 "100nF" H 4500 6900 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 4513 6850 50  0001 C CNN
F 3 "" H 4475 7000 50  0001 C CNN
	1    4475 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 59421FCB
P 4100 6425
F 0 "R3" V 4025 6425 50  0000 C CNN
F 1 "47k" V 4100 6425 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4030 6425 50  0001 C CNN
F 3 "" H 4100 6425 50  0001 C CNN
	1    4100 6425
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C10
U 1 1 59421FCC
P 4100 7000
F 0 "C10" H 4125 7100 50  0000 L CNN
F 1 "10uF" H 4125 6900 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P2.00mm" H 4138 6850 50  0001 C CNN
F 3 "" H 4100 7000 50  0001 C CNN
	1    4100 7000
	1    0    0    -1  
$EndComp
$Comp
L Open-Apple-1-SBC-rescue:SW_SPST SW1
U 1 1 59421FCE
P 1725 6850
F 0 "SW1" H 1725 6975 50  0000 C CNN
F 1 "RESET" H 1725 6750 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 1725 6850 50  0001 C CNN
F 3 "" H 1725 6850 50  0001 C CNN
	1    1725 6850
	0    -1   -1   0   
$EndComp
NoConn ~ 2675 6575
$Comp
L Open-Apple-1-SBC-rescue:ACO-xxxMHz X1
U 1 1 59421FD0
P 750 6600
F 0 "X1" H 550 6850 50  0000 L CNN
F 1 "1MHz" H 800 6350 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-14" H 1200 6250 50  0001 C CNN
F 3 "" H 650 6600 50  0001 C CNN
	1    750  6600
	1    0    0    -1  
$EndComp
Text GLabel 1400 6400 1    60   Output ~ 0
CLOCK
$Comp
L Device:LED D1
U 1 1 59421FD7
P 6375 6950
F 0 "D1" H 6375 7050 50  0000 C CNN
F 1 "Power" H 6375 6850 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 6375 6950 50  0001 C CNN
F 3 "" H 6375 6950 50  0001 C CNN
	1    6375 6950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 59421FD8
P 6375 6575
F 0 "R5" V 6455 6575 50  0000 C CNN
F 1 "330" V 6375 6575 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6305 6575 50  0001 C CNN
F 3 "" H 6375 6575 50  0001 C CNN
	1    6375 6575
	1    0    0    -1  
$EndComp
Text GLabel 6375 6300 1    60   Input ~ 0
VCC
Text GLabel 6375 7225 3    60   Output ~ 0
GND
$Comp
L Open-Apple-1-SBC-rescue:74LS04 U7
U 2 1 5942DAF5
P 5225 6075
F 0 "U7" H 5420 6190 50  0000 C CNN
F 1 "74HCT04" H 5415 5950 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 5225 6075 50  0001 C CNN
F 3 "" H 5225 6075 50  0001 C CNN
	2    5225 6075
	1    0    0    -1  
$EndComp
Text GLabel 5800 6600 3    60   Output ~ 0
RESET
$Comp
L Device:R R4
U 1 1 5942DC01
P 5250 6475
F 0 "R4" V 5330 6475 50  0000 C CNN
F 1 "1k" V 5250 6475 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5180 6475 50  0001 C CNN
F 3 "" H 5250 6475 50  0001 C CNN
	1    5250 6475
	0    1    1    0   
$EndComp
Text GLabel 5525 3375 2    60   Input ~ 0
CS_PIA
Text GLabel 2150 1225 2    60   Output ~ 0
CS_PIA
$Comp
L Open-Apple-1-SBC-rescue:74HCT00 U5
U 2 1 5944A207
P 3150 1375
F 0 "U5" H 3150 1425 50  0000 C CNN
F 1 "74HCT00" H 3150 1275 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 3150 1375 50  0001 C CNN
F 3 "" H 3150 1375 50  0001 C CNN
	2    3150 1375
	1    0    0    -1  
$EndComp
$Comp
L Open-Apple-1-SBC-rescue:74HCT00 U5
U 1 1 5944BF60
P 3150 825
F 0 "U5" H 3150 875 50  0000 C CNN
F 1 "74HCT00" H 3150 725 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 3150 825 50  0001 C CNN
F 3 "" H 3150 825 50  0001 C CNN
	1    3150 825 
	1    0    0    -1  
$EndComp
Text GLabel 3750 825  2    60   Output ~ 0
CS_ROM
Text GLabel 1325 5625 0    60   Input ~ 0
CS_ROM
$Comp
L Open-Apple-1-SBC-rescue:74HCT00 U5
U 3 1 5945BB1F
P 6175 4525
F 0 "U5" H 6175 4575 50  0000 C CNN
F 1 "74HCT00" H 6175 4425 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6175 4525 50  0001 C CNN
F 3 "" H 6175 4525 50  0001 C CNN
	3    6175 4525
	1    0    0    -1  
$EndComp
$Comp
L Open-Apple-1-SBC-rescue:74HCT00 U5
U 4 1 5945BB97
P 6175 5050
F 0 "U5" H 6175 5100 50  0000 C CNN
F 1 "74HCT00" H 6175 4950 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6175 5050 50  0001 C CNN
F 3 "" H 6175 5050 50  0001 C CNN
	4    6175 5050
	-1   0    0    1   
$EndComp
Text GLabel 5425 4350 1    60   Input ~ 0
RW
Text GLabel 6900 4950 1    60   Input ~ 0
PHI2
$Comp
L Open-Apple-1-SBC-rescue:74LS04 U7
U 6 1 5946AD55
P 12400 1000
F 0 "U7" H 12595 1115 50  0000 C CNN
F 1 "74HCT04" H 12590 875 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 12400 1000 50  0001 C CNN
F 3 "" H 12400 1000 50  0001 C CNN
	6    12400 1000
	0    1    1    0   
$EndComp
$Comp
L Open-Apple-1-SBC-rescue:74LS04 U7
U 5 1 5946B119
P 12050 1000
F 0 "U7" H 12245 1115 50  0000 C CNN
F 1 "74HCT04" H 12240 875 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 12050 1000 50  0001 C CNN
F 3 "" H 12050 1000 50  0001 C CNN
	5    12050 1000
	0    1    1    0   
$EndComp
$Comp
L Open-Apple-1-SBC-rescue:74LS04 U7
U 4 1 5946B1A2
P 11700 1000
F 0 "U7" H 11895 1115 50  0000 C CNN
F 1 "74HCT04" H 11890 875 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 11700 1000 50  0001 C CNN
F 3 "" H 11700 1000 50  0001 C CNN
	4    11700 1000
	0    1    1    0   
$EndComp
$Comp
L Open-Apple-1-SBC-rescue:74LS04 U7
U 3 1 5946B22E
P 11350 1000
F 0 "U7" H 11545 1115 50  0000 C CNN
F 1 "74HCT04" H 11540 875 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 11350 1000 50  0001 C CNN
F 3 "" H 11350 1000 50  0001 C CNN
	3    11350 1000
	0    1    1    0   
$EndComp
Text GLabel 12775 850  3    60   Output ~ 0
GND
NoConn ~ 11350 1450
NoConn ~ 11700 1450
NoConn ~ 12050 1450
NoConn ~ 12400 1450
Text GLabel 8300 750  1    60   Input ~ 0
VCC
$Comp
L Device:C C8
U 1 1 5946F39E
P 8000 1025
F 0 "C8" H 8025 1125 50  0000 L CNN
F 1 "100nF" H 8025 925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8038 875 50  0001 C CNN
F 3 "" H 8000 1025 50  0001 C CNN
	1    8000 1025
	1    0    0    -1  
$EndComp
Text GLabel 8300 1300 3    60   Output ~ 0
GND
$Comp
L Device:C C7
U 1 1 594709B1
P 7700 1025
F 0 "C7" H 7725 1125 50  0000 L CNN
F 1 "100nF" H 7725 925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7738 875 50  0001 C CNN
F 3 "" H 7700 1025 50  0001 C CNN
	1    7700 1025
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 59470A42
P 7400 1025
F 0 "C5" H 7425 1125 50  0000 L CNN
F 1 "100nF" H 7425 925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7438 875 50  0001 C CNN
F 3 "" H 7400 1025 50  0001 C CNN
	1    7400 1025
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 59470AD4
P 7100 1025
F 0 "C4" H 7125 1125 50  0000 L CNN
F 1 "100nF" H 7125 925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7138 875 50  0001 C CNN
F 3 "" H 7100 1025 50  0001 C CNN
	1    7100 1025
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 59470B69
P 6800 1025
F 0 "C3" H 6825 1125 50  0000 L CNN
F 1 "100nF" H 6825 925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6838 875 50  0001 C CNN
F 3 "" H 6800 1025 50  0001 C CNN
	1    6800 1025
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 59470C05
P 6500 1025
F 0 "C2" H 6525 1125 50  0000 L CNN
F 1 "100nF" H 6525 925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6538 875 50  0001 C CNN
F 3 "" H 6500 1025 50  0001 C CNN
	1    6500 1025
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 59470CA0
P 6200 1025
F 0 "C1" H 6225 1125 50  0000 L CNN
F 1 "100nF" H 6225 925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6238 875 50  0001 C CNN
F 3 "" H 6200 1025 50  0001 C CNN
	1    6200 1025
	1    0    0    -1  
$EndComp
Text GLabel 8475 4950 0    60   Output ~ 0
SYNC
Text GLabel 8025 5125 3    60   Output ~ 0
RDY
Text GLabel 1950 1650 0    60   Input ~ 0
A15
Text GLabel 2150 1650 2    60   Output ~ 0
CS_RAM
Text GLabel 5200 5200 2    60   Input ~ 0
CS_RAM
Text GLabel 7875 5125 3    60   Output ~ 0
IRQ
Text GLabel 7725 5125 3    60   Output ~ 0
NMI
Text GLabel 8975 1725 0    60   Output ~ 0
TX
Text GLabel 9525 1200 2    60   Input ~ 0
RX
$Comp
L Open-Apple-1-SBC-rescue:74LS04 U7
U 1 1 5941BFB6
P 3425 3475
F 0 "U7" H 3620 3590 50  0000 C CNN
F 1 "74HCT04" H 3615 3350 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 3425 3475 50  0001 C CNN
F 3 "" H 3425 3475 50  0001 C CNN
	1    3425 3475
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 59427DE2
P 8300 1025
F 0 "C9" H 8325 1125 50  0000 L CNN
F 1 "100nF" H 8325 925 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8338 875 50  0001 C CNN
F 3 "" H 8300 1025 50  0001 C CNN
	1    8300 1025
	1    0    0    -1  
$EndComp
$Comp
L Open-Apple-1-SBC-rescue:CONN_01X01 J4
U 1 1 59430185
P 4975 775
F 0 "J4" V 5075 775 50  0000 C CNN
F 1 "Hole" V 5075 775 50  0001 C CNN
F 2 "rc6502:Mounting" H 4975 775 50  0001 C CNN
F 3 "" H 4975 775 50  0001 C CNN
	1    4975 775 
	0    1    1    0   
$EndComp
NoConn ~ 4975 575 
$Comp
L Open-Apple-1-SBC-rescue:CONN_01X01 J6
U 1 1 59430E09
P 5225 775
F 0 "J6" V 5325 775 50  0000 C CNN
F 1 "Hole" V 5325 775 50  0001 C CNN
F 2 "rc6502:Mounting" H 5225 775 50  0001 C CNN
F 3 "" H 5225 775 50  0001 C CNN
	1    5225 775 
	0    1    1    0   
$EndComp
NoConn ~ 5225 575 
$Comp
L Open-Apple-1-SBC-rescue:CONN_01X01 J5
U 1 1 59430FAB
P 5100 775
F 0 "J5" V 5200 775 50  0000 C CNN
F 1 "Hole" V 5200 775 50  0001 C CNN
F 2 "rc6502:Mounting" H 5100 775 50  0001 C CNN
F 3 "" H 5100 775 50  0001 C CNN
	1    5100 775 
	0    1    1    0   
$EndComp
NoConn ~ 5100 575 
$Comp
L Open-Apple-1-SBC-rescue:CONN_01X01 J7
U 1 1 59431023
P 5350 775
F 0 "J7" V 5450 775 50  0000 C CNN
F 1 "Hole" V 5450 775 50  0001 C CNN
F 2 "rc6502:Mounting" H 5350 775 50  0001 C CNN
F 3 "" H 5350 775 50  0001 C CNN
	1    5350 775 
	0    1    1    0   
$EndComp
NoConn ~ 5350 575 
$Comp
L Device:R R10
U 1 1 596284F8
P 10250 4750
F 0 "R10" V 10330 4750 50  0000 C CNN
F 1 "3.3k" V 10250 4750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10180 4750 50  0001 C CNN
F 3 "" H 10250 4750 50  0001 C CNN
	1    10250 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:Jumper_NO_Small JP3
U 1 1 5CE53040
P 1475 7100
F 0 "JP3" H 1475 7180 50  0000 C CNN
F 1 "EXT RESET" H 1485 7040 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1475 7100 50  0001 C CNN
F 3 "" H 1475 7100 50  0000 C CNN
	1    1475 7100
	0    1    1    0   
$EndComp
NoConn ~ 8975 2525
$Comp
L Open-Apple-1-SBC-rescue:PIC32MX250F128B-V_SP U10
U 1 1 5D9511C1
P 13575 4325
F 0 "U10" H 11994 5446 50  0000 L BNN
F 1 "PIC32MX250F128B-V/SP" H 11993 3133 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm_Socket" H 13575 4325 50  0001 L BNN
F 3 "Microchip" H 13575 4325 50  0001 L BNN
F 4 "None" H 13575 4325 50  0001 L BNN "Field4"
F 5 "32 Bit MCU, 128KB Flash, 32KB RAM, 40 MHz, 28 Pin, 3 Comp, CTMU, RTCC, 28 SPDIP" H 13575 4325 50  0001 L BNN "Field5"
F 6 "SPDIP-28 Microchip" H 13575 4325 50  0001 L BNN "Field6"
F 7 "Unavailable" H 13575 4325 50  0001 L BNN "Field7"
F 8 "PIC32MX250F128B-V/SP" H 13575 4325 50  0001 L BNN "Field8"
	1    13575 4325
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D9518B9
P 11400 4325
F 0 "R11" V 11480 4325 50  0000 C CNN
F 1 "10k" V 11400 4325 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11330 4325 50  0001 C CNN
F 3 "" H 11400 4325 50  0000 C CNN
	1    11400 4325
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5D9519C2
P 11450 4775
F 0 "Y1" H 11450 4925 50  0000 C CNN
F 1 "8MHz" H 11450 4625 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 11450 4775 50  0001 C CNN
F 3 "" H 11450 4775 50  0000 C CNN
	1    11450 4775
	0    1    1    0   
$EndComp
$Comp
L Device:C C13
U 1 1 5D951AB5
P 11025 4625
F 0 "C13" H 11050 4725 50  0000 L CNN
F 1 "27pF" H 11050 4525 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 11063 4475 50  0001 C CNN
F 3 "" H 11025 4625 50  0000 C CNN
	1    11025 4625
	0    1    1    0   
$EndComp
$Comp
L Device:C C14
U 1 1 5D951C34
P 11025 4925
F 0 "C14" H 11050 5025 50  0000 L CNN
F 1 "27pF" H 11050 4825 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 11063 4775 50  0001 C CNN
F 3 "" H 11025 4925 50  0000 C CNN
	1    11025 4925
	0    1    1    0   
$EndComp
Text GLabel 10675 5000 3    60   Output ~ 0
GND
Text GLabel 10800 4325 0    60   Output ~ 0
TX
$Comp
L Device:C C15
U 1 1 5D953C24
P 14700 4925
F 0 "C15" H 14725 5025 50  0000 L CNN
F 1 "10uF" H 14725 4825 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P2.00mm" H 14738 4775 50  0001 C CNN
F 3 "" H 14700 4925 50  0000 C CNN
	1    14700 4925
	0    1    1    0   
$EndComp
$Comp
L Device:C C16
U 1 1 5D954995
P 15225 4350
F 0 "C16" H 15250 4450 50  0000 L CNN
F 1 "100nF" H 15250 4250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 15263 4200 50  0001 C CNN
F 3 "" H 15225 4350 50  0000 C CNN
	1    15225 4350
	-1   0    0    1   
$EndComp
Text GLabel 15225 4725 3    60   Output ~ 0
GND
Text GLabel 10850 3825 0    60   Output ~ 0
GND
Text GLabel 11200 5300 0    60   Output ~ 0
GND
Text GLabel 14775 3525 2    60   Output ~ 0
GND
$Comp
L Open-Apple-1-SBC-rescue:DB15_Female_HighDensity J12
U 1 1 5D961D76
P 14900 6525
F 0 "J12" H 14900 7375 50  0000 C CNN
F 1 "DB15_Female_HighDensity" H 14900 7275 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-15-HD_Female_Horizontal_P2.29x1.98mm_EdgePinOffset3.03mm_Housed_MountingHolesOffset4.94mm" H 13950 6925 50  0001 C CNN
F 3 "" H 13950 6925 50  0001 C CNN
	1    14900 6525
	1    0    0    -1  
$EndComp
Text GLabel 13975 7225 3    60   Output ~ 0
GND
$Comp
L Device:R R13
U 1 1 5D963361
P 11950 6250
F 0 "R13" V 12030 6250 50  0000 C CNN
F 1 "220" V 11950 6250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11880 6250 50  0001 C CNN
F 3 "" H 11950 6250 50  0000 C CNN
	1    11950 6250
	0    1    1    0   
$EndComp
NoConn ~ 14600 6625
NoConn ~ 14600 6725
NoConn ~ 15200 6125
NoConn ~ 15200 6325
NoConn ~ 15200 6925
$Comp
L Open-Apple-1-SBC-rescue:CONN_01X02 P1
U 1 1 5D964B8E
P 12975 7050
F 0 "P1" H 12975 7200 50  0000 C CNN
F 1 "COMP VIDEO" V 13075 7050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 12975 7050 50  0001 C CNN
F 3 "" H 12975 7050 50  0000 C CNN
	1    12975 7050
	1    0    0    -1  
$EndComp
Text GLabel 12775 7250 3    60   Output ~ 0
GND
$Comp
L Device:R R14
U 1 1 5D964EE5
P 12400 6775
F 0 "R14" V 12480 6775 50  0000 C CNN
F 1 "470" V 12400 6775 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 12330 6775 50  0001 C CNN
F 3 "" H 12400 6775 50  0000 C CNN
	1    12400 6775
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5D965031
P 11700 6775
F 0 "R12" V 11780 6775 50  0000 C CNN
F 1 "150" V 11700 6775 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11630 6775 50  0001 C CNN
F 3 "" H 11700 6775 50  0000 C CNN
	1    11700 6775
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 6600 1400 6600
Wire Wire Line
	1400 6600 1400 6400
Wire Wire Line
	5025 4950 5025 5200
Wire Wire Line
	4875 4950 5025 4950
Connection ~ 5025 5200
Connection ~ 10225 4550
Wire Wire Line
	10400 4550 10400 4750
Wire Wire Line
	10100 4750 9775 4750
Wire Wire Line
	9675 2025 10550 2025
Connection ~ 6500 1225
Wire Wire Line
	6200 1175 6200 1225
Connection ~ 6500 825 
Wire Wire Line
	6200 825  6200 875 
Connection ~ 7725 4850
Wire Wire Line
	7725 5125 7725 4850
Connection ~ 7875 4650
Wire Wire Line
	7875 5125 7875 4650
Connection ~ 8025 4450
Wire Wire Line
	8025 5125 8025 4450
Wire Wire Line
	6900 5150 6775 5150
Wire Wire Line
	6900 4950 6900 5150
Wire Wire Line
	1950 1650 2150 1650
Connection ~ 2575 3275
Connection ~ 6800 1225
Wire Wire Line
	6800 1225 6800 1175
Connection ~ 7100 1225
Wire Wire Line
	7100 1225 7100 1175
Connection ~ 7400 1225
Wire Wire Line
	7400 1225 7400 1175
Connection ~ 7700 1225
Wire Wire Line
	7700 1225 7700 1175
Connection ~ 8000 1225
Wire Wire Line
	8000 1225 8000 1175
Connection ~ 8300 1225
Wire Wire Line
	6200 1225 6500 1225
Wire Wire Line
	6500 1175 6500 1225
Connection ~ 8000 825 
Wire Wire Line
	8000 825  8000 875 
Connection ~ 7700 825 
Wire Wire Line
	7700 825  7700 875 
Connection ~ 7400 825 
Wire Wire Line
	7400 825  7400 875 
Connection ~ 7100 825 
Wire Wire Line
	7100 825  7100 875 
Connection ~ 6800 825 
Wire Wire Line
	6800 825  6800 875 
Connection ~ 8300 825 
Wire Wire Line
	6500 825  6500 875 
Wire Wire Line
	6200 825  6500 825 
Wire Wire Line
	8300 1175 8300 1225
Wire Wire Line
	8300 750  8300 825 
Connection ~ 12400 550 
Wire Wire Line
	12775 550  12775 850 
Connection ~ 12050 550 
Connection ~ 11700 550 
Wire Wire Line
	11350 550  11700 550 
Wire Wire Line
	5425 4350 5425 4525
Wire Wire Line
	5425 4525 5575 4525
Wire Wire Line
	6775 4525 6775 4950
Wire Wire Line
	4875 5050 5575 5050
Connection ~ 5575 4525
Wire Wire Line
	5575 4425 5575 4525
Wire Wire Line
	2100 1225 2150 1225
Wire Wire Line
	3750 1100 3750 1375
Wire Wire Line
	2450 1100 3750 1100
Wire Wire Line
	2450 825  2450 1100
Connection ~ 2550 825 
Wire Wire Line
	2550 725  2550 825 
Wire Wire Line
	2450 825  2550 825 
Wire Wire Line
	2550 1425 2550 1475
Wire Wire Line
	2100 1425 2550 1425
Wire Wire Line
	2550 1325 2550 1275
Wire Wire Line
	2100 1325 2550 1325
Connection ~ 5800 6475
Connection ~ 750  7350
Connection ~ 750  5850
Wire Wire Line
	7875 4350 8075 4350
Wire Wire Line
	5800 6475 5400 6475
Wire Wire Line
	5100 6475 4475 6475
Wire Wire Line
	750  5850 2175 5850
Wire Wire Line
	3800 6075 3800 6375
Wire Wire Line
	4775 6075 3800 6075
Connection ~ 4475 6475
Wire Wire Line
	4475 5850 4475 6475
Wire Wire Line
	4100 5850 4100 6275
Wire Wire Line
	5800 6075 5800 6475
Wire Wire Line
	5675 6075 5800 6075
Wire Wire Line
	4475 7350 4475 7150
Wire Wire Line
	6375 7100 6375 7225
Wire Wire Line
	6375 6725 6375 6800
Wire Wire Line
	6375 6300 6375 6425
Wire Wire Line
	750  5725 750  5850
Connection ~ 2175 5850
Connection ~ 1725 7350
Wire Wire Line
	750  6900 750  7350
Wire Wire Line
	1725 7050 1725 7350
Wire Wire Line
	1725 6375 1725 6650
Wire Wire Line
	3800 6375 3675 6375
Connection ~ 3875 6650
Wire Wire Line
	3875 6775 3675 6775
Connection ~ 4100 6650
Wire Wire Line
	3875 6650 4100 6650
Wire Wire Line
	3875 6575 3875 6650
Wire Wire Line
	750  7350 1475 7350
Wire Wire Line
	3675 6575 3875 6575
Wire Wire Line
	4100 6575 4100 6650
Connection ~ 4100 7350
Wire Wire Line
	4100 7350 4100 7150
Connection ~ 4100 5850
Connection ~ 2525 5850
Wire Wire Line
	2525 6775 2525 5850
Wire Wire Line
	2675 6775 2525 6775
Connection ~ 2175 7350
Wire Wire Line
	2175 6275 2175 6375
Connection ~ 2175 6375
Connection ~ 3175 7350
Wire Wire Line
	2175 7350 2175 7175
Wire Wire Line
	1475 6375 1725 6375
Connection ~ 3175 5850
Wire Wire Line
	2175 5975 2175 5850
Wire Wire Line
	3175 7350 3175 6975
Wire Wire Line
	3175 5850 3175 6175
Wire Wire Line
	1575 5425 1700 5425
Connection ~ 1600 5625
Wire Wire Line
	1600 5525 1600 5625
Wire Wire Line
	1700 5525 1600 5525
Wire Wire Line
	7500 4650 7875 4650
Wire Wire Line
	7500 4850 7725 4850
Wire Wire Line
	9775 4550 10225 4550
Wire Wire Line
	10225 4225 10225 4550
Wire Wire Line
	8175 4350 8475 4350
Wire Wire Line
	7500 4450 8025 4450
Connection ~ 7150 4450
Wire Wire Line
	7200 4450 7150 4450
Connection ~ 7150 4650
Wire Wire Line
	7150 4650 7200 4650
Connection ~ 7150 4850
Wire Wire Line
	7150 4850 7200 4850
Wire Wire Line
	7150 5050 8475 5050
Wire Wire Line
	7150 4250 7150 4450
Connection ~ 7925 3525
Wire Wire Line
	7925 3525 7275 3525
Wire Wire Line
	9825 1925 9675 1925
Wire Wire Line
	8625 3350 9175 3350
Wire Wire Line
	9475 3350 9600 3350
Wire Wire Line
	8525 3250 8525 2825
Wire Wire Line
	9825 3250 8525 3250
Wire Wire Line
	9825 3125 9825 3250
Wire Wire Line
	8325 3125 8975 3125
Wire Wire Line
	8325 3025 8325 3125
Wire Wire Line
	8425 2925 8425 3025
Wire Wire Line
	8275 2725 8625 2725
Wire Wire Line
	8275 2625 8275 2725
Wire Wire Line
	8525 2825 8175 2825
Wire Wire Line
	8175 2825 8175 2725
Wire Wire Line
	8075 2925 8425 2925
Wire Wire Line
	8075 2825 8075 2925
Wire Wire Line
	7975 2925 7775 2925
Wire Wire Line
	7975 3025 7975 2925
Wire Wire Line
	8325 3025 7975 3025
Wire Wire Line
	7925 1725 7775 1725
Wire Wire Line
	9825 3125 9675 3125
Connection ~ 8625 2925
Wire Wire Line
	8625 2725 8625 2925
Wire Wire Line
	8625 2925 8975 2925
Wire Wire Line
	8075 2825 7775 2825
Wire Wire Line
	8425 3025 8975 3025
Wire Wire Line
	7775 2625 8275 2625
Wire Wire Line
	8175 2725 7775 2725
Wire Wire Line
	9825 1825 9675 1825
Connection ~ 7925 3325
Connection ~ 7925 3225
Wire Wire Line
	7925 3325 7775 3325
Wire Wire Line
	7925 3125 7925 3225
Wire Wire Line
	7775 3225 7925 3225
Wire Wire Line
	7775 3125 7925 3125
Wire Wire Line
	2575 3475 2575 3275
Wire Wire Line
	2675 3475 2575 3475
Wire Wire Line
	2400 3275 2575 3275
Wire Wire Line
	3875 3475 4225 3475
Connection ~ 600  1425
Wire Wire Line
	900  1425 600  1425
Wire Wire Line
	600  1325 600  1425
Wire Wire Line
	900  1325 600  1325
Wire Wire Line
	1475 7000 1475 6375
Connection ~ 1725 6375
Wire Wire Line
	1475 7200 1475 7350
Connection ~ 1475 7350
Wire Wire Line
	11550 4325 11775 4325
Wire Wire Line
	11775 4625 11775 4725
Wire Wire Line
	11175 4625 11450 4625
Wire Wire Line
	11650 4825 11775 4825
Wire Wire Line
	11650 4925 11650 4825
Connection ~ 11450 4625
Wire Wire Line
	10875 4625 10675 4625
Wire Wire Line
	10675 4625 10675 4925
Wire Wire Line
	10875 4925 10675 4925
Connection ~ 10675 4925
Wire Wire Line
	11250 4325 10800 4325
Wire Wire Line
	14275 4925 14550 4925
Wire Wire Line
	15225 4500 15225 4600
Wire Wire Line
	14850 4925 14975 4925
Wire Wire Line
	14975 4925 14975 4600
Wire Wire Line
	14975 4600 15225 4600
Connection ~ 15225 4600
Wire Wire Line
	9675 3025 11225 3025
Wire Wire Line
	11225 3025 11225 3425
Wire Wire Line
	10450 3625 11225 3625
Wire Wire Line
	15225 3025 15225 3425
Connection ~ 11225 3025
Wire Wire Line
	14275 5025 14500 5025
Wire Wire Line
	14500 5025 14500 5175
Wire Wire Line
	14500 5175 15450 5175
Wire Wire Line
	15450 5175 15450 3425
Wire Wire Line
	15450 3425 15225 3425
Connection ~ 15225 3425
Connection ~ 11225 3425
Wire Wire Line
	11775 4125 11525 4125
Wire Wire Line
	11525 4125 11525 3825
Wire Wire Line
	11525 3725 11775 3725
Wire Wire Line
	10850 3825 11525 3825
Connection ~ 11525 3825
Wire Wire Line
	14275 3525 14775 3525
Wire Wire Line
	14600 6025 13975 6025
Wire Wire Line
	13975 6025 13975 6225
Wire Wire Line
	14600 6925 13975 6925
Connection ~ 13975 6925
Wire Wire Line
	14600 6225 13975 6225
Connection ~ 13975 6225
Wire Wire Line
	14600 6425 13975 6425
Connection ~ 13975 6425
Wire Wire Line
	14600 6825 13975 6825
Connection ~ 13975 6825
Wire Wire Line
	14275 3825 14650 3825
Wire Wire Line
	15700 3825 15700 6525
Wire Wire Line
	15700 6525 15200 6525
Wire Wire Line
	14275 4425 14650 4425
Wire Wire Line
	14650 4425 14650 3825
Connection ~ 14650 3825
Wire Wire Line
	11500 6250 11800 6250
Wire Wire Line
	11500 6250 11500 5025
Wire Wire Line
	11500 5025 11775 5025
Wire Wire Line
	13250 6325 14600 6325
Wire Wire Line
	12100 6250 13250 6250
Wire Wire Line
	14275 3925 15875 3925
Wire Wire Line
	15875 3925 15875 6725
Wire Wire Line
	15875 6725 15200 6725
Wire Wire Line
	12775 7100 12775 7250
Wire Wire Line
	11850 6775 12025 6775
Wire Wire Line
	12775 7000 12025 7000
Wire Wire Line
	12025 7000 12025 6775
Connection ~ 12025 6775
Wire Wire Line
	11775 4425 10500 4425
Wire Wire Line
	10500 4425 10500 6775
Wire Wire Line
	10500 6775 11550 6775
Wire Wire Line
	12550 6775 13700 6775
Wire Wire Line
	13700 6775 13700 7650
Wire Wire Line
	13700 7650 16050 7650
Wire Wire Line
	16050 7650 16050 4425
Connection ~ 14650 4425
Wire Wire Line
	11175 4925 11450 4925
Connection ~ 11450 4925
$Comp
L Open-Apple-1-SBC-rescue:CONN_02X03 P3
U 1 1 5DC0A6F0
P 13225 2350
F 0 "P3" H 13225 2550 50  0000 C CNN
F 1 "CONN_02X03" H 13225 2150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 13225 1150 50  0001 C CNN
F 3 "" H 13225 1150 50  0000 C CNN
	1    13225 2350
	1    0    0    -1  
$EndComp
$Comp
L Open-Apple-1-SBC-rescue:CONN_01X06 P4
U 1 1 5DC0A840
P 14425 2225
F 0 "P4" H 14425 2575 50  0000 C CNN
F 1 "SD Card Module" V 14525 2225 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 14425 2225 50  0001 C CNN
F 3 "" H 14425 2225 50  0000 C CNN
	1    14425 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	13600 2175 14225 2175
Wire Wire Line
	13675 2375 14225 2375
Wire Wire Line
	14225 1975 14225 1700
Text GLabel 14325 2725 2    60   Output ~ 0
GND
Wire Wire Line
	14225 2475 14100 2475
Wire Wire Line
	14100 2475 14100 2725
Wire Wire Line
	14100 2725 14325 2725
$Comp
L Open-Apple-1-SBC-rescue:USB_A P2
U 1 1 5DD2B2B5
P 16100 3525
F 0 "P2" H 16300 3325 50  0000 C CNN
F 1 "USB_A" H 16050 3725 50  0000 C CNN
F 2 "Connectors:USB_A" V 16050 3425 50  0001 C CNN
F 3 "" V 16050 3425 50  0000 C CNN
	1    16100 3525
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5DD323A8
P 14625 4650
F 0 "R16" V 14705 4650 50  0000 C CNN
F 1 "4.7k" V 14625 4650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 14555 4650 50  0001 C CNN
F 3 "" H 14625 4650 50  0000 C CNN
	1    14625 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14275 4825 14450 4825
Text GLabel 16175 4050 2    60   Output ~ 0
GND
Wire Wire Line
	14450 4825 14450 4650
Wire Wire Line
	14450 4650 14475 4650
Wire Wire Line
	14775 4650 14925 4650
Wire Wire Line
	14925 4650 14925 3725
Wire Wire Line
	14925 3725 15600 3725
Wire Wire Line
	15600 3725 15600 3325
Wire Wire Line
	15600 3325 15800 3325
Wire Wire Line
	15800 3625 15800 3800
Wire Wire Line
	15800 3800 16025 3800
Wire Wire Line
	16025 3800 16025 4050
Wire Wire Line
	16025 4050 16175 4050
Wire Wire Line
	14275 4125 15550 4125
Wire Wire Line
	15550 4125 15550 3425
Wire Wire Line
	15550 3425 15800 3425
Wire Wire Line
	14275 4225 15650 4225
Wire Wire Line
	15650 4225 15650 3525
Wire Wire Line
	15650 3525 15800 3525
NoConn ~ 16200 3825
NoConn ~ 14600 6525
NoConn ~ 14600 6125
Wire Wire Line
	13250 6250 13250 6325
$Comp
L Device:R R15
U 1 1 5DD3CCAE
P 11150 5725
F 0 "R15" V 11230 5725 50  0000 C CNN
F 1 "150" V 11150 5725 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11080 5725 50  0001 C CNN
F 3 "" H 11150 5725 50  0000 C CNN
	1    11150 5725
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11775 5125 11625 5125
$Comp
L Device:LED D2
U 1 1 5DD3F25B
P 10750 5725
F 0 "D2" H 10750 5825 50  0000 C CNN
F 1 "Activity" H 10750 5625 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 10750 5725 50  0001 C CNN
F 3 "" H 10750 5725 50  0001 C CNN
	1    10750 5725
	-1   0    0    1   
$EndComp
Wire Wire Line
	11625 5725 11300 5725
Wire Wire Line
	11625 5125 11625 5725
Wire Wire Line
	11000 5725 10900 5725
Wire Wire Line
	10600 5725 10450 5725
Wire Wire Line
	10450 5725 10450 3625
Connection ~ 11225 3625
Text GLabel 10800 4175 0    60   Input ~ 0
RX
Wire Wire Line
	11775 4225 10925 4225
Wire Wire Line
	10925 4225 10925 4175
Wire Wire Line
	10925 4175 10800 4175
NoConn ~ 8975 2825
NoConn ~ 8975 2725
NoConn ~ 8975 1925
Wire Wire Line
	8975 2325 8300 2325
Wire Wire Line
	8300 2325 8300 1900
Wire Wire Line
	8300 1900 8550 1900
Wire Wire Line
	8550 1900 8550 1475
Wire Wire Line
	8550 1475 10625 1475
Wire Wire Line
	10625 1475 10625 1875
Wire Wire Line
	10625 1875 13900 1875
Wire Wire Line
	13900 1875 13900 2075
Wire Wire Line
	13900 2075 14225 2075
Wire Wire Line
	12975 2250 12825 2250
Wire Wire Line
	12825 2250 12825 1950
Wire Wire Line
	12825 1950 13675 1950
Wire Wire Line
	13675 1950 13675 2375
Wire Wire Line
	13475 2350 13600 2350
Wire Wire Line
	13600 2350 13600 2175
Text GLabel 13600 2725 2    60   Output ~ 0
GND
Wire Wire Line
	13475 2450 13525 2450
Wire Wire Line
	13525 2450 13525 2725
Wire Wire Line
	13525 2725 13600 2725
NoConn ~ 12975 2450
Wire Wire Line
	13475 2250 13525 2250
Wire Wire Line
	13525 2250 13525 1700
Wire Wire Line
	13525 1700 14225 1700
Wire Wire Line
	14225 2275 13950 2275
Wire Wire Line
	13950 2275 13950 2900
Wire Wire Line
	13950 2900 12800 2900
Wire Wire Line
	12800 2900 12800 2350
Wire Wire Line
	12800 2350 12975 2350
Text GLabel 15950 2925 2    60   Output ~ 0
VCC
Wire Wire Line
	15600 2925 15950 2925
Connection ~ 15600 3325
Wire Wire Line
	4875 5200 5025 5200
Wire Wire Line
	1325 5625 1600 5625
Wire Wire Line
	5525 3275 5925 3275
$Comp
L Open-Apple-1-SBC-rescue:CONN_02X22 P5
U 1 1 5DEFF465
P 9975 8250
F 0 "P5" H 9975 9400 50  0000 C CNN
F 1 "CONN_02X22" V 9975 8250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x22_Pitch2.54mm" H 9975 7350 50  0001 C CNN
F 3 "" H 9975 7350 50  0000 C CNN
	1    9975 8250
	1    0    0    -1  
$EndComp
Text GLabel 9400 7300 0    60   Input ~ 0
RESET
Wire Wire Line
	9400 7300 9725 7300
Text GLabel 9400 9100 0    60   Output ~ 0
GND
Wire Wire Line
	9725 9100 9400 9100
Text GLabel 10550 9100 2    60   Output ~ 0
GND
Wire Wire Line
	10225 9100 10550 9100
Text GLabel 9400 9300 0    60   Input ~ 0
VCC
Text GLabel 10300 9000 2    60   Output ~ 0
A0
Text GLabel 9650 9000 0    60   Output ~ 0
A1
Text GLabel 10550 8900 2    60   Output ~ 0
A2
Text GLabel 9400 8900 0    60   Output ~ 0
A3
Wire Wire Line
	9650 9000 9725 9000
Wire Wire Line
	10225 9000 10300 9000
Wire Wire Line
	10550 8900 10225 8900
Wire Wire Line
	9400 8900 9725 8900
Wire Wire Line
	9400 9300 9725 9300
NoConn ~ 10225 9200
NoConn ~ 10225 9300
NoConn ~ 10225 7400
NoConn ~ 9725 7200
Text GLabel 10300 8800 2    60   Output ~ 0
A4
Wire Wire Line
	10300 8800 10225 8800
Text GLabel 9650 8800 0    60   Output ~ 0
A5
Wire Wire Line
	9650 8800 9725 8800
Text GLabel 10550 8700 2    60   Output ~ 0
A6
Wire Wire Line
	10550 8700 10225 8700
Text GLabel 9400 8700 0    60   Output ~ 0
A7
Wire Wire Line
	9400 8700 9725 8700
Text GLabel 10300 8600 2    60   Output ~ 0
A8
Wire Wire Line
	10300 8600 10225 8600
Text GLabel 9650 8600 0    60   Output ~ 0
A9
Wire Wire Line
	9650 8600 9725 8600
Text GLabel 10550 8500 2    60   Output ~ 0
A10
Wire Wire Line
	10550 8500 10225 8500
Text GLabel 9400 8500 0    60   Output ~ 0
A11
Wire Wire Line
	9400 8500 9725 8500
Text GLabel 10300 8400 2    60   Output ~ 0
A12
Wire Wire Line
	10300 8400 10225 8400
Text GLabel 9650 8400 0    60   Output ~ 0
A13
Wire Wire Line
	9650 8400 9725 8400
Text GLabel 10550 8300 2    60   Output ~ 0
A14
Wire Wire Line
	10550 8300 10225 8300
Text GLabel 9400 8300 0    60   Output ~ 0
A15
Wire Wire Line
	9400 8300 9725 8300
NoConn ~ 9725 8100
Text GLabel 10300 7200 2    60   Output ~ 0
PHI2
Wire Wire Line
	10300 7200 10225 7200
Text GLabel 10550 7300 2    60   Output ~ 0
SYNC
Wire Wire Line
	10550 7300 10225 7300
Text GLabel 9650 7400 0    60   Output ~ 0
NMI
Wire Wire Line
	9650 7400 9725 7400
Text GLabel 9400 7500 0    60   Output ~ 0
IRQ
Wire Wire Line
	9400 7500 9725 7500
Text GLabel 9650 7600 0    60   Output ~ 0
RDY
Wire Wire Line
	9650 7600 9725 7600
Text GLabel 10300 8000 2    60   Output ~ 0
RW
Wire Wire Line
	10300 8000 10225 8000
Text GLabel 9650 8000 0    60   Output ~ 0
D0
Wire Wire Line
	9650 8000 9725 8000
Text GLabel 10550 7900 2    60   Output ~ 0
D1
Wire Wire Line
	10225 7900 10550 7900
Text GLabel 9400 7900 0    60   Output ~ 0
D2
Wire Wire Line
	9400 7900 9725 7900
Text GLabel 10300 7800 2    60   Output ~ 0
D3
Wire Wire Line
	10300 7800 10225 7800
Text GLabel 9650 7800 0    60   Output ~ 0
D4
Wire Wire Line
	9650 7800 9725 7800
Text GLabel 10550 7700 2    60   Output ~ 0
D5
Wire Wire Line
	10550 7700 10225 7700
Text GLabel 9400 7700 0    60   Output ~ 0
D6
Wire Wire Line
	9400 7700 9725 7700
Text GLabel 10300 7600 2    60   Output ~ 0
D7
Wire Wire Line
	10300 7600 10225 7600
Text GLabel 8475 4550 0    60   Output ~ 0
PHI1
Text GLabel 10550 7500 2    60   Output ~ 0
PHI1
Wire Wire Line
	10550 7500 10225 7500
Text GLabel 10300 8200 2    60   Input ~ 0
CLOCK
Wire Wire Line
	10225 8200 10300 8200
$Comp
L Device:Jumper_NC_Dual A1
U 1 1 5DF7DF3C
P 9075 1200
F 0 "A1" H 9125 1100 50  0000 L CNN
F 1 "Prog Enable" H 9075 1300 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9075 1200 50  0001 C CNN
F 3 "" H 9075 1200 50  0001 C CNN
	1    9075 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9325 1200 9525 1200
Wire Wire Line
	8725 1825 8975 1825
Wire Wire Line
	8725 1825 8725 1550
Wire Wire Line
	8725 1550 9075 1550
Wire Wire Line
	9075 1550 9075 1300
NoConn ~ 8825 1200
NoConn ~ 11775 4025
NoConn ~ 14275 3725
NoConn ~ 14275 4525
NoConn ~ 14275 4625
NoConn ~ 11775 4525
Wire Wire Line
	11775 4925 11775 4975
Wire Wire Line
	11775 4975 11325 4975
Wire Wire Line
	11325 4975 11325 5300
Wire Wire Line
	11325 5300 11200 5300
$Comp
L Device:R R17
U 1 1 5EE2647D
P 11525 3425
F 0 "R17" V 11605 3425 50  0000 C CNN
F 1 "4.7k" V 11525 3425 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11455 3425 50  0001 C CNN
F 3 "" H 11525 3425 50  0000 C CNN
	1    11525 3425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11775 3425 11675 3425
Wire Wire Line
	11375 3425 11225 3425
Text GLabel 9650 9200 0    60   Input ~ 0
Vin
Wire Wire Line
	9650 9200 9725 9200
Text GLabel 10125 1725 2    60   Input ~ 0
Vin
Wire Wire Line
	9675 1725 10125 1725
$Comp
L Open-Apple-1-SBC-rescue:BARREL_JACK CON1
U 1 1 5EF64572
P 10950 2450
F 0 "CON1" H 10950 2700 50  0000 C CNN
F 1 "BARREL_JACK" H 10950 2250 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 10950 2450 50  0001 C CNN
F 3 "" H 10950 2450 50  0000 C CNN
	1    10950 2450
	-1   0    0    1   
$EndComp
Text GLabel 10425 2350 0    60   Output ~ 0
GND
Wire Wire Line
	10650 2350 10425 2350
NoConn ~ 10650 2450
Text GLabel 10275 2550 0    60   Input ~ 0
Vin
Wire Wire Line
	10650 2550 10275 2550
Text GLabel 8800 2025 0    60   Output ~ 0
GND
Wire Wire Line
	8800 2025 8975 2025
Wire Wire Line
	5025 5200 5200 5200
Wire Wire Line
	10225 4550 10400 4550
Wire Wire Line
	6500 1225 6800 1225
Wire Wire Line
	6500 825  6800 825 
Wire Wire Line
	7725 4850 8475 4850
Wire Wire Line
	7875 4650 8475 4650
Wire Wire Line
	8025 4450 8475 4450
Wire Wire Line
	2575 3275 4225 3275
Wire Wire Line
	6800 1225 7100 1225
Wire Wire Line
	7100 1225 7400 1225
Wire Wire Line
	7400 1225 7700 1225
Wire Wire Line
	7700 1225 8000 1225
Wire Wire Line
	8000 1225 8300 1225
Wire Wire Line
	8300 1225 8300 1300
Wire Wire Line
	8000 825  8300 825 
Wire Wire Line
	7700 825  8000 825 
Wire Wire Line
	7400 825  7700 825 
Wire Wire Line
	7100 825  7400 825 
Wire Wire Line
	6800 825  7100 825 
Wire Wire Line
	8300 825  8300 875 
Wire Wire Line
	12400 550  12775 550 
Wire Wire Line
	12050 550  12400 550 
Wire Wire Line
	11700 550  12050 550 
Wire Wire Line
	5575 4525 5575 4625
Wire Wire Line
	2550 825  2550 925 
Wire Wire Line
	5800 6475 5800 6600
Wire Wire Line
	750  7350 750  7500
Wire Wire Line
	750  5850 750  6300
Wire Wire Line
	4475 6475 4475 6850
Wire Wire Line
	2175 5850 2525 5850
Wire Wire Line
	1725 7350 2175 7350
Wire Wire Line
	3875 6650 3875 6775
Wire Wire Line
	4100 6650 4100 6850
Wire Wire Line
	4100 7350 4475 7350
Wire Wire Line
	4100 5850 4475 5850
Wire Wire Line
	2525 5850 3175 5850
Wire Wire Line
	2175 7350 3175 7350
Wire Wire Line
	2175 6375 2175 6875
Wire Wire Line
	2175 6375 2675 6375
Wire Wire Line
	3175 7350 4100 7350
Wire Wire Line
	3175 5850 4100 5850
Wire Wire Line
	1600 5625 1700 5625
Wire Wire Line
	7150 4450 7150 4650
Wire Wire Line
	7150 4650 7150 4850
Wire Wire Line
	7150 4850 7150 5050
Wire Wire Line
	7925 3525 7925 3675
Wire Wire Line
	8625 2925 8625 3350
Wire Wire Line
	7925 3325 7925 3525
Wire Wire Line
	7925 3225 7925 3325
Wire Wire Line
	600  1425 600  1575
Wire Wire Line
	1725 6375 2175 6375
Wire Wire Line
	1475 7350 1725 7350
Wire Wire Line
	11450 4625 11775 4625
Wire Wire Line
	10675 4925 10675 5000
Wire Wire Line
	15225 4600 15225 4725
Wire Wire Line
	11225 3025 15225 3025
Wire Wire Line
	15225 3425 15225 4200
Wire Wire Line
	15225 3425 14275 3425
Wire Wire Line
	11225 3425 11225 3625
Wire Wire Line
	11525 3825 11525 3725
Wire Wire Line
	11525 3825 11775 3825
Wire Wire Line
	13975 6925 13975 7225
Wire Wire Line
	13975 6225 13975 6425
Wire Wire Line
	13975 6425 13975 6825
Wire Wire Line
	13975 6825 13975 6925
Wire Wire Line
	14650 3825 15700 3825
Wire Wire Line
	12025 6775 12250 6775
Wire Wire Line
	14650 4425 16050 4425
Wire Wire Line
	11450 4925 11650 4925
Wire Wire Line
	11225 3625 11775 3625
Wire Wire Line
	15600 3325 15600 2925
$EndSCHEMATC
