'-----------------------------------------------------------
'*** PROGRAM: Print mixed 'UPPER CASE/lower case' letters...
'-----------------------------------------------------------

'-------------------
'*** Main program...
'-------------------

DO
    GOSUB clearScreen
    PRINT "PROGRAM: Mixed case writing"
    GOSUB printUnderline
    PRINT "This program asks you to type in a sentence;"
    PRINT "next, press the [ENTER] key to finish typing."
    PRINT
    PRINT "Then, the program will ouput your sentence,"
    PRINT "as being a random mixture of both 'UPPER CASE/lower case' letters."
    GOSUB printUnderline
    INPUT "Please, enter your sentence: ", strUserText$
    PRINT
    GOSUB printRndUpperCaseLowerCaseLetters
    GOSUB printUnderline
    INPUT "Again, Y/N"; strYesNo$
LOOP UNTIL UCASE$(LEFT$(strYesNo$, 1)) <> "Y"
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

printRndUpperCaseLowerCaseLetters:
FOR intEachCharNo% = 1 TO LEN(strUserText$)
    strEachChar$ = MID$(strUserText$, intEachCharNo%, 1)
    intASCIINo% = ASC(strEachChar$)
    GOSUB doACoinToss:
    IF (strEachChar$ >= "a" AND strEachChar$ <= "z") OR (strEachChar$ >= "A" AND strEachChar$ <= "Z") THEN '...first, check that is a letter than we are changing: (a-z/A-Z)
        IF intCoinTossNo% = 1 THEN '...IF the coin toss = 1/heads; then, change the letter to become: lower case
            IF (ASC(strEachChar$) >= 65 AND ASC(strEachChar$) <= 90) THEN '...check if it's an UPPER CASE letter, first; before changing it to become lower case/otherwise, leave it as is
                strEachChar$ = CHR$(intASCIINo% + 32) '...change UPPER CASE letter into being lower case
            END IF
        ELSE '...IF the coin toss = 2/tails; then, change the letter to become: UPPER CASE
            IF (ASC(strEachChar$) >= 97 AND ASC(strEachChar$) <= 122) THEN '...check if it's a lower case letter, first; before changing it to become UPPER CASE/otherwise, leave it as is
                strEachChar$ = CHR$(intASCIINo% - 32) '...change lower case letter into being UPPER CASE
            END IF
        END IF
    END IF
    PRINT strEachChar$;
NEXT
PRINT
RETURN

doACoinToss:
RANDOMIZE TIMER
intCoinTossNo% = INT(RND * 2) + 1
RETURN
