import niup
import std/macros
import strformat

export PIhandle, Close, MainLoop, ShowXY, SetCallback

export
  IUP_ERROR, IUP_NOERROR, IUP_OPENED, IUP_INVALID, IUP_INVALID_ID, IUP_IGNORE,
  IUP_DEFAULT, IUP_CLOSE, IUP_CONTINUE, IUP_CENTER, IUP_LEFT, IUP_RIGHT,
  IUP_MOUSEPOS, IUP_CURRENT, IUP_CENTERPARENT, IUP_LEFTPARENT, IUP_RIGHTPARENT,
  IUP_TOP, IUP_BOTTOM, IUP_TOPPARENT, IUP_BOTTOMPARENT,
  IUP_ALEFT, IUP_ACENTER, IUP_ARIGHT, IUP_ATOP, IUP_ABOTTOM,
  IUP_YES, IUP_NO,
  IUP_HORIZONTAL, IUP_VERTICAL

proc Open*() =
  var argc:cint=0
  var argv:cstringArray=nil
  Open(argc, addr argv)
