'*** PROGRAM: Dice animation.
'             Shows a 'moving' dice in the middle of the screen...;
'             that is, the dice number keeps on moving/changing for a time...;
'             until when it, eventually, stops...
'             at a randomly chosen number anywhere between 1 up to 6.
diceMinNum% = 1
diceMaxNum% = 6
CLS
RANDOMIZE TIMER
FOR eachDiceThrowNo% = 1 TO 60
    LOCATE 12, 40
    diceNum% = INT(RND * diceMaxNum%) + diceMinNum%
    PRINT diceNum%
    FOR pauseCount = 1 TO 6000000: NEXT
NEXT
END

'*** Program printout when run by pressing function key: [F5]...

'                                                         4

'*** NOTE: Naturally, of course, each time the dice is thrown a different random number will appear. 
