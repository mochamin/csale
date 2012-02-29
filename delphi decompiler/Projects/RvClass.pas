{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvClass;

interface

uses
  Classes, Windows, Graphics, Messages, RvDefine, RpDefine;

type
  TRavePersistentList = class(TList)
  public
    //function sub_005A80F0(?:?; ?:?):?; virtual;
  end;
  TRaveComponentList = class(TList)
  end;
  TRaveMethodList = class(TList)
  public
    destructor Destroy; virtual;
  end;
  TRaveComponent = class(TComponent)
  public
    f30:byte;//f30
    DevLocked:Boolean;//f31
    f38:dword;//f38
    f3C:byte;//f3C
    f3D:byte;//f3D
    Locked:Boolean;//f3E
    f40:TComponent;//f40
    f44:TRaveComponent;//f44
    f48:TRaveComponent;//f48
    OnBeforeReport:TRaveSimpleEvent;//f4C
    OnAfterReport:TRaveSimpleEvent;//f50
    OnBeforePrint:TRaveSimpleEvent;//f54
    OnAfterPrint:TRaveSimpleEvent;//f58
    destructor Destroy; virtual;
    procedure SetName(NewName:TComponentName); virtual;
    constructor Create(AOwner:TComponent); virtual;
    //function sub_005A8D24():?; virtual;
    //function sub_005A8D28():?; virtual;
    function sub_005A8D1C:Boolean; virtual;
    procedure sub_005A8564; virtual;
    procedure sub_005A858C; virtual;
    //procedure sub_005A89FC(?:?); virtual;
    procedure sub_005A8A2C; virtual;
    procedure sub_005A8AFC(); virtual;
    //function sub_005A8B3C():?; virtual;
    //function sub_005A8B00():?; virtual;
    //function sub_005A8B04:?; virtual;
    procedure sub_005A8CCC(); virtual;
    procedure sub_005A8CE0(); virtual;
    procedure sub_005A8CF4(); virtual;
    procedure sub_005A8D08(); virtual;
    procedure sub_005A87BC(); virtual;
    //function sub_005A87C0:?; virtual;
    procedure sub_005A8800; virtual;
    procedure sub_005A8838; virtual;
    procedure sub_005A8870; virtual;
    procedure sub_005A8C2C(); virtual;
    procedure sub_005A8880; virtual;
    procedure sub_005A8890; virtual;
    procedure sub_005A88C0; virtual;
    procedure sub_005A8B40(); virtual;
    //procedure sub_005A85B8(?:?; ?:?); virtual;
    procedure sub_005A8614; virtual;
    procedure sub_005A8644; virtual;
    procedure sub_005A8674; virtual;
    procedure sub_005A86A4; virtual;
    procedure sub_005A8CC4; virtual;
    procedure sub_005A8CBC; virtual;
    procedure sub_005A8C90; virtual;
    procedure sub_005A8C88; virtual;
    //function sub_005A8BC4:?; virtual;
    //procedure sub_005A8BC8(?:?); virtual;
    //function sub_005A86D4:?; virtual;
    procedure sub_005A86EC(); virtual;
    procedure sub_005A8734(); virtual;
    procedure sub_005A8760(); virtual;
    //function sub_005A878C():?; virtual;
    procedure GetParentComponent; dynamic;
    //procedure SetParentComponent(?:?; Value:TComponent); dynamic;
  end;
  TRaveControl = class(TRaveComponent)
  public
    Mirror:TRaveControl;//f5C
    f60:TList;//f60
    f68:?Double;//f68
    f70:?Double;//f70
    f78:word;//f78
    f80:?Double;//f80
    f84:dword;//f84
    f88:?Double;//f88
    f8C:dword;//f8C
    f90:?Double;//f90
    f94:dword;//f94
    f98:?Double;//f98
    f9C:dword;//f9C
    fA0:?Double;//fA0
    fA4:dword;//fA4
    fA8:?Double;//fA8
    fAC:dword;//fAC
    fB0:?Double;//fB0
    fB4:dword;//fB4
    fB8:?Double;//fB8
    fBC:dword;//fBC
    fC0:?Double;//fC0
    fC4:dword;//fC4
    fC8:?Double;//fC8
    fCC:dword;//fCC
    fD0:?Double;//fD0
    fD4:dword;//fD4
    fD8:?Double;//fD8
    fDC:dword;//fDC
    DisplayOn:TDisplayOn;//fE0
    Anchor:TRaveAnchor;//fE1
    fE2:byte;//fE2
    destructor Destroy; virtual;
    procedure AssignTo(Dest:TPersistent); virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005A96D4; virtual;
    procedure sub_005A970C; virtual;
    procedure sub_005A9744; virtual;
    procedure sub_005A9770; virtual;
    //function sub_005A8E80:?; virtual;
    procedure sub_005A97A4; virtual;
    procedure sub_005A97E4; virtual;
    //procedure sub_005A8E1C(?:?; ?:?); virtual;
    procedure sub_005A9824; virtual;
    procedure sub_005A9874; virtual;
    procedure sub_005A9924; virtual;
    procedure sub_005A9984; virtual;
    function sub_005AAA88:Boolean; virtual;
    //procedure sub_005AAAB4(?:?); virtual;
    //procedure sub_005A8EA0(?:?); virtual;
    procedure sub_005A8ED8; virtual;
    procedure sub_005A9348(); virtual;
    //function sub_005A934C():?; virtual;
    procedure sub_005A9314(); virtual;
    //procedure sub_005A933C(?:?); virtual;
    procedure sub_005A9350(); virtual;
    //function sub_005A9354():?; virtual;
    procedure sub_005A9358(); virtual;
    //function sub_005A935C():?; virtual;
    procedure sub_005A9364(); virtual;
    //function sub_005A9368():?; virtual;
    procedure sub_005A9370(); virtual;
    //function sub_005A9374():?; virtual;
    procedure sub_005A9378(); virtual;
    procedure sub_005A9380(); virtual;
    procedure sub_005A9398(); virtual;
    //function sub_005A939C():?; virtual;
    procedure sub_005A93A0(); virtual;
    //function sub_005A93A4():?; virtual;
    //procedure sub_005AA49C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005AA7F8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    procedure GetLeft; virtual;
    //procedure SetLeft(?:?; ?:?); virtual;
    procedure GetTop; virtual;
    //procedure SetTop(?:?; ?:?); virtual;
    procedure GetWidth; virtual;
    //procedure SetWidth(?:?; ?:?); virtual;
    procedure GetHeight; virtual;
    //procedure SetHeight(?:?; ?:?); virtual;
    procedure sub_005A9A4C; virtual;
    procedure sub_005A9BE0; virtual;
    //procedure sub_005A9D60(?:?; ?:?; ?:?); virtual;
    //function sub_005A9FC8(?:?):?; virtual;
    //procedure sub_005AA028(?:?); virtual;
    procedure sub_005AAE84(); virtual;
    //procedure sub_005AAD14(?:?); virtual;
    procedure sub_005AAD10(); virtual;
    procedure sub_005AABC4(); virtual;
    //procedure sub_005AA314(?:?; ?:?); virtual;
    procedure sub_005AAB94; virtual;
    procedure sub_005AA9E8; virtual;
  end;
  TRaveContainerControl = class(TRaveControl)
  public
    fE8:TList;//fE8
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005AAF18; virtual;
    //procedure sub_005AAF38(?:?); virtual;
    procedure sub_005AAF6C; virtual;
    //procedure sub_005AAF94(?:?); virtual;
    //function sub_005AAF80:?; virtual;
    //procedure sub_005AAFC0(?:?; ?:?); virtual;
  end;
  TRaveContainerComponent = class(TRaveComponent)
  public
    f5C:TList;//f5C
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005AB080; virtual;
    //procedure sub_005AB09C(?:?); virtual;
    procedure sub_005AB0C4; virtual;
    //procedure sub_005AB0E4(?:?); virtual;
    //function sub_005AB0D4:?; virtual;
    //procedure sub_005AB10C(?:?; ?:?); virtual;
  end;
  TRaveProjectItem = class(TRaveContainerComponent)
  public
    f60:byte;//f60
    f64:TRaveMemoString;//f64
    f68:String;//f68
    f6C:TStringList;//f6C
    f70:TStringList;//f70
    f74:dword;//f74
    CompileNeeded:Boolean;//f78
    destructor Destroy; virtual;
    procedure DefineProperties(Filer:TFiler); virtual;
    procedure SetName(NewName:TComponentName); virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005AB5F4; virtual;
    //procedure sub_005AB60C(?:?; ?:?); virtual;
    //procedure sub_005AB654(?:?); virtual;
    //procedure sub_005AB6A8(?:?); virtual;
    procedure sub_005AB4A8; virtual;
    procedure sub_005AB4BC; virtual;
    procedure sub_005AB520; virtual;
    procedure sub_005AB538; virtual;
  end;
  TRaveDataObject = class(TRaveProjectItem)
  end;
  TRavePage = class(TRaveProjectItem)
  public
    f80:byte;//f80
    PaperSize:TRavePaperSize;//f84
    PageWidth:TRaveUnits;//f88
    f8C:dword;//f8C
    PageHeight:TRaveUnits;//f90
    f94:dword;//f94
    GotoMode:TGotoMode;//f9C
    GotoPage:TRavePage;//fA0
    GridSpacing:TRaveUnits;//fA8
    fAC:dword;//fAC
    GridLines:Integer;//fB0
    Orientation:TOrientation;//fB4
    Bin:TRaveBin;//fB8
    fBC:String;//fBC
    WasteFit:Boolean;//fC0
    destructor Destroy; virtual;
    procedure AssignTo(Dest:TPersistent); virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005AB86C(?:?; ?:?); virtual;
    //procedure sub_005AB8A8(?:?); virtual;
    //procedure sub_005AB804(?:?); virtual;
    procedure sub_005AB864(); virtual;
  end;
  TRaveFiler = class(TFiler)
  public
    f28:dword;//f28
    f2C:dword;//f2C
    f30:TRaveComponent;//f30
    f34:byte;//f34
    destructor Destroy; virtual;
    procedure DefineProperty(); virtual;
    procedure DefineBinaryProperty(); virtual;
    procedure FlushBuffer(); virtual;
  end;
  TRaveWriter = class(TRaveFiler)
  public
    f38:TRaveProjectItem;//f38
    destructor Destroy; virtual;
    //procedure DefineProperty(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure DefineBinaryProperty(?:?; ?:?; ?:?; ?:?); virtual;
    procedure FlushBuffer(); virtual;
    //constructor Create(?:TRaveWriter; _Dv__:Boolean);
  end;
  TRaveReader = class(TRaveFiler)
  public
    f38:byte;//f38
    f3C:String;//f3C
    f40:byte;//f40
    f41:byte;//f41
    f44:dword;//f44
    f48:void;//f48
    f4C:void;//f4C
    f50:dword;//f50
    destructor Destroy; virtual;
    //procedure DefineProperty(?:?; ?:?; ?:?); virtual;
    //procedure DefineBinaryProperty(?:?; ?:?; ?:?); virtual;
    procedure FlushBuffer(); virtual;
    //constructor Create(?:TRaveReader; _Dv__:Boolean);
  end;
  TRaveFont = class(TFont)
  end;
  TRaveModule = class(TObject)
  public
    f4:String;//f4
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
  end;
  TRaveEvent = class(TPersistent)
  public
    f4:String;//f4
    f8:String;//f8
    Position:Integer;//fC
    ModuleOwner:TRaveProjectItem;//f10
    procedure AssignTo(Dest:TPersistent); virtual;
    procedure sub_005ADE6C; virtual;
  end;
  TRaveSimpleEvent = class(TRaveEvent)
  end;
  TRaveStringEvent = class(TRaveSimpleEvent)
  public
    f1C:String;//f1C
    procedure sub_005ADEDC; virtual;
  end;
  TRaveFloatEvent = class(TRaveSimpleEvent)
  public
    ParamValue:Extended;//f20
    f24:dword;//f24
    f28:word;//f28
    procedure sub_005ADF74; virtual;
  end;
  TPropertyOverride = class(TObject)
  public
    f4:String;//f4
    f8:dword;//f8
    fC:dword;//fC
    f10:dword;//f10
    f14:dword;//f14
    //constructor Create(?:TPropertyOverride; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//005A7E10
//procedure sub_005A7E10(?:AnsiString; ?:?);
//begin
{*
 005A7E10    push       ebp
 005A7E11    mov        ebp,esp
 005A7E13    push       ecx
 005A7E14    push       ebx
 005A7E15    mov        ebx,edx
 005A7E17    mov        dword ptr [ebp-4],eax
 005A7E1A    mov        eax,dword ptr [ebp-4]
 005A7E1D    call       @LStrAddRef
 005A7E22    xor        eax,eax
 005A7E24    push       ebp
 005A7E25    push       5A7E6F
 005A7E2A    push       dword ptr fs:[eax]
 005A7E2D    mov        dword ptr fs:[eax],esp
 005A7E30    cmp        dword ptr ds:[6171E8],0; gvar_006171E8:TStringList
>005A7E37    jne        005A7E4A
 005A7E39    mov        dl,1
 005A7E3B    mov        eax,[0041C8E4]; TStringList
 005A7E40    call       TObject.Create; TStringList.Create
 005A7E45    mov        [006171E8],eax; gvar_006171E8:TStringList
 005A7E4A    mov        ecx,ebx
 005A7E4C    mov        edx,dword ptr [ebp-4]
 005A7E4F    mov        eax,[006171E8]; gvar_006171E8:TStringList
 005A7E54    mov        ebx,dword ptr [eax]
 005A7E56    call       dword ptr [ebx+3C]; TStringList.AddObject
 005A7E59    xor        eax,eax
 005A7E5B    pop        edx
 005A7E5C    pop        ecx
 005A7E5D    pop        ecx
 005A7E5E    mov        dword ptr fs:[eax],edx
 005A7E61    push       5A7E76
 005A7E66    lea        eax,[ebp-4]
 005A7E69    call       @LStrClr
 005A7E6E    ret
<005A7E6F    jmp        @HandleFinally
<005A7E74    jmp        005A7E66
 005A7E76    pop        ebx
 005A7E77    pop        ecx
 005A7E78    pop        ebp
 005A7E79    ret
*}
//end;

//005A7E7C
//procedure sub_005A7E7C(?:AnsiString);
//begin
{*
 005A7E7C    push       ebp
 005A7E7D    mov        ebp,esp
 005A7E7F    add        esp,0FFFFFFF8
 005A7E82    push       ebx
 005A7E83    push       esi
 005A7E84    push       edi
 005A7E85    xor        edx,edx
 005A7E87    mov        dword ptr [ebp-8],edx
 005A7E8A    mov        dword ptr [ebp-4],eax
 005A7E8D    mov        eax,dword ptr [ebp-4]
 005A7E90    call       @LStrAddRef
 005A7E95    xor        eax,eax
 005A7E97    push       ebp
 005A7E98    push       5A7F1C
 005A7E9D    push       dword ptr fs:[eax]
 005A7EA0    mov        dword ptr fs:[eax],esp
 005A7EA3    cmp        dword ptr ds:[6171E8],0; gvar_006171E8:TStringList
>005A7EAA    je         005A7F01
 005A7EAC    mov        eax,[006171E8]; gvar_006171E8:TStringList
 005A7EB1    mov        edx,dword ptr [eax]
 005A7EB3    call       dword ptr [edx+14]; TStringList.GetCount
 005A7EB6    mov        esi,eax
 005A7EB8    dec        esi
 005A7EB9    test       esi,esi
>005A7EBB    jl         005A7F01
 005A7EBD    inc        esi
 005A7EBE    xor        ebx,ebx
 005A7EC0    mov        eax,dword ptr [ebp-4]
 005A7EC3    mov        edx,5A7F34; '*'
 005A7EC8    call       @LStrCmp
>005A7ECD    je         005A7EED
 005A7ECF    lea        ecx,[ebp-8]
 005A7ED2    mov        edx,ebx
 005A7ED4    mov        eax,[006171E8]; gvar_006171E8:TStringList
 005A7ED9    mov        edi,dword ptr [eax]
 005A7EDB    call       dword ptr [edi+0C]; TStringList.Get
 005A7EDE    mov        edx,dword ptr [ebp-8]
 005A7EE1    mov        eax,dword ptr [ebp-4]
 005A7EE4    call       AnsiCompareText
 005A7EE9    test       eax,eax
>005A7EEB    jne        005A7EFD
 005A7EED    mov        edx,ebx
 005A7EEF    mov        eax,[006171E8]; gvar_006171E8:TStringList
 005A7EF4    mov        ecx,dword ptr [eax]
 005A7EF6    call       dword ptr [ecx+18]; TStringList.GetObject
 005A7EF9    mov        edi,eax
 005A7EFB    call       edi
 005A7EFD    inc        ebx
 005A7EFE    dec        esi
<005A7EFF    jne        005A7EC0
 005A7F01    xor        eax,eax
 005A7F03    pop        edx
 005A7F04    pop        ecx
 005A7F05    pop        ecx
 005A7F06    mov        dword ptr fs:[eax],edx
 005A7F09    push       5A7F23
 005A7F0E    lea        eax,[ebp-8]
 005A7F11    mov        edx,2
 005A7F16    call       @LStrArrayClr
 005A7F1B    ret
<005A7F1C    jmp        @HandleFinally
<005A7F21    jmp        005A7F0E
 005A7F23    pop        edi
 005A7F24    pop        esi
 005A7F25    pop        ebx
 005A7F26    pop        ecx
 005A7F27    pop        ecx
 005A7F28    pop        ebp
 005A7F29    ret
*}
//end;

//005A7F38
procedure sub_005A7F38;
begin
{*
 005A7F38    cmp        dword ptr ds:[61719C],0
>005A7F3F    je         005A7F47
 005A7F41    call       dword ptr ds:[61719C]
 005A7F47    ret
*}
end;

//005A7F48
procedure sub_005A7F48;
begin
{*
 005A7F48    push       ebx
 005A7F49    push       esi
 005A7F4A    cmp        dword ptr ds:[6171A0],0
>005A7F51    je         005A7F5C
 005A7F53    call       dword ptr ds:[6171A0]
 005A7F59    pop        esi
 005A7F5A    pop        ebx
 005A7F5B    ret
 005A7F5C    mov        esi,ecx
 005A7F5E    test       esi,esi
>005A7F60    jl         005A7F72
 005A7F62    inc        esi
 005A7F63    mov        ebx,edx
 005A7F65    mov        eax,dword ptr [ebx]
 005A7F67    call       RegisterClass
 005A7F6C    add        ebx,4
 005A7F6F    dec        esi
<005A7F70    jne        005A7F65
 005A7F72    pop        esi
 005A7F73    pop        ebx
 005A7F74    ret
*}
end;

//005A7F78
//procedure sub_005A7F78(?:AnsiString; ?:AnsiString; ?:AnsiString; ?:?; ?:?);
//begin
{*
 005A7F78    push       ebp
 005A7F79    mov        ebp,esp
 005A7F7B    add        esp,0FFFFFFF8
 005A7F7E    push       ebx
 005A7F7F    push       esi
 005A7F80    push       edi
 005A7F81    mov        dword ptr [ebp-8],ecx
 005A7F84    mov        dword ptr [ebp-4],edx
 005A7F87    mov        ebx,eax
 005A7F89    mov        edi,dword ptr [ebp+8]
 005A7F8C    mov        esi,dword ptr [ebp+0C]
 005A7F8F    mov        edx,dword ptr [ebp-4]
 005A7F92    mov        eax,ebx
 005A7F94    call       005A7F38
 005A7F99    mov        edx,esi
 005A7F9B    mov        ecx,edi
 005A7F9D    mov        eax,ebx
 005A7F9F    call       005A7F48
 005A7FA4    mov        edx,esi
 005A7FA6    mov        ecx,edi
 005A7FA8    mov        eax,dword ptr [ebp-8]
 005A7FAB    call       005A7FBC
 005A7FB0    pop        edi
 005A7FB1    pop        esi
 005A7FB2    pop        ebx
 005A7FB3    pop        ecx
 005A7FB4    pop        ecx
 005A7FB5    pop        ebp
 005A7FB6    ret        8
*}
//end;

//005A7FBC
procedure sub_005A7FBC;
begin
{*
 005A7FBC    cmp        dword ptr ds:[6171D4],0
>005A7FC3    je         005A7FCB
 005A7FC5    call       dword ptr ds:[6171D4]
 005A7FCB    ret
*}
end;

//005A7FCC
//procedure sub_005A7FCC(?:AnsiString; ?:AnsiString);
//begin
{*
 005A7FCC    push       ebx
 005A7FCD    push       esi
 005A7FCE    mov        ebx,edx
 005A7FD0    mov        esi,eax
 005A7FD2    cmp        dword ptr ds:[6171D8],0
>005A7FD9    je         005A7FE8
 005A7FDB    mov        edx,ebx
 005A7FDD    mov        eax,esi
 005A7FDF    call       dword ptr ds:[6171D8]
 005A7FE5    pop        esi
 005A7FE6    pop        ebx
 005A7FE7    ret
 005A7FE8    mov        eax,ebx
 005A7FEA    call       @LStrClr
 005A7FEF    pop        esi
 005A7FF0    pop        ebx
 005A7FF1    ret
*}
//end;

//005A7FF4
procedure sub_005A7FF4;
begin
{*
 005A7FF4    cmp        dword ptr ds:[6171A4],0
>005A7FFB    je         005A8003
 005A7FFD    call       dword ptr ds:[6171A4]
 005A8003    ret
*}
end;

//005A8004
procedure sub_005A8004;
begin
{*
 005A8004    mov        edx,dword ptr ds:[61B634]
 005A800A    cmp        byte ptr [edx],0
>005A800D    jne        005A801E
 005A800F    cmp        dword ptr ds:[6171AC],0
>005A8016    je         005A801E
 005A8018    call       dword ptr ds:[6171AC]
 005A801E    ret
*}
end;

//005A8020
//function sub_005A8020:?;
//begin
{*
 005A8020    cmp        dword ptr ds:[6171CC],0
>005A8027    je         005A8030
 005A8029    call       dword ptr ds:[6171CC]
 005A802F    ret
 005A8030    xor        eax,eax
 005A8032    ret
*}
//end;

//005A8034
procedure sub_005A8034;
begin
{*
 005A8034    cmp        dword ptr ds:[6171E0],0
>005A803B    je         005A8043
 005A803D    call       dword ptr ds:[6171E0]
 005A8043    ret
*}
end;

//005A8044
procedure sub_005A8044;
begin
{*
 005A8044    mov        edx,dword ptr ds:[61B634]
 005A804A    cmp        byte ptr [edx],0
>005A804D    jne        005A805E
 005A804F    cmp        dword ptr ds:[6171B0],0
>005A8056    je         005A805E
 005A8058    call       dword ptr ds:[6171B0]
 005A805E    ret
*}
end;

//005A8060
//procedure sub_005A8060(?:TRaveProjectItem; ?:?);
//begin
{*
 005A8060    push       ebx
 005A8061    push       esi
 005A8062    mov        ebx,edx
 005A8064    mov        esi,eax
 005A8066    cmp        dword ptr ds:[6171B4],0
>005A806D    je         005A807C
 005A806F    mov        edx,ebx
 005A8071    mov        eax,esi
 005A8073    call       dword ptr ds:[6171B4]
 005A8079    pop        esi
 005A807A    pop        ebx
 005A807B    ret
 005A807C    mov        eax,esi
 005A807E    mov        edx,dword ptr ds:[5A7428]; TRavePage
 005A8084    call       @IsClass
 005A8089    test       al,al
>005A808B    je         005A8096
 005A808D    mov        edx,ebx
 005A808F    mov        eax,esi
 005A8091    call       005AB384
 005A8096    pop        esi
 005A8097    pop        ebx
 005A8098    ret
*}
//end;

//005A809C
//procedure sub_005A809C(?:TRaveComponent; ?:TRaveComponent);
//begin
{*
 005A809C    push       ebx
 005A809D    mov        ecx,dword ptr ds:[61BB5C]
 005A80A3    cmp        dword ptr [ecx],0
>005A80A6    je         005A80BB
 005A80A8    mov        ecx,dword ptr ds:[61BB5C]
 005A80AE    mov        ecx,dword ptr [ecx]
 005A80B0    xchg       eax,ecx
 005A80B1    xchg       edx,ecx
 005A80B3    mov        ebx,dword ptr [eax]
 005A80B5    call       dword ptr [ebx+94]
 005A80BB    pop        ebx
 005A80BC    ret
*}
//end;

//005A80C0
procedure sub_005A80C0;
begin
{*
 005A80C0    cmp        dword ptr ds:[6171DC],0
>005A80C7    je         005A80CF
 005A80C9    call       dword ptr ds:[6171DC]
 005A80CF    ret
*}
end;

//005A80D0
procedure sub_005A80D0;
begin
{*
 005A80D0    cmp        dword ptr ds:[6171C4],0
>005A80D7    je         005A80DF
 005A80D9    call       dword ptr ds:[6171C4]
 005A80DF    ret
*}
end;

//005A80E0
procedure sub_005A80E0;
begin
{*
 005A80E0    cmp        dword ptr ds:[6171D0],0
>005A80E7    je         005A80EF
 005A80E9    call       dword ptr ds:[6171D0]
 005A80EF    ret
*}
end;

//005A80F0
//function sub_005A80F0(?:?; ?:?):?;
//begin
{*
 005A80F0    push       ebp
 005A80F1    mov        ebp,esp
 005A80F3    push       ecx
 005A80F4    push       ebx
 005A80F5    push       esi
 005A80F6    mov        esi,ecx
 005A80F8    mov        dword ptr [ebp-4],edx
 005A80FB    mov        eax,dword ptr [ebp-4]
 005A80FE    call       @LStrAddRef
 005A8103    xor        eax,eax
 005A8105    push       ebp
 005A8106    push       5A8177
 005A810B    push       dword ptr fs:[eax]
 005A810E    mov        dword ptr fs:[eax],esp
 005A8111    mov        eax,dword ptr [ebp-4]
 005A8114    call       FindClass
 005A8119    mov        ebx,eax
 005A811B    test       ebx,ebx
>005A811D    je         005A815F
 005A811F    mov        edx,dword ptr ds:[41D280]; TComponent
 005A8125    mov        eax,ebx
 005A8127    call       TObject.InheritsFrom
 005A812C    test       al,al
>005A812E    je         005A813D
 005A8130    mov        ecx,esi
 005A8132    mov        dl,1
 005A8134    mov        eax,ebx
 005A8136    call       dword ptr [eax+2C]
 005A8139    mov        ebx,eax
>005A813B    jmp        005A8161
 005A813D    mov        edx,dword ptr ds:[41C390]; TPersistent
 005A8143    mov        eax,ebx
 005A8145    call       TObject.InheritsFrom
 005A814A    test       al,al
>005A814C    je         005A815B
 005A814E    mov        dl,1
 005A8150    mov        eax,ebx
 005A8152    call       TObject.Create
 005A8157    mov        ebx,eax
>005A8159    jmp        005A8161
 005A815B    xor        ebx,ebx
>005A815D    jmp        005A8161
 005A815F    xor        ebx,ebx
 005A8161    xor        eax,eax
 005A8163    pop        edx
 005A8164    pop        ecx
 005A8165    pop        ecx
 005A8166    mov        dword ptr fs:[eax],edx
 005A8169    push       5A817E
 005A816E    lea        eax,[ebp-4]
 005A8171    call       @LStrClr
 005A8176    ret
<005A8177    jmp        @HandleFinally
<005A817C    jmp        005A816E
 005A817E    mov        eax,ebx
 005A8180    pop        esi
 005A8181    pop        ebx
 005A8182    pop        ecx
 005A8183    pop        ebp
 005A8184    ret
*}
//end;

//005A8188
destructor TRaveMethodList.Destroy;
begin
{*
 005A8188    push       ebx
 005A8189    push       esi
 005A818A    push       edi
 005A818B    push       ebp
 005A818C    call       @BeforeDestruction
 005A8191    mov        ebx,edx
 005A8193    mov        edi,eax
 005A8195    mov        ebp,dword ptr [edi+8]; TRaveMethodList.FCount:Integer
 005A8198    dec        ebp
 005A8199    test       ebp,ebp
>005A819B    jl         005A81B2
 005A819D    inc        ebp
 005A819E    xor        esi,esi
 005A81A0    mov        edx,esi
 005A81A2    mov        eax,edi
 005A81A4    call       TList.Get
 005A81A9    call       @FreeMem
 005A81AE    inc        esi
 005A81AF    dec        ebp
<005A81B0    jne        005A81A0
 005A81B2    mov        edx,ebx
 005A81B4    and        dl,0FC
 005A81B7    mov        eax,edi
 005A81B9    call       TList.Destroy
 005A81BE    test       bl,bl
>005A81C0    jle        005A81C9
 005A81C2    mov        eax,edi
 005A81C4    call       @ClassDestroy
 005A81C9    pop        ebp
 005A81CA    pop        edi
 005A81CB    pop        esi
 005A81CC    pop        ebx
 005A81CD    ret
*}
end;

//005A81D0
//procedure sub_005A81D0(?:TRaveMethodList; ?:?);
//begin
{*
 005A81D0    push       ebx
 005A81D1    push       esi
 005A81D2    push       edi
 005A81D3    add        esp,0FFFFFFF8
 005A81D6    mov        esi,edx
 005A81D8    lea        edi,[esp]
 005A81DB    movs       dword ptr [edi],dword ptr [esi]
 005A81DC    movs       dword ptr [edi],dword ptr [esi]
 005A81DD    mov        ebx,eax
 005A81DF    mov        eax,8
 005A81E4    call       @GetMem
 005A81E9    mov        edx,dword ptr [esp]
 005A81EC    mov        dword ptr [eax],edx
 005A81EE    mov        edx,dword ptr [esp+4]
 005A81F2    mov        dword ptr [eax+4],edx
 005A81F5    mov        edx,eax
 005A81F7    mov        eax,ebx
 005A81F9    call       TList.Add
 005A81FE    pop        ecx
 005A81FF    pop        edx
 005A8200    pop        edi
 005A8201    pop        esi
 005A8202    pop        ebx
 005A8203    ret
*}
//end;

//005A8204
//procedure sub_005A8204(?:TRaveMethodList; ?:?);
//begin
{*
 005A8204    push       ebx
 005A8205    push       esi
 005A8206    push       edi
 005A8207    add        esp,0FFFFFFF8
 005A820A    mov        esi,edx
 005A820C    lea        edi,[esp]
 005A820F    movs       dword ptr [edi],dword ptr [esi]
 005A8210    movs       dword ptr [edi],dword ptr [esi]
 005A8211    mov        edi,eax
 005A8213    mov        esi,dword ptr [edi+8]; TRaveMethodList.FCount:Integer
 005A8216    dec        esi
 005A8217    cmp        esi,0
>005A821A    jl         005A824F
 005A821C    mov        edx,esi
 005A821E    mov        eax,edi
 005A8220    call       TList.Get
 005A8225    mov        ebx,eax
 005A8227    mov        eax,dword ptr [esp]
 005A822A    cmp        eax,dword ptr [ebx]
>005A822C    jne        005A8249
 005A822E    mov        eax,dword ptr [esp+4]
 005A8232    cmp        eax,dword ptr [ebx+4]
>005A8235    jne        005A8249
 005A8237    mov        edx,ebx
 005A8239    mov        eax,edi
 005A823B    call       TList.Remove
 005A8240    mov        eax,ebx
 005A8242    call       @FreeMem
>005A8247    jmp        005A824F
 005A8249    dec        esi
 005A824A    cmp        esi,0FFFFFFFF
<005A824D    jne        005A821C
 005A824F    pop        ecx
 005A8250    pop        edx
 005A8251    pop        edi
 005A8252    pop        esi
 005A8253    pop        ebx
 005A8254    ret
*}
//end;

//005A8258
//procedure sub_005A8258(?:TRaveMethodList; ?:?);
//begin
{*
 005A8258    push       ebx
 005A8259    push       esi
 005A825A    push       edi
 005A825B    push       ebp
 005A825C    mov        ebp,edx
 005A825E    mov        edi,eax
 005A8260    mov        ebx,dword ptr [edi+8]; TRaveMethodList.FCount:Integer
 005A8263    dec        ebx
 005A8264    cmp        ebx,0
>005A8267    jl         005A828F
 005A8269    mov        edx,ebx
 005A826B    mov        eax,edi
 005A826D    call       TList.Get
 005A8272    mov        esi,eax
 005A8274    cmp        ebp,dword ptr [esi+4]
>005A8277    jne        005A8289
 005A8279    mov        edx,esi
 005A827B    mov        eax,edi
 005A827D    call       TList.Remove
 005A8282    mov        eax,esi
 005A8284    call       @FreeMem
 005A8289    dec        ebx
 005A828A    cmp        ebx,0FFFFFFFF
<005A828D    jne        005A8269
 005A828F    pop        ebp
 005A8290    pop        edi
 005A8291    pop        esi
 005A8292    pop        ebx
 005A8293    ret
*}
//end;

//005A8294
//procedure sub_005A8294(?:TRaveMethodList; ?:?; ?:?);
//begin
{*
 005A8294    push       ebx
 005A8295    push       esi
 005A8296    push       edi
 005A8297    push       ebp
 005A8298    push       ecx
 005A8299    mov        dword ptr [esp],ecx
 005A829C    mov        ebp,edx
 005A829E    mov        edi,eax
 005A82A0    mov        ebx,dword ptr [edi+8]; TRaveMethodList.FCount:Integer
 005A82A3    dec        ebx
 005A82A4    test       ebx,ebx
>005A82A6    jl         005A82C3
 005A82A8    inc        ebx
 005A82A9    xor        esi,esi
 005A82AB    mov        edx,esi
 005A82AD    mov        eax,edi
 005A82AF    call       TList.Get
 005A82B4    cmp        ebp,dword ptr [eax+4]
>005A82B7    jne        005A82BF
 005A82B9    mov        edx,dword ptr [esp]
 005A82BC    mov        dword ptr [eax+4],edx
 005A82BF    inc        esi
 005A82C0    dec        ebx
<005A82C1    jne        005A82AB
 005A82C3    pop        edx
 005A82C4    pop        ebp
 005A82C5    pop        edi
 005A82C6    pop        esi
 005A82C7    pop        ebx
 005A82C8    ret
*}
//end;

//005A82CC
//function sub_005A82CC(?:TComponent; ?:TRaveProjectItem; ?:?):?;
//begin
{*
 005A82CC    push       ebp
 005A82CD    mov        ebp,esp
 005A82CF    push       ebx
 005A82D0    push       esi
 005A82D1    mov        esi,edx
 005A82D3    mov        ebx,eax
 005A82D5    mov        eax,ebx
 005A82D7    mov        edx,esi
 005A82D9    call       @IsClass
 005A82DE    test       al,al
>005A82E0    je         005A82E6
 005A82E2    mov        eax,ebx
>005A82E4    jmp        005A82FD
 005A82E6    mov        eax,dword ptr [ebx+4]; TComponent.FOwner:TComponent
 005A82E9    test       eax,eax
>005A82EB    je         005A82FB
 005A82ED    mov        edx,dword ptr [ebp+8]
 005A82F0    push       edx
 005A82F1    mov        edx,esi
 005A82F3    call       005A82CC
 005A82F8    pop        ecx
>005A82F9    jmp        005A82FD
 005A82FB    xor        eax,eax
 005A82FD    pop        esi
 005A82FE    pop        ebx
 005A82FF    pop        ebp
 005A8300    ret
*}
//end;

//005A8304
constructor TRaveComponent.Create(AOwner:TComponent);
begin
{*
 005A8304    push       ebp
 005A8305    mov        ebp,esp
 005A8307    push       ebx
 005A8308    push       esi
 005A8309    push       edi
 005A830A    test       dl,dl
>005A830C    je         005A8316
 005A830E    add        esp,0FFFFFFF0
 005A8311    call       @ClassCreate
 005A8316    mov        esi,ecx
 005A8318    mov        ebx,edx
 005A831A    mov        edi,eax
 005A831C    mov        ecx,esi
 005A831E    xor        edx,edx
 005A8320    mov        eax,edi
 005A8322    call       TComponent.Create
 005A8327    mov        eax,esi
 005A8329    mov        edx,dword ptr ds:[5A7428]; TRavePage
 005A832F    call       @IsClass
 005A8334    test       al,al
>005A8336    je         005A833D
 005A8338    mov        dword ptr [edi+40],esi; TRaveComponent.?f40:TComponent
>005A833B    jmp        005A8342
 005A833D    xor        eax,eax
 005A833F    mov        dword ptr [edi+40],eax; TRaveComponent.?f40:TComponent
 005A8342    mov        eax,edi
 005A8344    mov        edx,dword ptr ds:[5A1434]; TRaveProjectManager
 005A834A    call       @IsClass
 005A834F    test       al,al
>005A8351    je         005A8358
 005A8353    mov        dword ptr [edi+48],edi; TRaveComponent.?f48:TRaveComponent
>005A8356    jmp        005A83C9
 005A8358    mov        eax,edi
 005A835A    mov        edx,dword ptr ds:[5A1074]; TRaveReport
 005A8360    call       @IsClass
 005A8365    test       al,al
>005A8367    je         005A838B
 005A8369    push       ebp
 005A836A    mov        edx,dword ptr ds:[5A1434]; TRaveProjectManager
 005A8370    mov        eax,esi
 005A8372    call       005A82CC
 005A8377    pop        ecx
 005A8378    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005A837E    call       @AsClass
 005A8383    mov        dword ptr [edi+48],eax; TRaveComponent.?f48:TRaveComponent
 005A8386    mov        dword ptr [edi+44],edi; TRaveComponent.?f44:TRaveComponent
>005A8389    jmp        005A83C9
 005A838B    test       esi,esi
>005A838D    je         005A83C9
 005A838F    push       ebp
 005A8390    mov        edx,dword ptr ds:[5A1434]; TRaveProjectManager
 005A8396    mov        eax,esi
 005A8398    call       005A82CC
 005A839D    pop        ecx
 005A839E    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005A83A4    call       @AsClass
 005A83A9    mov        dword ptr [edi+48],eax; TRaveComponent.?f48:TRaveComponent
 005A83AC    push       ebp
 005A83AD    mov        edx,dword ptr ds:[5A1074]; TRaveReport
 005A83B3    mov        eax,esi
 005A83B5    call       005A82CC
 005A83BA    pop        ecx
 005A83BB    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005A83C1    call       @AsClass
 005A83C6    mov        dword ptr [edi+44],eax; TRaveComponent.?f44:TRaveComponent
 005A83C9    mov        byte ptr [edi+3C],1; TRaveComponent.?f3C:byte
 005A83CD    mov        byte ptr [edi+3D],1; TRaveComponent.?f3D:byte
 005A83D1    mov        eax,[0061B184]
 005A83D6    cmp        byte ptr [eax],0
>005A83D9    je         005A83E4
 005A83DB    mov        edx,edi
 005A83DD    xor        eax,eax
 005A83DF    call       005A809C
 005A83E4    mov        eax,edi
 005A83E6    test       bl,bl
>005A83E8    je         005A83F9
 005A83EA    call       @AfterConstruction
 005A83EF    pop        dword ptr fs:[0]
 005A83F6    add        esp,0C
 005A83F9    mov        eax,edi
 005A83FB    pop        edi
 005A83FC    pop        esi
 005A83FD    pop        ebx
 005A83FE    pop        ebp
 005A83FF    ret
*}
end;

//005A8400
destructor TRaveComponent.Destroy;
begin
{*
 005A8400    push       ebx
 005A8401    push       esi
 005A8402    call       @BeforeDestruction
 005A8407    mov        ebx,edx
 005A8409    mov        esi,eax
 005A840B    mov        eax,esi
 005A840D    call       005A8458
 005A8412    mov        eax,[0061B184]
 005A8417    cmp        byte ptr [eax],0
>005A841A    je         005A8425
 005A841C    xor        edx,edx
 005A841E    mov        eax,esi
 005A8420    call       005A809C
 005A8425    mov        eax,esi
 005A8427    call       005A8044
 005A842C    mov        eax,esi
 005A842E    mov        edx,dword ptr [eax]
 005A8430    call       dword ptr [edx+3C]; TRaveComponent.sub_005A8564
 005A8433    xor        edx,edx
 005A8435    mov        eax,esi
 005A8437    mov        ecx,dword ptr [eax]
 005A8439    call       dword ptr [ecx+44]; TRaveComponent.sub_005A89FC
 005A843C    mov        edx,ebx
 005A843E    and        dl,0FC
 005A8441    mov        eax,esi
 005A8443    call       TComponent.Destroy
 005A8448    test       bl,bl
>005A844A    jle        005A8453
 005A844C    mov        eax,esi
 005A844E    call       @ClassDestroy
 005A8453    pop        esi
 005A8454    pop        ebx
 005A8455    ret
*}
end;

//005A8458
//procedure sub_005A8458(?:TRaveComponent);
//begin
{*
 005A8458    push       ebp
 005A8459    mov        ebp,esp
 005A845B    add        esp,0FFFFFFF0
 005A845E    push       ebx
 005A845F    push       esi
 005A8460    push       edi
 005A8461    mov        esi,eax
 005A8463    mov        eax,dword ptr [esi]
 005A8465    call       TObject.ClassType
 005A846A    call       GetTypeData
 005A846F    movsx      eax,word ptr [eax+8]
 005A8473    mov        dword ptr [ebp-4],eax
 005A8476    cmp        dword ptr [ebp-4],0
>005A847A    jle        005A8536
 005A8480    cmp        dword ptr [ebp-4],0
>005A8484    jle        005A8536
 005A848A    mov        eax,dword ptr [ebp-4]
 005A848D    shl        eax,2
 005A8490    call       @GetMem
 005A8495    mov        dword ptr [ebp-8],eax
 005A8498    xor        eax,eax
 005A849A    push       ebp
 005A849B    push       5A852F
 005A84A0    push       dword ptr fs:[eax]
 005A84A3    mov        dword ptr fs:[eax],esp
 005A84A6    mov        eax,dword ptr [esi]
 005A84A8    call       TObject.ClassType
 005A84AD    mov        edx,dword ptr [ebp-8]
 005A84B0    call       GetPropInfos
 005A84B5    mov        edi,dword ptr [ebp-4]
 005A84B8    dec        edi
 005A84B9    test       edi,edi
>005A84BB    jl         005A8513
 005A84BD    inc        edi
 005A84BE    mov        dword ptr [ebp-0C],0
 005A84C5    mov        eax,dword ptr [ebp-8]
 005A84C8    mov        edx,dword ptr [ebp-0C]
 005A84CB    mov        ebx,dword ptr [eax+edx*4]
 005A84CE    mov        eax,dword ptr [ebx]
 005A84D0    mov        eax,dword ptr [eax]
 005A84D2    cmp        byte ptr [eax],7
>005A84D5    jne        005A850D
 005A84D7    mov        edx,ebx
 005A84D9    mov        eax,esi
 005A84DB    call       GetOrdProp
 005A84E0    mov        dword ptr [ebp-10],eax
 005A84E3    cmp        dword ptr [ebp-10],0
>005A84E7    je         005A850D
 005A84E9    mov        eax,dword ptr [ebx]
 005A84EB    mov        eax,dword ptr [eax]
 005A84ED    call       GetTypeData
 005A84F2    mov        ebx,eax
 005A84F4    mov        eax,dword ptr [ebx]
 005A84F6    mov        edx,dword ptr ds:[5A7A20]; TRaveEvent
 005A84FC    call       TObject.InheritsFrom
 005A8501    test       al,al
>005A8503    je         005A850D
 005A8505    mov        eax,dword ptr [ebp-10]
 005A8508    call       TObject.Free
 005A850D    inc        dword ptr [ebp-0C]
 005A8510    dec        edi
<005A8511    jne        005A84C5
 005A8513    xor        eax,eax
 005A8515    pop        edx
 005A8516    pop        ecx
 005A8517    pop        ecx
 005A8518    mov        dword ptr fs:[eax],edx
 005A851B    push       5A8536
 005A8520    mov        edx,dword ptr [ebp-4]
 005A8523    shl        edx,2
 005A8526    mov        eax,dword ptr [ebp-8]
 005A8529    call       @FreeMem
 005A852E    ret
<005A852F    jmp        @HandleFinally
<005A8534    jmp        005A8520
 005A8536    pop        edi
 005A8537    pop        esi
 005A8538    pop        ebx
 005A8539    mov        esp,ebp
 005A853B    pop        ebp
 005A853C    ret
*}
//end;

//005A8540
//procedure sub_005A8540(?:TRaveComponent);
//begin
{*
 005A8540    mov        edx,dword ptr [eax+40]; TRaveComponent.?f40:TComponent
 005A8543    test       edx,edx
>005A8545    je         005A8562
 005A8547    cmp        dword ptr [edx+7C],0
>005A854B    je         005A8562
 005A854D    mov        eax,dword ptr [edx+7C]
 005A8550    cmp        eax,dword ptr ds:[6171E4]; gvar_006171E4
>005A8556    jne        005A8562
 005A8558    mov        eax,[006171E4]; gvar_006171E4
 005A855D    mov        edx,dword ptr [eax]
 005A855F    call       dword ptr [edx+7C]
 005A8562    ret
*}
//end;

//005A8564
procedure sub_005A8564;
begin
{*
 005A8564    push       ebx
 005A8565    mov        ebx,eax
>005A8567    jmp        005A857F
 005A8569    mov        eax,ebx
 005A856B    mov        edx,dword ptr [eax]
 005A856D    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A8570    mov        edx,eax
 005A8572    dec        edx
 005A8573    mov        eax,ebx
 005A8575    mov        ecx,dword ptr [eax]
 005A8577    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A857A    call       TObject.Free
 005A857F    mov        eax,ebx
 005A8581    mov        edx,dword ptr [eax]
 005A8583    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A8586    test       eax,eax
<005A8588    jg         005A8569
 005A858A    pop        ebx
 005A858B    ret
*}
end;

//005A858C
procedure sub_005A858C;
begin
{*
 005A858C    push       ebx
 005A858D    push       esi
 005A858E    push       edi
 005A858F    mov        edi,eax
 005A8591    mov        eax,edi
 005A8593    mov        edx,dword ptr [eax]
 005A8595    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A8598    mov        ebx,eax
 005A859A    dec        ebx
 005A859B    test       ebx,ebx
>005A859D    jl         005A85B4
 005A859F    inc        ebx
 005A85A0    xor        esi,esi
 005A85A2    mov        edx,esi
 005A85A4    mov        eax,edi
 005A85A6    mov        ecx,dword ptr [eax]
 005A85A8    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A85AB    mov        edx,dword ptr [eax]
 005A85AD    call       dword ptr [edx+40]
 005A85B0    inc        esi
 005A85B1    dec        ebx
<005A85B2    jne        005A85A2
 005A85B4    pop        edi
 005A85B5    pop        esi
 005A85B6    pop        ebx
 005A85B7    ret
*}
end;

//005A85B8
//procedure sub_005A85B8(?:?; ?:?);
//begin
{*
 005A85B8    push       ebx
 005A85B9    push       esi
 005A85BA    push       edi
 005A85BB    push       ebp
 005A85BC    add        esp,0FFFFFFF8
 005A85BF    mov        dword ptr [esp+4],ecx
 005A85C3    mov        dword ptr [esp],edx
 005A85C6    mov        edi,eax
 005A85C8    mov        eax,edi
 005A85CA    mov        edx,dword ptr [eax]
 005A85CC    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A85CF    mov        ebx,eax
 005A85D1    dec        ebx
 005A85D2    test       ebx,ebx
>005A85D4    jl         005A85F5
 005A85D6    inc        ebx
 005A85D7    xor        esi,esi
 005A85D9    mov        edx,esi
 005A85DB    mov        eax,edi
 005A85DD    mov        ecx,dword ptr [eax]
 005A85DF    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A85E2    mov        ecx,dword ptr [esp+4]
 005A85E6    mov        edx,dword ptr [esp]
 005A85E9    mov        ebp,dword ptr [eax]
 005A85EB    call       dword ptr [ebp+94]
 005A85F1    inc        esi
 005A85F2    dec        ebx
<005A85F3    jne        005A85D9
 005A85F5    pop        ecx
 005A85F6    pop        edx
 005A85F7    pop        ebp
 005A85F8    pop        edi
 005A85F9    pop        esi
 005A85FA    pop        ebx
 005A85FB    ret
*}
//end;

//005A85FC
//procedure TRaveComponent.SetLocked(Self:TRaveComponent; ?:?);
//begin
{*
 005A85FC    cmp        dl,byte ptr [eax+3E]; TRaveComponent.Locked:Boolean
>005A85FF    je         005A8604
 005A8601    mov        byte ptr [eax+3E],dl; TRaveComponent.Locked:Boolean
 005A8604    ret
*}
//end;

//005A8608
//procedure TRaveComponent.SetDevLocked(Self:TRaveComponent; ?:?);
//begin
{*
 005A8608    cmp        dl,byte ptr [eax+31]; TRaveComponent.DevLocked:Boolean
>005A860B    je         005A8610
 005A860D    mov        byte ptr [eax+31],dl; TRaveComponent.DevLocked:Boolean
 005A8610    ret
*}
//end;

//005A8614
procedure sub_005A8614;
begin
{*
 005A8614    push       ebx
 005A8615    push       esi
 005A8616    push       edi
 005A8617    mov        edi,eax
 005A8619    mov        eax,edi
 005A861B    mov        edx,dword ptr [eax]
 005A861D    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A8620    mov        ebx,eax
 005A8622    dec        ebx
 005A8623    test       ebx,ebx
>005A8625    jl         005A863F
 005A8627    inc        ebx
 005A8628    xor        esi,esi
 005A862A    mov        edx,esi
 005A862C    mov        eax,edi
 005A862E    mov        ecx,dword ptr [eax]
 005A8630    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A8633    mov        edx,dword ptr [eax]
 005A8635    call       dword ptr [edx+98]
 005A863B    inc        esi
 005A863C    dec        ebx
<005A863D    jne        005A862A
 005A863F    pop        edi
 005A8640    pop        esi
 005A8641    pop        ebx
 005A8642    ret
*}
end;

//005A8644
procedure sub_005A8644;
begin
{*
 005A8644    push       ebx
 005A8645    push       esi
 005A8646    push       edi
 005A8647    mov        edi,eax
 005A8649    mov        eax,edi
 005A864B    mov        edx,dword ptr [eax]
 005A864D    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A8650    mov        ebx,eax
 005A8652    dec        ebx
 005A8653    test       ebx,ebx
>005A8655    jl         005A866F
 005A8657    inc        ebx
 005A8658    xor        esi,esi
 005A865A    mov        edx,esi
 005A865C    mov        eax,edi
 005A865E    mov        ecx,dword ptr [eax]
 005A8660    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A8663    mov        edx,dword ptr [eax]
 005A8665    call       dword ptr [edx+9C]
 005A866B    inc        esi
 005A866C    dec        ebx
<005A866D    jne        005A865A
 005A866F    pop        edi
 005A8670    pop        esi
 005A8671    pop        ebx
 005A8672    ret
*}
end;

//005A8674
procedure sub_005A8674;
begin
{*
 005A8674    push       ebx
 005A8675    push       esi
 005A8676    push       edi
 005A8677    mov        edi,eax
 005A8679    mov        eax,edi
 005A867B    mov        edx,dword ptr [eax]
 005A867D    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A8680    mov        ebx,eax
 005A8682    dec        ebx
 005A8683    test       ebx,ebx
>005A8685    jl         005A869F
 005A8687    inc        ebx
 005A8688    xor        esi,esi
 005A868A    mov        edx,esi
 005A868C    mov        eax,edi
 005A868E    mov        ecx,dword ptr [eax]
 005A8690    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A8693    mov        edx,dword ptr [eax]
 005A8695    call       dword ptr [edx+0A0]
 005A869B    inc        esi
 005A869C    dec        ebx
<005A869D    jne        005A868A
 005A869F    pop        edi
 005A86A0    pop        esi
 005A86A1    pop        ebx
 005A86A2    ret
*}
end;

//005A86A4
procedure sub_005A86A4;
begin
{*
 005A86A4    push       ebx
 005A86A5    push       esi
 005A86A6    push       edi
 005A86A7    mov        edi,eax
 005A86A9    mov        eax,edi
 005A86AB    mov        edx,dword ptr [eax]
 005A86AD    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A86B0    mov        ebx,eax
 005A86B2    dec        ebx
 005A86B3    test       ebx,ebx
>005A86B5    jl         005A86CF
 005A86B7    inc        ebx
 005A86B8    xor        esi,esi
 005A86BA    mov        edx,esi
 005A86BC    mov        eax,edi
 005A86BE    mov        ecx,dword ptr [eax]
 005A86C0    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A86C3    mov        edx,dword ptr [eax]
 005A86C5    call       dword ptr [edx+0A4]
 005A86CB    inc        esi
 005A86CC    dec        ebx
<005A86CD    jne        005A86BA
 005A86CF    pop        edi
 005A86D0    pop        esi
 005A86D1    pop        ebx
 005A86D2    ret
*}
end;

//005A86D4
//function sub_005A86D4:?;
//begin
{*
 005A86D4    mov        ecx,dword ptr [eax+38]; TRaveEANBarCode.?f38:dword
 005A86D7    test       ecx,ecx
>005A86D9    je         005A86E6
 005A86DB    mov        eax,ecx
 005A86DD    mov        ecx,dword ptr [eax]
 005A86DF    call       dword ptr [ecx+0C0]
 005A86E5    ret
 005A86E6    mov        al,1
 005A86E8    ret
*}
//end;

//005A86EC
procedure sub_005A86EC();
begin
{*
 005A86EC    ret
*}
end;

//005A86F0
//procedure sub_005A86F0(?:TRaveComponent; ?:TRaveMethodList; ?:?);
//begin
{*
 005A86F0    push       ebx
 005A86F1    push       esi
 005A86F2    push       edi
 005A86F3    push       ebp
 005A86F4    add        esp,0FFFFFFF8
 005A86F7    mov        dword ptr [esp+4],ecx
 005A86FB    mov        edi,edx
 005A86FD    mov        dword ptr [esp],eax
 005A8700    test       edi,edi
>005A8702    je         005A872B
 005A8704    mov        ebx,dword ptr [edi+8]; TRaveMethodList.FCount:Integer
 005A8707    dec        ebx
 005A8708    test       ebx,ebx
>005A870A    jl         005A872B
 005A870C    inc        ebx
 005A870D    xor        esi,esi
 005A870F    mov        edx,esi
 005A8711    mov        eax,edi
 005A8713    call       TList.Get
 005A8718    mov        ebp,eax
 005A871A    mov        ecx,dword ptr [esp+4]
 005A871E    mov        edx,dword ptr [esp]
 005A8721    mov        eax,dword ptr [ebp+4]
 005A8724    call       dword ptr [ebp]
 005A8727    inc        esi
 005A8728    dec        ebx
<005A8729    jne        005A870F
 005A872B    pop        ecx
 005A872C    pop        edx
 005A872D    pop        ebp
 005A872E    pop        edi
 005A872F    pop        esi
 005A8730    pop        ebx
 005A8731    ret
*}
//end;

//005A8734
procedure sub_005A8734();
begin
{*
 005A8734    push       ebp
 005A8735    mov        ebp,esp
 005A8737    xor        eax,eax
 005A8739    push       ebp
 005A873A    push       5A8753
 005A873F    push       dword ptr fs:[eax]
 005A8742    mov        dword ptr fs:[eax],esp
 005A8745    xor        eax,eax
 005A8747    pop        edx
 005A8748    pop        ecx
 005A8749    pop        ecx
 005A874A    mov        dword ptr fs:[eax],edx
 005A874D    push       5A875A
 005A8752    ret
<005A8753    jmp        @HandleFinally
<005A8758    jmp        005A8752
 005A875A    pop        ebp
 005A875B    ret        8
*}
end;

//005A8760
procedure sub_005A8760();
begin
{*
 005A8760    push       ebp
 005A8761    mov        ebp,esp
 005A8763    xor        eax,eax
 005A8765    push       ebp
 005A8766    push       5A877F
 005A876B    push       dword ptr fs:[eax]
 005A876E    mov        dword ptr fs:[eax],esp
 005A8771    xor        eax,eax
 005A8773    pop        edx
 005A8774    pop        ecx
 005A8775    pop        ecx
 005A8776    mov        dword ptr fs:[eax],edx
 005A8779    push       5A8786
 005A877E    ret
<005A877F    jmp        @HandleFinally
<005A8784    jmp        005A877E
 005A8786    pop        ebp
 005A8787    ret        8
*}
end;

//005A878C
//function sub_005A878C():?;
//begin
{*
 005A878C    push       ebp
 005A878D    mov        ebp,esp
 005A878F    push       ebx
 005A8790    xor        eax,eax
 005A8792    push       ebp
 005A8793    push       5A87AE
 005A8798    push       dword ptr fs:[eax]
 005A879B    mov        dword ptr fs:[eax],esp
 005A879E    xor        ebx,ebx
 005A87A0    xor        eax,eax
 005A87A2    pop        edx
 005A87A3    pop        ecx
 005A87A4    pop        ecx
 005A87A5    mov        dword ptr fs:[eax],edx
 005A87A8    push       5A87B5
 005A87AD    ret
<005A87AE    jmp        @HandleFinally
<005A87B3    jmp        005A87AD
 005A87B5    mov        eax,ebx
 005A87B7    pop        ebx
 005A87B8    pop        ebp
 005A87B9    ret
*}
//end;

//005A87BC
procedure sub_005A87BC();
begin
{*
 005A87BC    ret
*}
end;

//005A87C0
//function sub_005A87C0:?;
//begin
{*
 005A87C0    push       ebx
 005A87C1    push       esi
 005A87C2    push       edi
 005A87C3    push       ecx
 005A87C4    mov        edi,eax
 005A87C6    mov        byte ptr [esp],1
 005A87CA    mov        eax,edi
 005A87CC    mov        edx,dword ptr [eax]
 005A87CE    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A87D1    mov        ebx,eax
 005A87D3    dec        ebx
 005A87D4    test       ebx,ebx
>005A87D6    jl         005A87F7
 005A87D8    inc        ebx
 005A87D9    xor        esi,esi
 005A87DB    mov        edx,esi
 005A87DD    mov        eax,edi
 005A87DF    mov        ecx,dword ptr [eax]
 005A87E1    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A87E4    mov        edx,dword ptr [eax]
 005A87E6    call       dword ptr [edx+70]
 005A87E9    test       al,al
>005A87EB    jne        005A87F3
 005A87ED    mov        byte ptr [esp],0
>005A87F1    jmp        005A87F7
 005A87F3    inc        esi
 005A87F4    dec        ebx
<005A87F5    jne        005A87DB
 005A87F7    mov        al,byte ptr [esp]
 005A87FA    pop        edx
 005A87FB    pop        edi
 005A87FC    pop        esi
 005A87FD    pop        ebx
 005A87FE    ret
*}
//end;

//005A8800
procedure sub_005A8800;
begin
{*
 005A8800    push       ebx
 005A8801    push       esi
 005A8802    push       edi
 005A8803    mov        edi,eax
 005A8805    mov        eax,dword ptr [edi+4C]; TRaveComponent.OnBeforeReport:TRaveSimpleEvent
 005A8808    test       eax,eax
>005A880A    je         005A8811
 005A880C    mov        edx,dword ptr [eax]
 005A880E    call       dword ptr [edx+0C]; TRaveSimpleEvent.sub_005ADE6C
 005A8811    mov        eax,edi
 005A8813    mov        edx,dword ptr [eax]
 005A8815    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A8818    mov        ebx,eax
 005A881A    dec        ebx
 005A881B    test       ebx,ebx
>005A881D    jl         005A8834
 005A881F    inc        ebx
 005A8820    xor        esi,esi
 005A8822    mov        edx,esi
 005A8824    mov        eax,edi
 005A8826    mov        ecx,dword ptr [eax]
 005A8828    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A882B    mov        edx,dword ptr [eax]
 005A882D    call       dword ptr [edx+74]
 005A8830    inc        esi
 005A8831    dec        ebx
<005A8832    jne        005A8822
 005A8834    pop        edi
 005A8835    pop        esi
 005A8836    pop        ebx
 005A8837    ret
*}
end;

//005A8838
procedure sub_005A8838;
begin
{*
 005A8838    push       ebx
 005A8839    push       esi
 005A883A    push       edi
 005A883B    mov        edi,eax
 005A883D    mov        eax,edi
 005A883F    mov        edx,dword ptr [eax]
 005A8841    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A8844    mov        ebx,eax
 005A8846    dec        ebx
 005A8847    test       ebx,ebx
>005A8849    jl         005A8860
 005A884B    inc        ebx
 005A884C    xor        esi,esi
 005A884E    mov        edx,esi
 005A8850    mov        eax,edi
 005A8852    mov        ecx,dword ptr [eax]
 005A8854    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A8857    mov        edx,dword ptr [eax]
 005A8859    call       dword ptr [edx+78]
 005A885C    inc        esi
 005A885D    dec        ebx
<005A885E    jne        005A884E
 005A8860    mov        eax,dword ptr [edi+50]; TRaveComponent.OnAfterReport:TRaveSimpleEvent
 005A8863    test       eax,eax
>005A8865    je         005A886C
 005A8867    mov        edx,dword ptr [eax]
 005A8869    call       dword ptr [edx+0C]; TRaveSimpleEvent.sub_005ADE6C
 005A886C    pop        edi
 005A886D    pop        esi
 005A886E    pop        ebx
 005A886F    ret
*}
end;

//005A8870
procedure sub_005A8870;
begin
{*
 005A8870    mov        edx,dword ptr [eax+54]; TRaveEANBarCode.OnBeforePrint:TRaveSimpleEvent
 005A8873    test       edx,edx
>005A8875    je         005A887E
 005A8877    mov        eax,edx
 005A8879    mov        edx,dword ptr [eax]
 005A887B    call       dword ptr [edx+0C]; TRaveSimpleEvent.sub_005ADE6C
 005A887E    ret
*}
end;

//005A8880
procedure sub_005A8880;
begin
{*
 005A8880    mov        edx,dword ptr [eax+58]; TRaveEANBarCode.OnAfterPrint:TRaveSimpleEvent
 005A8883    test       edx,edx
>005A8885    je         005A888E
 005A8887    mov        eax,edx
 005A8889    mov        edx,dword ptr [eax]
 005A888B    call       dword ptr [edx+0C]; TRaveSimpleEvent.sub_005ADE6C
 005A888E    ret
*}
end;

//005A8890
procedure sub_005A8890;
begin
{*
 005A8890    push       ebx
 005A8891    push       esi
 005A8892    push       edi
 005A8893    mov        edi,eax
 005A8895    mov        eax,edi
 005A8897    mov        edx,dword ptr [eax]
 005A8899    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A889C    mov        ebx,eax
 005A889E    dec        ebx
 005A889F    test       ebx,ebx
>005A88A1    jl         005A88BB
 005A88A3    inc        ebx
 005A88A4    xor        esi,esi
 005A88A6    mov        edx,esi
 005A88A8    mov        eax,edi
 005A88AA    mov        ecx,dword ptr [eax]
 005A88AC    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A88AF    mov        edx,dword ptr [eax]
 005A88B1    call       dword ptr [edx+88]
 005A88B7    inc        esi
 005A88B8    dec        ebx
<005A88B9    jne        005A88A6
 005A88BB    pop        edi
 005A88BC    pop        esi
 005A88BD    pop        ebx
 005A88BE    ret
*}
end;

//005A88C0
procedure sub_005A88C0;
begin
{*
 005A88C0    push       ebx
 005A88C1    push       esi
 005A88C2    push       edi
 005A88C3    mov        edi,eax
 005A88C5    mov        eax,edi
 005A88C7    mov        edx,dword ptr [eax]
 005A88C9    call       dword ptr [edx+54]; TRaveComponent.sub_005A8B00
 005A88CC    mov        ebx,eax
 005A88CE    dec        ebx
 005A88CF    test       ebx,ebx
>005A88D1    jl         005A88EB
 005A88D3    inc        ebx
 005A88D4    xor        esi,esi
 005A88D6    mov        edx,esi
 005A88D8    mov        eax,edi
 005A88DA    mov        ecx,dword ptr [eax]
 005A88DC    call       dword ptr [ecx+50]; TRaveComponent.sub_005A8B3C
 005A88DF    mov        edx,dword ptr [eax]
 005A88E1    call       dword ptr [edx+8C]
 005A88E7    inc        esi
 005A88E8    dec        ebx
<005A88E9    jne        005A88D6
 005A88EB    pop        edi
 005A88EC    pop        esi
 005A88ED    pop        ebx
 005A88EE    ret
*}
end;

//005A88F0
procedure TRaveComponent.SetName(NewName:TComponentName);
begin
{*
 005A88F0    push       ebp
 005A88F1    mov        ebp,esp
 005A88F3    push       0
 005A88F5    push       0
 005A88F7    push       ebx
 005A88F8    push       esi
 005A88F9    mov        esi,edx
 005A88FB    mov        ebx,eax
 005A88FD    xor        eax,eax
 005A88FF    push       ebp
 005A8900    push       5A898C
 005A8905    push       dword ptr fs:[eax]
 005A8908    mov        dword ptr fs:[eax],esp
 005A890B    mov        eax,[0061B184]
 005A8910    cmp        byte ptr [eax],0
>005A8913    je         005A8919
 005A8915    test       esi,esi
>005A8917    je         005A8971
 005A8919    push       5A89A4; '`'
 005A891E    lea        edx,[ebp-8]
 005A8921    mov        eax,esi
 005A8923    call       UpperCase
 005A8928    push       dword ptr [ebp-8]
 005A892B    push       5A89A4; '`'
 005A8930    lea        eax,[ebp-4]
 005A8933    mov        edx,3
 005A8938    call       @LStrCatN
 005A893D    mov        eax,dword ptr [ebp-4]
 005A8940    mov        edx,5A89B0; '`IMPORT`CONST`TYPE`VAR`FUNCTION`IMPLEMENTATION`END`CREATION`DESTRUCTION`'
 005A8945    call       @LStrPos
 005A894A    test       eax,eax
>005A894C    jg         005A8971
 005A894E    mov        edx,esi
 005A8950    mov        eax,ebx
 005A8952    call       TComponent.SetName
 005A8957    cmp        dword ptr ds:[6171A8],0
>005A895E    je         005A896A
 005A8960    mov        edx,esi
 005A8962    mov        eax,ebx
 005A8964    call       dword ptr ds:[6171A8]
 005A896A    mov        eax,ebx
 005A896C    call       005A8540
 005A8971    xor        eax,eax
 005A8973    pop        edx
 005A8974    pop        ecx
 005A8975    pop        ecx
 005A8976    mov        dword ptr fs:[eax],edx
 005A8979    push       5A8993
 005A897E    lea        eax,[ebp-8]
 005A8981    mov        edx,2
 005A8986    call       @LStrArrayClr
 005A898B    ret
<005A898C    jmp        @HandleFinally
<005A8991    jmp        005A897E
 005A8993    pop        esi
 005A8994    pop        ebx
 005A8995    pop        ecx
 005A8996    pop        ecx
 005A8997    pop        ebp
 005A8998    ret
*}
end;

//005A89FC
//procedure sub_005A89FC(?:?);
//begin
{*
 005A89FC    push       ebx
 005A89FD    push       esi
 005A89FE    push       edi
 005A89FF    mov        edi,edx
 005A8A01    mov        ebx,eax
 005A8A03    mov        esi,dword ptr [ebx+38]; TRaveEANBarCode.?f38:dword
 005A8A06    test       esi,esi
>005A8A08    je         005A8A13
 005A8A0A    mov        edx,ebx
 005A8A0C    mov        eax,esi
 005A8A0E    mov        ecx,dword ptr [eax]
 005A8A10    call       dword ptr [ecx+4C]
 005A8A13    mov        esi,edi
 005A8A15    mov        dword ptr [ebx+38],esi; TRaveEANBarCode.?f38:dword
 005A8A18    test       esi,esi
>005A8A1A    je         005A8A25
 005A8A1C    mov        edx,ebx
 005A8A1E    mov        eax,esi
 005A8A20    mov        ecx,dword ptr [eax]
 005A8A22    call       dword ptr [ecx+48]
 005A8A25    pop        edi
 005A8A26    pop        esi
 005A8A27    pop        ebx
 005A8A28    ret
*}
//end;

//005A8A2C
procedure sub_005A8A2C;
begin
{*
 005A8A2C    push       ebp
 005A8A2D    mov        ebp,esp
 005A8A2F    add        esp,0FFFFFEF0
 005A8A35    push       ebx
 005A8A36    xor        ecx,ecx
 005A8A38    mov        dword ptr [ebp-4],ecx
 005A8A3B    mov        dword ptr [ebp-8],ecx
 005A8A3E    mov        ebx,eax
 005A8A40    xor        eax,eax
 005A8A42    push       ebp
 005A8A43    push       5A8ABA
 005A8A48    push       dword ptr fs:[eax]
 005A8A4B    mov        dword ptr fs:[eax],esp
 005A8A4E    lea        eax,[ebp-8]
 005A8A51    push       eax
 005A8A52    lea        edx,[ebp-110]
 005A8A58    mov        eax,dword ptr [ebx]
 005A8A5A    call       TObject.ClassName
 005A8A5F    lea        eax,[ebp-110]
 005A8A65    mov        dword ptr [ebp-10],eax
 005A8A68    mov        byte ptr [ebp-0C],4
 005A8A6C    lea        edx,[ebp-10]
 005A8A6F    xor        ecx,ecx
 005A8A71    mov        eax,5A8AD0; 'Class cannot accept children classes: \"%s\"'
 005A8A76    call       Format
 005A8A7B    mov        eax,dword ptr [ebp-8]
 005A8A7E    mov        ebx,dword ptr ds:[61B830]
 005A8A84    mov        ebx,dword ptr [ebx]
 005A8A86    lea        edx,[ebp-4]
 005A8A89    call       ebx
 005A8A8B    mov        ecx,dword ptr [ebp-4]
 005A8A8E    mov        dl,1
 005A8A90    mov        eax,[00599380]; ERaveClass
 005A8A95    call       Exception.Create; ERaveClass.Create
 005A8A9A    call       @RaiseExcept
 005A8A9F    xor        eax,eax
 005A8AA1    pop        edx
 005A8AA2    pop        ecx
 005A8AA3    pop        ecx
 005A8AA4    mov        dword ptr fs:[eax],edx
 005A8AA7    push       5A8AC1
 005A8AAC    lea        eax,[ebp-8]
 005A8AAF    mov        edx,2
 005A8AB4    call       @LStrArrayClr
 005A8AB9    ret
<005A8ABA    jmp        @HandleFinally
<005A8ABF    jmp        005A8AAC
 005A8AC1    pop        ebx
 005A8AC2    mov        esp,ebp
 005A8AC4    pop        ebp
 005A8AC5    ret
*}
end;

//005A8AFC
procedure sub_005A8AFC();
begin
{*
 005A8AFC    ret
*}
end;

//005A8B00
//function sub_005A8B00():?;
//begin
{*
 005A8B00    xor        eax,eax
 005A8B02    ret
*}
//end;

//005A8B04
//function sub_005A8B04:?;
//begin
{*
 005A8B04    push       ebx
 005A8B05    push       esi
 005A8B06    push       edi
 005A8B07    push       ebp
 005A8B08    mov        esi,eax
 005A8B0A    xor        ebp,ebp
 005A8B0C    mov        eax,dword ptr [esi+38]; TRaveEANBarCode.?f38:dword
 005A8B0F    mov        edx,dword ptr [eax]
 005A8B11    call       dword ptr [edx+54]
 005A8B14    mov        edi,eax
 005A8B16    dec        edi
 005A8B17    test       edi,edi
>005A8B19    jl         005A8B34
 005A8B1B    inc        edi
 005A8B1C    xor        ebx,ebx
 005A8B1E    mov        edx,ebx
 005A8B20    mov        eax,dword ptr [esi+38]; TRaveEANBarCode.?f38:dword
 005A8B23    mov        ecx,dword ptr [eax]
 005A8B25    call       dword ptr [ecx+50]
 005A8B28    cmp        esi,eax
>005A8B2A    jne        005A8B30
 005A8B2C    mov        ebp,ebx
>005A8B2E    jmp        005A8B34
 005A8B30    inc        ebx
 005A8B31    dec        edi
<005A8B32    jne        005A8B1E
 005A8B34    mov        eax,ebp
 005A8B36    pop        ebp
 005A8B37    pop        edi
 005A8B38    pop        esi
 005A8B39    pop        ebx
 005A8B3A    ret
*}
//end;

//005A8B3C
//function sub_005A8B3C():?;
//begin
{*
 005A8B3C    xor        eax,eax
 005A8B3E    ret
*}
//end;

//005A8B40
procedure sub_005A8B40();
begin
{*
 005A8B40    ret
*}
end;

//005A8BC4
//function sub_005A8BC4:?;
//begin
{*
 005A8BC4    mov        al,byte ptr [eax+3C]; TRaveDriverDataView.?f3C:byte
 005A8BC7    ret
*}
//end;

//005A8BC8
//procedure sub_005A8BC8(?:?);
//begin
{*
 005A8BC8    push       ebx
 005A8BC9    push       esi
 005A8BCA    push       edi
 005A8BCB    push       ecx
 005A8BCC    mov        dword ptr [esp],edx
 005A8BCF    mov        ebx,eax
 005A8BD1    mov        eax,ebx
 005A8BD3    mov        edx,dword ptr [eax]
 005A8BD5    call       dword ptr [edx+0B8]; TRaveDriverDataView.sub_005A8BC4
 005A8BDB    test       al,al
>005A8BDD    je         005A8C26
 005A8BDF    mov        eax,ebx
 005A8BE1    mov        edx,dword ptr [eax]
 005A8BE3    call       dword ptr [edx+7C]; TRaveDriverDataView.sub_005A8870
 005A8BE6    mov        edx,dword ptr [esp]
 005A8BE9    mov        eax,ebx
 005A8BEB    mov        ecx,dword ptr [eax]
 005A8BED    call       dword ptr [ecx+80]; TRaveDriverDataView.sub_005A8C2C
 005A8BF3    mov        eax,ebx
 005A8BF5    mov        edx,dword ptr [eax]
 005A8BF7    call       dword ptr [edx+84]; TRaveDriverDataView.sub_005A8880
 005A8BFD    mov        eax,ebx
 005A8BFF    mov        edx,dword ptr [eax]
 005A8C01    call       dword ptr [edx+54]; TRaveDriverDataView.sub_005AB0D4
 005A8C04    mov        esi,eax
 005A8C06    dec        esi
 005A8C07    test       esi,esi
>005A8C09    jl         005A8C26
 005A8C0B    inc        esi
 005A8C0C    xor        edi,edi
 005A8C0E    mov        edx,edi
 005A8C10    mov        eax,ebx
 005A8C12    mov        ecx,dword ptr [eax]
 005A8C14    call       dword ptr [ecx+50]; TRaveDriverDataView.sub_005AB0E4
 005A8C17    mov        edx,dword ptr [esp]
 005A8C1A    mov        ecx,dword ptr [eax]
 005A8C1C    call       dword ptr [ecx+0BC]
 005A8C22    inc        edi
 005A8C23    dec        esi
<005A8C24    jne        005A8C0E
 005A8C26    pop        edx
 005A8C27    pop        edi
 005A8C28    pop        esi
 005A8C29    pop        ebx
 005A8C2A    ret
*}
//end;

//005A8C2C
procedure sub_005A8C2C();
begin
{*
 005A8C2C    ret
*}
end;

//005A8C30
procedure TRaveComponent.GetParentComponent;
begin
{*
 005A8C30    mov        eax,dword ptr [eax+38]; TRaveComponent.?f38:dword
 005A8C33    ret
*}
end;

//005A8C34
//procedure TRaveComponent.SetParentComponent(?:?; Value:TComponent);
//begin
{*
 005A8C34    push       ebx
 005A8C35    push       esi
 005A8C36    mov        esi,edx
 005A8C38    mov        ebx,eax
 005A8C3A    mov        eax,esi
 005A8C3C    mov        edx,dword ptr ds:[5A6884]; TRaveComponent
 005A8C42    call       @IsClass
 005A8C47    test       al,al
>005A8C49    je         005A8C61
 005A8C4B    mov        eax,esi
 005A8C4D    mov        edx,dword ptr ds:[5A6884]; TRaveComponent
 005A8C53    call       @AsClass
 005A8C58    mov        edx,eax
 005A8C5A    mov        eax,ebx
 005A8C5C    mov        ecx,dword ptr [eax]
 005A8C5E    call       dword ptr [ecx+44]; TRaveComponent.sub_005A89FC
 005A8C61    pop        esi
 005A8C62    pop        ebx
 005A8C63    ret
*}
//end;

//005A8C88
procedure sub_005A8C88;
begin
{*
 005A8C88    mov        byte ptr [eax+3C],1; TRaveEANBarCode.?f3C:byte
 005A8C8C    ret
*}
end;

//005A8C90
procedure sub_005A8C90;
begin
{*
 005A8C90    mov        byte ptr [eax+3C],0; TRaveEANBarCode.?f3C:byte
 005A8C94    ret
*}
end;

//005A8CBC
procedure sub_005A8CBC;
begin
{*
 005A8CBC    mov        byte ptr [eax+3D],1; TRaveEANBarCode.?f3D:byte
 005A8CC0    ret
*}
end;

//005A8CC4
procedure sub_005A8CC4;
begin
{*
 005A8CC4    mov        byte ptr [eax+3D],0; TRaveEANBarCode.?f3D:byte
 005A8CC8    ret
*}
end;

//005A8CCC
procedure sub_005A8CCC();
begin
{*
 005A8CCC    add        esp,0FFFFFFF8
 005A8CCF    xor        eax,eax
 005A8CD1    mov        dword ptr [esp],eax
 005A8CD4    mov        dword ptr [esp+4],eax
 005A8CD8    fld        qword ptr [esp]
 005A8CDB    pop        ecx
 005A8CDC    pop        edx
 005A8CDD    ret
*}
end;

//005A8CE0
procedure sub_005A8CE0();
begin
{*
 005A8CE0    add        esp,0FFFFFFF8
 005A8CE3    xor        eax,eax
 005A8CE5    mov        dword ptr [esp],eax
 005A8CE8    mov        dword ptr [esp+4],eax
 005A8CEC    fld        qword ptr [esp]
 005A8CEF    pop        ecx
 005A8CF0    pop        edx
 005A8CF1    ret
*}
end;

//005A8CF4
procedure sub_005A8CF4();
begin
{*
 005A8CF4    add        esp,0FFFFFFF8
 005A8CF7    xor        eax,eax
 005A8CF9    mov        dword ptr [esp],eax
 005A8CFC    mov        dword ptr [esp+4],eax
 005A8D00    fld        qword ptr [esp]
 005A8D03    pop        ecx
 005A8D04    pop        edx
 005A8D05    ret
*}
end;

//005A8D08
procedure sub_005A8D08();
begin
{*
 005A8D08    add        esp,0FFFFFFF8
 005A8D0B    xor        eax,eax
 005A8D0D    mov        dword ptr [esp],eax
 005A8D10    mov        dword ptr [esp+4],eax
 005A8D14    fld        qword ptr [esp]
 005A8D17    pop        ecx
 005A8D18    pop        edx
 005A8D19    ret
*}
end;

//005A8D1C
function sub_005A8D1C:Boolean;
begin
{*
 005A8D1C    test       byte ptr [eax+30],1; TRaveEANBarCode.?f30:byte
 005A8D20    setne      al
 005A8D23    ret
*}
end;

//005A8D24
//function sub_005A8D24():?;
//begin
{*
 005A8D24    xor        eax,eax
 005A8D26    ret
*}
//end;

//005A8D28
//function sub_005A8D28():?;
//begin
{*
 005A8D28    mov        al,1
 005A8D2A    ret
*}
//end;

//005A8DAC
constructor TRaveControl.Create(AOwner:TComponent);
begin
{*
 005A8DAC    push       ebx
 005A8DAD    push       esi
 005A8DAE    test       dl,dl
>005A8DB0    je         005A8DBA
 005A8DB2    add        esp,0FFFFFFF0
 005A8DB5    call       @ClassCreate
 005A8DBA    mov        ebx,edx
 005A8DBC    mov        esi,eax
 005A8DBE    xor        edx,edx
 005A8DC0    mov        eax,esi
 005A8DC2    call       TRaveComponent.Create
 005A8DC7    mov        word ptr [esi+78],0; TRaveControl.?f78:word
 005A8DCD    mov        eax,esi
 005A8DCF    test       bl,bl
>005A8DD1    je         005A8DE2
 005A8DD3    call       @AfterConstruction
 005A8DD8    pop        dword ptr fs:[0]
 005A8DDF    add        esp,0C
 005A8DE2    mov        eax,esi
 005A8DE4    pop        esi
 005A8DE5    pop        ebx
 005A8DE6    ret
*}
end;

//005A8DE8
destructor TRaveControl.Destroy;
begin
{*
 005A8DE8    push       ebx
 005A8DE9    push       esi
 005A8DEA    call       @BeforeDestruction
 005A8DEF    mov        ebx,edx
 005A8DF1    mov        esi,eax
 005A8DF3    cmp        dword ptr [esi+60],0; TRaveControl.?f60:TList
>005A8DF7    je         005A8E01
 005A8DF9    lea        eax,[esi+60]; TRaveControl.?f60:TList
 005A8DFC    call       FreeAndNil
 005A8E01    mov        edx,ebx
 005A8E03    and        dl,0FC
 005A8E06    mov        eax,esi
 005A8E08    call       TRaveComponent.Destroy
 005A8E0D    test       bl,bl
>005A8E0F    jle        005A8E18
 005A8E11    mov        eax,esi
 005A8E13    call       @ClassDestroy
 005A8E18    pop        esi
 005A8E19    pop        ebx
 005A8E1A    ret
*}
end;

//005A8E1C
//procedure sub_005A8E1C(?:?; ?:?);
//begin
{*
 005A8E1C    push       ebx
 005A8E1D    push       esi
 005A8E1E    push       edi
 005A8E1F    mov        edi,ecx
 005A8E21    mov        esi,edx
 005A8E23    mov        ebx,eax
 005A8E25    mov        ecx,edi
 005A8E27    mov        edx,esi
 005A8E29    mov        eax,ebx
 005A8E2B    call       005A85B8
 005A8E30    mov        eax,dword ptr [ebx+5C]; TRaveControl.Mirror:TRaveControl
 005A8E33    test       eax,eax
>005A8E35    je         005A8E51
 005A8E37    cmp        esi,eax
>005A8E39    jne        005A8E51
 005A8E3B    mov        eax,edi
 005A8E3D    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005A8E43    call       @AsClass
 005A8E48    mov        edx,eax
 005A8E4A    mov        eax,ebx
 005A8E4C    call       TRaveControl.SetMirror
 005A8E51    test       esi,esi
>005A8E53    je         005A8E7B
 005A8E55    mov        eax,esi
 005A8E57    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005A8E5D    call       @IsClass
 005A8E62    test       al,al
>005A8E64    je         005A8E7B
 005A8E66    cmp        ebx,dword ptr [esi+5C]
>005A8E69    jne        005A8E7B
 005A8E6B    test       edi,edi
>005A8E6D    jne        005A8E7B
 005A8E6F    mov        edx,esi
 005A8E71    mov        eax,ebx
 005A8E73    mov        ecx,dword ptr [eax]
 005A8E75    call       dword ptr [ecx+0D8]; TRaveControl.sub_005A8ED8
 005A8E7B    pop        edi
 005A8E7C    pop        esi
 005A8E7D    pop        ebx
 005A8E7E    ret
*}
//end;

//005A8E80
//function sub_005A8E80:?;
//begin
{*
 005A8E80    push       ebx
 005A8E81    mov        ebx,eax
 005A8E83    mov        eax,ebx
 005A8E85    call       005A87C0
 005A8E8A    test       al,al
>005A8E8C    je         005A8E9C
 005A8E8E    cmp        dword ptr [ebx+5C],0; TRaveControl.Mirror:TRaveControl
>005A8E92    je         005A8E9C
 005A8E94    mov        eax,dword ptr [ebx+5C]; TRaveControl.Mirror:TRaveControl
 005A8E97    mov        edx,dword ptr [eax]
 005A8E99    call       dword ptr [edx+70]; TRaveControl.sub_005A8E80
 005A8E9C    pop        ebx
 005A8E9D    ret
*}
//end;

//005A8EA0
//procedure sub_005A8EA0(?:?);
//begin
{*
 005A8EA0    push       ebx
 005A8EA1    push       esi
 005A8EA2    mov        esi,edx
 005A8EA4    mov        ebx,eax
 005A8EA6    cmp        dword ptr [ebx+60],0; TRaveEANBarCode.?f60:TList
>005A8EAA    jne        005A8EBB
 005A8EAC    mov        dl,1
 005A8EAE    mov        eax,[0041C260]; TList
 005A8EB3    call       TObject.Create; TList.Create
 005A8EB8    mov        dword ptr [ebx+60],eax; TRaveEANBarCode.?f60:TList
 005A8EBB    mov        edx,esi
 005A8EBD    mov        eax,dword ptr [ebx+60]; TRaveEANBarCode.?f60:TList
 005A8EC0    call       TList.Add
 005A8EC5    or         byte ptr [esi+30],8
 005A8EC9    mov        edx,esi
 005A8ECB    mov        eax,ebx
 005A8ECD    mov        ecx,dword ptr [eax]
 005A8ECF    call       dword ptr [ecx]; TRaveControl.AssignTo
 005A8ED1    and        byte ptr [esi+30],0F7
 005A8ED5    pop        esi
 005A8ED6    pop        ebx
 005A8ED7    ret
*}
//end;

//005A8ED8
procedure sub_005A8ED8;
begin
{*
 005A8ED8    mov        ecx,dword ptr [eax+60]; TRaveEANBarCode.?f60:TList
 005A8EDB    test       ecx,ecx
>005A8EDD    je         005A8EE6
 005A8EDF    mov        eax,ecx
 005A8EE1    call       TList.Remove
 005A8EE6    ret
*}
end;

//005A8EE8
//procedure sub_005A8EE8(?:TRaveControl);
//begin
{*
 005A8EE8    push       ebx
 005A8EE9    push       esi
 005A8EEA    push       edi
 005A8EEB    mov        ebx,eax
 005A8EED    mov        eax,dword ptr [ebx+60]; TRaveControl.?f60:TList
 005A8EF0    test       eax,eax
>005A8EF2    je         005A8F40
 005A8EF4    mov        edi,dword ptr [eax+8]; TList.FCount:Integer
 005A8EF7    dec        edi
 005A8EF8    test       edi,edi
>005A8EFA    jl         005A8F40
 005A8EFC    inc        edi
 005A8EFD    xor        esi,esi
 005A8EFF    mov        edx,esi
 005A8F01    mov        eax,dword ptr [ebx+60]; TRaveControl.?f60:TList
 005A8F04    call       TList.Get
 005A8F09    or         byte ptr [eax+30],8
 005A8F0D    mov        edx,esi
 005A8F0F    mov        eax,dword ptr [ebx+60]; TRaveControl.?f60:TList
 005A8F12    call       TList.Get
 005A8F17    mov        edx,eax
 005A8F19    mov        eax,ebx
 005A8F1B    mov        ecx,dword ptr [eax]
 005A8F1D    call       dword ptr [ecx]; TRaveControl.AssignTo
 005A8F1F    mov        edx,esi
 005A8F21    mov        eax,dword ptr [ebx+60]; TRaveControl.?f60:TList
 005A8F24    call       TList.Get
 005A8F29    call       005A8540
 005A8F2E    mov        edx,esi
 005A8F30    mov        eax,dword ptr [ebx+60]; TRaveControl.?f60:TList
 005A8F33    call       TList.Get
 005A8F38    and        byte ptr [eax+30],0F7
 005A8F3C    inc        esi
 005A8F3D    dec        edi
<005A8F3E    jne        005A8EFF
 005A8F40    pop        edi
 005A8F41    pop        esi
 005A8F42    pop        ebx
 005A8F43    ret
*}
//end;

//005A8F44
procedure TRaveControl.AssignTo(Dest:TPersistent);
begin
{*
 005A8F44    push       ebp
 005A8F45    mov        ebp,esp
 005A8F47    mov        ecx,9
 005A8F4C    push       0
 005A8F4E    push       0
 005A8F50    dec        ecx
<005A8F51    jne        005A8F4C
 005A8F53    push       ebx
 005A8F54    push       esi
 005A8F55    push       edi
 005A8F56    mov        dword ptr [ebp-4],edx
 005A8F59    mov        esi,eax
 005A8F5B    xor        eax,eax
 005A8F5D    push       ebp
 005A8F5E    push       5A9244
 005A8F63    push       dword ptr fs:[eax]
 005A8F66    mov        dword ptr fs:[eax],esp
 005A8F69    mov        eax,esi
 005A8F6B    call       TObject.ClassInfo
 005A8F70    mov        edx,eax
 005A8F72    mov        eax,dword ptr [ebp-4]
 005A8F75    call       @IsClass
 005A8F7A    test       al,al
>005A8F7C    je         005A8F82
 005A8F7E    mov        ebx,esi
>005A8F80    jmp        005A8FAB
 005A8F82    mov        eax,dword ptr [ebp-4]
 005A8F85    call       TObject.ClassInfo
 005A8F8A    mov        edx,eax
 005A8F8C    mov        eax,esi
 005A8F8E    call       @IsClass
 005A8F93    test       al,al
>005A8F95    je         005A8F9C
 005A8F97    mov        ebx,dword ptr [ebp-4]
>005A8F9A    jmp        005A8FAB
 005A8F9C    mov        edx,dword ptr [ebp-4]
 005A8F9F    mov        eax,esi
 005A8FA1    call       TPersistent.AssignTo
>005A8FA6    jmp        005A9219
 005A8FAB    mov        eax,dword ptr [ebx]
 005A8FAD    call       TObject.ClassType
 005A8FB2    call       GetTypeData
 005A8FB7    movsx      eax,word ptr [eax+8]
 005A8FBB    mov        dword ptr [ebp-8],eax
 005A8FBE    cmp        dword ptr [ebp-8],0
>005A8FC2    jle        005A9219
 005A8FC8    mov        eax,dword ptr [ebp-8]
 005A8FCB    shl        eax,2
 005A8FCE    call       @GetMem
 005A8FD3    mov        dword ptr [ebp-0C],eax
 005A8FD6    xor        eax,eax
 005A8FD8    push       ebp
 005A8FD9    push       5A9212
 005A8FDE    push       dword ptr fs:[eax]
 005A8FE1    mov        dword ptr fs:[eax],esp
 005A8FE4    mov        eax,dword ptr [ebx]
 005A8FE6    call       TObject.ClassType
 005A8FEB    mov        edx,dword ptr [ebp-0C]
 005A8FEE    call       GetPropInfos
 005A8FF3    mov        edi,dword ptr [ebp-8]
 005A8FF6    dec        edi
 005A8FF7    test       edi,edi
>005A8FF9    jl         005A91F6
 005A8FFF    inc        edi
 005A9000    mov        dword ptr [ebp-10],0
 005A9007    mov        eax,dword ptr [ebp-0C]
 005A900A    mov        edx,dword ptr [ebp-10]
 005A900D    mov        ebx,dword ptr [eax+edx*4]
 005A9010    lea        eax,[ebp-14]
 005A9013    lea        edx,[ebx+1A]
 005A9016    call       @LStrFromString
 005A901B    mov        eax,dword ptr [ebp-14]
 005A901E    mov        edx,5A925C; 'Name'
 005A9023    call       AnsiCompareText
 005A9028    test       eax,eax
>005A902A    je         005A91EC
 005A9030    lea        eax,[ebp-18]
 005A9033    lea        edx,[ebx+1A]
 005A9036    call       @LStrFromString
 005A903B    mov        eax,dword ptr [ebp-18]
 005A903E    mov        edx,5A926C; 'DevLocked'
 005A9043    call       AnsiCompareText
 005A9048    test       eax,eax
>005A904A    je         005A91EC
 005A9050    lea        eax,[ebp-1C]
 005A9053    lea        edx,[ebx+1A]
 005A9056    call       @LStrFromString
 005A905B    mov        eax,dword ptr [ebp-1C]
 005A905E    mov        edx,5A9280; 'Locked'
 005A9063    call       AnsiCompareText
 005A9068    test       eax,eax
>005A906A    je         005A91EC
 005A9070    lea        eax,[ebp-20]
 005A9073    lea        edx,[ebx+1A]
 005A9076    call       @LStrFromString
 005A907B    mov        eax,dword ptr [ebp-20]
 005A907E    mov        edx,5A9290; 'Mirror'
 005A9083    call       AnsiCompareText
 005A9088    test       eax,eax
>005A908A    je         005A91EC
 005A9090    lea        eax,[ebp-24]
 005A9093    lea        edx,[ebx+1A]
 005A9096    call       @LStrFromString
 005A909B    mov        eax,dword ptr [ebp-24]
 005A909E    mov        edx,5A92A0; 'Top'
 005A90A3    call       AnsiCompareText
 005A90A8    test       eax,eax
>005A90AA    je         005A91EC
 005A90B0    lea        eax,[ebp-28]
 005A90B3    lea        edx,[ebx+1A]
 005A90B6    call       @LStrFromString
 005A90BB    mov        eax,dword ptr [ebp-28]
 005A90BE    mov        edx,5A92AC; 'Left'
 005A90C3    call       AnsiCompareText
 005A90C8    test       eax,eax
>005A90CA    je         005A91EC
 005A90D0    mov        eax,dword ptr [ebx]
 005A90D2    mov        eax,dword ptr [eax]
 005A90D4    movzx      eax,byte ptr [eax]
 005A90D7    cmp        eax,0C
>005A90DA    ja         005A91EC
 005A90E0    jmp        dword ptr [eax*4+5A90E7]
 005A90E0    dd         5A91EC
 005A90E0    dd         5A911B
 005A90E0    dd         5A911B
 005A90E0    dd         5A911B
 005A90E0    dd         5A9135
 005A90E0    dd         5A9154
 005A90E0    dd         5A916F
 005A90E0    dd         5A916F
 005A90E0    dd         5A9186
 005A90E0    dd         5A91A1
 005A90E0    dd         5A91B8
 005A90E0    dd         5A91B8
 005A90E0    dd         5A91D3
 005A911B    mov        edx,ebx
 005A911D    mov        eax,esi
 005A911F    call       GetOrdProp
 005A9124    mov        ecx,eax
 005A9126    mov        edx,ebx
 005A9128    mov        eax,dword ptr [ebp-4]
 005A912B    call       SetOrdProp
>005A9130    jmp        005A91EC
 005A9135    mov        edx,ebx
 005A9137    mov        eax,esi
 005A9139    call       GetFloatProp
 005A913E    add        esp,0FFFFFFF4
 005A9141    fstp       tbyte ptr [esp]
 005A9144    wait
 005A9145    mov        edx,ebx
 005A9147    mov        eax,dword ptr [ebp-4]
 005A914A    call       SetFloatProp
>005A914F    jmp        005A91EC
 005A9154    lea        ecx,[ebp-2C]
 005A9157    mov        edx,ebx
 005A9159    mov        eax,esi
 005A915B    call       GetStrProp
 005A9160    mov        ecx,dword ptr [ebp-2C]
 005A9163    mov        edx,ebx
 005A9165    mov        eax,dword ptr [ebp-4]
 005A9168    call       SetStrProp
>005A916D    jmp        005A91EC
 005A916F    mov        edx,ebx
 005A9171    mov        eax,esi
 005A9173    call       GetOrdProp
 005A9178    mov        ecx,eax
 005A917A    mov        edx,ebx
 005A917C    mov        eax,dword ptr [ebp-4]
 005A917F    call       SetOrdProp
>005A9184    jmp        005A91EC
 005A9186    lea        ecx,[ebp-34]
 005A9189    mov        edx,ebx
 005A918B    mov        eax,esi
 005A918D    call       GetMethodProp
 005A9192    lea        ecx,[ebp-34]
 005A9195    mov        edx,ebx
 005A9197    mov        eax,dword ptr [ebp-4]
 005A919A    call       SetMethodProp
>005A919F    jmp        005A91EC
 005A91A1    mov        edx,ebx
 005A91A3    mov        eax,esi
 005A91A5    call       GetOrdProp
 005A91AA    mov        ecx,eax
 005A91AC    mov        edx,ebx
 005A91AE    mov        eax,dword ptr [ebp-4]
 005A91B1    call       SetOrdProp
>005A91B6    jmp        005A91EC
 005A91B8    lea        ecx,[ebp-38]
 005A91BB    mov        edx,ebx
 005A91BD    mov        eax,esi
 005A91BF    call       GetStrProp
 005A91C4    mov        ecx,dword ptr [ebp-38]
 005A91C7    mov        edx,ebx
 005A91C9    mov        eax,dword ptr [ebp-4]
 005A91CC    call       SetStrProp
>005A91D1    jmp        005A91EC
 005A91D3    lea        ecx,[ebp-48]
 005A91D6    mov        edx,ebx
 005A91D8    mov        eax,esi
 005A91DA    call       GetVariantProp
 005A91DF    lea        ecx,[ebp-48]
 005A91E2    mov        edx,ebx
 005A91E4    mov        eax,dword ptr [ebp-4]
 005A91E7    call       SetVariantProp
 005A91EC    inc        dword ptr [ebp-10]
 005A91EF    dec        edi
<005A91F0    jne        005A9007
 005A91F6    xor        eax,eax
 005A91F8    pop        edx
 005A91F9    pop        ecx
 005A91FA    pop        ecx
 005A91FB    mov        dword ptr fs:[eax],edx
 005A91FE    push       5A9219
 005A9203    mov        edx,dword ptr [ebp-8]
 005A9206    shl        edx,2
 005A9209    mov        eax,dword ptr [ebp-0C]
 005A920C    call       @FreeMem
 005A9211    ret
<005A9212    jmp        @HandleFinally
<005A9217    jmp        005A9203
 005A9219    xor        eax,eax
 005A921B    pop        edx
 005A921C    pop        ecx
 005A921D    pop        ecx
 005A921E    mov        dword ptr fs:[eax],edx
 005A9221    push       5A924B
 005A9226    lea        eax,[ebp-48]
 005A9229    call       @VarClr
 005A922E    lea        eax,[ebp-38]
 005A9231    call       @LStrClr
 005A9236    lea        eax,[ebp-2C]
 005A9239    mov        edx,7
 005A923E    call       @LStrArrayClr
 005A9243    ret
<005A9244    jmp        @HandleFinally
<005A9249    jmp        005A9226
 005A924B    pop        edi
 005A924C    pop        esi
 005A924D    pop        ebx
 005A924E    mov        esp,ebp
 005A9250    pop        ebp
 005A9251    ret
*}
end;

//005A92B4
//procedure TRaveControl.SetMirror(Self:TRaveControl; ?:TRaveControl);
//begin
{*
 005A92B4    push       ebx
 005A92B5    push       esi
 005A92B6    mov        esi,edx
 005A92B8    mov        ebx,eax
 005A92BA    test       esi,esi
>005A92BC    je         005A92E6
 005A92BE    mov        eax,ebx
 005A92C0    call       TObject.ClassInfo
 005A92C5    mov        edx,eax
 005A92C7    mov        eax,esi
 005A92C9    call       @IsClass
 005A92CE    test       al,al
>005A92D0    jne        005A92E6
 005A92D2    mov        eax,esi
 005A92D4    call       TObject.ClassInfo
 005A92D9    mov        edx,eax
 005A92DB    mov        eax,ebx
 005A92DD    call       @IsClass
 005A92E2    test       al,al
>005A92E4    je         005A930F
 005A92E6    cmp        esi,dword ptr [ebx+5C]; TRaveControl.Mirror:TRaveControl
>005A92E9    je         005A930F
 005A92EB    mov        eax,dword ptr [ebx+5C]; TRaveControl.Mirror:TRaveControl
 005A92EE    test       eax,eax
>005A92F0    je         005A92FC
 005A92F2    mov        edx,ebx
 005A92F4    mov        ecx,dword ptr [eax]
 005A92F6    call       dword ptr [ecx+0D8]; TRaveControl.sub_005A8ED8
 005A92FC    mov        eax,esi
 005A92FE    mov        dword ptr [ebx+5C],eax; TRaveControl.Mirror:TRaveControl
 005A9301    test       eax,eax
>005A9303    je         005A930F
 005A9305    mov        edx,ebx
 005A9307    mov        ecx,dword ptr [eax]
 005A9309    call       dword ptr [ecx+0D4]; TRaveControl.sub_005A8EA0
 005A930F    pop        esi
 005A9310    pop        ebx
 005A9311    ret
*}
//end;

//005A9314
procedure sub_005A9314();
begin
{*
 005A9314    push       ebp
 005A9315    mov        ebp,esp
 005A9317    xor        eax,eax
 005A9319    push       ebp
 005A931A    push       5A9333
 005A931F    push       dword ptr fs:[eax]
 005A9322    mov        dword ptr fs:[eax],esp
 005A9325    xor        eax,eax
 005A9327    pop        edx
 005A9328    pop        ecx
 005A9329    pop        ecx
 005A932A    mov        dword ptr fs:[eax],edx
 005A932D    push       5A933A
 005A9332    ret
<005A9333    jmp        @HandleFinally
<005A9338    jmp        005A9332
 005A933A    pop        ebp
 005A933B    ret
*}
end;

//005A933C
//procedure sub_005A933C(?:?);
//begin
{*
 005A933C    push       ebx
 005A933D    mov        ebx,edx
 005A933F    mov        eax,ebx
 005A9341    call       @LStrClr
 005A9346    pop        ebx
 005A9347    ret
*}
//end;

//005A9348
procedure sub_005A9348();
begin
{*
 005A9348    ret
*}
end;

//005A934C
//function sub_005A934C():?;
//begin
{*
 005A934C    xor        eax,eax
 005A934E    ret
*}
//end;

//005A9350
procedure sub_005A9350();
begin
{*
 005A9350    ret
*}
end;

//005A9354
//function sub_005A9354():?;
//begin
{*
 005A9354    mov        al,1
 005A9356    ret
*}
//end;

//005A9358
procedure sub_005A9358();
begin
{*
 005A9358    ret
*}
end;

//005A935C
//function sub_005A935C():?;
//begin
{*
 005A935C    mov        eax,1FFFFFFF
 005A9361    ret
*}
//end;

//005A9364
procedure sub_005A9364();
begin
{*
 005A9364    ret
*}
end;

//005A9368
//function sub_005A9368():?;
//begin
{*
 005A9368    mov        eax,1FFFFFFF
 005A936D    ret
*}
//end;

//005A9370
procedure sub_005A9370();
begin
{*
 005A9370    ret
*}
end;

//005A9374
//function sub_005A9374():?;
//begin
{*
 005A9374    mov        al,8
 005A9376    ret
*}
//end;

//005A9378
procedure sub_005A9378();
begin
{*
 005A9378    push       ebp
 005A9379    mov        ebp,esp
 005A937B    pop        ebp
 005A937C    ret        8
*}
end;

//005A9380
procedure sub_005A9380();
begin
{*
 005A9380    add        esp,0FFFFFFF8
 005A9383    xor        eax,eax
 005A9385    mov        dword ptr [esp],eax
 005A9388    mov        dword ptr [esp+4],0BFF00000
 005A9390    fld        qword ptr [esp]
 005A9393    pop        ecx
 005A9394    pop        edx
 005A9395    ret
*}
end;

//005A9398
procedure sub_005A9398();
begin
{*
 005A9398    ret
*}
end;

//005A939C
//function sub_005A939C():?;
//begin
{*
 005A939C    mov        al,1
 005A939E    ret
*}
//end;

//005A93A0
procedure sub_005A93A0();
begin
{*
 005A93A0    ret
*}
end;

//005A93A4
//function sub_005A93A4():?;
//begin
{*
 005A93A4    xor        eax,eax
 005A93A6    ret
*}
//end;

//005A93A8
procedure TRaveText.GetLeft;
begin
{*
 005A93A8    add        esp,0FFFFFFF8
 005A93AB    mov        edx,dword ptr [eax+80]; TRaveText.?f80:?Double
 005A93B1    mov        dword ptr [esp],edx
 005A93B4    mov        edx,dword ptr [eax+84]; TRaveText.?f84:dword
 005A93BA    mov        dword ptr [esp+4],edx
 005A93BE    fld        qword ptr [esp]
 005A93C1    pop        ecx
 005A93C2    pop        edx
 005A93C3    ret
*}
end;

//005A93C4
//procedure TRaveText.SetLeft(?:?; ?:?);
//begin
{*
 005A93C4    push       ebp
 005A93C5    mov        ebp,esp
 005A93C7    push       ebx
 005A93C8    mov        ebx,eax
 005A93CA    push       dword ptr [ebp+0C]
 005A93CD    push       dword ptr [ebp+8]
 005A93D0    push       dword ptr [ebx+84]; TRaveText.?f84:dword
 005A93D6    push       dword ptr [ebx+80]; TRaveText.?f80:?Double
 005A93DC    call       005A5B40
 005A93E1    test       al,al
>005A93E3    je         005A93FE
 005A93E5    mov        eax,dword ptr [ebp+8]
 005A93E8    mov        dword ptr [ebx+80],eax; TRaveText.?f80:?Double
 005A93EE    mov        eax,dword ptr [ebp+0C]
 005A93F1    mov        dword ptr [ebx+84],eax; TRaveText.?f84:dword
 005A93F7    mov        eax,ebx
 005A93F9    call       005AA880
 005A93FE    pop        ebx
 005A93FF    pop        ebp
 005A9400    ret        8
*}
//end;

//005A9404
procedure TRaveText.GetTop;
begin
{*
 005A9404    add        esp,0FFFFFFF8
 005A9407    mov        edx,dword ptr [eax+88]; TRaveText.?f88:?Double
 005A940D    mov        dword ptr [esp],edx
 005A9410    mov        edx,dword ptr [eax+8C]; TRaveText.?f8C:dword
 005A9416    mov        dword ptr [esp+4],edx
 005A941A    fld        qword ptr [esp]
 005A941D    pop        ecx
 005A941E    pop        edx
 005A941F    ret
*}
end;

//005A9420
//procedure TRaveText.SetTop(?:?; ?:?);
//begin
{*
 005A9420    push       ebp
 005A9421    mov        ebp,esp
 005A9423    push       ebx
 005A9424    mov        ebx,eax
 005A9426    push       dword ptr [ebp+0C]
 005A9429    push       dword ptr [ebp+8]
 005A942C    push       dword ptr [ebx+8C]; TRaveText.?f8C:dword
 005A9432    push       dword ptr [ebx+88]; TRaveText.?f88:?Double
 005A9438    call       005A5B40
 005A943D    test       al,al
>005A943F    je         005A945A
 005A9441    mov        eax,dword ptr [ebp+8]
 005A9444    mov        dword ptr [ebx+88],eax; TRaveText.?f88:?Double
 005A944A    mov        eax,dword ptr [ebp+0C]
 005A944D    mov        dword ptr [ebx+8C],eax; TRaveText.?f8C:dword
 005A9453    mov        eax,ebx
 005A9455    call       005AA880
 005A945A    pop        ebx
 005A945B    pop        ebp
 005A945C    ret        8
*}
//end;

//005A9460
procedure TRaveText.GetWidth;
begin
{*
 005A9460    add        esp,0FFFFFFF8
 005A9463    mov        edx,dword ptr [eax+90]; TRaveText.?f90:?Double
 005A9469    mov        dword ptr [esp],edx
 005A946C    mov        edx,dword ptr [eax+94]; TRaveText.?f94:dword
 005A9472    mov        dword ptr [esp+4],edx
 005A9476    fld        qword ptr [esp]
 005A9479    pop        ecx
 005A947A    pop        edx
 005A947B    ret
*}
end;

//005A947C
//procedure TRaveText.SetWidth(?:?; ?:?);
//begin
{*
 005A947C    push       ebp
 005A947D    mov        ebp,esp
 005A947F    push       ebx
 005A9480    push       esi
 005A9481    mov        ebx,eax
 005A9483    push       dword ptr [ebp+0C]
 005A9486    push       dword ptr [ebp+8]
 005A9489    push       dword ptr [ebx+94]; TRaveText.?f94:dword
 005A948F    push       dword ptr [ebx+90]; TRaveText.?f90:?Double
 005A9495    call       005A5B40
 005A949A    test       al,al
>005A949C    je         005A9506
 005A949E    push       dword ptr [ebx+94]; TRaveText.?f94:dword
 005A94A4    push       dword ptr [ebx+90]; TRaveText.?f90:?Double
 005A94AA    push       dword ptr [ebp+0C]
 005A94AD    push       dword ptr [ebp+8]
 005A94B0    push       0
 005A94B2    push       0
 005A94B4    push       0
 005A94B6    push       0
 005A94B8    xor        ecx,ecx
 005A94BA    mov        dl,1
 005A94BC    mov        eax,ebx
 005A94BE    mov        esi,dword ptr [eax]
 005A94C0    call       dword ptr [esi+128]; TRaveText.sub_005AA7F8
 005A94C6    mov        eax,ebx
 005A94C8    call       005A9A40
 005A94CD    cmp        al,1
>005A94CF    jne        005A94ED
 005A94D1    test       byte ptr [ebx+30],4; TRaveText.?f30:byte
>005A94D5    jne        005A94ED
 005A94D7    fld        qword ptr [ebx+90]; TRaveText.?f90:?Double
 005A94DD    fsub       qword ptr [ebp+8]
 005A94E0    fadd       qword ptr [ebx+80]; TRaveText.?f80:?Double
 005A94E6    fstp       qword ptr [ebx+80]; TRaveText.?f80:?Double
 005A94EC    wait
 005A94ED    mov        eax,dword ptr [ebp+8]
 005A94F0    mov        dword ptr [ebx+90],eax; TRaveText.?f90:?Double
 005A94F6    mov        eax,dword ptr [ebp+0C]
 005A94F9    mov        dword ptr [ebx+94],eax; TRaveText.?f94:dword
 005A94FF    mov        eax,ebx
 005A9501    call       005AA880
 005A9506    pop        esi
 005A9507    pop        ebx
 005A9508    pop        ebp
 005A9509    ret        8
*}
//end;

//005A950C
procedure TRaveSection.GetHeight;
begin
{*
 005A950C    add        esp,0FFFFFFF8
 005A950F    mov        edx,dword ptr [eax+98]; TRaveSection.?f98:?Double
 005A9515    mov        dword ptr [esp],edx
 005A9518    mov        edx,dword ptr [eax+9C]; TRaveSection.?f9C:dword
 005A951E    mov        dword ptr [esp+4],edx
 005A9522    fld        qword ptr [esp]
 005A9525    pop        ecx
 005A9526    pop        edx
 005A9527    ret
*}
end;

//005A9528
//procedure TRaveSection.SetHeight(?:?; ?:?);
//begin
{*
 005A9528    push       ebp
 005A9529    mov        ebp,esp
 005A952B    push       ebx
 005A952C    push       esi
 005A952D    mov        ebx,eax
 005A952F    push       dword ptr [ebp+0C]
 005A9532    push       dword ptr [ebp+8]
 005A9535    push       dword ptr [ebx+9C]; TRaveSection.?f9C:dword
 005A953B    push       dword ptr [ebx+98]; TRaveSection.?f98:?Double
 005A9541    call       005A5B40
 005A9546    test       al,al
>005A9548    je         005A95AC
 005A954A    push       0
 005A954C    push       0
 005A954E    push       0
 005A9550    push       0
 005A9552    push       dword ptr [ebx+9C]; TRaveSection.?f9C:dword
 005A9558    push       dword ptr [ebx+98]; TRaveSection.?f98:?Double
 005A955E    push       dword ptr [ebp+0C]
 005A9561    push       dword ptr [ebp+8]
 005A9564    mov        cl,1
 005A9566    xor        edx,edx
 005A9568    mov        eax,ebx
 005A956A    mov        esi,dword ptr [eax]
 005A956C    call       dword ptr [esi+128]; TRaveSection.sub_005AA7F8
 005A9572    mov        eax,ebx
 005A9574    call       005A9A34
 005A9579    cmp        al,1
>005A957B    jne        005A9593
 005A957D    fld        qword ptr [ebx+98]; TRaveSection.?f98:?Double
 005A9583    fsub       qword ptr [ebp+8]
 005A9586    fadd       qword ptr [ebx+88]; TRaveSection.?f88:?Double
 005A958C    fstp       qword ptr [ebx+88]; TRaveSection.?f88:?Double
 005A9592    wait
 005A9593    mov        eax,dword ptr [ebp+8]
 005A9596    mov        dword ptr [ebx+98],eax; TRaveSection.?f98:?Double
 005A959C    mov        eax,dword ptr [ebp+0C]
 005A959F    mov        dword ptr [ebx+9C],eax; TRaveSection.?f9C:dword
 005A95A5    mov        eax,ebx
 005A95A7    call       005AA880
 005A95AC    pop        esi
 005A95AD    pop        ebx
 005A95AE    pop        ebp
 005A95AF    ret        8
*}
//end;

//005A95B4
//function sub_005A95B4(?:TRaveControl):?;
//begin
{*
 005A95B4    push       ebx
 005A95B5    add        esp,0FFFFFFF0
 005A95B8    mov        ebx,eax
 005A95BA    mov        eax,ebx
 005A95BC    mov        edx,dword ptr [eax]
 005A95BE    call       dword ptr [edx+12C]; TRaveText.GetLeft
 005A95C4    fstp       qword ptr [esp+8]
 005A95C8    wait
 005A95C9    mov        eax,ebx
 005A95CB    mov        edx,dword ptr [eax]
 005A95CD    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005A95D3    fadd       qword ptr [esp+8]
 005A95D7    fstp       qword ptr [esp]
 005A95DA    wait
 005A95DB    fld        qword ptr [esp]
 005A95DE    add        esp,10
 005A95E1    pop        ebx
 005A95E2    ret
*}
//end;

//005A9644
//function TRaveBaseBarCode.GetBottom(Self:TRaveControl):?;
//begin
{*
 005A9644    push       ebx
 005A9645    add        esp,0FFFFFFF0
 005A9648    mov        ebx,eax
 005A964A    mov        eax,ebx
 005A964C    mov        edx,dword ptr [eax]
 005A964E    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005A9654    fstp       qword ptr [esp+8]
 005A9658    wait
 005A9659    mov        eax,ebx
 005A965B    mov        edx,dword ptr [eax]
 005A965D    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005A9663    fadd       qword ptr [esp+8]
 005A9667    fstp       qword ptr [esp]
 005A966A    wait
 005A966B    fld        qword ptr [esp]
 005A966E    add        esp,10
 005A9671    pop        ebx
 005A9672    ret
*}
//end;

//005A9674
//procedure TRaveBaseBarCode.SetBottom(Self:TRaveBaseBarCode; ?:?);
//begin
{*
 005A9674    push       ebp
 005A9675    mov        ebp,esp
 005A9677    push       esi
 005A9678    mov        esi,eax
 005A967A    mov        eax,esi
 005A967C    mov        edx,dword ptr [eax]
 005A967E    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005A9684    add        esp,0FFFFFFF8
 005A9687    fstp       qword ptr [esp]
 005A968A    wait
 005A968B    mov        eax,esi
 005A968D    mov        edx,dword ptr [eax]
 005A968F    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005A9695    fsubr      qword ptr [ebp+8]
 005A9698    add        esp,0FFFFFFF8
 005A969B    fstp       qword ptr [esp]
 005A969E    wait
 005A969F    call       005A5B40
 005A96A4    test       al,al
>005A96A6    je         005A96CD
 005A96A8    mov        eax,esi
 005A96AA    mov        edx,dword ptr [eax]
 005A96AC    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005A96B2    fsubr      qword ptr [ebp+8]
 005A96B5    add        esp,0FFFFFFF8
 005A96B8    fstp       qword ptr [esp]
 005A96BB    wait
 005A96BC    mov        eax,esi
 005A96BE    mov        edx,dword ptr [eax]
 005A96C0    call       dword ptr [edx+138]; TRaveBaseBarCode.SetTop
 005A96C6    mov        eax,esi
 005A96C8    call       005AA880
 005A96CD    pop        esi
 005A96CE    pop        ebp
 005A96CF    ret        8
*}
//end;

//005A96D4
procedure sub_005A96D4;
begin
{*
 005A96D4    push       ebx
 005A96D5    push       esi
 005A96D6    add        esp,0FFFFFFF8
 005A96D9    mov        ebx,eax
 005A96DB    mov        eax,ebx
 005A96DD    mov        edx,dword ptr [eax]
 005A96DF    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005A96E5    fadd       qword ptr [ebx+68]; TRaveEANBarCode.?f68:?Double
 005A96E8    fstp       qword ptr [esp]
 005A96EB    wait
 005A96EC    mov        esi,dword ptr [ebx+38]; TRaveEANBarCode.?f38:dword
 005A96EF    test       esi,esi
>005A96F1    je         005A9701
 005A96F3    mov        eax,esi
 005A96F5    mov        edx,dword ptr [eax]
 005A96F7    call       dword ptr [edx+5C]
 005A96FA    fadd       qword ptr [esp]
 005A96FD    fstp       qword ptr [esp]
 005A9700    wait
 005A9701    fld        qword ptr [esp]
 005A9704    pop        ecx
 005A9705    pop        edx
 005A9706    pop        esi
 005A9707    pop        ebx
 005A9708    ret
*}
end;

//005A970C
procedure sub_005A970C;
begin
{*
 005A970C    push       ebx
 005A970D    push       esi
 005A970E    add        esp,0FFFFFFF8
 005A9711    mov        ebx,eax
 005A9713    mov        eax,ebx
 005A9715    mov        edx,dword ptr [eax]
 005A9717    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005A971D    fadd       qword ptr [ebx+70]; TRaveEANBarCode.?f70:?Double
 005A9720    fstp       qword ptr [esp]
 005A9723    wait
 005A9724    mov        esi,dword ptr [ebx+38]; TRaveEANBarCode.?f38:dword
 005A9727    test       esi,esi
>005A9729    je         005A9739
 005A972B    mov        eax,esi
 005A972D    mov        edx,dword ptr [eax]
 005A972F    call       dword ptr [edx+60]
 005A9732    fadd       qword ptr [esp]
 005A9735    fstp       qword ptr [esp]
 005A9738    wait
 005A9739    fld        qword ptr [esp]
 005A973C    pop        ecx
 005A973D    pop        edx
 005A973E    pop        esi
 005A973F    pop        ebx
 005A9740    ret
*}
end;

//005A9744
procedure sub_005A9744;
begin
{*
 005A9744    push       ebx
 005A9745    add        esp,0FFFFFFF0
 005A9748    mov        ebx,eax
 005A974A    mov        eax,ebx
 005A974C    mov        edx,dword ptr [eax]
 005A974E    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005A9751    fstp       qword ptr [esp+8]
 005A9755    wait
 005A9756    mov        eax,ebx
 005A9758    mov        edx,dword ptr [eax]
 005A975A    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005A9760    fadd       qword ptr [esp+8]
 005A9764    fstp       qword ptr [esp]
 005A9767    wait
 005A9768    fld        qword ptr [esp]
 005A976B    add        esp,10
 005A976E    pop        ebx
 005A976F    ret
*}
end;

//005A9770
procedure sub_005A9770;
begin
{*
 005A9770    push       ebx
 005A9771    add        esp,0FFFFFFF0
 005A9774    mov        ebx,eax
 005A9776    mov        eax,ebx
 005A9778    mov        edx,dword ptr [eax]
 005A977A    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005A977D    fstp       qword ptr [esp+8]
 005A9781    wait
 005A9782    mov        eax,ebx
 005A9784    mov        edx,dword ptr [eax]
 005A9786    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005A978C    fadd       qword ptr [esp+8]
 005A9790    fstp       qword ptr [esp]
 005A9793    wait
 005A9794    fld        qword ptr [esp]
 005A9797    add        esp,10
 005A979A    pop        ebx
 005A979B    ret
*}
end;

//005A979C
//procedure TRaveControl.SetAnchor(Self:TRaveControl; ?:?);
//begin
{*
 005A979C    mov        byte ptr [eax+0E1],dl; TRaveControl.Anchor:TRaveAnchor
 005A97A2    ret
*}
//end;

//005A97A4
procedure sub_005A97A4;
begin
{*
 005A97A4    push       ebx
 005A97A5    push       esi
 005A97A6    push       edi
 005A97A7    mov        ebx,eax
 005A97A9    mov        eax,ebx
 005A97AB    call       005A8890
 005A97B0    mov        eax,dword ptr [ebx+5C]; TRaveControl.Mirror:TRaveControl
 005A97B3    test       eax,eax
>005A97B5    je         005A97DF
 005A97B7    mov        edi,eax
 005A97B9    mov        eax,edi
 005A97BB    mov        edx,dword ptr [eax]
 005A97BD    call       dword ptr [edx+54]; TRaveControl.sub_005A8B00
 005A97C0    mov        ebx,eax
 005A97C2    dec        ebx
 005A97C3    test       ebx,ebx
>005A97C5    jl         005A97DF
 005A97C7    inc        ebx
 005A97C8    xor        esi,esi
 005A97CA    mov        edx,esi
 005A97CC    mov        eax,edi
 005A97CE    mov        ecx,dword ptr [eax]
 005A97D0    call       dword ptr [ecx+50]; TRaveControl.sub_005A8B3C
 005A97D3    mov        edx,dword ptr [eax]
 005A97D5    call       dword ptr [edx+88]
 005A97DB    inc        esi
 005A97DC    dec        ebx
<005A97DD    jne        005A97CA
 005A97DF    pop        edi
 005A97E0    pop        esi
 005A97E1    pop        ebx
 005A97E2    ret
*}
end;

//005A97E4
procedure sub_005A97E4;
begin
{*
 005A97E4    push       ebx
 005A97E5    push       esi
 005A97E6    push       edi
 005A97E7    mov        ebx,eax
 005A97E9    mov        eax,ebx
 005A97EB    call       005A88C0
 005A97F0    mov        eax,dword ptr [ebx+5C]; TRaveControl.Mirror:TRaveControl
 005A97F3    test       eax,eax
>005A97F5    je         005A981F
 005A97F7    mov        edi,eax
 005A97F9    mov        eax,edi
 005A97FB    mov        edx,dword ptr [eax]
 005A97FD    call       dword ptr [edx+54]; TRaveControl.sub_005A8B00
 005A9800    mov        ebx,eax
 005A9802    dec        ebx
 005A9803    test       ebx,ebx
>005A9805    jl         005A981F
 005A9807    inc        ebx
 005A9808    xor        esi,esi
 005A980A    mov        edx,esi
 005A980C    mov        eax,edi
 005A980E    mov        ecx,dword ptr [eax]
 005A9810    call       dword ptr [ecx+50]; TRaveControl.sub_005A8B3C
 005A9813    mov        edx,dword ptr [eax]
 005A9815    call       dword ptr [edx+8C]
 005A981B    inc        esi
 005A981C    dec        ebx
<005A981D    jne        005A980A
 005A981F    pop        edi
 005A9820    pop        esi
 005A9821    pop        ebx
 005A9822    ret
*}
end;

//005A9824
procedure sub_005A9824;
begin
{*
 005A9824    push       ebx
 005A9825    mov        ebx,eax
 005A9827    mov        eax,ebx
 005A9829    call       005A8614
 005A982E    mov        eax,ebx
 005A9830    mov        edx,dword ptr [eax]
 005A9832    call       dword ptr [edx+12C]; TRaveText.GetLeft
 005A9838    fstp       qword ptr [ebx+0A0]; TRaveControl.?fA0:?Double
 005A983E    wait
 005A983F    mov        eax,ebx
 005A9841    mov        edx,dword ptr [eax]
 005A9843    call       dword ptr [edx+134]; TRaveText.GetTop
 005A9849    fstp       qword ptr [ebx+0A8]; TRaveControl.?fA8:?Double
 005A984F    wait
 005A9850    mov        eax,ebx
 005A9852    mov        edx,dword ptr [eax]
 005A9854    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005A985A    fstp       qword ptr [ebx+0B0]; TRaveControl.?fB0:?Double
 005A9860    wait
 005A9861    mov        eax,ebx
 005A9863    mov        edx,dword ptr [eax]
 005A9865    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005A986B    fstp       qword ptr [ebx+0B8]; TRaveControl.?fB8:?Double
 005A9871    wait
 005A9872    pop        ebx
 005A9873    ret
*}
end;

//005A9874
procedure sub_005A9874;
begin
{*
 005A9874    push       ebx
 005A9875    mov        ebx,eax
 005A9877    cmp        dword ptr [ebx+5C],0; TRaveControl.Mirror:TRaveControl
>005A987B    je         005A98BA
 005A987D    mov        eax,dword ptr [ebx+0A0]; TRaveControl.?fA0:?Double
 005A9883    mov        dword ptr [ebx+80],eax; TRaveControl.?f80:?Double
 005A9889    mov        eax,dword ptr [ebx+0A4]; TRaveControl.?fA4:dword
 005A988F    mov        dword ptr [ebx+84],eax; TRaveControl.?f84:dword
 005A9895    mov        eax,dword ptr [ebx+0A8]; TRaveControl.?fA8:?Double
 005A989B    mov        dword ptr [ebx+88],eax; TRaveControl.?f88:?Double
 005A98A1    mov        eax,dword ptr [ebx+0AC]; TRaveControl.?fAC:dword
 005A98A7    mov        dword ptr [ebx+8C],eax; TRaveControl.?f8C:dword
 005A98AD    mov        eax,dword ptr [ebx+5C]; TRaveControl.Mirror:TRaveControl
 005A98B0    mov        edx,dword ptr [eax]
 005A98B2    call       dword ptr [edx+9C]; TRaveControl.sub_005A9874
>005A98B8    jmp        005A991A
 005A98BA    mov        eax,dword ptr [ebx+0A0]; TRaveControl.?fA0:?Double
 005A98C0    mov        dword ptr [ebx+80],eax; TRaveControl.?f80:?Double
 005A98C6    mov        eax,dword ptr [ebx+0A4]; TRaveControl.?fA4:dword
 005A98CC    mov        dword ptr [ebx+84],eax; TRaveControl.?f84:dword
 005A98D2    mov        eax,dword ptr [ebx+0A8]; TRaveControl.?fA8:?Double
 005A98D8    mov        dword ptr [ebx+88],eax; TRaveControl.?f88:?Double
 005A98DE    mov        eax,dword ptr [ebx+0AC]; TRaveControl.?fAC:dword
 005A98E4    mov        dword ptr [ebx+8C],eax; TRaveControl.?f8C:dword
 005A98EA    mov        eax,dword ptr [ebx+0B0]; TRaveControl.?fB0:?Double
 005A98F0    mov        dword ptr [ebx+90],eax; TRaveControl.?f90:?Double
 005A98F6    mov        eax,dword ptr [ebx+0B4]; TRaveControl.?fB4:dword
 005A98FC    mov        dword ptr [ebx+94],eax; TRaveControl.?f94:dword
 005A9902    mov        eax,dword ptr [ebx+0B8]; TRaveControl.?fB8:?Double
 005A9908    mov        dword ptr [ebx+98],eax; TRaveControl.?f98:?Double
 005A990E    mov        eax,dword ptr [ebx+0BC]; TRaveControl.?fBC:dword
 005A9914    mov        dword ptr [ebx+9C],eax; TRaveControl.?f9C:dword
 005A991A    mov        eax,ebx
 005A991C    call       005A8644
 005A9921    pop        ebx
 005A9922    ret
*}
end;

//005A9924
procedure sub_005A9924;
begin
{*
 005A9924    push       ebx
 005A9925    mov        ebx,eax
 005A9927    mov        eax,ebx
 005A9929    call       005A8674
 005A992E    mov        eax,dword ptr [ebx+5C]; TRaveEANBarCode.Mirror:TRaveControl
 005A9931    test       eax,eax
>005A9933    je         005A993D
 005A9935    mov        edx,dword ptr [eax]
 005A9937    call       dword ptr [edx+0A0]; TRaveControl.sub_005A9924
 005A993D    mov        eax,ebx
 005A993F    mov        edx,dword ptr [eax]
 005A9941    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005A9947    fstp       qword ptr [ebx+0C0]; TRaveEANBarCode.?fC0:?Double
 005A994D    wait
 005A994E    mov        eax,ebx
 005A9950    mov        edx,dword ptr [eax]
 005A9952    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005A9958    fstp       qword ptr [ebx+0C8]; TRaveEANBarCode.?fC8:?Double
 005A995E    wait
 005A995F    mov        eax,ebx
 005A9961    mov        edx,dword ptr [eax]
 005A9963    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005A9969    fstp       qword ptr [ebx+0D0]; TRaveEANBarCode.?fD0:?Double
 005A996F    wait
 005A9970    mov        eax,ebx
 005A9972    mov        edx,dword ptr [eax]
 005A9974    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005A997A    fstp       qword ptr [ebx+0D8]; TRaveEANBarCode.?fD8:?Double
 005A9980    wait
 005A9981    pop        ebx
 005A9982    ret
*}
end;

//005A9984
procedure sub_005A9984;
begin
{*
 005A9984    push       ebx
 005A9985    mov        ebx,eax
 005A9987    cmp        dword ptr [ebx+5C],0; TRaveControl.Mirror:TRaveControl
>005A998B    je         005A99CA
 005A998D    mov        eax,dword ptr [ebx+0C0]; TRaveControl.?fC0:?Double
 005A9993    mov        dword ptr [ebx+80],eax; TRaveControl.?f80:?Double
 005A9999    mov        eax,dword ptr [ebx+0C4]; TRaveControl.?fC4:dword
 005A999F    mov        dword ptr [ebx+84],eax; TRaveControl.?f84:dword
 005A99A5    mov        eax,dword ptr [ebx+0C8]; TRaveControl.?fC8:?Double
 005A99AB    mov        dword ptr [ebx+88],eax; TRaveControl.?f88:?Double
 005A99B1    mov        eax,dword ptr [ebx+0CC]; TRaveControl.?fCC:dword
 005A99B7    mov        dword ptr [ebx+8C],eax; TRaveControl.?f8C:dword
 005A99BD    mov        eax,dword ptr [ebx+5C]; TRaveControl.Mirror:TRaveControl
 005A99C0    mov        edx,dword ptr [eax]
 005A99C2    call       dword ptr [edx+0A4]; TRaveControl.sub_005A9984
>005A99C8    jmp        005A9A2A
 005A99CA    mov        eax,dword ptr [ebx+0C0]; TRaveControl.?fC0:?Double
 005A99D0    mov        dword ptr [ebx+80],eax; TRaveControl.?f80:?Double
 005A99D6    mov        eax,dword ptr [ebx+0C4]; TRaveControl.?fC4:dword
 005A99DC    mov        dword ptr [ebx+84],eax; TRaveControl.?f84:dword
 005A99E2    mov        eax,dword ptr [ebx+0C8]; TRaveControl.?fC8:?Double
 005A99E8    mov        dword ptr [ebx+88],eax; TRaveControl.?f88:?Double
 005A99EE    mov        eax,dword ptr [ebx+0CC]; TRaveControl.?fCC:dword
 005A99F4    mov        dword ptr [ebx+8C],eax; TRaveControl.?f8C:dword
 005A99FA    mov        eax,dword ptr [ebx+0D0]; TRaveControl.?fD0:?Double
 005A9A00    mov        dword ptr [ebx+90],eax; TRaveControl.?f90:?Double
 005A9A06    mov        eax,dword ptr [ebx+0D4]; TRaveControl.?fD4:dword
 005A9A0C    mov        dword ptr [ebx+94],eax; TRaveControl.?f94:dword
 005A9A12    mov        eax,dword ptr [ebx+0D8]; TRaveControl.?fD8:?Double
 005A9A18    mov        dword ptr [ebx+98],eax; TRaveControl.?f98:?Double
 005A9A1E    mov        eax,dword ptr [ebx+0DC]; TRaveControl.?fDC:dword
 005A9A24    mov        dword ptr [ebx+9C],eax; TRaveControl.?f9C:dword
 005A9A2A    mov        eax,ebx
 005A9A2C    call       005A86A4
 005A9A31    pop        ebx
 005A9A32    ret
*}
end;

//005A9A34
//procedure sub_005A9A34(?:TRaveControl);
//begin
{*
 005A9A34    movzx      eax,byte ptr [eax+0E1]; TRaveControl.Anchor:TRaveAnchor
 005A9A3B    shr        eax,4
 005A9A3E    ret
*}
//end;

//005A9A40
//function sub_005A9A40(?:TRaveControl):?;
//begin
{*
 005A9A40    movzx      eax,byte ptr [eax+0E1]; TRaveControl.Anchor:TRaveAnchor
 005A9A47    and        eax,0F
 005A9A4A    ret
*}
//end;

//005A9A4C
procedure sub_005A9A4C;
begin
{*
 005A9A4C    push       ebx
 005A9A4D    add        esp,0FFFFFFE0
 005A9A50    mov        ebx,eax
 005A9A52    mov        eax,ebx
 005A9A54    mov        edx,dword ptr [eax]
 005A9A56    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005A9A59    fstp       qword ptr [esp]
 005A9A5C    wait
 005A9A5D    mov        eax,ebx
 005A9A5F    mov        edx,dword ptr [eax]
 005A9A61    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005A9A64    fstp       qword ptr [esp+8]
 005A9A68    wait
 005A9A69    mov        eax,ebx
 005A9A6B    mov        edx,dword ptr [eax]
 005A9A6D    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005A9A73    fstp       qword ptr [esp+10]
 005A9A77    wait
 005A9A78    mov        eax,ebx
 005A9A7A    mov        edx,dword ptr [eax]
 005A9A7C    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005A9A82    fstp       qword ptr [esp+18]
 005A9A86    wait
 005A9A87    push       0F8
 005A9A89    push       dword ptr [esp+8]
 005A9A8D    push       dword ptr [esp+8]
 005A9A91    push       dword ptr [esp+18]
 005A9A95    push       dword ptr [esp+18]
 005A9A99    mov        ecx,ebx
 005A9A9B    xor        edx,edx
 005A9A9D    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9AA0    call       005ABBD4
 005A9AA5    push       0F9
 005A9AA7    fld        qword ptr [esp+14]
 005A9AAB    fdiv       dword ptr ds:[5A9BDC]; 2:Single
 005A9AB1    fadd       qword ptr [esp+4]
 005A9AB5    add        esp,0FFFFFFF8
 005A9AB8    fstp       qword ptr [esp]
 005A9ABB    wait
 005A9ABC    push       dword ptr [esp+18]
 005A9AC0    push       dword ptr [esp+18]
 005A9AC4    mov        ecx,ebx
 005A9AC6    mov        dl,1
 005A9AC8    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9ACB    call       005ABBD4
 005A9AD0    push       0FA
 005A9AD2    fld        qword ptr [esp+4]
 005A9AD6    fadd       qword ptr [esp+14]
 005A9ADA    add        esp,0FFFFFFF8
 005A9ADD    fstp       qword ptr [esp]
 005A9AE0    wait
 005A9AE1    push       dword ptr [esp+18]
 005A9AE5    push       dword ptr [esp+18]
 005A9AE9    mov        ecx,ebx
 005A9AEB    mov        dl,2
 005A9AED    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9AF0    call       005ABBD4
 005A9AF5    push       0F7
 005A9AF7    push       dword ptr [esp+8]
 005A9AFB    push       dword ptr [esp+8]
 005A9AFF    fld        qword ptr [esp+24]
 005A9B03    fdiv       dword ptr ds:[5A9BDC]; 2:Single
 005A9B09    fadd       qword ptr [esp+14]
 005A9B0D    add        esp,0FFFFFFF8
 005A9B10    fstp       qword ptr [esp]
 005A9B13    wait
 005A9B14    mov        ecx,ebx
 005A9B16    mov        dl,3
 005A9B18    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9B1B    call       005ABBD4
 005A9B20    push       0F7
 005A9B22    fld        qword ptr [esp+4]
 005A9B26    fadd       qword ptr [esp+14]
 005A9B2A    add        esp,0FFFFFFF8
 005A9B2D    fstp       qword ptr [esp]
 005A9B30    wait
 005A9B31    fld        qword ptr [esp+24]
 005A9B35    fdiv       dword ptr ds:[5A9BDC]; 2:Single
 005A9B3B    fadd       qword ptr [esp+14]
 005A9B3F    add        esp,0FFFFFFF8
 005A9B42    fstp       qword ptr [esp]
 005A9B45    wait
 005A9B46    mov        ecx,ebx
 005A9B48    mov        dl,4
 005A9B4A    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9B4D    call       005ABBD4
 005A9B52    push       0FA
 005A9B54    push       dword ptr [esp+8]
 005A9B58    push       dword ptr [esp+8]
 005A9B5C    fld        qword ptr [esp+14]
 005A9B60    fadd       qword ptr [esp+24]
 005A9B64    add        esp,0FFFFFFF8
 005A9B67    fstp       qword ptr [esp]
 005A9B6A    wait
 005A9B6B    mov        ecx,ebx
 005A9B6D    mov        dl,5
 005A9B6F    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9B72    call       005ABBD4
 005A9B77    push       0F9
 005A9B79    fld        qword ptr [esp+14]
 005A9B7D    fdiv       dword ptr ds:[5A9BDC]; 2:Single
 005A9B83    fadd       qword ptr [esp+4]
 005A9B87    add        esp,0FFFFFFF8
 005A9B8A    fstp       qword ptr [esp]
 005A9B8D    wait
 005A9B8E    fld        qword ptr [esp+14]
 005A9B92    fadd       qword ptr [esp+24]
 005A9B96    add        esp,0FFFFFFF8
 005A9B99    fstp       qword ptr [esp]
 005A9B9C    wait
 005A9B9D    mov        ecx,ebx
 005A9B9F    mov        dl,6
 005A9BA1    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9BA4    call       005ABBD4
 005A9BA9    push       0F8
 005A9BAB    fld        qword ptr [esp+4]
 005A9BAF    fadd       qword ptr [esp+14]
 005A9BB3    add        esp,0FFFFFFF8
 005A9BB6    fstp       qword ptr [esp]
 005A9BB9    wait
 005A9BBA    fld        qword ptr [esp+14]
 005A9BBE    fadd       qword ptr [esp+24]
 005A9BC2    add        esp,0FFFFFFF8
 005A9BC5    fstp       qword ptr [esp]
 005A9BC8    wait
 005A9BC9    mov        ecx,ebx
 005A9BCB    mov        dl,7
 005A9BCD    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9BD0    call       005ABBD4
 005A9BD5    add        esp,20
 005A9BD8    pop        ebx
 005A9BD9    ret
*}
end;

//005A9BE0
procedure sub_005A9BE0;
begin
{*
 005A9BE0    push       ebx
 005A9BE1    add        esp,0FFFFFFE0
 005A9BE4    mov        ebx,eax
 005A9BE6    mov        eax,ebx
 005A9BE8    mov        edx,dword ptr [eax]
 005A9BEA    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005A9BED    fstp       qword ptr [esp]
 005A9BF0    wait
 005A9BF1    mov        eax,ebx
 005A9BF3    mov        edx,dword ptr [eax]
 005A9BF5    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005A9BF8    fstp       qword ptr [esp+8]
 005A9BFC    wait
 005A9BFD    mov        eax,ebx
 005A9BFF    mov        edx,dword ptr [eax]
 005A9C01    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005A9C07    fstp       qword ptr [esp+10]
 005A9C0B    wait
 005A9C0C    mov        eax,ebx
 005A9C0E    mov        edx,dword ptr [eax]
 005A9C10    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005A9C16    fstp       qword ptr [esp+18]
 005A9C1A    wait
 005A9C1B    push       dword ptr [esp+4]
 005A9C1F    push       dword ptr [esp+4]
 005A9C23    push       dword ptr [esp+14]
 005A9C27    push       dword ptr [esp+14]
 005A9C2B    mov        ecx,ebx
 005A9C2D    xor        edx,edx
 005A9C2F    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9C32    call       005ABC08
 005A9C37    fld        qword ptr [esp+10]
 005A9C3B    fdiv       dword ptr ds:[5A9D5C]; 2:Single
 005A9C41    fadd       qword ptr [esp]
 005A9C44    add        esp,0FFFFFFF8
 005A9C47    fstp       qword ptr [esp]
 005A9C4A    wait
 005A9C4B    push       dword ptr [esp+14]
 005A9C4F    push       dword ptr [esp+14]
 005A9C53    mov        ecx,ebx
 005A9C55    mov        dl,1
 005A9C57    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9C5A    call       005ABC08
 005A9C5F    fld        qword ptr [esp]
 005A9C62    fadd       qword ptr [esp+10]
 005A9C66    add        esp,0FFFFFFF8
 005A9C69    fstp       qword ptr [esp]
 005A9C6C    wait
 005A9C6D    push       dword ptr [esp+14]
 005A9C71    push       dword ptr [esp+14]
 005A9C75    mov        ecx,ebx
 005A9C77    mov        dl,2
 005A9C79    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9C7C    call       005ABC08
 005A9C81    push       dword ptr [esp+4]
 005A9C85    push       dword ptr [esp+4]
 005A9C89    fld        qword ptr [esp+20]
 005A9C8D    fdiv       dword ptr ds:[5A9D5C]; 2:Single
 005A9C93    fadd       qword ptr [esp+10]
 005A9C97    add        esp,0FFFFFFF8
 005A9C9A    fstp       qword ptr [esp]
 005A9C9D    wait
 005A9C9E    mov        ecx,ebx
 005A9CA0    mov        dl,3
 005A9CA2    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9CA5    call       005ABC08
 005A9CAA    fld        qword ptr [esp]
 005A9CAD    fadd       qword ptr [esp+10]
 005A9CB1    add        esp,0FFFFFFF8
 005A9CB4    fstp       qword ptr [esp]
 005A9CB7    wait
 005A9CB8    fld        qword ptr [esp+20]
 005A9CBC    fdiv       dword ptr ds:[5A9D5C]; 2:Single
 005A9CC2    fadd       qword ptr [esp+10]
 005A9CC6    add        esp,0FFFFFFF8
 005A9CC9    fstp       qword ptr [esp]
 005A9CCC    wait
 005A9CCD    mov        ecx,ebx
 005A9CCF    mov        dl,4
 005A9CD1    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9CD4    call       005ABC08
 005A9CD9    push       dword ptr [esp+4]
 005A9CDD    push       dword ptr [esp+4]
 005A9CE1    fld        qword ptr [esp+10]
 005A9CE5    fadd       qword ptr [esp+20]
 005A9CE9    add        esp,0FFFFFFF8
 005A9CEC    fstp       qword ptr [esp]
 005A9CEF    wait
 005A9CF0    mov        ecx,ebx
 005A9CF2    mov        dl,5
 005A9CF4    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9CF7    call       005ABC08
 005A9CFC    fld        qword ptr [esp+10]
 005A9D00    fdiv       dword ptr ds:[5A9D5C]; 2:Single
 005A9D06    fadd       qword ptr [esp]
 005A9D09    add        esp,0FFFFFFF8
 005A9D0C    fstp       qword ptr [esp]
 005A9D0F    wait
 005A9D10    fld        qword ptr [esp+10]
 005A9D14    fadd       qword ptr [esp+20]
 005A9D18    add        esp,0FFFFFFF8
 005A9D1B    fstp       qword ptr [esp]
 005A9D1E    wait
 005A9D1F    mov        ecx,ebx
 005A9D21    mov        dl,6
 005A9D23    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9D26    call       005ABC08
 005A9D2B    fld        qword ptr [esp]
 005A9D2E    fadd       qword ptr [esp+10]
 005A9D32    add        esp,0FFFFFFF8
 005A9D35    fstp       qword ptr [esp]
 005A9D38    wait
 005A9D39    fld        qword ptr [esp+10]
 005A9D3D    fadd       qword ptr [esp+20]
 005A9D41    add        esp,0FFFFFFF8
 005A9D44    fstp       qword ptr [esp]
 005A9D47    wait
 005A9D48    mov        ecx,ebx
 005A9D4A    mov        dl,7
 005A9D4C    mov        eax,dword ptr [ebx+40]; TRaveEANBarCode.?f40:TComponent
 005A9D4F    call       005ABC08
 005A9D54    add        esp,20
 005A9D57    pop        ebx
 005A9D58    ret
*}
end;

//005A9D60
//procedure sub_005A9D60(?:?; ?:?; ?:?);
//begin
{*
 005A9D60    push       ebp
 005A9D61    mov        ebp,esp
 005A9D63    add        esp,0FFFFFFB8
 005A9D66    push       ebx
 005A9D67    push       esi
 005A9D68    push       edi
 005A9D69    mov        esi,edx
 005A9D6B    mov        edi,eax
 005A9D6D    mov        al,byte ptr [esi+4]
 005A9D70    mov        edx,eax
 005A9D72    test       dl,dl
>005A9D74    je         005A9D80
 005A9D76    sub        dl,3
>005A9D79    je         005A9D80
 005A9D7B    sub        dl,2
>005A9D7E    jne        005A9D98
 005A9D80    mov        edx,dword ptr [esi+40]
 005A9D83    mov        dword ptr [ebp-38],edx
 005A9D86    mov        edx,dword ptr [esi+44]
 005A9D89    mov        dword ptr [ebp-34],edx
 005A9D8C    fld        qword ptr [esi+30]
 005A9D8F    fadd       qword ptr [ebp+10]
 005A9D92    fstp       qword ptr [ebp-48]
 005A9D95    wait
>005A9D96    jmp        005A9DD4
 005A9D98    mov        edx,eax
 005A9D9A    sub        dl,1
>005A9D9D    je         005A9DA4
 005A9D9F    sub        dl,5
>005A9DA2    jne        005A9DBE
 005A9DA4    mov        edx,dword ptr [esi+30]
 005A9DA7    mov        dword ptr [ebp-38],edx
 005A9DAA    mov        edx,dword ptr [esi+34]
 005A9DAD    mov        dword ptr [ebp-34],edx
 005A9DB0    mov        edx,dword ptr [esi+40]
 005A9DB3    mov        dword ptr [ebp-48],edx
 005A9DB6    mov        edx,dword ptr [esi+44]
 005A9DB9    mov        dword ptr [ebp-44],edx
>005A9DBC    jmp        005A9DD4
 005A9DBE    mov        edx,dword ptr [esi+30]
 005A9DC1    mov        dword ptr [ebp-38],edx
 005A9DC4    mov        edx,dword ptr [esi+34]
 005A9DC7    mov        dword ptr [ebp-34],edx
 005A9DCA    fld        qword ptr [esi+40]
 005A9DCD    fadd       qword ptr [ebp+10]
 005A9DD0    fstp       qword ptr [ebp-48]
 005A9DD3    wait
 005A9DD4    mov        edx,eax
 005A9DD6    sub        dl,3
>005A9DD9    jae        005A9DF3
 005A9DDB    mov        eax,dword ptr [esi+48]
 005A9DDE    mov        dword ptr [ebp-30],eax
 005A9DE1    mov        eax,dword ptr [esi+4C]
 005A9DE4    mov        dword ptr [ebp-2C],eax
 005A9DE7    fld        qword ptr [esi+38]
 005A9DEA    fadd       qword ptr [ebp+8]
 005A9DED    fstp       qword ptr [ebp-40]
 005A9DF0    wait
>005A9DF1    jmp        005A9E29
 005A9DF3    add        al,0FD
 005A9DF5    sub        al,2
>005A9DF7    jae        005A9E13
 005A9DF9    mov        eax,dword ptr [esi+38]
 005A9DFC    mov        dword ptr [ebp-30],eax
 005A9DFF    mov        eax,dword ptr [esi+3C]
 005A9E02    mov        dword ptr [ebp-2C],eax
 005A9E05    mov        eax,dword ptr [esi+48]
 005A9E08    mov        dword ptr [ebp-40],eax
 005A9E0B    mov        eax,dword ptr [esi+4C]
 005A9E0E    mov        dword ptr [ebp-3C],eax
>005A9E11    jmp        005A9E29
 005A9E13    mov        eax,dword ptr [esi+38]
 005A9E16    mov        dword ptr [ebp-30],eax
 005A9E19    mov        eax,dword ptr [esi+3C]
 005A9E1C    mov        dword ptr [ebp-2C],eax
 005A9E1F    fld        qword ptr [esi+48]
 005A9E22    fadd       qword ptr [ebp+8]
 005A9E25    fstp       qword ptr [ebp-40]
 005A9E28    wait
 005A9E29    lea        ecx,[ebp-48]
 005A9E2C    lea        edx,[ebp-38]
 005A9E2F    mov        eax,dword ptr [edi]
 005A9E31    call       dword ptr [eax+16C]; TRaveEANBarCode.sub_005AABC4
 005A9E37    xor        ebx,ebx
 005A9E39    mov        al,byte ptr [esi+4]
 005A9E3C    mov        edx,eax
 005A9E3E    test       dl,dl
>005A9E40    je         005A9E4C
 005A9E42    sub        dl,3
>005A9E45    je         005A9E4C
 005A9E47    sub        dl,2
>005A9E4A    jne        005A9E5A
 005A9E4C    mov        edx,dword ptr [ebp-48]
 005A9E4F    mov        dword ptr [ebp-28],edx
 005A9E52    mov        edx,dword ptr [ebp-44]
 005A9E55    mov        dword ptr [ebp-24],edx
>005A9E58    jmp        005A9E66
 005A9E5A    mov        edx,dword ptr [ebp-38]
 005A9E5D    mov        dword ptr [ebp-28],edx
 005A9E60    mov        edx,dword ptr [ebp-34]
 005A9E63    mov        dword ptr [ebp-24],edx
 005A9E66    dec        eax
 005A9E67    sub        al,2
>005A9E69    jb         005A9E75
 005A9E6B    sub        al,1
>005A9E6D    je         005A9E75
 005A9E6F    add        al,0FE
 005A9E71    sub        al,2
>005A9E73    jae        005A9E83
 005A9E75    mov        eax,dword ptr [ebp-48]
 005A9E78    mov        dword ptr [ebp-18],eax
 005A9E7B    mov        eax,dword ptr [ebp-44]
 005A9E7E    mov        dword ptr [ebp-14],eax
>005A9E81    jmp        005A9E8F
 005A9E83    mov        eax,dword ptr [ebp-38]
 005A9E86    mov        dword ptr [ebp-18],eax
 005A9E89    mov        eax,dword ptr [ebp-34]
 005A9E8C    mov        dword ptr [ebp-14],eax
 005A9E8F    push       dword ptr [ebp-14]
 005A9E92    push       dword ptr [ebp-18]
 005A9E95    push       dword ptr [ebp-24]
 005A9E98    push       dword ptr [ebp-28]
 005A9E9B    call       005A5B24
 005A9EA0    test       al,al
>005A9EA2    je         005A9EED
 005A9EA4    mov        eax,dword ptr [ebp-18]
 005A9EA7    mov        dword ptr [ebp-8],eax
 005A9EAA    mov        eax,dword ptr [ebp-14]
 005A9EAD    mov        dword ptr [ebp-4],eax
 005A9EB0    mov        eax,dword ptr [ebp-28]
 005A9EB3    mov        dword ptr [ebp-18],eax
 005A9EB6    mov        eax,dword ptr [ebp-24]
 005A9EB9    mov        dword ptr [ebp-14],eax
 005A9EBC    mov        eax,dword ptr [ebp-8]
 005A9EBF    mov        dword ptr [ebp-28],eax
 005A9EC2    mov        eax,dword ptr [ebp-4]
 005A9EC5    mov        dword ptr [ebp-24],eax
 005A9EC8    mov        eax,dword ptr [esi+40]
 005A9ECB    mov        dword ptr [ebp-8],eax
 005A9ECE    mov        eax,dword ptr [esi+44]
 005A9ED1    mov        dword ptr [ebp-4],eax
 005A9ED4    mov        eax,dword ptr [esi+30]
 005A9ED7    mov        dword ptr [esi+40],eax
 005A9EDA    mov        eax,dword ptr [esi+34]
 005A9EDD    mov        dword ptr [esi+44],eax
 005A9EE0    mov        eax,dword ptr [ebp-8]
 005A9EE3    mov        dword ptr [esi+30],eax
 005A9EE6    mov        eax,dword ptr [ebp-4]
 005A9EE9    mov        dword ptr [esi+34],eax
 005A9EEC    inc        ebx
 005A9EED    mov        al,byte ptr [esi+4]
 005A9EF0    mov        edx,eax
 005A9EF2    sub        dl,3
>005A9EF5    jae        005A9F05
 005A9EF7    mov        edx,dword ptr [ebp-40]
 005A9EFA    mov        dword ptr [ebp-20],edx
 005A9EFD    mov        edx,dword ptr [ebp-3C]
 005A9F00    mov        dword ptr [ebp-1C],edx
>005A9F03    jmp        005A9F11
 005A9F05    mov        edx,dword ptr [ebp-30]
 005A9F08    mov        dword ptr [ebp-20],edx
 005A9F0B    mov        edx,dword ptr [ebp-2C]
 005A9F0E    mov        dword ptr [ebp-1C],edx
 005A9F11    add        al,0FD
 005A9F13    sub        al,5
>005A9F15    jae        005A9F25
 005A9F17    mov        eax,dword ptr [ebp-40]
 005A9F1A    mov        dword ptr [ebp-10],eax
 005A9F1D    mov        eax,dword ptr [ebp-3C]
 005A9F20    mov        dword ptr [ebp-0C],eax
>005A9F23    jmp        005A9F31
 005A9F25    mov        eax,dword ptr [ebp-30]
 005A9F28    mov        dword ptr [ebp-10],eax
 005A9F2B    mov        eax,dword ptr [ebp-2C]
 005A9F2E    mov        dword ptr [ebp-0C],eax
 005A9F31    push       dword ptr [ebp-0C]
 005A9F34    push       dword ptr [ebp-10]
 005A9F37    push       dword ptr [ebp-1C]
 005A9F3A    push       dword ptr [ebp-20]
 005A9F3D    call       005A5B24
 005A9F42    test       al,al
>005A9F44    je         005A9F91
 005A9F46    mov        eax,dword ptr [ebp-10]
 005A9F49    mov        dword ptr [ebp-8],eax
 005A9F4C    mov        eax,dword ptr [ebp-0C]
 005A9F4F    mov        dword ptr [ebp-4],eax
 005A9F52    mov        eax,dword ptr [ebp-20]
 005A9F55    mov        dword ptr [ebp-10],eax
 005A9F58    mov        eax,dword ptr [ebp-1C]
 005A9F5B    mov        dword ptr [ebp-0C],eax
 005A9F5E    mov        eax,dword ptr [ebp-8]
 005A9F61    mov        dword ptr [ebp-20],eax
 005A9F64    mov        eax,dword ptr [ebp-4]
 005A9F67    mov        dword ptr [ebp-1C],eax
 005A9F6A    mov        eax,dword ptr [esi+48]
 005A9F6D    mov        dword ptr [ebp-8],eax
 005A9F70    mov        eax,dword ptr [esi+4C]
 005A9F73    mov        dword ptr [ebp-4],eax
 005A9F76    mov        eax,dword ptr [esi+38]
 005A9F79    mov        dword ptr [esi+48],eax
 005A9F7C    mov        eax,dword ptr [esi+3C]
 005A9F7F    mov        dword ptr [esi+4C],eax
 005A9F82    mov        eax,dword ptr [ebp-8]
 005A9F85    mov        dword ptr [esi+38],eax
 005A9F88    mov        eax,dword ptr [ebp-4]
 005A9F8B    mov        dword ptr [esi+3C],eax
 005A9F8E    add        bl,2
 005A9F91    test       bl,bl
>005A9F93    jbe        005A9FB5
 005A9F95    xor        eax,eax
 005A9F97    mov        al,byte ptr [esi+4]
 005A9F9A    xor        edx,edx
 005A9F9C    mov        dl,bl
 005A9F9E    lea        edx,[edx*8+6171EC]
 005A9FA5    mov        bl,byte ptr [edx+eax-8]
 005A9FA9    mov        eax,dword ptr [edi+40]; TRaveEANBarCode.?f40:TComponent
 005A9FAC    mov        ecx,ebx
 005A9FAE    mov        edx,esi
 005A9FB0    call       005ABC34
 005A9FB5    lea        edx,[ebp-28]
 005A9FB8    mov        eax,edi
 005A9FBA    call       005AA190
 005A9FBF    pop        edi
 005A9FC0    pop        esi
 005A9FC1    pop        ebx
 005A9FC2    mov        esp,ebp
 005A9FC4    pop        ebp
 005A9FC5    ret        10
*}
//end;

//005A9FC8
//function sub_005A9FC8(?:?):?;
//begin
{*
 005A9FC8    push       ebx
 005A9FC9    push       esi
 005A9FCA    push       edi
 005A9FCB    add        esp,0FFFFFFC0
 005A9FCE    mov        esi,edx
 005A9FD0    lea        edi,[esp]
 005A9FD3    movs       dword ptr [edi],dword ptr [esi]
 005A9FD4    movs       dword ptr [edi],dword ptr [esi]
 005A9FD5    movs       dword ptr [edi],dword ptr [esi]
 005A9FD6    movs       dword ptr [edi],dword ptr [esi]
 005A9FD7    mov        ebx,eax
 005A9FD9    cmp        byte ptr [ebx+3C],0; TRaveControl.?f3C:byte
>005A9FDD    je         005AA01B
 005A9FDF    lea        ecx,[esp+10]
 005A9FE3    mov        edx,esp
 005A9FE5    mov        eax,ebx
 005A9FE7    call       005AAE8C
 005A9FEC    lea        eax,[esp+10]
 005A9FF0    push       eax
 005A9FF1    lea        edx,[esp+24]
 005A9FF5    mov        eax,ebx
 005A9FF7    call       005AA2D8
 005A9FFC    lea        eax,[esp+24]
 005AA000    pop        edx
 005AA001    call       005A5BEC
 005AA006    test       al,al
>005AA008    je         005AA01B
 005AA00A    mov        edx,ebx
 005AA00C    mov        eax,dword ptr [ebx+38]; TRaveControl.?f38:dword
 005AA00F    mov        ecx,dword ptr [eax]
 005AA011    call       dword ptr [ecx+0C0]
 005AA017    test       al,al
>005AA019    jne        005AA01F
 005AA01B    xor        eax,eax
>005AA01D    jmp        005AA021
 005AA01F    mov        al,1
 005AA021    add        esp,40
 005AA024    pop        edi
 005AA025    pop        esi
 005AA026    pop        ebx
 005AA027    ret
*}
//end;

//005AA028
//procedure sub_005AA028(?:?);
//begin
{*
 005AA028    push       ebx
 005AA029    push       esi
 005AA02A    push       edi
 005AA02B    add        esp,0FFFFFF70
 005AA031    mov        esi,edx
 005AA033    lea        edi,[esp]
 005AA036    mov        ecx,8
 005AA03B    rep movs   dword ptr [edi],dword ptr [esi]
 005AA03D    mov        ebx,eax
 005AA03F    lea        ecx,[esp+60]
 005AA043    mov        edx,esp
 005AA045    mov        eax,ebx
 005AA047    call       005AAE8C
 005AA04C    lea        esi,[esp+60]
 005AA050    lea        edi,[esp+40]
 005AA054    movs       dword ptr [edi],dword ptr [esi]
 005AA055    movs       dword ptr [edi],dword ptr [esi]
 005AA056    movs       dword ptr [edi],dword ptr [esi]
 005AA057    movs       dword ptr [edi],dword ptr [esi]
 005AA058    lea        ecx,[esp+60]
 005AA05C    lea        edx,[esp+10]
 005AA060    mov        eax,ebx
 005AA062    call       005AAE8C
 005AA067    lea        esi,[esp+60]
 005AA06B    lea        edi,[esp+50]
 005AA06F    movs       dword ptr [edi],dword ptr [esi]
 005AA070    movs       dword ptr [edi],dword ptr [esi]
 005AA071    movs       dword ptr [edi],dword ptr [esi]
 005AA072    movs       dword ptr [edi],dword ptr [esi]
 005AA073    cmp        byte ptr [ebx+3C],0; TRaveEANBarCode.?f3C:byte
>005AA077    je         005AA0AA
 005AA079    lea        edx,[esp+70]
 005AA07D    mov        eax,ebx
 005AA07F    call       005AA2D8
 005AA084    lea        ecx,[esp+70]
 005AA088    lea        eax,[esp+20]
 005AA08C    lea        edx,[esp+40]
 005AA090    call       005A5C78
 005AA095    test       al,al
>005AA097    je         005AA0AA
 005AA099    mov        edx,ebx
 005AA09B    mov        eax,dword ptr [ebx+38]; TRaveEANBarCode.?f38:dword
 005AA09E    mov        ecx,dword ptr [eax]
 005AA0A0    call       dword ptr [ecx+0C0]
 005AA0A6    test       al,al
>005AA0A8    jne        005AA0AE
 005AA0AA    xor        eax,eax
>005AA0AC    jmp        005AA0B0
 005AA0AE    mov        al,1
 005AA0B0    add        esp,90
 005AA0B6    pop        edi
 005AA0B7    pop        esi
 005AA0B8    pop        ebx
 005AA0B9    ret
*}
//end;

//005AA0BC
//function sub_005AA0BC(?:TRaveControl; ?:?):?;
//begin
{*
 005AA0BC    push       ebx
 005AA0BD    push       esi
 005AA0BE    push       edi
 005AA0BF    mov        edi,edx
 005AA0C1    mov        ebx,eax
 005AA0C3    push       1
 005AA0C5    push       1
 005AA0C7    push       0
 005AA0C9    push       0
 005AA0CB    call       gdi32.CreateRectRgn
 005AA0D0    mov        esi,eax
 005AA0D2    push       esi
 005AA0D3    mov        eax,edi
 005AA0D5    call       TCanvas.GetHandle
 005AA0DA    push       eax
 005AA0DB    call       gdi32.GetClipRgn
 005AA0E0    test       eax,eax
>005AA0E2    jg         005AA0EC
 005AA0E4    push       esi
 005AA0E5    call       gdi32.DeleteObject
 005AA0EA    xor        esi,esi
 005AA0EC    mov        eax,ebx
 005AA0EE    mov        edx,dword ptr [eax]
 005AA0F0    call       dword ptr [edx+68]; TRaveControl.sub_005A9770
 005AA0F3    add        esp,0FFFFFFF8
 005AA0F6    fstp       qword ptr [esp]
 005AA0F9    wait
 005AA0FA    mov        eax,ebx
 005AA0FC    call       005AAE30
 005AA101    inc        eax
 005AA102    push       eax
 005AA103    mov        eax,ebx
 005AA105    mov        edx,dword ptr [eax]
 005AA107    call       dword ptr [edx+64]; TRaveControl.sub_005A9744
 005AA10A    add        esp,0FFFFFFF8
 005AA10D    fstp       qword ptr [esp]
 005AA110    wait
 005AA111    mov        eax,ebx
 005AA113    call       005AAE14
 005AA118    inc        eax
 005AA119    push       eax
 005AA11A    mov        eax,ebx
 005AA11C    mov        edx,dword ptr [eax]
 005AA11E    call       dword ptr [edx+60]; TRaveControl.sub_005A970C
 005AA121    add        esp,0FFFFFFF8
 005AA124    fstp       qword ptr [esp]
 005AA127    wait
 005AA128    mov        eax,ebx
 005AA12A    call       005AAE30
 005AA12F    push       eax
 005AA130    mov        eax,ebx
 005AA132    mov        edx,dword ptr [eax]
 005AA134    call       dword ptr [edx+5C]; TRaveControl.sub_005A96D4
 005AA137    add        esp,0FFFFFFF8
 005AA13A    fstp       qword ptr [esp]
 005AA13D    wait
 005AA13E    mov        eax,ebx
 005AA140    call       005AAE14
 005AA145    push       eax
 005AA146    call       gdi32.CreateRectRgn
 005AA14B    mov        ebx,eax
 005AA14D    push       1
 005AA14F    push       ebx
 005AA150    mov        eax,edi
 005AA152    call       TCanvas.GetHandle
 005AA157    push       eax
 005AA158    call       gdi32.ExtSelectClipRgn
 005AA15D    push       ebx
 005AA15E    call       gdi32.DeleteObject
 005AA163    mov        eax,esi
 005AA165    pop        edi
 005AA166    pop        esi
 005AA167    pop        ebx
 005AA168    ret
*}
//end;

//005AA16C
//procedure sub_005AA16C(?:TRaveControl; ?:?; ?:?);
//begin
{*
 005AA16C    push       ebx
 005AA16D    push       esi
 005AA16E    mov        ebx,ecx
 005AA170    mov        esi,edx
 005AA172    push       ebx
 005AA173    mov        eax,esi
 005AA175    call       TCanvas.GetHandle
 005AA17A    push       eax
 005AA17B    call       gdi32.SelectClipRgn
 005AA180    test       ebx,ebx
>005AA182    je         005AA18A
 005AA184    push       ebx
 005AA185    call       gdi32.DeleteObject
 005AA18A    pop        esi
 005AA18B    pop        ebx
 005AA18C    ret
*}
//end;

//005AA190
//procedure sub_005AA190(?:TRaveControl; ?:?Double);
//begin
{*
 005AA190    push       ebp
 005AA191    mov        ebp,esp
 005AA193    add        esp,0FFFFFFC8
 005AA196    push       ebx
 005AA197    push       esi
 005AA198    push       edi
 005AA199    mov        esi,edx
 005AA19B    lea        edi,[ebp-38]
 005AA19E    mov        ecx,8
 005AA1A3    rep movs   dword ptr [edi],dword ptr [esi]
 005AA1A5    mov        dword ptr [ebp-4],eax
 005AA1A8    mov        eax,dword ptr [ebp-4]
 005AA1AB    mov        byte ptr [eax+0E2],1; TRaveEANBarCode.?fE2:byte
 005AA1B2    xor        eax,eax
 005AA1B4    push       ebp
 005AA1B5    push       5AA248
 005AA1BA    push       dword ptr fs:[eax]
 005AA1BD    mov        dword ptr fs:[eax],esp
 005AA1C0    push       dword ptr [ebp-34]
 005AA1C3    push       dword ptr [ebp-38]
 005AA1C6    mov        eax,dword ptr [ebp-4]
 005AA1C9    mov        edx,dword ptr [eax]
 005AA1CB    call       dword ptr [edx+130]; TRaveBaseBarCode.SetLeft
 005AA1D1    push       dword ptr [ebp-2C]
 005AA1D4    push       dword ptr [ebp-30]
 005AA1D7    mov        eax,dword ptr [ebp-4]
 005AA1DA    mov        edx,dword ptr [eax]
 005AA1DC    call       dword ptr [edx+138]; TRaveBaseBarCode.SetTop
 005AA1E2    mov        eax,dword ptr [ebp-4]
 005AA1E5    mov        edx,dword ptr [eax]
 005AA1E7    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005AA1ED    fstp       qword ptr [ebp-10]
 005AA1F0    wait
 005AA1F1    fld        qword ptr [ebp-28]
 005AA1F4    fsub       qword ptr [ebp-38]
 005AA1F7    add        esp,0FFFFFFF8
 005AA1FA    fstp       qword ptr [esp]
 005AA1FD    wait
 005AA1FE    mov        eax,dword ptr [ebp-4]
 005AA201    mov        edx,dword ptr [eax]
 005AA203    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
 005AA209    mov        eax,dword ptr [ebp-4]
 005AA20C    mov        edx,dword ptr [eax]
 005AA20E    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AA214    fstp       qword ptr [ebp-18]
 005AA217    wait
 005AA218    fld        qword ptr [ebp-20]
 005AA21B    fsub       qword ptr [ebp-30]
 005AA21E    add        esp,0FFFFFFF8
 005AA221    fstp       qword ptr [esp]
 005AA224    wait
 005AA225    mov        eax,dword ptr [ebp-4]
 005AA228    mov        edx,dword ptr [eax]
 005AA22A    call       dword ptr [edx+148]; TRaveBaseBarCode.SetHeight
 005AA230    xor        eax,eax
 005AA232    pop        edx
 005AA233    pop        ecx
 005AA234    pop        ecx
 005AA235    mov        dword ptr fs:[eax],edx
 005AA238    push       5AA24F
 005AA23D    mov        eax,dword ptr [ebp-4]
 005AA240    mov        byte ptr [eax+0E2],0; TRaveEANBarCode.?fE2:byte
 005AA247    ret
<005AA248    jmp        @HandleFinally
<005AA24D    jmp        005AA23D
 005AA24F    push       dword ptr [ebp-0C]
 005AA252    push       dword ptr [ebp-10]
 005AA255    mov        eax,dword ptr [ebp-4]
 005AA258    mov        edx,dword ptr [eax]
 005AA25A    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005AA260    add        esp,0FFFFFFF8
 005AA263    fstp       qword ptr [esp]
 005AA266    wait
 005AA267    push       dword ptr [ebp-14]
 005AA26A    push       dword ptr [ebp-18]
 005AA26D    mov        eax,dword ptr [ebp-4]
 005AA270    mov        edx,dword ptr [eax]
 005AA272    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AA278    add        esp,0FFFFFFF8
 005AA27B    fstp       qword ptr [esp]
 005AA27E    wait
 005AA27F    push       dword ptr [ebp-14]
 005AA282    push       dword ptr [ebp-18]
 005AA285    mov        eax,dword ptr [ebp-4]
 005AA288    mov        edx,dword ptr [eax]
 005AA28A    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AA290    add        esp,0FFFFFFF8
 005AA293    fstp       qword ptr [esp]
 005AA296    wait
 005AA297    call       005A5B40
 005AA29C    push       eax
 005AA29D    push       dword ptr [ebp-0C]
 005AA2A0    push       dword ptr [ebp-10]
 005AA2A3    mov        eax,dword ptr [ebp-4]
 005AA2A6    mov        edx,dword ptr [eax]
 005AA2A8    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005AA2AE    add        esp,0FFFFFFF8
 005AA2B1    fstp       qword ptr [esp]
 005AA2B4    wait
 005AA2B5    call       005A5B40
 005AA2BA    mov        edx,eax
 005AA2BC    mov        eax,dword ptr [ebp-4]
 005AA2BF    pop        ecx
 005AA2C0    mov        ebx,dword ptr [eax]
 005AA2C2    call       dword ptr [ebx+128]; TRaveEANBarCode.sub_005AA7F8
 005AA2C8    mov        eax,dword ptr [ebp-4]
 005AA2CB    call       005AA880
 005AA2D0    pop        edi
 005AA2D1    pop        esi
 005AA2D2    pop        ebx
 005AA2D3    mov        esp,ebp
 005AA2D5    pop        ebp
 005AA2D6    ret
*}
//end;

//005AA2D8
//procedure sub_005AA2D8(?:TRaveControl; ?:?Double);
//begin
{*
 005AA2D8    push       ebx
 005AA2D9    push       esi
 005AA2DA    mov        esi,edx
 005AA2DC    mov        ebx,eax
 005AA2DE    mov        eax,ebx
 005AA2E0    mov        edx,dword ptr [eax]
 005AA2E2    call       dword ptr [edx+12C]; TRaveText.GetLeft
 005AA2E8    fstp       qword ptr [esi]
 005AA2EA    wait
 005AA2EB    mov        eax,ebx
 005AA2ED    mov        edx,dword ptr [eax]
 005AA2EF    call       dword ptr [edx+134]; TRaveText.GetTop
 005AA2F5    fstp       qword ptr [esi+8]
 005AA2F8    wait
 005AA2F9    mov        eax,ebx
 005AA2FB    call       005A95B4
 005AA300    fstp       qword ptr [esi+10]
 005AA303    wait
 005AA304    mov        eax,ebx
 005AA306    call       TRaveBaseBarCode.GetBottom
 005AA30B    fstp       qword ptr [esi+18]
 005AA30E    wait
 005AA30F    pop        esi
 005AA310    pop        ebx
 005AA311    ret
*}
//end;

//005AA314
//procedure sub_005AA314(?:?; ?:?);
//begin
{*
 005AA314    push       ebp
 005AA315    mov        ebp,esp
 005AA317    add        esp,0FFFFFFC8
 005AA31A    push       ebx
 005AA31B    push       esi
 005AA31C    push       edi
 005AA31D    mov        esi,ecx
 005AA31F    lea        edi,[ebp-38]
 005AA322    movs       dword ptr [edi],dword ptr [esi]
 005AA323    movs       dword ptr [edi],dword ptr [esi]
 005AA324    movs       dword ptr [edi],dword ptr [esi]
 005AA325    movs       dword ptr [edi],dword ptr [esi]
 005AA326    mov        esi,edx
 005AA328    lea        edi,[ebp-28]
 005AA32B    movs       dword ptr [edi],dword ptr [esi]
 005AA32C    movs       dword ptr [edi],dword ptr [esi]
 005AA32D    movs       dword ptr [edi],dword ptr [esi]
 005AA32E    movs       dword ptr [edi],dword ptr [esi]
 005AA32F    mov        dword ptr [ebp-4],eax
 005AA332    lea        ecx,[ebp-38]
 005AA335    lea        edx,[ebp-28]
 005AA338    mov        eax,dword ptr [ebp-4]
 005AA33B    mov        eax,dword ptr [eax]
 005AA33D    call       dword ptr [eax+16C]; TRaveEANBarCode.sub_005AABC4
 005AA343    mov        eax,dword ptr [ebp-4]
 005AA346    mov        byte ptr [eax+0E2],1; TRaveEANBarCode.?fE2:byte
 005AA34D    xor        eax,eax
 005AA34F    push       ebp
 005AA350    push       5AA40B
 005AA355    push       dword ptr fs:[eax]
 005AA358    mov        dword ptr fs:[eax],esp
 005AA35B    push       dword ptr [ebp-24]
 005AA35E    push       dword ptr [ebp-28]
 005AA361    push       dword ptr [ebp-34]
 005AA364    push       dword ptr [ebp-38]
 005AA367    call       005A5A84
 005AA36C    add        esp,0FFFFFFF8
 005AA36F    fstp       qword ptr [esp]
 005AA372    wait
 005AA373    mov        eax,dword ptr [ebp-4]
 005AA376    mov        edx,dword ptr [eax]
 005AA378    call       dword ptr [edx+130]; TRaveBaseBarCode.SetLeft
 005AA37E    push       dword ptr [ebp-1C]
 005AA381    push       dword ptr [ebp-20]
 005AA384    push       dword ptr [ebp-2C]
 005AA387    push       dword ptr [ebp-30]
 005AA38A    call       005A5A84
 005AA38F    add        esp,0FFFFFFF8
 005AA392    fstp       qword ptr [esp]
 005AA395    wait
 005AA396    mov        eax,dword ptr [ebp-4]
 005AA399    mov        edx,dword ptr [eax]
 005AA39B    call       dword ptr [edx+138]; TRaveBaseBarCode.SetTop
 005AA3A1    mov        eax,dword ptr [ebp-4]
 005AA3A4    mov        edx,dword ptr [eax]
 005AA3A6    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005AA3AC    fstp       qword ptr [ebp-10]
 005AA3AF    wait
 005AA3B0    fld        qword ptr [ebp-28]
 005AA3B3    fsub       qword ptr [ebp-38]
 005AA3B6    fabs
 005AA3B8    add        esp,0FFFFFFF8
 005AA3BB    fstp       qword ptr [esp]
 005AA3BE    wait
 005AA3BF    mov        eax,dword ptr [ebp-4]
 005AA3C2    mov        edx,dword ptr [eax]
 005AA3C4    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
 005AA3CA    mov        eax,dword ptr [ebp-4]
 005AA3CD    mov        edx,dword ptr [eax]
 005AA3CF    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AA3D5    fstp       qword ptr [ebp-18]
 005AA3D8    wait
 005AA3D9    fld        qword ptr [ebp-20]
 005AA3DC    fsub       qword ptr [ebp-30]
 005AA3DF    fabs
 005AA3E1    add        esp,0FFFFFFF8
 005AA3E4    fstp       qword ptr [esp]
 005AA3E7    wait
 005AA3E8    mov        eax,dword ptr [ebp-4]
 005AA3EB    mov        edx,dword ptr [eax]
 005AA3ED    call       dword ptr [edx+148]; TRaveBaseBarCode.SetHeight
 005AA3F3    xor        eax,eax
 005AA3F5    pop        edx
 005AA3F6    pop        ecx
 005AA3F7    pop        ecx
 005AA3F8    mov        dword ptr fs:[eax],edx
 005AA3FB    push       5AA412
 005AA400    mov        eax,dword ptr [ebp-4]
 005AA403    mov        byte ptr [eax+0E2],0; TRaveEANBarCode.?fE2:byte
 005AA40A    ret
<005AA40B    jmp        @HandleFinally
<005AA410    jmp        005AA400
 005AA412    push       dword ptr [ebp-0C]
 005AA415    push       dword ptr [ebp-10]
 005AA418    mov        eax,dword ptr [ebp-4]
 005AA41B    mov        edx,dword ptr [eax]
 005AA41D    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005AA423    add        esp,0FFFFFFF8
 005AA426    fstp       qword ptr [esp]
 005AA429    wait
 005AA42A    push       dword ptr [ebp-14]
 005AA42D    push       dword ptr [ebp-18]
 005AA430    mov        eax,dword ptr [ebp-4]
 005AA433    mov        edx,dword ptr [eax]
 005AA435    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AA43B    add        esp,0FFFFFFF8
 005AA43E    fstp       qword ptr [esp]
 005AA441    wait
 005AA442    push       dword ptr [ebp-14]
 005AA445    push       dword ptr [ebp-18]
 005AA448    mov        eax,dword ptr [ebp-4]
 005AA44B    mov        edx,dword ptr [eax]
 005AA44D    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AA453    add        esp,0FFFFFFF8
 005AA456    fstp       qword ptr [esp]
 005AA459    wait
 005AA45A    call       005A5B40
 005AA45F    push       eax
 005AA460    push       dword ptr [ebp-0C]
 005AA463    push       dword ptr [ebp-10]
 005AA466    mov        eax,dword ptr [ebp-4]
 005AA469    mov        edx,dword ptr [eax]
 005AA46B    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005AA471    add        esp,0FFFFFFF8
 005AA474    fstp       qword ptr [esp]
 005AA477    wait
 005AA478    call       005A5B40
 005AA47D    mov        edx,eax
 005AA47F    mov        eax,dword ptr [ebp-4]
 005AA482    pop        ecx
 005AA483    mov        ebx,dword ptr [eax]
 005AA485    call       dword ptr [ebx+128]; TRaveEANBarCode.sub_005AA7F8
 005AA48B    mov        eax,dword ptr [ebp-4]
 005AA48E    call       005AA880
 005AA493    pop        edi
 005AA494    pop        esi
 005AA495    pop        ebx
 005AA496    mov        esp,ebp
 005AA498    pop        ebp
 005AA499    ret
*}
//end;

//005AA49C
//procedure sub_005AA49C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005AA49C    push       ebp
 005AA49D    mov        ebp,esp
 005AA49F    add        esp,0FFFFFFE4
 005AA4A2    push       ebx
 005AA4A3    push       esi
 005AA4A4    push       edi
 005AA4A5    mov        byte ptr [ebp-2],cl
 005AA4A8    mov        byte ptr [ebp-1],dl
 005AA4AB    mov        esi,eax
 005AA4AD    mov        edi,dword ptr [esi+5C]; TRaveEANBarCode.Mirror:TRaveControl
 005AA4B0    test       edi,edi
>005AA4B2    je         005AA4E1
 005AA4B4    push       dword ptr [ebp+24]
 005AA4B7    push       dword ptr [ebp+20]
 005AA4BA    push       dword ptr [ebp+1C]
 005AA4BD    push       dword ptr [ebp+18]
 005AA4C0    push       dword ptr [ebp+14]
 005AA4C3    push       dword ptr [ebp+10]
 005AA4C6    push       dword ptr [ebp+0C]
 005AA4C9    push       dword ptr [ebp+8]
 005AA4CC    mov        cl,byte ptr [ebp-2]
 005AA4CF    mov        dl,byte ptr [ebp-1]
 005AA4D2    mov        eax,edi
 005AA4D4    mov        ebx,dword ptr [eax]
 005AA4D6    call       dword ptr [ebx+124]; TRaveControl.sub_005AA49C
>005AA4DC    jmp        005AA7EB
 005AA4E1    cmp        byte ptr [ebp-1],0
>005AA4E5    je         005AA666
 005AA4EB    mov        eax,esi
 005AA4ED    call       005A9A40
 005AA4F2    and        eax,7F
 005AA4F5    cmp        eax,5
>005AA4F8    ja         005AA666
 005AA4FE    jmp        dword ptr [eax*4+5AA505]
 005AA4FE    dd         5AA666
 005AA4FE    dd         5AA522
 005AA4FE    dd         5AA54A
 005AA4FE    dd         5AA578
 005AA4FE    dd         5AA5A0
 005AA4FE    dd         5AA5FF
>005AA51D    jmp        005AA666
 005AA522    mov        eax,esi
 005AA524    mov        edx,dword ptr [eax]
 005AA526    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005AA52C    fld        qword ptr [ebp+18]
 005AA52F    fsub       qword ptr [ebp+20]
 005AA532    faddp      st(1),st
 005AA534    add        esp,0FFFFFFF8
 005AA537    fstp       qword ptr [esp]
 005AA53A    wait
 005AA53B    mov        eax,esi
 005AA53D    mov        edx,dword ptr [eax]
 005AA53F    call       dword ptr [edx+130]; TRaveBaseBarCode.SetLeft
>005AA545    jmp        005AA666
 005AA54A    mov        eax,esi
 005AA54C    mov        edx,dword ptr [eax]
 005AA54E    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005AA554    fld        qword ptr [ebp+18]
 005AA557    fsub       qword ptr [ebp+20]
 005AA55A    fdiv       dword ptr ds:[5AA7F4]; 2:Single
 005AA560    faddp      st(1),st
 005AA562    add        esp,0FFFFFFF8
 005AA565    fstp       qword ptr [esp]
 005AA568    wait
 005AA569    mov        eax,esi
 005AA56B    mov        edx,dword ptr [eax]
 005AA56D    call       dword ptr [edx+130]; TRaveBaseBarCode.SetLeft
>005AA573    jmp        005AA666
 005AA578    mov        eax,esi
 005AA57A    mov        edx,dword ptr [eax]
 005AA57C    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005AA582    fld        qword ptr [ebp+18]
 005AA585    fsub       qword ptr [ebp+20]
 005AA588    faddp      st(1),st
 005AA58A    add        esp,0FFFFFFF8
 005AA58D    fstp       qword ptr [esp]
 005AA590    wait
 005AA591    mov        eax,esi
 005AA593    mov        edx,dword ptr [eax]
 005AA595    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
>005AA59B    jmp        005AA666
 005AA5A0    push       dword ptr [ebp+24]
 005AA5A3    push       dword ptr [ebp+20]
 005AA5A6    push       0
 005AA5A8    push       0
 005AA5AA    call       005A5AEC
 005AA5AF    test       al,al
>005AA5B1    jne        005AA666
 005AA5B7    mov        eax,esi
 005AA5B9    mov        edx,dword ptr [eax]
 005AA5BB    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005AA5C1    fld        qword ptr [ebp+18]
 005AA5C4    fdiv       qword ptr [ebp+20]
 005AA5C7    fmulp      st(1),st
 005AA5C9    add        esp,0FFFFFFF8
 005AA5CC    fstp       qword ptr [esp]
 005AA5CF    wait
 005AA5D0    mov        eax,esi
 005AA5D2    mov        edx,dword ptr [eax]
 005AA5D4    call       dword ptr [edx+130]; TRaveBaseBarCode.SetLeft
 005AA5DA    mov        eax,esi
 005AA5DC    mov        edx,dword ptr [eax]
 005AA5DE    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005AA5E4    fld        qword ptr [ebp+18]
 005AA5E7    fdiv       qword ptr [ebp+20]
 005AA5EA    fmulp      st(1),st
 005AA5EC    add        esp,0FFFFFFF8
 005AA5EF    fstp       qword ptr [esp]
 005AA5F2    wait
 005AA5F3    mov        eax,esi
 005AA5F5    mov        edx,dword ptr [eax]
 005AA5F7    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
>005AA5FD    jmp        005AA666
 005AA5FF    push       dword ptr [ebp+24]
 005AA602    push       dword ptr [ebp+20]
 005AA605    mov        eax,esi
 005AA607    mov        edx,dword ptr [eax]
 005AA609    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005AA60F    add        esp,0FFFFFFF8
 005AA612    fstp       qword ptr [esp]
 005AA615    wait
 005AA616    call       005A5AEC
 005AA61B    test       al,al
>005AA61D    jne        005AA666
 005AA61F    mov        eax,esi
 005AA621    mov        edx,dword ptr [eax]
 005AA623    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005AA629    fsubr      qword ptr [ebp+18]
 005AA62C    fstp       tbyte ptr [ebp-10]
 005AA62F    wait
 005AA630    mov        eax,esi
 005AA632    mov        edx,dword ptr [eax]
 005AA634    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005AA63A    fld        tbyte ptr [ebp-10]
 005AA63D    fmulp      st(1),st
 005AA63F    fstp       tbyte ptr [ebp-1C]
 005AA642    wait
 005AA643    mov        eax,esi
 005AA645    mov        edx,dword ptr [eax]
 005AA647    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005AA64D    fsubr      qword ptr [ebp+20]
 005AA650    fld        tbyte ptr [ebp-1C]
 005AA653    fdivrp     st(1),st
 005AA655    add        esp,0FFFFFFF8
 005AA658    fstp       qword ptr [esp]
 005AA65B    wait
 005AA65C    mov        eax,esi
 005AA65E    mov        edx,dword ptr [eax]
 005AA660    call       dword ptr [edx+130]; TRaveBaseBarCode.SetLeft
 005AA666    cmp        byte ptr [ebp-2],0
>005AA66A    je         005AA7EB
 005AA670    mov        eax,esi
 005AA672    call       005A9A34
 005AA677    and        eax,7F
 005AA67A    cmp        eax,5
>005AA67D    ja         005AA7EB
 005AA683    jmp        dword ptr [eax*4+5AA68A]
 005AA683    dd         5AA7EB
 005AA683    dd         5AA6A7
 005AA683    dd         5AA6CF
 005AA683    dd         5AA6FD
 005AA683    dd         5AA725
 005AA683    dd         5AA784
>005AA6A2    jmp        005AA7EB
 005AA6A7    mov        eax,esi
 005AA6A9    mov        edx,dword ptr [eax]
 005AA6AB    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005AA6B1    fld        qword ptr [ebp+8]
 005AA6B4    fsub       qword ptr [ebp+10]
 005AA6B7    faddp      st(1),st
 005AA6B9    add        esp,0FFFFFFF8
 005AA6BC    fstp       qword ptr [esp]
 005AA6BF    wait
 005AA6C0    mov        eax,esi
 005AA6C2    mov        edx,dword ptr [eax]
 005AA6C4    call       dword ptr [edx+138]; TRaveBaseBarCode.SetTop
>005AA6CA    jmp        005AA7EB
 005AA6CF    mov        eax,esi
 005AA6D1    mov        edx,dword ptr [eax]
 005AA6D3    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005AA6D9    fld        qword ptr [ebp+8]
 005AA6DC    fsub       qword ptr [ebp+10]
 005AA6DF    fdiv       dword ptr ds:[5AA7F4]; 2:Single
 005AA6E5    faddp      st(1),st
 005AA6E7    add        esp,0FFFFFFF8
 005AA6EA    fstp       qword ptr [esp]
 005AA6ED    wait
 005AA6EE    mov        eax,esi
 005AA6F0    mov        edx,dword ptr [eax]
 005AA6F2    call       dword ptr [edx+138]; TRaveBaseBarCode.SetTop
>005AA6F8    jmp        005AA7EB
 005AA6FD    mov        eax,esi
 005AA6FF    mov        edx,dword ptr [eax]
 005AA701    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AA707    fld        qword ptr [ebp+8]
 005AA70A    fsub       qword ptr [ebp+10]
 005AA70D    faddp      st(1),st
 005AA70F    add        esp,0FFFFFFF8
 005AA712    fstp       qword ptr [esp]
 005AA715    wait
 005AA716    mov        eax,esi
 005AA718    mov        edx,dword ptr [eax]
 005AA71A    call       dword ptr [edx+148]; TRaveBaseBarCode.SetHeight
>005AA720    jmp        005AA7EB
 005AA725    push       dword ptr [ebp+14]
 005AA728    push       dword ptr [ebp+10]
 005AA72B    push       0
 005AA72D    push       0
 005AA72F    call       005A5AEC
 005AA734    test       al,al
>005AA736    jne        005AA7EB
 005AA73C    mov        eax,esi
 005AA73E    mov        edx,dword ptr [eax]
 005AA740    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005AA746    fld        qword ptr [ebp+8]
 005AA749    fdiv       qword ptr [ebp+10]
 005AA74C    fmulp      st(1),st
 005AA74E    add        esp,0FFFFFFF8
 005AA751    fstp       qword ptr [esp]
 005AA754    wait
 005AA755    mov        eax,esi
 005AA757    mov        edx,dword ptr [eax]
 005AA759    call       dword ptr [edx+138]; TRaveBaseBarCode.SetTop
 005AA75F    mov        eax,esi
 005AA761    mov        edx,dword ptr [eax]
 005AA763    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AA769    fld        qword ptr [ebp+8]
 005AA76C    fdiv       qword ptr [ebp+10]
 005AA76F    fmulp      st(1),st
 005AA771    add        esp,0FFFFFFF8
 005AA774    fstp       qword ptr [esp]
 005AA777    wait
 005AA778    mov        eax,esi
 005AA77A    mov        edx,dword ptr [eax]
 005AA77C    call       dword ptr [edx+148]; TRaveBaseBarCode.SetHeight
>005AA782    jmp        005AA7EB
 005AA784    push       dword ptr [ebp+14]
 005AA787    push       dword ptr [ebp+10]
 005AA78A    mov        eax,esi
 005AA78C    mov        edx,dword ptr [eax]
 005AA78E    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AA794    add        esp,0FFFFFFF8
 005AA797    fstp       qword ptr [esp]
 005AA79A    wait
 005AA79B    call       005A5AEC
 005AA7A0    test       al,al
>005AA7A2    jne        005AA7EB
 005AA7A4    mov        eax,esi
 005AA7A6    mov        edx,dword ptr [eax]
 005AA7A8    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AA7AE    fsubr      qword ptr [ebp+8]
 005AA7B1    fstp       tbyte ptr [ebp-10]
 005AA7B4    wait
 005AA7B5    mov        eax,esi
 005AA7B7    mov        edx,dword ptr [eax]
 005AA7B9    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005AA7BF    fld        tbyte ptr [ebp-10]
 005AA7C2    fmulp      st(1),st
 005AA7C4    fstp       tbyte ptr [ebp-1C]
 005AA7C7    wait
 005AA7C8    mov        eax,esi
 005AA7CA    mov        edx,dword ptr [eax]
 005AA7CC    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AA7D2    fsubr      qword ptr [ebp+10]
 005AA7D5    fld        tbyte ptr [ebp-1C]
 005AA7D8    fdivrp     st(1),st
 005AA7DA    add        esp,0FFFFFFF8
 005AA7DD    fstp       qword ptr [esp]
 005AA7E0    wait
 005AA7E1    mov        eax,esi
 005AA7E3    mov        edx,dword ptr [eax]
 005AA7E5    call       dword ptr [edx+138]; TRaveBaseBarCode.SetTop
 005AA7EB    pop        edi
 005AA7EC    pop        esi
 005AA7ED    pop        ebx
 005AA7EE    mov        esp,ebp
 005AA7F0    pop        ebp
 005AA7F1    ret        20
*}
//end;

//005AA7F8
//procedure sub_005AA7F8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005AA7F8    push       ebp
 005AA7F9    mov        ebp,esp
 005AA7FB    add        esp,0FFFFFFF8
 005AA7FE    push       ebx
 005AA7FF    push       esi
 005AA800    push       edi
 005AA801    mov        byte ptr [ebp-6],cl
 005AA804    mov        byte ptr [ebp-5],dl
 005AA807    mov        dword ptr [ebp-4],eax
 005AA80A    mov        eax,dword ptr [ebp-4]
 005AA80D    cmp        byte ptr [eax+0E2],0; TRaveEANBarCode.?fE2:byte
>005AA814    jne        005AA875
 005AA816    mov        eax,dword ptr [ebp-4]
 005AA819    mov        edx,dword ptr [eax]
 005AA81B    call       dword ptr [edx+54]; TRaveEANBarCode.sub_005A8B00
 005AA81E    mov        esi,eax
 005AA820    dec        esi
 005AA821    test       esi,esi
>005AA823    jl         005AA875
 005AA825    inc        esi
 005AA826    xor        ebx,ebx
 005AA828    mov        edx,ebx
 005AA82A    mov        eax,dword ptr [ebp-4]
 005AA82D    mov        ecx,dword ptr [eax]
 005AA82F    call       dword ptr [ecx+50]; TRaveEANBarCode.sub_005A8B3C
 005AA832    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005AA838    call       @IsClass
 005AA83D    test       al,al
>005AA83F    je         005AA871
 005AA841    push       dword ptr [ebp+24]
 005AA844    push       dword ptr [ebp+20]
 005AA847    push       dword ptr [ebp+1C]
 005AA84A    push       dword ptr [ebp+18]
 005AA84D    push       dword ptr [ebp+14]
 005AA850    push       dword ptr [ebp+10]
 005AA853    push       dword ptr [ebp+0C]
 005AA856    push       dword ptr [ebp+8]
 005AA859    mov        edx,ebx
 005AA85B    mov        eax,dword ptr [ebp-4]
 005AA85E    mov        ecx,dword ptr [eax]
 005AA860    call       dword ptr [ecx+50]; TRaveEANBarCode.sub_005A8B3C
 005AA863    mov        cl,byte ptr [ebp-6]
 005AA866    mov        dl,byte ptr [ebp-5]
 005AA869    mov        edi,dword ptr [eax]
 005AA86B    call       dword ptr [edi+124]
 005AA871    inc        ebx
 005AA872    dec        esi
<005AA873    jne        005AA828
 005AA875    pop        edi
 005AA876    pop        esi
 005AA877    pop        ebx
 005AA878    pop        ecx
 005AA879    pop        ecx
 005AA87A    pop        ebp
 005AA87B    ret        20
*}
//end;

//005AA880
//procedure sub_005AA880(?:TRaveControl);
//begin
{*
 005AA880    push       ebx
 005AA881    push       esi
 005AA882    push       edi
 005AA883    mov        ebx,eax
 005AA885    cmp        byte ptr [ebx+0E2],0; TRaveControl.?fE2:byte
>005AA88C    jne        005AA8DA
 005AA88E    mov        eax,ebx
 005AA890    mov        edx,dword ptr [eax]
 005AA892    call       dword ptr [edx+174]; TRaveControl.sub_005AAB94
 005AA898    mov        eax,ebx
 005AA89A    mov        edx,dword ptr [eax]
 005AA89C    call       dword ptr [edx+54]; TRaveControl.sub_005A8B00
 005AA89F    mov        edi,eax
 005AA8A1    dec        edi
 005AA8A2    test       edi,edi
>005AA8A4    jl         005AA8D3
 005AA8A6    inc        edi
 005AA8A7    xor        esi,esi
 005AA8A9    mov        edx,esi
 005AA8AB    mov        eax,ebx
 005AA8AD    mov        ecx,dword ptr [eax]
 005AA8AF    call       dword ptr [ecx+50]; TRaveControl.sub_005A8B3C
 005AA8B2    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005AA8B8    call       @IsClass
 005AA8BD    test       al,al
>005AA8BF    je         005AA8CF
 005AA8C1    mov        edx,esi
 005AA8C3    mov        eax,ebx
 005AA8C5    mov        ecx,dword ptr [eax]
 005AA8C7    call       dword ptr [ecx+50]; TRaveControl.sub_005A8B3C
 005AA8CA    call       005AA880
 005AA8CF    inc        esi
 005AA8D0    dec        edi
<005AA8D1    jne        005AA8A9
 005AA8D3    mov        eax,ebx
 005AA8D5    call       005A8EE8
 005AA8DA    pop        edi
 005AA8DB    pop        esi
 005AA8DC    pop        ebx
 005AA8DD    ret
*}
//end;

//005AA8E0
//procedure sub_005AA8E0(?:TRaveControl; ?:?; ?:TRaveControl; ?:?);
//begin
{*
 005AA8E0    push       ebp
 005AA8E1    mov        ebp,esp
 005AA8E3    add        esp,0FFFFFFD8
 005AA8E6    push       ebx
 005AA8E7    push       esi
 005AA8E8    push       edi
 005AA8E9    mov        ebx,ecx
 005AA8EB    mov        dword ptr [ebp-4],edx
 005AA8EE    mov        eax,dword ptr [ebp+8]
 005AA8F1    mov        edx,dword ptr [eax+5C]
 005AA8F4    test       edx,edx
>005AA8F6    je         005AA9DD
 005AA8FC    mov        dword ptr [ebp-8],edx
 005AA8FF    cmp        dword ptr [edx+5C],0
>005AA903    je         005AA913
 005AA905    push       edx
 005AA906    mov        ecx,ebx
 005AA908    mov        eax,dword ptr [ebp-8]
 005AA90B    mov        edx,dword ptr [ebp-4]
 005AA90E    call       005AA8E0
 005AA913    mov        eax,dword ptr [ebp-8]
 005AA916    mov        edx,dword ptr [eax]
 005AA918    call       dword ptr [edx+54]
 005AA91B    test       eax,eax
>005AA91D    jle        005AA9DD
 005AA923    mov        eax,ebx
 005AA925    mov        edx,dword ptr [eax]
 005AA927    call       dword ptr [edx+5C]; TRaveControl.sub_005A96D4
 005AA92A    fstp       qword ptr [ebp-20]
 005AA92D    wait
 005AA92E    mov        eax,dword ptr [ebp-8]
 005AA931    mov        edx,dword ptr [eax]
 005AA933    call       dword ptr [edx+5C]
 005AA936    fsubr      qword ptr [ebp-20]
 005AA939    add        esp,0FFFFFFF8
 005AA93C    fstp       qword ptr [esp]
 005AA93F    wait
 005AA940    mov        eax,ebx
 005AA942    mov        edx,dword ptr [eax]
 005AA944    call       dword ptr [edx+60]; TRaveControl.sub_005A970C
 005AA947    fstp       qword ptr [ebp-28]
 005AA94A    wait
 005AA94B    mov        eax,dword ptr [ebp-8]
 005AA94E    mov        edx,dword ptr [eax]
 005AA950    call       dword ptr [edx+60]
 005AA953    fsubr      qword ptr [ebp-28]
 005AA956    add        esp,0FFFFFFF8
 005AA959    fstp       qword ptr [esp]
 005AA95C    wait
 005AA95D    lea        eax,[ebp-18]
 005AA960    call       005A5BCC
 005AA965    mov        eax,dword ptr [ebp-8]
 005AA968    lea        esi,[ebp-18]
 005AA96B    lea        edi,[eax+68]
 005AA96E    movs       dword ptr [edi],dword ptr [esi]
 005AA96F    movs       dword ptr [edi],dword ptr [esi]
 005AA970    movs       dword ptr [edi],dword ptr [esi]
 005AA971    movs       dword ptr [edi],dword ptr [esi]
 005AA972    xor        eax,eax
 005AA974    push       ebp
 005AA975    push       5AA9D6
 005AA97A    push       dword ptr fs:[eax]
 005AA97D    mov        dword ptr fs:[eax],esp
 005AA980    mov        eax,dword ptr [ebp-8]
 005AA983    mov        edx,dword ptr [eax]
 005AA985    call       dword ptr [edx+54]
 005AA988    mov        ebx,eax
 005AA98A    dec        ebx
 005AA98B    test       ebx,ebx
>005AA98D    jl         005AA9AB
 005AA98F    inc        ebx
 005AA990    xor        esi,esi
 005AA992    mov        edx,esi
 005AA994    mov        eax,dword ptr [ebp-8]
 005AA997    mov        ecx,dword ptr [eax]
 005AA999    call       dword ptr [ecx+50]
 005AA99C    mov        edx,dword ptr [ebp-4]
 005AA99F    mov        ecx,dword ptr [eax]
 005AA9A1    call       dword ptr [ecx+0BC]
 005AA9A7    inc        esi
 005AA9A8    dec        ebx
<005AA9A9    jne        005AA992
 005AA9AB    xor        eax,eax
 005AA9AD    pop        edx
 005AA9AE    pop        ecx
 005AA9AF    pop        ecx
 005AA9B0    mov        dword ptr fs:[eax],edx
 005AA9B3    push       5AA9DD
 005AA9B8    push       0
 005AA9BA    push       0
 005AA9BC    push       0
 005AA9BE    push       0
 005AA9C0    lea        eax,[ebp-18]
 005AA9C3    call       005A5BCC
 005AA9C8    mov        eax,dword ptr [ebp-8]
 005AA9CB    lea        esi,[ebp-18]
 005AA9CE    lea        edi,[eax+68]
 005AA9D1    movs       dword ptr [edi],dword ptr [esi]
 005AA9D2    movs       dword ptr [edi],dword ptr [esi]
 005AA9D3    movs       dword ptr [edi],dword ptr [esi]
 005AA9D4    movs       dword ptr [edi],dword ptr [esi]
 005AA9D5    ret
<005AA9D6    jmp        @HandleFinally
<005AA9DB    jmp        005AA9B8
 005AA9DD    pop        edi
 005AA9DE    pop        esi
 005AA9DF    pop        ebx
 005AA9E0    mov        esp,ebp
 005AA9E2    pop        ebp
 005AA9E3    ret        4
*}
//end;

//005AA9E8
procedure sub_005AA9E8;
begin
{*
 005AA9E8    push       ebx
 005AA9E9    push       esi
 005AA9EA    push       edi
 005AA9EB    push       ebp
 005AA9EC    add        esp,0FFFFFFF0
 005AA9EF    mov        ebx,eax
 005AA9F1    mov        eax,dword ptr [ebx+5C]; TRaveEANBarCode.Mirror:TRaveControl
 005AA9F4    test       eax,eax
>005AA9F6    je         005AAA06
 005AA9F8    mov        edx,dword ptr [eax]
 005AA9FA    call       dword ptr [edx+178]; TRaveControl.sub_005AA9E8
 005AAA00    fstp       qword ptr [esp]
 005AAA03    wait
>005AAA04    jmp        005AAA7D
 005AAA06    mov        eax,ebx
 005AAA08    mov        edx,dword ptr [eax]
 005AAA0A    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005AAA10    fstp       qword ptr [esp]
 005AAA13    wait
 005AAA14    mov        eax,ebx
 005AAA16    mov        edx,dword ptr [eax]
 005AAA18    call       dword ptr [edx+54]; TRaveEANBarCode.sub_005A8B00
 005AAA1B    mov        edi,eax
 005AAA1D    dec        edi
 005AAA1E    test       edi,edi
>005AAA20    jl         005AAA7D
 005AAA22    inc        edi
 005AAA23    xor        ebp,ebp
 005AAA25    mov        edx,ebp
 005AAA27    mov        eax,ebx
 005AAA29    mov        ecx,dword ptr [eax]
 005AAA2B    call       dword ptr [ecx+50]; TRaveEANBarCode.sub_005A8B3C
 005AAA2E    mov        esi,eax
 005AAA30    mov        eax,esi
 005AAA32    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005AAA38    call       @IsClass
 005AAA3D    test       al,al
>005AAA3F    je         005AAA79
 005AAA41    mov        eax,esi
 005AAA43    mov        edx,dword ptr [eax]
 005AAA45    call       dword ptr [edx+178]
 005AAA4B    fld        qword ptr [ebx+0D8]; TRaveEANBarCode.?fD8:?Double
 005AAA51    fsub       qword ptr [esi+0D8]
 005AAA57    faddp      st(1),st
 005AAA59    fstp       qword ptr [esp+8]
 005AAA5D    wait
 005AAA5E    fld        qword ptr [esp+8]
 005AAA62    fcomp      qword ptr [esp]
 005AAA65    fnstsw     al
 005AAA67    sahf
>005AAA68    jbe        005AAA79
 005AAA6A    mov        eax,dword ptr [esp+8]
 005AAA6E    mov        dword ptr [esp],eax
 005AAA71    mov        eax,dword ptr [esp+0C]
 005AAA75    mov        dword ptr [esp+4],eax
 005AAA79    inc        ebp
 005AAA7A    dec        edi
<005AAA7B    jne        005AAA25
 005AAA7D    fld        qword ptr [esp]
 005AAA80    add        esp,10
 005AAA83    pop        ebp
 005AAA84    pop        edi
 005AAA85    pop        esi
 005AAA86    pop        ebx
 005AAA87    ret
*}
end;

//005AAA88
function sub_005AAA88:Boolean;
begin
{*
 005AAA88    push       ebx
 005AAA89    mov        ebx,eax
 005AAA8B    mov        al,byte ptr [ebx+3C]; TRaveEANBarCode.?f3C:byte
 005AAA8E    test       al,al
>005AAA90    je         005AAAB2
 005AAA92    cmp        dword ptr ds:[6171C8],0; gvar_006171C8:TRaveBand
>005AAA99    je         005AAAB2
 005AAA9B    mov        edx,dword ptr ds:[6171C8]; gvar_006171C8:TRaveBand
 005AAAA1    cmp        edx,dword ptr [ebx+38]; TRaveEANBarCode.?f38:dword
>005AAAA4    jne        005AAAB2
 005AAAA6    mov        eax,ebx
 005AAAA8    call       005A9A34
 005AAAAD    cmp        al,3
 005AAAAF    sete       al
 005AAAB2    pop        ebx
 005AAAB3    ret
*}
end;

//005AAAB4
//procedure sub_005AAAB4(?:?);
//begin
{*
 005AAAB4    push       ebx
 005AAAB5    push       esi
 005AAAB6    push       edi
 005AAAB7    push       ecx
 005AAAB8    mov        dword ptr [esp],edx
 005AAABB    mov        ebx,eax
 005AAABD    mov        eax,ebx
 005AAABF    mov        edx,dword ptr [eax]
 005AAAC1    call       dword ptr [edx+0B8]; TRaveControl.sub_005AAA88
 005AAAC7    test       al,al
>005AAAC9    je         005AAB8F
 005AAACF    cmp        byte ptr [ebx+0E0],0; TRaveControl.DisplayOn:TDisplayOn
>005AAAD6    jne        005AAB01
 005AAAD8    mov        esi,dword ptr [ebx+38]; TRaveControl.?f38:dword
 005AAADB    mov        eax,esi
 005AAADD    mov        edx,dword ptr ds:[5A7428]; TRavePage
 005AAAE3    call       @IsClass
 005AAAE8    test       al,al
>005AAAEA    je         005AAAF5
 005AAAEC    mov        byte ptr [ebx+0E0],1; TRaveControl.DisplayOn:TDisplayOn
>005AAAF3    jmp        005AAB01
 005AAAF5    mov        al,byte ptr [esi+0E0]
 005AAAFB    mov        byte ptr [ebx+0E0],al; TRaveControl.DisplayOn:TDisplayOn
 005AAB01    mov        al,byte ptr [ebx+0E0]; TRaveControl.DisplayOn:TDisplayOn
 005AAB07    dec        al
>005AAB09    je         005AAB15
 005AAB0B    dec        al
>005AAB0D    je         005AAB22
 005AAB0F    dec        al
>005AAB11    je         005AAB2F
>005AAB13    jmp        005AAB3A
 005AAB15    mov        eax,dword ptr [esp]
 005AAB18    mov        edx,dword ptr [eax]
 005AAB1A    call       dword ptr [edx+100]
>005AAB20    jmp        005AAB3A
 005AAB22    mov        eax,dword ptr [esp]
 005AAB25    mov        edx,dword ptr [eax]
 005AAB27    call       dword ptr [edx+0F8]
>005AAB2D    jmp        005AAB3A
 005AAB2F    mov        eax,dword ptr [esp]
 005AAB32    mov        edx,dword ptr [eax]
 005AAB34    call       dword ptr [edx+0FC]
 005AAB3A    mov        eax,ebx
 005AAB3C    mov        edx,dword ptr [eax]
 005AAB3E    call       dword ptr [edx+7C]; TRaveControl.sub_005A8870
 005AAB41    mov        edx,dword ptr [esp]
 005AAB44    mov        eax,ebx
 005AAB46    mov        ecx,dword ptr [eax]
 005AAB48    call       dword ptr [ecx+80]; TRaveControl.sub_005A8C2C
 005AAB4E    push       ebx
 005AAB4F    mov        ecx,ebx
 005AAB51    mov        edx,dword ptr [esp+4]
 005AAB55    mov        eax,ebx
 005AAB57    call       005AA8E0
 005AAB5C    mov        eax,ebx
 005AAB5E    mov        edx,dword ptr [eax]
 005AAB60    call       dword ptr [edx+84]; TRaveControl.sub_005A8880
 005AAB66    mov        eax,ebx
 005AAB68    mov        edx,dword ptr [eax]
 005AAB6A    call       dword ptr [edx+54]; TRaveControl.sub_005A8B00
 005AAB6D    mov        esi,eax
 005AAB6F    dec        esi
 005AAB70    test       esi,esi
>005AAB72    jl         005AAB8F
 005AAB74    inc        esi
 005AAB75    xor        edi,edi
 005AAB77    mov        edx,edi
 005AAB79    mov        eax,ebx
 005AAB7B    mov        ecx,dword ptr [eax]
 005AAB7D    call       dword ptr [ecx+50]; TRaveControl.sub_005A8B3C
 005AAB80    mov        edx,dword ptr [esp]
 005AAB83    mov        ecx,dword ptr [eax]
 005AAB85    call       dword ptr [ecx+0BC]
 005AAB8B    inc        edi
 005AAB8C    dec        esi
<005AAB8D    jne        005AAB77
 005AAB8F    pop        edx
 005AAB90    pop        edi
 005AAB91    pop        esi
 005AAB92    pop        ebx
 005AAB93    ret
*}
//end;

//005AAB94
procedure sub_005AAB94;
begin
{*
 005AAB94    push       ebx
 005AAB95    mov        ebx,eax
 005AAB97    mov        eax,[0061B184]
 005AAB9C    cmp        byte ptr [eax],0
>005AAB9F    je         005AABC2
 005AABA1    mov        eax,[0061BB5C]
 005AABA6    mov        eax,dword ptr [eax]
 005AABA8    cmp        byte ptr [eax+0A5],0
>005AABAF    jne        005AABC2
 005AABB1    mov        eax,ebx
 005AABB3    call       005A8540
 005AABB8    mov        eax,ebx
 005AABBA    mov        edx,dword ptr [eax]
 005AABBC    call       dword ptr [edx+150]; TRaveControl.sub_005A9BE0
 005AABC2    pop        ebx
 005AABC3    ret
*}
end;

//005AABC4
procedure sub_005AABC4();
begin
{*
 005AABC4    ret
*}
end;

//005AABC8
//procedure sub_005AABC8(?:TRaveControl; ?:?; ?:TRaveControl; ?:?);
//begin
{*
 005AABC8    push       ebp
 005AABC9    mov        ebp,esp
 005AABCB    add        esp,0FFFFFFD4
 005AABCE    push       ebx
 005AABCF    push       esi
 005AABD0    push       edi
 005AABD1    mov        ebx,ecx
 005AABD3    mov        dword ptr [ebp-4],edx
 005AABD6    mov        eax,dword ptr [ebp+8]
 005AABD9    mov        edx,dword ptr [eax+5C]
 005AABDC    test       edx,edx
>005AABDE    je         005AAD07
 005AABE4    cmp        dword ptr ds:[6171E4],0; gvar_006171E4
>005AABEB    je         005AAD07
 005AABF1    mov        dword ptr [ebp-0C],edx
 005AABF4    cmp        dword ptr [edx+5C],0
>005AABF8    je         005AAC08
 005AABFA    push       edx
 005AABFB    mov        ecx,ebx
 005AABFD    mov        eax,dword ptr [ebp-0C]
 005AAC00    mov        edx,dword ptr [ebp-4]
 005AAC03    call       005AABC8
 005AAC08    mov        eax,dword ptr [ebp-0C]
 005AAC0B    mov        edx,dword ptr [eax]
 005AAC0D    call       dword ptr [edx+54]
 005AAC10    test       eax,eax
>005AAC12    jle        005AAD07
 005AAC18    mov        eax,ebx
 005AAC1A    mov        edx,dword ptr [eax]
 005AAC1C    call       dword ptr [edx+5C]; TRaveControl.sub_005A96D4
 005AAC1F    fstp       qword ptr [ebp-24]
 005AAC22    wait
 005AAC23    mov        eax,dword ptr [ebp-0C]
 005AAC26    mov        edx,dword ptr [eax]
 005AAC28    call       dword ptr [edx+5C]
 005AAC2B    fsubr      qword ptr [ebp-24]
 005AAC2E    add        esp,0FFFFFFF8
 005AAC31    fstp       qword ptr [esp]
 005AAC34    wait
 005AAC35    mov        eax,ebx
 005AAC37    mov        edx,dword ptr [eax]
 005AAC39    call       dword ptr [edx+60]; TRaveControl.sub_005A970C
 005AAC3C    fstp       qword ptr [ebp-2C]
 005AAC3F    wait
 005AAC40    mov        eax,dword ptr [ebp-0C]
 005AAC43    mov        edx,dword ptr [eax]
 005AAC45    call       dword ptr [edx+60]
 005AAC48    fsubr      qword ptr [ebp-2C]
 005AAC4B    add        esp,0FFFFFFF8
 005AAC4E    fstp       qword ptr [esp]
 005AAC51    wait
 005AAC52    lea        eax,[ebp-1C]
 005AAC55    call       005A5BCC
 005AAC5A    mov        eax,dword ptr [ebp-0C]
 005AAC5D    lea        esi,[ebp-1C]
 005AAC60    lea        edi,[eax+68]
 005AAC63    movs       dword ptr [edi],dword ptr [esi]
 005AAC64    movs       dword ptr [edi],dword ptr [esi]
 005AAC65    movs       dword ptr [edi],dword ptr [esi]
 005AAC66    movs       dword ptr [edi],dword ptr [esi]
 005AAC67    xor        eax,eax
 005AAC69    push       ebp
 005AAC6A    push       5AAD00
 005AAC6F    push       dword ptr fs:[eax]
 005AAC72    mov        dword ptr fs:[eax],esp
 005AAC75    mov        edx,dword ptr [ebp-4]
 005AAC78    mov        eax,dword ptr [ebp-0C]
 005AAC7B    call       005AA0BC
 005AAC80    mov        dword ptr [ebp-8],eax
 005AAC83    mov        eax,dword ptr [ebp-0C]
 005AAC86    mov        edx,dword ptr [eax]
 005AAC88    call       dword ptr [edx+54]
 005AAC8B    mov        esi,eax
 005AAC8D    dec        esi
 005AAC8E    test       esi,esi
>005AAC90    jl         005AACC7
 005AAC92    inc        esi
 005AAC93    xor        ebx,ebx
 005AAC95    mov        edx,ebx
 005AAC97    mov        eax,dword ptr [ebp-0C]
 005AAC9A    mov        ecx,dword ptr [eax]
 005AAC9C    call       dword ptr [ecx+50]
 005AAC9F    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005AACA5    call       @IsClass
 005AACAA    test       al,al
>005AACAC    je         005AACC3
 005AACAE    mov        edx,ebx
 005AACB0    mov        eax,dword ptr [ebp-0C]
 005AACB3    mov        ecx,dword ptr [eax]
 005AACB5    call       dword ptr [ecx+50]
 005AACB8    mov        edx,dword ptr [ebp-4]
 005AACBB    mov        ecx,dword ptr [eax]
 005AACBD    call       dword ptr [ecx+164]
 005AACC3    inc        ebx
 005AACC4    dec        esi
<005AACC5    jne        005AAC95
 005AACC7    mov        ecx,dword ptr [ebp-8]
 005AACCA    mov        edx,dword ptr [ebp-4]
 005AACCD    mov        eax,dword ptr [ebp-0C]
 005AACD0    call       005AA16C
 005AACD5    xor        eax,eax
 005AACD7    pop        edx
 005AACD8    pop        ecx
 005AACD9    pop        ecx
 005AACDA    mov        dword ptr fs:[eax],edx
 005AACDD    push       5AAD07
 005AACE2    push       0
 005AACE4    push       0
 005AACE6    push       0
 005AACE8    push       0
 005AACEA    lea        eax,[ebp-1C]
 005AACED    call       005A5BCC
 005AACF2    mov        eax,dword ptr [ebp-0C]
 005AACF5    lea        esi,[ebp-1C]
 005AACF8    lea        edi,[eax+68]
 005AACFB    movs       dword ptr [edi],dword ptr [esi]
 005AACFC    movs       dword ptr [edi],dword ptr [esi]
 005AACFD    movs       dword ptr [edi],dword ptr [esi]
 005AACFE    movs       dword ptr [edi],dword ptr [esi]
 005AACFF    ret
<005AAD00    jmp        @HandleFinally
<005AAD05    jmp        005AACE2
 005AAD07    pop        edi
 005AAD08    pop        esi
 005AAD09    pop        ebx
 005AAD0A    mov        esp,ebp
 005AAD0C    pop        ebp
 005AAD0D    ret        4
*}
//end;

//005AAD10
procedure sub_005AAD10();
begin
{*
 005AAD10    ret
*}
end;

//005AAD14
//procedure sub_005AAD14(?:?);
//begin
{*
 005AAD14    push       ebx
 005AAD15    push       esi
 005AAD16    push       edi
 005AAD17    add        esp,0FFFFFFF8
 005AAD1A    mov        dword ptr [esp],edx
 005AAD1D    mov        ebx,eax
 005AAD1F    cmp        byte ptr [ebx+3C],0; TRaveEANBarCode.?f3C:byte
>005AAD23    je         005AADAC
 005AAD29    mov        edx,dword ptr [esp]
 005AAD2C    mov        eax,ebx
 005AAD2E    mov        ecx,dword ptr [eax]
 005AAD30    call       dword ptr [ecx+168]; TRaveEANBarCode.sub_005CF374
 005AAD36    push       ebx
 005AAD37    mov        ecx,ebx
 005AAD39    mov        edx,dword ptr [esp+4]
 005AAD3D    mov        eax,ebx
 005AAD3F    call       005AABC8
 005AAD44    mov        eax,ebx
 005AAD46    mov        edx,dword ptr [eax]
 005AAD48    call       dword ptr [edx+54]; TRaveEANBarCode.sub_005A8B00
 005AAD4B    test       eax,eax
>005AAD4D    jle        005AADAC
 005AAD4F    mov        edx,dword ptr [esp]
 005AAD52    mov        eax,ebx
 005AAD54    call       005AA0BC
 005AAD59    mov        dword ptr [esp+4],eax
 005AAD5D    mov        eax,ebx
 005AAD5F    mov        edx,dword ptr [eax]
 005AAD61    call       dword ptr [edx+54]; TRaveEANBarCode.sub_005A8B00
 005AAD64    mov        edi,eax
 005AAD66    dec        edi
 005AAD67    test       edi,edi
>005AAD69    jl         005AAD9E
 005AAD6B    inc        edi
 005AAD6C    xor        esi,esi
 005AAD6E    mov        edx,esi
 005AAD70    mov        eax,ebx
 005AAD72    mov        ecx,dword ptr [eax]
 005AAD74    call       dword ptr [ecx+50]; TRaveEANBarCode.sub_005A8B3C
 005AAD77    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005AAD7D    call       @IsClass
 005AAD82    test       al,al
>005AAD84    je         005AAD9A
 005AAD86    mov        edx,esi
 005AAD88    mov        eax,ebx
 005AAD8A    mov        ecx,dword ptr [eax]
 005AAD8C    call       dword ptr [ecx+50]; TRaveEANBarCode.sub_005A8B3C
 005AAD8F    mov        edx,dword ptr [esp]
 005AAD92    mov        ecx,dword ptr [eax]
 005AAD94    call       dword ptr [ecx+164]
 005AAD9A    inc        esi
 005AAD9B    dec        edi
<005AAD9C    jne        005AAD6E
 005AAD9E    mov        ecx,dword ptr [esp+4]
 005AADA2    mov        edx,dword ptr [esp]
 005AADA5    mov        eax,ebx
 005AADA7    call       005AA16C
 005AADAC    pop        ecx
 005AADAD    pop        edx
 005AADAE    pop        edi
 005AADAF    pop        esi
 005AADB0    pop        ebx
 005AADB1    ret
*}
//end;

//005AADB4
//function sub_005AADB4(?:?; ?:?):?;
//begin
{*
 005AADB4    push       ebp
 005AADB5    mov        ebp,esp
 005AADB7    push       dword ptr [ebp+0C]
 005AADBA    push       dword ptr [ebp+8]
 005AADBD    mov        eax,[006171E4]; gvar_006171E4
 005AADC2    mov        edx,dword ptr [eax]
 005AADC4    call       dword ptr [edx+140]
 005AADCA    push       eax
 005AADCB    push       0
 005AADCD    push       0
 005AADCF    mov        eax,[006171E4]; gvar_006171E4
 005AADD4    mov        edx,dword ptr [eax]
 005AADD6    call       dword ptr [edx+140]
 005AADDC    pop        edx
 005AADDD    xchg       eax,edx
 005AADDE    sub        eax,edx
 005AADE0    pop        ebp
 005AADE1    ret        8
*}
//end;

//005AADE4
//function sub_005AADE4(?:?; ?:?):?;
//begin
{*
 005AADE4    push       ebp
 005AADE5    mov        ebp,esp
 005AADE7    push       dword ptr [ebp+0C]
 005AADEA    push       dword ptr [ebp+8]
 005AADED    mov        eax,[006171E4]; gvar_006171E4
 005AADF2    mov        edx,dword ptr [eax]
 005AADF4    call       dword ptr [edx+144]
 005AADFA    push       eax
 005AADFB    push       0
 005AADFD    push       0
 005AADFF    mov        eax,[006171E4]; gvar_006171E4
 005AAE04    mov        edx,dword ptr [eax]
 005AAE06    call       dword ptr [edx+144]
 005AAE0C    pop        edx
 005AAE0D    xchg       eax,edx
 005AAE0E    sub        eax,edx
 005AAE10    pop        ebp
 005AAE11    ret        8
*}
//end;

//005AAE14
//function sub_005AAE14(?:?; ?:?):?;
//begin
{*
 005AAE14    push       ebp
 005AAE15    mov        ebp,esp
 005AAE17    push       dword ptr [ebp+0C]
 005AAE1A    push       dword ptr [ebp+8]
 005AAE1D    mov        eax,[006171E4]; gvar_006171E4
 005AAE22    mov        edx,dword ptr [eax]
 005AAE24    call       dword ptr [edx+140]
 005AAE2A    pop        ebp
 005AAE2B    ret        8
*}
//end;

//005AAE30
//function sub_005AAE30(?:?; ?:?):?;
//begin
{*
 005AAE30    push       ebp
 005AAE31    mov        ebp,esp
 005AAE33    push       dword ptr [ebp+0C]
 005AAE36    push       dword ptr [ebp+8]
 005AAE39    mov        eax,[006171E4]; gvar_006171E4
 005AAE3E    mov        edx,dword ptr [eax]
 005AAE40    call       dword ptr [edx+144]
 005AAE46    pop        ebp
 005AAE47    ret        8
*}
//end;

//005AAE4C
//function sub_005AAE4C(?:TRaveRegion):?;
//begin
{*
 005AAE4C    push       ebx
 005AAE4D    push       esi
 005AAE4E    add        esp,0FFFFFFF8
 005AAE51    mov        ebx,eax
 005AAE53    mov        eax,[006171E4]; gvar_006171E4
 005AAE58    mov        ecx,dword ptr [eax]
 005AAE5A    call       dword ptr [ecx+14C]
 005AAE60    fstp       qword ptr [esp]
 005AAE63    wait
 005AAE64    mov        esi,dword ptr [ebx+38]; TRaveRegion.?f38:dword
 005AAE67    test       esi,esi
>005AAE69    je         005AAE79
 005AAE6B    mov        eax,esi
 005AAE6D    mov        edx,dword ptr [eax]
 005AAE6F    call       dword ptr [edx+60]
 005AAE72    fsubr      qword ptr [esp]
 005AAE75    fstp       qword ptr [esp]
 005AAE78    wait
 005AAE79    fld        qword ptr [esp]
 005AAE7C    pop        ecx
 005AAE7D    pop        edx
 005AAE7E    pop        esi
 005AAE7F    pop        ebx
 005AAE80    ret
*}
//end;

//005AAE84
procedure sub_005AAE84();
begin
{*
 005AAE84    push       ebp
 005AAE85    mov        ebp,esp
 005AAE87    pop        ebp
 005AAE88    ret        4
*}
end;

//005AAE8C
//procedure sub_005AAE8C(?:TRaveControl; ?:?; ?:?);
//begin
{*
 005AAE8C    push       ebx
 005AAE8D    push       esi
 005AAE8E    push       edi
 005AAE8F    add        esp,0FFFFFFF0
 005AAE92    mov        esi,edx
 005AAE94    lea        edi,[esp]
 005AAE97    movs       dword ptr [edi],dword ptr [esi]
 005AAE98    movs       dword ptr [edi],dword ptr [esi]
 005AAE99    movs       dword ptr [edi],dword ptr [esi]
 005AAE9A    movs       dword ptr [edi],dword ptr [esi]
 005AAE9B    mov        ebx,ecx
 005AAE9D    mov        esi,eax
 005AAE9F    push       esi
 005AAEA0    mov        edi,ebx
 005AAEA2    lea        esi,[esp+4]
 005AAEA6    movs       dword ptr [edi],dword ptr [esi]
 005AAEA7    movs       dword ptr [edi],dword ptr [esi]
 005AAEA8    movs       dword ptr [edi],dword ptr [esi]
 005AAEA9    movs       dword ptr [edi],dword ptr [esi]
 005AAEAA    pop        esi
 005AAEAB    mov        edi,dword ptr [esi+38]; TRaveControl.?f38:dword
 005AAEAE    test       edi,edi
>005AAEB0    je         005AAECD
 005AAEB2    mov        eax,edi
 005AAEB4    mov        edx,dword ptr [eax]
 005AAEB6    call       dword ptr [edx+5C]
 005AAEB9    fsubr      qword ptr [ebx]
 005AAEBB    fstp       qword ptr [ebx]
 005AAEBD    wait
 005AAEBE    mov        eax,dword ptr [esi+38]; TRaveControl.?f38:dword
 005AAEC1    mov        edx,dword ptr [eax]
 005AAEC3    call       dword ptr [edx+60]
 005AAEC6    fsubr      qword ptr [ebx+8]
 005AAEC9    fstp       qword ptr [ebx+8]
 005AAECC    wait
 005AAECD    add        esp,10
 005AAED0    pop        edi
 005AAED1    pop        esi
 005AAED2    pop        ebx
 005AAED3    ret
*}
//end;

//005AAED4
constructor TRaveContainerControl.Create(AOwner:TComponent);
begin
{*
 005AAED4    push       ebx
 005AAED5    push       esi
 005AAED6    test       dl,dl
>005AAED8    je         005AAEE2
 005AAEDA    add        esp,0FFFFFFF0
 005AAEDD    call       @ClassCreate
 005AAEE2    mov        ebx,edx
 005AAEE4    mov        esi,eax
 005AAEE6    xor        edx,edx
 005AAEE8    mov        eax,esi
 005AAEEA    call       TRaveControl.Create
 005AAEEF    mov        al,[005AAF14]; 0x1
 005AAEF4    mov        byte ptr [esi+30],al; TRaveContainerControl.?f30:byte
 005AAEF7    mov        eax,esi
 005AAEF9    test       bl,bl
>005AAEFB    je         005AAF0C
 005AAEFD    call       @AfterConstruction
 005AAF02    pop        dword ptr fs:[0]
 005AAF09    add        esp,0C
 005AAF0C    mov        eax,esi
 005AAF0E    pop        esi
 005AAF0F    pop        ebx
 005AAF10    ret
*}
end;

//005AAF18
procedure sub_005AAF18;
begin
{*
 005AAF18    push       ebx
 005AAF19    mov        ebx,eax
 005AAF1B    mov        eax,ebx
 005AAF1D    call       005A8564
 005AAF22    cmp        dword ptr [ebx+0E8],0; TRaveDataMirrorSection.?fE8:TList
>005AAF29    je         005AAF36
 005AAF2B    lea        eax,[ebx+0E8]; TRaveDataMirrorSection.?fE8:TList
 005AAF31    call       FreeAndNil
 005AAF36    pop        ebx
 005AAF37    ret
*}
end;

//005AAF38
//procedure sub_005AAF38(?:?);
//begin
{*
 005AAF38    push       ebx
 005AAF39    push       esi
 005AAF3A    mov        esi,edx
 005AAF3C    mov        ebx,eax
 005AAF3E    cmp        dword ptr [ebx+0E8],0; TRaveDataMirrorSection.?fE8:TList
>005AAF45    jne        005AAF59
 005AAF47    mov        dl,1
 005AAF49    mov        eax,[0041C260]; TList
 005AAF4E    call       TObject.Create; TList.Create
 005AAF53    mov        dword ptr [ebx+0E8],eax; TRaveDataMirrorSection.?fE8:TList
 005AAF59    mov        edx,esi
 005AAF5B    mov        eax,dword ptr [ebx+0E8]; TRaveDataMirrorSection.?fE8:TList
 005AAF61    call       TList.Add
 005AAF66    pop        esi
 005AAF67    pop        ebx
 005AAF68    ret
*}
//end;

//005AAF6C
procedure sub_005AAF6C;
begin
{*
 005AAF6C    mov        ecx,dword ptr [eax+0E8]; TRaveDataMirrorSection.?fE8:TList
 005AAF72    test       ecx,ecx
>005AAF74    je         005AAF7D
 005AAF76    mov        eax,ecx
 005AAF78    call       TList.Remove
 005AAF7D    ret
*}
end;

//005AAF80
//function sub_005AAF80:?;
//begin
{*
 005AAF80    mov        edx,dword ptr [eax+0E8]; TRaveDataMirrorSection.?fE8:TList
 005AAF86    test       edx,edx
>005AAF88    je         005AAF8E
 005AAF8A    mov        eax,dword ptr [edx+8]; TList.FCount:Integer
 005AAF8D    ret
 005AAF8E    xor        eax,eax
 005AAF90    ret
*}
//end;

//005AAF94
//procedure sub_005AAF94(?:?);
//begin
{*
 005AAF94    push       ebx
 005AAF95    push       esi
 005AAF96    push       edi
 005AAF97    mov        esi,edx
 005AAF99    mov        ebx,eax
 005AAF9B    mov        edi,dword ptr [ebx+0E8]; TRaveDataMirrorSection.?fE8:TList
 005AAFA1    test       edi,edi
>005AAFA3    je         005AAFAE
 005AAFA5    test       esi,esi
>005AAFA7    jl         005AAFAE
 005AAFA9    cmp        esi,dword ptr [edi+8]; TList.FCount:Integer
>005AAFAC    jl         005AAFB2
 005AAFAE    xor        eax,eax
>005AAFB0    jmp        005AAFBB
 005AAFB2    mov        edx,esi
 005AAFB4    mov        eax,edi
 005AAFB6    call       TList.Get
 005AAFBB    pop        edi
 005AAFBC    pop        esi
 005AAFBD    pop        ebx
 005AAFBE    ret
*}
//end;

//005AAFC0
//procedure sub_005AAFC0(?:?; ?:?);
//begin
{*
 005AAFC0    push       ebx
 005AAFC1    push       esi
 005AAFC2    push       edi
 005AAFC3    push       ecx
 005AAFC4    mov        ebx,ecx
 005AAFC6    mov        dword ptr [esp],edx
 005AAFC9    mov        edi,eax
 005AAFCB    mov        esi,dword ptr [edi+0E8]; TRaveDataMirrorSection.?fE8:TList
 005AAFD1    mov        edx,dword ptr [esp]
 005AAFD4    mov        eax,esi
 005AAFD6    call       TList.IndexOf
 005AAFDB    dec        ebx
>005AAFDC    je         005AAFE6
 005AAFDE    dec        ebx
>005AAFDF    je         005AAFEA
 005AAFE1    dec        ebx
>005AAFE2    je         005AAFEF
>005AAFE4    jmp        005AAFF4
 005AAFE6    xor        ebx,ebx
>005AAFE8    jmp        005AAFF8
 005AAFEA    mov        ebx,eax
 005AAFEC    dec        ebx
>005AAFED    jmp        005AAFF8
 005AAFEF    lea        ebx,[eax+1]
>005AAFF2    jmp        005AAFF8
 005AAFF4    mov        ebx,dword ptr [esi+8]; TList.FCount:Integer
 005AAFF7    dec        ebx
 005AAFF8    test       eax,eax
>005AAFFA    jl         005AB037
 005AAFFC    test       ebx,ebx
>005AAFFE    jl         005AB037
 005AB000    cmp        ebx,dword ptr [esi+8]; TList.FCount:Integer
>005AB003    jge        005AB037
 005AB005    cmp        ebx,eax
>005AB007    je         005AB037
 005AB009    mov        edx,eax
 005AB00B    mov        eax,esi
 005AB00D    call       TList.Delete
 005AB012    mov        ecx,dword ptr [esp]
 005AB015    mov        edx,ebx
 005AB017    mov        eax,esi
 005AB019    call       TList.Insert
 005AB01E    mov        eax,dword ptr [esp]
 005AB021    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005AB027    call       @IsClass
 005AB02C    test       al,al
>005AB02E    je         005AB037
 005AB030    mov        eax,edi
 005AB032    call       005A8540
 005AB037    pop        edx
 005AB038    pop        edi
 005AB039    pop        esi
 005AB03A    pop        ebx
 005AB03B    ret
*}
//end;

//005AB03C
constructor TRaveContainerComponent.Create(AOwner:TComponent);
begin
{*
 005AB03C    push       ebx
 005AB03D    push       esi
 005AB03E    test       dl,dl
>005AB040    je         005AB04A
 005AB042    add        esp,0FFFFFFF0
 005AB045    call       @ClassCreate
 005AB04A    mov        ebx,edx
 005AB04C    mov        esi,eax
 005AB04E    xor        edx,edx
 005AB050    mov        eax,esi
 005AB052    call       TRaveComponent.Create
 005AB057    mov        al,[005AB07C]; 0x1
 005AB05C    mov        byte ptr [esi+30],al; TRaveContainerComponent.?f30:byte
 005AB05F    mov        eax,esi
 005AB061    test       bl,bl
>005AB063    je         005AB074
 005AB065    call       @AfterConstruction
 005AB06A    pop        dword ptr fs:[0]
 005AB071    add        esp,0C
 005AB074    mov        eax,esi
 005AB076    pop        esi
 005AB077    pop        ebx
 005AB078    ret
*}
end;

//005AB080
procedure sub_005AB080;
begin
{*
 005AB080    push       ebx
 005AB081    mov        ebx,eax
 005AB083    mov        eax,ebx
 005AB085    call       005A8564
 005AB08A    cmp        dword ptr [ebx+5C],0; TRaveDriverDataView.?f5C:TList
>005AB08E    je         005AB098
 005AB090    lea        eax,[ebx+5C]; TRaveDriverDataView.?f5C:TList
 005AB093    call       FreeAndNil
 005AB098    pop        ebx
 005AB099    ret
*}
end;

//005AB09C
//procedure sub_005AB09C(?:?);
//begin
{*
 005AB09C    push       ebx
 005AB09D    push       esi
 005AB09E    mov        esi,edx
 005AB0A0    mov        ebx,eax
 005AB0A2    cmp        dword ptr [ebx+5C],0; TRaveDriverDataView.?f5C:TList
>005AB0A6    jne        005AB0B7
 005AB0A8    mov        dl,1
 005AB0AA    mov        eax,[0041C260]; TList
 005AB0AF    call       TObject.Create; TList.Create
 005AB0B4    mov        dword ptr [ebx+5C],eax; TRaveDriverDataView.?f5C:TList
 005AB0B7    mov        edx,esi
 005AB0B9    mov        eax,dword ptr [ebx+5C]; TRaveDriverDataView.?f5C:TList
 005AB0BC    call       TList.Add
 005AB0C1    pop        esi
 005AB0C2    pop        ebx
 005AB0C3    ret
*}
//end;

//005AB0C4
procedure sub_005AB0C4;
begin
{*
 005AB0C4    mov        ecx,dword ptr [eax+5C]; TRaveDriverDataView.?f5C:TList
 005AB0C7    test       ecx,ecx
>005AB0C9    je         005AB0D2
 005AB0CB    mov        eax,ecx
 005AB0CD    call       TList.Remove
 005AB0D2    ret
*}
end;

//005AB0D4
//function sub_005AB0D4:?;
//begin
{*
 005AB0D4    mov        edx,dword ptr [eax+5C]; TRaveDriverDataView.?f5C:TList
 005AB0D7    test       edx,edx
>005AB0D9    je         005AB0DF
 005AB0DB    mov        eax,dword ptr [edx+8]; TList.FCount:Integer
 005AB0DE    ret
 005AB0DF    xor        eax,eax
 005AB0E1    ret
*}
//end;

//005AB0E4
//procedure sub_005AB0E4(?:?);
//begin
{*
 005AB0E4    push       ebx
 005AB0E5    push       esi
 005AB0E6    push       edi
 005AB0E7    mov        esi,edx
 005AB0E9    mov        ebx,eax
 005AB0EB    mov        edi,dword ptr [ebx+5C]; TRaveDriverDataView.?f5C:TList
 005AB0EE    test       edi,edi
>005AB0F0    je         005AB0FB
 005AB0F2    test       esi,esi
>005AB0F4    jl         005AB0FB
 005AB0F6    cmp        esi,dword ptr [edi+8]; TList.FCount:Integer
>005AB0F9    jl         005AB0FF
 005AB0FB    xor        eax,eax
>005AB0FD    jmp        005AB108
 005AB0FF    mov        edx,esi
 005AB101    mov        eax,edi
 005AB103    call       TList.Get
 005AB108    pop        edi
 005AB109    pop        esi
 005AB10A    pop        ebx
 005AB10B    ret
*}
//end;

//005AB10C
//procedure sub_005AB10C(?:?; ?:?);
//begin
{*
 005AB10C    push       ebx
 005AB10D    push       esi
 005AB10E    push       edi
 005AB10F    mov        ebx,ecx
 005AB111    mov        edi,edx
 005AB113    mov        esi,dword ptr [eax+5C]; TRaveDriverDataView.?f5C:TList
 005AB116    mov        edx,edi
 005AB118    mov        eax,esi
 005AB11A    call       TList.IndexOf
 005AB11F    dec        ebx
>005AB120    je         005AB12A
 005AB122    dec        ebx
>005AB123    je         005AB12E
 005AB125    dec        ebx
>005AB126    je         005AB133
>005AB128    jmp        005AB138
 005AB12A    xor        ebx,ebx
>005AB12C    jmp        005AB13C
 005AB12E    mov        ebx,eax
 005AB130    dec        ebx
>005AB131    jmp        005AB13C
 005AB133    lea        ebx,[eax+1]
>005AB136    jmp        005AB13C
 005AB138    mov        ebx,dword ptr [esi+8]; TList.FCount:Integer
 005AB13B    dec        ebx
 005AB13C    test       eax,eax
>005AB13E    jl         005AB179
 005AB140    test       ebx,ebx
>005AB142    jl         005AB179
 005AB144    cmp        ebx,dword ptr [esi+8]; TList.FCount:Integer
>005AB147    jge        005AB179
 005AB149    cmp        ebx,eax
>005AB14B    je         005AB179
 005AB14D    mov        edx,eax
 005AB14F    mov        eax,esi
 005AB151    call       TList.Delete
 005AB156    mov        ecx,edi
 005AB158    mov        edx,ebx
 005AB15A    mov        eax,esi
 005AB15C    call       TList.Insert
 005AB161    mov        eax,edi
 005AB163    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005AB169    call       @IsClass
 005AB16E    test       al,al
>005AB170    je         005AB179
 005AB172    mov        eax,edi
 005AB174    call       005A8540
 005AB179    pop        edi
 005AB17A    pop        esi
 005AB17B    pop        ebx
 005AB17C    ret
*}
//end;

//005AB180
constructor TRaveProjectItem.Create(AOwner:TComponent);
begin
{*
 005AB180    push       ebx
 005AB181    push       esi
 005AB182    test       dl,dl
>005AB184    je         005AB18E
 005AB186    add        esp,0FFFFFFF0
 005AB189    call       @ClassCreate
 005AB18E    mov        ebx,edx
 005AB190    mov        esi,eax
 005AB192    xor        edx,edx
 005AB194    mov        eax,esi
 005AB196    call       TRaveContainerComponent.Create
 005AB19B    mov        dl,1
 005AB19D    mov        eax,[0041C8E4]; TStringList
 005AB1A2    call       TObject.Create; TStringList.Create
 005AB1A7    mov        dword ptr [esi+6C],eax; TRaveProjectItem.?f6C:TStringList
 005AB1AA    mov        dl,1
 005AB1AC    mov        eax,[0041C8E4]; TStringList
 005AB1B1    call       TObject.Create; TStringList.Create
 005AB1B6    mov        dword ptr [esi+70],eax; TRaveProjectItem.?f70:TStringList
 005AB1B9    mov        eax,esi
 005AB1BB    test       bl,bl
>005AB1BD    je         005AB1CE
 005AB1BF    call       @AfterConstruction
 005AB1C4    pop        dword ptr fs:[0]
 005AB1CB    add        esp,0C
 005AB1CE    mov        eax,esi
 005AB1D0    pop        esi
 005AB1D1    pop        ebx
 005AB1D2    ret
*}
end;

//005AB1D4
destructor TRaveProjectItem.Destroy;
begin
{*
 005AB1D4    push       ebx
 005AB1D5    push       esi
 005AB1D6    call       @BeforeDestruction
 005AB1DB    mov        ebx,edx
 005AB1DD    mov        esi,eax
 005AB1DF    lea        eax,[esi+74]; TRaveProjectItem.?f74:dword
 005AB1E2    call       FreeAndNil
 005AB1E7    lea        eax,[esi+70]; TRaveProjectItem.?f70:TStringList
 005AB1EA    call       FreeAndNil
 005AB1EF    lea        eax,[esi+6C]; TRaveProjectItem.?f6C:TStringList
 005AB1F2    call       FreeAndNil
 005AB1F7    mov        edx,ebx
 005AB1F9    and        dl,0FC
 005AB1FC    mov        eax,esi
 005AB1FE    call       TRaveComponent.Destroy
 005AB203    test       bl,bl
>005AB205    jle        005AB20E
 005AB207    mov        eax,esi
 005AB209    call       @ClassDestroy
 005AB20E    pop        esi
 005AB20F    pop        ebx
 005AB210    ret
*}
end;

//005AB214
//procedure sub_005AB214(?:?; ?:?);
//begin
{*
 005AB214    push       ebp
 005AB215    mov        ebp,esp
 005AB217    add        esp,0FFFFFFF8
 005AB21A    push       ebx
 005AB21B    push       esi
 005AB21C    mov        esi,edx
 005AB21E    mov        ebx,eax
 005AB220    cmp        dword ptr [ebx+74],0
>005AB224    je         005AB22E
 005AB226    lea        eax,[ebx+74]
 005AB229    call       FreeAndNil
 005AB22E    mov        dl,1
 005AB230    mov        eax,[0041CBF8]; TMemoryStream
 005AB235    call       TObject.Create; TMemoryStream.Create
 005AB23A    mov        dword ptr [ebp-4],eax
 005AB23D    xor        eax,eax
 005AB23F    push       ebp
 005AB240    push       5AB2AC
 005AB245    push       dword ptr fs:[eax]
 005AB248    mov        dword ptr fs:[eax],esp
 005AB24B    lea        edx,[ebp-8]
 005AB24E    mov        ecx,4
 005AB253    mov        eax,esi
 005AB255    call       TReader.Read
 005AB25A    mov        edx,dword ptr [ebp-8]
 005AB25D    mov        eax,dword ptr [ebp-4]
 005AB260    mov        ecx,dword ptr [eax]
 005AB262    call       dword ptr [ecx+4]; TMemoryStream.SetSize
 005AB265    mov        eax,dword ptr [ebp-4]
 005AB268    mov        edx,dword ptr [eax+4]; TMemoryStream.FMemory:Pointer
 005AB26B    mov        ecx,dword ptr [ebp-8]
 005AB26E    mov        eax,esi
 005AB270    call       TReader.Read
 005AB275    push       0
 005AB277    push       0
 005AB279    mov        eax,dword ptr [ebp-4]
 005AB27C    call       TStream.SetPosition
 005AB281    mov        ecx,ebx
 005AB283    mov        edx,ebx
 005AB285    mov        eax,dword ptr [ebp-4]
 005AB288    call       005A8020
 005AB28D    mov        edx,eax
 005AB28F    mov        eax,ebx
 005AB291    call       005AB33C
 005AB296    xor        eax,eax
 005AB298    pop        edx
 005AB299    pop        ecx
 005AB29A    pop        ecx
 005AB29B    mov        dword ptr fs:[eax],edx
 005AB29E    push       5AB2B3
 005AB2A3    mov        eax,dword ptr [ebp-4]
 005AB2A6    call       TObject.Free
 005AB2AB    ret
<005AB2AC    jmp        @HandleFinally
<005AB2B1    jmp        005AB2A3
 005AB2B3    pop        esi
 005AB2B4    pop        ebx
 005AB2B5    pop        ecx
 005AB2B6    pop        ecx
 005AB2B7    pop        ebp
 005AB2B8    ret
*}
//end;

//005AB2BC
//procedure sub_005AB2BC(?:?; ?:?);
//begin
{*
 005AB2BC    push       ebp
 005AB2BD    mov        ebp,esp
 005AB2BF    add        esp,0FFFFFFF8
 005AB2C2    push       ebx
 005AB2C3    push       esi
 005AB2C4    mov        esi,edx
 005AB2C6    mov        ebx,eax
 005AB2C8    mov        dl,1
 005AB2CA    mov        eax,[0041CBF8]; TMemoryStream
 005AB2CF    call       TObject.Create; TMemoryStream.Create
 005AB2D4    mov        dword ptr [ebp-4],eax
 005AB2D7    xor        eax,eax
 005AB2D9    push       ebp
 005AB2DA    push       5AB32F
 005AB2DF    push       dword ptr fs:[eax]
 005AB2E2    mov        dword ptr fs:[eax],esp
 005AB2E5    mov        eax,dword ptr [ebx+74]
 005AB2E8    mov        edx,dword ptr [ebp-4]
 005AB2EB    mov        ecx,dword ptr [eax]
 005AB2ED    call       dword ptr [ecx+0C]
 005AB2F0    mov        eax,dword ptr [ebp-4]
 005AB2F3    mov        edx,dword ptr [eax]
 005AB2F5    call       dword ptr [edx]; TStream.GetSize
 005AB2F7    mov        dword ptr [ebp-8],eax
 005AB2FA    lea        edx,[ebp-8]
 005AB2FD    mov        ecx,4
 005AB302    mov        eax,esi
 005AB304    call       TWriter.Write
 005AB309    mov        eax,dword ptr [ebp-4]
 005AB30C    mov        edx,dword ptr [eax+4]; TMemoryStream.FMemory:Pointer
 005AB30F    mov        ecx,dword ptr [ebp-8]
 005AB312    mov        eax,esi
 005AB314    call       TWriter.Write
 005AB319    xor        eax,eax
 005AB31B    pop        edx
 005AB31C    pop        ecx
 005AB31D    pop        ecx
 005AB31E    mov        dword ptr fs:[eax],edx
 005AB321    push       5AB336
 005AB326    mov        eax,dword ptr [ebp-4]
 005AB329    call       TObject.Free
 005AB32E    ret
<005AB32F    jmp        @HandleFinally
<005AB334    jmp        005AB326
 005AB336    pop        esi
 005AB337    pop        ebx
 005AB338    pop        ecx
 005AB339    pop        ecx
 005AB33A    pop        ebp
 005AB33B    ret
*}
//end;

//005AB33C
//procedure sub_005AB33C(?:?; ?:TRCPUModule);
//begin
{*
 005AB33C    mov        dword ptr [eax+74],edx
 005AB33F    ret
*}
//end;

//005AB340
procedure TRaveProjectItem.DefineProperties(Filer:TFiler);
begin
{*
 005AB340    push       ebx
 005AB341    push       esi
 005AB342    mov        esi,edx
 005AB344    mov        ebx,eax
 005AB346    mov        edx,esi
 005AB348    mov        eax,ebx
 005AB34A    call       TComponent.DefineProperties
 005AB34F    push       ebx
 005AB350    push       5AB214; sub_005AB214
 005AB355    push       ebx
 005AB356    push       5AB2BC; sub_005AB2BC
 005AB35B    cmp        dword ptr [ebx+74],0; TRaveProjectItem.?f74:dword
 005AB35F    setne      cl
 005AB362    mov        edx,5AB37C; 'Module'
 005AB367    mov        eax,esi
 005AB369    mov        ebx,dword ptr [eax]
 005AB36B    call       dword ptr [ebx+4]; TFiler.DefineProperty
 005AB36E    pop        esi
 005AB36F    pop        ebx
 005AB370    ret
*}
end;

//005AB384
//procedure sub_005AB384(?:TRaveProjectItem; ?:?);
//begin
{*
 005AB384    push       esi
 005AB385    mov        esi,eax
 005AB387    cmp        dl,byte ptr [esi+60]; TRaveProjectItem.?f60:byte
>005AB38A    je         005AB3A6
 005AB38C    test       dl,dl
>005AB38E    je         005AB39C
 005AB390    mov        eax,esi
 005AB392    mov        edx,dword ptr [eax]
 005AB394    call       dword ptr [edx+0DC]; TRaveProjectItem.sub_005AB4A8
>005AB39A    jmp        005AB3A6
 005AB39C    mov        eax,esi
 005AB39E    mov        edx,dword ptr [eax]
 005AB3A0    call       dword ptr [edx+0E0]; TRaveProjectItem.sub_005AB4BC
 005AB3A6    pop        esi
 005AB3A7    ret
*}
//end;

//005AB3A8
procedure TRaveProjectItem.SetName(NewName:TComponentName);
begin
{*
 005AB3A8    push       ebx
 005AB3A9    push       esi
 005AB3AA    mov        esi,edx
 005AB3AC    mov        ebx,eax
 005AB3AE    mov        eax,dword ptr [ebx+68]; TRaveProjectItem.?f68:String
 005AB3B1    mov        edx,dword ptr [ebx+8]; TRaveProjectItem.?f8:TComponentName
 005AB3B4    call       @LStrCmp
>005AB3B9    jne        005AB3C5
 005AB3BB    lea        eax,[ebx+68]; TRaveProjectItem.?f68:String
 005AB3BE    mov        edx,esi
 005AB3C0    call       @LStrAsg
 005AB3C5    mov        edx,esi
 005AB3C7    mov        eax,ebx
 005AB3C9    call       TRaveComponent.SetName
 005AB3CE    pop        esi
 005AB3CF    pop        ebx
 005AB3D0    ret
*}
end;

//005AB3D4
procedure TRaveReport.SetParameters(Self:TRaveReport);
begin
{*
 005AB3D4    push       ebp
 005AB3D5    mov        ebp,esp
 005AB3D7    add        esp,0FFFFFFF0
 005AB3DA    push       ebx
 005AB3DB    push       esi
 005AB3DC    xor        ecx,ecx
 005AB3DE    mov        dword ptr [ebp-0C],ecx
 005AB3E1    mov        dword ptr [ebp-4],eax
 005AB3E4    xor        eax,eax
 005AB3E6    push       ebp
 005AB3E7    push       5AB48B
 005AB3EC    push       dword ptr fs:[eax]
 005AB3EF    mov        dword ptr fs:[eax],esp
 005AB3F2    mov        eax,dword ptr [ebp-4]
 005AB3F5    mov        eax,dword ptr [eax+6C]; TRaveReport.?f6C:TStringList
 005AB3F8    mov        ecx,dword ptr [eax]
 005AB3FA    call       dword ptr [ecx+8]; TStrings.Assign
 005AB3FD    mov        eax,dword ptr [ebp-4]
 005AB400    mov        eax,dword ptr [eax+6C]; TRaveReport.?f6C:TStringList
 005AB403    mov        edx,dword ptr [eax]
 005AB405    call       dword ptr [edx+14]; TStringList.GetCount
 005AB408    dec        eax
 005AB409    test       eax,eax
>005AB40B    jl         005AB475
 005AB40D    inc        eax
 005AB40E    mov        dword ptr [ebp-10],eax
 005AB411    mov        dword ptr [ebp-8],0
 005AB418    lea        ecx,[ebp-0C]
 005AB41B    mov        eax,dword ptr [ebp-4]
 005AB41E    mov        eax,dword ptr [eax+6C]; TRaveReport.?f6C:TStringList
 005AB421    mov        edx,dword ptr [ebp-8]
 005AB424    mov        ebx,dword ptr [eax]
 005AB426    call       dword ptr [ebx+0C]; TStringList.Get
 005AB429    mov        eax,dword ptr [ebp-0C]
 005AB42C    call       @LStrLen
 005AB431    mov        esi,eax
 005AB433    test       esi,esi
>005AB435    jle        005AB45C
 005AB437    mov        ebx,1
 005AB43C    mov        eax,dword ptr [ebp-0C]
 005AB43F    mov        al,byte ptr [eax+ebx-1]
 005AB443    sub        al,3C
>005AB445    je         005AB44B
 005AB447    sub        al,2
>005AB449    jne        005AB458
 005AB44B    lea        eax,[ebp-0C]
 005AB44E    call       @UniqueStringA
 005AB453    mov        byte ptr [eax+ebx-1],5F
 005AB458    inc        ebx
 005AB459    dec        esi
<005AB45A    jne        005AB43C
 005AB45C    mov        eax,dword ptr [ebp-4]
 005AB45F    mov        eax,dword ptr [eax+6C]; TRaveReport.?f6C:TStringList
 005AB462    mov        ecx,dword ptr [ebp-0C]
 005AB465    mov        edx,dword ptr [ebp-8]
 005AB468    mov        ebx,dword ptr [eax]
 005AB46A    call       dword ptr [ebx+20]; TStringList.Put
 005AB46D    inc        dword ptr [ebp-8]
 005AB470    dec        dword ptr [ebp-10]
<005AB473    jne        005AB418
 005AB475    xor        eax,eax
 005AB477    pop        edx
 005AB478    pop        ecx
 005AB479    pop        ecx
 005AB47A    mov        dword ptr fs:[eax],edx
 005AB47D    push       5AB492
 005AB482    lea        eax,[ebp-0C]
 005AB485    call       @LStrClr
 005AB48A    ret
<005AB48B    jmp        @HandleFinally
<005AB490    jmp        005AB482
 005AB492    pop        esi
 005AB493    pop        ebx
 005AB494    mov        esp,ebp
 005AB496    pop        ebp
 005AB497    ret
*}
end;

//005AB498
procedure TRaveReport.SetPIVars(Self:TRaveReport);
begin
{*
 005AB498    push       esi
 005AB499    mov        esi,eax
 005AB49B    mov        eax,dword ptr [esi+70]; TRaveReport.?f70:TStringList
 005AB49E    mov        ecx,dword ptr [eax]
 005AB4A0    call       dword ptr [ecx+8]; TStrings.Assign
 005AB4A3    pop        esi
 005AB4A4    ret
*}
end;

//005AB4A8
procedure sub_005AB4A8;
begin
{*
 005AB4A8    cmp        byte ptr [eax+60],0; TRaveProjectItem.?f60:byte
>005AB4AC    jne        005AB4B9
 005AB4AE    mov        byte ptr [eax+60],1; TRaveProjectItem.?f60:byte
 005AB4B2    mov        dl,1
 005AB4B4    call       005A8060
 005AB4B9    ret
*}
end;

//005AB4BC
procedure sub_005AB4BC;
begin
{*
 005AB4BC    cmp        byte ptr [eax+60],0; TRaveProjectItem.?f60:byte
>005AB4C0    je         005AB4CD
 005AB4C2    mov        byte ptr [eax+60],0; TRaveProjectItem.?f60:byte
 005AB4C6    xor        edx,edx
 005AB4C8    call       005A8060
 005AB4CD    ret
*}
end;

//005AB4D0
//procedure TRaveProjectItem.SetCompileNeeded(Self:TRaveProjectItem; ?:?);
//begin
{*
 005AB4D0    push       ebx
 005AB4D1    push       esi
 005AB4D2    push       edi
 005AB4D3    push       ebp
 005AB4D4    mov        ebx,eax
 005AB4D6    mov        eax,edx
 005AB4D8    mov        byte ptr [ebx+78],al; TRaveProjectItem.CompileNeeded:Boolean
 005AB4DB    test       al,al
>005AB4DD    je         005AB519
 005AB4DF    mov        eax,ebx
 005AB4E1    mov        edx,dword ptr [eax]
 005AB4E3    call       dword ptr [edx+54]; TRaveProjectItem.sub_005AB0D4
 005AB4E6    mov        edi,eax
 005AB4E8    dec        edi
 005AB4E9    test       edi,edi
>005AB4EB    jl         005AB519
 005AB4ED    inc        edi
 005AB4EE    xor        ebp,ebp
 005AB4F0    mov        edx,ebp
 005AB4F2    mov        eax,ebx
 005AB4F4    mov        ecx,dword ptr [eax]
 005AB4F6    call       dword ptr [ecx+50]; TRaveProjectItem.sub_005AB0E4
 005AB4F9    mov        esi,eax
 005AB4FB    mov        eax,esi
 005AB4FD    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005AB503    call       @IsClass
 005AB508    test       al,al
>005AB50A    je         005AB515
 005AB50C    mov        dl,1
 005AB50E    mov        eax,esi
 005AB510    call       TRaveProjectItem.SetCompileNeeded
 005AB515    inc        ebp
 005AB516    dec        edi
<005AB517    jne        005AB4F0
 005AB519    pop        ebp
 005AB51A    pop        edi
 005AB51B    pop        esi
 005AB51C    pop        ebx
 005AB51D    ret
*}
//end;

//005AB520
procedure sub_005AB520;
begin
{*
 005AB520    push       ebx
 005AB521    mov        ebx,eax
 005AB523    mov        eax,ebx
 005AB525    call       005A80D0
 005AB52A    xor        edx,edx
 005AB52C    mov        eax,ebx
 005AB52E    call       TRaveProjectItem.SetCompileNeeded
 005AB533    pop        ebx
 005AB534    ret
*}
end;

//005AB538
procedure sub_005AB538;
begin
{*
 005AB538    push       ebx
 005AB539    push       esi
 005AB53A    push       edi
 005AB53B    mov        edi,eax
 005AB53D    mov        eax,edi
 005AB53F    call       005A80E0
 005AB544    mov        eax,edi
 005AB546    mov        edx,dword ptr [eax]
 005AB548    call       dword ptr [edx+54]; TRaveDriverDataView.sub_005AB0D4
 005AB54B    mov        esi,eax
 005AB54D    dec        esi
 005AB54E    test       esi,esi
>005AB550    jl         005AB582
 005AB552    inc        esi
 005AB553    xor        ebx,ebx
 005AB555    mov        edx,ebx
 005AB557    mov        eax,edi
 005AB559    mov        ecx,dword ptr [eax]
 005AB55B    call       dword ptr [ecx+50]; TRaveDriverDataView.sub_005AB0E4
 005AB55E    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005AB564    call       @IsClass
 005AB569    test       al,al
>005AB56B    je         005AB57E
 005AB56D    mov        edx,ebx
 005AB56F    mov        eax,edi
 005AB571    mov        ecx,dword ptr [eax]
 005AB573    call       dword ptr [ecx+50]; TRaveDriverDataView.sub_005AB0E4
 005AB576    mov        edx,dword ptr [eax]
 005AB578    call       dword ptr [edx+0E8]
 005AB57E    inc        ebx
 005AB57F    dec        esi
<005AB580    jne        005AB555
 005AB582    pop        edi
 005AB583    pop        esi
 005AB584    pop        ebx
 005AB585    ret
*}
end;

//005AB588
//procedure sub_005AB588(?:TComponent; ?:AnsiString);
//begin
{*
 005AB588    push       ebx
 005AB589    push       esi
 005AB58A    push       edi
 005AB58B    mov        edi,edx
 005AB58D    mov        ebx,eax
 005AB58F    mov        esi,dword ptr [ebx+4]; TComponent.FOwner:TComponent
 005AB592    mov        eax,esi
 005AB594    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005AB59A    call       @IsClass
 005AB59F    test       al,al
>005AB5A1    je         005AB5B4
 005AB5A3    mov        eax,esi
 005AB5A5    mov        edx,dword ptr ds:[5A1434]; TRaveProjectManager
 005AB5AB    call       @IsClass
 005AB5B0    test       al,al
>005AB5B2    je         005AB5C0
 005AB5B4    mov        eax,edi
 005AB5B6    mov        edx,dword ptr [ebx+8]; TComponent.?f8:TComponentName
 005AB5B9    call       @LStrAsg
>005AB5BE    jmp        005AB5E4
 005AB5C0    mov        eax,esi
 005AB5C2    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005AB5C8    call       @AsClass
 005AB5CD    push       dword ptr [eax+8]; TRaveProjectItem.?f8:TComponentName
 005AB5D0    push       5AB5F0; '_'
 005AB5D5    push       dword ptr [ebx+8]; TComponent.?f8:TComponentName
 005AB5D8    mov        eax,edi
 005AB5DA    mov        edx,3
 005AB5DF    call       @LStrCatN
 005AB5E4    pop        edi
 005AB5E5    pop        esi
 005AB5E6    pop        ebx
 005AB5E7    ret
*}
//end;

//005AB5F4
procedure sub_005AB5F4;
begin
{*
 005AB5F4    push       ebx
 005AB5F5    mov        ebx,eax
 005AB5F7    mov        eax,dword ptr [ebx+74]; TRaveDriverDataView.?f74:dword
 005AB5FA    test       eax,eax
>005AB5FC    je         005AB602
 005AB5FE    mov        edx,dword ptr [eax]
 005AB600    call       dword ptr [edx]
 005AB602    mov        eax,ebx
 005AB604    call       005A858C
 005AB609    pop        ebx
 005AB60A    ret
*}
end;

//005AB60C
//procedure sub_005AB60C(?:?; ?:?);
//begin
{*
 005AB60C    push       ebx
 005AB60D    push       esi
 005AB60E    push       edi
 005AB60F    push       ebp
 005AB610    mov        edi,ecx
 005AB612    mov        esi,edx
 005AB614    mov        ebx,eax
 005AB616    mov        ecx,edi
 005AB618    mov        edx,esi
 005AB61A    mov        eax,ebx
 005AB61C    call       005A85B8
 005AB621    mov        ebp,dword ptr [ebx+74]; TRaveProjectItem.?f74:dword
 005AB624    test       ebp,ebp
>005AB626    je         005AB64E
 005AB628    test       esi,esi
>005AB62A    je         005AB64E
 005AB62C    mov        eax,esi
 005AB62E    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005AB634    call       @IsClass
 005AB639    test       al,al
>005AB63B    je         005AB64E
 005AB63D    test       edi,edi
>005AB63F    je         005AB64E
 005AB641    mov        ecx,dword ptr [edi+74]
 005AB644    mov        edx,dword ptr [esi+74]
 005AB647    mov        eax,ebp
 005AB649    mov        ebx,dword ptr [eax]
 005AB64B    call       dword ptr [ebx+2C]
 005AB64E    pop        ebp
 005AB64F    pop        edi
 005AB650    pop        esi
 005AB651    pop        ebx
 005AB652    ret
*}
//end;

//005AB654
//procedure sub_005AB654(?:?);
//begin
{*
 005AB654    push       ebp
 005AB655    mov        ebp,esp
 005AB657    push       ecx
 005AB658    push       ebx
 005AB659    mov        ebx,eax
 005AB65B    mov        ecx,edx
 005AB65D    mov        eax,[005A77D8]; TRaveWriter
 005AB662    mov        dl,1
 005AB664    call       TRaveWriter.Create; TRaveWriter.Create
 005AB669    mov        dword ptr [ebp-4],eax
 005AB66C    xor        eax,eax
 005AB66E    push       ebp
 005AB66F    push       5AB69C
 005AB674    push       dword ptr fs:[eax]
 005AB677    mov        dword ptr fs:[eax],esp
 005AB67A    mov        cl,1
 005AB67C    mov        edx,ebx
 005AB67E    mov        eax,dword ptr [ebp-4]
 005AB681    call       005AC534
 005AB686    xor        eax,eax
 005AB688    pop        edx
 005AB689    pop        ecx
 005AB68A    pop        ecx
 005AB68B    mov        dword ptr fs:[eax],edx
 005AB68E    push       5AB6A3
 005AB693    mov        eax,dword ptr [ebp-4]
 005AB696    call       TObject.Free
 005AB69B    ret
<005AB69C    jmp        @HandleFinally
<005AB6A1    jmp        005AB693
 005AB6A3    pop        ebx
 005AB6A4    pop        ecx
 005AB6A5    pop        ebp
 005AB6A6    ret
*}
//end;

//005AB6A8
//procedure sub_005AB6A8(?:?);
//begin
{*
 005AB6A8    push       ebp
 005AB6A9    mov        ebp,esp
 005AB6AB    push       ecx
 005AB6AC    push       ebx
 005AB6AD    mov        ebx,eax
 005AB6AF    mov        ecx,edx
 005AB6B1    mov        eax,[005A7840]; TRaveReader
 005AB6B6    mov        dl,1
 005AB6B8    call       TRaveReader.Create; TRaveReader.Create
 005AB6BD    mov        dword ptr [ebp-4],eax
 005AB6C0    xor        eax,eax
 005AB6C2    push       ebp
 005AB6C3    push       5AB704
 005AB6C8    push       dword ptr fs:[eax]
 005AB6CB    mov        dword ptr fs:[eax],esp
 005AB6CE    mov        eax,dword ptr [ebx+48]; TRaveDriverDataView.?f48:TRaveComponent
 005AB6D1    mov        eax,dword ptr [eax+0D4]
 005AB6D7    mov        edx,dword ptr [ebp-4]
 005AB6DA    mov        dword ptr [edx+50],eax; TRaveReader.?f50:dword
 005AB6DD    mov        eax,dword ptr [ebp-4]
 005AB6E0    mov        byte ptr [eax+40],1; TRaveReader.?f40:byte
 005AB6E4    mov        edx,ebx
 005AB6E6    mov        eax,dword ptr [ebp-4]
 005AB6E9    call       005AD584
 005AB6EE    xor        eax,eax
 005AB6F0    pop        edx
 005AB6F1    pop        ecx
 005AB6F2    pop        ecx
 005AB6F3    mov        dword ptr fs:[eax],edx
 005AB6F6    push       5AB70B
 005AB6FB    mov        eax,dword ptr [ebp-4]
 005AB6FE    call       TObject.Free
 005AB703    ret
<005AB704    jmp        @HandleFinally
<005AB709    jmp        005AB6FB
 005AB70B    pop        ebx
 005AB70C    pop        ecx
 005AB70D    pop        ebp
 005AB70E    ret
*}
//end;

//005AB710
constructor TRavePage.Create(AOwner:TComponent);
begin
{*
 005AB710    push       ebx
 005AB711    push       esi
 005AB712    push       edi
 005AB713    test       dl,dl
>005AB715    je         005AB71F
 005AB717    add        esp,0FFFFFFF0
 005AB71A    call       @ClassCreate
 005AB71F    mov        esi,ecx
 005AB721    mov        ebx,edx
 005AB723    mov        edi,eax
 005AB725    mov        ecx,esi
 005AB727    xor        edx,edx
 005AB729    mov        eax,edi
 005AB72B    call       TRaveProjectItem.Create
 005AB730    mov        dword ptr [edi+40],edi; TRavePage.?f40:TComponent
 005AB733    mov        eax,esi
 005AB735    mov        edx,dword ptr ds:[5A1434]; TRaveProjectManager
 005AB73B    call       @IsClass
 005AB740    mov        byte ptr [edi+80],al; TRavePage.?f80:byte
 005AB746    mov        eax,[0061B1A0]
 005AB74B    mov        edx,dword ptr [eax]
 005AB74D    mov        dword ptr [edi+88],edx; TRavePage.PageWidth:TRaveUnits
 005AB753    mov        edx,dword ptr [eax+4]
 005AB756    mov        dword ptr [edi+8C],edx; TRavePage.?f8C:dword
 005AB75C    mov        eax,[0061B140]
 005AB761    mov        edx,dword ptr [eax]
 005AB763    mov        dword ptr [edi+90],edx; TRavePage.PageHeight:TRaveUnits
 005AB769    mov        edx,dword ptr [eax+4]
 005AB76C    mov        dword ptr [edi+94],edx; TRavePage.?f94:dword
 005AB772    mov        eax,[0061C1CC]
 005AB777    mov        eax,dword ptr [eax]
 005AB779    mov        dword ptr [edi+84],eax; TRavePage.PaperSize:TRavePaperSize
 005AB77F    mov        dword ptr [edi+0B8],0FFFFFFFF; TRavePage.Bin:TRaveBin
 005AB789    mov        byte ptr [edi+3C],1; TRavePage.?f3C:byte
 005AB78D    mov        edx,dword ptr ds:[61AF6C]
 005AB793    mov        edx,dword ptr [edx]
 005AB795    mov        eax,edi
 005AB797    call       TRavePage.SetGridLines
 005AB79C    mov        eax,[0061C460]; ^gvar_00617130:?Double
 005AB7A1    fld        qword ptr [eax]
 005AB7A3    mov        eax,dword ptr [edi+48]; TRavePage.?f48:TRaveComponent
 005AB7A6    fdiv       qword ptr [eax+0C8]
 005AB7AC    add        esp,0FFFFFFF8
 005AB7AF    fstp       qword ptr [esp]
 005AB7B2    wait
 005AB7B3    mov        eax,edi
 005AB7B5    call       TRavePage.SetGridSpacing
 005AB7BA    mov        byte ptr [edi+0B4],2; TRavePage.Orientation:TOrientation
 005AB7C1    mov        eax,edi
 005AB7C3    test       bl,bl
>005AB7C5    je         005AB7D6
 005AB7C7    call       @AfterConstruction
 005AB7CC    pop        dword ptr fs:[0]
 005AB7D3    add        esp,0C
 005AB7D6    mov        eax,edi
 005AB7D8    pop        edi
 005AB7D9    pop        esi
 005AB7DA    pop        ebx
 005AB7DB    ret
*}
end;

//005AB7DC
destructor TRavePage.Destroy;
begin
{*
 005AB7DC    push       ebx
 005AB7DD    push       esi
 005AB7DE    call       @BeforeDestruction
 005AB7E3    mov        ebx,edx
 005AB7E5    mov        esi,eax
 005AB7E7    mov        edx,ebx
 005AB7E9    and        dl,0FC
 005AB7EC    mov        eax,esi
 005AB7EE    call       TRaveProjectItem.Destroy
 005AB7F3    test       bl,bl
>005AB7F5    jle        005AB7FE
 005AB7F7    mov        eax,esi
 005AB7F9    call       @ClassDestroy
 005AB7FE    pop        esi
 005AB7FF    pop        ebx
 005AB800    ret
*}
end;

//005AB804
//procedure sub_005AB804(?:?);
//begin
{*
 005AB804    push       ebp
 005AB805    mov        ebp,esp
 005AB807    push       ecx
 005AB808    push       ebx
 005AB809    mov        ebx,eax
 005AB80B    mov        ecx,edx
 005AB80D    mov        eax,[005A7840]; TRaveReader
 005AB812    mov        dl,1
 005AB814    call       TRaveReader.Create; TRaveReader.Create
 005AB819    mov        dword ptr [ebp-4],eax
 005AB81C    xor        eax,eax
 005AB81E    push       ebp
 005AB81F    push       5AB856
 005AB824    push       dword ptr fs:[eax]
 005AB827    mov        dword ptr fs:[eax],esp
 005AB82A    mov        al,byte ptr [ebx+80]; TRavePage.?f80:byte
 005AB830    mov        edx,dword ptr [ebp-4]
 005AB833    mov        byte ptr [edx+40],al; TRaveReader.?f40:byte
 005AB836    mov        edx,ebx
 005AB838    mov        eax,dword ptr [ebp-4]
 005AB83B    call       005AD584
 005AB840    xor        eax,eax
 005AB842    pop        edx
 005AB843    pop        ecx
 005AB844    pop        ecx
 005AB845    mov        dword ptr fs:[eax],edx
 005AB848    push       5AB85D
 005AB84D    mov        eax,dword ptr [ebp-4]
 005AB850    call       TObject.Free
 005AB855    ret
<005AB856    jmp        @HandleFinally
<005AB85B    jmp        005AB84D
 005AB85D    pop        ebx
 005AB85E    pop        ecx
 005AB85F    pop        ebp
 005AB860    ret
*}
//end;

//005AB864
procedure sub_005AB864();
begin
{*
 005AB864    call       005A80E0
 005AB869    ret
*}
end;

//005AB86C
//procedure sub_005AB86C(?:?; ?:?);
//begin
{*
 005AB86C    push       ebx
 005AB86D    push       esi
 005AB86E    push       edi
 005AB86F    mov        edi,ecx
 005AB871    mov        esi,edx
 005AB873    mov        ebx,eax
 005AB875    mov        ecx,edi
 005AB877    mov        edx,esi
 005AB879    mov        eax,ebx
 005AB87B    call       005AB60C
 005AB880    mov        eax,dword ptr [ebx+0A0]; TRavePage.GotoPage:TRavePage
 005AB886    test       eax,eax
>005AB888    je         005AB8A1
 005AB88A    cmp        esi,eax
>005AB88C    jne        005AB8A1
 005AB88E    mov        eax,edi
 005AB890    mov        edx,dword ptr ds:[5A7428]; TRavePage
 005AB896    call       @AsClass
 005AB89B    mov        dword ptr [ebx+0A0],eax; TRavePage.GotoPage:TRavePage
 005AB8A1    pop        edi
 005AB8A2    pop        esi
 005AB8A3    pop        ebx
 005AB8A4    ret
*}
//end;

//005AB8A8
//procedure sub_005AB8A8(?:?);
//begin
{*
 005AB8A8    push       ebx
 005AB8A9    push       esi
 005AB8AA    push       edi
 005AB8AB    push       ebp
 005AB8AC    add        esp,0FFFFFFAC
 005AB8AF    mov        dword ptr [esp],edx
 005AB8B2    mov        esi,eax
 005AB8B4    mov        eax,esi
 005AB8B6    mov        edx,dword ptr [eax]
 005AB8B8    call       dword ptr [edx+0B8]; TRavePage.sub_005A8BC4
 005AB8BE    test       al,al
>005AB8C0    je         005ABB01
 005AB8C6    mov        eax,esi
 005AB8C8    mov        edx,dword ptr [eax]
 005AB8CA    call       dword ptr [edx+9C]; TRavePage.sub_005A8644
 005AB8D0    cmp        byte ptr [esi+0C0],0; TRavePage.WasteFit:Boolean
>005AB8D7    je         005ABAC3
 005AB8DD    mov        eax,dword ptr [esp]
 005AB8E0    call       0058443C
 005AB8E5    fld        tbyte ptr ds:[5ABB0C]; 0,01:Extended
 005AB8EB    faddp      st(1),st
 005AB8ED    fstp       qword ptr [esp+8]
 005AB8F1    wait
 005AB8F2    mov        eax,dword ptr [esp]
 005AB8F5    call       0058447C
 005AB8FA    fld        tbyte ptr ds:[5ABB0C]; 0,01:Extended
 005AB900    faddp      st(1),st
 005AB902    fstp       qword ptr [esp+10]
 005AB906    wait
 005AB907    mov        eax,dword ptr [esp]
 005AB90A    call       0058445C
 005AB90F    fld        tbyte ptr ds:[5ABB0C]; 0,01:Extended
 005AB915    faddp      st(1),st
 005AB917    fstp       tbyte ptr [esp+28]
 005AB91B    wait
 005AB91C    mov        eax,dword ptr [esp]
 005AB91F    call       005846EC
 005AB924    fld        tbyte ptr [esp+28]
 005AB928    fsubp      st(1),st
 005AB92A    fstp       qword ptr [esp+18]
 005AB92E    wait
 005AB92F    mov        eax,dword ptr [esp]
 005AB932    call       0058449C
 005AB937    fld        tbyte ptr ds:[5ABB0C]; 0,01:Extended
 005AB93D    faddp      st(1),st
 005AB93F    fstp       tbyte ptr [esp+28]
 005AB943    wait
 005AB944    mov        eax,dword ptr [esp]
 005AB947    call       00584684
 005AB94C    fld        tbyte ptr [esp+28]
 005AB950    fsubp      st(1),st
 005AB952    fstp       qword ptr [esp+20]
 005AB956    wait
 005AB957    mov        eax,esi
 005AB959    mov        edx,dword ptr [eax]
 005AB95B    call       dword ptr [edx+54]; TRavePage.sub_005AB0D4
 005AB95E    mov        ebx,eax
 005AB960    dec        ebx
 005AB961    test       ebx,ebx
>005AB963    jl         005ABAC3
 005AB969    inc        ebx
 005AB96A    xor        edi,edi
 005AB96C    mov        edx,edi
 005AB96E    mov        eax,esi
 005AB970    mov        ecx,dword ptr [eax]
 005AB972    call       dword ptr [ecx+50]; TRavePage.sub_005AB0E4
 005AB975    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005AB97B    call       @IsClass
 005AB980    test       al,al
>005AB982    je         005ABABB
 005AB988    mov        edx,edi
 005AB98A    mov        eax,esi
 005AB98C    mov        ecx,dword ptr [eax]
 005AB98E    call       dword ptr [ecx+50]; TRavePage.sub_005AB0E4
 005AB991    mov        ebp,eax
 005AB993    mov        eax,ebp
 005AB995    mov        edx,dword ptr [eax]
 005AB997    call       dword ptr [edx+12C]
 005AB99D    add        esp,0FFFFFFF8
 005AB9A0    fstp       qword ptr [esp]
 005AB9A3    wait
 005AB9A4    push       dword ptr [esp+14]
 005AB9A8    push       dword ptr [esp+14]
 005AB9AC    call       005A5B24
 005AB9B1    test       al,al
>005AB9B3    jne        005ABA19
 005AB9B5    mov        eax,ebp
 005AB9B7    mov        edx,dword ptr [eax]
 005AB9B9    call       dword ptr [edx+134]
 005AB9BF    add        esp,0FFFFFFF8
 005AB9C2    fstp       qword ptr [esp]
 005AB9C5    wait
 005AB9C6    push       dword ptr [esp+1C]
 005AB9CA    push       dword ptr [esp+1C]
 005AB9CE    call       005A5B24
 005AB9D3    test       al,al
>005AB9D5    jne        005ABA19
 005AB9D7    mov        eax,ebp
 005AB9D9    call       005A95B4
 005AB9DE    add        esp,0FFFFFFF8
 005AB9E1    fstp       qword ptr [esp]
 005AB9E4    wait
 005AB9E5    push       dword ptr [esp+24]
 005AB9E9    push       dword ptr [esp+24]
 005AB9ED    call       005A5B08
 005AB9F2    test       al,al
>005AB9F4    jne        005ABA19
 005AB9F6    mov        eax,ebp
 005AB9F8    call       TRaveBaseBarCode.GetBottom
 005AB9FD    add        esp,0FFFFFFF8
 005ABA00    fstp       qword ptr [esp]
 005ABA03    wait
 005ABA04    push       dword ptr [esp+2C]
 005ABA08    push       dword ptr [esp+2C]
 005ABA0C    call       005A5B08
 005ABA11    test       al,al
>005ABA13    je         005ABABB
 005ABA19    mov        eax,ebp
 005ABA1B    mov        edx,dword ptr [eax]
 005ABA1D    call       dword ptr [edx+12C]
 005ABA23    add        esp,0FFFFFFF8
 005ABA26    fstp       qword ptr [esp]
 005ABA29    wait
 005ABA2A    push       dword ptr [esp+14]
 005ABA2E    push       dword ptr [esp+14]
 005ABA32    call       005A5AB8
 005ABA37    add        esp,0FFFFFFF8
 005ABA3A    fstp       qword ptr [esp]
 005ABA3D    wait
 005ABA3E    mov        eax,ebp
 005ABA40    mov        edx,dword ptr [eax]
 005ABA42    call       dword ptr [edx+134]
 005ABA48    add        esp,0FFFFFFF8
 005ABA4B    fstp       qword ptr [esp]
 005ABA4E    wait
 005ABA4F    push       dword ptr [esp+24]
 005ABA53    push       dword ptr [esp+24]
 005ABA57    call       005A5AB8
 005ABA5C    add        esp,0FFFFFFF8
 005ABA5F    fstp       qword ptr [esp]
 005ABA62    wait
 005ABA63    mov        eax,ebp
 005ABA65    call       005A95B4
 005ABA6A    add        esp,0FFFFFFF8
 005ABA6D    fstp       qword ptr [esp]
 005ABA70    wait
 005ABA71    push       dword ptr [esp+34]
 005ABA75    push       dword ptr [esp+34]
 005ABA79    call       005A5A84
 005ABA7E    add        esp,0FFFFFFF8
 005ABA81    fstp       qword ptr [esp]
 005ABA84    wait
 005ABA85    mov        eax,ebp
 005ABA87    call       TRaveBaseBarCode.GetBottom
 005ABA8C    add        esp,0FFFFFFF8
 005ABA8F    fstp       qword ptr [esp]
 005ABA92    wait
 005ABA93    push       dword ptr [esp+44]
 005ABA97    push       dword ptr [esp+44]
 005ABA9B    call       005A5A84
 005ABAA0    add        esp,0FFFFFFF8
 005ABAA3    fstp       qword ptr [esp]
 005ABAA6    wait
 005ABAA7    lea        eax,[esp+54]
 005ABAAB    call       005A5B94
 005ABAB0    lea        edx,[esp+34]
 005ABAB4    mov        eax,ebp
 005ABAB6    call       005AA190
 005ABABB    inc        edi
 005ABABC    dec        ebx
<005ABABD    jne        005AB96C
 005ABAC3    mov        eax,esi
 005ABAC5    mov        edx,dword ptr [eax]
 005ABAC7    call       dword ptr [edx+0A0]; TRavePage.sub_005A8674
 005ABACD    mov        eax,esi
 005ABACF    mov        edx,dword ptr [eax]
 005ABAD1    call       dword ptr [edx+54]; TRavePage.sub_005AB0D4
 005ABAD4    mov        ebx,eax
 005ABAD6    dec        ebx
 005ABAD7    test       ebx,ebx
>005ABAD9    jl         005ABB01
 005ABADB    inc        ebx
 005ABADC    xor        edi,edi
 005ABADE    mov        eax,dword ptr [esp]
 005ABAE1    mov        edx,dword ptr [eax]
 005ABAE3    call       dword ptr [edx+100]
 005ABAE9    mov        edx,edi
 005ABAEB    mov        eax,esi
 005ABAED    mov        ecx,dword ptr [eax]
 005ABAEF    call       dword ptr [ecx+50]; TRavePage.sub_005AB0E4
 005ABAF2    mov        edx,dword ptr [esp]
 005ABAF5    mov        ecx,dword ptr [eax]
 005ABAF7    call       dword ptr [ecx+0BC]
 005ABAFD    inc        edi
 005ABAFE    dec        ebx
<005ABAFF    jne        005ABADE
 005ABB01    add        esp,54
 005ABB04    pop        ebp
 005ABB05    pop        edi
 005ABB06    pop        esi
 005ABB07    pop        ebx
 005ABB08    ret
*}
//end;

//005ABB18
function TRavePage.IsStoredPageHeight(Self:TRavePage):Boolean;
begin
{*
 005ABB18    mov        edx,dword ptr [eax+84]; TRavePage.PaperSize:TRavePaperSize
 005ABB1E    cmp        edx,100
>005ABB24    je         005ABB2C
 005ABB26    inc        edx
>005ABB27    je         005ABB2C
 005ABB29    xor        eax,eax
 005ABB2B    ret
 005ABB2C    mov        al,1
 005ABB2E    ret
*}
end;

//005ABB30
procedure TRavePage.AssignTo(Dest:TPersistent);
begin
{*
 005ABB30    push       ebp
 005ABB31    mov        ebp,esp
 005ABB33    push       0
 005ABB35    push       ebx
 005ABB36    push       esi
 005ABB37    mov        esi,edx
 005ABB39    mov        ebx,eax
 005ABB3B    xor        eax,eax
 005ABB3D    push       ebp
 005ABB3E    push       5ABBC5
 005ABB43    push       dword ptr fs:[eax]
 005ABB46    mov        dword ptr fs:[eax],esp
 005ABB49    mov        eax,esi
 005ABB4B    mov        edx,dword ptr ds:[5A7428]; TRavePage
 005ABB51    call       @IsClass
 005ABB56    test       al,al
>005ABB58    je         005ABBA6
 005ABB5A    lea        eax,[ebp-4]
 005ABB5D    mov        edx,dword ptr [ebx+8]; TRavePage.?f8:TComponentName
 005ABB60    call       @LStrLAsg
 005ABB65    xor        edx,edx
 005ABB67    mov        eax,ebx
 005ABB69    mov        ecx,dword ptr [eax]
 005ABB6B    call       dword ptr [ecx+18]; TRaveProjectItem.SetName
 005ABB6E    mov        edx,dword ptr [ebp-4]
 005ABB71    mov        eax,esi
 005ABB73    mov        ecx,dword ptr [eax]
 005ABB75    call       dword ptr [ecx+18]
 005ABB78    mov        eax,dword ptr [ebx+0C]; TRavePage.Tag:Integer
 005ABB7B    mov        dword ptr [esi+0C],eax
 005ABB7E    push       dword ptr [ebx+8C]; TRavePage.?f8C:dword
 005ABB84    push       dword ptr [ebx+88]; TRavePage.PageWidth:TRaveUnits
 005ABB8A    mov        eax,esi
 005ABB8C    call       TRavePage.SetPageWidth
 005ABB91    push       dword ptr [ebx+94]; TRavePage.?f94:dword
 005ABB97    push       dword ptr [ebx+90]; TRavePage.PageHeight:TRaveUnits
 005ABB9D    mov        eax,esi
 005ABB9F    call       TRavePage.SetPageHeight
>005ABBA4    jmp        005ABBAF
 005ABBA6    mov        edx,esi
 005ABBA8    mov        eax,ebx
 005ABBAA    call       TPersistent.AssignTo
 005ABBAF    xor        eax,eax
 005ABBB1    pop        edx
 005ABBB2    pop        ecx
 005ABBB3    pop        ecx
 005ABBB4    mov        dword ptr fs:[eax],edx
 005ABBB7    push       5ABBCC
 005ABBBC    lea        eax,[ebp-4]
 005ABBBF    call       @LStrClr
 005ABBC4    ret
<005ABBC5    jmp        @HandleFinally
<005ABBCA    jmp        005ABBBC
 005ABBCC    pop        esi
 005ABBCD    pop        ebx
 005ABBCE    pop        ecx
 005ABBCF    pop        ebp
 005ABBD0    ret
*}
end;

//005ABBD4
//procedure sub_005ABBD4(?:TComponent; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005ABBD4    push       ebp
 005ABBD5    mov        ebp,esp
 005ABBD7    push       ebx
 005ABBD8    push       esi
 005ABBD9    push       edi
 005ABBDA    mov        esi,eax
 005ABBDC    mov        edi,dword ptr [esi+7C]
 005ABBDF    test       edi,edi
>005ABBE1    je         005ABBFE
 005ABBE3    mov        ax,word ptr [ebp+18]
 005ABBE7    push       eax
 005ABBE8    push       dword ptr [ebp+14]
 005ABBEB    push       dword ptr [ebp+10]
 005ABBEE    push       dword ptr [ebp+0C]
 005ABBF1    push       dword ptr [ebp+8]
 005ABBF4    mov        eax,edi
 005ABBF6    mov        ebx,dword ptr [eax]
 005ABBF8    call       dword ptr [ebx+0E8]
 005ABBFE    pop        edi
 005ABBFF    pop        esi
 005ABC00    pop        ebx
 005ABC01    pop        ebp
 005ABC02    ret        14
*}
//end;

//005ABC08
//procedure sub_005ABC08(?:TComponent; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005ABC08    push       ebp
 005ABC09    mov        ebp,esp
 005ABC0B    push       ebx
 005ABC0C    push       esi
 005ABC0D    push       edi
 005ABC0E    mov        esi,eax
 005ABC10    mov        edi,dword ptr [esi+7C]
 005ABC13    test       edi,edi
>005ABC15    je         005ABC2D
 005ABC17    push       dword ptr [ebp+14]
 005ABC1A    push       dword ptr [ebp+10]
 005ABC1D    push       dword ptr [ebp+0C]
 005ABC20    push       dword ptr [ebp+8]
 005ABC23    mov        eax,edi
 005ABC25    mov        ebx,dword ptr [eax]
 005ABC27    call       dword ptr [ebx+0EC]
 005ABC2D    pop        edi
 005ABC2E    pop        esi
 005ABC2F    pop        ebx
 005ABC30    pop        ebp
 005ABC31    ret        10
*}
//end;

//005ABC34
//procedure sub_005ABC34(?:TComponent);
//begin
{*
 005ABC34    push       ebx
 005ABC35    push       esi
 005ABC36    push       edi
 005ABC37    mov        esi,eax
 005ABC39    mov        edi,dword ptr [esi+7C]
 005ABC3C    test       edi,edi
>005ABC3E    je         005ABC4A
 005ABC40    mov        eax,edi
 005ABC42    mov        ebx,dword ptr [eax]
 005ABC44    call       dword ptr [ebx+0F8]
 005ABC4A    pop        edi
 005ABC4B    pop        esi
 005ABC4C    pop        ebx
 005ABC4D    ret
*}
//end;

//005ABC50
//procedure TRavePage.SetGridLines(Self:TRavePage; ?:?);
//begin
{*
 005ABC50    cmp        edx,dword ptr [eax+0B0]; TRavePage.GridLines:Integer
>005ABC56    je         005ABC63
 005ABC58    mov        dword ptr [eax+0B0],edx; TRavePage.GridLines:Integer
 005ABC5E    call       005A8540
 005ABC63    ret
*}
//end;

//005ABC64
//procedure TRavePage.SetGridSpacing(Self:TRavePage; ?:?; ?:?);
//begin
{*
 005ABC64    push       ebp
 005ABC65    mov        ebp,esp
 005ABC67    mov        edx,eax
 005ABC69    fld        qword ptr [edx+0A8]; TRavePage.GridSpacing:TRaveUnits
 005ABC6F    fcomp      qword ptr [ebp+8]
 005ABC72    fnstsw     al
 005ABC74    sahf
>005ABC75    je         005ABC90
 005ABC77    mov        eax,dword ptr [ebp+8]
 005ABC7A    mov        dword ptr [edx+0A8],eax; TRavePage.GridSpacing:TRaveUnits
 005ABC80    mov        eax,dword ptr [ebp+0C]
 005ABC83    mov        dword ptr [edx+0AC],eax; TRavePage.?fAC:dword
 005ABC89    mov        eax,edx
 005ABC8B    call       005A8540
 005ABC90    pop        ebp
 005ABC91    ret        8
*}
//end;

//005ABC94
//procedure sub_005ABC94(?:TRavePage; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005ABC94    push       ebp
 005ABC95    mov        ebp,esp
 005ABC97    add        esp,0FFFFFFF8
 005ABC9A    push       ebx
 005ABC9B    push       esi
 005ABC9C    push       edi
 005ABC9D    mov        byte ptr [ebp-6],cl
 005ABCA0    mov        byte ptr [ebp-5],dl
 005ABCA3    mov        dword ptr [ebp-4],eax
 005ABCA6    mov        eax,dword ptr [ebp-4]
 005ABCA9    mov        edx,dword ptr [eax]
 005ABCAB    call       dword ptr [edx+54]; TRavePage.sub_005AB0D4
 005ABCAE    mov        esi,eax
 005ABCB0    dec        esi
 005ABCB1    test       esi,esi
>005ABCB3    jl         005ABD05
 005ABCB5    inc        esi
 005ABCB6    xor        ebx,ebx
 005ABCB8    mov        edx,ebx
 005ABCBA    mov        eax,dword ptr [ebp-4]
 005ABCBD    mov        ecx,dword ptr [eax]
 005ABCBF    call       dword ptr [ecx+50]; TRavePage.sub_005AB0E4
 005ABCC2    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005ABCC8    call       @IsClass
 005ABCCD    test       al,al
>005ABCCF    je         005ABD01
 005ABCD1    push       dword ptr [ebp+24]
 005ABCD4    push       dword ptr [ebp+20]
 005ABCD7    push       dword ptr [ebp+1C]
 005ABCDA    push       dword ptr [ebp+18]
 005ABCDD    push       dword ptr [ebp+14]
 005ABCE0    push       dword ptr [ebp+10]
 005ABCE3    push       dword ptr [ebp+0C]
 005ABCE6    push       dword ptr [ebp+8]
 005ABCE9    mov        edx,ebx
 005ABCEB    mov        eax,dword ptr [ebp-4]
 005ABCEE    mov        ecx,dword ptr [eax]
 005ABCF0    call       dword ptr [ecx+50]; TRavePage.sub_005AB0E4
 005ABCF3    mov        cl,byte ptr [ebp-6]
 005ABCF6    mov        dl,byte ptr [ebp-5]
 005ABCF9    mov        edi,dword ptr [eax]
 005ABCFB    call       dword ptr [edi+124]
 005ABD01    inc        ebx
 005ABD02    dec        esi
<005ABD03    jne        005ABCB8
 005ABD05    pop        edi
 005ABD06    pop        esi
 005ABD07    pop        ebx
 005ABD08    pop        ecx
 005ABD09    pop        ecx
 005ABD0A    pop        ebp
 005ABD0B    ret        20
*}
//end;

//005ABD10
//procedure TRavePage.SetOrientation(Self:TRavePage; ?:?);
//begin
{*
 005ABD10    push       ebx
 005ABD11    push       esi
 005ABD12    add        esp,0FFFFFFF8
 005ABD15    mov        ebx,edx
 005ABD17    mov        esi,eax
 005ABD19    cmp        bl,byte ptr [esi+0B4]; TRavePage.Orientation:TOrientation
>005ABD1F    je         005ABDF7
 005ABD25    cmp        bl,1
>005ABD28    je         005ABD37
 005ABD2A    cmp        byte ptr [esi+0B4],1; TRavePage.Orientation:TOrientation
>005ABD31    jne        005ABDF1
 005ABD37    mov        eax,dword ptr [esi+88]; TRavePage.PageWidth:TRaveUnits
 005ABD3D    mov        dword ptr [esp],eax
 005ABD40    mov        eax,dword ptr [esi+8C]; TRavePage.?f8C:dword
 005ABD46    mov        dword ptr [esp+4],eax
 005ABD4A    mov        eax,dword ptr [esi+90]; TRavePage.PageHeight:TRaveUnits
 005ABD50    mov        dword ptr [esi+88],eax; TRavePage.PageWidth:TRaveUnits
 005ABD56    mov        eax,dword ptr [esi+94]; TRavePage.?f94:dword
 005ABD5C    mov        dword ptr [esi+8C],eax; TRavePage.?f8C:dword
 005ABD62    mov        eax,dword ptr [esp]
 005ABD65    mov        dword ptr [esi+90],eax; TRavePage.PageHeight:TRaveUnits
 005ABD6B    mov        eax,dword ptr [esp+4]
 005ABD6F    mov        dword ptr [esi+94],eax; TRavePage.?f94:dword
 005ABD75    push       dword ptr [esi+94]; TRavePage.?f94:dword
 005ABD7B    push       dword ptr [esi+90]; TRavePage.PageHeight:TRaveUnits
 005ABD81    push       dword ptr [esi+8C]; TRavePage.?f8C:dword
 005ABD87    push       dword ptr [esi+88]; TRavePage.PageWidth:TRaveUnits
 005ABD8D    push       dword ptr [esi+8C]; TRavePage.?f8C:dword
 005ABD93    push       dword ptr [esi+88]; TRavePage.PageWidth:TRaveUnits
 005ABD99    push       dword ptr [esi+94]; TRavePage.?f94:dword
 005ABD9F    push       dword ptr [esi+90]; TRavePage.PageHeight:TRaveUnits
 005ABDA5    push       dword ptr [esi+8C]; TRavePage.?f8C:dword
 005ABDAB    push       dword ptr [esi+88]; TRavePage.PageWidth:TRaveUnits
 005ABDB1    push       dword ptr [esi+94]; TRavePage.?f94:dword
 005ABDB7    push       dword ptr [esi+90]; TRavePage.PageHeight:TRaveUnits
 005ABDBD    call       005A5B40
 005ABDC2    push       eax
 005ABDC3    push       dword ptr [esi+8C]; TRavePage.?f8C:dword
 005ABDC9    push       dword ptr [esi+88]; TRavePage.PageWidth:TRaveUnits
 005ABDCF    push       dword ptr [esi+94]; TRavePage.?f94:dword
 005ABDD5    push       dword ptr [esi+90]; TRavePage.PageHeight:TRaveUnits
 005ABDDB    call       005A5B40
 005ABDE0    mov        edx,eax
 005ABDE2    mov        eax,esi
 005ABDE4    pop        ecx
 005ABDE5    call       005ABC94
 005ABDEA    mov        eax,esi
 005ABDEC    call       005A8540
 005ABDF1    mov        byte ptr [esi+0B4],bl; TRavePage.Orientation:TOrientation
 005ABDF7    pop        ecx
 005ABDF8    pop        edx
 005ABDF9    pop        esi
 005ABDFA    pop        ebx
 005ABDFB    ret
*}
//end;

//005ABDFC
//procedure TRavePage.SetPaperSize(Self:TRavePage; ?:?);
//begin
{*
 005ABDFC    push       ebx
 005ABDFD    push       esi
 005ABDFE    add        esp,0FFFFFFF0
 005ABE01    mov        esi,eax
 005ABE03    cmp        edx,dword ptr [esi+84]; TRavePage.PaperSize:TRavePaperSize
>005ABE09    je         005ABF40
 005ABE0F    mov        eax,dword ptr [esi+88]; TRavePage.PageWidth:TRaveUnits
 005ABE15    mov        dword ptr [esp],eax
 005ABE18    mov        eax,dword ptr [esi+8C]; TRavePage.?f8C:dword
 005ABE1E    mov        dword ptr [esp+4],eax
 005ABE22    mov        eax,dword ptr [esi+90]; TRavePage.PageHeight:TRaveUnits
 005ABE28    mov        dword ptr [esp+8],eax
 005ABE2C    mov        eax,dword ptr [esi+94]; TRavePage.?f94:dword
 005ABE32    mov        dword ptr [esp+0C],eax
 005ABE36    mov        ebx,2B
 005ABE3B    mov        ecx,dword ptr ds:[61BC6C]; ^gvar_00616B24:array[43] of TPaperSizeName
 005ABE41    add        ecx,4
 005ABE44    cmp        edx,dword ptr [ecx]
>005ABE46    jne        005ABEC4
 005ABE48    fld        qword ptr [ecx+4]
 005ABE4B    fcomp      dword ptr ds:[5ABF48]; 0:Single
 005ABE51    fnstsw     al
 005ABE53    sahf
>005ABE54    je         005ABE85
 005ABE56    cmp        byte ptr [esi+0B4],1; TRavePage.Orientation:TOrientation
>005ABE5D    jne        005ABE73
 005ABE5F    mov        eax,dword ptr [ecx+4]
 005ABE62    mov        dword ptr [esi+90],eax; TRavePage.PageHeight:TRaveUnits
 005ABE68    mov        eax,dword ptr [ecx+8]
 005ABE6B    mov        dword ptr [esi+94],eax; TRavePage.?f94:dword
>005ABE71    jmp        005ABE85
 005ABE73    mov        eax,dword ptr [ecx+4]
 005ABE76    mov        dword ptr [esi+88],eax; TRavePage.PageWidth:TRaveUnits
 005ABE7C    mov        eax,dword ptr [ecx+8]
 005ABE7F    mov        dword ptr [esi+8C],eax; TRavePage.?f8C:dword
 005ABE85    fld        qword ptr [ecx+0C]
 005ABE88    fcomp      dword ptr ds:[5ABF48]; 0:Single
 005ABE8E    fnstsw     al
 005ABE90    sahf
>005ABE91    je         005ABECE
 005ABE93    cmp        byte ptr [esi+0B4],1; TRavePage.Orientation:TOrientation
>005ABE9A    jne        005ABEB0
 005ABE9C    mov        eax,dword ptr [ecx+0C]
 005ABE9F    mov        dword ptr [esi+88],eax; TRavePage.PageWidth:TRaveUnits
 005ABEA5    mov        eax,dword ptr [ecx+10]
 005ABEA8    mov        dword ptr [esi+8C],eax; TRavePage.?f8C:dword
>005ABEAE    jmp        005ABECE
 005ABEB0    mov        eax,dword ptr [ecx+0C]
 005ABEB3    mov        dword ptr [esi+90],eax; TRavePage.PageHeight:TRaveUnits
 005ABEB9    mov        eax,dword ptr [ecx+10]
 005ABEBC    mov        dword ptr [esi+94],eax; TRavePage.?f94:dword
>005ABEC2    jmp        005ABECE
 005ABEC4    add        ecx,18
 005ABEC7    dec        ebx
<005ABEC8    jne        005ABE44
 005ABECE    mov        dword ptr [esi+84],edx; TRavePage.PaperSize:TRavePaperSize
 005ABED4    push       dword ptr [esp+4]
 005ABED8    push       dword ptr [esp+4]
 005ABEDC    push       dword ptr [esi+8C]; TRavePage.?f8C:dword
 005ABEE2    push       dword ptr [esi+88]; TRavePage.PageWidth:TRaveUnits
 005ABEE8    push       dword ptr [esp+1C]
 005ABEEC    push       dword ptr [esp+1C]
 005ABEF0    push       dword ptr [esi+94]; TRavePage.?f94:dword
 005ABEF6    push       dword ptr [esi+90]; TRavePage.PageHeight:TRaveUnits
 005ABEFC    push       dword ptr [esp+2C]
 005ABF00    push       dword ptr [esp+2C]
 005ABF04    push       dword ptr [esi+94]; TRavePage.?f94:dword
 005ABF0A    push       dword ptr [esi+90]; TRavePage.PageHeight:TRaveUnits
 005ABF10    call       005A5B40
 005ABF15    push       eax
 005ABF16    push       dword ptr [esp+28]
 005ABF1A    push       dword ptr [esp+28]
 005ABF1E    push       dword ptr [esi+8C]; TRavePage.?f8C:dword
 005ABF24    push       dword ptr [esi+88]; TRavePage.PageWidth:TRaveUnits
 005ABF2A    call       005A5B40
 005ABF2F    mov        edx,eax
 005ABF31    mov        eax,esi
 005ABF33    pop        ecx
 005ABF34    call       005ABC94
 005ABF39    mov        eax,esi
 005ABF3B    call       005A8540
 005ABF40    add        esp,10
 005ABF43    pop        esi
 005ABF44    pop        ebx
 005ABF45    ret
*}
//end;

//005ABF4C
//procedure TRavePage.SetPageWidth(Self:TPersistent; ?:?; ?:?);
//begin
{*
 005ABF4C    push       ebp
 005ABF4D    mov        ebp,esp
 005ABF4F    add        esp,0FFFFFFF8
 005ABF52    push       ebx
 005ABF53    mov        ebx,eax
 005ABF55    push       dword ptr [ebp+0C]
 005ABF58    push       dword ptr [ebp+8]
 005ABF5B    push       0
 005ABF5D    push       0
 005ABF5F    call       005A5B08
 005ABF64    test       al,al
>005ABF66    je         005ABFED
 005ABF6C    mov        eax,dword ptr [ebx+88]; TRavePage.PageWidth:TRaveUnits
 005ABF72    mov        dword ptr [ebp-8],eax
 005ABF75    mov        eax,dword ptr [ebx+8C]; TRavePage.?f8C:dword
 005ABF7B    mov        dword ptr [ebp-4],eax
 005ABF7E    mov        eax,dword ptr [ebp+8]
 005ABF81    mov        dword ptr [ebx+88],eax; TRavePage.PageWidth:TRaveUnits
 005ABF87    mov        eax,dword ptr [ebp+0C]
 005ABF8A    mov        dword ptr [ebx+8C],eax; TRavePage.?f8C:dword
 005ABF90    mov        dword ptr [ebx+84],100; TRavePage.PaperSize:TRavePaperSize
 005ABF9A    mov        eax,ebx
 005ABF9C    call       005A8540
 005ABFA1    push       dword ptr [ebp-4]
 005ABFA4    push       dword ptr [ebp-8]
 005ABFA7    push       dword ptr [ebx+8C]; TRavePage.?f8C:dword
 005ABFAD    push       dword ptr [ebx+88]; TRavePage.PageWidth:TRaveUnits
 005ABFB3    push       dword ptr [ebx+94]; TRavePage.?f94:dword
 005ABFB9    push       dword ptr [ebx+90]; TRavePage.PageHeight:TRaveUnits
 005ABFBF    push       dword ptr [ebx+94]; TRavePage.?f94:dword
 005ABFC5    push       dword ptr [ebx+90]; TRavePage.PageHeight:TRaveUnits
 005ABFCB    push       dword ptr [ebp-4]
 005ABFCE    push       dword ptr [ebp-8]
 005ABFD1    push       dword ptr [ebx+8C]; TRavePage.?f8C:dword
 005ABFD7    push       dword ptr [ebx+88]; TRavePage.PageWidth:TRaveUnits
 005ABFDD    call       005A5B40
 005ABFE2    mov        edx,eax
 005ABFE4    xor        ecx,ecx
 005ABFE6    mov        eax,ebx
 005ABFE8    call       005ABC94
 005ABFED    pop        ebx
 005ABFEE    pop        ecx
 005ABFEF    pop        ecx
 005ABFF0    pop        ebp
 005ABFF1    ret        8
*}
//end;

//005ABFF4
//procedure TRavePage.SetPageHeight(Self:TPersistent; ?:?; ?:?);
//begin
{*
 005ABFF4    push       ebp
 005ABFF5    mov        ebp,esp
 005ABFF7    add        esp,0FFFFFFF8
 005ABFFA    push       ebx
 005ABFFB    mov        ebx,eax
 005ABFFD    push       dword ptr [ebp+0C]
 005AC000    push       dword ptr [ebp+8]
 005AC003    push       0
 005AC005    push       0
 005AC007    call       005A5B08
 005AC00C    test       al,al
>005AC00E    je         005AC095
 005AC014    mov        eax,dword ptr [ebx+90]; TRavePage.PageHeight:TRaveUnits
 005AC01A    mov        dword ptr [ebp-8],eax
 005AC01D    mov        eax,dword ptr [ebx+94]; TRavePage.?f94:dword
 005AC023    mov        dword ptr [ebp-4],eax
 005AC026    mov        eax,dword ptr [ebp+8]
 005AC029    mov        dword ptr [ebx+90],eax; TRavePage.PageHeight:TRaveUnits
 005AC02F    mov        eax,dword ptr [ebp+0C]
 005AC032    mov        dword ptr [ebx+94],eax; TRavePage.?f94:dword
 005AC038    mov        dword ptr [ebx+84],100; TRavePage.PaperSize:TRavePaperSize
 005AC042    mov        eax,ebx
 005AC044    call       005A8540
 005AC049    push       dword ptr [ebx+8C]; TRavePage.?f8C:dword
 005AC04F    push       dword ptr [ebx+88]; TRavePage.PageWidth:TRaveUnits
 005AC055    push       dword ptr [ebx+8C]; TRavePage.?f8C:dword
 005AC05B    push       dword ptr [ebx+88]; TRavePage.PageWidth:TRaveUnits
 005AC061    push       dword ptr [ebp-4]
 005AC064    push       dword ptr [ebp-8]
 005AC067    push       dword ptr [ebx+94]; TRavePage.?f94:dword
 005AC06D    push       dword ptr [ebx+90]; TRavePage.PageHeight:TRaveUnits
 005AC073    push       dword ptr [ebp-4]
 005AC076    push       dword ptr [ebp-8]
 005AC079    push       dword ptr [ebx+94]; TRavePage.?f94:dword
 005AC07F    push       dword ptr [ebx+90]; TRavePage.PageHeight:TRaveUnits
 005AC085    call       005A5B40
 005AC08A    mov        ecx,eax
 005AC08C    xor        edx,edx
 005AC08E    mov        eax,ebx
 005AC090    call       005ABC94
 005AC095    pop        ebx
 005AC096    pop        ecx
 005AC097    pop        ecx
 005AC098    pop        ebp
 005AC099    ret        8
*}
//end;

//005AC10C
//constructor TPropertyOverride.Create(?:TPropertyOverride; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005AC10C    push       ebp
 005AC10D    mov        ebp,esp
 005AC10F    push       ecx
 005AC110    push       ebx
 005AC111    push       esi
 005AC112    test       dl,dl
>005AC114    je         005AC11E
 005AC116    add        esp,0FFFFFFF0
 005AC119    call       @ClassCreate
 005AC11E    mov        dword ptr [ebp-4],ecx
 005AC121    mov        ebx,edx
 005AC123    mov        esi,eax
 005AC125    mov        eax,dword ptr [ebp-4]
 005AC128    call       @LStrAddRef
 005AC12D    xor        eax,eax
 005AC12F    push       ebp
 005AC130    push       5AC174
 005AC135    push       dword ptr fs:[eax]
 005AC138    mov        dword ptr fs:[eax],esp
 005AC13B    lea        eax,[esi+4]; TPropertyOverride.?f4:String
 005AC13E    mov        edx,dword ptr [ebp-4]
 005AC141    call       @LStrAsg
 005AC146    mov        eax,dword ptr [ebp+10]
 005AC149    mov        dword ptr [esi+8],eax; TPropertyOverride.?f8:dword
 005AC14C    mov        eax,dword ptr [ebp+14]
 005AC14F    mov        dword ptr [esi+0C],eax; TPropertyOverride.?fC:dword
 005AC152    mov        eax,dword ptr [ebp+8]
 005AC155    mov        dword ptr [esi+10],eax; TPropertyOverride.?f10:dword
 005AC158    mov        eax,dword ptr [ebp+0C]
 005AC15B    mov        dword ptr [esi+14],eax; TPropertyOverride.?f14:dword
 005AC15E    xor        eax,eax
 005AC160    pop        edx
 005AC161    pop        ecx
 005AC162    pop        ecx
 005AC163    mov        dword ptr fs:[eax],edx
 005AC166    push       5AC17B
 005AC16B    lea        eax,[ebp-4]
 005AC16E    call       @LStrClr
 005AC173    ret
<005AC174    jmp        @HandleFinally
<005AC179    jmp        005AC16B
 005AC17B    mov        eax,esi
 005AC17D    test       bl,bl
>005AC17F    je         005AC190
 005AC181    call       @AfterConstruction
 005AC186    pop        dword ptr fs:[0]
 005AC18D    add        esp,0C
 005AC190    mov        eax,esi
 005AC192    pop        esi
 005AC193    pop        ebx
 005AC194    pop        ecx
 005AC195    pop        ebp
 005AC196    ret        10
*}
//end;

//005AC19C
//constructor sub_005AC19C(?:?; _Dv__:Boolean);
//begin
{*
 005AC19C    push       ebx
 005AC19D    push       esi
 005AC19E    push       edi
 005AC19F    test       dl,dl
>005AC1A1    je         005AC1AB
 005AC1A3    add        esp,0FFFFFFF0
 005AC1A6    call       @ClassCreate
 005AC1AB    mov        esi,ecx
 005AC1AD    mov        ebx,edx
 005AC1AF    mov        edi,eax
 005AC1B1    push       10
 005AC1B3    xor        ecx,ecx
 005AC1B5    xor        edx,edx
 005AC1B7    mov        eax,edi
 005AC1B9    call       TFiler.Create
 005AC1BE    mov        dword ptr [edi+28],esi
 005AC1C1    mov        eax,edi
 005AC1C3    test       bl,bl
>005AC1C5    je         005AC1D6
 005AC1C7    call       @AfterConstruction
 005AC1CC    pop        dword ptr fs:[0]
 005AC1D3    add        esp,0C
 005AC1D6    mov        eax,edi
 005AC1D8    pop        edi
 005AC1D9    pop        esi
 005AC1DA    pop        ebx
 005AC1DB    ret
*}
//end;

//005AC1DC
destructor TRaveFiler.Destroy;
begin
{*
 005AC1DC    push       ebx
 005AC1DD    push       esi
 005AC1DE    call       @BeforeDestruction
 005AC1E3    mov        ebx,edx
 005AC1E5    mov        esi,eax
 005AC1E7    mov        edx,ebx
 005AC1E9    and        dl,0FC
 005AC1EC    mov        eax,esi
 005AC1EE    call       TFiler.Destroy
 005AC1F3    test       bl,bl
>005AC1F5    jle        005AC1FE
 005AC1F7    mov        eax,esi
 005AC1F9    call       @ClassDestroy
 005AC1FE    pop        esi
 005AC1FF    pop        ebx
 005AC200    ret
*}
end;

//005AC204
//procedure sub_005AC204(?:?; ?:AnsiString; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005AC204    push       ebp
 005AC205    mov        ebp,esp
 005AC207    push       ecx
 005AC208    push       ebx
 005AC209    push       esi
 005AC20A    mov        dword ptr [ebp-4],edx
 005AC20D    mov        ebx,eax
 005AC20F    mov        eax,dword ptr [ebp-4]
 005AC212    call       @LStrAddRef
 005AC217    xor        eax,eax
 005AC219    push       ebp
 005AC21A    push       5AC29D
 005AC21F    push       dword ptr fs:[eax]
 005AC222    mov        dword ptr fs:[eax],esp
 005AC225    cmp        byte ptr [ebx+34],0
>005AC229    je         005AC232
 005AC22B    cmp        word ptr [ebp+12],0
>005AC230    jne        005AC23F
 005AC232    cmp        byte ptr [ebx+34],0
>005AC236    jne        005AC287
 005AC238    cmp        word ptr [ebp+0A],0
>005AC23D    je         005AC287
 005AC23F    cmp        dword ptr [ebx+2C],0
>005AC243    jne        005AC25F
 005AC245    mov        dl,1
 005AC247    mov        eax,[0041C8E4]; TStringList
 005AC24C    call       TObject.Create; TStringList.Create
 005AC251    mov        esi,eax
 005AC253    mov        dword ptr [ebx+2C],esi
 005AC256    mov        dl,1
 005AC258    mov        eax,esi
 005AC25A    call       TStringList.SetSorted
 005AC25F    push       dword ptr [ebp+14]
 005AC262    push       dword ptr [ebp+10]
 005AC265    push       dword ptr [ebp+0C]
 005AC268    push       dword ptr [ebp+8]
 005AC26B    mov        ecx,dword ptr [ebp-4]
 005AC26E    mov        dl,1
 005AC270    mov        eax,[005AC09C]; TPropertyOverride
 005AC275    call       TPropertyOverride.Create; TPropertyOverride.Create
 005AC27A    mov        ecx,eax
 005AC27C    mov        edx,dword ptr [ebp-4]
 005AC27F    mov        eax,dword ptr [ebx+2C]
 005AC282    mov        ebx,dword ptr [eax]
 005AC284    call       dword ptr [ebx+3C]
 005AC287    xor        eax,eax
 005AC289    pop        edx
 005AC28A    pop        ecx
 005AC28B    pop        ecx
 005AC28C    mov        dword ptr fs:[eax],edx
 005AC28F    push       5AC2A4
 005AC294    lea        eax,[ebp-4]
 005AC297    call       @LStrClr
 005AC29C    ret
<005AC29D    jmp        @HandleFinally
<005AC2A2    jmp        005AC294
 005AC2A4    pop        esi
 005AC2A5    pop        ebx
 005AC2A6    pop        ecx
 005AC2A7    pop        ebp
 005AC2A8    ret        10
*}
//end;

//005AC2AC
//function sub_005AC2AC(?:TRaveFiler; ?:AnsiString; ?:?; ?:?):?;
//begin
{*
 005AC2AC    push       ebp
 005AC2AD    mov        ebp,esp
 005AC2AF    add        esp,0FFFFFFF4
 005AC2B2    push       ebx
 005AC2B3    push       esi
 005AC2B4    mov        dword ptr [ebp-8],ecx
 005AC2B7    mov        dword ptr [ebp-4],edx
 005AC2BA    mov        esi,eax
 005AC2BC    mov        eax,dword ptr [ebp-4]
 005AC2BF    call       @LStrAddRef
 005AC2C4    xor        eax,eax
 005AC2C6    push       ebp
 005AC2C7    push       5AC32E
 005AC2CC    push       dword ptr fs:[eax]
 005AC2CF    mov        dword ptr fs:[eax],esp
 005AC2D2    mov        eax,dword ptr [esi+2C]; TRaveFiler.?f2C:dword
 005AC2D5    test       eax,eax
>005AC2D7    je         005AC316
 005AC2D9    lea        ecx,[ebp-0C]
 005AC2DC    mov        edx,dword ptr [ebp-4]
 005AC2DF    mov        ebx,dword ptr [eax]
 005AC2E1    call       dword ptr [ebx+8C]
 005AC2E7    mov        ebx,eax
 005AC2E9    test       bl,bl
>005AC2EB    je         005AC318
 005AC2ED    mov        edx,dword ptr [ebp-0C]
 005AC2F0    mov        eax,dword ptr [esi+2C]; TRaveFiler.?f2C:dword
 005AC2F3    mov        ecx,dword ptr [eax]
 005AC2F5    call       dword ptr [ecx+18]
 005AC2F8    mov        edx,dword ptr [ebp-8]
 005AC2FB    mov        ecx,dword ptr [eax+8]
 005AC2FE    mov        dword ptr [edx],ecx
 005AC300    mov        ecx,dword ptr [eax+0C]
 005AC303    mov        dword ptr [edx+4],ecx
 005AC306    mov        edx,dword ptr [ebp+8]
 005AC309    mov        ecx,dword ptr [eax+10]
 005AC30C    mov        dword ptr [edx],ecx
 005AC30E    mov        ecx,dword ptr [eax+14]
 005AC311    mov        dword ptr [edx+4],ecx
>005AC314    jmp        005AC318
 005AC316    xor        ebx,ebx
 005AC318    xor        eax,eax
 005AC31A    pop        edx
 005AC31B    pop        ecx
 005AC31C    pop        ecx
 005AC31D    mov        dword ptr fs:[eax],edx
 005AC320    push       5AC335
 005AC325    lea        eax,[ebp-4]
 005AC328    call       @LStrClr
 005AC32D    ret
<005AC32E    jmp        @HandleFinally
<005AC333    jmp        005AC325
 005AC335    mov        eax,ebx
 005AC337    pop        esi
 005AC338    pop        ebx
 005AC339    mov        esp,ebp
 005AC33B    pop        ebp
 005AC33C    ret        4
*}
//end;

//005AC340
procedure TRaveFiler.DefineProperty();
begin
{*
 005AC340    push       ebp
 005AC341    mov        ebp,esp
 005AC343    pop        ebp
 005AC344    ret        10
*}
end;

//005AC348
procedure TRaveFiler.DefineBinaryProperty();
begin
{*
 005AC348    push       ebp
 005AC349    mov        ebp,esp
 005AC34B    pop        ebp
 005AC34C    ret        10
*}
end;

//005AC350
procedure TRaveFiler.FlushBuffer();
begin
{*
 005AC350    ret
*}
end;

//005AC354
//constructor TRaveWriter.Create(?:TRaveWriter; _Dv__:Boolean);
//begin
{*
 005AC354    push       ebx
 005AC355    push       esi
 005AC356    test       dl,dl
>005AC358    je         005AC362
 005AC35A    add        esp,0FFFFFFF0
 005AC35D    call       @ClassCreate
 005AC362    mov        ebx,edx
 005AC364    mov        esi,eax
 005AC366    xor        edx,edx
 005AC368    mov        eax,esi
 005AC36A    call       005AC19C
 005AC36F    mov        eax,esi
 005AC371    test       bl,bl
>005AC373    je         005AC384
 005AC375    call       @AfterConstruction
 005AC37A    pop        dword ptr fs:[0]
 005AC381    add        esp,0C
 005AC384    mov        eax,esi
 005AC386    pop        esi
 005AC387    pop        ebx
 005AC388    ret
*}
//end;

//005AC38C
destructor TRaveWriter.Destroy;
begin
{*
 005AC38C    push       ebx
 005AC38D    push       esi
 005AC38E    call       @BeforeDestruction
 005AC393    mov        ebx,edx
 005AC395    mov        esi,eax
 005AC397    mov        edx,ebx
 005AC399    and        dl,0FC
 005AC39C    mov        eax,esi
 005AC39E    call       TRaveFiler.Destroy
 005AC3A3    test       bl,bl
>005AC3A5    jle        005AC3AE
 005AC3A7    mov        eax,esi
 005AC3A9    call       @ClassDestroy
 005AC3AE    pop        esi
 005AC3AF    pop        ebx
 005AC3B0    ret
*}
end;

//005AC3B4
//procedure TRaveWriter.DefineProperty(?:?; ?:?; ?:?; ?:?);
//begin
{*
 005AC3B4    push       ebp
 005AC3B5    mov        ebp,esp
 005AC3B7    add        esp,0FFFFFFF0
 005AC3BA    mov        dword ptr [ebp-8],edx
 005AC3BD    mov        dword ptr [ebp-4],eax
 005AC3C0    test       cl,cl
>005AC3C2    je         005AC494
 005AC3C8    cmp        word ptr [ebp+0A],0
>005AC3CD    je         005AC494
 005AC3D3    mov        dl,1
 005AC3D5    mov        eax,[0041CBF8]; TMemoryStream
 005AC3DA    call       TObject.Create; TMemoryStream.Create
 005AC3DF    mov        dword ptr [ebp-10],eax
 005AC3E2    xor        eax,eax
 005AC3E4    push       ebp
 005AC3E5    push       5AC48D
 005AC3EA    push       dword ptr fs:[eax]
 005AC3ED    mov        dword ptr fs:[eax],esp
 005AC3F0    push       400
 005AC3F5    mov        ecx,dword ptr [ebp-10]
 005AC3F8    mov        dl,1
 005AC3FA    mov        eax,[0041D060]; TWriter
 005AC3FF    call       TFiler.Create; TWriter.Create
 005AC404    mov        dword ptr [ebp-0C],eax
 005AC407    xor        eax,eax
 005AC409    push       ebp
 005AC40A    push       5AC434
 005AC40F    push       dword ptr fs:[eax]
 005AC412    mov        dword ptr fs:[eax],esp
 005AC415    mov        edx,dword ptr [ebp-0C]
 005AC418    mov        eax,dword ptr [ebp+0C]
 005AC41B    call       dword ptr [ebp+8]
 005AC41E    xor        eax,eax
 005AC420    pop        edx
 005AC421    pop        ecx
 005AC422    pop        ecx
 005AC423    mov        dword ptr fs:[eax],edx
 005AC426    push       5AC43B
 005AC42B    mov        eax,dword ptr [ebp-0C]
 005AC42E    call       TObject.Free
 005AC433    ret
<005AC434    jmp        @HandleFinally
<005AC439    jmp        005AC42B
 005AC43B    mov        eax,dword ptr [ebp-4]
 005AC43E    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005AC441    mov        edx,dword ptr [ebp-8]
 005AC444    call       005A6054
 005AC449    mov        eax,dword ptr [ebp-10]
 005AC44C    mov        edx,dword ptr [eax]
 005AC44E    call       dword ptr [edx]; TStream.GetSize
 005AC450    mov        edx,eax
 005AC452    mov        eax,dword ptr [ebp-4]
 005AC455    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005AC458    call       005A60C8
 005AC45D    mov        eax,dword ptr [ebp-10]
 005AC460    mov        edx,dword ptr [eax]
 005AC462    call       dword ptr [edx]; TStream.GetSize
 005AC464    mov        ecx,eax
 005AC466    mov        eax,dword ptr [ebp-10]
 005AC469    mov        edx,dword ptr [eax+4]; TMemoryStream.FMemory:Pointer
 005AC46C    mov        eax,dword ptr [ebp-4]
 005AC46F    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005AC472    call       005A618C
 005AC477    xor        eax,eax
 005AC479    pop        edx
 005AC47A    pop        ecx
 005AC47B    pop        ecx
 005AC47C    mov        dword ptr fs:[eax],edx
 005AC47F    push       5AC494
 005AC484    mov        eax,dword ptr [ebp-10]
 005AC487    call       TObject.Free
 005AC48C    ret
<005AC48D    jmp        @HandleFinally
<005AC492    jmp        005AC484
 005AC494    mov        esp,ebp
 005AC496    pop        ebp
 005AC497    ret        10
*}
//end;

//005AC49C
//procedure TRaveWriter.DefineBinaryProperty(?:?; ?:?; ?:?; ?:?);
//begin
{*
 005AC49C    push       ebp
 005AC49D    mov        ebp,esp
 005AC49F    push       ecx
 005AC4A0    push       ebx
 005AC4A1    push       esi
 005AC4A2    mov        esi,edx
 005AC4A4    mov        ebx,eax
 005AC4A6    test       cl,cl
>005AC4A8    je         005AC526
 005AC4AA    cmp        word ptr [ebp+0A],0
>005AC4AF    je         005AC526
 005AC4B1    mov        dl,1
 005AC4B3    mov        eax,[0041CBF8]; TMemoryStream
 005AC4B8    call       TObject.Create; TMemoryStream.Create
 005AC4BD    mov        dword ptr [ebp-4],eax
 005AC4C0    xor        eax,eax
 005AC4C2    push       ebp
 005AC4C3    push       5AC51F
 005AC4C8    push       dword ptr fs:[eax]
 005AC4CB    mov        dword ptr fs:[eax],esp
 005AC4CE    mov        edx,dword ptr [ebp-4]
 005AC4D1    mov        eax,dword ptr [ebp+0C]
 005AC4D4    call       dword ptr [ebp+8]
 005AC4D7    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005AC4DA    mov        edx,esi
 005AC4DC    call       005A6054
 005AC4E1    mov        eax,dword ptr [ebp-4]
 005AC4E4    mov        edx,dword ptr [eax]
 005AC4E6    call       dword ptr [edx]; TStream.GetSize
 005AC4E8    mov        edx,eax
 005AC4EA    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005AC4ED    call       005A60C8
 005AC4F2    mov        eax,dword ptr [ebp-4]
 005AC4F5    mov        edx,dword ptr [eax]
 005AC4F7    call       dword ptr [edx]; TStream.GetSize
 005AC4F9    mov        ecx,eax
 005AC4FB    mov        eax,dword ptr [ebp-4]
 005AC4FE    mov        edx,dword ptr [eax+4]; TMemoryStream.FMemory:Pointer
 005AC501    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005AC504    call       005A618C
 005AC509    xor        eax,eax
 005AC50B    pop        edx
 005AC50C    pop        ecx
 005AC50D    pop        ecx
 005AC50E    mov        dword ptr fs:[eax],edx
 005AC511    push       5AC526
 005AC516    mov        eax,dword ptr [ebp-4]
 005AC519    call       TObject.Free
 005AC51E    ret
<005AC51F    jmp        @HandleFinally
<005AC524    jmp        005AC516
 005AC526    pop        esi
 005AC527    pop        ebx
 005AC528    pop        ecx
 005AC529    pop        ebp
 005AC52A    ret        10
*}
//end;

//005AC530
procedure TRaveWriter.FlushBuffer();
begin
{*
 005AC530    ret
*}
end;

//005AC534
//procedure sub_005AC534(?:TRaveWriter; ?:TRaveProjectItem; ?:?);
//begin
{*
 005AC534    push       ebp
 005AC535    mov        ebp,esp
 005AC537    add        esp,0FFFFFEF8
 005AC53D    push       ebx
 005AC53E    push       esi
 005AC53F    push       edi
 005AC540    xor        ebx,ebx
 005AC542    mov        dword ptr [ebp-8],ebx
 005AC545    mov        byte ptr [ebp-1],cl
 005AC548    mov        esi,edx
 005AC54A    mov        ebx,eax
 005AC54C    xor        eax,eax
 005AC54E    push       ebp
 005AC54F    push       5AC5DF
 005AC554    push       dword ptr fs:[eax]
 005AC557    mov        dword ptr fs:[eax],esp
 005AC55A    mov        edi,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005AC55D    mov        eax,dword ptr [esi+4]; TRaveProjectItem.FOwner:TComponent
 005AC560    mov        edx,dword ptr ds:[5A6884]; TRaveComponent
 005AC566    call       @AsClass
 005AC56B    mov        dword ptr [ebx+30],eax; TRaveWriter.?f30:TRaveComponent
 005AC56E    xor        edx,edx
 005AC570    mov        eax,edi
 005AC572    call       005A6040
 005AC577    lea        edx,[ebp-108]
 005AC57D    mov        eax,dword ptr [esi]
 005AC57F    call       TObject.ClassName
 005AC584    lea        edx,[ebp-108]
 005AC58A    lea        eax,[ebp-8]
 005AC58D    call       @LStrFromString
 005AC592    mov        edx,dword ptr [ebp-8]
 005AC595    mov        eax,edi
 005AC597    call       005A6054
 005AC59C    mov        edx,dword ptr [esi+8]; TRaveProjectItem.?f8:TComponentName
 005AC59F    mov        eax,edi
 005AC5A1    call       005A6054
 005AC5A6    mov        edx,esi
 005AC5A8    mov        eax,ebx
 005AC5AA    call       005AC638
 005AC5AF    cmp        byte ptr [ebp-1],0
>005AC5B3    je         005AC5C0
 005AC5B5    mov        edx,esi
 005AC5B7    mov        eax,ebx
 005AC5B9    call       005AC5F0
>005AC5BE    jmp        005AC5C9
 005AC5C0    xor        edx,edx
 005AC5C2    mov        eax,edi
 005AC5C4    call       005A60C8
 005AC5C9    xor        eax,eax
 005AC5CB    pop        edx
 005AC5CC    pop        ecx
 005AC5CD    pop        ecx
 005AC5CE    mov        dword ptr fs:[eax],edx
 005AC5D1    push       5AC5E6
 005AC5D6    lea        eax,[ebp-8]
 005AC5D9    call       @LStrClr
 005AC5DE    ret
<005AC5DF    jmp        @HandleFinally
<005AC5E4    jmp        005AC5D6
 005AC5E6    pop        edi
 005AC5E7    pop        esi
 005AC5E8    pop        ebx
 005AC5E9    mov        esp,ebp
 005AC5EB    pop        ebp
 005AC5EC    ret
*}
//end;

//005AC5F0
//procedure sub_005AC5F0(?:TRaveWriter; ?:TRaveProjectItem);
//begin
{*
 005AC5F0    push       ebx
 005AC5F1    push       esi
 005AC5F2    push       edi
 005AC5F3    push       ebp
 005AC5F4    mov        ebp,edx
 005AC5F6    mov        edi,eax
 005AC5F8    mov        eax,ebp
 005AC5FA    mov        edx,dword ptr [eax]
 005AC5FC    call       dword ptr [edx+54]; TRaveProjectItem.sub_005AB0D4
 005AC5FF    mov        edx,eax
 005AC601    mov        eax,dword ptr [edi+28]; TRaveWriter.?f28:dword
 005AC604    call       005A60C8
 005AC609    mov        eax,ebp
 005AC60B    mov        edx,dword ptr [eax]
 005AC60D    call       dword ptr [edx+54]; TRaveProjectItem.sub_005AB0D4
 005AC610    mov        ebx,eax
 005AC612    dec        ebx
 005AC613    test       ebx,ebx
>005AC615    jl         005AC632
 005AC617    inc        ebx
 005AC618    xor        esi,esi
 005AC61A    mov        edx,esi
 005AC61C    mov        eax,ebp
 005AC61E    mov        ecx,dword ptr [eax]
 005AC620    call       dword ptr [ecx+50]; TRaveProjectItem.sub_005AB0E4
 005AC623    mov        edx,eax
 005AC625    mov        cl,1
 005AC627    mov        eax,edi
 005AC629    call       005AC534
 005AC62E    inc        esi
 005AC62F    dec        ebx
<005AC630    jne        005AC61A
 005AC632    pop        ebp
 005AC633    pop        edi
 005AC634    pop        esi
 005AC635    pop        ebx
 005AC636    ret
*}
//end;

//005AC638
//procedure sub_005AC638(?:TRaveWriter; ?:TRaveProjectItem);
//begin
{*
 005AC638    push       ebp
 005AC639    mov        ebp,esp
 005AC63B    add        esp,0FFFFFFD0
 005AC63E    push       ebx
 005AC63F    push       esi
 005AC640    push       edi
 005AC641    xor        ecx,ecx
 005AC643    mov        dword ptr [ebp-30],ecx
 005AC646    mov        esi,edx
 005AC648    mov        ebx,eax
 005AC64A    xor        eax,eax
 005AC64C    push       ebp
 005AC64D    push       5AC7DA
 005AC652    push       dword ptr fs:[eax]
 005AC655    mov        dword ptr fs:[eax],esp
 005AC658    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005AC65B    mov        dword ptr [ebp-28],eax
 005AC65E    mov        dl,8
 005AC660    mov        eax,dword ptr [ebp-28]
 005AC663    call       005A6040
 005AC668    xor        eax,eax
 005AC66A    mov        dword ptr [ebx+2C],eax; TRaveWriter.?f2C:dword
 005AC66D    mov        eax,esi
 005AC66F    mov        edx,dword ptr ds:[5A6884]; TRaveComponent
 005AC675    call       @IsClass
 005AC67A    test       al,al
>005AC67C    je         005AC687
 005AC67E    mov        edx,ebx
 005AC680    mov        eax,esi
 005AC682    mov        ecx,dword ptr [eax]
 005AC684    call       dword ptr [ecx+6C]; TRaveProjectItem.sub_005A87BC
 005AC687    mov        eax,dword ptr [ebx+2C]; TRaveWriter.?f2C:dword
 005AC68A    mov        dword ptr [ebp-24],eax
 005AC68D    mov        dword ptr [ebx+38],esi; TRaveWriter.?f38:TRaveProjectItem
 005AC690    mov        edx,ebx
 005AC692    mov        eax,esi
 005AC694    mov        ecx,dword ptr [eax]
 005AC696    call       dword ptr [ecx+4]; TRaveProjectItem.DefineProperties
 005AC699    mov        eax,dword ptr [esi]
 005AC69B    call       TObject.ClassType
 005AC6A0    call       GetTypeData
 005AC6A5    movsx      eax,word ptr [eax+8]
 005AC6A9    mov        dword ptr [ebp-4],eax
 005AC6AC    cmp        dword ptr [ebp-4],0
>005AC6B0    jle        005AC7A4
 005AC6B6    mov        eax,dword ptr [ebp-4]
 005AC6B9    shl        eax,2
 005AC6BC    call       @GetMem
 005AC6C1    mov        dword ptr [ebp-8],eax
 005AC6C4    xor        eax,eax
 005AC6C6    push       ebp
 005AC6C7    push       5AC79D
 005AC6CC    push       dword ptr fs:[eax]
 005AC6CF    mov        dword ptr fs:[eax],esp
 005AC6D2    mov        eax,dword ptr [esi]
 005AC6D4    call       TObject.ClassType
 005AC6D9    mov        edx,dword ptr [ebp-8]
 005AC6DC    call       GetPropInfos
 005AC6E1    mov        eax,dword ptr [ebp-4]
 005AC6E4    dec        eax
 005AC6E5    test       eax,eax
>005AC6E7    jl         005AC781
 005AC6ED    inc        eax
 005AC6EE    mov        dword ptr [ebp-2C],eax
 005AC6F1    mov        dword ptr [ebp-0C],0
 005AC6F8    mov        eax,dword ptr [ebp-8]
 005AC6FB    mov        edx,dword ptr [ebp-0C]
 005AC6FE    mov        edi,dword ptr [eax+edx*4]
 005AC701    mov        eax,esi
 005AC703    mov        edx,dword ptr ds:[41D280]; TComponent
 005AC709    call       @IsClass
 005AC70E    test       al,al
>005AC710    je         005AC726
 005AC712    lea        eax,[edi+1A]
 005AC715    mov        edx,5AC7E8; 'Name'
 005AC71A    xor        ecx,ecx
 005AC71C    mov        cl,byte ptr [eax]
 005AC71E    inc        ecx
 005AC71F    call       @AStrCmp
>005AC724    je         005AC775
 005AC726    mov        eax,dword ptr [ebp-24]
 005AC729    mov        dword ptr [ebx+2C],eax; TRaveWriter.?f2C:dword
 005AC72C    lea        eax,[ebp-20]
 005AC72F    push       eax
 005AC730    lea        eax,[ebp-30]
 005AC733    lea        edx,[edi+1A]
 005AC736    call       @LStrFromString
 005AC73B    mov        edx,dword ptr [ebp-30]
 005AC73E    lea        ecx,[ebp-18]
 005AC741    mov        eax,ebx
 005AC743    call       005AC2AC
 005AC748    test       al,al
>005AC74A    je         005AC75D
 005AC74C    cmp        word ptr [ebp-1E],0
>005AC751    je         005AC75D
 005AC753    mov        edx,ebx
 005AC755    mov        eax,dword ptr [ebp-1C]
 005AC758    call       dword ptr [ebp-20]
>005AC75B    jmp        005AC775
 005AC75D    mov        edx,edi
 005AC75F    mov        eax,esi
 005AC761    call       IsStoredProp
 005AC766    test       al,al
>005AC768    je         005AC775
 005AC76A    mov        ecx,edi
 005AC76C    mov        edx,esi
 005AC76E    mov        eax,ebx
 005AC770    call       005AC87C
 005AC775    inc        dword ptr [ebp-0C]
 005AC778    dec        dword ptr [ebp-2C]
<005AC77B    jne        005AC6F8
 005AC781    xor        eax,eax
 005AC783    pop        edx
 005AC784    pop        ecx
 005AC785    pop        ecx
 005AC786    mov        dword ptr fs:[eax],edx
 005AC789    push       5AC7A4
 005AC78E    mov        edx,dword ptr [ebp-4]
 005AC791    shl        edx,2
 005AC794    mov        eax,dword ptr [ebp-8]
 005AC797    call       @FreeMem
 005AC79C    ret
<005AC79D    jmp        @HandleFinally
<005AC7A2    jmp        005AC78E
 005AC7A4    xor        edx,edx
 005AC7A6    mov        eax,dword ptr [ebp-28]
 005AC7A9    call       005A6054
 005AC7AE    cmp        dword ptr [ebp-24],0
>005AC7B2    je         005AC7C4
 005AC7B4    mov        eax,dword ptr [ebp-24]
 005AC7B7    call       005A5904
 005AC7BC    mov        eax,dword ptr [ebp-24]
 005AC7BF    call       TObject.Free
 005AC7C4    xor        eax,eax
 005AC7C6    pop        edx
 005AC7C7    pop        ecx
 005AC7C8    pop        ecx
 005AC7C9    mov        dword ptr fs:[eax],edx
 005AC7CC    push       5AC7E1
 005AC7D1    lea        eax,[ebp-30]
 005AC7D4    call       @LStrClr
 005AC7D9    ret
<005AC7DA    jmp        @HandleFinally
<005AC7DF    jmp        005AC7D1
 005AC7E1    pop        edi
 005AC7E2    pop        esi
 005AC7E3    pop        ebx
 005AC7E4    mov        esp,ebp
 005AC7E6    pop        ebp
 005AC7E7    ret
*}
//end;

//005AC7F0
//procedure sub_005AC7F0(?:Longint; ?:AnsiString; ?:?);
//begin
{*
 005AC7F0    push       ebp
 005AC7F1    mov        ebp,esp
 005AC7F3    push       ebx
 005AC7F4    push       esi
 005AC7F5    push       edi
 005AC7F6    mov        esi,edx
 005AC7F8    mov        ebx,eax
 005AC7FA    test       ebx,ebx
>005AC7FC    je         005AC85E
 005AC7FE    mov        eax,esi
 005AC800    mov        edx,dword ptr [ebx+8]
 005AC803    call       @LStrAsg
 005AC808    mov        eax,dword ptr [ebp+8]
 005AC80B    mov        eax,dword ptr [eax-4]
 005AC80E    mov        eax,dword ptr [eax+30]
 005AC811    mov        edi,dword ptr [ebx+4]
 005AC814    cmp        eax,edi
>005AC816    je         005AC836
 005AC818    mov        edx,dword ptr [ebp+8]
 005AC81B    cmp        edi,dword ptr [eax+48]
>005AC81E    je         005AC836
 005AC820    push       dword ptr [edi+8]
 005AC823    push       5AC86C; '.'
 005AC828    push       dword ptr [esi]
 005AC82A    mov        eax,esi
 005AC82C    mov        edx,3
 005AC831    call       @LStrCatN
 005AC836    mov        eax,ebx
 005AC838    mov        edx,dword ptr ds:[5A6884]; TRaveComponent
 005AC83E    call       @IsClass
 005AC843    test       al,al
>005AC845    je         005AC85E
 005AC847    mov        eax,dword ptr [ebx]
 005AC849    call       dword ptr [eax+30]
 005AC84C    test       al,al
>005AC84E    je         005AC85E
 005AC850    mov        ecx,dword ptr [esi]
 005AC852    mov        eax,esi
 005AC854    mov        edx,5AC878; '*'
 005AC859    call       @LStrCat3
 005AC85E    pop        edi
 005AC85F    pop        esi
 005AC860    pop        ebx
 005AC861    pop        ebp
 005AC862    ret
*}
//end;

//005AC87C
//procedure sub_005AC87C(?:TRaveWriter; ?:TRaveProjectItem; ?:?);
//begin
{*
 005AC87C    push       ebp
 005AC87D    mov        ebp,esp
 005AC87F    add        esp,0FFFFFEDC
 005AC885    push       ebx
 005AC886    push       esi
 005AC887    push       edi
 005AC888    xor        ebx,ebx
 005AC88A    mov        dword ptr [ebp-124],ebx
 005AC890    mov        dword ptr [ebp-20],ebx
 005AC893    mov        dword ptr [ebp-1C],ebx
 005AC896    mov        dword ptr [ebp-18],ebx
 005AC899    mov        dword ptr [ebp-14],ebx
 005AC89C    mov        dword ptr [ebp-10],ebx
 005AC89F    mov        dword ptr [ebp-8],ebx
 005AC8A2    mov        ebx,ecx
 005AC8A4    mov        esi,edx
 005AC8A6    mov        dword ptr [ebp-4],eax
 005AC8A9    xor        eax,eax
 005AC8AB    push       ebp
 005AC8AC    push       5ACC88
 005AC8B1    push       dword ptr fs:[eax]
 005AC8B4    mov        dword ptr fs:[eax],esp
 005AC8B7    cmp        dword ptr [ebx+8],0
>005AC8BB    je         005ACC5A
 005AC8C1    mov        edx,ebx
 005AC8C3    mov        eax,esi
 005AC8C5    call       IsStoredProp
 005AC8CA    test       al,al
>005AC8CC    je         005ACC5A
 005AC8D2    mov        eax,dword ptr [ebx]
 005AC8D4    mov        eax,dword ptr [eax]
 005AC8D6    movzx      eax,byte ptr [eax]
 005AC8D9    cmp        eax,0A
>005AC8DC    ja         005ACC5A
 005AC8E2    jmp        dword ptr [eax*4+5AC8E9]
 005AC8E2    dd         5ACC5A
 005AC8E2    dd         5AC915
 005AC8E2    dd         5AC942
 005AC8E2    dd         5AC96F
 005AC8E2    dd         5AC9AB
 005AC8E2    dd         5AC9D2
 005AC8E2    dd         5ACA02
 005AC8E2    dd         5ACA79
 005AC8E2    dd         5ACC5A
 005AC8E2    dd         5ACC5A
 005AC8E2    dd         5ACC33
 005AC915    mov        edx,ebx
 005AC917    mov        eax,esi
 005AC919    call       GetOrdProp
 005AC91E    mov        esi,eax
 005AC920    cmp        esi,dword ptr [ebx+14]
>005AC923    je         005ACC5A
 005AC929    mov        edx,ebx
 005AC92B    mov        eax,dword ptr [ebp-4]
 005AC92E    call       005ACCC8
 005AC933    mov        edx,esi
 005AC935    mov        eax,dword ptr [ebp-4]
 005AC938    call       005ACD74
>005AC93D    jmp        005ACC5A
 005AC942    mov        edx,ebx
 005AC944    mov        eax,esi
 005AC946    call       GetOrdProp
 005AC94B    mov        esi,eax
 005AC94D    cmp        esi,dword ptr [ebx+14]
>005AC950    je         005ACC5A
 005AC956    mov        edx,ebx
 005AC958    mov        eax,dword ptr [ebp-4]
 005AC95B    call       005ACCC8
 005AC960    mov        edx,esi
 005AC962    mov        eax,dword ptr [ebp-4]
 005AC965    call       005ACDF8
>005AC96A    jmp        005ACC5A
 005AC96F    mov        edx,ebx
 005AC971    mov        eax,esi
 005AC973    call       GetOrdProp
 005AC978    mov        esi,eax
 005AC97A    cmp        esi,dword ptr [ebx+14]
>005AC97D    je         005ACC5A
 005AC983    mov        edx,ebx
 005AC985    mov        eax,dword ptr [ebp-4]
 005AC988    call       005ACCC8
 005AC98D    lea        ecx,[ebp-10]
 005AC990    mov        eax,dword ptr [ebx]
 005AC992    mov        eax,dword ptr [eax]
 005AC994    mov        edx,esi
 005AC996    call       GetEnumName
 005AC99B    mov        edx,dword ptr [ebp-10]
 005AC99E    mov        eax,dword ptr [ebp-4]
 005AC9A1    call       005ACD1C
>005AC9A6    jmp        005ACC5A
 005AC9AB    mov        edx,ebx
 005AC9AD    mov        eax,dword ptr [ebp-4]
 005AC9B0    call       005ACCC8
 005AC9B5    mov        edx,ebx
 005AC9B7    mov        eax,esi
 005AC9B9    call       GetFloatProp
 005AC9BE    add        esp,0FFFFFFF4
 005AC9C1    fstp       tbyte ptr [esp]
 005AC9C4    wait
 005AC9C5    mov        eax,dword ptr [ebp-4]
 005AC9C8    call       005ACE1C
>005AC9CD    jmp        005ACC5A
 005AC9D2    lea        ecx,[ebp-8]
 005AC9D5    mov        edx,ebx
 005AC9D7    mov        eax,esi
 005AC9D9    call       GetStrProp
 005AC9DE    cmp        dword ptr [ebp-8],0
>005AC9E2    je         005ACC5A
 005AC9E8    mov        edx,ebx
 005AC9EA    mov        eax,dword ptr [ebp-4]
 005AC9ED    call       005ACCC8
 005AC9F2    mov        edx,dword ptr [ebp-8]
 005AC9F5    mov        eax,dword ptr [ebp-4]
 005AC9F8    call       005ACE44
>005AC9FD    jmp        005ACC5A
 005ACA02    mov        edx,ebx
 005ACA04    mov        eax,esi
 005ACA06    call       GetOrdProp
 005ACA0B    mov        esi,eax
 005ACA0D    cmp        esi,dword ptr [ebx+14]
>005ACA10    je         005ACC5A
 005ACA16    mov        edx,ebx
 005ACA18    mov        eax,dword ptr [ebp-4]
 005ACA1B    call       005ACCC8
 005ACA20    mov        eax,dword ptr [ebp-4]
 005ACA23    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005ACA26    mov        dl,7
 005ACA28    call       005A6040
 005ACA2D    xor        edi,edi
 005ACA2F    mov        eax,edi
 005ACA31    cmp        eax,1F
>005ACA34    ja         005ACA39
 005ACA36    bt         esi,eax
>005ACA39    jae        005ACA61
 005ACA3B    mov        eax,dword ptr [ebx]
 005ACA3D    mov        eax,dword ptr [eax]
 005ACA3F    call       GetTypeData
 005ACA44    mov        eax,dword ptr [eax+1]
 005ACA47    mov        eax,dword ptr [eax]
 005ACA49    lea        ecx,[ebp-14]
 005ACA4C    mov        edx,edi
 005ACA4E    call       GetEnumName
 005ACA53    mov        edx,dword ptr [ebp-14]
 005ACA56    mov        eax,dword ptr [ebp-4]
 005ACA59    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005ACA5C    call       005A6054
 005ACA61    inc        edi
 005ACA62    cmp        edi,20
<005ACA65    jne        005ACA2F
 005ACA67    mov        eax,dword ptr [ebp-4]
 005ACA6A    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005ACA6D    xor        edx,edx
 005ACA6F    call       005A6054
>005ACA74    jmp        005ACC5A
 005ACA79    mov        edx,ebx
 005ACA7B    mov        eax,esi
 005ACA7D    call       GetOrdProp
 005ACA82    mov        edi,eax
 005ACA84    test       edi,edi
>005ACA86    jne        005ACAB7
 005ACA88    mov        eax,dword ptr [ebx+14]
 005ACA8B    test       eax,eax
>005ACA8D    je         005ACC5A
 005ACA93    cmp        eax,80000000
>005ACA98    je         005ACC5A
 005ACA9E    mov        edx,ebx
 005ACAA0    mov        eax,dword ptr [ebp-4]
 005ACAA3    call       005ACCC8
 005ACAA8    xor        edx,edx
 005ACAAA    mov        eax,dword ptr [ebp-4]
 005ACAAD    call       005ACD74
>005ACAB2    jmp        005ACC5A
 005ACAB7    mov        eax,edi
 005ACAB9    mov        edx,dword ptr ds:[41D280]; TComponent
 005ACABF    call       @IsClass
 005ACAC4    test       al,al
>005ACAC6    je         005ACAEE
 005ACAC8    mov        edx,ebx
 005ACACA    mov        eax,dword ptr [ebp-4]
 005ACACD    call       005ACCC8
 005ACAD2    push       ebp
 005ACAD3    lea        edx,[ebp-18]
 005ACAD6    mov        eax,edi
 005ACAD8    call       005AC7F0
 005ACADD    pop        ecx
 005ACADE    mov        edx,dword ptr [ebp-18]
 005ACAE1    mov        eax,dword ptr [ebp-4]
 005ACAE4    call       005ACD1C
>005ACAE9    jmp        005ACC5A
 005ACAEE    mov        eax,edi
 005ACAF0    mov        edx,dword ptr ds:[41C390]; TPersistent
 005ACAF6    call       @IsClass
 005ACAFB    test       al,al
>005ACAFD    je         005ACB18
 005ACAFF    mov        edx,ebx
 005ACB01    mov        eax,dword ptr [ebp-4]
 005ACB04    call       005ACCC8
 005ACB09    mov        edx,edi
 005ACB0B    mov        eax,dword ptr [ebp-4]
 005ACB0E    call       005AC638
>005ACB13    jmp        005ACC5A
 005ACB18    mov        eax,edi
 005ACB1A    mov        edx,dword ptr ds:[5A677C]; TRaveComponentList
 005ACB20    call       @IsClass
 005ACB25    test       al,al
>005ACB27    je         005ACB82
 005ACB29    mov        edx,ebx
 005ACB2B    mov        eax,dword ptr [ebp-4]
 005ACB2E    call       005ACCC8
 005ACB33    mov        eax,dword ptr [ebp-4]
 005ACB36    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005ACB39    mov        dl,9
 005ACB3B    call       005A6040
 005ACB40    mov        ebx,dword ptr [edi+8]
 005ACB43    dec        ebx
 005ACB44    test       ebx,ebx
>005ACB46    jl         005ACB70
 005ACB48    inc        ebx
 005ACB49    xor        esi,esi
 005ACB4B    push       ebp
 005ACB4C    mov        edx,esi
 005ACB4E    mov        eax,edi
 005ACB50    call       TList.Get
 005ACB55    lea        edx,[ebp-1C]
 005ACB58    call       005AC7F0
 005ACB5D    pop        ecx
 005ACB5E    mov        edx,dword ptr [ebp-1C]
 005ACB61    mov        eax,dword ptr [ebp-4]
 005ACB64    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005ACB67    call       005A6054
 005ACB6C    inc        esi
 005ACB6D    dec        ebx
<005ACB6E    jne        005ACB4B
 005ACB70    mov        eax,dword ptr [ebp-4]
 005ACB73    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005ACB76    xor        edx,edx
 005ACB78    call       005A6054
>005ACB7D    jmp        005ACC5A
 005ACB82    mov        eax,edi
 005ACB84    mov        edx,dword ptr ds:[5A66D8]; TRavePersistentList
 005ACB8A    call       @IsClass
 005ACB8F    test       al,al
>005ACB91    je         005ACC11
 005ACB93    mov        edx,ebx
 005ACB95    mov        eax,dword ptr [ebp-4]
 005ACB98    call       005ACCC8
 005ACB9D    mov        eax,dword ptr [ebp-4]
 005ACBA0    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005ACBA3    mov        dl,0A
 005ACBA5    call       005A6040
 005ACBAA    mov        ebx,dword ptr [edi+8]
 005ACBAD    dec        ebx
 005ACBAE    test       ebx,ebx
>005ACBB0    jl         005ACC02
 005ACBB2    inc        ebx
 005ACBB3    xor        esi,esi
 005ACBB5    mov        edx,esi
 005ACBB7    mov        eax,edi
 005ACBB9    call       TList.Get
 005ACBBE    mov        dword ptr [ebp-0C],eax
 005ACBC1    cmp        dword ptr [ebp-0C],0
>005ACBC5    je         005ACBFE
 005ACBC7    lea        edx,[ebp-120]
 005ACBCD    mov        eax,dword ptr [ebp-0C]
 005ACBD0    mov        eax,dword ptr [eax]
 005ACBD2    call       TObject.ClassName
 005ACBD7    lea        edx,[ebp-120]
 005ACBDD    lea        eax,[ebp-20]
 005ACBE0    call       @LStrFromString
 005ACBE5    mov        edx,dword ptr [ebp-20]
 005ACBE8    mov        eax,dword ptr [ebp-4]
 005ACBEB    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005ACBEE    call       005A6054
 005ACBF3    mov        edx,dword ptr [ebp-0C]
 005ACBF6    mov        eax,dword ptr [ebp-4]
 005ACBF9    call       005AC638
 005ACBFE    inc        esi
 005ACBFF    dec        ebx
<005ACC00    jne        005ACBB5
 005ACC02    mov        eax,dword ptr [ebp-4]
 005ACC05    mov        eax,dword ptr [eax+28]; TRaveWriter.?f28:dword
 005ACC08    xor        edx,edx
 005ACC0A    call       005A6054
>005ACC0F    jmp        005ACC5A
 005ACC11    mov        ebx,dword ptr ds:[61B830]
 005ACC17    mov        ebx,dword ptr [ebx]
 005ACC19    lea        edx,[ebp-124]
 005ACC1F    mov        eax,5ACCA0; 'Attempt to write invalid class type.'
 005ACC24    call       ebx
 005ACC26    mov        eax,dword ptr [ebp-124]
 005ACC2C    call       005998CC
>005ACC31    jmp        005ACC5A
 005ACC33    lea        ecx,[ebp-8]
 005ACC36    mov        edx,ebx
 005ACC38    mov        eax,esi
 005ACC3A    call       GetStrProp
 005ACC3F    cmp        dword ptr [ebp-8],0
>005ACC43    je         005ACC5A
 005ACC45    mov        edx,ebx
 005ACC47    mov        eax,dword ptr [ebp-4]
 005ACC4A    call       005ACCC8
 005ACC4F    mov        edx,dword ptr [ebp-8]
 005ACC52    mov        eax,dword ptr [ebp-4]
 005ACC55    call       005ACE44
 005ACC5A    xor        eax,eax
 005ACC5C    pop        edx
 005ACC5D    pop        ecx
 005ACC5E    pop        ecx
 005ACC5F    mov        dword ptr fs:[eax],edx
 005ACC62    push       5ACC8F
 005ACC67    lea        eax,[ebp-124]
 005ACC6D    call       @LStrClr
 005ACC72    lea        eax,[ebp-20]
 005ACC75    mov        edx,5
 005ACC7A    call       @LStrArrayClr
 005ACC7F    lea        eax,[ebp-8]
 005ACC82    call       @LStrClr
 005ACC87    ret
<005ACC88    jmp        @HandleFinally
<005ACC8D    jmp        005ACC67
 005ACC8F    pop        edi
 005ACC90    pop        esi
 005ACC91    pop        ebx
 005ACC92    mov        esp,ebp
 005ACC94    pop        ebp
 005ACC95    ret
*}
//end;

//005ACCC8
//procedure sub_005ACCC8(?:TRaveWriter; ?:?);
//begin
{*
 005ACCC8    push       ebp
 005ACCC9    mov        ebp,esp
 005ACCCB    push       0
 005ACCCD    push       ebx
 005ACCCE    push       esi
 005ACCCF    mov        esi,edx
 005ACCD1    mov        ebx,eax
 005ACCD3    xor        eax,eax
 005ACCD5    push       ebp
 005ACCD6    push       5ACD0D
 005ACCDB    push       dword ptr fs:[eax]
 005ACCDE    mov        dword ptr fs:[eax],esp
 005ACCE1    lea        eax,[ebp-4]
 005ACCE4    lea        edx,[esi+1A]
 005ACCE7    call       @LStrFromString
 005ACCEC    mov        edx,dword ptr [ebp-4]
 005ACCEF    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACCF2    call       005A6054
 005ACCF7    xor        eax,eax
 005ACCF9    pop        edx
 005ACCFA    pop        ecx
 005ACCFB    pop        ecx
 005ACCFC    mov        dword ptr fs:[eax],edx
 005ACCFF    push       5ACD14
 005ACD04    lea        eax,[ebp-4]
 005ACD07    call       @LStrClr
 005ACD0C    ret
<005ACD0D    jmp        @HandleFinally
<005ACD12    jmp        005ACD04
 005ACD14    pop        esi
 005ACD15    pop        ebx
 005ACD16    pop        ecx
 005ACD17    pop        ebp
 005ACD18    ret
*}
//end;

//005ACD1C
//procedure sub_005ACD1C(?:TRaveWriter; ?:AnsiString);
//begin
{*
 005ACD1C    push       ebp
 005ACD1D    mov        ebp,esp
 005ACD1F    push       ecx
 005ACD20    push       ebx
 005ACD21    mov        dword ptr [ebp-4],edx
 005ACD24    mov        ebx,eax
 005ACD26    mov        eax,dword ptr [ebp-4]
 005ACD29    call       @LStrAddRef
 005ACD2E    xor        eax,eax
 005ACD30    push       ebp
 005ACD31    push       5ACD67
 005ACD36    push       dword ptr fs:[eax]
 005ACD39    mov        dword ptr fs:[eax],esp
 005ACD3C    xor        edx,edx
 005ACD3E    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACD41    call       005A6040
 005ACD46    mov        edx,dword ptr [ebp-4]
 005ACD49    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACD4C    call       005A6054
 005ACD51    xor        eax,eax
 005ACD53    pop        edx
 005ACD54    pop        ecx
 005ACD55    pop        ecx
 005ACD56    mov        dword ptr fs:[eax],edx
 005ACD59    push       5ACD6E
 005ACD5E    lea        eax,[ebp-4]
 005ACD61    call       @LStrClr
 005ACD66    ret
<005ACD67    jmp        @HandleFinally
<005ACD6C    jmp        005ACD5E
 005ACD6E    pop        ebx
 005ACD6F    pop        ecx
 005ACD70    pop        ebp
 005ACD71    ret
*}
//end;

//005ACD74
//procedure sub_005ACD74(?:TRaveWriter; ?:Longint);
//begin
{*
 005ACD74    push       ebx
 005ACD75    push       ecx
 005ACD76    mov        dword ptr [esp],edx
 005ACD79    mov        ebx,eax
 005ACD7B    cmp        dword ptr [esp],0
>005ACD7F    jl         005ACDA9
 005ACD81    cmp        dword ptr [esp],10000000
>005ACD88    jge        005ACDA9
 005ACD8A    mov        dl,1
 005ACD8C    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACD8F    call       005A6040
 005ACD94    mov        eax,dword ptr [esp]
 005ACD97    cdq
 005ACD98    xor        eax,edx
 005ACD9A    sub        eax,edx
 005ACD9C    mov        edx,eax
 005ACD9E    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACDA1    call       005A60C8
 005ACDA6    pop        edx
 005ACDA7    pop        ebx
 005ACDA8    ret
 005ACDA9    cmp        dword ptr [esp],0
>005ACDAD    jge        005ACDDC
 005ACDAF    mov        eax,dword ptr [esp]
 005ACDB2    cdq
 005ACDB3    xor        eax,edx
 005ACDB5    sub        eax,edx
 005ACDB7    cmp        eax,10000000
>005ACDBC    jge        005ACDDC
 005ACDBE    mov        dl,2
 005ACDC0    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACDC3    call       005A6040
 005ACDC8    mov        eax,dword ptr [esp]
 005ACDCB    cdq
 005ACDCC    xor        eax,edx
 005ACDCE    sub        eax,edx
 005ACDD0    mov        edx,eax
 005ACDD2    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACDD5    call       005A60C8
>005ACDDA    jmp        005ACDF5
 005ACDDC    mov        dl,3
 005ACDDE    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACDE1    call       005A6040
 005ACDE6    mov        edx,esp
 005ACDE8    mov        ecx,4
 005ACDED    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACDF0    call       005A618C
 005ACDF5    pop        edx
 005ACDF6    pop        ebx
 005ACDF7    ret
*}
//end;

//005ACDF8
//procedure sub_005ACDF8(?:TRaveWriter; ?:Longint);
//begin
{*
 005ACDF8    push       ebx
 005ACDF9    push       ecx
 005ACDFA    mov        byte ptr [esp],dl
 005ACDFD    mov        ebx,eax
 005ACDFF    mov        dl,4
 005ACE01    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACE04    call       005A6040
 005ACE09    mov        edx,esp
 005ACE0B    mov        ecx,1
 005ACE10    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACE13    call       005A618C
 005ACE18    pop        edx
 005ACE19    pop        ebx
 005ACE1A    ret
*}
//end;

//005ACE1C
//procedure sub_005ACE1C(?:TRaveWriter; ?:?);
//begin
{*
 005ACE1C    push       ebp
 005ACE1D    mov        ebp,esp
 005ACE1F    push       ebx
 005ACE20    mov        ebx,eax
 005ACE22    mov        dl,5
 005ACE24    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACE27    call       005A6040
 005ACE2C    lea        edx,[ebp+8]
 005ACE2F    mov        ecx,0A
 005ACE34    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACE37    call       005A618C
 005ACE3C    pop        ebx
 005ACE3D    pop        ebp
 005ACE3E    ret        0C
*}
//end;

//005ACE44
//procedure sub_005ACE44(?:TRaveWriter; ?:AnsiString);
//begin
{*
 005ACE44    push       ebp
 005ACE45    mov        ebp,esp
 005ACE47    push       ecx
 005ACE48    push       ebx
 005ACE49    mov        dword ptr [ebp-4],edx
 005ACE4C    mov        ebx,eax
 005ACE4E    mov        eax,dword ptr [ebp-4]
 005ACE51    call       @LStrAddRef
 005ACE56    xor        eax,eax
 005ACE58    push       ebp
 005ACE59    push       5ACE8F
 005ACE5E    push       dword ptr fs:[eax]
 005ACE61    mov        dword ptr fs:[eax],esp
 005ACE64    mov        dl,6
 005ACE66    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACE69    call       005A6040
 005ACE6E    mov        edx,dword ptr [ebp-4]
 005ACE71    mov        eax,dword ptr [ebx+28]; TRaveWriter.?f28:dword
 005ACE74    call       005A6054
 005ACE79    xor        eax,eax
 005ACE7B    pop        edx
 005ACE7C    pop        ecx
 005ACE7D    pop        ecx
 005ACE7E    mov        dword ptr fs:[eax],edx
 005ACE81    push       5ACE96
 005ACE86    lea        eax,[ebp-4]
 005ACE89    call       @LStrClr
 005ACE8E    ret
<005ACE8F    jmp        @HandleFinally
<005ACE94    jmp        005ACE86
 005ACE96    pop        ebx
 005ACE97    pop        ecx
 005ACE98    pop        ebp
 005ACE99    ret
*}
//end;

//005ACE9C
//constructor TRaveReader.Create(?:TRaveReader; _Dv__:Boolean);
//begin
{*
 005ACE9C    push       ebx
 005ACE9D    push       esi
 005ACE9E    test       dl,dl
>005ACEA0    je         005ACEAA
 005ACEA2    add        esp,0FFFFFFF0
 005ACEA5    call       @ClassCreate
 005ACEAA    mov        ebx,edx
 005ACEAC    mov        esi,eax
 005ACEAE    xor        edx,edx
 005ACEB0    mov        eax,esi
 005ACEB2    call       005AC19C
 005ACEB7    mov        byte ptr [esi+34],1; TRaveReader.?f34:byte
 005ACEBB    mov        eax,esi
 005ACEBD    test       bl,bl
>005ACEBF    je         005ACED0
 005ACEC1    call       @AfterConstruction
 005ACEC6    pop        dword ptr fs:[0]
 005ACECD    add        esp,0C
 005ACED0    mov        eax,esi
 005ACED2    pop        esi
 005ACED3    pop        ebx
 005ACED4    ret
*}
//end;

//005ACED8
destructor TRaveReader.Destroy;
begin
{*
 005ACED8    push       ebx
 005ACED9    push       esi
 005ACEDA    call       @BeforeDestruction
 005ACEDF    mov        ebx,edx
 005ACEE1    mov        esi,eax
 005ACEE3    mov        edx,ebx
 005ACEE5    and        dl,0FC
 005ACEE8    mov        eax,esi
 005ACEEA    call       TRaveFiler.Destroy
 005ACEEF    test       bl,bl
>005ACEF1    jle        005ACEFA
 005ACEF3    mov        eax,esi
 005ACEF5    call       @ClassDestroy
 005ACEFA    pop        esi
 005ACEFB    pop        ebx
 005ACEFC    ret
*}
end;

//005ACF00
//procedure TRaveReader.DefineProperty(?:?; ?:?; ?:?);
//begin
{*
 005ACF00    push       ebp
 005ACF01    mov        ebp,esp
 005ACF03    add        esp,0FFFFFFF4
 005ACF06    push       ebx
 005ACF07    mov        ebx,edx
 005ACF09    mov        dword ptr [ebp-4],eax
 005ACF0C    mov        eax,dword ptr [ebp-4]
 005ACF0F    cmp        byte ptr [eax+38],0; TRaveReader.?f38:byte
>005ACF13    jne        005ACFF4
 005ACF19    mov        eax,dword ptr [ebp-4]
 005ACF1C    mov        edx,dword ptr [eax+3C]; TRaveReader.?f3C:String
 005ACF1F    mov        eax,ebx
 005ACF21    call       AnsiCompareText
 005ACF26    test       eax,eax
>005ACF28    jne        005ACFF4
 005ACF2E    cmp        word ptr [ebp+12],0
>005ACF33    je         005ACFF4
 005ACF39    mov        dl,1
 005ACF3B    mov        eax,[0041CBF8]; TMemoryStream
 005ACF40    call       TObject.Create; TMemoryStream.Create
 005ACF45    mov        dword ptr [ebp-8],eax
 005ACF48    xor        eax,eax
 005ACF4A    push       ebp
 005ACF4B    push       5ACFE6
 005ACF50    push       dword ptr fs:[eax]
 005ACF53    mov        dword ptr fs:[eax],esp
 005ACF56    mov        eax,dword ptr [ebp-4]
 005ACF59    mov        eax,dword ptr [eax+28]; TRaveReader.?f28:dword
 005ACF5C    call       005A61E0
 005ACF61    mov        ecx,eax
 005ACF63    mov        eax,ecx
 005ACF65    cdq
 005ACF66    push       edx
 005ACF67    push       eax
 005ACF68    mov        eax,dword ptr [ebp-4]
 005ACF6B    mov        eax,dword ptr [eax+28]; TRaveReader.?f28:dword
 005ACF6E    mov        edx,dword ptr [eax+4]
 005ACF71    mov        eax,dword ptr [ebp-8]
 005ACF74    call       TStream.CopyFrom
 005ACF79    push       0
 005ACF7B    push       0
 005ACF7D    mov        eax,dword ptr [ebp-8]
 005ACF80    call       TStream.SetPosition
 005ACF85    push       400
 005ACF8A    mov        ecx,dword ptr [ebp-8]
 005ACF8D    mov        dl,1
 005ACF8F    mov        eax,[0041CFD0]; TReader
 005ACF94    call       TFiler.Create; TReader.Create
 005ACF99    mov        dword ptr [ebp-0C],eax
 005ACF9C    xor        eax,eax
 005ACF9E    push       ebp
 005ACF9F    push       5ACFC9
 005ACFA4    push       dword ptr fs:[eax]
 005ACFA7    mov        dword ptr fs:[eax],esp
 005ACFAA    mov        edx,dword ptr [ebp-0C]
 005ACFAD    mov        eax,dword ptr [ebp+14]
 005ACFB0    call       dword ptr [ebp+10]
 005ACFB3    xor        eax,eax
 005ACFB5    pop        edx
 005ACFB6    pop        ecx
 005ACFB7    pop        ecx
 005ACFB8    mov        dword ptr fs:[eax],edx
 005ACFBB    push       5ACFD0
 005ACFC0    mov        eax,dword ptr [ebp-0C]
 005ACFC3    call       TObject.Free
 005ACFC8    ret
<005ACFC9    jmp        @HandleFinally
<005ACFCE    jmp        005ACFC0
 005ACFD0    xor        eax,eax
 005ACFD2    pop        edx
 005ACFD3    pop        ecx
 005ACFD4    pop        ecx
 005ACFD5    mov        dword ptr fs:[eax],edx
 005ACFD8    push       5ACFED
 005ACFDD    mov        eax,dword ptr [ebp-8]
 005ACFE0    call       TObject.Free
 005ACFE5    ret
<005ACFE6    jmp        @HandleFinally
<005ACFEB    jmp        005ACFDD
 005ACFED    mov        eax,dword ptr [ebp-4]
 005ACFF0    mov        byte ptr [eax+38],1; TRaveReader.?f38:byte
 005ACFF4    pop        ebx
 005ACFF5    mov        esp,ebp
 005ACFF7    pop        ebp
 005ACFF8    ret        10
*}
//end;

//005ACFFC
//procedure TRaveReader.DefineBinaryProperty(?:?; ?:?; ?:?);
//begin
{*
 005ACFFC    push       ebp
 005ACFFD    mov        ebp,esp
 005ACFFF    add        esp,0FFFFFFF8
 005AD002    push       ebx
 005AD003    mov        ebx,edx
 005AD005    mov        dword ptr [ebp-4],eax
 005AD008    mov        eax,dword ptr [ebp-4]
 005AD00B    cmp        byte ptr [eax+38],0; TRaveReader.?f38:byte
>005AD00F    jne        005AD0AA
 005AD015    mov        eax,dword ptr [ebp-4]
 005AD018    mov        edx,dword ptr [eax+3C]; TRaveReader.?f3C:String
 005AD01B    mov        eax,ebx
 005AD01D    call       AnsiCompareText
 005AD022    test       eax,eax
>005AD024    jne        005AD0AA
 005AD02A    cmp        word ptr [ebp+12],0
>005AD02F    je         005AD0AA
 005AD031    mov        dl,1
 005AD033    mov        eax,[0041CBF8]; TMemoryStream
 005AD038    call       TObject.Create; TMemoryStream.Create
 005AD03D    mov        dword ptr [ebp-8],eax
 005AD040    xor        eax,eax
 005AD042    push       ebp
 005AD043    push       5AD09C
 005AD048    push       dword ptr fs:[eax]
 005AD04B    mov        dword ptr fs:[eax],esp
 005AD04E    mov        eax,dword ptr [ebp-4]
 005AD051    mov        eax,dword ptr [eax+28]; TRaveReader.?f28:dword
 005AD054    call       005A61E0
 005AD059    mov        ecx,eax
 005AD05B    mov        eax,ecx
 005AD05D    cdq
 005AD05E    push       edx
 005AD05F    push       eax
 005AD060    mov        eax,dword ptr [ebp-4]
 005AD063    mov        eax,dword ptr [eax+28]; TRaveReader.?f28:dword
 005AD066    mov        edx,dword ptr [eax+4]
 005AD069    mov        eax,dword ptr [ebp-8]
 005AD06C    call       TStream.CopyFrom
 005AD071    push       0
 005AD073    push       0
 005AD075    mov        eax,dword ptr [ebp-8]
 005AD078    call       TStream.SetPosition
 005AD07D    mov        edx,dword ptr [ebp-8]
 005AD080    mov        eax,dword ptr [ebp+14]
 005AD083    call       dword ptr [ebp+10]
 005AD086    xor        eax,eax
 005AD088    pop        edx
 005AD089    pop        ecx
 005AD08A    pop        ecx
 005AD08B    mov        dword ptr fs:[eax],edx
 005AD08E    push       5AD0A3
 005AD093    mov        eax,dword ptr [ebp-8]
 005AD096    call       TObject.Free
 005AD09B    ret
<005AD09C    jmp        @HandleFinally
<005AD0A1    jmp        005AD093
 005AD0A3    mov        eax,dword ptr [ebp-4]
 005AD0A6    mov        byte ptr [eax+38],1; TRaveReader.?f38:byte
 005AD0AA    pop        ebx
 005AD0AB    pop        ecx
 005AD0AC    pop        ecx
 005AD0AD    pop        ebp
 005AD0AE    ret        10
*}
//end;

//005AD0B4
procedure TRaveReader.FlushBuffer();
begin
{*
 005AD0B4    ret
*}
end;

//005AD0B8
//function sub_005AD0B8(?:TRaveReader):Boolean;
//begin
{*
 005AD0B8    cmp        dword ptr [eax+44],0; TRaveReader.?f44:dword
 005AD0BC    setg       al
 005AD0BF    ret
*}
//end;

//005AD0C0
//function sub_005AD0C0(?:TRaveReader; ?:TRaveProjectItem; ?:void):?;
//begin
{*
 005AD0C0    push       ebp
 005AD0C1    mov        ebp,esp
 005AD0C3    push       ecx
 005AD0C4    mov        ecx,8
 005AD0C9    push       0
 005AD0CB    push       0
 005AD0CD    dec        ecx
<005AD0CE    jne        005AD0C9
 005AD0D0    xchg       ecx,dword ptr [ebp-4]
 005AD0D3    push       ebx
 005AD0D4    push       esi
 005AD0D5    push       edi
 005AD0D6    mov        dword ptr [ebp-0C],ecx
 005AD0D9    mov        dword ptr [ebp-8],edx
 005AD0DC    mov        dword ptr [ebp-4],eax
 005AD0DF    xor        eax,eax
 005AD0E1    push       ebp
 005AD0E2    push       5AD453
 005AD0E7    push       dword ptr fs:[eax]
 005AD0EA    mov        dword ptr fs:[eax],esp
 005AD0ED    mov        eax,dword ptr [ebp-4]
 005AD0F0    xor        edx,edx
 005AD0F2    mov        dword ptr [eax+44],edx; TRaveReader.?f44:dword
 005AD0F5    mov        eax,dword ptr [ebp-4]
 005AD0F8    mov        eax,dword ptr [eax+28]; TRaveReader.?f28:dword
 005AD0FB    mov        dword ptr [ebp-20],eax
 005AD0FE    mov        eax,dword ptr [ebp-4]
 005AD101    mov        edx,dword ptr [ebp-8]
 005AD104    mov        dword ptr [eax+30],edx; TRaveReader.?f30:TRaveComponent
 005AD107    mov        eax,dword ptr [ebp-4]
 005AD10A    mov        edx,dword ptr [ebp-0C]
 005AD10D    mov        dword ptr [eax+48],edx; TRaveReader.?f48:void
 005AD110    mov        eax,dword ptr [ebp-20]
 005AD113    call       005A6198
 005AD118    lea        edx,[ebp-14]
 005AD11B    mov        eax,dword ptr [ebp-20]
 005AD11E    call       005A61AC
 005AD123    lea        edx,[ebp-18]
 005AD126    mov        eax,dword ptr [ebp-20]
 005AD129    call       005A61AC
 005AD12E    xor        eax,eax
 005AD130    push       ebp
 005AD131    push       5AD150
 005AD136    push       dword ptr fs:[eax]
 005AD139    mov        dword ptr fs:[eax],esp
 005AD13C    mov        eax,dword ptr [ebp-14]
 005AD13F    call       FindClass
 005AD144    mov        ebx,eax
 005AD146    xor        eax,eax
 005AD148    pop        edx
 005AD149    pop        ecx
 005AD14A    pop        ecx
 005AD14B    mov        dword ptr fs:[eax],edx
>005AD14E    jmp        005AD15C
<005AD150    jmp        @HandleAnyException
 005AD155    xor        ebx,ebx
 005AD157    call       @DoneExcept
 005AD15C    test       ebx,ebx
>005AD15E    jne        005AD240
 005AD164    mov        eax,[0061B184]
 005AD169    cmp        byte ptr [eax],0
>005AD16C    je         005AD1A5
 005AD16E    lea        eax,[ebp-28]
 005AD171    push       eax
 005AD172    mov        eax,dword ptr [ebp-14]
 005AD175    mov        dword ptr [ebp-30],eax
 005AD178    mov        byte ptr [ebp-2C],0B
 005AD17C    lea        edx,[ebp-30]
 005AD17F    xor        ecx,ecx
 005AD181    mov        eax,5AD46C; 'Unknown component \"%s\" found.  You will need to add the package containing this component before you can load this report project.'
 005AD186    call       Format
 005AD18B    mov        eax,dword ptr [ebp-28]
 005AD18E    mov        ebx,dword ptr ds:[61B830]
 005AD194    mov        ebx,dword ptr [ebx]
 005AD196    lea        edx,[ebp-24]
 005AD199    call       ebx
 005AD19B    mov        eax,dword ptr [ebp-24]
 005AD19E    call       ShowMessage
>005AD1A3    jmp        005AD1DA
 005AD1A5    lea        eax,[ebp-38]
 005AD1A8    push       eax
 005AD1A9    mov        eax,dword ptr [ebp-14]
 005AD1AC    mov        dword ptr [ebp-30],eax
 005AD1AF    mov        byte ptr [ebp-2C],0B
 005AD1B3    lea        edx,[ebp-30]
 005AD1B6    xor        ecx,ecx
 005AD1B8    mov        eax,5AD4F8; 'Unknown class \"%s\" found.  You will need to include the unit containing this component to your uses clause.'
 005AD1BD    call       Format
 005AD1C2    mov        eax,dword ptr [ebp-38]
 005AD1C5    mov        ebx,dword ptr ds:[61B830]
 005AD1CB    mov        ebx,dword ptr [ebx]
 005AD1CD    lea        edx,[ebp-34]
 005AD1D0    call       ebx
 005AD1D2    mov        eax,dword ptr [ebp-34]
 005AD1D5    call       ShowMessage
 005AD1DA    xor        eax,eax
 005AD1DC    mov        dword ptr [ebp-10],eax
 005AD1DF    mov        eax,dword ptr [ebp-4]
 005AD1E2    inc        dword ptr [eax+44]; TRaveReader.?f44:dword
 005AD1E5    xor        edx,edx
 005AD1E7    push       ebp
 005AD1E8    push       5AD239
 005AD1ED    push       dword ptr fs:[edx]
 005AD1F0    mov        dword ptr fs:[edx],esp
 005AD1F3    mov        eax,dword ptr [ebp-20]
 005AD1F6    call       005A6198
 005AD1FB    mov        edx,dword ptr [ebp-10]
 005AD1FE    mov        eax,dword ptr [ebp-4]
 005AD201    call       005AD6D0
 005AD206    mov        eax,dword ptr [ebp-20]
 005AD209    call       005A61E0
 005AD20E    mov        esi,eax
 005AD210    test       esi,esi
>005AD212    jle        005AD225
 005AD214    mov        ecx,dword ptr [ebp-10]
 005AD217    mov        edx,dword ptr [ebp-8]
 005AD21A    mov        eax,dword ptr [ebp-4]
 005AD21D    call       005AD0C0
 005AD222    dec        esi
<005AD223    jne        005AD214
 005AD225    xor        eax,eax
 005AD227    pop        edx
 005AD228    pop        ecx
 005AD229    pop        ecx
 005AD22A    mov        dword ptr fs:[eax],edx
 005AD22D    push       5AD41E
 005AD232    mov        eax,dword ptr [ebp-4]
 005AD235    dec        dword ptr [eax+44]; TRaveReader.?f44:dword
 005AD238    ret
<005AD239    jmp        @HandleFinally
<005AD23E    jmp        005AD232
 005AD240    mov        eax,ebx
 005AD242    call       dword ptr [eax-0C]
 005AD245    mov        dword ptr [ebp-10],eax
 005AD248    mov        eax,dword ptr [ebp-4]
 005AD24B    mov        ecx,dword ptr [eax+30]; TRaveReader.?f30:TRaveComponent
 005AD24E    or         edx,0FFFFFFFF
 005AD251    mov        eax,dword ptr [ebp-10]
 005AD254    mov        esi,dword ptr [eax]
 005AD256    call       dword ptr [esi+2C]
 005AD259    mov        eax,dword ptr [ebp-10]
 005AD25C    mov        al,byte ptr [eax+30]
 005AD25F    or         al,byte ptr ds:[5AD564]; 0x4
 005AD265    mov        edx,dword ptr [ebp-10]
 005AD268    mov        byte ptr [edx+30],al
 005AD26B    mov        eax,dword ptr [ebp-0C]
 005AD26E    call       TObject.ClassInfo
 005AD273    mov        edx,eax
 005AD275    mov        eax,dword ptr [ebp-10]
 005AD278    mov        eax,dword ptr [eax]
 005AD27A    call       dword ptr [eax+34]
 005AD27D    test       al,al
>005AD27F    je         005AD28F
 005AD281    mov        edx,ebx
 005AD283    mov        eax,dword ptr [ebp-0C]
 005AD286    mov        ecx,dword ptr [eax]
 005AD288    call       dword ptr [ecx+38]
 005AD28B    test       al,al
>005AD28D    jne        005AD293
 005AD28F    xor        eax,eax
>005AD291    jmp        005AD295
 005AD293    mov        al,1
 005AD295    mov        ebx,eax
 005AD297    test       bl,bl
>005AD299    je         005AD3AE
 005AD29F    mov        eax,dword ptr [ebp-4]
 005AD2A2    mov        edx,dword ptr [ebp-10]
 005AD2A5    mov        dword ptr [eax+4C],edx; TRaveReader.?f4C:void
 005AD2A8    mov        edx,dword ptr [ebp-0C]
 005AD2AB    mov        eax,dword ptr [ebp-10]
 005AD2AE    mov        ecx,dword ptr [eax]
 005AD2B0    call       dword ptr [ecx+44]
 005AD2B3    mov        eax,dword ptr [ebp-4]
 005AD2B6    cmp        byte ptr [eax+41],0; TRaveReader.?f41:byte
>005AD2BA    je         005AD382
 005AD2C0    lea        eax,[ebp-1C]
 005AD2C3    mov        edx,dword ptr [ebp-14]
 005AD2C6    call       @LStrLAsg
 005AD2CB    mov        eax,dword ptr [ebp-1C]
 005AD2CE    cmp        byte ptr [eax],54
>005AD2D1    jne        005AD2E5
 005AD2D3    lea        eax,[ebp-1C]
 005AD2D6    mov        ecx,1
 005AD2DB    mov        edx,1
 005AD2E0    call       @LStrDelete
 005AD2E5    lea        edx,[ebp-3C]
 005AD2E8    mov        eax,dword ptr [ebp-1C]
 005AD2EB    call       UpperCase
 005AD2F0    mov        edx,dword ptr [ebp-3C]
 005AD2F3    mov        eax,5AD570; 'RAVE'
 005AD2F8    call       @LStrPos
 005AD2FD    dec        eax
>005AD2FE    jne        005AD312
 005AD300    lea        eax,[ebp-1C]
 005AD303    mov        ecx,4
 005AD308    mov        edx,1
 005AD30D    call       @LStrDelete
 005AD312    push       1
 005AD314    lea        eax,[ebp-40]
 005AD317    push       eax
 005AD318    push       dword ptr [ebp-18]
 005AD31B    push       5AD580; '|'
 005AD320    push       dword ptr [ebp-1C]
 005AD323    lea        eax,[ebp-44]
 005AD326    mov        edx,3
 005AD32B    call       @LStrCatN
 005AD330    mov        edx,dword ptr [ebp-44]
 005AD333    mov        eax,dword ptr [ebp-4]
 005AD336    mov        ecx,dword ptr [eax+30]; TRaveReader.?f30:TRaveComponent
 005AD339    mov        eax,dword ptr [ebp-8]
 005AD33C    mov        eax,dword ptr [eax+48]; TRaveProjectManager.?f48:TRaveComponent
 005AD33F    call       005A492C
 005AD344    mov        edx,dword ptr [ebp-40]
 005AD347    mov        eax,dword ptr [ebp-10]
 005AD34A    mov        ecx,dword ptr [eax]
 005AD34C    call       dword ptr [ecx+18]
 005AD34F    mov        eax,dword ptr [ebp-10]
 005AD352    mov        eax,dword ptr [eax+8]
 005AD355    mov        edx,dword ptr [ebp-18]
 005AD358    call       @LStrCmp
>005AD35D    jne        005AD36F
 005AD35F    mov        eax,dword ptr [ebp-8]
 005AD362    mov        eax,dword ptr [eax+48]; TRaveProjectManager.?f48:TRaveComponent
 005AD365    mov        edx,dword ptr [ebp-10]
 005AD368    call       005A18FC
>005AD36D    jmp        005AD39B
 005AD36F    mov        eax,dword ptr [ebp-8]
 005AD372    mov        eax,dword ptr [eax+48]; TRaveProjectManager.?f48:TRaveComponent
 005AD375    mov        ecx,dword ptr [ebp-10]
 005AD378    mov        edx,dword ptr [ebp-18]
 005AD37B    call       005A183C
>005AD380    jmp        005AD39B
 005AD382    mov        edx,dword ptr [ebp-18]
 005AD385    mov        eax,dword ptr [ebp-10]
 005AD388    mov        ecx,dword ptr [eax]
 005AD38A    call       dword ptr [ecx+18]
 005AD38D    mov        eax,dword ptr [ebp-8]
 005AD390    mov        eax,dword ptr [eax+48]; TRaveProjectManager.?f48:TRaveComponent
 005AD393    mov        edx,dword ptr [ebp-10]
 005AD396    call       005A18FC
 005AD39B    mov        eax,dword ptr [ebp-4]
 005AD39E    cmp        byte ptr [eax+40],0; TRaveReader.?f40:byte
>005AD3A2    je         005AD3B4
 005AD3A4    mov        eax,dword ptr [ebp-10]
 005AD3A7    call       005A8004
>005AD3AC    jmp        005AD3B4
 005AD3AE    mov        eax,dword ptr [ebp-4]
 005AD3B1    inc        dword ptr [eax+44]; TRaveReader.?f44:dword
 005AD3B4    mov        eax,dword ptr [ebp-20]
 005AD3B7    call       005A6198
 005AD3BC    mov        edx,dword ptr [ebp-10]
 005AD3BF    mov        eax,dword ptr [ebp-4]
 005AD3C2    call       005AD6D0
 005AD3C7    mov        eax,dword ptr [ebp-20]
 005AD3CA    call       005A61E0
 005AD3CF    mov        esi,eax
 005AD3D1    test       esi,esi
>005AD3D3    jle        005AD3E6
 005AD3D5    mov        ecx,dword ptr [ebp-10]
 005AD3D8    mov        edx,dword ptr [ebp-8]
 005AD3DB    mov        eax,dword ptr [ebp-4]
 005AD3DE    call       005AD0C0
 005AD3E3    dec        esi
<005AD3E4    jne        005AD3D5
 005AD3E6    mov        eax,dword ptr [ebp-4]
 005AD3E9    mov        edx,dword ptr [ebp-0C]
 005AD3EC    mov        dword ptr [eax+48],edx; TRaveReader.?f48:void
 005AD3EF    mov        eax,dword ptr [ebp-4]
 005AD3F2    mov        edx,dword ptr [ebp-10]
 005AD3F5    mov        dword ptr [eax+4C],edx; TRaveReader.?f4C:void
 005AD3F8    mov        eax,dword ptr [ebp-10]
 005AD3FB    mov        dl,byte ptr ds:[5AD564]; 0x4
 005AD401    not        edx
 005AD403    and        dl,byte ptr [eax+30]
 005AD406    mov        eax,dword ptr [ebp-10]
 005AD409    mov        byte ptr [eax+30],dl
 005AD40C    test       bl,bl
>005AD40E    jne        005AD41E
 005AD410    mov        eax,dword ptr [ebp-4]
 005AD413    dec        dword ptr [eax+44]; TRaveReader.?f44:dword
 005AD416    lea        eax,[ebp-10]
 005AD419    call       FreeAndNil
 005AD41E    xor        eax,eax
 005AD420    pop        edx
 005AD421    pop        ecx
 005AD422    pop        ecx
 005AD423    mov        dword ptr fs:[eax],edx
 005AD426    push       5AD45A
 005AD42B    lea        eax,[ebp-44]
 005AD42E    mov        edx,5
 005AD433    call       @LStrArrayClr
 005AD438    lea        eax,[ebp-28]
 005AD43B    mov        edx,2
 005AD440    call       @LStrArrayClr
 005AD445    lea        eax,[ebp-1C]
 005AD448    mov        edx,3
 005AD44D    call       @LStrArrayClr
 005AD452    ret
<005AD453    jmp        @HandleFinally
<005AD458    jmp        005AD42B
 005AD45A    mov        eax,dword ptr [ebp-10]
 005AD45D    pop        edi
 005AD45E    pop        esi
 005AD45F    pop        ebx
 005AD460    mov        esp,ebp
 005AD462    pop        ebp
 005AD463    ret
*}
//end;

//005AD584
//procedure sub_005AD584(?:TRaveReader; ?:TRaveProjectItem);
//begin
{*
 005AD584    push       ebp
 005AD585    mov        ebp,esp
 005AD587    add        esp,0FFFFFEF0
 005AD58D    push       ebx
 005AD58E    push       esi
 005AD58F    xor        ecx,ecx
 005AD591    mov        dword ptr [ebp-10],ecx
 005AD594    mov        dword ptr [ebp-8],ecx
 005AD597    mov        dword ptr [ebp-0C],ecx
 005AD59A    mov        dword ptr [ebp-4],edx
 005AD59D    mov        ebx,eax
 005AD59F    xor        eax,eax
 005AD5A1    push       ebp
 005AD5A2    push       5AD6BC
 005AD5A7    push       dword ptr fs:[eax]
 005AD5AA    mov        dword ptr fs:[eax],esp
 005AD5AD    xor        eax,eax
 005AD5AF    mov        dword ptr [ebx+44],eax; TRaveReader.?f44:dword
 005AD5B2    mov        eax,dword ptr [ebp-4]
 005AD5B5    mov        al,byte ptr [eax+30]; TRaveProjectItem.?f30:byte
 005AD5B8    or         al,byte ptr ds:[5AD6CC]; 0x4
 005AD5BE    mov        edx,dword ptr [ebp-4]
 005AD5C1    mov        byte ptr [edx+30],al; TRaveProjectItem.?f30:byte
 005AD5C4    xor        edx,edx
 005AD5C6    push       ebp
 005AD5C7    push       5AD69A
 005AD5CC    push       dword ptr fs:[edx]
 005AD5CF    mov        dword ptr fs:[edx],esp
 005AD5D2    mov        esi,dword ptr [ebx+28]; TRaveReader.?f28:dword
 005AD5D5    mov        eax,dword ptr [ebp-4]
 005AD5D8    mov        eax,dword ptr [eax+4]; TRaveProjectItem.FOwner:TComponent
 005AD5DB    mov        edx,dword ptr ds:[5A6884]; TRaveComponent
 005AD5E1    call       @AsClass
 005AD5E6    mov        dword ptr [ebx+30],eax; TRaveReader.?f30:TRaveComponent
 005AD5E9    mov        eax,esi
 005AD5EB    call       005A6198
 005AD5F0    lea        edx,[ebp-8]
 005AD5F3    mov        eax,esi
 005AD5F5    call       005A61AC
 005AD5FA    lea        edx,[ebp-0C]
 005AD5FD    mov        eax,esi
 005AD5FF    call       005A61AC
 005AD604    lea        edx,[ebp-110]
 005AD60A    mov        eax,dword ptr [ebp-4]
 005AD60D    mov        eax,dword ptr [eax]
 005AD60F    call       TObject.ClassName
 005AD614    lea        edx,[ebp-110]
 005AD61A    lea        eax,[ebp-10]
 005AD61D    call       @LStrFromString
 005AD622    mov        eax,dword ptr [ebp-10]
 005AD625    mov        edx,dword ptr [ebp-8]
 005AD628    call       AnsiCompareText
 005AD62D    test       eax,eax
>005AD62F    jne        005AD678
 005AD631    mov        edx,dword ptr [ebp-0C]
 005AD634    mov        eax,dword ptr [ebp-4]
 005AD637    mov        ecx,dword ptr [eax]
 005AD639    call       dword ptr [ecx+18]; TRaveProjectItem.SetName
 005AD63C    mov        eax,dword ptr [ebp-4]
 005AD63F    mov        eax,dword ptr [eax+48]; TRaveProjectItem.?f48:TRaveComponent
 005AD642    mov        edx,dword ptr [ebp-4]
 005AD645    call       005A18FC
 005AD64A    mov        eax,esi
 005AD64C    call       005A6198
 005AD651    mov        edx,dword ptr [ebp-4]
 005AD654    mov        eax,ebx
 005AD656    call       005AD6D0
 005AD65B    mov        eax,esi
 005AD65D    call       005A61E0
 005AD662    mov        esi,eax
 005AD664    test       esi,esi
>005AD666    jle        005AD678
 005AD668    mov        ecx,dword ptr [ebp-4]
 005AD66B    mov        edx,dword ptr [ebp-4]
 005AD66E    mov        eax,ebx
 005AD670    call       005AD0C0
 005AD675    dec        esi
<005AD676    jne        005AD668
 005AD678    xor        eax,eax
 005AD67A    pop        edx
 005AD67B    pop        ecx
 005AD67C    pop        ecx
 005AD67D    mov        dword ptr fs:[eax],edx
 005AD680    push       5AD6A1
 005AD685    mov        eax,dword ptr [ebp-4]
 005AD688    mov        dl,byte ptr ds:[5AD6CC]; 0x4
 005AD68E    not        edx
 005AD690    and        dl,byte ptr [eax+30]; TRaveProjectItem.?f30:byte
 005AD693    mov        eax,dword ptr [ebp-4]
 005AD696    mov        byte ptr [eax+30],dl; TRaveProjectItem.?f30:byte
 005AD699    ret
<005AD69A    jmp        @HandleFinally
<005AD69F    jmp        005AD685
 005AD6A1    xor        eax,eax
 005AD6A3    pop        edx
 005AD6A4    pop        ecx
 005AD6A5    pop        ecx
 005AD6A6    mov        dword ptr fs:[eax],edx
 005AD6A9    push       5AD6C3
 005AD6AE    lea        eax,[ebp-10]
 005AD6B1    mov        edx,3
 005AD6B6    call       @LStrArrayClr
 005AD6BB    ret
<005AD6BC    jmp        @HandleFinally
<005AD6C1    jmp        005AD6AE
 005AD6C3    pop        esi
 005AD6C4    pop        ebx
 005AD6C5    mov        esp,ebp
 005AD6C7    pop        ebp
 005AD6C8    ret
*}
//end;

//005AD6D0
//procedure sub_005AD6D0(?:TRaveReader; ?:void);
//begin
{*
 005AD6D0    push       ebp
 005AD6D1    mov        ebp,esp
 005AD6D3    add        esp,0FFFFFFE0
 005AD6D6    push       ebx
 005AD6D7    push       esi
 005AD6D8    push       edi
 005AD6D9    xor        ecx,ecx
 005AD6DB    mov        dword ptr [ebp-20],ecx
 005AD6DE    mov        esi,edx
 005AD6E0    mov        ebx,eax
 005AD6E2    xor        eax,eax
 005AD6E4    push       ebp
 005AD6E5    push       5AD802
 005AD6EA    push       dword ptr fs:[eax]
 005AD6ED    mov        dword ptr fs:[eax],esp
 005AD6F0    mov        eax,dword ptr [ebx+28]; TRaveReader.?f28:dword
 005AD6F3    mov        dword ptr [ebp-1C],eax
 005AD6F6    xor        eax,eax
 005AD6F8    mov        dword ptr [ebx+2C],eax; TRaveReader.?f2C:dword
 005AD6FB    mov        eax,esi
 005AD6FD    mov        edx,dword ptr ds:[5A6884]; TRaveComponent
 005AD703    call       @IsClass
 005AD708    test       al,al
>005AD70A    je         005AD715
 005AD70C    mov        edx,ebx
 005AD70E    mov        eax,esi
 005AD710    mov        ecx,dword ptr [eax]
 005AD712    call       dword ptr [ecx+6C]
 005AD715    mov        edi,dword ptr [ebx+2C]; TRaveReader.?f2C:dword
 005AD718    lea        edx,[ebp-20]
 005AD71B    mov        eax,dword ptr [ebp-1C]
 005AD71E    call       005A61AC
 005AD723    mov        edx,dword ptr [ebp-20]
 005AD726    lea        eax,[ebx+3C]; TRaveReader.?f3C:String
 005AD729    call       @LStrAsg
 005AD72E    cmp        dword ptr [ebx+3C],0; TRaveReader.?f3C:String
>005AD732    je         005AD7DA
 005AD738    mov        byte ptr [ebx+38],0; TRaveReader.?f38:byte
 005AD73C    mov        eax,dword ptr [ebx+3C]; TRaveReader.?f3C:String
 005AD73F    mov        edx,5AD818; 'Left'
 005AD744    call       @LStrCmp
>005AD749    je         005AD767
 005AD74B    mov        eax,dword ptr [ebx+3C]; TRaveReader.?f3C:String
 005AD74E    mov        edx,5AD828; 'Top'
 005AD753    call       @LStrCmp
>005AD758    je         005AD767
 005AD75A    test       esi,esi
>005AD75C    je         005AD767
 005AD75E    mov        edx,ebx
 005AD760    mov        eax,esi
 005AD762    mov        ecx,dword ptr [eax]
 005AD764    call       dword ptr [ecx+4]
 005AD767    cmp        byte ptr [ebx+38],0; TRaveReader.?f38:byte
<005AD76B    jne        005AD718
 005AD76D    mov        dword ptr [ebx+2C],edi; TRaveReader.?f2C:dword
 005AD770    lea        eax,[ebp-18]
 005AD773    push       eax
 005AD774    lea        ecx,[ebp-10]
 005AD777    mov        edx,dword ptr [ebx+3C]; TRaveReader.?f3C:String
 005AD77A    mov        eax,ebx
 005AD77C    call       005AC2AC
 005AD781    test       al,al
>005AD783    je         005AD796
 005AD785    cmp        word ptr [ebp-0E],0
>005AD78A    je         005AD796
 005AD78C    mov        edx,ebx
 005AD78E    mov        eax,dword ptr [ebp-0C]
 005AD791    call       dword ptr [ebp-10]
<005AD794    jmp        005AD718
 005AD796    test       esi,esi
>005AD798    jne        005AD7A1
 005AD79A    xor        eax,eax
 005AD79C    mov        dword ptr [ebp-4],eax
>005AD79F    jmp        005AD7B3
 005AD7A1    mov        eax,dword ptr [esi]
 005AD7A3    call       TObject.ClassType
 005AD7A8    mov        edx,dword ptr [ebx+3C]; TRaveReader.?f3C:String
 005AD7AB    call       GetPropInfo
 005AD7B0    mov        dword ptr [ebp-4],eax
 005AD7B3    cmp        dword ptr [ebp-4],0
>005AD7B7    jne        005AD7BC
 005AD7B9    inc        dword ptr [ebx+44]; TRaveReader.?f44:dword
 005AD7BC    mov        ecx,dword ptr [ebp-4]
 005AD7BF    mov        edx,esi
 005AD7C1    mov        eax,ebx
 005AD7C3    call       005AD82C
 005AD7C8    cmp        dword ptr [ebp-4],0
<005AD7CC    jne        005AD718
 005AD7D2    dec        dword ptr [ebx+44]; TRaveReader.?f44:dword
<005AD7D5    jmp        005AD718
 005AD7DA    test       edi,edi
>005AD7DC    je         005AD7EC
 005AD7DE    mov        eax,edi
 005AD7E0    call       005A5904
 005AD7E5    mov        eax,edi
 005AD7E7    call       TObject.Free
 005AD7EC    xor        eax,eax
 005AD7EE    pop        edx
 005AD7EF    pop        ecx
 005AD7F0    pop        ecx
 005AD7F1    mov        dword ptr fs:[eax],edx
 005AD7F4    push       5AD809
 005AD7F9    lea        eax,[ebp-20]
 005AD7FC    call       @LStrClr
 005AD801    ret
<005AD802    jmp        @HandleFinally
<005AD807    jmp        005AD7F9
 005AD809    pop        edi
 005AD80A    pop        esi
 005AD80B    pop        ebx
 005AD80C    mov        esp,ebp
 005AD80E    pop        ebp
 005AD80F    ret
*}
//end;

//005AD82C
//procedure sub_005AD82C(?:TRaveReader; ?:void; ?:PPropInfo);
//begin
{*
 005AD82C    push       ebp
 005AD82D    mov        ebp,esp
 005AD82F    add        esp,0FFFFFFE8
 005AD832    push       ebx
 005AD833    push       esi
 005AD834    push       edi
 005AD835    xor        ebx,ebx
 005AD837    mov        dword ptr [ebp-14],ebx
 005AD83A    mov        esi,ecx
 005AD83C    mov        dword ptr [ebp-4],edx
 005AD83F    mov        ebx,eax
 005AD841    xor        eax,eax
 005AD843    push       ebp
 005AD844    push       5ADDFB
 005AD849    push       dword ptr fs:[eax]
 005AD84C    mov        dword ptr fs:[eax],esp
 005AD84F    mov        eax,dword ptr [ebx+28]; TRaveReader.?f28:dword
 005AD852    call       005A6198
 005AD857    mov        edx,eax
 005AD859    test       esi,esi
>005AD85B    je         005AD865
 005AD85D    mov        eax,dword ptr [esi]
 005AD85F    mov        eax,dword ptr [eax]
 005AD861    mov        al,byte ptr [eax]
>005AD863    jmp        005AD86F
 005AD865    xor        eax,eax
 005AD867    mov        al,dl
 005AD869    mov        al,byte ptr [eax+617204]
 005AD86F    and        eax,7F
 005AD872    cmp        eax,0A
>005AD875    ja         005ADDE5
 005AD87B    jmp        dword ptr [eax*4+5AD882]
 005AD87B    dd         5ADDE5
 005AD87B    dd         5AD8AE
 005AD87B    dd         5AD914
 005AD87B    dd         5AD94B
 005AD87B    dd         5AD98B
 005AD87B    dd         5AD9C9
 005AD87B    dd         5AD9FE
 005AD87B    dd         5ADA6F
 005AD87B    dd         5ADDE5
 005AD87B    dd         5ADDE5
 005AD87B    dd         5ADDBD
 005AD8AE    sub        dl,1
>005AD8B1    jb         005AD8BF
>005AD8B3    je         005AD8C3
 005AD8B5    dec        dl
>005AD8B7    je         005AD8CF
 005AD8B9    dec        dl
>005AD8BB    je         005AD8DD
>005AD8BD    jmp        005AD8E8
 005AD8BF    xor        edi,edi
>005AD8C1    jmp        005AD8EA
 005AD8C3    mov        eax,dword ptr [ebx+28]; TRaveReader.?f28:dword
 005AD8C6    call       005A61E0
 005AD8CB    mov        edi,eax
>005AD8CD    jmp        005AD8EA
 005AD8CF    mov        eax,dword ptr [ebx+28]; TRaveReader.?f28:dword
 005AD8D2    call       005A61E0
 005AD8D7    mov        edi,eax
 005AD8D9    neg        edi
>005AD8DB    jmp        005AD8EA
 005AD8DD    mov        eax,ebx
 005AD8DF    call       005ADE0C
 005AD8E4    mov        edi,eax
>005AD8E6    jmp        005AD8EA
 005AD8E8    xor        edi,edi
 005AD8EA    mov        eax,ebx
 005AD8EC    call       005AD0B8
 005AD8F1    test       al,al
>005AD8F3    jne        005ADDE5
 005AD8F9    cmp        dword ptr [esi+8],0
>005AD8FD    je         005ADDE5
 005AD903    mov        ecx,edi
 005AD905    mov        edx,esi
 005AD907    mov        eax,dword ptr [ebp-4]
 005AD90A    call       SetOrdProp
>005AD90F    jmp        005ADDE5
 005AD914    mov        eax,ebx
 005AD916    call       005ADE24
 005AD91B    mov        byte ptr [ebp-5],al
 005AD91E    mov        eax,ebx
 005AD920    call       005AD0B8
 005AD925    test       al,al
>005AD927    jne        005ADDE5
 005AD92D    cmp        dword ptr [esi+8],0
>005AD931    je         005ADDE5
 005AD937    xor        ecx,ecx
 005AD939    mov        cl,byte ptr [ebp-5]
 005AD93C    mov        edx,esi
 005AD93E    mov        eax,dword ptr [ebp-4]
 005AD941    call       SetOrdProp
>005AD946    jmp        005ADDE5
 005AD94B    lea        edx,[ebp-14]
 005AD94E    mov        eax,ebx
 005AD950    call       005ADE58
 005AD955    mov        eax,ebx
 005AD957    call       005AD0B8
 005AD95C    test       al,al
>005AD95E    jne        005ADDE5
 005AD964    cmp        dword ptr [esi+8],0
>005AD968    je         005ADDE5
 005AD96E    mov        eax,dword ptr [esi]
 005AD970    mov        eax,dword ptr [eax]
 005AD972    mov        edx,dword ptr [ebp-14]
 005AD975    call       GetEnumValue
 005AD97A    mov        ecx,eax
 005AD97C    mov        edx,esi
 005AD97E    mov        eax,dword ptr [ebp-4]
 005AD981    call       SetOrdProp
>005AD986    jmp        005ADDE5
 005AD98B    mov        eax,ebx
 005AD98D    call       005ADE3C
 005AD992    fstp       tbyte ptr [ebp-10]
 005AD995    wait
 005AD996    mov        eax,ebx
 005AD998    call       005AD0B8
 005AD99D    test       al,al
>005AD99F    jne        005ADDE5
 005AD9A5    cmp        dword ptr [esi+8],0
>005AD9A9    je         005ADDE5
 005AD9AF    mov        ax,word ptr [ebp-8]
 005AD9B3    push       eax
 005AD9B4    push       dword ptr [ebp-0C]
 005AD9B7    push       dword ptr [ebp-10]
 005AD9BA    mov        edx,esi
 005AD9BC    mov        eax,dword ptr [ebp-4]
 005AD9BF    call       SetFloatProp
>005AD9C4    jmp        005ADDE5
 005AD9C9    lea        edx,[ebp-14]
 005AD9CC    mov        eax,ebx
 005AD9CE    call       005ADE58
 005AD9D3    mov        eax,ebx
 005AD9D5    call       005AD0B8
 005AD9DA    test       al,al
>005AD9DC    jne        005ADDE5
 005AD9E2    cmp        dword ptr [esi+8],0
>005AD9E6    je         005ADDE5
 005AD9EC    mov        ecx,dword ptr [ebp-14]
 005AD9EF    mov        edx,esi
 005AD9F1    mov        eax,dword ptr [ebp-4]
 005AD9F4    call       SetStrProp
>005AD9F9    jmp        005ADDE5
 005AD9FE    xor        edi,edi
 005ADA00    lea        edx,[ebp-14]
 005ADA03    mov        eax,ebx
 005ADA05    call       005ADE58
>005ADA0A    jmp        005ADA3F
 005ADA0C    mov        eax,ebx
 005ADA0E    call       005AD0B8
 005ADA13    test       al,al
>005ADA15    jne        005ADA35
 005ADA17    mov        eax,dword ptr [esi]
 005ADA19    mov        eax,dword ptr [eax]
 005ADA1B    call       GetTypeData
 005ADA20    mov        eax,dword ptr [eax+1]
 005ADA23    mov        eax,dword ptr [eax]
 005ADA25    mov        edx,dword ptr [ebp-14]
 005ADA28    call       GetEnumValue
 005ADA2D    cmp        eax,1F
>005ADA30    ja         005ADA35
 005ADA32    bts        edi,eax
 005ADA35    lea        edx,[ebp-14]
 005ADA38    mov        eax,ebx
 005ADA3A    call       005ADE58
 005ADA3F    cmp        dword ptr [ebp-14],0
<005ADA43    jne        005ADA0C
 005ADA45    mov        eax,ebx
 005ADA47    call       005AD0B8
 005ADA4C    test       al,al
>005ADA4E    jne        005ADDE5
 005ADA54    cmp        dword ptr [esi+8],0
>005ADA58    je         005ADDE5
 005ADA5E    mov        ecx,edi
 005ADA60    mov        edx,esi
 005ADA62    mov        eax,dword ptr [ebp-4]
 005ADA65    call       SetOrdProp
>005ADA6A    jmp        005ADDE5
 005ADA6F    xor        eax,eax
 005ADA71    mov        al,dl
 005ADA73    cmp        eax,0A
>005ADA76    ja         005ADDE5
 005ADA7C    jmp        dword ptr [eax*4+5ADA83]
 005ADA7C    dd         5ADAE3
 005ADA7C    dd         5ADAAF
 005ADA7C    dd         5ADDE5
 005ADA7C    dd         5ADDE5
 005ADA7C    dd         5ADDE5
 005ADA7C    dd         5ADDE5
 005ADA7C    dd         5ADDE5
 005ADA7C    dd         5ADDE5
 005ADA7C    dd         5ADBD6
 005ADA7C    dd         5ADC3A
 005ADA7C    dd         5ADD63
 005ADAAF    mov        eax,dword ptr [ebx+28]; TRaveReader.?f28:dword
 005ADAB2    call       005A61E0
 005ADAB7    mov        edi,eax
 005ADAB9    mov        eax,ebx
 005ADABB    call       005AD0B8
 005ADAC0    test       al,al
>005ADAC2    jne        005ADDE5
 005ADAC8    cmp        dword ptr [esi+8],0
>005ADACC    je         005ADDE5
 005ADAD2    mov        ecx,edi
 005ADAD4    mov        edx,esi
 005ADAD6    mov        eax,dword ptr [ebp-4]
 005ADAD9    call       SetOrdProp
>005ADADE    jmp        005ADDE5
 005ADAE3    lea        edx,[ebp-14]
 005ADAE6    mov        eax,ebx
 005ADAE8    call       005ADE58
 005ADAED    mov        eax,ebx
 005ADAEF    call       005AD0B8
 005ADAF4    test       al,al
>005ADAF6    jne        005ADDE5
 005ADAFC    cmp        dword ptr [esi+8],0
>005ADB00    je         005ADDE5
 005ADB06    cmp        byte ptr [ebx+41],0; TRaveReader.?f41:byte
>005ADB0A    je         005ADB10
 005ADB0C    xor        edi,edi
>005ADB0E    jmp        005ADB86
 005ADB10    cmp        dword ptr [ebx+50],0; TRaveReader.?f50:dword
>005ADB14    je         005ADB48
 005ADB16    cmp        dword ptr [ebp-14],0
>005ADB1A    je         005ADB48
 005ADB1C    mov        eax,dword ptr [ebp-14]
 005ADB1F    cmp        byte ptr [eax],2A
>005ADB22    jne        005ADB48
 005ADB24    lea        eax,[ebp-14]
 005ADB27    mov        ecx,1
 005ADB2C    mov        edx,1
 005ADB31    call       @LStrDelete
 005ADB36    mov        ecx,dword ptr [ebx+30]; TRaveReader.?f30:TRaveComponent
 005ADB39    mov        eax,dword ptr [ebx+50]; TRaveReader.?f50:dword
 005ADB3C    mov        edx,dword ptr [ebp-14]
 005ADB3F    call       005A4790
 005ADB44    mov        edi,eax
>005ADB46    jmp        005ADB86
 005ADB48    cmp        dword ptr [ebp-14],0
>005ADB4C    jne        005ADB52
 005ADB4E    xor        edi,edi
>005ADB50    jmp        005ADB86
 005ADB52    mov        eax,dword ptr [ebp-14]
 005ADB55    cmp        byte ptr [eax],2A
>005ADB58    jne        005ADB6C
 005ADB5A    lea        eax,[ebp-14]
 005ADB5D    mov        ecx,1
 005ADB62    mov        edx,1
 005ADB67    call       @LStrDelete
 005ADB6C    mov        edx,dword ptr [ebx+30]; TRaveReader.?f30:TRaveComponent
 005ADB6F    mov        eax,dword ptr [edx+48]; TRaveComponent.?f48:TRaveComponent
 005ADB72    test       eax,eax
>005ADB74    jne        005ADB7A
 005ADB76    xor        edi,edi
>005ADB78    jmp        005ADB86
 005ADB7A    mov        ecx,edx
 005ADB7C    mov        edx,dword ptr [ebp-14]
 005ADB7F    call       005A4790
 005ADB84    mov        edi,eax
 005ADB86    test       edi,edi
>005ADB88    jne        005ADBC5
 005ADB8A    mov        eax,dword ptr [ebx+30]; TRaveReader.?f30:TRaveComponent
 005ADB8D    mov        edx,dword ptr [eax+48]; TRaveComponent.?f48:TRaveComponent
 005ADB90    test       edx,edx
>005ADB92    jne        005ADBAD
 005ADB94    mov        edx,dword ptr [ebp-4]
 005ADB97    push       edx
 005ADB98    push       esi
 005ADB99    push       0
 005ADB9B    mov        ecx,eax
 005ADB9D    mov        edx,dword ptr [ebp-14]
 005ADBA0    mov        eax,dword ptr [ebp-4]
 005ADBA3    call       005A1770
>005ADBA8    jmp        005ADDE5
 005ADBAD    mov        ecx,dword ptr [ebp-4]
 005ADBB0    push       ecx
 005ADBB1    push       esi
 005ADBB2    push       0
 005ADBB4    mov        ecx,eax
 005ADBB6    mov        eax,edx
 005ADBB8    mov        edx,dword ptr [ebp-14]
 005ADBBB    call       005A1770
>005ADBC0    jmp        005ADDE5
 005ADBC5    mov        ecx,edi
 005ADBC7    mov        edx,esi
 005ADBC9    mov        eax,dword ptr [ebp-4]
 005ADBCC    call       SetOrdProp
>005ADBD1    jmp        005ADDE5
 005ADBD6    test       esi,esi
>005ADBD8    jne        005ADBDF
 005ADBDA    mov        edi,dword ptr [ebp-4]
>005ADBDD    jmp        005ADC2C
 005ADBDF    mov        edx,esi
 005ADBE1    mov        eax,dword ptr [ebp-4]
 005ADBE4    call       GetOrdProp
 005ADBE9    mov        edi,eax
 005ADBEB    test       edi,edi
>005ADBED    jne        005ADC2C
 005ADBEF    mov        eax,dword ptr [esi]
 005ADBF1    mov        eax,dword ptr [eax]
 005ADBF3    call       GetTypeData
 005ADBF8    mov        eax,dword ptr [eax]
 005ADBFA    call       dword ptr [eax-0C]
 005ADBFD    mov        edi,eax
 005ADBFF    or         edx,0FFFFFFFF
 005ADC02    mov        eax,edi
 005ADC04    call       TObject.Create
 005ADC09    mov        ecx,edi
 005ADC0B    mov        edx,esi
 005ADC0D    mov        eax,dword ptr [ebp-4]
 005ADC10    call       SetOrdProp
 005ADC15    mov        eax,edi
 005ADC17    mov        edx,dword ptr ds:[5A7A20]; TRaveEvent
 005ADC1D    call       @IsClass
 005ADC22    test       al,al
>005ADC24    je         005ADC2C
 005ADC26    mov        eax,dword ptr [ebx+4C]; TRaveReader.?f4C:void
 005ADC29    mov        dword ptr [edi+18],eax
 005ADC2C    mov        edx,edi
 005ADC2E    mov        eax,ebx
 005ADC30    call       005AD6D0
>005ADC35    jmp        005ADDE5
 005ADC3A    mov        dl,1
 005ADC3C    mov        eax,[005A677C]; TRaveComponentList
 005ADC41    call       TObject.Create; TRaveComponentList.Create
 005ADC46    mov        dword ptr [ebp-18],eax
 005ADC49    xor        edx,edx
 005ADC4B    push       ebp
 005ADC4C    push       5ADD5C
 005ADC51    push       dword ptr fs:[edx]
 005ADC54    mov        dword ptr fs:[edx],esp
 005ADC57    mov        eax,dword ptr [ebp-18]
 005ADC5A    mov        edx,dword ptr [eax]
 005ADC5C    call       dword ptr [edx+8]; TList.Clear
 005ADC5F    lea        edx,[ebp-14]
 005ADC62    mov        eax,ebx
 005ADC64    call       005ADE58
>005ADC69    jmp        005ADD1E
 005ADC6E    cmp        byte ptr [ebx+41],0; TRaveReader.?f41:byte
>005ADC72    je         005ADC78
 005ADC74    xor        edi,edi
>005ADC76    jmp        005ADCDC
 005ADC78    cmp        dword ptr [ebx+50],0; TRaveReader.?f50:dword
>005ADC7C    je         005ADCB0
 005ADC7E    cmp        dword ptr [ebp-14],0
>005ADC82    je         005ADCB0
 005ADC84    mov        eax,dword ptr [ebp-14]
 005ADC87    cmp        byte ptr [eax],2A
>005ADC8A    jne        005ADCB0
 005ADC8C    lea        eax,[ebp-14]
 005ADC8F    mov        ecx,1
 005ADC94    mov        edx,1
 005ADC99    call       @LStrDelete
 005ADC9E    mov        ecx,dword ptr [ebx+30]; TRaveReader.?f30:TRaveComponent
 005ADCA1    mov        eax,dword ptr [ebx+50]; TRaveReader.?f50:dword
 005ADCA4    mov        edx,dword ptr [ebp-14]
 005ADCA7    call       005A4790
 005ADCAC    mov        edi,eax
>005ADCAE    jmp        005ADCDC
 005ADCB0    mov        eax,dword ptr [ebp-14]
 005ADCB3    cmp        byte ptr [eax],2A
>005ADCB6    jne        005ADCCA
 005ADCB8    lea        eax,[ebp-14]
 005ADCBB    mov        ecx,1
 005ADCC0    mov        edx,1
 005ADCC5    call       @LStrDelete
 005ADCCA    mov        eax,dword ptr [ebx+30]; TRaveReader.?f30:TRaveComponent
 005ADCCD    mov        ecx,eax
 005ADCCF    mov        eax,dword ptr [eax+48]; TRaveComponent.?f48:TRaveComponent
 005ADCD2    mov        edx,dword ptr [ebp-14]
 005ADCD5    call       005A4790
 005ADCDA    mov        edi,eax
 005ADCDC    test       edi,edi
>005ADCDE    jne        005ADD0A
 005ADCE0    xor        edx,edx
 005ADCE2    mov        eax,dword ptr [ebp-18]
 005ADCE5    call       TList.Add
 005ADCEA    mov        edx,dword ptr [ebp-18]
 005ADCED    push       edx
 005ADCEE    push       0
 005ADCF0    mov        edx,dword ptr [ebp-18]
 005ADCF3    mov        edx,dword ptr [edx+8]; TRaveComponentList.FCount:Integer
 005ADCF6    dec        edx
 005ADCF7    push       edx
 005ADCF8    mov        eax,dword ptr [ebx+30]; TRaveReader.?f30:TRaveComponent
 005ADCFB    mov        ecx,eax
 005ADCFD    mov        eax,dword ptr [eax+48]; TRaveComponent.?f48:TRaveComponent
 005ADD00    mov        edx,dword ptr [ebp-14]
 005ADD03    call       005A1770
>005ADD08    jmp        005ADD14
 005ADD0A    mov        edx,edi
 005ADD0C    mov        eax,dword ptr [ebp-18]
 005ADD0F    call       TList.Add
 005ADD14    lea        edx,[ebp-14]
 005ADD17    mov        eax,ebx
 005ADD19    call       005ADE58
 005ADD1E    cmp        dword ptr [ebp-14],0
<005ADD22    jne        005ADC6E
 005ADD28    mov        eax,ebx
 005ADD2A    call       005AD0B8
 005ADD2F    test       al,al
>005ADD31    jne        005ADD46
 005ADD33    cmp        dword ptr [esi+8],0
>005ADD37    je         005ADD46
 005ADD39    mov        ecx,dword ptr [ebp-18]
 005ADD3C    mov        edx,esi
 005ADD3E    mov        eax,dword ptr [ebp-4]
 005ADD41    call       SetOrdProp
 005ADD46    xor        eax,eax
 005ADD48    pop        edx
 005ADD49    pop        ecx
 005ADD4A    pop        ecx
 005ADD4B    mov        dword ptr fs:[eax],edx
 005ADD4E    push       5ADDE5
 005ADD53    mov        eax,dword ptr [ebp-18]
 005ADD56    call       TObject.Free
 005ADD5B    ret
<005ADD5C    jmp        @HandleFinally
<005ADD61    jmp        005ADD53
 005ADD63    mov        edx,esi
 005ADD65    mov        eax,dword ptr [ebp-4]
 005ADD68    call       GetOrdProp
 005ADD6D    mov        esi,eax
 005ADD6F    mov        eax,esi
 005ADD71    mov        edx,dword ptr [eax]
 005ADD73    call       dword ptr [edx+8]
 005ADD76    lea        edx,[ebp-14]
 005ADD79    mov        eax,ebx
 005ADD7B    call       005ADE58
>005ADD80    jmp        005ADDB5
 005ADD82    mov        eax,dword ptr [ebx+28]; TRaveReader.?f28:dword
 005ADD85    call       005A6198
 005ADD8A    mov        ecx,dword ptr [ebx+30]; TRaveReader.?f30:TRaveComponent
 005ADD8D    mov        edx,dword ptr [ebp-14]
 005ADD90    mov        eax,esi
 005ADD92    mov        edi,dword ptr [eax]
 005ADD94    call       dword ptr [edi+10]
 005ADD97    mov        edi,eax
 005ADD99    mov        edx,edi
 005ADD9B    mov        eax,ebx
 005ADD9D    call       005AD6D0
 005ADDA2    mov        edx,edi
 005ADDA4    mov        eax,esi
 005ADDA6    call       TList.Add
 005ADDAB    lea        edx,[ebp-14]
 005ADDAE    mov        eax,ebx
 005ADDB0    call       005ADE58
 005ADDB5    cmp        dword ptr [ebp-14],0
<005ADDB9    jne        005ADD82
>005ADDBB    jmp        005ADDE5
 005ADDBD    lea        edx,[ebp-14]
 005ADDC0    mov        eax,ebx
 005ADDC2    call       005ADE58
 005ADDC7    mov        eax,ebx
 005ADDC9    call       005AD0B8
 005ADDCE    test       al,al
>005ADDD0    jne        005ADDE5
 005ADDD2    cmp        dword ptr [esi+8],0
>005ADDD6    je         005ADDE5
 005ADDD8    mov        ecx,dword ptr [ebp-14]
 005ADDDB    mov        edx,esi
 005ADDDD    mov        eax,dword ptr [ebp-4]
 005ADDE0    call       SetStrProp
 005ADDE5    xor        eax,eax
 005ADDE7    pop        edx
 005ADDE8    pop        ecx
 005ADDE9    pop        ecx
 005ADDEA    mov        dword ptr fs:[eax],edx
 005ADDED    push       5ADE02
 005ADDF2    lea        eax,[ebp-14]
 005ADDF5    call       @LStrClr
 005ADDFA    ret
<005ADDFB    jmp        @HandleFinally
<005ADE00    jmp        005ADDF2
 005ADE02    pop        edi
 005ADE03    pop        esi
 005ADE04    pop        ebx
 005ADE05    mov        esp,ebp
 005ADE07    pop        ebp
 005ADE08    ret
*}
//end;

//005ADE0C
//function sub_005ADE0C(?:TRaveReader):?;
//begin
{*
 005ADE0C    push       ecx
 005ADE0D    mov        edx,esp
 005ADE0F    mov        ecx,4
 005ADE14    mov        eax,dword ptr [eax+28]; TRaveReader.?f28:dword
 005ADE17    call       005A62A0
 005ADE1C    mov        eax,dword ptr [esp]
 005ADE1F    pop        edx
 005ADE20    ret
*}
//end;

//005ADE24
//function sub_005ADE24(?:TRaveReader):?;
//begin
{*
 005ADE24    push       ecx
 005ADE25    mov        edx,esp
 005ADE27    mov        ecx,1
 005ADE2C    mov        eax,dword ptr [eax+28]; TRaveReader.?f28:dword
 005ADE2F    call       005A62A0
 005ADE34    mov        al,byte ptr [esp]
 005ADE37    pop        edx
 005ADE38    ret
*}
//end;

//005ADE3C
//function sub_005ADE3C(?:TRaveReader):?;
//begin
{*
 005ADE3C    add        esp,0FFFFFFF4
 005ADE3F    mov        edx,esp
 005ADE41    mov        ecx,0A
 005ADE46    mov        eax,dword ptr [eax+28]; TRaveReader.?f28:dword
 005ADE49    call       005A62A0
 005ADE4E    fld        tbyte ptr [esp]
 005ADE51    add        esp,0C
 005ADE54    ret
*}
//end;

//005ADE58
//procedure sub_005ADE58(?:TRaveReader; ?:AnsiString);
//begin
{*
 005ADE58    push       ebx
 005ADE59    push       esi
 005ADE5A    mov        esi,edx
 005ADE5C    mov        ebx,eax
 005ADE5E    mov        edx,esi
 005ADE60    mov        eax,dword ptr [ebx+28]; TRaveReader.?f28:dword
 005ADE63    call       005A61AC
 005ADE68    pop        esi
 005ADE69    pop        ebx
 005ADE6A    ret
*}
//end;

//005ADE6C
procedure sub_005ADE6C;
begin
{*
 005ADE6C    mov        edx,dword ptr [eax+10]; TRaveSimpleEvent.ModuleOwner:TRaveProjectItem
 005ADE6F    test       edx,edx
>005ADE71    je         005ADE85
 005ADE73    cmp        dword ptr [edx+74],0; TRaveProjectItem.?f74:dword
>005ADE77    je         005ADE85
 005ADE79    mov        edx,dword ptr [edx+74]; TRaveProjectItem.?f74:dword
 005ADE7C    mov        eax,dword ptr [eax+0C]; TRaveSimpleEvent.Position:Integer
 005ADE7F    xchg       eax,edx
 005ADE80    mov        ecx,dword ptr [eax]
 005ADE82    call       dword ptr [ecx+10]
 005ADE85    ret
*}
end;

//005ADE88
procedure TRaveEvent.AssignTo(Dest:TPersistent);
begin
{*
 005ADE88    push       ebx
 005ADE89    push       esi
 005ADE8A    mov        esi,edx
 005ADE8C    mov        ebx,eax
 005ADE8E    mov        eax,esi
 005ADE90    mov        edx,dword ptr ds:[5A7A20]; TRaveEvent
 005ADE96    call       @IsClass
 005ADE9B    test       al,al
>005ADE9D    je         005ADECD
 005ADE9F    mov        eax,esi
 005ADEA1    mov        edx,dword ptr ds:[5A7A20]; TRaveEvent
 005ADEA7    call       @AsClass
 005ADEAC    mov        esi,eax
 005ADEAE    lea        eax,[esi+4]; TRaveEvent.?f4:String
 005ADEB1    mov        edx,dword ptr [ebx+4]; TRaveEvent.?f4:String
 005ADEB4    call       @LStrAsg
 005ADEB9    lea        eax,[esi+8]; TRaveEvent.?f8:String
 005ADEBC    mov        edx,dword ptr [ebx+8]; TRaveEvent.?f8:String
 005ADEBF    call       @LStrAsg
 005ADEC4    mov        eax,dword ptr [ebx+0C]; TRaveEvent.Position:Integer
 005ADEC7    mov        dword ptr [esi+0C],eax; TRaveEvent.Position:Integer
 005ADECA    pop        esi
 005ADECB    pop        ebx
 005ADECC    ret
 005ADECD    mov        edx,esi
 005ADECF    mov        eax,ebx
 005ADED1    call       TPersistent.AssignTo
 005ADED6    pop        esi
 005ADED7    pop        ebx
 005ADED8    ret
*}
end;

//005ADEDC
procedure sub_005ADEDC;
begin
{*
 005ADEDC    push       ebp
 005ADEDD    mov        ebp,esp
 005ADEDF    push       0
 005ADEE1    push       ebx
 005ADEE2    push       esi
 005ADEE3    mov        ebx,eax
 005ADEE5    xor        eax,eax
 005ADEE7    push       ebp
 005ADEE8    push       5ADF52
 005ADEED    push       dword ptr fs:[eax]
 005ADEF0    mov        dword ptr fs:[eax],esp
 005ADEF3    mov        eax,dword ptr [ebx+10]; TRaveStringEvent.ModuleOwner:TRaveProjectItem
 005ADEF6    test       eax,eax
>005ADEF8    je         005ADF3C
 005ADEFA    cmp        dword ptr [eax+74],0; TRaveProjectItem.?f74:dword
>005ADEFE    je         005ADF3C
 005ADF00    mov        eax,dword ptr [eax+74]; TRaveProjectItem.?f74:dword
 005ADF03    mov        ecx,dword ptr [ebx+1C]; TRaveStringEvent.?f1C:String
 005ADF06    mov        edx,5ADF68; 'ParamString'
 005ADF0B    mov        esi,dword ptr [eax]
 005ADF0D    call       dword ptr [esi+14]
 005ADF10    mov        eax,dword ptr [ebx+10]; TRaveStringEvent.ModuleOwner:TRaveProjectItem
 005ADF13    mov        eax,dword ptr [eax+74]; TRaveProjectItem.?f74:dword
 005ADF16    mov        edx,dword ptr [ebx+0C]; TRaveStringEvent.Position:Integer
 005ADF19    mov        ecx,dword ptr [eax]
 005ADF1B    call       dword ptr [ecx+10]
 005ADF1E    lea        ecx,[ebp-4]
 005ADF21    mov        eax,dword ptr [ebx+10]; TRaveStringEvent.ModuleOwner:TRaveProjectItem
 005ADF24    mov        eax,dword ptr [eax+74]; TRaveProjectItem.?f74:dword
 005ADF27    mov        edx,5ADF68; 'ParamString'
 005ADF2C    mov        esi,dword ptr [eax]
 005ADF2E    call       dword ptr [esi+18]
 005ADF31    mov        edx,dword ptr [ebp-4]
 005ADF34    lea        eax,[ebx+1C]; TRaveStringEvent.?f1C:String
 005ADF37    call       @LStrAsg
 005ADF3C    xor        eax,eax
 005ADF3E    pop        edx
 005ADF3F    pop        ecx
 005ADF40    pop        ecx
 005ADF41    mov        dword ptr fs:[eax],edx
 005ADF44    push       5ADF59
 005ADF49    lea        eax,[ebp-4]
 005ADF4C    call       @LStrClr
 005ADF51    ret
<005ADF52    jmp        @HandleFinally
<005ADF57    jmp        005ADF49
 005ADF59    pop        esi
 005ADF5A    pop        ebx
 005ADF5B    pop        ecx
 005ADF5C    pop        ebp
 005ADF5D    ret
*}
end;

//005ADF74
procedure sub_005ADF74;
begin
{*
 005ADF74    push       ebx
 005ADF75    mov        ebx,eax
 005ADF77    mov        eax,dword ptr [ebx+10]; TRaveFloatEvent.ModuleOwner:TRaveProjectItem
 005ADF7A    test       eax,eax
>005ADF7C    je         005ADFBE
 005ADF7E    cmp        dword ptr [eax+74],0; TRaveProjectItem.?f74:dword
>005ADF82    je         005ADFBE
 005ADF84    mov        dx,word ptr [ebx+28]; TRaveFloatEvent.?f28:word
 005ADF88    push       edx
 005ADF89    push       dword ptr [ebx+24]; TRaveFloatEvent.?f24:dword
 005ADF8C    push       dword ptr [ebx+20]; TRaveFloatEvent.ParamValue:Extended
 005ADF8F    mov        eax,dword ptr [eax+74]; TRaveProjectItem.?f74:dword
 005ADF92    mov        edx,5ADFC8; 'ParamFloat'
 005ADF97    mov        ecx,dword ptr [eax]
 005ADF99    call       dword ptr [ecx+24]
 005ADF9C    mov        eax,dword ptr [ebx+10]; TRaveFloatEvent.ModuleOwner:TRaveProjectItem
 005ADF9F    mov        eax,dword ptr [eax+74]; TRaveProjectItem.?f74:dword
 005ADFA2    mov        edx,dword ptr [ebx+0C]; TRaveFloatEvent.Position:Integer
 005ADFA5    mov        ecx,dword ptr [eax]
 005ADFA7    call       dword ptr [ecx+10]
 005ADFAA    mov        eax,dword ptr [ebx+10]; TRaveFloatEvent.ModuleOwner:TRaveProjectItem
 005ADFAD    mov        eax,dword ptr [eax+74]; TRaveProjectItem.?f74:dword
 005ADFB0    mov        edx,5ADFC8; 'ParamFloat'
 005ADFB5    mov        ecx,dword ptr [eax]
 005ADFB7    call       dword ptr [ecx+28]
 005ADFBA    fstp       tbyte ptr [ebx+20]; TRaveFloatEvent.ParamValue:Extended
 005ADFBD    wait
 005ADFBE    pop        ebx
 005ADFBF    ret
*}
end;

Initialization
//005AE010
{*
 005AE010    sub        dword ptr ds:[61F888],1
>005AE017    jae        005AE028
 005AE019    mov        edx,5A7D9C
 005AE01E    mov        eax,5AE034; 'RVCL'
 005AE023    call       005A7E10
 005AE028    ret
*}
Finalization
//005ADFD4
{*
 005ADFD4    push       ebp
 005ADFD5    mov        ebp,esp
 005ADFD7    xor        eax,eax
 005ADFD9    push       ebp
 005ADFDA    push       5AE005
 005ADFDF    push       dword ptr fs:[eax]
 005ADFE2    mov        dword ptr fs:[eax],esp
 005ADFE5    inc        dword ptr ds:[61F888]
>005ADFEB    jne        005ADFF7
 005ADFED    mov        eax,6171E8; gvar_006171E8:TStringList
 005ADFF2    call       FreeAndNil
 005ADFF7    xor        eax,eax
 005ADFF9    pop        edx
 005ADFFA    pop        ecx
 005ADFFB    pop        ecx
 005ADFFC    mov        dword ptr fs:[eax],edx
 005ADFFF    push       5AE00C
 005AE004    ret
<005AE005    jmp        @HandleFinally
<005AE00A    jmp        005AE004
 005AE00C    pop        ebp
 005AE00D    ret
*}
end.