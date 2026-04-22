// Compute the sum of all elements in an array
// R0 = base address of array, R1 = number of elements
// Result then gets stored in R2

            // Check if R1 <= 0
@R1
D=M
@END_ZERO
D;JLE        // If R1 <= 0, jump to set sum = 0

@R2
M=0          // sum = 0

@R0
D=M
@PTR
M=D          // PTR = address of the current element

@R1
D=M
@COUNT
M=D          // COUNT = number of elements

(LOOP)
// If COUNT == 0 then end the loop
@COUNT
D=M
@END
D;JEQ

             // Add current element to sum
@PTR
A=M          // A = address of the current element
D=M          // D = *PTR

@R2
M=M+D        // sum += *PTR

// Move to next element
@PTR
M=M+1

@COUNT
M=M-1

// Repeat loop
@LOOP
0;JMP

//R1 <= 0 → sum = 0
(END_ZERO)
@R2
M=0

(END)
@END
0;JMP