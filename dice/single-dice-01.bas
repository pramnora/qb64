'*** This program throws a single dice, having number range: 1-6; then, outputs the dice value to the screen.
diceMaxNo%=6
RANDOMIZE TIMER
diceNo%=INT(RND*diceMaxNo%)+1
CLS
PRINT diceNo%
END
