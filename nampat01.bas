'*** PROGRAM: Prints a stepped name pattern...moving both forwards/then, backwards, again...

'*** Variable declarations...

strName$="Paul"

intLoopNum%=0 
intMinNum%=1
intMaxNum%=5
 
'*** Main program...
 
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
 
'*** Program output when run by pressing function key: [F5]...
 
'Paul
' Paul
'  Paul
'   Paul
'    Paul
'   Paul
'  Paul
' Paul
'Paul
