M220 S100 ;Reset Feedrate 
M221 S100 ;Reset Flowrate 
 
M104 S[nozzle_temperature_initial_layer] ;Set final nozzle temp 
M190 S[bed_temperature_initial_layer_single] ;Set and wait for bed temp to stabilize 
G28 ;Home 
G92 E0 ;Reset Extruder 
G1 Z2.0 F3000 ;Move Z Axis up 
G1 X5 Y20 Z0.28 F5000.0 ; Move to start position

M109 S[nozzle_temperature_initial_layer] ;Wait for nozzle temp to stabilize 

G1 X5 Y145 Z0.28 F1500.0 E15 ; Draw the first line

G1 X6 Y145 Z0.28 F5000.0 ; Move over slightly

G1 X6 Y20 Z0.28 F1500.0 E30 ; Draw the second line

G92 E0  ;Reset Extruder 
G1 E-1.0000 F1800 ;Retract a bit 
G1 Z2.0 F3000 ;Move Z Axis up 
G1 E0.0000 F1800
