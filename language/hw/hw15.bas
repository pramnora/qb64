'*** PROGRAM: Hello, world! Version 15...(using external files to store/fetch data)...

'----------------------------
'*** Variable declarations...
'----------------------------

fileName$ = "greeting.txt"
fileHandleNo% = FREEFILE
greeting$ = "Hello, world!"

'-------------------
'*** Main program...
'-------------------

'*** open file/write data to file/close file...

OPEN fileName$ FOR OUTPUT AS #fileHandleNo%
PRINT #fileHandleNo%, greeting$
CLOSE #fileHandleNo%

'*** open file/read data from file/print data to screen/close file...

OPEN fileName$ FOR INPUT AS #fileHandleNo%
DO UNTIL EOF(1)
    LINE INPUT #fileHandleNo%, greeting$
    PRINT greeting$
LOOP
CLOSE #fileHandleNo%

'*** DELETE file...

KILL fileName$



