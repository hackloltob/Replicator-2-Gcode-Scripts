M73 P100; Update Progress
M127 T0; Disable Fan
; End of print
G1 E-0.3 F1500
M127 T0 (Fan Off)
M18 A B(Turn off A and B Steppers)
G1 Z155 F900
G162 X Y F2000
M18 X Y Z(Turn off steppers after a build)
M104 S0 T0
M72 P1  ( Play Ta-Da song )
M73 P100
