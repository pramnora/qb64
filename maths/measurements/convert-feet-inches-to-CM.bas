'-----------------------------------------------------
'*** PROGRAM: Convert feet and inches into centimeters

'*** FORMULA: 1 x Foot = 12 inches/1 inch = 2.54 CM
'-----------------------------------------------------
DO
    GOSUB clearScreen
    PRINT "PROGRAM: Convert feet and inches into centimeters"
    PRINT
    PRINT "FORMULA: 1 x Foot = 12 inches/1 x Inch  = 2.54 cm"
    PRINT
    GOSUB printUnderline
    INPUT "  Enter feet: ", feet
    INPUT "Enter inches: ", inches
    PRINT
    PRINT "The answer is: ";
    inchesToCentimeters = inches * 2.54
    feetToCentimeters = feet * 12 * 2.54
    PRINT inchesToCentimeters + feetToCentimeters
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
