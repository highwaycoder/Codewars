;redcode-94
;name skuldfru
;author Chris Browne
;strategy one process hides, the other creates traps
SPL 4
; hider part
JMP 2
DAT #0,#0
JMP -2
; trapper part
ADD # 4  ,   3
MOV   2  , @ 2
JMP  -2
DAT # 0  , # 4
