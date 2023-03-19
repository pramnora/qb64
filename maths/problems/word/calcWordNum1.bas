'--------------------------------------------------------------------
'***  PROGRAM: Calculate word number
'    LANGUAGE: QBASIC/Version: QB64
' COMPUTER/OS: Home based PC/Windows 10 Pro
'--------------------------------------------------------------------
'      AUTHOR: Mr. Paul Ramnora
'    LOCATION: London, UK
'       EMAIL: pramnora@yahoo.com
'   COPYRIGHT: (c) 2023 - , Mr. Paul Ramnora./All rights reserved.
'--------------------------------------------------------------------
'     CREATED: 19th March 2023 10:32 AM GMT
'     UPDATED: 19th March 2023 10:32 AM GMT
'--------------------------------------------------------------------

'*** Screen 1...

Cls
Print "PROGRAM: Calculate word number"
Print
Print "This program will calculate the total number value of each letter in a word."
Print
Print "So, if the word is: 'cat'; then, it will calculate it as..."
Print
Print "C=3/3rd letter of the alphabet"
Print "A=1/1st letter of the alphabet"
Print "T=20/20th letter of the alphabet"
Print "...and, so we get a total letters number value of: "
Print "24"
Print
Print "-Please, press [SPACEBAR/ENTER] to continue..."
Do: strWaitForUserKeyPress$ = InKey$: Loop Until strWaitForUserKeyPress$ <> ""

'*** Screen 2...

Cls
Do
    strWord$ = "": intValueASCIICode% = 0
    Input "(Type '0' to quit)/Enter word: ", strWord$
    If strWord$ <> "0" Then
        For intEachChar% = 1 To Len(strWord$)
            strEachChar$ = UCase$(Mid$(strWord$, intEachChar%, 1))
            Print strEachChar$, Asc(strEachChar$) - 64
            intValueASCIICode% = intValueASCIICode% + Asc(strEachChar$) - 64
        Next
        Print
        Print "Total", intValueASCIICode%
        Print
    End If
Loop Until strWord$ = "0"

End




