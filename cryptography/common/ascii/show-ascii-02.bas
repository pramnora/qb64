'*** PROGRAM: Show ASCII...
'             This program shows ASCII codes, with each one being written onto it's own separate line.
CLS
PRINT "ASCII no", "ASCII character"
FOR intEachAsciiNo% = 0 TO 255
    PRINT intEachAsciiNo%, CHR$(intEachAsciiNo%)
    DO: LOOP UNTIL INKEY$ <> ""
NEXT
END
