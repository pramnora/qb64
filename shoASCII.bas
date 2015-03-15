'*** Show ASCII codes...

CLS
FOR n% = 0 TO 255
    IF (n% <> 12) THEN '...ignore clear screen
        PRINT n%; "="; CHR$(n%);
    END IF
NEXT
END
