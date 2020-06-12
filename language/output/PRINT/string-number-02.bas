'*** PROGRAM: The difference between printing numbers/and, printing strings...

'Normally, we don't tend to store numbers as strings; thus, we can leave out the double quotes ("")

num = 1

'However, numbers, can also be stored as strings, sometimes...such as inside of keyboard INPUT statements...

num$ = "1"

'NOTE: See the difference between printing out 2 numbers(without quotes around them): 2 + 2/
'                                                    and, printing out out 2 strings: "2" + "2"
'by using the plus (+) sign to join these together/(using + to join 2 strings is also called: concatenation)... 

PRINT num + num
'...output...
'2

PRINT num$ + num$
'...output...
'11

'...in this last case, 11 is NOT a number; but, instead, is just placing text string: "1" together with another text string: "1";
'which, of course, outputs as being: "11".
