'-----------------------------------
'*** PROGRAM: Calculate year born...
'-----------------------------------

'*** This program will attempt to calculate the users year of birth;
'     after they have, first, entered how old they are.
'     The calculation forumla is: yearNow - ageNow.

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
    INPUT " What is your current age: ", ageNow%
    PRINT
    PRINT "You were born in the year: "; yearNow% - ageNow%
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
