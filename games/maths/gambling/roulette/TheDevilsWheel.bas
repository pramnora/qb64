'-------------------------------------------------------------------------------
'*** PROGRAM: Add up all numbers on the roulette board
'    LANGUAGE: QBASIC/Version: QB64

'    This program calculates the total of all numbers on the Roulette board,
'    ranging from 1 up to 36; then, outputs that total which is the number: 666!

'    Created: 18th March 2023 16:11 PM GMT
'    Updated: 18th March 2023 16:11 PM GMT
'-------------------------------------------------------------------------------

Cls '...(CL)ear the output (S)creen
For intEachRouletteNumber% = 1 To 36
    intTotal% = intTotal% + intEachRouletteNumber%
Next
Print intTotal%
