'----------------------------------------------------------
'*** PROGRAM: Solve factorials...
'   LANGUAGE: QBASIC/Version: QB64
'   COMPUTER: Home based PC/OS: Windows 10 Professional
'----------------------------------------------------------
'     AUTHOR: Mr. Paul Ramnora
'      EMAIL: pramnora@yahoo.com
'  COPYRIGHT: 2020-, Mr. Paul Ramnora./All rights reserved.
'----------------------------------------------------------
'    CREATED: 240520 17:50 PM GMT
'    UPDATED: 240520 17:50 PM GMT
'----------------------------------------------------------

'*** EXPLANATION: This program aims to solve the mathematical equation, factorial: !4 / (4x3x2x1=24);
'    which it actually seems to do rather well; that is to say, the end output result is, indeed, as expected: 24.

'    The program output is:-
'                                 t               n                t

'                                 1               4                4
'                                 4               3                12
'                                 12              2                24
'                                 24              1                24

'    NOTE: I'm really not sure if I'm doing this 'recursion' thing, properly, though;
'          which is to say, tackling the problem quite as 'efficiently' as is possible'/
'          or, instead, am I writing what amounts to being just merely: 'bloat code...?!'

'          I recall seeing code, using 'recursive' techniques, where there was just 1 single line of code;
'          but, my code uses all of 4 lines to solve this particular problem, instead.


'----------------------------
'*** Variable declarations...
'----------------------------

factorialNo = 4
recursionLoopStartNo = 1

'-------------------
'*** Main program..
'-------------------

CLS
PRINT "t", "n", "t"
PRINT
doRecursion factorialNo, recursionLoopStartNo
END

'-------------------
'*** Sub-routines...
'-------------------

SUB doRecursion (n, t)
    PRINT t,
    t = t * n
    PRINT n, t
    IF n > 1 THEN CALL doRecursion(n - 1, t)
END SUB

