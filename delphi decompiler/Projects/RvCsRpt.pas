{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvCsRpt;

interface

uses
  Classes, Windows, Graphics, RvClass, _Unit101, RvDefine, RvData;

type
  TBandPositionMode = (pmOffset, pmOverlay, pmAbsolute);
  TBandPrintLoc = (plBodyHeader, plGroupHeader, plRowHeader, plMaster, plDetail, plRowFooter, plGroupFooter, plBodyFooter);
  TBandPrintLocSet = set of TBandPrintLoc;
  TBandPrintOcc = (poFirst, poNewPage, poNewColumn);
  TBandPrintOccSet = set of TBandPrintOcc;
  TRaveBandStyle = class(TPersistent)
  public
    PrintLoc:TBandPrintLocSet;//f4
    PrintOcc:TBandPrintOccSet;//f5
    procedure AssignTo(Dest:TPersistent); virtual;
    //constructor Create(?:TRaveBandStyle; _Dv__:Boolean);
  end;
  TRaveRegion = class(TRaveContainerControl)
  public
    fF0:dword;//fF0
    fF4:dword;//fF4
    fF8:dword;//fF8
    fFC:dword;//fFC
    f108:dword;//f108
    f10C:dword;//f10C
    f110:dword;//f110
    f114:TRaveStackList;//f114
    f118:dword;//f118
    f11D:byte;//f11D
    f11E:byte;//f11E
    f11F:byte;//f11F
    f120:byte;//f120
    f121:byte;//f121
    f124:dword;//f124
    Columns:Integer;//f128
    ColumnSpacing:TRaveUnits;//f130
    f134:dword;//f134
    destructor Destroy; virtual;
    procedure SetName(NewName:TComponentName); virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005B4DA4(?:?); virtual;
    //function sub_005B4DB4:?; virtual;
    procedure sub_005B4DD4; virtual;
    procedure sub_005B4F98(); virtual;
    procedure sub_005B4F9C(); virtual;
    //procedure sub_005B6070(?:?); virtual;
    //procedure sub_005B5244(?:?); virtual;
    //procedure sub_005B5CFC(?:?); virtual;
  end;
  TRaveBand = class(TRaveContainerControl)
  public
    fF0:?Double;//fF0
    fF4:dword;//fF4
    fF8:?Double;//fF8
    fFC:dword;//fFC
    f100:String;//f100
    f104:byte;//f104
    ControllerBand:TRaveIterateBand;//f108
    PositionMode:TBandPositionMode;//f10C
    PositionValue:TRaveUnits;//f110
    f114:dword;//f114
    BandStyle:TRaveBandStyle;//f118
    GroupDataView:TRaveBaseDataView;//f11C
    f120:TRaveFieldName;//f120
    ReprintLocs:TBandPrintLocSet;//f124
    f125:byte;//f125
    StartNewPage:Boolean;//f126
    FinishNewPage:Boolean;//f127
    DesignerHide:Boolean;//f128
    AllowSplit:Boolean;//f129
    MinHeightLeft:TRaveUnits;//f130
    f134:dword;//f134
    f138:byte;//f138
    OnGetGroup:TRaveStringEvent;//f13C
    destructor Destroy; virtual;
    procedure SetName(NewName:TComponentName); virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005B6300(?:?); virtual;
    procedure sub_005B6310(); virtual;
    procedure sub_005B67F8; virtual;
    //procedure sub_005B628C(?:?; ?:?); virtual;
    //procedure sub_005B6B18(?:?); virtual;
    //function sub_005B6728(?:?):?; virtual;
    //procedure sub_005B63F0(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    procedure sub_005B6388; virtual;
    procedure sub_005B63BC; virtual;
    procedure sub_005B6684; virtual;
    procedure sub_005B66D8; virtual;
    //procedure sub_005B6754(?:?); virtual;
    //procedure sub_005B65C4(?:?); virtual;
    procedure sub_005B67BC; virtual;
    procedure sub_005B646C; virtual;
    procedure sub_005B6504; virtual;
    //function sub_005B659C:?; virtual;
    procedure sub_005B6A10(); virtual;
    procedure sub_005B6A14; virtual;
    procedure sub_005B6A24; virtual;
  end;
  TRaveIterateBand = class(TRaveBand)
  public
    f140:byte;//f140
    f144:TList;//f144
    KeepBodyTogether:Boolean;//f148
    KeepRowTogether:Boolean;//f149
    OrphanRows:Integer;//f14C
    WidowRows:Integer;//f150
    f154:byte;//f154
    MaxRows:Integer;//f158
    InitToFirst:Boolean;//f15C
    f15D:byte;//f15D
    f160:TRaveMethodList;//f160
    Columns:Integer;//f164
    ColumnSpacing:TRaveUnits;//f168
    f16C:dword;//f16C
    f170:dword;//f170
    f178:dword;//f178
    f17C:dword;//f17C
    f180:dword;//f180
    f184:dword;//f184
    f188:?Double;//f188
    f18C:dword;//f18C
    f190:dword;//f190
    f194:TRaveFieldName;//f194
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005B7164(?:?; ?:?); virtual;
    //procedure sub_005B7D50(?:?); virtual;
    //procedure sub_005B6FC8(?:?; ?:?; ?:?); virtual;
    //procedure sub_005B706C(?:?; ?:?; ?:?); virtual;
    //function sub_005B70FC(?:?):?; virtual;
    procedure sub_005B731C; virtual;
    procedure sub_005B7360(); virtual;
    //procedure sub_005B7374(?:?); virtual;
    procedure sub_005B7218(); virtual;
    procedure sub_005B7220(); virtual;
    procedure sub_005B769C; virtual;
    procedure sub_005B76BC; virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
  end;
  TRaveDataBand = class(TRaveIterateBand)
  public
    DataView:TRaveBaseDataView;//f198
    MasterDataView:TRaveBaseDataView;//f19C
    f1A0:TRaveFieldName;//f1A0
    f1A4:TRaveFieldName;//f1A4
    //procedure sub_005B7DB8(?:?; ?:?); virtual;
    procedure sub_005B7E3C; virtual;
    procedure sub_005B7E5C; virtual;
    //function sub_005B7E14:?; virtual;
    procedure sub_005B7E7C; virtual;
    procedure sub_005B7EA4; virtual;
    procedure sub_005B7EBC; virtual;
    //function sub_005B7ED4:?; virtual;
    //function sub_005B7EEC:?; virtual;
  end;
  TRaveDataCycle = class(TRaveComponent)
  public
    DataView:TRaveBaseDataView;//f5C
    f60:TRaveFieldName;//f60
    InitToFirst:Boolean;//f64
    MasterDataView:TRaveBaseDataView;//f68
    f6C:TRaveFieldName;//f6C
    MaxRows:Integer;//f70
    f74:TRaveFieldName;//f74
    f78:dword;//f78
    f7C:byte;//f7C
    constructor Create(AOwner:TComponent); virtual;
    //function sub_005B7F40:?; virtual;
    procedure sub_005B7F6C; virtual;
    procedure sub_005B7FD4; virtual;
    //procedure sub_005B7F84(?:?; ?:?); virtual;
  end;

implementation

{$R *.DFM}

//005B4AD0
//procedure sub_005B4AD0(?:Pointer; ?:?);
//begin
{*
 005B4AD0    push       ebp
 005B4AD1    mov        ebp,esp
 005B4AD3    push       ebx
 005B4AD4    mov        ebx,eax
 005B4AD6    mov        eax,dword ptr [ebx+14]
 005B4AD9    test       eax,eax
>005B4ADB    je         005B4AED
 005B4ADD    cmp        byte ptr [eax+11],0
>005B4AE1    jne        005B4AED
 005B4AE3    mov        edx,dword ptr [ebp+8]
 005B4AE6    push       edx
 005B4AE7    call       005B4AD0
 005B4AEC    pop        ecx
 005B4AED    mov        eax,dword ptr [ebx+14]
 005B4AF0    test       eax,eax
>005B4AF2    je         005B4AFA
 005B4AF4    mov        al,byte ptr [eax+11]
 005B4AF7    mov        byte ptr [ebx+10],al
 005B4AFA    cmp        byte ptr [ebx+12],0
>005B4AFE    je         005B4B07
 005B4B00    mov        al,byte ptr [ebx+10]
 005B4B03    inc        eax
 005B4B04    mov        byte ptr [ebx+11],al
 005B4B07    pop        ebx
 005B4B08    pop        ebp
 005B4B09    ret
*}
//end;

//005B4B0C
//function sub_005B4B0C(?:TRaveRegion; ?:?):?;
//begin
{*
 005B4B0C    push       ebp
 005B4B0D    mov        ebp,esp
 005B4B0F    push       ebx
 005B4B10    push       esi
 005B4B11    push       edi
 005B4B12    add        esp,0FFFFFFE8
 005B4B15    mov        dword ptr [esp],eax
 005B4B18    mov        dl,1
 005B4B1A    mov        eax,[0041C260]; TList
 005B4B1F    call       TObject.Create; TList.Create
 005B4B24    mov        dword ptr [esp+4],eax
 005B4B28    mov        dword ptr [esp+0C],1
 005B4B30    mov        eax,dword ptr [esp]
 005B4B33    mov        edx,dword ptr [eax]
 005B4B35    call       dword ptr [edx+54]
 005B4B38    dec        eax
 005B4B39    test       eax,eax
>005B4B3B    jl         005B4C97
 005B4B41    inc        eax
 005B4B42    mov        dword ptr [esp+14],eax
 005B4B46    mov        dword ptr [esp+8],0
 005B4B4E    mov        eax,dword ptr [esp]
 005B4B51    mov        edx,dword ptr [eax]
 005B4B53    call       dword ptr [edx+54]
 005B4B56    dec        eax
 005B4B57    cmp        eax,dword ptr [esp+8]
 005B4B5B    sete       byte ptr [esp+10]
 005B4B60    mov        eax,18
 005B4B65    call       @GetMem
 005B4B6A    mov        ebx,eax
 005B4B6C    mov        esi,ebx
 005B4B6E    mov        edx,dword ptr [esp+8]
 005B4B72    mov        eax,dword ptr [esp]
 005B4B75    mov        ecx,dword ptr [eax]
 005B4B77    call       dword ptr [ecx+50]
 005B4B7A    mov        dword ptr [esi],eax
 005B4B7C    xor        eax,eax
 005B4B7E    mov        dword ptr [esi+8],eax
 005B4B81    xor        eax,eax
 005B4B83    mov        dword ptr [esi+14],eax
 005B4B86    mov        eax,dword ptr [esi]
 005B4B88    mov        edx,dword ptr ds:[5B41E4]; TRaveIterateBand
 005B4B8E    call       @IsClass
 005B4B93    mov        byte ptr [esi+12],al
 005B4B96    mov        eax,dword ptr [esi]
 005B4B98    cmp        dword ptr [eax+108],0
>005B4B9F    jne        005B4BAF
 005B4BA1    mov        byte ptr [esi+10],1
 005B4BA5    mov        byte ptr [esi+11],1
 005B4BA9    mov        byte ptr [esi+12],1
>005B4BAD    jmp        005B4BB7
 005B4BAF    mov        byte ptr [esi+10],0
 005B4BB3    mov        byte ptr [esi+11],0
 005B4BB7    cmp        byte ptr [esi+12],0
>005B4BBB    je         005B4BD7
 005B4BBD    mov        eax,dword ptr [esp+0C]
 005B4BC1    mov        dword ptr [esi+0C],eax
 005B4BC4    mov        eax,dword ptr [esp+0C]
 005B4BC8    mov        ecx,14
 005B4BCD    cdq
 005B4BCE    idiv       eax,ecx
 005B4BD0    inc        edx
 005B4BD1    mov        dword ptr [esp+0C],edx
>005B4BD5    jmp        005B4BDC
 005B4BD7    xor        eax,eax
 005B4BD9    mov        dword ptr [esi+0C],eax
 005B4BDC    mov        eax,dword ptr [esp+4]
 005B4BE0    mov        esi,dword ptr [eax+8]
 005B4BE3    dec        esi
 005B4BE4    test       esi,esi
>005B4BE6    jl         005B4C7E
 005B4BEC    inc        esi
 005B4BED    xor        edi,edi
 005B4BEF    mov        edx,edi
 005B4BF1    mov        eax,dword ptr [esp+4]
 005B4BF5    call       TList.Get
 005B4BFA    mov        edx,dword ptr [eax]
 005B4BFC    mov        ecx,dword ptr [edx+108]
 005B4C02    mov        ebp,dword ptr [ebx]
 005B4C04    cmp        ecx,ebp
>005B4C06    jne        005B4C32
 005B4C08    mov        edx,eax
 005B4C0A    mov        byte ptr [edx+4],1
 005B4C0E    mov        dword ptr [edx+14],ebx
 005B4C11    mov        ecx,dword ptr [ebx+0C]
 005B4C14    mov        dword ptr [edx+8],ecx
 005B4C17    cmp        byte ptr [ebx+11],0
>005B4C1B    jbe        005B4C62
 005B4C1D    mov        cl,byte ptr [ebx+11]
 005B4C20    mov        byte ptr [edx+10],cl
 005B4C23    cmp        byte ptr [edx+12],0
>005B4C27    je         005B4C62
 005B4C29    mov        cl,byte ptr [ebx+11]
 005B4C2C    inc        ecx
 005B4C2D    mov        byte ptr [edx+11],cl
>005B4C30    jmp        005B4C62
 005B4C32    cmp        edx,dword ptr [ebp+108]
>005B4C38    jne        005B4C62
 005B4C3A    mov        edx,ebx
 005B4C3C    mov        byte ptr [edx+4],0
 005B4C40    mov        dword ptr [edx+14],eax
 005B4C43    mov        ecx,dword ptr [eax+0C]
 005B4C46    mov        dword ptr [edx+8],ecx
 005B4C49    cmp        byte ptr [eax+11],0
>005B4C4D    jbe        005B4C62
 005B4C4F    mov        cl,byte ptr [eax+11]
 005B4C52    mov        byte ptr [edx+10],cl
 005B4C55    cmp        byte ptr [edx+12],0
>005B4C59    je         005B4C62
 005B4C5B    mov        cl,byte ptr [eax+11]
 005B4C5E    inc        ecx
 005B4C5F    mov        byte ptr [edx+11],cl
 005B4C62    cmp        byte ptr [esp+10],0
>005B4C67    je         005B4C76
 005B4C69    cmp        byte ptr [eax+10],0
>005B4C6D    jne        005B4C76
 005B4C6F    push       ebp
 005B4C70    call       005B4AD0
 005B4C75    pop        ecx
 005B4C76    inc        edi
 005B4C77    dec        esi
<005B4C78    jne        005B4BEF
 005B4C7E    mov        edx,ebx
 005B4C80    mov        eax,dword ptr [esp+4]
 005B4C84    call       TList.Add
 005B4C89    inc        dword ptr [esp+8]
 005B4C8D    dec        dword ptr [esp+14]
<005B4C91    jne        005B4B4E
 005B4C97    mov        eax,dword ptr [esp+4]
 005B4C9B    add        esp,18
 005B4C9E    pop        edi
 005B4C9F    pop        esi
 005B4CA0    pop        ebx
 005B4CA1    pop        ebp
 005B4CA2    ret
*}
//end;

//005B4CA4
//procedure sub_005B4CA4(?:?);
//begin
{*
 005B4CA4    push       ebx
 005B4CA5    push       esi
 005B4CA6    push       ecx
 005B4CA7    mov        dword ptr [esp],eax
 005B4CAA    mov        eax,dword ptr [esp]
 005B4CAD    mov        ebx,dword ptr [eax+8]
 005B4CB0    dec        ebx
 005B4CB1    test       ebx,ebx
>005B4CB3    jl         005B4CD0
 005B4CB5    inc        ebx
 005B4CB6    xor        esi,esi
 005B4CB8    mov        edx,esi
 005B4CBA    mov        eax,dword ptr [esp]
 005B4CBD    call       TList.Get
 005B4CC2    mov        edx,18
 005B4CC7    call       @FreeMem
 005B4CCC    inc        esi
 005B4CCD    dec        ebx
<005B4CCE    jne        005B4CB8
 005B4CD0    mov        eax,esp
 005B4CD2    call       FreeAndNil
 005B4CD7    pop        edx
 005B4CD8    pop        esi
 005B4CD9    pop        ebx
 005B4CDA    ret
*}
//end;

//005B4CDC
constructor TRaveRegion.Create(AOwner:TComponent);
begin
{*
 005B4CDC    push       ebx
 005B4CDD    push       esi
 005B4CDE    test       dl,dl
>005B4CE0    je         005B4CEA
 005B4CE2    add        esp,0FFFFFFF0
 005B4CE5    call       @ClassCreate
 005B4CEA    mov        ebx,edx
 005B4CEC    mov        esi,eax
 005B4CEE    xor        edx,edx
 005B4CF0    mov        eax,esi
 005B4CF2    call       TRaveContainerControl.Create
 005B4CF7    mov        al,byte ptr [esi+30]; TRaveRegion.?f30:byte
 005B4CFA    or         al,byte ptr ds:[5B4D64]; 0x1
 005B4D00    mov        byte ptr [esi+30],al; TRaveRegion.?f30:byte
 005B4D03    push       40080000
 005B4D08    push       0
 005B4D0A    mov        eax,esi
 005B4D0C    mov        edx,dword ptr [eax]
 005B4D0E    call       dword ptr [edx+140]; TRaveText.SetWidth
 005B4D14    push       40080000
 005B4D19    push       0
 005B4D1B    mov        eax,esi
 005B4D1D    mov        edx,dword ptr [eax]
 005B4D1F    call       dword ptr [edx+148]; TRaveSection.SetHeight
 005B4D25    mov        dword ptr [esi+128],1; TRaveRegion.Columns:Integer
 005B4D2F    xor        eax,eax
 005B4D31    mov        dword ptr [esi+130],eax; TRaveRegion.ColumnSpacing:TRaveUnits
 005B4D37    mov        dword ptr [esi+134],eax; TRaveRegion.?f134:dword
 005B4D3D    mov        dword ptr [esi+124],1; TRaveRegion.?f124:dword
 005B4D47    mov        eax,esi
 005B4D49    test       bl,bl
>005B4D4B    je         005B4D5C
 005B4D4D    call       @AfterConstruction
 005B4D52    pop        dword ptr fs:[0]
 005B4D59    add        esp,0C
 005B4D5C    mov        eax,esi
 005B4D5E    pop        esi
 005B4D5F    pop        ebx
 005B4D60    ret
*}
end;

//005B4D68
destructor TRaveRegion.Destroy;
begin
{*
 005B4D68    push       ebx
 005B4D69    push       esi
 005B4D6A    call       @BeforeDestruction
 005B4D6F    mov        ebx,edx
 005B4D71    mov        esi,eax
 005B4D73    cmp        dword ptr [esi+114],0; TRaveRegion.?f114:TRaveStackList
>005B4D7A    je         005B4D87
 005B4D7C    lea        eax,[esi+114]; TRaveRegion.?f114:TRaveStackList
 005B4D82    call       FreeAndNil
 005B4D87    mov        edx,ebx
 005B4D89    and        dl,0FC
 005B4D8C    mov        eax,esi
 005B4D8E    call       TRaveControl.Destroy
 005B4D93    test       bl,bl
>005B4D95    jle        005B4D9E
 005B4D97    mov        eax,esi
 005B4D99    call       @ClassDestroy
 005B4D9E    pop        esi
 005B4D9F    pop        ebx
 005B4DA0    ret
*}
end;

//005B4DA4
//procedure sub_005B4DA4(?:?);
//begin
{*
 005B4DA4    mov        eax,edx
 005B4DA6    mov        edx,dword ptr ds:[5B3DA4]; TRaveBand
 005B4DAC    call       TObject.InheritsFrom
 005B4DB1    ret
*}
//end;

//005B4DB4
//function sub_005B4DB4:?;
//begin
{*
 005B4DB4    push       ebx
 005B4DB5    mov        ebx,eax
 005B4DB7    cmp        dword ptr [ebx+118],0; TRaveRegion.?f118:dword
>005B4DBE    jne        005B4DCB
 005B4DC0    mov        eax,ebx
 005B4DC2    call       005A8E80
 005B4DC7    test       al,al
>005B4DC9    jne        005B4DCF
 005B4DCB    xor        eax,eax
 005B4DCD    pop        ebx
 005B4DCE    ret
 005B4DCF    mov        al,1
 005B4DD1    pop        ebx
 005B4DD2    ret
*}
//end;

//005B4DD4
procedure sub_005B4DD4;
begin
{*
 005B4DD4    mov        byte ptr [eax+121],0; TRaveRegion.?f121:byte
 005B4DDB    xor        edx,edx
 005B4DDD    mov        dword ptr [eax+118],edx; TRaveRegion.?f118:dword
 005B4DE3    mov        byte ptr [eax+11E],0; TRaveRegion.?f11E:byte
 005B4DEA    mov        byte ptr [eax+11D],0; TRaveRegion.?f11D:byte
 005B4DF1    call       005A8800
 005B4DF6    ret
*}
end;

//005B4DF8
//function sub_005B4DF8(?:?):?;
//begin
{*
 005B4DF8    push       ebx
 005B4DF9    add        esp,0FFFFFFF4
 005B4DFC    mov        ebx,eax
 005B4DFE    mov        eax,ebx
 005B4E00    call       005B4E5C
 005B4E05    fadd       qword ptr [ebx+130]
 005B4E0B    mov        eax,dword ptr [ebx+124]
 005B4E11    dec        eax
 005B4E12    mov        dword ptr [esp+8],eax
 005B4E16    fild       dword ptr [esp+8]
 005B4E1A    fmulp      st(1),st
 005B4E1C    fstp       qword ptr [esp]
 005B4E1F    wait
 005B4E20    fld        qword ptr [esp]
 005B4E23    add        esp,0C
 005B4E26    pop        ebx
 005B4E27    ret
*}
//end;

//005B4E28
//function sub_005B4E28(?:TRaveRegion; ?:?):?;
//begin
{*
 005B4E28    push       ebp
 005B4E29    mov        ebp,esp
 005B4E2B    add        esp,0FFFFFFF0
 005B4E2E    mov        edx,dword ptr [eax+128]; TRaveRegion.Columns:Integer
 005B4E34    mov        ecx,edx
 005B4E36    dec        ecx
 005B4E37    mov        dword ptr [ebp-0C],ecx
 005B4E3A    fild       dword ptr [ebp-0C]
 005B4E3D    fmul       qword ptr [eax+130]; TRaveRegion.ColumnSpacing:TRaveUnits
 005B4E43    fsubr      qword ptr [ebp+8]
 005B4E46    mov        dword ptr [ebp-10],edx
 005B4E49    fild       dword ptr [ebp-10]
 005B4E4C    fdivp      st(1),st
 005B4E4E    fstp       qword ptr [ebp-8]
 005B4E51    wait
 005B4E52    fld        qword ptr [ebp-8]
 005B4E55    mov        esp,ebp
 005B4E57    pop        ebp
 005B4E58    ret        8
*}
//end;

//005B4E5C
//function sub_005B4E5C(?:TRaveRegion):?;
//begin
{*
 005B4E5C    push       ebx
 005B4E5D    add        esp,0FFFFFFF8
 005B4E60    mov        ebx,eax
 005B4E62    mov        eax,ebx
 005B4E64    mov        edx,dword ptr [eax]
 005B4E66    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005B4E6C    add        esp,0FFFFFFF8
 005B4E6F    fstp       qword ptr [esp]
 005B4E72    wait
 005B4E73    mov        eax,ebx
 005B4E75    call       005B4E28
 005B4E7A    fstp       qword ptr [esp]
 005B4E7D    wait
 005B4E7E    fld        qword ptr [esp]
 005B4E81    pop        ecx
 005B4E82    pop        edx
 005B4E83    pop        ebx
 005B4E84    ret
*}
//end;

//005B4E88
//procedure TRaveRegion.SetColumns(Self:TRaveRegion; ?:?);
//begin
{*
 005B4E88    cmp        edx,dword ptr [eax+128]; TRaveRegion.Columns:Integer
>005B4E8E    je         005B4E9F
 005B4E90    test       edx,edx
>005B4E92    jle        005B4E9F
 005B4E94    mov        dword ptr [eax+128],edx; TRaveRegion.Columns:Integer
 005B4E9A    call       005AA880
 005B4E9F    ret
*}
//end;

//005B4EA0
//procedure TRaveRegion.SetColumnSpacing(Self:TRaveRegion; ?:?; ?:?);
//begin
{*
 005B4EA0    push       ebp
 005B4EA1    mov        ebp,esp
 005B4EA3    mov        edx,eax
 005B4EA5    fld        qword ptr [edx+130]; TRaveRegion.ColumnSpacing:TRaveUnits
 005B4EAB    fcomp      qword ptr [ebp+8]
 005B4EAE    fnstsw     al
 005B4EB0    sahf
>005B4EB1    je         005B4ECC
 005B4EB3    mov        eax,dword ptr [ebp+8]
 005B4EB6    mov        dword ptr [edx+130],eax; TRaveRegion.ColumnSpacing:TRaveUnits
 005B4EBC    mov        eax,dword ptr [ebp+0C]
 005B4EBF    mov        dword ptr [edx+134],eax; TRaveRegion.?f134:dword
 005B4EC5    mov        eax,edx
 005B4EC7    call       005AA880
 005B4ECC    pop        ebp
 005B4ECD    ret        8
*}
//end;

//005B4ED0
procedure TRaveRegion.SetName(NewName:TComponentName);
begin
{*
 005B4ED0    push       ebx
 005B4ED1    mov        ebx,eax
 005B4ED3    mov        eax,ebx
 005B4ED5    call       TRaveComponent.SetName
 005B4EDA    mov        eax,ebx
 005B4EDC    call       005A8540
 005B4EE1    pop        ebx
 005B4EE2    ret
*}
end;

//005B4EE4
//procedure sub_005B4EE4(?:TRaveRegion);
//begin
{*
 005B4EE4    push       ebx
 005B4EE5    mov        ebx,eax
 005B4EE7    cmp        dword ptr [ebx+114],0; TRaveRegion.?f114:TRaveStackList
>005B4EEE    jne        005B4F02
 005B4EF0    mov        dl,1
 005B4EF2    mov        eax,[005A53E8]; TRaveStackList
 005B4EF7    call       TObject.Create; TRaveStackList.Create
 005B4EFC    mov        dword ptr [ebx+114],eax; TRaveRegion.?f114:TRaveStackList
 005B4F02    mov        eax,0C
 005B4F07    call       @GetMem
 005B4F0C    mov        edx,dword ptr [ebx+108]; TRaveRegion.?f108:dword
 005B4F12    mov        dword ptr [eax],edx
 005B4F14    mov        edx,dword ptr [ebx+10C]; TRaveRegion.?f10C:dword
 005B4F1A    mov        dword ptr [eax+4],edx
 005B4F1D    mov        edx,dword ptr [ebx+110]; TRaveRegion.?f110:dword
 005B4F23    mov        dword ptr [eax+8],edx
 005B4F26    mov        edx,eax
 005B4F28    mov        eax,dword ptr [ebx+114]; TRaveRegion.?f114:TRaveStackList
 005B4F2E    call       005A5F10
 005B4F33    pop        ebx
 005B4F34    ret
*}
//end;

//005B4F38
//procedure sub_005B4F38(?:TRaveRegion);
//begin
{*
 005B4F38    push       ebx
 005B4F39    push       esi
 005B4F3A    mov        ebx,eax
 005B4F3C    mov        esi,dword ptr [ebx+114]; TRaveRegion.?f114:TRaveStackList
 005B4F42    test       esi,esi
>005B4F44    je         005B4F71
 005B4F46    mov        eax,esi
 005B4F48    call       005A5F18
 005B4F4D    mov        edx,dword ptr [eax]
 005B4F4F    mov        dword ptr [ebx+108],edx; TRaveRegion.?f108:dword
 005B4F55    mov        edx,dword ptr [eax+4]
 005B4F58    mov        dword ptr [ebx+10C],edx; TRaveRegion.?f10C:dword
 005B4F5E    mov        edx,dword ptr [eax+8]
 005B4F61    mov        dword ptr [ebx+110],edx; TRaveRegion.?f110:dword
 005B4F67    mov        edx,0C
 005B4F6C    call       @FreeMem
 005B4F71    pop        esi
 005B4F72    pop        ebx
 005B4F73    ret
*}
//end;

//005B4F74
//function sub_005B4F74(?:?):?;
//begin
{*
 005B4F74    push       ebx
 005B4F75    add        esp,0FFFFFFF8
 005B4F78    mov        ebx,eax
 005B4F7A    mov        eax,ebx
 005B4F7C    mov        edx,dword ptr [eax]
 005B4F7E    call       dword ptr [edx+144]
 005B4F84    fsub       qword ptr [ebx+0F8]
 005B4F8A    fstp       qword ptr [esp]
 005B4F8D    wait
 005B4F8E    fld        qword ptr [esp]
 005B4F91    pop        ecx
 005B4F92    pop        edx
 005B4F93    pop        ebx
 005B4F94    ret
*}
//end;

//005B4F98
procedure sub_005B4F98();
begin
{*
 005B4F98    ret
*}
end;

//005B4F9C
procedure sub_005B4F9C();
begin
{*
 005B4F9C    ret
*}
end;

//005B4FA0
//function sub_005B4FA0(?:TRaveRegion; ?:?; ?:?; ?:?):?;
//begin
{*
 005B4FA0    push       ebp
 005B4FA1    mov        ebp,esp
 005B4FA3    push       ebx
 005B4FA4    mov        bl,byte ptr [ebp+8]
 005B4FA7    mov        byte ptr [edx+8],bl
 005B4FAA    mov        dword ptr [edx+4],ecx
 005B4FAD    mov        dword ptr [edx],0FFFFFFFF
 005B4FB3    call       005B4FFC
 005B4FB8    pop        ebx
 005B4FB9    pop        ebp
 005B4FBA    ret        4
*}
//end;

//005B4FC0
//function sub_005B4FC0(?:?; ?:dword; ?:?):?;
//begin
{*
 005B4FC0    push       ebp
 005B4FC1    mov        ebp,esp
 005B4FC3    mov        ecx,dword ptr [ebp+8]
 005B4FC6    mov        ecx,dword ptr [ecx-4]
 005B4FC9    mov        ecx,dword ptr [ecx+4]
 005B4FCC    cmp        ecx,dword ptr [eax+108]
>005B4FD2    jne        005B4FF3
 005B4FD4    cmp        dword ptr [eax+108],0
>005B4FDB    je         005B4FF7
 005B4FDD    mov        eax,dword ptr [ebp+8]
 005B4FE0    mov        eax,dword ptr [eax-4]
 005B4FE3    mov        al,byte ptr [eax+8]
 005B4FE6    cmp        al,7
>005B4FE8    ja         005B4FF1
 005B4FEA    and        eax,7F
 005B4FED    bt         dword ptr [edx+4],eax
>005B4FF1    jb         005B4FF7
 005B4FF3    xor        eax,eax
 005B4FF5    pop        ebp
 005B4FF6    ret
 005B4FF7    mov        al,1
 005B4FF9    pop        ebp
 005B4FFA    ret
*}
//end;

//005B4FFC
//function sub_005B4FFC(?:TRaveRegion; ?:?):?;
//begin
{*
 005B4FFC    push       ebp
 005B4FFD    mov        ebp,esp
 005B4FFF    add        esp,0FFFFFFF8
 005B5002    push       ebx
 005B5003    push       esi
 005B5004    push       edi
 005B5005    mov        dword ptr [ebp-4],edx
 005B5008    mov        esi,eax
 005B500A    mov        edi,dword ptr [ebp-4]
 005B500D    mov        edi,dword ptr [edi]
 005B500F    inc        edi
 005B5010    mov        eax,esi
 005B5012    mov        edx,dword ptr [eax]
 005B5014    call       dword ptr [edx+54]; TRaveRegion.sub_005AAF80
 005B5017    dec        eax
 005B5018    sub        eax,edi
>005B501A    jl         005B5092
 005B501C    inc        eax
 005B501D    mov        dword ptr [ebp-8],eax
 005B5020    mov        edx,edi
 005B5022    mov        eax,esi
 005B5024    mov        ecx,dword ptr [eax]
 005B5026    call       dword ptr [ecx+50]; TRaveRegion.sub_005AAF94
 005B5029    mov        ebx,eax
 005B502B    mov        eax,[0061B184]
 005B5030    cmp        byte ptr [eax],0
>005B5033    je         005B5072
 005B5035    cmp        ebx,dword ptr [esi+0F0]; TRaveRegion.?fF0:dword
>005B503B    jne        005B5050
 005B503D    push       ebp
 005B503E    mov        edx,dword ptr [esi+0F4]; TRaveRegion.?fF4:dword
 005B5044    mov        eax,ebx
 005B5046    call       005B4FC0
 005B504B    pop        ecx
 005B504C    test       al,al
>005B504E    jne        005B506B
 005B5050    cmp        ebx,dword ptr [esi+0F0]; TRaveRegion.?fF0:dword
>005B5056    je         005B508C
 005B5058    push       ebp
 005B5059    mov        edx,dword ptr [ebx+118]
 005B505F    mov        eax,ebx
 005B5061    call       005B4FC0
 005B5066    pop        ecx
 005B5067    test       al,al
>005B5069    je         005B508C
 005B506B    mov        eax,dword ptr [ebp-4]
 005B506E    mov        dword ptr [eax],edi
>005B5070    jmp        005B50A0
 005B5072    push       ebp
 005B5073    mov        edx,dword ptr [ebx+118]
 005B5079    mov        eax,ebx
 005B507B    call       005B4FC0
 005B5080    pop        ecx
 005B5081    test       al,al
>005B5083    je         005B508C
 005B5085    mov        eax,dword ptr [ebp-4]
 005B5088    mov        dword ptr [eax],edi
>005B508A    jmp        005B50A0
 005B508C    inc        edi
 005B508D    dec        dword ptr [ebp-8]
<005B5090    jne        005B5020
 005B5092    xor        ebx,ebx
 005B5094    mov        eax,esi
 005B5096    mov        edx,dword ptr [eax]
 005B5098    call       dword ptr [edx+54]; TRaveRegion.sub_005AAF80
 005B509B    mov        edx,dword ptr [ebp-4]
 005B509E    mov        dword ptr [edx],eax
 005B50A0    mov        eax,ebx
 005B50A2    pop        edi
 005B50A3    pop        esi
 005B50A4    pop        ebx
 005B50A5    pop        ecx
 005B50A6    pop        ecx
 005B50A7    pop        ebp
 005B50A8    ret
*}
//end;

//005B50AC
//procedure sub_005B50AC(?:?; ?:TRaveBand);
//begin
{*
 005B50AC    mov        dword ptr [eax+118],edx
 005B50B2    mov        byte ptr [eax+11D],1
 005B50B9    mov        byte ptr [eax+11E],0
 005B50C0    ret
*}
//end;

//005B50C4
//procedure sub_005B50C4(?:?);
//begin
{*
 005B50C4    xor        edx,edx
 005B50C6    mov        dword ptr [eax+118],edx
 005B50CC    mov        byte ptr [eax+11D],0
 005B50D3    ret
*}
//end;

//005B50D4
//procedure sub_005B50D4(?:?);
//begin
{*
 005B50D4    push       ebx
 005B50D5    mov        ebx,eax
 005B50D7    mov        eax,ebx
 005B50D9    call       005B50C4
 005B50DE    mov        byte ptr [ebx+11E],1
 005B50E5    pop        ebx
 005B50E6    ret
*}
//end;

//005B50E8
//procedure sub_005B50E8(?:?);
//begin
{*
 005B50E8    mov        edx,dword ptr [eax+0F8]
 005B50EE    mov        dword ptr [eax+100],edx
 005B50F4    mov        edx,dword ptr [eax+0FC]
 005B50FA    mov        dword ptr [eax+104],edx
 005B5100    ret
*}
//end;

//005B5104
//procedure sub_005B5104(?:?);
//begin
{*
 005B5104    mov        edx,dword ptr [eax+100]
 005B510A    mov        dword ptr [eax+0F8],edx
 005B5110    mov        edx,dword ptr [eax+104]
 005B5116    mov        dword ptr [eax+0FC],edx
 005B511C    ret
*}
//end;

//005B5120
//procedure sub_005B5120(?:AnsiString; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005B5120    push       ebp
 005B5121    mov        ebp,esp
 005B5123    push       ecx
 005B5124    push       ebx
 005B5125    push       esi
 005B5126    push       edi
 005B5127    mov        edi,ecx
 005B5129    mov        ebx,edx
 005B512B    mov        dword ptr [ebp-4],eax
 005B512E    mov        esi,dword ptr [ebp+0C]
 005B5131    mov        eax,dword ptr [ebp-4]
 005B5134    call       @LStrAddRef
 005B5139    xor        eax,eax
 005B513B    push       ebp
 005B513C    push       5B522C
 005B5141    push       dword ptr fs:[eax]
 005B5144    mov        dword ptr fs:[eax],esp
 005B5147    mov        eax,dword ptr [ebp+10]
 005B514A    mov        eax,dword ptr [eax-4]
 005B514D    mov        edx,dword ptr [ebp-4]
 005B5150    call       TCanvas.TextWidth
 005B5155    add        eax,2
 005B5158    sub        dword ptr [edi],eax
 005B515A    mov        eax,dword ptr [edi]
 005B515C    cmp        eax,dword ptr [ebp+8]
>005B515F    jl         005B5216
 005B5165    mov        eax,dword ptr [ebp+10]
 005B5168    mov        eax,dword ptr [eax-4]
 005B516B    mov        eax,dword ptr [eax+14]
 005B516E    mov        dl,1
 005B5170    call       TBrush.SetStyle
 005B5175    test       bl,bl
>005B5177    je         005B51A6
 005B5179    xor        eax,eax
 005B517B    call       005A54B0
 005B5180    mov        edx,eax
 005B5182    mov        eax,dword ptr [ebp+10]
 005B5185    mov        eax,dword ptr [eax-4]
 005B5188    mov        eax,dword ptr [eax+0C]
 005B518B    call       TFont.SetColor
 005B5190    mov        eax,dword ptr [ebp+10]
 005B5193    mov        eax,dword ptr [eax-4]
 005B5196    mov        eax,dword ptr [eax+0C]
 005B5199    mov        dl,byte ptr ds:[5B523C]; 0x1
 005B519F    call       TFont.SetStyle
>005B51A4    jmp        005B51EF
 005B51A6    mov        eax,0FFFFFF
 005B51AB    call       005A54B0
 005B51B0    mov        edx,eax
 005B51B2    mov        eax,dword ptr [ebp+10]
 005B51B5    mov        eax,dword ptr [eax-4]
 005B51B8    mov        eax,dword ptr [eax+0C]
 005B51BB    call       TFont.SetColor
 005B51C0    mov        eax,dword ptr [ebp-4]
 005B51C3    push       eax
 005B51C4    lea        ecx,[esi+1]
 005B51C7    mov        edx,dword ptr [edi]
 005B51C9    inc        edx
 005B51CA    mov        eax,dword ptr [ebp+10]
 005B51CD    mov        eax,dword ptr [eax-4]
 005B51D0    call       TCanvas.TextOut
 005B51D5    mov        eax,808080
 005B51DA    call       005A54B0
 005B51DF    mov        edx,eax
 005B51E1    mov        eax,dword ptr [ebp+10]
 005B51E4    mov        eax,dword ptr [eax-4]
 005B51E7    mov        eax,dword ptr [eax+0C]
 005B51EA    call       TFont.SetColor
 005B51EF    mov        eax,dword ptr [ebp-4]
 005B51F2    push       eax
 005B51F3    mov        edx,dword ptr [edi]
 005B51F5    mov        eax,dword ptr [ebp+10]
 005B51F8    mov        eax,dword ptr [eax-4]
 005B51FB    mov        ecx,esi
 005B51FD    call       TCanvas.TextOut
 005B5202    mov        eax,dword ptr [ebp+10]
 005B5205    mov        eax,dword ptr [eax-4]
 005B5208    mov        eax,dword ptr [eax+0C]
 005B520B    mov        dl,byte ptr ds:[5B5240]; 0x0
 005B5211    call       TFont.SetStyle
 005B5216    xor        eax,eax
 005B5218    pop        edx
 005B5219    pop        ecx
 005B521A    pop        ecx
 005B521B    mov        dword ptr fs:[eax],edx
 005B521E    push       5B5233
 005B5223    lea        eax,[ebp-4]
 005B5226    call       @LStrClr
 005B522B    ret
<005B522C    jmp        @HandleFinally
<005B5231    jmp        005B5223
 005B5233    pop        edi
 005B5234    pop        esi
 005B5235    pop        ebx
 005B5236    pop        ecx
 005B5237    pop        ebp
 005B5238    ret        8
*}
//end;

//005B5244
//procedure sub_005B5244(?:?);
//begin
{*
 005B5244    push       ebp
 005B5245    mov        ebp,esp
 005B5247    add        esp,0FFFFFF4C
 005B524D    push       ebx
 005B524E    push       esi
 005B524F    push       edi
 005B5250    xor        ecx,ecx
 005B5252    mov        dword ptr [ebp-1C],ecx
 005B5255    mov        dword ptr [ebp-4],edx
 005B5258    mov        esi,eax
 005B525A    xor        eax,eax
 005B525C    push       ebp
 005B525D    push       5B5C21
 005B5262    push       dword ptr fs:[eax]
 005B5265    mov        dword ptr fs:[eax],esp
 005B5268    cmp        byte ptr [esi+3C],0; TRaveRegion.?f3C:byte
>005B526C    je         005B5C0B
 005B5272    mov        edx,dword ptr [ebp-4]
 005B5275    mov        eax,esi
 005B5277    mov        ecx,dword ptr [eax]
 005B5279    call       dword ptr [ecx+168]; TRaveRegion.sub_005B5CFC
 005B527F    push       esi
 005B5280    mov        ecx,esi
 005B5282    mov        edx,dword ptr [ebp-4]
 005B5285    mov        eax,esi
 005B5287    call       005AABC8
 005B528C    mov        eax,esi
 005B528E    mov        edx,dword ptr [eax]
 005B5290    call       dword ptr [edx+54]; TRaveRegion.sub_005AAF80
 005B5293    test       eax,eax
>005B5295    jle        005B5C0B
 005B529B    mov        eax,esi
 005B529D    call       005B4B0C
 005B52A2    mov        dword ptr [ebp-20],eax
 005B52A5    mov        eax,[0061BD40]
 005B52AA    cmp        byte ptr [eax],0
>005B52AD    jne        005B52C8
 005B52AF    mov        eax,[0061B9A0]; ^gvar_006171E4
 005B52B4    mov        eax,dword ptr [eax]
 005B52B6    mov        edx,esi
 005B52B8    mov        ecx,dword ptr [eax]
 005B52BA    call       dword ptr [ecx+110]
 005B52C0    test       al,al
>005B52C2    jne        005B52C8
 005B52C4    xor        eax,eax
>005B52C6    jmp        005B52CA
 005B52C8    mov        al,1
 005B52CA    mov        byte ptr [ebp-21],al
 005B52CD    mov        edx,dword ptr [ebp-4]
 005B52D0    mov        eax,esi
 005B52D2    call       005AA0BC
 005B52D7    mov        dword ptr [ebp-10],eax
 005B52DA    mov        eax,esi
 005B52DC    mov        edx,dword ptr [eax]
 005B52DE    call       dword ptr [edx+5C]; TRaveRegion.sub_005A96D4
 005B52E1    add        esp,0FFFFFFF8
 005B52E4    fstp       qword ptr [esp]
 005B52E7    wait
 005B52E8    mov        eax,esi
 005B52EA    call       005AAE14
 005B52EF    mov        dword ptr [ebp-4C],eax
 005B52F2    mov        eax,esi
 005B52F4    mov        edx,dword ptr [eax]
 005B52F6    call       dword ptr [edx+64]; TRaveRegion.sub_005A9744
 005B52F9    add        esp,0FFFFFFF8
 005B52FC    fstp       qword ptr [esp]
 005B52FF    wait
 005B5300    mov        eax,esi
 005B5302    call       005AAE14
 005B5307    inc        eax
 005B5308    mov        dword ptr [ebp-44],eax
 005B530B    mov        eax,esi
 005B530D    mov        edx,dword ptr [eax]
 005B530F    call       dword ptr [edx+60]; TRaveRegion.sub_005A970C
 005B5312    add        esp,0FFFFFFF8
 005B5315    fstp       qword ptr [esp]
 005B5318    wait
 005B5319    mov        eax,esi
 005B531B    call       005AAE30
 005B5320    mov        dword ptr [ebp-48],eax
 005B5323    mov        byte ptr [ebp-23],1
 005B5327    mov        eax,esi
 005B5329    mov        edx,dword ptr [eax]
 005B532B    call       dword ptr [edx+60]; TRaveRegion.sub_005A970C
 005B532E    fstp       qword ptr [ebp-54]
 005B5331    wait
 005B5332    mov        eax,esi
 005B5334    mov        edx,dword ptr [eax]
 005B5336    call       dword ptr [edx+134]; TRaveText.GetTop
 005B533C    fsubr      qword ptr [ebp-54]
 005B533F    fstp       qword ptr [ebp-30]
 005B5342    wait
 005B5343    mov        eax,esi
 005B5345    mov        edx,dword ptr [eax]
 005B5347    call       dword ptr [edx+54]; TRaveRegion.sub_005AAF80
 005B534A    dec        eax
 005B534B    test       eax,eax
>005B534D    jl         005B5BF6
 005B5353    inc        eax
 005B5354    mov        dword ptr [ebp-34],eax
 005B5357    mov        dword ptr [ebp-8],0
 005B535E    mov        edx,dword ptr [ebp-8]
 005B5361    mov        eax,esi
 005B5363    mov        ecx,dword ptr [eax]
 005B5365    call       dword ptr [ecx+50]; TRaveRegion.sub_005AAF94
 005B5368    mov        edx,dword ptr ds:[5B3DA4]; TRaveBand
 005B536E    call       @AsClass
 005B5373    mov        edi,eax
 005B5375    mov        edx,dword ptr [ebp-8]
 005B5378    mov        eax,dword ptr [ebp-20]
 005B537B    call       TList.Get
 005B5380    mov        ebx,eax
 005B5382    mov        eax,[0061B9A0]; ^gvar_006171E4
 005B5387    mov        eax,dword ptr [eax]
 005B5389    mov        edx,edi
 005B538B    mov        ecx,dword ptr [eax]
 005B538D    call       dword ptr [ecx+110]
 005B5393    mov        byte ptr [ebp-22],al
 005B5396    cmp        byte ptr [ebp-23],0
>005B539A    je         005B5451
 005B53A0    mov        al,byte ptr [ebp-22]
 005B53A3    or         al,byte ptr [ebp-21]
>005B53A6    jne        005B53B5
 005B53A8    cmp        byte ptr [edi+128],0; TRaveBand.DesignerHide:Boolean
>005B53AF    jne        005B5451
 005B53B5    mov        byte ptr [ebp-23],0
 005B53B9    mov        eax,dword ptr [ebp-4]
 005B53BC    mov        eax,dword ptr [eax+10]
 005B53BF    mov        edx,1
 005B53C4    call       TPen.SetWidth
 005B53C9    mov        al,byte ptr [ebp-22]
 005B53CC    or         al,byte ptr [ebp-21]
>005B53CF    je         005B53E0
 005B53D1    mov        eax,dword ptr [ebp-4]
 005B53D4    mov        eax,dword ptr [eax+10]
 005B53D7    xor        edx,edx
 005B53D9    call       TPen.SetStyle
>005B53DE    jmp        005B53ED
 005B53E0    mov        eax,dword ptr [ebp-4]
 005B53E3    mov        eax,dword ptr [eax+10]
 005B53E6    mov        dl,2
 005B53E8    call       TPen.SetStyle
 005B53ED    mov        eax,0C0C0C0
 005B53F2    call       005A54B0
 005B53F7    mov        edx,eax
 005B53F9    mov        eax,dword ptr [ebp-4]
 005B53FC    mov        eax,dword ptr [eax+10]
 005B53FF    call       TPen.SetColor
 005B5404    mov        eax,dword ptr [ebp-4]
 005B5407    mov        eax,dword ptr [eax+10]
 005B540A    mov        dl,4
 005B540C    call       TPen.SetMode
 005B5411    mov        eax,dword ptr [ebp-4]
 005B5414    mov        eax,dword ptr [eax+14]
 005B5417    xor        edx,edx
 005B5419    call       TBrush.SetStyle
 005B541E    mov        eax,0FFFFFF
 005B5423    call       005A54B0
 005B5428    mov        edx,eax
 005B542A    mov        eax,dword ptr [ebp-4]
 005B542D    mov        eax,dword ptr [eax+14]
 005B5430    call       TBrush.SetColor
 005B5435    mov        ecx,dword ptr [ebp-48]
 005B5438    mov        edx,dword ptr [ebp-4C]
 005B543B    mov        eax,dword ptr [ebp-4]
 005B543E    call       TCanvas.MoveTo
 005B5443    mov        ecx,dword ptr [ebp-48]
 005B5446    mov        edx,dword ptr [ebp-44]
 005B5449    mov        eax,dword ptr [ebp-4]
 005B544C    call       TCanvas.LineTo
 005B5451    mov        al,byte ptr [ebp-22]
 005B5454    or         al,byte ptr [ebp-21]
>005B5457    je         005B5A84
 005B545D    mov        eax,dword ptr [ebp-4]
 005B5460    mov        eax,dword ptr [eax+0C]
 005B5463    mov        edx,5B5C38; 'Arial'
 005B5468    call       TFont.SetName
 005B546D    mov        eax,dword ptr [ebp-4]
 005B5470    mov        eax,dword ptr [eax+0C]
 005B5473    mov        edx,8
 005B5478    call       TFont.SetSize
 005B547D    xor        eax,eax
 005B547F    call       005A54B0
 005B5484    mov        edx,eax
 005B5486    mov        eax,dword ptr [ebp-4]
 005B5489    mov        eax,dword ptr [eax+0C]
 005B548C    call       TFont.SetColor
 005B5491    mov        eax,dword ptr [ebp-4]
 005B5494    mov        eax,dword ptr [eax+0C]
 005B5497    mov        dl,byte ptr ds:[5B5C40]; 0x0
 005B549D    call       TFont.SetStyle
 005B54A2    inc        dword ptr [ebp-48]
 005B54A5    inc        dword ptr [ebp-4C]
 005B54A8    mov        eax,dword ptr [ebp-4]
 005B54AB    mov        eax,dword ptr [eax+0C]
 005B54AE    call       TFont.GetHeight
 005B54B3    cdq
 005B54B4    xor        eax,edx
 005B54B6    sub        eax,edx
 005B54B8    add        eax,dword ptr [ebp-48]
 005B54BB    add        eax,7
 005B54BE    mov        dword ptr [ebp-40],eax
 005B54C1    push       2
 005B54C3    push       0
 005B54C5    push       0
 005B54C7    push       0
 005B54C9    lea        eax,[ebp-64]
 005B54CC    push       eax
 005B54CD    lea        edx,[ebp-4C]
 005B54D0    mov        ecx,1
 005B54D5    mov        eax,dword ptr [ebp-4]
 005B54D8    call       DrawButtonFace
 005B54DD    dec        dword ptr [ebp-4C]
 005B54E0    dec        dword ptr [ebp-48]
 005B54E3    mov        edx,dword ptr [ebp-48]
 005B54E6    mov        eax,esi
 005B54E8    call       005AAE4C
 005B54ED    fadd       qword ptr [ebp-30]
 005B54F0    fstp       qword ptr [edi+0F0]; TRaveBand.?fF0:?Double
 005B54F6    wait
 005B54F7    mov        edx,dword ptr [ebp-40]
 005B54FA    mov        eax,esi
 005B54FC    call       005AAE4C
 005B5501    fadd       qword ptr [ebp-30]
 005B5504    fstp       qword ptr [edi+0F8]; TRaveBand.?fF8:?Double
 005B550A    wait
 005B550B    cmp        byte ptr [ebp-22],0
>005B550F    jne        005B551E
 005B5511    cmp        byte ptr [edi+128],0; TRaveBand.DesignerHide:Boolean
>005B5518    jne        005B559F
 005B551E    mov        eax,dword ptr [ebp-4]
 005B5521    mov        eax,dword ptr [eax+10]
 005B5524    mov        edx,1
 005B5529    call       TPen.SetWidth
 005B552E    mov        eax,dword ptr [ebp-4]
 005B5531    mov        eax,dword ptr [eax+10]
 005B5534    mov        dl,2
 005B5536    call       TPen.SetStyle
 005B553B    mov        eax,0C0C0C0
 005B5540    call       005A54B0
 005B5545    mov        edx,eax
 005B5547    mov        eax,dword ptr [ebp-4]
 005B554A    mov        eax,dword ptr [eax+10]
 005B554D    call       TPen.SetColor
 005B5552    mov        eax,dword ptr [ebp-4]
 005B5555    mov        eax,dword ptr [eax+10]
 005B5558    mov        dl,4
 005B555A    call       TPen.SetMode
 005B555F    mov        eax,dword ptr [ebp-4]
 005B5562    mov        eax,dword ptr [eax+14]
 005B5565    xor        edx,edx
 005B5567    call       TBrush.SetStyle
 005B556C    mov        eax,0FFFFFF
 005B5571    call       005A54B0
 005B5576    mov        edx,eax
 005B5578    mov        eax,dword ptr [ebp-4]
 005B557B    mov        eax,dword ptr [eax+14]
 005B557E    call       TBrush.SetColor
 005B5583    mov        ecx,dword ptr [ebp-40]
 005B5586    mov        edx,dword ptr [ebp-4C]
 005B5589    mov        eax,dword ptr [ebp-4]
 005B558C    call       TCanvas.MoveTo
 005B5591    mov        ecx,dword ptr [ebp-40]
 005B5594    mov        edx,dword ptr [ebp-44]
 005B5597    mov        eax,dword ptr [ebp-4]
 005B559A    call       TCanvas.LineTo
 005B559F    mov        dword ptr [ebp-38],ebx
 005B55A2    mov        ebx,dword ptr [ebp-4C]
 005B55A5    add        ebx,5
 005B55A8    mov        eax,dword ptr [ebp-38]
 005B55AB    movzx      eax,byte ptr [eax+10]
 005B55AF    dec        eax
 005B55B0    shl        eax,4
 005B55B3    add        ebx,eax
 005B55B5    mov        eax,dword ptr [ebp-4]
 005B55B8    mov        eax,dword ptr [eax+14]
 005B55BB    xor        edx,edx
 005B55BD    call       TBrush.SetStyle
 005B55C2    mov        eax,dword ptr [ebp-4]
 005B55C5    mov        eax,dword ptr [eax+10]
 005B55C8    mov        edx,1
 005B55CD    call       TPen.SetWidth
 005B55D2    mov        eax,dword ptr [ebp-4]
 005B55D5    mov        eax,dword ptr [eax+10]
 005B55D8    xor        edx,edx
 005B55DA    call       TPen.SetStyle
 005B55DF    mov        eax,dword ptr [ebp-4]
 005B55E2    mov        eax,dword ptr [eax+10]
 005B55E5    mov        dl,4
 005B55E7    call       TPen.SetMode
 005B55EC    mov        eax,dword ptr [ebp-38]
 005B55EF    cmp        dword ptr [eax+14],0
>005B55F3    je         005B5726
 005B55F9    mov        eax,dword ptr [ebp-38]
 005B55FC    mov        eax,dword ptr [eax+8]
 005B55FF    mov        eax,dword ptr [eax*4+61720C]
 005B5606    call       005A54B0
 005B560B    mov        edx,eax
 005B560D    mov        eax,dword ptr [ebp-4]
 005B5610    mov        eax,dword ptr [eax+14]
 005B5613    call       TBrush.SetColor
 005B5618    xor        eax,eax
 005B561A    call       005A54B0
 005B561F    mov        edx,eax
 005B5621    mov        eax,dword ptr [ebp-4]
 005B5624    mov        eax,dword ptr [eax+10]
 005B5627    call       TPen.SetColor
 005B562C    mov        eax,dword ptr [ebp-38]
 005B562F    cmp        byte ptr [eax+4],0
>005B5633    je         005B56AD
 005B5635    lea        ecx,[ebp-54]
 005B5638    mov        edx,dword ptr [ebp-48]
 005B563B    add        edx,3
 005B563E    lea        eax,[ebx+2]
 005B5641    call       Point
 005B5646    mov        eax,dword ptr [ebp-54]
 005B5649    mov        dword ptr [ebp-7C],eax
 005B564C    mov        eax,dword ptr [ebp-50]
 005B564F    mov        dword ptr [ebp-78],eax
 005B5652    lea        ecx,[ebp-84]
 005B5658    mov        edx,dword ptr [ebp-48]
 005B565B    add        edx,3
 005B565E    lea        eax,[ebx+0A]
 005B5661    call       Point
 005B5666    mov        eax,dword ptr [ebp-84]
 005B566C    mov        dword ptr [ebp-74],eax
 005B566F    mov        eax,dword ptr [ebp-80]
 005B5672    mov        dword ptr [ebp-70],eax
 005B5675    lea        ecx,[ebp-8C]
 005B567B    mov        edx,dword ptr [ebp-48]
 005B567E    add        edx,0F
 005B5681    lea        eax,[ebx+6]
 005B5684    call       Point
 005B5689    mov        eax,dword ptr [ebp-8C]
 005B568F    mov        dword ptr [ebp-6C],eax
 005B5692    mov        eax,dword ptr [ebp-88]
 005B5698    mov        dword ptr [ebp-68],eax
 005B569B    lea        edx,[ebp-7C]
 005B569E    mov        ecx,2
 005B56A3    mov        eax,dword ptr [ebp-4]
 005B56A6    call       TCanvas.Polygon
>005B56AB    jmp        005B5723
 005B56AD    lea        ecx,[ebp-54]
 005B56B0    mov        edx,dword ptr [ebp-48]
 005B56B3    add        edx,3
 005B56B6    lea        eax,[ebx+6]
 005B56B9    call       Point
 005B56BE    mov        eax,dword ptr [ebp-54]
 005B56C1    mov        dword ptr [ebp-7C],eax
 005B56C4    mov        eax,dword ptr [ebp-50]
 005B56C7    mov        dword ptr [ebp-78],eax
 005B56CA    lea        ecx,[ebp-84]
 005B56D0    mov        edx,dword ptr [ebp-48]
 005B56D3    add        edx,0F
 005B56D6    lea        eax,[ebx+2]
 005B56D9    call       Point
 005B56DE    mov        eax,dword ptr [ebp-84]
 005B56E4    mov        dword ptr [ebp-74],eax
 005B56E7    mov        eax,dword ptr [ebp-80]
 005B56EA    mov        dword ptr [ebp-70],eax
 005B56ED    lea        ecx,[ebp-8C]
 005B56F3    mov        edx,dword ptr [ebp-48]
 005B56F6    add        edx,0F
 005B56F9    lea        eax,[ebx+0A]
 005B56FC    call       Point
 005B5701    mov        eax,dword ptr [ebp-8C]
 005B5707    mov        dword ptr [ebp-6C],eax
 005B570A    mov        eax,dword ptr [ebp-88]
 005B5710    mov        dword ptr [ebp-68],eax
 005B5713    lea        edx,[ebp-7C]
 005B5716    mov        ecx,2
 005B571B    mov        eax,dword ptr [ebp-4]
 005B571E    call       TCanvas.Polygon
 005B5723    add        ebx,10
 005B5726    mov        eax,dword ptr [ebp-38]
 005B5729    cmp        byte ptr [eax+12],0
>005B572D    je         005B581F
 005B5733    mov        eax,dword ptr [ebp-38]
 005B5736    mov        eax,dword ptr [eax+0C]
 005B5739    mov        eax,dword ptr [eax*4+61720C]
 005B5740    call       005A54B0
 005B5745    mov        edx,eax
 005B5747    mov        eax,dword ptr [ebp-4]
 005B574A    mov        eax,dword ptr [eax+14]
 005B574D    call       TBrush.SetColor
 005B5752    xor        eax,eax
 005B5754    call       005A54B0
 005B5759    mov        edx,eax
 005B575B    mov        eax,dword ptr [ebp-4]
 005B575E    mov        eax,dword ptr [eax+10]
 005B5761    call       TPen.SetColor
 005B5766    lea        ecx,[ebp-54]
 005B5769    mov        edx,dword ptr [ebp-48]
 005B576C    add        edx,3
 005B576F    lea        eax,[ebx+6]
 005B5772    call       Point
 005B5777    mov        eax,dword ptr [ebp-54]
 005B577A    mov        dword ptr [ebp-0AC],eax
 005B5780    mov        eax,dword ptr [ebp-50]
 005B5783    mov        dword ptr [ebp-0A8],eax
 005B5789    lea        ecx,[ebp-84]
 005B578F    mov        edx,dword ptr [ebp-48]
 005B5792    add        edx,9
 005B5795    lea        eax,[ebx+0C]
 005B5798    call       Point
 005B579D    mov        eax,dword ptr [ebp-84]
 005B57A3    mov        dword ptr [ebp-0A4],eax
 005B57A9    mov        eax,dword ptr [ebp-80]
 005B57AC    mov        dword ptr [ebp-0A0],eax
 005B57B2    lea        ecx,[ebp-8C]
 005B57B8    mov        edx,dword ptr [ebp-48]
 005B57BB    add        edx,0F
 005B57BE    lea        eax,[ebx+6]
 005B57C1    call       Point
 005B57C6    mov        eax,dword ptr [ebp-8C]
 005B57CC    mov        dword ptr [ebp-9C],eax
 005B57D2    mov        eax,dword ptr [ebp-88]
 005B57D8    mov        dword ptr [ebp-98],eax
 005B57DE    lea        ecx,[ebp-0B4]
 005B57E4    mov        edx,dword ptr [ebp-48]
 005B57E7    add        edx,9
 005B57EA    mov        eax,ebx
 005B57EC    call       Point
 005B57F1    mov        eax,dword ptr [ebp-0B4]
 005B57F7    mov        dword ptr [ebp-94],eax
 005B57FD    mov        eax,dword ptr [ebp-0B0]
 005B5803    mov        dword ptr [ebp-90],eax
 005B5809    lea        edx,[ebp-0AC]
 005B580F    mov        ecx,3
 005B5814    mov        eax,dword ptr [ebp-4]
 005B5817    call       TCanvas.Polygon
 005B581C    add        ebx,10
 005B581F    mov        eax,dword ptr [ebp-4]
 005B5822    mov        eax,dword ptr [eax+14]
 005B5825    mov        dl,1
 005B5827    call       TBrush.SetStyle
 005B582C    mov        eax,0FF00000F
 005B5831    call       005A54B0
 005B5836    mov        edx,eax
 005B5838    mov        eax,dword ptr [ebp-4]
 005B583B    mov        eax,dword ptr [eax+14]
 005B583E    call       TBrush.SetColor
 005B5843    mov        eax,0FFFFFF
 005B5848    call       005A54B0
 005B584D    mov        edx,eax
 005B584F    mov        eax,dword ptr [ebp-4]
 005B5852    mov        eax,dword ptr [eax+0C]
 005B5855    call       TFont.SetColor
 005B585A    xor        eax,eax
 005B585C    call       005A54B0
 005B5861    mov        edx,eax
 005B5863    mov        eax,dword ptr [ebp-4]
 005B5866    mov        eax,dword ptr [eax+0C]
 005B5869    call       TFont.SetColor
 005B586E    push       dword ptr [esi+8]; TRaveRegion.?f8:TComponentName
 005B5871    push       5B5C4C; ': '
 005B5876    push       dword ptr [edi+8]; TRaveBand.?f8:TComponentName
 005B5879    lea        eax,[ebp-1C]
 005B587C    mov        edx,3
 005B5881    call       @LStrCatN
 005B5886    mov        eax,dword ptr [ebp-1C]
 005B5889    push       eax
 005B588A    mov        ecx,dword ptr [ebp-48]
 005B588D    add        ecx,2
 005B5890    mov        edx,ebx
 005B5892    mov        eax,dword ptr [ebp-4]
 005B5895    call       TCanvas.TextOut
 005B589A    mov        edx,dword ptr [ebp-1C]
 005B589D    mov        eax,dword ptr [ebp-4]
 005B58A0    call       TCanvas.TextWidth
 005B58A5    add        ebx,eax
 005B58A7    add        ebx,5
 005B58AA    mov        eax,dword ptr [ebp-44]
 005B58AD    sub        eax,5
 005B58B0    mov        dword ptr [ebp-0C],eax
 005B58B3    mov        eax,dword ptr [ebp-38]
 005B58B6    mov        eax,dword ptr [eax]
 005B58B8    mov        eax,dword ptr [eax+118]
 005B58BE    mov        dword ptr [ebp-3C],eax
 005B58C1    push       ebp
 005B58C2    mov        eax,dword ptr [ebp-48]
 005B58C5    add        eax,2
 005B58C8    push       eax
 005B58C9    push       ebx
 005B58CA    lea        ecx,[ebp-0C]
 005B58CD    mov        dl,1
 005B58CF    mov        eax,5B5C58; ')'
 005B58D4    call       005B5120
 005B58D9    pop        ecx
 005B58DA    push       ebp
 005B58DB    mov        eax,dword ptr [ebp-48]
 005B58DE    add        eax,2
 005B58E1    push       eax
 005B58E2    push       ebx
 005B58E3    mov        eax,dword ptr [ebp-3C]
 005B58E6    test       byte ptr [eax+5],4
 005B58EA    setne      dl
 005B58ED    lea        ecx,[ebp-0C]
 005B58F0    mov        eax,5B5C64; 'C'
 005B58F5    call       005B5120
 005B58FA    pop        ecx
 005B58FB    push       ebp
 005B58FC    mov        eax,dword ptr [ebp-48]
 005B58FF    add        eax,2
 005B5902    push       eax
 005B5903    push       ebx
 005B5904    mov        eax,dword ptr [ebp-3C]
 005B5907    test       byte ptr [eax+5],2
 005B590B    setne      dl
 005B590E    lea        ecx,[ebp-0C]
 005B5911    mov        eax,5B5C70; 'P'
 005B5916    call       005B5120
 005B591B    pop        ecx
 005B591C    push       ebp
 005B591D    mov        eax,dword ptr [ebp-48]
 005B5920    add        eax,2
 005B5923    push       eax
 005B5924    push       ebx
 005B5925    mov        eax,dword ptr [ebp-3C]
 005B5928    test       byte ptr [eax+5],1
 005B592C    setne      dl
 005B592F    lea        ecx,[ebp-0C]
 005B5932    mov        eax,5B5C7C; '1'
 005B5937    call       005B5120
 005B593C    pop        ecx
 005B593D    push       ebp
 005B593E    mov        eax,dword ptr [ebp-48]
 005B5941    add        eax,2
 005B5944    push       eax
 005B5945    push       ebx
 005B5946    lea        ecx,[ebp-0C]
 005B5949    mov        dl,1
 005B594B    mov        eax,5B5C88; '  '
 005B5950    call       005B5120
 005B5955    pop        ecx
 005B5956    mov        eax,dword ptr [ebp-38]
 005B5959    mov        eax,dword ptr [eax]
 005B595B    cmp        dword ptr [eax+108],0
>005B5962    jne        005B5982
 005B5964    push       ebp
 005B5965    mov        eax,dword ptr [ebp-48]
 005B5968    add        eax,2
 005B596B    push       eax
 005B596C    push       ebx
 005B596D    lea        ecx,[ebp-0C]
 005B5970    mov        dl,1
 005B5972    mov        eax,5B5C94; 'Master '
 005B5977    call       005B5120
 005B597C    pop        ecx
>005B597D    jmp        005B5A69
 005B5982    push       ebp
 005B5983    mov        eax,dword ptr [ebp-48]
 005B5986    add        eax,2
 005B5989    push       eax
 005B598A    push       ebx
 005B598B    mov        eax,dword ptr [ebp-3C]
 005B598E    test       byte ptr [eax+4],80
 005B5992    setne      dl
 005B5995    lea        ecx,[ebp-0C]
 005B5998    mov        eax,5B5CA4; 'b'
 005B599D    call       005B5120
 005B59A2    pop        ecx
 005B59A3    push       ebp
 005B59A4    mov        eax,dword ptr [ebp-48]
 005B59A7    add        eax,2
 005B59AA    push       eax
 005B59AB    push       ebx
 005B59AC    mov        eax,dword ptr [ebp-3C]
 005B59AF    test       byte ptr [eax+4],40
 005B59B3    setne      dl
 005B59B6    lea        ecx,[ebp-0C]
 005B59B9    mov        eax,5B5CB0; 'g'
 005B59BE    call       005B5120
 005B59C3    pop        ecx
 005B59C4    push       ebp
 005B59C5    mov        eax,dword ptr [ebp-48]
 005B59C8    add        eax,2
 005B59CB    push       eax
 005B59CC    push       ebx
 005B59CD    mov        eax,dword ptr [ebp-3C]
 005B59D0    test       byte ptr [eax+4],20
 005B59D4    setne      dl
 005B59D7    lea        ecx,[ebp-0C]
 005B59DA    mov        eax,5B5CBC; 'r'
 005B59DF    call       005B5120
 005B59E4    pop        ecx
 005B59E5    push       ebp
 005B59E6    mov        eax,dword ptr [ebp-48]
 005B59E9    add        eax,2
 005B59EC    push       eax
 005B59ED    push       ebx
 005B59EE    mov        eax,dword ptr [ebp-3C]
 005B59F1    test       byte ptr [eax+4],10
 005B59F5    setne      dl
 005B59F8    lea        ecx,[ebp-0C]
 005B59FB    mov        eax,5B5CC8; 'D'
 005B5A00    call       005B5120
 005B5A05    pop        ecx
 005B5A06    push       ebp
 005B5A07    mov        eax,dword ptr [ebp-48]
 005B5A0A    add        eax,2
 005B5A0D    push       eax
 005B5A0E    push       ebx
 005B5A0F    mov        eax,dword ptr [ebp-3C]
 005B5A12    test       byte ptr [eax+4],4
 005B5A16    setne      dl
 005B5A19    lea        ecx,[ebp-0C]
 005B5A1C    mov        eax,5B5CD4; 'R'
 005B5A21    call       005B5120
 005B5A26    pop        ecx
 005B5A27    push       ebp
 005B5A28    mov        eax,dword ptr [ebp-48]
 005B5A2B    add        eax,2
 005B5A2E    push       eax
 005B5A2F    push       ebx
 005B5A30    mov        eax,dword ptr [ebp-3C]
 005B5A33    test       byte ptr [eax+4],2
 005B5A37    setne      dl
 005B5A3A    lea        ecx,[ebp-0C]
 005B5A3D    mov        eax,5B5CE0; 'G'
 005B5A42    call       005B5120
 005B5A47    pop        ecx
 005B5A48    push       ebp
 005B5A49    mov        eax,dword ptr [ebp-48]
 005B5A4C    add        eax,2
 005B5A4F    push       eax
 005B5A50    push       ebx
 005B5A51    mov        eax,dword ptr [ebp-3C]
 005B5A54    test       byte ptr [eax+4],1
 005B5A58    setne      dl
 005B5A5B    lea        ecx,[ebp-0C]
 005B5A5E    mov        eax,5B5CEC; 'B'
 005B5A63    call       005B5120
 005B5A68    pop        ecx
 005B5A69    push       ebp
 005B5A6A    mov        eax,dword ptr [ebp-48]
 005B5A6D    add        eax,2
 005B5A70    push       eax
 005B5A71    push       ebx
 005B5A72    lea        ecx,[ebp-0C]
 005B5A75    mov        dl,1
 005B5A77    mov        eax,5B5CF8; '('
 005B5A7C    call       005B5120
 005B5A81    pop        ecx
>005B5A82    jmp        005B5AAE
 005B5A84    mov        eax,dword ptr [ebp-48]
 005B5A87    mov        dword ptr [ebp-40],eax
 005B5A8A    xor        eax,eax
 005B5A8C    mov        dword ptr [edi+0F0],eax; TRaveBand.?fF0:?Double
 005B5A92    mov        dword ptr [edi+0F4],0BFF00000; TRaveBand.?fF4:dword
 005B5A9C    xor        eax,eax
 005B5A9E    mov        dword ptr [edi+0F8],eax; TRaveBand.?fF8:?Double
 005B5AA4    mov        dword ptr [edi+0FC],0BFF00000; TRaveBand.?fFC:dword
 005B5AAE    cmp        byte ptr [ebp-22],0
>005B5AB2    jne        005B5AC1
 005B5AB4    cmp        byte ptr [edi+128],0; TRaveBand.DesignerHide:Boolean
>005B5ABB    jne        005B5BE4
 005B5AC1    mov        edx,dword ptr [ebp-40]
 005B5AC4    mov        eax,esi
 005B5AC6    call       005AAE4C
 005B5ACB    fstp       qword ptr [ebp-54]
 005B5ACE    wait
 005B5ACF    mov        eax,esi
 005B5AD1    mov        edx,dword ptr [eax]
 005B5AD3    call       dword ptr [edx+134]; TRaveText.GetTop
 005B5AD9    fsubr      qword ptr [ebp-54]
 005B5ADC    fstp       qword ptr [ebp-18]
 005B5ADF    wait
 005B5AE0    mov        eax,edi
 005B5AE2    mov        edx,dword ptr [eax]
 005B5AE4    call       dword ptr [edx+134]; TRaveText.GetTop
 005B5AEA    fcomp      qword ptr [ebp-18]
 005B5AED    fnstsw     al
 005B5AEF    sahf
>005B5AF0    je         005B5B02
 005B5AF2    push       dword ptr [ebp-14]
 005B5AF5    push       dword ptr [ebp-18]
 005B5AF8    mov        eax,edi
 005B5AFA    mov        edx,dword ptr [eax]
 005B5AFC    call       dword ptr [edx+138]; TRaveText.SetTop
 005B5B02    mov        eax,edi
 005B5B04    mov        edx,dword ptr [eax]
 005B5B06    call       dword ptr [edx+68]; TRaveBand.sub_005A9770
 005B5B09    add        esp,0FFFFFFF8
 005B5B0C    fstp       qword ptr [esp]
 005B5B0F    wait
 005B5B10    mov        eax,esi
 005B5B12    call       005AAE30
 005B5B17    mov        ebx,eax
 005B5B19    mov        dword ptr [ebp-48],ebx
 005B5B1C    mov        eax,dword ptr [ebp-4]
 005B5B1F    mov        eax,dword ptr [eax+10]
 005B5B22    mov        edx,1
 005B5B27    call       TPen.SetWidth
 005B5B2C    mov        eax,dword ptr [ebp-4]
 005B5B2F    mov        eax,dword ptr [eax+10]
 005B5B32    mov        dl,2
 005B5B34    call       TPen.SetStyle
 005B5B39    mov        eax,0C0C0C0
 005B5B3E    call       005A54B0
 005B5B43    mov        edx,eax
 005B5B45    mov        eax,dword ptr [ebp-4]
 005B5B48    mov        eax,dword ptr [eax+10]
 005B5B4B    call       TPen.SetColor
 005B5B50    mov        eax,dword ptr [ebp-4]
 005B5B53    mov        eax,dword ptr [eax+10]
 005B5B56    mov        dl,4
 005B5B58    call       TPen.SetMode
 005B5B5D    mov        eax,dword ptr [ebp-4]
 005B5B60    mov        eax,dword ptr [eax+14]
 005B5B63    xor        edx,edx
 005B5B65    call       TBrush.SetStyle
 005B5B6A    mov        eax,0FFFFFF
 005B5B6F    call       005A54B0
 005B5B74    mov        edx,eax
 005B5B76    mov        eax,dword ptr [ebp-4]
 005B5B79    mov        eax,dword ptr [eax+14]
 005B5B7C    call       TBrush.SetColor
 005B5B81    mov        ecx,dword ptr [ebp-40]
 005B5B84    inc        ecx
 005B5B85    mov        edx,dword ptr [ebp-4C]
 005B5B88    mov        eax,dword ptr [ebp-4]
 005B5B8B    call       TCanvas.MoveTo
 005B5B90    mov        ecx,ebx
 005B5B92    mov        edx,dword ptr [ebp-4C]
 005B5B95    mov        eax,dword ptr [ebp-4]
 005B5B98    call       TCanvas.LineTo
 005B5B9D    mov        ecx,dword ptr [ebp-40]
 005B5BA0    inc        ecx
 005B5BA1    mov        edx,dword ptr [ebp-44]
 005B5BA4    dec        edx
 005B5BA5    mov        eax,dword ptr [ebp-4]
 005B5BA8    call       TCanvas.MoveTo
 005B5BAD    mov        edx,dword ptr [ebp-44]
 005B5BB0    dec        edx
 005B5BB1    mov        ecx,ebx
 005B5BB3    mov        eax,dword ptr [ebp-4]
 005B5BB6    call       TCanvas.LineTo
 005B5BBB    mov        ecx,ebx
 005B5BBD    mov        edx,dword ptr [ebp-4C]
 005B5BC0    mov        eax,dword ptr [ebp-4]
 005B5BC3    call       TCanvas.MoveTo
 005B5BC8    mov        ecx,ebx
 005B5BCA    mov        edx,dword ptr [ebp-44]
 005B5BCD    mov        eax,dword ptr [ebp-4]
 005B5BD0    call       TCanvas.LineTo
 005B5BD5    mov        edx,dword ptr [ebp-4]
 005B5BD8    mov        eax,edi
 005B5BDA    mov        ecx,dword ptr [eax]
 005B5BDC    call       dword ptr [ecx+164]; TRaveBand.sub_005AAD14
>005B5BE2    jmp        005B5BEA
 005B5BE4    mov        eax,dword ptr [ebp-40]
 005B5BE7    mov        dword ptr [ebp-48],eax
 005B5BEA    inc        dword ptr [ebp-8]
 005B5BED    dec        dword ptr [ebp-34]
<005B5BF0    jne        005B535E
 005B5BF6    mov        ecx,dword ptr [ebp-10]
 005B5BF9    mov        edx,dword ptr [ebp-4]
 005B5BFC    mov        eax,esi
 005B5BFE    call       005AA16C
 005B5C03    mov        eax,dword ptr [ebp-20]
 005B5C06    call       005B4CA4
 005B5C0B    xor        eax,eax
 005B5C0D    pop        edx
 005B5C0E    pop        ecx
 005B5C0F    pop        ecx
 005B5C10    mov        dword ptr fs:[eax],edx
 005B5C13    push       5B5C28
 005B5C18    lea        eax,[ebp-1C]
 005B5C1B    call       @LStrClr
 005B5C20    ret
<005B5C21    jmp        @HandleFinally
<005B5C26    jmp        005B5C18
 005B5C28    pop        edi
 005B5C29    pop        esi
 005B5C2A    pop        ebx
 005B5C2B    mov        esp,ebp
 005B5C2D    pop        ebp
 005B5C2E    ret
*}
//end;

//005B5CFC
//procedure sub_005B5CFC(?:?);
//begin
{*
 005B5CFC    push       ebx
 005B5CFD    push       esi
 005B5CFE    push       edi
 005B5CFF    push       ebp
 005B5D00    add        esp,0FFFFFFE4
 005B5D03    mov        esi,edx
 005B5D05    mov        ebx,eax
 005B5D07    xor        eax,eax
 005B5D09    call       005A54B0
 005B5D0E    mov        edx,eax
 005B5D10    mov        eax,dword ptr [esi+10]
 005B5D13    call       TPen.SetColor
 005B5D18    xor        edx,edx
 005B5D1A    mov        eax,dword ptr [esi+10]
 005B5D1D    call       TPen.SetStyle
 005B5D22    mov        dl,4
 005B5D24    mov        eax,dword ptr [esi+10]
 005B5D27    call       TPen.SetMode
 005B5D2C    mov        edx,1
 005B5D31    mov        eax,dword ptr [esi+10]
 005B5D34    call       TPen.SetWidth
 005B5D39    mov        eax,808080
 005B5D3E    call       005A54B0
 005B5D43    mov        edx,eax
 005B5D45    mov        eax,dword ptr [esi+14]
 005B5D48    call       TBrush.SetColor
 005B5D4D    xor        edx,edx
 005B5D4F    mov        eax,dword ptr [esi+14]
 005B5D52    call       TBrush.SetStyle
 005B5D57    mov        eax,ebx
 005B5D59    mov        edx,dword ptr [eax]
 005B5D5B    call       dword ptr [edx+64]; TRaveRegion.sub_005A9744
 005B5D5E    add        esp,0FFFFFFF8
 005B5D61    fstp       qword ptr [esp]
 005B5D64    wait
 005B5D65    mov        eax,ebx
 005B5D67    call       005AAE14
 005B5D6C    inc        eax
 005B5D6D    push       eax
 005B5D6E    mov        eax,ebx
 005B5D70    mov        edx,dword ptr [eax]
 005B5D72    call       dword ptr [edx+68]; TRaveRegion.sub_005A9770
 005B5D75    add        esp,0FFFFFFF8
 005B5D78    fstp       qword ptr [esp]
 005B5D7B    wait
 005B5D7C    mov        eax,ebx
 005B5D7E    call       005AAE30
 005B5D83    inc        eax
 005B5D84    push       eax
 005B5D85    mov        eax,ebx
 005B5D87    mov        edx,dword ptr [eax]
 005B5D89    call       dword ptr [edx+60]; TRaveRegion.sub_005A970C
 005B5D8C    add        esp,0FFFFFFF8
 005B5D8F    fstp       qword ptr [esp]
 005B5D92    wait
 005B5D93    mov        eax,ebx
 005B5D95    call       005AAE30
 005B5D9A    push       eax
 005B5D9B    mov        eax,ebx
 005B5D9D    mov        edx,dword ptr [eax]
 005B5D9F    call       dword ptr [edx+5C]; TRaveRegion.sub_005A96D4
 005B5DA2    add        esp,0FFFFFFF8
 005B5DA5    fstp       qword ptr [esp]
 005B5DA8    wait
 005B5DA9    mov        eax,ebx
 005B5DAB    call       005AAE14
 005B5DB0    mov        edx,eax
 005B5DB2    mov        eax,esi
 005B5DB4    pop        ecx
 005B5DB5    call       TCanvas.Rectangle
 005B5DBA    mov        edx,5B5FBC; 'Arial'
 005B5DBF    mov        eax,dword ptr [esi+0C]
 005B5DC2    call       TFont.SetName
 005B5DC7    mov        edx,8
 005B5DCC    mov        eax,dword ptr [esi+0C]
 005B5DCF    call       TFont.SetSize
 005B5DD4    mov        eax,0FFFFFF
 005B5DD9    call       005A54B0
 005B5DDE    mov        edx,eax
 005B5DE0    mov        eax,dword ptr [esi+0C]
 005B5DE3    call       TFont.SetColor
 005B5DE8    mov        dl,byte ptr ds:[5B5FC4]; 0x1
 005B5DEE    mov        eax,dword ptr [esi+0C]
 005B5DF1    call       TFont.SetStyle
 005B5DF6    mov        eax,dword ptr [ebx+8]; TRaveRegion.?f8:TComponentName
 005B5DF9    push       eax
 005B5DFA    mov        eax,ebx
 005B5DFC    mov        edx,dword ptr [eax]
 005B5DFE    call       dword ptr [edx+68]; TRaveRegion.sub_005A9770
 005B5E01    add        esp,0FFFFFFF8
 005B5E04    fstp       qword ptr [esp]
 005B5E07    wait
 005B5E08    mov        eax,ebx
 005B5E0A    call       005AAE30
 005B5E0F    mov        edi,eax
 005B5E11    mov        eax,dword ptr [esi+0C]
 005B5E14    call       TFont.GetHeight
 005B5E19    cdq
 005B5E1A    xor        eax,edx
 005B5E1C    sub        eax,edx
 005B5E1E    add        eax,5
 005B5E21    sub        edi,eax
 005B5E23    push       edi
 005B5E24    mov        eax,ebx
 005B5E26    mov        edx,dword ptr [eax]
 005B5E28    call       dword ptr [edx+64]; TRaveRegion.sub_005A9744
 005B5E2B    add        esp,0FFFFFFF8
 005B5E2E    fstp       qword ptr [esp]
 005B5E31    wait
 005B5E32    mov        eax,ebx
 005B5E34    call       005AAE14
 005B5E39    push       eax
 005B5E3A    mov        edx,dword ptr [ebx+8]; TRaveRegion.?f8:TComponentName
 005B5E3D    mov        eax,esi
 005B5E3F    call       TCanvas.TextWidth
 005B5E44    add        eax,3
 005B5E47    pop        edx
 005B5E48    sub        edx,eax
 005B5E4A    mov        eax,esi
 005B5E4C    pop        ecx
 005B5E4D    call       TCanvas.TextOut
 005B5E52    cmp        dword ptr [ebx+128],1; TRaveRegion.Columns:Integer
>005B5E59    jle        005B5FAA
 005B5E5F    mov        dl,7
 005B5E61    mov        eax,dword ptr [esi+14]
 005B5E64    call       TBrush.SetStyle
 005B5E69    xor        eax,eax
 005B5E6B    call       005A54B0
 005B5E70    mov        edx,eax
 005B5E72    mov        eax,dword ptr [esi+14]
 005B5E75    call       TBrush.SetColor
 005B5E7A    mov        edi,dword ptr [ebx+128]; TRaveRegion.Columns:Integer
 005B5E80    dec        edi
 005B5E81    test       edi,edi
>005B5E83    jle        005B5FAA
 005B5E89    mov        ebp,1
 005B5E8E    fld        qword ptr [ebx+130]; TRaveRegion.ColumnSpacing:TRaveUnits
 005B5E94    fcomp      dword ptr ds:[5B5FC8]; 0:Single
 005B5E9A    fnstsw     al
 005B5E9C    sahf
>005B5E9D    jne        005B5F18
 005B5E9F    mov        eax,ebx
 005B5EA1    mov        edx,dword ptr [eax]
 005B5EA3    call       dword ptr [edx+5C]; TRaveRegion.sub_005A96D4
 005B5EA6    fstp       qword ptr [esp+10]
 005B5EAA    wait
 005B5EAB    mov        eax,ebx
 005B5EAD    call       005B4E5C
 005B5EB2    mov        dword ptr [esp+18],ebp
 005B5EB6    fild       dword ptr [esp+18]
 005B5EBA    fmulp      st(1),st
 005B5EBC    fadd       qword ptr [esp+10]
 005B5EC0    add        esp,0FFFFFFF8
 005B5EC3    fstp       qword ptr [esp]
 005B5EC6    wait
 005B5EC7    mov        eax,ebx
 005B5EC9    call       005AAE14
 005B5ECE    mov        dword ptr [esp],eax
 005B5ED1    mov        eax,ebx
 005B5ED3    mov        edx,dword ptr [eax]
 005B5ED5    call       dword ptr [edx+60]; TRaveRegion.sub_005A970C
 005B5ED8    add        esp,0FFFFFFF8
 005B5EDB    fstp       qword ptr [esp]
 005B5EDE    wait
 005B5EDF    mov        eax,ebx
 005B5EE1    call       005AAE30
 005B5EE6    mov        ecx,eax
 005B5EE8    mov        edx,dword ptr [esp]
 005B5EEB    mov        eax,esi
 005B5EED    call       TCanvas.MoveTo
 005B5EF2    mov        eax,ebx
 005B5EF4    mov        edx,dword ptr [eax]
 005B5EF6    call       dword ptr [edx+68]; TRaveRegion.sub_005A9770
 005B5EF9    add        esp,0FFFFFFF8
 005B5EFC    fstp       qword ptr [esp]
 005B5EFF    wait
 005B5F00    mov        eax,ebx
 005B5F02    call       005AAE30
 005B5F07    mov        ecx,eax
 005B5F09    mov        edx,dword ptr [esp]
 005B5F0C    mov        eax,esi
 005B5F0E    call       TCanvas.LineTo
>005B5F13    jmp        005B5FA2
 005B5F18    mov        eax,ebx
 005B5F1A    mov        edx,dword ptr [eax]
 005B5F1C    call       dword ptr [edx+5C]; TRaveRegion.sub_005A96D4
 005B5F1F    fstp       qword ptr [esp+10]
 005B5F23    wait
 005B5F24    mov        eax,ebx
 005B5F26    call       005B4E5C
 005B5F2B    fadd       qword ptr [ebx+130]; TRaveRegion.ColumnSpacing:TRaveUnits
 005B5F31    mov        dword ptr [esp+18],ebp
 005B5F35    fild       dword ptr [esp+18]
 005B5F39    fmulp      st(1),st
 005B5F3B    fadd       qword ptr [esp+10]
 005B5F3F    fstp       qword ptr [esp+8]
 005B5F43    wait
 005B5F44    push       dword ptr [esp+0C]
 005B5F48    push       dword ptr [esp+0C]
 005B5F4C    mov        eax,ebx
 005B5F4E    call       005AAE14
 005B5F53    push       eax
 005B5F54    mov        eax,ebx
 005B5F56    mov        edx,dword ptr [eax]
 005B5F58    call       dword ptr [edx+68]; TRaveRegion.sub_005A9770
 005B5F5B    add        esp,0FFFFFFF8
 005B5F5E    fstp       qword ptr [esp]
 005B5F61    wait
 005B5F62    mov        eax,ebx
 005B5F64    call       005AAE30
 005B5F69    push       eax
 005B5F6A    mov        eax,ebx
 005B5F6C    mov        edx,dword ptr [eax]
 005B5F6E    call       dword ptr [edx+60]; TRaveRegion.sub_005A970C
 005B5F71    add        esp,0FFFFFFF8
 005B5F74    fstp       qword ptr [esp]
 005B5F77    wait
 005B5F78    mov        eax,ebx
 005B5F7A    call       005AAE30
 005B5F7F    push       eax
 005B5F80    fld        qword ptr [esp+14]
 005B5F84    fsub       qword ptr [ebx+130]; TRaveRegion.ColumnSpacing:TRaveUnits
 005B5F8A    add        esp,0FFFFFFF8
 005B5F8D    fstp       qword ptr [esp]
 005B5F90    wait
 005B5F91    mov        eax,ebx
 005B5F93    call       005AAE14
 005B5F98    mov        edx,eax
 005B5F9A    mov        eax,esi
 005B5F9C    pop        ecx
 005B5F9D    call       TCanvas.Rectangle
 005B5FA2    inc        ebp
 005B5FA3    dec        edi
<005B5FA4    jne        005B5E8E
 005B5FAA    add        esp,1C
 005B5FAD    pop        ebp
 005B5FAE    pop        edi
 005B5FAF    pop        esi
 005B5FB0    pop        ebx
 005B5FB1    ret
*}
//end;

//005B5FCC
//procedure sub_005B5FCC(?:TRaveRegion; ?:?; ?:?; ?:?);
//begin
{*
 005B5FCC    push       ebp
 005B5FCD    mov        ebp,esp
 005B5FCF    push       ecx
 005B5FD0    push       ebx
 005B5FD1    push       esi
 005B5FD2    push       edi
 005B5FD3    mov        dword ptr [ebp-4],ecx
 005B5FD6    mov        edi,edx
 005B5FD8    mov        esi,eax
 005B5FDA    mov        al,byte ptr [ebp+8]
 005B5FDD    mov        byte ptr [esi+120],al; TRaveRegion.?f120:byte
 005B5FE3    push       eax
 005B5FE4    lea        edx,[esi+108]; TRaveRegion.?f108:dword
 005B5FEA    mov        ecx,dword ptr [ebp-4]
 005B5FED    mov        eax,esi
 005B5FEF    call       005B4FA0
 005B5FF4    mov        ebx,eax
 005B5FF6    test       ebx,ebx
>005B5FF8    je         005B6066
 005B5FFA    cmp        dword ptr [ebx+108],0
>005B6001    jne        005B600A
 005B6003    mov        byte ptr [esi+120],4; TRaveRegion.?f120:byte
 005B600A    mov        eax,ebx
 005B600C    mov        edx,dword ptr ds:[5B41E4]; TRaveIterateBand
 005B6012    call       @IsClass
 005B6017    test       al,al
>005B6019    je         005B6037
 005B601B    mov        eax,esi
 005B601D    call       005B4EE4
 005B6022    mov        edx,edi
 005B6024    mov        eax,ebx
 005B6026    mov        ecx,dword ptr [eax]
 005B6028    call       dword ptr [ecx+0BC]
 005B602E    mov        eax,esi
 005B6030    call       005B4F38
>005B6035    jmp        005B6043
 005B6037    mov        edx,edi
 005B6039    mov        eax,ebx
 005B603B    mov        ecx,dword ptr [eax]
 005B603D    call       dword ptr [ecx+0BC]
 005B6043    mov        byte ptr [esi+11F],0; TRaveRegion.?f11F:byte
 005B604A    cmp        byte ptr [esi+11D],0; TRaveRegion.?f11D:byte
>005B6051    jne        005B6066
 005B6053    lea        edx,[esi+108]; TRaveRegion.?f108:dword
 005B6059    mov        eax,esi
 005B605B    call       005B4FFC
 005B6060    mov        ebx,eax
 005B6062    test       ebx,ebx
<005B6064    jne        005B5FFA
 005B6066    pop        edi
 005B6067    pop        esi
 005B6068    pop        ebx
 005B6069    pop        ecx
 005B606A    pop        ebp
 005B606B    ret        4
*}
//end;

//005B6070
//procedure sub_005B6070(?:?);
//begin
{*
 005B6070    push       ebx
 005B6071    push       esi
 005B6072    push       edi
 005B6073    push       ebp
 005B6074    mov        ebp,edx
 005B6076    mov        ebx,eax
 005B6078    mov        eax,ebx
 005B607A    mov        edx,dword ptr [eax]
 005B607C    call       dword ptr [edx+0B8]; TRaveRegion.sub_005AAA88
 005B6082    test       al,al
>005B6084    je         005B614D
 005B608A    mov        byte ptr [ebx+11F],1; TRaveRegion.?f11F:byte
 005B6091    mov        eax,ebx
 005B6093    mov        edx,dword ptr [eax]
 005B6095    call       dword ptr [edx+54]; TRaveRegion.sub_005AAF80
 005B6098    mov        edi,eax
 005B609A    dec        edi
 005B609B    test       edi,edi
>005B609D    jl         005B60E5
 005B609F    inc        edi
 005B60A0    xor        esi,esi
 005B60A2    mov        edx,esi
 005B60A4    mov        eax,ebx
 005B60A6    mov        ecx,dword ptr [eax]
 005B60A8    call       dword ptr [ecx+50]; TRaveRegion.sub_005AAF94
 005B60AB    mov        byte ptr [eax+104],0
 005B60B2    mov        edx,esi
 005B60B4    mov        eax,ebx
 005B60B6    mov        ecx,dword ptr [eax]
 005B60B8    call       dword ptr [ecx+50]; TRaveRegion.sub_005AAF94
 005B60BB    mov        edx,dword ptr ds:[5B41E4]; TRaveIterateBand
 005B60C1    call       @IsClass
 005B60C6    test       al,al
>005B60C8    je         005B60E1
 005B60CA    mov        edx,esi
 005B60CC    mov        eax,ebx
 005B60CE    mov        ecx,dword ptr [eax]
 005B60D0    call       dword ptr [ecx+50]; TRaveRegion.sub_005AAF94
 005B60D3    xor        edx,edx
 005B60D5    mov        dword ptr [eax+188],edx
 005B60DB    mov        dword ptr [eax+18C],edx
 005B60E1    inc        esi
 005B60E2    dec        edi
<005B60E3    jne        005B60A2
 005B60E5    mov        edi,dword ptr [ebx+128]; TRaveRegion.Columns:Integer
 005B60EB    test       edi,edi
>005B60ED    jle        005B6143
 005B60EF    mov        esi,1
 005B60F4    mov        dword ptr [ebx+124],esi; TRaveRegion.?f124:dword
 005B60FA    mov        byte ptr [ebx+11D],0; TRaveRegion.?f11D:byte
 005B6101    xor        eax,eax
 005B6103    mov        dword ptr [ebx+0F8],eax; TRaveRegion.?fF8:dword
 005B6109    mov        dword ptr [ebx+0FC],eax; TRaveRegion.?fFC:dword
 005B610F    push       4
 005B6111    xor        ecx,ecx
 005B6113    mov        edx,ebp
 005B6115    mov        eax,ebx
 005B6117    call       005B5FCC
 005B611C    cmp        byte ptr [ebx+11D],0; TRaveRegion.?f11D:byte
>005B6123    je         005B6143
 005B6125    cmp        esi,dword ptr [ebx+128]; TRaveRegion.Columns:Integer
>005B612B    jge        005B6136
 005B612D    mov        byte ptr [ebx+121],2; TRaveRegion.?f121:byte
>005B6134    jmp        005B613F
 005B6136    mov        byte ptr [ebx+121],1; TRaveRegion.?f121:byte
>005B613D    jmp        005B6143
 005B613F    inc        esi
 005B6140    dec        edi
<005B6141    jne        005B60F4
 005B6143    mov        dword ptr [ebx+124],1; TRaveRegion.?f124:dword
 005B614D    pop        ebp
 005B614E    pop        edi
 005B614F    pop        esi
 005B6150    pop        ebx
 005B6151    ret
*}
//end;

//005B6154
//constructor TRaveBandStyle.Create(?:TRaveBandStyle; _Dv__:Boolean);
//begin
{*
 005B6154    push       ebx
 005B6155    push       esi
 005B6156    test       dl,dl
>005B6158    je         005B6162
 005B615A    add        esp,0FFFFFFF0
 005B615D    call       @ClassCreate
 005B6162    mov        ebx,edx
 005B6164    mov        esi,eax
 005B6166    xor        edx,edx
 005B6168    mov        eax,esi
 005B616A    call       TObject.Create
 005B616F    mov        al,[005B619C]; 0x0
 005B6174    mov        byte ptr [esi+4],al; TRaveBandStyle.PrintLoc:TBandPrintLocSet
 005B6177    mov        al,[005B61A0]; 0x1
 005B617C    mov        byte ptr [esi+5],al; TRaveBandStyle.PrintOcc:TBandPrintOccSet
 005B617F    mov        eax,esi
 005B6181    test       bl,bl
>005B6183    je         005B6194
 005B6185    call       @AfterConstruction
 005B618A    pop        dword ptr fs:[0]
 005B6191    add        esp,0C
 005B6194    mov        eax,esi
 005B6196    pop        esi
 005B6197    pop        ebx
 005B6198    ret
*}
//end;

//005B61A4
procedure TRaveBandStyle.AssignTo(Dest:TPersistent);
begin
{*
 005B61A4    push       ebx
 005B61A5    push       esi
 005B61A6    mov        esi,edx
 005B61A8    mov        ebx,eax
 005B61AA    mov        eax,esi
 005B61AC    mov        edx,dword ptr ds:[5B3A08]; TRaveBandStyle
 005B61B2    call       @IsClass
 005B61B7    test       al,al
>005B61B9    je         005B61CC
 005B61BB    mov        eax,esi
 005B61BD    mov        dl,byte ptr [ebx+4]; TRaveBandStyle.PrintLoc:TBandPrintLocSet
 005B61C0    mov        byte ptr [eax+4],dl
 005B61C3    mov        dl,byte ptr [ebx+5]; TRaveBandStyle.PrintOcc:TBandPrintOccSet
 005B61C6    mov        byte ptr [eax+5],dl
 005B61C9    pop        esi
 005B61CA    pop        ebx
 005B61CB    ret
 005B61CC    mov        edx,esi
 005B61CE    mov        eax,ebx
 005B61D0    call       TPersistent.AssignTo
 005B61D5    pop        esi
 005B61D6    pop        ebx
 005B61D7    ret
*}
end;

//005B61D8
constructor TRaveBand.Create(AOwner:TComponent);
begin
{*
 005B61D8    push       ebx
 005B61D9    push       esi
 005B61DA    test       dl,dl
>005B61DC    je         005B61E6
 005B61DE    add        esp,0FFFFFFF0
 005B61E1    call       @ClassCreate
 005B61E6    mov        ebx,edx
 005B61E8    mov        esi,eax
 005B61EA    xor        edx,edx
 005B61EC    mov        eax,esi
 005B61EE    call       TRaveContainerControl.Create
 005B61F3    mov        al,byte ptr [esi+30]; TRaveBand.?f30:byte
 005B61F6    or         al,byte ptr ds:[5B6254]; 0x1
 005B61FC    mov        byte ptr [esi+30],al; TRaveBand.?f30:byte
 005B61FF    mov        byte ptr [esi+0E1],3; TRaveBand.Anchor:TRaveAnchor
 005B6206    push       3FC99999
 005B620B    push       9999999A
 005B6210    mov        eax,esi
 005B6212    mov        edx,dword ptr [eax]
 005B6214    call       dword ptr [edx+148]; TRaveSection.SetHeight
 005B621A    mov        dl,1
 005B621C    mov        eax,[005B3A08]; TRaveBandStyle
 005B6221    call       TRaveBandStyle.Create; TRaveBandStyle.Create
 005B6226    mov        dword ptr [esi+118],eax; TRaveBand.BandStyle:TRaveBandStyle
 005B622C    mov        al,[005B6258]; 0xFF
 005B6231    mov        byte ptr [esi+124],al; TRaveBand.ReprintLocs:TBandPrintLocSet
 005B6237    mov        eax,esi
 005B6239    test       bl,bl
>005B623B    je         005B624C
 005B623D    call       @AfterConstruction
 005B6242    pop        dword ptr fs:[0]
 005B6249    add        esp,0C
 005B624C    mov        eax,esi
 005B624E    pop        esi
 005B624F    pop        ebx
 005B6250    ret
*}
end;

//005B625C
destructor TRaveBand.Destroy;
begin
{*
 005B625C    push       ebx
 005B625D    push       esi
 005B625E    call       @BeforeDestruction
 005B6263    mov        ebx,edx
 005B6265    mov        esi,eax
 005B6267    lea        eax,[esi+118]; TRaveBand.BandStyle:TRaveBandStyle
 005B626D    call       FreeAndNil
 005B6272    mov        edx,ebx
 005B6274    and        dl,0FC
 005B6277    mov        eax,esi
 005B6279    call       TRaveControl.Destroy
 005B627E    test       bl,bl
>005B6280    jle        005B6289
 005B6282    mov        eax,esi
 005B6284    call       @ClassDestroy
 005B6289    pop        esi
 005B628A    pop        ebx
 005B628B    ret
*}
end;

//005B628C
//procedure sub_005B628C(?:?; ?:?);
//begin
{*
 005B628C    push       ebx
 005B628D    push       esi
 005B628E    push       edi
 005B628F    mov        edi,ecx
 005B6291    mov        esi,edx
 005B6293    mov        ebx,eax
 005B6295    mov        ecx,edi
 005B6297    mov        edx,esi
 005B6299    mov        eax,ebx
 005B629B    call       005A8E1C
 005B62A0    mov        eax,dword ptr [ebx+108]; TRaveBand.ControllerBand:TRaveIterateBand
 005B62A6    test       eax,eax
>005B62A8    je         005B62C4
 005B62AA    cmp        esi,eax
>005B62AC    jne        005B62C4
 005B62AE    mov        eax,edi
 005B62B0    mov        edx,dword ptr ds:[5B41E4]; TRaveIterateBand
 005B62B6    call       @AsClass
 005B62BB    mov        edx,eax
 005B62BD    mov        eax,ebx
 005B62BF    call       TRaveBand.SetControllerBand
 005B62C4    mov        eax,dword ptr [ebx+11C]; TRaveBand.GroupDataView:TRaveBaseDataView
 005B62CA    test       eax,eax
>005B62CC    je         005B62E5
 005B62CE    cmp        esi,eax
>005B62D0    jne        005B62E5
 005B62D2    mov        eax,edi
 005B62D4    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005B62DA    call       @AsClass
 005B62DF    mov        dword ptr [ebx+11C],eax; TRaveBand.GroupDataView:TRaveBaseDataView
 005B62E5    pop        edi
 005B62E6    pop        esi
 005B62E7    pop        ebx
 005B62E8    ret
*}
//end;

//005B62EC
//procedure TRaveBand.SetDesignerHide(Self:TRaveBand; ?:?);
//begin
{*
 005B62EC    cmp        dl,byte ptr [eax+128]; TRaveBand.DesignerHide:Boolean
>005B62F2    je         005B62FF
 005B62F4    mov        byte ptr [eax+128],dl; TRaveBand.DesignerHide:Boolean
 005B62FA    call       005A8540
 005B62FF    ret
*}
//end;

//005B6300
//procedure sub_005B6300(?:?);
//begin
{*
 005B6300    mov        eax,edx
 005B6302    mov        edx,dword ptr ds:[5B3AE0]; TRaveRegion
 005B6308    call       TObject.InheritsFrom
 005B630D    ret
*}
//end;

//005B6310
procedure sub_005B6310();
begin
{*
 005B6310    call       005A89FC
 005B6315    ret
*}
end;

//005B6318
procedure TRaveBand.SetName(NewName:TComponentName);
begin
{*
 005B6318    push       ebx
 005B6319    mov        ebx,eax
 005B631B    mov        eax,ebx
 005B631D    call       TRaveComponent.SetName
 005B6322    mov        eax,ebx
 005B6324    call       005A8540
 005B6329    pop        ebx
 005B632A    ret
*}
end;

//005B632C
//procedure TRaveBand.SetControllerBand(Self:TRaveBand; ?:TRaveIterateBand);
//begin
{*
 005B632C    push       ebx
 005B632D    push       esi
 005B632E    mov        esi,edx
 005B6330    mov        ebx,eax
 005B6332    test       esi,esi
>005B6334    je         005B633E
 005B6336    mov        eax,dword ptr [esi+38]; TRaveIterateBand.?f38:dword
 005B6339    cmp        eax,dword ptr [ebx+38]; TRaveBand.?f38:dword
>005B633C    jne        005B6369
 005B633E    mov        eax,dword ptr [ebx+108]; TRaveBand.ControllerBand:TRaveIterateBand
 005B6344    test       eax,eax
>005B6346    je         005B634F
 005B6348    mov        edx,ebx
 005B634A    call       005B7204
 005B634F    mov        eax,esi
 005B6351    mov        dword ptr [ebx+108],eax; TRaveBand.ControllerBand:TRaveIterateBand
 005B6357    test       eax,eax
>005B6359    je         005B6362
 005B635B    mov        edx,ebx
 005B635D    call       005B71D0
 005B6362    mov        eax,ebx
 005B6364    call       005A8540
 005B6369    pop        esi
 005B636A    pop        ebx
 005B636B    ret
*}
//end;

//005B636C
procedure TRaveBand.SetBandStyle(Self:TRaveBand);
begin
{*
 005B636C    push       ebx
 005B636D    mov        ebx,eax
 005B636F    mov        eax,dword ptr [ebx+118]; TRaveBand.BandStyle:TRaveBandStyle
 005B6375    mov        ecx,dword ptr [eax]
 005B6377    call       dword ptr [ecx+8]; TPersistent.Assign
 005B637A    mov        eax,ebx
 005B637C    call       005A8540
 005B6381    pop        ebx
 005B6382    ret
*}
end;

//005B6384
//function sub_005B6384(?:TRaveBand):?;
//begin
{*
 005B6384    mov        eax,dword ptr [eax+38]; TRaveBand.?f38:dword
 005B6387    ret
*}
//end;

//005B6388
procedure sub_005B6388;
begin
{*
 005B6388    push       ebx
 005B6389    add        esp,0FFFFFFF8
 005B638C    mov        ebx,eax
 005B638E    mov        eax,ebx
 005B6390    call       005B6384
 005B6395    test       eax,eax
>005B6397    je         005B63AB
 005B6399    mov        eax,ebx
 005B639B    call       005B6384
 005B63A0    call       005B4DF8
 005B63A5    fstp       qword ptr [esp]
 005B63A8    wait
>005B63A9    jmp        005B63B4
 005B63AB    xor        eax,eax
 005B63AD    mov        dword ptr [esp],eax
 005B63B0    mov        dword ptr [esp+4],eax
 005B63B4    fld        qword ptr [esp]
 005B63B7    pop        ecx
 005B63B8    pop        edx
 005B63B9    pop        ebx
 005B63BA    ret
*}
end;

//005B63BC
procedure sub_005B63BC;
begin
{*
 005B63BC    push       ebx
 005B63BD    add        esp,0FFFFFFF8
 005B63C0    mov        ebx,eax
 005B63C2    mov        eax,ebx
 005B63C4    call       005B6384
 005B63C9    test       eax,eax
>005B63CB    je         005B63DF
 005B63CD    mov        eax,ebx
 005B63CF    call       005B6384
 005B63D4    call       005B4E5C
 005B63D9    fstp       qword ptr [esp]
 005B63DC    wait
>005B63DD    jmp        005B63E8
 005B63DF    xor        eax,eax
 005B63E1    mov        dword ptr [esp],eax
 005B63E4    mov        dword ptr [esp+4],eax
 005B63E8    fld        qword ptr [esp]
 005B63EB    pop        ecx
 005B63EC    pop        edx
 005B63ED    pop        ebx
 005B63EE    ret
*}
end;

//005B63F0
//procedure sub_005B63F0(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005B63F0    push       ebp
 005B63F1    mov        ebp,esp
 005B63F3    push       ecx
 005B63F4    push       ebx
 005B63F5    push       esi
 005B63F6    mov        byte ptr [ebp-1],dl
 005B63F9    mov        esi,eax
 005B63FB    cmp        byte ptr [ebp-1],0
>005B63FF    je         005B6464
 005B6401    push       dword ptr [ebp+24]
 005B6404    push       dword ptr [ebp+20]
 005B6407    mov        eax,esi
 005B6409    call       005B6384
 005B640E    call       005B4E28
 005B6413    add        esp,0FFFFFFF8
 005B6416    fstp       qword ptr [esp]
 005B6419    wait
 005B641A    push       dword ptr [ebp+1C]
 005B641D    push       dword ptr [ebp+18]
 005B6420    mov        eax,esi
 005B6422    call       005B6384
 005B6427    call       005B4E28
 005B642C    add        esp,0FFFFFFF8
 005B642F    fstp       qword ptr [esp]
 005B6432    wait
 005B6433    mov        eax,esi
 005B6435    mov        edx,dword ptr [eax]
 005B6437    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005B643D    add        esp,0FFFFFFF8
 005B6440    fstp       qword ptr [esp]
 005B6443    wait
 005B6444    mov        eax,esi
 005B6446    mov        edx,dword ptr [eax]
 005B6448    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005B644E    add        esp,0FFFFFFF8
 005B6451    fstp       qword ptr [esp]
 005B6454    wait
 005B6455    xor        ecx,ecx
 005B6457    mov        dl,byte ptr [ebp-1]
 005B645A    mov        eax,esi
 005B645C    mov        ebx,dword ptr [eax]
 005B645E    call       dword ptr [ebx+128]; TRaveDataBand.sub_005AA7F8
 005B6464    pop        esi
 005B6465    pop        ebx
 005B6466    pop        ecx
 005B6467    pop        ebp
 005B6468    ret        20
*}
//end;

//005B646C
procedure sub_005B646C;
begin
{*
 005B646C    push       ebp
 005B646D    mov        ebp,esp
 005B646F    push       0
 005B6471    push       ebx
 005B6472    push       esi
 005B6473    mov        ebx,eax
 005B6475    xor        eax,eax
 005B6477    push       ebp
 005B6478    push       5B64C8
 005B647D    push       dword ptr fs:[eax]
 005B6480    mov        dword ptr fs:[eax],esp
 005B6483    mov        eax,ebx
 005B6485    mov        edx,dword ptr [eax]
 005B6487    call       dword ptr [edx+184]; TRaveBand.sub_005B659C
 005B648D    test       al,al
>005B648F    je         005B64AB
 005B6491    mov        esi,dword ptr ds:[61B830]
 005B6497    mov        esi,dword ptr [esi]
 005B6499    lea        edx,[ebp-4]
 005B649C    mov        eax,5B64DC; 'SaveState called while already saving.'
 005B64A1    call       esi
 005B64A3    mov        eax,dword ptr [ebp-4]
 005B64A6    call       005998CC
 005B64AB    mov        byte ptr [ebx+125],1; TRaveBand.?f125:byte
 005B64B2    xor        eax,eax
 005B64B4    pop        edx
 005B64B5    pop        ecx
 005B64B6    pop        ecx
 005B64B7    mov        dword ptr fs:[eax],edx
 005B64BA    push       5B64CF
 005B64BF    lea        eax,[ebp-4]
 005B64C2    call       @LStrClr
 005B64C7    ret
<005B64C8    jmp        @HandleFinally
<005B64CD    jmp        005B64BF
 005B64CF    pop        esi
 005B64D0    pop        ebx
 005B64D1    pop        ecx
 005B64D2    pop        ebp
 005B64D3    ret
*}
end;

//005B6504
procedure sub_005B6504;
begin
{*
 005B6504    push       ebp
 005B6505    mov        ebp,esp
 005B6507    push       0
 005B6509    push       ebx
 005B650A    push       esi
 005B650B    mov        ebx,eax
 005B650D    xor        eax,eax
 005B650F    push       ebp
 005B6510    push       5B6560
 005B6515    push       dword ptr fs:[eax]
 005B6518    mov        dword ptr fs:[eax],esp
 005B651B    mov        eax,ebx
 005B651D    mov        edx,dword ptr [eax]
 005B651F    call       dword ptr [edx+184]; TRaveBand.sub_005B659C
 005B6525    test       al,al
>005B6527    jne        005B6543
 005B6529    mov        esi,dword ptr ds:[61B830]
 005B652F    mov        esi,dword ptr [esi]
 005B6531    lea        edx,[ebp-4]
 005B6534    mov        eax,5B6574; 'RestoreState called while not saving.'
 005B6539    call       esi
 005B653B    mov        eax,dword ptr [ebp-4]
 005B653E    call       005998CC
 005B6543    mov        byte ptr [ebx+125],0; TRaveBand.?f125:byte
 005B654A    xor        eax,eax
 005B654C    pop        edx
 005B654D    pop        ecx
 005B654E    pop        ecx
 005B654F    mov        dword ptr fs:[eax],edx
 005B6552    push       5B6567
 005B6557    lea        eax,[ebp-4]
 005B655A    call       @LStrClr
 005B655F    ret
<005B6560    jmp        @HandleFinally
<005B6565    jmp        005B6557
 005B6567    pop        esi
 005B6568    pop        ebx
 005B6569    pop        ecx
 005B656A    pop        ebp
 005B656B    ret
*}
end;

//005B659C
//function sub_005B659C:?;
//begin
{*
 005B659C    mov        dl,byte ptr [eax+125]; TRaveIterateBand.?f125:byte
 005B65A2    test       dl,dl
>005B65A4    jne        005B65BF
 005B65A6    cmp        dword ptr [eax+108],0; TRaveIterateBand.ControllerBand:TRaveIterateBand
>005B65AD    je         005B65BF
 005B65AF    mov        eax,dword ptr [eax+108]; TRaveIterateBand.ControllerBand:TRaveIterateBand
 005B65B5    mov        edx,dword ptr [eax]
 005B65B7    call       dword ptr [edx+184]; TRaveIterateBand.sub_005B659C
 005B65BD    mov        edx,eax
 005B65BF    mov        eax,edx
 005B65C1    ret
*}
//end;

//005B65C4
//procedure sub_005B65C4(?:?);
//begin
{*
 005B65C4    push       ebx
 005B65C5    push       esi
 005B65C6    mov        esi,edx
 005B65C8    mov        ebx,eax
 005B65CA    mov        eax,0FFFFFF
 005B65CF    call       005A54B0
 005B65D4    mov        edx,eax
 005B65D6    mov        eax,dword ptr [esi+10]
 005B65D9    call       TPen.SetColor
 005B65DE    xor        edx,edx
 005B65E0    mov        eax,dword ptr [esi+10]
 005B65E3    call       TPen.SetStyle
 005B65E8    mov        dl,4
 005B65EA    mov        eax,dword ptr [esi+10]
 005B65ED    call       TPen.SetMode
 005B65F2    mov        edx,1
 005B65F7    mov        eax,dword ptr [esi+10]
 005B65FA    call       TPen.SetWidth
 005B65FF    mov        eax,0FFFFFF
 005B6604    call       005A54B0
 005B6609    mov        edx,eax
 005B660B    mov        eax,dword ptr [esi+14]
 005B660E    call       TBrush.SetColor
 005B6613    xor        edx,edx
 005B6615    mov        eax,dword ptr [esi+14]
 005B6618    call       TBrush.SetStyle
 005B661D    mov        eax,ebx
 005B661F    mov        edx,dword ptr [eax]
 005B6621    call       dword ptr [edx+64]; TRaveBand.sub_005A9744
 005B6624    add        esp,0FFFFFFF8
 005B6627    fstp       qword ptr [esp]
 005B662A    wait
 005B662B    mov        eax,ebx
 005B662D    call       005AAE14
 005B6632    push       eax
 005B6633    mov        eax,ebx
 005B6635    mov        edx,dword ptr [eax]
 005B6637    call       dword ptr [edx+68]; TRaveBand.sub_005A9770
 005B663A    add        esp,0FFFFFFF8
 005B663D    fstp       qword ptr [esp]
 005B6640    wait
 005B6641    mov        eax,ebx
 005B6643    call       005AAE30
 005B6648    push       eax
 005B6649    mov        eax,ebx
 005B664B    mov        edx,dword ptr [eax]
 005B664D    call       dword ptr [edx+60]; TRaveBand.sub_005A970C
 005B6650    add        esp,0FFFFFFF8
 005B6653    fstp       qword ptr [esp]
 005B6656    wait
 005B6657    mov        eax,ebx
 005B6659    call       005AAE30
 005B665E    inc        eax
 005B665F    push       eax
 005B6660    mov        eax,ebx
 005B6662    mov        edx,dword ptr [eax]
 005B6664    call       dword ptr [edx+5C]; TRaveBand.sub_005A96D4
 005B6667    add        esp,0FFFFFFF8
 005B666A    fstp       qword ptr [esp]
 005B666D    wait
 005B666E    mov        eax,ebx
 005B6670    call       005AAE14
 005B6675    mov        edx,eax
 005B6677    inc        edx
 005B6678    mov        eax,esi
 005B667A    pop        ecx
 005B667B    call       TCanvas.Rectangle
 005B6680    pop        esi
 005B6681    pop        ebx
 005B6682    ret
*}
//end;

//005B6684
procedure sub_005B6684;
begin
{*
 005B6684    push       ebx
 005B6685    add        esp,0FFFFFFF4
 005B6688    mov        ebx,eax
 005B668A    push       0F9
 005B668C    mov        eax,ebx
 005B668E    mov        edx,dword ptr [eax]
 005B6690    call       dword ptr [edx+13C]; TRaveDataBand.sub_005B7360
 005B6696    fdiv       dword ptr ds:[5B66D4]; 2:Single
 005B669C    fstp       tbyte ptr [esp+4]
 005B66A0    wait
 005B66A1    mov        eax,ebx
 005B66A3    mov        edx,dword ptr [eax]
 005B66A5    call       dword ptr [edx+5C]; TRaveDataBand.sub_005A96D4
 005B66A8    fld        tbyte ptr [esp+4]
 005B66AC    faddp      st(1),st
 005B66AE    add        esp,0FFFFFFF8
 005B66B1    fstp       qword ptr [esp]
 005B66B4    wait
 005B66B5    mov        eax,ebx
 005B66B7    mov        edx,dword ptr [eax]
 005B66B9    call       dword ptr [edx+68]; TRaveDataBand.sub_005A9770
 005B66BC    add        esp,0FFFFFFF8
 005B66BF    fstp       qword ptr [esp]
 005B66C2    wait
 005B66C3    mov        ecx,ebx
 005B66C5    mov        dl,6
 005B66C7    mov        eax,dword ptr [ebx+40]; TRaveDataBand.?f40:TComponent
 005B66CA    call       005ABBD4
 005B66CF    add        esp,0C
 005B66D2    pop        ebx
 005B66D3    ret
*}
end;

//005B66D8
procedure sub_005B66D8;
begin
{*
 005B66D8    push       ebx
 005B66D9    add        esp,0FFFFFFF4
 005B66DC    mov        ebx,eax
 005B66DE    mov        eax,ebx
 005B66E0    mov        edx,dword ptr [eax]
 005B66E2    call       dword ptr [edx+13C]; TRaveDataBand.sub_005B7360
 005B66E8    fdiv       dword ptr ds:[5B6724]; 2:Single
 005B66EE    fstp       tbyte ptr [esp]
 005B66F1    wait
 005B66F2    mov        eax,ebx
 005B66F4    mov        edx,dword ptr [eax]
 005B66F6    call       dword ptr [edx+5C]; TRaveDataBand.sub_005A96D4
 005B66F9    fld        tbyte ptr [esp]
 005B66FC    faddp      st(1),st
 005B66FE    add        esp,0FFFFFFF8
 005B6701    fstp       qword ptr [esp]
 005B6704    wait
 005B6705    mov        eax,ebx
 005B6707    mov        edx,dword ptr [eax]
 005B6709    call       dword ptr [edx+68]; TRaveDataBand.sub_005A9770
 005B670C    add        esp,0FFFFFFF8
 005B670F    fstp       qword ptr [esp]
 005B6712    wait
 005B6713    mov        ecx,ebx
 005B6715    mov        dl,6
 005B6717    mov        eax,dword ptr [ebx+40]; TRaveDataBand.?f40:TComponent
 005B671A    call       005ABC08
 005B671F    add        esp,0C
 005B6722    pop        ebx
 005B6723    ret
*}
end;

//005B6728
//function sub_005B6728(?:?):?;
//begin
{*
 005B6728    push       ebx
 005B6729    push       esi
 005B672A    mov        esi,edx
 005B672C    mov        ebx,eax
 005B672E    cmp        byte ptr [ebx+128],0; TRaveDataBand.DesignerHide:Boolean
>005B6735    jne        005B6748
 005B6737    mov        edx,esi
 005B6739    mov        eax,dword ptr [ebx+38]; TRaveDataBand.?f38:dword
 005B673C    mov        ecx,dword ptr [eax]
 005B673E    call       dword ptr [ecx+0C0]
 005B6744    test       al,al
>005B6746    jne        005B674D
 005B6748    xor        eax,eax
 005B674A    pop        esi
 005B674B    pop        ebx
 005B674C    ret
 005B674D    mov        al,1
 005B674F    pop        esi
 005B6750    pop        ebx
 005B6751    ret
*}
//end;

//005B6754
//procedure sub_005B6754(?:?);
//begin
{*
 005B6754    push       ebx
 005B6755    push       esi
 005B6756    push       edi
 005B6757    add        esp,0FFFFFFF0
 005B675A    mov        esi,edx
 005B675C    lea        edi,[esp]
 005B675F    movs       dword ptr [edi],dword ptr [esi]
 005B6760    movs       dword ptr [edi],dword ptr [esi]
 005B6761    movs       dword ptr [edi],dword ptr [esi]
 005B6762    movs       dword ptr [edi],dword ptr [esi]
 005B6763    mov        ebx,eax
 005B6765    fld        qword ptr [esp+8]
 005B6769    fcomp      qword ptr [ebx+0F0]; TRaveDataBand.?fF0:?Double
 005B676F    fnstsw     al
 005B6771    sahf
>005B6772    jbe        005B6783
 005B6774    fld        qword ptr [esp+8]
 005B6778    fcomp      qword ptr [ebx+0F8]; TRaveDataBand.?fF8:?Double
 005B677E    fnstsw     al
 005B6780    sahf
>005B6781    jb         005B67B2
 005B6783    mov        edx,esp
 005B6785    mov        eax,ebx
 005B6787    call       005A9FC8
 005B678C    test       al,al
>005B678E    je         005B67AE
 005B6790    cmp        byte ptr [ebx+128],0; TRaveDataBand.DesignerHide:Boolean
>005B6797    je         005B67B2
 005B6799    mov        eax,[0061B9A0]; ^gvar_006171E4
 005B679E    mov        eax,dword ptr [eax]
 005B67A0    mov        edx,ebx
 005B67A2    mov        ecx,dword ptr [eax]
 005B67A4    call       dword ptr [ecx+110]
 005B67AA    test       al,al
>005B67AC    jne        005B67B2
 005B67AE    xor        eax,eax
>005B67B0    jmp        005B67B4
 005B67B2    mov        al,1
 005B67B4    add        esp,10
 005B67B7    pop        edi
 005B67B8    pop        esi
 005B67B9    pop        ebx
 005B67BA    ret
*}
//end;

//005B67BC
procedure sub_005B67BC;
begin
{*
 005B67BC    push       ebx
 005B67BD    mov        ebx,eax
 005B67BF    mov        eax,ebx
 005B67C1    call       005AAB94
 005B67C6    mov        eax,ebx
 005B67C8    mov        edx,dword ptr [eax]
 005B67CA    call       dword ptr [edx+12C]; TRaveDataBand.sub_005B731C
 005B67D0    fcomp      dword ptr ds:[5B67F4]; 0:Single
 005B67D6    fnstsw     al
 005B67D8    sahf
>005B67D9    je         005B67F0
 005B67DB    push       0
 005B67DD    push       0
 005B67DF    mov        eax,ebx
 005B67E1    mov        edx,dword ptr [eax]
 005B67E3    call       dword ptr [edx+130]; TRaveText.SetLeft
 005B67E9    mov        eax,ebx
 005B67EB    call       005A8540
 005B67F0    pop        ebx
 005B67F1    ret
*}
end;

//005B67F8
procedure sub_005B67F8;
begin
{*
 005B67F8    push       ebx
 005B67F9    mov        ebx,eax
 005B67FB    lea        eax,[ebx+100]; TRaveDataBand.?f100:String
 005B6801    call       @LStrClr
 005B6806    mov        eax,ebx
 005B6808    call       005A8800
 005B680D    pop        ebx
 005B680E    ret
*}
end;

//005B6810
//procedure sub_005B6810(?:TRaveBand; ?:AnsiString);
//begin
{*
 005B6810    push       ebp
 005B6811    mov        ebp,esp
 005B6813    xor        ecx,ecx
 005B6815    push       ecx
 005B6816    push       ecx
 005B6817    push       ecx
 005B6818    push       ecx
 005B6819    push       ecx
 005B681A    push       ebx
 005B681B    push       esi
 005B681C    push       edi
 005B681D    mov        esi,edx
 005B681F    mov        ebx,eax
 005B6821    xor        eax,eax
 005B6823    push       ebp
 005B6824    push       5B6971
 005B6829    push       dword ptr fs:[eax]
 005B682C    mov        dword ptr fs:[eax],esp
 005B682F    mov        eax,esi
 005B6831    call       @LStrClr
 005B6836    cmp        dword ptr [ebx+120],0; TRaveBand.?f120:TRaveFieldName
>005B683D    je         005B6945
 005B6843    lea        eax,[ebp-4]
 005B6846    mov        edx,dword ptr [ebx+120]; TRaveBand.?f120:TRaveFieldName
 005B684C    call       @LStrLAsg
 005B6851    lea        eax,[ebp-8]
 005B6854    push       eax
 005B6855    lea        edx,[ebp-0D]
 005B6858    lea        eax,[ebp-4]
 005B685B    mov        ecx,5B6988; '+'
 005B6860    call       005A5510
 005B6865    cmp        dword ptr [ebp-8],0
>005B6869    je         005B692F
 005B686F    lea        eax,[ebp-0C]
 005B6872    push       eax
 005B6873    lea        edx,[ebp-0E]
 005B6876    lea        eax,[ebp-8]
 005B6879    mov        ecx,5B6994; '.'
 005B687E    call       005A5510
 005B6883    cmp        dword ptr [ebp-8],0
>005B6887    je         005B68B1
 005B6889    mov        eax,dword ptr [ebx+48]; TRaveBand.?f48:TRaveComponent
 005B688C    mov        ecx,eax
 005B688E    mov        edx,dword ptr [ebp-0C]
 005B6891    call       005A4790
 005B6896    mov        edi,eax
 005B6898    test       edi,edi
>005B689A    je         005B68AD
 005B689C    mov        eax,edi
 005B689E    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005B68A4    call       @IsClass
 005B68A9    test       al,al
>005B68AB    jne        005B68C2
 005B68AD    xor        edi,edi
>005B68AF    jmp        005B68C2
 005B68B1    mov        edi,dword ptr [ebx+11C]; TRaveBand.GroupDataView:TRaveBaseDataView
 005B68B7    lea        eax,[ebp-8]
 005B68BA    mov        edx,dword ptr [ebp-0C]
 005B68BD    call       @LStrLAsg
 005B68C2    test       edi,edi
>005B68C4    je         005B692F
 005B68C6    mov        eax,edi
 005B68C8    mov        edx,dword ptr [eax]
 005B68CA    call       dword ptr [edx+0FC]
 005B68D0    test       al,al
>005B68D2    je         005B68EE
 005B68D4    push       dword ptr [esi]
 005B68D6    push       5B69A0; '|'
 005B68DB    push       5B69AC; 'EOF'
 005B68E0    mov        eax,esi
 005B68E2    mov        edx,3
 005B68E7    call       @LStrCatN
>005B68EC    jmp        005B692F
 005B68EE    mov        edx,dword ptr [ebp-8]
 005B68F1    mov        eax,edi
 005B68F3    call       005A0AC8
 005B68F8    mov        edi,eax
 005B68FA    test       edi,edi
>005B68FC    je         005B6923
 005B68FE    push       dword ptr [esi]
 005B6900    push       5B69BC; '|'
 005B6905    lea        edx,[ebp-14]
 005B6908    mov        eax,edi
 005B690A    mov        ecx,dword ptr [eax]
 005B690C    call       dword ptr [ecx+0D8]
 005B6912    push       dword ptr [ebp-14]
 005B6915    mov        eax,esi
 005B6917    mov        edx,3
 005B691C    call       @LStrCatN
>005B6921    jmp        005B692F
 005B6923    mov        eax,esi
 005B6925    mov        edx,5B69C8; '|(invalid)'
 005B692A    call       @LStrCat
 005B692F    cmp        dword ptr [ebp-4],0
<005B6933    jne        005B6851
 005B6939    mov        eax,esi
 005B693B    mov        edx,5B69BC; '|'
 005B6940    call       @LStrCat
 005B6945    mov        edx,esi
 005B6947    mov        eax,ebx
 005B6949    call       005B6A70
 005B694E    xor        eax,eax
 005B6950    pop        edx
 005B6951    pop        ecx
 005B6952    pop        ecx
 005B6953    mov        dword ptr fs:[eax],edx
 005B6956    push       5B6978
 005B695B    lea        eax,[ebp-14]
 005B695E    call       @LStrClr
 005B6963    lea        eax,[ebp-0C]
 005B6966    mov        edx,3
 005B696B    call       @LStrArrayClr
 005B6970    ret
<005B6971    jmp        @HandleFinally
<005B6976    jmp        005B695B
 005B6978    pop        edi
 005B6979    pop        esi
 005B697A    pop        ebx
 005B697B    mov        esp,ebp
 005B697D    pop        ebp
 005B697E    ret
*}
//end;

//005B69D4
//procedure sub_005B69D4(?:TRaveBand; ?:AnsiString);
//begin
{*
 005B69D4    push       ebx
 005B69D5    push       esi
 005B69D6    mov        esi,edx
 005B69D8    mov        ebx,eax
 005B69DA    mov        eax,dword ptr [ebx+11C]; TRaveBand.GroupDataView:TRaveBaseDataView
 005B69E0    test       eax,eax
>005B69E2    je         005B69F1
 005B69E4    mov        edx,1
 005B69E9    mov        ecx,dword ptr [eax]
 005B69EB    call       dword ptr [ecx+11C]; TRaveBaseDataView.sub_005A0D90
 005B69F1    mov        edx,esi
 005B69F3    mov        eax,ebx
 005B69F5    call       005B6810
 005B69FA    mov        eax,dword ptr [ebx+11C]; TRaveBand.GroupDataView:TRaveBaseDataView
 005B6A00    test       eax,eax
>005B6A02    je         005B6A0C
 005B6A04    mov        edx,dword ptr [eax]
 005B6A06    call       dword ptr [edx+120]; TRaveBaseDataView.sub_005A0F90
 005B6A0C    pop        esi
 005B6A0D    pop        ebx
 005B6A0E    ret
*}
//end;

//005B6A10
procedure sub_005B6A10();
begin
{*
 005B6A10    ret
*}
end;

//005B6A14
procedure sub_005B6A14;
begin
{*
 005B6A14    push       ebx
 005B6A15    mov        ebx,eax
 005B6A17    lea        eax,[ebx+100]; TRaveDataBand.?f100:String
 005B6A1D    call       @LStrClr
 005B6A22    pop        ebx
 005B6A23    ret
*}
end;

//005B6A24
procedure sub_005B6A24;
begin
{*
 005B6A24    push       esi
 005B6A25    mov        esi,eax
 005B6A27    mov        al,byte ptr [esi+10C]; TRaveBand.PositionMode:TBandPositionMode
 005B6A2D    sub        al,2
>005B6A2F    jae        005B6A57
 005B6A31    mov        eax,esi
 005B6A33    call       005B6384
 005B6A38    fld        qword ptr [eax+0F8]
 005B6A3E    fadd       qword ptr [esi+110]; TRaveBand.PositionValue:TRaveUnits
 005B6A44    add        esp,0FFFFFFF8
 005B6A47    fstp       qword ptr [esp]
 005B6A4A    wait
 005B6A4B    mov        eax,esi
 005B6A4D    mov        edx,dword ptr [eax]
 005B6A4F    call       dword ptr [edx+138]; TRaveText.SetTop
 005B6A55    pop        esi
 005B6A56    ret
 005B6A57    push       dword ptr [esi+114]; TRaveBand.?f114:dword
 005B6A5D    push       dword ptr [esi+110]; TRaveBand.PositionValue:TRaveUnits
 005B6A63    mov        eax,esi
 005B6A65    mov        edx,dword ptr [eax]
 005B6A67    call       dword ptr [edx+138]; TRaveText.SetTop
 005B6A6D    pop        esi
 005B6A6E    ret
*}
end;

//005B6A70
//procedure sub_005B6A70(?:TRaveBand; ?:AnsiString);
//begin
{*
 005B6A70    push       ebx
 005B6A71    push       esi
 005B6A72    mov        esi,edx
 005B6A74    mov        ebx,eax
 005B6A76    cmp        dword ptr [ebx+13C],0; TRaveBand.OnGetGroup:TRaveStringEvent
>005B6A7D    je         005B6AFD
 005B6A7F    mov        eax,esi
 005B6A81    mov        ecx,1
 005B6A86    mov        edx,1
 005B6A8B    call       @LStrDelete
 005B6A90    mov        eax,dword ptr [esi]
 005B6A92    call       @LStrLen
 005B6A97    mov        edx,eax
 005B6A99    mov        eax,esi
 005B6A9B    mov        ecx,1
 005B6AA0    call       @LStrDelete
 005B6AA5    mov        eax,dword ptr [ebx+13C]; TRaveBand.OnGetGroup:TRaveStringEvent
 005B6AAB    add        eax,1C; TRaveStringEvent.?f1C:String
 005B6AAE    mov        edx,dword ptr [esi]
 005B6AB0    call       @LStrAsg
 005B6AB5    mov        eax,dword ptr [ebx+13C]; TRaveBand.OnGetGroup:TRaveStringEvent
 005B6ABB    mov        edx,dword ptr [eax]
 005B6ABD    call       dword ptr [edx+0C]; TRaveStringEvent.sub_005ADEDC
 005B6AC0    mov        eax,dword ptr [ebx+13C]; TRaveBand.OnGetGroup:TRaveStringEvent
 005B6AC6    mov        eax,dword ptr [eax+1C]; TRaveStringEvent.?f1C:String
 005B6AC9    mov        edx,5B6B08; 'ÿ'
 005B6ACE    call       @LStrCmp
>005B6AD3    jne        005B6ADE
 005B6AD5    mov        eax,esi
 005B6AD7    call       @LStrClr
>005B6ADC    jmp        005B6AFD
 005B6ADE    push       5B6B14; '|'
 005B6AE3    mov        eax,dword ptr [ebx+13C]; TRaveBand.OnGetGroup:TRaveStringEvent
 005B6AE9    push       dword ptr [eax+1C]; TRaveStringEvent.?f1C:String
 005B6AEC    push       5B6B14; '|'
 005B6AF1    mov        eax,esi
 005B6AF3    mov        edx,3
 005B6AF8    call       @LStrCatN
 005B6AFD    pop        esi
 005B6AFE    pop        ebx
 005B6AFF    ret
*}
//end;

//005B6B18
//procedure sub_005B6B18(?:?);
//begin
{*
 005B6B18    push       ebp
 005B6B19    mov        ebp,esp
 005B6B1B    add        esp,0FFFFFFEC
 005B6B1E    push       ebx
 005B6B1F    push       esi
 005B6B20    push       edi
 005B6B21    xor        ecx,ecx
 005B6B23    mov        dword ptr [ebp-14],ecx
 005B6B26    mov        dword ptr [ebp-4],ecx
 005B6B29    mov        edi,edx
 005B6B2B    mov        ebx,eax
 005B6B2D    xor        eax,eax
 005B6B2F    push       ebp
 005B6B30    push       5B6F36
 005B6B35    push       dword ptr fs:[eax]
 005B6B38    mov        dword ptr fs:[eax],esp
 005B6B3B    mov        eax,ebx
 005B6B3D    mov        edx,dword ptr [eax]
 005B6B3F    call       dword ptr [edx+0B8]; TRaveBand.sub_005AAA88
 005B6B45    test       al,al
>005B6B47    je         005B6F18
 005B6B4D    mov        eax,ebx
 005B6B4F    call       005B6384
 005B6B54    mov        esi,eax
 005B6B56    cmp        dword ptr [esi+118],0
>005B6B5D    jne        005B6B6D
 005B6B5F    mov        al,byte ptr [esi+120]
 005B6B65    mov        byte ptr [esi+11C],al
>005B6B6B    jmp        005B6B99
 005B6B6D    cmp        ebx,dword ptr [esi+118]
>005B6B73    jne        005B6B99
 005B6B75    mov        al,byte ptr [esi+11C]
 005B6B7B    cmp        al,byte ptr [esi+120]
>005B6B81    jne        005B6B99
 005B6B83    mov        byte ptr [esi+121],0
 005B6B8A    xor        eax,eax
 005B6B8C    mov        dword ptr [esi+118],eax
 005B6B92    mov        byte ptr [esi+11D],0
 005B6B99    mov        al,byte ptr [esi+120]
 005B6B9F    mov        edx,eax
 005B6BA1    sub        dl,1
>005B6BA4    je         005B6BAB
 005B6BA6    sub        dl,5
>005B6BA9    jne        005B6C28
 005B6BAB    cmp        byte ptr [esi+121],0
>005B6BB2    jne        005B6C28
 005B6BB4    cmp        al,1
>005B6BB6    jne        005B6BC4
 005B6BB8    lea        edx,[ebp-4]
 005B6BBB    mov        eax,ebx
 005B6BBD    call       005B6810
>005B6BC2    jmp        005B6BEF
 005B6BC4    cmp        dword ptr [ebx+100],0; TRaveBand.?f100:String
>005B6BCB    jne        005B6BE5
 005B6BCD    lea        edx,[ebp-14]
 005B6BD0    mov        eax,ebx
 005B6BD2    call       005B6810
 005B6BD7    mov        edx,dword ptr [ebp-14]
 005B6BDA    lea        eax,[ebx+100]; TRaveBand.?f100:String
 005B6BE0    call       @LStrAsg
 005B6BE5    lea        edx,[ebp-4]
 005B6BE8    mov        eax,ebx
 005B6BEA    call       005B69D4
 005B6BEF    mov        eax,dword ptr [ebp-4]
 005B6BF2    mov        edx,dword ptr [ebx+100]; TRaveBand.?f100:String
 005B6BF8    call       @LStrCmp
>005B6BFD    je         005B6F18
 005B6C03    cmp        dword ptr [ebx+100],0; TRaveBand.?f100:String
>005B6C0A    jne        005B6C30
 005B6C0C    cmp        byte ptr [esi+120],6
>005B6C13    jne        005B6C30
 005B6C15    lea        eax,[ebx+100]; TRaveBand.?f100:String
 005B6C1B    mov        edx,dword ptr [ebp-4]
 005B6C1E    call       @LStrAsg
>005B6C23    jmp        005B6F18
 005B6C28    lea        eax,[ebp-4]
 005B6C2B    call       @LStrClr
 005B6C30    mov        eax,dword ptr [ebx+118]; TRaveBand.BandStyle:TRaveBandStyle
 005B6C36    mov        dl,byte ptr [esi+121]
 005B6C3C    cmp        dl,7
>005B6C3F    ja         005B6C48
 005B6C41    and        edx,7F
 005B6C44    bt         dword ptr [eax+5],edx; TRaveBandStyle.PrintOcc:TBandPrintOccSet
>005B6C48    jae        005B6F18
 005B6C4E    cmp        dword ptr [esi+118],0
>005B6C55    je         005B6CAC
 005B6C57    mov        eax,ebx
 005B6C59    mov        edx,dword ptr ds:[5B41E4]; TRaveIterateBand
 005B6C5F    call       @IsClass
 005B6C64    test       al,al
>005B6C66    je         005B6C84
 005B6C68    mov        al,byte ptr [ebx+154]
 005B6C6E    cmp        al,7
>005B6C70    ja         005B6C7C
 005B6C72    and        eax,7F
 005B6C75    bt         dword ptr [ebx+124],eax; TRaveBand.ReprintLocs:TBandPrintLocSet
>005B6C7C    jae        005B6F18
>005B6C82    jmp        005B6CAC
 005B6C84    mov        eax,dword ptr [ebx+108]; TRaveBand.ControllerBand:TRaveIterateBand
 005B6C8A    test       eax,eax
>005B6C8C    je         005B6F18
 005B6C92    mov        al,byte ptr [eax+154]; TRaveIterateBand.?f154:byte
 005B6C98    cmp        al,7
>005B6C9A    ja         005B6CA6
 005B6C9C    and        eax,7F
 005B6C9F    bt         dword ptr [ebx+124],eax; TRaveBand.ReprintLocs:TBandPrintLocSet
>005B6CA6    jae        005B6F18
 005B6CAC    mov        eax,ebx
 005B6CAE    call       005B6384
 005B6CB3    cmp        byte ptr [eax+11E],0
>005B6CBA    jne        005B6CCE
 005B6CBC    cmp        byte ptr [ebx+126],0; TRaveBand.StartNewPage:Boolean
>005B6CC3    je         005B6CE1
 005B6CC5    cmp        byte ptr [ebx+104],0; TRaveBand.?f104:byte
>005B6CCC    je         005B6CE1
 005B6CCE    mov        eax,ebx
 005B6CD0    call       005B6384
 005B6CD5    mov        edx,ebx
 005B6CD7    call       005B50AC
>005B6CDC    jmp        005B6F18
 005B6CE1    mov        eax,ebx
 005B6CE3    mov        edx,dword ptr [eax]
 005B6CE5    call       dword ptr [edx+0A4]; TRaveBand.sub_005A9984
 005B6CEB    cmp        byte ptr [ebx+138],0; TRaveBand.?f138:byte
>005B6CF2    jne        005B6CFE
 005B6CF4    mov        eax,ebx
 005B6CF6    mov        edx,dword ptr [eax]
 005B6CF8    call       dword ptr [edx+88]; TRaveBand.sub_005A97A4
 005B6CFE    mov        eax,ebx
 005B6D00    mov        edx,dword ptr [eax]
 005B6D02    call       dword ptr [edx+178]; TRaveBand.sub_005AA9E8
 005B6D08    fstp       qword ptr [ebp-10]
 005B6D0B    wait
 005B6D0C    mov        eax,ebx
 005B6D0E    mov        edx,dword ptr [eax]
 005B6D10    call       dword ptr [edx+190]; TRaveBand.sub_005B6A24
 005B6D16    mov        al,byte ptr [ebx+10C]; TRaveBand.PositionMode:TBandPositionMode
 005B6D1C    sub        al,2
>005B6D1E    jae        005B6D4D
 005B6D20    fld        qword ptr [ebp-10]
 005B6D23    fadd       qword ptr [ebx+110]; TRaveBand.PositionValue:TRaveUnits
 005B6D29    add        esp,0FFFFFFF8
 005B6D2C    fstp       qword ptr [esp]
 005B6D2F    wait
 005B6D30    mov        eax,ebx
 005B6D32    call       005B6384
 005B6D37    call       005B4F74
 005B6D3C    add        esp,0FFFFFFF8
 005B6D3F    fstp       qword ptr [esp]
 005B6D42    wait
 005B6D43    call       005A5B5C
 005B6D48    mov        byte ptr [ebp-5],al
>005B6D4B    jmp        005B6D51
 005B6D4D    mov        byte ptr [ebp-5],1
 005B6D51    push       dword ptr [ebx+134]; TRaveBand.?f134:dword
 005B6D57    push       dword ptr [ebx+130]; TRaveBand.MinHeightLeft:TRaveUnits
 005B6D5D    mov        eax,ebx
 005B6D5F    call       005B6384
 005B6D64    call       005B4F74
 005B6D69    add        esp,0FFFFFFF8
 005B6D6C    fstp       qword ptr [esp]
 005B6D6F    wait
 005B6D70    call       005A5B08
 005B6D75    test       al,al
>005B6D77    je         005B6D8C
 005B6D79    mov        eax,ebx
 005B6D7B    call       005B6384
 005B6D80    mov        edx,ebx
 005B6D82    call       005B50AC
>005B6D87    jmp        005B6F18
 005B6D8C    cmp        byte ptr [ebx+138],0; TRaveBand.?f138:byte
>005B6D93    je         005B6D9E
 005B6D95    mov        eax,[0061BF98]; ^gvar_006171C8:TRaveBand
 005B6D9A    mov        dword ptr [eax],ebx
>005B6D9C    jmp        005B6DA7
 005B6D9E    mov        eax,[0061BF98]; ^gvar_006171C8:TRaveBand
 005B6DA3    xor        edx,edx
 005B6DA5    mov        dword ptr [eax],edx
 005B6DA7    mov        byte ptr [ebx+138],0; TRaveBand.?f138:byte
 005B6DAE    cmp        byte ptr [ebp-5],0
>005B6DB2    jne        005B6E18
 005B6DB4    cmp        byte ptr [ebx+129],0; TRaveBand.AllowSplit:Boolean
>005B6DBB    jne        005B6DC6
 005B6DBD    cmp        byte ptr [ebx+104],0; TRaveBand.?f104:byte
>005B6DC4    jne        005B6DEE
 005B6DC6    push       dword ptr [ebx+0DC]; TRaveBand.?fDC:dword
 005B6DCC    push       dword ptr [ebx+0D8]; TRaveBand.?fD8:?Double
 005B6DD2    mov        eax,ebx
 005B6DD4    call       005B6384
 005B6DD9    call       005B4F74
 005B6DDE    add        esp,0FFFFFFF8
 005B6DE1    fstp       qword ptr [esp]
 005B6DE4    wait
 005B6DE5    call       005A5B08
 005B6DEA    test       al,al
>005B6DEC    je         005B6E01
 005B6DEE    mov        eax,ebx
 005B6DF0    call       005B6384
 005B6DF5    mov        edx,ebx
 005B6DF7    call       005B50AC
>005B6DFC    jmp        005B6F18
 005B6E01    mov        byte ptr [ebx+138],1; TRaveBand.?f138:byte
 005B6E08    mov        eax,ebx
 005B6E0A    call       005B6384
 005B6E0F    call       005B4F74
 005B6E14    fstp       qword ptr [ebp-10]
 005B6E17    wait
 005B6E18    push       dword ptr [ebp-0C]
 005B6E1B    push       dword ptr [ebp-10]
 005B6E1E    mov        eax,ebx
 005B6E20    mov        edx,dword ptr [eax]
 005B6E22    call       dword ptr [edx+148]; TRaveSection.SetHeight
 005B6E28    mov        byte ptr [ebx+104],1; TRaveBand.?f104:byte
 005B6E2F    mov        eax,ebx
 005B6E31    mov        edx,dword ptr [eax]
 005B6E33    call       dword ptr [edx+184]; TRaveBand.sub_005B659C
 005B6E39    test       al,al
>005B6E3B    jne        005B6E7E
 005B6E3D    mov        eax,ebx
 005B6E3F    mov        edx,dword ptr [eax]
 005B6E41    call       dword ptr [edx+188]; TRaveBand.sub_005B6A10
 005B6E47    mov        edx,edi
 005B6E49    mov        eax,ebx
 005B6E4B    call       005AAAB4
 005B6E50    mov        eax,ebx
 005B6E52    mov        edx,dword ptr [eax]
 005B6E54    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005B6E5A    add        esp,0FFFFFFF8
 005B6E5D    fstp       qword ptr [esp]
 005B6E60    wait
 005B6E61    push       0
 005B6E63    push       0
 005B6E65    call       005A5B08
 005B6E6A    test       al,al
>005B6E6C    je         005B6E75
 005B6E6E    mov        eax,edi
 005B6E70    call       00586254
 005B6E75    mov        eax,[0061BF98]; ^gvar_006171C8:TRaveBand
 005B6E7A    xor        edx,edx
 005B6E7C    mov        dword ptr [eax],edx
 005B6E7E    cmp        byte ptr [ebx+10C],0; TRaveBand.PositionMode:TBandPositionMode
>005B6E85    jne        005B6EA5
 005B6E87    mov        eax,ebx
 005B6E89    call       005B6384
 005B6E8E    add        eax,0F8
 005B6E93    push       eax
 005B6E94    mov        eax,ebx
 005B6E96    mov        edx,dword ptr [eax]
 005B6E98    call       dword ptr [edx+134]; TRaveText.GetTop
 005B6E9E    fadd       qword ptr [ebp-10]
 005B6EA1    pop        eax
 005B6EA2    fstp       qword ptr [eax]
 005B6EA4    wait
 005B6EA5    mov        eax,ebx
 005B6EA7    call       005B6384
 005B6EAC    mov        al,byte ptr [eax+120]
 005B6EB2    sub        al,1
>005B6EB4    je         005B6EBA
 005B6EB6    sub        al,5
>005B6EB8    jne        005B6ECE
 005B6EBA    cmp        dword ptr [ebp-4],0
>005B6EBE    je         005B6ECE
 005B6EC0    lea        eax,[ebx+100]; TRaveBand.?f100:String
 005B6EC6    mov        edx,dword ptr [ebp-4]
 005B6EC9    call       @LStrAsg
 005B6ECE    cmp        byte ptr [ebx+138],0; TRaveBand.?f138:byte
>005B6ED5    je         005B6EF2
 005B6ED7    mov        eax,ebx
 005B6ED9    mov        edx,dword ptr [eax]
 005B6EDB    call       dword ptr [edx+70]; TRaveBand.sub_005A8E80
 005B6EDE    test       al,al
>005B6EE0    jne        005B6EF2
 005B6EE2    mov        eax,ebx
 005B6EE4    call       005B6384
 005B6EE9    mov        edx,ebx
 005B6EEB    call       005B50AC
>005B6EF0    jmp        005B6F18
 005B6EF2    mov        byte ptr [ebx+138],0; TRaveBand.?f138:byte
 005B6EF9    mov        eax,ebx
 005B6EFB    mov        edx,dword ptr [eax]
 005B6EFD    call       dword ptr [edx+8C]; TRaveBand.sub_005A97E4
 005B6F03    cmp        byte ptr [ebx+127],0; TRaveBand.FinishNewPage:Boolean
>005B6F0A    je         005B6F18
 005B6F0C    mov        eax,ebx
 005B6F0E    call       005B6384
 005B6F13    call       005B50D4
 005B6F18    xor        eax,eax
 005B6F1A    pop        edx
 005B6F1B    pop        ecx
 005B6F1C    pop        ecx
 005B6F1D    mov        dword ptr fs:[eax],edx
 005B6F20    push       5B6F3D
 005B6F25    lea        eax,[ebp-14]
 005B6F28    call       @LStrClr
 005B6F2D    lea        eax,[ebp-4]
 005B6F30    call       @LStrClr
 005B6F35    ret
<005B6F36    jmp        @HandleFinally
<005B6F3B    jmp        005B6F25
 005B6F3D    pop        edi
 005B6F3E    pop        esi
 005B6F3F    pop        ebx
 005B6F40    mov        esp,ebp
 005B6F42    pop        ebp
 005B6F43    ret
*}
//end;

//005B6F44
constructor TRaveIterateBand.Create(AOwner:TComponent);
begin
{*
 005B6F44    push       ebx
 005B6F45    push       esi
 005B6F46    test       dl,dl
>005B6F48    je         005B6F52
 005B6F4A    add        esp,0FFFFFFF0
 005B6F4D    call       @ClassCreate
 005B6F52    mov        ebx,edx
 005B6F54    mov        esi,eax
 005B6F56    xor        edx,edx
 005B6F58    mov        eax,esi
 005B6F5A    call       TRaveBand.Create
 005B6F5F    mov        byte ptr [esi+15C],1; TRaveIterateBand.InitToFirst:Boolean
 005B6F66    mov        dword ptr [esi+164],1; TRaveIterateBand.Columns:Integer
 005B6F70    mov        eax,esi
 005B6F72    test       bl,bl
>005B6F74    je         005B6F85
 005B6F76    call       @AfterConstruction
 005B6F7B    pop        dword ptr fs:[0]
 005B6F82    add        esp,0C
 005B6F85    mov        eax,esi
 005B6F87    pop        esi
 005B6F88    pop        ebx
 005B6F89    ret
*}
end;

//005B6F8C
destructor TRaveIterateBand.Destroy;
begin
{*
 005B6F8C    push       ebx
 005B6F8D    push       esi
 005B6F8E    call       @BeforeDestruction
 005B6F93    mov        ebx,edx
 005B6F95    mov        esi,eax
 005B6F97    lea        eax,[esi+144]; TRaveIterateBand.?f144:TList
 005B6F9D    call       FreeAndNil
 005B6FA2    lea        eax,[esi+160]; TRaveIterateBand.?f160:TRaveMethodList
 005B6FA8    call       FreeAndNil
 005B6FAD    mov        edx,ebx
 005B6FAF    and        dl,0FC
 005B6FB2    mov        eax,esi
 005B6FB4    call       TRaveBand.Destroy
 005B6FB9    test       bl,bl
>005B6FBB    jle        005B6FC4
 005B6FBD    mov        eax,esi
 005B6FBF    call       @ClassDestroy
 005B6FC4    pop        esi
 005B6FC5    pop        ebx
 005B6FC6    ret
*}
end;

//005B6FC8
//procedure sub_005B6FC8(?:?; ?:?; ?:?);
//begin
{*
 005B6FC8    push       ebp
 005B6FC9    mov        ebp,esp
 005B6FCB    push       ecx
 005B6FCC    push       ebx
 005B6FCD    mov        dword ptr [ebp-4],edx
 005B6FD0    mov        ebx,eax
 005B6FD2    mov        eax,dword ptr [ebp-4]
 005B6FD5    call       @LStrAddRef
 005B6FDA    xor        eax,eax
 005B6FDC    push       ebp
 005B6FDD    push       5B7048
 005B6FE2    push       dword ptr fs:[eax]
 005B6FE5    mov        dword ptr fs:[eax],esp
 005B6FE8    push       dword ptr [ebp+0C]
 005B6FEB    push       dword ptr [ebp+8]
 005B6FEE    mov        edx,dword ptr [ebp-4]
 005B6FF1    mov        eax,ebx
 005B6FF3    call       005A8734
 005B6FF8    mov        edx,5B7060; 'CalcNewData'
 005B6FFD    mov        eax,dword ptr [ebp-4]
 005B7000    call       AnsiCompareText
 005B7005    test       eax,eax
>005B7007    jne        005B7032
 005B7009    cmp        dword ptr [ebx+160],0; TRaveDataBand.?f160:TRaveMethodList
>005B7010    jne        005B7024
 005B7012    mov        dl,1
 005B7014    mov        eax,[005A6818]; TRaveMethodList
 005B7019    call       TObject.Create; TRaveMethodList.Create
 005B701E    mov        dword ptr [ebx+160],eax; TRaveDataBand.?f160:TRaveMethodList
 005B7024    lea        edx,[ebp+8]
 005B7027    mov        eax,dword ptr [ebx+160]; TRaveDataBand.?f160:TRaveMethodList
 005B702D    call       005A81D0
 005B7032    xor        eax,eax
 005B7034    pop        edx
 005B7035    pop        ecx
 005B7036    pop        ecx
 005B7037    mov        dword ptr fs:[eax],edx
 005B703A    push       5B704F
 005B703F    lea        eax,[ebp-4]
 005B7042    call       @LStrClr
 005B7047    ret
<005B7048    jmp        @HandleFinally
<005B704D    jmp        005B703F
 005B704F    pop        ebx
 005B7050    pop        ecx
 005B7051    pop        ebp
 005B7052    ret        8
*}
//end;

//005B706C
//procedure sub_005B706C(?:?; ?:?; ?:?);
//begin
{*
 005B706C    push       ebp
 005B706D    mov        ebp,esp
 005B706F    push       ecx
 005B7070    push       ebx
 005B7071    mov        dword ptr [ebp-4],edx
 005B7074    mov        ebx,eax
 005B7076    mov        eax,dword ptr [ebp-4]
 005B7079    call       @LStrAddRef
 005B707E    xor        eax,eax
 005B7080    push       ebp
 005B7081    push       5B70DA
 005B7086    push       dword ptr fs:[eax]
 005B7089    mov        dword ptr fs:[eax],esp
 005B708C    push       dword ptr [ebp+0C]
 005B708F    push       dword ptr [ebp+8]
 005B7092    mov        edx,dword ptr [ebp-4]
 005B7095    mov        eax,ebx
 005B7097    call       005A8760
 005B709C    mov        edx,5B70F0; 'CalcNewData'
 005B70A1    mov        eax,dword ptr [ebp-4]
 005B70A4    call       AnsiCompareText
 005B70A9    test       eax,eax
>005B70AB    jne        005B70C4
 005B70AD    cmp        dword ptr [ebx+160],0; TRaveDataBand.?f160:TRaveMethodList
>005B70B4    je         005B70C4
 005B70B6    lea        edx,[ebp+8]
 005B70B9    mov        eax,dword ptr [ebx+160]; TRaveDataBand.?f160:TRaveMethodList
 005B70BF    call       005A8204
 005B70C4    xor        eax,eax
 005B70C6    pop        edx
 005B70C7    pop        ecx
 005B70C8    pop        ecx
 005B70C9    mov        dword ptr fs:[eax],edx
 005B70CC    push       5B70E1
 005B70D1    lea        eax,[ebp-4]
 005B70D4    call       @LStrClr
 005B70D9    ret
<005B70DA    jmp        @HandleFinally
<005B70DF    jmp        005B70D1
 005B70E1    pop        ebx
 005B70E2    pop        ecx
 005B70E3    pop        ebp
 005B70E4    ret        8
*}
//end;

//005B70FC
//function sub_005B70FC(?:?):?;
//begin
{*
 005B70FC    push       ebp
 005B70FD    mov        ebp,esp
 005B70FF    push       ecx
 005B7100    push       ebx
 005B7101    mov        dword ptr [ebp-4],edx
 005B7104    mov        eax,dword ptr [ebp-4]
 005B7107    call       @LStrAddRef
 005B710C    xor        eax,eax
 005B710E    push       ebp
 005B710F    push       5B7142
 005B7114    push       dword ptr fs:[eax]
 005B7117    mov        dword ptr fs:[eax],esp
 005B711A    mov        edx,5B7158; 'CalcNewData'
 005B711F    mov        eax,dword ptr [ebp-4]
 005B7122    call       AnsiCompareText
 005B7127    test       eax,eax
 005B7129    sete       bl
 005B712C    xor        eax,eax
 005B712E    pop        edx
 005B712F    pop        ecx
 005B7130    pop        ecx
 005B7131    mov        dword ptr fs:[eax],edx
 005B7134    push       5B7149
 005B7139    lea        eax,[ebp-4]
 005B713C    call       @LStrClr
 005B7141    ret
<005B7142    jmp        @HandleFinally
<005B7147    jmp        005B7139
 005B7149    mov        eax,ebx
 005B714B    pop        ebx
 005B714C    pop        ecx
 005B714D    pop        ebp
 005B714E    ret
*}
//end;

//005B7164
//procedure sub_005B7164(?:?; ?:?);
//begin
{*
 005B7164    push       ebx
 005B7165    push       esi
 005B7166    push       edi
 005B7167    mov        edi,ecx
 005B7169    mov        esi,edx
 005B716B    mov        ebx,eax
 005B716D    mov        ecx,edi
 005B716F    mov        edx,esi
 005B7171    mov        eax,ebx
 005B7173    call       005B628C
 005B7178    test       esi,esi
>005B717A    je         005B71A7
 005B717C    test       edi,edi
>005B717E    jne        005B71A7
 005B7180    cmp        dword ptr [ebx+144],0; TRaveIterateBand.?f144:TList
>005B7187    je         005B71A7
 005B7189    mov        eax,esi
 005B718B    mov        edx,dword ptr ds:[5B3DA4]; TRaveBand
 005B7191    call       @IsClass
 005B7196    test       al,al
>005B7198    je         005B71A7
 005B719A    mov        edx,esi
 005B719C    mov        eax,dword ptr [ebx+144]; TRaveIterateBand.?f144:TList
 005B71A2    call       TList.Remove
 005B71A7    mov        eax,dword ptr [ebx+160]; TRaveIterateBand.?f160:TRaveMethodList
 005B71AD    test       eax,eax
>005B71AF    je         005B71CB
 005B71B1    test       esi,esi
>005B71B3    je         005B71CB
 005B71B5    test       edi,edi
>005B71B7    je         005B71C4
 005B71B9    mov        ecx,edi
 005B71BB    mov        edx,esi
 005B71BD    call       005A8294
>005B71C2    jmp        005B71CB
 005B71C4    mov        edx,esi
 005B71C6    call       005A8258
 005B71CB    pop        edi
 005B71CC    pop        esi
 005B71CD    pop        ebx
 005B71CE    ret
*}
//end;

//005B71D0
//procedure sub_005B71D0(?:TRaveIterateBand; ?:TRaveBand);
//begin
{*
 005B71D0    push       ebx
 005B71D1    push       esi
 005B71D2    mov        esi,edx
 005B71D4    mov        ebx,eax
 005B71D6    cmp        dword ptr [ebx+144],0; TRaveIterateBand.?f144:TList
>005B71DD    jne        005B71F1
 005B71DF    mov        dl,1
 005B71E1    mov        eax,[0041C260]; TList
 005B71E6    call       TObject.Create; TList.Create
 005B71EB    mov        dword ptr [ebx+144],eax; TRaveIterateBand.?f144:TList
 005B71F1    mov        edx,esi
 005B71F3    mov        eax,dword ptr [ebx+144]; TRaveIterateBand.?f144:TList
 005B71F9    call       TList.Add
 005B71FE    pop        esi
 005B71FF    pop        ebx
 005B7200    ret
*}
//end;

//005B7204
//procedure sub_005B7204(?:TRaveIterateBand);
//begin
{*
 005B7204    mov        ecx,dword ptr [eax+144]; TRaveIterateBand.?f144:TList
 005B720A    test       ecx,ecx
>005B720C    je         005B7215
 005B720E    mov        eax,ecx
 005B7210    call       TList.Remove
 005B7215    ret
*}
//end;

//005B7218
procedure sub_005B7218();
begin
{*
 005B7218    call       005B646C
 005B721D    ret
*}
end;

//005B7220
procedure sub_005B7220();
begin
{*
 005B7220    call       005B6504
 005B7225    ret
*}
end;

//005B7228
//procedure sub_005B7228(?:TRaveDataBand);
//begin
{*
 005B7228    push       ebx
 005B7229    add        esp,0FFFFFFF4
 005B722C    mov        ebx,eax
 005B722E    mov        eax,dword ptr [ebx+48]; TRaveDataBand.?f48:TRaveComponent
 005B7231    cmp        byte ptr [eax+0A5],0
>005B7238    je         005B7267
 005B723A    cmp        dword ptr [ebx+164],1; TRaveDataBand.Columns:Integer
>005B7241    jle        005B7267
 005B7243    mov        eax,ebx
 005B7245    call       005B7278
 005B724A    fadd       qword ptr [ebx+168]; TRaveDataBand.ColumnSpacing:TRaveUnits
 005B7250    mov        eax,dword ptr [ebx+170]; TRaveDataBand.?f170:dword
 005B7256    dec        eax
 005B7257    mov        dword ptr [esp+8],eax
 005B725B    fild       dword ptr [esp+8]
 005B725F    fmulp      st(1),st
 005B7261    fstp       qword ptr [esp]
 005B7264    wait
>005B7265    jmp        005B7270
 005B7267    xor        eax,eax
 005B7269    mov        dword ptr [esp],eax
 005B726C    mov        dword ptr [esp+4],eax
 005B7270    fld        qword ptr [esp]
 005B7273    add        esp,0C
 005B7276    pop        ebx
 005B7277    ret
*}
//end;

//005B7278
//function sub_005B7278(?:TRaveDataBand):?;
//begin
{*
 005B7278    push       ebx
 005B7279    push       esi
 005B727A    add        esp,0FFFFFFF0
 005B727D    mov        ebx,eax
 005B727F    mov        eax,ebx
 005B7281    call       005B6384
 005B7286    test       eax,eax
>005B7288    je         005B72BF
 005B728A    mov        eax,ebx
 005B728C    call       005B6384
 005B7291    call       005B4E5C
 005B7296    mov        esi,dword ptr [ebx+164]; TRaveDataBand.Columns:Integer
 005B729C    mov        eax,esi
 005B729E    dec        eax
 005B729F    mov        dword ptr [esp+8],eax
 005B72A3    fild       dword ptr [esp+8]
 005B72A7    fmul       qword ptr [ebx+168]; TRaveDataBand.ColumnSpacing:TRaveUnits
 005B72AD    fsubp      st(1),st
 005B72AF    mov        dword ptr [esp+0C],esi
 005B72B3    fild       dword ptr [esp+0C]
 005B72B7    fdivp      st(1),st
 005B72B9    fstp       qword ptr [esp]
 005B72BC    wait
>005B72BD    jmp        005B72C8
 005B72BF    xor        eax,eax
 005B72C1    mov        dword ptr [esp],eax
 005B72C4    mov        dword ptr [esp+4],eax
 005B72C8    fld        qword ptr [esp]
 005B72CB    add        esp,10
 005B72CE    pop        esi
 005B72CF    pop        ebx
 005B72D0    ret
*}
//end;

//005B72D4
//procedure TRaveIterateBand.SetColumns(Self:TRaveIterateBand; ?:?);
//begin
{*
 005B72D4    cmp        edx,dword ptr [eax+164]; TRaveIterateBand.Columns:Integer
>005B72DA    je         005B72EB
 005B72DC    test       edx,edx
>005B72DE    jle        005B72EB
 005B72E0    mov        dword ptr [eax+164],edx; TRaveIterateBand.Columns:Integer
 005B72E6    call       005AA880
 005B72EB    ret
*}
//end;

//005B72EC
//procedure TRaveIterateBand.SetColumnSpacing(Self:TRaveIterateBand; ?:?; ?:?);
//begin
{*
 005B72EC    push       ebp
 005B72ED    mov        ebp,esp
 005B72EF    mov        edx,eax
 005B72F1    fld        qword ptr [edx+168]; TRaveIterateBand.ColumnSpacing:TRaveUnits
 005B72F7    fcomp      qword ptr [ebp+8]
 005B72FA    fnstsw     al
 005B72FC    sahf
>005B72FD    je         005B7318
 005B72FF    mov        eax,dword ptr [ebp+8]
 005B7302    mov        dword ptr [edx+168],eax; TRaveIterateBand.ColumnSpacing:TRaveUnits
 005B7308    mov        eax,dword ptr [ebp+0C]
 005B730B    mov        dword ptr [edx+16C],eax; TRaveIterateBand.?f16C:dword
 005B7311    mov        eax,edx
 005B7313    call       005AA880
 005B7318    pop        ebp
 005B7319    ret        8
*}
//end;

//005B731C
procedure sub_005B731C;
begin
{*
 005B731C    push       ebx
 005B731D    add        esp,0FFFFFFF0
 005B7320    mov        ebx,eax
 005B7322    mov        eax,ebx
 005B7324    call       005B6384
 005B7329    test       eax,eax
>005B732B    je         005B734F
 005B732D    mov        eax,ebx
 005B732F    call       005B6384
 005B7334    call       005B4DF8
 005B7339    fstp       qword ptr [esp+8]
 005B733D    wait
 005B733E    mov        eax,ebx
 005B7340    call       005B7228
 005B7345    fadd       qword ptr [esp+8]
 005B7349    fstp       qword ptr [esp]
 005B734C    wait
>005B734D    jmp        005B7358
 005B734F    xor        eax,eax
 005B7351    mov        dword ptr [esp],eax
 005B7354    mov        dword ptr [esp+4],eax
 005B7358    fld        qword ptr [esp]
 005B735B    add        esp,10
 005B735E    pop        ebx
 005B735F    ret
*}
end;

//005B7360
procedure sub_005B7360();
begin
{*
 005B7360    add        esp,0FFFFFFF8
 005B7363    call       005B7278
 005B7368    fstp       qword ptr [esp]
 005B736B    wait
 005B736C    fld        qword ptr [esp]
 005B736F    pop        ecx
 005B7370    pop        edx
 005B7371    ret
*}
end;

//005B7374
//procedure sub_005B7374(?:?);
//begin
{*
 005B7374    push       ebx
 005B7375    push       esi
 005B7376    push       edi
 005B7377    push       ebp
 005B7378    add        esp,0FFFFFFE4
 005B737B    mov        esi,edx
 005B737D    mov        ebx,eax
 005B737F    mov        eax,0FFFFFF
 005B7384    call       005A54B0
 005B7389    mov        edx,eax
 005B738B    mov        eax,dword ptr [esi+10]
 005B738E    call       TPen.SetColor
 005B7393    xor        edx,edx
 005B7395    mov        eax,dword ptr [esi+10]
 005B7398    call       TPen.SetStyle
 005B739D    mov        dl,4
 005B739F    mov        eax,dword ptr [esi+10]
 005B73A2    call       TPen.SetMode
 005B73A7    mov        edx,1
 005B73AC    mov        eax,dword ptr [esi+10]
 005B73AF    call       TPen.SetWidth
 005B73B4    xor        edx,edx
 005B73B6    mov        eax,dword ptr [esi+14]
 005B73B9    call       TBrush.SetStyle
 005B73BE    cmp        dword ptr [ebx+164],1; TRaveDataBand.Columns:Integer
>005B73C5    jle        005B7616
 005B73CB    mov        eax,808080
 005B73D0    call       005A54B0
 005B73D5    mov        edx,eax
 005B73D7    mov        eax,dword ptr [esi+14]
 005B73DA    call       TBrush.SetColor
 005B73DF    mov        eax,ebx
 005B73E1    mov        edx,dword ptr [eax]
 005B73E3    call       dword ptr [edx+64]; TRaveDataBand.sub_005A9744
 005B73E6    add        esp,0FFFFFFF8
 005B73E9    fstp       qword ptr [esp]
 005B73EC    wait
 005B73ED    mov        eax,ebx
 005B73EF    call       005AAE14
 005B73F4    push       eax
 005B73F5    mov        eax,ebx
 005B73F7    mov        edx,dword ptr [eax]
 005B73F9    call       dword ptr [edx+68]; TRaveDataBand.sub_005A9770
 005B73FC    add        esp,0FFFFFFF8
 005B73FF    fstp       qword ptr [esp]
 005B7402    wait
 005B7403    mov        eax,ebx
 005B7405    call       005AAE30
 005B740A    push       eax
 005B740B    mov        eax,ebx
 005B740D    mov        edx,dword ptr [eax]
 005B740F    call       dword ptr [edx+60]; TRaveDataBand.sub_005A970C
 005B7412    add        esp,0FFFFFFF8
 005B7415    fstp       qword ptr [esp]
 005B7418    wait
 005B7419    mov        eax,ebx
 005B741B    call       005AAE30
 005B7420    inc        eax
 005B7421    push       eax
 005B7422    mov        eax,ebx
 005B7424    mov        edx,dword ptr [eax]
 005B7426    call       dword ptr [edx+5C]; TRaveDataBand.sub_005A96D4
 005B7429    add        esp,0FFFFFFF8
 005B742C    fstp       qword ptr [esp]
 005B742F    wait
 005B7430    mov        eax,ebx
 005B7432    call       005AAE14
 005B7437    mov        edx,eax
 005B7439    inc        edx
 005B743A    mov        eax,esi
 005B743C    pop        ecx
 005B743D    call       TCanvas.Rectangle
 005B7442    mov        eax,0FFFFFF
 005B7447    call       005A54B0
 005B744C    mov        edx,eax
 005B744E    mov        eax,dword ptr [esi+14]
 005B7451    call       TBrush.SetColor
 005B7456    mov        eax,ebx
 005B7458    mov        edx,dword ptr [eax]
 005B745A    call       dword ptr [edx+5C]; TRaveDataBand.sub_005A96D4
 005B745D    fstp       qword ptr [esp+10]
 005B7461    wait
 005B7462    mov        eax,ebx
 005B7464    call       005B7278
 005B7469    fadd       qword ptr [esp+10]
 005B746D    add        esp,0FFFFFFF8
 005B7470    fstp       qword ptr [esp]
 005B7473    wait
 005B7474    mov        eax,ebx
 005B7476    call       005AAE14
 005B747B    push       eax
 005B747C    mov        eax,ebx
 005B747E    mov        edx,dword ptr [eax]
 005B7480    call       dword ptr [edx+68]; TRaveDataBand.sub_005A9770
 005B7483    add        esp,0FFFFFFF8
 005B7486    fstp       qword ptr [esp]
 005B7489    wait
 005B748A    mov        eax,ebx
 005B748C    call       005AAE30
 005B7491    push       eax
 005B7492    mov        eax,ebx
 005B7494    mov        edx,dword ptr [eax]
 005B7496    call       dword ptr [edx+60]; TRaveDataBand.sub_005A970C
 005B7499    add        esp,0FFFFFFF8
 005B749C    fstp       qword ptr [esp]
 005B749F    wait
 005B74A0    mov        eax,ebx
 005B74A2    call       005AAE30
 005B74A7    inc        eax
 005B74A8    push       eax
 005B74A9    mov        eax,ebx
 005B74AB    mov        edx,dword ptr [eax]
 005B74AD    call       dword ptr [edx+5C]; TRaveDataBand.sub_005A96D4
 005B74B0    add        esp,0FFFFFFF8
 005B74B3    fstp       qword ptr [esp]
 005B74B6    wait
 005B74B7    mov        eax,ebx
 005B74B9    call       005AAE14
 005B74BE    mov        edx,eax
 005B74C0    inc        edx
 005B74C1    mov        eax,esi
 005B74C3    pop        ecx
 005B74C4    call       TCanvas.Rectangle
 005B74C9    mov        dl,7
 005B74CB    mov        eax,dword ptr [esi+14]
 005B74CE    call       TBrush.SetStyle
 005B74D3    xor        eax,eax
 005B74D5    call       005A54B0
 005B74DA    mov        edx,eax
 005B74DC    mov        eax,dword ptr [esi+14]
 005B74DF    call       TBrush.SetColor
 005B74E4    mov        edi,dword ptr [ebx+164]; TRaveDataBand.Columns:Integer
 005B74EA    dec        edi
 005B74EB    test       edi,edi
>005B74ED    jle        005B768D
 005B74F3    mov        ebp,1
 005B74F8    fld        qword ptr [ebx+168]; TRaveDataBand.ColumnSpacing:TRaveUnits
 005B74FE    fcomp      dword ptr ds:[5B7698]; 0:Single
 005B7504    fnstsw     al
 005B7506    sahf
>005B7507    jne        005B7582
 005B7509    mov        eax,ebx
 005B750B    mov        edx,dword ptr [eax]
 005B750D    call       dword ptr [edx+5C]; TRaveDataBand.sub_005A96D4
 005B7510    fstp       qword ptr [esp+10]
 005B7514    wait
 005B7515    mov        eax,ebx
 005B7517    call       005B7278
 005B751C    mov        dword ptr [esp+18],ebp
 005B7520    fild       dword ptr [esp+18]
 005B7524    fmulp      st(1),st
 005B7526    fadd       qword ptr [esp+10]
 005B752A    add        esp,0FFFFFFF8
 005B752D    fstp       qword ptr [esp]
 005B7530    wait
 005B7531    mov        eax,ebx
 005B7533    call       005AAE14
 005B7538    mov        dword ptr [esp],eax
 005B753B    mov        eax,ebx
 005B753D    mov        edx,dword ptr [eax]
 005B753F    call       dword ptr [edx+60]; TRaveDataBand.sub_005A970C
 005B7542    add        esp,0FFFFFFF8
 005B7545    fstp       qword ptr [esp]
 005B7548    wait
 005B7549    mov        eax,ebx
 005B754B    call       005AAE30
 005B7550    mov        ecx,eax
 005B7552    mov        edx,dword ptr [esp]
 005B7555    mov        eax,esi
 005B7557    call       TCanvas.MoveTo
 005B755C    mov        eax,ebx
 005B755E    mov        edx,dword ptr [eax]
 005B7560    call       dword ptr [edx+68]; TRaveDataBand.sub_005A9770
 005B7563    add        esp,0FFFFFFF8
 005B7566    fstp       qword ptr [esp]
 005B7569    wait
 005B756A    mov        eax,ebx
 005B756C    call       005AAE30
 005B7571    mov        ecx,eax
 005B7573    mov        edx,dword ptr [esp]
 005B7576    mov        eax,esi
 005B7578    call       TCanvas.LineTo
>005B757D    jmp        005B760C
 005B7582    mov        eax,ebx
 005B7584    mov        edx,dword ptr [eax]
 005B7586    call       dword ptr [edx+5C]; TRaveDataBand.sub_005A96D4
 005B7589    fstp       qword ptr [esp+10]
 005B758D    wait
 005B758E    mov        eax,ebx
 005B7590    call       005B7278
 005B7595    fadd       qword ptr [ebx+168]; TRaveDataBand.ColumnSpacing:TRaveUnits
 005B759B    mov        dword ptr [esp+18],ebp
 005B759F    fild       dword ptr [esp+18]
 005B75A3    fmulp      st(1),st
 005B75A5    fadd       qword ptr [esp+10]
 005B75A9    fstp       qword ptr [esp+8]
 005B75AD    wait
 005B75AE    push       dword ptr [esp+0C]
 005B75B2    push       dword ptr [esp+0C]
 005B75B6    mov        eax,ebx
 005B75B8    call       005AAE14
 005B75BD    push       eax
 005B75BE    mov        eax,ebx
 005B75C0    mov        edx,dword ptr [eax]
 005B75C2    call       dword ptr [edx+68]; TRaveDataBand.sub_005A9770
 005B75C5    add        esp,0FFFFFFF8
 005B75C8    fstp       qword ptr [esp]
 005B75CB    wait
 005B75CC    mov        eax,ebx
 005B75CE    call       005AAE30
 005B75D3    push       eax
 005B75D4    mov        eax,ebx
 005B75D6    mov        edx,dword ptr [eax]
 005B75D8    call       dword ptr [edx+60]; TRaveDataBand.sub_005A970C
 005B75DB    add        esp,0FFFFFFF8
 005B75DE    fstp       qword ptr [esp]
 005B75E1    wait
 005B75E2    mov        eax,ebx
 005B75E4    call       005AAE30
 005B75E9    push       eax
 005B75EA    fld        qword ptr [esp+14]
 005B75EE    fsub       qword ptr [ebx+168]; TRaveDataBand.ColumnSpacing:TRaveUnits
 005B75F4    add        esp,0FFFFFFF8
 005B75F7    fstp       qword ptr [esp]
 005B75FA    wait
 005B75FB    mov        eax,ebx
 005B75FD    call       005AAE14
 005B7602    mov        edx,eax
 005B7604    mov        eax,esi
 005B7606    pop        ecx
 005B7607    call       TCanvas.Rectangle
 005B760C    inc        ebp
 005B760D    dec        edi
<005B760E    jne        005B74F8
>005B7614    jmp        005B768D
 005B7616    mov        eax,0FFFFFF
 005B761B    call       005A54B0
 005B7620    mov        edx,eax
 005B7622    mov        eax,dword ptr [esi+14]
 005B7625    call       TBrush.SetColor
 005B762A    mov        eax,ebx
 005B762C    mov        edx,dword ptr [eax]
 005B762E    call       dword ptr [edx+64]; TRaveDataBand.sub_005A9744
 005B7631    add        esp,0FFFFFFF8
 005B7634    fstp       qword ptr [esp]
 005B7637    wait
 005B7638    mov        eax,ebx
 005B763A    call       005AAE14
 005B763F    push       eax
 005B7640    mov        eax,ebx
 005B7642    mov        edx,dword ptr [eax]
 005B7644    call       dword ptr [edx+68]; TRaveDataBand.sub_005A9770
 005B7647    add        esp,0FFFFFFF8
 005B764A    fstp       qword ptr [esp]
 005B764D    wait
 005B764E    mov        eax,ebx
 005B7650    call       005AAE30
 005B7655    push       eax
 005B7656    mov        eax,ebx
 005B7658    mov        edx,dword ptr [eax]
 005B765A    call       dword ptr [edx+60]; TRaveDataBand.sub_005A970C
 005B765D    add        esp,0FFFFFFF8
 005B7660    fstp       qword ptr [esp]
 005B7663    wait
 005B7664    mov        eax,ebx
 005B7666    call       005AAE30
 005B766B    inc        eax
 005B766C    push       eax
 005B766D    mov        eax,ebx
 005B766F    mov        edx,dword ptr [eax]
 005B7671    call       dword ptr [edx+5C]; TRaveDataBand.sub_005A96D4
 005B7674    add        esp,0FFFFFFF8
 005B7677    fstp       qword ptr [esp]
 005B767A    wait
 005B767B    mov        eax,ebx
 005B767D    call       005AAE14
 005B7682    mov        edx,eax
 005B7684    inc        edx
 005B7685    mov        eax,esi
 005B7687    pop        ecx
 005B7688    call       TCanvas.Rectangle
 005B768D    add        esp,1C
 005B7690    pop        ebp
 005B7691    pop        edi
 005B7692    pop        esi
 005B7693    pop        ebx
 005B7694    ret
*}
//end;

//005B769C
procedure sub_005B769C;
begin
{*
 005B769C    cmp        byte ptr [eax+140],0; TRaveDataBand.?f140:byte
>005B76A3    je         005B76B9
 005B76A5    mov        byte ptr [eax+140],0; TRaveDataBand.?f140:byte
 005B76AC    xor        ecx,ecx
 005B76AE    mov        edx,dword ptr [eax+160]; TRaveDataBand.?f160:TRaveMethodList
 005B76B4    call       005A86F0
 005B76B9    ret
*}
end;

//005B76BC
procedure sub_005B76BC;
begin
{*
 005B76BC    push       esi
 005B76BD    mov        esi,eax
 005B76BF    mov        eax,esi
 005B76C1    call       005B6A24
 005B76C6    mov        ecx,dword ptr [esi+164]; TRaveDataBand.Columns:Integer
 005B76CC    cmp        ecx,1
>005B76CF    jle        005B77E5
 005B76D5    mov        eax,dword ptr [esi+170]; TRaveDataBand.?f170:dword
 005B76DB    cdq
 005B76DC    idiv       eax,ecx
 005B76DE    inc        edx
 005B76DF    mov        dword ptr [esi+170],edx; TRaveDataBand.?f170:dword
 005B76E5    cmp        dword ptr [esi+170],1; TRaveDataBand.?f170:dword
>005B76EC    je         005B772B
 005B76EE    mov        eax,esi
 005B76F0    call       005B6384
 005B76F5    mov        eax,dword ptr [eax+124]
 005B76FB    cmp        eax,dword ptr [esi+190]; TRaveDataBand.?f190:dword
>005B7701    jne        005B772B
 005B7703    push       dword ptr [esi+184]; TRaveDataBand.?f184:dword
 005B7709    push       dword ptr [esi+180]; TRaveDataBand.?f180:dword
 005B770F    mov        eax,esi
 005B7711    call       005B6384
 005B7716    push       dword ptr [eax+0FC]
 005B771C    push       dword ptr [eax+0F8]
 005B7722    call       005A5B24
 005B7727    test       al,al
>005B7729    je         005B7777
 005B772B    mov        dword ptr [esi+170],1; TRaveDataBand.?f170:dword
 005B7735    mov        eax,esi
 005B7737    call       005B6384
 005B773C    mov        edx,dword ptr [eax+0F8]
 005B7742    mov        dword ptr [esi+178],edx; TRaveDataBand.?f178:dword
 005B7748    mov        edx,dword ptr [eax+0FC]
 005B774E    mov        dword ptr [esi+17C],edx; TRaveDataBand.?f17C:dword
 005B7754    mov        eax,esi
 005B7756    call       005B6384
 005B775B    mov        eax,dword ptr [eax+124]
 005B7761    mov        dword ptr [esi+190],eax; TRaveDataBand.?f190:dword
 005B7767    xor        eax,eax
 005B7769    mov        dword ptr [esi+188],eax; TRaveDataBand.?f188:?Double
 005B776F    mov        dword ptr [esi+18C],eax; TRaveDataBand.?f18C:dword
>005B7775    jmp        005B77F3
 005B7777    mov        eax,esi
 005B7779    call       005B6384
 005B777E    fld        qword ptr [eax+0F8]
 005B7784    fcomp      qword ptr [esi+188]; TRaveDataBand.?f188:?Double
 005B778A    fnstsw     al
 005B778C    sahf
>005B778D    jbe        005B77AE
 005B778F    mov        eax,esi
 005B7791    call       005B6384
 005B7796    mov        edx,dword ptr [eax+0F8]
 005B779C    mov        dword ptr [esi+188],edx; TRaveDataBand.?f188:?Double
 005B77A2    mov        edx,dword ptr [eax+0FC]
 005B77A8    mov        dword ptr [esi+18C],edx; TRaveDataBand.?f18C:dword
 005B77AE    mov        eax,esi
 005B77B0    call       005B6384
 005B77B5    mov        edx,dword ptr [esi+178]; TRaveDataBand.?f178:dword
 005B77BB    mov        dword ptr [eax+0F8],edx
 005B77C1    mov        edx,dword ptr [esi+17C]; TRaveDataBand.?f17C:dword
 005B77C7    mov        dword ptr [eax+0FC],edx
 005B77CD    push       dword ptr [esi+17C]; TRaveDataBand.?f17C:dword
 005B77D3    push       dword ptr [esi+178]; TRaveDataBand.?f178:dword
 005B77D9    mov        eax,esi
 005B77DB    mov        edx,dword ptr [eax]
 005B77DD    call       dword ptr [edx+138]; TRaveText.SetTop
 005B77E3    pop        esi
 005B77E4    ret
 005B77E5    xor        eax,eax
 005B77E7    mov        dword ptr [esi+188],eax; TRaveDataBand.?f188:?Double
 005B77ED    mov        dword ptr [esi+18C],eax; TRaveDataBand.?f18C:dword
 005B77F3    pop        esi
 005B77F4    ret
*}
end;

//005B77F8
//procedure sub_005B77F8(?:?);
//begin
{*
 005B77F8    push       ebx
 005B77F9    push       esi
 005B77FA    push       edi
 005B77FB    mov        esi,eax
 005B77FD    mov        eax,dword ptr [esi+144]
 005B7803    test       eax,eax
>005B7805    je         005B782B
 005B7807    mov        ebx,dword ptr [eax+8]
 005B780A    dec        ebx
 005B780B    test       ebx,ebx
>005B780D    jl         005B782B
 005B780F    inc        ebx
 005B7810    xor        edi,edi
 005B7812    mov        edx,edi
 005B7814    mov        eax,dword ptr [esi+144]
 005B781A    call       TList.Get
 005B781F    mov        edx,dword ptr [eax]
 005B7821    call       dword ptr [edx+18C]
 005B7827    inc        edi
 005B7828    dec        ebx
<005B7829    jne        005B7812
 005B782B    pop        edi
 005B782C    pop        esi
 005B782D    pop        ebx
 005B782E    ret
*}
//end;

//005B7830
//function sub_005B7830(?:?; ?:?):?;
//begin
{*
 005B7830    push       ebp
 005B7831    mov        ebp,esp
 005B7833    push       ebx
 005B7834    push       esi
 005B7835    mov        ebx,eax
 005B7837    mov        esi,dword ptr [ebp+8]
 005B783A    add        esi,0FFFFFFFC
 005B783D    cmp        bl,3
>005B7840    jne        005B78BB
 005B7842    mov        eax,dword ptr [esi]
 005B7844    call       005B6384
 005B7849    mov        byte ptr [eax+120],3
 005B7850    mov        eax,dword ptr [ebp+8]
 005B7853    mov        edx,dword ptr [eax-8]
 005B7856    mov        eax,dword ptr [esi]
 005B7858    call       005B6B18
 005B785D    mov        eax,dword ptr [esi]
 005B785F    call       005B6384
 005B7864    mov        edx,dword ptr [esi]
 005B7866    mov        ecx,dword ptr [eax+0F8]
 005B786C    mov        dword ptr [edx+180],ecx
 005B7872    mov        ecx,dword ptr [eax+0FC]
 005B7878    mov        dword ptr [edx+184],ecx
 005B787E    mov        eax,dword ptr [esi]
 005B7880    call       005B6384
 005B7885    fld        qword ptr [eax+0F8]
 005B788B    mov        eax,dword ptr [esi]
 005B788D    fcomp      qword ptr [eax+188]
 005B7893    fnstsw     al
 005B7895    sahf
>005B7896    jae        005B78D0
 005B7898    mov        eax,dword ptr [esi]
 005B789A    call       005B6384
 005B789F    mov        edx,dword ptr [esi]
 005B78A1    mov        ecx,dword ptr [edx+188]
 005B78A7    mov        dword ptr [eax+0F8],ecx
 005B78AD    mov        ecx,dword ptr [edx+18C]
 005B78B3    mov        dword ptr [eax+0FC],ecx
>005B78B9    jmp        005B78D0
 005B78BB    push       ebx
 005B78BC    mov        eax,dword ptr [esi]
 005B78BE    call       005B6384
 005B78C3    mov        ecx,dword ptr [esi]
 005B78C5    mov        edx,dword ptr [ebp+8]
 005B78C8    mov        edx,dword ptr [edx-8]
 005B78CB    call       005B5FCC
 005B78D0    mov        eax,dword ptr [esi]
 005B78D2    call       005B6384
 005B78D7    mov        al,byte ptr [eax+11D]
 005B78DD    xor        al,1
 005B78DF    test       al,al
>005B78E1    jne        005B78EB
 005B78E3    mov        edx,dword ptr [esi]
 005B78E5    mov        byte ptr [edx+154],bl
 005B78EB    pop        esi
 005B78EC    pop        ebx
 005B78ED    pop        ebp
 005B78EE    ret
*}
//end;

//005B78F0
//function sub_005B78F0:?;
//begin
{*
 005B78F0    mov        al,1
 005B78F2    ret
*}
//end;

//005B78F4
//function sub_005B78F4(?:?):?;
//begin
{*
 005B78F4    push       ebp
 005B78F5    mov        ebp,esp
 005B78F7    push       ebx
 005B78F8    xor        ebx,ebx
 005B78FA    call       005B78F0
 005B78FF    test       al,al
>005B7901    je         005B7943
 005B7903    mov        eax,dword ptr [ebp+8]
 005B7906    push       eax
 005B7907    mov        al,2
 005B7909    call       005B7830
 005B790E    pop        ecx
 005B790F    test       al,al
>005B7911    je         005B7945
 005B7913    mov        eax,dword ptr [ebp+8]
 005B7916    push       eax
 005B7917    mov        al,3
 005B7919    call       005B7830
 005B791E    pop        ecx
 005B791F    test       al,al
>005B7921    je         005B7945
 005B7923    mov        eax,dword ptr [ebp+8]
 005B7926    push       eax
 005B7927    mov        al,4
 005B7929    call       005B7830
 005B792E    pop        ecx
 005B792F    test       al,al
>005B7931    je         005B7945
 005B7933    mov        eax,dword ptr [ebp+8]
 005B7936    push       eax
 005B7937    mov        al,5
 005B7939    call       005B7830
 005B793E    pop        ecx
 005B793F    test       al,al
>005B7941    je         005B7945
 005B7943    mov        bl,1
 005B7945    mov        eax,ebx
 005B7947    pop        ebx
 005B7948    pop        ebp
 005B7949    ret
*}
//end;

//005B794C
//function sub_005B794C(?:?):?;
//begin
{*
 005B794C    push       ebp
 005B794D    mov        ebp,esp
 005B794F    push       ecx
 005B7950    mov        byte ptr [ebp-1],0
 005B7954    mov        eax,dword ptr [ebp+8]
 005B7957    mov        eax,dword ptr [eax-4]
 005B795A    cmp        byte ptr [eax+149],0
>005B7961    je         005B7A17
 005B7967    mov        eax,dword ptr [ebp+8]
 005B796A    mov        eax,dword ptr [eax-4]
 005B796D    mov        edx,dword ptr [eax]
 005B796F    call       dword ptr [edx+184]
 005B7975    test       al,al
>005B7977    jne        005B7A17
 005B797D    mov        eax,dword ptr [ebp+8]
 005B7980    mov        eax,dword ptr [eax-4]
 005B7983    call       005B6384
 005B7988    cmp        byte ptr [eax+11F],0
>005B798F    jne        005B7A17
 005B7995    mov        eax,dword ptr [ebp+8]
 005B7998    mov        eax,dword ptr [eax-4]
 005B799B    call       005B6384
 005B79A0    call       005B50E8
 005B79A5    mov        eax,dword ptr [ebp+8]
 005B79A8    mov        eax,dword ptr [eax-4]
 005B79AB    mov        edx,dword ptr [eax]
 005B79AD    call       dword ptr [edx+17C]
 005B79B3    xor        eax,eax
 005B79B5    push       ebp
 005B79B6    push       5B79FA
 005B79BB    push       dword ptr fs:[eax]
 005B79BE    mov        dword ptr fs:[eax],esp
 005B79C1    mov        eax,dword ptr [ebp+8]
 005B79C4    push       eax
 005B79C5    call       005B78F4
 005B79CA    pop        ecx
 005B79CB    mov        byte ptr [ebp-2],al
 005B79CE    xor        eax,eax
 005B79D0    pop        edx
 005B79D1    pop        ecx
 005B79D2    pop        ecx
 005B79D3    mov        dword ptr fs:[eax],edx
 005B79D6    push       5B7A01
 005B79DB    mov        eax,dword ptr [ebp+8]
 005B79DE    mov        eax,dword ptr [eax-4]
 005B79E1    mov        edx,dword ptr [eax]
 005B79E3    call       dword ptr [edx+180]
 005B79E9    mov        eax,dword ptr [ebp+8]
 005B79EC    mov        eax,dword ptr [eax-4]
 005B79EF    call       005B6384
 005B79F4    call       005B5104
 005B79F9    ret
<005B79FA    jmp        @HandleFinally
<005B79FF    jmp        005B79DB
 005B7A01    cmp        byte ptr [ebp-2],0
>005B7A05    jne        005B7A17
 005B7A07    mov        eax,dword ptr [ebp+8]
 005B7A0A    mov        eax,dword ptr [eax-4]
 005B7A0D    call       005B6384
 005B7A12    call       005B50D4
 005B7A17    mov        eax,dword ptr [ebp+8]
 005B7A1A    push       eax
 005B7A1B    call       005B78F4
 005B7A20    pop        ecx
 005B7A21    test       al,al
>005B7A23    je         005B7A29
 005B7A25    mov        byte ptr [ebp-1],1
 005B7A29    mov        al,byte ptr [ebp-1]
 005B7A2C    pop        ecx
 005B7A2D    pop        ebp
 005B7A2E    ret
*}
//end;

//005B7A30
//function sub_005B7A30(?:?; ?:?; ?:?):?;
//begin
{*
 005B7A30    push       ebp
 005B7A31    mov        ebp,esp
 005B7A33    push       ecx
 005B7A34    push       ebx
 005B7A35    push       esi
 005B7A36    push       edi
 005B7A37    mov        byte ptr [ebp-1],dl
 005B7A3A    mov        edi,eax
 005B7A3C    mov        ebx,edi
 005B7A3E    mov        eax,dword ptr [ebp+8]
 005B7A41    mov        eax,dword ptr [eax-4]
 005B7A44    mov        esi,dword ptr [eax+158]
 005B7A4A    mov        byte ptr [ebp-2],0
 005B7A4E    mov        eax,dword ptr [ebp+8]
 005B7A51    mov        eax,dword ptr [eax-4]
 005B7A54    call       005B6384
 005B7A59    cmp        byte ptr [eax+121],1
>005B7A60    jne        005B7A70
 005B7A62    mov        eax,dword ptr [ebp+8]
 005B7A65    mov        eax,dword ptr [eax-4]
 005B7A68    xor        edx,edx
 005B7A6A    mov        dword ptr [eax+170],edx
 005B7A70    mov        eax,dword ptr [ebp+8]
 005B7A73    mov        eax,dword ptr [eax-4]
 005B7A76    call       005B6384
 005B7A7B    cmp        byte ptr [eax+121],0
>005B7A82    jne        005B7AE9
 005B7A84    mov        eax,dword ptr [ebp+8]
 005B7A87    mov        eax,dword ptr [eax-4]
 005B7A8A    xor        edx,edx
 005B7A8C    mov        dword ptr [eax+170],edx
 005B7A92    mov        eax,dword ptr [ebp+8]
 005B7A95    mov        eax,dword ptr [eax-4]
 005B7A98    call       005B77F8
 005B7A9D    mov        eax,dword ptr [ebp+8]
 005B7AA0    mov        eax,dword ptr [eax-4]
 005B7AA3    cmp        byte ptr [eax+15C],0
>005B7AAA    je         005B7ABC
 005B7AAC    mov        eax,dword ptr [ebp+8]
 005B7AAF    mov        eax,dword ptr [eax-4]
 005B7AB2    mov        edx,dword ptr [eax]
 005B7AB4    call       dword ptr [edx+194]
>005B7ABA    jmp        005B7ACA
 005B7ABC    mov        eax,dword ptr [ebp+8]
 005B7ABF    mov        eax,dword ptr [eax-4]
 005B7AC2    mov        edx,dword ptr [eax]
 005B7AC4    call       dword ptr [edx+19C]
 005B7ACA    mov        eax,dword ptr [ebp+8]
 005B7ACD    mov        eax,dword ptr [eax-4]
 005B7AD0    mov        edx,dword ptr [eax]
 005B7AD2    call       dword ptr [edx+1A0]
 005B7AD8    test       al,al
>005B7ADA    jne        005B7AE9
 005B7ADC    mov        eax,dword ptr [ebp+8]
 005B7ADF    mov        eax,dword ptr [eax-4]
 005B7AE2    mov        byte ptr [eax+140],1
 005B7AE9    cmp        byte ptr [ebp-1],0
>005B7AED    je         005B7B0D
 005B7AEF    mov        eax,dword ptr [ebp+8]
 005B7AF2    mov        eax,dword ptr [eax-4]
 005B7AF5    call       005B6384
 005B7AFA    call       005B50E8
 005B7AFF    mov        eax,dword ptr [ebp+8]
 005B7B02    mov        eax,dword ptr [eax-4]
 005B7B05    mov        edx,dword ptr [eax]
 005B7B07    call       dword ptr [edx+17C]
 005B7B0D    xor        eax,eax
 005B7B0F    push       ebp
 005B7B10    push       5B7C6C
 005B7B15    push       dword ptr fs:[eax]
 005B7B18    mov        dword ptr fs:[eax],esp
 005B7B1B    mov        eax,dword ptr [ebp+8]
 005B7B1E    mov        eax,dword ptr [eax-4]
 005B7B21    mov        edx,dword ptr [eax]
 005B7B23    call       dword ptr [edx+1A0]
 005B7B29    test       al,al
>005B7B2B    je         005B7B45
 005B7B2D    mov        eax,dword ptr [ebp+8]
 005B7B30    mov        eax,dword ptr [eax-4]
 005B7B33    call       005B6384
 005B7B38    cmp        dword ptr [eax+118],0
>005B7B3F    je         005B7C3A
 005B7B45    mov        eax,dword ptr [ebp+8]
 005B7B48    push       eax
 005B7B49    xor        eax,eax
 005B7B4B    call       005B7830
 005B7B50    pop        ecx
 005B7B51    test       al,al
>005B7B53    jne        005B7C0D
 005B7B59    call       @TryFinallyExit
>005B7B5E    jmp        005B7C77
 005B7B63    mov        eax,dword ptr [ebp+8]
 005B7B66    push       eax
 005B7B67    mov        al,1
 005B7B69    call       005B7830
 005B7B6E    pop        ecx
 005B7B6F    test       al,al
>005B7B71    jne        005B7B7D
 005B7B73    call       @TryFinallyExit
>005B7B78    jmp        005B7C77
 005B7B7D    mov        eax,dword ptr [ebp+8]
 005B7B80    push       eax
 005B7B81    call       005B794C
 005B7B86    pop        ecx
 005B7B87    test       al,al
>005B7B89    jne        005B7B95
 005B7B8B    call       @TryFinallyExit
>005B7B90    jmp        005B7C77
 005B7B95    test       edi,edi
>005B7B97    jle        005B7BAC
 005B7B99    dec        ebx
 005B7B9A    test       ebx,ebx
>005B7B9C    jne        005B7BAC
 005B7B9E    mov        byte ptr [ebp-2],1
 005B7BA2    call       @TryFinallyExit
>005B7BA7    jmp        005B7C77
 005B7BAC    mov        eax,dword ptr [ebp+8]
 005B7BAF    push       eax
 005B7BB0    mov        al,6
 005B7BB2    call       005B7830
 005B7BB7    pop        ecx
 005B7BB8    test       al,al
>005B7BBA    jne        005B7BC6
 005B7BBC    call       @TryFinallyExit
>005B7BC1    jmp        005B7C77
 005B7BC6    mov        eax,dword ptr [ebp+8]
 005B7BC9    mov        eax,dword ptr [eax-4]
 005B7BCC    cmp        dword ptr [eax+158],0
>005B7BD3    jle        005B7BE0
 005B7BD5    dec        esi
 005B7BD6    test       esi,esi
>005B7BD8    jne        005B7BE0
 005B7BDA    mov        byte ptr [ebp-2],1
>005B7BDE    jmp        005B7C23
 005B7BE0    mov        eax,dword ptr [ebp+8]
 005B7BE3    mov        eax,dword ptr [eax-4]
 005B7BE6    mov        edx,dword ptr [eax]
 005B7BE8    call       dword ptr [edx+198]
 005B7BEE    mov        eax,dword ptr [ebp+8]
 005B7BF1    mov        eax,dword ptr [eax-4]
 005B7BF4    mov        edx,dword ptr [eax]
 005B7BF6    call       dword ptr [edx+1A0]
 005B7BFC    test       al,al
>005B7BFE    jne        005B7C0D
 005B7C00    mov        eax,dword ptr [ebp+8]
 005B7C03    mov        eax,dword ptr [eax-4]
 005B7C06    mov        byte ptr [eax+140],1
 005B7C0D    mov        eax,dword ptr [ebp+8]
 005B7C10    mov        eax,dword ptr [eax-4]
 005B7C13    mov        edx,dword ptr [eax]
 005B7C15    call       dword ptr [edx+1A0]
 005B7C1B    test       al,al
<005B7C1D    je         005B7B63
 005B7C23    mov        eax,dword ptr [ebp+8]
 005B7C26    push       eax
 005B7C27    mov        al,7
 005B7C29    call       005B7830
 005B7C2E    pop        ecx
 005B7C2F    test       al,al
>005B7C31    jne        005B7C3A
 005B7C33    call       @TryFinallyExit
>005B7C38    jmp        005B7C77
 005B7C3A    xor        eax,eax
 005B7C3C    pop        edx
 005B7C3D    pop        ecx
 005B7C3E    pop        ecx
 005B7C3F    mov        dword ptr fs:[eax],edx
 005B7C42    push       5B7C73
 005B7C47    cmp        byte ptr [ebp-1],0
>005B7C4B    je         005B7C6B
 005B7C4D    mov        eax,dword ptr [ebp+8]
 005B7C50    mov        eax,dword ptr [eax-4]
 005B7C53    mov        edx,dword ptr [eax]
 005B7C55    call       dword ptr [edx+180]
 005B7C5B    mov        eax,dword ptr [ebp+8]
 005B7C5E    mov        eax,dword ptr [eax-4]
 005B7C61    call       005B6384
 005B7C66    call       005B5104
 005B7C6B    ret
<005B7C6C    jmp        @HandleFinally
<005B7C71    jmp        005B7C47
 005B7C73    mov        byte ptr [ebp-2],1
 005B7C77    mov        al,byte ptr [ebp-2]
 005B7C7A    pop        edi
 005B7C7B    pop        esi
 005B7C7C    pop        ebx
 005B7C7D    pop        ecx
 005B7C7E    pop        ebp
 005B7C7F    ret
*}
//end;

//005B7C80
//procedure sub_005B7C80(?:?);
//begin
{*
 005B7C80    push       ebp
 005B7C81    mov        ebp,esp
 005B7C83    mov        eax,dword ptr [ebp+8]
 005B7C86    mov        eax,dword ptr [eax-4]
 005B7C89    cmp        byte ptr [eax+148],0
>005B7C90    je         005B7CDC
 005B7C92    mov        eax,dword ptr [ebp+8]
 005B7C95    mov        eax,dword ptr [eax-4]
 005B7C98    mov        edx,dword ptr [eax]
 005B7C9A    call       dword ptr [edx+184]
 005B7CA0    test       al,al
>005B7CA2    jne        005B7CDC
 005B7CA4    mov        eax,dword ptr [ebp+8]
 005B7CA7    mov        eax,dword ptr [eax-4]
 005B7CAA    call       005B6384
 005B7CAF    cmp        byte ptr [eax+11F],0
>005B7CB6    jne        005B7CDC
 005B7CB8    mov        eax,dword ptr [ebp+8]
 005B7CBB    push       eax
 005B7CBC    mov        dl,1
 005B7CBE    xor        eax,eax
 005B7CC0    call       005B7A30
 005B7CC5    pop        ecx
 005B7CC6    test       al,al
>005B7CC8    jne        005B7D3D
 005B7CCA    mov        eax,dword ptr [ebp+8]
 005B7CCD    mov        eax,dword ptr [eax-4]
 005B7CD0    call       005B6384
 005B7CD5    call       005B50D4
>005B7CDA    jmp        005B7D3D
 005B7CDC    mov        eax,dword ptr [ebp+8]
 005B7CDF    mov        eax,dword ptr [eax-4]
 005B7CE2    cmp        dword ptr [eax+14C],0
>005B7CE9    jle        005B7D3D
 005B7CEB    mov        eax,dword ptr [ebp+8]
 005B7CEE    mov        eax,dword ptr [eax-4]
 005B7CF1    mov        edx,dword ptr [eax]
 005B7CF3    call       dword ptr [edx+184]
 005B7CF9    test       al,al
>005B7CFB    jne        005B7D3D
 005B7CFD    mov        eax,dword ptr [ebp+8]
 005B7D00    mov        eax,dword ptr [eax-4]
 005B7D03    call       005B6384
 005B7D08    cmp        byte ptr [eax+11F],0
>005B7D0F    jne        005B7D3D
 005B7D11    mov        eax,dword ptr [ebp+8]
 005B7D14    push       eax
 005B7D15    mov        eax,dword ptr [ebp+8]
 005B7D18    mov        eax,dword ptr [eax-4]
 005B7D1B    mov        eax,dword ptr [eax+14C]
 005B7D21    mov        dl,1
 005B7D23    call       005B7A30
 005B7D28    pop        ecx
 005B7D29    test       al,al
>005B7D2B    jne        005B7D3D
 005B7D2D    mov        eax,dword ptr [ebp+8]
 005B7D30    mov        eax,dword ptr [eax-4]
 005B7D33    call       005B6384
 005B7D38    call       005B50D4
 005B7D3D    mov        eax,dword ptr [ebp+8]
 005B7D40    push       eax
 005B7D41    xor        edx,edx
 005B7D43    xor        eax,eax
 005B7D45    call       005B7A30
 005B7D4A    pop        ecx
 005B7D4B    pop        ebp
 005B7D4C    ret
*}
//end;

//005B7D50
//procedure sub_005B7D50(?:?);
//begin
{*
 005B7D50    push       ebp
 005B7D51    mov        ebp,esp
 005B7D53    add        esp,0FFFFFFF8
 005B7D56    mov        dword ptr [ebp-8],edx
 005B7D59    mov        dword ptr [ebp-4],eax
 005B7D5C    mov        eax,dword ptr [ebp-4]
 005B7D5F    mov        edx,dword ptr [eax]
 005B7D61    call       dword ptr [edx+0B8]; TRaveDataBand.sub_005AAA88
 005B7D67    test       al,al
>005B7D69    je         005B7DB4
 005B7D6B    mov        eax,dword ptr [ebp-4]
 005B7D6E    call       005B6384
 005B7D73    cmp        dword ptr [eax+118],0
>005B7D7A    je         005B7D88
 005B7D7C    mov        eax,dword ptr [ebp-4]
 005B7D7F    cmp        byte ptr [eax+15D],0; TRaveDataBand.?f15D:byte
>005B7D86    je         005B7DB4
 005B7D88    mov        eax,dword ptr [ebp-4]
 005B7D8B    mov        byte ptr [eax+15D],1; TRaveDataBand.?f15D:byte
 005B7D92    push       ebp
 005B7D93    call       005B7C80
 005B7D98    pop        ecx
 005B7D99    mov        eax,dword ptr [ebp-4]
 005B7D9C    call       005B6384
 005B7DA1    cmp        byte ptr [eax+11D],0
>005B7DA8    jne        005B7DB4
 005B7DAA    mov        eax,dword ptr [ebp-4]
 005B7DAD    mov        byte ptr [eax+15D],0; TRaveDataBand.?f15D:byte
 005B7DB4    pop        ecx
 005B7DB5    pop        ecx
 005B7DB6    pop        ebp
 005B7DB7    ret
*}
//end;

//005B7DB8
//procedure sub_005B7DB8(?:?; ?:?);
//begin
{*
 005B7DB8    push       ebx
 005B7DB9    push       esi
 005B7DBA    push       edi
 005B7DBB    mov        edi,ecx
 005B7DBD    mov        esi,edx
 005B7DBF    mov        ebx,eax
 005B7DC1    mov        ecx,edi
 005B7DC3    mov        edx,esi
 005B7DC5    mov        eax,ebx
 005B7DC7    call       005B7164
 005B7DCC    mov        eax,dword ptr [ebx+198]; TRaveDataBand.DataView:TRaveBaseDataView
 005B7DD2    test       eax,eax
>005B7DD4    je         005B7DED
 005B7DD6    cmp        esi,eax
>005B7DD8    jne        005B7DED
 005B7DDA    mov        eax,edi
 005B7DDC    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005B7DE2    call       @AsClass
 005B7DE7    mov        dword ptr [ebx+198],eax; TRaveDataBand.DataView:TRaveBaseDataView
 005B7DED    mov        eax,dword ptr [ebx+19C]; TRaveDataBand.MasterDataView:TRaveBaseDataView
 005B7DF3    test       eax,eax
>005B7DF5    je         005B7E0E
 005B7DF7    cmp        esi,eax
>005B7DF9    jne        005B7E0E
 005B7DFB    mov        eax,edi
 005B7DFD    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005B7E03    call       @AsClass
 005B7E08    mov        dword ptr [ebx+19C],eax; TRaveDataBand.MasterDataView:TRaveBaseDataView
 005B7E0E    pop        edi
 005B7E0F    pop        esi
 005B7E10    pop        ebx
 005B7E11    ret
*}
//end;

//005B7E14
//function sub_005B7E14:?;
//begin
{*
 005B7E14    push       ebx
 005B7E15    mov        ebx,eax
 005B7E17    mov        eax,ebx
 005B7E19    call       005B659C
 005B7E1E    test       al,al
>005B7E20    jne        005B7E37
 005B7E22    cmp        dword ptr [ebx+198],0; TRaveDataBand.DataView:TRaveBaseDataView
>005B7E29    je         005B7E37
 005B7E2B    mov        eax,dword ptr [ebx+198]; TRaveDataBand.DataView:TRaveBaseDataView
 005B7E31    mov        al,byte ptr [eax+84]; TRaveBaseDataView.?f84:byte
 005B7E37    pop        ebx
 005B7E38    ret
*}
//end;

//005B7E3C
procedure sub_005B7E3C;
begin
{*
 005B7E3C    push       ebx
 005B7E3D    mov        ebx,eax
 005B7E3F    mov        eax,ebx
 005B7E41    call       005B7218
 005B7E46    mov        eax,dword ptr [ebx+198]; TRaveDataBand.DataView:TRaveBaseDataView
 005B7E4C    test       eax,eax
>005B7E4E    je         005B7E58
 005B7E50    mov        edx,dword ptr [eax]
 005B7E52    call       dword ptr [edx+110]; TRaveBaseDataView.sub_005A0EA8
 005B7E58    pop        ebx
 005B7E59    ret
*}
end;

//005B7E5C
procedure sub_005B7E5C;
begin
{*
 005B7E5C    push       ebx
 005B7E5D    mov        ebx,eax
 005B7E5F    mov        eax,ebx
 005B7E61    call       005B7220
 005B7E66    mov        eax,dword ptr [ebx+198]; TRaveDataBand.DataView:TRaveBaseDataView
 005B7E6C    test       eax,eax
>005B7E6E    je         005B7E78
 005B7E70    mov        edx,dword ptr [eax]
 005B7E72    call       dword ptr [edx+114]; TRaveBaseDataView.sub_005A0DF4
 005B7E78    pop        ebx
 005B7E79    ret
*}
end;

//005B7E7C
procedure sub_005B7E7C;
begin
{*
 005B7E7C    mov        edx,dword ptr [eax+1A0]; TRaveDataBand.?f1A0:TRaveFieldName
 005B7E82    push       edx
 005B7E83    mov        edx,dword ptr [eax+1A4]; TRaveDataBand.?f1A4:TRaveFieldName
 005B7E89    push       edx
 005B7E8A    mov        ecx,dword ptr [eax+19C]; TRaveDataBand.MasterDataView:TRaveBaseDataView
 005B7E90    mov        edx,dword ptr [eax+194]; TRaveDataBand.?f194:TRaveFieldName
 005B7E96    mov        eax,dword ptr [eax+198]; TRaveDataBand.DataView:TRaveBaseDataView
 005B7E9C    call       005A0570
 005B7EA1    ret
*}
end;

//005B7EA4
procedure sub_005B7EA4;
begin
{*
 005B7EA4    push       esi
 005B7EA5    mov        esi,dword ptr [eax+198]; TRaveDataBand.DataView:TRaveBaseDataView
 005B7EAB    test       esi,esi
>005B7EAD    je         005B7EB9
 005B7EAF    mov        eax,esi
 005B7EB1    mov        edx,dword ptr [eax]
 005B7EB3    call       dword ptr [edx+0F4]; TRaveBaseDataView.sub_005A0FE8
 005B7EB9    pop        esi
 005B7EBA    ret
*}
end;

//005B7EBC
procedure sub_005B7EBC;
begin
{*
 005B7EBC    push       esi
 005B7EBD    mov        esi,dword ptr [eax+198]; TRaveDataBand.DataView:TRaveBaseDataView
 005B7EC3    test       esi,esi
>005B7EC5    je         005B7ED1
 005B7EC7    mov        eax,esi
 005B7EC9    mov        edx,dword ptr [eax]
 005B7ECB    call       dword ptr [edx+0F8]; TRaveBaseDataView.sub_005A0D7C
 005B7ED1    pop        esi
 005B7ED2    ret
*}
end;

//005B7ED4
//function sub_005B7ED4:?;
//begin
{*
 005B7ED4    mov        edx,dword ptr [eax+198]; TRaveDataBand.DataView:TRaveBaseDataView
 005B7EDA    test       edx,edx
>005B7EDC    je         005B7EE9
 005B7EDE    mov        eax,edx
 005B7EE0    mov        edx,dword ptr [eax]
 005B7EE2    call       dword ptr [edx+0FC]; TRaveBaseDataView.sub_005A0D5C
 005B7EE8    ret
 005B7EE9    mov        al,1
 005B7EEB    ret
*}
//end;

//005B7EEC
//function sub_005B7EEC:?;
//begin
{*
 005B7EEC    mov        ecx,dword ptr [eax+198]; TRaveDataBand.DataView:TRaveBaseDataView
 005B7EF2    test       ecx,ecx
>005B7EF4    je         005B7F01
 005B7EF6    mov        eax,ecx
 005B7EF8    mov        ecx,dword ptr [eax]
 005B7EFA    call       dword ptr [ecx+10C]; TRaveBaseDataView.sub_005A0D30
 005B7F00    ret
 005B7F01    mov        al,1
 005B7F03    ret
*}
//end;

//005B7F04
constructor TRaveDataCycle.Create(AOwner:TComponent);
begin
{*
 005B7F04    push       ebx
 005B7F05    push       esi
 005B7F06    test       dl,dl
>005B7F08    je         005B7F12
 005B7F0A    add        esp,0FFFFFFF0
 005B7F0D    call       @ClassCreate
 005B7F12    mov        ebx,edx
 005B7F14    mov        esi,eax
 005B7F16    xor        edx,edx
 005B7F18    mov        eax,esi
 005B7F1A    call       TRaveComponent.Create
 005B7F1F    mov        byte ptr [esi+64],1; TRaveDataCycle.InitToFirst:Boolean
 005B7F23    mov        eax,esi
 005B7F25    test       bl,bl
>005B7F27    je         005B7F38
 005B7F29    call       @AfterConstruction
 005B7F2E    pop        dword ptr fs:[0]
 005B7F35    add        esp,0C
 005B7F38    mov        eax,esi
 005B7F3A    pop        esi
 005B7F3B    pop        ebx
 005B7F3C    ret
*}
end;

//005B7F40
//function sub_005B7F40:?;
//begin
{*
 005B7F40    push       ebx
 005B7F41    push       esi
 005B7F42    mov        ebx,eax
 005B7F44    cmp        byte ptr [ebx+7C],0; TRaveDataCycle.?f7C:byte
>005B7F48    je         005B7F64
 005B7F4A    mov        esi,dword ptr [ebx+5C]; TRaveDataCycle.DataView:TRaveBaseDataView
 005B7F4D    test       esi,esi
>005B7F4F    je         005B7F5F
 005B7F51    mov        eax,esi
 005B7F53    mov        edx,dword ptr [eax]
 005B7F55    call       dword ptr [edx+0FC]; TRaveBaseDataView.sub_005A0D5C
 005B7F5B    test       al,al
>005B7F5D    jne        005B7F64
 005B7F5F    xor        eax,eax
 005B7F61    pop        esi
 005B7F62    pop        ebx
 005B7F63    ret
 005B7F64    mov        al,1
 005B7F66    pop        esi
 005B7F67    pop        ebx
 005B7F68    ret
*}
//end;

//005B7F6C
procedure sub_005B7F6C;
begin
{*
 005B7F6C    xor        edx,edx
 005B7F6E    mov        dword ptr [eax+78],edx; TRaveDataCycle.?f78:dword
 005B7F71    cmp        dword ptr [eax+5C],0; TRaveDataCycle.DataView:TRaveBaseDataView
 005B7F75    setne      dl
 005B7F78    mov        byte ptr [eax+7C],dl; TRaveDataCycle.?f7C:byte
 005B7F7B    call       005A8800
 005B7F80    ret
*}
end;

//005B7F84
//procedure sub_005B7F84(?:?; ?:?);
//begin
{*
 005B7F84    push       ebx
 005B7F85    push       esi
 005B7F86    push       edi
 005B7F87    mov        edi,ecx
 005B7F89    mov        esi,edx
 005B7F8B    mov        ebx,eax
 005B7F8D    mov        ecx,edi
 005B7F8F    mov        edx,esi
 005B7F91    mov        eax,ebx
 005B7F93    call       005A85B8
 005B7F98    mov        eax,dword ptr [ebx+5C]; TRaveDataCycle.DataView:TRaveBaseDataView
 005B7F9B    test       eax,eax
>005B7F9D    je         005B7FB3
 005B7F9F    cmp        esi,eax
>005B7FA1    jne        005B7FB3
 005B7FA3    mov        eax,edi
 005B7FA5    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005B7FAB    call       @AsClass
 005B7FB0    mov        dword ptr [ebx+5C],eax; TRaveDataCycle.DataView:TRaveBaseDataView
 005B7FB3    mov        eax,dword ptr [ebx+68]; TRaveDataCycle.MasterDataView:TRaveBaseDataView
 005B7FB6    test       eax,eax
>005B7FB8    je         005B7FCE
 005B7FBA    cmp        esi,eax
>005B7FBC    jne        005B7FCE
 005B7FBE    mov        eax,edi
 005B7FC0    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005B7FC6    call       @AsClass
 005B7FCB    mov        dword ptr [ebx+68],eax; TRaveDataCycle.MasterDataView:TRaveBaseDataView
 005B7FCE    pop        edi
 005B7FCF    pop        esi
 005B7FD0    pop        ebx
 005B7FD1    ret
*}
//end;

//005B7FD4
procedure sub_005B7FD4;
begin
{*
 005B7FD4    push       ebx
 005B7FD5    push       esi
 005B7FD6    mov        ebx,eax
 005B7FD8    mov        eax,ebx
 005B7FDA    mov        edx,dword ptr [eax]
 005B7FDC    call       dword ptr [edx+0B8]; TRaveDataCycle.sub_005A8BC4
 005B7FE2    test       al,al
>005B7FE4    je         005B805A
 005B7FE6    cmp        byte ptr [ebx+7C],0; TRaveDataCycle.?f7C:byte
>005B7FEA    je         005B805A
 005B7FEC    cmp        dword ptr [ebx+78],0; TRaveDataCycle.?f78:dword
>005B7FF0    jne        005B801D
 005B7FF2    cmp        byte ptr [ebx+64],0; TRaveDataCycle.InitToFirst:Boolean
>005B7FF6    je         005B8010
 005B7FF8    mov        eax,dword ptr [ebx+6C]; TRaveDataCycle.?f6C:TRaveFieldName
 005B7FFB    push       eax
 005B7FFC    mov        eax,dword ptr [ebx+74]; TRaveDataCycle.?f74:TRaveFieldName
 005B7FFF    push       eax
 005B8000    mov        ecx,dword ptr [ebx+68]; TRaveDataCycle.MasterDataView:TRaveBaseDataView
 005B8003    mov        edx,dword ptr [ebx+60]; TRaveDataCycle.?f60:TRaveFieldName
 005B8006    mov        eax,dword ptr [ebx+5C]; TRaveDataCycle.DataView:TRaveBaseDataView
 005B8009    call       005A0570
>005B800E    jmp        005B8028
 005B8010    mov        eax,dword ptr [ebx+5C]; TRaveDataCycle.DataView:TRaveBaseDataView
 005B8013    mov        edx,dword ptr [eax]
 005B8015    call       dword ptr [edx+0F8]; TRaveBaseDataView.sub_005A0D7C
>005B801B    jmp        005B8028
 005B801D    mov        eax,dword ptr [ebx+5C]; TRaveDataCycle.DataView:TRaveBaseDataView
 005B8020    mov        edx,dword ptr [eax]
 005B8022    call       dword ptr [edx+0F4]; TRaveBaseDataView.sub_005A0FE8
 005B8028    mov        eax,dword ptr [ebx+40]; TRaveDataCycle.?f40:TComponent
 005B802B    mov        edx,dword ptr [eax]
 005B802D    call       dword ptr [edx+88]
 005B8033    inc        dword ptr [ebx+78]; TRaveDataCycle.?f78:dword
 005B8036    mov        eax,dword ptr [ebx+5C]; TRaveDataCycle.DataView:TRaveBaseDataView
 005B8039    mov        edx,dword ptr [eax]
 005B803B    call       dword ptr [edx+118]; TRaveBaseDataView.sub_005A0C94
 005B8041    test       al,al
>005B8043    je         005B8055
 005B8045    mov        esi,dword ptr [ebx+70]; TRaveDataCycle.MaxRows:Integer
 005B8048    test       esi,esi
>005B804A    jle        005B8051
 005B804C    cmp        esi,dword ptr [ebx+78]; TRaveDataCycle.?f78:dword
>005B804F    jg         005B8055
 005B8051    xor        eax,eax
>005B8053    jmp        005B8057
 005B8055    mov        al,1
 005B8057    mov        byte ptr [ebx+7C],al; TRaveDataCycle.?f7C:byte
 005B805A    pop        esi
 005B805B    pop        ebx
 005B805C    ret
*}
end;

end.