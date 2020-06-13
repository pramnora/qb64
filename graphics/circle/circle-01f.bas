'-----------------------------
'*** PROGRAM: Draw a circle...
'-----------------------------

'*** This program uses an endless loop to build an 'animation'...;
'    drawing a filled in circle with constantly changing colours.      

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

DO '...this is an endless loop/press 'any' key to make the program stop...

  FOR radiusSize% = 1 TO radiusMaxSize%
      GOSUB doColourChange
      CIRCLE (xHoriPos%, yVertPos%), radiusSize%, colorNo%
  NEXT

LOOP UNTIL INKEY$ <> ""

END

'-------------------
'*** Sub-routines...
'-------------------

doColourChange:
RANDOMIZE TIMER
colorNo% = INT(RND * 255) + 1
RETURN
