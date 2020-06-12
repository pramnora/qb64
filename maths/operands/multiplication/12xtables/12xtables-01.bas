'*** PROGRAM: Prints each of the 12 times tables...;
'             going from: 1 x 1 = 1..12 x 1 = 12
'            ...up to...: 1 x 12 = 12...12 x 12 = 144

FOR intTablesNo% = 1 TO 12
  CLS
  PRINT intTablesNo%; " X Tables:-"
  PRINT
  FOR intTimesNo% = 1 TO 12
    PRINT intTimesNo%; " X "; intTablesNo% ; " = "; intTimesNo% * intTablesNo%
  NEXT
  PRINT
  PRINT "-(Please, press [SPACEBAR] to continue...)-"
  SLEEP  
NEXT
END

'...output...

'1 X Tables

'1 X 1 = 1
'2 X 1 = 2
'3 x 1 = 3
'4 x 1 = 4
'5 x 1 = 5
'6 x 1 = 6
'7 x 1 = 7
'8 x 1 = 8
'9 x 1 = 9
'10 x 1 = 10
'11 x 1 = 11
'12 x 1 = 12

'-(Please, press [SPACEBAR] to continue...)-
