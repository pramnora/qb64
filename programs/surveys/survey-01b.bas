'----------------------------------
'*** PROGRAM: Simple survey test/V2
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

question$ = ""

userResponseNo% = 0

'-------------------
'*** Main program...
'-------------------

DO
    GOSUB clearScreen
    GOSUB printTitleHeading
    GOSUB printUnderline
    PRINT "USER INSTRUCTIONS"
    PRINT
    PRINT "This program conducts a survey..."
    PRINT "where the user is asked a 'single' question."
    PRINT
    PRINT "The question can have 3 possible responses:"
    PRINT "Y - Yes/N - No/M - Maybe"
    PRINT
    PRINT "What question do you wish to have answered...;"
    PRINT "please, remember to end your question with a question mark: ?"
    PRINT
    PRINT "-(Example question: Do your like using computers?)-"
    GOSUB printUnderline
    INPUT "Question: ", question$
    GOSUB printUnderline
    PRINT "-Thank you!"
    SLEEP 1
    DO
        GOSUB clearScreen
        GOSUB printTitleHeading
        GOSUB printUnderline
        GOSUB printQuestion
        PRINT
        PRINT "Type: 'Y' for Yes"
        PRINT "Type: 'N' for No"
        PRINT "Type: 'M' for Maybe'"
        PRINT
        PRINT "(Type 'nothing' to end the survey; "
        PRINT " and, display the final response totals...)"
        GOSUB printUnderline
        userResponseNo% = userResponseNo% + 1
        PRINT "User response number: "; userResponseNo%
        PRINT
        INPUT userGuess$
        userGuess$ = UCASE$(LEFT$(userGuess$, 1))
        GOSUB markGuess
    LOOP UNTIL userGuess$ = ""
    GOSUB clearScreen
    GOSUB printTitleHeading
    GOSUB printUnderline
    GOSUB printQuestion
    PRINT
    GOSUB showTotals
    PRINT
    GOSUB printSumTotalOfUserResponses
    GOSUB printUnderline
    INPUT "Again, Y/N"; yesNo$
LOOP UNTIL UCASE$(LEFT$(yesNo$, 1)) <> "Y"
END

'-------------------
'*** Sub-routines...
'-------------------

clearScreen:
CLS
RETURN

printTitleHeading:
PRINT "PROGRAM: SURVEY (V2)"
RETURN

printUnderline:
PRINT STRING$(80, "-")
RETURN

printQuestion:
PRINT question$
RETURN

markGuess:
SELECT CASE UCASE$(userGuess$)
    CASE "Y": db%(1) = db%(1) + 1
    CASE "N": db%(2) = db%(2) + 1
    CASE "M": db%(3) = db%(3) + 1
END SELECT
RETURN

showTotals:
PRINT "Response", "Total"
PRINT
FOR eachDBEntryNo% = 1 TO 3
    PRINT db$(eachDBEntryNo%), db%(eachDBEntryNo%)
NEXT
RETURN

printSumTotalOfUserResponses:
sumTotal% = db%(1) + db%(2) + db%(3)
PRINT "Total user responses: "; sumTotal%
RETURN
