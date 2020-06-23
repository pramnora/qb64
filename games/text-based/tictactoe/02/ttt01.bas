'------------------------------------------------------------
'***  PROGRAM: Tic Tac Toe... /Version: 1.0.1
'    LANGUAGE: QBASIC/Version: QB64
'    COMPUTER: Home based PC/OS: Windows 10 Professional
'------------------------------------------------------------
'      AUTHOR: Mr. Paul Ramnora
'    LOCATION: London, UK
'       EMAIL: pramnora@yahoo.com
'   COPYRIGHT: 2020-, Mr. Paul Ramnora./All rights reserved.
'------------------------------------------------------------
'     CREATED: 230620 01:30 AM GMT
'     UPDATED: 230620 09:02 AM GMT
'------------------------------------------------------------

'---------------------------------------------------------------------------------------------------------------
'--- I was watching a programmer write an 'automatic' game of Tic Tac Toe,
'    using the Java programming language on YouTube.

'    Tic Tac Toe Java Game - Build a Tic Tac Toe Game in 30 Minutes
'    https://www.youtube.com/watch?v=gQb3dE-y1S4

'    I was very deeply impressed with the sheer skill/speed with which he built a fully working game;
'    so, I decided purely as an exercise to try building the same thing for myself.

'    NOTE: However, this is merely just the 'manual' version of the game;
'          I hope to be able to produce  an 'automaed' version, later.
'---------------------------------------------------------------------------------------------------------------

'----------------------------
'*** Variable declarations...
'----------------------------

DIM arrayNum$(9)

'-------------------
'*** Main program...
'-------------------

DO '...endless loop...
    GOSUB initialiseVariables
    GOSUB fillArrayWithNumbers1To9
    DO
        GOSUB clearScreen
        GOSUB printGameTitleHeadingText
        GOSUB drawGameBoard
        GOSUB writeBoardMoves
        GOSUB doCheckForWin
        IF gameOverFlag% = 1 THEN '...game is won
            GOSUB printEndOfGameMessage
            EXIT DO
        ELSEIF eachMoveCounter% = 9 THEN
            gameOverFlag% = 2 '...game is a draw
            GOSUB printEndOfGameMessage
            EXIT DO
        END IF
        GOSUB switchPlayerMarker
        GOSUB getUserBoardNumberToMakeMove
        GOSUB makePlayerMove
        eachMoveCounter% = eachMoveCounter% + 1
    LOOP
    PRINT
    INPUT "Again, Y/N"; yesNo$
LOOP UNTIL UCASE$(LEFT$(yesNo$, 1)) <> "Y"
END

'-------------------
'*** Sub-routines...
'-------------------

initialiseVariables:
playerMarker$ = "X"
computerMarker$ = "O"
currentMarker$ = computerMarker$ '...NOTE: The game, automatically, switches around the players marker as soon as the game begins; so, game starts off with: X
eachMoveCounter% = 0
gameOverFlag% = 0
RETURN

fillArrayWithNumbers1To9:
FOR eachNum% = 1 TO 9
    arrayNum$(eachNum%) = STR$(eachNum%)
NEXT
RETURN

clearScreen:
CLS
RETURN

printGameTitleHeadingText:
LOCATE 9, 34
PRINT "Tic Tac Toe"
RETURN

drawGameBoard:
RESTORE gameBoard
READ yVertPos%, xHoriPos%, board$
DO
    LOCATE yVertPos%, xHoriPos%
    PRINT board$
    READ yVertPos%, xHoriPos%, board$
LOOP UNTIL board$ = "EOF"
RETURN

writeBoardMoves:
RESTORE boardNumberPositions:
FOR eachNum% = 1 TO 9
    READ yVertPos%, xHoriPos%
    LOCATE yVertPos%, xHoriPos%
    PRINT LTRIM$(arrayNum$(eachNum%));
NEXT
RETURN

getUserBoardNumberToMakeMove:
LOCATE 17, 30
INPUT "Enter move: (1-9)"; playerMove$
RETURN

makePlayerMove:
IF VAL(playerMove$) = VAL(arrayNum$(VAL(playerMove$))) THEN
    arrayNum$(VAL(playerMove$)) = currentMarker$
END IF
RETURN

switchPlayerMarker:
IF currentMarker$ = playerMarker$ THEN
    currentMarker$ = computerMarker$
ELSE
    currentMarker$ = playerMarker$
END IF
RETURN

doCheckForWin:
RESTORE winningLines
FOR eachWinningLine% = 1 TO 8
    READ n1%, n2%, n3%
    IF arrayNum$(n1%) = currentMarker$ AND arrayNum$(n2%) = currentMarker$ AND arrayNum$(n3%) = currentMarker$ THEN
        gameOverFlag% = 1
    END IF
NEXT
RETURN

printEndOfGameMessage:
IF gameOverFlag% = 1 THEN
    LOCATE 17, 32
    PRINT "GAME WON by "; currentMarker$
ELSEIF gameOverFlag% = 2 THEN
    LOCATE 17, 32
    PRINT "GAME is a DRAW"
END IF
RETURN

'---------------------------
'*** DATA statements list...
'---------------------------

gameBoard:
DATA 11,37," | | "
DATA 12,37,"-+-+-"
DATA 13,37," | | "
DATA 14,37,"-+-+-"
DATA 15,37," | | "
DATA 0,0,"EOF"

boardNumberPositions:
DATA 11,37,11,39,11,41
DATA 13,37,13,39,13,41
DATA 15,37,15,39,15,41

winningLines:
'*** horizontal win...
DATA 1,2,3
DATA 4,5,6
DATA 7,8,9
'*** vertical win...
DATA 1,4,7
DATA 2,5,8
DATA 3,6,9
'*** diagonal win...
DATA 1,5,9
DATA 3,5,7

