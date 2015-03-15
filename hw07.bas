DIM text$(2)
text$(1) = "Hello, "
text$(2) = "world!"
CLS
FOR eachArrayIndexNo% = 1 TO 2
    PRINT text$(eachArrayIndexNo%);
NEXT
END

'*** Program output when run by pressing function key: [F5]...

'Hello, world!
