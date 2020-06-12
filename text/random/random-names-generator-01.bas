'----------------------------
'*** PROGRAM: Random names...
'----------------------------

'*** This program prints out a list of 'random names' of people
'    who met each other at an entirely 'fictional' party.

'    The list of random names is selected from a pair of 'parallel' arrays;
'    and, by using the QBASIC/QB64 random numbers generator.

'----------------------------
'*** Variable declarations...
'----------------------------

RANDOMIZE TIMER
intArrayMaxNo% = 3

DIM strMaleNames$(intArrayMaxNo%)
DIM strFemaleNames$(intArrayMaxNo%)

strMaleNames$(1) = "Jack"
strMaleNames$(2) = "Nick"
strMaleNames$(3) = "William"

strFemaleNames$(1) = "Jessica"
strFemaleNames$(2) = "Mary"
strFemaleNames$(3) = "Dorelia"

'-------------------
'*** Main program...
'-------------------

GOSUB clearScreen
PRINT "At the party..."
GOSUB printUnderline
FOR intEachSentence% = 1 TO intArrayMaxNo%
    PRINT TAB(30); strMaleNames$(INT(RND * intArrayMaxNo%) + 1); " met "; strFemaleNames$(INT(RND * intArrayMaxNo%) + 1); "."
NEXT
GOSUB printUnderline
INPUT "Again, Y/N"; strYesNo$
IF UCASE$(LEFT$(strYesNo$, 1)) <> "N" THEN RUN
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
