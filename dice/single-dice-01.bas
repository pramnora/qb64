'*** This program throws a single dice, having number range: 1-6; then, outputs the dice value to the screen.
RANDOMIZE TIMER
diceNo%=INT(RND*6)+1
CLS
PRINT diceNo%
END
