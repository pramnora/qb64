'*** This program creates a single random dice having a number range going from: 1-6;
'    then, prints the random dice number value onto the middle of the Output Screen.

'    The dice number thrown isn't 'static'...; but, instead, the dice is shown 'moving'...; 
'    up until when the dice stops spinning to reveal what is its final number.

'    When the final dice number has already been displayed...; 
'    then, the user is asked if they wish to re-run the program, again...by typing in either: Y/N?
'    If they type in any other key other than 'Y'...; then, the program ends.

'-------------------
'*** Main program...
'-------------------

DO
    GOSUB clearScreen
    FOR eachDiceThrow% = 1 TO 1000
        GOSUB printTitle
        GOSUB makeDice
        GOSUB showDice
        GOSUB doPause
    NEXT
    GOSUB doReRun
LOOP UNTIL UCASE$(LEFT$(yesNo$, 1)) <> "Y"
END

'-------------------
'*** Sub-routines...
'-------------------

clearScreen:
CLS
RETURN

printTitle:
LOCATE 11, 34
PRINT "Dice throw..."
RETURN

makeDice:
RANDOMIZE TIMER
diceNo% = INT(RND * 6) + 1
RETURN

showDice:
LOCATE 13, 38
PRINT diceNo%
RETURN

doPause:
FOR pauseCount = 1 TO 320000: NEXT
RETURN

doReRun:
LOCATE 15, 34
INPUT "Again, Y/N"; yesNo$
RETURN
