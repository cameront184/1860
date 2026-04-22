@R0
D=M          // D = R0
@R1
D=D-M        // D = R0 - R1

@ELSE
D;JLT        // If R0 < R1 then go to ELSE

// if R0 >= R1...
@R0
D=M
@R2
M=D          // R2 = R0

@R3
M=0          // R3 = 0

@END
0;JMP

(ELSE)
// else R1 > R0 ...
@R1
D=M
@R2
M=D          // R2 = R1

@R3
M=1          // R3 = 1

(END)
@END
0;JMP