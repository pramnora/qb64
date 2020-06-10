'Another way of employing the use of 'source code' comments is...
' - to hide program code, temporarily;
'   such as when you are in the process of 'writing/testing' code to see if a particular part works/or, not?!

'Quite frequently, one runs into the case, where you don't wish to run an entire section of code;
'but, instead, just wish to test out seeing if 'one' line/or else, series of lines works...;
'then, you would comment out all of the other sections...in order to 'stop' them running;
'and, thus, interfering with the parts you wish to see tested out.

a = 1
'b = 2
'c = 3
PRINT A
'PRINT B
'PRINT C

'...in the above case, I'm only interested in seeing if lines 10/13 works (including assignment/output); 
'   (but, I'm NOT interested in seeing what all of the other assignments/outputs are;
'   so, I went and commented out lines 11/12/14/15).

