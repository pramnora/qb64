'*** This program creates a single random dice having a number range going from: 1-6;
'    then, prints the random dice number value onto the Output Screen.

'-------------------
'*** Main program...
'-------------------
DO
    GOSUB clearScreen
    FOR eachDiceThrow% = 1 TO 1000
        GOSUB makeDice
        GOSUB printTitle
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
