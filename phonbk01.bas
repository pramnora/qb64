'    PROGRAM: Phonebook/Version 1...
'   LANGUAGE: QBASIC/Version: QB64
'   COMPUTER: PC/Windows 10 Professional
'--------------------------------------------------------------
'     AUTHOR: Mr. Paul Ramnora
'      EMAIL: pramnora@yahoo.com
'  COPYRIGHT: (c) 2018-, Mr. Paul Ramnora./All rights reserved.
'--------------------------------------------------------------
'    CREATED: 071218 22:05 PM GMT
'    UPDATED: 071218 22:05 PM GMT

'*** Variable declarations...

TRUE = 1
FALSE = 0
intFoundFlag% = FALSE
strName$ = ""
strPhoneNo$ = ""
strYesNo$ = ""
strUnderlineChar$ = "*"

'*** Main program...

DO
    RESTORE
    intFoundFlag% = FALSE
    CLS
    PRINT "PROGRAM: Phonebook"
    PRINT
    INPUT "Please, enter search text"; strUserSearchText$
    GOSUB printUnderline
    PRINT "Name", "Number"
    PRINT
    READ strName$, strPhoneNo$
    DO
        IF UCASE$(strName$) = UCASE$(strUserSearchText$) OR UCASE$(strPhoneNo$) = UCASE$(strUserSearchText$) THEN
            intFoundFlag% = TRUE
            PRINT strName$, strPhoneNo$
        END IF
        READ strName$, strPhoneNo$
    LOOP UNTIL strName$ = "EOF" AND strPhoneNo$ = "0"
    IF intFoundFlag% = FALSE THEN
        PRINT "-Sorry, found no matching entries!-"
    END IF
    GOSUB printUnderline
    INPUT "Search again, Y/N"; strYesNo$
LOOP UNTIL UCASE$(LEFT$(strYesNo$, 1)) = "N"
END

'*** Sub-routines...

printUnderline:
PRINT STRING$(80, strUnderlineChar$)
RETURN

'*** DATA statements list/FORMAT: "name","number"

DATA "ABC","123"
DATA "ABC","111"
DATA "DEF","456"
DATA "GHI","789"
'*** (E)nd (O)f (F)ile...
DATA "EOF","0"
