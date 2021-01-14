'---------------------------------------------
'***  PROGRAM: Decimal to Binary conversion...
'    LANGUAGE: QBASIC/Version QB64
'---------------------------------------------
'    COMPUTER: Home based PC
'          OS: Windows 10 Professional
'-------------------------------------
'      AUTHOR: Mr. Paul Ramnora
'       EMAIL: pramnora@yahoo.com
'    LOCATION: London/UK
'-------------------------------------
'     CREATED: THU 140121 10:32 AM GMT
'     UPDATED: THU 140121 10:32 AM GMT
'-------------------------------------

'*** This program updates Version 1 by adding a Binary number printout/as well as, Octal/Hex

'    NOTE: I don't think this is truly the most efficient coding method...; but, nevertheless, it does actually work.

'----------------------------
'*** Variable declarations...
'----------------------------

decimalNo% = 0
binaryNo$ = ""
underline$ = "-"

'-------------------
'*** Main program...
'-------------------

GOSUB clearScreen
PRINT "PROGRAM: Decimal conversion"
PRINT
INPUT "Enter a decimal number(0-256): ", decimalNo%
GOSUB printUnderline
GOSUB doDecimalToBinaryConversion
PRINT "    Decimal:"; decimalNo%
PRINT "     Binary: "; binaryNo$
PRINT "      Octal: "; OCT$(decimalNo%)
PRINT "Hexadecimal: "; HEX$(decimalNo%)
GOSUB printUnderline
GOSUB doReRun
END

'-------------------
'*** Sub-routines...
'-------------------

clearScreen:
CLS
RETURN

printUnderline:
PRINT STRING$(80, underline$)
RETURN

doDecimalToBinaryConversion:
tempNo% = decimalNo%
FOR eachBit% = 1 TO 8
    READ binaryNo%
    IF binaryNo% <= tempNo% THEN
        binaryNo$ = binaryNo$ + "1"
        IF tempNo% > 0 THEN
            tempNo% = tempNo% - binaryNo%
        END IF
    ELSE
        binaryNo$ = binaryNo$ + "0"
    END IF
NEXT
RETURN

doReRun:
INPUT "Again, Y/N"; yesNo$
IF LEFT$(UCASE$(yesNo$), 1) = "Y" THEN RUN
RETURN

'-----------
'*** Data...
'-----------

DATA 256,128,64,32,8,4,2,1
