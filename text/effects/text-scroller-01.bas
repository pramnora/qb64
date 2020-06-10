'---------------------------------------------------------------
'*** PROGRAM: Hello, world!/Create a scrolling marquee effect...
'   LANGUAGE: QBASIC/Version: QB64
'   COMPUTER: Home based desktop PC/Windows 10

'     AUTHOR: Mr. Paul Ramnora
'      EMAIL: pramnora@yahoo.com
'  COPYRIGHT: (c)2016, Mr. Paul Ramnora./All rights reserved.

'    CREATED: 180916 01:32 AM GMT
'    UPDATED: 180916 01:32 AM GMT
'---------------------------------------------------------------

'----------------------------
'*** Variable declarations...
'----------------------------

'---integer: (int)...

intXVertPos% = 13 '...sets the text vertical position
intYHoriPos% = 34 '...sets the text horizontal position

'---string: (str)...

strGreeting$ = "Hello, world!" '...sets the text to be output

'-------------------
'*** Main program...
'-------------------

GOSUB clearScreen
DO 'the program will continue looping until when the user presses any key to Quit...
    GOSUB centerText
    GOSUB printText
    GOSUB doPause
    GOSUB doSwapLettersAround
LOOP UNTIL INKEY$ <> ""
END

'-------------------
'*** Sub-routines...
'-------------------

clearScreen:
CLS
RETURN

centerText:
LOCATE intXVertPos%, intYHoriPos% '...center text on screen
RETURN

printText:
PRINT strGreeting$
RETURN

doSwapLettersAround:
strGreeting$ = RIGHT$(strGreeting$, LEN(strGreeting$) - 1) + LEFT$(strGreeting$, 1)
RETURN

doPause:
SLEEP 1
RETURN
