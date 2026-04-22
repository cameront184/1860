@R0
D=M
@R1
D=D&M
@XY
M=D          // XY = R0 & R1

@R0
D=M
D=!D
@NOTX
M=D          // NOTX = !R0

@R1
D=M
D=!D
@NOTX
D=D&M        // D = !R1 & !R0

@XY
D=D|M        // D = (!R0 & !R1) | (R0 & R1)

@R2
M=D          // Store the result in R2

(END)
@END
0;JMP