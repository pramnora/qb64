-(This is the final 'compressed code' version of the program.)-
'*** minimal BASIC/short var names:
'    n=number/bn=board number/c=counter/f=flag/t=turn/un=user number/yn=yesNo
DIM n(1 TO 9) AS STRING
c$ = "X": f% = 1
FOR t% = 1 TO 10
    CLS: LOCATE 2, 27
    PRINT "GAME: Noughts & Crosses": LOCATE 4, 1
    FOR bn% = 1 TO 9
        IF bn% = 1 OR bn% = 4 OR bn% = 7 THEN PRINT SPC(34);
        IF f% = 1 THEN n(bn%) = STR$(bn%)
        PRINT n(bn%);: IF bn% MOD 3 = 0 THEN PRINT
    NEXT
    IF f% = 1 THEN f% = 0
    LOCATE 8, 32: PRINT "Who's move? "; c$
    IF t% = 10 THEN EXIT FOR
    LOCATE 10, 8: INPUT "Select a number to make move: (1-9)/(or, type Q to quit!): ", un$
    IF UCASE$(un$) = "Q" THEN EXIT FOR
    FOR bn% = 1 TO 9: IF LTRIM$(n(bn%)) = un$ THEN n(bn%) = " " + c$
    NEXT: IF c$ = "X" THEN c$ = "O" ELSE c$ = "X"
NEXT
LOCATE 12, 28: INPUT "Another game, Y/N"; yn$
IF UCASE$(LEFT$(yn$, 1)) = "Y" THEN RUN
