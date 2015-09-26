*------------------------------------------------------------
* Title      : N*N
* Written by : Daniel Geers 
* Date       : 26.09.2015
* Description: written for 68k Motorola Assembler
*              D0 contains N, D1 is a Counter, D3 the result
*------------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
* init:
    MOVE #5, D0         ; N
    MOVE #0, D1         ; D1 => Counter 
    MOVE #1, D3         ; N^0 = 1 Case

LOOP:
    CMP D0,D1           ; compare N with D1, if N = 0, return current D3(1)
    BEQ FINALLY
    
    MULU D0, D3
    ADD #1, D1
    BRA LOOP
    
    
    SIMHALT             ; halt simulator

* variables and constants here
FINALLY:
    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
