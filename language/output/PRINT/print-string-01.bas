'*** PROGRAM: Demo how to print strings...

CLS '...(CL)ear the (O)utput screen window

'1> Text strings are enclosed inside of a pair of double quotes ("")...

PRINT "This is a text string."
'-------------------------------------------------------------------------
'2> Another way to write this is...using the plus + sign operator symbol;
'which is also called: string 'concatenation';
'meaning, when you join two seperate text strings together...

PRINT "This is a " +  "text string."
'-------------------------------------------------------------------------
'3> Yet, another way to write it would be to use the semi-colon symbol;
'to join up two seperate text strings...;
'the semi-colon symbol here operates as a vertical 'line feed' suppressor;
'meaning, although the two text strings are written on two separate lines,
'by using the semi-colon at the end of the first text string,
'the second line bottom string will be made to join up with the string on top.

PRINT "This is a ";
PRINT "text string."
'-------------------------------------------------------------------------
'In each of the above cases the output will be exactly the same...
'...output...
'This is a text string.
'This is a text string.
'This is a text string.
