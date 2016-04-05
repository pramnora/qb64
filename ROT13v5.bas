CLS: PRINT "ROT13 Encoder/Decoder"
INPUT "Enter text to either encode/decode(A-Z/a-z)"; s$: s$ = UCASE$(s$)
FOR i% = 1 TO LEN(s$): e$ = MID$(s$, i%, 1)
    IF e$ <= "M" THEN n% = 13 ELSE n% = -13
    IF e$ >= "A" AND s$ <= "Z" THEN c$ = c$ + CHR$(ASC(e$) + n%)
NEXT: PRINT c$

'*** This is the final minified version of the code; as you can see it's only 5 lines long! 
'    The compression techniques used were as follows:
'    --> change all long variables names into becoming single letters
'    --> if at all possible use the colon(:) symbol to place 2 statements onto one single line
