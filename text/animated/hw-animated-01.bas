'-------------------------------------------------------------
'*** PROGRAM: Animated: Hello, world!
'   LANGUAGE: QBASIC/Version QB64
'   COMPUTER: Home based PC
'         OS: Windows 10 Professional
'-------------------------------------------------------------
'     AUTHOR: Mr. Paul Ramnora
'   LOCATION: London, UK
'      EMAIL: pramnora@yahoo.com
'  COPYRIGHT: (c)2020-, Mr. Paul Ramnora./All rights reserved.
'-------------------------------------------------------------
'    CREATED: 150620 03:18 AM GMT
'    UPDATED: 150620 03:18 AM GMT
'-------------------------------------------------------------

xVertPos2% = 13
yHoriPos2% = 26

CLS
RESTORE
READ text$
DO UNTIL text$ = "EOF"

    '*** print a list of random characters each in the same one place: 1,1...10 times...
    FOR eachChar% = 1 TO 100
        LOCATE 1, 1: PRINT CHR$((INT(RND * 26) + 1) + 64)
        GOSUB doPause
    NEXT

    '*** print the selected character starting at position: 1,1;
    'then, going down to vertical position: 11,1...meaning, center screen
    FOR xVertPos% = 1 TO xVertPos2% - 1
        LOCATE xVertPos%, 1: PRINT text$
        GOSUB doPause
        LOCATE xVertPos%, 1: PRINT " "
        GOSUB doPause
    NEXT

    '*** print the selected character starting at: 13,1;
    '    then, moving horizontally along to position: 13,yHoriPos2%
    FOR yHoriPos% = 1 TO yHoriPos2%
        LOCATE xVertPos2% - 1, yHoriPos%: PRINT text$
        GOSUB doPause
        LOCATE xVertPos2% - 1, yHoriPos%: PRINT " "
        GOSUB doPause
    NEXT

    LOCATE xVertPos2%, yHoriPos2%: PRINT text$
    yHoriPos2% = yHoriPos2% + 2
    READ text$

LOOP

END

doPause:
FOR pauseCount = 1 TO 3000000 * 1: NEXT
RETURN

DATA "-","H","e","l","l","o",","," ","w","o","r","l","d","!","-"
DATA "EOF"
