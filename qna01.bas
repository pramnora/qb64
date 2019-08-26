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

'*** COMMENTS: This program administers a mutliple choice question and answer test.
'              The fixed format is...each question...has 4 possible answers for the user to select from;
'              the user makes their choice by typing in a number, either: 1/2/3/4; a
'              and, then, pressing the [ENTER] key in order to confirm their choice;
'              the result of their guess will be returned, next...with either a 'correct'/or, 'wrong' reply;
'              also, the correct answer number will be displayed.

'-----------------------------
'*** Variables declarations...
'-----------------------------

intQuestionNo% = 0
intCorrectGuessScore% = 0

'-------------------
'*** Main program...
'-------------------

CLS
PRINT "PROGRAM: Multiple choice question and answer test"
PRINT
RESTORE
DO
    intQuestionNo% = intQuestionNo% + 1
    PRINT "Question no: "; intQuestionNo%
    PRINT
    READ strQuestion$
    PRINT strQuestion$
    PRINT
    FOR intEachAnswerNo% = 1 TO 4
        READ intPossibleAnswer%
        PRINT "<"; intEachAnswerNo%; ">"; intPossibleAnswer%
    NEXT
    PRINT
    INPUT "Select a number(1/2//3/4)"; intUserGuess%
    PRINT
    READ intCorrectAnswer%
    IF intUserGuess% = intCorrectAnswer% THEN
        PRINT "Correct"
        intCorrectGuessScore% = intCorrectGuessScore% + 1
    ELSE
        PRINT "Wrong"
        PRINT "The corect answer was: "; intCorrectAnswer%
    END IF
    READ strEndOfFile$
    PRINT
LOOP UNTIL strEndOfFile$ = "EOF"
PRINT "Out of"; intQuestionNo%; "questions...you scored: "; intCorrectGuessScore%; "correct guesses/"; intQuestionNo% - intCorrectGuessScore%; "wrong."
END

'------------------------------------------------------------------------------
'*** DATA statements list...
'    FORMAT: Question, guess1,guess2,guess3,guess4,correctAnswer,endOfFile
'------------------------------------------------------------------------------

DATA "Q: What is 3+4?",34,7,1,12,2,""
DATA "Q: What is 4+5",9,45,20,-1,1,"EOF"
