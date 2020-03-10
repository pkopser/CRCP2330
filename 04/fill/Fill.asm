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


(KEYBOARD) //-------------------
@KBD
D=M

@WHITE
D;JEQ
@BLACK
D;JGT



@SCREEN
D=A
@word
M=D

@8192
D=A
@lastw
M=D

@i
M=1

(WHITE)

@i
D=M
@lastw
D=D-M
@KEYBOARD
D;JEQ

@word
D=M
@i
A=D+M
M=0

@i
M=M+1

@WHITE
0;JMP





(BLACK)

@i
D=M
@lastw
D=D-M
@KEYBOARD
D;JEQ

@word
D=M
@i
A=D+M
M=-1

@i
M=M+1

@BLACK
0;JMP

(END) //----------------------
@END
0;JMP
