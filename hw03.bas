RESTORE   '...set QBASIC internal 'data pointer' to start reading from the very top of the DATA statements list
CLS       '...(CL)ear the output (S)creen
READ text$ '...READ from the DATA statements list; and, assign a text value to string variable called: text$ 
PRINT text$ '...PRINT out the text value that's stored inside of string variable: text$
END         '...END of QBASIC program
'*** DATA statements list...
DATA "Hello, world!"

'*** Program output when run by pressing the function key: [F5]...

'Hello, world!
