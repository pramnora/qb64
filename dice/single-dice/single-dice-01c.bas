'*** This program creates a single random dice having a number range going from: 1-6; 
'    then, prints the random dice number value onto the Output Screen.

'-------------------
'*** Main program...
'-------------------
DO
  GOSUB clearScreen
  GOSUB makeDice
  GOSUB showDice
  GOSUB doReRun
LOOP UNTIL UCASE$(LEFT$(yesNo$,1))<>"Y"
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

doReRun:
INPUT "Again, Y/N";yesNo$
RETURN
