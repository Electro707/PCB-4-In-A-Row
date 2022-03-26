# Bash file to generate the PCBs as a drawing using pcbdraw

pcbdraw plot -l /home/electro/Documents/git/PcbDraw-Lib/KiCAD-base -m "../KiCAD Files/LED PCB/pcbdraw_remap.json" -s set-black-hasl "../KiCAD Files/LED PCB/PCB.kicad_pcb" gen_pcb_led.svg
pcbdraw plot -l /home/electro/Documents/git/PcbDraw-Lib/KiCAD-base -m "../KiCAD Files/Driver PCB/pcbdraw_remap.json"  --resistor-flip "R15,R14,R13,R12,R11,R10" -s set-black-hasl "../KiCAD Files/Driver PCB/PCB.kicad_pcb" gen_pcb_driver.svg
