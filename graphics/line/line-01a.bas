'-----------------------------
'*** PROGRAM: Draw a line...
'-----------------------------

'*** This program draws a diagonal striaght line going across the screen;
'    extending from top left...down to bottom right.

'----------------------------
'*** Variable declarations...
'----------------------------

screenWidth% = 640
screenHeight% = 480

xHoriPos1% = 0
yVertPos1% = 0

xHoriPos2% = screenWidth%
yVertPos2% = screenHeight%

'-------------------
'*** Main program...
'-------------------

SCREEN 12

LINE (xHoriPos1%, yVertPos1%)-(xHoriPos2%, yVertPos2%)

END

