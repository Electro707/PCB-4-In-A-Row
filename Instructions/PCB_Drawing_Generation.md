# How to generate drawings of the PCBs

To generate the top-down view of the PCBs, simply run `generate_pcb_svg.sh`. 

You will need [pcbdraw v1](https://github.com/yaqwsx/PcbDraw) installed.

On top of that, you will also need my [pcbdraw-lib fork](https://github.com/Electro707/PcbDraw-Lib/tree/e707) on the `e707` branch. You will need to modify the generate script to point "/home/electro/Documents/git/PcbDraw-Lib/KiCAD-base" to the location of the downloaded pcbdraw-lib fork. I do plan on creating PRs to merge the drawings I made upstream.
