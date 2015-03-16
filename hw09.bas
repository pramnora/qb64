CALL clearScreen
CALL printMessage("Hello, world!")
END

SUB clearScreen
CLS
END SUB

SUB printMessage (msg$)
PRINT msg$
END SUB

'*** Program output when run by pressing function key: [F5]...

'Hello, world!
