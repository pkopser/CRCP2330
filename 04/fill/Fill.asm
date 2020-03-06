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
D;JGT    //if a key is pressed, go to "black" section


@SCREEN
D=A

@sum
M=D

//@8191
//D=A

@n
M=D

@i
M=0

@i
D=M // start counting at 0

@n
D=D-M


@0
D;JGT //start over when done filling screen



@i
M=M+1 
@32
D=A
@sum
M=D+M       //sum=sum+32


@sum
A=M
M=0 //set pixels to white

@KEYBOARD
0;JMP

//black loop

(BLACK)
@SCREEN
D=A

@sum
M=D

@8191
D=A

@n
M=D

@i
M=0

@i
D=M // start counting at 0

@n
D=D-M


@0
D;JGT //start over when done filling screen

@i
M=M+1 
@32
D=A
@sum
M=D+M       //sum=sum+32


@sum
A=M
M=0 //set pixels to white

@KEYBOARD
0;JMP

(END)
@END
0;JMP