{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvCsBars;

interface

uses
  Classes, Windows, Graphics, RvClass, RvDefine, RvData;

type
  TRaveBaseBarCode = class(TRaveControl)
  public
    fE8:String;//fE8
    fEC:dword;//fEC
    Font:TRaveFont;//fF0
    fF4:dword;//fF4
    AutoSize:Boolean;//fF8
    fFC:TRaveFieldName;//fFC
    DataView:TRaveBaseDataView;//f100
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005D015C; virtual;
    procedure sub_005D01B8; virtual;
    //procedure sub_005CFCC4(?:?); virtual;
    //procedure sub_005D01D4(?:?; ?:?); virtual;
    //procedure SetText(?:?); virtual;
    //procedure GetText(?:?); virtual;
    procedure GetLeft; virtual;
    //procedure SetLeft(?:?; ?:?); virtual;
    procedure GetTop; virtual;
    //procedure SetTop(?:?; ?:?); virtual;
    //procedure SetWidth(?:?; ?:?); virtual;
    //procedure SetHeight(?:?); virtual;
    //procedure sub_005CF374(?:?); virtual;
    procedure sub_005CEC20; virtual;
    procedure @AbstractError(); virtual;
  end;
  TRavePostNetBarCode = class(TRaveBaseBarCode)
  public
    constructor Create(AOwner:TComponent); virtual;
    procedure SetHeight; virtual;
    procedure sub_005D02CC(); virtual;
  end;
  TRaveI2of5BarCode = class(TRaveBaseBarCode)
  public
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005D033C(); virtual;
  end;
  TRaveCode39BarCode = class(TRaveBaseBarCode)
  public
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005D03AC(); virtual;
  end;
  TRaveCode128BarCode = class(TRaveBaseBarCode)
  public
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005D0434(); virtual;
  end;
  TRaveUPCBarCode = class(TRaveBaseBarCode)
  public
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005D04E4(); virtual;
  end;
  TRaveEANBarCode = class(TRaveBaseBarCode)
  public
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005D0564(); virtual;
  end;

implementation

{$R *.DFM}

//005CEA20
procedure sub_005CEA20;
begin
{*
 005CEA20    push       ebp
 005CEA21    mov        ebp,esp
 005CEA23    add        esp,0FFFFFFE4
 005CEA26    push       ebx
 005CEA27    xor        eax,eax
 005CEA29    mov        dword ptr [ebp-1C],eax
 005CEA2C    xor        eax,eax
 005CEA2E    push       ebp
 005CEA2F    push       5CEAAA
 005CEA34    push       dword ptr fs:[eax]
 005CEA37    mov        dword ptr fs:[eax],esp
 005CEA3A    mov        eax,[005CDC68]; TRavePostNetBarCode
 005CEA3F    mov        dword ptr [ebp-18],eax
 005CEA42    mov        eax,[005CDEE0]; TRaveI2of5BarCode
 005CEA47    mov        dword ptr [ebp-14],eax
 005CEA4A    mov        eax,[005CE10C]; TRaveCode39BarCode
 005CEA4F    mov        dword ptr [ebp-10],eax
 005CEA52    mov        eax,[005CE35C]; TRaveCode128BarCode
 005CEA57    mov        dword ptr [ebp-0C],eax
 005CEA5A    mov        eax,[005CE5D0]; TRaveUPCBarCode
 005CEA5F    mov        dword ptr [ebp-8],eax
 005CEA62    mov        eax,[005CE7F8]; TRaveEANBarCode
 005CEA67    mov        dword ptr [ebp-4],eax
 005CEA6A    lea        eax,[ebp-18]
 005CEA6D    push       eax
 005CEA6E    push       5
 005CEA70    mov        ebx,dword ptr ds:[61B830]
 005CEA76    mov        ebx,dword ptr [ebx]
 005CEA78    lea        edx,[ebp-1C]
 005CEA7B    mov        eax,5CEAC0; 'Bar Code'
 005CEA80    call       ebx
 005CEA82    mov        edx,dword ptr [ebp-1C]
 005CEA85    mov        ecx,5CEAD4; 'RVCsBars'
 005CEA8A    mov        eax,5CEAE8; 'BarCodes'
 005CEA8F    call       005A7F78
 005CEA94    xor        eax,eax
 005CEA96    pop        edx
 005CEA97    pop        ecx
 005CEA98    pop        ecx
 005CEA99    mov        dword ptr fs:[eax],edx
 005CEA9C    push       5CEAB1
 005CEAA1    lea        eax,[ebp-1C]
 005CEAA4    call       @LStrClr
 005CEAA9    ret
<005CEAAA    jmp        @HandleFinally
<005CEAAF    jmp        005CEAA1
 005CEAB1    pop        ebx
 005CEAB2    mov        esp,ebp
 005CEAB4    pop        ebp
 005CEAB5    ret
*}
end;

//005CEAF4
constructor TRaveBaseBarCode.Create(AOwner:TComponent);
begin
{*
 005CEAF4    push       ebp
 005CEAF5    mov        ebp,esp
 005CEAF7    push       ecx
 005CEAF8    push       ebx
 005CEAF9    push       esi
 005CEAFA    test       dl,dl
>005CEAFC    je         005CEB06
 005CEAFE    add        esp,0FFFFFFF0
 005CEB01    call       @ClassCreate
 005CEB06    mov        byte ptr [ebp-1],dl
 005CEB09    mov        ebx,eax
 005CEB0B    xor        edx,edx
 005CEB0D    mov        eax,ebx
 005CEB0F    call       TRaveControl.Create
 005CEB14    mov        eax,ebx
 005CEB16    mov        edx,dword ptr [eax]
 005CEB18    call       dword ptr [edx+17C]; @AbstractError
 005CEB1E    mov        dword ptr [ebx+0EC],eax; TRaveBaseBarCode.?fEC:dword
 005CEB24    mov        dl,1
 005CEB26    mov        eax,[005A78BC]; TRaveFont
 005CEB2B    call       TFont.Create; TRaveFont.Create
 005CEB30    mov        esi,eax
 005CEB32    mov        dword ptr [ebx+0F0],esi; TRaveBaseBarCode.Font:TRaveFont
 005CEB38    mov        eax,esi
 005CEB3A    mov        edx,5CEB8C; 'Arial'
 005CEB3F    call       TFont.SetName
 005CEB44    mov        byte ptr [ebx+0F8],1; TRaveBaseBarCode.AutoSize:Boolean
 005CEB4B    mov        dl,1
 005CEB4D    mov        eax,ebx
 005CEB4F    call       TRaveBaseBarCode.SetBarCodeJustify
 005CEB54    mov        dl,1
 005CEB56    mov        eax,ebx
 005CEB58    call       TRaveBaseBarCode.SetTextJustify
 005CEB5D    xor        edx,edx
 005CEB5F    mov        eax,ebx
 005CEB61    call       TRaveBaseBarCode.SetBarCodeRotation
 005CEB66    mov        eax,ebx
 005CEB68    cmp        byte ptr [ebp-1],0
>005CEB6C    je         005CEB7D
 005CEB6E    call       @AfterConstruction
 005CEB73    pop        dword ptr fs:[0]
 005CEB7A    add        esp,0C
 005CEB7D    mov        eax,ebx
 005CEB7F    pop        esi
 005CEB80    pop        ebx
 005CEB81    pop        ecx
 005CEB82    pop        ebp
 005CEB83    ret
*}
end;

//005CEB94
destructor TRaveBaseBarCode.Destroy;
begin
{*
 005CEB94    push       ebx
 005CEB95    push       esi
 005CEB96    call       @BeforeDestruction
 005CEB9B    mov        ebx,edx
 005CEB9D    mov        esi,eax
 005CEB9F    lea        eax,[esi+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEBA5    call       FreeAndNil
 005CEBAA    lea        eax,[esi+0F0]; TRaveBaseBarCode.Font:TRaveFont
 005CEBB0    call       FreeAndNil
 005CEBB5    mov        edx,ebx
 005CEBB7    and        dl,0FC
 005CEBBA    mov        eax,esi
 005CEBBC    call       TRaveControl.Destroy
 005CEBC1    test       bl,bl
>005CEBC3    jle        005CEBCC
 005CEBC5    mov        eax,esi
 005CEBC7    call       @ClassDestroy
 005CEBCC    pop        esi
 005CEBCD    pop        ebx
 005CEBCE    ret
*}
end;

//005CEBD0
//procedure TRaveBaseBarCode.SetAutoSize(Self:TRaveBaseBarCode; ?:?);
//begin
{*
 005CEBD0    push       esi
 005CEBD1    mov        esi,eax
 005CEBD3    mov        byte ptr [esi+0F8],dl; TRaveBaseBarCode.AutoSize:Boolean
 005CEBD9    mov        eax,dword ptr [esi+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEBDF    call       005C9374
 005CEBE4    add        esp,0FFFFFFF8
 005CEBE7    fstp       qword ptr [esp]
 005CEBEA    wait
 005CEBEB    mov        eax,esi
 005CEBED    mov        edx,dword ptr [eax]
 005CEBEF    call       dword ptr [edx+148]; TRaveBaseBarCode.SetHeight
 005CEBF5    mov        eax,dword ptr [esi+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEBFB    mov        edx,dword ptr [eax]
 005CEBFD    call       dword ptr [edx+8]
 005CEC00    add        esp,0FFFFFFF8
 005CEC03    fstp       qword ptr [esp]
 005CEC06    wait
 005CEC07    mov        eax,esi
 005CEC09    mov        edx,dword ptr [eax]
 005CEC0B    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
 005CEC11    mov        eax,esi
 005CEC13    mov        edx,dword ptr [eax]
 005CEC15    call       dword ptr [edx+174]; TRaveBaseBarCode.sub_005CEC20
 005CEC1B    pop        esi
 005CEC1C    ret
*}
//end;

//005CEC20
procedure sub_005CEC20;
begin
{*
 005CEC20    push       ebp
 005CEC21    mov        ebp,esp
 005CEC23    add        esp,0FFFFFFE4
 005CEC26    push       ebx
 005CEC27    push       esi
 005CEC28    xor        edx,edx
 005CEC2A    mov        dword ptr [ebp-18],edx
 005CEC2D    mov        dword ptr [ebp-1C],edx
 005CEC30    mov        ebx,eax
 005CEC32    xor        eax,eax
 005CEC34    push       ebp
 005CEC35    push       5CEDBD
 005CEC3A    push       dword ptr fs:[eax]
 005CEC3D    mov        dword ptr fs:[eax],esp
 005CEC40    cmp        dword ptr [ebx+0EC],0; TRaveEANBarCode.?fEC:dword
>005CEC47    je         005CED9B
 005CEC4D    mov        eax,ebx
 005CEC4F    call       TRaveBaseBarCode.GetBarCodeJustify
 005CEC54    sub        al,1
>005CEC56    jb         005CEC80
>005CEC58    je         005CEC62
 005CEC5A    dec        al
>005CEC5C    je         005CECB2
 005CEC5E    dec        al
>005CEC60    jne        005CECCB
 005CEC62    mov        eax,ebx
 005CEC64    mov        edx,dword ptr [eax]
 005CEC66    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CEC6C    add        esp,0FFFFFFF8
 005CEC6F    fstp       qword ptr [esp]
 005CEC72    wait
 005CEC73    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CEC79    call       005C9470
>005CEC7E    jmp        005CECCB
 005CEC80    mov        eax,ebx
 005CEC82    mov        edx,dword ptr [eax]
 005CEC84    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CEC8A    fstp       qword ptr [ebp-8]
 005CEC8D    wait
 005CEC8E    mov        eax,ebx
 005CEC90    call       TRaveBaseBarCode.GetRight
 005CEC95    fadd       qword ptr [ebp-8]
 005CEC98    fdiv       dword ptr ds:[5CEDCC]; 2:Single
 005CEC9E    add        esp,0FFFFFFF8
 005CECA1    fstp       qword ptr [esp]
 005CECA4    wait
 005CECA5    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CECAB    call       005C95EC
>005CECB0    jmp        005CECCB
 005CECB2    mov        eax,ebx
 005CECB4    call       TRaveBaseBarCode.GetRight
 005CECB9    add        esp,0FFFFFFF8
 005CECBC    fstp       qword ptr [esp]
 005CECBF    wait
 005CECC0    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CECC6    call       005C9528
 005CECCB    mov        eax,ebx
 005CECCD    mov        edx,dword ptr [eax]
 005CECCF    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005CECD5    mov        esi,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CECDB    fstp       qword ptr [esi+28]
 005CECDE    wait
 005CECDF    mov        eax,ebx
 005CECE1    call       TRaveBaseBarCode.GetBottom
 005CECE6    add        esp,0FFFFFFF8
 005CECE9    fstp       qword ptr [esp]
 005CECEC    wait
 005CECED    mov        eax,esi
 005CECEF    call       005C9644
 005CECF4    mov        eax,ebx
 005CECF6    mov        edx,dword ptr [eax]
 005CECF8    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005CECFE    fstp       qword ptr [ebp-8]
 005CED01    wait
 005CED02    mov        eax,ebx
 005CED04    call       TRaveBaseBarCode.GetBottom
 005CED09    fsub       qword ptr [ebp-8]
 005CED0C    fstp       tbyte ptr [ebp-14]
 005CED0F    wait
 005CED10    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CED16    call       005C9390
 005CED1B    fld        tbyte ptr [ebp-14]
 005CED1E    fsubrp     st(1),st
 005CED20    mov        esi,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CED26    fstp       qword ptr [esi+18]
 005CED29    wait
 005CED2A    cmp        byte ptr [ebx+0F8],0; TRaveEANBarCode.AutoSize:Boolean
>005CED31    je         005CED9B
 005CED33    mov        eax,esi
 005CED35    mov        edx,dword ptr [eax]
 005CED37    call       dword ptr [edx+8]
 005CED3A    add        esp,0FFFFFFF8
 005CED3D    fstp       qword ptr [esp]
 005CED40    wait
 005CED41    lea        edx,[ebp-18]
 005CED44    mov        eax,[0061C3F8]
 005CED49    mov        al,byte ptr [eax]
 005CED4B    call       005A59F0
 005CED50    mov        eax,dword ptr [ebp-18]
 005CED53    push       eax
 005CED54    mov        eax,ebx
 005CED56    mov        edx,dword ptr [eax]
 005CED58    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CED5E    add        esp,0FFFFFFF8
 005CED61    fstp       qword ptr [esp]
 005CED64    wait
 005CED65    lea        edx,[ebp-1C]
 005CED68    mov        eax,[0061C3F8]
 005CED6D    mov        al,byte ptr [eax]
 005CED6F    call       005A59F0
 005CED74    mov        edx,dword ptr [ebp-1C]
 005CED77    pop        eax
 005CED78    call       @LStrCmp
>005CED7D    je         005CED9B
 005CED7F    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CED85    mov        edx,dword ptr [eax]
 005CED87    call       dword ptr [edx+8]
 005CED8A    add        esp,0FFFFFFF8
 005CED8D    fstp       qword ptr [esp]
 005CED90    wait
 005CED91    mov        eax,ebx
 005CED93    mov        edx,dword ptr [eax]
 005CED95    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
 005CED9B    mov        eax,ebx
 005CED9D    call       005AAB94
 005CEDA2    xor        eax,eax
 005CEDA4    pop        edx
 005CEDA5    pop        ecx
 005CEDA6    pop        ecx
 005CEDA7    mov        dword ptr fs:[eax],edx
 005CEDAA    push       5CEDC4
 005CEDAF    lea        eax,[ebp-1C]
 005CEDB2    mov        edx,2
 005CEDB7    call       @LStrArrayClr
 005CEDBC    ret
<005CEDBD    jmp        @HandleFinally
<005CEDC2    jmp        005CEDAF
 005CEDC4    pop        esi
 005CEDC5    pop        ebx
 005CEDC6    mov        esp,ebp
 005CEDC8    pop        ebp
 005CEDC9    ret
*}
end;

//005CEDD0
//procedure TRaveBaseBarCode.SetLeft(?:?; ?:?);
//begin
{*
 005CEDD0    push       ebp
 005CEDD1    mov        ebp,esp
 005CEDD3    push       esi
 005CEDD4    mov        esi,eax
 005CEDD6    push       dword ptr [ebp+0C]
 005CEDD9    push       dword ptr [ebp+8]
 005CEDDC    mov        eax,dword ptr [esi+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEDE2    call       005C9470
 005CEDE7    mov        eax,dword ptr [ebp+8]
 005CEDEA    mov        dword ptr [esi+80],eax; TRaveBaseBarCode.?f80:?Double
 005CEDF0    mov        eax,dword ptr [ebp+0C]
 005CEDF3    mov        dword ptr [esi+84],eax; TRaveBaseBarCode.?f84:dword
 005CEDF9    mov        eax,esi
 005CEDFB    mov        edx,dword ptr [eax]
 005CEDFD    call       dword ptr [edx+174]; TRaveBaseBarCode.sub_005CEC20
 005CEE03    pop        esi
 005CEE04    pop        ebp
 005CEE05    ret        8
*}
//end;

//005CEE08
procedure TRaveBaseBarCode.GetLeft;
begin
{*
 005CEE08    add        esp,0FFFFFFF8
 005CEE0B    mov        edx,dword ptr [eax+80]; TRaveBaseBarCode.?f80:?Double
 005CEE11    mov        dword ptr [esp],edx
 005CEE14    mov        edx,dword ptr [eax+84]; TRaveBaseBarCode.?f84:dword
 005CEE1A    mov        dword ptr [esp+4],edx
 005CEE1E    fld        qword ptr [esp]
 005CEE21    pop        ecx
 005CEE22    pop        edx
 005CEE23    ret
*}
end;

//005CEE24
//procedure TRaveBaseBarCode.SetRight(Self:TRaveBaseBarCode; ?:?; ?:?);
//begin
{*
 005CEE24    push       ebp
 005CEE25    mov        ebp,esp
 005CEE27    push       esi
 005CEE28    mov        esi,eax
 005CEE2A    push       dword ptr [ebp+0C]
 005CEE2D    push       dword ptr [ebp+8]
 005CEE30    mov        eax,dword ptr [esi+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEE36    call       005C9528
 005CEE3B    fld        qword ptr [ebp+8]
 005CEE3E    fsub       qword ptr [esi+90]; TRaveBaseBarCode.?f90:?Double
 005CEE44    fstp       qword ptr [esi+80]; TRaveBaseBarCode.?f80:?Double
 005CEE4A    wait
 005CEE4B    mov        eax,esi
 005CEE4D    mov        edx,dword ptr [eax]
 005CEE4F    call       dword ptr [edx+174]; TRaveBaseBarCode.sub_005CEC20
 005CEE55    pop        esi
 005CEE56    pop        ebp
 005CEE57    ret        8
*}
//end;

//005CEE5C
procedure TRaveBaseBarCode.GetRight(Self:TRaveBaseBarCode);
begin
{*
 005CEE5C    add        esp,0FFFFFFF8
 005CEE5F    fld        qword ptr [eax+80]; TRaveBaseBarCode.?f80:?Double
 005CEE65    fadd       qword ptr [eax+90]; TRaveBaseBarCode.?f90:?Double
 005CEE6B    fstp       qword ptr [esp]
 005CEE6E    wait
 005CEE6F    fld        qword ptr [esp]
 005CEE72    pop        ecx
 005CEE73    pop        edx
 005CEE74    ret
*}
end;

//005CEE78
//procedure TRaveBaseBarCode.SetCenter(Self:TRaveBaseBarCode; ?:?; ?:?);
//begin
{*
 005CEE78    push       ebp
 005CEE79    mov        ebp,esp
 005CEE7B    push       esi
 005CEE7C    mov        esi,eax
 005CEE7E    push       dword ptr [ebp+0C]
 005CEE81    push       dword ptr [ebp+8]
 005CEE84    mov        eax,dword ptr [esi+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEE8A    call       005C95EC
 005CEE8F    mov        eax,dword ptr [esi+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEE95    call       005C9540
 005CEE9A    fld        qword ptr [esi+90]; TRaveBaseBarCode.?f90:?Double
 005CEEA0    fdiv       dword ptr ds:[5CEEC0]; 2:Single
 005CEEA6    fsubp      st(1),st
 005CEEA8    fstp       qword ptr [esi+80]; TRaveBaseBarCode.?f80:?Double
 005CEEAE    wait
 005CEEAF    mov        eax,esi
 005CEEB1    mov        edx,dword ptr [eax]
 005CEEB3    call       dword ptr [edx+174]; TRaveBaseBarCode.sub_005CEC20
 005CEEB9    pop        esi
 005CEEBA    pop        ebp
 005CEEBB    ret        8
*}
//end;

//005CEEC4
procedure TRaveBaseBarCode.GetCenter(Self:TRaveBaseBarCode);
begin
{*
 005CEEC4    add        esp,0FFFFFFF8
 005CEEC7    fld        qword ptr [eax+90]; TRaveBaseBarCode.?f90:?Double
 005CEECD    fdiv       dword ptr ds:[5CEEE4]; 2:Single
 005CEED3    fadd       qword ptr [eax+80]; TRaveBaseBarCode.?f80:?Double
 005CEED9    fstp       qword ptr [esp]
 005CEEDC    wait
 005CEEDD    fld        qword ptr [esp]
 005CEEE0    pop        ecx
 005CEEE1    pop        edx
 005CEEE2    ret
*}
end;

//005CEEE8
//procedure TRaveBaseBarCode.SetTop(?:?; ?:?);
//begin
{*
 005CEEE8    push       ebp
 005CEEE9    mov        ebp,esp
 005CEEEB    mov        edx,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEEF1    mov        ecx,dword ptr [ebp+8]
 005CEEF4    mov        dword ptr [edx+28],ecx
 005CEEF7    mov        ecx,dword ptr [ebp+0C]
 005CEEFA    mov        dword ptr [edx+2C],ecx
 005CEEFD    mov        edx,dword ptr [ebp+8]
 005CEF00    mov        dword ptr [eax+88],edx; TRaveBaseBarCode.?f88:?Double
 005CEF06    mov        edx,dword ptr [ebp+0C]
 005CEF09    mov        dword ptr [eax+8C],edx; TRaveBaseBarCode.?f8C:dword
 005CEF0F    mov        edx,dword ptr [eax]
 005CEF11    call       dword ptr [edx+174]; TRaveBaseBarCode.sub_005CEC20
 005CEF17    pop        ebp
 005CEF18    ret        8
*}
//end;

//005CEF1C
procedure TRaveBaseBarCode.GetTop;
begin
{*
 005CEF1C    add        esp,0FFFFFFF8
 005CEF1F    mov        edx,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEF25    test       edx,edx
>005CEF27    je         005CEF38
 005CEF29    mov        eax,dword ptr [edx+28]
 005CEF2C    mov        dword ptr [esp],eax
 005CEF2F    mov        eax,dword ptr [edx+2C]
 005CEF32    mov        dword ptr [esp+4],eax
>005CEF36    jmp        005CEF41
 005CEF38    xor        eax,eax
 005CEF3A    mov        dword ptr [esp],eax
 005CEF3D    mov        dword ptr [esp+4],eax
 005CEF41    fld        qword ptr [esp]
 005CEF44    pop        ecx
 005CEF45    pop        edx
 005CEF46    ret
*}
end;

//005CEF48
//procedure TRaveBaseBarCode.SetHeight(?:?);
//begin
{*
 005CEF48    push       ebp
 005CEF49    mov        ebp,esp
 005CEF4B    push       ebx
 005CEF4C    push       esi
 005CEF4D    mov        ebx,eax
 005CEF4F    mov        eax,dword ptr [ebx+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEF55    call       005C9390
 005CEF5A    fsubr      qword ptr [ebp+8]
 005CEF5D    mov        esi,dword ptr [ebx+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEF63    fstp       qword ptr [esi+18]
 005CEF66    wait
 005CEF67    mov        eax,esi
 005CEF69    call       005C9374
 005CEF6E    add        esp,0FFFFFFF8
 005CEF71    fstp       qword ptr [esp]
 005CEF74    wait
 005CEF75    mov        eax,ebx
 005CEF77    call       TRaveSection.SetHeight
 005CEF7C    pop        esi
 005CEF7D    pop        ebx
 005CEF7E    pop        ebp
 005CEF7F    ret        8
*}
//end;

//005CEF84
//procedure TRaveBaseBarCode.SetWidth(?:?; ?:?);
//begin
{*
 005CEF84    push       ebp
 005CEF85    mov        ebp,esp
 005CEF87    push       ebx
 005CEF88    mov        ebx,eax
 005CEF8A    cmp        byte ptr [ebx+0F8],0; TRaveBaseBarCode.AutoSize:Boolean
>005CEF91    je         005CEFAE
 005CEF93    mov        eax,dword ptr [ebx+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEF99    mov        edx,dword ptr [eax]
 005CEF9B    call       dword ptr [edx+8]
 005CEF9E    add        esp,0FFFFFFF8
 005CEFA1    fstp       qword ptr [esp]
 005CEFA4    wait
 005CEFA5    mov        eax,ebx
 005CEFA7    call       TRaveText.SetWidth
>005CEFAC    jmp        005CEFBB
 005CEFAE    push       dword ptr [ebp+0C]
 005CEFB1    push       dword ptr [ebp+8]
 005CEFB4    mov        eax,ebx
 005CEFB6    call       TRaveText.SetWidth
 005CEFBB    pop        ebx
 005CEFBC    pop        ebp
 005CEFBD    ret        8
*}
//end;

//005CEFC0
procedure TRaveBaseBarCode.SetFont(Self:TRaveBaseBarCode);
begin
{*
 005CEFC0    push       esi
 005CEFC1    mov        esi,eax
 005CEFC3    mov        eax,dword ptr [esi+0F0]; TRaveBaseBarCode.Font:TRaveFont
 005CEFC9    mov        ecx,dword ptr [eax]
 005CEFCB    call       dword ptr [ecx+8]; TFont.Assign
 005CEFCE    pop        esi
 005CEFCF    ret
*}
end;

//005CEFD0
//procedure TRaveBaseBarCode.SetBarCodeJustify(Self:TRaveBaseBarCode; ?:?);
//begin
{*
 005CEFD0    push       ebx
 005CEFD1    push       esi
 005CEFD2    push       edi
 005CEFD3    add        esp,0FFFFFFF8
 005CEFD6    mov        ebx,edx
 005CEFD8    mov        esi,eax
 005CEFDA    mov        eax,esi
 005CEFDC    mov        edx,dword ptr [eax]
 005CEFDE    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CEFE4    fstp       qword ptr [esp]
 005CEFE7    wait
 005CEFE8    mov        edi,dword ptr [esi+0EC]; TRaveBaseBarCode.?fEC:dword
 005CEFEE    mov        byte ptr [edi+5C],bl
 005CEFF1    sub        bl,1
>005CEFF4    jb         005CF00F
>005CEFF6    je         005CEFFE
 005CEFF8    dec        bl
>005CEFFA    je         005CF032
>005CEFFC    jmp        005CF04D
 005CEFFE    push       dword ptr [esp+4]
 005CF002    push       dword ptr [esp+4]
 005CF006    mov        eax,edi
 005CF008    call       005C9470
>005CF00D    jmp        005CF04D
 005CF00F    mov        eax,esi
 005CF011    mov        edx,dword ptr [eax]
 005CF013    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CF019    fdiv       dword ptr ds:[5CF060]; 2:Single
 005CF01F    fadd       qword ptr [esp]
 005CF022    add        esp,0FFFFFFF8
 005CF025    fstp       qword ptr [esp]
 005CF028    wait
 005CF029    mov        eax,edi
 005CF02B    call       005C95EC
>005CF030    jmp        005CF04D
 005CF032    mov        eax,esi
 005CF034    mov        edx,dword ptr [eax]
 005CF036    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CF03C    fadd       qword ptr [esp]
 005CF03F    add        esp,0FFFFFFF8
 005CF042    fstp       qword ptr [esp]
 005CF045    wait
 005CF046    mov        eax,edi
 005CF048    call       005C9528
 005CF04D    mov        eax,esi
 005CF04F    mov        edx,dword ptr [eax]
 005CF051    call       dword ptr [edx+174]; TRaveBaseBarCode.sub_005CEC20
 005CF057    pop        ecx
 005CF058    pop        edx
 005CF059    pop        edi
 005CF05A    pop        esi
 005CF05B    pop        ebx
 005CF05C    ret
*}
//end;

//005CF064
//function TRaveBaseBarCode.GetBarCodeJustify(Self:TRaveBaseBarCode):?;
//begin
{*
 005CF064    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF06A    mov        al,byte ptr [eax+5C]
 005CF06D    ret
*}
//end;

//005CF070
//procedure TRaveBaseBarCode.SetTextJustify(Self:TRaveBaseBarCode; ?:?);
//begin
{*
 005CF070    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF076    mov        byte ptr [eax+5B],dl
 005CF079    ret
*}
//end;

//005CF07C
//function TRaveBaseBarCode.GetTextJustify(Self:TRaveBaseBarCode):?;
//begin
{*
 005CF07C    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF082    mov        al,byte ptr [eax+5B]
 005CF085    ret
*}
//end;

//005CF088
//procedure TRaveBaseBarCode.SetBarWidth(Self:TRaveBaseBarCode; ?:?; ?:?);
//begin
{*
 005CF088    push       ebp
 005CF089    mov        ebp,esp
 005CF08B    mov        edx,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF091    mov        ecx,dword ptr [ebp+8]
 005CF094    mov        dword ptr [edx+10],ecx
 005CF097    mov        ecx,dword ptr [ebp+0C]
 005CF09A    mov        dword ptr [edx+14],ecx
 005CF09D    mov        edx,dword ptr [eax]
 005CF09F    call       dword ptr [edx+174]; TRaveBaseBarCode.sub_005CEC20
 005CF0A5    pop        ebp
 005CF0A6    ret        8
*}
//end;

//005CF0AC
procedure TRaveBaseBarCode.GetBarWidth(Self:TRaveBaseBarCode);
begin
{*
 005CF0AC    add        esp,0FFFFFFF8
 005CF0AF    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF0B5    mov        edx,dword ptr [eax+10]
 005CF0B8    mov        dword ptr [esp],edx
 005CF0BB    mov        edx,dword ptr [eax+14]
 005CF0BE    mov        dword ptr [esp+4],edx
 005CF0C2    fld        qword ptr [esp]
 005CF0C5    pop        ecx
 005CF0C6    pop        edx
 005CF0C7    ret
*}
end;

//005CF0C8
//procedure TRaveBaseBarCode.SetBarHeight(Self:TRaveBaseBarCode; ?:?; ?:?);
//begin
{*
 005CF0C8    push       ebp
 005CF0C9    mov        ebp,esp
 005CF0CB    mov        edx,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF0D1    mov        ecx,dword ptr [ebp+8]
 005CF0D4    mov        dword ptr [edx+18],ecx
 005CF0D7    mov        ecx,dword ptr [ebp+0C]
 005CF0DA    mov        dword ptr [edx+1C],ecx
 005CF0DD    mov        edx,dword ptr [eax]
 005CF0DF    call       dword ptr [edx+174]; TRaveBaseBarCode.sub_005CEC20
 005CF0E5    pop        ebp
 005CF0E6    ret        8
*}
//end;

//005CF0EC
procedure TRaveBaseBarCode.GetBarHeight(Self:TRaveBaseBarCode);
begin
{*
 005CF0EC    add        esp,0FFFFFFF8
 005CF0EF    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF0F5    mov        edx,dword ptr [eax+18]
 005CF0F8    mov        dword ptr [esp],edx
 005CF0FB    mov        edx,dword ptr [eax+1C]
 005CF0FE    mov        dword ptr [esp+4],edx
 005CF102    fld        qword ptr [esp]
 005CF105    pop        ecx
 005CF106    pop        edx
 005CF107    ret
*}
end;

//005CF108
//procedure TRaveBaseBarCode.SetBarTop(Self:TRaveBaseBarCode; ?:?; ?:?);
//begin
{*
 005CF108    push       ebp
 005CF109    mov        ebp,esp
 005CF10B    push       ebx
 005CF10C    mov        ebx,eax
 005CF10E    push       dword ptr [ebp+0C]
 005CF111    push       dword ptr [ebp+8]
 005CF114    mov        eax,dword ptr [ebx+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF11A    call       005C96B0
 005CF11F    mov        eax,dword ptr [ebx+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF125    push       dword ptr [eax+2C]
 005CF128    push       dword ptr [eax+28]
 005CF12B    mov        eax,ebx
 005CF12D    mov        edx,dword ptr [eax]
 005CF12F    call       dword ptr [edx+138]; TRaveBaseBarCode.SetTop
 005CF135    pop        ebx
 005CF136    pop        ebp
 005CF137    ret        8
*}
//end;

//005CF13C
procedure TRaveBaseBarCode.GetBarTop(Self:TRaveBaseBarCode);
begin
{*
 005CF13C    add        esp,0FFFFFFF8
 005CF13F    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF145    call       005C9664
 005CF14A    fstp       qword ptr [esp]
 005CF14D    wait
 005CF14E    fld        qword ptr [esp]
 005CF151    pop        ecx
 005CF152    pop        edx
 005CF153    ret
*}
end;

//005CF154
//procedure TRavePostNetBarCode.SetText(?:?);
//begin
{*
 005CF154    push       ebp
 005CF155    mov        ebp,esp
 005CF157    push       ecx
 005CF158    push       ebx
 005CF159    mov        dword ptr [ebp-4],edx
 005CF15C    mov        ebx,eax
 005CF15E    mov        eax,dword ptr [ebp-4]
 005CF161    call       @LStrAddRef
 005CF166    xor        eax,eax
 005CF168    push       ebp
 005CF169    push       5CF1B8
 005CF16E    push       dword ptr fs:[eax]
 005CF171    mov        dword ptr fs:[eax],esp
 005CF174    mov        edx,dword ptr [ebp-4]
 005CF177    mov        eax,dword ptr [ebx+0EC]; TRavePostNetBarCode.?fEC:dword
 005CF17D    mov        ecx,dword ptr [eax]
 005CF17F    call       dword ptr [ecx]
 005CF181    mov        eax,dword ptr [ebx+0EC]; TRavePostNetBarCode.?fEC:dword
 005CF187    mov        edx,dword ptr [eax+34]
 005CF18A    mov        eax,ebx
 005CF18C    call       005A9314
 005CF191    mov        eax,ebx
 005CF193    call       005A8540
 005CF198    mov        eax,ebx
 005CF19A    mov        edx,dword ptr [eax]
 005CF19C    call       dword ptr [edx+174]; TRavePostNetBarCode.sub_005CEC20
 005CF1A2    xor        eax,eax
 005CF1A4    pop        edx
 005CF1A5    pop        ecx
 005CF1A6    pop        ecx
 005CF1A7    mov        dword ptr fs:[eax],edx
 005CF1AA    push       5CF1BF
 005CF1AF    lea        eax,[ebp-4]
 005CF1B2    call       @LStrClr
 005CF1B7    ret
<005CF1B8    jmp        @HandleFinally
<005CF1BD    jmp        005CF1AF
 005CF1BF    pop        ebx
 005CF1C0    pop        ecx
 005CF1C1    pop        ebp
 005CF1C2    ret
*}
//end;

//005CF1C4
//procedure TRavePostNetBarCode.GetText(?:?);
//begin
{*
 005CF1C4    push       ebx
 005CF1C5    push       esi
 005CF1C6    mov        esi,edx
 005CF1C8    mov        ebx,eax
 005CF1CA    mov        eax,esi
 005CF1CC    mov        edx,dword ptr [ebx+0EC]; TRavePostNetBarCode.?fEC:dword
 005CF1D2    mov        edx,dword ptr [edx+34]
 005CF1D5    call       @LStrAsg
 005CF1DA    pop        esi
 005CF1DB    pop        ebx
 005CF1DC    ret
*}
//end;

//005CF1E0
procedure TRaveBaseBarCode.SetUseChecksum(Self:TRaveBaseBarCode);
begin
{*
 005CF1E0    push       esi
 005CF1E1    mov        esi,eax
 005CF1E3    mov        eax,dword ptr [esi+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF1E9    mov        ecx,dword ptr [eax]
 005CF1EB    call       dword ptr [ecx+0C]
 005CF1EE    mov        eax,esi
 005CF1F0    mov        edx,dword ptr [eax]
 005CF1F2    call       dword ptr [edx+174]; TRaveBaseBarCode.sub_005CEC20
 005CF1F8    pop        esi
 005CF1F9    ret
*}
end;

//005CF1FC
//function TRaveBaseBarCode.GetUseChecksum(Self:TRaveBaseBarCode):?;
//begin
{*
 005CF1FC    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF202    mov        al,byte ptr [eax+50]
 005CF205    ret
*}
//end;

//005CF208
//procedure TRaveBaseBarCode.SetWideFactor(Self:TRaveBaseBarCode; ?:?; ?:?);
//begin
{*
 005CF208    push       ebp
 005CF209    mov        ebp,esp
 005CF20B    mov        edx,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF211    mov        ecx,dword ptr [ebp+8]
 005CF214    mov        dword ptr [edx+8],ecx
 005CF217    mov        ecx,dword ptr [ebp+0C]
 005CF21A    mov        dword ptr [edx+0C],ecx
 005CF21D    mov        edx,dword ptr [eax]
 005CF21F    call       dword ptr [edx+174]; TRaveBaseBarCode.sub_005CEC20
 005CF225    pop        ebp
 005CF226    ret        8
*}
//end;

//005CF22C
procedure TRaveBaseBarCode.GetWideFactor(Self:TRaveBaseBarCode);
begin
{*
 005CF22C    add        esp,0FFFFFFF8
 005CF22F    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF235    mov        edx,dword ptr [eax+8]
 005CF238    mov        dword ptr [esp],edx
 005CF23B    mov        edx,dword ptr [eax+0C]
 005CF23E    mov        dword ptr [esp+4],edx
 005CF242    fld        qword ptr [esp]
 005CF245    pop        ecx
 005CF246    pop        edx
 005CF247    ret
*}
end;

//005CF248
//procedure TRaveBaseBarCode.SetPrintReadable(Self:TRaveBaseBarCode; ?:?);
//begin
{*
 005CF248    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF24E    mov        byte ptr [eax+58],dl
 005CF251    ret
*}
//end;

//005CF254
//function TRaveBaseBarCode.GetPrintReadable(Self:TRaveBaseBarCode):?;
//begin
{*
 005CF254    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF25A    mov        al,byte ptr [eax+58]
 005CF25D    ret
*}
//end;

//005CF260
//procedure TRaveBaseBarCode.SetPrintChecksum(Self:TRaveBaseBarCode; ?:?);
//begin
{*
 005CF260    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF266    mov        byte ptr [eax+59],dl
 005CF269    ret
*}
//end;

//005CF26C
//function TRaveBaseBarCode.GetPrintChecksum(Self:TRaveBaseBarCode):?;
//begin
{*
 005CF26C    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF272    mov        al,byte ptr [eax+59]
 005CF275    ret
*}
//end;

//005CF278
//procedure TRaveBaseBarCode.SetPrintTop(Self:TRaveBaseBarCode; ?:?);
//begin
{*
 005CF278    mov        ecx,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF27E    mov        byte ptr [ecx+5A],dl
 005CF281    call       005A8540
 005CF286    ret
*}
//end;

//005CF288
//function TRaveBaseBarCode.GetPrintTop(Self:TRaveBaseBarCode):?;
//begin
{*
 005CF288    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF28E    mov        al,byte ptr [eax+5A]
 005CF291    ret
*}
//end;

//005CF294
//procedure TRaveBaseBarCode.SetBarCodeRotation(Self:TRaveBaseBarCode; ?:?);
//begin
{*
 005CF294    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF29A    mov        byte ptr [eax+5D],dl
 005CF29D    ret
*}
//end;

//005CF2A0
//function TRaveBaseBarCode.GetBarCodeRotation(Self:TRaveBaseBarCode):?;
//begin
{*
 005CF2A0    mov        eax,dword ptr [eax+0EC]; TRaveBaseBarCode.?fEC:dword
 005CF2A6    mov        al,byte ptr [eax+5D]
 005CF2A9    ret
*}
//end;

//005CF2AC
//procedure sub_005CF2AC(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005CF2AC    push       ebp
 005CF2AD    mov        ebp,esp
 005CF2AF    add        esp,0FFFFFFF8
 005CF2B2    push       ebx
 005CF2B3    mov        ebx,eax
 005CF2B5    mov        eax,ebx
 005CF2B7    mov        edx,dword ptr [eax]
 005CF2B9    call       dword ptr [edx+5C]
 005CF2BC    fstp       qword ptr [ebp-8]
 005CF2BF    wait
 005CF2C0    mov        eax,ebx
 005CF2C2    mov        edx,dword ptr [eax]
 005CF2C4    call       dword ptr [edx+12C]
 005CF2CA    fsubr      qword ptr [ebp-8]
 005CF2CD    fadd       qword ptr [ebp+10]
 005CF2D0    add        esp,0FFFFFFF8
 005CF2D3    fstp       qword ptr [esp]
 005CF2D6    wait
 005CF2D7    mov        eax,ebx
 005CF2D9    call       005AAE14
 005CF2DE    push       eax
 005CF2DF    mov        eax,ebx
 005CF2E1    mov        edx,dword ptr [eax]
 005CF2E3    call       dword ptr [edx+60]
 005CF2E6    fstp       qword ptr [ebp-8]
 005CF2E9    wait
 005CF2EA    mov        eax,ebx
 005CF2EC    mov        edx,dword ptr [eax]
 005CF2EE    call       dword ptr [edx+134]
 005CF2F4    fsubr      qword ptr [ebp-8]
 005CF2F7    fadd       qword ptr [ebp+8]
 005CF2FA    add        esp,0FFFFFFF8
 005CF2FD    fstp       qword ptr [esp]
 005CF300    wait
 005CF301    mov        eax,ebx
 005CF303    call       005AAE30
 005CF308    push       eax
 005CF309    mov        eax,ebx
 005CF30B    mov        edx,dword ptr [eax]
 005CF30D    call       dword ptr [edx+60]
 005CF310    fstp       qword ptr [ebp-8]
 005CF313    wait
 005CF314    mov        eax,ebx
 005CF316    mov        edx,dword ptr [eax]
 005CF318    call       dword ptr [edx+134]
 005CF31E    fsubr      qword ptr [ebp-8]
 005CF321    fadd       qword ptr [ebp+18]
 005CF324    add        esp,0FFFFFFF8
 005CF327    fstp       qword ptr [esp]
 005CF32A    wait
 005CF32B    mov        eax,ebx
 005CF32D    call       005AAE30
 005CF332    push       eax
 005CF333    mov        eax,ebx
 005CF335    mov        edx,dword ptr [eax]
 005CF337    call       dword ptr [edx+5C]
 005CF33A    fstp       qword ptr [ebp-8]
 005CF33D    wait
 005CF33E    mov        eax,ebx
 005CF340    mov        edx,dword ptr [eax]
 005CF342    call       dword ptr [edx+12C]
 005CF348    fsubr      qword ptr [ebp-8]
 005CF34B    fadd       qword ptr [ebp+20]
 005CF34E    add        esp,0FFFFFFF8
 005CF351    fstp       qword ptr [esp]
 005CF354    wait
 005CF355    mov        eax,ebx
 005CF357    call       005AAE14
 005CF35C    mov        edx,eax
 005CF35E    mov        eax,dword ptr [ebx+0F4]
 005CF364    pop        ecx
 005CF365    call       TCanvas.Rectangle
 005CF36A    pop        ebx
 005CF36B    pop        ecx
 005CF36C    pop        ecx
 005CF36D    pop        ebp
 005CF36E    ret        20
*}
//end;

//005CF374
//procedure sub_005CF374(?:?);
//begin
{*
 005CF374    push       ebx
 005CF375    push       esi
 005CF376    push       edi
 005CF377    push       ebp
 005CF378    add        esp,0FFFFFFB4
 005CF37B    mov        dword ptr [esp],edx
 005CF37E    mov        edi,eax
 005CF380    mov        eax,dword ptr [esp]
 005CF383    mov        dword ptr [edi+0F4],eax; TRaveEANBarCode.?fF4:dword
 005CF389    mov        esi,eax
 005CF38B    xor        edx,edx
 005CF38D    mov        eax,dword ptr [esi+10]
 005CF390    call       TPen.SetColor
 005CF395    mov        dl,1
 005CF397    mov        eax,dword ptr [esi+10]
 005CF39A    call       TPen.SetStyle
 005CF39F    mov        dl,4
 005CF3A1    mov        eax,dword ptr [esi+10]
 005CF3A4    call       TPen.SetMode
 005CF3A9    mov        edx,1
 005CF3AE    mov        eax,dword ptr [esi+10]
 005CF3B1    call       TPen.SetWidth
 005CF3B6    xor        edx,edx
 005CF3B8    mov        eax,dword ptr [esi+14]
 005CF3BB    call       TBrush.SetColor
 005CF3C0    mov        dl,1
 005CF3C2    mov        eax,dword ptr [esi+14]
 005CF3C5    call       TBrush.SetStyle
 005CF3CA    mov        eax,edi
 005CF3CC    call       TRaveBaseBarCode.GetBarCodeRotation
 005CF3D1    sub        al,1
>005CF3D3    jb         005CF3EC
>005CF3D5    je         005CF4EA
 005CF3DB    dec        al
>005CF3DD    je         005CF3EC
 005CF3DF    dec        al
>005CF3E1    je         005CF6B6
>005CF3E7    jmp        005CF81B
 005CF3EC    mov        eax,edi
 005CF3EE    call       TRaveBaseBarCode.GetPrintReadable
 005CF3F3    test       al,al
>005CF3F5    je         005CF482
 005CF3FB    mov        eax,edi
 005CF3FD    mov        edx,dword ptr [eax]
 005CF3FF    call       dword ptr [edx+64]; TRaveEANBarCode.sub_005A9744
 005CF402    add        esp,0FFFFFFF8
 005CF405    fstp       qword ptr [esp]
 005CF408    wait
 005CF409    mov        eax,edi
 005CF40B    call       005AAE14
 005CF410    inc        eax
 005CF411    push       eax
 005CF412    mov        eax,edi
 005CF414    mov        edx,dword ptr [eax]
 005CF416    call       dword ptr [edx+68]; TRaveEANBarCode.sub_005A9770
 005CF419    fstp       qword ptr [esp+2C]
 005CF41D    wait
 005CF41E    mov        eax,dword ptr [esi+0C]
 005CF421    call       TFont.GetSize
 005CF426    mov        dword ptr [esp+34],eax
 005CF42A    fild       dword ptr [esp+34]
 005CF42E    fdiv       dword ptr ds:[5CFCBC]; 60:Single
 005CF434    fadd       qword ptr [esp+2C]
 005CF438    add        esp,0FFFFFFF8
 005CF43B    fstp       qword ptr [esp]
 005CF43E    wait
 005CF43F    mov        eax,edi
 005CF441    call       005AAE30
 005CF446    inc        eax
 005CF447    push       eax
 005CF448    mov        eax,edi
 005CF44A    mov        edx,dword ptr [eax]
 005CF44C    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF44F    add        esp,0FFFFFFF8
 005CF452    fstp       qword ptr [esp]
 005CF455    wait
 005CF456    mov        eax,edi
 005CF458    call       005AAE30
 005CF45D    push       eax
 005CF45E    mov        eax,edi
 005CF460    mov        edx,dword ptr [eax]
 005CF462    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF465    add        esp,0FFFFFFF8
 005CF468    fstp       qword ptr [esp]
 005CF46B    wait
 005CF46C    mov        eax,edi
 005CF46E    call       005AAE14
 005CF473    mov        edx,eax
 005CF475    mov        eax,esi
 005CF477    pop        ecx
 005CF478    call       TCanvas.Rectangle
>005CF47D    jmp        005CF81B
 005CF482    mov        eax,edi
 005CF484    mov        edx,dword ptr [eax]
 005CF486    call       dword ptr [edx+64]; TRaveEANBarCode.sub_005A9744
 005CF489    add        esp,0FFFFFFF8
 005CF48C    fstp       qword ptr [esp]
 005CF48F    wait
 005CF490    mov        eax,edi
 005CF492    call       005AAE14
 005CF497    inc        eax
 005CF498    push       eax
 005CF499    mov        eax,edi
 005CF49B    mov        edx,dword ptr [eax]
 005CF49D    call       dword ptr [edx+68]; TRaveEANBarCode.sub_005A9770
 005CF4A0    add        esp,0FFFFFFF8
 005CF4A3    fstp       qword ptr [esp]
 005CF4A6    wait
 005CF4A7    mov        eax,edi
 005CF4A9    call       005AAE30
 005CF4AE    inc        eax
 005CF4AF    push       eax
 005CF4B0    mov        eax,edi
 005CF4B2    mov        edx,dword ptr [eax]
 005CF4B4    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF4B7    add        esp,0FFFFFFF8
 005CF4BA    fstp       qword ptr [esp]
 005CF4BD    wait
 005CF4BE    mov        eax,edi
 005CF4C0    call       005AAE30
 005CF4C5    push       eax
 005CF4C6    mov        eax,edi
 005CF4C8    mov        edx,dword ptr [eax]
 005CF4CA    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF4CD    add        esp,0FFFFFFF8
 005CF4D0    fstp       qword ptr [esp]
 005CF4D3    wait
 005CF4D4    mov        eax,edi
 005CF4D6    call       005AAE14
 005CF4DB    mov        edx,eax
 005CF4DD    mov        eax,esi
 005CF4DF    pop        ecx
 005CF4E0    call       TCanvas.Rectangle
>005CF4E5    jmp        005CF81B
 005CF4EA    mov        eax,edi
 005CF4EC    call       TRaveBaseBarCode.GetPrintReadable
 005CF4F1    test       al,al
>005CF4F3    je         005CF5E8
 005CF4F9    mov        eax,edi
 005CF4FB    mov        edx,dword ptr [eax]
 005CF4FD    call       dword ptr [edx+68]; TRaveEANBarCode.sub_005A9770
 005CF500    fstp       qword ptr [esp+28]
 005CF504    wait
 005CF505    mov        eax,edi
 005CF507    mov        edx,dword ptr [eax]
 005CF509    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF50C    fsubr      qword ptr [esp+28]
 005CF510    fstp       tbyte ptr [esp+34]
 005CF514    wait
 005CF515    mov        eax,edi
 005CF517    mov        edx,dword ptr [eax]
 005CF519    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF51C    fld        tbyte ptr [esp+34]
 005CF520    faddp      st(1),st
 005CF522    fstp       tbyte ptr [esp+40]
 005CF526    wait
 005CF527    mov        eax,dword ptr [esi+0C]
 005CF52A    call       TFont.GetSize
 005CF52F    mov        dword ptr [esp+30],eax
 005CF533    fild       dword ptr [esp+30]
 005CF537    fdiv       dword ptr ds:[5CFCBC]; 60:Single
 005CF53D    fld        tbyte ptr [esp+40]
 005CF541    faddp      st(1),st
 005CF543    add        esp,0FFFFFFF8
 005CF546    fstp       qword ptr [esp]
 005CF549    wait
 005CF54A    mov        eax,edi
 005CF54C    call       005AAE14
 005CF551    push       eax
 005CF552    mov        eax,edi
 005CF554    mov        edx,dword ptr [eax]
 005CF556    call       dword ptr [edx+64]; TRaveEANBarCode.sub_005A9744
 005CF559    fstp       qword ptr [esp+2C]
 005CF55D    wait
 005CF55E    mov        eax,edi
 005CF560    mov        edx,dword ptr [eax]
 005CF562    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF565    fsubr      qword ptr [esp+2C]
 005CF569    fstp       tbyte ptr [esp+38]
 005CF56D    wait
 005CF56E    mov        eax,edi
 005CF570    mov        edx,dword ptr [eax]
 005CF572    call       dword ptr [edx+68]; TRaveEANBarCode.sub_005A9770
 005CF575    fld        tbyte ptr [esp+38]
 005CF579    fsubp      st(1),st
 005CF57B    add        esp,0FFFFFFF8
 005CF57E    fstp       qword ptr [esp]
 005CF581    wait
 005CF582    mov        eax,edi
 005CF584    call       005AAE30
 005CF589    dec        eax
 005CF58A    push       eax
 005CF58B    mov        eax,edi
 005CF58D    mov        edx,dword ptr [eax]
 005CF58F    call       dword ptr [edx+68]; TRaveEANBarCode.sub_005A9770
 005CF592    fstp       qword ptr [esp+30]
 005CF596    wait
 005CF597    mov        eax,edi
 005CF599    mov        edx,dword ptr [eax]
 005CF59B    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF59E    fsubr      qword ptr [esp+30]
 005CF5A2    fstp       tbyte ptr [esp+3C]
 005CF5A6    wait
 005CF5A7    mov        eax,edi
 005CF5A9    mov        edx,dword ptr [eax]
 005CF5AB    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF5AE    fld        tbyte ptr [esp+3C]
 005CF5B2    faddp      st(1),st
 005CF5B4    add        esp,0FFFFFFF8
 005CF5B7    fstp       qword ptr [esp]
 005CF5BA    wait
 005CF5BB    mov        eax,edi
 005CF5BD    call       005AAE30
 005CF5C2    inc        eax
 005CF5C3    push       eax
 005CF5C4    mov        eax,edi
 005CF5C6    mov        edx,dword ptr [eax]
 005CF5C8    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF5CB    add        esp,0FFFFFFF8
 005CF5CE    fstp       qword ptr [esp]
 005CF5D1    wait
 005CF5D2    mov        eax,edi
 005CF5D4    call       005AAE14
 005CF5D9    mov        edx,eax
 005CF5DB    mov        eax,esi
 005CF5DD    pop        ecx
 005CF5DE    call       TCanvas.Rectangle
>005CF5E3    jmp        005CF81B
 005CF5E8    mov        eax,edi
 005CF5EA    mov        edx,dword ptr [eax]
 005CF5EC    call       dword ptr [edx+68]; TRaveEANBarCode.sub_005A9770
 005CF5EF    fstp       qword ptr [esp+28]
 005CF5F3    wait
 005CF5F4    mov        eax,edi
 005CF5F6    mov        edx,dword ptr [eax]
 005CF5F8    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF5FB    fsubr      qword ptr [esp+28]
 005CF5FF    fstp       tbyte ptr [esp+34]
 005CF603    wait
 005CF604    mov        eax,edi
 005CF606    mov        edx,dword ptr [eax]
 005CF608    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF60B    fld        tbyte ptr [esp+34]
 005CF60F    faddp      st(1),st
 005CF611    add        esp,0FFFFFFF8
 005CF614    fstp       qword ptr [esp]
 005CF617    wait
 005CF618    mov        eax,edi
 005CF61A    call       005AAE14
 005CF61F    push       eax
 005CF620    mov        eax,edi
 005CF622    mov        edx,dword ptr [eax]
 005CF624    call       dword ptr [edx+64]; TRaveEANBarCode.sub_005A9744
 005CF627    fstp       qword ptr [esp+2C]
 005CF62B    wait
 005CF62C    mov        eax,edi
 005CF62E    mov        edx,dword ptr [eax]
 005CF630    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF633    fsubr      qword ptr [esp+2C]
 005CF637    fstp       tbyte ptr [esp+38]
 005CF63B    wait
 005CF63C    mov        eax,edi
 005CF63E    mov        edx,dword ptr [eax]
 005CF640    call       dword ptr [edx+68]; TRaveEANBarCode.sub_005A9770
 005CF643    fld        tbyte ptr [esp+38]
 005CF647    fsubp      st(1),st
 005CF649    add        esp,0FFFFFFF8
 005CF64C    fstp       qword ptr [esp]
 005CF64F    wait
 005CF650    mov        eax,edi
 005CF652    call       005AAE30
 005CF657    dec        eax
 005CF658    push       eax
 005CF659    mov        eax,edi
 005CF65B    mov        edx,dword ptr [eax]
 005CF65D    call       dword ptr [edx+68]; TRaveEANBarCode.sub_005A9770
 005CF660    fstp       qword ptr [esp+30]
 005CF664    wait
 005CF665    mov        eax,edi
 005CF667    mov        edx,dword ptr [eax]
 005CF669    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF66C    fsubr      qword ptr [esp+30]
 005CF670    fstp       tbyte ptr [esp+3C]
 005CF674    wait
 005CF675    mov        eax,edi
 005CF677    mov        edx,dword ptr [eax]
 005CF679    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF67C    fld        tbyte ptr [esp+3C]
 005CF680    faddp      st(1),st
 005CF682    add        esp,0FFFFFFF8
 005CF685    fstp       qword ptr [esp]
 005CF688    wait
 005CF689    mov        eax,edi
 005CF68B    call       005AAE30
 005CF690    inc        eax
 005CF691    push       eax
 005CF692    mov        eax,edi
 005CF694    mov        edx,dword ptr [eax]
 005CF696    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF699    add        esp,0FFFFFFF8
 005CF69C    fstp       qword ptr [esp]
 005CF69F    wait
 005CF6A0    mov        eax,edi
 005CF6A2    call       005AAE14
 005CF6A7    mov        edx,eax
 005CF6A9    mov        eax,esi
 005CF6AB    pop        ecx
 005CF6AC    call       TCanvas.Rectangle
>005CF6B1    jmp        005CF81B
 005CF6B6    mov        eax,edi
 005CF6B8    call       TRaveBaseBarCode.GetPrintReadable
 005CF6BD    test       al,al
>005CF6BF    je         005CF783
 005CF6C5    mov        eax,edi
 005CF6C7    mov        edx,dword ptr [eax]
 005CF6C9    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF6CC    fstp       qword ptr [esp+28]
 005CF6D0    wait
 005CF6D1    mov        eax,edi
 005CF6D3    mov        edx,dword ptr [eax]
 005CF6D5    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005CF6DB    fadd       qword ptr [esp+28]
 005CF6DF    fstp       tbyte ptr [esp+34]
 005CF6E3    wait
 005CF6E4    mov        eax,dword ptr [esi+0C]
 005CF6E7    call       TFont.GetSize
 005CF6EC    mov        dword ptr [esp+30],eax
 005CF6F0    fild       dword ptr [esp+30]
 005CF6F4    fdiv       dword ptr ds:[5CFCBC]; 60:Single
 005CF6FA    fld        tbyte ptr [esp+34]
 005CF6FE    faddp      st(1),st
 005CF700    add        esp,0FFFFFFF8
 005CF703    fstp       qword ptr [esp]
 005CF706    wait
 005CF707    mov        eax,edi
 005CF709    call       005AAE14
 005CF70E    push       eax
 005CF70F    mov        eax,edi
 005CF711    mov        edx,dword ptr [eax]
 005CF713    call       dword ptr [edx+64]; TRaveEANBarCode.sub_005A9744
 005CF716    fstp       qword ptr [esp+2C]
 005CF71A    wait
 005CF71B    mov        eax,edi
 005CF71D    mov        edx,dword ptr [eax]
 005CF71F    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF722    fsubr      qword ptr [esp+2C]
 005CF726    fstp       tbyte ptr [esp+38]
 005CF72A    wait
 005CF72B    mov        eax,edi
 005CF72D    mov        edx,dword ptr [eax]
 005CF72F    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF732    fld        tbyte ptr [esp+38]
 005CF736    faddp      st(1),st
 005CF738    add        esp,0FFFFFFF8
 005CF73B    fstp       qword ptr [esp]
 005CF73E    wait
 005CF73F    mov        eax,edi
 005CF741    call       005AAE30
 005CF746    inc        eax
 005CF747    push       eax
 005CF748    mov        eax,edi
 005CF74A    mov        edx,dword ptr [eax]
 005CF74C    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF74F    add        esp,0FFFFFFF8
 005CF752    fstp       qword ptr [esp]
 005CF755    wait
 005CF756    mov        eax,edi
 005CF758    call       005AAE30
 005CF75D    dec        eax
 005CF75E    push       eax
 005CF75F    mov        eax,edi
 005CF761    mov        edx,dword ptr [eax]
 005CF763    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF766    add        esp,0FFFFFFF8
 005CF769    fstp       qword ptr [esp]
 005CF76C    wait
 005CF76D    mov        eax,edi
 005CF76F    call       005AAE14
 005CF774    mov        edx,eax
 005CF776    mov        eax,esi
 005CF778    pop        ecx
 005CF779    call       TCanvas.Rectangle
>005CF77E    jmp        005CF81B
 005CF783    mov        eax,edi
 005CF785    mov        edx,dword ptr [eax]
 005CF787    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF78A    fstp       qword ptr [esp+28]
 005CF78E    wait
 005CF78F    mov        eax,edi
 005CF791    mov        edx,dword ptr [eax]
 005CF793    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005CF799    fadd       qword ptr [esp+28]
 005CF79D    add        esp,0FFFFFFF8
 005CF7A0    fstp       qword ptr [esp]
 005CF7A3    wait
 005CF7A4    mov        eax,edi
 005CF7A6    call       005AAE14
 005CF7AB    push       eax
 005CF7AC    mov        eax,edi
 005CF7AE    mov        edx,dword ptr [eax]
 005CF7B0    call       dword ptr [edx+64]; TRaveEANBarCode.sub_005A9744
 005CF7B3    fstp       qword ptr [esp+2C]
 005CF7B7    wait
 005CF7B8    mov        eax,edi
 005CF7BA    mov        edx,dword ptr [eax]
 005CF7BC    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF7BF    fsubr      qword ptr [esp+2C]
 005CF7C3    fstp       tbyte ptr [esp+38]
 005CF7C7    wait
 005CF7C8    mov        eax,edi
 005CF7CA    mov        edx,dword ptr [eax]
 005CF7CC    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF7CF    fld        tbyte ptr [esp+38]
 005CF7D3    faddp      st(1),st
 005CF7D5    add        esp,0FFFFFFF8
 005CF7D8    fstp       qword ptr [esp]
 005CF7DB    wait
 005CF7DC    mov        eax,edi
 005CF7DE    call       005AAE30
 005CF7E3    inc        eax
 005CF7E4    push       eax
 005CF7E5    mov        eax,edi
 005CF7E7    mov        edx,dword ptr [eax]
 005CF7E9    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CF7EC    add        esp,0FFFFFFF8
 005CF7EF    fstp       qword ptr [esp]
 005CF7F2    wait
 005CF7F3    mov        eax,edi
 005CF7F5    call       005AAE30
 005CF7FA    dec        eax
 005CF7FB    push       eax
 005CF7FC    mov        eax,edi
 005CF7FE    mov        edx,dword ptr [eax]
 005CF800    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CF803    add        esp,0FFFFFFF8
 005CF806    fstp       qword ptr [esp]
 005CF809    wait
 005CF80A    mov        eax,edi
 005CF80C    call       005AAE14
 005CF811    mov        edx,eax
 005CF813    mov        eax,esi
 005CF815    pop        ecx
 005CF816    call       TCanvas.Rectangle
 005CF81B    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CF821    mov        dword ptr [eax+64],edi
 005CF824    mov        dword ptr [eax+60],5CF2AC; sub_005CF2AC
 005CF82B    xor        edx,edx
 005CF82D    mov        eax,dword ptr [esi+10]
 005CF830    call       TPen.SetColor
 005CF835    xor        edx,edx
 005CF837    mov        eax,dword ptr [esi+10]
 005CF83A    call       TPen.SetStyle
 005CF83F    mov        dl,4
 005CF841    mov        eax,dword ptr [esi+10]
 005CF844    call       TPen.SetMode
 005CF849    mov        edx,1
 005CF84E    mov        eax,dword ptr [esi+10]
 005CF851    call       TPen.SetWidth
 005CF856    xor        edx,edx
 005CF858    mov        eax,dword ptr [esi+14]
 005CF85B    call       TBrush.SetColor
 005CF860    xor        edx,edx
 005CF862    mov        eax,dword ptr [esi+14]
 005CF865    call       TBrush.SetStyle
 005CF86A    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CF870    call       005C93D0
 005CF875    fstp       qword ptr [esp+8]
 005CF879    wait
 005CF87A    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CF880    call       005C9540
 005CF885    fstp       qword ptr [esp+10]
 005CF889    wait
 005CF88A    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CF890    call       005C9488
 005CF895    fstp       qword ptr [esp+18]
 005CF899    wait
 005CF89A    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CF8A0    mov        edx,dword ptr [eax+28]
 005CF8A3    mov        dword ptr [esp+20],edx
 005CF8A7    mov        edx,dword ptr [eax+2C]
 005CF8AA    mov        dword ptr [esp+24],edx
 005CF8AE    mov        bl,byte ptr [eax+5C]
 005CF8B1    mov        eax,edi
 005CF8B3    call       TRaveBaseBarCode.GetBarCodeRotation
 005CF8B8    sub        al,1
>005CF8BA    jb         005CF8D3
>005CF8BC    je         005CF90B
 005CF8BE    dec        al
>005CF8C0    je         005CFA03
 005CF8C6    dec        al
>005CF8C8    je         005CFB08
>005CF8CE    jmp        005CFC3F
 005CF8D3    mov        eax,edi
 005CF8D5    call       TRaveBaseBarCode.GetPrintTop
 005CF8DA    test       al,al
>005CF8DC    je         005CFC3F
 005CF8E2    mov        eax,dword ptr [esi+0C]
 005CF8E5    call       TFont.GetSize
 005CF8EA    mov        dword ptr [esp+30],eax
 005CF8EE    fild       dword ptr [esp+30]
 005CF8F2    fdiv       dword ptr ds:[5CFCBC]; 60:Single
 005CF8F8    fadd       qword ptr [esp+20]
 005CF8FC    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CF902    fstp       qword ptr [eax+28]
 005CF905    wait
>005CF906    jmp        005CFC3F
 005CF90B    mov        eax,edi
 005CF90D    call       TRaveBaseBarCode.GetBarCodeJustify
 005CF912    sub        al,1
>005CF914    jb         005CF945
>005CF916    je         005CF924
 005CF918    dec        al
>005CF91A    je         005CF97B
 005CF91C    dec        al
>005CF91E    jne        005CF9A7
 005CF924    mov        ebp,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CF92A    mov        eax,ebp
 005CF92C    call       005C9374
 005CF931    fadd       qword ptr [esp+20]
 005CF935    add        esp,0FFFFFFF8
 005CF938    fstp       qword ptr [esp]
 005CF93B    wait
 005CF93C    mov        eax,ebp
 005CF93E    call       005C9470
>005CF943    jmp        005CF9A7
 005CF945    mov        eax,edi
 005CF947    mov        edx,dword ptr [eax]
 005CF949    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CF94F    fdiv       dword ptr ds:[5CFCC0]; 2:Single
 005CF955    fstp       tbyte ptr [esp+34]
 005CF959    wait
 005CF95A    mov        eax,edi
 005CF95C    call       TRaveBaseBarCode.GetBottom
 005CF961    fld        tbyte ptr [esp+34]
 005CF965    fsubp      st(1),st
 005CF967    add        esp,0FFFFFFF8
 005CF96A    fstp       qword ptr [esp]
 005CF96D    wait
 005CF96E    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CF974    call       005C95EC
>005CF979    jmp        005CF9A7
 005CF97B    mov        eax,edi
 005CF97D    mov        edx,dword ptr [eax]
 005CF97F    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CF985    fstp       qword ptr [esp+28]
 005CF989    wait
 005CF98A    mov        eax,edi
 005CF98C    call       TRaveBaseBarCode.GetBottom
 005CF991    fsub       qword ptr [esp+28]
 005CF995    add        esp,0FFFFFFF8
 005CF998    fstp       qword ptr [esp]
 005CF99B    wait
 005CF99C    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CF9A2    call       005C9528
 005CF9A7    mov        eax,edi
 005CF9A9    call       TRaveBaseBarCode.GetPrintTop
 005CF9AE    test       al,al
>005CF9B0    je         005CF9EA
 005CF9B2    mov        eax,edi
 005CF9B4    mov        edx,dword ptr [eax]
 005CF9B6    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CF9BC    fstp       qword ptr [esp+28]
 005CF9C0    wait
 005CF9C1    mov        eax,dword ptr [esi+0C]
 005CF9C4    call       TFont.GetSize
 005CF9C9    mov        dword ptr [esp+30],eax
 005CF9CD    fild       dword ptr [esp+30]
 005CF9D1    fdiv       dword ptr ds:[5CFCBC]; 60:Single
 005CF9D7    fadd       qword ptr [esp+28]
 005CF9DB    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CF9E1    fstp       qword ptr [eax+28]
 005CF9E4    wait
>005CF9E5    jmp        005CFC3F
 005CF9EA    mov        eax,edi
 005CF9EC    mov        edx,dword ptr [eax]
 005CF9EE    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CF9F4    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CF9FA    fstp       qword ptr [eax+28]
 005CF9FD    wait
>005CF9FE    jmp        005CFC3F
 005CFA03    mov        eax,edi
 005CFA05    call       TRaveBaseBarCode.GetBarCodeJustify
 005CFA0A    sub        al,1
>005CFA0C    jb         005CFA4D
>005CFA0E    je         005CFA1C
 005CFA10    dec        al
>005CFA12    je         005CFA86
 005CFA14    dec        al
>005CFA16    jne        005CFAA2
 005CFA1C    mov        eax,edi
 005CFA1E    mov        edx,dword ptr [eax]
 005CFA20    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CFA26    fstp       qword ptr [esp+28]
 005CFA2A    wait
 005CFA2B    mov        eax,edi
 005CFA2D    mov        edx,dword ptr [eax]
 005CFA2F    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CFA35    fadd       qword ptr [esp+28]
 005CFA39    add        esp,0FFFFFFF8
 005CFA3C    fstp       qword ptr [esp]
 005CFA3F    wait
 005CFA40    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFA46    call       005C9470
>005CFA4B    jmp        005CFAA2
 005CFA4D    mov        eax,edi
 005CFA4F    mov        edx,dword ptr [eax]
 005CFA51    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CFA57    fdiv       dword ptr ds:[5CFCC0]; 2:Single
 005CFA5D    fstp       tbyte ptr [esp+34]
 005CFA61    wait
 005CFA62    mov        eax,edi
 005CFA64    mov        edx,dword ptr [eax]
 005CFA66    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CFA6C    fld        tbyte ptr [esp+34]
 005CFA70    faddp      st(1),st
 005CFA72    add        esp,0FFFFFFF8
 005CFA75    fstp       qword ptr [esp]
 005CFA78    wait
 005CFA79    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFA7F    call       005C95EC
>005CFA84    jmp        005CFAA2
 005CFA86    mov        eax,edi
 005CFA88    mov        edx,dword ptr [eax]
 005CFA8A    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CFA90    add        esp,0FFFFFFF8
 005CFA93    fstp       qword ptr [esp]
 005CFA96    wait
 005CFA97    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFA9D    call       005C9528
 005CFAA2    mov        eax,edi
 005CFAA4    call       TRaveBaseBarCode.GetPrintTop
 005CFAA9    test       al,al
>005CFAAB    je         005CFACA
 005CFAAD    mov        eax,edi
 005CFAAF    mov        edx,dword ptr [eax]
 005CFAB1    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005CFAB7    fadd       qword ptr [esp+20]
 005CFABB    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFAC1    fstp       qword ptr [eax+28]
 005CFAC4    wait
>005CFAC5    jmp        005CFC3F
 005CFACA    mov        eax,edi
 005CFACC    mov        edx,dword ptr [eax]
 005CFACE    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005CFAD4    fadd       qword ptr [esp+20]
 005CFAD8    fstp       tbyte ptr [esp+34]
 005CFADC    wait
 005CFADD    mov        eax,dword ptr [esi+0C]
 005CFAE0    call       TFont.GetSize
 005CFAE5    mov        dword ptr [esp+30],eax
 005CFAE9    fild       dword ptr [esp+30]
 005CFAED    fdiv       dword ptr ds:[5CFCBC]; 60:Single
 005CFAF3    fld        tbyte ptr [esp+34]
 005CFAF7    faddp      st(1),st
 005CFAF9    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFAFF    fstp       qword ptr [eax+28]
 005CFB02    wait
>005CFB03    jmp        005CFC3F
 005CFB08    mov        eax,edi
 005CFB0A    call       TRaveBaseBarCode.GetBarCodeJustify
 005CFB0F    sub        al,1
>005CFB11    jb         005CFB39
>005CFB13    je         005CFB21
 005CFB15    dec        al
>005CFB17    je         005CFB82
 005CFB19    dec        al
>005CFB1B    jne        005CFBC3
 005CFB21    push       dword ptr [esp+24]
 005CFB25    push       dword ptr [esp+24]
 005CFB29    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFB2F    call       005C9470
>005CFB34    jmp        005CFBC3
 005CFB39    mov        eax,edi
 005CFB3B    mov        edx,dword ptr [eax]
 005CFB3D    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CFB43    fstp       qword ptr [esp+28]
 005CFB47    wait
 005CFB48    mov        eax,edi
 005CFB4A    call       TRaveBaseBarCode.GetRight
 005CFB4F    fsub       qword ptr [esp+28]
 005CFB53    fdiv       dword ptr ds:[5CFCC0]; 2:Single
 005CFB59    fstp       tbyte ptr [esp+34]
 005CFB5D    wait
 005CFB5E    mov        eax,edi
 005CFB60    mov        edx,dword ptr [eax]
 005CFB62    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005CFB68    fld        tbyte ptr [esp+34]
 005CFB6C    faddp      st(1),st
 005CFB6E    add        esp,0FFFFFFF8
 005CFB71    fstp       qword ptr [esp]
 005CFB74    wait
 005CFB75    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFB7B    call       005C95EC
>005CFB80    jmp        005CFBC3
 005CFB82    mov        eax,edi
 005CFB84    mov        edx,dword ptr [eax]
 005CFB86    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CFB8C    fstp       qword ptr [esp+28]
 005CFB90    wait
 005CFB91    mov        eax,edi
 005CFB93    call       TRaveBaseBarCode.GetRight
 005CFB98    fsub       qword ptr [esp+28]
 005CFB9C    fstp       tbyte ptr [esp+34]
 005CFBA0    wait
 005CFBA1    mov        eax,edi
 005CFBA3    mov        edx,dword ptr [eax]
 005CFBA5    call       dword ptr [edx+134]; TRaveBaseBarCode.GetTop
 005CFBAB    fld        tbyte ptr [esp+34]
 005CFBAF    faddp      st(1),st
 005CFBB1    add        esp,0FFFFFFF8
 005CFBB4    fstp       qword ptr [esp]
 005CFBB7    wait
 005CFBB8    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFBBE    call       005C9528
 005CFBC3    mov        eax,edi
 005CFBC5    call       TRaveBaseBarCode.GetPrintTop
 005CFBCA    test       al,al
>005CFBCC    je         005CFBF7
 005CFBCE    mov        eax,edi
 005CFBD0    mov        edx,dword ptr [eax]
 005CFBD2    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CFBD8    fstp       qword ptr [esp+28]
 005CFBDC    wait
 005CFBDD    mov        eax,edi
 005CFBDF    mov        edx,dword ptr [eax]
 005CFBE1    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005CFBE7    fadd       qword ptr [esp+28]
 005CFBEB    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFBF1    fstp       qword ptr [eax+28]
 005CFBF4    wait
>005CFBF5    jmp        005CFC3F
 005CFBF7    mov        eax,edi
 005CFBF9    mov        edx,dword ptr [eax]
 005CFBFB    call       dword ptr [edx+12C]; TRaveBaseBarCode.GetLeft
 005CFC01    fstp       qword ptr [esp+28]
 005CFC05    wait
 005CFC06    mov        eax,edi
 005CFC08    mov        edx,dword ptr [eax]
 005CFC0A    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005CFC10    fadd       qword ptr [esp+28]
 005CFC14    fstp       tbyte ptr [esp+34]
 005CFC18    wait
 005CFC19    mov        eax,dword ptr [esi+0C]
 005CFC1C    call       TFont.GetSize
 005CFC21    mov        dword ptr [esp+30],eax
 005CFC25    fild       dword ptr [esp+30]
 005CFC29    fdiv       dword ptr ds:[5CFCBC]; 60:Single
 005CFC2F    fld        tbyte ptr [esp+34]
 005CFC33    faddp      st(1),st
 005CFC35    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFC3B    fstp       qword ptr [eax+28]
 005CFC3E    wait
 005CFC3F    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFC45    mov        edx,dword ptr [eax]
 005CFC47    call       dword ptr [edx+28]
 005CFC4A    sub        bl,1
>005CFC4D    jb         005CFC6E
>005CFC4F    je         005CFC59
 005CFC51    dec        bl
>005CFC53    je         005CFC83
 005CFC55    dec        bl
>005CFC57    jne        005CFC96
 005CFC59    push       dword ptr [esp+0C]
 005CFC5D    push       dword ptr [esp+0C]
 005CFC61    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFC67    call       005C9470
>005CFC6C    jmp        005CFC96
 005CFC6E    push       dword ptr [esp+14]
 005CFC72    push       dword ptr [esp+14]
 005CFC76    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFC7C    call       005C95EC
>005CFC81    jmp        005CFC96
 005CFC83    push       dword ptr [esp+1C]
 005CFC87    push       dword ptr [esp+1C]
 005CFC8B    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFC91    call       005C9528
 005CFC96    mov        eax,dword ptr [edi+0EC]; TRaveEANBarCode.?fEC:dword
 005CFC9C    mov        edx,dword ptr [esp+20]
 005CFCA0    mov        dword ptr [eax+28],edx
 005CFCA3    mov        edx,dword ptr [esp+24]
 005CFCA7    mov        dword ptr [eax+2C],edx
 005CFCAA    xor        edx,edx
 005CFCAC    mov        dword ptr [eax+60],edx
 005CFCAF    mov        dword ptr [eax+64],edx
 005CFCB2    add        esp,4C
 005CFCB5    pop        ebp
 005CFCB6    pop        edi
 005CFCB7    pop        esi
 005CFCB8    pop        ebx
 005CFCB9    ret
*}
//end;

//005CFCC4
//procedure sub_005CFCC4(?:?);
//begin
{*
 005CFCC4    push       ebp
 005CFCC5    mov        ebp,esp
 005CFCC7    add        esp,0FFFFFFBC
 005CFCCA    push       ebx
 005CFCCB    push       esi
 005CFCCC    xor        ecx,ecx
 005CFCCE    mov        dword ptr [ebp-2C],ecx
 005CFCD1    mov        esi,edx
 005CFCD3    mov        ebx,eax
 005CFCD5    xor        eax,eax
 005CFCD7    push       ebp
 005CFCD8    push       5D00EE
 005CFCDD    push       dword ptr fs:[eax]
 005CFCE0    mov        dword ptr fs:[eax],esp
 005CFCE3    mov        eax,ebx
 005CFCE5    mov        edx,dword ptr [eax]
 005CFCE7    call       dword ptr [edx+0B8]; TRaveEANBarCode.sub_005AAA88
 005CFCED    test       al,al
>005CFCEF    je         005D00D8
 005CFCF5    cmp        dword ptr [ebx+0FC],0; TRaveEANBarCode.?fFC:TRaveFieldName
>005CFCFC    je         005CFD22
 005CFCFE    lea        eax,[ebp-2C]
 005CFD01    push       eax
 005CFD02    mov        ecx,dword ptr [ebx+0FC]; TRaveEANBarCode.?fFC:TRaveFieldName
 005CFD08    mov        edx,dword ptr [ebx+100]; TRaveEANBarCode.DataView:TRaveBaseDataView
 005CFD0E    mov        eax,ebx
 005CFD10    call       005A02E4
 005CFD15    mov        edx,dword ptr [ebp-2C]
 005CFD18    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFD1E    mov        ecx,dword ptr [eax]
 005CFD20    call       dword ptr [ecx]
 005CFD22    mov        edx,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFD28    mov        eax,esi
 005CFD2A    mov        dword ptr [edx+30],eax
 005CFD2D    mov        edx,dword ptr [ebx+0F0]; TRaveEANBarCode.Font:TRaveFont
 005CFD33    call       00586F2C
 005CFD38    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFD3E    xor        edx,edx
 005CFD40    mov        dword ptr [eax+60],edx
 005CFD43    mov        dword ptr [eax+64],edx
 005CFD46    mov        edx,dword ptr [eax+28]
 005CFD49    mov        dword ptr [ebp-10],edx
 005CFD4C    mov        edx,dword ptr [eax+2C]
 005CFD4F    mov        dword ptr [ebp-0C],edx
 005CFD52    call       005C93D0
 005CFD57    fstp       qword ptr [ebp-8]
 005CFD5A    wait
 005CFD5B    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFD61    mov        al,byte ptr [eax+5C]
 005CFD64    mov        byte ptr [ebp-11],al
 005CFD67    mov        eax,ebx
 005CFD69    call       TRaveBaseBarCode.GetBarCodeRotation
 005CFD6E    sub        al,1
>005CFD70    jb         005CFD89
>005CFD72    je         005CFDF0
 005CFD74    dec        al
>005CFD76    je         005CFECE
 005CFD7C    dec        al
>005CFD7E    je         005CFF90
>005CFD84    jmp        005D009F
 005CFD89    mov        eax,ebx
 005CFD8B    mov        edx,dword ptr [eax]
 005CFD8D    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CFD90    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFD96    fld        qword ptr [eax+28]
 005CFD99    fsub       qword ptr [ebx+88]; TRaveEANBarCode.?f88:?Double
 005CFD9F    faddp      st(1),st
 005CFDA1    fstp       qword ptr [ebp-20]
 005CFDA4    wait
 005CFDA5    mov        eax,ebx
 005CFDA7    mov        edx,dword ptr [eax]
 005CFDA9    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CFDAC    fstp       qword ptr [ebp-34]
 005CFDAF    wait
 005CFDB0    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFDB6    call       005C93D0
 005CFDBB    fsub       qword ptr [ebx+80]; TRaveEANBarCode.?f80:?Double
 005CFDC1    fadd       qword ptr [ebp-34]
 005CFDC4    fstp       qword ptr [ebp-28]
 005CFDC7    wait
 005CFDC8    push       dword ptr [ebp-24]
 005CFDCB    push       dword ptr [ebp-28]
 005CFDCE    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFDD4    call       005C9470
 005CFDD9    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFDDF    mov        edx,dword ptr [ebp-20]
 005CFDE2    mov        dword ptr [eax+28],edx
 005CFDE5    mov        edx,dword ptr [ebp-1C]
 005CFDE8    mov        dword ptr [eax+2C],edx
>005CFDEB    jmp        005D009F
 005CFDF0    mov        eax,ebx
 005CFDF2    mov        edx,dword ptr [eax]
 005CFDF4    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CFDF7    fstp       qword ptr [ebp-20]
 005CFDFA    wait
 005CFDFB    mov        eax,ebx
 005CFDFD    call       TRaveBaseBarCode.GetBarCodeJustify
 005CFE02    sub        al,1
>005CFE04    jb         005CFE35
>005CFE06    je         005CFE14
 005CFE08    dec        al
>005CFE0A    je         005CFE6F
 005CFE0C    dec        al
>005CFE0E    jne        005CFEA1
 005CFE14    mov        eax,ebx
 005CFE16    mov        edx,dword ptr [eax]
 005CFE18    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005CFE1E    fadd       qword ptr [ebp-20]
 005CFE21    add        esp,0FFFFFFF8
 005CFE24    fstp       qword ptr [esp]
 005CFE27    wait
 005CFE28    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFE2E    call       005C9470
>005CFE33    jmp        005CFEA1
 005CFE35    mov        eax,ebx
 005CFE37    mov        edx,dword ptr [eax]
 005CFE39    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005CFE3F    fadd       qword ptr [ebp-20]
 005CFE42    fstp       tbyte ptr [ebp-40]
 005CFE45    wait
 005CFE46    mov        eax,ebx
 005CFE48    mov        edx,dword ptr [eax]
 005CFE4A    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CFE50    fdiv       dword ptr ds:[5D00FC]; 2:Single
 005CFE56    fld        tbyte ptr [ebp-40]
 005CFE59    fsubrp     st(1),st
 005CFE5B    add        esp,0FFFFFFF8
 005CFE5E    fstp       qword ptr [esp]
 005CFE61    wait
 005CFE62    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFE68    call       005C95EC
>005CFE6D    jmp        005CFEA1
 005CFE6F    mov        eax,ebx
 005CFE71    mov        edx,dword ptr [eax]
 005CFE73    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005CFE79    fadd       qword ptr [ebp-20]
 005CFE7C    fstp       tbyte ptr [ebp-40]
 005CFE7F    wait
 005CFE80    mov        eax,ebx
 005CFE82    mov        edx,dword ptr [eax]
 005CFE84    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CFE8A    fld        tbyte ptr [ebp-40]
 005CFE8D    fsubrp     st(1),st
 005CFE8F    add        esp,0FFFFFFF8
 005CFE92    fstp       qword ptr [esp]
 005CFE95    wait
 005CFE96    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFE9C    call       005C9528
 005CFEA1    mov        eax,ebx
 005CFEA3    mov        edx,dword ptr [eax]
 005CFEA5    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CFEA8    mov        esi,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFEAE    fld        qword ptr [esi+28]
 005CFEB1    fsub       qword ptr [ebx+88]; TRaveEANBarCode.?f88:?Double
 005CFEB7    faddp      st(1),st
 005CFEB9    fstp       qword ptr [ebp-28]
 005CFEBC    wait
 005CFEBD    mov        eax,dword ptr [ebp-28]
 005CFEC0    mov        dword ptr [esi+28],eax
 005CFEC3    mov        eax,dword ptr [ebp-24]
 005CFEC6    mov        dword ptr [esi+2C],eax
>005CFEC9    jmp        005D009F
 005CFECE    mov        eax,ebx
 005CFED0    call       TRaveBaseBarCode.GetBarCodeJustify
 005CFED5    sub        al,1
>005CFED7    jb         005CFF0F
>005CFED9    je         005CFEE3
 005CFEDB    dec        al
>005CFEDD    je         005CFF43
 005CFEDF    dec        al
>005CFEE1    jne        005CFF5C
 005CFEE3    mov        eax,ebx
 005CFEE5    mov        edx,dword ptr [eax]
 005CFEE7    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CFEEA    fstp       qword ptr [ebp-34]
 005CFEED    wait
 005CFEEE    mov        eax,ebx
 005CFEF0    mov        edx,dword ptr [eax]
 005CFEF2    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CFEF8    fadd       qword ptr [ebp-34]
 005CFEFB    add        esp,0FFFFFFF8
 005CFEFE    fstp       qword ptr [esp]
 005CFF01    wait
 005CFF02    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFF08    call       005C9470
>005CFF0D    jmp        005CFF5C
 005CFF0F    mov        eax,ebx
 005CFF11    mov        edx,dword ptr [eax]
 005CFF13    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CFF19    fdiv       dword ptr ds:[5D00FC]; 2:Single
 005CFF1F    fstp       tbyte ptr [ebp-40]
 005CFF22    wait
 005CFF23    mov        eax,ebx
 005CFF25    mov        edx,dword ptr [eax]
 005CFF27    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CFF2A    fld        tbyte ptr [ebp-40]
 005CFF2D    faddp      st(1),st
 005CFF2F    add        esp,0FFFFFFF8
 005CFF32    fstp       qword ptr [esp]
 005CFF35    wait
 005CFF36    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFF3C    call       005C95EC
>005CFF41    jmp        005CFF5C
 005CFF43    mov        eax,ebx
 005CFF45    mov        edx,dword ptr [eax]
 005CFF47    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005CFF4A    add        esp,0FFFFFFF8
 005CFF4D    fstp       qword ptr [esp]
 005CFF50    wait
 005CFF51    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFF57    call       005C9528
 005CFF5C    mov        eax,ebx
 005CFF5E    mov        edx,dword ptr [eax]
 005CFF60    call       dword ptr [edx+68]; TRaveEANBarCode.sub_005A9770
 005CFF63    fstp       qword ptr [ebp-34]
 005CFF66    wait
 005CFF67    mov        eax,dword ptr [ebx+0F0]; TRaveEANBarCode.Font:TRaveFont
 005CFF6D    call       TFont.GetSize
 005CFF72    mov        dword ptr [ebp-44],eax
 005CFF75    fild       dword ptr [ebp-44]
 005CFF78    fdiv       dword ptr ds:[5D0100]; 60:Single
 005CFF7E    fadd       qword ptr [ebp-34]
 005CFF81    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFF87    fstp       qword ptr [eax+28]
 005CFF8A    wait
>005CFF8B    jmp        005D009F
 005CFF90    mov        eax,ebx
 005CFF92    call       TRaveBaseBarCode.GetBarCodeJustify
 005CFF97    sub        al,1
>005CFF99    jb         005CFFC0
>005CFF9B    je         005CFFA5
 005CFF9D    dec        al
>005CFF9F    je         005CFFF4
 005CFFA1    dec        al
>005CFFA3    jne        005D001E
 005CFFA5    mov        eax,ebx
 005CFFA7    mov        edx,dword ptr [eax]
 005CFFA9    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CFFAC    add        esp,0FFFFFFF8
 005CFFAF    fstp       qword ptr [esp]
 005CFFB2    wait
 005CFFB3    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFFB9    call       005C9470
>005CFFBE    jmp        005D001E
 005CFFC0    mov        eax,ebx
 005CFFC2    mov        edx,dword ptr [eax]
 005CFFC4    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005CFFCA    fdiv       dword ptr ds:[5D00FC]; 2:Single
 005CFFD0    fstp       tbyte ptr [ebp-40]
 005CFFD3    wait
 005CFFD4    mov        eax,ebx
 005CFFD6    mov        edx,dword ptr [eax]
 005CFFD8    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CFFDB    fld        tbyte ptr [ebp-40]
 005CFFDE    faddp      st(1),st
 005CFFE0    add        esp,0FFFFFFF8
 005CFFE3    fstp       qword ptr [esp]
 005CFFE6    wait
 005CFFE7    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005CFFED    call       005C95EC
>005CFFF2    jmp        005D001E
 005CFFF4    mov        eax,ebx
 005CFFF6    mov        edx,dword ptr [eax]
 005CFFF8    call       dword ptr [edx+60]; TRaveEANBarCode.sub_005A970C
 005CFFFB    fstp       qword ptr [ebp-34]
 005CFFFE    wait
 005CFFFF    mov        eax,ebx
 005D0001    mov        edx,dword ptr [eax]
 005D0003    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005D0009    fadd       qword ptr [ebp-34]
 005D000C    add        esp,0FFFFFFF8
 005D000F    fstp       qword ptr [esp]
 005D0012    wait
 005D0013    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005D0019    call       005C9528
 005D001E    mov        eax,ebx
 005D0020    call       TRaveBaseBarCode.GetPrintTop
 005D0025    test       al,al
>005D0027    je         005D0065
 005D0029    mov        eax,ebx
 005D002B    mov        edx,dword ptr [eax]
 005D002D    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005D0030    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005D0036    fadd       qword ptr [eax+18]
 005D0039    fstp       tbyte ptr [ebp-40]
 005D003C    wait
 005D003D    mov        eax,dword ptr [ebx+0F0]; TRaveEANBarCode.Font:TRaveFont
 005D0043    call       TFont.GetSize
 005D0048    mov        dword ptr [ebp-44],eax
 005D004B    fild       dword ptr [ebp-44]
 005D004E    fdiv       dword ptr ds:[5D0100]; 60:Single
 005D0054    fld        tbyte ptr [ebp-40]
 005D0057    faddp      st(1),st
 005D0059    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005D005F    fstp       qword ptr [eax+28]
 005D0062    wait
>005D0063    jmp        005D009F
 005D0065    mov        eax,ebx
 005D0067    mov        edx,dword ptr [eax]
 005D0069    call       dword ptr [edx+5C]; TRaveEANBarCode.sub_005A96D4
 005D006C    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005D0072    fadd       qword ptr [eax+18]
 005D0075    fstp       tbyte ptr [ebp-40]
 005D0078    wait
 005D0079    mov        eax,dword ptr [ebx+0F0]; TRaveEANBarCode.Font:TRaveFont
 005D007F    call       TFont.GetSize
 005D0084    mov        dword ptr [ebp-44],eax
 005D0087    fild       dword ptr [ebp-44]
 005D008A    fdiv       dword ptr ds:[5D0100]; 60:Single
 005D0090    fld        tbyte ptr [ebp-40]
 005D0093    faddp      st(1),st
 005D0095    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005D009B    fstp       qword ptr [eax+28]
 005D009E    wait
 005D009F    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005D00A5    mov        edx,dword ptr [eax]
 005D00A7    call       dword ptr [edx+28]
 005D00AA    push       dword ptr [ebp-4]
 005D00AD    push       dword ptr [ebp-8]
 005D00B0    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005D00B6    call       005C9470
 005D00BB    mov        eax,dword ptr [ebx+0EC]; TRaveEANBarCode.?fEC:dword
 005D00C1    mov        edx,dword ptr [ebp-10]
 005D00C4    mov        dword ptr [eax+28],edx
 005D00C7    mov        edx,dword ptr [ebp-0C]
 005D00CA    mov        dword ptr [eax+2C],edx
 005D00CD    mov        dl,byte ptr [ebp-11]
 005D00D0    mov        byte ptr [eax+5C],dl
 005D00D3    xor        edx,edx
 005D00D5    mov        dword ptr [eax+30],edx
 005D00D8    xor        eax,eax
 005D00DA    pop        edx
 005D00DB    pop        ecx
 005D00DC    pop        ecx
 005D00DD    mov        dword ptr fs:[eax],edx
 005D00E0    push       5D00F5
 005D00E5    lea        eax,[ebp-2C]
 005D00E8    call       @LStrClr
 005D00ED    ret
<005D00EE    jmp        @HandleFinally
<005D00F3    jmp        005D00E5
 005D00F5    pop        esi
 005D00F6    pop        ebx
 005D00F7    mov        esp,ebp
 005D00F9    pop        ebp
 005D00FA    ret
*}
//end;

//005D0104
//procedure TRaveBaseBarCode.SetDataField(Self:TRaveBaseBarCode; ?:?);
//begin
{*
 005D0104    push       ebp
 005D0105    mov        ebp,esp
 005D0107    push       ecx
 005D0108    push       ebx
 005D0109    mov        dword ptr [ebp-4],edx
 005D010C    mov        ebx,eax
 005D010E    mov        eax,dword ptr [ebp-4]
 005D0111    call       @LStrAddRef
 005D0116    xor        eax,eax
 005D0118    push       ebp
 005D0119    push       5D014F
 005D011E    push       dword ptr fs:[eax]
 005D0121    mov        dword ptr fs:[eax],esp
 005D0124    lea        eax,[ebx+0FC]; TRaveBaseBarCode.?fFC:TRaveFieldName
 005D012A    mov        edx,dword ptr [ebp-4]
 005D012D    call       @LStrAsg
 005D0132    mov        eax,ebx
 005D0134    call       005A8540
 005D0139    xor        eax,eax
 005D013B    pop        edx
 005D013C    pop        ecx
 005D013D    pop        ecx
 005D013E    mov        dword ptr fs:[eax],edx
 005D0141    push       5D0156
 005D0146    lea        eax,[ebp-4]
 005D0149    call       @LStrClr
 005D014E    ret
<005D014F    jmp        @HandleFinally
<005D0154    jmp        005D0146
 005D0156    pop        ebx
 005D0157    pop        ecx
 005D0158    pop        ebp
 005D0159    ret
*}
//end;

//005D015C
procedure sub_005D015C;
begin
{*
 005D015C    push       ebp
 005D015D    mov        ebp,esp
 005D015F    push       0
 005D0161    push       ebx
 005D0162    mov        ebx,eax
 005D0164    xor        eax,eax
 005D0166    push       ebp
 005D0167    push       5D01AA
 005D016C    push       dword ptr fs:[eax]
 005D016F    mov        dword ptr fs:[eax],esp
 005D0172    lea        edx,[ebp-4]
 005D0175    mov        eax,ebx
 005D0177    mov        ecx,dword ptr [eax]
 005D0179    call       dword ptr [ecx+0E8]; TRavePostNetBarCode.GetText
 005D017F    mov        edx,dword ptr [ebp-4]
 005D0182    lea        eax,[ebx+0E8]; TRaveEANBarCode.?fE8:String
 005D0188    call       @LStrAsg
 005D018D    mov        eax,ebx
 005D018F    call       005A8800
 005D0194    xor        eax,eax
 005D0196    pop        edx
 005D0197    pop        ecx
 005D0198    pop        ecx
 005D0199    mov        dword ptr fs:[eax],edx
 005D019C    push       5D01B1
 005D01A1    lea        eax,[ebp-4]
 005D01A4    call       @LStrClr
 005D01A9    ret
<005D01AA    jmp        @HandleFinally
<005D01AF    jmp        005D01A1
 005D01B1    pop        ebx
 005D01B2    pop        ecx
 005D01B3    pop        ebp
 005D01B4    ret
*}
end;

//005D01B8
procedure sub_005D01B8;
begin
{*
 005D01B8    push       ebx
 005D01B9    mov        ebx,eax
 005D01BB    mov        edx,dword ptr [ebx+0E8]; TRaveEANBarCode.?fE8:String
 005D01C1    mov        eax,ebx
 005D01C3    mov        ecx,dword ptr [eax]
 005D01C5    call       dword ptr [ecx+0E4]; TRavePostNetBarCode.SetText
 005D01CB    mov        eax,ebx
 005D01CD    call       005A8838
 005D01D2    pop        ebx
 005D01D3    ret
*}
end;

//005D01D4
//procedure sub_005D01D4(?:?; ?:?);
//begin
{*
 005D01D4    push       ebx
 005D01D5    push       esi
 005D01D6    push       edi
 005D01D7    mov        edi,ecx
 005D01D9    mov        esi,edx
 005D01DB    mov        ebx,eax
 005D01DD    mov        ecx,edi
 005D01DF    mov        edx,esi
 005D01E1    mov        eax,ebx
 005D01E3    call       005A8E1C
 005D01E8    mov        eax,dword ptr [ebx+100]; TRaveEANBarCode.DataView:TRaveBaseDataView
 005D01EE    test       eax,eax
>005D01F0    je         005D0209
 005D01F2    cmp        esi,eax
>005D01F4    jne        005D0209
 005D01F6    mov        eax,edi
 005D01F8    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005D01FE    call       @AsClass
 005D0203    mov        dword ptr [ebx+100],eax; TRaveEANBarCode.DataView:TRaveBaseDataView
 005D0209    pop        edi
 005D020A    pop        esi
 005D020B    pop        ebx
 005D020C    ret
*}
//end;

//005D0210
function TRaveBaseBarCode.IsStoredLeft(Self:TRaveBaseBarCode):Boolean;
begin
{*
 005D0210    push       ebx
 005D0211    mov        ebx,eax
 005D0213    mov        eax,ebx
 005D0215    call       TRaveBaseBarCode.GetBarCodeJustify
 005D021A    cmp        al,1
 005D021C    sete       al
 005D021F    pop        ebx
 005D0220    ret
*}
end;

//005D0224
function TRaveBaseBarCode.IsStoredCenter(Self:TRaveBaseBarCode):Boolean;
begin
{*
 005D0224    push       ebx
 005D0225    mov        ebx,eax
 005D0227    mov        eax,ebx
 005D0229    call       TRaveBaseBarCode.GetBarCodeJustify
 005D022E    test       al,al
 005D0230    sete       al
 005D0233    pop        ebx
 005D0234    ret
*}
end;

//005D0238
function TRaveBaseBarCode.IsStoredRight(Self:TRaveBaseBarCode):Boolean;
begin
{*
 005D0238    push       ebx
 005D0239    mov        ebx,eax
 005D023B    mov        eax,ebx
 005D023D    call       TRaveBaseBarCode.GetBarCodeJustify
 005D0242    cmp        al,2
 005D0244    sete       al
 005D0247    pop        ebx
 005D0248    ret
*}
end;

//005D024C
constructor TRavePostNetBarCode.Create(AOwner:TComponent);
begin
{*
 005D024C    push       ebx
 005D024D    push       esi
 005D024E    test       dl,dl
>005D0250    je         005D025A
 005D0252    add        esp,0FFFFFFF0
 005D0255    call       @ClassCreate
 005D025A    mov        ebx,edx
 005D025C    mov        esi,eax
 005D025E    xor        edx,edx
 005D0260    mov        eax,esi
 005D0262    call       TRaveBaseBarCode.Create
 005D0267    xor        edx,edx
 005D0269    mov        eax,esi
 005D026B    call       TRaveBaseBarCode.SetPrintReadable
 005D0270    mov        dl,1
 005D0272    mov        eax,esi
 005D0274    call       TRaveBaseBarCode.SetAutoSize
 005D0279    push       3FC00000
 005D027E    push       0
 005D0280    mov        eax,esi
 005D0282    mov        edx,dword ptr [eax]
 005D0284    call       dword ptr [edx+148]; TRavePostNetBarCode.SetHeight
 005D028A    push       3FE00000
 005D028F    push       0
 005D0291    mov        eax,esi
 005D0293    mov        edx,dword ptr [eax]
 005D0295    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
 005D029B    mov        eax,esi
 005D029D    test       bl,bl
>005D029F    je         005D02B0
 005D02A1    call       @AfterConstruction
 005D02A6    pop        dword ptr fs:[0]
 005D02AD    add        esp,0C
 005D02B0    mov        eax,esi
 005D02B2    pop        esi
 005D02B3    pop        ebx
 005D02B4    ret
*}
end;

//005D02B8
procedure TRavePostNetBarCode.SetHeight;
begin
{*
 005D02B8    push       ebp
 005D02B9    mov        ebp,esp
 005D02BB    push       3FC00000
 005D02C0    push       0
 005D02C2    call       TRaveBaseBarCode.SetHeight
 005D02C7    pop        ebp
 005D02C8    ret        8
*}
end;

//005D02CC
procedure sub_005D02CC();
begin
{*
 005D02CC    xor        ecx,ecx
 005D02CE    mov        dl,1
 005D02D0    mov        eax,[005C8F7C]; TRPBarsPostNet
 005D02D5    call       TRPBarsPostNet.Create; TRPBarsPostNet.Create
 005D02DA    ret
*}
end;

//005D02DC
constructor TRaveI2of5BarCode.Create(AOwner:TComponent);
begin
{*
 005D02DC    push       ebx
 005D02DD    push       esi
 005D02DE    test       dl,dl
>005D02E0    je         005D02EA
 005D02E2    add        esp,0FFFFFFF0
 005D02E5    call       @ClassCreate
 005D02EA    mov        ebx,edx
 005D02EC    mov        esi,eax
 005D02EE    xor        edx,edx
 005D02F0    mov        eax,esi
 005D02F2    call       TRaveBaseBarCode.Create
 005D02F7    mov        dl,1
 005D02F9    mov        eax,esi
 005D02FB    call       TRaveBaseBarCode.SetAutoSize
 005D0300    push       3FD00000
 005D0305    push       0
 005D0307    mov        eax,esi
 005D0309    mov        edx,dword ptr [eax]
 005D030B    call       dword ptr [edx+148]; TRaveBaseBarCode.SetHeight
 005D0311    push       3FE00000
 005D0316    push       0
 005D0318    mov        eax,esi
 005D031A    mov        edx,dword ptr [eax]
 005D031C    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
 005D0322    mov        eax,esi
 005D0324    test       bl,bl
>005D0326    je         005D0337
 005D0328    call       @AfterConstruction
 005D032D    pop        dword ptr fs:[0]
 005D0334    add        esp,0C
 005D0337    mov        eax,esi
 005D0339    pop        esi
 005D033A    pop        ebx
 005D033B    ret
*}
end;

//005D033C
procedure sub_005D033C();
begin
{*
 005D033C    xor        ecx,ecx
 005D033E    mov        dl,1
 005D0340    mov        eax,[005C9008]; TRPBars2of5
 005D0345    call       TRPBars2of5.Create; TRPBars2of5.Create
 005D034A    ret
*}
end;

//005D034C
constructor TRaveCode39BarCode.Create(AOwner:TComponent);
begin
{*
 005D034C    push       ebx
 005D034D    push       esi
 005D034E    test       dl,dl
>005D0350    je         005D035A
 005D0352    add        esp,0FFFFFFF0
 005D0355    call       @ClassCreate
 005D035A    mov        ebx,edx
 005D035C    mov        esi,eax
 005D035E    xor        edx,edx
 005D0360    mov        eax,esi
 005D0362    call       TRaveBaseBarCode.Create
 005D0367    mov        dl,1
 005D0369    mov        eax,esi
 005D036B    call       TRaveBaseBarCode.SetAutoSize
 005D0370    push       3FD00000
 005D0375    push       0
 005D0377    mov        eax,esi
 005D0379    mov        edx,dword ptr [eax]
 005D037B    call       dword ptr [edx+148]; TRaveBaseBarCode.SetHeight
 005D0381    push       3FE00000
 005D0386    push       0
 005D0388    mov        eax,esi
 005D038A    mov        edx,dword ptr [eax]
 005D038C    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
 005D0392    mov        eax,esi
 005D0394    test       bl,bl
>005D0396    je         005D03A7
 005D0398    call       @AfterConstruction
 005D039D    pop        dword ptr fs:[0]
 005D03A4    add        esp,0C
 005D03A7    mov        eax,esi
 005D03A9    pop        esi
 005D03AA    pop        ebx
 005D03AB    ret
*}
end;

//005D03AC
procedure sub_005D03AC();
begin
{*
 005D03AC    xor        ecx,ecx
 005D03AE    mov        dl,1
 005D03B0    mov        eax,[005C9090]; TRPBarsCode39
 005D03B5    call       TRPBarsCode39.Create; TRPBarsCode39.Create
 005D03BA    ret
*}
end;

//005D03BC
//procedure TRaveCode39BarCode.SetExtended(Self:TRaveCode39BarCode; ?:?);
//begin
{*
 005D03BC    mov        eax,dword ptr [eax+0EC]; TRaveCode39BarCode.?fEC:dword
 005D03C2    mov        byte ptr [eax+78],dl
 005D03C5    ret
*}
//end;

//005D03C8
//function TRaveCode39BarCode.GetExtended(Self:TRaveCode39BarCode):?;
//begin
{*
 005D03C8    mov        eax,dword ptr [eax+0EC]; TRaveCode39BarCode.?fEC:dword
 005D03CE    mov        al,byte ptr [eax+78]
 005D03D1    ret
*}
//end;

//005D03D4
constructor TRaveCode128BarCode.Create(AOwner:TComponent);
begin
{*
 005D03D4    push       ebx
 005D03D5    push       esi
 005D03D6    test       dl,dl
>005D03D8    je         005D03E2
 005D03DA    add        esp,0FFFFFFF0
 005D03DD    call       @ClassCreate
 005D03E2    mov        ebx,edx
 005D03E4    mov        esi,eax
 005D03E6    xor        edx,edx
 005D03E8    mov        eax,esi
 005D03EA    call       TRaveBaseBarCode.Create
 005D03EF    mov        dl,1
 005D03F1    mov        eax,esi
 005D03F3    call       TRaveBaseBarCode.SetAutoSize
 005D03F8    push       3FD00000
 005D03FD    push       0
 005D03FF    mov        eax,esi
 005D0401    mov        edx,dword ptr [eax]
 005D0403    call       dword ptr [edx+148]; TRaveBaseBarCode.SetHeight
 005D0409    push       3FE00000
 005D040E    push       0
 005D0410    mov        eax,esi
 005D0412    mov        edx,dword ptr [eax]
 005D0414    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
 005D041A    mov        eax,esi
 005D041C    test       bl,bl
>005D041E    je         005D042F
 005D0420    call       @AfterConstruction
 005D0425    pop        dword ptr fs:[0]
 005D042C    add        esp,0C
 005D042F    mov        eax,esi
 005D0431    pop        esi
 005D0432    pop        ebx
 005D0433    ret
*}
end;

//005D0434
procedure sub_005D0434();
begin
{*
 005D0434    xor        ecx,ecx
 005D0436    mov        dl,1
 005D0438    mov        eax,[005C911C]; TRPBarsCode128
 005D043D    call       TRPBarsCode128.Create; TRPBarsCode128.Create
 005D0442    ret
*}
end;

//005D0444
//procedure TRaveCode128BarCode.SetCodePage(Self:TRaveCode128BarCode; ?:?);
//begin
{*
 005D0444    mov        eax,dword ptr [eax+0EC]; TRaveCode128BarCode.?fEC:dword
 005D044A    mov        byte ptr [eax+78],dl
 005D044D    ret
*}
//end;

//005D0450
//function TRaveCode128BarCode.GetCodePage(Self:TRaveCode128BarCode):?;
//begin
{*
 005D0450    mov        eax,dword ptr [eax+0EC]; TRaveCode128BarCode.?fEC:dword
 005D0456    mov        al,byte ptr [eax+78]
 005D0459    ret
*}
//end;

//005D045C
//procedure TRaveCode128BarCode.SetOptimize(Self:TRaveCode128BarCode; ?:?);
//begin
{*
 005D045C    mov        eax,dword ptr [eax+0EC]; TRaveCode128BarCode.?fEC:dword
 005D0462    mov        byte ptr [eax+7B],dl
 005D0465    ret
*}
//end;

//005D0468
//function TRaveCode128BarCode.GetOptimize(Self:TRaveCode128BarCode):?;
//begin
{*
 005D0468    mov        eax,dword ptr [eax+0EC]; TRaveCode128BarCode.?fEC:dword
 005D046E    mov        al,byte ptr [eax+7B]
 005D0471    ret
*}
//end;

//005D0474
constructor TRaveUPCBarCode.Create(AOwner:TComponent);
begin
{*
 005D0474    push       ebx
 005D0475    push       esi
 005D0476    test       dl,dl
>005D0478    je         005D0482
 005D047A    add        esp,0FFFFFFF0
 005D047D    call       @ClassCreate
 005D0482    mov        ebx,edx
 005D0484    mov        esi,eax
 005D0486    xor        edx,edx
 005D0488    mov        eax,esi
 005D048A    call       TRaveBaseBarCode.Create
 005D048F    mov        dl,1
 005D0491    mov        eax,esi
 005D0493    call       TRaveBaseBarCode.SetAutoSize
 005D0498    push       3FE00000
 005D049D    push       0
 005D049F    mov        eax,esi
 005D04A1    mov        edx,dword ptr [eax]
 005D04A3    call       dword ptr [edx+148]; TRaveBaseBarCode.SetHeight
 005D04A9    push       3FE00000
 005D04AE    push       0
 005D04B0    mov        eax,esi
 005D04B2    mov        edx,dword ptr [eax]
 005D04B4    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
 005D04BA    mov        eax,dword ptr [esi+0F0]; TRaveUPCBarCode.Font:TRaveFont
 005D04C0    mov        edx,0B
 005D04C5    call       TFont.SetSize
 005D04CA    mov        eax,esi
 005D04CC    test       bl,bl
>005D04CE    je         005D04DF
 005D04D0    call       @AfterConstruction
 005D04D5    pop        dword ptr fs:[0]
 005D04DC    add        esp,0C
 005D04DF    mov        eax,esi
 005D04E1    pop        esi
 005D04E2    pop        ebx
 005D04E3    ret
*}
end;

//005D04E4
procedure sub_005D04E4();
begin
{*
 005D04E4    xor        ecx,ecx
 005D04E6    mov        dl,1
 005D04E8    mov        eax,[005C91A8]; TRPBarsUPC
 005D04ED    call       TRPBarsUPC.Create; TRPBarsUPC.Create
 005D04F2    ret
*}
end;

//005D04F4
constructor TRaveEANBarCode.Create(AOwner:TComponent);
begin
{*
 005D04F4    push       ebx
 005D04F5    push       esi
 005D04F6    test       dl,dl
>005D04F8    je         005D0502
 005D04FA    add        esp,0FFFFFFF0
 005D04FD    call       @ClassCreate
 005D0502    mov        ebx,edx
 005D0504    mov        esi,eax
 005D0506    xor        edx,edx
 005D0508    mov        eax,esi
 005D050A    call       TRaveBaseBarCode.Create
 005D050F    mov        dl,1
 005D0511    mov        eax,esi
 005D0513    call       TRaveBaseBarCode.SetAutoSize
 005D0518    push       3FE00000
 005D051D    push       0
 005D051F    mov        eax,esi
 005D0521    mov        edx,dword ptr [eax]
 005D0523    call       dword ptr [edx+148]; TRaveBaseBarCode.SetHeight
 005D0529    push       3FE00000
 005D052E    push       0
 005D0530    mov        eax,esi
 005D0532    mov        edx,dword ptr [eax]
 005D0534    call       dword ptr [edx+140]; TRaveBaseBarCode.SetWidth
 005D053A    mov        eax,dword ptr [esi+0F0]; TRaveEANBarCode.Font:TRaveFont
 005D0540    mov        edx,0B
 005D0545    call       TFont.SetSize
 005D054A    mov        eax,esi
 005D054C    test       bl,bl
>005D054E    je         005D055F
 005D0550    call       @AfterConstruction
 005D0555    pop        dword ptr fs:[0]
 005D055C    add        esp,0C
 005D055F    mov        eax,esi
 005D0561    pop        esi
 005D0562    pop        ebx
 005D0563    ret
*}
end;

//005D0564
procedure sub_005D0564();
begin
{*
 005D0564    xor        ecx,ecx
 005D0566    mov        dl,1
 005D0568    mov        eax,[005C9234]; TRPBarsEAN
 005D056D    call       TRPBarsEAN.Create; TRPBarsEAN.Create
 005D0572    ret
*}
end;

Initialization
//005D05A4
{*
 005D05A4    sub        dword ptr ds:[61F8D8],1
>005D05AB    jae        005D05BC
 005D05AD    mov        edx,5CEA20; sub_005CEA20
 005D05B2    mov        eax,5D05C8; 'RVCL'
 005D05B7    call       005A7E10
 005D05BC    ret
*}
Finalization
end.