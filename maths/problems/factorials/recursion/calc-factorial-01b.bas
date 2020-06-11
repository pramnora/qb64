'----------------------------------------------------------
'*** PROGRAM: Solve factorials...
'   LANGUAGE: QBASIC/Version: QB64
'   COMPUTER: Home based PC/OS: Windows 10 Professional
'----------------------------------------------------------
'     AUTHOR: Mr. Paul Ramnora
'      EMAIL: pramnora@yahoo.com
'  COPYRIGHT: 2020-, Mr. Paul Ramnora./All rights reserved.
'----------------------------------------------------------
'    CREATED: 250520 21:11 PM GMT
'    UPDATED: 250520 21:11 PM GMT
'----------------------------------------------------------

'*** EXPLANATION: This program aim is to solve factorials.

'                 Run number 1: factorial: !3 / (3x2x1=6)       - Output result: 6   (correct)
'                 Run number 2: factorial: !4 / (4x3x2x1=24)    - Output result: 24  (correct)
'                 Run number 3: factorial: !5 / (5x4x3x2x1=120) - Output result: 120 (correct)

'----------------------------
'*** Variable declarations...
'----------------------------

timesNo = 1
factorialNo = 5

'-------------------
'*** Main program..
'-------------------

CLS
CALL f(timesNo, factorialNo)
END

'-------------------
'*** Sub-routines...
'-------------------

SUB f (t, n)
    t = t * n
    IF n > 1 THEN CALL f(t, n - 1) ELSE PRINT t
END SUB
