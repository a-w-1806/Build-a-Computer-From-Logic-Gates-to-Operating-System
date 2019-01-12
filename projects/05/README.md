# Computer Architecture

![buses](images/buses.png)

## Basic CPU loop
Repeat:
- Fetch an instruction from the program memory
- Execute the instruction.

### Fetching
![fetching](images/fetching.png)

### Executing
![executing](images/executing.png)

If the Memory is one address space, this scheme will not work:
- There is a clash because both programs and data are in the same memory
- We can do fetch, then execute. But we have to remember our instruction from the fetch when we are in execute.

The Solutions: 
1. Instruction Register and fetch / execute bit
![instruction](images/InstructionRegister.png)
2. Harvard Architecture
![harvard](images/harvard.png)