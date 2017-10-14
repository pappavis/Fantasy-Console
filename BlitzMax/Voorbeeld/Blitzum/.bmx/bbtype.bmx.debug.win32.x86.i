import brl.blitz
import brl.glmax2d
TBBType^brl.blitz.Object{
._list:brl.linkedlist.TList&
._link:brl.linkedlist.TLink&
-New%()="_bb_TBBType_New"
-Delete%()="_bb_TBBType_Delete"
-Add%(t:brl.linkedlist.TList)="_bb_TBBType_Add"
-InsertBefore%(t:TBBType)="_bb_TBBType_InsertBefore"
-InsertAfter%(t:TBBType)="_bb_TBBType_InsertAfter"
-Remove%()="_bb_TBBType_Remove"
}="bb_TBBType"
DeleteLast%(t:TBBType)="bb_DeleteLast"
DeleteFirst%(t:TBBType)="bb_DeleteFirst"
DeleteEach%(t:TBBType)="bb_DeleteEach"
ReadString$(in:brl.stream.TStream)="bb_ReadString"
HandleToObject:Object(obj:Object)="bb_HandleToObject"
HandleFromObject%(obj:Object)="bb_HandleFromObject"
