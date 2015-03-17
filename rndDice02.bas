'*** PROGRAM: Throw multiple dice together at once...
diceMinNum% = 1
diceMaxNum% = 6
CLS
RANDOMIZE TIMER
FOR eachDiceThrowNo% = 1 TO 6
    PRINT "Dice"; eachDiceThrowNo%; ">",
    diceNum% = INT(RND * diceMaxNum%) + diceMinNum%
    PRINT diceNum%
NEXT
END

'*** Program output when run by pressing function key: [F5]...

'Dice 1 >         5
'Dice 2 >         2
'Dice 3 >         3
'Dice 4 >         1
'Dice 5 >         2
'Dice 6 >         1

'*** NOTE: Each time this program is re-run...the random dice number(s) output being shown will, of course, vary.
