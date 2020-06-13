'-----------------------------
'*** PROGRAM: Draw a line...
'-----------------------------

'*** This program draws an orange coloured diagonal straight line going across the screen;
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

colorNo% = 6 '...orange

'-------------------
'*** Main program...
'-------------------

SCREEN 12

LINE (xHoriPos1%, yVertPos1%)-(xHoriPos2%, yVertPos2%), colorNo%

END
