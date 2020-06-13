'-----------------------------
'*** PROGRAM: Draw a circle...
'-----------------------------

'*** This program uses a loop to draw a filed in multi-coloured circle...

'----------------------------
'*** Variable declarations...
'----------------------------

screenWidth% = 640
screenHeight% = 480

xHoriPos% = screenWidth% / 2
yVertPos% = screenHeight% / 2
radiusMaxSize% = 100

colorNo% = 0

'-------------------
'*** Main program...
'-------------------

SCREEN 12

FOR radiusSize% = 1 TO radiusMaxSize%
    GOSUB doColourChange
    CIRCLE (xHoriPos%, yVertPos%), radiusSize%, colorNo%
NEXT

END

'-------------------
'*** Sub-routines...
'-------------------

doColourChange:
RANDOMIZE TIMER
colorNo% = INT(RND * 255) + 1
RETURN
