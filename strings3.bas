'------------------------------------------------------------
'***  PROGRAM: Encode: Data split...
'    LANGUAGE: QBASIC/Version: QB64
'    COMPUTER: PC(home)/Windows 10 Pro
'------------------------------------------------------------
'   COPYRIGHT: (c)2019- Mr. Paul Ramnora./All rights reserved
'       EMAIL: pramnora@yahoo.com
'------------------------------------------------------------
'     CREATED: 021019 14:26 PM GMT
'     UPDATED: 021019 14:26 PM GMT
'------------------------------------------------------------
'The following link explains where the idea to create this program came from:
'https://github.com/pramnora/cryptography/blob/master/split-data-01.txt
'------------------------------------------------------------

'    What this program does...is it takes a single text string...;
'    and, then , divides it up into being 3 seperate parts...;
'    then, finally, the program prints out  each of the 3 seperate parts as being 3 separate strings.

'    NOTE:1): Valid character entries are: a-z/A-Z/0-9; (all other characters will be thrown out/'ignored').

'    NOTE(2): For the program to run at all...; then, the minimum string length has to be, at least, 3 characters)

'    Example: Enter the text string: ab
'             ...would output the following...
'             Please, enter a string of, at least, 3 characters in length. -Thanks!
'             (Then, the program would automatically re-run/start again.)

'    Example: Entering the text string: 'abcdef'
'             ...would create 3 separate strings would output as...

'    1>         ad
'    2>         be
'    3>         cf


'    NOTE(2): If the string does not divide evenly into 3's...; then, the string will be padded with a number of x's at the end.

'    Example: Entering the text string: '012345679' would output as...

'    1> 0369
'    2> 147x
'    3> 258x


'-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
'    *** LIST OF POSSIBLE FUTURE IMPROVEMENTS

'    1> The program could be made to calculate varying string block sizes; currently, the limit is 3 characters; but, it could also do:  2/3/4/5/6/7/8/9/10/-etc. characters, instead.
'-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

'*** Main program...

strPlainText$ = "This is a secret message." '...initialise string with a default value/(Not used if the user chooses to input the string themselves, instead.)

'*** Get user to input string...

CLS
PRINT "USER INSTRUCTIONS:"
PRINT "Please, enter a text string that is, at least, 3 letters in length. Thanks!"
PRINT
INPUT strPlainText$

'*** Validate user string...by using only characters: a-b/A-B/also, strip any spaces/or, upper case characters...changing these to become lower case, instead...

FOR intEachChar% = 1 TO LEN(strPlainText$)
    strEachChar$ = MID$(strPlainText$, intEachChar%, 1)
    IF (strEachChar$ >= "a" AND strEachChar$ <= "z") OR (strEachChar$ >= "A" AND strEachChar$ <= "Z") OR (strEachChar$ >= "0" AND strEachChar$ <= "9") THEN
        strCopy$ = strCopy$ + LCASE$(strEachChar$)
    END IF
NEXT

'***  Check user entered string size is, in fact, valid/or not...

intStringLen% = LEN(strCopy$) '...get string length

IF intStringLen% < 3 THEN '*** if the user entered string is less than 3 characters; then, re-run the program...
    PRINT "Please, enter a string of, at least, 3 characters in length. -Thanks!"
    SLEEP 3
    RUN
ELSE '*** otherwise, pad string with a number of x's at the end...if the string's full length does not exactly divide by 3...
    intNoOfSpaces% = intStringLen% MOD 3
    IF intNoOfSpaces% = 1 THEN strCopy$ = strCopy$ + "xx"
    IF intNoOfSpaces% = 2 THEN strCopy$ = strCopy$ + "x"
END IF

strPlainText$ = strCopy$ '...change original input string to become the copied string value

a$ = "": b$ = "": c$ = "" '...intialise 3 string variables as being empty strings ready to be output, later

'*** initialise the 3 string variables with actual values...

FOR intEachChar% = 1 TO LEN(strPlainText$) STEP 3
    a$ = a$ + MID$(strPlainText$, intEachChar%, 1)
    b$ = b$ + MID$(strPlainText$, intEachChar% + 1, 1)
    c$ = c$ + MID$(strPlainText$, intEachChar% + 2, 1)
NEXT

'*** printout the 3 seperate string values...

PRINT a$
PRINT b$
PRINT c$
