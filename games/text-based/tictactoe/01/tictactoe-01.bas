'********************************************
'    PROGRAM: Noughts & Crosses/(Manual game)
'   LANGUAGE: QBASIC/Version QB64
'   COMPUTER: PC/Windows 10 Professional
'--------------------------------------------
'     AUTHOR: Mr. Paul Ramnora
'      EMAIL: pramnora@yahoo.com
'  COPYRIGHT: (c)2018-, Mr. Paul Ramnora./
'             All rights reserved.
'--------------------------------------------
'    CREATED: THU 6 DEC 2018 01:30 AM GMT
'    UPDATED: THU 6 DEC 2018 01:30 AM GMT
'********************************************

'*** COMMENTS: This is a 'manual' game of Noughts & Crosses;
'              both players take turns to choose a number from off the board:

'                               GAME: Noughts & Crosses
'                                      1 2 3
'                                      4 5 6
'                                      7 8 9
'                                Who's move? X
'              Select a number to make move: (1-9)/or, type Q to quit:
'                              Another game, Y/N?

'              ...and, when a player selects a number;
'              then, their player marker either X/or, O
'              is used to fill up that particular board number space.

'              The aim of the game is for each separate player to get either 3 X's in a row/
'              or, 3 O's in row...either horizontally/vertically/diagonally.

'              In this purely 'manual' version of the game, there is no error checking;
'              nor is there any printout to say: X won/O won/or, draw;
'              but, instead, when a player wins the game they, simply, press key 'Q' to stop;
'              otherwise, the game will play out until when all spaces are taken up on
'              the board; and, then, the game finishes on it's own.

'              At the end of the  game players are asked if they wish to replay: Another game, Y/N?;
'              answer with either a Y/N? If Y the game re-RUNS/if N then the game finishes.

'              I decided to do some 'coding practice' this evening; just to test how difficult
'              it  would be to write a very simple Noughts & Crosses game using QBASIC/QB64?
'              Answer: Not too very difficult, at all.

'----------------------------
'*** Variable declarations...
'----------------------------

DIM strNum(1 TO 9) AS STRING
strPlayerCounter$ = "X"
CONST FALSE = 0
CONST TRUE = 1
intGameStartFlag% = TRUE

'*******************
'*** Main program...
'*******************

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

'-------------------
'*** Sub-routines...
'-------------------

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

