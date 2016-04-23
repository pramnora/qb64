'**** PROGRAM: ASCII Decoder
'     CREATED: 230416 12:07 PM GMT
'     UPDATED: 230416 12:07 PM GMT
CLS
PRINT "PROGRAM: ASCII Decoder"
PRINT
PRINT "Enter some numbers to decode: (65-90):"
INPUT strPlainText$
PRINT STRING$(80, "-");
FOR intEachPairOfDigits% = 1 TO LEN(strPlainText$) STEP 2
    intASCIICode% = VAL(MID$(strPlainText$, intEachPairOfDigits%, 2))
    IF intASCIICode% >= 65 AND intASCIICode% <= 90 THEN
        strDecoded$ = strDecoded$ + CHR$(intASCIICode%)
    END IF
NEXT
PRINT strDecoded$;
