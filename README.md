TDOA Sound Localization VHDL

This repository provides a TDOA (Time Difference of Arrival) sound localization system written in VHDL for an FPGA. The system uses both analog and digital microphones to determine the location of a sound source. The main development environment is Ubuntu 20.04 with Quartus 20.1. This project uses MAX4466 (analog microphone) and KY037 (digital microphone) sensors.
Project Structure

    MAIN.vhd: The main VHDL file for the TDOA localization system.
    ANALOGMIC_TEST.vhd: A test file to verify the functionality of the MAX4466 analog microphone.
    DIGITALMIC_TEST.vhd: A test file to verify the functionality of the KY037 digital microphone.

Requirements

    Operating System: Ubuntu 20.04
    Software: Quartus 20.1
    Sensors:
        MAX4466: Analog microphone
        KY037: Digital microphone

Pin Configuration

The following pin configuration is used for the digital microphone setup:
Signal	Direction	Pin	Bank	LVTTL Voltage	Drive Strength
CLK	Input	PIN_R8	B3	3.3 V	8mA
MIC1_IN	Input	PIN_G15	B6	3.3 V	8mA
MIC2_IN	Input	PIN_F14	B6	3.3 V	8mA
MIC3_IN	Input	PIN_F15	B6	3.3 V	8mA
NRST	Input	PIN_J15	B5	3.3 V	8mA
TOGGLE	Output	PIN_M8	-	2.5 V	8mA
TX	Output	PIN_G16	B6	3.3 V	8mA
ADC_CSN	Unknown	PIN_A10	B7	3.3 V	8mA
ADC_MISO	Unknown	PIN_A9	B7	3.3 V	8mA
ADC_MOSI	Unknown	PIN_B10	B7	3.3 V	8mA
ADC_SCLK	Unknown	PIN_B14	B7	3.3 V	8mA
Usage

    Set up the environment: Ensure that Quartus 20.1 is installed on an Ubuntu 20.04 system.
    Compile and simulate:
        Use MAIN.vhd as the primary file for TDOA localization.
        Run ANALOGMIC_TEST.vhd to verify the functionality of the MAX4466.
        Run DIGITALMIC_TEST.vhd to verify the functionality of the KY037.
    Program the FPGA: Upload the compiled bitstream to your FPGA.
