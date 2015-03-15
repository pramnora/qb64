CLS
PRINT "Number", "Octal", "Hexadecimal", "Squared", "Cubed"
PRINT
FOR eachNum% = 1 TO 16
    PRINT eachNum%,
    PRINT OCT$(eachNum%),
    PRINT HEX$(eachNum%),
    PRINT eachNum% * eachNum%,
    PRINT eachNum% * eachNum% * eachNum%
NEXT
END

'*** Program output when run by pressing function key: [F5]...

'Number      Octal      Hexadecimal      Squared      Cubed
'1           1          1                1            1
'2           2          2                4            8
'3           3          3                9            27
'4           4          4                16           64
'5           5          5                25           125
'6           6          6                36           216
'7           7          7                49           343
'8           10         8                64           512
'9           11         9                81           729
'10          12         A                100          1000
'11          13         B                121          1331
'12          14         C                144          1728
'13          15         D                169          2197
'14          16         E                196          2744
'15          17         F                225          3375
'16          20         10               256          4096
