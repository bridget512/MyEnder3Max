
;==========================================================
; Start G-code
;==========================================================
; Ender 3 Max - BLTouch
; Firmware: Klipper + FluidPi
; Last Update:  28 May 2022
; Cura Version: 5.2.1 Stable
;==========================================================

;============== Pre-Heat
M104 S180				; Heat hotend, no wait
M190 S{material_bed_temperature}		; Wait until the heated bed is up to the Cura setting
G92 E0				; Reset Extruder

;============== Home and Level
G28				; Home all axes
;BED_MESH_CALIBRATE			; Do bed mesh leveling (Klipper)

G1 Z12 F3000			; Set nozzle for heatup
G1 X0 Y0 ; Set nozzle to wipe
M109 S{material_print_temperature} 	; Final hotend heat
G1 Z2.0 F3000 			; Raise Z Axis to prevent scratching of Heat Bed

;============== 2 Line extrustion prime
G1 X5.1 Y20 Z0.3 F5000.0 		; Move to start position
G1 X5.1 Y200.0 Z0.3 F1500.0 E15 		; Draw the first line
G1 X5.4 Y200.0 Z0.3 F5000.0 		; Move to side a little
G1 X5.4 Y20 Z0.3 F1500.0 E30 		; Draw the second line

G92 E0 				; Reset Extruder
G1 Z2.0 F3000 			; Raise Z Axis to prevent scratching of Heat Bed
G1 X10 Y20 Z0.3 F5000.0 		; Move over to prevent blob squish

;==========================================================
; End of Startup G-Code
;==========================================================