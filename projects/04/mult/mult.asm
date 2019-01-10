// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// We know that we can compute multipy by adding.
// For instance, 5 * 3 can be seen as adding 5 for 3 times, or vice versa.
// So here is the pseudo code:
// a = R0
// b = R1
// sum = 0
// LOOP:
//  if b == 0:  goto STOP
//  else if b < 0:
//      sum = sum - a
//      b++
//  else:
//      sum = sum + a
//      b--
//  goto LOOP
// STOP:
//  R2 = sum
// END
//  @END
//  0; JMP

// a = R0
@R0
D = M
@a
M = D

// b = R1
@R1
D = M
@b
M = D

// sum = 0
@sum
M = 0

(LOOP)
    @b
    D = M
    // if b == 0: goto STOP
    @STOP
    D; JEQ
    @LESS
    D; JLT
    // If b > 0
    // sum = sum + a
    @a
    D = M
    @sum
    M = M + D
    // b--
    @b
    M = M - 1
    @LOOP
    0; JMP
    // If b < 0
    (LESS)
        // sum = sum - a
        @a
        D = M
        @sum
        M = M - D
        // b++
        @b
        M = M + 1
        @LOOP
        0; JMP
    
(STOP)
    // R2 = sum
    @sum
    D = M
    @R2
    M = D

(END)
    @END
    0; JMP
