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

@COLOR  //reset a new register named color to 0 - white
M=0

(LOOP)

@SCREEN
D=A
@PIXELS
M=D //the amount of pixels is the amount of registers the screen has

@KBD  //keyboard address
D=M
@PAINT_BLACK
D;JNE   //if D!=0 jump - paint the screen black

(PAINT_WHITE)
@COLOR
M=0  //set white color
@COLOR_SCREEN
D;JMP  //if D==0 jump - paint the screen white

(PAINT_BLACK)
@COLOR
M=-1    //set black color

(COLOR_SCREEN)
@COLOR
D=M
@PIXELS
A=M         //point the M register (pixel)
M=D         //color M[pixels]

@PIXELS
M=M+1
D=M 
@24576
D=D-A
@COLOR_SCREEN
D;JLT   //if D<0 jump

@LOOP
0;JMP  //return this LOOP until we will go all over the pixels

(EXIT) //end loop
@EXIT
0;JMP


















