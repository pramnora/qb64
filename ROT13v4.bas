'*** Variable names:...
'n, intNum%
's1$, strPlaintext$
'ct$, strCipherText$
'i%, intEachChar%
'ec$, strEachChar%
CLS
PRINT "ROT13 Encoder/Decoder"
PRINT
INPUT "Enter text to either encode/decode(A-Z/a-z)"; s1$
s1$ = UCASE$(s1$)
FOR i% = 1 TO LEN(s1$)
    ec$ = MID$(s1$, i%, 1)
    IF ec$ <= "M" THEN n% = 13 ELSE n% = -13
    IF ec$ >= "A" AND s1$ <= "Z" THEN
        ct$ = ct$ + CHR$(ASC(ec$) + n%)
    END IF
NEXT
PRINT ct$

'*** NOTE: If you wish to further minify the above code, then:
'          delete all comment lines beginning with a single apostrophe:(');
'          and, also, delete the empty PRINT statement.
