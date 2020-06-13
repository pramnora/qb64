'-----------------------------
'*** PROGRAM: Draw a circle...
'-----------------------------

'*** This program creates an 'animation'...;
'    where the drawn circle both grows/and, shrinks.

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

DO

    FOR radiusSize% = 1 TO radiusMaxSize%
        GOSUB doColourChange
        CIRCLE (xHoriPos%, yVertPos%), radiusSize%, colorNo%
        GOSUB doPause
    NEXT

    FOR radiusSize% = radiusMaxSize% TO 1 STEP -1
        colorNo% = 0
        CIRCLE (xHoriPos%, yVertPos%), radiusSize%, colorNo%
        GOSUB doPause
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

doPause:
FOR pauseCount = 1 TO 5000000: NEXT
RETURN
