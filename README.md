# Build a Computer From Logic Gates to Operating System

This repo consists of 13 different projects and illustrates how to build a modern computer, from logic gates to operating system:

## [Project 1: Using Nand gate to build other basic chips](https://github.com/Yuchen-Wang-SH/Build-a-Computer-From-Logic-Gates-to-Operating-System/tree/master/projects/01)
Using HDL (Hardware Description Language), I implement the following chips:
1. Elementary logic gates
   - Not
   - And
   - Or
   - Xor
   - Mux
   - DMux
2. 16-bit variants
   - Not16
   - And16
   - Or16
   - Mux16
3. Multi-way variants
   - Or8Way
   - Mux4Way16
   - Mux8Way16
   - DMux4Way
   - DMux8Way

## [Project 2: ALU: The Heart of Computation](https://github.com/Yuchen-Wang-SH/Build-a-Computer-From-Logic-Gates-to-Operating-System/tree/master/projects/02)
Using the chips built in Project 1, I continue to build the following chips:
- Half Adder
- Full Adder
- Add16
- Inc16
- ALU

## [Project 3: RAM and Program Counter](https://github.com/Yuchen-Wang-SH/Build-a-Computer-From-Logic-Gates-to-Operating-System/tree/master/projects/03)
Moving from combinational logic to sequential logic, I implement the following hardware:
- Data Flip-Flops (DFF)
- Register
- RAM (8, 64, 512, 4K, 16K)
- Program Counter (PC)

## [Project 4: Machine Language](https://github.com/Yuchen-Wang-SH/Build-a-Computer-From-Logic-Gates-to-Operating-System/tree/master/projects/04)
In this project, I write two assembly programs which can:

- multiply R0 and R1 and store the result in R2
- blacken the screen whenever a key is pressed

## [Project 5: Computer Architecture](https://github.com/Yuchen-Wang-SH/Build-a-Computer-From-Logic-Gates-to-Operating-System/tree/master/projects/05)
In this project, I write HDL to:
1. implement the CPU
2. implement the Memory (RAM and memory mapping for screen and keyboard)
3. construct the whole 16-bit Computer called Hack!

## [Project 6: Assembler](https://github.com/Yuchen-Wang-SH/Build-a-Computer-From-Logic-Gates-to-Operating-System/tree/master/projects/06)
I use Java to write an assembler for the Hack Machine Language. The standalone repo is [**here**](https://github.com/Yuchen-Wang-SH/Hack-Assembler).

## More comming soon!

I 'd like to thank Prof. Noam Nisan and Prof. Shimon Schocken for this brilliant course: [Building a Modern Computer From First Principles](https://www.nand2tetris.org/). This is one of the best online courses I have ever taken.