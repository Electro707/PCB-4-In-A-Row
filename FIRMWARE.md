# Firmware Notes
This is the firwmare for the 4-in-a-row soldering kit. The revision number can be found in the git tags in this repository, tagged with fw_xxx.

## Arduino Comaptibility
The firmware is originally designed to only be built with the make file. With that said, the firmare is designed to be compatible with the Arduino IDE to build and upload. Just open [Firmware.ino](Firmware/Firmware.ino) with the IDE.
To upload the program, it is recommended to use the [MiniCore](https://github.com/MCUdude/MiniCore) hardware package to build and program to the IC. If using that, ensure that the external 16Mhz clock (default) is selected for the Clock setting.

## Build Requirements (non-Arduino)
If you would like to use the makefile to program and upload this firmware, you would need `avr-gcc` and `avrdude`. They can be downloaded from your package repository if you are using a sane operating system (GNU/Linux). If you are using MacOS, you should be able to get them thru brew, but I haven't checked. If you are on Windows, good luck!

## Make Commands:
- *default/no arguments*: **build** and **size**
- quick: **build** -> **size** -> **program**
- build: Builds the firmware
- size: Shows the RAM and FLASH usage of the built firmware
- program: Uploads the firmware over Arduino-As-ISP over /dev/ttyUSB0. To modify this, edit the makefile
- clean: Cleans the build files
- docs: Builds the doxygen documentation page
