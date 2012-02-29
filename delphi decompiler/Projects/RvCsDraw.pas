{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvCsDraw;

interface

uses
  Classes, Windows, Graphics, RvClass, RvDefine;

type
  TRaveGraphicBase = class(TRaveControl)
  public
    fE8:?Double;//fE8
    fEC:dword;//fEC
    fF0:byte;//fF0
    fF4:TPen;//fF4
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure SetColor; virtual;
    procedure GetColor; virtual;
    //procedure SetLineWidth(?:?; ?:?); virtual;
    procedure GetLineWidth; virtual;
    //procedure SetLineWidthType(?:?); virtual;
    //function GetLineWidthType:?; virtual;
    procedure SetLineStyle; virtual;
    procedure GetLineStyle; virtual;
  end;
  TRaveLine = class(TRaveGraphicBase)
  public
    NESW:Boolean;//fF8
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005BA49C(?:?); virtual;
    procedure sub_005BA0C8; virtual;
    procedure sub_005BA180; virtual;
    //procedure sub_005BA230(?:?; ?:?; ?:?); virtual;
    //procedure sub_005B9BB8(?:?); virtual;
    //procedure sub_005B9E48(?:?); virtual;
    //procedure sub_005BA39C(?:?); virtual;
    //procedure sub_005BA570(?:?; ?:?); virtual;
  end;
  TRaveHLine = class(TRaveLine)
  public
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005BA72C(?:?; ?:?); virtual;
    //procedure sub_005BA69C(?:?); virtual;
    //procedure sub_005BA7F4(?:?; ?:?); virtual;
    //procedure sub_005BA804(?:?; ?:?); virtual;
  end;
  TRaveVLine = class(TRaveLine)
  public
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005BA8F4(?:?; ?:?); virtual;
    //procedure sub_005BA868(?:?); virtual;
    //procedure sub_005BA9BC(?:?; ?:?); virtual;
    //procedure sub_005BA9C8(?:?; ?:?); virtual;
  end;
  TRaveSurface = class(TRaveGraphicBase)
  public
    fF8:TBrush;//fF8
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure SetFillColor; virtual;
    procedure GetFillColor; virtual;
    procedure SetFillStyle; virtual;
    procedure GetFillStyle; virtual;
  end;
  TRaveRectangle = class(TRaveSurface)
  public
    HRadius:TRaveUnits;//f100
    f104:dword;//f104
    VRadius:TRaveUnits;//f108
    f10C:dword;//f10C
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005BACD4(?:?); virtual;
    //procedure sub_005BAB1C(?:?); virtual;
  end;
  TRaveSquare = class(TRaveRectangle)
  public
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005BAE7C; virtual;
    procedure sub_005BAF50; virtual;
    //procedure sub_005BAE58(?:?; ?:?); virtual;
    //procedure sub_005BB01C(?:?; ?:?); virtual;
  end;
  TRaveEllipse = class(TRaveSurface)
  public
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005BB1D0(?:?); virtual;
    //procedure sub_005BB128(?:?); virtual;
  end;
  TRaveCircle = class(TRaveEllipse)
  public
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005BB2E0; virtual;
    procedure sub_005BB3B4; virtual;
    //procedure sub_005BB2BC(?:?; ?:?); virtual;
    //procedure sub_005BB480(?:?; ?:?); virtual;
  end;

implementation

{$R *.DFM}

//005B9724
procedure sub_005B9724;
begin
{*
 005B9724    push       ebp
 005B9725    mov        ebp,esp
 005B9727    add        esp,0FFFFFFE0
 005B972A    push       ebx
 005B972B    xor        eax,eax
 005B972D    mov        dword ptr [ebp-20],eax
 005B9730    xor        eax,eax
 005B9732    push       ebp
 005B9733    push       5B97B6
 005B9738    push       dword ptr fs:[eax]
 005B973B    mov        dword ptr fs:[eax],esp
 005B973E    mov        eax,[005B82A0]; TRaveLine
 005B9743    mov        dword ptr [ebp-1C],eax
 005B9746    mov        eax,[005B85E8]; TRaveHLine
 005B974B    mov        dword ptr [ebp-18],eax
 005B974E    mov        eax,[005B87E4]; TRaveVLine
 005B9753    mov        dword ptr [ebp-14],eax
 005B9756    mov        eax,[005B8BE0]; TRaveRectangle
 005B975B    mov        dword ptr [ebp-10],eax
 005B975E    mov        eax,[005B8FA8]; TRaveSquare
 005B9763    mov        dword ptr [ebp-0C],eax
 005B9766    mov        eax,[005B91A4]; TRaveEllipse
 005B976B    mov        dword ptr [ebp-8],eax
 005B976E    mov        eax,[005B9528]; TRaveCircle
 005B9773    mov        dword ptr [ebp-4],eax
 005B9776    lea        eax,[ebp-1C]
 005B9779    push       eax
 005B977A    push       6
 005B977C    mov        ebx,dword ptr ds:[61B830]
 005B9782    mov        ebx,dword ptr [ebx]
 005B9784    lea        edx,[ebp-20]
 005B9787    mov        eax,5B97CC; 'Drawing'
 005B978C    call       ebx
 005B978E    mov        edx,dword ptr [ebp-20]
 005B9791    mov        ecx,5B97DC; 'RvCsDraw'
 005B9796    mov        eax,5B97F0; 'Graphics'
 005B979B    call       005A7F78
 005B97A0    xor        eax,eax
 005B97A2    pop        edx
 005B97A3    pop        ecx
 005B97A4    pop        ecx
 005B97A5    mov        dword ptr fs:[eax],edx
 005B97A8    push       5B97BD
 005B97AD    lea        eax,[ebp-20]
 005B97B0    call       @LStrClr
 005B97B5    ret
<005B97B6    jmp        @HandleFinally
<005B97BB    jmp        005B97AD
 005B97BD    pop        ebx
 005B97BE    mov        esp,ebp
 005B97C0    pop        ebp
 005B97C1    ret
*}
end;

//005B97FC
constructor TRaveGraphicBase.Create(AOwner:TComponent);
begin
{*
 005B97FC    push       ebx
 005B97FD    push       esi
 005B97FE    test       dl,dl
>005B9800    je         005B980A
 005B9802    add        esp,0FFFFFFF0
 005B9805    call       @ClassCreate
 005B980A    mov        ebx,edx
 005B980C    mov        esi,eax
 005B980E    xor        edx,edx
 005B9810    mov        eax,esi
 005B9812    call       TRaveControl.Create
 005B9817    mov        dl,1
 005B9819    mov        eax,[00429C9C]; TPen
 005B981E    call       TPen.Create; TPen.Create
 005B9823    mov        dword ptr [esi+0F4],eax; TRaveGraphicBase.?fF4:TPen
 005B9829    xor        eax,eax
 005B982B    mov        dword ptr [esi+0E8],eax; TRaveGraphicBase.?fE8:?Double
 005B9831    mov        dword ptr [esi+0EC],3FF00000; TRaveGraphicBase.?fEC:dword
 005B983B    mov        byte ptr [esi+0F0],1; TRaveGraphicBase.?fF0:byte
 005B9842    mov        eax,esi
 005B9844    test       bl,bl
>005B9846    je         005B9857
 005B9848    call       @AfterConstruction
 005B984D    pop        dword ptr fs:[0]
 005B9854    add        esp,0C
 005B9857    mov        eax,esi
 005B9859    pop        esi
 005B985A    pop        ebx
 005B985B    ret
*}
end;

//005B985C
destructor TRaveGraphicBase.Destroy;
begin
{*
 005B985C    push       ebx
 005B985D    push       esi
 005B985E    call       @BeforeDestruction
 005B9863    mov        ebx,edx
 005B9865    mov        esi,eax
 005B9867    lea        eax,[esi+0F4]; TRaveGraphicBase.?fF4:TPen
 005B986D    call       FreeAndNil
 005B9872    mov        edx,ebx
 005B9874    and        dl,0FC
 005B9877    mov        eax,esi
 005B9879    call       TRaveControl.Destroy
 005B987E    test       bl,bl
>005B9880    jle        005B9889
 005B9882    mov        eax,esi
 005B9884    call       @ClassDestroy
 005B9889    pop        esi
 005B988A    pop        ebx
 005B988B    ret
*}
end;

//005B988C
procedure TRaveLine.SetColor;
begin
{*
 005B988C    push       ebx
 005B988D    mov        ebx,eax
 005B988F    mov        eax,dword ptr [ebx+0F4]; TRaveLine.?fF4:TPen
 005B9895    call       TPen.SetColor
 005B989A    mov        eax,ebx
 005B989C    call       005A8540
 005B98A1    pop        ebx
 005B98A2    ret
*}
end;

//005B98A4
procedure TRaveLine.GetColor;
begin
{*
 005B98A4    mov        eax,dword ptr [eax+0F4]; TRaveLine.?fF4:TPen
 005B98AA    call       TPen.GetColor
 005B98AF    ret
*}
end;

//005B98B0
//procedure TRaveLine.SetLineWidth(?:?; ?:?);
//begin
{*
 005B98B0    push       ebp
 005B98B1    mov        ebp,esp
 005B98B3    push       ebx
 005B98B4    mov        ebx,eax
 005B98B6    mov        eax,dword ptr [ebp+8]
 005B98B9    mov        dword ptr [ebx+0E8],eax; TRaveLine.?fE8:?Double
 005B98BF    mov        eax,dword ptr [ebp+0C]
 005B98C2    mov        dword ptr [ebx+0EC],eax; TRaveLine.?fEC:dword
 005B98C8    fld        qword ptr [ebx+0E8]; TRaveLine.?fE8:?Double
 005B98CE    fcomp      dword ptr ds:[5B990C]; 1:Single
 005B98D4    fnstsw     al
 005B98D6    sahf
>005B98D7    ja         005B98E2
 005B98D9    cmp        byte ptr [ebx+0F0],1; TRaveLine.?fF0:byte
>005B98E0    je         005B98FE
 005B98E2    mov        eax,dword ptr [ebx+0F4]; TRaveLine.?fF4:TPen
 005B98E8    call       TPen.GetStyle
 005B98ED    test       al,al
>005B98EF    je         005B98FE
 005B98F1    xor        edx,edx
 005B98F3    mov        eax,dword ptr [ebx+0F4]; TRaveLine.?fF4:TPen
 005B98F9    call       TPen.SetStyle
 005B98FE    mov        eax,ebx
 005B9900    call       005A8540
 005B9905    pop        ebx
 005B9906    pop        ebp
 005B9907    ret        8
*}
//end;

//005B9910
procedure TRaveLine.GetLineWidth;
begin
{*
 005B9910    add        esp,0FFFFFFF8
 005B9913    mov        edx,dword ptr [eax+0E8]; TRaveLine.?fE8:?Double
 005B9919    mov        dword ptr [esp],edx
 005B991C    mov        edx,dword ptr [eax+0EC]; TRaveLine.?fEC:dword
 005B9922    mov        dword ptr [esp+4],edx
 005B9926    fld        qword ptr [esp]
 005B9929    pop        ecx
 005B992A    pop        edx
 005B992B    ret
*}
end;

//005B992C
//procedure TRaveLine.SetLineWidthType(?:?);
//begin
{*
 005B992C    push       ebx
 005B992D    mov        ebx,eax
 005B992F    mov        byte ptr [ebx+0F0],dl; TRaveLine.?fF0:byte
 005B9935    fld        qword ptr [ebx+0E8]; TRaveLine.?fE8:?Double
 005B993B    fcomp      dword ptr ds:[5B9974]; 1:Single
 005B9941    fnstsw     al
 005B9943    sahf
>005B9944    ja         005B994F
 005B9946    cmp        byte ptr [ebx+0F0],1; TRaveLine.?fF0:byte
>005B994D    je         005B996B
 005B994F    mov        eax,dword ptr [ebx+0F4]; TRaveLine.?fF4:TPen
 005B9955    call       TPen.GetStyle
 005B995A    test       al,al
>005B995C    je         005B996B
 005B995E    xor        edx,edx
 005B9960    mov        eax,dword ptr [ebx+0F4]; TRaveLine.?fF4:TPen
 005B9966    call       TPen.SetStyle
 005B996B    mov        eax,ebx
 005B996D    call       005A8540
 005B9972    pop        ebx
 005B9973    ret
*}
//end;

//005B9978
//function TRaveLine.GetLineWidthType:?;
//begin
{*
 005B9978    mov        al,byte ptr [eax+0F0]; TRaveLine.?fF0:byte
 005B997E    ret
*}
//end;

//005B9980
procedure TRaveLine.SetLineStyle;
begin
{*
 005B9980    push       ebx
 005B9981    mov        ebx,eax
 005B9983    mov        eax,dword ptr [ebx+0F4]; TRaveLine.?fF4:TPen
 005B9989    call       TPen.SetStyle
 005B998E    mov        eax,ebx
 005B9990    call       005A8540
 005B9995    pop        ebx
 005B9996    ret
*}
end;

//005B9998
procedure TRaveLine.GetLineStyle;
begin
{*
 005B9998    mov        eax,dword ptr [eax+0F4]; TRaveLine.?fF4:TPen
 005B999E    call       TPen.GetStyle
 005B99A3    ret
*}
end;

//005B99A4
//procedure sub_005B99A4(?:TRaveGraphicBase; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005B99A4    push       ebp
 005B99A5    mov        ebp,esp
 005B99A7    push       ebx
 005B99A8    push       esi
 005B99A9    push       edi
 005B99AA    mov        edi,ecx
 005B99AC    mov        ebx,edx
 005B99AE    mov        esi,eax
 005B99B0    test       ebx,ebx
>005B99B2    je         005B9A93
 005B99B8    mov        edx,dword ptr [esi+0F4]; TRaveGraphicBase.?fF4:TPen
 005B99BE    mov        eax,ebx
 005B99C0    mov        ecx,dword ptr [eax]
 005B99C2    call       dword ptr [ecx+8]
 005B99C5    fld        qword ptr [esi+0E8]; TRaveGraphicBase.?fE8:?Double
 005B99CB    fcomp      dword ptr ds:[5B9B54]; 0:Single
 005B99D1    fnstsw     al
 005B99D3    sahf
>005B99D4    jne        005B99E1
 005B99D6    mov        dl,5
 005B99D8    mov        eax,ebx
 005B99DA    call       TPen.SetStyle
>005B99DF    jmp        005B9A2C
 005B99E1    cmp        byte ptr [esi+0F0],1; TRaveGraphicBase.?fF0:byte
>005B99E8    jne        005B9A00
 005B99EA    fld        qword ptr [esi+0E8]; TRaveGraphicBase.?fE8:?Double
 005B99F0    call       @ROUND
 005B99F5    mov        edx,eax
 005B99F7    mov        eax,ebx
 005B99F9    call       TPen.SetWidth
>005B99FE    jmp        005B9A2C
 005B9A00    fld        qword ptr [esi+0E8]; TRaveGraphicBase.?fE8:?Double
 005B9A06    fdiv       dword ptr ds:[5B9B58]; 72:Single
 005B9A0C    add        esp,0FFFFFFF8
 005B9A0F    fstp       qword ptr [esp]
 005B9A12    wait
 005B9A13    mov        eax,esi
 005B9A15    call       005AADB4
 005B9A1A    test       eax,eax
>005B9A1C    jg         005B9A23
 005B9A1E    mov        eax,1
 005B9A23    mov        edx,eax
 005B9A25    mov        eax,ebx
 005B9A27    call       TPen.SetWidth
 005B9A2C    mov        eax,ebx
 005B9A2E    call       TPen.GetStyle
 005B9A33    cmp        al,5
>005B9A35    jne        005B9A4A
 005B9A37    mov        eax,dword ptr [ebp+0C]
 005B9A3A    xor        edx,edx
 005B9A3C    mov        dword ptr [eax],edx
 005B9A3E    mov        eax,dword ptr [ebp+8]
 005B9A41    xor        edx,edx
 005B9A43    mov        dword ptr [eax],edx
>005B9A45    jmp        005B9B4D
 005B9A4A    mov        eax,ebx
 005B9A4C    call       TPen.GetStyle
 005B9A51    cmp        al,6
>005B9A53    jne        005B9A6A
 005B9A55    mov        eax,dword ptr [ebp+0C]
 005B9A58    xor        edx,edx
 005B9A5A    mov        dword ptr [eax],edx
 005B9A5C    mov        eax,dword ptr [ebp+8]
 005B9A5F    mov        dword ptr [eax],1
>005B9A65    jmp        005B9B4D
 005B9A6A    mov        eax,ebx
 005B9A6C    call       TPen.GetWidth
 005B9A71    sar        eax,1
>005B9A73    jns        005B9A78
 005B9A75    adc        eax,0
 005B9A78    mov        edx,dword ptr [ebp+0C]
 005B9A7B    mov        dword ptr [edx],eax
 005B9A7D    mov        eax,ebx
 005B9A7F    call       TPen.GetWidth
 005B9A84    mov        edx,dword ptr [ebp+0C]
 005B9A87    sub        eax,dword ptr [edx]
 005B9A89    mov        edx,dword ptr [ebp+8]
 005B9A8C    mov        dword ptr [edx],eax
>005B9A8E    jmp        005B9B4D
 005B9A93    fld        qword ptr [esi+0E8]; TRaveGraphicBase.?fE8:?Double
 005B9A99    fcomp      dword ptr ds:[5B9B54]; 0:Single
 005B9A9F    fnstsw     al
 005B9AA1    sahf
>005B9AA2    jne        005B9ABB
 005B9AA4    push       0
 005B9AA6    push       4
 005B9AA8    mov        cl,5
 005B9AAA    xor        edx,edx
 005B9AAC    mov        eax,edi
 005B9AAE    mov        ebx,dword ptr [eax]
 005B9AB0    call       dword ptr [ebx+154]
>005B9AB6    jmp        005B9B4D
 005B9ABB    cmp        byte ptr [esi+0F0],1; TRaveGraphicBase.?fF0:byte
>005B9AC2    jne        005B9B00
 005B9AC4    fld        qword ptr [esi+0E8]; TRaveGraphicBase.?fE8:?Double
 005B9ACA    call       @ROUND
 005B9ACF    push       eax
 005B9AD0    mov        eax,dword ptr [esi+0F4]; TRaveGraphicBase.?fF4:TPen
 005B9AD6    mov        al,byte ptr [eax+18]; TPen.Mode:TPenMode
 005B9AD9    push       eax
 005B9ADA    mov        eax,dword ptr [esi+0F4]; TRaveGraphicBase.?fF4:TPen
 005B9AE0    call       TPen.GetStyle
 005B9AE5    push       eax
 005B9AE6    mov        eax,dword ptr [esi+0F4]; TRaveGraphicBase.?fF4:TPen
 005B9AEC    call       TPen.GetColor
 005B9AF1    mov        edx,eax
 005B9AF3    mov        eax,edi
 005B9AF5    pop        ecx
 005B9AF6    mov        ebx,dword ptr [eax]
 005B9AF8    call       dword ptr [ebx+154]
>005B9AFE    jmp        005B9B4D
 005B9B00    fld        dword ptr ds:[5B9B5C]; 10000:Single
 005B9B06    fmul       qword ptr [esi+0E8]; TRaveGraphicBase.?fE8:?Double
 005B9B0C    fdiv       dword ptr ds:[5B9B58]; 72:Single
 005B9B12    call       @ROUND
 005B9B17    add        eax,2710
 005B9B1C    neg        eax
 005B9B1E    push       eax
 005B9B1F    mov        eax,dword ptr [esi+0F4]; TRaveGraphicBase.?fF4:TPen
 005B9B25    mov        al,byte ptr [eax+18]; TPen.Mode:TPenMode
 005B9B28    push       eax
 005B9B29    mov        eax,dword ptr [esi+0F4]; TRaveGraphicBase.?fF4:TPen
 005B9B2F    call       TPen.GetStyle
 005B9B34    push       eax
 005B9B35    mov        eax,dword ptr [esi+0F4]; TRaveGraphicBase.?fF4:TPen
 005B9B3B    call       TPen.GetColor
 005B9B40    mov        edx,eax
 005B9B42    mov        eax,edi
 005B9B44    pop        ecx
 005B9B45    mov        ebx,dword ptr [eax]
 005B9B47    call       dword ptr [ebx+154]
 005B9B4D    pop        edi
 005B9B4E    pop        esi
 005B9B4F    pop        ebx
 005B9B50    pop        ebp
 005B9B51    ret        8
*}
//end;

//005B9B60
constructor TRaveLine.Create(AOwner:TComponent);
begin
{*
 005B9B60    push       ebx
 005B9B61    push       esi
 005B9B62    test       dl,dl
>005B9B64    je         005B9B6E
 005B9B66    add        esp,0FFFFFFF0
 005B9B69    call       @ClassCreate
 005B9B6E    mov        ebx,edx
 005B9B70    mov        esi,eax
 005B9B72    xor        edx,edx
 005B9B74    mov        eax,esi
 005B9B76    call       TRaveGraphicBase.Create
 005B9B7B    push       3FF00000
 005B9B80    push       0
 005B9B82    mov        eax,esi
 005B9B84    mov        edx,dword ptr [eax]
 005B9B86    call       dword ptr [edx+140]; TRaveText.SetWidth
 005B9B8C    push       3FF00000
 005B9B91    push       0
 005B9B93    mov        eax,esi
 005B9B95    mov        edx,dword ptr [eax]
 005B9B97    call       dword ptr [edx+148]; TRaveSection.SetHeight
 005B9B9D    mov        eax,esi
 005B9B9F    test       bl,bl
>005B9BA1    je         005B9BB2
 005B9BA3    call       @AfterConstruction
 005B9BA8    pop        dword ptr fs:[0]
 005B9BAF    add        esp,0C
 005B9BB2    mov        eax,esi
 005B9BB4    pop        esi
 005B9BB5    pop        ebx
 005B9BB6    ret
*}
end;

//005B9BB8
//procedure sub_005B9BB8(?:?);
//begin
{*
 005B9BB8    push       ebx
 005B9BB9    push       esi
 005B9BBA    push       edi
 005B9BBB    add        esp,0FFFFFF74
 005B9BC1    mov        esi,edx
 005B9BC3    lea        edi,[esp+58]
 005B9BC7    movs       dword ptr [edi],dword ptr [esi]
 005B9BC8    movs       dword ptr [edi],dword ptr [esi]
 005B9BC9    movs       dword ptr [edi],dword ptr [esi]
 005B9BCA    movs       dword ptr [edi],dword ptr [esi]
 005B9BCB    mov        ebx,eax
 005B9BCD    mov        eax,ebx
 005B9BCF    mov        edx,dword ptr [eax]
 005B9BD1    call       dword ptr [edx+5C]; TRaveLine.sub_005A96D4
 005B9BD4    add        esp,0FFFFFFF8
 005B9BD7    fstp       qword ptr [esp]
 005B9BDA    wait
 005B9BDB    mov        eax,ebx
 005B9BDD    mov        edx,dword ptr [eax]
 005B9BDF    call       dword ptr [edx+60]; TRaveLine.sub_005A970C
 005B9BE2    add        esp,0FFFFFFF8
 005B9BE5    fstp       qword ptr [esp]
 005B9BE8    wait
 005B9BE9    mov        eax,ebx
 005B9BEB    mov        edx,dword ptr [eax]
 005B9BED    call       dword ptr [edx+64]; TRaveLine.sub_005A9744
 005B9BF0    add        esp,0FFFFFFF8
 005B9BF3    fstp       qword ptr [esp]
 005B9BF6    wait
 005B9BF7    mov        eax,ebx
 005B9BF9    mov        edx,dword ptr [eax]
 005B9BFB    call       dword ptr [edx+68]; TRaveLine.sub_005A9770
 005B9BFE    add        esp,0FFFFFFF8
 005B9C01    fstp       qword ptr [esp]
 005B9C04    wait
 005B9C05    lea        eax,[esp+88]
 005B9C0C    call       005A5B94
 005B9C11    mov        eax,dword ptr [esp+68]
 005B9C15    mov        dword ptr [esp+10],eax
 005B9C19    mov        eax,dword ptr [esp+6C]
 005B9C1D    mov        dword ptr [esp+14],eax
 005B9C21    mov        eax,dword ptr [esp+78]
 005B9C25    mov        dword ptr [esp+20],eax
 005B9C29    mov        eax,dword ptr [esp+7C]
 005B9C2D    mov        dword ptr [esp+24],eax
 005B9C31    cmp        byte ptr [ebx+0F8],0; TRaveLine.NESW:Boolean
>005B9C38    je         005B9C62
 005B9C3A    mov        eax,dword ptr [esp+80]
 005B9C41    mov        dword ptr [esp+18],eax
 005B9C45    mov        eax,dword ptr [esp+84]
 005B9C4C    mov        dword ptr [esp+1C],eax
 005B9C50    mov        eax,dword ptr [esp+70]
 005B9C54    mov        dword ptr [esp+28],eax
 005B9C58    mov        eax,dword ptr [esp+74]
 005B9C5C    mov        dword ptr [esp+2C],eax
>005B9C60    jmp        005B9C88
 005B9C62    mov        eax,dword ptr [esp+70]
 005B9C66    mov        dword ptr [esp+18],eax
 005B9C6A    mov        eax,dword ptr [esp+74]
 005B9C6E    mov        dword ptr [esp+1C],eax
 005B9C72    mov        eax,dword ptr [esp+80]
 005B9C79    mov        dword ptr [esp+28],eax
 005B9C7D    mov        eax,dword ptr [esp+84]
 005B9C84    mov        dword ptr [esp+2C],eax
 005B9C88    mov        eax,dword ptr [esp+58]
 005B9C8C    mov        dword ptr [esp+30],eax
 005B9C90    mov        eax,dword ptr [esp+5C]
 005B9C94    mov        dword ptr [esp+34],eax
 005B9C98    mov        eax,dword ptr [esp+60]
 005B9C9C    mov        dword ptr [esp+38],eax
 005B9CA0    mov        eax,dword ptr [esp+64]
 005B9CA4    mov        dword ptr [esp+3C],eax
 005B9CA8    fld        qword ptr [esp+10]
 005B9CAC    fsub       qword ptr [esp+20]
 005B9CB0    fstp       qword ptr [esp]
 005B9CB3    wait
 005B9CB4    fld        qword ptr [esp]
 005B9CB7    fabs
 005B9CB9    mov        eax,[0061B8B0]; ^gvar_0061700C:?Double
 005B9CBE    fcomp      qword ptr [eax]
 005B9CC0    fnstsw     al
 005B9CC2    sahf
>005B9CC3    jae        005B9CEA
 005B9CC5    mov        eax,dword ptr [esp+10]
 005B9CC9    mov        dword ptr [esp+40],eax
 005B9CCD    mov        eax,dword ptr [esp+14]
 005B9CD1    mov        dword ptr [esp+44],eax
 005B9CD5    mov        eax,dword ptr [esp+38]
 005B9CD9    mov        dword ptr [esp+48],eax
 005B9CDD    mov        eax,dword ptr [esp+3C]
 005B9CE1    mov        dword ptr [esp+4C],eax
>005B9CE5    jmp        005B9D76
 005B9CEA    fld        qword ptr [esp+18]
 005B9CEE    fsub       qword ptr [esp+28]
 005B9CF2    fdiv       qword ptr [esp]
 005B9CF5    fstp       qword ptr [esp]
 005B9CF8    wait
 005B9CF9    fld        qword ptr [esp]
 005B9CFC    fabs
 005B9CFE    mov        eax,[0061B8B0]; ^gvar_0061700C:?Double
 005B9D03    fcomp      qword ptr [eax]
 005B9D05    fnstsw     al
 005B9D07    sahf
>005B9D08    jae        005B9D2C
 005B9D0A    mov        eax,dword ptr [esp+30]
 005B9D0E    mov        dword ptr [esp+40],eax
 005B9D12    mov        eax,dword ptr [esp+34]
 005B9D16    mov        dword ptr [esp+44],eax
 005B9D1A    mov        eax,dword ptr [esp+18]
 005B9D1E    mov        dword ptr [esp+48],eax
 005B9D22    mov        eax,dword ptr [esp+1C]
 005B9D26    mov        dword ptr [esp+4C],eax
>005B9D2A    jmp        005B9D76
 005B9D2C    fld        dword ptr ds:[5B9E40]; -1:Single
 005B9D32    fdiv       qword ptr [esp]
 005B9D35    fstp       qword ptr [esp+8]
 005B9D39    wait
 005B9D3A    fld        qword ptr [esp+8]
 005B9D3E    fmul       qword ptr [esp+30]
 005B9D42    fsub       qword ptr [esp+38]
 005B9D46    fld        qword ptr [esp]
 005B9D49    fmul       qword ptr [esp+10]
 005B9D4D    fsub       qword ptr [esp+18]
 005B9D51    fsubp      st(1),st
 005B9D53    fld        qword ptr [esp+8]
 005B9D57    fsub       qword ptr [esp]
 005B9D5A    fdivp      st(1),st
 005B9D5C    fstp       qword ptr [esp+40]
 005B9D60    wait
 005B9D61    fld        qword ptr [esp+40]
 005B9D65    fsub       qword ptr [esp+30]
 005B9D69    fmul       qword ptr [esp+8]
 005B9D6D    fadd       qword ptr [esp+38]
 005B9D71    fstp       qword ptr [esp+48]
 005B9D75    wait
 005B9D76    push       dword ptr [esp+34]
 005B9D7A    push       dword ptr [esp+34]
 005B9D7E    mov        eax,ebx
 005B9D80    call       005AAE14
 005B9D85    push       eax
 005B9D86    push       dword ptr [esp+48]
 005B9D8A    push       dword ptr [esp+48]
 005B9D8E    mov        eax,ebx
 005B9D90    call       005AAE14
 005B9D95    pop        edx
 005B9D96    xchg       eax,edx
 005B9D97    sub        eax,edx
 005B9D99    imul       eax
 005B9D9B    mov        esi,eax
 005B9D9D    push       dword ptr [esp+3C]
 005B9DA1    push       dword ptr [esp+3C]
 005B9DA5    mov        eax,ebx
 005B9DA7    call       005AAE30
 005B9DAC    push       eax
 005B9DAD    push       dword ptr [esp+50]
 005B9DB1    push       dword ptr [esp+50]
 005B9DB5    mov        eax,ebx
 005B9DB7    call       005AAE30
 005B9DBC    pop        edx
 005B9DBD    xchg       eax,edx
 005B9DBE    sub        eax,edx
 005B9DC0    imul       eax
 005B9DC2    add        esi,eax
 005B9DC4    mov        dword ptr [esp+88],esi
 005B9DCB    fild       dword ptr [esp+88]
 005B9DD2    fstp       qword ptr [esp+50]
 005B9DD6    wait
 005B9DD7    fld        qword ptr [esp+50]
 005B9DDB    fcomp      dword ptr ds:[5B9E44]; 9:Single
 005B9DE1    fnstsw     al
 005B9DE3    sahf
>005B9DE4    jae        005B9E2E
 005B9DE6    fld        qword ptr [esp+40]
 005B9DEA    fcomp      qword ptr [esp+68]
 005B9DEE    fnstsw     al
 005B9DF0    sahf
>005B9DF1    jb         005B9E2E
 005B9DF3    fld        qword ptr [esp+40]
 005B9DF7    fcomp      qword ptr [esp+78]
 005B9DFB    fnstsw     al
 005B9DFD    sahf
>005B9DFE    ja         005B9E2E
 005B9E00    fld        qword ptr [esp+48]
 005B9E04    fcomp      qword ptr [esp+70]
 005B9E08    fnstsw     al
 005B9E0A    sahf
>005B9E0B    jb         005B9E2E
 005B9E0D    fld        qword ptr [esp+48]
 005B9E11    fcomp      qword ptr [esp+80]
 005B9E18    fnstsw     al
 005B9E1A    sahf
>005B9E1B    ja         005B9E2E
 005B9E1D    mov        edx,ebx
 005B9E1F    mov        eax,dword ptr [ebx+38]; TRaveLine.?f38:dword
 005B9E22    mov        ecx,dword ptr [eax]
 005B9E24    call       dword ptr [ecx+0C0]
 005B9E2A    test       al,al
>005B9E2C    jne        005B9E32
 005B9E2E    xor        eax,eax
>005B9E30    jmp        005B9E34
 005B9E32    mov        al,1
 005B9E34    add        esp,8C
 005B9E3A    pop        edi
 005B9E3B    pop        esi
 005B9E3C    pop        ebx
 005B9E3D    ret
*}
//end;

//005B9E48
//procedure sub_005B9E48(?:?);
//begin
{*
 005B9E48    push       ebx
 005B9E49    push       esi
 005B9E4A    push       edi
 005B9E4B    add        esp,0FFFFFF68
 005B9E51    mov        esi,edx
 005B9E53    lea        edi,[esp+38]
 005B9E57    mov        ecx,8
 005B9E5C    rep movs   dword ptr [edi],dword ptr [esi]
 005B9E5E    mov        esi,eax
 005B9E60    mov        eax,esi
 005B9E62    mov        edx,dword ptr [eax]
 005B9E64    call       dword ptr [edx+5C]; TRaveVLine.sub_005A96D4
 005B9E67    add        esp,0FFFFFFF8
 005B9E6A    fstp       qword ptr [esp]
 005B9E6D    wait
 005B9E6E    mov        eax,esi
 005B9E70    mov        edx,dword ptr [eax]
 005B9E72    call       dword ptr [edx+60]; TRaveVLine.sub_005A970C
 005B9E75    add        esp,0FFFFFFF8
 005B9E78    fstp       qword ptr [esp]
 005B9E7B    wait
 005B9E7C    mov        eax,esi
 005B9E7E    mov        edx,dword ptr [eax]
 005B9E80    call       dword ptr [edx+64]; TRaveVLine.sub_005A9744
 005B9E83    add        esp,0FFFFFFF8
 005B9E86    fstp       qword ptr [esp]
 005B9E89    wait
 005B9E8A    mov        eax,esi
 005B9E8C    mov        edx,dword ptr [eax]
 005B9E8E    call       dword ptr [edx+68]; TRaveVLine.sub_005A9770
 005B9E91    add        esp,0FFFFFFF8
 005B9E94    fstp       qword ptr [esp]
 005B9E97    wait
 005B9E98    lea        eax,[esp+98]
 005B9E9F    call       005A5B94
 005B9EA4    lea        eax,[esp+58]
 005B9EA8    lea        ecx,[esp+78]
 005B9EAC    lea        edx,[esp+38]
 005B9EB0    call       005A5C78
 005B9EB5    mov        ebx,eax
 005B9EB7    test       bl,bl
>005B9EB9    je         005BA0B9
 005B9EBF    push       dword ptr [esp+7C]
 005B9EC3    push       dword ptr [esp+7C]
 005B9EC7    push       dword ptr [esp+94]
 005B9ECE    push       dword ptr [esp+94]
 005B9ED5    call       005A5AEC
 005B9EDA    test       al,al
>005B9EDC    jne        005BA0B9
 005B9EE2    push       dword ptr [esp+84]
 005B9EE9    push       dword ptr [esp+84]
 005B9EF0    push       dword ptr [esp+9C]
 005B9EF7    push       dword ptr [esp+9C]
 005B9EFE    call       005A5AEC
 005B9F03    test       al,al
>005B9F05    jne        005BA0B9
 005B9F0B    cmp        byte ptr [esi+0F8],0; TRaveVLine.NESW:Boolean
>005B9F12    je         005B9F42
 005B9F14    mov        eax,dword ptr [esp+90]
 005B9F1B    mov        dword ptr [esp+8],eax
 005B9F1F    mov        eax,dword ptr [esp+94]
 005B9F26    mov        dword ptr [esp+0C],eax
 005B9F2A    mov        eax,dword ptr [esp+80]
 005B9F31    mov        dword ptr [esp+10],eax
 005B9F35    mov        eax,dword ptr [esp+84]
 005B9F3C    mov        dword ptr [esp+14],eax
>005B9F40    jmp        005B9F6E
 005B9F42    mov        eax,dword ptr [esp+80]
 005B9F49    mov        dword ptr [esp+8],eax
 005B9F4D    mov        eax,dword ptr [esp+84]
 005B9F54    mov        dword ptr [esp+0C],eax
 005B9F58    mov        eax,dword ptr [esp+90]
 005B9F5F    mov        dword ptr [esp+10],eax
 005B9F63    mov        eax,dword ptr [esp+94]
 005B9F6A    mov        dword ptr [esp+14],eax
 005B9F6E    mov        eax,esi
 005B9F70    mov        edx,dword ptr [eax]
 005B9F72    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005B9F78    fld        qword ptr [esp+10]
 005B9F7C    fsub       qword ptr [esp+8]
 005B9F80    fdivrp     st(1),st
 005B9F82    fstp       qword ptr [esp]
 005B9F85    wait
 005B9F86    fld        qword ptr [esp+40]
 005B9F8A    fsub       qword ptr [esp+8]
 005B9F8E    fdiv       qword ptr [esp]
 005B9F91    fadd       qword ptr [esp+78]
 005B9F95    fstp       qword ptr [esp+18]
 005B9F99    wait
 005B9F9A    fld        qword ptr [esp+38]
 005B9F9E    fsub       qword ptr [esp+78]
 005B9FA2    fmul       qword ptr [esp]
 005B9FA5    fadd       qword ptr [esp+8]
 005B9FA9    fstp       qword ptr [esp+28]
 005B9FAD    wait
 005B9FAE    fld        qword ptr [esp+50]
 005B9FB2    fsub       qword ptr [esp+8]
 005B9FB6    fdiv       qword ptr [esp]
 005B9FB9    fadd       qword ptr [esp+78]
 005B9FBD    fstp       qword ptr [esp+20]
 005B9FC1    wait
 005B9FC2    fld        qword ptr [esp+48]
 005B9FC6    fsub       qword ptr [esp+78]
 005B9FCA    fmul       qword ptr [esp]
 005B9FCD    fadd       qword ptr [esp+8]
 005B9FD1    fstp       qword ptr [esp+30]
 005B9FD5    wait
 005B9FD6    push       dword ptr [esp+1C]
 005B9FDA    push       dword ptr [esp+1C]
 005B9FDE    push       dword ptr [esp+44]
 005B9FE2    push       dword ptr [esp+44]
 005B9FE6    call       005A5B78
 005B9FEB    test       al,al
>005B9FED    je         005BA00C
 005B9FEF    push       dword ptr [esp+1C]
 005B9FF3    push       dword ptr [esp+1C]
 005B9FF7    push       dword ptr [esp+54]
 005B9FFB    push       dword ptr [esp+54]
 005B9FFF    call       005A5B5C
 005BA004    test       al,al
>005BA006    jne        005BA0A2
 005BA00C    push       dword ptr [esp+24]
 005BA010    push       dword ptr [esp+24]
 005BA014    push       dword ptr [esp+44]
 005BA018    push       dword ptr [esp+44]
 005BA01C    call       005A5B78
 005BA021    test       al,al
>005BA023    je         005BA03E
 005BA025    push       dword ptr [esp+24]
 005BA029    push       dword ptr [esp+24]
 005BA02D    push       dword ptr [esp+54]
 005BA031    push       dword ptr [esp+54]
 005BA035    call       005A5B5C
 005BA03A    test       al,al
>005BA03C    jne        005BA0A2
 005BA03E    push       dword ptr [esp+2C]
 005BA042    push       dword ptr [esp+2C]
 005BA046    push       dword ptr [esp+4C]
 005BA04A    push       dword ptr [esp+4C]
 005BA04E    call       005A5B78
 005BA053    test       al,al
>005BA055    je         005BA070
 005BA057    push       dword ptr [esp+2C]
 005BA05B    push       dword ptr [esp+2C]
 005BA05F    push       dword ptr [esp+5C]
 005BA063    push       dword ptr [esp+5C]
 005BA067    call       005A5B5C
 005BA06C    test       al,al
>005BA06E    jne        005BA0A2
 005BA070    push       dword ptr [esp+34]
 005BA074    push       dword ptr [esp+34]
 005BA078    push       dword ptr [esp+4C]
 005BA07C    push       dword ptr [esp+4C]
 005BA080    call       005A5B78
 005BA085    test       al,al
>005BA087    je         005BA0B3
 005BA089    push       dword ptr [esp+34]
 005BA08D    push       dword ptr [esp+34]
 005BA091    push       dword ptr [esp+5C]
 005BA095    push       dword ptr [esp+5C]
 005BA099    call       005A5B5C
 005BA09E    test       al,al
>005BA0A0    je         005BA0B3
 005BA0A2    mov        edx,esi
 005BA0A4    mov        eax,dword ptr [esi+38]; TRaveVLine.?f38:dword
 005BA0A7    mov        ecx,dword ptr [eax]
 005BA0A9    call       dword ptr [ecx+0C0]
 005BA0AF    test       al,al
>005BA0B1    jne        005BA0B7
 005BA0B3    xor        ebx,ebx
>005BA0B5    jmp        005BA0B9
 005BA0B7    mov        bl,1
 005BA0B9    mov        eax,ebx
 005BA0BB    add        esp,98
 005BA0C1    pop        edi
 005BA0C2    pop        esi
 005BA0C3    pop        ebx
 005BA0C4    ret
*}
//end;

//005BA0C8
procedure sub_005BA0C8;
begin
{*
 005BA0C8    push       ebx
 005BA0C9    mov        ebx,eax
 005BA0CB    cmp        byte ptr [ebx+0F8],0; TRaveVLine.NESW:Boolean
>005BA0D2    je         005BA12A
 005BA0D4    push       0FD
 005BA0D6    mov        eax,ebx
 005BA0D8    mov        edx,dword ptr [eax]
 005BA0DA    call       dword ptr [edx+5C]; TRaveVLine.sub_005A96D4
 005BA0DD    add        esp,0FFFFFFF8
 005BA0E0    fstp       qword ptr [esp]
 005BA0E3    wait
 005BA0E4    mov        eax,ebx
 005BA0E6    mov        edx,dword ptr [eax]
 005BA0E8    call       dword ptr [edx+68]; TRaveVLine.sub_005A9770
 005BA0EB    add        esp,0FFFFFFF8
 005BA0EE    fstp       qword ptr [esp]
 005BA0F1    wait
 005BA0F2    mov        ecx,ebx
 005BA0F4    xor        edx,edx
 005BA0F6    mov        eax,dword ptr [ebx+40]; TRaveVLine.?f40:TComponent
 005BA0F9    call       005ABBD4
 005BA0FE    push       0FD
 005BA100    mov        eax,ebx
 005BA102    mov        edx,dword ptr [eax]
 005BA104    call       dword ptr [edx+64]; TRaveVLine.sub_005A9744
 005BA107    add        esp,0FFFFFFF8
 005BA10A    fstp       qword ptr [esp]
 005BA10D    wait
 005BA10E    mov        eax,ebx
 005BA110    mov        edx,dword ptr [eax]
 005BA112    call       dword ptr [edx+60]; TRaveVLine.sub_005A970C
 005BA115    add        esp,0FFFFFFF8
 005BA118    fstp       qword ptr [esp]
 005BA11B    wait
 005BA11C    mov        ecx,ebx
 005BA11E    mov        dl,1
 005BA120    mov        eax,dword ptr [ebx+40]; TRaveVLine.?f40:TComponent
 005BA123    call       005ABBD4
 005BA128    pop        ebx
 005BA129    ret
 005BA12A    push       0FD
 005BA12C    mov        eax,ebx
 005BA12E    mov        edx,dword ptr [eax]
 005BA130    call       dword ptr [edx+5C]; TRaveVLine.sub_005A96D4
 005BA133    add        esp,0FFFFFFF8
 005BA136    fstp       qword ptr [esp]
 005BA139    wait
 005BA13A    mov        eax,ebx
 005BA13C    mov        edx,dword ptr [eax]
 005BA13E    call       dword ptr [edx+60]; TRaveVLine.sub_005A970C
 005BA141    add        esp,0FFFFFFF8
 005BA144    fstp       qword ptr [esp]
 005BA147    wait
 005BA148    mov        ecx,ebx
 005BA14A    xor        edx,edx
 005BA14C    mov        eax,dword ptr [ebx+40]; TRaveVLine.?f40:TComponent
 005BA14F    call       005ABBD4
 005BA154    push       0FD
 005BA156    mov        eax,ebx
 005BA158    mov        edx,dword ptr [eax]
 005BA15A    call       dword ptr [edx+64]; TRaveVLine.sub_005A9744
 005BA15D    add        esp,0FFFFFFF8
 005BA160    fstp       qword ptr [esp]
 005BA163    wait
 005BA164    mov        eax,ebx
 005BA166    mov        edx,dword ptr [eax]
 005BA168    call       dword ptr [edx+68]; TRaveVLine.sub_005A9770
 005BA16B    add        esp,0FFFFFFF8
 005BA16E    fstp       qword ptr [esp]
 005BA171    wait
 005BA172    mov        ecx,ebx
 005BA174    mov        dl,1
 005BA176    mov        eax,dword ptr [ebx+40]; TRaveVLine.?f40:TComponent
 005BA179    call       005ABBD4
 005BA17E    pop        ebx
 005BA17F    ret
*}
end;

//005BA180
procedure sub_005BA180;
begin
{*
 005BA180    push       ebx
 005BA181    mov        ebx,eax
 005BA183    cmp        byte ptr [ebx+0F8],0; TRaveVLine.NESW:Boolean
>005BA18A    je         005BA1DE
 005BA18C    mov        eax,ebx
 005BA18E    mov        edx,dword ptr [eax]
 005BA190    call       dword ptr [edx+5C]; TRaveVLine.sub_005A96D4
 005BA193    add        esp,0FFFFFFF8
 005BA196    fstp       qword ptr [esp]
 005BA199    wait
 005BA19A    mov        eax,ebx
 005BA19C    mov        edx,dword ptr [eax]
 005BA19E    call       dword ptr [edx+68]; TRaveVLine.sub_005A9770
 005BA1A1    add        esp,0FFFFFFF8
 005BA1A4    fstp       qword ptr [esp]
 005BA1A7    wait
 005BA1A8    mov        ecx,ebx
 005BA1AA    xor        edx,edx
 005BA1AC    mov        eax,dword ptr [ebx+40]; TRaveVLine.?f40:TComponent
 005BA1AF    call       005ABC08
 005BA1B4    mov        eax,ebx
 005BA1B6    mov        edx,dword ptr [eax]
 005BA1B8    call       dword ptr [edx+64]; TRaveVLine.sub_005A9744
 005BA1BB    add        esp,0FFFFFFF8
 005BA1BE    fstp       qword ptr [esp]
 005BA1C1    wait
 005BA1C2    mov        eax,ebx
 005BA1C4    mov        edx,dword ptr [eax]
 005BA1C6    call       dword ptr [edx+60]; TRaveVLine.sub_005A970C
 005BA1C9    add        esp,0FFFFFFF8
 005BA1CC    fstp       qword ptr [esp]
 005BA1CF    wait
 005BA1D0    mov        ecx,ebx
 005BA1D2    mov        dl,1
 005BA1D4    mov        eax,dword ptr [ebx+40]; TRaveVLine.?f40:TComponent
 005BA1D7    call       005ABC08
 005BA1DC    pop        ebx
 005BA1DD    ret
 005BA1DE    mov        eax,ebx
 005BA1E0    mov        edx,dword ptr [eax]
 005BA1E2    call       dword ptr [edx+5C]; TRaveVLine.sub_005A96D4
 005BA1E5    add        esp,0FFFFFFF8
 005BA1E8    fstp       qword ptr [esp]
 005BA1EB    wait
 005BA1EC    mov        eax,ebx
 005BA1EE    mov        edx,dword ptr [eax]
 005BA1F0    call       dword ptr [edx+60]; TRaveVLine.sub_005A970C
 005BA1F3    add        esp,0FFFFFFF8
 005BA1F6    fstp       qword ptr [esp]
 005BA1F9    wait
 005BA1FA    mov        ecx,ebx
 005BA1FC    xor        edx,edx
 005BA1FE    mov        eax,dword ptr [ebx+40]; TRaveVLine.?f40:TComponent
 005BA201    call       005ABC08
 005BA206    mov        eax,ebx
 005BA208    mov        edx,dword ptr [eax]
 005BA20A    call       dword ptr [edx+64]; TRaveVLine.sub_005A9744
 005BA20D    add        esp,0FFFFFFF8
 005BA210    fstp       qword ptr [esp]
 005BA213    wait
 005BA214    mov        eax,ebx
 005BA216    mov        edx,dword ptr [eax]
 005BA218    call       dword ptr [edx+68]; TRaveVLine.sub_005A9770
 005BA21B    add        esp,0FFFFFFF8
 005BA21E    fstp       qword ptr [esp]
 005BA221    wait
 005BA222    mov        ecx,ebx
 005BA224    mov        dl,1
 005BA226    mov        eax,dword ptr [ebx+40]; TRaveVLine.?f40:TComponent
 005BA229    call       005ABC08
 005BA22E    pop        ebx
 005BA22F    ret
*}
end;

//005BA230
//procedure sub_005BA230(?:?; ?:?; ?:?);
//begin
{*
 005BA230    push       ebp
 005BA231    mov        ebp,esp
 005BA233    add        esp,0FFFFFFD8
 005BA236    push       ebx
 005BA237    push       esi
 005BA238    push       edi
 005BA239    mov        ebx,edx
 005BA23B    mov        esi,eax
 005BA23D    lea        edi,[ebp-28]
 005BA240    mov        edx,edi
 005BA242    mov        eax,esi
 005BA244    call       005AA2D8
 005BA249    cmp        byte ptr [ebx+4],0
>005BA24D    jne        005BA279
 005BA24F    fld        qword ptr [ebx+30]
 005BA252    fadd       qword ptr [ebp+10]
 005BA255    fstp       qword ptr [edi]
 005BA257    wait
 005BA258    cmp        byte ptr [esi+0F8],0; TRaveLine.NESW:Boolean
>005BA25F    je         005BA26D
 005BA261    fld        qword ptr [ebx+48]
 005BA264    fadd       qword ptr [ebp+8]
 005BA267    fstp       qword ptr [edi+18]
 005BA26A    wait
>005BA26B    jmp        005BA2A2
 005BA26D    fld        qword ptr [ebx+38]
 005BA270    fadd       qword ptr [ebp+8]
 005BA273    fstp       qword ptr [edi+8]
 005BA276    wait
>005BA277    jmp        005BA2A2
 005BA279    fld        qword ptr [ebx+40]
 005BA27C    fadd       qword ptr [ebp+10]
 005BA27F    fstp       qword ptr [edi+10]
 005BA282    wait
 005BA283    cmp        byte ptr [esi+0F8],0; TRaveLine.NESW:Boolean
>005BA28A    je         005BA298
 005BA28C    fld        qword ptr [ebx+38]
 005BA28F    fadd       qword ptr [ebp+8]
 005BA292    fstp       qword ptr [edi+8]
 005BA295    wait
>005BA296    jmp        005BA2A2
 005BA298    fld        qword ptr [ebx+48]
 005BA29B    fadd       qword ptr [ebp+8]
 005BA29E    fstp       qword ptr [edi+18]
 005BA2A1    wait
 005BA2A2    fld        qword ptr [edi+18]
 005BA2A5    fcomp      qword ptr [edi+8]
 005BA2A8    fnstsw     al
 005BA2AA    sahf
>005BA2AB    jae        005BA303
 005BA2AD    mov        al,byte ptr [esi+0F8]; TRaveLine.NESW:Boolean
 005BA2B3    xor        al,1
 005BA2B5    mov        byte ptr [esi+0F8],al; TRaveLine.NESW:Boolean
 005BA2BB    mov        eax,dword ptr [edi+18]
 005BA2BE    mov        dword ptr [ebp-8],eax
 005BA2C1    mov        eax,dword ptr [edi+1C]
 005BA2C4    mov        dword ptr [ebp-4],eax
 005BA2C7    mov        eax,dword ptr [edi+8]
 005BA2CA    mov        dword ptr [edi+18],eax
 005BA2CD    mov        eax,dword ptr [edi+0C]
 005BA2D0    mov        dword ptr [edi+1C],eax
 005BA2D3    mov        eax,dword ptr [ebp-8]
 005BA2D6    mov        dword ptr [edi+8],eax
 005BA2D9    mov        eax,dword ptr [ebp-4]
 005BA2DC    mov        dword ptr [edi+0C],eax
 005BA2DF    mov        eax,dword ptr [ebx+48]
 005BA2E2    mov        dword ptr [ebp-8],eax
 005BA2E5    mov        eax,dword ptr [ebx+4C]
 005BA2E8    mov        dword ptr [ebp-4],eax
 005BA2EB    mov        eax,dword ptr [ebx+38]
 005BA2EE    mov        dword ptr [ebx+48],eax
 005BA2F1    mov        eax,dword ptr [ebx+3C]
 005BA2F4    mov        dword ptr [ebx+4C],eax
 005BA2F7    mov        eax,dword ptr [ebp-8]
 005BA2FA    mov        dword ptr [ebx+38],eax
 005BA2FD    mov        eax,dword ptr [ebp-4]
 005BA300    mov        dword ptr [ebx+3C],eax
 005BA303    fld        qword ptr [edi+10]
 005BA306    fcomp      qword ptr [edi]
 005BA308    fnstsw     al
 005BA30A    sahf
>005BA30B    jae        005BA381
 005BA30D    mov        al,byte ptr [esi+0F8]; TRaveLine.NESW:Boolean
 005BA313    xor        al,1
 005BA315    mov        byte ptr [esi+0F8],al; TRaveLine.NESW:Boolean
 005BA31B    mov        eax,dword ptr [edi+10]
 005BA31E    mov        dword ptr [ebp-8],eax
 005BA321    mov        eax,dword ptr [edi+14]
 005BA324    mov        dword ptr [ebp-4],eax
 005BA327    mov        eax,dword ptr [edi]
 005BA329    mov        dword ptr [edi+10],eax
 005BA32C    mov        eax,dword ptr [edi+4]
 005BA32F    mov        dword ptr [edi+14],eax
 005BA332    mov        eax,dword ptr [ebp-8]
 005BA335    mov        dword ptr [edi],eax
 005BA337    mov        eax,dword ptr [ebp-4]
 005BA33A    mov        dword ptr [edi+4],eax
 005BA33D    mov        eax,dword ptr [ebx+40]
 005BA340    mov        dword ptr [ebp-8],eax
 005BA343    mov        eax,dword ptr [ebx+44]
 005BA346    mov        dword ptr [ebp-4],eax
 005BA349    mov        eax,dword ptr [ebx+30]
 005BA34C    mov        dword ptr [ebx+40],eax
 005BA34F    mov        eax,dword ptr [ebx+34]
 005BA352    mov        dword ptr [ebx+44],eax
 005BA355    mov        eax,dword ptr [ebp-8]
 005BA358    mov        dword ptr [ebx+30],eax
 005BA35B    mov        eax,dword ptr [ebp-4]
 005BA35E    mov        dword ptr [ebx+34],eax
 005BA361    cmp        byte ptr [ebx+4],1
>005BA365    jne        005BA375
 005BA367    xor        ecx,ecx
 005BA369    mov        edx,ebx
 005BA36B    mov        eax,dword ptr [esi+40]; TRaveLine.?f40:TComponent
 005BA36E    call       005ABC34
>005BA373    jmp        005BA381
 005BA375    mov        cl,1
 005BA377    mov        edx,ebx
 005BA379    mov        eax,dword ptr [esi+40]; TRaveLine.?f40:TComponent
 005BA37C    call       005ABC34
 005BA381    mov        edx,edi
 005BA383    mov        eax,esi
 005BA385    call       005AA190
 005BA38A    mov        eax,esi
 005BA38C    call       005AA880
 005BA391    pop        edi
 005BA392    pop        esi
 005BA393    pop        ebx
 005BA394    mov        esp,ebp
 005BA396    pop        ebp
 005BA397    ret        10
*}
//end;

//005BA39C
//procedure sub_005BA39C(?:?);
//begin
{*
 005BA39C    push       ebx
 005BA39D    push       esi
 005BA39E    add        esp,0FFFFFFF8
 005BA3A1    mov        esi,edx
 005BA3A3    mov        ebx,eax
 005BA3A5    push       esp
 005BA3A6    lea        eax,[esp+8]
 005BA3AA    push       eax
 005BA3AB    xor        ecx,ecx
 005BA3AD    mov        edx,dword ptr [esi+10]
 005BA3B0    mov        eax,ebx
 005BA3B2    call       005B99A4
 005BA3B7    cmp        byte ptr [ebx+0F8],0; TRaveVLine.NESW:Boolean
>005BA3BE    je         005BA42C
 005BA3C0    mov        eax,ebx
 005BA3C2    mov        edx,dword ptr [eax]
 005BA3C4    call       dword ptr [edx+68]; TRaveVLine.sub_005A9770
 005BA3C7    add        esp,0FFFFFFF8
 005BA3CA    fstp       qword ptr [esp]
 005BA3CD    wait
 005BA3CE    mov        eax,ebx
 005BA3D0    call       005AAE30
 005BA3D5    push       eax
 005BA3D6    mov        eax,ebx
 005BA3D8    mov        edx,dword ptr [eax]
 005BA3DA    call       dword ptr [edx+5C]; TRaveVLine.sub_005A96D4
 005BA3DD    add        esp,0FFFFFFF8
 005BA3E0    fstp       qword ptr [esp]
 005BA3E3    wait
 005BA3E4    mov        eax,ebx
 005BA3E6    call       005AAE14
 005BA3EB    mov        edx,eax
 005BA3ED    mov        eax,esi
 005BA3EF    pop        ecx
 005BA3F0    call       TCanvas.MoveTo
 005BA3F5    mov        eax,ebx
 005BA3F7    mov        edx,dword ptr [eax]
 005BA3F9    call       dword ptr [edx+60]; TRaveVLine.sub_005A970C
 005BA3FC    add        esp,0FFFFFFF8
 005BA3FF    fstp       qword ptr [esp]
 005BA402    wait
 005BA403    mov        eax,ebx
 005BA405    call       005AAE30
 005BA40A    push       eax
 005BA40B    mov        eax,ebx
 005BA40D    mov        edx,dword ptr [eax]
 005BA40F    call       dword ptr [edx+64]; TRaveVLine.sub_005A9744
 005BA412    add        esp,0FFFFFFF8
 005BA415    fstp       qword ptr [esp]
 005BA418    wait
 005BA419    mov        eax,ebx
 005BA41B    call       005AAE14
 005BA420    mov        edx,eax
 005BA422    mov        eax,esi
 005BA424    pop        ecx
 005BA425    call       TCanvas.LineTo
>005BA42A    jmp        005BA496
 005BA42C    mov        eax,ebx
 005BA42E    mov        edx,dword ptr [eax]
 005BA430    call       dword ptr [edx+60]; TRaveVLine.sub_005A970C
 005BA433    add        esp,0FFFFFFF8
 005BA436    fstp       qword ptr [esp]
 005BA439    wait
 005BA43A    mov        eax,ebx
 005BA43C    call       005AAE30
 005BA441    push       eax
 005BA442    mov        eax,ebx
 005BA444    mov        edx,dword ptr [eax]
 005BA446    call       dword ptr [edx+5C]; TRaveVLine.sub_005A96D4
 005BA449    add        esp,0FFFFFFF8
 005BA44C    fstp       qword ptr [esp]
 005BA44F    wait
 005BA450    mov        eax,ebx
 005BA452    call       005AAE14
 005BA457    mov        edx,eax
 005BA459    mov        eax,esi
 005BA45B    pop        ecx
 005BA45C    call       TCanvas.MoveTo
 005BA461    mov        eax,ebx
 005BA463    mov        edx,dword ptr [eax]
 005BA465    call       dword ptr [edx+68]; TRaveVLine.sub_005A9770
 005BA468    add        esp,0FFFFFFF8
 005BA46B    fstp       qword ptr [esp]
 005BA46E    wait
 005BA46F    mov        eax,ebx
 005BA471    call       005AAE30
 005BA476    push       eax
 005BA477    mov        eax,ebx
 005BA479    mov        edx,dword ptr [eax]
 005BA47B    call       dword ptr [edx+64]; TRaveVLine.sub_005A9744
 005BA47E    add        esp,0FFFFFFF8
 005BA481    fstp       qword ptr [esp]
 005BA484    wait
 005BA485    mov        eax,ebx
 005BA487    call       005AAE14
 005BA48C    mov        edx,eax
 005BA48E    mov        eax,esi
 005BA490    pop        ecx
 005BA491    call       TCanvas.LineTo
 005BA496    pop        ecx
 005BA497    pop        edx
 005BA498    pop        esi
 005BA499    pop        ebx
 005BA49A    ret
*}
//end;

//005BA49C
//procedure sub_005BA49C(?:?);
//begin
{*
 005BA49C    push       ebx
 005BA49D    push       esi
 005BA49E    add        esp,0FFFFFFF8
 005BA4A1    mov        esi,edx
 005BA4A3    mov        ebx,eax
 005BA4A5    mov        eax,ebx
 005BA4A7    mov        edx,dword ptr [eax]
 005BA4A9    call       dword ptr [edx+0B8]; TRaveVLine.sub_005AAA88
 005BA4AF    test       al,al
>005BA4B1    je         005BA56B
 005BA4B7    push       esp
 005BA4B8    lea        eax,[esp+8]
 005BA4BC    push       eax
 005BA4BD    mov        ecx,esi
 005BA4BF    xor        edx,edx
 005BA4C1    mov        eax,ebx
 005BA4C3    call       005B99A4
 005BA4C8    cmp        byte ptr [ebx+0F8],0; TRaveVLine.NESW:Boolean
>005BA4CF    je         005BA51F
 005BA4D1    mov        eax,ebx
 005BA4D3    mov        edx,dword ptr [eax]
 005BA4D5    call       dword ptr [edx+5C]; TRaveVLine.sub_005A96D4
 005BA4D8    add        esp,0FFFFFFF8
 005BA4DB    fstp       qword ptr [esp]
 005BA4DE    wait
 005BA4DF    mov        eax,ebx
 005BA4E1    mov        edx,dword ptr [eax]
 005BA4E3    call       dword ptr [edx+68]; TRaveVLine.sub_005A9770
 005BA4E6    add        esp,0FFFFFFF8
 005BA4E9    fstp       qword ptr [esp]
 005BA4EC    wait
 005BA4ED    mov        eax,esi
 005BA4EF    mov        edx,dword ptr [eax]
 005BA4F1    call       dword ptr [edx+0C4]
 005BA4F7    mov        eax,ebx
 005BA4F9    mov        edx,dword ptr [eax]
 005BA4FB    call       dword ptr [edx+64]; TRaveVLine.sub_005A9744
 005BA4FE    add        esp,0FFFFFFF8
 005BA501    fstp       qword ptr [esp]
 005BA504    wait
 005BA505    mov        eax,ebx
 005BA507    mov        edx,dword ptr [eax]
 005BA509    call       dword ptr [edx+60]; TRaveVLine.sub_005A970C
 005BA50C    add        esp,0FFFFFFF8
 005BA50F    fstp       qword ptr [esp]
 005BA512    wait
 005BA513    mov        eax,esi
 005BA515    mov        edx,dword ptr [eax]
 005BA517    call       dword ptr [edx+0C0]
>005BA51D    jmp        005BA56B
 005BA51F    mov        eax,ebx
 005BA521    mov        edx,dword ptr [eax]
 005BA523    call       dword ptr [edx+5C]; TRaveVLine.sub_005A96D4
 005BA526    add        esp,0FFFFFFF8
 005BA529    fstp       qword ptr [esp]
 005BA52C    wait
 005BA52D    mov        eax,ebx
 005BA52F    mov        edx,dword ptr [eax]
 005BA531    call       dword ptr [edx+60]; TRaveVLine.sub_005A970C
 005BA534    add        esp,0FFFFFFF8
 005BA537    fstp       qword ptr [esp]
 005BA53A    wait
 005BA53B    mov        eax,esi
 005BA53D    mov        edx,dword ptr [eax]
 005BA53F    call       dword ptr [edx+0C4]
 005BA545    mov        eax,ebx
 005BA547    mov        edx,dword ptr [eax]
 005BA549    call       dword ptr [edx+64]; TRaveVLine.sub_005A9744
 005BA54C    add        esp,0FFFFFFF8
 005BA54F    fstp       qword ptr [esp]
 005BA552    wait
 005BA553    mov        eax,ebx
 005BA555    mov        edx,dword ptr [eax]
 005BA557    call       dword ptr [edx+68]; TRaveVLine.sub_005A9770
 005BA55A    add        esp,0FFFFFFF8
 005BA55D    fstp       qword ptr [esp]
 005BA560    wait
 005BA561    mov        eax,esi
 005BA563    mov        edx,dword ptr [eax]
 005BA565    call       dword ptr [edx+0C0]
 005BA56B    pop        ecx
 005BA56C    pop        edx
 005BA56D    pop        esi
 005BA56E    pop        ebx
 005BA56F    ret
*}
//end;

//005BA570
//procedure sub_005BA570(?:?; ?:?);
//begin
{*
 005BA570    push       ebx
 005BA571    push       esi
 005BA572    push       edi
 005BA573    add        esp,0FFFFFFB0
 005BA576    mov        esi,ecx
 005BA578    lea        edi,[esp+10]
 005BA57C    movs       dword ptr [edi],dword ptr [esi]
 005BA57D    movs       dword ptr [edi],dword ptr [esi]
 005BA57E    movs       dword ptr [edi],dword ptr [esi]
 005BA57F    movs       dword ptr [edi],dword ptr [esi]
 005BA580    mov        esi,edx
 005BA582    lea        edi,[esp]
 005BA585    movs       dword ptr [edi],dword ptr [esi]
 005BA586    movs       dword ptr [edi],dword ptr [esi]
 005BA587    movs       dword ptr [edi],dword ptr [esi]
 005BA588    movs       dword ptr [edi],dword ptr [esi]
 005BA589    mov        ebx,eax
 005BA58B    lea        ecx,[esp+10]
 005BA58F    mov        edx,esp
 005BA591    mov        eax,dword ptr [ebx]
 005BA593    call       dword ptr [eax+16C]; TRaveVLine.sub_005BA9C8
 005BA599    fld        qword ptr [esp]
 005BA59C    fcomp      qword ptr [esp+10]
 005BA5A0    fnstsw     al
 005BA5A2    sahf
>005BA5A3    jbe        005BA5C5
 005BA5A5    mov        esi,esp
 005BA5A7    lea        edi,[esp+20]
 005BA5AB    movs       dword ptr [edi],dword ptr [esi]
 005BA5AC    movs       dword ptr [edi],dword ptr [esi]
 005BA5AD    movs       dword ptr [edi],dword ptr [esi]
 005BA5AE    movs       dword ptr [edi],dword ptr [esi]
 005BA5AF    lea        esi,[esp+10]
 005BA5B3    mov        edi,esp
 005BA5B5    movs       dword ptr [edi],dword ptr [esi]
 005BA5B6    movs       dword ptr [edi],dword ptr [esi]
 005BA5B7    movs       dword ptr [edi],dword ptr [esi]
 005BA5B8    movs       dword ptr [edi],dword ptr [esi]
 005BA5B9    lea        esi,[esp+20]
 005BA5BD    lea        edi,[esp+10]
 005BA5C1    movs       dword ptr [edi],dword ptr [esi]
 005BA5C2    movs       dword ptr [edi],dword ptr [esi]
 005BA5C3    movs       dword ptr [edi],dword ptr [esi]
 005BA5C4    movs       dword ptr [edi],dword ptr [esi]
 005BA5C5    fld        qword ptr [esp+18]
 005BA5C9    fcomp      qword ptr [esp+8]
 005BA5CD    fnstsw     al
 005BA5CF    sahf
 005BA5D0    setb       al
 005BA5D3    mov        byte ptr [ebx+0F8],al; TRaveVLine.NESW:Boolean
 005BA5D9    fld        qword ptr [esp+8]
 005BA5DD    fcomp      qword ptr [esp+18]
 005BA5E1    fnstsw     al
 005BA5E3    sahf
>005BA5E4    jbe        005BA616
 005BA5E6    mov        eax,dword ptr [esp+8]
 005BA5EA    mov        dword ptr [esp+28],eax
 005BA5EE    mov        eax,dword ptr [esp+0C]
 005BA5F2    mov        dword ptr [esp+2C],eax
 005BA5F6    mov        eax,dword ptr [esp+18]
 005BA5FA    mov        dword ptr [esp+8],eax
 005BA5FE    mov        eax,dword ptr [esp+1C]
 005BA602    mov        dword ptr [esp+0C],eax
 005BA606    mov        eax,dword ptr [esp+28]
 005BA60A    mov        dword ptr [esp+18],eax
 005BA60E    mov        eax,dword ptr [esp+2C]
 005BA612    mov        dword ptr [esp+1C],eax
 005BA616    mov        esi,esp
 005BA618    lea        edi,[esp+30]
 005BA61C    movs       dword ptr [edi],dword ptr [esi]
 005BA61D    movs       dword ptr [edi],dword ptr [esi]
 005BA61E    movs       dword ptr [edi],dword ptr [esi]
 005BA61F    movs       dword ptr [edi],dword ptr [esi]
 005BA620    lea        esi,[esp+10]
 005BA624    lea        edi,[esp+40]
 005BA628    movs       dword ptr [edi],dword ptr [esi]
 005BA629    movs       dword ptr [edi],dword ptr [esi]
 005BA62A    movs       dword ptr [edi],dword ptr [esi]
 005BA62B    movs       dword ptr [edi],dword ptr [esi]
 005BA62C    lea        edx,[esp+30]
 005BA630    mov        eax,ebx
 005BA632    call       005AA190
 005BA637    mov        eax,ebx
 005BA639    call       005AA880
 005BA63E    add        esp,50
 005BA641    pop        edi
 005BA642    pop        esi
 005BA643    pop        ebx
 005BA644    ret
*}
//end;

//005BA648
constructor TRaveHLine.Create(AOwner:TComponent);
begin
{*
 005BA648    push       ebx
 005BA649    push       esi
 005BA64A    test       dl,dl
>005BA64C    je         005BA656
 005BA64E    add        esp,0FFFFFFF0
 005BA651    call       @ClassCreate
 005BA656    mov        ebx,edx
 005BA658    mov        esi,eax
 005BA65A    xor        edx,edx
 005BA65C    mov        eax,esi
 005BA65E    call       TRaveLine.Create
 005BA663    push       3FF00000
 005BA668    push       0
 005BA66A    mov        eax,esi
 005BA66C    mov        edx,dword ptr [eax]
 005BA66E    call       dword ptr [edx+140]; TRaveText.SetWidth
 005BA674    push       0
 005BA676    push       0
 005BA678    mov        eax,esi
 005BA67A    mov        edx,dword ptr [eax]
 005BA67C    call       dword ptr [edx+148]; TRaveSection.SetHeight
 005BA682    mov        eax,esi
 005BA684    test       bl,bl
>005BA686    je         005BA697
 005BA688    call       @AfterConstruction
 005BA68D    pop        dword ptr fs:[0]
 005BA694    add        esp,0C
 005BA697    mov        eax,esi
 005BA699    pop        esi
 005BA69A    pop        ebx
 005BA69B    ret
*}
end;

//005BA69C
//procedure sub_005BA69C(?:?);
//begin
{*
 005BA69C    push       ebx
 005BA69D    push       esi
 005BA69E    push       edi
 005BA69F    add        esp,0FFFFFFF0
 005BA6A2    mov        esi,edx
 005BA6A4    lea        edi,[esp]
 005BA6A7    movs       dword ptr [edi],dword ptr [esi]
 005BA6A8    movs       dword ptr [edi],dword ptr [esi]
 005BA6A9    movs       dword ptr [edi],dword ptr [esi]
 005BA6AA    movs       dword ptr [edi],dword ptr [esi]
 005BA6AB    mov        ebx,eax
 005BA6AD    push       dword ptr [esp+4]
 005BA6B1    push       dword ptr [esp+4]
 005BA6B5    mov        eax,ebx
 005BA6B7    mov        edx,dword ptr [eax]
 005BA6B9    call       dword ptr [edx+5C]; TRaveHLine.sub_005A96D4
 005BA6BC    add        esp,0FFFFFFF8
 005BA6BF    fstp       qword ptr [esp]
 005BA6C2    wait
 005BA6C3    call       005A5B78
 005BA6C8    test       al,al
>005BA6CA    je         005BA71C
 005BA6CC    push       dword ptr [esp+4]
 005BA6D0    push       dword ptr [esp+4]
 005BA6D4    mov        eax,ebx
 005BA6D6    mov        edx,dword ptr [eax]
 005BA6D8    call       dword ptr [edx+64]; TRaveHLine.sub_005A9744
 005BA6DB    add        esp,0FFFFFFF8
 005BA6DE    fstp       qword ptr [esp]
 005BA6E1    wait
 005BA6E2    call       005A5B5C
 005BA6E7    test       al,al
>005BA6E9    je         005BA71C
 005BA6EB    mov        eax,ebx
 005BA6ED    mov        edx,dword ptr [eax]
 005BA6EF    call       dword ptr [edx+60]; TRaveHLine.sub_005A970C
 005BA6F2    fsubr      qword ptr [esp+8]
 005BA6F6    fabs
 005BA6F8    add        esp,0FFFFFFF8
 005BA6FB    fstp       qword ptr [esp]
 005BA6FE    wait
 005BA6FF    mov        eax,ebx
 005BA701    call       005AADE4
 005BA706    cmp        eax,3
>005BA709    jg         005BA71C
 005BA70B    mov        edx,ebx
 005BA70D    mov        eax,dword ptr [ebx+38]; TRaveHLine.?f38:dword
 005BA710    mov        ecx,dword ptr [eax]
 005BA712    call       dword ptr [ecx+0C0]
 005BA718    test       al,al
>005BA71A    jne        005BA720
 005BA71C    xor        eax,eax
>005BA71E    jmp        005BA722
 005BA720    mov        al,1
 005BA722    add        esp,10
 005BA725    pop        edi
 005BA726    pop        esi
 005BA727    pop        ebx
 005BA728    ret
*}
//end;

//005BA72C
//procedure sub_005BA72C(?:?; ?:?);
//begin
{*
 005BA72C    push       ebp
 005BA72D    mov        ebp,esp
 005BA72F    add        esp,0FFFFFFD8
 005BA732    push       ebx
 005BA733    push       esi
 005BA734    mov        ebx,edx
 005BA736    mov        esi,eax
 005BA738    lea        edx,[ebp-28]
 005BA73B    mov        eax,esi
 005BA73D    call       005AA2D8
 005BA742    cmp        byte ptr [ebx+4],0
>005BA746    jne        005BA754
 005BA748    fld        qword ptr [ebx+30]
 005BA74B    fadd       qword ptr [ebp+10]
 005BA74E    fstp       qword ptr [ebp-28]
 005BA751    wait
>005BA752    jmp        005BA75E
 005BA754    fld        qword ptr [ebx+40]
 005BA757    fadd       qword ptr [ebp+10]
 005BA75A    fstp       qword ptr [ebp-18]
 005BA75D    wait
 005BA75E    push       dword ptr [ebp-14]
 005BA761    push       dword ptr [ebp-18]
 005BA764    push       dword ptr [ebp-24]
 005BA767    push       dword ptr [ebp-28]
 005BA76A    call       005A5B24
 005BA76F    test       al,al
>005BA771    je         005BA7DB
 005BA773    mov        eax,dword ptr [ebp-18]
 005BA776    mov        dword ptr [ebp-8],eax
 005BA779    mov        eax,dword ptr [ebp-14]
 005BA77C    mov        dword ptr [ebp-4],eax
 005BA77F    mov        eax,dword ptr [ebp-28]
 005BA782    mov        dword ptr [ebp-18],eax
 005BA785    mov        eax,dword ptr [ebp-24]
 005BA788    mov        dword ptr [ebp-14],eax
 005BA78B    mov        eax,dword ptr [ebp-8]
 005BA78E    mov        dword ptr [ebp-28],eax
 005BA791    mov        eax,dword ptr [ebp-4]
 005BA794    mov        dword ptr [ebp-24],eax
 005BA797    mov        eax,dword ptr [ebx+40]
 005BA79A    mov        dword ptr [ebp-8],eax
 005BA79D    mov        eax,dword ptr [ebx+44]
 005BA7A0    mov        dword ptr [ebp-4],eax
 005BA7A3    mov        eax,dword ptr [ebx+30]
 005BA7A6    mov        dword ptr [ebx+40],eax
 005BA7A9    mov        eax,dword ptr [ebx+34]
 005BA7AC    mov        dword ptr [ebx+44],eax
 005BA7AF    mov        eax,dword ptr [ebp-8]
 005BA7B2    mov        dword ptr [ebx+30],eax
 005BA7B5    mov        eax,dword ptr [ebp-4]
 005BA7B8    mov        dword ptr [ebx+34],eax
 005BA7BB    cmp        byte ptr [ebx+4],1
>005BA7BF    jne        005BA7CF
 005BA7C1    xor        ecx,ecx
 005BA7C3    mov        edx,ebx
 005BA7C5    mov        eax,dword ptr [esi+40]; TRaveHLine.?f40:TComponent
 005BA7C8    call       005ABC34
>005BA7CD    jmp        005BA7DB
 005BA7CF    mov        cl,1
 005BA7D1    mov        edx,ebx
 005BA7D3    mov        eax,dword ptr [esi+40]; TRaveHLine.?f40:TComponent
 005BA7D6    call       005ABC34
 005BA7DB    lea        edx,[ebp-28]
 005BA7DE    mov        eax,esi
 005BA7E0    call       005AA190
 005BA7E5    mov        eax,esi
 005BA7E7    call       005AA880
 005BA7EC    pop        esi
 005BA7ED    pop        ebx
 005BA7EE    mov        esp,ebp
 005BA7F0    pop        ebp
 005BA7F1    ret        10
*}
//end;

//005BA7F4
//procedure sub_005BA7F4(?:?; ?:?);
//begin
{*
 005BA7F4    push       ebp
 005BA7F5    mov        ebp,esp
 005BA7F7    mov        eax,dword ptr [edx+4]
 005BA7FA    mov        dword ptr [ecx+4],eax
 005BA7FD    pop        ebp
 005BA7FE    ret        4
*}
//end;

//005BA804
//procedure sub_005BA804(?:?; ?:?);
//begin
{*
 005BA804    mov        eax,dword ptr [edx+8]
 005BA807    mov        dword ptr [ecx+8],eax
 005BA80A    mov        eax,dword ptr [edx+0C]
 005BA80D    mov        dword ptr [ecx+0C],eax
 005BA810    ret
*}
//end;

//005BA814
constructor TRaveVLine.Create(AOwner:TComponent);
begin
{*
 005BA814    push       ebx
 005BA815    push       esi
 005BA816    test       dl,dl
>005BA818    je         005BA822
 005BA81A    add        esp,0FFFFFFF0
 005BA81D    call       @ClassCreate
 005BA822    mov        ebx,edx
 005BA824    mov        esi,eax
 005BA826    xor        edx,edx
 005BA828    mov        eax,esi
 005BA82A    call       TRaveLine.Create
 005BA82F    push       0
 005BA831    push       0
 005BA833    mov        eax,esi
 005BA835    mov        edx,dword ptr [eax]
 005BA837    call       dword ptr [edx+140]; TRaveText.SetWidth
 005BA83D    push       3FF00000
 005BA842    push       0
 005BA844    mov        eax,esi
 005BA846    mov        edx,dword ptr [eax]
 005BA848    call       dword ptr [edx+148]; TRaveSection.SetHeight
 005BA84E    mov        eax,esi
 005BA850    test       bl,bl
>005BA852    je         005BA863
 005BA854    call       @AfterConstruction
 005BA859    pop        dword ptr fs:[0]
 005BA860    add        esp,0C
 005BA863    mov        eax,esi
 005BA865    pop        esi
 005BA866    pop        ebx
 005BA867    ret
*}
end;

//005BA868
//procedure sub_005BA868(?:?);
//begin
{*
 005BA868    push       ebx
 005BA869    push       esi
 005BA86A    push       edi
 005BA86B    add        esp,0FFFFFFF0
 005BA86E    mov        esi,edx
 005BA870    lea        edi,[esp]
 005BA873    movs       dword ptr [edi],dword ptr [esi]
 005BA874    movs       dword ptr [edi],dword ptr [esi]
 005BA875    movs       dword ptr [edi],dword ptr [esi]
 005BA876    movs       dword ptr [edi],dword ptr [esi]
 005BA877    mov        ebx,eax
 005BA879    push       dword ptr [esp+0C]
 005BA87D    push       dword ptr [esp+0C]
 005BA881    mov        eax,ebx
 005BA883    mov        edx,dword ptr [eax]
 005BA885    call       dword ptr [edx+60]; TRaveVLine.sub_005A970C
 005BA888    add        esp,0FFFFFFF8
 005BA88B    fstp       qword ptr [esp]
 005BA88E    wait
 005BA88F    call       005A5B78
 005BA894    test       al,al
>005BA896    je         005BA8E7
 005BA898    push       dword ptr [esp+0C]
 005BA89C    push       dword ptr [esp+0C]
 005BA8A0    mov        eax,ebx
 005BA8A2    mov        edx,dword ptr [eax]
 005BA8A4    call       dword ptr [edx+68]; TRaveVLine.sub_005A9770
 005BA8A7    add        esp,0FFFFFFF8
 005BA8AA    fstp       qword ptr [esp]
 005BA8AD    wait
 005BA8AE    call       005A5B5C
 005BA8B3    test       al,al
>005BA8B5    je         005BA8E7
 005BA8B7    mov        eax,ebx
 005BA8B9    mov        edx,dword ptr [eax]
 005BA8BB    call       dword ptr [edx+5C]; TRaveVLine.sub_005A96D4
 005BA8BE    fsubr      qword ptr [esp]
 005BA8C1    fabs
 005BA8C3    add        esp,0FFFFFFF8
 005BA8C6    fstp       qword ptr [esp]
 005BA8C9    wait
 005BA8CA    mov        eax,ebx
 005BA8CC    call       005AADB4
 005BA8D1    cmp        eax,3
>005BA8D4    jg         005BA8E7
 005BA8D6    mov        edx,ebx
 005BA8D8    mov        eax,dword ptr [ebx+38]; TRaveVLine.?f38:dword
 005BA8DB    mov        ecx,dword ptr [eax]
 005BA8DD    call       dword ptr [ecx+0C0]
 005BA8E3    test       al,al
>005BA8E5    jne        005BA8EB
 005BA8E7    xor        eax,eax
>005BA8E9    jmp        005BA8ED
 005BA8EB    mov        al,1
 005BA8ED    add        esp,10
 005BA8F0    pop        edi
 005BA8F1    pop        esi
 005BA8F2    pop        ebx
 005BA8F3    ret
*}
//end;

//005BA8F4
//procedure sub_005BA8F4(?:?; ?:?);
//begin
{*
 005BA8F4    push       ebp
 005BA8F5    mov        ebp,esp
 005BA8F7    add        esp,0FFFFFFD8
 005BA8FA    push       ebx
 005BA8FB    push       esi
 005BA8FC    mov        ebx,edx
 005BA8FE    mov        esi,eax
 005BA900    lea        edx,[ebp-28]
 005BA903    mov        eax,esi
 005BA905    call       005AA2D8
 005BA90A    cmp        byte ptr [ebx+4],0
>005BA90E    jne        005BA91C
 005BA910    fld        qword ptr [ebx+38]
 005BA913    fadd       qword ptr [ebp+8]
 005BA916    fstp       qword ptr [ebp-20]
 005BA919    wait
>005BA91A    jmp        005BA926
 005BA91C    fld        qword ptr [ebx+48]
 005BA91F    fadd       qword ptr [ebp+8]
 005BA922    fstp       qword ptr [ebp-10]
 005BA925    wait
 005BA926    push       dword ptr [ebp-0C]
 005BA929    push       dword ptr [ebp-10]
 005BA92C    push       dword ptr [ebp-1C]
 005BA92F    push       dword ptr [ebp-20]
 005BA932    call       005A5B24
 005BA937    test       al,al
>005BA939    je         005BA9A3
 005BA93B    mov        eax,dword ptr [ebp-10]
 005BA93E    mov        dword ptr [ebp-8],eax
 005BA941    mov        eax,dword ptr [ebp-0C]
 005BA944    mov        dword ptr [ebp-4],eax
 005BA947    mov        eax,dword ptr [ebp-20]
 005BA94A    mov        dword ptr [ebp-10],eax
 005BA94D    mov        eax,dword ptr [ebp-1C]
 005BA950    mov        dword ptr [ebp-0C],eax
 005BA953    mov        eax,dword ptr [ebp-8]
 005BA956    mov        dword ptr [ebp-20],eax
 005BA959    mov        eax,dword ptr [ebp-4]
 005BA95C    mov        dword ptr [ebp-1C],eax
 005BA95F    mov        eax,dword ptr [ebx+48]
 005BA962    mov        dword ptr [ebp-8],eax
 005BA965    mov        eax,dword ptr [ebx+4C]
 005BA968    mov        dword ptr [ebp-4],eax
 005BA96B    mov        eax,dword ptr [ebx+38]
 005BA96E    mov        dword ptr [ebx+48],eax
 005BA971    mov        eax,dword ptr [ebx+3C]
 005BA974    mov        dword ptr [ebx+4C],eax
 005BA977    mov        eax,dword ptr [ebp-8]
 005BA97A    mov        dword ptr [ebx+38],eax
 005BA97D    mov        eax,dword ptr [ebp-4]
 005BA980    mov        dword ptr [ebx+3C],eax
 005BA983    cmp        byte ptr [ebx+4],1
>005BA987    jne        005BA997
 005BA989    xor        ecx,ecx
 005BA98B    mov        edx,ebx
 005BA98D    mov        eax,dword ptr [esi+40]; TRaveVLine.?f40:TComponent
 005BA990    call       005ABC34
>005BA995    jmp        005BA9A3
 005BA997    mov        cl,1
 005BA999    mov        edx,ebx
 005BA99B    mov        eax,dword ptr [esi+40]; TRaveVLine.?f40:TComponent
 005BA99E    call       005ABC34
 005BA9A3    lea        edx,[ebp-28]
 005BA9A6    mov        eax,esi
 005BA9A8    call       005AA190
 005BA9AD    mov        eax,esi
 005BA9AF    call       005AA880
 005BA9B4    pop        esi
 005BA9B5    pop        ebx
 005BA9B6    mov        esp,ebp
 005BA9B8    pop        ebp
 005BA9B9    ret        10
*}
//end;

//005BA9BC
//procedure sub_005BA9BC(?:?; ?:?);
//begin
{*
 005BA9BC    push       ebp
 005BA9BD    mov        ebp,esp
 005BA9BF    mov        eax,dword ptr [edx]
 005BA9C1    mov        dword ptr [ecx],eax
 005BA9C3    pop        ebp
 005BA9C4    ret        4
*}
//end;

//005BA9C8
//procedure sub_005BA9C8(?:?; ?:?);
//begin
{*
 005BA9C8    mov        eax,dword ptr [edx]
 005BA9CA    mov        dword ptr [ecx],eax
 005BA9CC    mov        eax,dword ptr [edx+4]
 005BA9CF    mov        dword ptr [ecx+4],eax
 005BA9D2    ret
*}
//end;

//005BA9D4
constructor TRaveSurface.Create(AOwner:TComponent);
begin
{*
 005BA9D4    push       ebx
 005BA9D5    push       esi
 005BA9D6    test       dl,dl
>005BA9D8    je         005BA9E2
 005BA9DA    add        esp,0FFFFFFF0
 005BA9DD    call       @ClassCreate
 005BA9E2    mov        ebx,edx
 005BA9E4    mov        esi,eax
 005BA9E6    xor        edx,edx
 005BA9E8    mov        eax,esi
 005BA9EA    call       TRaveGraphicBase.Create
 005BA9EF    mov        dl,1
 005BA9F1    mov        eax,[00429D9C]; TBrush
 005BA9F6    call       TBrush.Create; TBrush.Create
 005BA9FB    mov        dword ptr [esi+0F8],eax; TRaveSurface.?fF8:TBrush
 005BAA01    xor        edx,edx
 005BAA03    mov        eax,esi
 005BAA05    mov        ecx,dword ptr [eax]
 005BAA07    call       dword ptr [ecx+0F4]; TRaveLine.SetColor
 005BAA0D    mov        edx,0FFFFFF
 005BAA12    mov        eax,esi
 005BAA14    mov        ecx,dword ptr [eax]
 005BAA16    call       dword ptr [ecx+0FC]; TRaveRectangle.SetFillColor
 005BAA1C    mov        eax,esi
 005BAA1E    test       bl,bl
>005BAA20    je         005BAA31
 005BAA22    call       @AfterConstruction
 005BAA27    pop        dword ptr fs:[0]
 005BAA2E    add        esp,0C
 005BAA31    mov        eax,esi
 005BAA33    pop        esi
 005BAA34    pop        ebx
 005BAA35    ret
*}
end;

//005BAA38
destructor TRaveSurface.Destroy;
begin
{*
 005BAA38    push       ebx
 005BAA39    push       esi
 005BAA3A    call       @BeforeDestruction
 005BAA3F    mov        ebx,edx
 005BAA41    mov        esi,eax
 005BAA43    lea        eax,[esi+0F8]; TRaveSurface.?fF8:TBrush
 005BAA49    call       FreeAndNil
 005BAA4E    mov        edx,ebx
 005BAA50    and        dl,0FC
 005BAA53    mov        eax,esi
 005BAA55    call       TRaveGraphicBase.Destroy
 005BAA5A    test       bl,bl
>005BAA5C    jle        005BAA65
 005BAA5E    mov        eax,esi
 005BAA60    call       @ClassDestroy
 005BAA65    pop        esi
 005BAA66    pop        ebx
 005BAA67    ret
*}
end;

//005BAA68
procedure TRaveRectangle.SetFillColor;
begin
{*
 005BAA68    push       ebx
 005BAA69    mov        ebx,eax
 005BAA6B    mov        eax,dword ptr [ebx+0F8]; TRaveRectangle.?fF8:TBrush
 005BAA71    call       TBrush.SetColor
 005BAA76    mov        eax,ebx
 005BAA78    call       005A8540
 005BAA7D    pop        ebx
 005BAA7E    ret
*}
end;

//005BAA80
procedure TRaveRectangle.GetFillColor;
begin
{*
 005BAA80    mov        eax,dword ptr [eax+0F8]; TRaveRectangle.?fF8:TBrush
 005BAA86    call       TBrush.GetColor
 005BAA8B    ret
*}
end;

//005BAA8C
procedure TRaveRectangle.SetFillStyle;
begin
{*
 005BAA8C    push       ebx
 005BAA8D    mov        ebx,eax
 005BAA8F    mov        eax,dword ptr [ebx+0F8]; TRaveRectangle.?fF8:TBrush
 005BAA95    call       TBrush.SetStyle
 005BAA9A    mov        eax,ebx
 005BAA9C    call       005A8540
 005BAAA1    pop        ebx
 005BAAA2    ret
*}
end;

//005BAAA4
procedure TRaveRectangle.GetFillStyle;
begin
{*
 005BAAA4    push       ebx
 005BAAA5    mov        ebx,eax
 005BAAA7    mov        eax,dword ptr [ebx+0F8]; TRaveRectangle.?fF8:TBrush
 005BAAAD    call       TBrush.GetStyle
 005BAAB2    pop        ebx
 005BAAB3    ret
*}
end;

//005BAAB4
constructor TRaveRectangle.Create(AOwner:TComponent);
begin
{*
 005BAAB4    push       ebp
 005BAAB5    mov        ebp,esp
 005BAAB7    add        esp,0FFFFFFE0
 005BAABA    push       ebx
 005BAABB    push       esi
 005BAABC    test       dl,dl
>005BAABE    je         005BAAC8
 005BAAC0    add        esp,0FFFFFFF0
 005BAAC3    call       @ClassCreate
 005BAAC8    mov        ebx,edx
 005BAACA    mov        esi,eax
 005BAACC    xor        edx,edx
 005BAACE    mov        eax,esi
 005BAAD0    call       TRaveSurface.Create
 005BAAD5    push       0
 005BAAD7    push       0
 005BAAD9    push       0
 005BAADB    push       0
 005BAADD    push       40000000
 005BAAE2    push       0
 005BAAE4    push       3FF00000
 005BAAE9    push       0
 005BAAEB    lea        eax,[ebp-20]
 005BAAEE    call       005A5B94
 005BAAF3    lea        edx,[ebp-20]
 005BAAF6    mov        eax,esi
 005BAAF8    call       005AA190
 005BAAFD    mov        eax,esi
 005BAAFF    test       bl,bl
>005BAB01    je         005BAB12
 005BAB03    call       @AfterConstruction
 005BAB08    pop        dword ptr fs:[0]
 005BAB0F    add        esp,0C
 005BAB12    mov        eax,esi
 005BAB14    pop        esi
 005BAB15    pop        ebx
 005BAB16    mov        esp,ebp
 005BAB18    pop        ebp
 005BAB19    ret
*}
end;

//005BAB1C
//procedure sub_005BAB1C(?:?);
//begin
{*
 005BAB1C    push       ebx
 005BAB1D    push       esi
 005BAB1E    add        esp,0FFFFFFF8
 005BAB21    mov        esi,edx
 005BAB23    mov        ebx,eax
 005BAB25    push       esp
 005BAB26    lea        eax,[esp+8]
 005BAB2A    push       eax
 005BAB2B    xor        ecx,ecx
 005BAB2D    mov        edx,dword ptr [esi+10]
 005BAB30    mov        eax,ebx
 005BAB32    call       005B99A4
 005BAB37    mov        edx,dword ptr [ebx+0F8]; TRaveSquare.?fF8:TBrush
 005BAB3D    mov        eax,dword ptr [esi+14]
 005BAB40    mov        ecx,dword ptr [eax]
 005BAB42    call       dword ptr [ecx+8]
 005BAB45    fld        qword ptr [ebx+100]; TRaveSquare.HRadius:TRaveUnits
 005BAB4B    fcomp      dword ptr ds:[5BAC90]; 0:Single
 005BAB51    fnstsw     al
 005BAB53    sahf
>005BAB54    je         005BAC14
 005BAB5A    fld        qword ptr [ebx+108]; TRaveSquare.VRadius:TRaveUnits
 005BAB60    fcomp      dword ptr ds:[5BAC90]; 0:Single
 005BAB66    fnstsw     al
 005BAB68    sahf
>005BAB69    je         005BAC14
 005BAB6F    mov        eax,ebx
 005BAB71    mov        edx,dword ptr [eax]
 005BAB73    call       dword ptr [edx+64]; TRaveSquare.sub_005A9744
 005BAB76    add        esp,0FFFFFFF8
 005BAB79    fstp       qword ptr [esp]
 005BAB7C    wait
 005BAB7D    mov        eax,ebx
 005BAB7F    call       005AAE14
 005BAB84    sub        eax,dword ptr [esp+4]
 005BAB88    add        eax,2
 005BAB8B    push       eax
 005BAB8C    mov        eax,ebx
 005BAB8E    mov        edx,dword ptr [eax]
 005BAB90    call       dword ptr [edx+68]; TRaveSquare.sub_005A9770
 005BAB93    add        esp,0FFFFFFF8
 005BAB96    fstp       qword ptr [esp]
 005BAB99    wait
 005BAB9A    mov        eax,ebx
 005BAB9C    call       005AAE30
 005BABA1    sub        eax,dword ptr [esp+8]
 005BABA5    add        eax,2
 005BABA8    push       eax
 005BABA9    push       dword ptr [ebx+104]; TRaveSquare.?f104:dword
 005BABAF    push       dword ptr [ebx+100]; TRaveSquare.HRadius:TRaveUnits
 005BABB5    mov        eax,ebx
 005BABB7    call       005AADB4
 005BABBC    add        eax,eax
 005BABBE    push       eax
 005BABBF    push       dword ptr [ebx+10C]; TRaveSquare.?f10C:dword
 005BABC5    push       dword ptr [ebx+108]; TRaveSquare.VRadius:TRaveUnits
 005BABCB    mov        eax,ebx
 005BABCD    call       005AADE4
 005BABD2    add        eax,eax
 005BABD4    push       eax
 005BABD5    mov        eax,ebx
 005BABD7    mov        edx,dword ptr [eax]
 005BABD9    call       dword ptr [edx+60]; TRaveSquare.sub_005A970C
 005BABDC    add        esp,0FFFFFFF8
 005BABDF    fstp       qword ptr [esp]
 005BABE2    wait
 005BABE3    mov        eax,ebx
 005BABE5    call       005AAE30
 005BABEA    add        eax,dword ptr [esp+10]
 005BABEE    push       eax
 005BABEF    mov        eax,ebx
 005BABF1    mov        edx,dword ptr [eax]
 005BABF3    call       dword ptr [edx+5C]; TRaveSquare.sub_005A96D4
 005BABF6    add        esp,0FFFFFFF8
 005BABF9    fstp       qword ptr [esp]
 005BABFC    wait
 005BABFD    mov        eax,ebx
 005BABFF    call       005AAE14
 005BAC04    mov        edx,eax
 005BAC06    add        edx,dword ptr [esp+14]
 005BAC0A    mov        eax,esi
 005BAC0C    pop        ecx
 005BAC0D    call       TCanvas.RoundRect
>005BAC12    jmp        005BAC8B
 005BAC14    mov        eax,ebx
 005BAC16    mov        edx,dword ptr [eax]
 005BAC18    call       dword ptr [edx+64]; TRaveSquare.sub_005A9744
 005BAC1B    add        esp,0FFFFFFF8
 005BAC1E    fstp       qword ptr [esp]
 005BAC21    wait
 005BAC22    mov        eax,ebx
 005BAC24    call       005AAE14
 005BAC29    sub        eax,dword ptr [esp+4]
 005BAC2D    add        eax,2
 005BAC30    push       eax
 005BAC31    mov        eax,ebx
 005BAC33    mov        edx,dword ptr [eax]
 005BAC35    call       dword ptr [edx+68]; TRaveSquare.sub_005A9770
 005BAC38    add        esp,0FFFFFFF8
 005BAC3B    fstp       qword ptr [esp]
 005BAC3E    wait
 005BAC3F    mov        eax,ebx
 005BAC41    call       005AAE30
 005BAC46    sub        eax,dword ptr [esp+8]
 005BAC4A    add        eax,2
 005BAC4D    push       eax
 005BAC4E    mov        eax,ebx
 005BAC50    mov        edx,dword ptr [eax]
 005BAC52    call       dword ptr [edx+60]; TRaveSquare.sub_005A970C
 005BAC55    add        esp,0FFFFFFF8
 005BAC58    fstp       qword ptr [esp]
 005BAC5B    wait
 005BAC5C    mov        eax,ebx
 005BAC5E    call       005AAE30
 005BAC63    add        eax,dword ptr [esp+8]
 005BAC67    push       eax
 005BAC68    mov        eax,ebx
 005BAC6A    mov        edx,dword ptr [eax]
 005BAC6C    call       dword ptr [edx+5C]; TRaveSquare.sub_005A96D4
 005BAC6F    add        esp,0FFFFFFF8
 005BAC72    fstp       qword ptr [esp]
 005BAC75    wait
 005BAC76    mov        eax,ebx
 005BAC78    call       005AAE14
 005BAC7D    mov        edx,eax
 005BAC7F    add        edx,dword ptr [esp+0C]
 005BAC83    mov        eax,esi
 005BAC85    pop        ecx
 005BAC86    call       TCanvas.Rectangle
 005BAC8B    pop        ecx
 005BAC8C    pop        edx
 005BAC8D    pop        esi
 005BAC8E    pop        ebx
 005BAC8F    ret
*}
//end;

//005BAC94
//procedure TRaveRectangle.SetHRadius(Self:TRaveRectangle; ?:?; ?:?);
//begin
{*
 005BAC94    push       ebp
 005BAC95    mov        ebp,esp
 005BAC97    mov        edx,dword ptr [ebp+8]
 005BAC9A    mov        dword ptr [eax+100],edx; TRaveRectangle.HRadius:TRaveUnits
 005BACA0    mov        edx,dword ptr [ebp+0C]
 005BACA3    mov        dword ptr [eax+104],edx; TRaveRectangle.?f104:dword
 005BACA9    call       005A8540
 005BACAE    pop        ebp
 005BACAF    ret        8
*}
//end;

//005BACB4
//procedure TRaveRectangle.SetVRadius(Self:TRaveRectangle; ?:?; ?:?);
//begin
{*
 005BACB4    push       ebp
 005BACB5    mov        ebp,esp
 005BACB7    mov        edx,dword ptr [ebp+8]
 005BACBA    mov        dword ptr [eax+108],edx; TRaveRectangle.VRadius:TRaveUnits
 005BACC0    mov        edx,dword ptr [ebp+0C]
 005BACC3    mov        dword ptr [eax+10C],edx; TRaveRectangle.?f10C:dword
 005BACC9    call       005A8540
 005BACCE    pop        ebp
 005BACCF    ret        8
*}
//end;

//005BACD4
//procedure sub_005BACD4(?:?);
//begin
{*
 005BACD4    push       esi
 005BACD5    push       edi
 005BACD6    add        esp,0FFFFFFF8
 005BACD9    mov        edi,edx
 005BACDB    mov        esi,eax
 005BACDD    mov        eax,esi
 005BACDF    mov        edx,dword ptr [eax]
 005BACE1    call       dword ptr [edx+0B8]; TRaveSquare.sub_005AAA88
 005BACE7    test       al,al
>005BACE9    je         005BADE3
 005BACEF    push       esp
 005BACF0    lea        eax,[esp+8]
 005BACF4    push       eax
 005BACF5    mov        ecx,edi
 005BACF7    xor        edx,edx
 005BACF9    mov        eax,esi
 005BACFB    call       005B99A4
 005BAD00    mov        eax,edi
 005BAD02    mov        edx,dword ptr [eax]
 005BAD04    call       dword ptr [edx+74]
 005BAD07    mov        eax,dword ptr [eax+14]
 005BAD0A    mov        edx,dword ptr [esi+0F8]; TRaveSquare.?fF8:TBrush
 005BAD10    mov        ecx,dword ptr [eax]
 005BAD12    call       dword ptr [ecx+8]
 005BAD15    fld        qword ptr [esi+100]; TRaveSquare.HRadius:TRaveUnits
 005BAD1B    fcomp      dword ptr ds:[5BADE8]; 0:Single
 005BAD21    fnstsw     al
 005BAD23    sahf
>005BAD24    je         005BADA1
 005BAD26    fld        qword ptr [esi+108]; TRaveSquare.VRadius:TRaveUnits
 005BAD2C    fcomp      dword ptr ds:[5BADE8]; 0:Single
 005BAD32    fnstsw     al
 005BAD34    sahf
>005BAD35    je         005BADA1
 005BAD37    mov        eax,esi
 005BAD39    mov        edx,dword ptr [eax]
 005BAD3B    call       dword ptr [edx+5C]; TRaveSquare.sub_005A96D4
 005BAD3E    add        esp,0FFFFFFF8
 005BAD41    fstp       qword ptr [esp]
 005BAD44    wait
 005BAD45    mov        eax,esi
 005BAD47    mov        edx,dword ptr [eax]
 005BAD49    call       dword ptr [edx+60]; TRaveSquare.sub_005A970C
 005BAD4C    add        esp,0FFFFFFF8
 005BAD4F    fstp       qword ptr [esp]
 005BAD52    wait
 005BAD53    mov        eax,esi
 005BAD55    mov        edx,dword ptr [eax]
 005BAD57    call       dword ptr [edx+64]; TRaveSquare.sub_005A9744
 005BAD5A    add        esp,0FFFFFFF8
 005BAD5D    fstp       qword ptr [esp]
 005BAD60    wait
 005BAD61    mov        eax,esi
 005BAD63    mov        edx,dword ptr [eax]
 005BAD65    call       dword ptr [edx+68]; TRaveSquare.sub_005A9770
 005BAD68    add        esp,0FFFFFFF8
 005BAD6B    fstp       qword ptr [esp]
 005BAD6E    wait
 005BAD6F    fld        qword ptr [esi+100]; TRaveSquare.HRadius:TRaveUnits
 005BAD75    fmul       dword ptr ds:[5BADEC]; 2:Single
 005BAD7B    add        esp,0FFFFFFF8
 005BAD7E    fstp       qword ptr [esp]
 005BAD81    wait
 005BAD82    fld        qword ptr [esi+108]; TRaveSquare.VRadius:TRaveUnits
 005BAD88    fmul       dword ptr ds:[5BADEC]; 2:Single
 005BAD8E    add        esp,0FFFFFFF8
 005BAD91    fstp       qword ptr [esp]
 005BAD94    wait
 005BAD95    mov        eax,edi
 005BAD97    mov        edx,dword ptr [eax]
 005BAD99    call       dword ptr [edx+0E4]
>005BAD9F    jmp        005BADE3
 005BADA1    mov        eax,esi
 005BADA3    mov        edx,dword ptr [eax]
 005BADA5    call       dword ptr [edx+5C]; TRaveSquare.sub_005A96D4
 005BADA8    add        esp,0FFFFFFF8
 005BADAB    fstp       qword ptr [esp]
 005BADAE    wait
 005BADAF    mov        eax,esi
 005BADB1    mov        edx,dword ptr [eax]
 005BADB3    call       dword ptr [edx+60]; TRaveSquare.sub_005A970C
 005BADB6    add        esp,0FFFFFFF8
 005BADB9    fstp       qword ptr [esp]
 005BADBC    wait
 005BADBD    mov        eax,esi
 005BADBF    mov        edx,dword ptr [eax]
 005BADC1    call       dword ptr [edx+64]; TRaveSquare.sub_005A9744
 005BADC4    add        esp,0FFFFFFF8
 005BADC7    fstp       qword ptr [esp]
 005BADCA    wait
 005BADCB    mov        eax,esi
 005BADCD    mov        edx,dword ptr [eax]
 005BADCF    call       dword ptr [edx+68]; TRaveSquare.sub_005A9770
 005BADD2    add        esp,0FFFFFFF8
 005BADD5    fstp       qword ptr [esp]
 005BADD8    wait
 005BADD9    mov        eax,edi
 005BADDB    mov        edx,dword ptr [eax]
 005BADDD    call       dword ptr [edx+0E0]
 005BADE3    pop        ecx
 005BADE4    pop        edx
 005BADE5    pop        edi
 005BADE6    pop        esi
 005BADE7    ret
*}
//end;

//005BADF0
constructor TRaveSquare.Create(AOwner:TComponent);
begin
{*
 005BADF0    push       ebp
 005BADF1    mov        ebp,esp
 005BADF3    add        esp,0FFFFFFE0
 005BADF6    push       ebx
 005BADF7    push       esi
 005BADF8    test       dl,dl
>005BADFA    je         005BAE04
 005BADFC    add        esp,0FFFFFFF0
 005BADFF    call       @ClassCreate
 005BAE04    mov        ebx,edx
 005BAE06    mov        esi,eax
 005BAE08    xor        edx,edx
 005BAE0A    mov        eax,esi
 005BAE0C    call       TRaveRectangle.Create
 005BAE11    push       0
 005BAE13    push       0
 005BAE15    push       0
 005BAE17    push       0
 005BAE19    push       3FF00000
 005BAE1E    push       0
 005BAE20    push       3FF00000
 005BAE25    push       0
 005BAE27    lea        eax,[ebp-20]
 005BAE2A    call       005A5B94
 005BAE2F    lea        edx,[ebp-20]
 005BAE32    mov        eax,esi
 005BAE34    call       005AA190
 005BAE39    mov        eax,esi
 005BAE3B    test       bl,bl
>005BAE3D    je         005BAE4E
 005BAE3F    call       @AfterConstruction
 005BAE44    pop        dword ptr fs:[0]
 005BAE4B    add        esp,0C
 005BAE4E    mov        eax,esi
 005BAE50    pop        esi
 005BAE51    pop        ebx
 005BAE52    mov        esp,ebp
 005BAE54    pop        ebp
 005BAE55    ret
*}
end;

//005BAE58
//procedure sub_005BAE58(?:?; ?:?);
//begin
{*
 005BAE58    push       ebp
 005BAE59    mov        ebp,esp
 005BAE5B    push       esi
 005BAE5C    mov        eax,dword ptr [ecx]
 005BAE5E    sub        eax,dword ptr [edx]
 005BAE60    mov        esi,dword ptr [ecx+4]
 005BAE63    sub        esi,dword ptr [edx+4]
 005BAE66    cmp        esi,eax
>005BAE68    jle        005BAE72
 005BAE6A    add        eax,dword ptr [edx+4]
 005BAE6D    mov        dword ptr [ecx+4],eax
>005BAE70    jmp        005BAE76
 005BAE72    add        esi,dword ptr [edx]
 005BAE74    mov        dword ptr [ecx],esi
 005BAE76    pop        esi
 005BAE77    pop        ebp
 005BAE78    ret        4
*}
//end;

//005BAE7C
procedure sub_005BAE7C;
begin
{*
 005BAE7C    push       ebx
 005BAE7D    add        esp,0FFFFFFE0
 005BAE80    mov        ebx,eax
 005BAE82    mov        eax,ebx
 005BAE84    mov        edx,dword ptr [eax]
 005BAE86    call       dword ptr [edx+5C]; TRaveSquare.sub_005A96D4
 005BAE89    fstp       qword ptr [esp]
 005BAE8C    wait
 005BAE8D    mov        eax,ebx
 005BAE8F    mov        edx,dword ptr [eax]
 005BAE91    call       dword ptr [edx+60]; TRaveSquare.sub_005A970C
 005BAE94    fstp       qword ptr [esp+8]
 005BAE98    wait
 005BAE99    mov        eax,ebx
 005BAE9B    mov        edx,dword ptr [eax]
 005BAE9D    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005BAEA3    fstp       qword ptr [esp+10]
 005BAEA7    wait
 005BAEA8    mov        eax,ebx
 005BAEAA    mov        edx,dword ptr [eax]
 005BAEAC    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005BAEB2    fstp       qword ptr [esp+18]
 005BAEB6    wait
 005BAEB7    push       0F8
 005BAEB9    push       dword ptr [esp+8]
 005BAEBD    push       dword ptr [esp+8]
 005BAEC1    push       dword ptr [esp+18]
 005BAEC5    push       dword ptr [esp+18]
 005BAEC9    mov        ecx,ebx
 005BAECB    xor        edx,edx
 005BAECD    mov        eax,dword ptr [ebx+40]; TRaveSquare.?f40:TComponent
 005BAED0    call       005ABBD4
 005BAED5    push       0FA
 005BAED7    fld        qword ptr [esp+4]
 005BAEDB    fadd       qword ptr [esp+14]
 005BAEDF    add        esp,0FFFFFFF8
 005BAEE2    fstp       qword ptr [esp]
 005BAEE5    wait
 005BAEE6    push       dword ptr [esp+18]
 005BAEEA    push       dword ptr [esp+18]
 005BAEEE    mov        ecx,ebx
 005BAEF0    mov        dl,2
 005BAEF2    mov        eax,dword ptr [ebx+40]; TRaveSquare.?f40:TComponent
 005BAEF5    call       005ABBD4
 005BAEFA    push       0FA
 005BAEFC    push       dword ptr [esp+8]
 005BAF00    push       dword ptr [esp+8]
 005BAF04    fld        qword ptr [esp+14]
 005BAF08    fadd       qword ptr [esp+24]
 005BAF0C    add        esp,0FFFFFFF8
 005BAF0F    fstp       qword ptr [esp]
 005BAF12    wait
 005BAF13    mov        ecx,ebx
 005BAF15    mov        dl,5
 005BAF17    mov        eax,dword ptr [ebx+40]; TRaveSquare.?f40:TComponent
 005BAF1A    call       005ABBD4
 005BAF1F    push       0F8
 005BAF21    fld        qword ptr [esp+4]
 005BAF25    fadd       qword ptr [esp+14]
 005BAF29    add        esp,0FFFFFFF8
 005BAF2C    fstp       qword ptr [esp]
 005BAF2F    wait
 005BAF30    fld        qword ptr [esp+14]
 005BAF34    fadd       qword ptr [esp+24]
 005BAF38    add        esp,0FFFFFFF8
 005BAF3B    fstp       qword ptr [esp]
 005BAF3E    wait
 005BAF3F    mov        ecx,ebx
 005BAF41    mov        dl,7
 005BAF43    mov        eax,dword ptr [ebx+40]; TRaveSquare.?f40:TComponent
 005BAF46    call       005ABBD4
 005BAF4B    add        esp,20
 005BAF4E    pop        ebx
 005BAF4F    ret
*}
end;

//005BAF50
procedure sub_005BAF50;
begin
{*
 005BAF50    push       ebx
 005BAF51    add        esp,0FFFFFFE0
 005BAF54    mov        ebx,eax
 005BAF56    mov        eax,ebx
 005BAF58    mov        edx,dword ptr [eax]
 005BAF5A    call       dword ptr [edx+5C]; TRaveSquare.sub_005A96D4
 005BAF5D    fstp       qword ptr [esp]
 005BAF60    wait
 005BAF61    mov        eax,ebx
 005BAF63    mov        edx,dword ptr [eax]
 005BAF65    call       dword ptr [edx+60]; TRaveSquare.sub_005A970C
 005BAF68    fstp       qword ptr [esp+8]
 005BAF6C    wait
 005BAF6D    mov        eax,ebx
 005BAF6F    mov        edx,dword ptr [eax]
 005BAF71    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005BAF77    fstp       qword ptr [esp+10]
 005BAF7B    wait
 005BAF7C    mov        eax,ebx
 005BAF7E    mov        edx,dword ptr [eax]
 005BAF80    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005BAF86    fstp       qword ptr [esp+18]
 005BAF8A    wait
 005BAF8B    push       dword ptr [esp+4]
 005BAF8F    push       dword ptr [esp+4]
 005BAF93    push       dword ptr [esp+14]
 005BAF97    push       dword ptr [esp+14]
 005BAF9B    mov        ecx,ebx
 005BAF9D    xor        edx,edx
 005BAF9F    mov        eax,dword ptr [ebx+40]; TRaveSquare.?f40:TComponent
 005BAFA2    call       005ABC08
 005BAFA7    fld        qword ptr [esp]
 005BAFAA    fadd       qword ptr [esp+10]
 005BAFAE    add        esp,0FFFFFFF8
 005BAFB1    fstp       qword ptr [esp]
 005BAFB4    wait
 005BAFB5    push       dword ptr [esp+14]
 005BAFB9    push       dword ptr [esp+14]
 005BAFBD    mov        ecx,ebx
 005BAFBF    mov        dl,2
 005BAFC1    mov        eax,dword ptr [ebx+40]; TRaveSquare.?f40:TComponent
 005BAFC4    call       005ABC08
 005BAFC9    push       dword ptr [esp+4]
 005BAFCD    push       dword ptr [esp+4]
 005BAFD1    fld        qword ptr [esp+10]
 005BAFD5    fadd       qword ptr [esp+20]
 005BAFD9    add        esp,0FFFFFFF8
 005BAFDC    fstp       qword ptr [esp]
 005BAFDF    wait
 005BAFE0    mov        ecx,ebx
 005BAFE2    mov        dl,5
 005BAFE4    mov        eax,dword ptr [ebx+40]; TRaveSquare.?f40:TComponent
 005BAFE7    call       005ABC08
 005BAFEC    fld        qword ptr [esp]
 005BAFEF    fadd       qword ptr [esp+10]
 005BAFF3    add        esp,0FFFFFFF8
 005BAFF6    fstp       qword ptr [esp]
 005BAFF9    wait
 005BAFFA    fld        qword ptr [esp+10]
 005BAFFE    fadd       qword ptr [esp+20]
 005BB002    add        esp,0FFFFFFF8
 005BB005    fstp       qword ptr [esp]
 005BB008    wait
 005BB009    mov        ecx,ebx
 005BB00B    mov        dl,7
 005BB00D    mov        eax,dword ptr [ebx+40]; TRaveSquare.?f40:TComponent
 005BB010    call       005ABC08
 005BB015    add        esp,20
 005BB018    pop        ebx
 005BB019    ret
*}
end;

//005BB01C
//procedure sub_005BB01C(?:?; ?:?);
//begin
{*
 005BB01C    push       ebx
 005BB01D    push       esi
 005BB01E    add        esp,0FFFFFFE4
 005BB021    mov        esi,ecx
 005BB023    mov        ebx,edx
 005BB025    fld        qword ptr [esi]
 005BB027    fsub       qword ptr [ebx]
 005BB029    fstp       qword ptr [esp]
 005BB02C    wait
 005BB02D    fld        qword ptr [esi+8]
 005BB030    fsub       qword ptr [ebx+8]
 005BB033    fstp       qword ptr [esp+8]
 005BB037    wait
 005BB038    fld        qword ptr [esp]
 005BB03B    fabs
 005BB03D    fstp       tbyte ptr [esp+10]
 005BB041    wait
 005BB042    fld        qword ptr [esp+8]
 005BB046    fabs
 005BB048    fld        tbyte ptr [esp+10]
 005BB04C    fcompp
 005BB04E    fnstsw     al
 005BB050    sahf
>005BB051    jae        005BB087
 005BB053    fld        qword ptr [esp+8]
 005BB057    fabs
 005BB059    fcomp      dword ptr ds:[5BB0BC]; 0:Single
 005BB05F    fnstsw     al
 005BB061    sahf
>005BB062    je         005BB0B5
 005BB064    fld        qword ptr [esp]
 005BB067    fabs
 005BB069    fstp       tbyte ptr [esp+10]
 005BB06D    wait
 005BB06E    fld        qword ptr [esp+8]
 005BB072    fabs
 005BB074    fdivr      qword ptr [esp+8]
 005BB078    fld        tbyte ptr [esp+10]
 005BB07C    fmulp      st(1),st
 005BB07E    fadd       qword ptr [ebx+8]
 005BB081    fstp       qword ptr [esi+8]
 005BB084    wait
>005BB085    jmp        005BB0B5
 005BB087    fld        qword ptr [esp]
 005BB08A    fabs
 005BB08C    fcomp      dword ptr ds:[5BB0BC]; 0:Single
 005BB092    fnstsw     al
 005BB094    sahf
>005BB095    je         005BB0B5
 005BB097    fld        qword ptr [esp+8]
 005BB09B    fabs
 005BB09D    fstp       tbyte ptr [esp+10]
 005BB0A1    wait
 005BB0A2    fld        qword ptr [esp]
 005BB0A5    fabs
 005BB0A7    fdivr      qword ptr [esp]
 005BB0AA    fld        tbyte ptr [esp+10]
 005BB0AE    fmulp      st(1),st
 005BB0B0    fadd       qword ptr [ebx]
 005BB0B2    fstp       qword ptr [esi]
 005BB0B4    wait
 005BB0B5    add        esp,1C
 005BB0B8    pop        esi
 005BB0B9    pop        ebx
 005BB0BA    ret
*}
//end;

//005BB0C0
constructor TRaveEllipse.Create(AOwner:TComponent);
begin
{*
 005BB0C0    push       ebp
 005BB0C1    mov        ebp,esp
 005BB0C3    add        esp,0FFFFFFE0
 005BB0C6    push       ebx
 005BB0C7    push       esi
 005BB0C8    test       dl,dl
>005BB0CA    je         005BB0D4
 005BB0CC    add        esp,0FFFFFFF0
 005BB0CF    call       @ClassCreate
 005BB0D4    mov        ebx,edx
 005BB0D6    mov        esi,eax
 005BB0D8    xor        edx,edx
 005BB0DA    mov        eax,esi
 005BB0DC    call       TRaveSurface.Create
 005BB0E1    push       0
 005BB0E3    push       0
 005BB0E5    push       0
 005BB0E7    push       0
 005BB0E9    push       40000000
 005BB0EE    push       0
 005BB0F0    push       3FF00000
 005BB0F5    push       0
 005BB0F7    lea        eax,[ebp-20]
 005BB0FA    call       005A5B94
 005BB0FF    lea        edx,[ebp-20]
 005BB102    mov        eax,esi
 005BB104    call       005AA190
 005BB109    mov        eax,esi
 005BB10B    test       bl,bl
>005BB10D    je         005BB11E
 005BB10F    call       @AfterConstruction
 005BB114    pop        dword ptr fs:[0]
 005BB11B    add        esp,0C
 005BB11E    mov        eax,esi
 005BB120    pop        esi
 005BB121    pop        ebx
 005BB122    mov        esp,ebp
 005BB124    pop        ebp
 005BB125    ret
*}
end;

//005BB128
//procedure sub_005BB128(?:?);
//begin
{*
 005BB128    push       ebx
 005BB129    push       esi
 005BB12A    add        esp,0FFFFFFF8
 005BB12D    mov        esi,edx
 005BB12F    mov        ebx,eax
 005BB131    push       esp
 005BB132    lea        eax,[esp+8]
 005BB136    push       eax
 005BB137    xor        ecx,ecx
 005BB139    mov        edx,dword ptr [esi+10]
 005BB13C    mov        eax,ebx
 005BB13E    call       005B99A4
 005BB143    mov        edx,dword ptr [ebx+0F8]; TRaveCircle.?fF8:TBrush
 005BB149    mov        eax,dword ptr [esi+14]
 005BB14C    mov        ecx,dword ptr [eax]
 005BB14E    call       dword ptr [ecx+8]
 005BB151    mov        eax,ebx
 005BB153    mov        edx,dword ptr [eax]
 005BB155    call       dword ptr [edx+64]; TRaveCircle.sub_005A9744
 005BB158    add        esp,0FFFFFFF8
 005BB15B    fstp       qword ptr [esp]
 005BB15E    wait
 005BB15F    mov        eax,ebx
 005BB161    call       005AAE14
 005BB166    sub        eax,dword ptr [esp+4]
 005BB16A    add        eax,2
 005BB16D    push       eax
 005BB16E    mov        eax,ebx
 005BB170    mov        edx,dword ptr [eax]
 005BB172    call       dword ptr [edx+68]; TRaveCircle.sub_005A9770
 005BB175    add        esp,0FFFFFFF8
 005BB178    fstp       qword ptr [esp]
 005BB17B    wait
 005BB17C    mov        eax,ebx
 005BB17E    call       005AAE30
 005BB183    sub        eax,dword ptr [esp+8]
 005BB187    add        eax,2
 005BB18A    push       eax
 005BB18B    mov        eax,ebx
 005BB18D    mov        edx,dword ptr [eax]
 005BB18F    call       dword ptr [edx+60]; TRaveCircle.sub_005A970C
 005BB192    add        esp,0FFFFFFF8
 005BB195    fstp       qword ptr [esp]
 005BB198    wait
 005BB199    mov        eax,ebx
 005BB19B    call       005AAE30
 005BB1A0    add        eax,dword ptr [esp+8]
 005BB1A4    push       eax
 005BB1A5    mov        eax,ebx
 005BB1A7    mov        edx,dword ptr [eax]
 005BB1A9    call       dword ptr [edx+5C]; TRaveCircle.sub_005A96D4
 005BB1AC    add        esp,0FFFFFFF8
 005BB1AF    fstp       qword ptr [esp]
 005BB1B2    wait
 005BB1B3    mov        eax,ebx
 005BB1B5    call       005AAE14
 005BB1BA    mov        edx,eax
 005BB1BC    add        edx,dword ptr [esp+0C]
 005BB1C0    mov        eax,esi
 005BB1C2    pop        ecx
 005BB1C3    call       TCanvas.Ellipse
 005BB1C8    pop        ecx
 005BB1C9    pop        edx
 005BB1CA    pop        esi
 005BB1CB    pop        ebx
 005BB1CC    ret
*}
//end;

//005BB1D0
//procedure sub_005BB1D0(?:?);
//begin
{*
 005BB1D0    push       ebx
 005BB1D1    push       esi
 005BB1D2    add        esp,0FFFFFFF8
 005BB1D5    mov        esi,edx
 005BB1D7    mov        ebx,eax
 005BB1D9    mov        eax,ebx
 005BB1DB    mov        edx,dword ptr [eax]
 005BB1DD    call       dword ptr [edx+0B8]; TRaveCircle.sub_005AAA88
 005BB1E3    test       al,al
>005BB1E5    je         005BB24F
 005BB1E7    push       esp
 005BB1E8    lea        eax,[esp+8]
 005BB1EC    push       eax
 005BB1ED    mov        ecx,esi
 005BB1EF    xor        edx,edx
 005BB1F1    mov        eax,ebx
 005BB1F3    call       005B99A4
 005BB1F8    mov        eax,esi
 005BB1FA    mov        edx,dword ptr [eax]
 005BB1FC    call       dword ptr [edx+74]
 005BB1FF    mov        eax,dword ptr [eax+14]
 005BB202    mov        edx,dword ptr [ebx+0F8]; TRaveCircle.?fF8:TBrush
 005BB208    mov        ecx,dword ptr [eax]
 005BB20A    call       dword ptr [ecx+8]
 005BB20D    mov        eax,ebx
 005BB20F    mov        edx,dword ptr [eax]
 005BB211    call       dword ptr [edx+5C]; TRaveCircle.sub_005A96D4
 005BB214    add        esp,0FFFFFFF8
 005BB217    fstp       qword ptr [esp]
 005BB21A    wait
 005BB21B    mov        eax,ebx
 005BB21D    mov        edx,dword ptr [eax]
 005BB21F    call       dword ptr [edx+60]; TRaveCircle.sub_005A970C
 005BB222    add        esp,0FFFFFFF8
 005BB225    fstp       qword ptr [esp]
 005BB228    wait
 005BB229    mov        eax,ebx
 005BB22B    mov        edx,dword ptr [eax]
 005BB22D    call       dword ptr [edx+64]; TRaveCircle.sub_005A9744
 005BB230    add        esp,0FFFFFFF8
 005BB233    fstp       qword ptr [esp]
 005BB236    wait
 005BB237    mov        eax,ebx
 005BB239    mov        edx,dword ptr [eax]
 005BB23B    call       dword ptr [edx+68]; TRaveCircle.sub_005A9770
 005BB23E    add        esp,0FFFFFFF8
 005BB241    fstp       qword ptr [esp]
 005BB244    wait
 005BB245    mov        eax,esi
 005BB247    mov        edx,dword ptr [eax]
 005BB249    call       dword ptr [edx+0BC]
 005BB24F    pop        ecx
 005BB250    pop        edx
 005BB251    pop        esi
 005BB252    pop        ebx
 005BB253    ret
*}
//end;

//005BB254
constructor TRaveCircle.Create(AOwner:TComponent);
begin
{*
 005BB254    push       ebp
 005BB255    mov        ebp,esp
 005BB257    add        esp,0FFFFFFE0
 005BB25A    push       ebx
 005BB25B    push       esi
 005BB25C    test       dl,dl
>005BB25E    je         005BB268
 005BB260    add        esp,0FFFFFFF0
 005BB263    call       @ClassCreate
 005BB268    mov        ebx,edx
 005BB26A    mov        esi,eax
 005BB26C    xor        edx,edx
 005BB26E    mov        eax,esi
 005BB270    call       TRaveEllipse.Create
 005BB275    push       0
 005BB277    push       0
 005BB279    push       0
 005BB27B    push       0
 005BB27D    push       3FF00000
 005BB282    push       0
 005BB284    push       3FF00000
 005BB289    push       0
 005BB28B    lea        eax,[ebp-20]
 005BB28E    call       005A5B94
 005BB293    lea        edx,[ebp-20]
 005BB296    mov        eax,esi
 005BB298    call       005AA190
 005BB29D    mov        eax,esi
 005BB29F    test       bl,bl
>005BB2A1    je         005BB2B2
 005BB2A3    call       @AfterConstruction
 005BB2A8    pop        dword ptr fs:[0]
 005BB2AF    add        esp,0C
 005BB2B2    mov        eax,esi
 005BB2B4    pop        esi
 005BB2B5    pop        ebx
 005BB2B6    mov        esp,ebp
 005BB2B8    pop        ebp
 005BB2B9    ret
*}
end;

//005BB2BC
//procedure sub_005BB2BC(?:?; ?:?);
//begin
{*
 005BB2BC    push       ebp
 005BB2BD    mov        ebp,esp
 005BB2BF    push       esi
 005BB2C0    mov        eax,dword ptr [ecx]
 005BB2C2    sub        eax,dword ptr [edx]
 005BB2C4    mov        esi,dword ptr [ecx+4]
 005BB2C7    sub        esi,dword ptr [edx+4]
 005BB2CA    cmp        esi,eax
>005BB2CC    jle        005BB2D6
 005BB2CE    add        eax,dword ptr [edx+4]
 005BB2D1    mov        dword ptr [ecx+4],eax
>005BB2D4    jmp        005BB2DA
 005BB2D6    add        esi,dword ptr [edx]
 005BB2D8    mov        dword ptr [ecx],esi
 005BB2DA    pop        esi
 005BB2DB    pop        ebp
 005BB2DC    ret        4
*}
//end;

//005BB2E0
procedure sub_005BB2E0;
begin
{*
 005BB2E0    push       ebx
 005BB2E1    add        esp,0FFFFFFE0
 005BB2E4    mov        ebx,eax
 005BB2E6    mov        eax,ebx
 005BB2E8    mov        edx,dword ptr [eax]
 005BB2EA    call       dword ptr [edx+5C]; TRaveCircle.sub_005A96D4
 005BB2ED    fstp       qword ptr [esp]
 005BB2F0    wait
 005BB2F1    mov        eax,ebx
 005BB2F3    mov        edx,dword ptr [eax]
 005BB2F5    call       dword ptr [edx+60]; TRaveCircle.sub_005A970C
 005BB2F8    fstp       qword ptr [esp+8]
 005BB2FC    wait
 005BB2FD    mov        eax,ebx
 005BB2FF    mov        edx,dword ptr [eax]
 005BB301    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005BB307    fstp       qword ptr [esp+10]
 005BB30B    wait
 005BB30C    mov        eax,ebx
 005BB30E    mov        edx,dword ptr [eax]
 005BB310    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005BB316    fstp       qword ptr [esp+18]
 005BB31A    wait
 005BB31B    push       0F8
 005BB31D    push       dword ptr [esp+8]
 005BB321    push       dword ptr [esp+8]
 005BB325    push       dword ptr [esp+18]
 005BB329    push       dword ptr [esp+18]
 005BB32D    mov        ecx,ebx
 005BB32F    xor        edx,edx
 005BB331    mov        eax,dword ptr [ebx+40]; TRaveCircle.?f40:TComponent
 005BB334    call       005ABBD4
 005BB339    push       0FA
 005BB33B    fld        qword ptr [esp+4]
 005BB33F    fadd       qword ptr [esp+14]
 005BB343    add        esp,0FFFFFFF8
 005BB346    fstp       qword ptr [esp]
 005BB349    wait
 005BB34A    push       dword ptr [esp+18]
 005BB34E    push       dword ptr [esp+18]
 005BB352    mov        ecx,ebx
 005BB354    mov        dl,2
 005BB356    mov        eax,dword ptr [ebx+40]; TRaveCircle.?f40:TComponent
 005BB359    call       005ABBD4
 005BB35E    push       0FA
 005BB360    push       dword ptr [esp+8]
 005BB364    push       dword ptr [esp+8]
 005BB368    fld        qword ptr [esp+14]
 005BB36C    fadd       qword ptr [esp+24]
 005BB370    add        esp,0FFFFFFF8
 005BB373    fstp       qword ptr [esp]
 005BB376    wait
 005BB377    mov        ecx,ebx
 005BB379    mov        dl,5
 005BB37B    mov        eax,dword ptr [ebx+40]; TRaveCircle.?f40:TComponent
 005BB37E    call       005ABBD4
 005BB383    push       0F8
 005BB385    fld        qword ptr [esp+4]
 005BB389    fadd       qword ptr [esp+14]
 005BB38D    add        esp,0FFFFFFF8
 005BB390    fstp       qword ptr [esp]
 005BB393    wait
 005BB394    fld        qword ptr [esp+14]
 005BB398    fadd       qword ptr [esp+24]
 005BB39C    add        esp,0FFFFFFF8
 005BB39F    fstp       qword ptr [esp]
 005BB3A2    wait
 005BB3A3    mov        ecx,ebx
 005BB3A5    mov        dl,7
 005BB3A7    mov        eax,dword ptr [ebx+40]; TRaveCircle.?f40:TComponent
 005BB3AA    call       005ABBD4
 005BB3AF    add        esp,20
 005BB3B2    pop        ebx
 005BB3B3    ret
*}
end;

//005BB3B4
procedure sub_005BB3B4;
begin
{*
 005BB3B4    push       ebx
 005BB3B5    add        esp,0FFFFFFE0
 005BB3B8    mov        ebx,eax
 005BB3BA    mov        eax,ebx
 005BB3BC    mov        edx,dword ptr [eax]
 005BB3BE    call       dword ptr [edx+5C]; TRaveCircle.sub_005A96D4
 005BB3C1    fstp       qword ptr [esp]
 005BB3C4    wait
 005BB3C5    mov        eax,ebx
 005BB3C7    mov        edx,dword ptr [eax]
 005BB3C9    call       dword ptr [edx+60]; TRaveCircle.sub_005A970C
 005BB3CC    fstp       qword ptr [esp+8]
 005BB3D0    wait
 005BB3D1    mov        eax,ebx
 005BB3D3    mov        edx,dword ptr [eax]
 005BB3D5    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005BB3DB    fstp       qword ptr [esp+10]
 005BB3DF    wait
 005BB3E0    mov        eax,ebx
 005BB3E2    mov        edx,dword ptr [eax]
 005BB3E4    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005BB3EA    fstp       qword ptr [esp+18]
 005BB3EE    wait
 005BB3EF    push       dword ptr [esp+4]
 005BB3F3    push       dword ptr [esp+4]
 005BB3F7    push       dword ptr [esp+14]
 005BB3FB    push       dword ptr [esp+14]
 005BB3FF    mov        ecx,ebx
 005BB401    xor        edx,edx
 005BB403    mov        eax,dword ptr [ebx+40]; TRaveCircle.?f40:TComponent
 005BB406    call       005ABC08
 005BB40B    fld        qword ptr [esp]
 005BB40E    fadd       qword ptr [esp+10]
 005BB412    add        esp,0FFFFFFF8
 005BB415    fstp       qword ptr [esp]
 005BB418    wait
 005BB419    push       dword ptr [esp+14]
 005BB41D    push       dword ptr [esp+14]
 005BB421    mov        ecx,ebx
 005BB423    mov        dl,2
 005BB425    mov        eax,dword ptr [ebx+40]; TRaveCircle.?f40:TComponent
 005BB428    call       005ABC08
 005BB42D    push       dword ptr [esp+4]
 005BB431    push       dword ptr [esp+4]
 005BB435    fld        qword ptr [esp+10]
 005BB439    fadd       qword ptr [esp+20]
 005BB43D    add        esp,0FFFFFFF8
 005BB440    fstp       qword ptr [esp]
 005BB443    wait
 005BB444    mov        ecx,ebx
 005BB446    mov        dl,5
 005BB448    mov        eax,dword ptr [ebx+40]; TRaveCircle.?f40:TComponent
 005BB44B    call       005ABC08
 005BB450    fld        qword ptr [esp]
 005BB453    fadd       qword ptr [esp+10]
 005BB457    add        esp,0FFFFFFF8
 005BB45A    fstp       qword ptr [esp]
 005BB45D    wait
 005BB45E    fld        qword ptr [esp+10]
 005BB462    fadd       qword ptr [esp+20]
 005BB466    add        esp,0FFFFFFF8
 005BB469    fstp       qword ptr [esp]
 005BB46C    wait
 005BB46D    mov        ecx,ebx
 005BB46F    mov        dl,7
 005BB471    mov        eax,dword ptr [ebx+40]; TRaveCircle.?f40:TComponent
 005BB474    call       005ABC08
 005BB479    add        esp,20
 005BB47C    pop        ebx
 005BB47D    ret
*}
end;

//005BB480
//procedure sub_005BB480(?:?; ?:?);
//begin
{*
 005BB480    push       ebx
 005BB481    push       esi
 005BB482    add        esp,0FFFFFFE4
 005BB485    mov        esi,ecx
 005BB487    mov        ebx,edx
 005BB489    fld        qword ptr [esi]
 005BB48B    fsub       qword ptr [ebx]
 005BB48D    fstp       qword ptr [esp]
 005BB490    wait
 005BB491    fld        qword ptr [esi+8]
 005BB494    fsub       qword ptr [ebx+8]
 005BB497    fstp       qword ptr [esp+8]
 005BB49B    wait
 005BB49C    fld        qword ptr [esp]
 005BB49F    fabs
 005BB4A1    fstp       tbyte ptr [esp+10]
 005BB4A5    wait
 005BB4A6    fld        qword ptr [esp+8]
 005BB4AA    fabs
 005BB4AC    fld        tbyte ptr [esp+10]
 005BB4B0    fcompp
 005BB4B2    fnstsw     al
 005BB4B4    sahf
>005BB4B5    jae        005BB4EB
 005BB4B7    fld        qword ptr [esp+8]
 005BB4BB    fabs
 005BB4BD    fcomp      dword ptr ds:[5BB520]; 0:Single
 005BB4C3    fnstsw     al
 005BB4C5    sahf
>005BB4C6    je         005BB519
 005BB4C8    fld        qword ptr [esp]
 005BB4CB    fabs
 005BB4CD    fstp       tbyte ptr [esp+10]
 005BB4D1    wait
 005BB4D2    fld        qword ptr [esp+8]
 005BB4D6    fabs
 005BB4D8    fdivr      qword ptr [esp+8]
 005BB4DC    fld        tbyte ptr [esp+10]
 005BB4E0    fmulp      st(1),st
 005BB4E2    fadd       qword ptr [ebx+8]
 005BB4E5    fstp       qword ptr [esi+8]
 005BB4E8    wait
>005BB4E9    jmp        005BB519
 005BB4EB    fld        qword ptr [esp]
 005BB4EE    fabs
 005BB4F0    fcomp      dword ptr ds:[5BB520]; 0:Single
 005BB4F6    fnstsw     al
 005BB4F8    sahf
>005BB4F9    je         005BB519
 005BB4FB    fld        qword ptr [esp+8]
 005BB4FF    fabs
 005BB501    fstp       tbyte ptr [esp+10]
 005BB505    wait
 005BB506    fld        qword ptr [esp]
 005BB509    fabs
 005BB50B    fdivr      qword ptr [esp]
 005BB50E    fld        tbyte ptr [esp+10]
 005BB512    fmulp      st(1),st
 005BB514    fadd       qword ptr [ebx]
 005BB516    fstp       qword ptr [esi]
 005BB518    wait
 005BB519    add        esp,1C
 005BB51C    pop        esi
 005BB51D    pop        ebx
 005BB51E    ret
*}
//end;

Initialization
//005BB554
{*
 005BB554    sub        dword ptr ds:[61F898],1
>005BB55B    jae        005BB56C
 005BB55D    mov        edx,5B9724; sub_005B9724
 005BB562    mov        eax,5BB578; 'RVCL'
 005BB567    call       005A7E10
 005BB56C    ret
*}
Finalization
end.