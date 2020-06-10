'-------------------------------------------------------
'*** PROGRAM: NATO Phonetic Alphabet/Q & A test
'  REFERENCE: https://en.wikipedia.org/wiki/NATO_phonetic_alphabet

'   LANGUAGE: QBASIC 64
'   COMPUTER: Home based PC

'    CREATED: 260816 13:47 PM GMT
'    UPDATED: 260816 13:47 PM GMT

'  COPYRIGHT: (c)2016, Paul Ramnora./All rights reserved.
'--------------------------------------------------------
'*** POSSIBLE FUTURE CHANGES TO MAKE...

'    This code uses a look up table...
'    in the form of long list of DATA statements to search through;
'    however, this is a long form of searching...
'    namely, each time the program runs it starts off with letter: A; 
'    then, continues searching through all the rest of the alphabet: A,B,C,-etc.;
'    until when it finds the corresponding (random number: 1-26) letter.

'    A shorter way to search...is to store the data inside of 2 paralell arrays using numbered indexes, instead...
'    DIM Letters$(26), Codes$(26)
'    Letters$(1)="A": Codes$(1)="Alpha"
'    Letters$(2)="B": Codes$(2)="Bravo"
'    ...-etc.
'    Now, instead, of having to search through a look up table...;
'    You could instantly access the numbered array index without having to do any looks ups at all.

'-----------------------
'*** Global variables...
'-----------------------

'*** variable type: integer/(int)...

intRndNum% = 0
intEachDataItem% = 0

'*** variable type: string/(str)...

strAlphabetLetter$ = ""
strCodeName$ = ""
strUserGuess$ = ""
strUserKeyPress$ = ""

'-------------------
'*** Main program...
'-------------------

DO '*** infinite loop...until '*' key is pressed...
    CLS
    PRINT "NATO Phonetic Alphabet/Q & A test"
    PRINT
    GOSUB getARandomNumber
    RESTORE
    FOR intEachDataItem% = 1 TO intRndNum%
        READ strAlphabetLetter$, strCodeName$
    NEXT
    PRINT "What is: "; strAlphabetLetter$
    INPUT strUserGuess$
    PRINT
    PRINT "The answer is: "
    PRINT strCodeName$
    PRINT
    PRINT "-(Hit [SPACEBAR] to continue.../or, hit star key: '*', to Quit!)-"
    DO
        strUserKeyPress$ = INKEY$
    LOOP UNTIL strUserKeyPress$ <> ""
LOOP UNTIL strUserKeyPress$ = "*"
END

'-------------------
'*** Sub-routines...
'-------------------

getARandomNumber:
RANDOMIZE TIMER
intRndNum% = INT(RND * 26) + 1
RETURN

'-------------------------------------------------------
'*** DATA FORMAT: Alphabet Letter, Alphabet Code Name...
'-------------------------------------------------------

DATA "A","Alpha"
DATA "B","Bravo"
DATA "C","Charlie"
DATA "D","Delta"
DATA "E","Echo"

DATA "F","Foxtrot"
DATA "G","Golf"
DATA "H","Hotel"
DATA "I","India"
DATA "J","Juliette"

DATA "K","Kilo"
DATA "L","Lima"
DATA "M","Mike"
DATA "N","November"
DATA "O","Oscar"

DATA "P","Papa"
DATA "Q","Quebec"
DATA "R","Romeo"
DATA "S","Sierra"
DATA "T","Tango"

DATA "U","Uniform"
DATA "V","Victor"
DATA "W","Whiskey"
DATA "X","X-ray"
DATA "Y","Yankee"

DATA "Z","Zulu"
