'-------------------------------------
'***  PROGRAM: CRYPTOGRAPHY/DECRYPT...
'    LANGUAGE: QBASIC: Version: QB64
'    COMPUTER: PC/WINDOWS 10
'-------------------------------------
'      AUTHOR: Mr. Paul Ramnora
'       EMAIL: pramnora@yahoo.com
'-------------------------------------
'     CREATED: 070819 22:16 PM GMT
'     UPDATED: 070819 22:16 PM GMT
'-------------------------------------

'*** This program selects a single character from a 5 x 5 alphabet letters grid: A-Y;
'    the user has to enter in both the : Column letter: A-E; plus, the Row letter: A-E.

'    A  B  C  D  E    - column letter headings on top: A-E
'    -------------    - row letter headings on the side: A-E
'A - A  B  C  D  E
'B - F  G  H  I  J
'C - K  L  M  N  O
'D - P  Q  R  S  T
'E - U  V  W  X Y/Z

'To select a letter... 
'1> type in the column letter heading, first: D
'2> then, next, type in the row letter heading: C
'Selected letter(D,C): N

'----------------------------
'*** Variable declarations...
'----------------------------

'---string: str/($)...

strAlphabet$ = "ABCDEFGHIJKLMNOPQRSTUVWXY"
strColumnNo$ = ""
strRowNo$ = ""

'--- integer: int/(%)...

intColNo% = 0
intRowNo% = 0
intTotal% = 0

'-------------------
'*** Main program...
'--------------

GOSUB clearScreen
GOSUB getColumnLetter
intColNo% = ASC(UCASE$(strColNo$)) - 64 'D
GOSUB getRowLetter
intRowNo% = ASC(UCASE$(strRowNo$)) - 64 'E
PRINT intColNo%, intRowNo%
GOSUB doCalculation
IF intRowNo% = 5 THEN intRowNo% = intRowNo% - 1
PRINT CHR$(intTotal% + 64)
END

'-------------------
'*** Sub-routines...
'-------------------

clearScreen:
CLS
RETURN

getColumnLetter:
INPUT "Column letter (A/B/B/D/E)"; strColNo$
RETURN

getRowLetter:
INPUT "Row letter: (A/B/C/D/E)"; strRowNo$
RETURN

doCalculation:
intTotal% = ((intRowNo% - 1) * 5) + intColNo%
RETURN

