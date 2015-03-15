RESTORE
CLS
READ eachChar$
WHILE eachChar$ <> "EOF"
    PRINT eachChar$;
    READ eachChar$
WEND
END
'*** DATA statements list...
DATA "H","e","l","l","o",","," "
DATA "w","o","r","l","d","!"
'*** (E)nd (O)f (F)ile...
DATA "EOF"

'*** Program output when function key: [F5] is pressed...

'Hello, world!
