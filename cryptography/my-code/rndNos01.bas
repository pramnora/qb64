'------------------------------------------------------
'***  PROGRAM: Random numbers code/Version 01...
'    LANGUAGE: QBASIC, Version: QB64

'    COMPUTER: Home based Desktop PC
'          OS: Windows 10 Pro

'      AUTHOR: Mr. Paul Ramnora
'       EMAIL: pramnora@yahoo.com
'    LOCATION: London, UK

'     CREATED: Mon 6th Mar 2023 13:29 PM GMT
'     UPDATED: Tue 7th Mar 2023 07:55 AM GMT
'------------------------------------------------------

' Introduction...

' In essence, this program is a 'substitutional cypher'...where one character gets replaced by another: A -> X...;
' where X can be any character/or else, series of characters you please...other than itself.

' This program is going to create an alphabet/numbers related array,
' which uses a series of 10 random numbers to represent each of the 26 array letters: (A-Z).
' DIM letters$(26,1)

' (NOTE: This array is due to be expanded on later...so, that each letter has, at least, 10 x 10 numbers to represent it;
' so, eventually, the array will be declared as: letters$(26,10)
' but, for now, for simplicity sake/and, also, strictly 'test' purposes, alone; therefore, I've choosen instead to keep it as: letters$(26,1)

' Each individual letter will have a series of 10 random numbers being used to represent it.
' For example:
' letters%(1,1) = 1357984206 = A
' letters%(2,1) = 0428563197 = B
' letters%(3,1) = 5731284906 = C
' ...and, so on...
' letters%(26,1) = 3726501489 = Z

' The program uses 3 loops...
' - an outer loop, creates the variations inside of the array: araLetters$(n,VariationNo)
' - a middle loop, refers to each new array letter/number(1-26): a, b, c, -etc. araLetters$(LetterNo,n)
' - an inner loop, calls a sub-routine which creates a 10 length series of digits...consisting of random numbers going from: 0-9;

' the innermost loop repeats 10 times...to thus form a 10 random numbers digit string...which is stored inside of the array.

' Then, when the program is done...; it will check if each number is, in fact, wholly 'unique';
' thus, there should be no 'repeat' sequence of numbers. (NOTE: I will create this part, later.)

' Finally, we enter some data to be encoded: abc;
' and, we should get returned as output 30 random numbers from the array used to represent each individual letter: (a-z).

'-----

' LIST OF POSSIBLE FUTURE UPDATES...

' Because this program creates entirely 'random numbers' each time it is run...used to do both the symmetrical 'encoding/decoding' process;
' therefore, one would need to print out what is the original encoding method...in order to 'decode' any future messages.

' For now, at least, the program is being kept very straight forwards and simple. Which means it is possible to detect such things as...

' - encoding message length: 10/hint: one could choose to vary the message length.

' - repeated character encoding: a = 1234567890 (so, once, 'a' is successfully decoded...all 'a's are decoded;
' however, my intention is to make each letter encoded by an entirely different number...even, if it is the same letter.

' NOTE: So far this program is just merely getting 'started'...; and, thus, this code remains UNFINISHED...

'-----

' BUG FOUND LIST...
'

'-----

' LIST OF SCHEDULED UPDATES...
' - Done 'encode' section...; next, need to add a 'decode' section
' - Possibly, add a menu...with options: show code database, encode, decode, -etc.

'----------------------------
'*** Variable declarations...
'----------------------------

intNoOfLetters% = 26
intNoOfVariations% = 2

intNoOfRndDigits% = 10 '...I choose the number 10 as it's very highly unlikely you will get say 10 of the same random numbers;
' ie. 10 x 6's all in a row...?!
'...nevertheless, it's a good idea for the program to do a check that each number is, truly, 'unique';
'because there shouldn't be any repeats...as each letter needs to be encoded/decoded 'uniquely'.

Dim araLetters$(intNoOfLetters%, intNoOfVariations%) '...array holds each of 26 letters: (a-z)/
'                                                        random number sequence(10 digits long) with variations

strYesNo$ = "" '...variable used to capture user input if they wish to re-run the program, agian

'-------------------
'*** Main program...
'-------------------

Do

    For intEachVariation% = 1 To intNoOfVariations%

        For intEachLetterNo% = 1 To intNoOfLetters%

            strRndNo$ = ""

            For intEachRndNo% = 1 To intNoOfRndDigits% '...loop end no selects how many random number digits to include

                GoSub getRandomNumber '...get a random number as an integer
                strRndNo$ = strRndNo$ + Right$(Str$(intRndNo%), 1) '...convert integer random number to become a string
                araLetters$(intEachLetterNo%, intEachVariation%) = strRndNo$ '...store random number string inside of array

            Next

            '...display each array value as ouput...
            'aPrint "araLetters("; intEachLetterNo%; ","; intNoOfVariations%; " ) = X"; araLetters$(intEachLetterNo%, intNoOfVariations%); "X"

        Next

    Next

    Input "Enter text to encode: ", strPlainText$
    strPlainText$ = UCase$(strPlainText$) '...convert user input to being all upper case letters
    'Print strPlainText$
    For intEachChar% = 1 To Len(strPlainText$) '...loop captures each individual letter then user entered
        strEachLetter$ = Mid$(strPlainText$, intEachChar%, 1)
        If strEachLetter$ >= "A" And strEachLetter$ <= "Z" Then
            'Print "x"; strEachLetter$; "x"
            intASCIILetterNo% = Asc(strEachLetter$) - 64 '...convert the upper case ASCII letter: (A-Z) to being a letter number(1-26)
            'Print intASCIILetterNo%
            strEncoded$ = strEncoded$ + araLetters$(intASCIILetterNo%, 1) + " "
        End If
    Next

    Print strEncoded$

    '   These printout statements are used to display the 2nd variation of random numbers...
    '    Print "XXX"; araLetters$(1, 2); "XXX"
    '    Print "XXX"; araLetters$(2, 2); "XXX"
    '    Print "XXX"; araLetters$(3, 2); "XXX"
    '    Sleep

    GoSub reRun

Loop Until UCase$(strYesNo$) <> "Y"

End

'-------------------
'*** Sub-routines...
'-------------------

getRandomNumber:
'*** This sub-routine aims to throw single digit random numbers between: 0-9...
Randomize Timer
intRndNo% = Int(Rnd * 10) + 1
If intRndNo% = 10 Then intRndNo% = 0
Return

reRun:
Input "Again, Y/N"; strYesNo$
Return
