'*** This program creates a single random dice having a number range going from: 1-6;
'    then, prints the random dice number value onto the middle of the Output Screen.

'    The dice number thrown isn't 'static'...; but, instead, the dice is shown 'moving'...;
'    up until when the dice stops spinning to reveal what is its final number.

'    When the final dice number has already been displayed...;
'    then, the user is asked if they wish to re-run the program, again...by typing in either: Y/N?
'    If they type in any other key other than 'Y'...; then, the program ends.

'---------------------------
'*** Initialise variables...
'---------------------------

xVertPos% = 11
yHoriPos% = 34

'-------------------
'*** Main program...
'-------------------

DO
    GOSUB clearScreen
    FOR eachDiceThrow% = 1 TO 1000
        LOCATE xVertPos%, yHoriPos%
        GOSUB printTitle
        GOSUB makeDice
        LOCATE xVertPos% + 2, yHoriPos% + 4
        GOSUB showDice
        GOSUB doPause
    NEXT
    LOCATE xVertPos% + 4, yHoriPos%
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
PRINT "Dice throw..."
RETURN

makeDice:
RANDOMIZE TIMER
diceNo% = INT(RND * 6) + 1
RETURN

showDice:
PRINT diceNo%
RETURN

doPause:
FOR pauseCount = 1 TO 320000: NEXT
RETURN

doReRun:
INPUT "Again, Y/N"; yesNo$
RETURN
