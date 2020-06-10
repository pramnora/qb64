'----------------------------------------------
'***  PROGRAM: Find Primes...
'    LANGUAGE: QBASIC/Version: QB64
'    COMPUTER: Home based PC/Windows 10 Pro

'      AUTHOR: Mr. Paul Ramnora
'       EMAIL: pramnora@yahoo.com
'   COPYRIGHT: (c)2020,- Mr. Paul Ramnora/All rights reserved.

'     CREATED: Wed 23rd April 2020 01:45 PM GMT
'     UPDATED: Wed 23rd April 2020 01:45 PM GMT
'---------------------------------------------
'*** EXPLANATION:
'                 This program tries to find out if a number is prime or not...counting from 1 upwards.
'                 -(NOTE: Here I decided to use integers...which are limited in range to around 32,000;
'                         this can easily be changed by taking off the integer symbol: %.)-
'                 If the number is prime...2 factors found; then, the program prints out the letter: Y;
'                 if the number isn't prime...less than 2 factors/or, more than 2 factors; then, the program prints out the letter: N.

'    EXAMPLE RUN:
'                1 N
'                1 2 Y
'                1 2 3 Y
'                1 2 3 4 N
'                1 2 3 4 5 Y
'                1 2 3 4 5 6 N
'                1 2 3 4 5 6 7 Y
'                1 2 3 4 5 6 7 8 N
'                1 2 3 4 5 6 7 8 9 N
'                1 2 3 4 5 6 7 8 9 10 N
'                1 2 3 4 5 6 7 8 9 10 11 Y
'                -etc.

'-------------------
'*** Main program...
'-------------------

CLS
PRINT "PROGRAM: Find primes..."
FOR n1% = 1 TO 21
    c% = 0 '...c% counts up the total number of factors found
    FOR n2% = 1 TO n1%
        PRINT n2%;
        IF n1% MOD n2% = 0 THEN
            c% = c% + 1
        END IF
    NEXT
    IF c% = 2 THEN
        PRINT "Y"
    ELSEIF c% <= 1 OR c% > 2 THEN
        PRINT "N"
    END IF
NEXT
END
