Module:    Ole-Controls
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      See License.txt in this distribution for details.
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// This file is automatically generated from "olectl.h"; do not edit.


define C-struct <FONTDESC>
  sealed inline-only slot cbSizeofstruct-value :: <UINT>;
  sealed inline-only slot lpstrName-value :: <LPOLESTR>;
  sealed inline-only slot cySize-value   :: <CY>;
  sealed inline-only slot sWeight-value  :: <SHORT>;
  sealed inline-only slot sCharset-value :: <SHORT>;
  sealed inline-only slot fItalic-value  :: <BOOL>;
  sealed inline-only slot fUnderline-value :: <BOOL>;
  sealed inline-only slot fStrikethrough-value :: <BOOL>;
  pack: 8;
  pointer-type-name: <LPFONTDESC>;
  c-name: "struct tagFONTDESC";
end C-struct <FONTDESC>;
define inline-only constant $PICTYPE-UNINITIALIZED      =   -1;
define inline-only constant $PICTYPE-NONE               =    0;
define inline-only constant $PICTYPE-BITMAP             =    1;
define inline-only constant $PICTYPE-METAFILE           =    2;
define inline-only constant $PICTYPE-ICON               =    3;
define inline-only constant $PICTYPE-ENHMETAFILE        =    4;
define C-struct <bmp%1>
  sealed inline-only slot hBitmap-value  :: <HBITMAP>;
  sealed inline-only slot hpal-value     :: <HPALETTE>;
end;
define C-struct <wmf%2>
  sealed inline-only slot hmeta-value    :: <HMETAFILE>;
  sealed inline-only slot xExt-value     :: <C-int>;
  sealed inline-only slot yExt-value     :: <C-int>;
end;
define C-struct <icon%3>
  sealed inline-only slot hicon-value    :: <HICON>;
end;
define C-struct <emf%4>
  sealed inline-only slot hemf-value     :: <HENHMETAFILE>;
end;
define C-union <u%5>
  slot bmp-value   :: <bmp%1>, setter: #f;
  slot wmf-value   :: <wmf%2>, setter: #f;
  slot icon-value  :: <icon%3>, setter: #f;
  slot emf-value   :: <emf%4>, setter: #f;
  pack: 8;
end;

define C-struct <PICTDESC>
  sealed inline-only slot cbSizeofstruct-value :: <UINT>;
  sealed inline-only slot picType-value  :: <UINT>;
  sealed slot u-value                    :: <u%5>;
  pack: 8;
  pointer-type-name: <LPPICTDESC>;
  c-name: "struct tagPICTDESC";
end C-struct <PICTDESC>;
define constant <OLE-XPOS-PIXELS>    = <C-long>;
define constant <OLE-YPOS-PIXELS>    = <C-long>;
define constant <OLE-XSIZE-PIXELS>   = <C-long>;
define constant <OLE-YSIZE-PIXELS>   = <C-long>;
define inline constant <OLE-XPOS-CONTAINER> = <C-float>;
define inline constant <OLE-YPOS-CONTAINER> = <C-float>;
define inline constant <OLE-XSIZE-CONTAINER> = <C-float>;
define inline constant <OLE-YSIZE-CONTAINER> = <C-float>;
// enum OLE_TRISTATE:
define inline-only constant $triUnchecked = 0;
define inline-only constant $triChecked = 1;
define inline-only constant $triGray = 2;

define inline constant <OLE-OPTEXCLUSIVE> = <VARIANT-BOOL>;
define inline constant <OLE-CANCELBOOL> = <VARIANT-BOOL>;
define inline constant <OLE-ENABLEDEFAULTBOOL> = <VARIANT-BOOL>;
define inline-only constant $CTL-E-ILLEGALFUNCTIONCALL  =
	STD-CTL-SCODE(5);
define inline-only constant $CTL-E-OVERFLOW             =
	STD-CTL-SCODE(6);
define inline-only constant $CTL-E-OUTOFMEMORY          =
	STD-CTL-SCODE(7);
define inline-only constant $CTL-E-DIVISIONBYZERO       =
	STD-CTL-SCODE(11);
define inline-only constant $CTL-E-OUTOFSTRINGSPACE     =
	STD-CTL-SCODE(14);
define inline-only constant $CTL-E-OUTOFSTACKSPACE      =
	STD-CTL-SCODE(28);
define inline-only constant $CTL-E-BADFILENAMEORNUMBER  =
	STD-CTL-SCODE(52);
define inline-only constant $CTL-E-FILENOTFOUND         =
	STD-CTL-SCODE(53);
define inline-only constant $CTL-E-BADFILEMODE          =
	STD-CTL-SCODE(54);
define inline-only constant $CTL-E-FILEALREADYOPEN      =
	STD-CTL-SCODE(55);
define inline-only constant $CTL-E-DEVICEIOERROR        =
	STD-CTL-SCODE(57);
define inline-only constant $CTL-E-FILEALREADYEXISTS    =
	STD-CTL-SCODE(58);
define inline-only constant $CTL-E-BADRECORDLENGTH      =
	STD-CTL-SCODE(59);
define inline-only constant $CTL-E-DISKFULL             =
	STD-CTL-SCODE(61);
define inline-only constant $CTL-E-BADRECORDNUMBER      =
	STD-CTL-SCODE(63);
define inline-only constant $CTL-E-BADFILENAME          =
	STD-CTL-SCODE(64);
define inline-only constant $CTL-E-TOOMANYFILES         =
	STD-CTL-SCODE(67);
define inline-only constant $CTL-E-DEVICEUNAVAILABLE    =
	STD-CTL-SCODE(68);
define inline-only constant $CTL-E-PERMISSIONDENIED     =
	STD-CTL-SCODE(70);
define inline-only constant $CTL-E-DISKNOTREADY         =
	STD-CTL-SCODE(71);
define inline-only constant $CTL-E-PATHFILEACCESSERROR  =
	STD-CTL-SCODE(75);
define inline-only constant $CTL-E-PATHNOTFOUND         =
	STD-CTL-SCODE(76);
define inline-only constant $CTL-E-INVALIDPATTERNSTRING =
	STD-CTL-SCODE(93);
define inline-only constant $CTL-E-INVALIDUSEOFNULL     =
	STD-CTL-SCODE(94);
define inline-only constant $CTL-E-INVALIDFILEFORMAT    =
	STD-CTL-SCODE(321);
define inline-only constant $CTL-E-INVALIDPROPERTYVALUE =
	STD-CTL-SCODE(380);
define inline-only constant $CTL-E-INVALIDPROPERTYARRAYINDEX =
	STD-CTL-SCODE(381);
define inline-only constant $CTL-E-SETNOTSUPPORTEDATRUNTIME =
	STD-CTL-SCODE(382);
define inline-only constant $CTL-E-SETNOTSUPPORTED      =
	STD-CTL-SCODE(383);
define inline-only constant $CTL-E-NEEDPROPERTYARRAYINDEX =
	STD-CTL-SCODE(385);
define inline-only constant $CTL-E-SETNOTPERMITTED      =
	STD-CTL-SCODE(387);
define inline-only constant $CTL-E-GETNOTSUPPORTEDATRUNTIME =
	STD-CTL-SCODE(393);
define inline-only constant $CTL-E-GETNOTSUPPORTED      =
	STD-CTL-SCODE(394);
define inline-only constant $CTL-E-PROPERTYNOTFOUND     =
	STD-CTL-SCODE(422);
define inline-only constant $CTL-E-INVALIDCLIPBOARDFORMAT =
	STD-CTL-SCODE(460);
define inline-only constant $CTL-E-INVALIDPICTURE       =
	STD-CTL-SCODE(481);
define inline-only constant $CTL-E-PRINTERERROR         =
	STD-CTL-SCODE(482);
define inline-only constant $CTL-E-CANTSAVEFILETOTEMP   =
	STD-CTL-SCODE(735);
define inline-only constant $CTL-E-SEARCHTEXTNOTFOUND   =
	STD-CTL-SCODE(744);
define inline-only constant $CTL-E-REPLACEMENTSTOOLONG  =
	STD-CTL-SCODE(746);
define inline-only constant $CTL-E-CUSTOM-FIRST         =
	CUSTOM-CTL-SCODE(600);
define inline-only constant $CONNECT-E-FIRST            =
	MAKE-SCODE($SEVERITY-ERROR, $FACILITY-ITF, #x0200);
define inline-only constant $CONNECT-E-LAST             =
	MAKE-SCODE($SEVERITY-ERROR, $FACILITY-ITF, #x020F);
define inline-only constant $CONNECT-S-FIRST            =
	MAKE-SCODE($SEVERITY-SUCCESS, $FACILITY-ITF, #x0200);
define inline-only constant $CONNECT-S-LAST             =
	MAKE-SCODE($SEVERITY-SUCCESS, $FACILITY-ITF, #x020F);
define inline-only constant $CONNECT-E-NOCONNECTION     =
	u%+($CONNECT-E-FIRST, 0);
define inline-only constant $CONNECT-E-ADVISELIMIT      =
	u%+($CONNECT-E-FIRST, 1);
define inline-only constant $CONNECT-E-CANNOTCONNECT    =
	u%+($CONNECT-E-FIRST, 2);
define inline-only constant $CONNECT-E-OVERRIDDEN       =
	u%+($CONNECT-E-FIRST, 3);
define inline-only constant $SELFREG-E-FIRST            =
	MAKE-SCODE($SEVERITY-ERROR, $FACILITY-ITF, #x0200);
define inline-only constant $SELFREG-E-LAST             =
	MAKE-SCODE($SEVERITY-ERROR, $FACILITY-ITF, #x020F);
define inline-only constant $SELFREG-S-FIRST            =
	MAKE-SCODE($SEVERITY-SUCCESS, $FACILITY-ITF, #x0200);
define inline-only constant $SELFREG-S-LAST             =
	MAKE-SCODE($SEVERITY-SUCCESS, $FACILITY-ITF, #x020F);
define inline-only constant $SELFREG-E-TYPELIB          =
	u%+($SELFREG-E-FIRST, 0);
define inline-only constant $SELFREG-E-CLASS            =
	u%+($SELFREG-E-FIRST, 1);
define inline-only constant $PERPROP-E-FIRST            =
	MAKE-SCODE($SEVERITY-ERROR, $FACILITY-ITF, #x0200);
define inline-only constant $PERPROP-E-LAST             =
	MAKE-SCODE($SEVERITY-ERROR, $FACILITY-ITF, #x020F);
define inline-only constant $PERPROP-S-FIRST            =
	MAKE-SCODE($SEVERITY-SUCCESS, $FACILITY-ITF, #x0200);
define inline-only constant $PERPROP-S-LAST             =
	MAKE-SCODE($SEVERITY-SUCCESS, $FACILITY-ITF, #x020F);
define inline-only constant $PERPROP-E-NOPAGEAVAILABLE  =
	u%+($PERPROP-E-FIRST, 0);
define inline-only constant $OLEIVERB-PROPERTIES        =   -7;
define inline-only constant $VT-STREAMED-PROPSET        =   73;
define inline-only constant $VT-STORED-PROPSET          =   74;
define inline-only constant $VT-BLOB-PROPSET            =   75;
define inline-only constant $VT-VERBOSE-ENUM            =   76;

define C-function OleLoadPicturePath
  parameter szURLorPath :: <LPOLESTR>;
  parameter punkCaller :: <LPUNKNOWN>;
  parameter dwReserved :: <DWORD>;
  parameter clrReserved :: <OLE-COLOR>;
  parameter riid       :: <REFIID>;
  output parameter ppvRet :: <LPLPVOID>;
  result status :: <C-HRESULT>;
  c-name: "OleLoadPicturePath", c-modifiers: "__stdcall";
end;

define C-function OleLoadPictureFile
  parameter varFileName :: <VARIANT>;
  parameter lplpdispPicture :: <LPLPDISPATCH>;
  result status :: <C-HRESULT>;
  c-name: "OleLoadPictureFile", c-modifiers: "__stdcall";
end;

define C-function OleSavePictureFile
  parameter lpdispPicture :: <LPDISPATCH>;
  parameter bstrFileName :: <BSTR>;
  result status :: <C-HRESULT>;
  c-name: "OleSavePictureFile", c-modifiers: "__stdcall";
end;
define inline-only constant $LP-DEFAULT                 = #x00;
define inline-only constant $LP-MONOCHROME              = #x01;
define inline-only constant $LP-VGACOLOR                = #x02;
define inline-only constant $LP-COLOR                   = #x04;
define inline-only constant $DISPID-AUTOSIZE            = -500;
define inline-only constant $DISPID-BACKCOLOR           = -501;
define inline-only constant $DISPID-BACKSTYLE           = -502;
define inline-only constant $DISPID-BORDERCOLOR         = -503;
define inline-only constant $DISPID-BORDERSTYLE         = -504;
define inline-only constant $DISPID-BORDERWIDTH         = -505;
define inline-only constant $DISPID-DRAWMODE            = -507;
define inline-only constant $DISPID-DRAWSTYLE           = -508;
define inline-only constant $DISPID-DRAWWIDTH           = -509;
define inline-only constant $DISPID-FILLCOLOR           = -510;
define inline-only constant $DISPID-FILLSTYLE           = -511;
define inline-only constant $DISPID-FONT                = -512;
define inline-only constant $DISPID-FORECOLOR           = -513;
define inline-only constant $DISPID-ENABLED             = -514;
define inline-only constant $DISPID-HWND                = -515;
define inline-only constant $DISPID-TABSTOP             = -516;
define inline-only constant $DISPID-TEXT                = -517;
define inline-only constant $DISPID-CAPTION             = -518;
define inline-only constant $DISPID-BORDERVISIBLE       = -519;
define inline-only constant $DISPID-APPEARANCE          = -520;
define inline-only constant $DISPID-MOUSEPOINTER        = -521;
define inline-only constant $DISPID-MOUSEICON           = -522;
define inline-only constant $DISPID-PICTURE             = -523;
define inline-only constant $DISPID-VALID               = -524;
define inline-only constant $DISPID-READYSTATE          = -525;
define inline-only constant $DISPID-LISTINDEX           = -526;
define inline-only constant $DISPID-SELECTED            = -527;
define inline-only constant $DISPID-LIST                = -528;
define inline-only constant $DISPID-COLUMN              = -529;
define inline-only constant $DISPID-LISTCOUNT           = -531;
define inline-only constant $DISPID-MULTISELECT         = -532;
define inline-only constant $DISPID-MAXLENGTH           = -533;
define inline-only constant $DISPID-PASSWORDCHAR        = -534;
define inline-only constant $DISPID-SCROLLBARS          = -535;
define inline-only constant $DISPID-WORDWRAP            = -536;
define inline-only constant $DISPID-MULTILINE           = -537;
define inline-only constant $DISPID-NUMBEROFROWS        = -538;
define inline-only constant $DISPID-NUMBEROFCOLUMNS     = -539;
define inline-only constant $DISPID-DISPLAYSTYLE        = -540;
define inline-only constant $DISPID-GROUPNAME           = -541;
define inline-only constant $DISPID-IMEMODE             = -542;
define inline-only constant $DISPID-ACCELERATOR         = -543;
define inline-only constant $DISPID-ENTERKEYBEHAVIOR    = -544;
define inline-only constant $DISPID-TABKEYBEHAVIOR      = -545;
define inline-only constant $DISPID-SELTEXT             = -546;
define inline-only constant $DISPID-SELSTART            = -547;
define inline-only constant $DISPID-SELLENGTH           = -548;
define inline-only constant $DISPID-REFRESH             = -550;
define inline-only constant $DISPID-DOCLICK             = -551;
define inline-only constant $DISPID-ABOUTBOX            = -552;
define inline-only constant $DISPID-ADDITEM             = -553;
define inline-only constant $DISPID-CLEAR               = -554;
define inline-only constant $DISPID-REMOVEITEM          = -555;
define inline-only constant $DISPID-CLICK               = -600;
define inline-only constant $DISPID-DBLCLICK            = -601;
define inline-only constant $DISPID-KEYDOWN             = -602;
define inline-only constant $DISPID-KEYPRESS            = -603;
define inline-only constant $DISPID-KEYUP               = -604;
define inline-only constant $DISPID-MOUSEDOWN           = -605;
define inline-only constant $DISPID-MOUSEMOVE           = -606;
define inline-only constant $DISPID-MOUSEUP             = -607;
define inline-only constant $DISPID-ERROREVENT          = -608;
define inline-only constant $DISPID-READYSTATECHANGE    = -609;
define inline-only constant $DISPID-CLICK-VALUE         = -610;
define inline-only constant $DISPID-RIGHTTOLEFT         = -611;
define inline-only constant $DISPID-TOPTOBOTTOM         = -612;
define inline-only constant $DISPID-THIS                = -613;
define inline-only constant $DISPID-AMBIENT-BACKCOLOR   = -701;
define inline-only constant $DISPID-AMBIENT-DISPLAYNAME = -702;
define inline-only constant $DISPID-AMBIENT-FONT        = -703;
define inline-only constant $DISPID-AMBIENT-FORECOLOR   = -704;
define inline-only constant $DISPID-AMBIENT-LOCALEID    = -705;
define inline-only constant $DISPID-AMBIENT-MESSAGEREFLECT = -706;
define inline-only constant $DISPID-AMBIENT-SCALEUNITS  = -707;
define inline-only constant $DISPID-AMBIENT-TEXTALIGN   = -708;
define inline-only constant $DISPID-AMBIENT-USERMODE    = -709;
define inline-only constant $DISPID-AMBIENT-UIDEAD      = -710;
define inline-only constant $DISPID-AMBIENT-SHOWGRABHANDLES = -711;
define inline-only constant $DISPID-AMBIENT-SHOWHATCHING = -712;
define inline-only constant $DISPID-AMBIENT-DISPLAYASDEFAULT = -713;
define inline-only constant $DISPID-AMBIENT-SUPPORTSMNEMONICS = -714;
define inline-only constant $DISPID-AMBIENT-AUTOCLIP    = -715;
define inline-only constant $DISPID-AMBIENT-APPEARANCE  = -716;
define inline-only constant $DISPID-AMBIENT-CODEPAGE    = -725;
define inline-only constant $DISPID-AMBIENT-PALETTE     = -726;
define inline-only constant $DISPID-AMBIENT-CHARSET     = -727;
define inline-only constant $DISPID-AMBIENT-TRANSFERPRIORITY = -728;
define inline-only constant $DISPID-AMBIENT-RIGHTTOLEFT = -732;
define inline-only constant $DISPID-AMBIENT-TOPTOBOTTOM = -733;
define inline-only constant $DISPID-Name                = -800;
define inline-only constant $DISPID-Delete              = -801;
define inline-only constant $DISPID-Object              = -802;
define inline-only constant $DISPID-Parent              = -803;
define inline-only constant $DISPID-FONT-NAME           =    0;
define inline-only constant $DISPID-FONT-SIZE           =    2;
define inline-only constant $DISPID-FONT-BOLD           =    3;
define inline-only constant $DISPID-FONT-ITALIC         =    4;
define inline-only constant $DISPID-FONT-UNDER          =    5;
define inline-only constant $DISPID-FONT-STRIKE         =    6;
define inline-only constant $DISPID-FONT-WEIGHT         =    7;
define inline-only constant $DISPID-FONT-CHARSET        =    8;
define inline-only constant $DISPID-FONT-CHANGED        =    9;
define inline-only constant $DISPID-PICT-HANDLE         =    0;
define inline-only constant $DISPID-PICT-HPAL           =    2;
define inline-only constant $DISPID-PICT-TYPE           =    3;
define inline-only constant $DISPID-PICT-WIDTH          =    4;
define inline-only constant $DISPID-PICT-HEIGHT         =    5;
define inline-only constant $DISPID-PICT-RENDER         =    6;

define inline-only constant $VT-COLOR    = $VT-I4;
define inline-only constant $VT-XPOS-PIXELS = $VT-I4;
define inline-only constant $VT-YPOS-PIXELS = $VT-I4;
define inline-only constant $VT-XSIZE-PIXELS = $VT-I4;
define inline-only constant $VT-YSIZE-PIXELS = $VT-I4;
define inline-only constant $VT-XPOS-HIMETRIC = $VT-I4;
define inline-only constant $VT-YPOS-HIMETRIC = $VT-I4;
define inline-only constant $VT-XSIZE-HIMETRIC = $VT-I4;
define inline-only constant $VT-YSIZE-HIMETRIC = $VT-I4;
define inline-only constant $VT-TRISTATE = $VT-I2;
define inline-only constant $VT-OPTEXCLUSIVE = $VT-BOOL;
define inline-only constant $VT-FONT     = $VT-DISPATCH;
define inline-only constant $VT-PICTURE  = $VT-DISPATCH;
define inline-only constant $VT-HANDLE   = $VT-I4;
