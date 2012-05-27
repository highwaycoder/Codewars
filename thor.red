;redcode-94
;name THOR
;author Chris Browne
;strategy spawns dozens of tiny bots that seek out other code and annihilate it
;assert CORESIZE>0

           org thor
; thor
beginning: DAT   #  0 , #  0
thor:      SPL forwards
           JMP backwards

           DAT   #  0 , the_end
forwards:  MOV.I $ -1 , $ -1
           SEQ   @ -2 , $  3
           JMP   # -2
           ADD.B # -4 , #  1
           
           DAT   #  0 , #  0 ; purposely kept between the two branches
          
           DAT   #  0 , # -8
backwards: MOV.I $ -1 , $ -1
           SEQ   @ -2 , $ -3
           JMP   # -2
           ADD.B # -4 , # -5
           
the_end:   DAT   #  0 , #  0
; pseudocode:
; first split into 'forwards' and 'backwards branches
; forwards branch starts writing DAT past the end of the program
; backwards branch starts writing DAT before the beginning of the program