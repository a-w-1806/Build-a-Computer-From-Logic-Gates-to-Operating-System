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
// pseudo code:
// LOOP:
//  put keyboard's register value into D
//  if D != 0:  data = 1111_1111_1111_1111
//  else:   data = 0000_0000_0000_0000
//  REFRESH:
//      i = 0
//      REFRESH_LOOP
//          if i < 256 * 512 / 16:
//              mem[SCREEN+i] = data
//              i++
//              goto REFRESH_LOOP
//          goto LOOP

// Calculate 256 * 512 / 16 for convenience
@8192
D = A
@total
M = D

(LOOP)
    // Put keyboard's register value into D
    @KBD
    D = M

    // if D != 0:  data = 1111_1111_1111_1111
    @NOT_ZERO
    D; JNE

    @data
    M = 0
    @REFRESH
    0; JMP

    (NOT_ZERO)
    @data
    M = -1

    (REFRESH)
        @i
        M = 0
        (REFRESH_LOOP)
            @i
            D = M
            @total
            D = D - M
            // If i - 256 * 512 >= 0, goto LOOP
            @LOOP
            D; JGE
            // else, mem[SCREEN+i] = D; i++; goto REFRESH_LOOP
            @SCREEN
            D = A
            @i
            D = D + M
            @current_address
            M = D
            @data
            D = M
            @current_address
            A = M
            M = D
            // i++
            @i
            M = M + 1
            @REFRESH_LOOP
            0; JMP
