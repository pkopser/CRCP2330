// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


@R2
D=M

@n
M=D

@i
M=1

@SUM
M=0


(LOOP)
@i
D=M

@n
D=D-M

@STOP
D;JGT

@sum
D=M

@i
D=D+M

@SUM
M=D

@i
M=M+1

@LOOP
0'JMP

(STOP)
@SUM
D=M

@R3
M=D

(END)
0;JMP

