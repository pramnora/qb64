'-----------------------------
'*** PROGRAM: Draw a circle...
'-----------------------------

'*** This program draws a circle; and, positions it center screen...

'The CIRCLE(n1,n2),n3 
'...statement accepts 3 parameters...
'n1, the circles x horizotonal position
'n2, the circles y vertical position
'n3, the circles radius size

'----------------------------
'*** Variable declarations...
'----------------------------

screenWidth% = 640
screenHeight% = 480

xHoriPos% = screenWidth% / 2
yVertPos% = screenHeight% / 2
radiusSize% = 100

'-------------------
'*** Main program...
'-------------------

SCREEN 12
CIRCLE (xHoriPos%, yVertPos%), radiusSize%
