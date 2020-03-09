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

(KEYBOARD)
@KBD
D=M

@BLACK
D;JGT


//white loop

@i
M=1 // start counting at 1

@sum
M=SCREEN

@i
D=M
@8192
D=D-A


@32
D=A
@sum
M=D+M //sum=sum+32


@SUM
A=M
M=0 

@i
M=M+1 
@KEYBOARD
D;JGT 

@END
0;JMP



(BLACK)

@i
M=1 // start counting at 1

@sum
M=SCREEN

@i
D=M

@i
M=M+1 //count by 1 for each new word

@8192
D=D-A


@32
D=A


@sum
M=D+M


@SUM
A=M
M=-1 //set pixels to black

@KEYBOARD
D;JGT //start over when done filling screen

@END
0;JMP

//ending line

(END)
@END
0;JMP