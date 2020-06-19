'-------------------------------------------------
'*** PROGRAM: Calculate the area of a triangle..

'*** FORMULA: Area = 1/2 of base * height
'-------------------------------------------------
DO
    GOSUB clearScreen
    PRINT "PROGRAM: Calculate the area of a triangle"
    PRINT
    PRINT "FORMULA: Area = 1/2 * base * height"
    GOSUB printUnderline
    INPUT "  Enter base: ", b
    INPUT "Enter height: ", h
    PRINT
    PRINT "The answer is: ";
    PRINT 1 / 2 * b * h
    GOSUB printUnderline
    INPUT "Again, Y/N"; yesNo$
LOOP UNTIL UCASE$(LEFT$(yesNo$, 1)) <> "Y"
END

clearScreen:
CLS
RETURN

printUnderline:
PRINT STRING$(80, "-")
RETURN
