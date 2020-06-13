'-----------------------------
'*** PROGRAM: Draw a circle...
'-----------------------------

'*** This program uses a loop to draw a filled in circle...in steps of +5;
'    which produces a 'transparent' circle.

'----------------------------
'*** Variable declarations...
'----------------------------

screenWidth% = 640
screenHeight% = 480

xHoriPos% = screenWidth% / 2
yVertPos% = screenHeight% / 2
radiusMaxSize% = 100

colorNo% = 6 '...orange

'-------------------
'*** Main program...
'-------------------

SCREEN 12
FOR radiusSize% = 1 TO radiusMaxSize% STEP 5
    CIRCLE (xHoriPos%, yVertPos%), radiusSize%, colorNo%
NEXT
