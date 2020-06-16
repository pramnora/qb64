'----------------------------------------
'*** PROGRAM: Show age...from 0 up to 104
'----------------------------------------

'*** This program, first, asks the user to enter their age, now;
'    then, it will calculate what is the users age thoughout the many years;
'    incuding, past/present/future...;
'    it will print out a 4 column chart which represents every single year
'    the user has been alive starting from age: 0...all the way up to...age: 104!

'---------------------------
'*** Initialise variables...
'---------------------------

yearNow% = 2020
yearBorn% = 0
xVertPos% = 4
yHoriPos% = 1
maxNoOfLines% = 20

'-------------------
'*** Main program...
'-------------------

CLS
PRINT "PROGRAM: Show age...past/present/future"
INPUT "Please, enter what is you current age: ", ageNow%
yearBorn% = yearNow% - ageNow%
GOSUB printUnderline
FOR ageNo% = 0 TO 104
    IF ageNo% = ageNow% THEN
        COLOR 15 + 8, 8
    ELSE
        COLOR 0, 7
    END IF
    LOCATE xVertPos%, yHoriPos%
    PRINT ageNo%; " -  "; yearBorn%;
    xVertPos% = xVertPos% + 1
    yearBorn% = yearBorn% + 1
    noOfLines% = noOfLines% + 1
    IF noOfLines% = maxNoOfLines% + 1 THEN
        noOfLines% = 0
        xVertPos% = 4
        yHoriPos% = yHoriPos% + 15
    END IF
NEXT
SLEEP
COLOR 7, 8
END

'-------------------
'*** Sub-routines...
'-------------------

printUnderline:
PRINT STRING$(80, "-")
RETURN
