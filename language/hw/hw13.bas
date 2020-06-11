'*** PROGRAM: Hello, world! Version 13...

'       DEMO: Using 2 different types of sub-routine: SUB/END SUB - FUNCTION/END FUNCTION

CALL clearScreen
PRINT greeting$
END

SUB clearScreen
    CLS
END SUB

FUNCTION greeting$
    printGreeting = "Hello, world!"
END FUNCTION



