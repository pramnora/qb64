'-------------------------------------------------------------
'***  PROGRAM: Find primes
'    LANGUAGE: QBASIC/QB64 version

'    COMPUTER: Home based PC
'          OS: Windows 10 Pro.
'      MEMORY: HDD 500 GB/RAM 6 GB
'   PROCESSOR: Intel Core i3 3220/3.30 GHz x 2

'      AUTHOR: Mr. Paul Ramnora
'       EMAIL: pramnora@yahoo.com
'   COPYRIGHT: (c)2020-, Mr. Paul Ramora./All rights reserved.

'     CREATED: 280320 18:43 PM GMT
'     UPDATED: 280320 18:43 PM GMT
'-------------------------------------------------------------

'*** NOTES: According to the following web site:

'           https://www.numbers.education/0.html
'           https://www.numbers.education/1.html

'...neither, 0/nor 1 are prime numbers;
'   and, the lowest integer prime number is: 2/(which also happens to be the only 'even' prime number.

'-----

'*** Algorithmically speaking, where the aim is the find what is the most 'efficent' search to find prime numbers...

'    1> you can cast out both 0/1; then, start at 2...; then, cast out any further 'even' numbers going up from there
'    2> and, also, once you've gone past the 'square root' of the number you can stop doing any further searching.

'    I'm not sure I understand this 2nd line too well; as 100...its square root=10...but, there are still numbers on top
'    which are factors of 100...eg. 20/25/50.

'    The above web site also mentioned: 'the sieve of Erastothenes'

'----------------------------
'*** Variable declarations...
'----------------------------

n% = 1 '...the number we have to check for factors, and/or, is prime
c% = 0 '...the total number of factors found

'-------------------
'*** Main program...
'-------------------

CLS

PRINT "PROGRAM: Find primes"
PRINT "-------------------------------------------------------------"
PRINT "RULE: A 'prime number' contains only 2 factors: 1 and itself;"
PRINT "      anymore than this...and, it is NOT a prime number."
PRINT "-------------------------------------------------------------"

INPUT "Number: ", n%
PRINT
PRINT "Found", "Factor"
PRINT ""

FOR i% = 1 TO n%
    IF n% MOD i% = 0 THEN
        c% = c% + 1 '...increment c by + 1 each time a factor is found
        PRINT c%; ">", i% '...print counter number > loop number
    END IF
NEXT

PRINT
PRINT "The number "; n%; "contains"; c%; "factors; therefore, it is";

IF c% = 2 THEN
    PRINT " a prime number";
ELSE
    PRINT " NOT a prime number";
END IF
PRINT "."

PRINT "-------------------------------------------------------------"
INPUT "Again, Y/N"; yesNo$
IF UCASE$(LEFT$(yesNo$, 1)) = "Y" THEN RUN

END
