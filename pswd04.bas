'*************************************************************
'     PROGRAM: Guess the password.../Version: 1.0.3
'    LANGUAGE: QBASIC/Version: QB64 (a FREE internet download)

'    COMPUTER: Home based PC
'          OS: Windows 10 Professional

'      AUTHOR: Mr. Paul Ramnora
'       EMAIL: pramnora@yahoo.com
'   COPYRIGHT: (c)2018-, Mr. Paul Ramnora./All rights reserved.

'    CREATED:  Mon 19th November 2018 23:40 PM GMT
'    UPDATED:  Tue 20th November 2018 00:29 AM GMT
'**************************************************************

'****************************
'*** Variable declarations...
'****************************

'--- string: (str/$)...

strUsername$ = "John" 'variable sets the username
strPassword$ = "abcd1234" '...variable sets password which is related to a particular username/NOTE: Password is 8 characters in length
strAnyKey$ = "" '...variable used to capture any incoming key press/used in conjunction with INKEY$

strUserGuess1$ = "" '...variable used to store the users username guess
strUserGuess2$ = "" '...variable used to store the users password guess

'--- integer: (int/%)...

intNoOfSeconds% = 2 '...time to pause whilst displaying error message

'*******************
'*** Main program...
'*******************

DO 'this is an endless loop...which keeps on running until when the user guesses both the username/password correctly...
    GOSUB clearScreen
    GOSUB printTitle
    GOSUB getUserName
    GOSUB checkUserName
    GOSUB getUserPassword
    '*** NOTE: The UCASE$() function is used on both: strUserGuess1$/strUsername$...in order to make testing the username 'case insensitive';
    '          however, the password remains 'case sensitive'...and, therefore, needs to be entered exactly in regards to case...
    IF (UCASE$(strUserGuess1$) <> UCASE$(strUsername$)) AND (strUserGuess2$ <> strPassword$) THEN
        GOSUB printInvalidUsernamePasswordMatch
        GOSUB doWait
    END IF
LOOP UNTIL (UCASE$(strUserGuess1$) = UCASE$(strUsername$)) AND (strUserGuess2$ = strPassword$)

GOSUB clearScreen
GOSUB printWelcomeScreen

END

'*******************
'*** Sub-routines...
'*******************

clearScreen:
CLS
RETURN

printTitle:
PRINT "PROGRAM: Guess the password"
PRINT
RETURN

getUserName:
INPUT "Enter username: ", strUserGuess1$
RETURN

checkUserName:
IF strUserGuess1$ = "" THEN
    PRINT
    PRINT "-Sorry, invalid username!"
    PRINT " Username cannot be merely an empty string?!"
    PRINT " Please, try again..."
    GOSUB doWait
    RUN
END IF
RETURN

getUserPassword:
strUserGuess2$ = "" '...wipe out any previous value of the guessed password
PRINT "Enter password: ";
DO 'loop until when the [ENTER] key/CHR$(13) is pressed...
    strAnyKey$ = INKEY$
    IF (strAnyKey$ <> "") AND (strAnyKey$ <> CHR$(13)) THEN '...IF the key pressed is NOT nothing...AND...it's NOT the [ENTER] key, then...
        strUserGuess2$ = strUserGuess2$ + strAnyKey$ '...add the key press into strUserGuess2$
        PRINT "*"; '...print out the asterix symbol which is used as a mask to hide each new password character having been entered
    END IF
LOOP UNTIL strAnyKey$ = CHR$(13)
PRINT '...this PRINT statement is necessary to include to prevent all future printing to go onto the one same line
RETURN

printInvalidUsernamePasswordMatch:
PRINT
PRINT "-Sorry, invalid username/password! Please, try again..."
RETURN

doWait:
SLEEP intNoOfSeconds%
RETURN

printWelcomeScreen:
PRINT "Date/Time: "; DATE$; " "; TIME$
PRINT
PRINT "Welcome back, "; strUsername$; "! ;-)"
RETURN
