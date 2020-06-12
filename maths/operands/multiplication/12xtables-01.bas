'-------------------------------------------
'***  PROGRAM: Times tables...
'    COMPUTER: Desktop PC (home)/Windows  10
'-------------------------------------------
'      AUTHOR: Mr. Paul Ramnora
'       EMAIL: pramnora@yahoo.com
'-------------------------------------------
'     CREATED: 170819 20:09 PM GMT
'     UPDATED: 170819 20:09 PM GMT
'-------------------------------------------

'*** COMMENTS...

'    This times tables program uses variables to control
'    - what number times tables you wish to see printed out (eg. 1 to 12 times tables/2 to 4 times tables/-etc.)
'    - how many times you wish to have that time tables number multipled (eg. 1-12/5-15/-etc.)

'----------------------------
'*** Variable declarations...
'----------------------------

intTablesNo% = 0 'initialise the outer loop tables control variable
intTimesNo% = 0 'initialse the inner loop times control variable

intTablesStartNo% = 1 'controls the tables start number
intTimesStartNo% = 1 'controls the times start number

intTablesMaxNo% = 12 'controls the tables end number
intTimesMaxNo% = 12 'controls the times end number

'-------------------
'*** Main program...
'-------------------

CLS '...clear the output screen

'*** double loop...outer/inner...

FOR intTablesNo% = intTablesStartNo% TO intTablesMaxNo% ' outer loop, start...

    FOR intTimesNo% = intTimesStartNo% TO intTimesMaxNo% 'inner loop, start...

        PRINT intTimesNo% * intTablesNo%; '...printout times tables number

    NEXT '...inner loop, end

    PRINT 'print a blank vertical line; so, separating one times tables output from the next

NEXT '...outer loop, end

END 'end program/halt program code execution
