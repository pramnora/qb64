'-----------------------------------
'***  PROGRAM: Database retrieval.../
'              Look up chart.
'    LANGUAGE: QBASIC/Version QB64

'    CREATED: 110823 17:42 PM GMT
'    UPDATED: 110823 17:42 PM GMT
'-----------------------------------

'*** Explanation:

'    This program uses a FOR/NEXT loop...
'    in conjunction with a DATA statements list,
'    -which is fouund at the very bottom of the program-;
'    to display each Alphabet letter ranging from: A-Z/
'    alongside it's corresponding Nato Phonetic code.

'    Eg. The output displays as...

'        A Alpha         K Kilo
'        B Bravo         L Lima
'        C Charlie       M Mike
'        -etc.

'*** Coding style...

'    I've used a LOCATE statement together with two positional variables: yVertPos%,hHoriPos%;
'    in order to position the DATA on screen...as being 2 separate rows...
'    -(26 alphabet letters/halfed = 13...thus, 2 rows of 13 letters is displayed)-;
'    otherwise, the output wouldn't quite fit the display screen properly.
'    (Though, a different way around this would be to set a more specific screen size.)

'    Because, I already knew exactly what was the data length, namely: 1-26 alphabet letters;
'    therefore, I didn't bother using a non specific DO UNTIL/LOOP using a final data statement as...
'    DATA "","EOF"
'    ...End Of File  to READ in the DATA...;
'    as I felt a FOR/NEXT loop would be a lot more specific number wise.

'    However, if one really wanted to adapt the program to include other data sets...;
'    then, a non specific DO UNTIL/LOOP together with RESTORE/READ would have worked much better.

'    I could have used, simply...
'    RESTORE
'    ...instead, of a DATA Statement label...
'    RESTORE alphabetLetters:
'    ...but, I just thought the latter would read a lot more clear.

'---------------------------
'*** Initialise variables...
'---------------------------

intYVertPos% = 3: intXHoriPos% = 1

'-------------------
'*** Main Program...
'-------------------

Cls
Print "Alphabet letter", "Nato Phonetic Code"
Print
Restore lblAlphabetLetters:
For intEachAlphabetCharNo% = 1 To 26
    Read strEachAlphabetChar$, strEachNatoPhoneticCode$
    Locate intYVertPos%, intXHoriPos%
    Print strEachAlphabetChar$, strEachNatoPhoneticCode$
    intYVertPos% = intYVertPos% + 1
    If intYVertPos% = 16 Then
        intYVertPos% = 3: intXHoriPos% = 30
    End If
Next
End

'-----------------------------------------------------
'*** DATA Format: AlphabetLetter,Nato Phonetic Code...
'-----------------------------------------------------

lblAlphabetLetters:

Data "A","Alpha"
Data "B","Bravo"
Data "C","Charlie"
Data "D","Delta"
Data "E","Echo"

Data "F","Foxtrot"
Data "G","Golf"
Data "H","Hotel"
Data "I","India"
Data "J","Juliet"

Data "K","Kilo"
Data "L","Lima"
Data "M","Mike"
Data "N","November"
Data "O","Oscar"

Data "P","Papa"
Data "Q","Quebec"
Data "R","Romeo"
Data "S","Sierra"
Data "T","Tango"

Data "U","Uniform"
Data "V","Victor"
Data "W","Whiskey"
Data "X","X-Ray"
Data "Y","Yankee"

Data "Z","Zulu"
