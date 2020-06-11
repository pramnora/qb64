'-------------------
'*** Main program...
'-------------------

DO
    GOSUB clearScreen
    PRINT "PROGRAM: Calcuate the average"
    GOSUB printUnderline
    PRINT "You will be asked to enter 'multiple' numbers;"
    PRINT "each number to be entered, separately, one at a time."
    PRINT
    PRINT "Type: '0' when data entry is done;"
    PRINT "then, the program will calculate; and, show what the average is."
    GOSUB printUnderline
    numCount = 0
    sumTotal = 0
    DO
        INPUT "(Type: '0' to stop)/Enter number: ", num
        IF num <> 0 THEN
            sumTotal = sumTotal + num
            numCount = numCount + 1
        END IF
    LOOP UNTIL num = 0
    PRINT
    PRINT "The average is: ", sumTotal / numCount
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
