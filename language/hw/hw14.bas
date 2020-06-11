'*** PROGRAM: Hello, world! Version 15...

TYPE greetingsRec
    greetings1 AS STRING * 6
    greetings2 AS STRING * 7
END TYPE

DIM eachGreeting(1) AS greetingsRec

eachGreeting(1).greetings1 = "Hello,"
eachGreeting(1).greetings2 = " world!"

CLS
PRINT eachGreeting(1).greetings1 + eachGreeting(1).greetings2





