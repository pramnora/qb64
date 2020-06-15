'-------------------------------------------------------------
'*** PROGRAM: Animated: - H e l l o ,  w o r l d ! -
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

    '*** print a list of 'random characters': A-Z,
    '    with each character being positioned in the same one place/
    '    meaning top left: 1,1;
    '    also, do this, repeatedly, for: 100 times...
    FOR eachChar% = 1 TO 100
        LOCATE 1, 1: PRINT CHR$((INT(RND * 26) + 1) + 64)
        GOSUB doPause
    NEXT

    '*** print the selected character starting at position: 1,1;
    '   then, going down to vertical position: 12,1/
    '   meaning, 1 line up above center screen...;
    '   but, always, remaining positioned on the leftmost side of the screen...  
    FOR xVertPos% = 1 TO xVertPos2% - 1
        LOCATE xVertPos%, 1: PRINT text$
        GOSUB doPause
        LOCATE xVertPos%, 1: PRINT " "
        GOSUB doPause
    NEXT

    '*** print the selected character starting at position: 12,1;
    '    then, moving the character horizontally along to position: 12,yHoriPos2%/
    '    this positions each character 1 up above center screen...;
    '    moving it horizontally along...to reach it's final horizontal position...  
    FOR yHoriPos% = 1 TO yHoriPos2%
        LOCATE xVertPos2% - 1, yHoriPos%: PRINT text$
        GOSUB doPause
        LOCATE xVertPos2% - 1, yHoriPos%: PRINT " "
        GOSUB doPause
    NEXT

    '*** print out each character in it's final place...;
    '   this drops the character down 1 line to be positioned in it's final resting place/
    '   meaning it is both vertically/horizontally center screen
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
