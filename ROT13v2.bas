strPlaintext$ = ""
strCiphertext$ = ""
CLS
PRINT "ROT13 Encoder/Decoder"
PRINT
PRINT "Enter text to either encode/decode(A-Z/a-z):"
INPUT strPlaintext$
strPlaintext$ = UCASE$(strPlaintext$)
FOR intEachChar% = 1 TO LEN(strPlaintext$)
    strEachChar$ = MID$(strPlaintext$, intEachChar%, 1)
    IF strEachChar$ <= "M" THEN num% = 13 ELSE num% = -13
    IF strEachChar$ >= "A" AND strPlaintext$ <= "Z" THEN
        strCiphertext$ = strCiphertext$ + CHR$(ASC(strEachChar$) + num%)
    END IF
NEXT
PRINT strCiphertext$
