---
params:
    - --remap "../KiCAD Files/Driver PCB/pcbdraw_remap.json"
    - --resistor-flip "R15,R14,R13,R12,R11,R10"
    - --libs /mnt/aux1/git/PcbDraw-Lib/KiCAD-base
    - -s set-black-hasl
imgname: step_drawings/populating_{}.png
template: html_template
type: html
board: "../KiCAD Files/Driver PCB/PCB.kicad_pcb"
initial_components:
    - F1
    - L1
    - C1
...

# Soldering Guide - Main Driver

This page guides you through soldering a 4-in-a-row kit's main board, step by step.

These steps are my recommendation, but feel free to deviate of a certain order is easier for you!

- [[front | ]] We get the empty board
- [[front | R3-R8]] I recommend to solder all resistors first, as they are the thinest component and thus you can lay the board down with the resistors populated while soldering. I started with 1k&#8486; resistors, but you can choose any order
- [[front | R10-R15]] Then we solder the next set of resistor values, which are 100&#8486;
- [[front | R9]] Then we solder The top 330&#8486; resistor
- [[front | Q1-Q6]] Then we populate all 2N3904 transistors
- [[front | C4-C5]] We populate the 12pF capacitors for the crystal
- [[front | Y1]] And then the crystal itself
- [[front | U2-U6]] Then we populate the ICs. In this drawing, the ICs are directly shown. THIS IS NOT RECOMMENDED. Instead, use the pin headers, and then push the component into them.
- [[front | SW1]] Then we populate the switch
- [[front | D1]] And the main indicator diode
- [[front | J2]] The USB connector
- [[front | J5,J6]] Then finally, the side pin sockets that will interconnect to the main board
- [[front | U1]] OPTIONALLY, solder U1 if you intend to use an external 7-12v source (such as a 9v battery)

