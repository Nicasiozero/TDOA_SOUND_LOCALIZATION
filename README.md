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

    CLK
        Direction: Input
        Pin: PIN_R8
        Bank: B3
        Voltage: 3.3 V LVTTL
        Drive Strength: 8mA

    MIC1_IN
        Direction: Input
        Pin: PIN_G15
        Bank: B6
        Voltage: 3.3 V LVTTL
        Drive Strength: 8mA

    MIC2_IN
        Direction: Input
        Pin: PIN_F14
        Bank: B6
        Voltage: 3.3 V LVTTL
        Drive Strength: 8mA

    MIC3_IN
        Direction: Input
        Pin: PIN_F15
        Bank: B6
        Voltage: 3.3 V LVTTL
        Drive Strength: 8mA

    NRST
        Direction: Input
        Pin: PIN_J15
        Bank: B5
        Voltage: 3.3 V LVTTL
        Drive Strength: 8mA

    TOGGLE
        Direction: Output
        Pin: PIN_M8
        Voltage: 2.5 V
        Drive Strength: 8mA

    TX
        Direction: Output
        Pin: PIN_G16
        Bank: B6
        Voltage: 3.3 V LVTTL
        Drive Strength: 8mA

    ADC_CSN
        Direction: Unknown
        Pin: PIN_A10
        Bank: B7
        Voltage: 3.3 V LVTTL
        Drive Strength: 8mA

    ADC_MISO
        Direction: Unknown
        Pin: PIN_A9
        Bank: B7
        Voltage: 3.3 V LVTTL
        Drive Strength: 8mA

    ADC_MOSI
        Direction: Unknown
        Pin: PIN_B10
        Bank: B7
        Voltage: 3.3 V LVTTL
        Drive Strength: 8mA

    ADC_SCLK
        Direction: Unknown
        Pin: PIN_B14
        Bank: B7
        Voltage: 3.3 V LVTTL
        Drive Strength: 8mA
        
Usage

    Set up the environment: Ensure that Quartus 20.1 is installed on an Ubuntu 20.04 system.
    Compile and simulate:
        Use MAIN.vhd as the primary file for TDOA localization.
        Run ANALOGMIC_TEST.vhd to verify the functionality of the MAX4466.
        Run DIGITALMIC_TEST.vhd to verify the functionality of the KY037.
    Program the FPGA: Upload the compiled bitstream to your FPGA.
