'*** PROGRAM: Prints a stepped text pattern...moving both forwards/then, backwards, again...

'*** Variable declarations...

strText$ = "Some text..."

intLoopNum% = 0
intMinNum% = 1
'intMaxNum% = 5 'you could use this variable to control how big the shape pattern length grows...;
'                however, in this particular version of the program, I've chosen to 'ignore' using this variable;
'                and, instead, the shape length is based on the actual 'text size' length.
intMaxNum% = LEN(strText$)

'*** Main program...

CLS

'*** loop prints name going forwards...

FOR intLoopNum% = intMinNum% TO intMaxNum%
    PRINT TAB(intLoopNum%); strText$
NEXT

'*** loop prints name going backwards...

FOR intLoopNum% = intMaxNum% - 1 TO intMinNum% STEP -1
    PRINT TAB(intLoopNum%); strText$
NEXT

END

'*** Program output when run by pressing function key: [F5]...

'Some text...
' Some text...
'  Some text...
'   Some text...
'    Some text...
'.....(etc.)...
'   Some text...
'  Some text...
' Some text...
'Some text...

