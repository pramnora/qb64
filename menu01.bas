'----------------------------------------
'*** PROGRAM: Main Menu...
'    LANGUAGE: QB64
'    COMPUTER: Home based PC/Windows 10

'    AUTHOR: Mr. Paul Ramnora
'    EMAIL: pramnora@yahoo.com

'    CREATED: 15th SEP 2016 18:52 PM GMT
'    UPDATED: 15th SEP 2016 18:52 PM GMT
'----------------------------------------

'*** NOTE: This is a menu driven program; to get it to stop looping...; then, press key: Q.

'----------------------------
'*** Variable declarations...
'----------------------------

strUserKeyPress$ = ""

'-------------------
'*** Main program...
'-------------------

DO 'the program will continue looping...until whenever the users presses key: Q to Quit...
    GOSUB clearScreen
    GOSUB printMenuHeading
    GOSUB printMenuOptions
    GOSUB getUserKeyPress
    GOSUB doUserSelectedOption
LOOP UNTIL UCASE$(strUserKeyPress$) = "Q"
END

'-------------------
'*** Sub-routines...
'-------------------

clearScreen:
CLS
RETURN

printMenuHeading:
PRINT "Main Menu"
PRINT
RETURN

printMenuOptions:
PRINT "1> Option one"
PRINT "2> Option two"
PRINT "3> Option three"
PRINT
PRINT "Hit key: 'Q', to Quit!"
RETURN

getUserKeyPress:
DO
    strUserKeyPress$ = INKEY$ '...here the users key press is both captured/and, then, stored inside of memory
LOOP UNTIL strUserKeyPress$ <> ""
RETURN

doUserSelectedOption:
SELECT CASE VAL(strUserKeyPress$)
    CASE 1: GOSUB menuOption1
    CASE 2: GOSUB menuOption2
    CASE 3: GOSUB menuOption3
END SELECT
RETURN

menuOption1:
GOSUB clearScreen
PRINT "Option 1"
PRINT
PRINT "Hit any key to return back to main menu..."
GOSUB waitForAnyKeyToBePressed
RETURN

menuOption2:
GOSUB clearScreen
PRINT "Option 2"
PRINT
PRINT "Hit any key to return back to main menu..."
GOSUB waitForAnyKeyToBePressed
RETURN

menuOption3:
GOSUB clearScreen
PRINT "Option 3"
PRINT
PRINT "Hit any key to return back to main menu..."
GOSUB waitForAnyKeyToBePressed
RETURN

waitForAnyKeyToBePressed:
SLEEP '...here the users key press is NOT captured/the key press value isn't kept; but, ignored
RETURN

