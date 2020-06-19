'--------------------------------------------
'*** PROGRAM: Example: Substitution Cipher 01/
'                      (ASCII based.)
'--------------------------------------------

'-------------------------------------------------------------------------------------------------------

'*** NOTE: In a 'substituion cypher' the alphabet letter position does NOT change;
'          but, instead, remains exactly the same as is usual going from: A-Z.

'          What changes is the letter it is 'paired' to go with; for example...
'          ---> Encode: a = P      (process to encode)
'          ---> Decode: P = a      (reverse process to decode)
'          ...this is, also, an example of a 'symmetrical cipher';
'          where both the 'endcoding/decoding' process is, simply, done in reverse.

'-------------------------------------------------------------------------------------------------------

'*** This is a simple keyword/or, phrase based alphabet letters 'substitution cipher'...;
'    where the encoding is done by writing out your keyword/or, phrase, first;
'    and, then, this is followed by the rest of the alphabet sequence being written in order.

'    For example, if the keyword/phrase is based on my own name: Paul Ramnora;
'    then, I would begin the alphabet using this particular name/phrase...;
'    but, writing it out by using no repeat letters:
'    paulrmno
'    (both letters: 'a/r' repeat, twice; so, ignore these; as there should be only 'one' of each letter.)

'    The next step is to follow this keyword/phrase with all of the rest of the alphabet letters,
'    being written down using normal sequential order going from: A-Z;
'    and, without repeating any letters already listed in the keyword/phrase:
'    12345678901234567890123456
'    PAULRMNOBCDEFGHIJKQSTVWXYZ
'    The usual convention is to write...
'    ---> 'plain text', as being all 'lower case' letters: a-z/
'    ---> cipher text, as being all 'capital letters': A-Z

'    NOTE: The total number of letters should amount to 26;
'    which includes all of the alphabet letters going from: A-Z;
'    and, with no alphabet letter having been repeated.
'

'    So, we now have our 'ciphertext alphabet' ready for translating each letter...
'    12345678901234567890123456
'    abcdefghijklmnopqrstuvwxyz
'    PAULRMNOBCDEFGHIJKQSTVWXYZ


'    So, to 'encode' the text: This is a secret message.
'    -(Where all punctuation: full stops/spaces are ignored.)-
'    We get the following encoded message...
'    thisisasecretmessage
'    SOBQBQPQRUKRSFRQQPNR

'    In order to 'decode' the 'encoded' message;
'    then, simply, reverse this process...
'    where: S=t/O=h/B=i/Q=s/-etc.

'-------------------------------------------------------------------------------------------------------

'-------------------
'*** Main program...
'-------------------

DO
    strEncoded$ = ""
    strDecoded$ = ""
    CLS
    PRINT "Substitution Cipher 01: Encoder/decoder"
    GOSUB printUnderline
    INPUT "Enter some text to encode: ", strPlainText$
    PRINT
    PRINT " This is the text encoded: ";
    FOR intEachCharNo% = 1 TO LEN(strPlainText$)
        strEachChar$ = UCASE$(MID$(strPlainText$, intEachCharNo%, 1))
        IF strEachChar$ >= "A" AND strEachChar$ <= "Z" THEN
            intAsciiLetterNo% = ASC(strEachChar$) - 64
            GOSUB doEncode
        END IF
    NEXT
    PRINT strEncoded$
    GOSUB printUnderline
    INPUT "Enter some text to decode: ", strEncodedText$
    PRINT
    PRINT " This is the text decoded: ";
    FOR intEachCharNo% = 1 TO LEN(strEncodedText$)
        strEachChar$ = UCASE$(MID$(strEncodedText$, intEachCharNo%, 1))
        IF strEachChar$ >= "A" AND strEachChar$ <= "Z" THEN
            GOSUB doDecode
        END IF
    NEXT
    PRINT strDecoded$
    GOSUB printUnderline
    INPUT "Again, Y/N"; strYesNo$
LOOP UNTIL UCASE$(LEFT$(strYesNo$, 1)) <> "Y"
END

'-------------------
'*** Sub-routines...
'-------------------

clearScreen:
CLS
RETURN

printUnderline:
PRINT STRING$(80, "-")
RETURN

doEncode:
RESTORE
FOR intEachCipherLetterNo% = 1 TO intAsciiLetterNo%
    READ strCipherLetter$
    IF intEachCipherLetterNo% = intAsciiLetterNo% THEN
        strEncoded$ = strEncoded$ + strCipherLetter$
    END IF
NEXT
RETURN

doDecode:
intAsciiLetterNo% = 0
RESTORE
READ strCipherLetter$
DO
    intAsciiLetterNo% = intAsciiLetterNo% + 1
    IF strEachChar$ = strCipherLetter$ THEN
        PRINT CHR$(intAsciiLetterNo% + 64);
        EXIT DO
    END IF
    READ strCipherLetter$
LOOP UNTIL strCipherLetter$ = "EOF"
RETURN

'---------------------------
'*** DATA statements list...
'---------------------------

cipherTextAlphabet:
'*** keyword/(or, phrase)...(alphabet starts off with my name: 'paul ramnora'; but, using no repeated letters)...
DATA "P","A","U","L","R","M","N","O"
'*** ...to which all the rest of alphabet letter sequential order is enjoined/
'    (but, notice, doesn't contain any letters used inside of the keyword)...
DATA "B","C","D","E","F","G","H","I","J","K","Q","S","T","V","W","X","Y","Z"
'*** (E)nd (O)f (F)ile...
DATA "EOF"
