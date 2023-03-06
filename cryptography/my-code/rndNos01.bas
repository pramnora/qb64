'------------------------------------------------------
'***  PROGRAM: Random numbers code/Version 01...
'    LANGUAGE: QBASIC, Version: QB64

'    COMPUTER: Home based Desktop PC
'          OS: Windows 10 Pro

'      AUTHOR: Mr. Paul Ramnora
'       EMAIL: pramnora@yahoo.com
'    LOCATION: London, UK

'     CREATED: 6th Mar 2023 13:29 PM GMT
'     UPDATED: 6th Mar 2023 13:29 PM GMT
'------------------------------------------------------

' Introduction...

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

' The program uses a loop to call a sub-routine which creates a random numbers using digits going from: 0-9;
' this loop repeates 10 times to thus form a 10 random numbers digit string which is stored inside of the array.

' Then, when the program is done...; it will check if each number is, in fact, wholly 'unique';
' thus, there should be no 'repeat' sequence of numbers. (NOTE: I will create this part, later.)

' Finally, we enter some data to be encoded: abc;
' and, we should get out 30 random numbers from the array used to represent each individual letter: (a-z).

' NOTE: So far this program is just getting started; therefore, the code still remains UNFINISHED...

' Latest update: The program works...on a very simple level; but, a lot more complexity still needs to be added on.

' BUG FOUND LIST...
'

'----------------------------
'*** Variable declarations...
'----------------------------

intNoOfLetters% = 26
intNoOfVariations% = 1

Dim araLetters$(intNoOfLetters%, intNoOfVariations%) '...array holds each of 26 letters: (a-z)/random number sequence(10 digits long)

intNoOfRndDigits% = 10 '...I choose the number 10 as it's very highly unlikely you will get say 10 of the same random numbers;
' ie. 10 x 6's all in a row...?!
'...nevertheless, it's a good idea for the program to do a check that each number is, truly, 'unique';
'because there shouldn't be any repeats...as each letter needs to be encoded/decoded 'uniquely'.

strYesNo$ = "" '...variable used to capture user input if they wish to re-run the program, agian

'-------------------
'*** Main program...
'-------------------

Do

    For intEachLetterNo% = 1 To 26 ' intNoOfLetters%

        strRndNo$ = ""

        For intEachRndNo% = 1 To intNoOfRndDigits% '...loop end no selects how many random number digits to include

            GoSub getRandomNumber '...get a random number as an integer with digits: 0-9
            strRndNo$ = strRndNo$ + Right$(Str$(intRndNo%), 1) '...convert integer random number to become a string
            araLetters$(intEachLetterNo%, 1) = strRndNo$ '...store random number string inside of array

        Next

        '...display each array value as ouput...
        ' I used the following line of code to test the program using: abc...as input/
        ' however, if not testing...you can leave it commented out.
        'Print "araLetters("; intEachLetterNo%; ","; intNoOfVariations%; " ) = X"; araLetters$(intEachLetterNo%, intNoOfVariations%); "X"

    Next

    Input "Enter text to encode: ", strPlainText$
    strPlainText$ = UCase$(strPlainText$) '...convert user input to being all upper case letters
    'Print strPlainText$ '...checks if we have converted user into to all upper case letters by printing it out
    For intEachChar% = 1 To Len(strPlainText$) '...loop captures each individual letter the user entered
        strEachLetter$ = Mid$(strPlainText$, intEachChar%, 1)
        If strEachLetter$ >= "A" And strEachLetter$ <= "Z" Then '...valid inputs are only capital letters: A-Z
            'Print "x"; strEachLetter$; "x" 'tests that the loop is grabbing each letter, individually
            intASCIILetterNo% = Asc(strEachLetter$) - 64 '...convert the upper case ASCII letter: (A-Z) to being a letter number(1-26)
            'Print intASCIILetterNo% 'checks that the ASCII letter really is in the valid number range: 1-26 
            strEncoded$ = strEncoded$ + araLetters$(intASCIILetterNo%, 1)
        End If
    Next

    Print strEncoded$
    GoSub reRun

Loop Until UCase$(strYesNo$) <> "Y"

End

'-------------------
'*** Sub-routines...
'-------------------

getRandomNumber:
'*** This sub-routine aims to throw single digit random numbers between: 0-9...;
'    if the number thown is a 10...then, it gets converted to become a 0, instead.
Randomize Timer
intRndNo% = Int(Rnd * 10) + 1
If intRndNo% = 10 Then intRndNo% = 0
Return

reRun:
'*** This sub-routine allows the user to make the decision if they wish to re-run the program again/or, not...
Input "Again, Y/N"; strYesNo$
Return
