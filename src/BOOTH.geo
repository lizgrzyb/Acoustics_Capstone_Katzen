;Booth of Katzen 

;Globals-----------------------------------------------------------------------
GlOBAL underW = 0.86+floorHeight2 ;the amount of stuff under the window
GLOBAL wHeight = 1.31 ;the height of the window
GLOBAL overW = 2.18 ;the amount of stuff above the window
GLOBAL boothHeight = underW+wHeight+overW ;the total height of the booth in the back

GLOBAL wWidth = 2.01
GLOBAL outDoor = width-1.05*2 ;length to the outer side of the door
GLOBAL inDoor = outDoor-1.88*2 ;length to the inner corner of the door 

GLOBAL doorHeight = 2.18 ;height of the door


CORNERS

;front face of the thing. Missing windows, doors, and area below window.
37	-outDoor/2	floorLength4	floorHeight2
38	-outDoor/2	floorLength4	floorHeight2+doorHeight
39	-inDoor/2	floorLength4	floorHeight2+doorHeight
40	-inDoor/2	floorLength4	floorHeight2
42	-wWidth/2	floorLength4	floorHeight2+doorHeight

43	wWidth/2		floorLength4	floorHeight2+doorHeight
45	inDoor/2		floorLength4	floorHeight2
46	inDoor/2		floorLength4	floorHeight2+doorHeight
47	outDoor/2	floorLength4	floorHeight2+doorHeight
48	outDoor/2	floorLength4	floorHeight2

;49	width/2		floorLength4	floorHeight2
50	width/2		floorLength4	boothHeight
51	-width/2		floorLength4	boothHeight
;52	-width/2		floorLength4	floorHeight2

53	-wWidth/2	floorLength4	underW ;point for under the window far
54	wWidth/2		floorLength4	underW ;point for under the window close

;top face of the booth
55	-width/2		length		boothHeight
56	width/2		length		boothHeight


PLANES

[501	boothface / 6 50 51 5/
	(a / 40 39 38 37/ wood)
	(b / 54 43 42 53 / glass)
	(c / 48 47 46 45 / wood)
	(d / 6 50 51 5 / panels)
	]
[502	top / 50 56 55 51 / gyp] 
[503 	backWall / 56 28 27 55 / gyp]

;[200	testwall / 9 50 51 5/ gyp]
