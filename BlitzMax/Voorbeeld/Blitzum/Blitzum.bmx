Strict
Framework BRL.GLMax2D
Import BRL.Random
Import BRL.FileSystem
Import BRL.BMPLoader
Import BRL.FreeAudioAudio
Import BRL.WavLoader
Import BRL.Retro

Import "bbtype.bmx"
Import "bbvkey.bmx"

Global digit_list:TList=New TList
Global col_list:TList=New TList
Global pnts_list:TList=New TList
Global seg_list:TList=New TList
Global Frag_list:TList=New TList
Global pulsar_list:TList=New TList
Global star_list:TList=New TList
Global mine_list:TList=New TList
Global tank_list:TList=New TList
Global phot_list:TList=New TList
Global elec_list:TList=New TList
Global bond_list:TList=New TList
Global nuc_list:TList=New TList
' Blitzum  aka  Quantum

' ported to BlitzMax April 2006
' Version 2.0

' version 1.3 (July 30, 2003)
' - randomized the electrons at start

' updated to version 1.2 (June 11, 2001)
' - new sound lib 

' version 1.1 (November 16, 2000)

' Started November 1, 2000
' coding and graphics by Mark Incitti
' pointinpoly algorithm from 
'	http://www.ecse.rpi.edu/Homepages/wrf/geom/pnpoly.html
' sounds sampled from recordings of original Quantum running in MAME

' changes: 
'	changed name from quantum To blitzum - 11/15/2000
'	mouse speed limitter added - 35% - 11/15/2000

' TODO:
' CheckForLoop - needs more work - still misses some loops
' flushkeys and flushmouse ?
'
' FUTURE TODO:
' replace line draws with images (fewer color changes and less plotting)
'	- photons, stars, tanks, mines


Const debugging=False
Const ARCADE=False ' switch to true for Quantum title screen

Const width=800
Const height=600

Const POINTDUR = 25		' number of frames points are display
Const EPOINTDUR = 12	' electron display is shorter than others
Const MAXFRAGS = 100	' max explosion bits
Const MAXNUCS = 8		' 7-16
Const MAXSTARS = 18
Const VBORDER = 60
Const HBORDER = 120
Const PHMINWAIT = 10	' minimum delay between photon releases
Const PWGROWAIT = 60	' (60-120) delay between player width increases
Const FREEMAN = 20000
Const MPERCENT# = .35

Type bbnuc Extends TBBType

	Method New()
		Add(nuc_list)
	End Method

	Method After:bbnuc()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbnuc(t.Value())
	End Method

	Method Before:bbnuc()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbnuc(t.Value())
	End Method

	Field x#,y#,xs#,ys#
	Field r,g,b,col
	Field die
	Field act
	Field id
	Field elecskilled
End Type

Type bbbond Extends TBBType

	Method New()
		Add(bond_list)
	End Method

	Method After:bbbond()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbbond(t.Value())
	End Method

	Method Before:bbbond()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbbond(t.Value())
	End Method

	Field p1:bbnuc
	Field p2:bbnuc
	Field act
End Type

Type bbelec Extends TBBType

	Method New()
		Add(elec_list)
	End Method

	Method After:bbelec()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbelec(t.Value())
	End Method

	Method Before:bbelec()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbelec(t.Value())
	End Method

	Field p:bbnuc
	Field range
	Field hv
	Field x#,y#,xs#,ys#
	Field r,g,b,col
	Field free
	Field px,py
	Field die
	Field killedwithnuc
End Type

Type bbphot Extends TBBType

	Method New()
		Add(phot_list)
	End Method

	Method After:bbphot()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbphot(t.Value())
	End Method

	Method Before:bbphot()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbphot(t.Value())
	End Method

	Field x#,y#,xs#,ys#
	Field die
	Field pos	' anim position
End Type

Type bbtank Extends TBBType

	Method New()
		Add(tank_list)
	End Method

	Method After:bbtank()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbtank(t.Value())
	End Method

	Method Before:bbtank()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbtank(t.Value())
	End Method

	Field x#,y#,xs#,ys#
	Field die
	Field pos	' anim position
	Field minetimer	' mine release timer
End Type

Type bbmine Extends TBBType

	Method New()
		Add(mine_list)
	End Method

	Method After:bbmine()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbmine(t.Value())
	End Method

	Method Before:bbmine()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbmine(t.Value())
	End Method

	Field x,y
	Field die
	Field dur	' anim position / life timer
End Type

Type bbstar Extends TBBType

	Method New()
		Add(star_list)
	End Method

	Method After:bbstar()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbstar(t.Value())
	End Method

	Method Before:bbstar()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbstar(t.Value())
	End Method

	Field x#,y#,xs#,ys#
	Field die
	Field pos	' anim position
End Type

Type bbpulsar Extends TBBType

	Method New()
		Add(pulsar_list)
	End Method

	Method After:bbpulsar()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbpulsar(t.Value())
	End Method

	Method Before:bbpulsar()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbpulsar(t.Value())
	End Method

	Field x#,y#,xs#,ys#
	Field die
	Field pos	' anim position (*4)
	Field posdir	' anim counter direction -1 or +1
End Type

Type bbFrag Extends TBBType

	Method New()
		Add(Frag_list)
	End Method

	Method After:bbFrag()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbFrag(t.Value())
	End Method

	Method Before:bbFrag()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbFrag(t.Value())
	End Method

	Field x#,y#,xs#,ys#
	Field r,g,b
	Field dur
End Type
	
Type bbseg Extends TBBType

	Method New()
		'Add(seg_list)
	End Method

	Method After:bbseg()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbseg(t.Value())
	End Method

	Method Before:bbseg()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbseg(t.Value())
	End Method

	Field xs#,ys#,xe#,ye#,dur,loop
End Type

Type bbpnts Extends TBBType

	Method New()
		Add(pnts_list)
	End Method

	Method After:bbpnts()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbpnts(t.Value())
	End Method

	Method Before:bbpnts()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbpnts(t.Value())
	End Method

	Field x,y,dur,value
End Type

Type bbcol Extends TBBType

	Method New()
		Add(col_list)
	End Method

	Method After:bbcol()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbcol(t.Value())
	End Method

	Method Before:bbcol()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbcol(t.Value())
	End Method

	Field r,g,b
End Type

Type bbdigit Extends TBBType

	Method New()
		Add(digit_list)
	End Method

	Method After:bbdigit()
		Local t:TLink
		t=_link.NextLink()
		If t Return bbdigit(t.Value())
	End Method

	Method Before:bbdigit()
		Local t:TLink
		t=_link.PrevLink()
		If t Return bbdigit(t.Value())
	End Method

	Field x1#,y1#,x2#,y2#
End Type



Global x=width/2,y=height/2,xold=x,yold=y	' player location
Global playgame%

Global r,g,b
Global counter		' player color cycle counter
Global pw		' player width
Global pwtimer		' delay between pw increases
Global nucskilled	' flag - pw is reset when nuc killed

Global bcount#		' bond cycle counter
Global bondact=2	' bond action 0=bondact, 1=warning, 2=harmless
Global bcountmax# 	' bond total cycle time
Global bcountwarn	' bond warning time
Global bcountdead	' bond deadly time
Global bondsalive

Global segs		' number of segments
Global segdur		' number of ticks segments last

Global cpx#,cpy#		' center point(average) for loop shrinking
Global numsegsinloop		' number of segments in the loop
Global minx,miny,maxx,maxy	' bounding box for loop
Global looping			' T/F flag
Global loopmode=0	' action of loop 0 - check for enemies in loop, 1 - levels, 2 - letters
Global g_numkilled	' number of enemies killed in single loop

Global nucact		' nucleus action 0 = dead, 1 = normal, 2 = bonding
Global nucspeed#	' max nucleus speed
Global nucsperlevel	' max number of nucs per level
Global nucsalive

Global elecsalive	' number of electrons still alive

Global phspeed#		' max photon speed
Global phcreatewait	' delay between releases
Global phtimer		' counter
Global phcol		' color cycle

Global tanksperlevel
Global tankminewait	' delay between releasing mines
Global tankspeed#
Global minedur		' size/duration of mine

Global starsperlevel
Global starsplitwait	' delay between splitting
Global starspeed#	' max star speed
Global startimer	' counter for star splits/colors/sounds
Global numstarskilled	' determines the point values 100,200,300,400,400,ect
Global starsalive

Global pulsarsperlevel
Global pulsarspeed#

Global pntsalive
Global fragsalive
Global level
Global highestlevel=51	' highest level reached - determines selection 
Global men
Global numfreemen	' number of free men collected
Global nummen=3		' number of men player starts with - 3,4,5
Global dead
Global gameover
Global score
Global levelselected	' level number circled by player
Global letterselected	' letter circled by player





' top 10 scores, levels reached and player names
Global scores%[10+1]
Global levels%[10+1]
Global names$[10+1]

LoadScores()

Global xpseg#[100+1],ypseg#[100+1]

Global nucs:bbnuc[MAXNUCS+1]
For Local t% = 0 To MAXNUCS-1
	nucs[t] = New bbnuc
Next

Global bnds[MAXNUCS+1,MAXNUCS+1]
For Local t% = 0 To MAXNUCS-1
	For Local s% = 0 To MAXNUCS-1
		bnds[t,s] = False
	Next
Next


Global cols:bbcol[7+1]
For Local t% = 0 To 6
	cols[t] = New bbcol
	ReadData r,g,b
	cols[t].r=r
	cols[t].g=g
	cols[t].b=b
Next
DefData 255,0,0		' red
DefData 0,255,0		' green
DefData 0,0,255		' blue
DefData 255,0,255		' violet
DefData 0,255,255		' cyan
DefData 255,255,0		' yellow
DefData 255,255,255	' white





Graphics width, height, 0
HideMouse()

Global spheres:TImage = LoadAnimImage("gfx/spheres.bmp",13,13,0,7)
Global snd_bounce:TSound = LoadSound("sound/bounce.wav")
Global snd_photon:TSound = LoadSound("sound/photon.wav")
Global snd_killphoton:TSound = LoadSound("sound/killph.wav")
Global snd_killnuc:TSound = LoadSound("sound/killnuc.wav")
Global snd_killnuc2:TSound = LoadSound("sound/killnuc2.wav")
Global snd_killtank:TSound = LoadSound("sound/killstar.wav")
Global snd_killpuls:TSound = LoadSound("sound/killstar.wav")
Global snd_killstar:TSound = LoadSound("sound/killstar.wav")
Global snd_killmine:TSound = LoadSound("sound/killstar.wav")
Global snd_killtail:TSound = LoadSound("sound/killtail.wav")
Global snd_bonus:TSound = LoadSound("sound/bonus.wav")
Global snd_death:TSound = LoadSound("sound/death.wav")
Global snd_zoom:TSound = LoadSound("sound/zoom.wav")
Global snd_bond1:TSound = LoadSound("sound/bond.wav",1)
'SoundPitch snd_bond1,52000
Global snd_bond2:TSound = LoadSound("sound/bond.wav",1)
'SoundPitch snd_bond2,30000
Global chn_bond:TChannel = Null
Global snd_split1:TSound = LoadSound("sound/splitter1.wav")
Global snd_split2:TSound = LoadSound("sound/splitter2.wav")
Global snd_split3:TSound = LoadSound("sound/splitter3.wav")
Global snd_split4:TSound = LoadSound("sound/splitter4.wav")
Global snd_mine:TSound = LoadSound("sound/mine.wav")
Global snd_pulsar:TSound = LoadSound("sound/pulsar.wav")
Global snd_loop:TSound = LoadSound("sound/loop.wav")



'SetBuffer BackBuffer()

RestoreData letterdata
Global letterlen[100+1]
Global letters:bbdigit[100+1,6+1]
For Local t% = 0 To 99
	letterlen[t] = -1
Next

Local np%,lx1%,ly1%,lx2%,ly2%
For Local t% = 32 To 95
	ReadData np	'number of lines in letter (max 6)  x1,y1, x2,y2
	letterlen[t] = np-1
	For Local s% = 0 To letterlen[t]
		letters[t,s] = New bbdigit
		ReadData lx1,ly1,lx2,ly2
		letters[t,s].x1 = lx1
		letters[t,s].y1 = ly1
		letters[t,s].x2 = lx2
		letters[t,s].y2 = ly2
	Next
Next

' create the font
Global vecfontr:TImage = CreateImage(12,14,100)
Global vecfontg:TImage = CreateImage(12,14,100)
Global vecfontb:TImage = CreateImage(12,14,100)
Global vecfontw:TImage = CreateImage(12,14,100)

Local xd%,yd%
Cls
Cls
For Local s% = 0 To 1
	For Local t% = 0 To 49
		xd = t*12
		yd = s*20
		SetColor 255,0,0
		DrawDigit(t+s*50,xd,yd,2.1,0)
		GrabImage vecfontr,xd,yd,t+s*50
		SetColor 0,255,0
		DrawDigit(t+s*50,xd,yd,2.1,0)
		GrabImage vecfontg,xd,yd,t+s*50
		SetColor 0,0,255
		DrawDigit(t+s*50,xd,yd,2.1,0)
		GrabImage vecfontb,xd,yd,t+s*50
		SetColor 255,255,255
		DrawDigit(t+s*50,xd,yd,2.1,0)
		GrabImage vecfontw,xd,yd,t+s*50
	Next
Next

Global demoposx%[30+1],demoposy%[30+1]
RestoreData demopoints 
For Local t% = 0 To 29
	ReadData demoposx[t]
	ReadData demoposy[t]
Next




SeedRnd(MilliSecs()) 

Global tim_max% = -5000
Global tim_min% = 5000
Global tim%
Global bonus% = 0
Global xm%,ym%
Global n:bbnuc = Null
Global dcount% = 0

While Not VKeyHit(1)
	
	If playgame = True
		numfreemen = 1
		men = nummen
		score = 0
		SetUpLevel()
		UpdateEnemies()
		ZoomIn()
		FlushMouse
		If level > 1 Then bonus = level*3040-3080
		While (Not VKeyHit(1)) And (gameover=False)
			tim = MilliSecs()
			Cls
			UpdateEnemies()
			UpdateSegs()
			xm=(MouseX()-x)*MPERCENT':If Abs(xm) > 20 Then xm = 20*Sgn(xm)
			ym=(MouseY()-y)*MPERCENT':If Abs(ym) > 20 Then ym = 20*Sgn(ym)
			x=x+xm;y=y+ym
			If x<HBORDER/2 Then x=HBORDER/2 
			If x>width-HBORDER/2 Then x=width-HBORDER/2
			If y<VBORDER/2 Then y=VBORDER/2 
			If y>height-VBORDER/2 Then y=height-VBORDER/2
			MoveMouse(x,y)
			If Abs(xold-x) > 1 Or Abs(yold-y) > 1
				CreateSeg()
				xold=x;yold=y
			EndIf
			UpdatePlayer()
			If dead = True
				KillPlayer()
				If gameover = True
					RenderGameOver()
					bonus=0
					For n:bbnuc = EachIn nuc_list
						n.act=0
					Next
				Else
					Cls
					UpdateEnemies()
					ZoomIn()
				EndIf
			Else
				RenderPlayer()
				RenderSegs()
				RenderEnemies()
				RenderPoints()
				SetColor 0,0,255
				RenderScore()
				RenderMenLeft()
			EndIf
	
			tim = MilliSecs()-tim
If debugging = True
'				If tim < tim_min Then tim_min = tim
'				If tim > tim_max Then tim_max = tim
'				cntrtim=cntrtim+1:timtot=timtot+tim:timavg=timtot/cntrtim
'				Locate 0,40:Print tim_min+"-"+tim+"-"+tim_max
'				Rect 0,0,width,height,0
'				Rect HBORDER,VBORDER,width-HBORDER*2,height-VBORDER*2,0
'				Locate 0,50:Print startimer
				If MouseDown(3) 
					Delay 500 
					While MouseDown(3) & (Not MouseDown(2) )
						Delay 10
					Wend
				EndIf
				If MouseDown(1)
					SetUpLevel()
					bonus = 0
					Delay 90
				EndIf
EndIf
			If (nucsalive=0) And (elecsalive=0)
				If bonus > 0
					SetColor 255,0,0
					Local sc# = dcount/4.0;If sc# > 10 Then sc#=10
					Local st$ = "LEVEL BONUS!"
					Local ln% = Len(st$)
					For Local s% = 0 To ln-1
						Local d% = Asc(Mid$(st$,s+1,1))
						Local xd% = (width-ln*sc*6)/2
						DrawDigit(d,xd+s*sc*6,270-sc*8,sc,0)
					Next
					st$ = bonus 'level*3040-3080
					ln = Len(st$)
					For Local s% = 0 To ln-1
						Local d% = Asc(Mid$(st$,s+1,1))
						Local xd% = (width-ln*sc*6)/2
						DrawDigit(d,xd+s*sc*6,300+sc*8,sc,0)
					Next	
				EndIf 
				If looping = False Or dcount>0
					dcount=dcount+1
					If dcount = 1 And bonus > 0
						score = score + bonus
						If score>=FREEMAN*numfreemen
						    numfreemen=numfreemen+Floor(score/FREEMAN)
						    men=men+1
						EndIf 	
						PlaySound(snd_bonus)
					EndIf
					If dcount > 60
						Delay 200
						bonus = 0
						SetUpLevel()
						UpdateEnemies()
						ZoomIn()
						dcount = 0
					EndIf
				EndIf
			EndIf
			Flip False
			
'			If KeyHit(88) SaveBuffer(FrontBuffer(),"SNAPHOT"+counter+".bmp")
			If tim<30 Delay 30-tim
		Wend
		
		If chn_bond <> Null StopChannel chn_bond;chn_bond=Null
		playgame = False
		If gameover = True	'skip this if esc pressed
			If (level-1) > highestlevel Then highestlevel = (level-1)
			HighScore()
			gameover=False
		EndIf
		
	EndIf

	ShowTitle()

	If MouseHit(1) And playgame=False
		playgame = True
		' pick a level... or start at 1
		PickLevel()
	Else
		If Not VKeyDown(1) Then Delay 1500	
	EndIf

	If playgame = False ShowScores()
	
	If MouseHit(1) And playgame=False
		playgame = True
		' pick a level... or start at 1
		PickLevel()
	Else 
		If (Not VKeyDown(1)) And playgame=False Then Delay 1500	
	EndIf

	If playgame = False ShowInstructions()

	If MouseHit(1) And playgame=False
		playgame = True
		' pick a level... or start at 1
		PickLevel()
	Else
		If Not VKeyDown(1) And playgame=False Then Delay 1500	
	EndIf
	
Wend

SaveScores()
EndGraphics

ShowMouse()
End





Function Rect(x:Int,y:Int,w:Int,h:Int,f:Int=0)
	If f
		'solid
		DrawRect x,y,w,h
	Else
		'outline
		Local x1:Int = x + w
		Local y1:Int = y + h
		DrawLine x,y,x,y1
		DrawLine x,y1,x1,y1
		DrawLine x1,y1,x1,y
		DrawLine x1,y,x,y
	EndIf
End Function



Function ShowInstructions()

	counter = 0
	x = demoposx[0]+40
	y = demoposy[0]+40
	While (counter < 400) And (Not MouseDown(1)) And (Not VKeyDown(1)) And playgame = False
		Cls
		SetColor 255,255,0
		DrawString("CAPTURE ATOMIC PARTICLES",400-12*12,40,-1,1)
		If counter > 200 Then DrawString("NUCLEUS -",460,110,-1,3)
		If counter > 200 Then DrawString("300 POINTS",480,130,-1,3)
		If counter > 240 Then DrawString("ELECTRONS -",460,160,-1,3)
		If counter > 240 Then DrawString("20 POINTS",480,180,-1,3)
		If counter > 290 Then DrawString("AVOID DEADLY PARTICLES",400-11*12,450,-1,1)
		If counter > 360 Then DrawString("OR CAPTURE THEM FOR EXTRA POINTS",400-16*12,480,-1,1)
		DrawImage spheres,290,110,0
		SetColor 255,0,0
		DrawRect 280,120-counter/5,2,2
		DrawRect 230+counter/6,95,2,2
		If (counter/10)Mod 2 =0 SetColor 0,255,0 Else SetColor 255,0,255
		Local demline% = Int(counter/10);If demline > 29 Then demline=29
		For Local t% = 1 To demline	'1-29
			x = demoposx[t]+40
			y = demoposy[t]+40
			DrawLine demoposx[t-1]+40,demoposy[t-1]+40,demoposx[t]+40,demoposy[t]+40
		Next
		pw = 6
		RenderPlayer()
		Flip
'		If KeyHit(88) SaveBuffer(FrontBuffer(),"SNAPHOT"+MilliSecs()+".bmp")
		Delay 10
		counter = counter+1
	Wend
End Function




Function ShowScores()
	counter = 0
	While (counter < 250) & (Not MouseDown(1)) & (Not VKeyDown(1)) 
		Cls
		RenderScores(-1,100)
		DrawString("PRESS LEFT MOUSE BUTTON TO START",400-14*12,450,-1,Int(counter/10) Mod 4)
		Flip
		Delay 15
		counter = counter+1
	Wend
End Function




Function ShowTitle()
If ARCADE=True
	counter = 0
	While (counter < 250) And (Not MouseDown(1)) And (Not VKeyDown(1)) And playgame=False
		Cls
		SetColor 0,0,128+counter/2
		Local st$ = "OUANTUM"
		Local sc# = counter/10.0;If sc# > 18 Then sc#=18
		Local ln% = Len(st$)
		Local xd% = (width-ln*sc*6)/2
		Local yd% = (height-18*sc)/2-50
		For Local t% = 0 To ln-1
			Local d% = Asc(Mid$(st$,t+1,1))
			DrawDigit(d,xd+t*6*sc,yd,sc,0)
		Next 
		DrawLine xd+3*sc, yd+5*sc,xd+8*sc,yd+8*sc
		If sc < 7
			x = xd+8*sc
		Else
			x = xd+8*sc+(counter/10.0-7)*31
			If sc > 10
				DrawString("BY MARK INCITTI - 2001",460-12*6*(sc-10)/2,400,(sc-10)/2,2)
				DrawString("PORTED TO BLITZMAX IN 2006",420-12*6*(sc-10)/2,450,(sc-10)/2,2)
			EndIf 
		EndIf
		y = yd+8*sc
		DrawLine xd+8*sc,y,x,y
		pw = 1+sc/2
		RenderPlayer()
		Flip
'		If KeyHit(88) SaveBuffer(FrontBuffer(),"SNAPHOT"+MilliSecs()+".bmp")
		Delay 10
		counter = counter+1
	Wend
Else
	counter = 0
	While (counter < 300) And (Not MouseDown(1)) And (Not VKeyDown(1)) And playgame=False
		Cls
		Local kol% = 128+counter/3 ; If kol > 255 Then kol = 255
		SetColor 0,0,kol
		Local st$ = "BLITZUM"
		Local sc# = counter/10.0;If sc# > 18 Then sc#=18
		Local ln% = Len(st$)-1
		Local xd% = (width-ln*sc*6)/2
		Local yd% = (height-18*sc)/2-50
		DrawString(st$,xd,yd,sc,0)
		If sc > 10
				DrawString("BY MARK INCITTI - 2001",460-12*6*(sc-10)/2,400,(sc-10)/2,2)
				DrawString("PORTED TO BLITZMAX IN 2006",420-12*6*(sc-10)/2,450,(sc-10)/2,2)
		EndIf 
		If sc = 18 
			x = xd+ln*6*18-(counter/10.0-18)*50-40
			DrawLine xd+ln*6*18-40,y,x,y
			y = yd+10*sc
			pw = 1+sc/2
			RenderPlayer()
		EndIf
		Flip
'		If KeyHit(88) SaveBuffer(FrontBuffer(),"SNAPHOT"+MilliSecs()+".bmp")
		Delay 10
		counter = counter+1
	Wend
EndIf
End Function






' *************************************  vector text  **********************************

' if sc = -1 then use fixed font images 10X12
Function DrawDigit(d%,xd%,yd%,sc#,kol%)
	If d >32 And d <100
		If letterlen[d] > -1
			If sc > -1 
				For Local t% = 0 To letterlen[d]
					DrawLine letters[d,t].x1*sc+xd,letters[d,t].y1*sc+yd,letters[d,t].x2*sc+xd,letters[d,t].y2*sc+yd
					Plot letters[d,t].x2*sc+xd,letters[d,t].y2*sc+yd
				Next	
			Else
				Select kol
					Case 0
						DrawImage vecfontr, xd, yd, d
					Case 1
						DrawImage vecfontg, xd, yd, d
					Case 2
						DrawImage vecfontb, xd, yd, d
					Case 3
						DrawImage vecfontw, xd, yd, d
				End Select 
			EndIf
		EndIf
	EndIf
End Function




Function DrawString(st$,xd%,yd%,sc#,kol%)
	Local ln% = Len(st$)
	For Local s% = 0 To ln-1
		Local d% = Asc(Mid$(st$,s+1,1))
		If d >32 And d <100
			If letterlen[d] > -1
				If sc > -1
					For Local t = 0 To letterlen[d]
						DrawLine letters[d,t].x1*sc+xd+sc*5*s,letters[d,t].y1*sc+yd,letters[d,t].x2*sc+xd+sc*5*s,letters[d,t].y2*sc+yd
					Next	
				Else
					Select kol
						Case 0
							DrawImage vecfontr, xd+10*s, yd, d
						Case 1
							DrawImage vecfontg, xd+10*s, yd, d
						Case 2
							DrawImage vecfontb, xd+10*s, yd, d
						Default
							DrawImage vecfontw, xd+10*s, yd, d
					End Select 
				EndIf
			EndIf
		EndIf
	Next
End Function









' *********************************  transitions  ****************************

Function ZoomIn()
	Local yc% = height/2
	Local xc% = width/2
	PlaySound(snd_zoom)
	For Local t% = xc To 0 Step -8
		RenderScore()
		RenderMenLeft()
		RenderEnemies()
		SetColor 255,0,255
		DrawLine xc+t/2,yc+t/2,xc+t,yc+t
		DrawLine xc-t/2,yc+t/2,xc-t,yc+t
		DrawLine xc-t/2,yc-t/2,xc-t,yc-t
		DrawLine xc+t/2,yc-t/2,xc+t,yc-t
		SetColor 0,255,0
		DrawLine xc+t/2,yc,xc+t,yc
		DrawLine xc-t/2,yc,xc-t,yc
		DrawLine xc,yc-t/2,xc,yc-t
		DrawLine xc,yc+t/2,xc,yc+t
		Flip
		Cls
		Delay 2
	Next
	xold=width/2
	yold=height/2
	x=xold
	y=yold
	MoveMouse x,y
	FlushKeys()
End Function




Function RenderGameOver()
	Local xc% = width/2
	Local yc% = height/2
	For Local t% = 0 To xc Step 7
		Cls
		RenderScore()
		SetColor 0,55+t/2,0
		Local st$ = "GAME OVER"
		Local sc# = t/30.0
		Local ln% = Len(st$)
		For Local s% = 0 To ln-1
			Local d% = Asc(Mid$(st$,s+1,1))
			Local xd% = (width-ln*sc*6)/2
			Local yd% = (height-6*sc)/2
			DrawDigit(d,xd+s*6*sc,yd,sc,0)
		Next
		RenderEnemies()
		Flip
		Delay 20
	Next
	Delay 500
	For Local t% = xc To 0 Step -10
		Cls
		RenderScore()
		SetColor 0,55+t/2,0
		Local st$ = "GAME OVER"
		Local sc# = t/30.0
		Local ln% = Len(st$)
		For Local s% = 0 To ln-1
			Local d% = Asc(Mid$(st$,s+1,1))
			Local xd% = (width-ln*sc*6)/2
			Local yd% = (height-6*sc)/2
			DrawDigit(d,xd+s*6*sc,yd,sc,0)
		Next
		Flip
		Delay 20
	Next
	Delay 1500
End Function









' ********************************   score   ******************************

Function LoadScores()
	
	Local fh:TStream
	
	fh = OpenFile("scores/hiscores.dat")
	If fh = Null
		' if score file not found use the default
		For Local t% = 0 To 9
			scores[t]= 45000-t*1350
			levels[t]= 20-t
			names$[t]= "MAX"
		Next
	Else
		For Local t% = 0 To 9
			scores[t] = Int(ReadLine(fh))
			levels[t] = Int(ReadLine(fh))
			names$[t] = ReadLine(fh)
		Next
		CloseFile fh
	EndIf
End Function




Function SaveScores()
	Local fh:TStream
	' write the scores out to file
	fh = WriteFile("scores/hiscores.dat")
	If fh <> Null
		For Local t% = 0 To 9
			WriteLine fh,(scores[t])
			WriteLine fh,(levels[t])
			WriteLine fh,(names$[t])
		Next
		CloseFile fh
	EndIf
End Function



Function HighScore()
	Local minpos% = 10
	For Local t% = 9 To 0 Step -1
		If score > scores[t] Then minpos=t
	Next
	If minpos < 10
		For Local t% = 9 To (minpos+1) Step -1
			scores[t]=scores[t-1]
			names[t]=names[t-1]
		Next
		names[minpos] = ""
		scores[minpos] = score
		levels[minpos] = level
		segdur = 30
		Local lcounter% = 25*30
		pw = 4
		letterselected = -9999
		loopmode = 2
		x=width/2
		y=height/2
		xold=x
		yold=y
		MoveMouse(x,y)
		Local done = False
		While (lcounter>0) And (Not VKeyDown(1)) And done=False 
			Cls
			SetColor 255,255,255
			DrawString("PLEASE CIRCLE YOUR INITIALS",250,330,-1,1)
			DrawString("TIME",380,410,-1,1)
			DrawString((Int(lcounter/30)+1),390,430,-1,1)
			For Local s% = 0 To 2
				For Local t% = 0 To 9
					Local d% = s*10+t+65
					DrawDigit(d,210+t*40,290+90*s,-1,0)
				Next
			Next
			x=MouseX();y=MouseY()
			If x<HBORDER/2 Then x=HBORDER/2 
			If x>width-HBORDER/2 x=width-HBORDER/2
			If y<VBORDER/2 Then y=VBORDER/2 
			If y>height-VBORDER/2 y=height-VBORDER/2
			MoveMouse(x,y)
			If Abs(xold-x) > 1 Or Abs(yold-y) > 1
				CreateSeg()
				xold=x;yold=y
			EndIf
			RenderScores(minpos,0)
			UpdateSegs()
			RenderSegs()
			RenderPlayer()
			lcounter = lcounter - 1
			If letterselected >= 0 And looping=False
				PlaySound(snd_split1)
				Local c$ = ""
				If letterselected > 25
					Select letterselected
						Case 26
							' [ = .
							c$ = "."
						Case 27							
							' \ = _
							c$ = " "
						Case 28
							' ] = <-
							' backspace
							If Len(names[minpos])>0 
								names[minpos]=Left$(names[minpos],Len(names[minpos])-1)
							EndIf
						Case 29
							' ^ = checkmark - finished
							done = True
					End Select
				Else
					c$ = Chr$(letterselected+65)
				EndIf
				If Len(names[minpos]) < 3
					names[minpos]= names[minpos]+c$
					Local sp% = Int(letterselected/10) 
					Local st% = letterselected-sp*10
				EndIf
				letterselected=-999
			EndIf
'			Local key = WaitKey()
'			If key > 0
'				If key=13
'					done=True
'				Else 
'					If key=8
'						If Len(names[minpos])>0 Then names[minpos]=Left$(names[minpos],Len(names[minpos])-1)
'					EndIf
'					If key>=32 And key<127
'						If Len(names[minpos]) < 3 Then names[minpos] = names[minpos]+Upper$(Chr$(key))
'					EndIf
'				EndIf
'			EndIf
			Flip
			Delay 30
		Wend
		loopmode = 0
		Delay 200
		For Local sg:bbseg=EachIn seg_list
			seg_list.Remove(sg)
			segs=segs-1
		Next
	EndIf
End Function



Function AlphaEm()
' loop through the letter coordinates
' If they are in the minx-maxx, miny-maxy range then check PointInPoly()
' If in poly then select the leftmost one
	Local swidth = maxx-minx
	Local sheight = maxy-miny
	For Local s=2 To 0 Step -1
		For Local t=9 To 0 Step -1
			If RectsOverlap(210+t*40,290+90*s,10,10,minx,miny,swidth,sheight)
'				Rect 210+t*40,290+90*s,10,10,0	
				If PointInPoly(210+t*40+5,290+90*s+5)
					letterselected = t+s*10
					Exit
				EndIf
			EndIf
		Next 
	Next
End Function



Function RectsOverlap(x1,y1,w1,h1,x2,y2,w2,h2)

	If x1 >= x2+w2 
		' rec 1 is too far right
		Return False
	Else
		If x1+w1 =< x2
			' rec 1 is too far left
			Return False
		Else
			' xs are overlapping - check ys
			If y1 >= y2+h2 
				' rec 1 is too far down
				Return False
			Else
				If y1+h1 =< y2 
					' rec 1 is too far above
					Return False
				Else
					' overlap?
					Return True				
				EndIf
			EndIf
		EndIf
	EndIf

End Function



Function RenderScore()
	Local hiscore = scores[0]
	If score > hiscore Then hiscore = score
	DrawString("1 UP",60,0,-1,2)
	DrawString((score),60,20,-1,3)
	DrawString((hiscore),370,0,-1,3)
	DrawString("LEVEL "+level,width-HBORDER-100,height-VBORDER+10,-1,2)
End Function



Function RenderScores(flasher,yoffset)
	Local kol%
	SetColor 255,255,255
	DrawString("TOP SCORES",340,25+yoffset,-1,2)
	DrawString("SCORE",270,50+yoffset,-1,0)
	DrawString("NAME",370,50+yoffset,-1,0)
	DrawString("LEVEL",460,50+yoffset,-1,0)
	For Local t% = 0 To 9
		If t <> flasher
			kol = 1
		Else
			Local k=Rnd(10)
			If k > 4 Then kol = 0 Else kol = 2
		EndIf
		Local spc = Len(scores[t])
		DrawString((scores[t]),310-spc*9,80+t*20+yoffset,-1,kol)
		DrawString(names[t],370,80+t*20+yoffset,-1,kol)
		DrawString((levels[t]),470,80+t*20+yoffset,-1,kol)
	Next
End Function









' **************************   Level   ********************************

Function SetUpLevel()
ResetAll()
level = level+1
SetLevelDifficulty()

For Local t = 0 To nucsperlevel-1
	Local count = -1
	For Local t1=0 To MAXNUCS-1
		If nucs[t1].act = 0 Then count=t1
	Next
	If count < MAXNUCS And count > -1 Then CreateNucleus(count)
Next

If tanksperlevel > 0
	For Local t = 1 To tanksperlevel;CreateTanks();Next
EndIf

If starsperlevel > 0
	For Local t = 1 To starsperlevel;CreateStars(-1,-1);Next
EndIf

If pulsarsperlevel > 0
	For Local t = 1 To pulsarsperlevel;CreatePulsars();Next
EndIf

If level > 9 And nucsperlevel > 1
	Local nbnds = level/8 + 1 + (level Mod 4)
	For Local t = 1 To nbnds
		Local t1 = Rnd(0,nucsperlevel-2)
		Local t2 = t1+1
		If nucs[t1].act = 2 And nucs[t2].act = 2
			If bnds[t1,t2] = False
				bnds[t1,t2] = True 
				CreateBonds(nucs[t1],nucs[t2])
			EndIf
		EndIf
	Next
EndIf

End Function



Function ResetAll()
	For Local t = 0 To MAXNUCS-1;nucs[t].act=0;Next
	For Local s:bbseg=EachIn seg_list;seg_list.Remove(s);segs=segs-1;Next
	For Local bn:bbbond=EachIn bond_list;bond_list.Remove(bn);Next
	For Local e:bbelec=EachIn elec_list;elec_list.Remove(e);Next
	For Local ph:bbphot=EachIn phot_list;phot_list.Remove(ph);Next
	For Local pn:bbpnts=EachIn pnts_list;pnts_list.Remove(pn);Next
	For Local tk:bbtank=EachIn tank_list;tank_list.Remove(tk);Next
	For Local m:bbmine=EachIn mine_list;mine_list.Remove(m);Next
	For Local st:bbstar=EachIn star_list;star_list.Remove(st);Next	
	For Local pl:bbpulsar=EachIn pulsar_list;pulsar_list.Remove(pl);Next
	For Local t1= 0 To MAXNUCS-1;For Local t2= 0 To MAXNUCS-1;bnds[t1,t2]=False;Next;Next

	counter=0

	bcount=0
	bondact=2

	nucskilled=0

	numstarskilled=0
	starsalive = 0
	startimer = starsplitwait

	pw=4
	pwtimer=0
	phtimer = phcreatewait + PHMINWAIT

	xold=width/2;yold=height/2
	x=xold;y=yold
	MoveMouse x,y

	dead = False
	gameover = False

End Function



Function SetLevelDifficulty()
	segdur = 25-level/6;If segdur < 12 Then segdur = 12
	
	' photon speed and delay between releases
	phspeed = 2 + level/5;If phspeed>12 Then phspeed=12
	phcreatewait = 200 - level*6;If phcreatewait < 50 Then phcreatewait=50

	nucsperlevel = 3 + Int(level/8) + (Int(level/5) Mod 2)
	If nucsperlevel > MAXNUCS Then nucsperlevel = MAXNUCS
	nucspeed = 3 + level/20;If nucspeed>8 Then nucspeed=8
	' nuclei can bind after level 10
	If level > 9 Then nucact=2 Else nucact=1

	' bonds 
	bcountmax = 1000-level*20;If bcountmax<200 Then bcountmax=200
	If bcountmax > 200
		bcountwarn = bcountmax-bcountmax/2
		bcountdead = bcountmax-bcountmax/4
	Else
		bcountwarn = 40
		bcountdead = 100
	EndIf
	
	tankminewait = 70
	tankspeed = 3
	If level > 12
		tanksperlevel = 1-(level Mod 2)
		If level > 39
			If (level Mod 3) = 0 Then tanksperlevel = tanksperlevel + 1
				If level > 79
					tankspeed = 4.5
					tankminewait = 50
				EndIf
		EndIf
	Else
		tanksperlevel = 0
	EndIf

	minedur = 100 + level/2;If minedur > 200 Then minedur=200

	If level > 5
		starsperlevel = ((level-6)/3) Mod 2
		If (level Mod 5) < 2 Then starsperlevel = starsperlevel + 1
		If level > 30	
			If (level Mod 3) = 1 Then starsperlevel = starsperlevel + 1
		EndIf
		If starsperlevel > 3 Then starsperlevel = 3
	Else
		starsperlevel =	0
	EndIf
	starsplitwait = 380-level*2;If starsplitwait < 100 Then starsplitwait = 100
	starspeed = 6 + level/22;If starspeed>10 Then starspeed=10

	If level > 7
		pulsarsperlevel = 0
		If (level Mod 3) = 0 Then pulsarsperlevel = pulsarsperlevel + 1
		If (level Mod 4) = 0 Then pulsarsperlevel = pulsarsperlevel + 1
		If level>24 		
			If (level Mod 5) = 0 Then pulsarsperlevel = pulsarsperlevel + 1
			If level>49
				If (level Mod 2) = 0 Then pulsarsperlevel = pulsarsperlevel + 1
			EndIf
		EndIf
		If pulsarsperlevel > 4 Then pulsarsperlevel = 4
	Else
		pulsarsperlevel = 0
	EndIf
	pulsarspeed = 2.5 + level/22;If pulsarspeed>5 Then pulsarspeed=5

End Function



Function PickLevel()
	Local leveloffset% = 0
	Local lcounter = 12*30
	Local st$
	level=0	
	segdur=24
	pw = 4
	levelselected = -9999
	loopmode = 1
	x=width/2;y=height/2
	xold=x;yold=y
	MoveMouse(x,y)
	Local done=False
	While (lcounter>0) And (Not VKeyDown(1)) And done=False
		Cls
		SetColor 0,0,255
		If ARCADE Then
			DrawString("QUANTUM",160,50,15,1)
		Else
			DrawString("BLITZUM",160,50,15,1)	    
		EndIf
		SetColor 255,255,255
		DrawString("CIRCLE STARTING LEVEL",300,220,-1,1)
		DrawString("LEFT OR RIGHT TO CHANGE SELECTION",240,240,-1,1)
		DrawString("TIME",380,270,-1,1)
		DrawString((Int(lcounter/30)+1),390,290,-1,1)
		For Local t = 0 To 4
			SetColor 255,255,255
			DrawString((t*2+1+leveloffset),200+t*100-10,400,2.5,0)
			DrawString("BONUS",200+t*100-25,440,-1,0)
			If t*2+1+leveloffset > 1
				st$ = (t*2+1+leveloffset)*3040-3080
			Else
				st$ = "0"
			EndIf
			DrawString(st$,200+t*100-25,420,-1,0)
		Next
		x=MouseX();y=MouseY()
		If x<HBORDER/2 Then x=HBORDER/2 
		If x>width-HBORDER/2 x=width-HBORDER/2
		If y<VBORDER/2 Then y=VBORDER/2 
		If y>height-VBORDER/2 y=height-VBORDER/2
		MoveMouse(x,y)
		If Abs(xold-x) > 1 Or Abs(yold-y) > 1
			CreateSeg()
			xold=x;yold=y
		EndIf
		If lcounter Mod 3 = 0
			If x > 200+400+40 And y>200 And y<600
				If leveloffset < highestlevel-10
					leveloffset = leveloffset + 2
				EndIf
			EndIf			
			If x < 200-40 And y>200 And y<600
				If leveloffset > 1
					leveloffset = leveloffset - 2
				EndIf
			EndIf			
		EndIf
		UpdateSegs()
		RenderSegs()
		RenderPlayer()
		Flip
		Delay 30
		lcounter = lcounter - 1
		If levelselected >= 0 And looping=False
			done = True
			level = levelselected*2+leveloffset
			PlaySound(snd_bonus)
		EndIf
	Wend
	loopmode = 0
	For Local sg:bbseg=EachIn seg_list;ListRemove(seg_list,sg);segs=segs-1;Next
	Delay 200
End Function




Function LevelEm()
' loop through the level number coordinates
' If they are in the minx-maxx, miny-maxy range then check PointInPoly()
' If in poly then select the leftmost one
	Local swidth = maxx-minx
	Local sheight = maxy-miny
	For Local t=0 To 4
		If RectsOverlap(200+t*100,400,10,10,minx,miny,swidth,sheight)
'			Rect 200+t*100,400,10,10,0	
			If PointInPoly(200+t*100+5,400+5)
				levelselected = t
				Exit
			EndIf
		EndIf
	Next 
End Function










' ******************************  Player  *************************************

Function UpdatePlayer()
	Local p7  = pw*.7
	Local xp  = x-p7
	Local yp  = y-p7
	Local pw2 = p7*2+1
	Local xstart
	Local ystart
	Local xend
	Local yend
	If bondact = 0 ' !!!! should be 0
		'check if hitting a bond
	'	Color 255,255,255
		For Local bn:bbbond=EachIn bond_list
			If bn.p1.x < bn.p2.x
				xstart = bn.p1.x
				xend = bn.p2.x
			Else
				xstart = bn.p2.x
				xend = bn.p1.x
			EndIf
			If bn.p1.y < bn.p2.y
				ystart = bn.p1.y
				yend = bn.p2.y
			Else
				ystart = bn.p2.y
				yend = bn.p1.y
			EndIf
			Local xdiff# = xend - xstart
			Local ydiff# = yend - ystart
			If RectsOverlap(xstart, ystart, xdiff, ydiff,xp,yp,pw2,pw2)

'			Rect xstart,ystart,xdiff,ydiff,0

			Local xdiff2 = pw2
			Local m2# = 1 'pw2/pw2
			Local c2# = yp - m2 * xp
			Local m2b# = -1
			Local c2b# = yp + pw2 - m2b * xp
			If xdiff <> 0
				Local m1# = (bn.p2.y-bn.p1.y)/(bn.p2.x-bn.p1.x)  'ydiff/xdiff
				Local c1# = bn.p2.y - m1 * bn.p2.x    ' yend - m1 * xend
				Local det# = m2-m1
				Local det2# = m2b-m1
				If det <> 0 
					Local xint# = (c1 - c2) / det    '# or % ?
					Local yint# = (-m1*c2 +m2*c1) / det '# or % ?
					If xint >= xp And xint <= xp+pw2
						If xint >= xstart And xint <= xend
'							Rect x-8,y-8,17,17,0
							' dead!!!
							x=xint;y=yint
							MoveMouse xint,yint
							CreateFrags()
							dead = True
							Exit
						EndIf
					EndIf
				EndIf
				If det2 <> 0 
					' slopes are both 1,check against other diagonal line
					Local xint# = (c1 - c2b) / det2
					Local yint# = (-m1*c2b +m2b*c1) / det2
					If xint >= xp And xint <= xp+pw2
						If xint >= xstart And xint <= xend
'							Rect x-8,y-8,17,17,0
							' dead!!!
							x=xint;y=yint
							MoveMouse xint,yint
							CreateFrags()
							dead = True
						EndIf
					EndIf 
				EndIf
			Else
				'bond is vertical
			EndIf
			EndIf
		Next
	EndIf
'	Rect xp,yp,pw2,pw2,0
	nucsalive=0
	For Local t = 0 To MAXNUCS-1
		n:bbnuc = nucs[t]
		If n.act > 0 And n.die=False
			nucsalive=nucsalive+1
'			Rect n\x-5,n\y-5,11,11,0
			If RectsOverlap(n.x-5,n.y-5,11,11,xp,yp,pw2,pw2)
				CreateFrags()
				dead = True
			EndIf
		EndIf
	Next
	For Local ph:bbphot = EachIn phot_list
		If ph.die = False
'			Rect ph\x-7,ph\y-7,15,15,0
			If RectsOverlap(ph.x-7,ph.y-7,15,15,xp,yp,pw2,pw2)
				CreateFrags()
				dead = True
			EndIf
		EndIf
	Next 
	For Local tk:bbtank = EachIn tank_list
		If tk.die = False
'			Rect tk\x-9,tk\y-9,18,18,0
			If RectsOverlap(tk.x-9,tk.y-9,18,18,xp,yp,pw2,pw2)
				CreateFrags()
				dead = True
			EndIf
		EndIf
	Next
	For Local m:bbmine = EachIn mine_list
		If m.die = False And m.dur > 15
			Local size = m.dur/10
'			Rect m\x-size/2,m\y-size/2,size,size,0
			If RectsOverlap(m.x-size/2,m.y-size/2,size,size,xp,yp,pw2,pw2)
				CreateFrags()
				dead = True
			EndIf
		EndIf
	Next
	For Local st:bbstar = EachIn star_list
		If st.die = False
'			Rect st\x-9,st\y-9,18,18,0
			If RectsOverlap(st.x-9,st.y-9,18,18,xp,yp,pw2,pw2)
				CreateFrags()
				dead = True
			EndIf
		EndIf
	Next

	For Local pl:bbpulsar = EachIn pulsar_list
		Local pulshit = False
		If pl.die = False
			' check arms too! based on pl\pos
			If RectsOverlap(pl.x,pl.y,2,2,xp,yp,pw2,pw2) pulshit=True
			Local frame = pl.pos/4
			If frame > 4
				If RectsOverlap(pl.x,pl.y-8,1,8,xp,yp,pw2,pw2) pulshit=True
			EndIf
			If frame > 5
				If RectsOverlap(pl.x,pl.y-20,10,10,xp,yp,pw2,pw2) pulshit=True
				If RectsOverlap(pl.x-10,pl.y-20,10,10,xp,yp,pw2,pw2) pulshit=True
'				Rect pl\x,pl\y-20,10,10,0
'				Rect pl\x-10,pl\y-20,10,10,0
			EndIf
			If frame > 6
				If RectsOverlap(pl.x-25,pl.y-20,15,1,xp,yp,pw2,pw2) pulshit=True
				If RectsOverlap(pl.x+10,pl.y-20,15,1,xp,yp,pw2,pw2) pulshit=True
			EndIf
			If frame > 7
				If RectsOverlap(pl.x-35,pl.y-20,10,10,xp,yp,pw2,pw2) pulshit=True
				If RectsOverlap(pl.x+25,pl.y-20,10,10,xp,yp,pw2,pw2) pulshit=True
'				Rect pl\x-35,pl\y-20,10,10,0
'				Rect pl\x+25,pl\y-20,10,10,0
			EndIf
			If frame > 8
				If RectsOverlap(pl.x-35,pl.y-10,1,22,xp,yp,pw2,pw2) pulshit=True
				If RectsOverlap(pl.x+35,pl.y-10,1,22,xp,yp,pw2,pw2) pulshit=True
			EndIf
			If frame > 9
				If RectsOverlap(pl.x-32,pl.y+12,14,10,xp,yp,pw2,pw2) pulshit=True
				If RectsOverlap(pl.x+18,pl.y+12,14,10,xp,yp,pw2,pw2) pulshit=True
'				Rect pl\x-32,pl\y+12,14,10,0
'				Rect pl\x+18,pl\y+12,14,10,0
			EndIf
			If frame > 10
				If RectsOverlap(pl.x-15,pl.y+25,31,1,xp,yp,pw2,pw2) pulshit=True
			EndIf
			If pulshit=True 
				CreateFrags()
				dead = True
				Exit
			EndIf 
		EndIf
	Next

	' increase size of player if they are not capturing atoms
	pwtimer=pwtimer+1
	If pwtimer > PWGROWAIT
		pwtimer = 0
		If nucskilled = 0
			pw = pw + 1
			If pw> 80 Then pw=80
		Else
			pw = 4
		EndIf
		nucskilled = 0
	EndIf	
End Function



Function RenderPlayer()
	Local corner = pw*.7
	Local corner2 = corner/2
	Local pw2=pw/2
	If (counter Mod 30) > 15
		SetColor 255,0,255
	Else
		SetColor 0,255,0
	EndIf 
	DrawLine x,y-pw,x,y-pw2
	DrawLine x-pw,y,x-pw2,y
	DrawLine x,y+pw,x,y+pw2
	DrawLine x+pw,y,x+pw2,y
	If (counter Mod 30)<15
		SetColor 255,0,255
	Else
		SetColor 0,255,0
	EndIf 
	DrawLine x+corner,y+corner,x+corner2,y+corner2
	DrawLine x-corner,y+corner,x-corner2,y+corner2
	DrawLine x+corner,y-corner,x+corner2,y-corner2
	DrawLine x-corner,y-corner,x-corner2,y-corner2
End Function



Function KillPlayer()
	PlaySound(snd_death)
	Cls 
	RenderPlayer()
	RenderSegs()
	RenderEnemies()
	RenderFrags()
	RenderScore()
	RenderMenLeft()
	Flip
	Delay 500
	While fragsalive > 0
		Cls
		UpdateFrags()
		RenderEnemies()
		RenderFrags()
		RenderScore()
		RenderMenLeft()
		Flip
		Delay 5
	Wend
	If chn_bond <> Null Then StopChannel chn_bond;chn_bond=Null
	Delay 1000
	
	men=men-1;If men <= 0 Then gameover = True
	dead = False
	' destroy the enemies
	For Local s:bbseg=EachIn seg_list;ListRemove(seg_list,s);segs=segs-1;Next
	For Local pn:bbpnts=EachIn pnts_list;pnts_list.Remove(pn);Next
	For Local bn:bbbond=EachIn bond_list
		If bn.p1.act = 0 Or bn.p2.act = 0 Then bond_list.Remove(bn)
	Next 
	' reset stuff
	bcount=0
	bondact=2
	nucskilled=0
	phcreatewait = 200 - level*6;If phcreatewait < 50 Then phcreatewait=50
	numstarskilled=0
	starsalive = 0
	startimer = starsplitwait

	If gameover = False
		' destroy the enemies
		For Local ph:bbphot=EachIn phot_list;phot_list.Remove(ph);Next
		For Local m:bbmine=EachIn mine_list;mine_list.Remove(m);Next 
		For Local st:bbstar=EachIn star_list;star_list.Remove(st);Next
		For Local tk:bbtank=EachIn tank_list;tank_list.Remove(tk);Next
		For Local pl:bbpulsar=EachIn pulsar_list;pulsar_list.Remove(pl);Next
		' recreate enemies
		If starsperlevel > 0
			For Local t = 1 To starsperlevel
				CreateStars(-1,-1)
			Next
		EndIf
		If tanksperlevel > 0
			For Local t = 1 To tanksperlevel
				CreateTanks()
			Next
		EndIf
		If pulsarsperlevel > 0
			For Local t = 1 To pulsarsperlevel
				CreatePulsars()
			Next
		EndIf
		' reset nuclei away from center
		For n:bbnuc = EachIn nuc_list
			If n.act > 0
				n.x=Rnd(50,(width-HBORDER*2)/2-5)
				n.y=Rnd(50,(height-VBORDER*2)/2-5)
				If Rnd(10) > 4 Then n.x = width/2-n.x Else n.x = width/2+n.x
				If Rnd(10) > 4 Then n.y = height/2-n.y Else n.y = height/2+n.y
				n.xs = Rnd(0.3,nucspeed)
				n.ys = Rnd(0.3,nucspeed)
				If Rnd(10) > 4 Then n.xs = -n.xs
				If Rnd(10) > 4 Then n.ys = -n.ys
			EndIf
		Next
	EndIf	
	' recenter player
	pw=4
	pwtimer=0
	xold=width/2
	yold=height/2
	x=xold
	y=yold
	MoveMouse x,y
	FlushMouse
End Function



Function RenderMenLeft()
	If men>1 
		For Local m=1 To men-1
			Local yy = height - VBORDER+10
			Local xx = HBORDER + m*20
			SetColor 255,0,255
			DrawLine xx,yy-4,xx,yy+5
			DrawLine xx-4,yy,xx+5,yy
			SetColor 0,255,0
			DrawLine xx+2,yy+2,xx-3,yy-3
			DrawLine xx-2,yy+2,xx+3,yy-3	
		Next
	EndIf
End Function







'*******************************   Segments   *********************************

Function CreateSeg()
	segs=segs+1
	Local s:bbseg=New bbseg
	s.xs=x
	s.ys=y
	s.xe=xold
	s.ye=yold
	s.dur = segdur
	s.loop=0
'	If ListIsEmpty(seg_list)
	ListAddFirst(seg_list,s)
'	DebugLog "New s "+xold+","+yold+" - "+x+","+y
	CheckBonds(s)
	'TODO: CheckEnemies(s) - check this newseg against all enemies 
	'to see if we have crossed one - if so - die
	CheckForLoop(s)
End Function



Function CheckBonds(s1:bbseg)
	Local xs#
	Local ys#
	Local xe#
	Local ye#
	Local xstart#
	Local ystart#
	Local xend#
	Local yend#
	Local m2#
	Local c2#
	Local m1#
	Local c1#
	Local xint#
	Local yint#	
	
	If bondact = 0
		If x < xold
			xs = x
			xe = xold
		Else
			xs = xold
			xe = x
		EndIf
		If y < yold
			ys = y
			ye = yold
		Else
			ys = yold
			ye = y
		EndIf
		Local xdiff2# = xe - xs;If xdiff2<1 Then xdiff2=1
		Local ydiff2# = ye - ys;If ydiff2<1 Then ydiff2=1

		Local xdiff3 = (x-xold)
		If xdiff3 <> 0
			m2# = (y-yold)/xdiff3
			c2# = yold - m2 * xold
		Else
			m2# = 99999999
			c2# = yold
		EndIf
		
		For Local bn:bbbond=EachIn bond_list
			If bn.p1.x < bn.p2.x
				xstart = bn.p1.x
				xend = bn.p2.x
			Else
				xstart = bn.p2.x
				xend = bn.p1.x
			EndIf
			If bn.p1.y < bn.p2.y
				ystart = bn.p1.y
				yend = bn.p2.y
			Else
				ystart = bn.p2.y
				yend = bn.p1.y
			EndIf
			Local xdiff# = xend - xstart;If xdiff<1 Then xdiff=1
			Local ydiff# = yend - ystart;If ydiff<1 Then ydiff=1

			If RectsOverlap(xstart, ystart, xdiff, ydiff,xs,ys,xdiff2,ydiff2)

'			SetColor 255,255,255
'			Rect xstart,ystart,xdiff,ydiff,0
'			Rect xs,ys,xdiff2,ydiff2,0

			If xdiff2 <> 0
				If xdiff <> 0
					m1# = (bn.p2.y-bn.p1.y)/(bn.p2.x-bn.p1.x)  'ydiff/xdiff
					c1# = bn.p2.y - m1 * bn.p2.x    ' yend - m1 * xend
					Local det# = m2-m1
					If det <> 0 
						xint = (c1 - c2) / det
						yint = (-m1*c2 +m2*c1) / det
						If xint >= xstart And xint <= xend
'							Rect xint, yint,2,2
							If xint >= xs And xint <= xe
								s1.xs=xint;s1.ys=yint
								x=xint;y=yint
								MoveMouse xint,yint
								' dead!!!
'								Rect x-8,y-8,17,17,0
								CreateFrags()
								dead = True
								Exit
							EndIf
						EndIf
					EndIf
				Else
					'bond is vertical
				EndIf
			Else
				' seg is vertical	
			EndIf
			EndIf
		Next
	EndIf
End Function



Function CheckForLoop(s:bbseg)
	Local xs#
	Local ys#
	Local xe#
	Local ye#
	Local xstart#
	Local ystart#
	Local xend#
	Local yend#
	Local m2#
	Local c2#
	Local m1#
	Local c1#
	Local xint#
	Local yint#
	
	If segs > 2
		If s.xs < s.xe
			xs = s.xs
			xe = s.xe
		Else
			xs = s.xe
			xe = s.xs
		EndIf
		If s.ys < s.ye
			ys = s.ys
			ye = s.ye
		Else
			ys = s.ye
			ye = s.ys
		EndIf
		Local xdiff2# = xe - xs;If xdiff2<1 Then xdiff2=1
		Local ydiff2# = ye - ys;If ydiff2<1 Then ydiff2=1

		If xe-xs <> 0
			m2# = (ye-ys)/(xe-xs)
			c2# = ye - m2 * xe
		Else
			m2# = 99999999
			c2# = ye
		EndIf
		
		For Local s2:bbseg=EachIn seg_list
			If s2 <> s And s2.loop=0

			If s2.xs < s2.xe
				xstart = s2.xs
				xend = s2.xe
			Else
				xstart = s2.xe
				xend = s2.xs
			EndIf
			If s2.ys < s2.ye
				ystart = s2.ys
				yend = s2.ye
			Else
				ystart = s2.ye
				yend = s2.ys
			EndIf
			Local xdiff# = xend - xstart;If xdiff<1 Then xdiff=1
			Local ydiff# = yend - ystart;If ydiff<1 Then ydiff=1

			If RectsOverlap(xstart, ystart, xdiff, ydiff,xs,ys,xdiff2,ydiff2)
'			DebugLog "rect 1 "+xstart+","+ystart+" - "+xdiff+","+ydiff
'			DebugLog "rect 2 "+xs+","+ys+" - "+xdiff2+","+ydiff2			
			
'			SetColor 255,255,255
'			Rect xstart,ystart,xdiff,ydiff,0
'			Rect xs,ys,xdiff2,ydiff2,0

			If xdiff2 <> 0
'				Locate 0,20:Print "xdif2<>0 "+xstart+","+ystart+" "+xend+","+yend
				If s2.xs-s2.xe <> 0 'xdiff <> 0
					If s2.xs-s2.xe <> 0
						m1# = (s2.ys-s2.ye)/(s2.xs-s2.xe)  'ydiff/xdiff
						c1# = s2.ys - m1 * s2.xs    ' yend - m1 * xend
					Else
						m1# = 99999999
						c1# = s2.ys
					EndIf
'					DebugLog "m1, m2 = "+m1+","+m2
'					Locate 0,30:Print "xdif<>0 "+xs+","+ys+" "+xe+","+ye
					Local det# = m2-m1
'					Locate 0,40:Print "det <> 0 m2="+m2+" - m1="+m1 
					If det <> 0 
						xint = (c1 - c2) / det
						yint = (-m1*c2 +m2*c1) / det
'						Color 255,0,0
'						Rect xint, yint,3,3
						If xint >= xstart And xint <= xend
							If xint >= xs And xint <= xe
'								DebugLog "1 xint,yint = "+xint+","+yint
								CreateLoop(xint,yint,s,s2)
							EndIf
						EndIf
					Else
						If m2 = 0
'							Locate 0,60:Print "horiz"
							yint = y
							xint = x
'							DebugLog "2 xint,yint = "+xint+","+yint							
							CreateLoop(xint,yint,s,s2)
						EndIf
					EndIf
				Else
					'last seg is vertical
'					Locate 0,60:Print "vert"
					yint = y
					xint = x
'					DebugLog "3 xint,yint = "+xint+","+yint					
					CreateLoop(xint,yint,s,s2)
				EndIf
			Else
				' seg is vertical	
			EndIf
			EndIf
			EndIf
		Next
	EndIf
End Function



Function CreateLoop(xint,yint,s1:bbseg,s2:bbseg)
'DebugStop
If looping = True Return
'	DebugLog "s1 "+s1.xs+","+s1.ys+" - "+s1.xe+","+s1.ye
'	DebugLog "s2 "+s2.xs+","+s2.ys+" - "+s2.xe+","+s2.ye	
'	DebugStop
	looping=True
	s2.xe=xint;s2.ye=yint	' chop the end and start segs to the intersection point
	s1.xs=xint;s1.ys=yint
	' find the center point of the loop
	cpx=0;cpy=0
	maxx = 0
	minx = width
	maxy = 0
	miny = height
	Local count=0
	Local done=False
	For Local s:bbseg=EachIn seg_list
		If done = False
			xpseg[count] = s.xs
			ypseg[count] = s.ys
			count = count + 1
			If s.xs > maxx
				maxx=s.xs
			EndIf
			If s.xs < minx
				minx=s.xs
			EndIf
			If s.ys > maxy
				maxy=s.ys
			EndIf
			If s.ys < miny
				miny=s.ys
			EndIf
			cpx=cpx+s.xs+s.xe
			cpy=cpy+s.ys+s.ye
			s.dur=1;s.loop=5
		Else
			s.dur=1	' the remainder of the trail is dropped
		EndIf
		If s = s2 Then done=True 
	Next
	xpseg[count] = xpseg[0]
	ypseg[count] = ypseg[0]
	
	numsegsinloop=count
	cpx=cpx/(count*2)
	cpy=cpy/(count*2)
	xold=xint;yold=yint
	g_numkilled=0
'	Rect minx,miny,maxx-minx,maxy-miny,0
	Select loopmode
		Case 0
			KillEm()
		Case 1
			LevelEM()
		Case 2
			AlphaEM()
	End Select
End Function



Function KillEm()
' loop through all objects
' If they are in the minx-maxx, miny-maxy range then check PointInPoly()
' if in poly then kill, kill, kill
	g_numkilled = 0
	Local eskilled = False
	Local swidth = maxx-minx
	Local sheight = maxy-miny
	For Local t=0 To MAXNUCS-1
		Local n:bbnuc=nucs[t]
		If n.act > 0 And n.die=False
			If RectsOverlap(n.x,n.y,1,1,minx,miny,swidth,sheight)
		'		Rect n\x-10,n\y-10,21,21,0	
				If PointInPoly(n.x,n.y)
					n.die = True
					g_numkilled=g_numkilled+1
					nucskilled = 1
				EndIf
			EndIf
		EndIf
	Next 
	For Local e:bbelec=EachIn elec_list
		If e.die = False
			If e.p.act > 0 ' note: nucs are still active until looping is false
				If RectsOverlap(e.p.x+e.x,e.p.y+e.y,1,1,minx,miny,swidth,sheight)
		'			Rect e\p\x+e\x-5,e\p\y+e\y-5,11,11,0
					If PointInPoly(e.p.x+e.x,e.p.y+e.y)
						If e.p.die = True
							e.p.elecskilled=e.p.elecskilled+1
							e.killedwithnuc = True
						EndIf
						e.die = True
						eskilled = True
					EndIf
				EndIf
			Else
				If RectsOverlap(e.x,e.y,1,1,minx,miny,swidth,sheight)
		'			Rect e\x-5,e\y-5,11,11,0
					If PointInPoly(e.x,e.y)
						e.die = True
						e.killedwithnuc=False
						eskilled = True
					EndIf
				EndIf
			EndIf
		EndIf
	Next
	For Local ph:bbphot = EachIn phot_list
		If ph.die = False
			If RectsOverlap(ph.x,ph.y,1,1,minx,miny,swidth,sheight)
		'		Rect ph\x-10,ph\y-10,20,20,0
				If PointInPoly(ph.x,ph.y)
					ph.die=True
					g_numkilled=g_numkilled+1
				EndIf
			EndIf
		EndIf
	Next 
	For Local tk:bbtank = EachIn tank_list
		If tk.die = False
			If RectsOverlap(tk.x,tk.y,1,1,minx,miny,swidth,sheight)
		'		Rect tk\x-10,tk\y-10,20,20,0
				If PointInPoly(tk.x,tk.y)
					tk.die=True
					g_numkilled=g_numkilled+1
				EndIf
			EndIf
		EndIf
	Next
	For Local m:bbmine = EachIn mine_list
		If m.die = False And m.dur > 15
			If RectsOverlap(m.x,m.y,1,1,minx,miny,swidth,sheight)
		'		Rect m\x-10,m\y-10,20,20,0
				If PointInPoly(m.x,m.y)
					m.die=True
					g_numkilled=g_numkilled+1
				EndIf
			EndIf
		EndIf
	Next
	For Local st:bbstar = EachIn star_list
		If st.die = False
			If RectsOverlap(st.x,st.y,1,1,minx,miny,swidth,sheight)
				'Rect st\x-12,st\y-12,24,24,0
				numstarskilled=numstarskilled+1
				If numstarskilled > 4 Then numstarskilled = 4
				If PointInPoly(st.x,st.y)
					st.die = True
					g_numkilled=g_numkilled+1
				EndIf
			EndIf
		EndIf
	Next
	For Local pl:bbpulsar = EachIn pulsar_list
		If pl.die = False
			If RectsOverlap(pl.x,pl.y,1,1,minx,miny,swidth,sheight)
		'		Rect pl\x-10,pl\y-10,20,20,0
				If PointInPoly(pl.x,pl.y)
					pl.die=True
					g_numkilled=g_numkilled+1
				EndIf
			EndIf
		EndIf
	Next
	If g_numkilled = 0 And eskilled = False Then PlaySound(snd_loop)
End Function




Function PointInPoly(xo, yo)
	Local c% = False
	Local i% = 0
	Local j% = 1
	While (i < numsegsinloop)
		If  (  (  (ypseg[i]<=yo) And (yo<ypseg[j])  )  Or  (  (ypseg[j]<=yo) And (yo<ypseg[i])  )  )   
			If (ypseg[j] - ypseg[i]) <> 0
				If (xo < (xpseg[j] - xpseg[i]) * (yo - ypseg[i]) / (ypseg[j] - ypseg[i]) + xpseg[i])
					c = Not c
				EndIf
			EndIf
		EndIf
		i = i+1
		j = i+1
	Wend
	Return c
End Function




Function UpdateSegs()
	Local xstart
	Local ystart
	Local xend
	Local yend

'If KeyDown(key_B) Then DebugStop

	Local hit=False
	Local tailzap = False
	looping=False
	For Local s:bbseg = EachIn seg_list
		s.dur = s.dur -1
		If s.dur < 0			
			If s.loop <= 0
				ListRemove(seg_list,s);segs=segs-1
			Else
				' shrink in like a lasso
				looping = True
				s.loop = s.loop-1
				s.xs=s.xs+(cpx-s.xs)/s.loop
				s.ys=s.ys+(cpy-s.ys)/s.loop
				s.xe=s.xe+(cpx-s.xe)/s.loop
				s.ye=s.ye+(cpy-s.ye)/s.loop
			EndIf
		Else
			If s.xs > s.xe
				xstart = s.xs;xend = s.xe
			Else
				xstart = s.xe;xend = s.xs
			EndIf				
			If s.ys > s.ye
				ystart = s.ys;yend = s.ye
			Else
				ystart = s.ye;yend = s.ys
			EndIf	
			Local swidth = xstart-xend
			Local sheight = ystart-yend

			' if nuc crosses a seg then it disappears, tail breaks
			For Local t=0 To MAXNUCS-1
				Local n:bbnuc=nucs[t]
				If n.act > 0
	'				Rect n\x-5,n\y-5,10,10,0
					If RectsOverlap(n.x-1,n.y-1,3,3,xend,yend,swidth,sheight)
						hit = True 
						tailzap = True
					EndIf
				EndIf
			Next 
			If hit = True Then s.dur=0
		EndIf
	Next
	If tailzap = True Then PlaySound(snd_killtail)
End Function




Function RenderSegs()
	Local k%
	counter = counter + 1;If counter>30 Then counter = 0
	If counter > 15 
		SetColor 255,0,255
	Else
		SetColor 0,255,0
	EndIf
	If looping = True Then If Rnd(10)>4 Then k=1
	For Local s:bbseg=EachIn seg_list
		If s.loop > 0	
			k=k+1
			If (k And 1) = 1
				SetColor 255,0,255
			Else
				SetColor 0,255,0
			EndIf
		EndIf
		DrawLine  s.xs,s.ys,s.xe,s.ye
	Next
End Function








'***********************   Points   ******************************

Function CreatePoints(xint,yint,value)
	Local pn:bbpnts=New bbpnts
	pn.x=xint
	pn.y=yint
	pn.value = Abs(value)
	If value < 0
		pn.dur = EPOINTDUR
		value = - value
	Else
		pn.dur = POINTDUR
	EndIf
	score=score + value
	If score>=FREEMAN*numfreemen
	    PlaySound(snd_bonus)
	    numfreemen=numfreemen+1
	    men=men+1
	EndIf 
End Function


Function RenderPoints()
	pntsalive=0
	For Local pn:bbpnts=EachIn pnts_list
		pntsalive=pntsalive+1
		Select ((pn.dur/2) & 3)
			Case 0
				SetColor 255,0,0 
			Case 1
				SetColor 0,255,0
			Case 2
				SetColor 0,0,255
			Case 3
				SetColor 255,255,255
		End Select
		If pn.dur < 10
			DrawString((pn.value),pn.x-10,pn.y-5,-1,((pn.dur/2) & 3))
			'Locate pn\x-10,pn\y-5:Print pn\value
		Else
			Local top =  (pn.dur-6)/2
			Local cor = top*.7
			DrawLine pn.x,pn.y-top,pn.x,pn.y+top+1
			DrawLine pn.x-top,pn.y,pn.x+top+1,pn.y
			DrawLine pn.x-cor,pn.y-cor,pn.x+cor+1,pn.y+cor+1
			DrawLine pn.x-cor,pn.y+cor+1,pn.x+cor+1,pn.y-cor
		EndIf
		pn.dur=pn.dur-1;If pn.dur < 0 Then pn.Remove()
	Next
End Function







' **************************   Enemies   ******************************

Function UpdateEnemies()
	phtimer = phtimer - 1
	If phtimer < 0
		phtimer = phcreatewait + PHMINWAIT
		phcreatewait = phcreatewait-1
		If phcreatewait < 0 Then phcreatewait = 0
		If nucsalive>0 And level> 1
			CreatePhoton()
			PlaySound(snd_photon)
		EndIf			
	EndIf
	UpdateNucleus()
	UpdateBonds()
	UpdateElectrons()
	UpdatePhotons()
	UpdateTanks()
	UpdateMines()
	UpdateStars()
	UpdatePulsars()
End Function


Function RenderEnemies()
	RenderBonds()
	RenderNucleus()
	RenderElectrons()
	RenderPhotons()
	RenderTanks()
	RenderMines()
	RenderStars()
	RenderPulsars()
End Function









'***********************************   Nucleus   *******************************

Function CreateNucleus(count)
	Local n:bbnuc=nucs[count]
	n.id=count
	n.die=0
	n.act = nucact ' 0 - dead, 1 - nonbonding, 2 - bonding
	n.x=Rnd(50,(width-HBORDER*2)/2-5)
	n.y=Rnd(50,(height-VBORDER*2)/2-5)
	If Rnd(10) > 4 Then n.x = width/2-n.x Else n.x = width/2+n.x
	If Rnd(10) > 4 Then n.y = height/2-n.y Else n.y = height/2+n.y
	n.xs = Rnd(0.3,nucspeed)
	n.ys = Rnd(0.3,nucspeed)
	If Rnd(10) > 4 Then n.xs = -n.xs
	If Rnd(10) > 4 Then n.ys = -n.ys
	Local k = Int(Rnd(0,6))
	n.col = k
	n.r=cols[k].r
	n.g=cols[k].g
	n.b=cols[k].b
	n.elecskilled=0
	CreateElectrons(n)
End Function



Function UpdateNucleus()
	For Local t=0 To MAXNUCS-1
		Local n:bbnuc = nucs[t]
		If n.act > 0 
			If n.die=False
				n.x=n.x+n.xs
				n.y=n.y+n.ys
				If n.x<HBORDER Or n.x>=width-HBORDER
					PlaySound(snd_bounce)
					n.xs=-n.xs
					n.x=n.x+n.xs 
				EndIf
				If n.y>=height-VBORDER Or n.y<VBORDER
					PlaySound(snd_bounce)
					n.ys=-n.ys
					n.y=n.y+n.ys 
				EndIf
			EndIf
			If n.die = True And looping = False
				Local pts = 300+n.elecskilled*20
				If g_numkilled > 1
					pts = pts*2
					PlaySound(snd_killnuc2)			
				Else
					PlaySound(snd_killnuc)			
				EndIf
				CreatePoints(n.x,n.y,pts)
				n.act=0
			EndIf
		EndIf
	Next
End Function



Function RenderNucleus()
	For Local t=0 To MAXNUCS-1
		Local n:bbnuc=nucs[t]
		If n.act > 0
			If n.die = False
				SetColor cols[n.col].r,cols[n.col].g,cols[n.col].b			
				DrawImage spheres,n.x-6,n.y-6,n.col
			Else
				' die anim ?
				SetColor cols[n.col].r,cols[n.col].g,cols[n.col].b
				DrawRect n.x-7,n.y,15,1
				DrawRect n.x,n.y-7,1,15
			EndIf
		EndIf
	Next
End Function







'************************************  Electrons   ****************************

Function CreateElectrons(p:bbnuc)
	Local count=Int(Rnd(1,6))
	For Local k=1 To count
		Local e:bbelec=New bbelec
		e.p=p
		e.range = 15+k*20
		' hor or vert
		If Rnd(10) > 4
			e.hv=0
			e.xs=.2;If Rnd(10)> 4 Then e.xs=-e.xs
			e.ys=1;If Rnd(10)> 4 Then e.ys=-1
			e.y=0
			e.x=0
		Else 
			e.hv=1
			e.xs=1;If Rnd(10)> 4 Then e.xs=-1
			e.ys=.2;If Rnd(10)> 4 Then e.ys=-e.ys
			e.y=0
			e.x=0
		EndIf
		e.r=p.r
		e.g=p.g
		e.b=p.b
		e.col=p.col
		For Local t = 0 To 7;UpdateElectrons();Next
	Next
End Function



Function UpdateElectrons()
	For Local e:bbelec=EachIn elec_list
		If e.p.act >0 Or e.killedwithnuc=True
			If e.die = False 
			Select e.hv
				Case 0'vert
					e.x=e.x+e.xs
					If e.ys = 1
						e.y=-(.5*e.x*e.x-e.range)
					Else
						e.y=(.5*e.x*e.x-e.range)
					EndIf
					If Abs(e.y) > e.range
						e.xs = -e.xs
					EndIf
					If Abs(e.y) < 2
						e.xs = -e.xs				 
						e.ys = -e.ys
					EndIf
				Case 1
					e.y=e.y+e.ys
					If e.xs = 1 
						e.x=-(.5*e.y*e.y-e.range)
					Else
						e.x=(.5*e.y*e.y-e.range)
					EndIf
					If Abs(e.x) > e.range
						e.ys = -e.ys
					EndIf
					If Abs(e.x) < 2
						e.ys = -e.ys				 
						e.xs = -e.xs
					EndIf
			End Select
			EndIf
			e.px=e.p.x
			e.py=e.p.y
			If e.die = True And looping = False
				If e.p.act > 0 Then CreatePoints(e.p.x+e.x,e.p.y+e.y,-20)
				e.Remove()
			EndIf
		Else
			If e.free = False 
				'just freed elec
				e.x=e.px+e.x
				e.y=e.py+e.y
				e.xs = Rnd(3,6);If Rnd(10)>4 Then e.xs=-e.xs
				e.ys = Rnd(3,6);If Rnd(10)>4 Then e.ys=-e.ys
				e.free = True 
			Else
				If e.die = False
					e.x=e.x+e.xs
					e.y=e.y+e.ys
					If e.x < 0 Or e.x > width Or e.y < 0 Or e.y > height
						e.Remove() 
					EndIf
				EndIf
			EndIf
			If e <> Null
				If e.die = True And looping = False
					CreatePoints(e.x,e.y,-200)
					e.Remove()
				EndIf
			EndIf 
		EndIf 
	Next
End Function



Function RenderElectrons()
	elecsalive=0
	For Local e:bbelec=EachIn elec_list
		elecsalive=elecsalive+1
		SetColor cols[e.col].r,cols[e.col].g,cols[e.col].b
		If e.free = False
			If e.die = False
				DrawRect e.x+e.p.x,e.y+e.p.y,2,2
			Else
				' die anim ?
				DrawRect e.x+e.p.x-2,e.y+e.p.y,5,1
				DrawRect e.x+e.p.x,e.y+e.p.y-2,1,5
			EndIf
		Else
			DrawRect e.x-2,e.y,5,1
			DrawRect e.x,e.y-2,1,5
		EndIf
	Next
End Function






'*********************************   Bonds   ************************************

Function CreateBonds(p1:bbnuc, p2:bbnuc)
	Local bn:bbbond=New bbbond
	bn.p1=p1
	bn.p2=p2
End Function



Function UpdateBonds()
	For Local t1= 0 To MAXNUCS-2
		If nucs[t1].act > 1
			For Local t2 = t1+1 To MAXNUCS-1
				If nucs[t2].act > 1
					If bnds[t1,t2] = False
						If Abs(nucs[t1].x - nucs[t2].x) < 10 And Abs(nucs[t1].y - nucs[t2].y) < 10
							bnds[t1,t2] = True 
							CreateBonds(nucs[t1],nucs[t2])
						EndIf
					EndIf
				EndIf
			Next
		EndIf
	Next

	bondsalive=0
	For Local bn:bbbond=EachIn bond_list
		If bn.p1.act = 0 Or bn.p2.act = 0
			bnds[bn.p1.id,bn.p2.id]=False
			bn.Remove()
		EndIf
		bondsalive = bondsalive+1
	Next

	bcount = bcount + 1
	If bcount > bcountmax Then bcount = 0;bondact = 2
	If bcount > bcountwarn Then bondact=1
	If bcount >= bcountdead Then bondact=0

	If chn_bond <> Null And bondsalive = 0 Then StopChannel chn_bond;chn_bond=Null

End Function



Function RenderBonds()
If bondsalive > 0 
	Select bondact
		Case 0
			If bcount = bcountdead
				If chn_bond <> Null Then StopChannel chn_bond;chn_bond=Null
				chn_bond = PlaySound(snd_bond1)
			ElseIf Not chn_bond <> Null
				chn_bond = PlaySound(snd_bond1)
			EndIf
			SetColor 255,0,0
		Case 1
			If (bcount Mod 10) = 0
				If chn_bond <> Null Then StopChannel chn_bond;chn_bond=Null
				chn_bond = PlaySound(snd_bond2)
			ElseIf Not chn_bond <> Null
				chn_bond = PlaySound(snd_bond2)
			EndIf
			Select Int(bcount/10) Mod 3
				Case 0
					SetColor 0,255,0
				Case 1
					SetColor 255,255,0
				Case 2
					SetColor 255,255,255
			End Select
		Case 2
			SetColor 0,0,255
			If chn_bond <> Null Then StopChannel chn_bond;chn_bond=Null
	End Select
	For Local bn:bbbond=EachIn bond_list
		DrawLine  bn.p1.x,bn.p1.y,bn.p2.x,bn.p2.y
	Next
EndIf
End Function





'*********************************  photons  *********************

Function CreatePhoton()
	' line from x,y to width/2,height/2 extended to edge
	Local xc#= width/2
	Local yc#= height/2
	Local slope#
	Local xpos#
	Local ypos#
	Local xnorm#
	Local ynorm#
	If x>xc
		If y>yc
			'bottom right
			slope#=(yc-y)/(xc-x)
			' find ypos where x=width
			ypos# = y+slope*(xc*2-x)
			' find xpos where y=height
			xpos# = x+(yc*2-y)/slope
			If ypos <0 Or ypos >height
				ypos = height
			EndIf
			If xpos <0 Or xpos >width
				xpos = width
			EndIf
			xpos = width-xpos
			ypos = height-ypos
		Else
			'bottom Left
			slope#=(yc-y)/(xc-x)
			' find ypos where x=width
			ypos# = y+slope*(xc*2-x)
			' find xpos where y=height
			xpos# = x+(yc*2-y)/slope
			If ypos <0 Or ypos >height
				ypos = 0
				xpos = width-xpos
			EndIf
			If xpos <0 Or xpos >width
				xpos = width
			EndIf
			xpos = width-xpos
			ypos = height-ypos 
		EndIf
	Else
		If y>height/2
			'upper right
			slope#=(yc-y)/(xc-x)
			' find ypos where x=width
			ypos# = y+slope*(xc*2-x)
			' find xpos where y=height
			xpos# = x+(yc*2-y)/slope
			If ypos <0 Or ypos >height
				ypos = height
			EndIf
			If xpos <0 Or xpos >width
				xpos = 0
				ypos =height-ypos
			EndIf
			xpos = width-xpos
			ypos = height-ypos
		Else
			'upper Left
			slope#=(yc-y)/(xc-x)
			' find ypos where x=width
			ypos# = y+slope*(xc*2-x)
			' find xpos where y=height
			xpos# = x+(yc*2-y)/slope
			If ypos <0 Or ypos >height
				ypos = 0
				xpos = width-xpos
			EndIf
			If xpos <0 Or xpos >width
				xpos = 0
				ypos =height-ypos
			EndIf
			xpos = width-xpos
			ypos = height-ypos
		EndIf
	EndIf
'	Line xc,yc,xpos,ypos
	Local xdiff# = xpos-xc
	Local ydiff# = ypos-yc
	Local dist# = Sqr(xdiff*xdiff+ydiff*ydiff)
	If dist > 0 Then xnorm# = -(xdiff/dist) Else xnorm# = 1
	If dist > 0 Then ynorm# = -(ydiff/dist) Else ynorm# = 1
	Local ph:bbphot=New bbphot
	ph.x = xpos
	ph.y = ypos
	ph.xs = xnorm*phspeed
	ph.ys = ynorm*phspeed
End Function



Function UpdatePhotons()
	For Local ph:bbphot = EachIn phot_list
		ph.pos=ph.pos+1;If ph.pos>3 Then ph.pos=0
		If ph.die = False
			ph.x=ph.x+ph.xs
			ph.y=ph.y+ph.ys	
			If ph.x <0 Or ph.x>width
				ph.Remove()
			ElseIf ph.y>height Or ph.y<0
				ph.Remove()
			EndIf
		Else
			If looping = False
				Local pts = 200
				If g_numkilled > 1 Then pts = pts*2
				PlaySound(snd_killphoton)
				CreatePoints(ph.x,ph.y,pts)
				ph.Remove()
			EndIf
		EndIf
	Next
End Function



Function RenderPhotons()
	phcol=phcol+1;If phcol > 2 Then phcol = 0
	Select phcol
		Case 0
			SetColor 255,0,0
		Case 1
			SetColor 0,255,0
		Case 2
			SetColor 0,0,255
	End Select
	For Local ph:bbphot=EachIn phot_list
		If ph.die = False
			Select Int(ph.pos)
				Case 0
					DrawLine ph.x   ,ph.y-10, ph.x+9 ,ph.y+5
					DrawLine ph.x+9 ,ph.y+5 , ph.x-9 ,ph.y+5
					DrawLine ph.x-9 ,ph.y+5 , ph.x   ,ph.y-10
				Case 1
					DrawLine ph.x+5 ,ph.y-9 , ph.x+5 ,ph.y+9
					DrawLine ph.x+5 ,ph.y+9 , ph.x-10,ph.y
					DrawLine ph.x-10,ph.y   , ph.x+5 ,ph.y-9
				Case 2
					DrawLine ph.x+9 ,ph.y-5 , ph.x   ,ph.y+10
					DrawLine ph.x   ,ph.y+10, ph.x-9 ,ph.y-5
					DrawLine ph.x-9 ,ph.y-5 , ph.x+9 ,ph.y-5
				Case 3
					DrawLine ph.x+10,ph.y   , ph.x-5 ,ph.y+9
					DrawLine ph.x-5 ,ph.y+9 , ph.x-5 ,ph.y-9
					DrawLine ph.x-5,ph.y-9  , ph.x+10,ph.y
			End Select
		Else
			' die anim ?
			'Rect ph\x-7,ph\y,15,1,0
			'Rect ph\x,ph\y-7,1,15,0
			Select Int(ph.pos)
				Case 0
					DrawLine ph.x    ,ph.y-20 , ph.x+18 ,ph.y+10
					DrawLine ph.x+18 ,ph.y+10 , ph.x-18 ,ph.y+10
					DrawLine ph.x-18 ,ph.y+10 , ph.x    ,ph.y-20
				Case 1
					DrawLine ph.x+10 ,ph.y-18 , ph.x+10 ,ph.y+18
					DrawLine ph.x+10 ,ph.y+18 , ph.x-20 ,ph.y
					DrawLine ph.x-20 ,ph.y    , ph.x+10 ,ph.y-18
				Case 2
					DrawLine ph.x+18 ,ph.y-10 , ph.x    ,ph.y+20
					DrawLine ph.x    ,ph.y+20 , ph.x-18 ,ph.y-10
					DrawLine ph.x-18 ,ph.y-10 , ph.x+18 ,ph.y-10
				Case 3
					DrawLine ph.x+20 ,ph.y    , ph.x-10 ,ph.y+18
					DrawLine ph.x-10 ,ph.y+18 , ph.x-10 ,ph.y-18
					DrawLine ph.x-10 ,ph.y-18 , ph.x+20 ,ph.y
			End Select
			
		EndIf
	Next
End Function






'*********************************  tanks  *********************

Function CreateTanks()
	Local tk:bbtank = New bbtank
	tk.die=False
	tk.x=Rnd(50,(width-HBORDER*2)/2-5)
	tk.y=Rnd(50,(height-VBORDER*2)/2-5)
	If Rnd(10) > 4 Then tk.x = width/2-tk.x Else tk.x = width/2+tk.x
	If Rnd(10) > 4 Then tk.y = height/2-tk.y Else tk.y = height/2+tk.y
	tk.xs = Rnd(0.3,tankspeed)
	tk.ys = Rnd(0.3,tankspeed)
	If Rnd(10) > 4 Then tk.xs = -tk.xs
	If Rnd(10) > 4 Then tk.ys = -tk.ys
	tk.minetimer = Rnd(5,tankminewait)
	tk.pos = Rnd(31)
End Function



Function UpdateTanks()
	For Local tk:bbtank = EachIn tank_list
		tk.pos=tk.pos+1;If tk.pos>31 Then tk.pos=0
		If tk.die=False
			If Rnd(1000)>980
				If Rnd(10) > 4
					Local tmpxs# = tk.xs
					tk.xs = tk.ys 'Rnd(0.2,tankspeed)
					If Rnd(10) > 4 Then tk.xs = -tk.xs
					tk.ys = tmpxs
				Else
					Local tmpys# = tk.ys
					tk.ys = tk.xs 'Rnd(0.2,tankspeed)
					If Rnd(10) > 4 Then tk.ys = -tk.ys
					tk.xs = tmpys
				EndIf
			EndIf
			tk.x=tk.x+tk.xs
			tk.y=tk.y+tk.ys
			If tk.x<HBORDER Or tk.x>=width-HBORDER
				tk.xs=-tk.xs
				tk.x=tk.x+tk.xs 
			EndIf
			If tk.y>=height-VBORDER Or tk.y<VBORDER
				tk.ys=-tk.ys
				tk.y=tk.y+tk.ys 
			EndIf
			tk.minetimer = tk.minetimer - 1 
			If tk.minetimer < 0
				tk.minetimer = tankminewait
				If nucsalive > 0
					CreateMine(tk.x,tk.y)
					PlaySound(snd_mine)
				EndIf
			EndIf
		EndIf
		If tk.die = True And looping = False
			Local pts = 100
			If g_numkilled > 1 Then pts = pts*2
			CreatePoints(tk.x,tk.y,pts)
			PlaySound(snd_killtank)
			tk.Remove()
		EndIf
	Next
End Function



Function RenderTanks()
	For Local tk:bbtank=EachIn tank_list
		If tk.minetimer>10 Then SetColor 0,0,255 Else SetColor 255,255,255
		If tk.die = False
			Select tk.pos/4
				Case 0
					DrawLine tk.x   ,tk.y-10, tk.x+9 ,tk.y+5
					DrawLine tk.x+9 ,tk.y+5 , tk.x-9 ,tk.y+5
					DrawLine tk.x-9 ,tk.y+5 , tk.x   ,tk.y-10
					DrawLine tk.x+9 ,tk.y-5 , tk.x   ,tk.y+10
					DrawLine tk.x   ,tk.y+10, tk.x-9 ,tk.y-5
					DrawLine tk.x-9 ,tk.y-5 , tk.x+9 ,tk.y-5
				Case 4
					DrawLine tk.x+5 ,tk.y-9 , tk.x+5 ,tk.y+9
					DrawLine tk.x+5 ,tk.y+9 , tk.x-10,tk.y
					DrawLine tk.x-10,tk.y   , tk.x+5 ,tk.y-9
					DrawLine tk.x+10,tk.y   , tk.x-5 ,tk.y+9
					DrawLine tk.x-5 ,tk.y+9 , tk.x-5 ,tk.y-9
					DrawLine tk.x-5,tk.y-9  , tk.x+10,tk.y
				Case 2
					DrawLine tk.x+9 ,tk.y-5 , tk.x   ,tk.y+15
					DrawLine tk.x   ,tk.y+15, tk.x-9 ,tk.y-5
					DrawLine tk.x-9 ,tk.y-5 , tk.x+9 ,tk.y-5
					DrawLine tk.x   ,tk.y-15, tk.x+9 ,tk.y+5
					DrawLine tk.x+9 ,tk.y+5 , tk.x-9 ,tk.y+5
					DrawLine tk.x-9 ,tk.y+5 , tk.x   ,tk.y-15
				Case 6
					DrawLine tk.x+15,tk.y   , tk.x-5 ,tk.y+9
					DrawLine tk.x-5 ,tk.y+9 , tk.x-5 ,tk.y-9
					DrawLine tk.x-5,tk.y-9  , tk.x+15,tk.y
					DrawLine tk.x+5 ,tk.y-9 , tk.x+5 ,tk.y+9
					DrawLine tk.x+5 ,tk.y+9 , tk.x-15,tk.y
					DrawLine tk.x-15,tk.y   , tk.x+5 ,tk.y-9
				Case 1
					DrawLine tk.x   ,tk.y-12, tk.x+9 ,tk.y+5
					DrawLine tk.x+9 ,tk.y+5 , tk.x-9 ,tk.y+5
					DrawLine tk.x-9 ,tk.y+5 , tk.x   ,tk.y-12
					DrawLine tk.x+9 ,tk.y-5 , tk.x   ,tk.y+12
					DrawLine tk.x   ,tk.y+12, tk.x-9 ,tk.y-5
					DrawLine tk.x-9 ,tk.y-5 , tk.x+9 ,tk.y-5
				Case 7
					DrawLine tk.x+5 ,tk.y-9 , tk.x+5 ,tk.y+9
					DrawLine tk.x+5 ,tk.y+9 , tk.x-12,tk.y
					DrawLine tk.x-12,tk.y   , tk.x+5 ,tk.y-9
					DrawLine tk.x+12,tk.y   , tk.x-5 ,tk.y+9
					DrawLine tk.x-5 ,tk.y+9 , tk.x-5 ,tk.y-9
					DrawLine tk.x-5,tk.y-9  , tk.x+12,tk.y
				Case 3
					DrawLine tk.x+9 ,tk.y-5 , tk.x   ,tk.y+12
					DrawLine tk.x   ,tk.y+12, tk.x-9 ,tk.y-5
					DrawLine tk.x-9 ,tk.y-5 , tk.x+9 ,tk.y-5
					DrawLine tk.x   ,tk.y-12, tk.x+9 ,tk.y+5
					DrawLine tk.x+9 ,tk.y+5 , tk.x-9 ,tk.y+5
					DrawLine tk.x-9 ,tk.y+5 , tk.x   ,tk.y-12
				Case 5
					DrawLine tk.x+12,tk.y   , tk.x-5 ,tk.y+9
					DrawLine tk.x-5 ,tk.y+9 , tk.x-5 ,tk.y-9
					DrawLine tk.x-5,tk.y-9  , tk.x+12,tk.y
					DrawLine tk.x+5 ,tk.y-9 , tk.x+5 ,tk.y+9
					DrawLine tk.x+5 ,tk.y+9 , tk.x-12,tk.y
					DrawLine tk.x-12,tk.y   , tk.x+5 ,tk.y-9
			End Select
		Else
			' die anim ?
			DrawRect tk.x-7,tk.y,15,1
			DrawRect tk.x,tk.y-7,1,15
		EndIf
	Next
End Function






'*****************************  mine *******************

Function CreateMine(xmine,ymine)
	Local m:bbmine=New bbmine
	m.x=xmine
	m.y=ymine
	m.dur = minedur
End Function


Function UpdateMines()
	For Local m:bbmine=EachIn mine_list
		If m.die = False
			m.dur=m.dur-1;If m.dur < 10 Then m.Remove()
		Else 
			If looping = False
				Local pts = 300
				If g_numkilled > 1 Then pts = pts*2
				CreatePoints(m.x,m.y,pts)
				PlaySound(snd_killmine)
				m.Remove()
			EndIf
		EndIf
	Next
End Function


Function RenderMines()
	SetColor 0,255,0
	For Local m:bbmine=EachIn mine_list
		If m.die = False
			Local size = m.dur/15
			DrawLine m.x,m.y-size,m.x+size,m.y
			DrawLine m.x+size,m.y,m.x,m.y+size
			DrawLine m.x,m.y+size,m.x-size,m.y
			DrawLine m.x-size,m.y,m.x,m.y-size
			'size = m\dur/10
			'Rect m\x-size/2,m\y-size/2,size,size,0
		Else
			' die anim ?
			DrawRect m.x-5,m.y,11,1
			DrawRect m.x,m.y-5,1,11
		EndIf
	Next
End Function




'*********************************  stars  *********************

Function CreateStars(xsplit,ysplit)
	Local st:bbstar = New bbstar
	st.InsertBefore(bbstar(star_list.First()))
	st.die=False
	If xsplit = -1
		st.x=Rnd(50,(width-HBORDER*2)/2-5)
		st.y=Rnd(50,(height-VBORDER*2)/2-5)
		If Rnd(10) > 4 Then st.x = width/2-st.x Else st.x = width/2+st.x
		If Rnd(10) > 4 Then st.y = height/2-st.y Else st.y = height/2+st.y
	Else
		st.x=xsplit
		st.y=ysplit
	EndIf 
	st.xs = Rnd(.5,starspeed)
	st.ys = Rnd(.5,starspeed)
	If Rnd(10) > 4 Then st.xs = -st.xs
	If Rnd(10) > 4 Then st.ys = -st.ys
	st.pos = Rnd(31)
	starsalive=starsalive+1
End Function



Function UpdateStars()
	startimer = startimer - 1 
	If startimer < 0 Then startimer = starsplitwait
	For Local st:bbstar = EachIn star_list
		st.pos=st.pos+1;If st.pos>7 Then st.pos=0
		If st.die=False
			st.x=st.x+st.xs
			st.y=st.y+st.ys
			If st.x<HBORDER Or st.x>=width-HBORDER
				st.xs=-st.xs
				st.x=st.x+st.xs 
			EndIf
			If st.y>=height-VBORDER Or st.y<VBORDER
				st.ys=-st.ys
				st.y=st.y+st.ys 
			EndIf
			If startimer = 0
				If nucsalive > 0 And starsalive<MAXSTARS
					CreateStars(st.x,st.y)
					CreateStars(st.x,st.y)
					PlaySound(snd_split4)
				EndIf
			EndIf	
		EndIf
		If st.die = True And looping = False
			Local pts = 100*numstarskilled
			If g_numkilled > 1 Then pts = pts*2
			CreatePoints(st.x,st.y,pts)
			PlaySound(snd_killstar)
			st.Remove()
			starsalive = starsalive-1
		EndIf
	Next

End Function



Function RenderStars()
If starsalive > 0
	If startimer < 60 And (Int(startimer/8) Mod 2) = 0
		SetColor 255,255,255
		Select startimer
			Case 54
				PlaySound(snd_split1)
			Case 38
				PlaySound(snd_split2)
			Case 22
				PlaySound(snd_split3)
		End Select			
	Else
		SetColor 255,255,0
	EndIf
	For Local st:bbstar=EachIn star_list
		If st.die = False
			Select st.pos/4
				Case 0
					DrawLine st.x   ,st.y-10, st.x-3 ,st.y
					DrawLine st.x+9 ,st.y-2 , st.x-2 ,st.y-2
					DrawLine st.x+2 ,st.y-2 , st.x+7 ,st.y+9
					DrawLine st.x+3 ,st.y   , st.x-7 ,st.y+9
					DrawLine st.x   ,st.y+3 , st.x-9 ,st.y-2
				Case 3
					DrawLine st.x   ,st.y-10, st.x+3 ,st.y
					DrawLine st.x-9 ,st.y-2 , st.x+2 ,st.y-2
					DrawLine st.x-2 ,st.y-2 , st.x-7 ,st.y+9
					DrawLine st.x-3 ,st.y   , st.x+7 ,st.y+9
					DrawLine st.x   ,st.y+3 , st.x+9 ,st.y-2
				Case 1
					DrawLine st.x   ,st.y+10, st.x+3 ,st.y
					DrawLine st.x-9 ,st.y+2 , st.x+2 ,st.y+2
					DrawLine st.x-2 ,st.y+2 , st.x-7 ,st.y-9
					DrawLine st.x-3 ,st.y   , st.x+7 ,st.y-9
					DrawLine st.x   ,st.y-3 , st.x+9 ,st.y+2
				Case 2
					DrawLine st.x   ,st.y+10, st.x-3 ,st.y
					DrawLine st.x+9 ,st.y+2 , st.x-2 ,st.y+2
					DrawLine st.x+2 ,st.y+2 , st.x+7 ,st.y-9
					DrawLine st.x+3 ,st.y   , st.x-7 ,st.y-9
					DrawLine st.x   ,st.y-3 , st.x-9 ,st.y+2
			End Select
		Else
			' die anim ?
			DrawRect st.x-7,st.y,15,1
			DrawRect st.x,st.y-7,1,15
		EndIf
	Next
EndIf	
End Function






'*********************************  pulsars  *********************

Function CreatePulsars()
	Local pl:bbpulsar = New bbpulsar
	pl.die=False
	pl.x=Rnd(50,(width-HBORDER*2)/2-5)
	pl.y=Rnd(50,(height-VBORDER*2)/2-5)
	If Rnd(10) > 4 Then pl.x = width/2-pl.x Else pl.x = width/2+pl.x
	If Rnd(10) > 4 Then pl.y = height/2-pl.y Else pl.y = height/2+pl.y
	pl.xs = Rnd(.5,pulsarspeed)
	pl.ys = Rnd(.5,pulsarspeed)
	If Rnd(10) > 4 Then pl.xs = -pl.xs
	If Rnd(10) > 4 Then pl.ys = -pl.ys
	pl.pos = Rnd(32);pl.posdir=1
End Function



Function UpdatePulsars()
	For Local pl:bbpulsar = EachIn pulsar_list
		pl.pos=pl.pos+pl.posdir
		If pl.pos=48 Then pl.posdir=-1
		If pl.pos=0 Then pl.posdir=1
		If pl.die=False
			pl.x=pl.x+pl.xs
			pl.y=pl.y+pl.ys
			If pl.x<HBORDER Or pl.x>=width-HBORDER
				pl.xs=-pl.xs
				pl.x=pl.x+pl.xs 
			EndIf
			If pl.y>=height-VBORDER Or pl.y<VBORDER
				pl.ys=-pl.ys
				pl.y=pl.y+pl.ys 
			EndIf
			If Rnd(1000) > 500
				'head towards player x,y
				Local pxdiff = pl.x - x
				Local pydiff = pl.y - y
				If Abs(pxdiff) > 10
					pl.xs = -Sgn(pxdiff)*Rnd(.5,pulsarspeed)'Abs(pl\xs)
				EndIf
				If Abs(pydiff) > 10
					pl.ys = -Sgn(pydiff)*Rnd(.5,pulsarspeed)'Abs(pl\ys)
				EndIf
			EndIf
		EndIf
		If pl.die = True And looping = False
			Local pts = 300
			If g_numkilled > 1 Then pts = pts*2
			CreatePoints(pl.x,pl.y,pts)
			PlaySound(snd_killpuls)
			pl.Remove()
		EndIf
	Next
End Function



Function Renderpulsars()
	For Local pl:bbpulsar = EachIn pulsar_list
		If pl.die = False
			' draw box for all
			SetColor 255,255,255
			DrawRect pl.x-2,pl.y,5,5
			Local frame = pl.pos/4
			If pl.pos = 5*4 And pl.posdir = 1 Then PlaySound(snd_pulsar)
			Select 	(pl.pos/4) Mod 3			
				Case 0
					SetColor 255,0,0
				Case 1
					SetColor 0,255,0
				Case 2
					SetColor 0,0,255
			End Select
			If frame > 4
				DrawLine pl.x   ,pl.y-10, pl.x ,pl.y
			EndIf
			If frame > 5
				DrawLine pl.x   ,pl.y-10, pl.x-10 ,pl.y-20
				DrawLine pl.x   ,pl.y-10, pl.x+10 ,pl.y-20
			EndIf
			If frame > 6
				DrawLine pl.x-10 ,pl.y-20, pl.x-25,pl.y-20
				DrawLine pl.x+10 ,pl.y-20, pl.x+25 ,pl.y-20
			EndIf
			If frame > 7
				DrawLine pl.x-25,pl.y-20, pl.x-35,pl.y-10
				DrawLine pl.x+25,pl.y-20, pl.x+35,pl.y-10
			EndIf
			If frame > 8
				DrawLine pl.x-35,pl.y-10, pl.x-35,pl.y+12
				DrawLine pl.x+35,pl.y-10, pl.x+35,pl.y+12
			EndIf
			If frame > 9
				DrawLine pl.x-35,pl.y+12, pl.x-15,pl.y+25
				DrawLine pl.x+35,pl.y+12, pl.x+15,pl.y+25
			EndIf
			If frame > 10
				DrawLine pl.x-15,pl.y+25,pl.x ,pl.y+25
				DrawLine pl.x+15,pl.y+25,pl.x ,pl.y+25
			EndIf
		Else
			' die anim ?
			DrawRect pl.x-7,pl.y,15,1
			DrawRect pl.x,pl.y-7,1,15
		EndIf
	Next
End Function






'*********************************  frags  ***********************

Function CreateFrags()
For Local t = 0 To 3
	If fragsalive < MAXFRAGS
		Local k=Int(Rnd(0,6))
		Local r=cols[k].r
		Local g=cols[k].g
		Local b=cols[k].b
		Local count=16
		Local anstep#=2.0*Pi+count
		Local an#=Rnd(anstep)
		For Local s=1 To count
			Local f:bbFrag=New bbFrag
			f.x=x
			f.y=y
			f.xs=Cos( an ) * Rnd( 4,0.6 )
			f.ys=Sin( an ) * Rnd( 4,0.6 )
			f.r=r;f.g=g;f.b=b
			f.dur=50
			an=an+anstep
		Next
		fragsalive = fragsalive+16
	EndIf
Next
End Function



Function UpdateFrags()
	For Local f:bbFrag=EachIn Frag_list
		f.x=f.x+f.xs
		f.y=f.y+f.ys
		If f.x<0 Or f.x>width Or f.y>height Or f.y<0
			f.Remove();fragsalive=fragsalive-1
		Else 
			f.b=f.b-2;If f.b<0 Then f.b =0
			f.g=f.g-2;If f.g<0 Then f.g =0
			f.r=f.r-2;If f.r<0 Then f.r =0
			f.dur=f.dur-1
			If f.dur < 0 Then f.Remove();fragsalive=fragsalive-1
		EndIf
	Next
End Function



Function RenderFrags()
	For Local f:bbFrag=EachIn Frag_list
		SetColor f.r,f.g,f.b
		DrawRect f.x-1,f.y-1,2,2
	Next
End Function



' **************************  vector text data  *******************************************
' chars 32-95
' spc!"#$%&'()*+`-,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_"

#letterdata
' spc
DefData	1,	1,4, 3,4
' !
DefData	2,	2,0, 2,4,	2,5, 2,6
' ""
DefData	2,	1,1, 1,3,	3,1, 3,3
' #
DefData	4,	1,0, 1,6,	3,0, 3,6,	0,2, 4,2,	0,4, 4,4
' $
DefData	6,	1,0, 1,3,	1,3, 3,3,	3,3, 3,6,	3,6, 1,6,	1,0, 3,0,	2,0, 2,6
' %
DefData	3,	4,0, 0,6,	1,1, 1,2,	3,4, 3,5
' &
DefData	6,	0,1, 4,5,	0,1, 1,0,	1,0, 2,1,	2,1, 0,4,	0,4, 2,6,	2,6, 4,3
' '
DefData 	1,	3,1, 2,2
' (
DefData	3,	3,0, 1,2,	1,2, 1,4,	1,4, 3,6
' )
DefData	3,	1,0, 3,2,	3,2, 3,4,	3,4, 1,6
' *
DefData	3,	1,1, 3,5,	1,5, 3,1,	0,3, 4,3
' +
DefData 	2,	2,2, 2,4,	1,3, 3,3
' ,
DefData	1,	2,5, 2,6
' -
DefData	1,	1,3, 3,3
' .
DefData	1,	2,5, 2,6
' /
DefData	1,	4,0, 0,6
' 0
DefData	4,	0,0, 0,6,	0,6, 4,6,	4,6, 4,0,	4,0, 0,0
' 1
DefData	1,	3,0, 3,6
' 2
DefData	5,	0,0, 4,0,	4,0, 4,3,	4,3, 0,3,	0,3, 0,6,	0,6, 4,6
' 3
DefData	4,	0,0, 4,0,	4,0, 4,6,	4,6, 0,6,	2,3, 4,3
' 4
DefData	3,	0,0, 0,3,	0,3, 4,3,	4,0, 4,6
' 5
DefData	5,	0,0, 4,0,	0,0, 0,3,	0,3, 4,3,	4,3, 4,6,	0,6, 4,6
' 6
DefData	4,	0,0, 0,6,	0,3, 4,3,	4,3, 4,6,	0,6, 4,6
' 7
DefData	2,	0,0, 4,0,	4,0, 4,6
' 8
DefData	5,	0,0, 0,6,	0,6, 4,6,	4,6, 4,0,	4,0, 0,0,	0,3, 4,3
' 9
DefData	4,	0,0, 4,0,	4,0, 4,6,	0,0, 0,3,	0,3, 4,3
' :
DefData	2,	2,1, 2,1,	2,5, 2,5
' ;
DefData	2,	2,1, 2,1,	2,5, 2,6
' <
DefData 	2,	4,0, 0,3,	0,3, 4,6
' =
DefData 	2,	1,2, 3,2,	1,4, 3,4
' >
DefData	2,	0,0, 4,3,	4,3, 0,6
' ?
DefData	6,	1,1, 1,0,	1,0, 3,0,	3,0, 3,2,	3,2, 2,3,	2,3, 2,4,	2,5, 2,6
' @
DefData 	6,	2,3, 2,4,	2,4, 4,4,	4,4, 4,0,	4,0, 0,0,	0,0, 0,6,	0,6, 4,6
' A
DefData	5,	2,0, 0,2,	2,0, 4,2,	0,2, 0,6,	4,2, 4,6,	0,3, 4,3
' B
DefData	6,	0,0, 0,6,	0,6, 4,6,	4,6, 4,3,	4,3, 0,3,	0,0, 3,0,	3,0, 3,3
' C
DefData	3,	0,0, 0,6,	0,6, 4,6,	0,0, 4,0
' D
DefData	6,	0,0, 0,6,	0,6, 2,6,	2,6, 4,4,	4,4, 4,2,	4,2, 2,0,	2,0, 0,0
' E
DefData	4,	0,0, 0,6,	0,6, 4,6,	0,0, 4,0,	0,3, 2,3
' F
DefData	3,	0,0, 0,6,	0,0, 4,0,	0,3, 2,3
' G
DefData	5,	0,0, 0,6,	0,6, 4,6,	0,0, 4,0,	4,6, 4,3,	4,3, 2,3
' H
DefData	3,	0,0, 0,6,	0,3, 4,3,	4,0, 4,6
' I
DefData	3,	0,0, 4,0,	0,6, 4,6,	2,0, 2,6
' J
DefData	3,	4,0, 4,6,	4,6, 0,6,	0,6, 0,3
' K
DefData	4,	0,0, 0,6,	0,3, 2,3,	2,3, 4,0,	2,3, 4,6
' L
DefData	2,	0,0, 0,6,	0,6, 4,6
' M
DefData	4,	0,0, 0,6,	0,0, 2,3,	2,3, 4,0,	4,0, 4,6
' N
DefData	3,	0,0, 0,6,	0,0, 4,6,	4,6, 4,0
' O
DefData	4,	0,0, 0,6,	0,6, 4,6,	4,6, 4,0,	4,0, 0,0
' P
DefData	4,	0,0, 0,6,	0,0, 4,0,	0,3, 4,3,	4,3, 4,0
' Q
DefData	5,	0,0, 0,6,	0,6, 4,6,	4,6, 4,0,	4,0, 0,0,	4,6, 2,3
' R
DefData	5,	0,0, 0,6,	0,0, 4,0,	0,3, 4,3,	4,0, 4,3,	2,3, 4,6
' S
DefData	5,	0,0, 0,3,	0,3, 4,3,	4,3, 4,6,	4,6, 0,6,	0,0, 4,0
' T
DefData	2,	0,0, 4,0,	2,0, 2,6
' U
DefData	3,	0,0, 0,6,	0,6, 4,6,	4,6, 4,0
' V
DefData	4,	0,0, 0,4,	0,4, 2,6,	2,6, 4,4,	4,4, 4,0
' W
DefData	4,	0,0, 1,6,	1,6, 2,4,	2,4, 3,6,	3,6, 4,0
' X
DefData	2,	0,0, 4,6,	0,6, 4,0
' Y
DefData	3,	0,0, 2,3,	2,3, 4,0,	2,3, 2,6
' Z
DefData	3,	0,0, 4,0,	4,0, 0,6,	0,6, 4,6

' replaced characters... [\]^_
' [ = .
DefData	1,	2,5, 2,6
' \ = _
DefData	1,	0,6, 4,6
' ] = <-
DefData	3,	3,1, 0,3,	0,3, 3,5,	0,3, 4,3
' ^ = checkmark
DefData	2,	0,4, 2,6,	2,6, 4,0
' _ = ->
DefData	3,	1,1, 4,3,	4,3, 1,5,	0,3, 4,3



#demopoints
DefData 450,300
DefData 430,320
DefData 410,340
DefData 385,360
DefData 370,370
DefData 340,380
DefData 300,390
DefData 270,380
DefData 250,350
DefData 240,320
DefData 230,280
DefData 230,260
DefData 240,220
DefData 270,180
DefData 290,140
DefData 305,100
DefData 310,80
DefData 305,55 
DefData 275,30 
DefData 250,25
DefData 220,40
DefData 205,60
DefData 200,80 
DefData 205,105
DefData 220,130
DefData 245,145
DefData 260,150
DefData 280,145
DefData 310,130
DefData 330,110
