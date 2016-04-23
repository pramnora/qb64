'**** PROGRAM: ASCII Decoder
'     CREATED: 230416 12:07 PM GMT
'     UPDATED: 230416 12:07 PM GMT
CLS
PRINT "PROGRAM: ASCII Decoder"
PRINT
PRINT "Enter some text to decode: (65-90):"
INPUT strCipherText$
PRINT STRING$(80, "-");
FOR intEachPairOfDigits% = 1 TO LEN(strCipherText$) STEP 2
    intASCIICode% = VAL(MID$(strCipherText$, intEachPairOfDigits%, 2))
    IF intASCIICode% >= 65 AND intASCIICode% <= 90 THEN
        strPlainText$ = strPlainText$ + CHR$(intASCIICode%)
    END IF
NEXT
PRINT strPlainText$;
