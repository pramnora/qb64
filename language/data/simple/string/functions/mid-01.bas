'*** MID$() function...;
'    This function allows you to select any character/
'    or, adjacent set of characters inside of a string;
'    you have to pass it...
'    the string name/
'    the string start position/
'    the string end position.

aString$ = "abc"

CLS '...(CL)ear the (O)utput screen

PRINT MID$(aString$,1,1)
'...output...
'a

PRINT MID$(aString$,1,2)
'...output...
'ab

PRINT MID$(aString$,2,2)
'...output...
'bc

