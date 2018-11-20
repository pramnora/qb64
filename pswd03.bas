'*************************************************************
'     PROGRAM: Guess both username/password.../Version: 1.0.2
'    LANGUAGE: QBASIC/Version: QB64 (a FREE internet download)

'    COMPUTER: Home based PC
'          OS: Windows 10 Professional

'      AUTHOR: Mr. Paul Ramnora
'       EMAIL: pramnora@yahoo.com
'   COPYRIGHT: (c)2018-, Mr. Paul Ramnora./All rights reserved.

'    CREATED:  Mon 19th November 2018 23:10 PM GMT
'    UPDATED:  Mon 19th November 2018 23:10 PM GMT
'**************************************************************

'****************************
'*** Variable declarations...
'****************************

'--- string: (str/$)...

strUsername$ = "John" 'variable sets the username
strPassword$ = "abcd1234" '...variable sets password which is related to a particular username/NOTE: Password is 8 characters in length

strUserGuess1$ = "" '...variable used to store the users username guess
strUserGuess2$ = "" '...variable used to store the users password guess

'--- integer: (int/%)...

intNoOfSeconds% = 1 '...time to pause whilst displaying error message

'*******************
'*** Main program...
'*******************

DO 'this is an endless loop...which keeps on running until when the user guesses both the username/password correctly...
    GOSUB clearScreen
    GOSUB printTitle
    GOSUB getUserName
    GOSUB getUserPassword
    '*** NOTE: The UCASE$() function is used on both: strUserGuess1$/strUsername$...in order to make testing the username 'case insensitive';
    '          however, the password remains 'case sensitive'...and, therefore, needs to be entered exactly in regards to case...
    IF (UCASE$(strUserGuess1$) <> UCASE$(strUsername$)) AND (strUserGuess2$ <> strPassword$) THEN
        GOSUB printErrorMessage
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

getUserPassword:
INPUT "Enter password: ", strUserGuess2$
RETURN

printErrorMessage:
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
