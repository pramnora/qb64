'*** This program creates a single random dice having a number range going from: 1-6; 
'    then, prints the random dice number value onto the Output Screen.

CLS
RANDOMIZE TIMER
PRINT INT(RND*6)+1
END
