'*** PROGRAM: DO/LOOP WHILE (exit controlled loop)...;
'             this loop counts from 1 up to 10...

CLS
num% = 1
DO
    PRINT num%
    num% = num% + 1
LOOP WHILE num% <= 10
END

'...output...

'1
'2
'3
'4
'5
'6
'7
'8
'9
'10

