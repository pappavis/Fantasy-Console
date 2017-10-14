import brl.blitz
import brl.random
import brl.pngloader
import brl.glmax2d
CycleColours%(slow#=10#)="bb_CycleColours"
GetPlayTime$(cnt%)="bb_GetPlayTime"
FitValueToRange#(InValue#,RangeIn_Start#,RangeIn_End#,RangeOut_Start#,RangeOut_End#)="bb_FitValueToRange"
DrawCircle%(xCenter%,yCenter%,radius%)="bb_DrawCircle"
Rect%(x%,y%,w%,h%,f%=0)="bb_Rect"
RectsOverlap%(x1%,y1%,w1%,h1%,x2%,y2%,w2%,h2%)="bb_RectsOverlap"
TFormR%(xc#,yc#,angle%,xr# Var,yr# Var)="bb_TFormR"
PointInTri%(xo#,yo#,x1#,y1#,x2#,y2#,x3#,y3#)="bb_PointInTri"
PointToPointDist#(x1#,y1#,x2#,y2#)="bb_PointToPointDist"
LineCollide2#(x1#,y1#,x2#,y2#,px#,py#,r%)="bb_LineCollide2"
TurnToFace%(x#,y#,dx#,dy#,plx#,ply#)="bb_TurnToFace"
SaveScreenshot%(f$)="bb_SaveScreenshot"
SetupKeyTable%()="bb_SetupKeyTable"
rcol%&=mem("bb_rcol")
rcoldelta#&=mem:f("bb_rcoldelta")
gcol%&=mem("bb_gcol")
gcoldelta#&=mem:f("bb_gcoldelta")
bcol%&=mem("bb_bcol")
bcoldelta#&=mem:f("bb_bcoldelta")
keystring$&[]&=mem:p("bb_keystring")
