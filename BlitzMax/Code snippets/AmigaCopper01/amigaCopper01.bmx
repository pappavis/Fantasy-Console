
Graphics 640,480,0,2
'SetBuffer BackBuffer()

starsAnim=CreateImage(1,1,4)
For col=0 To 3
	Color 150+(col*3),150+(col*3),150+(col*3)
	Plot 0,0
	GrabImage starsAnim,0,0,col
Next

Type star
	Field x
	Field y
	Field v
End Type
currentStar.star=Null

For y=0 To GraphicsHeight()-1
	currentStar.star=New star
	currentStar.x=Rand(0,GraphicsWidth()-1)
	currentStar.y=y
	currentStar.v=Rand(1,4)
Next

For y=0 To 31
	If y<16
		col=y
	Else
		col=(31-y)
	EndIf
	
	Color 0,0,col*12
	Line 0,y,1,y
	Line 0,y+64,1,y+64
	
	Color 0,col*12,0
	Line 0,y+32,1,y+32
	Line 0,y+96,1,y+96
Next
copperSlice=CreateImage(1,128)
GrabImage copperSlice,0,0


copperAnim=CreateImage(GraphicsWidth(),64,64)


For yoffset = 0 To 63
	y=0
	ytick=0
	ystretch=15
	For x=0 To GraphicsWidth()-1
		DrawBlock copperSlice,x,(y+yoffset) Mod 64
		ytick=ytick+1
		If ytick>ystretch
			ytick=0
			y=y+1
			If y>63 Then y=0
		EndIf
	Next
	GrabImage copperAnim,0,63,yoffset
Next
FreeImage copperSlice
Cls

'apply perspective To each frame
For frame=0 To 63
	
	lineOut=0
	For lineIn=0 To 63
		If lineIn<32
			For passes=0 To lineIn/10
				CopyRect 0,lineIn,GraphicsWidth(),1,0,LineOut,ImageBuffer(copperAnim,frame)
				lineOut=lineOut+1
			Next	
		Else
			For passes=0 To ((63-lineIn)/10)
				CopyRect 0,lineIn,GraphicsWidth(),1,0,LineOut,ImageBuffer(copperAnim,frame)
				lineOut=lineOut+1
			Next	
		EndIf
	Next

	tempImage=CreateImage (GraphicsWidth(),lineOut-1)
	GrabImage tempImage,0,0
	ResizeImage tempImage,GraphicsWidth(),64
	CopyRect 0,0,GraphicsWidth(),64,0,0,ImageBuffer(tempImage),ImageBuffer(copperAnim,frame)
	FreeImage tempImage
Next

frame=0
While Not KeyHit(1)

	For currentStar=EachIn star
		DrawBlock starsAnim,currentStar.x,currentStar.y,currentStar.v-1
		currentStar.x=currentStar.x-currentStar.v
		If currentStar.x<0 Then currentStar.x=currentStar.x+GraphicsWidth()
	Next

	DrawBlock copperAnim,0,0,frame
	DrawBlock copperAnim,0,GraphicsHeight()-64,frame
	frame:+1 ;
	If frame>63 Then frame:-64
	Flip ; Cls
Wend


