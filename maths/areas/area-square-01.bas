'*** PROGRAM: Calculate the area of a square,
'             uses formula: n * n
'-----------------------------------------------------------------------
' If the user were to enter that one side of the square is of length: 3;
' then, the whole area of the square can be calculated as: 3 * 3 = 9.

' Or, in order to prove this more 'graphically', instead:-

' X X X
' X X X
' X X X

'...the internal 'area' of the square is, indeed, 9 squares.
'-----------------------------------------------------------------------
DO
    CLS
    PRINT "PROGRAM: Calculate the area of a square/(n*n)"
    GOSUB printUnderline
    INPUT "Please, enter one side of square length: ", number
    PRINT "              The area of the square is:"; number * number
    GOSUB printUnderline
    INPUT "Again, Y/N"; yesNo$
LOOP UNTIL UCASE$(LEFT$(yesNo$, 1)) = "N"
END
printUnderline:
PRINT STRING$(80, "-")
RETURN
