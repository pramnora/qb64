strPlaintext$ = ""
strCiphertext$ = ""
strEachChar$ = ""
intNum% = 0
CLS
PRINT "ROT13 Encoder/Decoder"
PRINT
PRINT "Enter text to either encode/decode(A-Z/a-z):"
INPUT strPlaintext$
strPlaintext$ = UCASE$(strPlaintext$)
FOR intEachChar% = 1 TO LEN(strPlaintext$)
    strEachChar$ = MID$(strPlaintext$, intEachChar%, 1)
    IF strEachChar$ <= "M" THEN intNum% = 13 ELSE intNum% = -13
    IF strEachChar$ >= "A" AND strPlaintext$ <= "Z" THEN
        strCiphertext$ = strCiphertext$ + CHR$(ASC(strEachChar$) + intNum%)
    END IF
NEXT
PRINT strCiphertext$
