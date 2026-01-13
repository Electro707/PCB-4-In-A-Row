#!/bin/bash
# Bash file to generate the PCBs as a drawing using pcbdraw
LIBRARY_PATH="/mnt/aux1/git/PcbDraw-Lib/KiCAD-base"
PCB_STYLE="set-black-hasl"

pcbdraw plot -l $LIBRARY_PATH -m "../KiCAD Files/LED PCB/pcbdraw_remap.json" -s $PCB_STYLE "../KiCAD Files/LED PCB/PCB.kicad_pcb" gen_pcb_led.svg
pcbdraw plot -l $LIBRARY_PATH -m "../KiCAD Files/Driver PCB/pcbdraw_remap.json" -s $PCB_STYLE --resistor-flip "R15,R14,R13,R12,R11,R10" "../KiCAD Files/Driver PCB/PCB.kicad_pcb" gen_pcb_driver.svg
