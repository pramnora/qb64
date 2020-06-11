'*** PROGRAM: Calculate the area of a rectangle,
'             uses formula: n1 * n2
'-----------------------------------------------------------------------
' If the user were to enter that one side of the rectangle is of length: 3;
' and, that the other adjacent side of the rectangle is length: 4
' then, the whole area of the rectangle can be calculated as: 3 * 4 = 12.

' In order to prove the point, 'graphically':-

' X X X X
' X X X X 
' X X X X

'...the internal 'area' of a rectangle with 2 adjacent sides:
'   where one side is length: 3/and, the other adjacent side is length 4;
'   is, indeed, made up of 12 squares.
'-----------------------------------------------------------------------
DO
    CLS
    PRINT "PROGRAM: Calculate the area of a rectangle/(n*n)"
    GOSUB printUnderline
    INPUT "Please, enter one side of the rectangle length: ",  side1
    INPUT "Please, enter the adjacent side rectangle length: ",  side2 
    PRINT "                    The area of the rectangle is:"; side1 * side2
    GOSUB printUnderline
    INPUT "Again, Y/N"; yesNo$
LOOP UNTIL UCASE$(LEFT$(yesNo$, 1)) = "N"
END
printUnderline:
PRINT STRING$(80, "-")
RETURN
