'*** PROGRAM: Encode/Part 1....
'   LANGUAGE: QBASIC/Version: QB64
'     AUTHOR: Mr. Paul Ramnora

'           S1 S2
'       A + R = T     Encode/Part 1  (this part...)
'       T - R = A     Decode/Part 2  (not yet started)

'*** Explanation: What the program does is it creates a secret message...
'                 1> The user is asked to enter their secret message text, first.
'                 2> The program next translates each letter into it's equivalent ASCII code nos: eg. A=65/B=66/C=67/-etc. (represented as: A)
'                 3> Next, a random number is choosen......................................................................(represented as: R)
'                 4> Finally, the random number is added to the ASCII Code no..............................................(represented as: T)
'                 ...and,thus, 2 separate number lists have been created...
'                 List 1 = random numbers list.............................................................................(represented as: S1)
'                 List 2 = totals list.....................................................................................(represented as: S2)
'                 To encode data we use the formula: A + R = T
'                 To decode data we use the formula: T - R = A
'                 ...essentially, the program creates what is known as being called: a 'symmetrical' cipher.
'
'----------------------------
'*** Variable declarations...
'----------------------------

intRandNo% = 0
intMaxRandNo% = 100

'-------------------
'*** Main program...
'-------------------

CLS
INPUT "Enter string: ", strAString$
PRINT
PRINT "L"; "   ASCII", "-", "LN", "S1/RN", "S2/T"
PRINT
FOR intEachLetter% = 1 TO LEN(strAString$)
    strEachLetter$ = MID$(strAString$, intEachLetter%, 1)
    PRINT strEachLetter$; "   ";
    intASCIICodeNo% = ASC(strEachLetter$)
    PRINT intASCIICodeNo%,
    IF intASCIICodeNo% >= 65 AND intASCIICodeNo% <= 90 THEN
        PRINT -64, intASCIICodeNo% - 64,
    ELSEIF intASCIICodeNo% >= 97 AND intASCIICodeNo% <= 122 THEN
        PRINT -96, intASCIICodeNo% - 96,
    ELSE
        PRINT "-", "_",
    END IF
    GOSUB getRandomNumber
    intTotal% = intASCIICodeNo% + intRandNo%
    PRINT intRandNo%, intTotal%
NEXT

END

'-------------------
'*** Sub-routines...
'-------------------

getRandomNumber:
RANDOMIZE TIMER
intRandNo% = INT(RND * intMaxRandNo%) + 1
RETURN
