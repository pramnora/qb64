100 REM *** PROGRAM: Print text message
110 REM
120 REM *** Main program
130 REM
140 GOSUB 210 REM *** Initialise  global variables
150 GOSUB 240 REM *** Clear screen
160 GOSUB 270 REM *** Print text message
170 GOTO 300 REM *** End
180 REM
190 REM *** Sub-routines...
200 REM
210 REM *** Initialise global variables
220 text$ = "Hello, world!"
230 RETURN
240 REM *** Clear screen
250 CLS
260 RETURN
270 REM *** Print text message
280 PRINT text$
290 RETURN
300 END

'*** Program output when run by pressing function key: [F5]...

'Hello, world!
