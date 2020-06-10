'-------------------
'*** Main program...
'-------------------
DO
    GOSUB clearScreen
    PRINT "PROGRAM: Multiple add"
    GOSUB printUnderline
    PRINT "This program adds up a series of numbers...;"
    PRINT "each number is to be entered only one at a time."
    PRINT
    PRINT "Type: '0' to stop entering anymore numbers...;"
    PRINT "finally, the program outputs the sum total of all numbers entered."
    GOSUB printUnderline
    DO
        INPUT "(Type '0' to Quit)/Enter number: ", number
        sumTotal = sumTotal + number
    LOOP UNTIL number = 0
    PRINT
    PRINT "The sum total of all the numbers you entered  is: "; sumTotal
    GOSUB printUnderline
    INPUT "Again, Y/N"; yesNo$
LOOP UNTIL UCASE$(LEFT$(yesNo$, 1)) <> "Y"
END
'-------------------
'*** Sub-routines...
'-------------------
clearScreen:
CLS
RETURN
printUnderline:
PRINT STRING$(80, "-")
RETURN
