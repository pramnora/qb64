DIM strNum(1 TO 9) AS STRING
strPlayerCounter$ = "X"
CONST FALSE = 0
CONST TRUE = 1
intGameStartFlag% = TRUE
FOR intEachPlayersTurn% = 1 TO 10
    GOSUB clearScreen
    GOSUB displayGameTitle
    GOSUB displayBoard
    GOSUB showWhosTurnToPlayNext
    IF intEachPlayersTurn% = 10 THEN EXIT FOR
    GOSUB getUserToSelectANumberFromBoard
    IF UCASE$(strUserSelectedNum$) = "Q" THEN EXIT FOR
    GOSUB markBoardWithPlayersMove
    GOSUB switchPlayersMarker
NEXT
GOSUB reRun
END
clearScreen:
CLS
RETURN
displayGameTitle:
LOCATE 2, 27: PRINT "GAME: Noughts & Crosses"
RETURN
displayBoard:
LOCATE 4, 1
FOR intEachNum% = 1 TO 9
    IF intEachNum% = 1 OR intEachNum% = 4 OR intEachNum% = 7 THEN PRINT SPC(34);
    IF intGameStartFlag% = TRUE THEN strNum(intEachNum%) = STR$(intEachNum%)
    PRINT strNum(intEachNum%);
    IF intEachNum% MOD 3 = 0 THEN PRINT
NEXT
IF intGameStartFlag% = TRUE THEN intGameStartFlag% = FALSE
RETURN
showWhosTurnToPlayNext:
LOCATE 8, 32: PRINT "Who's move? "; strPlayerCounter$
RETURN
getUserToSelectANumberFromBoard:
LOCATE 10, 8: INPUT "Select a number to make move: (1-9)/(or, type Q to quit!): ", strUserSelectedNum$
RETURN
markBoardWithPlayersMove:
FOR intEachNum% = 1 TO 9
    IF LTRIM$(strNum(intEachNum%)) = strUserSelectedNum$ THEN strNum(intEachNum%) = " " + strPlayerCounter$
NEXT
RETURN
switchPlayersMarker:
IF strPlayerCounter$ = "X" THEN strPlayerCounter$ = "O" ELSE strPlayerCounter$ = "X"
RETURN
reRun:
LOCATE 12, 28: INPUT "Another game, Y/N"; strYesNo$
IF UCASE$(LEFT$(strYesNo$, 1)) = "Y" THEN RUN
RETURN
