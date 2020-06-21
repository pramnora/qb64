'----------------------------------
'*** PROGRAM: Simple survey test...
'----------------------------------

'*** This program conducts a simple survey...;
'    where the user is invited to answer a question.

'    The answer to the question could be any of 3 possible responses:
'    Type: 'Y' for Yes)/'N' for No/Type: 'M'for Maybe.

'    The program uses a pair of parallel arrays
'    to keep totals of what each response is.

'    Finally, when all of the responses have been collected;
'    by the user typing 'nothing' in answer to the question;
'    then, the program outputs the total of collected responses.

'    RESPONSE   TOTAL

'    Y           3
'    N           2
'    M           1

'---------------------------
'*** Initialise variables...
'---------------------------

DIM db$(3), db%(3)

db$(1) = "Y"
db$(2) = "N"
db$(3) = "M"

db%(1) = 0
db%(2) = 0
db%(3) = 0

userResponseNo% = 0

'-------------------
'*** Main program...
'-------------------

DO
    GOSUB clearScreen
    PRINT "PROGRAM: SURVEY (V1)"
    GOSUB printUnderline
    PRINT "QUESTION: Do you like the colur blue?"
    PRINT
    PRINT "Type: 'Y' for Yes"
    PRINT "Type: 'N' for No"
    PRINT "Type: 'M' for Maybe'"
    PRINT "(Type 'nothing' to stop...)"
    GOSUB printUnderline
    userResponseNo% = userResponseNo% + 1
    PRINT "User response number: "; userResponseNo%
    PRINT
    INPUT userGuess$
    userGuess$ = UCASE$(LEFT$(userGuess$, 1))
    GOSUB markGuess
LOOP UNTIL userGuess$ = ""
GOSUB printUnderline
GOSUB showScores
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

markGuess:
SELECT CASE UCASE$(userGuess$)
    CASE "Y": db%(1) = db%(1) + 1
    CASE "N": db%(2) = db%(2) + 1
    CASE "M": db%(3) = db%(3) + 1
END SELECT
RETURN

showScores:
PRINT "Response", "Total"
PRINT
FOR eachDBEntryNo% = 1 TO 3
    PRINT db$(eachDBEntryNo%),
    PRINT db%(eachDBEntryNo%)
NEXT
RETURN
