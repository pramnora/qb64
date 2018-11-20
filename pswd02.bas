'*************************************************************
'     PROGRAM: Guess the password.../Version: 1.0.1
'              Captures the password, alone; 
'              also, prints out a temporary error message.
'    LANGUAGE: QBASIC/Version: QB64 (a FREE internet download)

'    COMPUTER: Home based PC
'          OS: Windows 10 Professional

'      AUTHOR: Mr. Paul Ramnora
'       EMAIL: pramnora@yahoo.com
'   COPYRIGHT: (c)2018-, Mr. Paul Ramnora./All rights reserved.

'    CREATED:  Mon 19th November 2018 22:33 PM GMT
'    UPDATED:  Mon 19th November 2018 22:33 PM GMT
'**************************************************************

'****************************
'*** Variable declarations...
'****************************

'--- string: (str/$)...

strPassword$ = "abcd1234" '...variable sets the password to be guessed at/NOTE: 8 characters in length
strUserGuess$ = "" '...variable used to store the users guess

'--- integer: (int/%)...

intNoOfSeconds% = 1 '...time to pause whilst displaying error message

'*******************
'*** Main program...
'*******************

DO 'this is an endless loop...which keeps on running until when the user guesses the password correctly...
    GOSUB clearScreen
    GOSUB printTitle
    GOSUB getUserGuess
    IF strUserGuess$ <> strPassword$ THEN '...IF strUserGuess does NOT equal: <> strPassword THEN
        GOSUB printErrorMessage
        GOSUB doWait '...display error message on screen for 1 second
    END IF
LOOP UNTIL strUserGuess$ = strPassword$

GOSUB clearScreen
GOSUB printWelcomeScreen

END '...END of program/halt execution

'*******************
'*** Sub-routines...
'*******************

clearScreen:
CLS '...(CL)ear the (S)creen
RETURN

printTitle:
PRINT "PROGRAM: Guess the password"
PRINT
RETURN

getUserGuess:
INPUT "Enter password: ", strUserGuess$
RETURN

printErrorMessage:
PRINT
PRINT "-Sorry, invalid password! Please, try again..."
RETURN

doWait:
SLEEP intNoOfSeconds%
RETURN

printWelcomeScreen:
PRINT "Date/Time: "; DATE$; " "; TIME$
PRINT
PRINT "Welcome back! ;-)"
RETURN
