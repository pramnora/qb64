'-(In this version 3, I've further compressed the code...to make it just 23 lines long; 
'  when it started out as being 118 lines long; in order to achieve this...;
'  I've deleted: 'comments'/'white space'/'labelname/GOSUB/RETURN' block statements; 
'  used multi-line: 2 lines of code becoming 1 line, instead; -etc.
' *NOTE*: Further code compression is still possible; for example: change long variable names to become short/and, so on.)-
'--------------------------------------------------------------------------------------------------------------------------
DIM strNum(1 TO 9) AS STRING
strPlayerCounter$ = "X": intGameStartFlag% = 1
FOR intEachPlayersTurn% = 1 TO 10
    CLS: LOCATE 2, 27
    PRINT "GAME: Noughts & Crosses": LOCATE 4, 1
    FOR intEachNum% = 1 TO 9
        IF intEachNum% = 1 OR intEachNum% = 4 OR intEachNum% = 7 THEN PRINT SPC(34);
        IF intGameStartFlag% = 1 THEN strNum(intEachNum%) = STR$(intEachNum%)
        PRINT strNum(intEachNum%);
        IF intEachNum% MOD 3 = 0 THEN PRINT
    NEXT
    IF intGameStartFlag% = 1 THEN intGameStartFlag% = 0
    LOCATE 8, 32: PRINT "Who's move? "; strPlayerCounter$
    IF intEachPlayersTurn% = 10 THEN EXIT FOR
    LOCATE 10, 8: INPUT "Select a number to make move: (1-9)/(or, type Q to quit!): ", strUserSelectedNum$
    IF UCASE$(strUserSelectedNum$) = "Q" THEN EXIT FOR
    FOR intEachNum% = 1 TO 9
        IF LTRIM$(strNum(intEachNum%)) = strUserSelectedNum$ THEN strNum(intEachNum%) = " " + strPlayerCounter$
    NEXT
    IF strPlayerCounter$ = "X" THEN strPlayerCounter$ = "O" ELSE strPlayerCounter$ = "X"
NEXT
LOCATE 12, 28: INPUT "Another game, Y/N"; strYesNo$
IF UCASE$(LEFT$(strYesNo$, 1)) = "Y" THEN RUN
