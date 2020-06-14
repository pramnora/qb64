DO '...this program creates an endless loop/press 'any' key to make the program stop... 
    LOCATE 1, 1
    PRINT DATE$, TIME$
    SLEEP 1
LOOP UNTIL INKEY$ <> ""

