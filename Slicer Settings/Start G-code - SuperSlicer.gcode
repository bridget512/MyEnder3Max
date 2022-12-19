;==========================================================
; Custom Start G-code - SuperSlicer
;==========================================================
; Slicer: SuperSlicer 2.5.59.0
; Ender 3 Max - BLTouch
; Firmware: Klipper + FluiddPi
; Last Update:  3 Sep 2022
;==========================================================

SET_PRINT_STATS_INFO TOTAL_LAYER=[total_layer_count]        ; Reports total layers to klipper. Used to display layer information on the printers display.

;============== Pre-Heat
M104 S{first_layer_temperature[0] * 0.88 }	; Heat hotend to % of final temperature
M190 S{first_layer_bed_temperature[0]}               ; Wait until the heated bed is up to the Cura setting
G92 E0					; Reset Extruder

;============== Home and Level
G28					; Home all axes
;BED_MESH_CALIBRATE			; Do bed mesh leveling (Klipper)

G1 Z12 F3000				; Set nozzle for heatup
G1 X0 Y0                                                                 ; Set nozzle to wipe
M109 S{first_layer_temperature[0]}	                ; Final hotend heat
G1 Z2.0 F3000 			                ; Raise Z Axis to prevent scratching of Heat Bed

;============== 2 Line extrustion prime
G1 X5.1 Y20 Z0.3 F5000.0 			; Move to start position
G1 X5.1 Y200.0 Z0.3 F1500.0 E15 		; Draw the first line
G1 X5.4 Y200.0 Z0.3 F5000.0 			; Move to side a little
G1 X5.4 Y20 Z0.3 F1500.0 E30 		; Draw the second line

G92 E0 					; Reset Extruder
G1 Z2.0 F3000 				; Raise Z Axis to prevent scratching of Heat Bed
G1 X10 Y20 Z0.3 F5000.0 			; Move over to prevent blob squish

;==========================================================
; End of Custom Startup G-Code
;==========================================================
