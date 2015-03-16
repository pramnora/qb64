'**********************************
'*** PROGRAM: Print Text Message...
'**********************************

'-----------------------------------
'*** Global variable declarations...
'-----------------------------------

'*** string($) variables...

text$ = "Hello, world!"

'-------------------
'*** Main program...
'-------------------

GOSUB clearScreen
GOSUB printMessage
END

'-------------------
'*** Sub-routines...
'-------------------

clearScreen:
CLS
RETURN

printMessage:
PRINT text$
RETURN

'*** Program output when function key: [F5] is pressed...

'Hello, world!
