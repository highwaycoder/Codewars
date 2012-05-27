# Core Wars Reference Document

A collection of resources useful to a Core Wars developer, a sort of "cheat
sheet" if you will of all the things I find myself wanting to look up on a
regular basis.

## Instruction set

 - DAT -- data 
 - MOV -- move 
 - ADD -- add 
 - SUB -- subtract 
 - MUL -- multiply 
 - DIV -- divide 
 - MOD -- modulus 
 - JMP -- jump 
 - JMZ -- jump if zero 
 - JMN -- jump if not zero 
 - DJN -- decrement and jump if not zero 
 - SPL -- split (fork)
 - CMP -- compare (equivalent to SEQ)
 - SEQ -- skip if equal
 - SNE -- skip if not equal 
 - SLT -- skip if lower than 
 - LDP -- load from p-space 
 - STP -- save to p-space 
 - NOP -- no operation 

## Address Modes

 - # -- immediate (ie points to itself)
 - $ -- direct (points directly to an address, this is the default)
 - * -- A-field indirect
 - @ -- B-field indirect
 - { -- A-field indirect with pre-decrement
 - < -- B-field indirect with pre-decrement
 - } -- A-field indirect with post-increment
 - > -- B-field indirect with post-increment
 
## Assembler Instructions (psuedo-opcodes)

 - EQU -- define a numerical constant / constant expression
 - FOR -- begin a for loop
 - ROF -- end a for loop
 - ORG -- set the 'entrance point' of the program
 - PIN -- set the p-space identification number (largely useless)
 
## Pre-defined constants
 
 - CORESIZE -- the size of the core (default 8000)
 - PSPACESIZE -- the size of the P-space (default 500)
 - MAXCYCLES -- the number of cycles until a tie is declared (default 80000)
 - MAXPROCESSES -- the maximum size of the process queue (default 8000)
 - WARRIORS -- the number of programs in the core (usually 2)
 - MAXLENGTH -- the maximum length of a program (default 100)
 - CURLINE -- the number of instructions compiled so far (0 to MAXLENGTH)
 - MINDISTANCE -- the minimum distance between two warriors (default 100)
 - VERSION -- the version of pMARS, multiplied by 100 (80 or more)