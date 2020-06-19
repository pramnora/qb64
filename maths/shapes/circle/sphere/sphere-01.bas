'-------------------------------------------------
'*** PROGRAM: Calculate the volume of a sphere...

'*** FORMULA: 4/3 * PI * radius cubed
'-------------------------------------------------
DO
    GOSUB clearScreen
    PRINT "PROGRAM: Calculate the volume of a sphere"
    PRINT
    PRINT "FORMULA: 4/3 * PI * radius cubed"
    GOSUB printUnderline
    INPUT "What size is the radius: ", radius
    PRINT
    PRINT "The answer is: ";
    PRINT 4 / 3 * _PI * radius ^ 3
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
