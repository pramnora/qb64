RESTORE
CLS
READ eachASCIINos%
DO UNTIL eachASCIINos% = 999
    PRINT CHR$(eachASCIINos%);
    READ eachASCIINos%
LOOP
END
'*** DATA statments list...
DATA 72,101,108,108,111
DATA 44,32
DATA 119,111,114,108,100
DATA 33
'*** (E)nd (O)f (F)ile...
DATA 999

'*** Program when run by pressing function key: [F5]...

'Hello, world!
