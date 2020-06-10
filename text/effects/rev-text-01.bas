CLS
PRINT "PROGRAM: Reverse text"
PRINT
INPUT "Enter a string of text: ", aString$
PRINT
FOR eachLetterNo% = LEN(aString$) TO 1 STEP -1
    PRINT MID$(aString$, eachLetterNo%, 1);
NEXT
END
