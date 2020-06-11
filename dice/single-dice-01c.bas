'*** This program creates a single random dice having a number range going from: 1-6; 
'    then, prints the random dice number value onto the Output Screen.

'-------------------
'*** Main program...
'-------------------

GOSUB clearScreen
GOSUB makeDice
GOSUB showDice
END

'-------------------
'*** Sub-routines...
'-------------------

clearScreen:
CLS
RETURN

makeDice:
RANDOMIZE TIMER
diceNo%=INT(RND*6)+1
RETURN

showDice:
PRINT diceNo%
RETURN
