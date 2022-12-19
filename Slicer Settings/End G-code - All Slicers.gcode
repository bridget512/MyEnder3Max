;==========================================================
; End G-Code
;==========================================================

G91				; Relative positioning
G1 E-1 F2700			; Retract a bit
G1 E-1 Z0.2 F2400			; Retract and raise Z
G1 X5 Y5 F3000			; Wipe out
G1 Z5				; Raise Z
G90				; Absolute positioning
G1 X0 Y250			; Present print

;============== Turn Off
M106 S0 				; Turn-off fan
M104 S0 				; Turn-off hotend
M140 S0 				; Turn-off bed

M84 X Y Z E 			; Disable all steppers
M82 				;absolute extrusion mode
M104 S0