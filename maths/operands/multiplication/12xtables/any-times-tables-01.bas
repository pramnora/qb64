'*** PROGRAM: 12 x Tables, allows the user to select which times tables number they wish to see printed out...

'-------------------
'*** Main program...
'-------------------

DO
  GOSUB clearScreen
  PRINT "PROGRAM: 12 X Tables"
  PRINT
  INPUT "Which number times tables: ",intTablesNo%
  GOSUB printUnderline
  FOR intTimesNo% = 1  TO 12
    PRINT intTimesNo%; " X "; intTablesNo%; " = "; intTimesNo% * intTablesNo%
  NEXT
  GOSUB printUnderline
  INPUT "Again, Y/N";strYesNo$
LOOP UNTIL UCASE$(LEFT$(strYesNo$,1)) <> "Y"
END

'-------------------
'*** Sub-routines...
'-------------------

clearScreen:
CLS
RETURN

printUnderline:
PRINT STRING$(80,"-")
RETURN
