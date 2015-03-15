CLS
PRINT "PROGRAM: Chose which number times tables to display"
PRINT
INPUT "Which number times tables"; tablesNo%
PRINT
FOR timesNo% = 1 TO 12
    PRINT timesNo%; " X "; tablesNo%; " = "; timesNo% * tablesNo%
NEXT
END

'*** Program output when run by pressing function key: [F5]...

'PROGRAM: Chose which number times tables to display...

'Which number times tables? 3

'1 X 3 = 3
'2 X 3 = 6
'3 X 3 = 9
'4 X 3 = 12
'5 X 3 = 15
'6 X 3 = 18
'7 X 3 = 21
'8 X 3 = 24
'9 X 3 = 27
'10 X 3 = 30
'11 X 3 = 33
'12 X 3 = 36
