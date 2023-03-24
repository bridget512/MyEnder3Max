# MyEnder3Max (2020 model)

!! DO NOT JUST COPY CONFIGURATIONS TO YOUR PRINTER AND EXPECT IT TO BE OK !!

Read through the files and make sure they are suitable for YOUR machine. I'm constantly changing and modifying the machine so configurations are specific to MY machine.

Please be careful, and I hope you find something useful :)

### Do your own calibrations for: 
- PID tuning, Z-Offset, extruder E-steps/rotation, 
- InputShaper, BLTouch XY offset
- Check stepper motor current. Stock: XYZ = 0.580, E = 0.650

## Modifications - Hardware
- BigTreeTech SKR Mini E3 Version 3.0
- Raspberry Pi 3b running Fluidd UI
- Klipper Firmware
- BL Touch v3.1: "Auto Bed Leveling"
- Voron M4 Extruder (ASA + PETG)
- Bi-Metal HeatBreak: Generic $20 (Titanium + Copper) w/standard creality heatsink
- HeroMe 6 Hotend Cooler w/4020 Fan
- HeroMe 6 5015 Dual Part Cooler

## Modifications - Software and Other
- InputShaper: ADXL345 + Calibration Macros
- Firmware Retraction [Must also be enabled in slicer. Cura needs a plugin]: Realtime fine tuning of retraction settings.
- Exclude Object [Objects must be labeled in slicer]: Allows individual objects being printed to be excluded from future printing moves. 
- Creality Enclosure - Large (Fabric)
- Raspberry Pi Camera

## Disabled Features:
- Filament Runout (Remove comments to re-enable)
