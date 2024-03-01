;PANELS
;This geo file contains the information for the panels on the walls of the Abrahms Katzen Recital hall.

;-----------------------------------------------------------------------------------------------------
;Global defenitions-----------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------

GLOBAL panelW = 0.42 ;panel widths
GLOBAL panelOff = 0.42 ;offset
GLOBAL TA = 1 ;The offset for the angle of the panels

GLOBAL p1Length = 4.55 ;length of first panel
GLOBAL pLength = 4.85 ;length of rest of panels
GLOBAL p11height = hallHeight3 ;height of the first panel's first point
GLOBAL p12Height = height
GLOBAL pLHeight = height-5.60
GLOBAL pSHeight = height-5.34
GLOBAL backOff = height-5.34*.7




CORNERS

;FAR-----------------------------------------------------------------------------------------------
;Pannel 1
61	-width/2			hLen3		pSHeight ;bottom back
62	-width/2+TA		hLen3		hallHeight4 ;top back

64	-width/2			hLen2+.1		pLHeight
65	-width/2+panelW*2-.0665	hLen3		pSHeight
66	-width/2+PanelW*2+TA	hLen3		hallHeight4
67	-width/2+TA		hLen2+.1		hallHeight3

68	-width/2			hLen2+.1		hallHeight3

;Pannel 2
71	-width/2			hLen4		pSHeight ;bottom back
72	-width/2+TA		hLen4		height ;top back
73	-width/2			hLen3		hallHeight4 ;top back base
	
74	-width/2			hLen3		pLHeight
75	-width/2+panelW*2-.0672-.0065-.0007		hLen4		pSHeight
76	-width/2+panelW*2+TA	hLen4		height
;77	-width/2+TA		hLen3		hallHeight4
	
;Pannel 3
81	-width/2			hLen5		pSHeight ;bottom back
82	-width/2+TA		hLen5		hallHeight5 ;top back
83	-width/2			hLen4		height ;top back base
	
84	-width/2			hLen4		pLHeight
85	-width/2+panelw*2+.0655	hLen5		pSHeight
86	-width/2+panelW*2+TA	hLen5		hallHeight5
;87	-width/2+TA		hLen4		height

;Pannel 4
91	-width/2			hLen6		pSHeight ;bottom back
;92	-width/2			hLen6		hallHeight5 ;top back
93	-width/2			hLen5		hallHeight5 ;top back base
	
94	-width/2			hLen5		pLHeight
95	-width/2+panelW*2		hLen6		pSHeight
96	-width/2+panelW*2+TA	hLen6		hallHeight5
;97	-width/2+TA		hLen5		hallHeight5

98	-width/2			floorLength4	pSHeight
;CLOSE-----------------------------------------------------------------------------------------------
;Pannel 5
161	width/2			hLen3		pSHeight ;bottom back
162	width/2-TA		hLen3		hallHeight4 ;top back
;163	width/2			hLen2		hallHeight3 ;top back base

164	width/2			hLen2+.1		pLHeight
165	width/2-panelW*2+.0665		hLen3		pSHeight
166	width/2-panelW*2-TA	hLen3		hallHeight4
167	width/2-TA		hLen2+.1		hallHeight3

168	width/2			hLen2+.1		hallHeight3

;Pannel 6
171	width/2			hLen4		pSHeight ;bottom back
172	width/2-TA		hLen4		height ;top back
173	width/2			hLen3		hallHeight4 ;top back base
	
174	width/2			hLen3		pLHeight
175	width/2-panelW*2+.0720+.0024		hLen4		pSHeight
176	width/2-panelW*2-TA	hLen4		height
;177	width/2-TA		hLen3		hallHeight4
	
;Pannel 7
181	width/2			hLen5		pSHeight ;bottom back
182	width/2-TA		hLen5		hallHeight5 ;top back
183	width/2			hLen4		height ;top back base
	
184	width/2			hLen4		pLHeight
185	width/2-panelW*2-.0632-.0023		hLen5		pSHeight
186	width/2-panelW*2-TA	hLen5		hallHeight5
;187	width/2-TA		hLen4		height

;Pannel 8
191	width/2			hLen6		pSHeight ;bottom back
;192	width/2			hLen6		hallHeight5 ;top back
193	width/2			hLen5		hallHeight5 ;top back base
	
194	width/2			hLen5		pLHeight
195	width/2-panelW*2		hLen6		pSHeight
196	width/2-panelW*2-TA	hLen6		hallHeight5
;197	width/2-TA		hLen5		hallHeight5

198	width/2			floorLength4	pSHeight

PLANES

;FAR--------------------------------------------------------------------------------------------
;Panel 1
[29 	front /64 65 66 67/ gyp] 
[30	bottom/61 65 64 / gyp]
[31	side/62 66 65 61 /gyp]
[32	back/68 64 67/ gyp]

;Panel 2
[33 	front /75 76 62 61/ gyp] 
[34	bottom/71 75 61 / gyp]
[35	side/72 76 75 71 /gyp]

;Panel 3
[36 	front /85 86 72 71/ gyp] 
[37	bottom/81 85 71 / gyp]
[38	side/82 86 85 81 /gyp]

;Panel 4
[39 	front /95 96 82 81/ gyp] 
[40	bottom/91 95 81 / gyp]
[41	side/26 96 95 91 /gyp]

;CLOSE--------------------------------------------------------------------------------------------
;Panel 5
[42 	front /167 166 165 164/ gyp] 
[43	bottom/164 165 161 / gyp]
[44	side/161 165 166 162 /gyp]
[45	back /164 168 167/gyp]

;Panel 6
[46 	front /161 162 176 175/ gyp] 
[47	bottom/161 175 171 / gyp]
[48	side/171 175 176 172 /gyp]

;Panel 7
[49 	front /171 172 186 185/ gyp] 
[50	bottom/171 185 181 / gyp]
[51	side/181 185 186 182 /gyp]

;Panel 8
[52 	front /181 182 196 195/ gyp] 
[53	bottom/181 195 191 / gyp]
[54	side/191 195 196 29 /gyp]