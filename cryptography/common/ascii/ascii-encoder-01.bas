'**** PROGRAM: ASCII Encoder
'     CREATED: 010416 11:03 AM GMT
'     UPDATED: 010416 11:03 AM GMT
CLS
PRINT "PROGRAM: ASCII Encoder"
PRINT
PRINT "Enter some text to encode: (A-Z/a-z):"
INPUT strPlainText$
PRINT STRING$(80, "-");
FOR intEachChar% = 1 TO LEN(strPlainText$)
    strEachChar$ = UCASE$(MID$(strPlainText$, intEachChar%, 1))
    IF strEachChar$ >= "A" AND strEachChar$ <= "Z" THEN
        strEncoded$ = strEncoded$ + LTRIM$(STR$((ASC(strEachChar$))))
    END IF
NEXT
PRINT strEncoded$;
