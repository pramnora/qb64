'-------------------------------------------------------------
'    PROGRAM: Count upwards/downwards loop....
'   LANGUAGE: QBASIC/Version: QB64
'   COMPUTER: Home based PC/OS: Windows 10 Professional
'-------------------------------------------------------------
'     AUTHOR: Mr. Paul Ramnora
'      EMAIL: pramnora@yahoo.com
'   LOCATION: London, UK
'  COPYRIGHT: (c)2020-, Mr. Paul Ramnora./All rights reserved.
'-------------------------------------------------------------
'    CREATED: 270520 00:31 AM GMT
'    UPDATED: 270520 00:31 AM GMT
'-------------------------------------------------------------

'*** Explanation: The idea behind the program is to get the loop to count both ways;
'                 counting both upwards/and, downwards all at the same time.

'*** The output is as follows...

'    n1%       (n2%+1)-n1%   ABS(n1%-8)

'    1         7             7
'    2         6             6
'    3         5             5
'    4         4             4
'    5         3             3
'    6         2             2
'    7         1             1

'----------------------------
'*** Variable declarations...
'----------------------------

n2% = 7

'-------------------
'*** Main program...
'-------------------

CLS
PRINT "PROGRAM: Up/down loop..."
PRINT
PRINT "n1%", "(n2%+1)-n1%", "ABS(n1%-8)" '...note: the use of a numeric literal...would not work with other numbers
PRINT
FOR n1% = 1 TO n2%
    PRINT n1%, (n2% + 1) - n1%, ABS(n1% - 8)
NEXT
END

'...but, is this the most truly 'efficient' way to do it...?!
