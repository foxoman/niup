import niup/niupc
import std/macros
import strformat

export niupc except Dialog, User

proc Open*(utf8Mode: bool = false, imageLib: bool = false) =
  var argc:cint=0
  var argv:cstringArray=nil
  Open(argc, addr argv)

  if utf8Mode:
    SetGlobal("UTF8MODE", "Yes")

  if imageLib:
    ImageLibOpen()


# Text, MultiLine aux
proc TextConvertLinColToPos(ih: PIhandle, lin, col: int, pos: var int) =
  niupc.TextConvertLinColToPos(ih, cint(lin), cint(col), cast[var cint](pos))

proc TextConvertPosToLinCol(ih: PIhandle, pos: int, lin, col: var int) =
  niupc.TextConvertPosToLinCol(ih, cint(pos), cast[var cint](lin), cast[var cint](col))

