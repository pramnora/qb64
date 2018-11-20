'*** PROGRAM: Guess the password: Version 1.0.0
'    (Captures the password, alone.)

strPassword$ = "abcd1234"
strUserGuess$ = ""

DO
    CLS
    PRINT "PROGRAM: Guess the password"
    PRINT
    INPUT "Enter password: ", strUserGuess$
LOOP UNTIL strUserGuess$ = strPassword$

CLS
PRINT "Date/Time: "; DATE$; " "; TIME$
PRINT
PRINT "Welcome back! ;-)"

END



