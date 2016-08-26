'-------------------------------------------------------
'*** PROGRAM: NATO Phonetic Alphabet/Q & A test (Version II)
'  REFERENCE: https://en.wikipedia.org/wiki/NATO_phonetic_alphabet

'   LANGUAGE: QBASIC 64
'   COMPUTER: Home based PC

'    CREATED: 260816 15:21 PM GMT
'    UPDATED: 260816 15:21 PM GMT

'  COPYRIGHT: (c)2016, Paul Ramnora./All rights reserved.
'--------------------------------------------------------

'-----------------------
'*** Global variables...
'-----------------------

'*** variable type: integer/(int)...

intRndNum% = 0

'*** variable type: string/(str)...

strUserGuess$ = ""
strUserKeyPress$ = ""

'*** 2 x paralell arrays, variable type: string/(str)...

DIM strLetter$(26), strCode$(26)

strLetter$(1) = "A": strCode$(1) = "Alpha"
strLetter$(2) = "B": strCode$(2) = "Bravo"
strLetter$(3) = "C": strCode$(3) = "Charlie"
strLetter$(4) = "D": strCode$(4) = "Delta"
strLetter$(5) = "E": strCode$(5) = "Echo"
strLetter$(6) = "F": strCode$(6) = "Foxtrot"
strLetter$(7) = "G": strCode$(7) = "Golf"
strLetter$(8) = "H": strCode$(8) = "Hotel"
strLetter$(9) = "I": strCode$(9) = "India"
strLetter$(10) = "J": strCode$(10) = "Juliette"
strLetter$(11) = "K": strCode$(11) = "Kilo"
strLetter$(12) = "L": strCode$(12) = "Lima"
strLetter$(13) = "M": strCode$(13) = "Mike"
strLetter$(14) = "N": strCode$(14) = "November"
strLetter$(15) = "O": strCode$(15) = "Oscar"
strLetter$(16) = "P": strCode$(16) = "Papa"
strLetter$(17) = "Q": strCode$(17) = "Quebec"
strLetter$(18) = "R": strCode$(18) = "Romeo"
strLetter$(19) = "S": strCode$(19) = "Sierra"
strLetter$(20) = "T": strCode$(20) = "Tango"
strLetter$(21) = "U": strCode$(21) = "Uniform"
strLetter$(22) = "V": strCode$(22) = "Victor"
strLetter$(23) = "W": strCode$(23) = "Whiskey"
strLetter$(24) = "X": strCode$(24) = "X-ray"
strLetter$(25) = "Y": strCode$(25) = "Yankee"
strLetter$(26) = "Z": strCode$(26) = "Zulu"

'-------------------
'*** Main program...
'-------------------

DO '*** infinite loop...until '*' key is pressed...
    CLS
    PRINT "NATO Phonetic Alphabet/Q & A test"
    PRINT
    RANDOMIZE TIMER
    intRndNum% = INT(RND * 26) + 1
    PRINT "What is: "; strLetter$(intRndNum%)
    INPUT strUserGuess$
    PRINT
    PRINT "The answer is: "
    PRINT strCode$(intRndNum%)
    PRINT
    PRINT "-(Hit [SPACEBAR] to continue.../or, hit star key: '*', to Quit!)-"
    DO
        strUserKeyPress$ = INKEY$
    LOOP UNTIL strUserKeyPress$ <> ""
LOOP UNTIL strUserKeyPress$ = "*"
END
