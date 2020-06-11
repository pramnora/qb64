'*** PROGRAM: Hello, world! Version 9...
'       DEMO: READ from a list of DATA statements...;
'             then, PRINT...

RESTORE
READ message$
DO UNTIL message$ = "EOF"
    PRINT message$;
    READ message$
LOOP
END
DATA "Hello,"
DATA " world!"
'*** (E)nd (O)f (F)ile...
DATA "EOF"
