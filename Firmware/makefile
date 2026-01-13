PORT=/dev/ttyUSB0
MCU=atmega328
TARGET=main
PROGRAMMER=avrisp
# PROGRAMMER=usbasp
PROG_BAUD=19200

LDFLAGS=-Wl,-gc-sections -Wl,-relax -Wl,-Map=$(TARGET).map,--cref
#CFLAGS=-g -Wall -mcall-prologues -mmcu=$(MCU) -Os
CFLAGS=-g -Wall -mmcu=$(MCU) -Os 

default: compile size

compile:
	avr-gcc $(CFLAGS) $(TARGET).c -o $(TARGET).elf
	avr-objcopy -j .text -j .data -O ihex $(TARGET).elf $(TARGET).hex

quick: compile size program

size:
	avr-size -C --mcu=$(MCU) $(TARGET).elf

program:
	avrdude -v -P $(PORT) -p $(MCU) -c$(PROGRAMMER) -b $(PROG_BAUD) -U flash:w:$(TARGET).hex

programFuse:
	avrdude -v -P $(PORT) -p $(MCU) -c$(PROGRAMMER) -b $(PROG_BAUD) -U lfuse:w:0xf7:m -U hfuse:w:0xd9:m -U efuse:w:0xff:m

clean:
	rm -rf *.hex *.bin *.o *.elf doxygen_out/

docs:
	doxygen doxygen_config
