'---------------------------------
'*** PROGRAM: Calculate age now...
'---------------------------------

'*** This program will attempt to calculate
'     what is the users current age, now;
'     after they have, first, entered their birth year.
'     The calculation formula is: yearNow - yearBorn.

'---------------------------
'*** Initialise variables...
'---------------------------

yearNow% = 2020

'-------------------
'*** Main program...
'-------------------

DO
    CLS
    PRINT "PROGRAM: Calcuate age, now..."
    GOSUB printUnderline
    INPUT "Enter what is your birth year"; yearBorn%
    PRINT
    PRINT "Your are, now,"; yearNow% - yearBorn%; "years old."
    GOSUB printUnderline
    INPUT "Again, Y/N"; yesNo$
LOOP UNTIL UCASE$(LEFT$(yesNo$, 1)) <> "Y"
END

'-------------------
'*** Sub-routines...
'-------------------

printUnderline:
PRINT STRING$(80, "-")
RETURN
