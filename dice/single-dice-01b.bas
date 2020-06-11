'*** This program creates a single random dice having a number range going from: 1-6; 
'    then, prints the random dice number value onto the Output Screen.

'---------------------------
'*** Initialise variables...
'---------------------------

diceMaxNo%=6
RANDOMIZE TIMER
diceNo%=INT(RND*diceMaxNo%)+1

'-------------------
'*** Main program...
'-------------------

CLS
PRINT diceNo%
END
