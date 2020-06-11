'*** PROGRAM: Hello, world! Version 10...
'       DEMO: READ from a list of DATA statements.../then, PRINT...
'             ASCII/(American Standard Code for Information Interchange) codes
'             A-Z = 1-26 + 64 = Upper case/A = 1 + 64 = 65 = A/PRINT CHR$(65)/65-90=A-Z/PRINT ASC("A")=65
'             a-z = 1-26 + 96 = Lower case/a = 1 + 96 = 97 = A/PRINT CHR$(97)/97-128=a-z/PRINT ASC("a")=97
'             CHR$(n) - converts the ASCII code number into being a letter/or, punctutation symbol(,space,!/-etc.)
'             to find punctuation symbols use...

CLS
RESTORE
READ asciiNo%
DO
    PRINT CHR$(asciiNo%);
    READ asciiNo%
LOOP UNTIL asciiNo% = 999
END
DATA 72,101,108,108,111
DATA 44,
DATA 119,111,114,108,100
DATA 33
'*** (E)nd (O)f (F)ile...
DATA 999
