'*** PROGRAM: Prints a stepped name pattern...moving both forwards/then, backwards, again...

strName$="Paul"

intLoopNum%=0 
intMinNum%=1
intMaxNum%=5
 
CLS

'*** loop prints name going forwards... 
FOR intLoopNum%=intMinNum% TO intMaxNum%
  PRINT TAB(intLoopNum%); strName$
NEXT

'*** loop prints name going backwards... 
FOR intLoopNum=intMaxNum%-1 TO intMinNum% STEP-1
  PRINT TAB(intLoopNum%); strName$
NEXT
 
END
 
'The above program output should look like the following...
 
'Paul
' Paul
'  Paul
'   Paul
'    Paul
'   Paul
'  Paul
' Paul
'Paul
