'Date started: 9/12/2018
'Programmer: Emily Frost Wood
'Goal: Display a station model with accurate weather data.

SCREEN 12 '16 color attributes, 640 by 480
COLOR 0, 15 'white background with black graphics
CLS 'refreshes to make the screen actually for sure $100% white

OPEN "weather.txt" FOR INPUT AS #1
LINE INPUT #1, raw$
CLOSE #1
PRINT raw$

CIRCLE (320, 240), 60 'This should eventually be filled in to indicate cloud cover.
'location:
PRINT MID$(raw$, 1, 4)
'visibility:
_PRINTSTRING (200, 240), MID$(raw$, 22, 2) 'lord and saviour _printstring(x,y),z to the rescue because locate wasn't working
'temperature:
_PRINTSTRING (220, 160), MID$(raw$, 48, 2)
'dewpoint:
_PRINTSTRING (220, 320), MID$(raw$, 51, 2)
'wind direction and speed:
tempstring$ = MID$(raw$, 14, 3)
angle% = VAL(tempstring$)
PRINT angle%
DRAW "BM 320,240"
DRAW "TA=angle% U 60"
DRAW "TA=angle% U 120"
'working on making the stick
'160 degrees
'MID$(raw$, 14, 3)

'cloud cover:
LINE (320, 180)-(320, 300), 7
LINE (260, 240)-(380, 240), 7
DRAW "bm 320,240"
DRAW "N ta 45 U 60"
DRAW "N ta -45 U 60"
DRAW "N ta 45 D 60"
DRAW "N ta -45 D 60"
Coverage$ = MID$(raw$, 27, 3)
PRINT Coverage$
'27



SLEEP '"press any key to continue" annoys me so this sorta hides it



