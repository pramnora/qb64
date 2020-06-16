'------------------------------
'*** PROGRAM: Find pallindrome"
'------------------------------

'*** This program checks if the user entered word is a pallindrome/or, not?
'    If it is...; then, it outputs a message to confirm/otherwise, the output message denies it.

'----------------------------
'*** Variable declarations...
'----------------------------

strWord$ = ""
strCopy$ = ""
strYesNo$ = ""
strUnderline$ = "-"

'-------------------
'*** Main program...
'-------------------

DO
    GOSUB clearScreen
    PRINT "PROGRAM: Find pallindrome"
    PRINT
    PRINT "A word is a 'pallindrome', if it spells exactly the same"
    PRINT "when reading it going both backwards and forwards."
    PRINT
    PRINT "Some examples of words that are Pallindromes, include:"
    PRINT "Bob     - > boB"
    PRINT "Racecar - > racecaR"
    PRINT "-etc."
    GOSUB printUnderline
    INPUT "Enter word"; strWord$
    PRINT
    GOSUB doReverseWord
    GOSUB printIfAPallindrome
    PRINT strWord$; " = "; strCopy$
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
PRINT STRING$(80, strUnderline$)
RETURN

doReverseWord:
strCopy$ = ""
FOR intEachCharNo% = LEN(strWord$) TO 1 STEP -1
    strCopy$ = strCopy$ + MID$(strWord$, intEachCharNo%, 1)
NEXT
RETURN

printIfAPallindrome:
IF strWord$ = strCopy$ THEN
    PRINT "Yes, "; strWord$; " is a pallindrome."
ELSE
    PRINT "No, "; strWord$; " is NOT a pallindrome."
END IF
RETURN

