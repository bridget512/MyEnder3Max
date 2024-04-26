# ================================================================
# Slicer Setup
# Author: Bridget512
# ================================================================
- This file contains slicer specific G-Code that is used by the slicer to run macros on the printer.
- Copy and Paste these code snippits to the corrosponding sections in the Custom G-Code sections, usually located in Printer Settings.
- Do not copy any text that starts with ## to the slicer.
- Some G-Code will be the same, usually End G-Code, but some slicers use their own settings to reference and are used in the G-Code for that slicer.
# ================================================================


# ================================================================
# PrusaSlicer (2.4.0 to Newest)
# ================================================================

## Start G-Code Section
SET_PRINT_STATS_INFO TOTAL_LAYER=[total_layer_count]    ; Reports total layers to klipper. Used to display layer information on the printers display.
_PRINT_START EXTRUDER_TEMP=[first_layer_temperature] BED_TEMP=[first_layer_bed_temperature]


## End G-Code Section
_PRINT_END


## After layer change G-Code
SET_PRINT_STATS_INFO CURRENT_LAYER={layer_num + 1}
;M117 Layer {layer_num+1}/[total_layer_count]


# ================================================================
# SuperSlicer
# ================================================================

## Start G-Code
;SET_RETRACTION_BY_MATERIAL_TYPE MATERIAL_TYPE=[filament_type]
SET_PRINT_STATS_INFO TOTAL_LAYER=[total_layer_count]    ; Reports total layers to klipper. Used to display layer information on the printers display.
_PRINT_START EXTRUDER_TEMP={first_layer_temperature+extruder_temperature_offset} BED_TEMP=[first_layer_bed_temperature]

#End G-Code
_PRINT_END

## After layer change G-Code
SET_PRINT_STATS_INFO CURRENT_LAYER={layer_num + 1}
;M117 Layer {layer_num+1}/[total_layer_count]


# ================================================================
# OrcaSlicer
# ================================================================