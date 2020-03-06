// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.



@KBD
D=A

@BLACK
0;JGT


//white loop

@SCREEN
D=A

@addr
M=D

@256
D=M

@n
M=D

@i
M=0 // start counting at 0

(LOOP)
@i
D=M
@n
D=D-M
@0
D;JGT /start over when done filling screen

@addr
A=M
M=0 //set pixels to white

@i
M=M+1
@32
D=A
@addr
M=D+M
@LOOP
0;JMP

//black loop

@SCREEN
D=A

@addr
M=D

@256
D=M

@n
M=D

@i
M=0 // start counting at 0

(LOOP)
@i
D=M
@n
D=D-M
@0
D;JGT /start over when done filling screen

@addr
A=M
M=-1 //set pixels to black

@i
M=M+1
@32
D=A
@addr
M=D+M
@LOOP
0;JMP

//ending line

(END)
@END
0;JMP



