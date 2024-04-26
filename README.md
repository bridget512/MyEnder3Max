# MyEnder3Max (2020 model)

!! DO NOT JUST COPY CONFIGURATIONS TO YOUR PRINTER AND EXPECT IT TO BE OK !!

Read through the files and make sure they are suitable for YOUR machine. I'm constantly changing and modifying the machine so configurations are specific to MY machine.

Please be careful, and I hope you find something useful :)

### Do your own calibrations for: 
- PID tuning, Z-Offset, Extruder E-steps/rotation, Pressure Advance. (Recommend OrcaSlicer Calibration methods)
- InputShaper, BLTouch XY offset
- Check stepper motor current. Stock: XYZ = 0.580, E = 0.650

## Modifications - Hardware
- BigTreeTech SKR Mini E3 Version 3.0
- Klipper Firmware on a Raspberry Pi 3b running Fluidd UI + rPi camera
- BL Touch v3.1: "Auto Bed Leveling"
- Belted-Z modification using Dual Steppers on a Single Driver. Based on 2 Voron M4 Extruder Kits and adapted for use on the Z-Axis.
- Belted-Z plate accepts a Voron M4 Extruder to be attached using two printable standoffs that also hold the X-Axis umbilical cables.
- Switchwire based Y-Axis modification. Adapted to use a geared 20T GT2 6mm Pulley and M5 bolt.
- Voron M4 Extruder
- Bi-Metal HeatBreak: Generic $20 (Titanium + Copper) w/standard creality heatsink
- HeroMe 7 Hotend Cooler w/Noctua 4020 Fan
- HeroMe 7 5015 Dual Part Cooler
- All printed parts using ASA

## Modifications - Software and Other
- KAMP - Adaptive bed leveling that runs at the begining of every print for perfect bed mesh's where you're printing.
- InputShaper: ADXL345 + Calibration Macros.
- Firmware Retraction [Must also be enabled in slicer. Cura needs a plugin]: Realtime fine tuning of retraction settings.
- Exclude Object [Objects must be labeled in slicer]: Allows individual objects being printed to be excluded from future printing moves. 
- Creality Enclosure - Large (Fabric)
- Raspberry Pi Camera - Auto feed start via script

## Disabled Features:
- Filament Runout (Remove comments to re-enable)
