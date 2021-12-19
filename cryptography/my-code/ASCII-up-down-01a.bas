'--------------------------------------------
'*** PROGRAM: ASCII Encode/Decode...
'    LANGUAGE: QBASIC/Version: QB64
'    COMPUTER: Home based PC/Windows 10 Pro
'--------------------------------------------
'    AUTHOR: Mr. Paul Ramnora
'    EMAIL: pramnora@yahoo.com
'    COPYRIGHT: (C) 2021-, Mr. Paul Ramnora./
'               All rights reserved.
'--------------------------------------------
'    CREATED: 191221 09:15 AM GMT
'    UPDATED: 191221 09:15 AM GMT
'--------------------------------------------

'*** EXPLANATORY COMMENTS...
'    This program can be used to both encode/decode: (a-z/A-Z) text which the user types in.
'    The way the encoding/decoding process works is...
'    - if the letter is ODD eg. 1,3,5,-etc. meaning letters: A,C,E; then, the letter is encoded by the next adjacent letter: A -> B/B -> C/D -> E
'    - if the letter is EVEN eg. 2,4,6,-etc. meaning letters: B,D,F; then, the letter is encoded by the previous letter: B -> A/D -> C/F -> E
'    -etc.
'    So, for example...
'    ABC/(123)/ODD-EVEN-ODD -> BAD/(214)/EVEN-ODD-EVEN
'    Thus, if the user types in: ABC/those letters would be encoded to say: BAD/
'    and, if the user types in: BAD/those letters would be decoded to say: ABC.

'----------------------------
'*** Variable declarations...
'----------------------------

'--- integer: int/(%)...

intEachChar% = 0
intASCIINo% = 0

'--- string: str/($)...

strEachChar$ = ""
strEncDec$ = ""

'--------------------
'*** Main program....
'--------------------

CLS
PRINT "PROGRAM: ASCII Encode/Decode"
PRINT
INPUT "Enter text to encode/decode"; strUserText$
FOR intEachChar% = 1 TO LEN(strUserText$)
    strEachChar$ = UCASE$(MID$(strUserText$, intEachChar%, 1))
    IF strEachChar$ >= "A" AND strEachChar$ <= "Z" THEN
        intASCIINo% = ASC(strEachChar$) - 64
        IF (intASCIINo%) MOD 2 = 0 THEN
            strEncDec$ = strEncDec$ + CHR$((intASCIINo% + 64) - 1)
        ELSE
            strEncDec$ = strEncDec$ + CHR$((intASCIINo% + 64) + 1)
        END IF
    END IF
NEXT
PRINT STRING$(80, "-")
PRINT "Here is your text encoded/decoded: "
PRINT
PRINT strEncDec$
