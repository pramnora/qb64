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

'*** BUG LIST FOUND?
' - Because this is such a 'simple' program; therefore, I believe it is currently bug free.
'   -(Of course, I might be all wrong; bugs tend to turn up whenever one is least expecting it?!)-

'*** LIST OF POSSIBLE FUTURE IMPROVEMENTS...
'1. This program only is capable of showing just 1 screenful of searches at a time;
'   so, it would be nice if it could show multiple screens of searches, instead.
'2. As it is one may search using either: 'name/number'; however, the search term has to be exact;
'   maybe, one could include partial searches as well; (with the closest matches ranked at the top)
'3. It might be good to add other fields to search such as: 'address'/'notes'/-etc.

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
