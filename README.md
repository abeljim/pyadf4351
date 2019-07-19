# Pyadf4351
Python Raspiberry Pi Library for the ADF4351 Wideband Frequency Synthesizer chip

## Introduction

This library supports the [ADF4351 Chip](https://goo.gl/tkMjw6) from Analog Devices on Arduinos. The chip is a wideband (35 MHz to 4.4 GHz ) Phase-Locked Loop (PLL) and Voltage Controlled Oscillator (VCO), covering a very wide range frequency range
under digital control. Just add an external PLL loop filter, Reference frequency source and a power supply for a very useful 
frequency generator for applications as a Local Oscillator or Sweep Generator.  

The chip generates the frequency using a programmable Fractional-N and Integer-N Phase-Locked Loop (PLL) and Voltage Controlled Oscillator (VCO) with an external loop filter and frequency reference. The chip is controlled by 
a SPI interface.

## Features

+ Frequency Range: 35 MHz to 4.4 GHz
+ Output Level: -4 dBm to 5 dBm (in 3 dB steps) 
+ In-Band Phase Noise: -100 dBc/Hz (3 kHz from 2.1 Ghz carrier)
+ PLL Modes: Fraction-N and Integer-N (set automatically)
+ Step Frequency: 1 kHz to 100 MHz  
+ Signal On/Off control

## Library Use
### Import Library with 
import pyadf4351 
### Before using functions activate wiring pi
pyadf4351.turn_on_wiring)pi()
### Control adf4351 
#### Basic Frequency set in Mhz  
pyadf4351.control(90.1)
#### Set Power 0-3
pyadf4351.control(90.1,power=3)
#### Set Reference Power in hz 
pyadf4351.control(90.1,ref_freq=10000000)
#### Turn off adf4351 
pyadf4351.powerdown(1)
### More info in pyadf4351.pyx

## Installation
All that is needed is the pyadf4351.pyx file and the include .so file.

## Setup 
Connections:
LE - pin 27
CLK - pin 29
Data - pin 31
CE - pin 33
