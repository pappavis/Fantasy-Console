import brl.blitz
import brl.retro
import brl.glmax2d
bbdigit^brl.blitz.Object{
.x1#&
.y1#&
.x2#&
.y2#&
-New%()="_bb_bbdigit_New"
-Delete%()="_bb_bbdigit_Delete"
}="bb_bbdigit"
SetUpVectorFont%()="bb_SetUpVectorFont"
DrawDigit%(d%,xd%,yd%,sc#)="bb_DrawDigit"
DrawString%(st$,xd%,yd%,sc#)="bb_DrawString"
letterlen%&[]&=mem:p("bb_letterlen")
letters:bbdigit&[,]&=mem:p("bb_letters")
