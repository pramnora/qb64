'*** This program creates a single random dice having a number range going from: 1-6; 
'    then, prints the random dice number value onto the Output Screen.

RANDOMIZE TIMER
CLS
PRINT INT(RND*6)+1
END
