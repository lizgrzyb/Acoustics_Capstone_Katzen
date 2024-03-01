;MASTER.GEO
;PROJECT: KatzenV1
;This is the master file for the Katzen Abrahms Recital Hall. The main geometry is coded in this file. Everything else 
;is located in its seperate geo file. The other geofiles are:

INCLUDE BOOTH.geo
INCLUDE PANELS.geo

;---------------------------------------------------------------------------------------------------------------------
;Absorption coefficients and scattering coefficients------------------------------------------------------------------
;---------------------------------------------------------------------------------------------------------------------
ABS wood = <27 30 20 12 10 14>L <99 99 99 99 99 99>{163 143 125}			;L <10 13 19 26 23 53>{163 143 125}
ABS glass = <35 25 18 12 7 4>L <99 99 99 99 99 99>{162 188 229}			;L <0 0 0 0 0 0>{162 188 229}
ABS carpet = <2 6 14 37 60 65 >L <99 99 99 99 90 90>{170 169 167}			;L <8 11 16 23 32 45>{170 169 167}
ABS gyp = <18 13 11 10 7 7>L <95 99 99 99 90 90>{239 241 244}			;L <4 6 9 12 17 15>{170 169 167}
ABS stage = <12 15 15 10 6 7>L <5 0 0 0 0 99>{81 81 81}			;L <2 3 4 6 9 12> {81 81 81}
ABS panels = <26 60 75 75 50 45> L <99 99 99 99 90 90>{81 81 81}		;L <9 13 19 26 38 53>{81 81 81}

ABS audience = <50 50 60 55 85 80>	L <99 95 99 99 90 90>{128 128 0}	
ABS AUDABS = audience		; L <21 30 42 60 85 99> {128 128 0}
ABS floorabs = carpet

;Constant declarations--------------------------------------------------------------------------------------------------
GLOBAL width = 12.2 ;width of floor of the hall
GLOBAL stageWidth = 9.2 ;width at the rear of the stage

GLOBAL length = 25.08 ;length of the floor of the hall
GLOBAL floorLength = length-11.28-1.17
GLOBAL stageLength = length-floorLength ;the distance from the rear wall of the stage to the end of the stage
GLOBAL floorLength1 = stageLength+2.34 ;distance to the first bend in floor
GLOBAL floorLength2 = floorLength1+4.13 ;distance to the second bend in the floor
GLOBAL floorLength3 = floorLength2 + 4.34 ;distance to the third bend in floor
GLOBAL floorLength4 = length-1.17 ;distance to the back end of the floor

GLOBAL height = 8.46 ;height at foot of stage
GLOBAL stageHeight = 0.77
GLOBAL floorHeight1 = 0.72
GLOBAL floorHeight2 = 1.12

;Ceiling Globals-------------------------------------------------------------------------------------------
GLOBAL cWidth1 = stageWidth+.6

GLOBAL hallHeight1 = height-3.39
GLOBAL hallHeight2 = height-1.7
GLOBAL hallHeight3 = height-0.94
GLOBAL hallHeight4 = height-0.37
GLOBAL hallHeight5 = height-0.35
GLOBAL hallHeight6 = height-0.45

GLOBAL hLen1 = 0.97
GLOBAL hLen2 = 5.2
GLOBAL hLen3 = 4.56+hLen2
GLOBAL hLen4 = 4.55+hLen3
GLOBAL hLen5 = 4.57+hLen4
GLOBAL hLen6 = 4.54+hLen5
GLOBAL hLen7 = length ;the last little bit of the 

GLOBAL aWidth = 10 ;width of the audien
GLOBAL aHeight = 0.9 ;height of the audience

;---------------------------------------------------------------------------------------------------------
CORNERS
;---------------------------------------------------------------------------------------------------------
;floor corners--------------------------------------------------------------------------------------------
1	-width/2		stageLength 	0
2	-width/2		floorLength1	0
3	-width/2		floorLength2	floorHeight1
4	-width/2		floorLength3	floorHeight2
5	-width/2		floorLength4	floorHeight2

6	width/2		floorLength4	floorHeight2
7	width/2		floorLength3	floorHeight2
8	width/2		floorLength2	floorHeight1
9	width/2		floorLength1	0
10	width/2		stageLength 	0

11	width/2		stageLength	stageHeight
12	width/2		5.2		stageHeight ;the point where the stage starts to angle
13	width/2-0.41	5.2		stageHeight ;slight decrease in width
801	cWidth1/2		hLen1		stageHeight
14	stageWidth/2	0		stageHeight ;rear corner of stage
15	-stageWidth/2	0		stageHeight ;other rear corner of stage
800	-cWidth1/2	hLen1		stageHeight
16	-width/2+0.41	5.2		stageHeight ;slight increase in width
17	-width/2		5.2		stageHeight ;end of angle
18	-width/2		stageLength	stageHeight ;end of the stage

;ceiling corners-----------------------------------------------------------------------------------------
19	-stageWidth/2	0		hallHeight1
20	-cWidth1/2	hLen1		hallHeight2
21	-width/2+0.41	hLen2		hallHeight3
22	-width/2		hLen2		hallHeight3
23	-width/2		hLen3		hallHeight4
24	-width/2		hLen4		height
25	-width/2		hLen5		hallHeight5
26	-width/2		hLen6		hallHeight5
27	-width/2		hLen7		hallHeight6

28	width/2		hLen7		hallHeight6
29	width/2		hLen6		hallHeight5
30	width/2		hLen5		hallHeight5
31	width/2		hLen4		height
32	width/2		hLen3		hallHeight4
33	width/2		hLen2		hallHeight3
34	width/2-0.41	hLen2		hallHeight3
35	cWidth1/2	hLen1		hallHeight2
36	stageWidth/2	0		hallHeight1

;AUDIENCE------------------------------------------------------------------------
200	-aWidth/2	floorLength1	aHeight
201	-aWidth/2	floorLength3	floorHeight2+aHeight
202	aWidth/2		floorLength3	floorHeight2+aHeight	
203	aWidth/2		floorLength1	aHeight

210	-aWidth/2	floorLength1	0
211	-aWidth/2	floorLength3	floorHeight2
212	aWidth/2		floorLength3	floorHeight2	
213	aWidth/2		floorLength1	0

205	-aWidth/2	floorLength2	floorHeight1
215	awidth/2		floorLength2	floorHeight1

;-------------------------------------------------------------------------------------------------------
PLANES
;-------------------------------------------------------------------------------------------------------
;Walls, floors, and ceiling-----------------------------------------------------------------------------
[1	floor1 / 10 9 213 210 2 1 / carpet]
[2	floor2Close / 9 8 215 213 / carpet]
[420	floor2Far/ 210 205 3 2 / carpet]
[3	floor3Close / 8 7 212 215 / carpet]
[430	floor3Far / 211 4 3 205 / carpet]
[4	floor4 / 7 6 5 4 211 212 / carpet]
[5	stage / 18 17 16 800 15 14 801 13 12 11 / stage]

[6	ceiling1 /19 20 35 36/ gyp]
[7	ceiling2 /20 21 34 35/ gyp]
[902	ceilingFill/ 21 22 68 67 167 168 33 34/ gyp]
[9	ceiling4 /67 66 166 167 / gyp]
[10	ceiling5 / 66 62 76 176 162 166 / gyp]
[11	ceiling6 /76 72 86 186 172 176/ gyp]
[12	ceilig7 /86 82 96 196 182 186/ gyp]
[13	ceiling8 /26 27 28 29 196 96/ gyp]

[14	riser / 1 18 11 10 / stage]
[15	backWall/ 15 19 36 14 / gyp]
[16	stageWallFar1 / 16 21 20 800 / gyp]
[900	stageWallFar2 / 800 20 19 15 / gyp]
[17	stageInFar / 16 17 22 21 / gyp]
[18	hallWoodFar / 5 98 91 81 71 61 64 68 22 17 18 1 2 3 4/ wood]
[19	hallGypFar / 98 51 55 27 26 91/ gyp]
[20	hallWoodClose / 7 8 9 10 11 12 33 168 164 161 171 181 191 198 6 /wood]
[21	hallGypClose / 198 191 29 28 56 50 / gyp]
[22	stageInClose / 12 13 34 33 / gyp]
[23	stageWallClose1 / 14 36 35 801 / gyp]
[24	stageWallClose2 / 801 35 34 13 / gyp]

;audience planes
[400	aTop /203 202 201 200 /AUDABS]
[401	aclose / 213 215 212 202 203 / wood]
[402	aStage / 210 213 203 200 / carpet]
[403	afar / 200 201 211 205 210 / wood]
[404	aBack / 212 211 201 202 / wood]
