'-----------------------------
'*** PROGRAM: Draw a circle...
'-----------------------------

'*** This program draws a circle with a coloured in outline...

'----------------------------
'*** Variable declarations...
'----------------------------

screenWidth% = 640
screenHeight% = 480

xHoriPos% = screenWidth% / 2
yVertPos% = screenHeight% / 2
radiuSize% = 100

colorNo% = 6 '...orange

'-------------------
'*** Main program...
'-------------------

SCREEN 12
CIRCLE (xHoriPos%, yVertPos%), radiuSize%, colorNo%
