{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvDataField;

interface

uses
  Classes, Windows, Graphics, RvClass, RvDefine;

type
  TRaveDataRow = class(TObject)
  public
    f4:dword;//f4
    f8:dword;//f8
    fC:byte;//fC
    f10:TRaveDataRow;//f10
    destructor Destroy; virtual;
  end;
  TRaveDataField = class(TRaveComponent)
  public
    f5C:dword;//f5C
    f64:String;//f64
    Size:Integer;//f68
    f6C:String;//f6C
    f70:TRaveMemoString;//f70
    f74:String;//f74
    Calculated:Boolean;//f78
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure @AbstractError(); virtual;
    //procedure sub_0059EB4C(?:?); virtual;
    function sub_0059EB74:Boolean; virtual;
    //function sub_0059EB88:?; virtual;
    procedure sub_0059EBDC; virtual;
    procedure sub_0059EC40; virtual;
    procedure sub_0059ECA0; virtual;
    procedure sub_0059EE5C; virtual;
    procedure sub_0059ED34; virtual;
    procedure sub_0059EDC8; virtual;
    //function sub_0059EEF0:?; virtual;
  end;
  TRaveFormattedField = class(TRaveDataField)
  public
    f7C:String;//f7C
  end;
  TRaveStringField = class(TRaveDataField)
  public
    //function sub_0059F0C8():?; virtual;
    //procedure sub_0059F0CC(?:?); virtual;
  end;
  TRaveBooleanField = class(TRaveDataField)
  public
    f7C:String;//f7C
    f80:String;//f80
    //function sub_0059F3A0():?; virtual;
    //procedure sub_0059F3A4(?:?); virtual;
    function sub_0059F44C:Boolean; virtual;
  end;
  TRaveIntegerField = class(TRaveFormattedField)
  public
    //function sub_0059F14C():?; virtual;
    //procedure sub_0059F150(?:?); virtual;
    procedure sub_0059F1BC; virtual;
    procedure sub_0059F1F0; virtual;
    procedure sub_0059F214; virtual;
    procedure sub_0059F238; virtual;
  end;
  TRaveInt64Field = class(TRaveFormattedField)
  public
    //function sub_0059F268():?; virtual;
    //procedure sub_0059F26C(?:?); virtual;
    procedure sub_0059F2E0; virtual;
    procedure sub_0059F2F0; virtual;
    procedure sub_0059F344; virtual;
    procedure sub_0059F36C; virtual;
  end;
  TRaveFloatField = class(TRaveFormattedField)
  public
    //function sub_0059F484():?; virtual;
    //procedure sub_0059F488(?:?); virtual;
    procedure sub_0059F4F4; virtual;
    procedure sub_0059F508; virtual;
    procedure sub_0059F530; virtual;
    procedure sub_0059F588; virtual;
  end;
  TRaveCurrencyField = class(TRaveFormattedField)
  public
    //function sub_0059F5B0():?; virtual;
    //procedure sub_0059F5B4(?:?); virtual;
    procedure sub_0059F620; virtual;
    procedure sub_0059F640; virtual;
    procedure sub_0059F674; virtual;
    procedure sub_0059F69C; virtual;
  end;
  TRaveBCDField = class(TRaveCurrencyField)
  public
    //function sub_0059F6E8():?; virtual;
  end;
  TRaveDateTimeField = class(TRaveFormattedField)
  public
    //function sub_0059F6EC():?; virtual;
    //procedure sub_0059F6F0(?:?); virtual;
    procedure sub_0059F7F8; virtual;
    procedure sub_0059F76C; virtual;
    procedure sub_0059F7B8; virtual;
    procedure sub_0059F7D8; virtual;
  end;
  TRaveDateField = class(TRaveDateTimeField)
  public
    //function sub_0059F814():?; virtual;
    //procedure sub_0059F818(?:?); virtual;
    procedure sub_0059F898; virtual;
    procedure sub_0059F8B0; virtual;
    procedure sub_0059F900(); virtual;
  end;
  TRaveTimeField = class(TRaveDateTimeField)
  public
    //function sub_0059F914():?; virtual;
    //procedure sub_0059F918(?:?); virtual;
    procedure sub_0059F994; virtual;
    procedure sub_0059F9AC(); virtual;
    procedure sub_0059F9C0; virtual;
  end;
  TRaveBlobField = class(TRaveDataField)
  public
    //function sub_0059FA10():?; virtual;
    //procedure sub_0059FA14(?:?); virtual;
  end;
  TRaveMemoField = class(TRaveBlobField)
  public
    //function sub_0059FA84():?; virtual;
    //procedure sub_0059FA88(?:?); virtual;
  end;
  TRaveGraphicField = class(TRaveBlobField)
  public
    //function sub_0059FAF8():?; virtual;
    //procedure sub_0059FAFC(?:?); virtual;
  end;

implementation

{$R *.DFM}

//0059E994
destructor TRaveDataRow.Destroy;
begin
{*
 0059E994    push       ebx
 0059E995    push       esi
 0059E996    call       @BeforeDestruction
 0059E99B    mov        ebx,edx
 0059E99D    mov        esi,eax
 0059E99F    mov        eax,esi
 0059E9A1    call       0059E9E8
 0059E9A6    mov        edx,ebx
 0059E9A8    and        dl,0FC
 0059E9AB    mov        eax,esi
 0059E9AD    call       TObject.Destroy
 0059E9B2    test       bl,bl
>0059E9B4    jle        0059E9BD
 0059E9B6    mov        eax,esi
 0059E9B8    call       @ClassDestroy
 0059E9BD    pop        esi
 0059E9BE    pop        ebx
 0059E9BF    ret
*}
end;

//0059E9C0
//procedure sub_0059E9C0(?:TRaveDataRow; ?:TRaveDataRow);
//begin
{*
 0059E9C0    push       ebx
 0059E9C1    push       esi
 0059E9C2    mov        esi,edx
 0059E9C4    mov        ebx,eax
 0059E9C6    mov        edx,dword ptr [ebx+8]; TRaveDataRow.?f8:dword
 0059E9C9    mov        eax,esi
 0059E9CB    call       0059EA08
 0059E9D0    mov        edx,dword ptr [esi+4]; TRaveDataRow.?f4:dword
 0059E9D3    mov        eax,dword ptr [ebx+4]; TRaveDataRow.?f4:dword
 0059E9D6    mov        ecx,dword ptr [ebx+8]; TRaveDataRow.?f8:dword
 0059E9D9    call       Move
 0059E9DE    mov        eax,ebx
 0059E9E0    call       0059E9E8
 0059E9E5    pop        esi
 0059E9E6    pop        ebx
 0059E9E7    ret
*}
//end;

//0059E9E8
//procedure sub_0059E9E8(?:dword);
//begin
{*
 0059E9E8    push       ebx
 0059E9E9    mov        ebx,eax
 0059E9EB    mov        eax,dword ptr [ebx+4]
 0059E9EE    test       eax,eax
>0059E9F0    je         0059E9FF
 0059E9F2    mov        edx,dword ptr [ebx+8]
 0059E9F5    call       @FreeMem
 0059E9FA    xor        eax,eax
 0059E9FC    mov        dword ptr [ebx+4],eax
 0059E9FF    xor        eax,eax
 0059EA01    mov        dword ptr [ebx+8],eax
 0059EA04    pop        ebx
 0059EA05    ret
*}
//end;

//0059EA08
//procedure sub_0059EA08(?:dword; ?:dword);
//begin
{*
 0059EA08    push       ebx
 0059EA09    push       esi
 0059EA0A    push       edi
 0059EA0B    mov        edi,edx
 0059EA0D    mov        ebx,eax
 0059EA0F    mov        eax,ebx
 0059EA11    call       0059E9E8
 0059EA16    mov        esi,edi
 0059EA18    mov        dword ptr [ebx+8],esi
 0059EA1B    mov        eax,esi
 0059EA1D    call       @GetMem
 0059EA22    mov        dword ptr [ebx+4],eax
 0059EA25    pop        edi
 0059EA26    pop        esi
 0059EA27    pop        ebx
 0059EA28    ret
*}
//end;

//0059EA2C
//function sub_0059EA2C(?:?; ?:dword):?;
//begin
{*
 0059EA2C    push       esi
 0059EA2D    xor        esi,esi
 0059EA2F    mov        ecx,dword ptr [eax+4]
 0059EA32    test       ecx,ecx
>0059EA34    je         0059EA45
 0059EA36    shl        edx,3
 0059EA39    add        edx,ecx
 0059EA3B    mov        edx,dword ptr [edx]
 0059EA3D    test       edx,edx
>0059EA3F    jl         0059EA45
 0059EA41    mov        esi,ecx
 0059EA43    add        esi,edx
 0059EA45    mov        eax,esi
 0059EA47    pop        esi
 0059EA48    ret
*}
//end;

//0059EA4C
//function sub_0059EA4C(?:?; ?:dword):?;
//begin
{*
 0059EA4C    shl        edx,3
 0059EA4F    add        edx,4
 0059EA52    mov        ecx,dword ptr [eax+4]
 0059EA55    add        edx,ecx
 0059EA57    mov        edx,dword ptr [edx]
 0059EA59    test       edx,edx
>0059EA5B    jne        0059EA60
 0059EA5D    xor        eax,eax
 0059EA5F    ret
 0059EA60    add        edx,ecx
 0059EA62    mov        eax,edx
 0059EA64    ret
*}
//end;

//0059EA68
//procedure sub_0059EA68(?:?; ?:dword; ?:?; ?:?);
//begin
{*
 0059EA68    push       ebp
 0059EA69    mov        ebp,esp
 0059EA6B    push       ecx
 0059EA6C    push       ebx
 0059EA6D    push       esi
 0059EA6E    push       edi
 0059EA6F    mov        ebx,ecx
 0059EA71    mov        dword ptr [ebp-4],edx
 0059EA74    mov        esi,eax
 0059EA76    mov        edi,dword ptr [ebp+8]
 0059EA79    mov        edx,dword ptr [ebp-4]
 0059EA7C    mov        eax,esi
 0059EA7E    call       0059EA2C
 0059EA83    mov        dword ptr [ebx],eax
 0059EA85    cmp        dword ptr [ebx],0
>0059EA88    je         0059EA95
 0059EA8A    mov        eax,dword ptr [ebx]
 0059EA8C    mov        eax,dword ptr [eax]
 0059EA8E    mov        dword ptr [edi],eax
 0059EA90    add        dword ptr [ebx],4
>0059EA93    jmp        0059EA99
 0059EA95    xor        eax,eax
 0059EA97    mov        dword ptr [edi],eax
 0059EA99    pop        edi
 0059EA9A    pop        esi
 0059EA9B    pop        ebx
 0059EA9C    pop        ecx
 0059EA9D    pop        ebp
 0059EA9E    ret        4
*}
//end;

//0059EAA4
//procedure sub_0059EAA4(?:?; ?:dword; ?:?);
//begin
{*
 0059EAA4    push       ebx
 0059EAA5    push       esi
 0059EAA6    push       edi
 0059EAA7    mov        edi,ecx
 0059EAA9    call       0059EA4C
 0059EAAE    mov        ebx,eax
 0059EAB0    test       ebx,ebx
>0059EAB2    je         0059EADA
 0059EAB4    mov        esi,dword ptr [ebx]
 0059EAB6    mov        eax,edi
 0059EAB8    mov        edx,esi
 0059EABA    call       @LStrSetLength
 0059EABF    test       esi,esi
>0059EAC1    jle        0059EAE1
 0059EAC3    add        ebx,4
 0059EAC6    mov        eax,edi
 0059EAC8    call       @UniqueStringA
 0059EACD    mov        edx,eax
 0059EACF    mov        eax,ebx
 0059EAD1    mov        ecx,esi
 0059EAD3    call       Move
>0059EAD8    jmp        0059EAE1
 0059EADA    mov        eax,edi
 0059EADC    call       @LStrClr
 0059EAE1    pop        edi
 0059EAE2    pop        esi
 0059EAE3    pop        ebx
 0059EAE4    ret
*}
//end;

//0059EAE8
constructor TRaveDataField.Create(AOwner:TComponent);
begin
{*
 0059EAE8    push       ebx
 0059EAE9    push       esi
 0059EAEA    test       dl,dl
>0059EAEC    je         0059EAF6
 0059EAEE    add        esp,0FFFFFFF0
 0059EAF1    call       @ClassCreate
 0059EAF6    mov        ebx,edx
 0059EAF8    mov        esi,eax
 0059EAFA    xor        edx,edx
 0059EAFC    mov        eax,esi
 0059EAFE    call       TRaveComponent.Create
 0059EB03    mov        dword ptr [esi+68],0A; TRaveDataField.Size:Integer
 0059EB0A    mov        eax,esi
 0059EB0C    test       bl,bl
>0059EB0E    je         0059EB1F
 0059EB10    call       @AfterConstruction
 0059EB15    pop        dword ptr fs:[0]
 0059EB1C    add        esp,0C
 0059EB1F    mov        eax,esi
 0059EB21    pop        esi
 0059EB22    pop        ebx
 0059EB23    ret
*}
end;

//0059EB24
destructor TRaveDataField.Destroy;
begin
{*
 0059EB24    push       ebx
 0059EB25    push       esi
 0059EB26    call       @BeforeDestruction
 0059EB2B    mov        ebx,edx
 0059EB2D    mov        esi,eax
 0059EB2F    mov        edx,ebx
 0059EB31    and        dl,0FC
 0059EB34    mov        eax,esi
 0059EB36    call       TRaveComponent.Destroy
 0059EB3B    test       bl,bl
>0059EB3D    jle        0059EB46
 0059EB3F    mov        eax,esi
 0059EB41    call       @ClassDestroy
 0059EB46    pop        esi
 0059EB47    pop        ebx
 0059EB48    ret
*}
end;

//0059EB4C
//procedure sub_0059EB4C(?:?);
//begin
{*
 0059EB4C    push       ebx
 0059EB4D    push       esi
 0059EB4E    mov        esi,edx
 0059EB50    mov        ebx,eax
 0059EB52    mov        eax,dword ptr [ebx+38]; TRaveDataField.?f38:dword
 0059EB55    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059EB5B    call       @AsClass
 0059EB60    call       005A091C
 0059EB65    mov        ecx,esi
 0059EB67    mov        edx,dword ptr [ebx+5C]; TRaveDataField.?f5C:dword
 0059EB6A    call       0059EAA4
 0059EB6F    pop        esi
 0059EB70    pop        ebx
 0059EB71    ret
*}
//end;

//0059EB74
function sub_0059EB74:Boolean;
begin
{*
 0059EB74    push       ebx
 0059EB75    mov        ebx,eax
 0059EB77    mov        eax,ebx
 0059EB79    mov        edx,dword ptr [eax]
 0059EB7B    call       dword ptr [edx+0E0]; TRaveGraphicField.sub_0059EB88
 0059EB81    test       eax,eax
 0059EB83    setne      al
 0059EB86    pop        ebx
 0059EB87    ret
*}
end;

//0059EB88
//function sub_0059EB88:?;
//begin
{*
 0059EB88    push       ebp
 0059EB89    mov        ebp,esp
 0059EB8B    push       0
 0059EB8D    push       ebx
 0059EB8E    mov        ebx,eax
 0059EB90    xor        eax,eax
 0059EB92    push       ebp
 0059EB93    push       59EBCD
 0059EB98    push       dword ptr fs:[eax]
 0059EB9B    mov        dword ptr fs:[eax],esp
 0059EB9E    lea        edx,[ebp-4]
 0059EBA1    mov        eax,ebx
 0059EBA3    mov        ecx,dword ptr [eax]
 0059EBA5    call       dword ptr [ecx+0D8]; TRaveGraphicField.sub_0059FAFC
 0059EBAB    mov        eax,dword ptr [ebp-4]
 0059EBAE    xor        edx,edx
 0059EBB0    call       StrToIntDef
 0059EBB5    mov        ebx,eax
 0059EBB7    xor        eax,eax
 0059EBB9    pop        edx
 0059EBBA    pop        ecx
 0059EBBB    pop        ecx
 0059EBBC    mov        dword ptr fs:[eax],edx
 0059EBBF    push       59EBD4
 0059EBC4    lea        eax,[ebp-4]
 0059EBC7    call       @LStrClr
 0059EBCC    ret
<0059EBCD    jmp        @HandleFinally
<0059EBD2    jmp        0059EBC4
 0059EBD4    mov        eax,ebx
 0059EBD6    pop        ebx
 0059EBD7    pop        ecx
 0059EBD8    pop        ebp
 0059EBD9    ret
*}
//end;

//0059EBDC
procedure sub_0059EBDC;
begin
{*
 0059EBDC    push       ebp
 0059EBDD    mov        ebp,esp
 0059EBDF    add        esp,0FFFFFFF4
 0059EBE2    push       ebx
 0059EBE3    xor        edx,edx
 0059EBE5    mov        dword ptr [ebp-0C],edx
 0059EBE8    mov        ebx,eax
 0059EBEA    xor        eax,eax
 0059EBEC    push       ebp
 0059EBED    push       59EC2D
 0059EBF2    push       dword ptr fs:[eax]
 0059EBF5    mov        dword ptr fs:[eax],esp
 0059EBF8    push       0
 0059EBFA    push       0
 0059EBFC    lea        edx,[ebp-0C]
 0059EBFF    mov        eax,ebx
 0059EC01    mov        ecx,dword ptr [eax]
 0059EC03    call       dword ptr [ecx+0D8]; TRaveGraphicField.sub_0059FAFC
 0059EC09    mov        eax,dword ptr [ebp-0C]
 0059EC0C    call       StrToInt64Def
 0059EC11    mov        dword ptr [ebp-8],eax
 0059EC14    mov        dword ptr [ebp-4],edx
 0059EC17    xor        eax,eax
 0059EC19    pop        edx
 0059EC1A    pop        ecx
 0059EC1B    pop        ecx
 0059EC1C    mov        dword ptr fs:[eax],edx
 0059EC1F    push       59EC34
 0059EC24    lea        eax,[ebp-0C]
 0059EC27    call       @LStrClr
 0059EC2C    ret
<0059EC2D    jmp        @HandleFinally
<0059EC32    jmp        0059EC24
 0059EC34    mov        eax,dword ptr [ebp-8]
 0059EC37    mov        edx,dword ptr [ebp-4]
 0059EC3A    pop        ebx
 0059EC3B    mov        esp,ebp
 0059EC3D    pop        ebp
 0059EC3E    ret
*}
end;

//0059EC40
procedure sub_0059EC40;
begin
{*
 0059EC40    push       ebp
 0059EC41    mov        ebp,esp
 0059EC43    add        esp,0FFFFFFEC
 0059EC46    push       ebx
 0059EC47    xor        edx,edx
 0059EC49    mov        dword ptr [ebp-14],edx
 0059EC4C    mov        ebx,eax
 0059EC4E    xor        eax,eax
 0059EC50    push       ebp
 0059EC51    push       59EC91
 0059EC56    push       dword ptr fs:[eax]
 0059EC59    mov        dword ptr fs:[eax],esp
 0059EC5C    push       0
 0059EC5E    push       0
 0059EC60    push       0
 0059EC62    lea        edx,[ebp-14]
 0059EC65    mov        eax,ebx
 0059EC67    mov        ecx,dword ptr [eax]
 0059EC69    call       dword ptr [ecx+0D8]; TRaveGraphicField.sub_0059FAFC
 0059EC6F    mov        eax,dword ptr [ebp-14]
 0059EC72    call       StrToFloatDef
 0059EC77    fstp       tbyte ptr [ebp-10]
 0059EC7A    wait
 0059EC7B    xor        eax,eax
 0059EC7D    pop        edx
 0059EC7E    pop        ecx
 0059EC7F    pop        ecx
 0059EC80    mov        dword ptr fs:[eax],edx
 0059EC83    push       59EC98
 0059EC88    lea        eax,[ebp-14]
 0059EC8B    call       @LStrClr
 0059EC90    ret
<0059EC91    jmp        @HandleFinally
<0059EC96    jmp        0059EC88
 0059EC98    fld        tbyte ptr [ebp-10]
 0059EC9B    pop        ebx
 0059EC9C    mov        esp,ebp
 0059EC9E    pop        ebp
 0059EC9F    ret
*}
end;

//0059ECA0
procedure sub_0059ECA0;
begin
{*
 0059ECA0    push       ebp
 0059ECA1    mov        ebp,esp
 0059ECA3    add        esp,0FFFFFFF4
 0059ECA6    push       ebx
 0059ECA7    push       esi
 0059ECA8    push       edi
 0059ECA9    xor        edx,edx
 0059ECAB    mov        dword ptr [ebp-0C],edx
 0059ECAE    mov        ebx,eax
 0059ECB0    xor        eax,eax
 0059ECB2    push       ebp
 0059ECB3    push       59ED23
 0059ECB8    push       dword ptr fs:[eax]
 0059ECBB    mov        dword ptr fs:[eax],esp
 0059ECBE    xor        eax,eax
 0059ECC0    push       ebp
 0059ECC1    push       59ECEF
 0059ECC6    push       dword ptr fs:[eax]
 0059ECC9    mov        dword ptr fs:[eax],esp
 0059ECCC    lea        edx,[ebp-0C]
 0059ECCF    mov        eax,ebx
 0059ECD1    mov        ecx,dword ptr [eax]
 0059ECD3    call       dword ptr [ecx+0D8]; TRaveGraphicField.sub_0059FAFC
 0059ECD9    mov        eax,dword ptr [ebp-0C]
 0059ECDC    call       StrToCurr
 0059ECE1    fistp      qword ptr [ebp-8]
 0059ECE4    wait
 0059ECE5    xor        eax,eax
 0059ECE7    pop        edx
 0059ECE8    pop        ecx
 0059ECE9    pop        ecx
 0059ECEA    mov        dword ptr fs:[eax],edx
>0059ECED    jmp        0059ED0D
<0059ECEF    jmp        @HandleOnException
 0059ECF4    dd        1
 0059ECF8    dd        408E2C;EConvertError
 0059ECFC    dd        59ED00
 0059ED00    xor        eax,eax
 0059ED02    mov        dword ptr [ebp-8],eax
 0059ED05    mov        dword ptr [ebp-4],eax
 0059ED08    call       @DoneExcept
 0059ED0D    xor        eax,eax
 0059ED0F    pop        edx
 0059ED10    pop        ecx
 0059ED11    pop        ecx
 0059ED12    mov        dword ptr fs:[eax],edx
 0059ED15    push       59ED2A
 0059ED1A    lea        eax,[ebp-0C]
 0059ED1D    call       @LStrClr
 0059ED22    ret
<0059ED23    jmp        @HandleFinally
<0059ED28    jmp        0059ED1A
 0059ED2A    fild       qword ptr [ebp-8]
 0059ED2D    pop        edi
 0059ED2E    pop        esi
 0059ED2F    pop        ebx
 0059ED30    mov        esp,ebp
 0059ED32    pop        ebp
 0059ED33    ret
*}
end;

//0059ED34
procedure sub_0059ED34;
begin
{*
 0059ED34    push       ebp
 0059ED35    mov        ebp,esp
 0059ED37    add        esp,0FFFFFFF4
 0059ED3A    push       ebx
 0059ED3B    push       esi
 0059ED3C    push       edi
 0059ED3D    xor        edx,edx
 0059ED3F    mov        dword ptr [ebp-0C],edx
 0059ED42    mov        ebx,eax
 0059ED44    xor        eax,eax
 0059ED46    push       ebp
 0059ED47    push       59EDB7
 0059ED4C    push       dword ptr fs:[eax]
 0059ED4F    mov        dword ptr fs:[eax],esp
 0059ED52    xor        eax,eax
 0059ED54    push       ebp
 0059ED55    push       59ED83
 0059ED5A    push       dword ptr fs:[eax]
 0059ED5D    mov        dword ptr fs:[eax],esp
 0059ED60    lea        edx,[ebp-0C]
 0059ED63    mov        eax,ebx
 0059ED65    mov        ecx,dword ptr [eax]
 0059ED67    call       dword ptr [ecx+0D8]; TRaveGraphicField.sub_0059FAFC
 0059ED6D    mov        eax,dword ptr [ebp-0C]
 0059ED70    call       StrToDate
 0059ED75    fstp       qword ptr [ebp-8]
 0059ED78    wait
 0059ED79    xor        eax,eax
 0059ED7B    pop        edx
 0059ED7C    pop        ecx
 0059ED7D    pop        ecx
 0059ED7E    mov        dword ptr fs:[eax],edx
>0059ED81    jmp        0059EDA1
<0059ED83    jmp        @HandleOnException
 0059ED88    dd        1
 0059ED8C    dd        408E2C;EConvertError
 0059ED90    dd        59ED94
 0059ED94    xor        eax,eax
 0059ED96    mov        dword ptr [ebp-8],eax
 0059ED99    mov        dword ptr [ebp-4],eax
 0059ED9C    call       @DoneExcept
 0059EDA1    xor        eax,eax
 0059EDA3    pop        edx
 0059EDA4    pop        ecx
 0059EDA5    pop        ecx
 0059EDA6    mov        dword ptr fs:[eax],edx
 0059EDA9    push       59EDBE
 0059EDAE    lea        eax,[ebp-0C]
 0059EDB1    call       @LStrClr
 0059EDB6    ret
<0059EDB7    jmp        @HandleFinally
<0059EDBC    jmp        0059EDAE
 0059EDBE    fld        qword ptr [ebp-8]
 0059EDC1    pop        edi
 0059EDC2    pop        esi
 0059EDC3    pop        ebx
 0059EDC4    mov        esp,ebp
 0059EDC6    pop        ebp
 0059EDC7    ret
*}
end;

//0059EDC8
procedure sub_0059EDC8;
begin
{*
 0059EDC8    push       ebp
 0059EDC9    mov        ebp,esp
 0059EDCB    add        esp,0FFFFFFF4
 0059EDCE    push       ebx
 0059EDCF    push       esi
 0059EDD0    push       edi
 0059EDD1    xor        edx,edx
 0059EDD3    mov        dword ptr [ebp-0C],edx
 0059EDD6    mov        ebx,eax
 0059EDD8    xor        eax,eax
 0059EDDA    push       ebp
 0059EDDB    push       59EE4B
 0059EDE0    push       dword ptr fs:[eax]
 0059EDE3    mov        dword ptr fs:[eax],esp
 0059EDE6    xor        eax,eax
 0059EDE8    push       ebp
 0059EDE9    push       59EE17
 0059EDEE    push       dword ptr fs:[eax]
 0059EDF1    mov        dword ptr fs:[eax],esp
 0059EDF4    lea        edx,[ebp-0C]
 0059EDF7    mov        eax,ebx
 0059EDF9    mov        ecx,dword ptr [eax]
 0059EDFB    call       dword ptr [ecx+0D8]; TRaveGraphicField.sub_0059FAFC
 0059EE01    mov        eax,dword ptr [ebp-0C]
 0059EE04    call       StrToTime
 0059EE09    fstp       qword ptr [ebp-8]
 0059EE0C    wait
 0059EE0D    xor        eax,eax
 0059EE0F    pop        edx
 0059EE10    pop        ecx
 0059EE11    pop        ecx
 0059EE12    mov        dword ptr fs:[eax],edx
>0059EE15    jmp        0059EE35
<0059EE17    jmp        @HandleOnException
 0059EE1C    dd        1
 0059EE20    dd        408E2C;EConvertError
 0059EE24    dd        59EE28
 0059EE28    xor        eax,eax
 0059EE2A    mov        dword ptr [ebp-8],eax
 0059EE2D    mov        dword ptr [ebp-4],eax
 0059EE30    call       @DoneExcept
 0059EE35    xor        eax,eax
 0059EE37    pop        edx
 0059EE38    pop        ecx
 0059EE39    pop        ecx
 0059EE3A    mov        dword ptr fs:[eax],edx
 0059EE3D    push       59EE52
 0059EE42    lea        eax,[ebp-0C]
 0059EE45    call       @LStrClr
 0059EE4A    ret
<0059EE4B    jmp        @HandleFinally
<0059EE50    jmp        0059EE42
 0059EE52    fld        qword ptr [ebp-8]
 0059EE55    pop        edi
 0059EE56    pop        esi
 0059EE57    pop        ebx
 0059EE58    mov        esp,ebp
 0059EE5A    pop        ebp
 0059EE5B    ret
*}
end;

//0059EE5C
procedure sub_0059EE5C;
begin
{*
 0059EE5C    push       ebp
 0059EE5D    mov        ebp,esp
 0059EE5F    add        esp,0FFFFFFF4
 0059EE62    push       ebx
 0059EE63    push       esi
 0059EE64    push       edi
 0059EE65    xor        edx,edx
 0059EE67    mov        dword ptr [ebp-0C],edx
 0059EE6A    mov        ebx,eax
 0059EE6C    xor        eax,eax
 0059EE6E    push       ebp
 0059EE6F    push       59EEDF
 0059EE74    push       dword ptr fs:[eax]
 0059EE77    mov        dword ptr fs:[eax],esp
 0059EE7A    xor        eax,eax
 0059EE7C    push       ebp
 0059EE7D    push       59EEAB
 0059EE82    push       dword ptr fs:[eax]
 0059EE85    mov        dword ptr fs:[eax],esp
 0059EE88    lea        edx,[ebp-0C]
 0059EE8B    mov        eax,ebx
 0059EE8D    mov        ecx,dword ptr [eax]
 0059EE8F    call       dword ptr [ecx+0D8]; TRaveGraphicField.sub_0059FAFC
 0059EE95    mov        eax,dword ptr [ebp-0C]
 0059EE98    call       StrToDateTime
 0059EE9D    fstp       qword ptr [ebp-8]
 0059EEA0    wait
 0059EEA1    xor        eax,eax
 0059EEA3    pop        edx
 0059EEA4    pop        ecx
 0059EEA5    pop        ecx
 0059EEA6    mov        dword ptr fs:[eax],edx
>0059EEA9    jmp        0059EEC9
<0059EEAB    jmp        @HandleOnException
 0059EEB0    dd        1
 0059EEB4    dd        408E2C;EConvertError
 0059EEB8    dd        59EEBC
 0059EEBC    xor        eax,eax
 0059EEBE    mov        dword ptr [ebp-8],eax
 0059EEC1    mov        dword ptr [ebp-4],eax
 0059EEC4    call       @DoneExcept
 0059EEC9    xor        eax,eax
 0059EECB    pop        edx
 0059EECC    pop        ecx
 0059EECD    pop        ecx
 0059EECE    mov        dword ptr fs:[eax],edx
 0059EED1    push       59EEE6
 0059EED6    lea        eax,[ebp-0C]
 0059EED9    call       @LStrClr
 0059EEDE    ret
<0059EEDF    jmp        @HandleFinally
<0059EEE4    jmp        0059EED6
 0059EEE6    fld        qword ptr [ebp-8]
 0059EEE9    pop        edi
 0059EEEA    pop        esi
 0059EEEB    pop        ebx
 0059EEEC    mov        esp,ebp
 0059EEEE    pop        ebp
 0059EEEF    ret
*}
end;

//0059EEF0
//function sub_0059EEF0:?;
//begin
{*
 0059EEF0    push       ebx
 0059EEF1    push       esi
 0059EEF2    mov        ebx,eax
 0059EEF4    mov        eax,dword ptr [ebx+38]; TRaveGraphicField.?f38:dword
 0059EEF7    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059EEFD    call       @AsClass
 0059EF02    call       005A091C
 0059EF07    mov        edx,dword ptr [ebx+5C]; TRaveGraphicField.?f5C:dword
 0059EF0A    call       0059EA2C
 0059EF0F    mov        esi,eax
 0059EF11    test       esi,esi
>0059EF13    je         0059EF2C
 0059EF15    mov        eax,ebx
 0059EF17    mov        edx,dword ptr [eax]
 0059EF19    call       dword ptr [edx+0D4]; TRaveGraphicField.sub_0059FAF8
 0059EF1F    test       al,al
>0059EF21    je         0059EF29
 0059EF23    add        al,0F7
 0059EF25    sub        al,3
>0059EF27    jae        0059EF2C
 0059EF29    add        esi,4
 0059EF2C    mov        eax,esi
 0059EF2E    pop        esi
 0059EF2F    pop        ebx
 0059EF30    ret
*}
//end;

//0059EF34
//function sub_0059EF34(?:?):?;
//begin
{*
 0059EF34    push       ebx
 0059EF35    add        esp,0FFFFFFF8
 0059EF38    mov        ebx,eax
 0059EF3A    mov        eax,ebx
 0059EF3C    mov        edx,dword ptr [eax]
 0059EF3E    call       dword ptr [edx+0D4]
 0059EF44    and        eax,7F
 0059EF47    cmp        eax,8
>0059EF4A    ja         0059EFB6
 0059EF4C    jmp        dword ptr [eax*4+59EF53]
 0059EF4C    dd         59EFB6
 0059EF4C    dd         59EF77
 0059EF4C    dd         59EF80
 0059EF4C    dd         59EF89
 0059EF4C    dd         59EF92
 0059EF4C    dd         59EF92
 0059EF4C    dd         59EF9B
 0059EF4C    dd         59EFA4
 0059EF4C    dd         59EFAD
 0059EF77    mov        dword ptr [esp],4
>0059EF7E    jmp        0059EFD6
 0059EF80    mov        dword ptr [esp],1
>0059EF87    jmp        0059EFD6
 0059EF89    mov        dword ptr [esp],0A
>0059EF90    jmp        0059EFD6
 0059EF92    mov        dword ptr [esp],8
>0059EF99    jmp        0059EFD6
 0059EF9B    mov        dword ptr [esp],8
>0059EFA2    jmp        0059EFD6
 0059EFA4    mov        dword ptr [esp],8
>0059EFAB    jmp        0059EFD6
 0059EFAD    mov        dword ptr [esp],8
>0059EFB4    jmp        0059EFD6
 0059EFB6    push       esp
 0059EFB7    mov        eax,dword ptr [ebx+38]
 0059EFBA    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059EFC0    call       @AsClass
 0059EFC5    call       005A091C
 0059EFCA    lea        ecx,[esp+8]
 0059EFCE    mov        edx,dword ptr [ebx+5C]
 0059EFD1    call       0059EA68
 0059EFD6    mov        eax,dword ptr [esp]
 0059EFD9    pop        ecx
 0059EFDA    pop        edx
 0059EFDB    pop        ebx
 0059EFDC    ret
*}
//end;

//0059EFE0
//function sub_0059EFE0(?:TRaveDataField):?;
//begin
{*
 0059EFE0    push       ebx
 0059EFE1    push       esi
 0059EFE2    mov        ebx,eax
 0059EFE4    mov        eax,dword ptr [ebx+38]; TRaveDataField.?f38:dword
 0059EFE7    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059EFED    call       @AsClass
 0059EFF2    mov        esi,eax
 0059EFF4    cmp        byte ptr [esi+7D],0; TRaveBaseDataView.?f7D:byte
>0059EFF8    jne        0059F020
 0059EFFA    mov        eax,dword ptr [ebx+38]; TRaveDataField.?f38:dword
 0059EFFD    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059F003    call       @AsClass
 0059F008    mov        eax,esi
 0059F00A    call       005A091C
 0059F00F    mov        edx,dword ptr [ebx+5C]; TRaveDataField.?f5C:dword
 0059F012    call       0059EA2C
 0059F017    test       eax,eax
>0059F019    je         0059F020
 0059F01B    xor        eax,eax
 0059F01D    pop        esi
 0059F01E    pop        ebx
 0059F01F    ret
 0059F020    mov        al,1
 0059F022    pop        esi
 0059F023    pop        ebx
 0059F024    ret
*}
//end;

//0059F028
//procedure TRaveDataField.SetFieldName(Self:TRaveDataField; ?:?);
//begin
{*
 0059F028    push       ebp
 0059F029    mov        ebp,esp
 0059F02B    xor        ecx,ecx
 0059F02D    push       ecx
 0059F02E    push       ecx
 0059F02F    push       ecx
 0059F030    push       ecx
 0059F031    push       ebx
 0059F032    mov        dword ptr [ebp-4],edx
 0059F035    mov        ebx,eax
 0059F037    mov        eax,dword ptr [ebp-4]
 0059F03A    call       @LStrAddRef
 0059F03F    xor        eax,eax
 0059F041    push       ebp
 0059F042    push       59F0B9
 0059F047    push       dword ptr fs:[eax]
 0059F04A    mov        dword ptr fs:[eax],esp
 0059F04D    mov        eax,dword ptr [ebp-4]
 0059F050    mov        edx,dword ptr [ebx+64]; TRaveDataField.?f64:String
 0059F053    call       @LStrCmp
>0059F058    je         0059F09E
 0059F05A    lea        edx,[ebp-8]
 0059F05D    mov        eax,dword ptr [ebx+64]; TRaveDataField.?f64:String
 0059F060    call       005A564C
 0059F065    mov        edx,dword ptr [ebp-8]
 0059F068    mov        eax,dword ptr [ebx+6C]; TRaveDataField.?f6C:String
 0059F06B    call       @LStrCmp
>0059F070    jne        0059F088
 0059F072    lea        edx,[ebp-0C]
 0059F075    mov        eax,dword ptr [ebp-4]
 0059F078    call       005A564C
 0059F07D    mov        edx,dword ptr [ebp-0C]
 0059F080    lea        eax,[ebx+6C]; TRaveDataField.?f6C:String
 0059F083    call       @LStrAsg
 0059F088    lea        edx,[ebp-10]
 0059F08B    mov        eax,dword ptr [ebp-4]
 0059F08E    call       005A5700
 0059F093    mov        edx,dword ptr [ebp-10]
 0059F096    lea        eax,[ebx+64]; TRaveDataField.?f64:String
 0059F099    call       @LStrAsg
 0059F09E    xor        eax,eax
 0059F0A0    pop        edx
 0059F0A1    pop        ecx
 0059F0A2    pop        ecx
 0059F0A3    mov        dword ptr fs:[eax],edx
 0059F0A6    push       59F0C0
 0059F0AB    lea        eax,[ebp-10]
 0059F0AE    mov        edx,4
 0059F0B3    call       @LStrArrayClr
 0059F0B8    ret
<0059F0B9    jmp        @HandleFinally
<0059F0BE    jmp        0059F0AB
 0059F0C0    pop        ebx
 0059F0C1    mov        esp,ebp
 0059F0C3    pop        ebp
 0059F0C4    ret
*}
//end;

//0059F0C8
//function sub_0059F0C8():?;
//begin
{*
 0059F0C8    xor        eax,eax
 0059F0CA    ret
*}
//end;

//0059F0CC
//procedure sub_0059F0CC(?:?);
//begin
{*
 0059F0CC    push       ebx
 0059F0CD    push       esi
 0059F0CE    add        esp,0FFFFFFF8
 0059F0D1    mov        esi,edx
 0059F0D3    mov        ebx,eax
 0059F0D5    mov        eax,ebx
 0059F0D7    call       0059EFE0
 0059F0DC    test       al,al
>0059F0DE    je         0059F0EC
 0059F0E0    mov        eax,esi
 0059F0E2    mov        edx,dword ptr [ebx+74]; TRaveStringField.?f74:String
 0059F0E5    call       @LStrAsg
>0059F0EA    jmp        0059F145
 0059F0EC    mov        edx,esi
 0059F0EE    mov        eax,ebx
 0059F0F0    call       0059EB4C
 0059F0F5    cmp        dword ptr [esi],0
>0059F0F8    jne        0059F145
 0059F0FA    lea        eax,[esp+4]
 0059F0FE    push       eax
 0059F0FF    mov        eax,dword ptr [ebx+38]; TRaveStringField.?f38:dword
 0059F102    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059F108    call       @AsClass
 0059F10D    call       005A091C
 0059F112    lea        ecx,[esp+4]
 0059F116    mov        edx,dword ptr [ebx+5C]; TRaveStringField.?f5C:dword
 0059F119    call       0059EA68
 0059F11E    mov        eax,esi
 0059F120    mov        edx,dword ptr [esp+4]
 0059F124    call       @LStrSetLength
 0059F129    cmp        dword ptr [esp+4],0
>0059F12E    jle        0059F145
 0059F130    mov        eax,esi
 0059F132    call       @UniqueStringA
 0059F137    mov        edx,eax
 0059F139    mov        eax,dword ptr [esp]
 0059F13C    mov        ecx,dword ptr [esp+4]
 0059F140    call       Move
 0059F145    pop        ecx
 0059F146    pop        edx
 0059F147    pop        esi
 0059F148    pop        ebx
 0059F149    ret
*}
//end;

//0059F14C
//function sub_0059F14C():?;
//begin
{*
 0059F14C    mov        al,1
 0059F14E    ret
*}
//end;

//0059F150
//procedure sub_0059F150(?:?);
//begin
{*
 0059F150    push       ebx
 0059F151    push       esi
 0059F152    push       ecx
 0059F153    mov        esi,edx
 0059F155    mov        ebx,eax
 0059F157    mov        eax,ebx
 0059F159    call       0059EFE0
 0059F15E    test       al,al
>0059F160    je         0059F16E
 0059F162    mov        eax,esi
 0059F164    mov        edx,dword ptr [ebx+74]; TRaveIntegerField.?f74:String
 0059F167    call       @LStrAsg
>0059F16C    jmp        0059F1B6
 0059F16E    cmp        dword ptr [ebx+7C],0; TRaveIntegerField.?f7C:String
>0059F172    je         0059F197
 0059F174    mov        eax,ebx
 0059F176    mov        edx,dword ptr [eax]
 0059F178    call       dword ptr [edx+0E0]; TRaveIntegerField.sub_0059F1BC
 0059F17E    mov        dword ptr [esp],eax
 0059F181    fild       dword ptr [esp]
 0059F184    add        esp,0FFFFFFF4
 0059F187    fstp       tbyte ptr [esp]
 0059F18A    wait
 0059F18B    mov        edx,esi
 0059F18D    mov        eax,dword ptr [ebx+7C]; TRaveIntegerField.?f7C:String
 0059F190    call       FormatFloat
>0059F195    jmp        0059F1B6
 0059F197    mov        edx,esi
 0059F199    mov        eax,ebx
 0059F19B    call       0059EB4C
 0059F1A0    cmp        dword ptr [esi],0
>0059F1A3    jne        0059F1B6
 0059F1A5    mov        eax,ebx
 0059F1A7    mov        edx,dword ptr [eax]
 0059F1A9    call       dword ptr [edx+0E0]; TRaveIntegerField.sub_0059F1BC
 0059F1AF    mov        edx,esi
 0059F1B1    call       IntToStr
 0059F1B6    pop        edx
 0059F1B7    pop        esi
 0059F1B8    pop        ebx
 0059F1B9    ret
*}
//end;

//0059F1BC
procedure sub_0059F1BC;
begin
{*
 0059F1BC    push       ebx
 0059F1BD    mov        ebx,eax
 0059F1BF    mov        eax,dword ptr [ebx+38]; TRaveIntegerField.?f38:dword
 0059F1C2    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059F1C8    call       @AsClass
 0059F1CD    call       005A091C
 0059F1D2    mov        edx,dword ptr [ebx+5C]; TRaveIntegerField.?f5C:dword
 0059F1D5    call       0059EA2C
 0059F1DA    test       eax,eax
>0059F1DC    je         0059F1E2
 0059F1DE    mov        eax,dword ptr [eax]
 0059F1E0    pop        ebx
 0059F1E1    ret
 0059F1E2    xor        edx,edx
 0059F1E4    mov        eax,dword ptr [ebx+74]; TRaveIntegerField.?f74:String
 0059F1E7    call       StrToIntDef
 0059F1EC    pop        ebx
 0059F1ED    ret
*}
end;

//0059F1F0
procedure sub_0059F1F0;
begin
{*
 0059F1F0    push       ebx
 0059F1F1    add        esp,0FFFFFFF8
 0059F1F4    mov        ebx,eax
 0059F1F6    mov        eax,ebx
 0059F1F8    mov        edx,dword ptr [eax]
 0059F1FA    call       dword ptr [edx+0E0]; TRaveIntegerField.sub_0059F1BC
 0059F200    cdq
 0059F201    mov        dword ptr [esp],eax
 0059F204    mov        dword ptr [esp+4],edx
 0059F208    mov        eax,dword ptr [esp]
 0059F20B    mov        edx,dword ptr [esp+4]
 0059F20F    pop        ecx
 0059F210    pop        edx
 0059F211    pop        ebx
 0059F212    ret
*}
end;

//0059F214
procedure sub_0059F214;
begin
{*
 0059F214    push       ebx
 0059F215    add        esp,0FFFFFFF0
 0059F218    mov        ebx,eax
 0059F21A    mov        eax,ebx
 0059F21C    mov        edx,dword ptr [eax]
 0059F21E    call       dword ptr [edx+0E0]; TRaveIntegerField.sub_0059F1BC
 0059F224    mov        dword ptr [esp+0C],eax
 0059F228    fild       dword ptr [esp+0C]
 0059F22C    fstp       tbyte ptr [esp]
 0059F22F    wait
 0059F230    fld        tbyte ptr [esp]
 0059F233    add        esp,10
 0059F236    pop        ebx
 0059F237    ret
*}
end;

//0059F238
procedure sub_0059F238;
begin
{*
 0059F238    push       ebx
 0059F239    add        esp,0FFFFFFF4
 0059F23C    mov        ebx,eax
 0059F23E    mov        eax,ebx
 0059F240    mov        edx,dword ptr [eax]
 0059F242    call       dword ptr [edx+0E0]; TRaveIntegerField.sub_0059F1BC
 0059F248    mov        dword ptr [esp+8],eax
 0059F24C    fild       dword ptr [esp+8]
 0059F250    fmul       dword ptr ds:[59F264]; 10000:Single
 0059F256    fistp      qword ptr [esp]
 0059F259    wait
 0059F25A    fild       qword ptr [esp]
 0059F25D    add        esp,0C
 0059F260    pop        ebx
 0059F261    ret
*}
end;

//0059F268
//function sub_0059F268():?;
//begin
{*
 0059F268    mov        al,0C
 0059F26A    ret
*}
//end;

//0059F26C
//procedure sub_0059F26C(?:?);
//begin
{*
 0059F26C    push       ebx
 0059F26D    push       esi
 0059F26E    add        esp,0FFFFFFF8
 0059F271    mov        esi,edx
 0059F273    mov        ebx,eax
 0059F275    mov        eax,ebx
 0059F277    call       0059EFE0
 0059F27C    test       al,al
>0059F27E    je         0059F28C
 0059F280    mov        eax,esi
 0059F282    mov        edx,dword ptr [ebx+74]; TRaveInt64Field.?f74:String
 0059F285    call       @LStrAsg
>0059F28A    jmp        0059F2DA
 0059F28C    cmp        dword ptr [ebx+7C],0; TRaveInt64Field.?f7C:String
>0059F290    je         0059F2B9
 0059F292    mov        eax,ebx
 0059F294    mov        edx,dword ptr [eax]
 0059F296    call       dword ptr [edx+0E4]; TRaveInt64Field.sub_0059F2F0
 0059F29C    mov        dword ptr [esp],eax
 0059F29F    mov        dword ptr [esp+4],edx
 0059F2A3    fild       qword ptr [esp]
 0059F2A6    add        esp,0FFFFFFF4
 0059F2A9    fstp       tbyte ptr [esp]
 0059F2AC    wait
 0059F2AD    mov        edx,esi
 0059F2AF    mov        eax,dword ptr [ebx+7C]; TRaveInt64Field.?f7C:String
 0059F2B2    call       FormatFloat
>0059F2B7    jmp        0059F2DA
 0059F2B9    mov        edx,esi
 0059F2BB    mov        eax,ebx
 0059F2BD    call       0059EB4C
 0059F2C2    cmp        dword ptr [esi],0
>0059F2C5    jne        0059F2DA
 0059F2C7    mov        eax,ebx
 0059F2C9    mov        edx,dword ptr [eax]
 0059F2CB    call       dword ptr [edx+0E4]; TRaveInt64Field.sub_0059F2F0
 0059F2D1    push       edx
 0059F2D2    push       eax
 0059F2D3    mov        eax,esi
 0059F2D5    call       IntToStr
 0059F2DA    pop        ecx
 0059F2DB    pop        edx
 0059F2DC    pop        esi
 0059F2DD    pop        ebx
 0059F2DE    ret
*}
//end;

//0059F2E0
procedure sub_0059F2E0;
begin
{*
 0059F2E0    push       ebx
 0059F2E1    mov        ebx,eax
 0059F2E3    mov        eax,ebx
 0059F2E5    mov        edx,dword ptr [eax]
 0059F2E7    call       dword ptr [edx+0E4]; TRaveInt64Field.sub_0059F2F0
 0059F2ED    pop        ebx
 0059F2EE    ret
*}
end;

//0059F2F0
procedure sub_0059F2F0;
begin
{*
 0059F2F0    push       ebx
 0059F2F1    add        esp,0FFFFFFF8
 0059F2F4    mov        ebx,eax
 0059F2F6    mov        eax,dword ptr [ebx+38]; TRaveInt64Field.?f38:dword
 0059F2F9    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059F2FF    call       @AsClass
 0059F304    call       005A091C
 0059F309    mov        edx,dword ptr [ebx+5C]; TRaveInt64Field.?f5C:dword
 0059F30C    call       0059EA2C
 0059F311    test       eax,eax
>0059F313    je         0059F323
 0059F315    mov        edx,dword ptr [eax]
 0059F317    mov        dword ptr [esp],edx
 0059F31A    mov        edx,dword ptr [eax+4]
 0059F31D    mov        dword ptr [esp+4],edx
>0059F321    jmp        0059F336
 0059F323    push       0
 0059F325    push       0
 0059F327    mov        eax,dword ptr [ebx+74]; TRaveInt64Field.?f74:String
 0059F32A    call       StrToInt64Def
 0059F32F    mov        dword ptr [esp],eax
 0059F332    mov        dword ptr [esp+4],edx
 0059F336    mov        eax,dword ptr [esp]
 0059F339    mov        edx,dword ptr [esp+4]
 0059F33D    pop        ecx
 0059F33E    pop        edx
 0059F33F    pop        ebx
 0059F340    ret
*}
end;

//0059F344
procedure sub_0059F344;
begin
{*
 0059F344    push       ebx
 0059F345    add        esp,0FFFFFFEC
 0059F348    mov        ebx,eax
 0059F34A    mov        eax,ebx
 0059F34C    mov        edx,dword ptr [eax]
 0059F34E    call       dword ptr [edx+0E4]; TRaveInt64Field.sub_0059F2F0
 0059F354    mov        dword ptr [esp+0C],eax
 0059F358    mov        dword ptr [esp+10],edx
 0059F35C    fild       qword ptr [esp+0C]
 0059F360    fstp       tbyte ptr [esp]
 0059F363    wait
 0059F364    fld        tbyte ptr [esp]
 0059F367    add        esp,14
 0059F36A    pop        ebx
 0059F36B    ret
*}
end;

//0059F36C
procedure sub_0059F36C;
begin
{*
 0059F36C    push       ebx
 0059F36D    add        esp,0FFFFFFF0
 0059F370    mov        ebx,eax
 0059F372    mov        eax,ebx
 0059F374    mov        edx,dword ptr [eax]
 0059F376    call       dword ptr [edx+0E4]; TRaveInt64Field.sub_0059F2F0
 0059F37C    mov        dword ptr [esp+8],eax
 0059F380    mov        dword ptr [esp+0C],edx
 0059F384    fild       qword ptr [esp+8]
 0059F388    fmul       dword ptr ds:[59F39C]; 10000:Single
 0059F38E    fistp      qword ptr [esp]
 0059F391    wait
 0059F392    fild       qword ptr [esp]
 0059F395    add        esp,10
 0059F398    pop        ebx
 0059F399    ret
*}
end;

//0059F3A0
//function sub_0059F3A0():?;
//begin
{*
 0059F3A0    mov        al,2
 0059F3A2    ret
*}
//end;

//0059F3A4
//procedure sub_0059F3A4(?:?);
//begin
{*
 0059F3A4    push       ebx
 0059F3A5    push       esi
 0059F3A6    mov        esi,edx
 0059F3A8    mov        ebx,eax
 0059F3AA    mov        eax,ebx
 0059F3AC    call       0059EFE0
 0059F3B1    test       al,al
>0059F3B3    je         0059F3C2
 0059F3B5    mov        eax,esi
 0059F3B7    mov        edx,dword ptr [ebx+74]; TRaveBooleanField.?f74:String
 0059F3BA    call       @LStrAsg
 0059F3BF    pop        esi
 0059F3C0    pop        ebx
 0059F3C1    ret
 0059F3C2    mov        edx,esi
 0059F3C4    mov        eax,ebx
 0059F3C6    call       0059EB4C
 0059F3CB    mov        eax,ebx
 0059F3CD    mov        edx,dword ptr [eax]
 0059F3CF    call       dword ptr [edx+0DC]; TRaveBooleanField.sub_0059F44C
 0059F3D5    test       al,al
>0059F3D7    je         0059F3FE
 0059F3D9    cmp        dword ptr [ebx+7C],0; TRaveBooleanField.?f7C:String
>0059F3DD    jne        0059F3F2
 0059F3DF    cmp        dword ptr [esi],0
>0059F3E2    jne        0059F427
 0059F3E4    mov        eax,esi
 0059F3E6    mov        edx,59F434; 'True'
 0059F3EB    call       @LStrAsg
>0059F3F0    jmp        0059F427
 0059F3F2    mov        eax,esi
 0059F3F4    mov        edx,dword ptr [ebx+7C]; TRaveBooleanField.?f7C:String
 0059F3F7    call       @LStrAsg
>0059F3FC    jmp        0059F427
 0059F3FE    cmp        dword ptr [ebx+80],0; TRaveBooleanField.?f80:String
>0059F405    jne        0059F41A
 0059F407    cmp        dword ptr [esi],0
>0059F40A    jne        0059F427
 0059F40C    mov        eax,esi
 0059F40E    mov        edx,59F444; 'False'
 0059F413    call       @LStrAsg
>0059F418    jmp        0059F427
 0059F41A    mov        eax,esi
 0059F41C    mov        edx,dword ptr [ebx+80]; TRaveBooleanField.?f80:String
 0059F422    call       @LStrAsg
 0059F427    pop        esi
 0059F428    pop        ebx
 0059F429    ret
*}
//end;

//0059F44C
function sub_0059F44C:Boolean;
begin
{*
 0059F44C    push       ebx
 0059F44D    mov        ebx,eax
 0059F44F    mov        eax,dword ptr [ebx+38]; TRaveBooleanField.?f38:dword
 0059F452    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059F458    call       @AsClass
 0059F45D    call       005A091C
 0059F462    mov        edx,dword ptr [ebx+5C]; TRaveBooleanField.?f5C:dword
 0059F465    call       0059EA2C
 0059F46A    test       eax,eax
>0059F46C    je         0059F472
 0059F46E    mov        al,byte ptr [eax]
 0059F470    pop        ebx
 0059F471    ret
 0059F472    mov        edx,dword ptr [ebx+7C]; TRaveBooleanField.?f7C:String
 0059F475    mov        eax,dword ptr [ebx+74]; TRaveBooleanField.?f74:String
 0059F478    call       AnsiCompareStr
 0059F47D    test       eax,eax
 0059F47F    sete       al
 0059F482    pop        ebx
 0059F483    ret
*}
end;

//0059F484
//function sub_0059F484():?;
//begin
{*
 0059F484    mov        al,3
 0059F486    ret
*}
//end;

//0059F488
//procedure sub_0059F488(?:?);
//begin
{*
 0059F488    push       ebx
 0059F489    push       esi
 0059F48A    mov        esi,edx
 0059F48C    mov        ebx,eax
 0059F48E    mov        eax,ebx
 0059F490    call       0059EFE0
 0059F495    test       al,al
>0059F497    je         0059F4A6
 0059F499    mov        eax,esi
 0059F49B    mov        edx,dword ptr [ebx+74]; TRaveFloatField.?f74:String
 0059F49E    call       @LStrAsg
 0059F4A3    pop        esi
 0059F4A4    pop        ebx
 0059F4A5    ret
 0059F4A6    cmp        dword ptr [ebx+7C],0; TRaveFloatField.?f7C:String
>0059F4AA    je         0059F4C9
 0059F4AC    mov        eax,ebx
 0059F4AE    mov        edx,dword ptr [eax]
 0059F4B0    call       dword ptr [edx+0E8]; TRaveFloatField.sub_0059F530
 0059F4B6    add        esp,0FFFFFFF4
 0059F4B9    fstp       tbyte ptr [esp]
 0059F4BC    wait
 0059F4BD    mov        edx,esi
 0059F4BF    mov        eax,dword ptr [ebx+7C]; TRaveFloatField.?f7C:String
 0059F4C2    call       FormatFloat
>0059F4C7    jmp        0059F4EF
 0059F4C9    mov        edx,esi
 0059F4CB    mov        eax,ebx
 0059F4CD    call       0059EB4C
 0059F4D2    cmp        dword ptr [esi],0
>0059F4D5    jne        0059F4EF
 0059F4D7    mov        eax,ebx
 0059F4D9    mov        edx,dword ptr [eax]
 0059F4DB    call       dword ptr [edx+0E8]; TRaveFloatField.sub_0059F530
 0059F4E1    add        esp,0FFFFFFF4
 0059F4E4    fstp       tbyte ptr [esp]
 0059F4E7    wait
 0059F4E8    mov        eax,esi
 0059F4EA    call       FloatToStr
 0059F4EF    pop        esi
 0059F4F0    pop        ebx
 0059F4F1    ret
*}
//end;

//0059F4F4
procedure sub_0059F4F4;
begin
{*
 0059F4F4    push       ebx
 0059F4F5    mov        ebx,eax
 0059F4F7    mov        eax,ebx
 0059F4F9    mov        edx,dword ptr [eax]
 0059F4FB    call       dword ptr [edx+0E8]; TRaveFloatField.sub_0059F530
 0059F501    call       @TRUNC
 0059F506    pop        ebx
 0059F507    ret
*}
end;

//0059F508
procedure sub_0059F508;
begin
{*
 0059F508    push       ebx
 0059F509    add        esp,0FFFFFFF8
 0059F50C    mov        ebx,eax
 0059F50E    mov        eax,ebx
 0059F510    mov        edx,dword ptr [eax]
 0059F512    call       dword ptr [edx+0E8]; TRaveFloatField.sub_0059F530
 0059F518    call       @TRUNC
 0059F51D    mov        dword ptr [esp],eax
 0059F520    mov        dword ptr [esp+4],edx
 0059F524    mov        eax,dword ptr [esp]
 0059F527    mov        edx,dword ptr [esp+4]
 0059F52B    pop        ecx
 0059F52C    pop        edx
 0059F52D    pop        ebx
 0059F52E    ret
*}
end;

//0059F530
procedure sub_0059F530;
begin
{*
 0059F530    push       ebx
 0059F531    add        esp,0FFFFFFF4
 0059F534    mov        ebx,eax
 0059F536    mov        eax,dword ptr [ebx+38]; TRaveFloatField.?f38:dword
 0059F539    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059F53F    call       @AsClass
 0059F544    call       005A091C
 0059F549    mov        edx,dword ptr [ebx+5C]; TRaveFloatField.?f5C:dword
 0059F54C    call       0059EA2C
 0059F551    test       eax,eax
>0059F553    je         0059F56C
 0059F555    mov        edx,dword ptr [eax]
 0059F557    mov        dword ptr [esp],edx
 0059F55A    mov        edx,dword ptr [eax+4]
 0059F55D    mov        dword ptr [esp+4],edx
 0059F561    mov        dx,word ptr [eax+8]
 0059F565    mov        word ptr [esp+8],dx
>0059F56A    jmp        0059F57E
 0059F56C    push       0
 0059F56E    push       0
 0059F570    push       0
 0059F572    mov        eax,dword ptr [ebx+74]; TRaveFloatField.?f74:String
 0059F575    call       StrToFloatDef
 0059F57A    fstp       tbyte ptr [esp]
 0059F57D    wait
 0059F57E    fld        tbyte ptr [esp]
 0059F581    add        esp,0C
 0059F584    pop        ebx
 0059F585    ret
*}
end;

//0059F588
procedure sub_0059F588;
begin
{*
 0059F588    push       ebx
 0059F589    add        esp,0FFFFFFF8
 0059F58C    mov        ebx,eax
 0059F58E    mov        eax,ebx
 0059F590    mov        edx,dword ptr [eax]
 0059F592    call       dword ptr [edx+0E8]; TRaveFloatField.sub_0059F530
 0059F598    fmul       dword ptr ds:[59F5AC]; 10000:Single
 0059F59E    fistp      qword ptr [esp]
 0059F5A1    wait
 0059F5A2    fild       qword ptr [esp]
 0059F5A5    pop        ecx
 0059F5A6    pop        edx
 0059F5A7    pop        ebx
 0059F5A8    ret
*}
end;

//0059F5B0
//function sub_0059F5B0():?;
//begin
{*
 0059F5B0    mov        al,4
 0059F5B2    ret
*}
//end;

//0059F5B4
//procedure sub_0059F5B4(?:?);
//begin
{*
 0059F5B4    push       ebx
 0059F5B5    push       esi
 0059F5B6    mov        esi,edx
 0059F5B8    mov        ebx,eax
 0059F5BA    mov        eax,ebx
 0059F5BC    call       0059EFE0
 0059F5C1    test       al,al
>0059F5C3    je         0059F5D2
 0059F5C5    mov        eax,esi
 0059F5C7    mov        edx,dword ptr [ebx+74]; TRaveBCDField.?f74:String
 0059F5CA    call       @LStrAsg
 0059F5CF    pop        esi
 0059F5D0    pop        ebx
 0059F5D1    ret
 0059F5D2    cmp        dword ptr [ebx+7C],0; TRaveBCDField.?f7C:String
>0059F5D6    je         0059F5F5
 0059F5D8    mov        eax,ebx
 0059F5DA    mov        edx,dword ptr [eax]
 0059F5DC    call       dword ptr [edx+0EC]; TRaveBCDField.sub_0059F69C
 0059F5E2    add        esp,0FFFFFFF8
 0059F5E5    fistp      qword ptr [esp]
 0059F5E8    wait
 0059F5E9    mov        edx,esi
 0059F5EB    mov        eax,dword ptr [ebx+7C]; TRaveBCDField.?f7C:String
 0059F5EE    call       FormatCurr
>0059F5F3    jmp        0059F61B
 0059F5F5    mov        edx,esi
 0059F5F7    mov        eax,ebx
 0059F5F9    call       0059EB4C
 0059F5FE    cmp        dword ptr [esi],0
>0059F601    jne        0059F61B
 0059F603    mov        eax,ebx
 0059F605    mov        edx,dword ptr [eax]
 0059F607    call       dword ptr [edx+0EC]; TRaveBCDField.sub_0059F69C
 0059F60D    add        esp,0FFFFFFF8
 0059F610    fistp      qword ptr [esp]
 0059F613    wait
 0059F614    mov        eax,esi
 0059F616    call       CurrToStr
 0059F61B    pop        esi
 0059F61C    pop        ebx
 0059F61D    ret
*}
//end;

//0059F620
procedure sub_0059F620;
begin
{*
 0059F620    push       ebx
 0059F621    mov        ebx,eax
 0059F623    mov        eax,ebx
 0059F625    mov        edx,dword ptr [eax]
 0059F627    call       dword ptr [edx+0EC]; TRaveBCDField.sub_0059F69C
 0059F62D    fdiv       dword ptr ds:[59F63C]; 10000:Single
 0059F633    call       @TRUNC
 0059F638    pop        ebx
 0059F639    ret
*}
end;

//0059F640
procedure sub_0059F640;
begin
{*
 0059F640    push       ebx
 0059F641    add        esp,0FFFFFFF8
 0059F644    mov        ebx,eax
 0059F646    mov        eax,ebx
 0059F648    mov        edx,dword ptr [eax]
 0059F64A    call       dword ptr [edx+0EC]; TRaveBCDField.sub_0059F69C
 0059F650    fdiv       dword ptr ds:[59F670]; 10000:Single
 0059F656    call       @TRUNC
 0059F65B    mov        dword ptr [esp],eax
 0059F65E    mov        dword ptr [esp+4],edx
 0059F662    mov        eax,dword ptr [esp]
 0059F665    mov        edx,dword ptr [esp+4]
 0059F669    pop        ecx
 0059F66A    pop        edx
 0059F66B    pop        ebx
 0059F66C    ret
*}
end;

//0059F674
procedure sub_0059F674;
begin
{*
 0059F674    push       ebx
 0059F675    add        esp,0FFFFFFF4
 0059F678    mov        ebx,eax
 0059F67A    mov        eax,ebx
 0059F67C    mov        edx,dword ptr [eax]
 0059F67E    call       dword ptr [edx+0EC]; TRaveBCDField.sub_0059F69C
 0059F684    fdiv       dword ptr ds:[59F698]; 10000:Single
 0059F68A    fstp       tbyte ptr [esp]
 0059F68D    wait
 0059F68E    fld        tbyte ptr [esp]
 0059F691    add        esp,0C
 0059F694    pop        ebx
 0059F695    ret
*}
end;

//0059F69C
procedure sub_0059F69C;
begin
{*
 0059F69C    push       ebx
 0059F69D    add        esp,0FFFFFFF8
 0059F6A0    mov        ebx,eax
 0059F6A2    mov        eax,dword ptr [ebx+38]; TRaveBCDField.?f38:dword
 0059F6A5    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059F6AB    call       @AsClass
 0059F6B0    call       005A091C
 0059F6B5    mov        edx,dword ptr [ebx+5C]; TRaveBCDField.?f5C:dword
 0059F6B8    call       0059EA2C
 0059F6BD    test       eax,eax
>0059F6BF    je         0059F6CF
 0059F6C1    mov        edx,dword ptr [eax]
 0059F6C3    mov        dword ptr [esp],edx
 0059F6C6    mov        edx,dword ptr [eax+4]
 0059F6C9    mov        dword ptr [esp+4],edx
>0059F6CD    jmp        0059F6DF
 0059F6CF    push       0
 0059F6D1    push       0
 0059F6D3    mov        eax,dword ptr [ebx+74]; TRaveBCDField.?f74:String
 0059F6D6    call       StrToCurrDef
 0059F6DB    fistp      qword ptr [esp]
 0059F6DE    wait
 0059F6DF    fild       qword ptr [esp]
 0059F6E2    pop        ecx
 0059F6E3    pop        edx
 0059F6E4    pop        ebx
 0059F6E5    ret
*}
end;

//0059F6E8
//function sub_0059F6E8():?;
//begin
{*
 0059F6E8    mov        al,5
 0059F6EA    ret
*}
//end;

//0059F6EC
//function sub_0059F6EC():?;
//begin
{*
 0059F6EC    mov        al,8
 0059F6EE    ret
*}
//end;

//0059F6F0
//procedure sub_0059F6F0(?:?);
//begin
{*
 0059F6F0    push       ebx
 0059F6F1    push       esi
 0059F6F2    mov        esi,edx
 0059F6F4    mov        ebx,eax
 0059F6F6    mov        eax,ebx
 0059F6F8    call       0059EFE0
 0059F6FD    test       al,al
>0059F6FF    je         0059F70E
 0059F701    mov        eax,esi
 0059F703    mov        edx,dword ptr [ebx+74]; TRaveDateTimeField.?f74:String
 0059F706    call       @LStrAsg
 0059F70B    pop        esi
 0059F70C    pop        ebx
 0059F70D    ret
 0059F70E    cmp        dword ptr [ebx+7C],0; TRaveDateTimeField.?f7C:String
>0059F712    je         0059F731
 0059F714    mov        eax,ebx
 0059F716    mov        edx,dword ptr [eax]
 0059F718    call       dword ptr [edx+0F0]; TRaveDateTimeField.sub_0059F76C
 0059F71E    add        esp,0FFFFFFF8
 0059F721    fstp       qword ptr [esp]
 0059F724    wait
 0059F725    mov        edx,esi
 0059F727    mov        eax,dword ptr [ebx+7C]; TRaveDateTimeField.?f7C:String
 0059F72A    call       FormatDateTime
>0059F72F    jmp        0059F75C
 0059F731    mov        edx,esi
 0059F733    mov        eax,ebx
 0059F735    call       0059EB4C
 0059F73A    cmp        dword ptr [esi],0
>0059F73D    jne        0059F75C
 0059F73F    mov        eax,ebx
 0059F741    mov        edx,dword ptr [eax]
 0059F743    call       dword ptr [edx+0F0]; TRaveDateTimeField.sub_0059F76C
 0059F749    add        esp,0FFFFFFF8
 0059F74C    fstp       qword ptr [esp]
 0059F74F    wait
 0059F750    mov        edx,esi
 0059F752    mov        eax,59F768; 'c'
 0059F757    call       FormatDateTime
 0059F75C    pop        esi
 0059F75D    pop        ebx
 0059F75E    ret
*}
//end;

//0059F76C
procedure sub_0059F76C;
begin
{*
 0059F76C    push       ebx
 0059F76D    add        esp,0FFFFFFF8
 0059F770    mov        ebx,eax
 0059F772    mov        eax,dword ptr [ebx+38]; TRaveDateTimeField.?f38:dword
 0059F775    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059F77B    call       @AsClass
 0059F780    call       005A091C
 0059F785    mov        edx,dword ptr [ebx+5C]; TRaveDateTimeField.?f5C:dword
 0059F788    call       0059EA2C
 0059F78D    test       eax,eax
>0059F78F    je         0059F79F
 0059F791    mov        edx,dword ptr [eax]
 0059F793    mov        dword ptr [esp],edx
 0059F796    mov        edx,dword ptr [eax+4]
 0059F799    mov        dword ptr [esp+4],edx
>0059F79D    jmp        0059F7AF
 0059F79F    push       0
 0059F7A1    push       0
 0059F7A3    mov        eax,dword ptr [ebx+74]; TRaveDateTimeField.?f74:String
 0059F7A6    call       StrToDateTimeDef
 0059F7AB    fstp       qword ptr [esp]
 0059F7AE    wait
 0059F7AF    fld        qword ptr [esp]
 0059F7B2    pop        ecx
 0059F7B3    pop        edx
 0059F7B4    pop        ebx
 0059F7B5    ret
*}
end;

//0059F7B8
procedure sub_0059F7B8;
begin
{*
 0059F7B8    push       ebx
 0059F7B9    add        esp,0FFFFFFF8
 0059F7BC    mov        ebx,eax
 0059F7BE    mov        eax,ebx
 0059F7C0    mov        edx,dword ptr [eax]
 0059F7C2    call       dword ptr [edx+0F0]; TRaveDateTimeField.sub_0059F76C
 0059F7C8    call       @INT
 0059F7CD    fstp       qword ptr [esp]
 0059F7D0    wait
 0059F7D1    fld        qword ptr [esp]
 0059F7D4    pop        ecx
 0059F7D5    pop        edx
 0059F7D6    pop        ebx
 0059F7D7    ret
*}
end;

//0059F7D8
procedure sub_0059F7D8;
begin
{*
 0059F7D8    push       ebx
 0059F7D9    add        esp,0FFFFFFF8
 0059F7DC    mov        ebx,eax
 0059F7DE    mov        eax,ebx
 0059F7E0    mov        edx,dword ptr [eax]
 0059F7E2    call       dword ptr [edx+0F0]; TRaveDateTimeField.sub_0059F76C
 0059F7E8    call       @FRAC
 0059F7ED    fstp       qword ptr [esp]
 0059F7F0    wait
 0059F7F1    fld        qword ptr [esp]
 0059F7F4    pop        ecx
 0059F7F5    pop        edx
 0059F7F6    pop        ebx
 0059F7F7    ret
*}
end;

//0059F7F8
procedure sub_0059F7F8;
begin
{*
 0059F7F8    push       ebx
 0059F7F9    add        esp,0FFFFFFF4
 0059F7FC    mov        ebx,eax
 0059F7FE    mov        eax,ebx
 0059F800    mov        edx,dword ptr [eax]
 0059F802    call       dword ptr [edx+0F0]; TRaveTimeField.sub_0059F994
 0059F808    fstp       tbyte ptr [esp]
 0059F80B    wait
 0059F80C    fld        tbyte ptr [esp]
 0059F80F    add        esp,0C
 0059F812    pop        ebx
 0059F813    ret
*}
end;

//0059F814
//function sub_0059F814():?;
//begin
{*
 0059F814    mov        al,6
 0059F816    ret
*}
//end;

//0059F818
//procedure sub_0059F818(?:?);
//begin
{*
 0059F818    push       ebx
 0059F819    push       esi
 0059F81A    mov        esi,edx
 0059F81C    mov        ebx,eax
 0059F81E    mov        eax,ebx
 0059F820    call       0059EFE0
 0059F825    test       al,al
>0059F827    je         0059F836
 0059F829    mov        eax,esi
 0059F82B    mov        edx,dword ptr [ebx+74]; TRaveDateField.?f74:String
 0059F82E    call       @LStrAsg
 0059F833    pop        esi
 0059F834    pop        ebx
 0059F835    ret
 0059F836    cmp        dword ptr [ebx+7C],0; TRaveDateField.?f7C:String
>0059F83A    je         0059F859
 0059F83C    mov        eax,ebx
 0059F83E    mov        edx,dword ptr [eax]
 0059F840    call       dword ptr [edx+0F4]; TRaveDateField.sub_0059F8B0
 0059F846    add        esp,0FFFFFFF8
 0059F849    fstp       qword ptr [esp]
 0059F84C    wait
 0059F84D    mov        edx,esi
 0059F84F    mov        eax,dword ptr [ebx+7C]; TRaveDateField.?f7C:String
 0059F852    call       FormatDateTime
>0059F857    jmp        0059F884
 0059F859    mov        edx,esi
 0059F85B    mov        eax,ebx
 0059F85D    call       0059F6F0
 0059F862    cmp        dword ptr [esi],0
>0059F865    jne        0059F884
 0059F867    mov        eax,ebx
 0059F869    mov        edx,dword ptr [eax]
 0059F86B    call       dword ptr [edx+0F4]; TRaveDateField.sub_0059F8B0
 0059F871    add        esp,0FFFFFFF8
 0059F874    fstp       qword ptr [esp]
 0059F877    wait
 0059F878    mov        edx,esi
 0059F87A    mov        eax,59F890; 'ddddd'
 0059F87F    call       FormatDateTime
 0059F884    pop        esi
 0059F885    pop        ebx
 0059F886    ret
*}
//end;

//0059F898
procedure sub_0059F898;
begin
{*
 0059F898    add        esp,0FFFFFFF8
 0059F89B    mov        edx,dword ptr [eax]
 0059F89D    call       dword ptr [edx+0F4]; TRaveDateField.sub_0059F8B0
 0059F8A3    fstp       qword ptr [esp]
 0059F8A6    wait
 0059F8A7    fld        qword ptr [esp]
 0059F8AA    pop        ecx
 0059F8AB    pop        edx
 0059F8AC    ret
*}
end;

//0059F8B0
procedure sub_0059F8B0;
begin
{*
 0059F8B0    push       ebx
 0059F8B1    add        esp,0FFFFFFF8
 0059F8B4    mov        ebx,eax
 0059F8B6    mov        eax,dword ptr [ebx+38]; TRaveDateField.?f38:dword
 0059F8B9    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059F8BF    call       @AsClass
 0059F8C4    call       005A091C
 0059F8C9    mov        edx,dword ptr [ebx+5C]; TRaveDateField.?f5C:dword
 0059F8CC    call       0059EA2C
 0059F8D1    test       eax,eax
>0059F8D3    je         0059F8E3
 0059F8D5    mov        edx,dword ptr [eax]
 0059F8D7    mov        dword ptr [esp],edx
 0059F8DA    mov        edx,dword ptr [eax+4]
 0059F8DD    mov        dword ptr [esp+4],edx
>0059F8E1    jmp        0059F8F8
 0059F8E3    push       0
 0059F8E5    push       0
 0059F8E7    mov        eax,dword ptr [ebx+74]; TRaveDateField.?f74:String
 0059F8EA    call       StrToDateTimeDef
 0059F8EF    call       @INT
 0059F8F4    fstp       qword ptr [esp]
 0059F8F7    wait
 0059F8F8    fld        qword ptr [esp]
 0059F8FB    pop        ecx
 0059F8FC    pop        edx
 0059F8FD    pop        ebx
 0059F8FE    ret
*}
end;

//0059F900
procedure sub_0059F900();
begin
{*
 0059F900    add        esp,0FFFFFFF8
 0059F903    xor        eax,eax
 0059F905    mov        dword ptr [esp],eax
 0059F908    mov        dword ptr [esp+4],eax
 0059F90C    fld        qword ptr [esp]
 0059F90F    pop        ecx
 0059F910    pop        edx
 0059F911    ret
*}
end;

//0059F914
//function sub_0059F914():?;
//begin
{*
 0059F914    mov        al,7
 0059F916    ret
*}
//end;

//0059F918
//procedure sub_0059F918(?:?);
//begin
{*
 0059F918    push       ebx
 0059F919    push       esi
 0059F91A    mov        esi,edx
 0059F91C    mov        ebx,eax
 0059F91E    mov        eax,ebx
 0059F920    call       0059EFE0
 0059F925    test       al,al
>0059F927    je         0059F936
 0059F929    mov        eax,esi
 0059F92B    mov        edx,dword ptr [ebx+74]; TRaveTimeField.?f74:String
 0059F92E    call       @LStrAsg
 0059F933    pop        esi
 0059F934    pop        ebx
 0059F935    ret
 0059F936    cmp        dword ptr [ebx+7C],0; TRaveTimeField.?f7C:String
>0059F93A    je         0059F959
 0059F93C    mov        eax,ebx
 0059F93E    mov        edx,dword ptr [eax]
 0059F940    call       dword ptr [edx+0F8]; TRaveTimeField.sub_0059F9C0
 0059F946    add        esp,0FFFFFFF8
 0059F949    fstp       qword ptr [esp]
 0059F94C    wait
 0059F94D    mov        edx,esi
 0059F94F    mov        eax,dword ptr [ebx+7C]; TRaveTimeField.?f7C:String
 0059F952    call       FormatDateTime
>0059F957    jmp        0059F984
 0059F959    mov        edx,esi
 0059F95B    mov        eax,ebx
 0059F95D    call       0059F6F0
 0059F962    cmp        dword ptr [esi],0
>0059F965    jne        0059F984
 0059F967    mov        eax,ebx
 0059F969    mov        edx,dword ptr [eax]
 0059F96B    call       dword ptr [edx+0F8]; TRaveTimeField.sub_0059F9C0
 0059F971    add        esp,0FFFFFFF8
 0059F974    fstp       qword ptr [esp]
 0059F977    wait
 0059F978    mov        edx,esi
 0059F97A    mov        eax,59F990; 't'
 0059F97F    call       FormatDateTime
 0059F984    pop        esi
 0059F985    pop        ebx
 0059F986    ret
*}
//end;

//0059F994
procedure sub_0059F994;
begin
{*
 0059F994    add        esp,0FFFFFFF8
 0059F997    mov        edx,dword ptr [eax]
 0059F999    call       dword ptr [edx+0F8]; TRaveTimeField.sub_0059F9C0
 0059F99F    fstp       qword ptr [esp]
 0059F9A2    wait
 0059F9A3    fld        qword ptr [esp]
 0059F9A6    pop        ecx
 0059F9A7    pop        edx
 0059F9A8    ret
*}
end;

//0059F9AC
procedure sub_0059F9AC();
begin
{*
 0059F9AC    add        esp,0FFFFFFF8
 0059F9AF    xor        eax,eax
 0059F9B1    mov        dword ptr [esp],eax
 0059F9B4    mov        dword ptr [esp+4],eax
 0059F9B8    fld        qword ptr [esp]
 0059F9BB    pop        ecx
 0059F9BC    pop        edx
 0059F9BD    ret
*}
end;

//0059F9C0
procedure sub_0059F9C0;
begin
{*
 0059F9C0    push       ebx
 0059F9C1    add        esp,0FFFFFFF8
 0059F9C4    mov        ebx,eax
 0059F9C6    mov        eax,dword ptr [ebx+38]; TRaveTimeField.?f38:dword
 0059F9C9    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059F9CF    call       @AsClass
 0059F9D4    call       005A091C
 0059F9D9    mov        edx,dword ptr [ebx+5C]; TRaveTimeField.?f5C:dword
 0059F9DC    call       0059EA2C
 0059F9E1    test       eax,eax
>0059F9E3    je         0059F9F3
 0059F9E5    mov        edx,dword ptr [eax]
 0059F9E7    mov        dword ptr [esp],edx
 0059F9EA    mov        edx,dword ptr [eax+4]
 0059F9ED    mov        dword ptr [esp+4],edx
>0059F9F1    jmp        0059FA08
 0059F9F3    push       0
 0059F9F5    push       0
 0059F9F7    mov        eax,dword ptr [ebx+74]; TRaveTimeField.?f74:String
 0059F9FA    call       StrToDateTimeDef
 0059F9FF    call       @FRAC
 0059FA04    fstp       qword ptr [esp]
 0059FA07    wait
 0059FA08    fld        qword ptr [esp]
 0059FA0B    pop        ecx
 0059FA0C    pop        edx
 0059FA0D    pop        ebx
 0059FA0E    ret
*}
end;

//0059FA10
//function sub_0059FA10():?;
//begin
{*
 0059FA10    mov        al,9
 0059FA12    ret
*}
//end;

//0059FA14
//procedure sub_0059FA14(?:?);
//begin
{*
 0059FA14    push       ebx
 0059FA15    push       esi
 0059FA16    add        esp,0FFFFFFF8
 0059FA19    mov        esi,edx
 0059FA1B    mov        ebx,eax
 0059FA1D    mov        eax,ebx
 0059FA1F    call       0059EFE0
 0059FA24    test       al,al
>0059FA26    je         0059FA34
 0059FA28    mov        eax,esi
 0059FA2A    mov        edx,dword ptr [ebx+74]; TRaveBlobField.?f74:String
 0059FA2D    call       @LStrAsg
>0059FA32    jmp        0059FA7F
 0059FA34    lea        eax,[esp+4]
 0059FA38    push       eax
 0059FA39    mov        eax,dword ptr [ebx+38]; TRaveBlobField.?f38:dword
 0059FA3C    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059FA42    call       @AsClass
 0059FA47    call       005A091C
 0059FA4C    lea        ecx,[esp+4]
 0059FA50    mov        edx,dword ptr [ebx+5C]; TRaveBlobField.?f5C:dword
 0059FA53    call       0059EA68
 0059FA58    mov        eax,esi
 0059FA5A    mov        edx,dword ptr [esp+4]
 0059FA5E    call       @LStrSetLength
 0059FA63    cmp        dword ptr [esp+4],0
>0059FA68    jle        0059FA7F
 0059FA6A    mov        eax,esi
 0059FA6C    call       @UniqueStringA
 0059FA71    mov        edx,eax
 0059FA73    mov        eax,dword ptr [esp]
 0059FA76    mov        ecx,dword ptr [esp+4]
 0059FA7A    call       Move
 0059FA7F    pop        ecx
 0059FA80    pop        edx
 0059FA81    pop        esi
 0059FA82    pop        ebx
 0059FA83    ret
*}
//end;

//0059FA84
//function sub_0059FA84():?;
//begin
{*
 0059FA84    mov        al,0A
 0059FA86    ret
*}
//end;

//0059FA88
//procedure sub_0059FA88(?:?);
//begin
{*
 0059FA88    push       ebx
 0059FA89    push       esi
 0059FA8A    add        esp,0FFFFFFF8
 0059FA8D    mov        esi,edx
 0059FA8F    mov        ebx,eax
 0059FA91    mov        eax,ebx
 0059FA93    call       0059EFE0
 0059FA98    test       al,al
>0059FA9A    je         0059FAA8
 0059FA9C    mov        eax,esi
 0059FA9E    mov        edx,dword ptr [ebx+74]; TRaveMemoField.?f74:String
 0059FAA1    call       @LStrAsg
>0059FAA6    jmp        0059FAF3
 0059FAA8    lea        eax,[esp+4]
 0059FAAC    push       eax
 0059FAAD    mov        eax,dword ptr [ebx+38]; TRaveMemoField.?f38:dword
 0059FAB0    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 0059FAB6    call       @AsClass
 0059FABB    call       005A091C
 0059FAC0    lea        ecx,[esp+4]
 0059FAC4    mov        edx,dword ptr [ebx+5C]; TRaveMemoField.?f5C:dword
 0059FAC7    call       0059EA68
 0059FACC    mov        eax,esi
 0059FACE    mov        edx,dword ptr [esp+4]
 0059FAD2    call       @LStrSetLength
 0059FAD7    cmp        dword ptr [esp+4],0
>0059FADC    jle        0059FAF3
 0059FADE    mov        eax,esi
 0059FAE0    call       @UniqueStringA
 0059FAE5    mov        edx,eax
 0059FAE7    mov        eax,dword ptr [esp]
 0059FAEA    mov        ecx,dword ptr [esp+4]
 0059FAEE    call       Move
 0059FAF3    pop        ecx
 0059FAF4    pop        edx
 0059FAF5    pop        esi
 0059FAF6    pop        ebx
 0059FAF7    ret
*}
//end;

//0059FAF8
//function sub_0059FAF8():?;
//begin
{*
 0059FAF8    mov        al,0B
 0059FAFA    ret
*}
//end;

//0059FAFC
//procedure sub_0059FAFC(?:?);
//begin
{*
 0059FAFC    push       ebx
 0059FAFD    push       esi
 0059FAFE    mov        esi,edx
 0059FB00    mov        ebx,eax
 0059FB02    mov        eax,ebx
 0059FB04    call       0059EFE0
 0059FB09    test       al,al
>0059FB0B    je         0059FB1A
 0059FB0D    mov        eax,esi
 0059FB0F    mov        edx,dword ptr [ebx+74]; TRaveGraphicField.?f74:String
 0059FB12    call       @LStrAsg
 0059FB17    pop        esi
 0059FB18    pop        ebx
 0059FB19    ret
 0059FB1A    mov        edx,esi
 0059FB1C    mov        eax,ebx
 0059FB1E    call       0059FA14
 0059FB23    cmp        dword ptr [esi],0
>0059FB26    jne        0059FB34
 0059FB28    mov        eax,esi
 0059FB2A    mov        edx,59FB40; '(Graphic)'
 0059FB2F    call       @LStrAsg
 0059FB34    pop        esi
 0059FB35    pop        ebx
 0059FB36    ret
*}
//end;

Initialization
//0059FB7C
{*
 0059FB7C    sub        dword ptr ds:[61F86C],1
>0059FB83    jae        0059FB94
 0059FB85    mov        edx,59E874
 0059FB8A    mov        eax,59FBA0; 'RVCL'
 0059FB8F    call       005A7E10
 0059FB94    ret
*}
Finalization
end.