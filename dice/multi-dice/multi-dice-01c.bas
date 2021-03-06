'--------------------------------------------------------------
'*** PROGRAM: Throwing multiple dice/Version 2
'   COMPUTER: Home based PC
          OS: Windows 10 Professional
'   LANGUAGE: QBASIC/Version: QB64
'--------------------------------------------------------------
'     AUTHOR: Mr. Paul Ramnora
'   LOCATION: London, UK
'      EMAIL: pramnora@yahoo.com
'  COPYRIGHT: (c) 2020-, Mr. Paul Ramnora./All rights reserved.
'--------------------------------------------------------------
'    CREATED: 090620 15:36 PM GMT
'    UPDATED: 090620 16:34 PM GMT
'--------------------------------------------------------------

'*** This program throws dice with numbers ranging in between: (user sets both lower - upper dice limits);
'    the user decides how many repeated dice throws they wish to see.
CLS
PRINT "PROGRAM: Dice throw"
PRINT
INPUT "How many dice do you wish to see thrown"; howManyThrows%
INPUT "Set dice minimum number: ", minNo%
INPUT "Set dice maximum number: ", maxNo%
GOSUB printUnderline
FOR eachDiceThrow% = 1 TO howManyThrows%
    RANDOMIZE TIMER
    PRINT INT(RND * (maxNo% - minNo% + 1)) + minNo%;
NEXT
GOSUB printUnderline
INPUT "Again, Y/N"; yesNo$
IF UCASE$(LEFT$(yesNo$, 1)) = "Y" THEN RUN
END
printUnderline:
PRINT STRING$(80, "-")
RETURN
