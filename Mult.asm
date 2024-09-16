// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

@R2 //reset R2 memory
M=0

(LOOP)
@R0
D=M
@EXIT
D;JEQ //if "R0"=0 jump to EXIT

@R1
D=M
@R2 //sum "R1" "R0" times
M=M+D

@R0
M=M-1 //run over the loop "R0" times until D=0

@LOOP
0;JMP //if D>0 jump to "Loop" line

(EXIT)
@EXIT
0;JMP



















