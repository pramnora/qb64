'*** PROGRAM: GAME: Text based : Guess the random number...
RANDOMIZE TIMER
intRandNo% = INT(RND * 100) + 1
intCount% = 0
DO
    DO
        intCount% = intCount% + 1
        CLS
        PRINT "PROGRAM: Guess the number: 1-100"
        GOSUB printUnderline
        INPUT "(Type Q to Quit)/Enter guess: ", strUserGuess$
        IF UCASE$(strUserGuess$) = "Q" THEN EXIT DO
        PRINT
        intUserGuess% = VAL(strUserGuess$)
        IF (intUserGuess% < intRandNo%) THEN
            PRINT "No, higher"
        ELSEIF (intUserGuess% > intRandNo%) THEN
            PRINT "No, lower"
        ELSE
            PRINT "Yes, correct guess! You got it in"; intCount%; "tries."
        END IF
        SLEEP 1
    LOOP UNTIL intUserGuess% = intRandNo%
    GOSUB printUnderline
    INPUT "Again, Y/N"; strYesNo$
LOOP UNTIL UCASE$(LEFT$(strYesNo$, 1)) <> "Y"
END
printUnderline:
PRINT STRING$(80, "-")
RETURN
