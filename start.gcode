M136 (enable build)
M73 P0
G162 X Y F2000(home XY axes maximum)
G161 Z F900(home Z axis minimum)
G92 X0 Y0 Z-5 A0 B0 (set Z to -5)
G1 Z0.0 F900(move Z to '0')
G161 Z F100(home Z axis minimum)
M132 X Y Z A B (Recall stored home offsets for XYZAB axis)
G92 X152 Y75 Z0 A0 B0
G1 X-141 Y-74 Z40 F3300.0 (move to waiting position)
G130 X20 Y20 A20 B20 (Lower stepper Vrefs while heating)
M135 T0
M104 S{print_temperature} T0
M133 T0
G130 X127 Y127 A127 B127 (Set Stepper motor Vref to defaults)

G1 X105.400 Y-74.000 Z0.270 F9000.000 (Extruder Prime Dry Move)
G1 X-141 Y-74 Z0.270 F1800.000 E25.000 (Extruder Prime Start)
G92 A0 B0 (Reset after prime)
G1 Z0.000000 F1000
G1 X-141.0 Y-74.0 Z0.0 F1000 E0.0
G92 E0
G1 X-141.000 Y-74.000 Z0.000 F1500 A-1.30000; Retract
G1 X-141.000 Y-74.000 Z0.000 F3000; Retract
G1 X-141.000 Y-74.000 Z0.300 F1380; Travel Move
M73 P0; Update Progress
