'*** 050415 17:23 PM 
'    Created 'ROT13' qb64 program, which will both 'encrypt/decrypt' code.
'    I was 'inspired' to go and create this program after reading through a Wikipedia online article
'    directly referring to the use of ROT13: https://en.wikipedia.org/wiki/ROT13

'*** Global variable declations...

strPlaintext$ = ""
strEachChar$ = ""
strCiphertext$ = ""

'*** Main program...

CLS
PRINT "ROT13 Encoder/Decoder"
PRINT
INPUT "Text"; strPlaintext$
strPlaintext$ = UCASE$(strPlaintext$)
FOR intEachChar% = 1 TO LEN(strPlaintext$)
    strEachChar$ = MID$(strPlaintext$, intEachChar%, 1)
    IF strEachChar$ >= "A" AND strEachChar$ <= "M" THEN
        strCiphertext$ = strCiphertext$ + CHR$(ASC(strEachChar$) + 13)
    ELSEIF strEachChar$ >= "N" AND strEachChar$ <= "Z" THEN
        strCiphertext$ = strCiphertext$ + CHR$(ASC(strEachChar$) - 13)
    END IF
NEXT
PRINT strCiphertext$

'1> Example RUN(encode): 
'Text? abc
'NOP

'2> Example RUN(decode): 
'Text? nop
'ABC

'ROT 13: ABCDEFGHIJKLM
'        NOPQRSTUVWXYZ
