*------------------------------------------------------------
* Title      : FIBONACCI
* Written by : Daniel Geers 
* Date       : 26.09.2015
* Description: written for 68k Motorola Assembler
*              D0 contains n, D3 contains the answer of fib(n)
*              where n needs to be a positive number >= 0
*------------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
    
* INIT:
    MOVE #0,  D0 ; D1 is n <= PUT YOUR n of fib(n) here
    MOVE #1,  D1 ; fib(1)
    MOVE #1,  D2 ; fib(2)
    MOVE #0,  D3 ; D3 is the answer / final return value
    MOVE #2,  D4 ; counter starts at fib(3)

* BASE CASES:
    CMP #0,D0    ; fib(0) = 0
    BEQ FINISH   
    
    CMP #1,D0    ; fib(1) = 1
    MOVE #1,D3
    BEQ FINISH  
    
    CMP #2,D0    ; fib(2) = 1
    BEQ FINISH    
    
LOOP:
    ADD #1,D4  ; Counter += 1, starts with #3
    MOVE D2,D1 ; copy old D2 in D1
    MOVE D3,D2 ; copy old D3 in D2
    ADD D1,D3  ; update answer into D4
    CMP D4,D0  ; compare loopcounter with n
    BNE LOOP   ; if fib(n) is reached, quit!
    
    SIMHALT             ; halt simulator
    
* variables and constants:
FINISH:
    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
