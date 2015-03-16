CLS
PRINT "PROGRAM: 12 x Tables squared"
PRINT
FOR timesNo% = 1 TO 12
    FOR tablesNo% = 1 TO 12
        IF timesNo% = tablesNo% THEN
            PRINT timesNo%; " X "; tablesNo%; " = "; timesNo% * tablesNo%
        END IF
    NEXT
NEXT
END

'*** Program output when run by pressing function key: [F5]...

'PROGRAM: 12 x Tables squared

'1 X 1 = 1
'2 X 2 = 4
'3 X 3 = 6
'4 X 4 = 16
'5 X 5 = 25
'6 X 6 = 36
'7 X 7 = 49
'8 X 8 = 64
'9 X 9 = 81
'10 X 10 = 100
'11 X 11 = 121
'12 X 12 = 144
