'*** Show ASCII codes...
'    This program prints ASCII codes adjacent to one another.
CLS
FOR num% = 0 TO 255
    IF (num% <> 12) THEN '...ignore clear screen character
        PRINT num%; "="; CHR$(num%);
    END IF
NEXT
END
