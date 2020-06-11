DO
    CLS
    PRINT "PROGRAM: Calcuate the average"
    GOSUB printUnderline
    PRINT "You will be asked to enter 3 numbers;"
    PRINT "with each number to be entered, separately, one at a time."
    PRINT
    PRINT "Then, the program will calulate; and, show what the average is."
    GOSUB printUnderline
    INPUT "Enter the first number: ", num1
    INPUT "Enter the second number: ", num2
    INPUT "Enter the third number: ", num3
    PRINT
    PRINT "The average is: ", (num1 + num2 + num3) / 3
    GOSUB printUnderline
    INPUT "Again, Y/N"; yesNo$
LOOP UNTIL UCASE$(LEFT$(yesNo$, 1)) <> "Y"
END
printUnderline:
PRINT STRING$(80, "-")
RETURN
