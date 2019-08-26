'--------------------------------------------------------
'*** PROGRAM: Multiple choice question and answer test...
'    LANGUGE: QBASIC/Version: QB64
'   COMPUTER: Desktop PC(home)/Windows 10 Professional
'--------------------------------------------------------
'     AUTHOR: Mr. Paul Ramnora
'      EMAIL: pramnora@yahoo.com
'--------------------------------------------------------
'    CREATED: 26 AUG 2019 22:45 PM GMT
'    UPDATED: 26 AUG 2019 22:45 PM GMT
'--------------------------------------------------------

'*** COMMENTS: This program administers a mutliple choice question and asnwer test.
'              The fixed format is...each question...has 4 possible answers for the user to select from;
'              the user makes their choice by typing in a letter: 'A/B/C/D';
'              and, then, pressing the [ENTER] key to confirm their choice;
'              the result of their guess will be returned, next...with either a 'correct'/or, 'wrong' reply;
'              also, the correct answer number will be displayed.

'-----------------------------
'*** Variables declarations...
'-----------------------------

'---string: str/($)...

strQuestion$ = ""
strUserGuess$ = ""
strCorrectAnswer$ = ""
strEndOfFile$ = ""

'--- integer: int/(%)...

intQuestionNo% = 0
intEachAnswerNo% = 0
intPossibleAnswer% = 0
intCorrectGuessScore% = 0

'-------------------
'*** Main program...
'-------------------

RESTORE '...start reading from the very top of the DATA statements list...

DO
    GOSUB clearScreen
    PRINT "PROGRAM: Multiple choice question and answer test"
    PRINT
    intQuestionNo% = intQuestionNo% + 1
    PRINT "Question no: "; intQuestionNo%
    GOSUB printUnderline
    READ strQuestion$
    PRINT strQuestion$
    PRINT
    FOR intEachAnswerNo% = 1 TO 4
        READ intPossibleAnswer%
        PRINT "<"; CHR$(intEachAnswerNo% + 64); ">"; intPossibleAnswer%
    NEXT
    GOSUB printUnderline
    INPUT "Select a letter:(A/B/C/D)"; strUserGuess$
    PRINT
    READ strCorrectAnswer$
    IF UCASE$(strUserGuess$) = strCorrectAnswer$ THEN
        PRINT "Correct"
        intCorrectGuessScore% = intCorrectGuessScore% + 1
    ELSE
        PRINT "Wrong"
        PRINT "The corect answer was: "; strCorrectAnswer$
    END IF
    GOSUB doPause
    READ strEndOfFile$
    PRINT
LOOP UNTIL strEndOfFile$ = "EOF"

GOSUB clearScreen
PRINT "Question and Answer test result..."
PRINT
PRINT "Out of"; intQuestionNo%; "questions...you scored: "; intCorrectGuessScore%; "correct/"; intQuestionNo% - intCorrectGuessScore%; "wrong."

END '...END of program/halt program code execution

'-------------------
'*** Sub-routines...
'-------------------

clearScreen:
CLS '...(CL)ear the output (S)creen
RETURN

printUnderline:
PRINT STRING$(80, "*"); '...outputs a horizontal line of asterixes extending right across the width of the screen
RETURN

doPause:
SLEEP 5 '...pause for 5 seconds
RETURN

'------------------------------------------------------------------------------------
'*** DATA statements list...

'    FORMAT: "question",guess1,guess2,guess3,guess4,"correctAnswerLetter","EndOfFile"
'------------------------------------------------------------------------------------

DATA "Q: What is 3+4?",34,7,1,12,"B",""
DATA "Q: What is 4+5",9,45,20,-1,"A","EOF"
