{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpBars;

interface

uses
  Classes, Windows, Graphics;

type
  TCodePage128 = (cpCodeA, cpCodeB, cpCodeC);
  TBarCodeRotation = (Rot0, Rot90, Rot180, Rot270);
  TRPBarsBase = class(TObject)
  public
    f8:?Double;//f8
    fC:dword;//fC
    f10:?Double;//f10
    f14:dword;//f14
    f18:?Double;//f18
    f1C:dword;//f1C
    f20:?Double;//f20
    f24:dword;//f24
    f28:?Double;//f28
    f2C:dword;//f2C
    f30:dword;//f30
    f34:String;//f34
    f38:?Double;//f38
    f3C:dword;//f3C
    f40:?Double;//f40
    f44:dword;//f44
    f48:TBrush;//f48
    f4C:TPen;//f4C
    f50:byte;//f50
    f54:dword;//f54
    f58:byte;//f58
    f59:byte;//f59
    f5A:byte;//f5A
    f5B:byte;//f5B
    f5C:byte;//f5C
    f5D:byte;//f5D
    f60:dword;//f60
    f62:word;//f62
    f64:dword;//f64
    f68:dword;//f68
    f6A:word;//f6A
    f6C:dword;//f6C
    f70:byte;//f70
    //procedure sub_005C9740(?:AnsiString); virtual;
    procedure sub_005C9804; virtual;
    procedure sub_005C9360(); virtual;
    //procedure sub_005C97E0(?:?); virtual;
    procedure @AbstractError(); virtual;
    //procedure sub_005C97E4(?:?); virtual;
    procedure @AbstractError(); virtual;
    //procedure sub_005C97F0(?:?); virtual;
    //procedure sub_005CA0B8(?:?); virtual;
    constructor sub_005C92C0; virtual;
    procedure @AbstractError(); virtual;
    //function sub_005C935C():?; virtual;
  end;
  TRPBarsPostNet = class(TRPBarsBase)
  public
    //procedure sub_005CB144(?:?); virtual;
    procedure sub_005CAD0C; virtual;
    //procedure sub_005CAEDC(?:?; ?:?); virtual;
    //procedure sub_005CAF6C(?:?); virtual;
    //procedure sub_005CADC0(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005CAD60(?:?); virtual;
    constructor Create; virtual;
    procedure sub_005CB008; virtual;
    //function sub_005CACA0(?:?):?; virtual;
  end;
  TRPBars2of5 = class(TRPBarsBase)
  public
    procedure sub_005CA17C; virtual;
    //procedure sub_005CA29C(?:?; ?:?); virtual;
    //procedure sub_005CA32C(?:?); virtual;
    //procedure sub_005CA274(?:?; ?:?); virtual;
    //procedure sub_005CA1D8(?:?); virtual;
    constructor Create; virtual;
    procedure sub_005CA400; virtual;
    //function sub_005CA110(?:?):?; virtual;
  end;
  TRPBarsCode39 = class(TRPBarsBase)
  public
    f78:byte;//f78
    procedure sub_005CA788; virtual;
    //procedure sub_005CA8FC(?:?; ?:?); virtual;
    //procedure sub_005CA98C(?:?); virtual;
    //procedure sub_005CA8D4(?:?; ?:?); virtual;
    //procedure sub_005CA84C(?:?); virtual;
    constructor Create; virtual;
    procedure sub_005CAA54; virtual;
    //function sub_005CA6E4(?:?):?; virtual;
  end;
  TRPBarsCode128 = class(TRPBarsBase)
  public
    f78:byte;//f78
    f79:byte;//f79
    f7A:byte;//f7A
    f7B:byte;//f7B
    procedure sub_005CB2F4; virtual;
    //procedure sub_005CBA08(?:?; ?:?); virtual;
    //procedure sub_005CBAB4(?:?); virtual;
    //procedure sub_005CB9A0(?:?; ?:?); virtual;
    //procedure sub_005CB35C(?:?); virtual;
    constructor Create; virtual;
    procedure sub_005CBB0C; virtual;
    //function sub_005CB244(?:?):?; virtual;
  end;
  TRPBarsUPC = class(TRPBarsBase)
  public
    f78:byte;//f78
    f7C:dword;//f7C
    //procedure sub_005CCE88(?:?); virtual;
    procedure sub_005CC164; virtual;
    procedure sub_005CBD90; virtual;
    procedure sub_005CCE80; virtual;
    //procedure sub_005CBEC4(?:?; ?:?); virtual;
    //procedure sub_005CC040(?:?); virtual;
    //procedure sub_005CBE24(?:?; ?:?; ?:?); virtual;
    //procedure sub_005CBDC4(?:?); virtual;
    constructor Create; virtual;
    procedure sub_005CCAF8; virtual;
    //function sub_005CBD24(?:?):?; virtual;
    procedure sub_005CBF54; virtual;
  end;
  TRPBarsEAN = class(TRPBarsUPC)
  public
    procedure sub_005CD064; virtual;
    constructor Create; virtual;
    procedure sub_005CCF74; virtual;
  end;

implementation

{$R *.DFM}

//005C92C0
constructor sub_005C92C0;
begin
{*
 005C92C0    push       ebp
 005C92C1    mov        ebp,esp
 005C92C3    push       ecx
 005C92C4    push       ebx
 005C92C5    push       esi
 005C92C6    test       dl,dl
>005C92C8    je         005C92D2
 005C92CA    add        esp,0FFFFFFF0
 005C92CD    call       @ClassCreate
 005C92D2    mov        byte ptr [ebp-1],dl
 005C92D5    mov        ebx,eax
 005C92D7    mov        dword ptr [ebx+30],ecx; TRPBarsBase.?f30:dword
 005C92DA    mov        byte ptr [ebx+58],1; TRPBarsBase.?f58:byte
 005C92DE    mov        byte ptr [ebx+5B],0; TRPBarsBase.?f5B:byte
 005C92E2    mov        byte ptr [ebx+5C],1; TRPBarsBase.?f5C:byte
 005C92E6    mov        byte ptr [ebx+5D],0; TRPBarsBase.?f5D:byte
 005C92EA    mov        esi,dword ptr [ebx+30]; TRPBarsBase.?f30:dword
 005C92ED    test       esi,esi
>005C92EF    je         005C9312
 005C92F1    mov        eax,esi
 005C92F3    call       005844FC
 005C92F8    fstp       qword ptr [ebx+28]; TRPBarsBase.?f28:?Double
 005C92FB    wait
 005C92FC    mov        eax,dword ptr [ebx+30]; TRPBarsBase.?f30:dword
 005C92FF    call       005844BC
 005C9304    add        esp,0FFFFFFF8
 005C9307    fstp       qword ptr [esp]
 005C930A    wait
 005C930B    mov        eax,ebx
 005C930D    call       005C9470
 005C9312    xor        eax,eax
 005C9314    mov        dword ptr [ebx+18],eax; TRPBarsBase.?f18:?Double
 005C9317    mov        dword ptr [ebx+1C],3FE00000; TRPBarsBase.?f1C:dword
 005C931E    mov        dword ptr [ebx+10],47AE147B; TRPBarsBase.?f10:?Double
 005C9325    mov        dword ptr [ebx+14],3F847AE1; TRPBarsBase.?f14:dword
 005C932C    xor        eax,eax
 005C932E    mov        dword ptr [ebx+60],eax; TRPBarsBase.?f60:dword
 005C9331    mov        dword ptr [ebx+64],eax; TRPBarsBase.?f64:dword
 005C9334    xor        eax,eax
 005C9336    mov        dword ptr [ebx+68],eax; TRPBarsBase.?f68:dword
 005C9339    mov        dword ptr [ebx+6C],eax; TRPBarsBase.?f6C:dword
 005C933C    mov        eax,ebx
 005C933E    cmp        byte ptr [ebp-1],0
>005C9342    je         005C9353
 005C9344    call       @AfterConstruction
 005C9349    pop        dword ptr fs:[0]
 005C9350    add        esp,0C
 005C9353    mov        eax,ebx
 005C9355    pop        esi
 005C9356    pop        ebx
 005C9357    pop        ecx
 005C9358    pop        ebp
 005C9359    ret
*}
end;

//005C935C
//function sub_005C935C():?;
//begin
{*
 005C935C    mov        al,1
 005C935E    ret
*}
//end;

//005C9360
procedure sub_005C9360();
begin
{*
 005C9360    add        esp,0FFFFFFF8
 005C9363    xor        eax,eax
 005C9365    mov        dword ptr [esp],eax
 005C9368    mov        dword ptr [esp+4],eax
 005C936C    fld        qword ptr [esp]
 005C936F    pop        ecx
 005C9370    pop        edx
 005C9371    ret
*}
end;

//005C9374
//procedure sub_005C9374(?:dword);
//begin
{*
 005C9374    push       ebx
 005C9375    add        esp,0FFFFFFF8
 005C9378    mov        ebx,eax
 005C937A    mov        eax,ebx
 005C937C    call       005C9390
 005C9381    fadd       qword ptr [ebx+18]
 005C9384    fstp       qword ptr [esp]
 005C9387    wait
 005C9388    fld        qword ptr [esp]
 005C938B    pop        ecx
 005C938C    pop        edx
 005C938D    pop        ebx
 005C938E    ret
*}
//end;

//005C9390
//procedure sub_005C9390(?:TRPBarsBase);
//begin
{*
 005C9390    push       ebx
 005C9391    push       esi
 005C9392    add        esp,0FFFFFFF8
 005C9395    mov        ebx,eax
 005C9397    mov        esi,dword ptr [ebx+30]; TRPBarsBase.?f30:dword
 005C939A    test       esi,esi
>005C939C    je         005C93BC
 005C939E    cmp        byte ptr [ebx+58],0; TRPBarsBase.?f58:byte
>005C93A2    je         005C93BC
 005C93A4    mov        eax,esi
 005C93A6    mov        edx,dword ptr [eax]
 005C93A8    call       dword ptr [edx+12C]
 005C93AE    mov        eax,dword ptr [ebx+30]; TRPBarsBase.?f30:dword
 005C93B1    call       00588A4C
 005C93B6    fstp       qword ptr [esp]
 005C93B9    wait
>005C93BA    jmp        005C93C5
 005C93BC    xor        eax,eax
 005C93BE    mov        dword ptr [esp],eax
 005C93C1    mov        dword ptr [esp+4],eax
 005C93C5    fld        qword ptr [esp]
 005C93C8    pop        ecx
 005C93C9    pop        edx
 005C93CA    pop        esi
 005C93CB    pop        ebx
 005C93CC    ret
*}
//end;

//005C93D0
//function sub_005C93D0(?:TRPBarsBase):?;
//begin
{*
 005C93D0    push       ebx
 005C93D1    add        esp,0FFFFFFF8
 005C93D4    mov        ebx,eax
 005C93D6    mov        al,byte ptr [ebx+5D]; TRPBarsBase.?f5D:byte
 005C93D9    dec        eax
 005C93DA    sub        al,2
>005C93DC    jae        005C9422
 005C93DE    mov        al,byte ptr [ebx+5C]; TRPBarsBase.?f5C:byte
 005C93E1    dec        al
>005C93E3    je         005C93ED
 005C93E5    dec        al
>005C93E7    je         005C93FC
 005C93E9    dec        al
>005C93EB    jne        005C940C
 005C93ED    mov        eax,dword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C93F0    mov        dword ptr [esp],eax
 005C93F3    mov        eax,dword ptr [ebx+24]; TRPBarsBase.?f24:dword
 005C93F6    mov        dword ptr [esp+4],eax
>005C93FA    jmp        005C9464
 005C93FC    mov        eax,ebx
 005C93FE    mov        edx,dword ptr [eax]
 005C9400    call       dword ptr [edx+8]; TRPBarsBase.sub_005C9360
 005C9403    fadd       qword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C9406    fstp       qword ptr [esp]
 005C9409    wait
>005C940A    jmp        005C9464
 005C940C    mov        eax,ebx
 005C940E    mov        edx,dword ptr [eax]
 005C9410    call       dword ptr [edx+8]; TRPBarsBase.sub_005C9360
 005C9413    fdiv       dword ptr ds:[5C946C]; 2:Single
 005C9419    fadd       qword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C941C    fstp       qword ptr [esp]
 005C941F    wait
>005C9420    jmp        005C9464
 005C9422    mov        al,byte ptr [ebx+5C]; TRPBarsBase.?f5C:byte
 005C9425    dec        al
>005C9427    je         005C9431
 005C9429    dec        al
>005C942B    je         005C9440
 005C942D    dec        al
>005C942F    jne        005C9450
 005C9431    mov        eax,dword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C9434    mov        dword ptr [esp],eax
 005C9437    mov        eax,dword ptr [ebx+24]; TRPBarsBase.?f24:dword
 005C943A    mov        dword ptr [esp+4],eax
>005C943E    jmp        005C9464
 005C9440    mov        eax,ebx
 005C9442    mov        edx,dword ptr [eax]
 005C9444    call       dword ptr [edx+8]; TRPBarsBase.sub_005C9360
 005C9447    fsubr      qword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C944A    fstp       qword ptr [esp]
 005C944D    wait
>005C944E    jmp        005C9464
 005C9450    mov        eax,ebx
 005C9452    mov        edx,dword ptr [eax]
 005C9454    call       dword ptr [edx+8]; TRPBarsBase.sub_005C9360
 005C9457    fdiv       dword ptr ds:[5C946C]; 2:Single
 005C945D    fsubr      qword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C9460    fstp       qword ptr [esp]
 005C9463    wait
 005C9464    fld        qword ptr [esp]
 005C9467    pop        ecx
 005C9468    pop        edx
 005C9469    pop        ebx
 005C946A    ret
*}
//end;

//005C9470
//procedure sub_005C9470(?:TRPBarsBase; ?:?; ?:?);
//begin
{*
 005C9470    push       ebp
 005C9471    mov        ebp,esp
 005C9473    mov        edx,dword ptr [ebp+8]
 005C9476    mov        dword ptr [eax+20],edx; TRPBarsBase.?f20:?Double
 005C9479    mov        edx,dword ptr [ebp+0C]
 005C947C    mov        dword ptr [eax+24],edx; TRPBarsBase.?f24:dword
 005C947F    mov        byte ptr [eax+5C],1; TRPBarsBase.?f5C:byte
 005C9483    pop        ebp
 005C9484    ret        8
*}
//end;

//005C9488
//function sub_005C9488(?:TRPBarsBase):?;
//begin
{*
 005C9488    push       ebx
 005C9489    add        esp,0FFFFFFF8
 005C948C    mov        ebx,eax
 005C948E    mov        al,byte ptr [ebx+5D]; TRPBarsBase.?f5D:byte
 005C9491    dec        eax
 005C9492    sub        al,2
>005C9494    jae        005C94DA
 005C9496    mov        al,byte ptr [ebx+5C]; TRPBarsBase.?f5C:byte
 005C9499    dec        al
>005C949B    je         005C94A5
 005C949D    dec        al
>005C949F    je         005C94B5
 005C94A1    dec        al
>005C94A3    jne        005C94C4
 005C94A5    mov        eax,ebx
 005C94A7    mov        edx,dword ptr [eax]
 005C94A9    call       dword ptr [edx+8]; TRPBarsBase.sub_005C9360
 005C94AC    fsubr      qword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C94AF    fstp       qword ptr [esp]
 005C94B2    wait
>005C94B3    jmp        005C951C
 005C94B5    mov        eax,dword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C94B8    mov        dword ptr [esp],eax
 005C94BB    mov        eax,dword ptr [ebx+24]; TRPBarsBase.?f24:dword
 005C94BE    mov        dword ptr [esp+4],eax
>005C94C2    jmp        005C951C
 005C94C4    mov        eax,ebx
 005C94C6    mov        edx,dword ptr [eax]
 005C94C8    call       dword ptr [edx+8]; TRPBarsBase.sub_005C9360
 005C94CB    fdiv       dword ptr ds:[5C9524]; 2:Single
 005C94D1    fsubr      qword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C94D4    fstp       qword ptr [esp]
 005C94D7    wait
>005C94D8    jmp        005C951C
 005C94DA    mov        al,byte ptr [ebx+5C]; TRPBarsBase.?f5C:byte
 005C94DD    dec        al
>005C94DF    je         005C94E9
 005C94E1    dec        al
>005C94E3    je         005C94F9
 005C94E5    dec        al
>005C94E7    jne        005C9508
 005C94E9    mov        eax,ebx
 005C94EB    mov        edx,dword ptr [eax]
 005C94ED    call       dword ptr [edx+8]; TRPBarsBase.sub_005C9360
 005C94F0    fadd       qword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C94F3    fstp       qword ptr [esp]
 005C94F6    wait
>005C94F7    jmp        005C951C
 005C94F9    mov        eax,dword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C94FC    mov        dword ptr [esp],eax
 005C94FF    mov        eax,dword ptr [ebx+24]; TRPBarsBase.?f24:dword
 005C9502    mov        dword ptr [esp+4],eax
>005C9506    jmp        005C951C
 005C9508    mov        eax,ebx
 005C950A    mov        edx,dword ptr [eax]
 005C950C    call       dword ptr [edx+8]; TRPBarsBase.sub_005C9360
 005C950F    fdiv       dword ptr ds:[5C9524]; 2:Single
 005C9515    fadd       qword ptr [ebx+20]; TRPBarsBase.?f20:?Double
 005C9518    fstp       qword ptr [esp]
 005C951B    wait
 005C951C    fld        qword ptr [esp]
 005C951F    pop        ecx
 005C9520    pop        edx
 005C9521    pop        ebx
 005C9522    ret
*}
//end;

//005C9528
//procedure sub_005C9528(?:dword; ?:?; ?:?);
//begin
{*
 005C9528    push       ebp
 005C9529    mov        ebp,esp
 005C952B    mov        edx,dword ptr [ebp+8]
 005C952E    mov        dword ptr [eax+20],edx
 005C9531    mov        edx,dword ptr [ebp+0C]
 005C9534    mov        dword ptr [eax+24],edx
 005C9537    mov        byte ptr [eax+5C],2
 005C953B    pop        ebp
 005C953C    ret        8
*}
//end;

//005C9540
//function sub_005C9540(?:TRPBarsCode128):?;
//begin
{*
 005C9540    push       ebx
 005C9541    add        esp,0FFFFFFF8
 005C9544    mov        ebx,eax
 005C9546    mov        al,byte ptr [ebx+5D]; TRPBarsCode128.?f5D:byte
 005C9549    dec        eax
 005C954A    sub        al,2
>005C954C    jae        005C9598
 005C954E    mov        al,byte ptr [ebx+5C]; TRPBarsCode128.?f5C:byte
 005C9551    dec        al
>005C9553    je         005C955D
 005C9555    dec        al
>005C9557    je         005C9573
 005C9559    dec        al
>005C955B    jne        005C9589
 005C955D    mov        eax,ebx
 005C955F    mov        edx,dword ptr [eax]
 005C9561    call       dword ptr [edx+8]; TRPBarsCode128.sub_005CB2F4
 005C9564    fdiv       dword ptr ds:[5C95E8]; 2:Single
 005C956A    fsubr      qword ptr [ebx+20]; TRPBarsCode128.?f20:?Double
 005C956D    fstp       qword ptr [esp]
 005C9570    wait
>005C9571    jmp        005C95E0
 005C9573    mov        eax,ebx
 005C9575    mov        edx,dword ptr [eax]
 005C9577    call       dword ptr [edx+8]; TRPBarsCode128.sub_005CB2F4
 005C957A    fdiv       dword ptr ds:[5C95E8]; 2:Single
 005C9580    fadd       qword ptr [ebx+20]; TRPBarsCode128.?f20:?Double
 005C9583    fstp       qword ptr [esp]
 005C9586    wait
>005C9587    jmp        005C95E0
 005C9589    mov        eax,dword ptr [ebx+20]; TRPBarsCode128.?f20:?Double
 005C958C    mov        dword ptr [esp],eax
 005C958F    mov        eax,dword ptr [ebx+24]; TRPBarsCode128.?f24:dword
 005C9592    mov        dword ptr [esp+4],eax
>005C9596    jmp        005C95E0
 005C9598    mov        al,byte ptr [ebx+5C]; TRPBarsCode128.?f5C:byte
 005C959B    dec        al
>005C959D    je         005C95A7
 005C959F    dec        al
>005C95A1    je         005C95BD
 005C95A3    dec        al
>005C95A5    jne        005C95D3
 005C95A7    mov        eax,ebx
 005C95A9    mov        edx,dword ptr [eax]
 005C95AB    call       dword ptr [edx+8]; TRPBarsCode128.sub_005CB2F4
 005C95AE    fdiv       dword ptr ds:[5C95E8]; 2:Single
 005C95B4    fadd       qword ptr [ebx+20]; TRPBarsCode128.?f20:?Double
 005C95B7    fstp       qword ptr [esp]
 005C95BA    wait
>005C95BB    jmp        005C95E0
 005C95BD    mov        eax,ebx
 005C95BF    mov        edx,dword ptr [eax]
 005C95C1    call       dword ptr [edx+8]; TRPBarsCode128.sub_005CB2F4
 005C95C4    fdiv       dword ptr ds:[5C95E8]; 2:Single
 005C95CA    fsubr      qword ptr [ebx+20]; TRPBarsCode128.?f20:?Double
 005C95CD    fstp       qword ptr [esp]
 005C95D0    wait
>005C95D1    jmp        005C95E0
 005C95D3    mov        eax,dword ptr [ebx+20]; TRPBarsCode128.?f20:?Double
 005C95D6    mov        dword ptr [esp],eax
 005C95D9    mov        eax,dword ptr [ebx+24]; TRPBarsCode128.?f24:dword
 005C95DC    mov        dword ptr [esp+4],eax
 005C95E0    fld        qword ptr [esp]
 005C95E3    pop        ecx
 005C95E4    pop        edx
 005C95E5    pop        ebx
 005C95E6    ret
*}
//end;

//005C95EC
//procedure sub_005C95EC(?:dword; ?:?; ?:?);
//begin
{*
 005C95EC    push       ebp
 005C95ED    mov        ebp,esp
 005C95EF    mov        edx,dword ptr [ebp+8]
 005C95F2    mov        dword ptr [eax+20],edx
 005C95F5    mov        edx,dword ptr [ebp+0C]
 005C95F8    mov        dword ptr [eax+24],edx
 005C95FB    mov        byte ptr [eax+5C],0
 005C95FF    pop        ebp
 005C9600    ret        8
*}
//end;

//005C9604
//function sub_005C9604(?:TRPBarsBase):?;
//begin
{*
 005C9604    push       ebx
 005C9605    add        esp,0FFFFFFF8
 005C9608    mov        ebx,eax
 005C960A    mov        al,byte ptr [ebx+5D]; TRPBarsBase.?f5D:byte
 005C960D    add        al,0FE
 005C960F    sub        al,2
>005C9611    jae        005C9628
 005C9613    mov        eax,ebx
 005C9615    call       005C9390
 005C961A    fld        qword ptr [ebx+28]; TRPBarsBase.?f28:?Double
 005C961D    fsub       qword ptr [ebx+18]; TRPBarsBase.?f18:?Double
 005C9620    fsubrp     st(1),st
 005C9622    fstp       qword ptr [esp]
 005C9625    wait
>005C9626    jmp        005C963B
 005C9628    mov        eax,ebx
 005C962A    call       005C9390
 005C962F    fld        qword ptr [ebx+28]; TRPBarsBase.?f28:?Double
 005C9632    fadd       qword ptr [ebx+18]; TRPBarsBase.?f18:?Double
 005C9635    faddp      st(1),st
 005C9637    fstp       qword ptr [esp]
 005C963A    wait
 005C963B    fld        qword ptr [esp]
 005C963E    pop        ecx
 005C963F    pop        edx
 005C9640    pop        ebx
 005C9641    ret
*}
//end;

//005C9644
//procedure sub_005C9644(?:dword; ?:?);
//begin
{*
 005C9644    push       ebp
 005C9645    mov        ebp,esp
 005C9647    push       ebx
 005C9648    mov        ebx,eax
 005C964A    mov        eax,ebx
 005C964C    call       005C9390
 005C9651    fld        qword ptr [ebp+8]
 005C9654    fsub       qword ptr [ebx+18]
 005C9657    fsubrp     st(1),st
 005C9659    fstp       qword ptr [ebx+28]
 005C965C    wait
 005C965D    pop        ebx
 005C965E    pop        ebp
 005C965F    ret        8
*}
//end;

//005C9664
//function sub_005C9664(?:TRPBarsBase):?;
//begin
{*
 005C9664    push       ebx
 005C9665    add        esp,0FFFFFFF8
 005C9668    mov        ebx,eax
 005C966A    cmp        byte ptr [ebx+5A],0; TRPBarsBase.?f5A:byte
>005C966E    je         005C9699
 005C9670    mov        al,byte ptr [ebx+5D]; TRPBarsBase.?f5D:byte
 005C9673    add        al,0FE
 005C9675    sub        al,2
>005C9677    jae        005C9689
 005C9679    mov        eax,ebx
 005C967B    call       005C9390
 005C9680    fsubr      qword ptr [ebx+28]; TRPBarsBase.?f28:?Double
 005C9683    fstp       qword ptr [esp]
 005C9686    wait
>005C9687    jmp        005C96A6
 005C9689    mov        eax,ebx
 005C968B    call       005C9390
 005C9690    fadd       qword ptr [ebx+28]; TRPBarsBase.?f28:?Double
 005C9693    fstp       qword ptr [esp]
 005C9696    wait
>005C9697    jmp        005C96A6
 005C9699    mov        eax,dword ptr [ebx+28]; TRPBarsBase.?f28:?Double
 005C969C    mov        dword ptr [esp],eax
 005C969F    mov        eax,dword ptr [ebx+2C]; TRPBarsBase.?f2C:dword
 005C96A2    mov        dword ptr [esp+4],eax
 005C96A6    fld        qword ptr [esp]
 005C96A9    pop        ecx
 005C96AA    pop        edx
 005C96AB    pop        ebx
 005C96AC    ret
*}
//end;

//005C96B0
//procedure sub_005C96B0(?:dword; ?:?; ?:?);
//begin
{*
 005C96B0    push       ebp
 005C96B1    mov        ebp,esp
 005C96B3    push       ebx
 005C96B4    mov        ebx,eax
 005C96B6    cmp        byte ptr [ebx+5A],0
>005C96BA    je         005C96CC
 005C96BC    mov        eax,ebx
 005C96BE    call       005C9390
 005C96C3    fsubr      qword ptr [ebp+8]
 005C96C6    fstp       qword ptr [ebx+28]
 005C96C9    wait
>005C96CA    jmp        005C96D8
 005C96CC    mov        eax,dword ptr [ebp+8]
 005C96CF    mov        dword ptr [ebx+28],eax
 005C96D2    mov        eax,dword ptr [ebp+0C]
 005C96D5    mov        dword ptr [ebx+2C],eax
 005C96D8    pop        ebx
 005C96D9    pop        ebp
 005C96DA    ret        8
*}
//end;

//005C96E0
//procedure sub_005C96E0(?:TRPBarsBase);
//begin
{*
 005C96E0    push       ebx
 005C96E1    add        esp,0FFFFFFF8
 005C96E4    mov        ebx,eax
 005C96E6    mov        al,byte ptr [ebx+5D]; TRPBarsBase.?f5D:byte
 005C96E9    add        al,0FE
 005C96EB    sub        al,2
>005C96ED    jae        005C9714
 005C96EF    cmp        byte ptr [ebx+5A],0; TRPBarsBase.?f5A:byte
>005C96F3    je         005C9708
 005C96F5    mov        eax,ebx
 005C96F7    call       005C9390
 005C96FC    fsubr      qword ptr [ebx+28]; TRPBarsBase.?f28:?Double
 005C96FF    fsub       qword ptr [ebx+18]; TRPBarsBase.?f18:?Double
 005C9702    fstp       qword ptr [esp]
 005C9705    wait
>005C9706    jmp        005C9737
 005C9708    fld        qword ptr [ebx+28]; TRPBarsBase.?f28:?Double
 005C970B    fsub       qword ptr [ebx+18]; TRPBarsBase.?f18:?Double
 005C970E    fstp       qword ptr [esp]
 005C9711    wait
>005C9712    jmp        005C9737
 005C9714    cmp        byte ptr [ebx+5A],0; TRPBarsBase.?f5A:byte
>005C9718    je         005C972D
 005C971A    mov        eax,ebx
 005C971C    call       005C9390
 005C9721    fadd       qword ptr [ebx+28]; TRPBarsBase.?f28:?Double
 005C9724    fadd       qword ptr [ebx+18]; TRPBarsBase.?f18:?Double
 005C9727    fstp       qword ptr [esp]
 005C972A    wait
>005C972B    jmp        005C9737
 005C972D    fld        qword ptr [ebx+28]; TRPBarsBase.?f28:?Double
 005C9730    fadd       qword ptr [ebx+18]; TRPBarsBase.?f18:?Double
 005C9733    fstp       qword ptr [esp]
 005C9736    wait
 005C9737    fld        qword ptr [esp]
 005C973A    pop        ecx
 005C973B    pop        edx
 005C973C    pop        ebx
 005C973D    ret
*}
//end;

//005C9740
//procedure sub_005C9740(?:AnsiString);
//begin
{*
 005C9740    push       ebp
 005C9741    mov        ebp,esp
 005C9743    add        esp,0FFFFFFF8
 005C9746    push       ebx
 005C9747    push       esi
 005C9748    push       edi
 005C9749    xor        ecx,ecx
 005C974B    mov        dword ptr [ebp-8],ecx
 005C974E    mov        dword ptr [ebp-4],edx
 005C9751    mov        ebx,eax
 005C9753    mov        eax,dword ptr [ebp-4]
 005C9756    call       @LStrAddRef
 005C975B    xor        eax,eax
 005C975D    push       ebp
 005C975E    push       5C97CF
 005C9763    push       dword ptr fs:[eax]
 005C9766    mov        dword ptr fs:[eax],esp
 005C9769    lea        eax,[ebx+34]; TRPBarsBase.?f34:String
 005C976C    call       @LStrClr
 005C9771    mov        eax,dword ptr [ebp-4]
 005C9774    call       @LStrLen
 005C9779    mov        edi,eax
 005C977B    test       edi,edi
>005C977D    jle        005C97B4
 005C977F    mov        esi,1
 005C9784    mov        eax,dword ptr [ebp-4]
 005C9787    mov        dl,byte ptr [eax+esi-1]
 005C978B    mov        eax,ebx
 005C978D    mov        ecx,dword ptr [eax]
 005C978F    call       dword ptr [ecx+2C]; TRPBarsBase.sub_005C935C
 005C9792    test       al,al
>005C9794    je         005C97B0
 005C9796    lea        eax,[ebp-8]
 005C9799    mov        edx,dword ptr [ebp-4]
 005C979C    mov        dl,byte ptr [edx+esi-1]
 005C97A0    call       @LStrFromChar
 005C97A5    mov        edx,dword ptr [ebp-8]
 005C97A8    lea        eax,[ebx+34]; TRPBarsBase.?f34:String
 005C97AB    call       @LStrCat
 005C97B0    inc        esi
 005C97B1    dec        edi
<005C97B2    jne        005C9784
 005C97B4    xor        eax,eax
 005C97B6    pop        edx
 005C97B7    pop        ecx
 005C97B8    pop        ecx
 005C97B9    mov        dword ptr fs:[eax],edx
 005C97BC    push       5C97D6
 005C97C1    lea        eax,[ebp-8]
 005C97C4    mov        edx,2
 005C97C9    call       @LStrArrayClr
 005C97CE    ret
<005C97CF    jmp        @HandleFinally
<005C97D4    jmp        005C97C1
 005C97D6    pop        edi
 005C97D7    pop        esi
 005C97D8    pop        ebx
 005C97D9    pop        ecx
 005C97DA    pop        ecx
 005C97DB    pop        ebp
 005C97DC    ret
*}
//end;

//005C97E0
//procedure sub_005C97E0(?:?);
//begin
{*
 005C97E0    mov        byte ptr [eax+50],dl; TRPBarsCode128.?f50:byte
 005C97E3    ret
*}
//end;

//005C97E4
//procedure sub_005C97E4(?:?);
//begin
{*
 005C97E4    push       ebx
 005C97E5    mov        ebx,edx
 005C97E7    mov        eax,ebx
 005C97E9    call       @LStrClr
 005C97EE    pop        ebx
 005C97EF    ret
*}
//end;

//005C97F0
//procedure sub_005C97F0(?:?);
//begin
{*
 005C97F0    push       ebx
 005C97F1    push       esi
 005C97F2    mov        esi,edx
 005C97F4    mov        ebx,eax
 005C97F6    mov        eax,esi
 005C97F8    mov        edx,dword ptr [ebx+34]; TRPBarsBase.?f34:String
 005C97FB    call       @LStrAsg
 005C9800    pop        esi
 005C9801    pop        ebx
 005C9802    ret
*}
//end;

//005C9804
procedure sub_005C9804;
begin
{*
 005C9804    push       ebp
 005C9805    mov        ebp,esp
 005C9807    add        esp,0FFFFFFE0
 005C980A    push       ebx
 005C980B    push       esi
 005C980C    push       edi
 005C980D    xor        edx,edx
 005C980F    mov        dword ptr [ebp-0C],edx
 005C9812    mov        dword ptr [ebp-4],edx
 005C9815    mov        ebx,eax
 005C9817    xor        eax,eax
 005C9819    push       ebp
 005C981A    push       5C9C72
 005C981F    push       dword ptr fs:[eax]
 005C9822    mov        dword ptr fs:[eax],esp
 005C9825    xor        edx,edx
 005C9827    mov        eax,ebx
 005C9829    call       005C9C84
 005C982E    test       al,al
>005C9830    jne        005C9C54
 005C9836    mov        edi,dword ptr [ebx+30]; TRPBarsCode128.?f30:dword
 005C9839    mov        eax,edi
 005C983B    call       00588614
 005C9840    mov        dword ptr [ebp-8],eax
 005C9843    cmp        byte ptr [ebx+58],0; TRPBarsCode128.?f58:byte
>005C9847    je         005C9C4A
 005C984D    cmp        byte ptr [ebx+5A],0; TRPBarsCode128.?f5A:byte
>005C9851    je         005C986A
 005C9853    mov        eax,ebx
 005C9855    call       005C9664
 005C985A    add        esp,0FFFFFFF8
 005C985D    fstp       qword ptr [esp]
 005C9860    wait
 005C9861    mov        eax,edi
 005C9863    call       00588A38
>005C9868    jmp        005C987F
 005C986A    mov        eax,ebx
 005C986C    call       005C96E0
 005C9871    add        esp,0FFFFFFF8
 005C9874    fstp       qword ptr [esp]
 005C9877    wait
 005C9878    mov        eax,edi
 005C987A    call       005889EC
 005C987F    lea        eax,[ebp-4]
 005C9882    mov        edx,dword ptr [ebx+34]; TRPBarsCode128.?f34:String
 005C9885    call       @LStrLAsg
 005C988A    cmp        byte ptr [ebx+59],0; TRPBarsCode128.?f59:byte
>005C988E    je         005C98A5
 005C9890    lea        edx,[ebp-0C]
 005C9893    mov        eax,ebx
 005C9895    mov        ecx,dword ptr [eax]
 005C9897    call       dword ptr [ecx+14]; TRPBarsCode128.sub_005CBAB4
 005C989A    mov        edx,dword ptr [ebp-0C]
 005C989D    lea        eax,[ebp-4]
 005C98A0    call       @LStrCat
 005C98A5    mov        eax,dword ptr [ebp-4]
 005C98A8    call       @LStrLen
 005C98AD    mov        esi,eax
 005C98AF    cmp        esi,1
>005C98B2    jl         005C98D3
 005C98B4    mov        eax,dword ptr [ebp-4]
 005C98B7    mov        al,byte ptr [eax+esi-1]
 005C98BB    cmp        al,0C8
>005C98BD    jbe        005C98CE
 005C98BF    lea        eax,[ebp-4]
 005C98C2    mov        ecx,1
 005C98C7    mov        edx,esi
 005C98C9    call       @LStrDelete
 005C98CE    dec        esi
 005C98CF    test       esi,esi
<005C98D1    jne        005C98B4
 005C98D3    mov        al,byte ptr [ebx+5D]; TRPBarsCode128.?f5D:byte
 005C98D6    sub        al,1
>005C98D8    jb         005C98F5
>005C98DA    je         005C996A
 005C98E0    dec        al
>005C98E2    je         005C9A66
 005C98E8    dec        al
>005C98EA    je         005C9B53
>005C98F0    jmp        005C9C4A
 005C98F5    xor        edx,edx
 005C98F7    mov        eax,edi
 005C98F9    call       005885EC
 005C98FE    mov        al,byte ptr [ebx+5B]; TRPBarsCode128.?f5B:byte
 005C9901    sub        al,1
>005C9903    jb         005C994D
>005C9905    je         005C9913
 005C9907    dec        al
>005C9909    je         005C9930
 005C990B    dec        al
>005C990D    jne        005C9C4A
 005C9913    mov        eax,ebx
 005C9915    call       005C93D0
 005C991A    add        esp,0FFFFFFF8
 005C991D    fstp       qword ptr [esp]
 005C9920    wait
 005C9921    mov        edx,dword ptr [ebp-4]
 005C9924    mov        eax,edi
 005C9926    call       005866BC
>005C992B    jmp        005C9C4A
 005C9930    mov        eax,ebx
 005C9932    call       005C9488
 005C9937    add        esp,0FFFFFFF8
 005C993A    fstp       qword ptr [esp]
 005C993D    wait
 005C993E    mov        edx,dword ptr [ebp-4]
 005C9941    mov        eax,edi
 005C9943    call       005867F0
>005C9948    jmp        005C9C4A
 005C994D    mov        eax,ebx
 005C994F    call       005C9540
 005C9954    add        esp,0FFFFFFF8
 005C9957    fstp       qword ptr [esp]
 005C995A    wait
 005C995B    mov        edx,dword ptr [ebp-4]
 005C995E    mov        eax,edi
 005C9960    call       00586444
>005C9965    jmp        005C9C4A
 005C996A    mov        edx,5A
 005C996F    mov        eax,edi
 005C9971    call       005885EC
 005C9976    cmp        byte ptr [ebx+5A],0; TRPBarsCode128.?f5A:byte
>005C997A    je         005C99A6
 005C997C    mov        eax,edi
 005C997E    call       00588A4C
 005C9983    fadd       qword ptr [ebx+28]; TRPBarsCode128.?f28:?Double
 005C9986    fstp       tbyte ptr [ebp-18]
 005C9989    wait
 005C998A    mov        eax,edi
 005C998C    call       00588A6C
 005C9991    fld        tbyte ptr [ebp-18]
 005C9994    fsubrp     st(1),st
 005C9996    add        esp,0FFFFFFF8
 005C9999    fstp       qword ptr [esp]
 005C999C    wait
 005C999D    mov        eax,edi
 005C999F    call       005844DC
>005C99A4    jmp        005C99D3
 005C99A6    mov        eax,edi
 005C99A8    call       00588A4C
 005C99AD    fld        qword ptr [ebx+28]; TRPBarsCode128.?f28:?Double
 005C99B0    fadd       qword ptr [ebx+18]; TRPBarsCode128.?f18:?Double
 005C99B3    faddp      st(1),st
 005C99B5    fstp       tbyte ptr [ebp-18]
 005C99B8    wait
 005C99B9    mov        eax,edi
 005C99BB    call       00588A6C
 005C99C0    fld        tbyte ptr [ebp-18]
 005C99C3    fsubrp     st(1),st
 005C99C5    add        esp,0FFFFFFF8
 005C99C8    fstp       qword ptr [esp]
 005C99CB    wait
 005C99CC    mov        eax,edi
 005C99CE    call       005844DC
 005C99D3    mov        al,byte ptr [ebx+5B]; TRPBarsCode128.?f5B:byte
 005C99D6    sub        al,1
>005C99D8    jb         005C9A26
>005C99DA    je         005C99E4
 005C99DC    dec        al
>005C99DE    je         005C99FB
 005C99E0    dec        al
>005C99E2    jne        005C9A57
 005C99E4    mov        eax,ebx
 005C99E6    call       005C93D0
 005C99EB    add        esp,0FFFFFFF8
 005C99EE    fstp       qword ptr [esp]
 005C99F1    wait
 005C99F2    mov        eax,edi
 005C99F4    call       0058451C
>005C99F9    jmp        005C9A57
 005C99FB    mov        edx,dword ptr [ebp-4]
 005C99FE    mov        eax,edi
 005C9A00    mov        ecx,dword ptr [eax]
 005C9A02    call       dword ptr [ecx+134]
 005C9A08    fstp       qword ptr [ebp-20]
 005C9A0B    wait
 005C9A0C    mov        eax,ebx
 005C9A0E    call       005C9488
 005C9A13    fadd       qword ptr [ebp-20]
 005C9A16    add        esp,0FFFFFFF8
 005C9A19    fstp       qword ptr [esp]
 005C9A1C    wait
 005C9A1D    mov        eax,edi
 005C9A1F    call       0058451C
>005C9A24    jmp        005C9A57
 005C9A26    mov        edx,dword ptr [ebp-4]
 005C9A29    mov        eax,edi
 005C9A2B    mov        ecx,dword ptr [eax]
 005C9A2D    call       dword ptr [ecx+134]
 005C9A33    fdiv       dword ptr ds:[5C9C80]; 2:Single
 005C9A39    fstp       tbyte ptr [ebp-18]
 005C9A3C    wait
 005C9A3D    mov        eax,ebx
 005C9A3F    call       005C9540
 005C9A44    fld        tbyte ptr [ebp-18]
 005C9A47    faddp      st(1),st
 005C9A49    add        esp,0FFFFFFF8
 005C9A4C    fstp       qword ptr [esp]
 005C9A4F    wait
 005C9A50    mov        eax,edi
 005C9A52    call       0058451C
 005C9A57    mov        edx,dword ptr [ebp-4]
 005C9A5A    mov        eax,edi
 005C9A5C    call       00586358
>005C9A61    jmp        005C9C4A
 005C9A66    mov        edx,0B4
 005C9A6B    mov        eax,edi
 005C9A6D    call       005885EC
 005C9A72    cmp        byte ptr [ebx+5A],0; TRPBarsCode128.?f5A:byte
>005C9A76    je         005C9A9D
 005C9A78    mov        eax,ebx
 005C9A7A    call       005C9664
 005C9A7F    fstp       qword ptr [ebp-20]
 005C9A82    wait
 005C9A83    mov        eax,edi
 005C9A85    call       00588A6C
 005C9A8A    fadd       qword ptr [ebp-20]
 005C9A8D    add        esp,0FFFFFFF8
 005C9A90    fstp       qword ptr [esp]
 005C9A93    wait
 005C9A94    mov        eax,edi
 005C9A96    call       0058451C
>005C9A9B    jmp        005C9AC0
 005C9A9D    mov        eax,ebx
 005C9A9F    call       005C9604
 005C9AA4    fstp       qword ptr [ebp-20]
 005C9AA7    wait
 005C9AA8    mov        eax,edi
 005C9AAA    call       00588A6C
 005C9AAF    fadd       qword ptr [ebp-20]
 005C9AB2    add        esp,0FFFFFFF8
 005C9AB5    fstp       qword ptr [esp]
 005C9AB8    wait
 005C9AB9    mov        eax,edi
 005C9ABB    call       0058451C
 005C9AC0    mov        al,byte ptr [ebx+5B]; TRPBarsCode128.?f5B:byte
 005C9AC3    sub        al,1
>005C9AC5    jb         005C9B13
>005C9AC7    je         005C9AD1
 005C9AC9    dec        al
>005C9ACB    je         005C9AE8
 005C9ACD    dec        al
>005C9ACF    jne        005C9B44
 005C9AD1    mov        eax,ebx
 005C9AD3    call       005C93D0
 005C9AD8    add        esp,0FFFFFFF8
 005C9ADB    fstp       qword ptr [esp]
 005C9ADE    wait
 005C9ADF    mov        eax,edi
 005C9AE1    call       005844DC
>005C9AE6    jmp        005C9B44
 005C9AE8    mov        edx,dword ptr [ebp-4]
 005C9AEB    mov        eax,edi
 005C9AED    mov        ecx,dword ptr [eax]
 005C9AEF    call       dword ptr [ecx+134]
 005C9AF5    fstp       qword ptr [ebp-20]
 005C9AF8    wait
 005C9AF9    mov        eax,ebx
 005C9AFB    call       005C9488
 005C9B00    fadd       qword ptr [ebp-20]
 005C9B03    add        esp,0FFFFFFF8
 005C9B06    fstp       qword ptr [esp]
 005C9B09    wait
 005C9B0A    mov        eax,edi
 005C9B0C    call       005844DC
>005C9B11    jmp        005C9B44
 005C9B13    mov        edx,dword ptr [ebp-4]
 005C9B16    mov        eax,edi
 005C9B18    mov        ecx,dword ptr [eax]
 005C9B1A    call       dword ptr [ecx+134]
 005C9B20    fdiv       dword ptr ds:[5C9C80]; 2:Single
 005C9B26    fstp       tbyte ptr [ebp-18]
 005C9B29    wait
 005C9B2A    mov        eax,ebx
 005C9B2C    call       005C9540
 005C9B31    fld        tbyte ptr [ebp-18]
 005C9B34    faddp      st(1),st
 005C9B36    add        esp,0FFFFFFF8
 005C9B39    fstp       qword ptr [esp]
 005C9B3C    wait
 005C9B3D    mov        eax,edi
 005C9B3F    call       005844DC
 005C9B44    mov        edx,dword ptr [ebp-4]
 005C9B47    mov        eax,edi
 005C9B49    call       00586358
>005C9B4E    jmp        005C9C4A
 005C9B53    mov        edx,10E
 005C9B58    mov        eax,edi
 005C9B5A    call       005885EC
 005C9B5F    cmp        byte ptr [ebx+5A],0; TRPBarsCode128.?f5A:byte
>005C9B63    je         005C9B8F
 005C9B65    mov        eax,edi
 005C9B67    call       00588A4C
 005C9B6C    fsubr      qword ptr [ebx+28]; TRPBarsCode128.?f28:?Double
 005C9B6F    fstp       tbyte ptr [ebp-18]
 005C9B72    wait
 005C9B73    mov        eax,edi
 005C9B75    call       00588A6C
 005C9B7A    fld        tbyte ptr [ebp-18]
 005C9B7D    faddp      st(1),st
 005C9B7F    add        esp,0FFFFFFF8
 005C9B82    fstp       qword ptr [esp]
 005C9B85    wait
 005C9B86    mov        eax,edi
 005C9B88    call       005844DC
>005C9B8D    jmp        005C9BBC
 005C9B8F    mov        eax,edi
 005C9B91    call       00588A4C
 005C9B96    fld        qword ptr [ebx+28]; TRPBarsCode128.?f28:?Double
 005C9B99    fsub       qword ptr [ebx+18]; TRPBarsCode128.?f18:?Double
 005C9B9C    fsubrp     st(1),st
 005C9B9E    fstp       tbyte ptr [ebp-18]
 005C9BA1    wait
 005C9BA2    mov        eax,edi
 005C9BA4    call       00588A6C
 005C9BA9    fld        tbyte ptr [ebp-18]
 005C9BAC    faddp      st(1),st
 005C9BAE    add        esp,0FFFFFFF8
 005C9BB1    fstp       qword ptr [esp]
 005C9BB4    wait
 005C9BB5    mov        eax,edi
 005C9BB7    call       005844DC
 005C9BBC    mov        al,byte ptr [ebx+5B]; TRPBarsCode128.?f5B:byte
 005C9BBF    sub        al,1
>005C9BC1    jb         005C9C0F
>005C9BC3    je         005C9BCD
 005C9BC5    dec        al
>005C9BC7    je         005C9BE4
 005C9BC9    dec        al
>005C9BCB    jne        005C9C40
 005C9BCD    mov        eax,ebx
 005C9BCF    call       005C93D0
 005C9BD4    add        esp,0FFFFFFF8
 005C9BD7    fstp       qword ptr [esp]
 005C9BDA    wait
 005C9BDB    mov        eax,edi
 005C9BDD    call       0058451C
>005C9BE2    jmp        005C9C40
 005C9BE4    mov        edx,dword ptr [ebp-4]
 005C9BE7    mov        eax,edi
 005C9BE9    mov        ecx,dword ptr [eax]
 005C9BEB    call       dword ptr [ecx+134]
 005C9BF1    fstp       qword ptr [ebp-20]
 005C9BF4    wait
 005C9BF5    mov        eax,ebx
 005C9BF7    call       005C9488
 005C9BFC    fsub       qword ptr [ebp-20]
 005C9BFF    add        esp,0FFFFFFF8
 005C9C02    fstp       qword ptr [esp]
 005C9C05    wait
 005C9C06    mov        eax,edi
 005C9C08    call       0058451C
>005C9C0D    jmp        005C9C40
 005C9C0F    mov        edx,dword ptr [ebp-4]
 005C9C12    mov        eax,edi
 005C9C14    mov        ecx,dword ptr [eax]
 005C9C16    call       dword ptr [ecx+134]
 005C9C1C    fdiv       dword ptr ds:[5C9C80]; 2:Single
 005C9C22    fstp       tbyte ptr [ebp-18]
 005C9C25    wait
 005C9C26    mov        eax,ebx
 005C9C28    call       005C9540
 005C9C2D    fld        tbyte ptr [ebp-18]
 005C9C30    fsubp      st(1),st
 005C9C32    add        esp,0FFFFFFF8
 005C9C35    fstp       qword ptr [esp]
 005C9C38    wait
 005C9C39    mov        eax,edi
 005C9C3B    call       0058451C
 005C9C40    mov        edx,dword ptr [ebp-4]
 005C9C43    mov        eax,edi
 005C9C45    call       00586358
 005C9C4A    mov        edx,dword ptr [ebp-8]
 005C9C4D    mov        eax,edi
 005C9C4F    call       005885EC
 005C9C54    xor        eax,eax
 005C9C56    pop        edx
 005C9C57    pop        ecx
 005C9C58    pop        ecx
 005C9C59    mov        dword ptr fs:[eax],edx
 005C9C5C    push       5C9C79
 005C9C61    lea        eax,[ebp-0C]
 005C9C64    call       @LStrClr
 005C9C69    lea        eax,[ebp-4]
 005C9C6C    call       @LStrClr
 005C9C71    ret
<005C9C72    jmp        @HandleFinally
<005C9C77    jmp        005C9C61
 005C9C79    pop        edi
 005C9C7A    pop        esi
 005C9C7B    pop        ebx
 005C9C7C    mov        esp,ebp
 005C9C7E    pop        ebp
 005C9C7F    ret
*}
end;

//005C9C84
//function sub_005C9C84(?:TRPBarsBase; ?:?):?;
//begin
{*
 005C9C84    test       dl,dl
>005C9C86    je         005C9C9F
 005C9C88    cmp        word ptr [eax+62],0; TRPBarsBase.?f62:word
>005C9C8D    jne        005C9C9A
 005C9C8F    cmp        word ptr [eax+6A],0; TRPBarsBase.?f6A:word
>005C9C94    jne        005C9C9A
 005C9C96    xor        edx,edx
>005C9C98    jmp        005C9C9C
 005C9C9A    mov        dl,1
 005C9C9C    mov        byte ptr [eax+70],dl; TRPBarsBase.?f70:byte
 005C9C9F    mov        al,byte ptr [eax+70]; TRPBarsBase.?f70:byte
 005C9CA2    ret
*}
//end;

//005C9CA4
//procedure sub_005C9CA4(?:TRPBarsBase);
//begin
{*
 005C9CA4    push       ebx
 005C9CA5    push       esi
 005C9CA6    mov        esi,eax
 005C9CA8    xor        edx,edx
 005C9CAA    mov        eax,esi
 005C9CAC    call       005C9C84
 005C9CB1    test       al,al
>005C9CB3    jne        005C9D1F
 005C9CB5    mov        dl,1
 005C9CB7    mov        eax,[00429D9C]; TBrush
 005C9CBC    call       TBrush.Create; TBrush.Create
 005C9CC1    mov        ebx,eax
 005C9CC3    mov        dword ptr [esi+48],ebx; TRPBarsBase.?f48:TBrush
 005C9CC6    mov        eax,dword ptr [esi+30]; TRPBarsBase.?f30:dword
 005C9CC9    mov        edx,dword ptr [eax]
 005C9CCB    call       dword ptr [edx+74]
 005C9CCE    mov        edx,dword ptr [eax+14]
 005C9CD1    mov        eax,ebx
 005C9CD3    mov        ecx,dword ptr [eax]
 005C9CD5    call       dword ptr [ecx+8]; TBrush.Assign
 005C9CD8    push       0
 005C9CDA    xor        ecx,ecx
 005C9CDC    xor        edx,edx
 005C9CDE    mov        eax,dword ptr [esi+30]; TRPBarsBase.?f30:dword
 005C9CE1    mov        ebx,dword ptr [eax]
 005C9CE3    call       dword ptr [ebx+14C]
 005C9CE9    mov        dl,1
 005C9CEB    mov        eax,[00429C9C]; TPen
 005C9CF0    call       TPen.Create; TPen.Create
 005C9CF5    mov        ebx,eax
 005C9CF7    mov        dword ptr [esi+4C],ebx; TRPBarsBase.?f4C:TPen
 005C9CFA    mov        eax,dword ptr [esi+30]; TRPBarsBase.?f30:dword
 005C9CFD    mov        edx,dword ptr [eax]
 005C9CFF    call       dword ptr [edx+74]
 005C9D02    mov        edx,dword ptr [eax+10]
 005C9D05    mov        eax,ebx
 005C9D07    mov        ecx,dword ptr [eax]
 005C9D09    call       dword ptr [ecx+8]; TPen.Assign
 005C9D0C    push       1
 005C9D0E    push       4
 005C9D10    mov        cl,6
 005C9D12    xor        edx,edx
 005C9D14    mov        eax,dword ptr [esi+30]; TRPBarsBase.?f30:dword
 005C9D17    mov        ebx,dword ptr [eax]
 005C9D19    call       dword ptr [ebx+154]
 005C9D1F    pop        esi
 005C9D20    pop        ebx
 005C9D21    ret
*}
//end;

//005C9D24
//procedure sub_005C9D24(?:TRPBarsBase);
//begin
{*
 005C9D24    push       ebx
 005C9D25    mov        ebx,eax
 005C9D27    xor        edx,edx
 005C9D29    mov        eax,ebx
 005C9D2B    call       005C9C84
 005C9D30    test       al,al
>005C9D32    jne        005C9D7B
 005C9D34    cmp        dword ptr [ebx+4C],0; TRPBarsBase.?f4C:TPen
>005C9D38    je         005C9D5A
 005C9D3A    mov        eax,dword ptr [ebx+30]; TRPBarsBase.?f30:dword
 005C9D3D    mov        edx,dword ptr [eax]
 005C9D3F    call       dword ptr [edx+74]
 005C9D42    mov        eax,dword ptr [eax+10]
 005C9D45    mov        edx,dword ptr [ebx+4C]; TRPBarsBase.?f4C:TPen
 005C9D48    mov        ecx,dword ptr [eax]
 005C9D4A    call       dword ptr [ecx+8]
 005C9D4D    mov        eax,dword ptr [ebx+4C]; TRPBarsBase.?f4C:TPen
 005C9D50    call       TObject.Free
 005C9D55    xor        eax,eax
 005C9D57    mov        dword ptr [ebx+4C],eax; TRPBarsBase.?f4C:TPen
 005C9D5A    cmp        dword ptr [ebx+48],0; TRPBarsBase.?f48:TBrush
>005C9D5E    je         005C9D7B
 005C9D60    mov        eax,dword ptr [ebx+30]; TRPBarsBase.?f30:dword
 005C9D63    mov        edx,dword ptr [eax]
 005C9D65    call       dword ptr [edx+74]
 005C9D68    mov        eax,dword ptr [eax+14]
 005C9D6B    mov        edx,dword ptr [ebx+48]; TRPBarsBase.?f48:TBrush
 005C9D6E    mov        ecx,dword ptr [eax]
 005C9D70    call       dword ptr [ecx+8]
 005C9D73    lea        eax,[ebx+48]; TRPBarsBase.?f48:TBrush
 005C9D76    call       FreeAndNil
 005C9D7B    pop        ebx
 005C9D7C    ret
*}
//end;

//005C9D80
//procedure sub_005C9D80(?:TRPBarsBase);
//begin
{*
 005C9D80    push       ebp
 005C9D81    mov        ebp,esp
 005C9D83    push       0
 005C9D85    push       ebx
 005C9D86    mov        ebx,eax
 005C9D88    xor        eax,eax
 005C9D8A    push       ebp
 005C9D8B    push       5C9DD9
 005C9D90    push       dword ptr fs:[eax]
 005C9D93    mov        dword ptr fs:[eax],esp
 005C9D96    mov        dl,1
 005C9D98    mov        eax,ebx
 005C9D9A    call       005C9C84
 005C9D9F    test       al,al
>005C9DA1    jne        005C9DC3
 005C9DA3    cmp        dword ptr [ebx+30],0; TRPBarsBase.?f30:dword
>005C9DA7    jne        005C9DC3
 005C9DA9    mov        ebx,dword ptr ds:[61B830]
 005C9DAF    mov        ebx,dword ptr [ebx]
 005C9DB1    lea        edx,[ebp-4]
 005C9DB4    mov        eax,5C9DEC; 'TBaseReport object not defined.  Printing Aborted.'
 005C9DB9    call       ebx
 005C9DBB    mov        eax,dword ptr [ebp-4]
 005C9DBE    call       00579798
 005C9DC3    xor        eax,eax
 005C9DC5    pop        edx
 005C9DC6    pop        ecx
 005C9DC7    pop        ecx
 005C9DC8    mov        dword ptr fs:[eax],edx
 005C9DCB    push       5C9DE0
 005C9DD0    lea        eax,[ebp-4]
 005C9DD3    call       @LStrClr
 005C9DD8    ret
<005C9DD9    jmp        @HandleFinally
<005C9DDE    jmp        005C9DD0
 005C9DE0    pop        ebx
 005C9DE1    pop        ecx
 005C9DE2    pop        ebp
 005C9DE3    ret
*}
//end;

//005C9E20
//procedure sub_005C9E20(?:TRPBarsBase; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005C9E20    push       ebp
 005C9E21    mov        ebp,esp
 005C9E23    push       esi
 005C9E24    push       edi
 005C9E25    mov        esi,eax
 005C9E27    xor        edx,edx
 005C9E29    mov        eax,esi
 005C9E2B    call       005C9C84
 005C9E30    test       al,al
>005C9E32    je         005C9E54
 005C9E34    push       dword ptr [ebp+24]
 005C9E37    push       dword ptr [ebp+20]
 005C9E3A    push       dword ptr [ebp+1C]
 005C9E3D    push       dword ptr [ebp+18]
 005C9E40    push       dword ptr [ebp+14]
 005C9E43    push       dword ptr [ebp+10]
 005C9E46    push       dword ptr [ebp+0C]
 005C9E49    push       dword ptr [ebp+8]
 005C9E4C    mov        eax,dword ptr [esi+64]; TRPBarsBase.?f64:dword
 005C9E4F    call       dword ptr [esi+60]
>005C9E52    jmp        005C9E89
 005C9E54    push       dword ptr [ebp+24]
 005C9E57    push       dword ptr [ebp+20]
 005C9E5A    push       dword ptr [ebp+1C]
 005C9E5D    push       dword ptr [ebp+18]
 005C9E60    mov        edi,dword ptr [esi+30]; TRPBarsBase.?f30:dword
 005C9E63    fild       dword ptr [edi+8DC]
 005C9E69    fdivr      dword ptr ds:[5C9E90]; 1:Single
 005C9E6F    fsubr      qword ptr [ebp+10]
 005C9E72    add        esp,0FFFFFFF8
 005C9E75    fstp       qword ptr [esp]
 005C9E78    wait
 005C9E79    push       dword ptr [ebp+0C]
 005C9E7C    push       dword ptr [ebp+8]
 005C9E7F    mov        eax,edi
 005C9E81    mov        edx,dword ptr [eax]
 005C9E83    call       dword ptr [edx+0E0]
 005C9E89    pop        edi
 005C9E8A    pop        esi
 005C9E8B    pop        ebp
 005C9E8C    ret        20
*}
//end;

//005C9E94
//procedure sub_005C9E94(?:TRPBarsBase; ?:AnsiString; ?:?; ?:?);
//begin
{*
 005C9E94    push       ebp
 005C9E95    mov        ebp,esp
 005C9E97    add        esp,0FFFFFFDC
 005C9E9A    push       ebx
 005C9E9B    push       esi
 005C9E9C    push       edi
 005C9E9D    mov        byte ptr [ebp-5],cl
 005C9EA0    mov        dword ptr [ebp-4],edx
 005C9EA3    mov        ebx,eax
 005C9EA5    mov        eax,dword ptr [ebp-4]
 005C9EA8    call       @LStrAddRef
 005C9EAD    xor        eax,eax
 005C9EAF    push       ebp
 005C9EB0    push       5CA0A8
 005C9EB5    push       dword ptr fs:[eax]
 005C9EB8    mov        dword ptr fs:[eax],esp
 005C9EBB    mov        eax,dword ptr [ebx+18]; TRPBarsBase.?f18:?Double
 005C9EBE    mov        dword ptr [ebp-18],eax
 005C9EC1    mov        eax,dword ptr [ebx+1C]; TRPBarsBase.?f1C:dword
 005C9EC4    mov        dword ptr [ebp-14],eax
 005C9EC7    mov        eax,dword ptr [ebx+10]; TRPBarsBase.?f10:?Double
 005C9ECA    mov        dword ptr [ebp-10],eax
 005C9ECD    mov        eax,dword ptr [ebx+14]; TRPBarsBase.?f14:dword
 005C9ED0    mov        dword ptr [ebp-0C],eax
 005C9ED3    mov        eax,dword ptr [ebx+40]; TRPBarsBase.?f40:?Double
 005C9ED6    mov        dword ptr [ebp-20],eax
 005C9ED9    mov        eax,dword ptr [ebx+44]; TRPBarsBase.?f44:dword
 005C9EDC    mov        dword ptr [ebp-1C],eax
 005C9EDF    mov        eax,dword ptr [ebp-4]
 005C9EE2    call       @LStrLen
 005C9EE7    test       eax,eax
>005C9EE9    jle        005CA04B
 005C9EEF    mov        dword ptr [ebp-24],eax
 005C9EF2    mov        esi,1
 005C9EF7    lea        eax,[ebp-18]
 005C9EFA    push       eax
 005C9EFB    lea        eax,[ebp-20]
 005C9EFE    push       eax
 005C9EFF    lea        ecx,[ebp-10]
 005C9F02    mov        eax,dword ptr [ebp-4]
 005C9F05    mov        dl,byte ptr [eax+esi-1]
 005C9F09    mov        eax,ebx
 005C9F0B    mov        edi,dword ptr [eax]
 005C9F0D    call       dword ptr [edi+18]; @AbstractError
 005C9F10    mov        eax,esi
 005C9F12    and        al,1
 005C9F14    and        al,byte ptr [ebp-5]
>005C9F17    jne        005C9F2F
 005C9F19    test       esi,1
>005C9F1F    jne        005CA000
 005C9F25    cmp        byte ptr [ebp-5],0
>005C9F29    jne        005CA000
 005C9F2F    mov        al,byte ptr [ebx+5D]; TRPBarsBase.?f5D:byte
 005C9F32    dec        al
>005C9F34    je         005C9F43
 005C9F36    dec        al
>005C9F38    je         005C9F75
 005C9F3A    dec        al
>005C9F3C    je         005C9FA4
>005C9F3E    jmp        005C9FD3
 005C9F43    push       dword ptr [ebp-1C]
 005C9F46    push       dword ptr [ebp-20]
 005C9F49    push       dword ptr [ebx+3C]; TRPBarsBase.?f3C:dword
 005C9F4C    push       dword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005C9F4F    fld        qword ptr [ebp-20]
 005C9F52    fadd       qword ptr [ebp-18]
 005C9F55    add        esp,0FFFFFFF8
 005C9F58    fstp       qword ptr [esp]
 005C9F5B    wait
 005C9F5C    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005C9F5F    fsub       qword ptr [ebp-10]
 005C9F62    add        esp,0FFFFFFF8
 005C9F65    fstp       qword ptr [esp]
 005C9F68    wait
 005C9F69    mov        eax,ebx
 005C9F6B    call       005C9E20
>005C9F70    jmp        005CA000
 005C9F75    push       dword ptr [ebx+3C]; TRPBarsBase.?f3C:dword
 005C9F78    push       dword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005C9F7B    push       dword ptr [ebp-1C]
 005C9F7E    push       dword ptr [ebp-20]
 005C9F81    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005C9F84    fsub       qword ptr [ebp-10]
 005C9F87    add        esp,0FFFFFFF8
 005C9F8A    fstp       qword ptr [esp]
 005C9F8D    wait
 005C9F8E    fld        qword ptr [ebp-20]
 005C9F91    fsub       qword ptr [ebp-18]
 005C9F94    add        esp,0FFFFFFF8
 005C9F97    fstp       qword ptr [esp]
 005C9F9A    wait
 005C9F9B    mov        eax,ebx
 005C9F9D    call       005C9E20
>005C9FA2    jmp        005CA000
 005C9FA4    push       dword ptr [ebp-1C]
 005C9FA7    push       dword ptr [ebp-20]
 005C9FAA    push       dword ptr [ebx+3C]; TRPBarsBase.?f3C:dword
 005C9FAD    push       dword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005C9FB0    fld        qword ptr [ebp-20]
 005C9FB3    fsub       qword ptr [ebp-18]
 005C9FB6    add        esp,0FFFFFFF8
 005C9FB9    fstp       qword ptr [esp]
 005C9FBC    wait
 005C9FBD    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005C9FC0    fadd       qword ptr [ebp-10]
 005C9FC3    add        esp,0FFFFFFF8
 005C9FC6    fstp       qword ptr [esp]
 005C9FC9    wait
 005C9FCA    mov        eax,ebx
 005C9FCC    call       005C9E20
>005C9FD1    jmp        005CA000
 005C9FD3    push       dword ptr [ebx+3C]; TRPBarsBase.?f3C:dword
 005C9FD6    push       dword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005C9FD9    push       dword ptr [ebp-1C]
 005C9FDC    push       dword ptr [ebp-20]
 005C9FDF    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005C9FE2    fadd       qword ptr [ebp-10]
 005C9FE5    add        esp,0FFFFFFF8
 005C9FE8    fstp       qword ptr [esp]
 005C9FEB    wait
 005C9FEC    fld        qword ptr [ebp-20]
 005C9FEF    fadd       qword ptr [ebp-18]
 005C9FF2    add        esp,0FFFFFFF8
 005C9FF5    fstp       qword ptr [esp]
 005C9FF8    wait
 005C9FF9    mov        eax,ebx
 005C9FFB    call       005C9E20
 005CA000    mov        al,byte ptr [ebx+5D]; TRPBarsBase.?f5D:byte
 005CA003    sub        al,1
>005CA005    jb         005CA013
>005CA007    je         005CA01F
 005CA009    dec        al
>005CA00B    je         005CA02B
 005CA00D    dec        al
>005CA00F    je         005CA037
>005CA011    jmp        005CA041
 005CA013    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA016    fadd       qword ptr [ebp-10]
 005CA019    fstp       qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA01C    wait
>005CA01D    jmp        005CA041
 005CA01F    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA022    fsub       qword ptr [ebp-10]
 005CA025    fstp       qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA028    wait
>005CA029    jmp        005CA041
 005CA02B    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA02E    fsub       qword ptr [ebp-10]
 005CA031    fstp       qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA034    wait
>005CA035    jmp        005CA041
 005CA037    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA03A    fadd       qword ptr [ebp-10]
 005CA03D    fstp       qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA040    wait
 005CA041    inc        esi
 005CA042    dec        dword ptr [ebp-24]
<005CA045    jne        005C9EF7
 005CA04B    cmp        byte ptr [ebp+8],0
>005CA04F    je         005CA092
 005CA051    mov        al,byte ptr [ebx+5D]; TRPBarsBase.?f5D:byte
 005CA054    sub        al,1
>005CA056    jb         005CA064
>005CA058    je         005CA070
 005CA05A    dec        al
>005CA05C    je         005CA07C
 005CA05E    dec        al
>005CA060    je         005CA088
>005CA062    jmp        005CA092
 005CA064    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA067    fadd       qword ptr [ebx+10]; TRPBarsBase.?f10:?Double
 005CA06A    fstp       qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA06D    wait
>005CA06E    jmp        005CA092
 005CA070    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA073    fsub       qword ptr [ebx+10]; TRPBarsBase.?f10:?Double
 005CA076    fstp       qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA079    wait
>005CA07A    jmp        005CA092
 005CA07C    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA07F    fsub       qword ptr [ebx+10]; TRPBarsBase.?f10:?Double
 005CA082    fstp       qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA085    wait
>005CA086    jmp        005CA092
 005CA088    fld        qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA08B    fadd       qword ptr [ebx+10]; TRPBarsBase.?f10:?Double
 005CA08E    fstp       qword ptr [ebx+38]; TRPBarsBase.?f38:?Double
 005CA091    wait
 005CA092    xor        eax,eax
 005CA094    pop        edx
 005CA095    pop        ecx
 005CA096    pop        ecx
 005CA097    mov        dword ptr fs:[eax],edx
 005CA09A    push       5CA0AF
 005CA09F    lea        eax,[ebp-4]
 005CA0A2    call       @LStrClr
 005CA0A7    ret
<005CA0A8    jmp        @HandleFinally
<005CA0AD    jmp        005CA09F
 005CA0AF    pop        edi
 005CA0B0    pop        esi
 005CA0B1    pop        ebx
 005CA0B2    mov        esp,ebp
 005CA0B4    pop        ebp
 005CA0B5    ret        4
*}
//end;

//005CA0B8
//procedure sub_005CA0B8(?:?);
//begin
{*
 005CA0B8    mov        byte ptr [eax+58],dl; TRPBarsEAN.?f58:byte
 005CA0BB    ret
*}
//end;

//005CA0BC
constructor TRPBars2of5.Create;
begin
{*
 005CA0BC    push       ebx
 005CA0BD    push       esi
 005CA0BE    test       dl,dl
>005CA0C0    je         005CA0CA
 005CA0C2    add        esp,0FFFFFFF0
 005CA0C5    call       @ClassCreate
 005CA0CA    mov        ebx,edx
 005CA0CC    mov        esi,eax
 005CA0CE    xor        edx,edx
 005CA0D0    mov        eax,esi
 005CA0D2    call       005C92C0
 005CA0D7    xor        eax,eax
 005CA0D9    mov        dword ptr [esi+8],eax; TRPBars2of5.?f8:?Double
 005CA0DC    mov        dword ptr [esi+0C],40080000; TRPBars2of5.?fC:dword
 005CA0E3    mov        dword ptr [esi+54],0A; TRPBars2of5.?f54:dword
 005CA0EA    xor        edx,edx
 005CA0EC    mov        eax,esi
 005CA0EE    mov        ecx,dword ptr [eax]
 005CA0F0    call       dword ptr [ecx+0C]; TRPBars2of5.sub_005C97E0
 005CA0F3    mov        eax,esi
 005CA0F5    test       bl,bl
>005CA0F7    je         005CA108
 005CA0F9    call       @AfterConstruction
 005CA0FE    pop        dword ptr fs:[0]
 005CA105    add        esp,0C
 005CA108    mov        eax,esi
 005CA10A    pop        esi
 005CA10B    pop        ebx
 005CA10C    ret
*}
end;

//005CA110
//function sub_005CA110(?:?):?;
//begin
{*
 005CA110    push       ebp
 005CA111    mov        ebp,esp
 005CA113    push       0
 005CA115    push       0
 005CA117    push       ebx
 005CA118    mov        ebx,edx
 005CA11A    xor        eax,eax
 005CA11C    push       ebp
 005CA11D    push       5CA16E
 005CA122    push       dword ptr fs:[eax]
 005CA125    mov        dword ptr fs:[eax],esp
 005CA128    lea        eax,[ebp-4]
 005CA12B    mov        edx,6172F4; gvar_006172F4:ShortString
 005CA130    call       @LStrFromString
 005CA135    mov        eax,dword ptr [ebp-4]
 005CA138    push       eax
 005CA139    lea        eax,[ebp-8]
 005CA13C    mov        edx,ebx
 005CA13E    call       @LStrFromChar
 005CA143    mov        eax,dword ptr [ebp-8]
 005CA146    pop        edx
 005CA147    call       AnsiPos
 005CA14C    test       eax,eax
 005CA14E    setg       al
 005CA151    mov        ebx,eax
 005CA153    xor        eax,eax
 005CA155    pop        edx
 005CA156    pop        ecx
 005CA157    pop        ecx
 005CA158    mov        dword ptr fs:[eax],edx
 005CA15B    push       5CA175
 005CA160    lea        eax,[ebp-8]
 005CA163    mov        edx,2
 005CA168    call       @LStrArrayClr
 005CA16D    ret
<005CA16E    jmp        @HandleFinally
<005CA173    jmp        005CA160
 005CA175    mov        eax,ebx
 005CA177    pop        ebx
 005CA178    pop        ecx
 005CA179    pop        ecx
 005CA17A    pop        ebp
 005CA17B    ret
*}
//end;

//005CA17C
procedure sub_005CA17C;
begin
{*
 005CA17C    push       ebx
 005CA17D    add        esp,0FFFFFFF4
 005CA180    mov        ebx,eax
 005CA182    mov        eax,dword ptr [ebx+34]; TRPBars2of5.?f34:String
 005CA185    call       @LStrLen
 005CA18A    cmp        byte ptr [ebx+50],0; TRPBars2of5.?f50:byte
>005CA18E    je         005CA191
 005CA190    inc        eax
 005CA191    inc        eax
 005CA192    sar        eax,1
>005CA194    jns        005CA199
 005CA196    adc        eax,0
 005CA199    add        eax,eax
 005CA19B    fld        dword ptr ds:[5CA1CC]; 2:Single
 005CA1A1    fmul       qword ptr [ebx+8]; TRPBars2of5.?f8:?Double
 005CA1A4    fadd       dword ptr ds:[5CA1D0]; 3:Single
 005CA1AA    mov        dword ptr [esp+8],eax
 005CA1AE    fild       dword ptr [esp+8]
 005CA1B2    fmulp      st(1),st
 005CA1B4    fadd       dword ptr ds:[5CA1D4]; 6:Single
 005CA1BA    fadd       qword ptr [ebx+8]; TRPBars2of5.?f8:?Double
 005CA1BD    fmul       qword ptr [ebx+10]; TRPBars2of5.?f10:?Double
 005CA1C0    fstp       qword ptr [esp]
 005CA1C3    wait
 005CA1C4    fld        qword ptr [esp]
 005CA1C7    add        esp,0C
 005CA1CA    pop        ebx
 005CA1CB    ret
*}
end;

//005CA1D8
//procedure sub_005CA1D8(?:?);
//begin
{*
 005CA1D8    push       ebp
 005CA1D9    mov        ebp,esp
 005CA1DB    push       0
 005CA1DD    push       0
 005CA1DF    push       ebx
 005CA1E0    push       esi
 005CA1E1    mov        esi,edx
 005CA1E3    mov        ebx,eax
 005CA1E5    xor        eax,eax
 005CA1E7    push       ebp
 005CA1E8    push       5CA25A
 005CA1ED    push       dword ptr fs:[eax]
 005CA1F0    mov        dword ptr fs:[eax],esp
 005CA1F3    lea        eax,[ebp-4]
 005CA1F6    mov        edx,dword ptr [ebx+34]; TRPBars2of5.?f34:String
 005CA1F9    call       @LStrLAsg
 005CA1FE    cmp        byte ptr [ebx+50],0; TRPBars2of5.?f50:byte
>005CA202    je         005CA219
 005CA204    lea        edx,[ebp-8]
 005CA207    mov        eax,ebx
 005CA209    mov        ecx,dword ptr [eax]
 005CA20B    call       dword ptr [ecx+14]; TRPBars2of5.sub_005CA32C
 005CA20E    mov        edx,dword ptr [ebp-8]
 005CA211    lea        eax,[ebp-4]
 005CA214    call       @LStrCat
 005CA219    mov        eax,dword ptr [ebp-4]
 005CA21C    call       @LStrLen
 005CA221    test       al,1
>005CA223    je         005CA235
 005CA225    lea        eax,[ebp-4]
 005CA228    mov        ecx,dword ptr [ebp-4]
 005CA22B    mov        edx,5CA270; '0'
 005CA230    call       @LStrCat3
 005CA235    mov        eax,esi
 005CA237    mov        edx,dword ptr [ebp-4]
 005CA23A    call       @LStrAsg
 005CA23F    xor        eax,eax
 005CA241    pop        edx
 005CA242    pop        ecx
 005CA243    pop        ecx
 005CA244    mov        dword ptr fs:[eax],edx
 005CA247    push       5CA261
 005CA24C    lea        eax,[ebp-8]
 005CA24F    mov        edx,2
 005CA254    call       @LStrArrayClr
 005CA259    ret
<005CA25A    jmp        @HandleFinally
<005CA25F    jmp        005CA24C
 005CA261    pop        esi
 005CA262    pop        ebx
 005CA263    pop        ecx
 005CA264    pop        ecx
 005CA265    pop        ebp
 005CA266    ret
*}
//end;

//005CA274
//procedure sub_005CA274(?:?; ?:?);
//begin
{*
 005CA274    push       ebp
 005CA275    mov        ebp,esp
 005CA277    sub        dl,31
>005CA27A    je         005CA282
 005CA27C    dec        dl
>005CA27E    je         005CA28F
>005CA280    jmp        005CA298
 005CA282    mov        edx,dword ptr [eax+10]; TRPBars2of5.?f10:?Double
 005CA285    mov        dword ptr [ecx],edx
 005CA287    mov        edx,dword ptr [eax+14]; TRPBars2of5.?f14:dword
 005CA28A    mov        dword ptr [ecx+4],edx
>005CA28D    jmp        005CA298
 005CA28F    fld        qword ptr [eax+10]; TRPBars2of5.?f10:?Double
 005CA292    fmul       qword ptr [eax+8]; TRPBars2of5.?f8:?Double
 005CA295    fstp       qword ptr [ecx]
 005CA297    wait
 005CA298    pop        ebp
 005CA299    ret        8
*}
//end;

//005CA29C
//procedure sub_005CA29C(?:?; ?:?);
//begin
{*
 005CA29C    push       ebp
 005CA29D    mov        ebp,esp
 005CA29F    push       0
 005CA2A1    push       0
 005CA2A3    push       ebx
 005CA2A4    push       esi
 005CA2A5    push       edi
 005CA2A6    mov        edi,ecx
 005CA2A8    mov        ebx,edx
 005CA2AA    mov        esi,eax
 005CA2AC    xor        eax,eax
 005CA2AE    push       ebp
 005CA2AF    push       5CA31D
 005CA2B4    push       dword ptr fs:[eax]
 005CA2B7    mov        dword ptr fs:[eax],esp
 005CA2BA    mov        edx,ebx
 005CA2BC    mov        eax,esi
 005CA2BE    mov        ecx,dword ptr [eax]
 005CA2C0    call       dword ptr [ecx+2C]; TRPBars2of5.sub_005CA110
 005CA2C3    test       al,al
>005CA2C5    je         005CA2FB
 005CA2C7    lea        eax,[ebp-4]
 005CA2CA    mov        edx,6172F4; gvar_006172F4:ShortString
 005CA2CF    call       @LStrFromString
 005CA2D4    mov        eax,dword ptr [ebp-4]
 005CA2D7    push       eax
 005CA2D8    lea        eax,[ebp-8]
 005CA2DB    mov        edx,ebx
 005CA2DD    call       @LStrFromChar
 005CA2E2    mov        eax,dword ptr [ebp-8]
 005CA2E5    pop        edx
 005CA2E6    call       AnsiPos
 005CA2EB    mov        eax,dword ptr [eax*4+6172FC]
 005CA2F2    mov        edx,edi
 005CA2F4    call       IntToStr
>005CA2F9    jmp        005CA302
 005CA2FB    mov        eax,edi
 005CA2FD    call       @LStrClr
 005CA302    xor        eax,eax
 005CA304    pop        edx
 005CA305    pop        ecx
 005CA306    pop        ecx
 005CA307    mov        dword ptr fs:[eax],edx
 005CA30A    push       5CA324
 005CA30F    lea        eax,[ebp-8]
 005CA312    mov        edx,2
 005CA317    call       @LStrArrayClr
 005CA31C    ret
<005CA31D    jmp        @HandleFinally
<005CA322    jmp        005CA30F
 005CA324    pop        edi
 005CA325    pop        esi
 005CA326    pop        ebx
 005CA327    pop        ecx
 005CA328    pop        ecx
 005CA329    pop        ebp
 005CA32A    ret
*}
//end;

//005CA32C
//procedure sub_005CA32C(?:?);
//begin
{*
 005CA32C    push       ebp
 005CA32D    mov        ebp,esp
 005CA32F    add        esp,0FFFFFFF0
 005CA332    push       ebx
 005CA333    push       esi
 005CA334    push       edi
 005CA335    xor        ecx,ecx
 005CA337    mov        dword ptr [ebp-10],ecx
 005CA33A    mov        dword ptr [ebp-0C],ecx
 005CA33D    mov        dword ptr [ebp-4],edx
 005CA340    mov        esi,eax
 005CA342    xor        eax,eax
 005CA344    push       ebp
 005CA345    push       5CA3EF
 005CA34A    push       dword ptr fs:[eax]
 005CA34D    mov        dword ptr fs:[eax],esp
 005CA350    xor        edi,edi
 005CA352    mov        eax,dword ptr [esi+34]; TRPBars2of5.?f34:String
 005CA355    call       @LStrLen
 005CA35A    mov        ebx,eax
 005CA35C    cmp        ebx,1
>005CA35F    jl         005CA382
 005CA361    lea        eax,[ebp-0C]
 005CA364    mov        edx,dword ptr [esi+34]; TRPBars2of5.?f34:String
 005CA367    mov        dl,byte ptr [edx+ebx-1]
 005CA36B    call       @LStrFromChar
 005CA370    mov        eax,dword ptr [ebp-0C]
 005CA373    call       StrToInt
 005CA378    add        edi,eax
 005CA37A    sub        ebx,2
 005CA37D    cmp        ebx,1
<005CA380    jge        005CA361
 005CA382    xor        eax,eax
 005CA384    mov        dword ptr [ebp-8],eax
 005CA387    mov        eax,dword ptr [esi+34]; TRPBars2of5.?f34:String
 005CA38A    call       @LStrLen
 005CA38F    mov        ebx,eax
 005CA391    dec        ebx
 005CA392    cmp        ebx,1
>005CA395    jl         005CA3B9
 005CA397    lea        eax,[ebp-10]
 005CA39A    mov        edx,dword ptr [esi+34]; TRPBars2of5.?f34:String
 005CA39D    mov        dl,byte ptr [edx+ebx-1]
 005CA3A1    call       @LStrFromChar
 005CA3A6    mov        eax,dword ptr [ebp-10]
 005CA3A9    call       StrToInt
 005CA3AE    add        dword ptr [ebp-8],eax
 005CA3B1    sub        ebx,2
 005CA3B4    cmp        ebx,1
<005CA3B7    jge        005CA397
 005CA3B9    lea        ebx,[edi+edi*2]
 005CA3BC    add        ebx,dword ptr [ebp-8]
 005CA3BF    mov        eax,ebx
 005CA3C1    cdq
 005CA3C2    idiv       eax,dword ptr [esi+54]; TRPBars2of5.?f54:dword
 005CA3C5    mov        eax,0A
 005CA3CA    sub        eax,edx
 005CA3CC    mov        edx,dword ptr [ebp-4]
 005CA3CF    call       IntToStr
 005CA3D4    xor        eax,eax
 005CA3D6    pop        edx
 005CA3D7    pop        ecx
 005CA3D8    pop        ecx
 005CA3D9    mov        dword ptr fs:[eax],edx
 005CA3DC    push       5CA3F6
 005CA3E1    lea        eax,[ebp-10]
 005CA3E4    mov        edx,2
 005CA3E9    call       @LStrArrayClr
 005CA3EE    ret
<005CA3EF    jmp        @HandleFinally
<005CA3F4    jmp        005CA3E1
 005CA3F6    pop        edi
 005CA3F7    pop        esi
 005CA3F8    pop        ebx
 005CA3F9    mov        esp,ebp
 005CA3FB    pop        ebp
 005CA3FC    ret
*}
//end;

//005CA400
procedure sub_005CA400;
begin
{*
 005CA400    push       ebp
 005CA401    mov        ebp,esp
 005CA403    add        esp,0FFFFFEA8
 005CA409    push       ebx
 005CA40A    push       esi
 005CA40B    push       edi
 005CA40C    xor        edx,edx
 005CA40E    mov        dword ptr [ebp-158],edx
 005CA414    mov        dword ptr [ebp-154],edx
 005CA41A    mov        dword ptr [ebp-130],edx
 005CA420    mov        dword ptr [ebp-12C],edx
 005CA426    mov        dword ptr [ebp-28],edx
 005CA429    mov        dword ptr [ebp-0C],edx
 005CA42C    mov        dword ptr [ebp-4],eax
 005CA42F    xor        eax,eax
 005CA431    push       ebp
 005CA432    push       5CA681
 005CA437    push       dword ptr fs:[eax]
 005CA43A    mov        dword ptr fs:[eax],esp
 005CA43D    mov        eax,dword ptr [ebp-4]
 005CA440    call       005C9D80
 005CA445    xor        edx,edx
 005CA447    push       ebp
 005CA448    push       5CA63C
 005CA44D    push       dword ptr fs:[edx]
 005CA450    mov        dword ptr fs:[edx],esp
 005CA453    mov        eax,dword ptr [ebp-4]
 005CA456    call       005C9CA4
 005CA45B    lea        edx,[ebp-0C]
 005CA45E    mov        eax,dword ptr [ebp-4]
 005CA461    mov        ecx,dword ptr [eax]
 005CA463    call       dword ptr [ecx+1C]; TRPBars2of5.sub_005CA1D8
 005CA466    mov        eax,dword ptr [ebp-4]
 005CA469    call       005C93D0
 005CA46E    mov        eax,dword ptr [ebp-4]
 005CA471    fstp       qword ptr [eax+38]; TRPBars2of5.?f38:?Double
 005CA474    wait
 005CA475    mov        eax,dword ptr [ebp-4]
 005CA478    call       005C9664
 005CA47D    mov        eax,dword ptr [ebp-4]
 005CA480    fstp       qword ptr [eax+40]; TRPBars2of5.?f40:?Double
 005CA483    wait
 005CA484    mov        al,[006172DC]
 005CA489    push       eax
 005CA48A    lea        edx,[ebp-28]
 005CA48D    mov        eax,[006172EC]
 005CA492    call       IntToStr
 005CA497    mov        edx,dword ptr [ebp-28]
 005CA49A    mov        cl,byte ptr ds:[6172E8]
 005CA4A0    mov        eax,dword ptr [ebp-4]
 005CA4A3    call       005C9E94
 005CA4A8    mov        dword ptr [ebp-8],1
>005CA4AF    jmp        005CA5E3
 005CA4B4    mov        eax,dword ptr [ebp-0C]
 005CA4B7    mov        edx,dword ptr [ebp-8]
 005CA4BA    mov        dl,byte ptr [eax+edx-1]
 005CA4BE    lea        ecx,[ebp-12C]
 005CA4C4    mov        eax,dword ptr [ebp-4]
 005CA4C7    mov        ebx,dword ptr [eax]
 005CA4C9    call       dword ptr [ebx+10]; TRPBars2of5.sub_005CA29C
 005CA4CC    mov        edx,dword ptr [ebp-12C]
 005CA4D2    lea        eax,[ebp-128]
 005CA4D8    mov        ecx,0FF
 005CA4DD    call       @LStrToString
 005CA4E2    lea        edx,[ebp-128]
 005CA4E8    lea        eax,[ebp-12]
 005CA4EB    mov        cl,5
 005CA4ED    call       @PStrNCpy
 005CA4F2    mov        eax,dword ptr [ebp-0C]
 005CA4F5    mov        edx,dword ptr [ebp-8]
 005CA4F8    mov        dl,byte ptr [eax+edx]
 005CA4FB    lea        ecx,[ebp-130]
 005CA501    mov        eax,dword ptr [ebp-4]
 005CA504    mov        ebx,dword ptr [eax]
 005CA506    call       dword ptr [ebx+10]; TRPBars2of5.sub_005CA29C
 005CA509    mov        edx,dword ptr [ebp-130]
 005CA50F    lea        eax,[ebp-128]
 005CA515    mov        ecx,0FF
 005CA51A    call       @LStrToString
 005CA51F    lea        edx,[ebp-128]
 005CA525    lea        eax,[ebp-18]
 005CA528    mov        cl,5
 005CA52A    call       @PStrNCpy
 005CA52F    mov        byte ptr [ebp-23],0
 005CA533    movzx      edi,byte ptr [ebp-12]
 005CA537    test       edi,edi
>005CA539    jle        005CA5B7
 005CA53B    lea        ebx,[ebp-11]
 005CA53E    lea        esi,[ebp-17]
 005CA541    lea        edx,[ebp-23]
 005CA544    lea        eax,[ebp-13C]
 005CA54A    call       @PStrCpy
 005CA54F    lea        eax,[ebp-140]
 005CA555    mov        dl,byte ptr [ebx]
 005CA557    mov        byte ptr [eax+1],dl
 005CA55A    mov        byte ptr [eax],1
 005CA55D    lea        edx,[ebp-140]
 005CA563    lea        eax,[ebp-13C]
 005CA569    mov        cl,0B
 005CA56B    call       @PStrNCat
 005CA570    lea        edx,[ebp-13C]
 005CA576    lea        eax,[ebp-150]
 005CA57C    call       @PStrCpy
 005CA581    lea        eax,[ebp-140]
 005CA587    mov        dl,byte ptr [esi]
 005CA589    mov        byte ptr [eax+1],dl
 005CA58C    mov        byte ptr [eax],1
 005CA58F    lea        edx,[ebp-140]
 005CA595    lea        eax,[ebp-150]
 005CA59B    mov        cl,0C
 005CA59D    call       @PStrNCat
 005CA5A2    lea        edx,[ebp-150]
 005CA5A8    lea        eax,[ebp-23]
 005CA5AB    mov        cl,0A
 005CA5AD    call       @PStrNCpy
 005CA5B2    inc        esi
 005CA5B3    inc        ebx
 005CA5B4    dec        edi
<005CA5B5    jne        005CA541
 005CA5B7    mov        al,[006172DC]
 005CA5BC    push       eax
 005CA5BD    lea        eax,[ebp-154]
 005CA5C3    lea        edx,[ebp-23]
 005CA5C6    call       @LStrFromString
 005CA5CB    mov        edx,dword ptr [ebp-154]
 005CA5D1    mov        cl,byte ptr ds:[6172E8]
 005CA5D7    mov        eax,dword ptr [ebp-4]
 005CA5DA    call       005C9E94
 005CA5DF    add        dword ptr [ebp-8],2
 005CA5E3    mov        eax,dword ptr [ebp-0C]
 005CA5E6    call       @LStrLen
 005CA5EB    cmp        eax,dword ptr [ebp-8]
<005CA5EE    jg         005CA4B4
 005CA5F4    mov        al,[006172DC]
 005CA5F9    push       eax
 005CA5FA    lea        edx,[ebp-158]
 005CA600    mov        eax,[006172F0]
 005CA605    call       IntToStr
 005CA60A    mov        edx,dword ptr [ebp-158]
 005CA610    mov        cl,byte ptr ds:[6172E8]
 005CA616    mov        eax,dword ptr [ebp-4]
 005CA619    call       005C9E94
 005CA61E    mov        eax,dword ptr [ebp-4]
 005CA621    mov        edx,dword ptr [eax]
 005CA623    call       dword ptr [edx+4]; TRPBars2of5.sub_005C9804
 005CA626    xor        eax,eax
 005CA628    pop        edx
 005CA629    pop        ecx
 005CA62A    pop        ecx
 005CA62B    mov        dword ptr fs:[eax],edx
 005CA62E    push       5CA643
 005CA633    mov        eax,dword ptr [ebp-4]
 005CA636    call       005C9D24
 005CA63B    ret
<005CA63C    jmp        @HandleFinally
<005CA641    jmp        005CA633
 005CA643    xor        eax,eax
 005CA645    pop        edx
 005CA646    pop        ecx
 005CA647    pop        ecx
 005CA648    mov        dword ptr fs:[eax],edx
 005CA64B    push       5CA688
 005CA650    lea        eax,[ebp-158]
 005CA656    mov        edx,2
 005CA65B    call       @LStrArrayClr
 005CA660    lea        eax,[ebp-130]
 005CA666    mov        edx,2
 005CA66B    call       @LStrArrayClr
 005CA670    lea        eax,[ebp-28]
 005CA673    call       @LStrClr
 005CA678    lea        eax,[ebp-0C]
 005CA67B    call       @LStrClr
 005CA680    ret
<005CA681    jmp        @HandleFinally
<005CA686    jmp        005CA650
 005CA688    pop        edi
 005CA689    pop        esi
 005CA68A    pop        ebx
 005CA68B    mov        esp,ebp
 005CA68D    pop        ebp
 005CA68E    ret
*}
end;

//005CA690
constructor TRPBarsCode39.Create;
begin
{*
 005CA690    push       ebx
 005CA691    push       esi
 005CA692    test       dl,dl
>005CA694    je         005CA69E
 005CA696    add        esp,0FFFFFFF0
 005CA699    call       @ClassCreate
 005CA69E    mov        ebx,edx
 005CA6A0    mov        esi,eax
 005CA6A2    xor        edx,edx
 005CA6A4    mov        eax,esi
 005CA6A6    call       005C92C0
 005CA6AB    xor        eax,eax
 005CA6AD    mov        dword ptr [esi+8],eax; TRPBarsCode39.?f8:?Double
 005CA6B0    mov        dword ptr [esi+0C],40080000; TRPBarsCode39.?fC:dword
 005CA6B7    mov        dword ptr [esi+54],2B; TRPBarsCode39.?f54:dword
 005CA6BE    xor        edx,edx
 005CA6C0    mov        eax,esi
 005CA6C2    mov        ecx,dword ptr [eax]
 005CA6C4    call       dword ptr [ecx+0C]; TRPBarsCode39.sub_005C97E0
 005CA6C7    mov        eax,esi
 005CA6C9    test       bl,bl
>005CA6CB    je         005CA6DC
 005CA6CD    call       @AfterConstruction
 005CA6D2    pop        dword ptr fs:[0]
 005CA6D9    add        esp,0C
 005CA6DC    mov        eax,esi
 005CA6DE    pop        esi
 005CA6DF    pop        ebx
 005CA6E0    ret
*}
end;

//005CA6E4
//function sub_005CA6E4(?:?):?;
//begin
{*
 005CA6E4    push       ebp
 005CA6E5    mov        ebp,esp
 005CA6E7    xor        ecx,ecx
 005CA6E9    push       ecx
 005CA6EA    push       ecx
 005CA6EB    push       ecx
 005CA6EC    push       ecx
 005CA6ED    push       ebx
 005CA6EE    mov        ebx,edx
 005CA6F0    xor        edx,edx
 005CA6F2    push       ebp
 005CA6F3    push       5CA777
 005CA6F8    push       dword ptr fs:[edx]
 005CA6FB    mov        dword ptr fs:[edx],esp
 005CA6FE    cmp        byte ptr [eax+78],0; TRPBarsCode39.?f78:byte
>005CA702    je         005CA731
 005CA704    lea        eax,[ebp-4]
 005CA707    mov        edx,617438; gvar_00617438:ShortString
 005CA70C    call       @LStrFromString
 005CA711    mov        eax,dword ptr [ebp-4]
 005CA714    push       eax
 005CA715    lea        eax,[ebp-8]
 005CA718    mov        edx,ebx
 005CA71A    call       @LStrFromChar
 005CA71F    mov        eax,dword ptr [ebp-8]
 005CA722    pop        edx
 005CA723    call       AnsiPos
 005CA728    test       eax,eax
 005CA72A    setg       al
 005CA72D    mov        ebx,eax
>005CA72F    jmp        005CA75C
 005CA731    lea        eax,[ebp-0C]
 005CA734    mov        edx,617360; gvar_00617360:ShortString
 005CA739    call       @LStrFromString
 005CA73E    mov        eax,dword ptr [ebp-0C]
 005CA741    push       eax
 005CA742    lea        eax,[ebp-10]
 005CA745    mov        edx,ebx
 005CA747    call       @LStrFromChar
 005CA74C    mov        eax,dword ptr [ebp-10]
 005CA74F    pop        edx
 005CA750    call       AnsiPos
 005CA755    test       eax,eax
 005CA757    setg       al
 005CA75A    mov        ebx,eax
 005CA75C    xor        eax,eax
 005CA75E    pop        edx
 005CA75F    pop        ecx
 005CA760    pop        ecx
 005CA761    mov        dword ptr fs:[eax],edx
 005CA764    push       5CA77E
 005CA769    lea        eax,[ebp-10]
 005CA76C    mov        edx,4
 005CA771    call       @LStrArrayClr
 005CA776    ret
<005CA777    jmp        @HandleFinally
<005CA77C    jmp        005CA769
 005CA77E    mov        eax,ebx
 005CA780    pop        ebx
 005CA781    mov        esp,ebp
 005CA783    pop        ebp
 005CA784    ret
*}
//end;

//005CA788
procedure sub_005CA788;
begin
{*
 005CA788    push       ebp
 005CA789    mov        ebp,esp
 005CA78B    add        esp,0FFFFFFE8
 005CA78E    push       ebx
 005CA78F    push       esi
 005CA790    xor        edx,edx
 005CA792    mov        dword ptr [ebp-10],edx
 005CA795    mov        dword ptr [ebp-0C],edx
 005CA798    mov        ebx,eax
 005CA79A    xor        eax,eax
 005CA79C    push       ebp
 005CA79D    push       5CA831
 005CA7A2    push       dword ptr fs:[eax]
 005CA7A5    mov        dword ptr fs:[eax],esp
 005CA7A8    cmp        byte ptr [ebx+78],0; TRPBarsCode39.?f78:byte
>005CA7AC    je         005CA7BA
 005CA7AE    lea        edx,[ebp-0C]
 005CA7B1    mov        eax,ebx
 005CA7B3    call       005CAB90
>005CA7B8    jmp        005CA7C5
 005CA7BA    lea        eax,[ebp-0C]
 005CA7BD    mov        edx,dword ptr [ebx+34]; TRPBarsCode39.?f34:String
 005CA7C0    call       @LStrLAsg
 005CA7C5    mov        eax,dword ptr [ebp-0C]
 005CA7C8    call       @LStrLen
 005CA7CD    mov        esi,eax
 005CA7CF    cmp        byte ptr [ebx+50],0; TRPBarsCode39.?f50:byte
>005CA7D3    je         005CA7E9
 005CA7D5    lea        edx,[ebp-10]
 005CA7D8    mov        eax,ebx
 005CA7DA    mov        ecx,dword ptr [eax]
 005CA7DC    call       dword ptr [ecx+14]; TRPBarsCode39.sub_005CA98C
 005CA7DF    mov        eax,dword ptr [ebp-10]
 005CA7E2    call       @LStrLen
 005CA7E7    add        esi,eax
 005CA7E9    fld        dword ptr ds:[5CA844]; 3:Single
 005CA7EF    fmul       qword ptr [ebx+8]; TRPBarsCode39.?f8:?Double
 005CA7F2    fadd       dword ptr ds:[5CA848]; 6:Single
 005CA7F8    lea        eax,[esi+2]
 005CA7FB    mov        dword ptr [ebp-14],eax
 005CA7FE    fild       dword ptr [ebp-14]
 005CA801    fmulp      st(1),st
 005CA803    fmul       qword ptr [ebx+10]; TRPBarsCode39.?f10:?Double
 005CA806    inc        esi
 005CA807    mov        dword ptr [ebp-18],esi
 005CA80A    fild       dword ptr [ebp-18]
 005CA80D    fmul       qword ptr [ebx+10]; TRPBarsCode39.?f10:?Double
 005CA810    faddp      st(1),st
 005CA812    fstp       qword ptr [ebp-8]
 005CA815    wait
 005CA816    xor        eax,eax
 005CA818    pop        edx
 005CA819    pop        ecx
 005CA81A    pop        ecx
 005CA81B    mov        dword ptr fs:[eax],edx
 005CA81E    push       5CA838
 005CA823    lea        eax,[ebp-10]
 005CA826    mov        edx,2
 005CA82B    call       @LStrArrayClr
 005CA830    ret
<005CA831    jmp        @HandleFinally
<005CA836    jmp        005CA823
 005CA838    fld        qword ptr [ebp-8]
 005CA83B    pop        esi
 005CA83C    pop        ebx
 005CA83D    mov        esp,ebp
 005CA83F    pop        ebp
 005CA840    ret
*}
end;

//005CA84C
//procedure sub_005CA84C(?:?);
//begin
{*
 005CA84C    push       ebp
 005CA84D    mov        ebp,esp
 005CA84F    push       0
 005CA851    push       0
 005CA853    push       ebx
 005CA854    push       esi
 005CA855    mov        esi,edx
 005CA857    mov        ebx,eax
 005CA859    xor        eax,eax
 005CA85B    push       ebp
 005CA85C    push       5CA8C4
 005CA861    push       dword ptr fs:[eax]
 005CA864    mov        dword ptr fs:[eax],esp
 005CA867    cmp        byte ptr [ebx+78],0; TRPBarsCode39.?f78:byte
>005CA86B    je         005CA879
 005CA86D    lea        edx,[ebp-4]
 005CA870    mov        eax,ebx
 005CA872    call       005CAB90
>005CA877    jmp        005CA884
 005CA879    lea        eax,[ebp-4]
 005CA87C    mov        edx,dword ptr [ebx+34]; TRPBarsCode39.?f34:String
 005CA87F    call       @LStrLAsg
 005CA884    cmp        byte ptr [ebx+50],0; TRPBarsCode39.?f50:byte
>005CA888    je         005CA89F
 005CA88A    lea        edx,[ebp-8]
 005CA88D    mov        eax,ebx
 005CA88F    mov        ecx,dword ptr [eax]
 005CA891    call       dword ptr [ecx+14]; TRPBarsCode39.sub_005CA98C
 005CA894    mov        edx,dword ptr [ebp-8]
 005CA897    lea        eax,[ebp-4]
 005CA89A    call       @LStrCat
 005CA89F    mov        eax,esi
 005CA8A1    mov        edx,dword ptr [ebp-4]
 005CA8A4    call       @LStrAsg
 005CA8A9    xor        eax,eax
 005CA8AB    pop        edx
 005CA8AC    pop        ecx
 005CA8AD    pop        ecx
 005CA8AE    mov        dword ptr fs:[eax],edx
 005CA8B1    push       5CA8CB
 005CA8B6    lea        eax,[ebp-8]
 005CA8B9    mov        edx,2
 005CA8BE    call       @LStrArrayClr
 005CA8C3    ret
<005CA8C4    jmp        @HandleFinally
<005CA8C9    jmp        005CA8B6
 005CA8CB    pop        esi
 005CA8CC    pop        ebx
 005CA8CD    pop        ecx
 005CA8CE    pop        ecx
 005CA8CF    pop        ebp
 005CA8D0    ret
*}
//end;

//005CA8D4
//procedure sub_005CA8D4(?:?; ?:?);
//begin
{*
 005CA8D4    push       ebp
 005CA8D5    mov        ebp,esp
 005CA8D7    sub        dl,31
>005CA8DA    je         005CA8E2
 005CA8DC    dec        dl
>005CA8DE    je         005CA8EF
>005CA8E0    jmp        005CA8F8
 005CA8E2    mov        edx,dword ptr [eax+10]; TRPBarsCode39.?f10:?Double
 005CA8E5    mov        dword ptr [ecx],edx
 005CA8E7    mov        edx,dword ptr [eax+14]; TRPBarsCode39.?f14:dword
 005CA8EA    mov        dword ptr [ecx+4],edx
>005CA8ED    jmp        005CA8F8
 005CA8EF    fld        qword ptr [eax+10]; TRPBarsCode39.?f10:?Double
 005CA8F2    fmul       qword ptr [eax+8]; TRPBarsCode39.?f8:?Double
 005CA8F5    fstp       qword ptr [ecx]
 005CA8F7    wait
 005CA8F8    pop        ebp
 005CA8F9    ret        8
*}
//end;

//005CA8FC
//procedure sub_005CA8FC(?:?; ?:?);
//begin
{*
 005CA8FC    push       ebp
 005CA8FD    mov        ebp,esp
 005CA8FF    push       0
 005CA901    push       0
 005CA903    push       ebx
 005CA904    push       esi
 005CA905    push       edi
 005CA906    mov        edi,ecx
 005CA908    mov        ebx,edx
 005CA90A    mov        esi,eax
 005CA90C    xor        eax,eax
 005CA90E    push       ebp
 005CA90F    push       5CA97B
 005CA914    push       dword ptr fs:[eax]
 005CA917    mov        dword ptr fs:[eax],esp
 005CA91A    mov        eax,edi
 005CA91C    call       @LStrClr
 005CA921    mov        edx,ebx
 005CA923    mov        eax,esi
 005CA925    mov        ecx,dword ptr [eax]
 005CA927    call       dword ptr [ecx+2C]; TRPBarsCode39.sub_005CA6E4
 005CA92A    test       al,al
>005CA92C    je         005CA960
 005CA92E    lea        eax,[ebp-4]
 005CA931    mov        edx,617360; gvar_00617360:ShortString
 005CA936    call       @LStrFromString
 005CA93B    mov        eax,dword ptr [ebp-4]
 005CA93E    push       eax
 005CA93F    lea        eax,[ebp-8]
 005CA942    mov        edx,ebx
 005CA944    call       @LStrFromChar
 005CA949    mov        eax,dword ptr [ebp-8]
 005CA94C    pop        edx
 005CA94D    call       AnsiPos
 005CA952    mov        eax,dword ptr [eax*4+617388]
 005CA959    mov        edx,edi
 005CA95B    call       IntToStr
 005CA960    xor        eax,eax
 005CA962    pop        edx
 005CA963    pop        ecx
 005CA964    pop        ecx
 005CA965    mov        dword ptr fs:[eax],edx
 005CA968    push       5CA982
 005CA96D    lea        eax,[ebp-8]
 005CA970    mov        edx,2
 005CA975    call       @LStrArrayClr
 005CA97A    ret
<005CA97B    jmp        @HandleFinally
<005CA980    jmp        005CA96D
 005CA982    pop        edi
 005CA983    pop        esi
 005CA984    pop        ebx
 005CA985    pop        ecx
 005CA986    pop        ecx
 005CA987    pop        ebp
 005CA988    ret
*}
//end;

//005CA98C
//procedure sub_005CA98C(?:?);
//begin
{*
 005CA98C    push       ebp
 005CA98D    mov        ebp,esp
 005CA98F    add        esp,0FFFFFFF0
 005CA992    push       ebx
 005CA993    push       esi
 005CA994    push       edi
 005CA995    xor        ecx,ecx
 005CA997    mov        dword ptr [ebp-0C],ecx
 005CA99A    mov        dword ptr [ebp-10],ecx
 005CA99D    mov        dword ptr [ebp-4],edx
 005CA9A0    mov        edi,eax
 005CA9A2    xor        eax,eax
 005CA9A4    push       ebp
 005CA9A5    push       5CAA46
 005CA9AA    push       dword ptr fs:[eax]
 005CA9AD    mov        dword ptr fs:[eax],esp
 005CA9B0    xor        esi,esi
 005CA9B2    mov        eax,dword ptr [edi+34]; TRPBarsCode39.?f34:String
 005CA9B5    call       @LStrLen
 005CA9BA    mov        ebx,eax
 005CA9BC    test       ebx,ebx
>005CA9BE    jle        005CA9FC
 005CA9C0    mov        dword ptr [ebp-8],1
 005CA9C7    lea        eax,[ebp-0C]
 005CA9CA    mov        edx,dword ptr [edi+34]; TRPBarsCode39.?f34:String
 005CA9CD    mov        ecx,dword ptr [ebp-8]
 005CA9D0    mov        dl,byte ptr [edx+ecx-1]
 005CA9D4    call       @LStrFromChar
 005CA9D9    mov        eax,dword ptr [ebp-0C]
 005CA9DC    push       eax
 005CA9DD    lea        eax,[ebp-10]
 005CA9E0    mov        edx,617360; gvar_00617360:ShortString
 005CA9E5    call       @LStrFromString
 005CA9EA    mov        edx,dword ptr [ebp-10]
 005CA9ED    pop        eax
 005CA9EE    call       AnsiPos
 005CA9F3    dec        eax
 005CA9F4    add        esi,eax
 005CA9F6    inc        dword ptr [ebp-8]
 005CA9F9    dec        ebx
<005CA9FA    jne        005CA9C7
 005CA9FC    mov        eax,esi
 005CA9FE    cdq
 005CA9FF    idiv       eax,dword ptr [edi+54]; TRPBarsCode39.?f54:dword
 005CAA02    mov        esi,edx
 005CAA04    cmp        byte ptr [edi+78],0; TRPBarsCode39.?f78:byte
>005CAA08    je         005CAA1D
 005CAA0A    mov        eax,dword ptr [ebp-4]
 005CAA0D    lea        edx,[esi+esi*2]
 005CAA10    add        edx,6174BC
 005CAA16    call       @LStrFromString
>005CAA1B    jmp        005CAA2B
 005CAA1D    mov        eax,dword ptr [ebp-4]
 005CAA20    mov        dl,byte ptr [esi+617361]
 005CAA26    call       @LStrFromChar
 005CAA2B    xor        eax,eax
 005CAA2D    pop        edx
 005CAA2E    pop        ecx
 005CAA2F    pop        ecx
 005CAA30    mov        dword ptr fs:[eax],edx
 005CAA33    push       5CAA4D
 005CAA38    lea        eax,[ebp-10]
 005CAA3B    mov        edx,2
 005CAA40    call       @LStrArrayClr
 005CAA45    ret
<005CAA46    jmp        @HandleFinally
<005CAA4B    jmp        005CAA38
 005CAA4D    pop        edi
 005CAA4E    pop        esi
 005CAA4F    pop        ebx
 005CAA50    mov        esp,ebp
 005CAA52    pop        ebp
 005CAA53    ret
*}
//end;

//005CAA54
procedure sub_005CAA54;
begin
{*
 005CAA54    push       ebp
 005CAA55    mov        ebp,esp
 005CAA57    xor        ecx,ecx
 005CAA59    push       ecx
 005CAA5A    push       ecx
 005CAA5B    push       ecx
 005CAA5C    push       ecx
 005CAA5D    push       ecx
 005CAA5E    push       ebx
 005CAA5F    push       esi
 005CAA60    push       edi
 005CAA61    mov        dword ptr [ebp-4],eax
 005CAA64    xor        eax,eax
 005CAA66    push       ebp
 005CAA67    push       5CAB81
 005CAA6C    push       dword ptr fs:[eax]
 005CAA6F    mov        dword ptr fs:[eax],esp
 005CAA72    mov        eax,dword ptr [ebp-4]
 005CAA75    call       005C9D80
 005CAA7A    xor        eax,eax
 005CAA7C    push       ebp
 005CAA7D    push       5CAB5F
 005CAA82    push       dword ptr fs:[eax]
 005CAA85    mov        dword ptr fs:[eax],esp
 005CAA88    mov        eax,dword ptr [ebp-4]
 005CAA8B    call       005C9CA4
 005CAA90    lea        edx,[ebp-8]
 005CAA93    mov        eax,dword ptr [ebp-4]
 005CAA96    mov        ecx,dword ptr [eax]
 005CAA98    call       dword ptr [ecx+1C]; TRPBarsCode39.sub_005CA84C
 005CAA9B    mov        eax,dword ptr [ebp-4]
 005CAA9E    call       005C93D0
 005CAAA3    mov        eax,dword ptr [ebp-4]
 005CAAA6    fstp       qword ptr [eax+38]; TRPBarsCode39.?f38:?Double
 005CAAA9    wait
 005CAAAA    mov        eax,dword ptr [ebp-4]
 005CAAAD    call       005C9664
 005CAAB2    mov        eax,dword ptr [ebp-4]
 005CAAB5    fstp       qword ptr [eax+40]; TRPBarsCode39.?f40:?Double
 005CAAB8    wait
 005CAAB9    mov        al,[006172E0]
 005CAABE    push       eax
 005CAABF    lea        edx,[ebp-0C]
 005CAAC2    mov        eax,[0061735C]
 005CAAC7    call       IntToStr
 005CAACC    mov        edx,dword ptr [ebp-0C]
 005CAACF    mov        cl,byte ptr ds:[6172E8]
 005CAAD5    mov        eax,dword ptr [ebp-4]
 005CAAD8    call       005C9E94
 005CAADD    mov        eax,dword ptr [ebp-8]
 005CAAE0    call       @LStrLen
 005CAAE5    mov        ebx,eax
 005CAAE7    test       ebx,ebx
>005CAAE9    jle        005CAB1D
 005CAAEB    mov        esi,1
 005CAAF0    mov        al,[006172E0]
 005CAAF5    push       eax
 005CAAF6    mov        eax,dword ptr [ebp-8]
 005CAAF9    mov        dl,byte ptr [eax+esi-1]
 005CAAFD    lea        ecx,[ebp-10]
 005CAB00    mov        eax,dword ptr [ebp-4]
 005CAB03    mov        edi,dword ptr [eax]
 005CAB05    call       dword ptr [edi+10]; TRPBarsCode39.sub_005CA8FC
 005CAB08    mov        edx,dword ptr [ebp-10]
 005CAB0B    mov        cl,byte ptr ds:[6172E8]
 005CAB11    mov        eax,dword ptr [ebp-4]
 005CAB14    call       005C9E94
 005CAB19    inc        esi
 005CAB1A    dec        ebx
<005CAB1B    jne        005CAAF0
 005CAB1D    mov        al,[006172E0]
 005CAB22    push       eax
 005CAB23    lea        edx,[ebp-14]
 005CAB26    mov        eax,[0061735C]
 005CAB2B    call       IntToStr
 005CAB30    mov        edx,dword ptr [ebp-14]
 005CAB33    mov        cl,byte ptr ds:[6172E8]
 005CAB39    mov        eax,dword ptr [ebp-4]
 005CAB3C    call       005C9E94
 005CAB41    mov        eax,dword ptr [ebp-4]
 005CAB44    mov        edx,dword ptr [eax]
 005CAB46    call       dword ptr [edx+4]; TRPBarsCode39.sub_005C9804
 005CAB49    xor        eax,eax
 005CAB4B    pop        edx
 005CAB4C    pop        ecx
 005CAB4D    pop        ecx
 005CAB4E    mov        dword ptr fs:[eax],edx
 005CAB51    push       5CAB66
 005CAB56    mov        eax,dword ptr [ebp-4]
 005CAB59    call       005C9D24
 005CAB5E    ret
<005CAB5F    jmp        @HandleFinally
<005CAB64    jmp        005CAB56
 005CAB66    xor        eax,eax
 005CAB68    pop        edx
 005CAB69    pop        ecx
 005CAB6A    pop        ecx
 005CAB6B    mov        dword ptr fs:[eax],edx
 005CAB6E    push       5CAB88
 005CAB73    lea        eax,[ebp-14]
 005CAB76    mov        edx,4
 005CAB7B    call       @LStrArrayClr
 005CAB80    ret
<005CAB81    jmp        @HandleFinally
<005CAB86    jmp        005CAB73
 005CAB88    pop        edi
 005CAB89    pop        esi
 005CAB8A    pop        ebx
 005CAB8B    mov        esp,ebp
 005CAB8D    pop        ebp
 005CAB8E    ret
*}
end;

//005CAB90
//procedure sub_005CAB90(?:TRPBarsCode39; ?:AnsiString);
//begin
{*
 005CAB90    push       ebp
 005CAB91    mov        ebp,esp
 005CAB93    xor        ecx,ecx
 005CAB95    push       ecx
 005CAB96    push       ecx
 005CAB97    push       ecx
 005CAB98    push       ecx
 005CAB99    push       ebx
 005CAB9A    push       esi
 005CAB9B    push       edi
 005CAB9C    mov        esi,edx
 005CAB9E    mov        dword ptr [ebp-4],eax
 005CABA1    xor        eax,eax
 005CABA3    push       ebp
 005CABA4    push       5CAC32
 005CABA9    push       dword ptr fs:[eax]
 005CABAC    mov        dword ptr fs:[eax],esp
 005CABAF    mov        eax,esi
 005CABB1    call       @LStrClr
 005CABB6    mov        eax,dword ptr [ebp-4]
 005CABB9    mov        eax,dword ptr [eax+34]; TRPBarsCode39.?f34:String
 005CABBC    call       @LStrLen
 005CABC1    mov        ebx,eax
 005CABC3    test       ebx,ebx
>005CABC5    jle        005CAC17
 005CABC7    mov        edi,1
 005CABCC    lea        eax,[ebp-0C]
 005CABCF    mov        edx,dword ptr [ebp-4]
 005CABD2    mov        edx,dword ptr [edx+34]; TRPBarsCode39.?f34:String
 005CABD5    mov        dl,byte ptr [edx+edi-1]
 005CABD9    call       @LStrFromChar
 005CABDE    mov        eax,dword ptr [ebp-0C]
 005CABE1    push       eax
 005CABE2    lea        eax,[ebp-10]
 005CABE5    mov        edx,617438; gvar_00617438:ShortString
 005CABEA    call       @LStrFromString
 005CABEF    mov        edx,dword ptr [ebp-10]
 005CABF2    pop        eax
 005CABF3    call       AnsiPos
 005CABF8    lea        eax,[eax+eax*2]
 005CABFB    lea        edx,[eax+6174B9]
 005CAC01    lea        eax,[ebp-8]
 005CAC04    call       @LStrFromString
 005CAC09    mov        edx,dword ptr [ebp-8]
 005CAC0C    mov        eax,esi
 005CAC0E    call       @LStrCat
 005CAC13    inc        edi
 005CAC14    dec        ebx
<005CAC15    jne        005CABCC
 005CAC17    xor        eax,eax
 005CAC19    pop        edx
 005CAC1A    pop        ecx
 005CAC1B    pop        ecx
 005CAC1C    mov        dword ptr fs:[eax],edx
 005CAC1F    push       5CAC39
 005CAC24    lea        eax,[ebp-10]
 005CAC27    mov        edx,3
 005CAC2C    call       @LStrArrayClr
 005CAC31    ret
<005CAC32    jmp        @HandleFinally
<005CAC37    jmp        005CAC24
 005CAC39    pop        edi
 005CAC3A    pop        esi
 005CAC3B    pop        ebx
 005CAC3C    mov        esp,ebp
 005CAC3E    pop        ebp
 005CAC3F    ret
*}
//end;

//005CAC40
constructor TRPBarsPostNet.Create;
begin
{*
 005CAC40    push       ebx
 005CAC41    push       esi
 005CAC42    test       dl,dl
>005CAC44    je         005CAC4E
 005CAC46    add        esp,0FFFFFFF0
 005CAC49    call       @ClassCreate
 005CAC4E    mov        ebx,edx
 005CAC50    mov        esi,eax
 005CAC52    xor        edx,edx
 005CAC54    mov        eax,esi
 005CAC56    call       005C92C0
 005CAC5B    xor        eax,eax
 005CAC5D    mov        dword ptr [esi+18],eax; TRPBarsPostNet.?f18:?Double
 005CAC60    mov        dword ptr [esi+1C],3FC00000; TRPBarsPostNet.?f1C:dword
 005CAC67    mov        dword ptr [esi+10],47AE147B; TRPBarsPostNet.?f10:?Double
 005CAC6E    mov        dword ptr [esi+14],3F947AE1; TRPBarsPostNet.?f14:dword
 005CAC75    mov        dword ptr [esi+54],0A; TRPBarsPostNet.?f54:dword
 005CAC7C    mov        dl,1
 005CAC7E    mov        eax,esi
 005CAC80    mov        ecx,dword ptr [eax]
 005CAC82    call       dword ptr [ecx+0C]; TRPBarsPostNet.sub_005C97E0
 005CAC85    mov        eax,esi
 005CAC87    test       bl,bl
>005CAC89    je         005CAC9A
 005CAC8B    call       @AfterConstruction
 005CAC90    pop        dword ptr fs:[0]
 005CAC97    add        esp,0C
 005CAC9A    mov        eax,esi
 005CAC9C    pop        esi
 005CAC9D    pop        ebx
 005CAC9E    ret
*}
end;

//005CACA0
//function sub_005CACA0(?:?):?;
//begin
{*
 005CACA0    push       ebp
 005CACA1    mov        ebp,esp
 005CACA3    push       0
 005CACA5    push       0
 005CACA7    push       ebx
 005CACA8    mov        ebx,edx
 005CACAA    xor        eax,eax
 005CACAC    push       ebp
 005CACAD    push       5CACFE
 005CACB2    push       dword ptr fs:[eax]
 005CACB5    mov        dword ptr fs:[eax],esp
 005CACB8    lea        eax,[ebp-4]
 005CACBB    mov        edx,617328; gvar_00617328:ShortString
 005CACC0    call       @LStrFromString
 005CACC5    mov        eax,dword ptr [ebp-4]
 005CACC8    push       eax
 005CACC9    lea        eax,[ebp-8]
 005CACCC    mov        edx,ebx
 005CACCE    call       @LStrFromChar
 005CACD3    mov        eax,dword ptr [ebp-8]
 005CACD6    pop        edx
 005CACD7    call       AnsiPos
 005CACDC    test       eax,eax
 005CACDE    setg       al
 005CACE1    mov        ebx,eax
 005CACE3    xor        eax,eax
 005CACE5    pop        edx
 005CACE6    pop        ecx
 005CACE7    pop        ecx
 005CACE8    mov        dword ptr fs:[eax],edx
 005CACEB    push       5CAD05
 005CACF0    lea        eax,[ebp-8]
 005CACF3    mov        edx,2
 005CACF8    call       @LStrArrayClr
 005CACFD    ret
<005CACFE    jmp        @HandleFinally
<005CAD03    jmp        005CACF0
 005CAD05    mov        eax,ebx
 005CAD07    pop        ebx
 005CAD08    pop        ecx
 005CAD09    pop        ecx
 005CAD0A    pop        ebp
 005CAD0B    ret
*}
//end;

//005CAD0C
procedure sub_005CAD0C;
begin
{*
 005CAD0C    push       ebx
 005CAD0D    add        esp,0FFFFFFF4
 005CAD10    mov        ebx,eax
 005CAD12    mov        eax,dword ptr [ebx+34]; TRPBarsPostNet.?f34:String
 005CAD15    call       @LStrLen
 005CAD1A    add        eax,eax
 005CAD1C    lea        eax,[eax+eax*4]
 005CAD1F    mov        dword ptr [esp+8],eax
 005CAD23    fild       dword ptr [esp+8]
 005CAD27    fmul       qword ptr [ebx+10]; TRPBarsPostNet.?f10:?Double
 005CAD2A    fld        qword ptr [ebx+10]; TRPBarsPostNet.?f10:?Double
 005CAD2D    fmul       dword ptr ds:[5CAD58]; 3:Single
 005CAD33    faddp      st(1),st
 005CAD35    fstp       qword ptr [esp]
 005CAD38    wait
 005CAD39    cmp        byte ptr [ebx+50],0; TRPBarsPostNet.?f50:byte
>005CAD3D    je         005CAD4F
 005CAD3F    fld        qword ptr [ebx+10]; TRPBarsPostNet.?f10:?Double
 005CAD42    fmul       dword ptr ds:[5CAD5C]; 10:Single
 005CAD48    fadd       qword ptr [esp]
 005CAD4B    fstp       qword ptr [esp]
 005CAD4E    wait
 005CAD4F    fld        qword ptr [esp]
 005CAD52    add        esp,0C
 005CAD55    pop        ebx
 005CAD56    ret
*}
end;

//005CAD60
//procedure sub_005CAD60(?:?);
//begin
{*
 005CAD60    push       ebp
 005CAD61    mov        ebp,esp
 005CAD63    push       0
 005CAD65    push       ebx
 005CAD66    push       esi
 005CAD67    mov        esi,edx
 005CAD69    mov        ebx,eax
 005CAD6B    xor        eax,eax
 005CAD6D    push       ebp
 005CAD6E    push       5CADB3
 005CAD73    push       dword ptr fs:[eax]
 005CAD76    mov        dword ptr fs:[eax],esp
 005CAD79    mov        eax,esi
 005CAD7B    mov        edx,dword ptr [ebx+34]; TRPBarsPostNet.?f34:String
 005CAD7E    call       @LStrAsg
 005CAD83    cmp        byte ptr [ebx+50],0; TRPBarsPostNet.?f50:byte
>005CAD87    je         005CAD9D
 005CAD89    lea        edx,[ebp-4]
 005CAD8C    mov        eax,ebx
 005CAD8E    mov        ecx,dword ptr [eax]
 005CAD90    call       dword ptr [ecx+14]; TRPBarsPostNet.sub_005CAF6C
 005CAD93    mov        edx,dword ptr [ebp-4]
 005CAD96    mov        eax,esi
 005CAD98    call       @LStrCat
 005CAD9D    xor        eax,eax
 005CAD9F    pop        edx
 005CADA0    pop        ecx
 005CADA1    pop        ecx
 005CADA2    mov        dword ptr fs:[eax],edx
 005CADA5    push       5CADBA
 005CADAA    lea        eax,[ebp-4]
 005CADAD    call       @LStrClr
 005CADB2    ret
<005CADB3    jmp        @HandleFinally
<005CADB8    jmp        005CADAA
 005CADBA    pop        esi
 005CADBB    pop        ebx
 005CADBC    pop        ecx
 005CADBD    pop        ebp
 005CADBE    ret
*}
//end;

//005CADC0
//procedure sub_005CADC0(?:?; ?:?; ?:?; ?:?);
//begin
{*
 005CADC0    push       ebp
 005CADC1    mov        ebp,esp
 005CADC3    and        edx,0FF
 005CADC9    add        edx,0FFFFFFD0
 005CADCC    cmp        edx,5
>005CADCF    ja         005CAEC9
 005CADD5    jmp        dword ptr [edx*4+5CADDC]
 005CADD5    dd         5CADF4
 005CADD5    dd         5CAE06
 005CADD5    dd         5CAE51
 005CADD5    dd         5CAE7A
 005CADD5    dd         5CAE95
 005CADD5    dd         5CAEB0
 005CADF4    mov        dword ptr [ecx],25460AA6
 005CADFA    mov        dword ptr [ecx+4],3F9A0275
>005CAE01    jmp        005CAEC9
 005CAE06    mov        edx,dword ptr [eax+10]; TRPBarsPostNet.?f10:?Double
 005CAE09    mov        dword ptr [ecx],edx
 005CAE0B    mov        edx,dword ptr [eax+14]; TRPBarsPostNet.?f14:dword
 005CAE0E    mov        dword ptr [ecx+4],edx
 005CAE11    fld        tbyte ptr ds:[5CAED0]; 0,4:Extended
 005CAE17    fmul       qword ptr [eax+18]; TRPBarsPostNet.?f18:?Double
 005CAE1A    mov        edx,dword ptr [ebp+0C]
 005CAE1D    fstp       qword ptr [edx]
 005CAE1F    wait
 005CAE20    mov        dl,byte ptr [eax+5D]; TRPBarsPostNet.?f5D:byte
 005CAE23    add        dl,0FE
 005CAE26    sub        dl,2
>005CAE29    jae        005CAE3E
 005CAE2B    fld        qword ptr [eax+40]; TRPBarsPostNet.?f40:?Double
 005CAE2E    mov        eax,dword ptr [ebp+0C]
 005CAE31    fsub       qword ptr [eax]
 005CAE33    mov        eax,dword ptr [ebp+8]
 005CAE36    fstp       qword ptr [eax]
 005CAE38    wait
>005CAE39    jmp        005CAEC9
 005CAE3E    fld        qword ptr [eax+40]; TRPBarsPostNet.?f40:?Double
 005CAE41    fadd       qword ptr [eax+18]; TRPBarsPostNet.?f18:?Double
 005CAE44    mov        eax,dword ptr [ebp+0C]
 005CAE47    fsub       qword ptr [eax]
 005CAE49    mov        eax,dword ptr [ebp+8]
 005CAE4C    fstp       qword ptr [eax]
 005CAE4E    wait
>005CAE4F    jmp        005CAEC9
 005CAE51    mov        edx,dword ptr [eax+10]; TRPBarsPostNet.?f10:?Double
 005CAE54    mov        dword ptr [ecx],edx
 005CAE56    mov        edx,dword ptr [eax+14]; TRPBarsPostNet.?f14:dword
 005CAE59    mov        dword ptr [ecx+4],edx
 005CAE5C    mov        edx,dword ptr [ebp+0C]
 005CAE5F    mov        ecx,dword ptr [eax+18]; TRPBarsPostNet.?f18:?Double
 005CAE62    mov        dword ptr [edx],ecx
 005CAE64    mov        ecx,dword ptr [eax+1C]; TRPBarsPostNet.?f1C:dword
 005CAE67    mov        dword ptr [edx+4],ecx
 005CAE6A    mov        edx,dword ptr [ebp+8]
 005CAE6D    mov        ecx,dword ptr [eax+40]; TRPBarsPostNet.?f40:?Double
 005CAE70    mov        dword ptr [edx],ecx
 005CAE72    mov        ecx,dword ptr [eax+44]; TRPBarsPostNet.?f44:dword
 005CAE75    mov        dword ptr [edx+4],ecx
>005CAE78    jmp        005CAEC9
 005CAE7A    xor        eax,eax
 005CAE7C    mov        dword ptr [ecx],eax
 005CAE7E    mov        dword ptr [ecx+4],3FA00000
 005CAE85    mov        eax,dword ptr [ebp+0C]
 005CAE88    xor        edx,edx
 005CAE8A    mov        dword ptr [eax],edx
 005CAE8C    mov        dword ptr [eax+4],3FE40000
>005CAE93    jmp        005CAEC9
 005CAE95    xor        eax,eax
 005CAE97    mov        dword ptr [ecx],eax
 005CAE99    mov        dword ptr [ecx+4],3FB80000
 005CAEA0    mov        eax,dword ptr [ebp+0C]
 005CAEA3    xor        edx,edx
 005CAEA5    mov        dword ptr [eax],edx
 005CAEA7    mov        dword ptr [eax+4],3FE40000
>005CAEAE    jmp        005CAEC9
 005CAEB0    xor        eax,eax
 005CAEB2    mov        dword ptr [ecx],eax
 005CAEB4    mov        dword ptr [ecx+4],3FC40000
 005CAEBB    mov        eax,dword ptr [ebp+0C]
 005CAEBE    xor        edx,edx
 005CAEC0    mov        dword ptr [eax],edx
 005CAEC2    mov        dword ptr [eax+4],3FE40000
 005CAEC9    pop        ebp
 005CAECA    ret        8
*}
//end;

//005CAEDC
//procedure sub_005CAEDC(?:?; ?:?);
//begin
{*
 005CAEDC    push       ebp
 005CAEDD    mov        ebp,esp
 005CAEDF    push       0
 005CAEE1    push       0
 005CAEE3    push       ebx
 005CAEE4    push       esi
 005CAEE5    push       edi
 005CAEE6    mov        edi,ecx
 005CAEE8    mov        ebx,edx
 005CAEEA    mov        esi,eax
 005CAEEC    xor        eax,eax
 005CAEEE    push       ebp
 005CAEEF    push       5CAF5B
 005CAEF4    push       dword ptr fs:[eax]
 005CAEF7    mov        dword ptr fs:[eax],esp
 005CAEFA    mov        eax,edi
 005CAEFC    call       @LStrClr
 005CAF01    mov        edx,ebx
 005CAF03    mov        eax,esi
 005CAF05    mov        ecx,dword ptr [eax]
 005CAF07    call       dword ptr [ecx+2C]; TRPBarsPostNet.sub_005CACA0
 005CAF0A    test       al,al
>005CAF0C    je         005CAF40
 005CAF0E    lea        eax,[ebp-4]
 005CAF11    mov        edx,617328; gvar_00617328:ShortString
 005CAF16    call       @LStrFromString
 005CAF1B    mov        eax,dword ptr [ebp-4]
 005CAF1E    push       eax
 005CAF1F    lea        eax,[ebp-8]
 005CAF22    mov        edx,ebx
 005CAF24    call       @LStrFromChar
 005CAF29    mov        eax,dword ptr [ebp-8]
 005CAF2C    pop        edx
 005CAF2D    call       AnsiPos
 005CAF32    mov        eax,dword ptr [eax*4+617330]
 005CAF39    mov        edx,edi
 005CAF3B    call       IntToStr
 005CAF40    xor        eax,eax
 005CAF42    pop        edx
 005CAF43    pop        ecx
 005CAF44    pop        ecx
 005CAF45    mov        dword ptr fs:[eax],edx
 005CAF48    push       5CAF62
 005CAF4D    lea        eax,[ebp-8]
 005CAF50    mov        edx,2
 005CAF55    call       @LStrArrayClr
 005CAF5A    ret
<005CAF5B    jmp        @HandleFinally
<005CAF60    jmp        005CAF4D
 005CAF62    pop        edi
 005CAF63    pop        esi
 005CAF64    pop        ebx
 005CAF65    pop        ecx
 005CAF66    pop        ecx
 005CAF67    pop        ebp
 005CAF68    ret
*}
//end;

//005CAF6C
//procedure sub_005CAF6C(?:?);
//begin
{*
 005CAF6C    push       ebp
 005CAF6D    mov        ebp,esp
 005CAF6F    add        esp,0FFFFFFF4
 005CAF72    push       ebx
 005CAF73    push       esi
 005CAF74    push       edi
 005CAF75    xor        ecx,ecx
 005CAF77    mov        dword ptr [ebp-0C],ecx
 005CAF7A    mov        dword ptr [ebp-4],edx
 005CAF7D    mov        esi,eax
 005CAF7F    xor        eax,eax
 005CAF81    push       ebp
 005CAF82    push       5CAFFA
 005CAF87    push       dword ptr fs:[eax]
 005CAF8A    mov        dword ptr fs:[eax],esp
 005CAF8D    xor        eax,eax
 005CAF8F    mov        dword ptr [ebp-8],eax
 005CAF92    mov        eax,dword ptr [esi+34]; TRPBarsPostNet.?f34:String
 005CAF95    call       @LStrLen
 005CAF9A    mov        ebx,eax
 005CAF9C    test       ebx,ebx
>005CAF9E    jle        005CAFC3
 005CAFA0    mov        edi,1
 005CAFA5    lea        eax,[ebp-0C]
 005CAFA8    mov        edx,dword ptr [esi+34]; TRPBarsPostNet.?f34:String
 005CAFAB    mov        dl,byte ptr [edx+edi-1]
 005CAFAF    call       @LStrFromChar
 005CAFB4    mov        eax,dword ptr [ebp-0C]
 005CAFB7    call       StrToInt
 005CAFBC    add        dword ptr [ebp-8],eax
 005CAFBF    inc        edi
 005CAFC0    dec        ebx
<005CAFC1    jne        005CAFA5
 005CAFC3    mov        eax,dword ptr [ebp-8]
 005CAFC6    mov        ecx,dword ptr [esi+54]; TRPBarsPostNet.?f54:dword
 005CAFC9    cdq
 005CAFCA    idiv       eax,ecx
 005CAFCC    mov        eax,0A
 005CAFD1    sub        eax,edx
 005CAFD3    cdq
 005CAFD4    idiv       eax,ecx
 005CAFD6    mov        dword ptr [ebp-8],edx
 005CAFD9    mov        edx,dword ptr [ebp-4]
 005CAFDC    mov        eax,dword ptr [ebp-8]
 005CAFDF    call       IntToStr
 005CAFE4    xor        eax,eax
 005CAFE6    pop        edx
 005CAFE7    pop        ecx
 005CAFE8    pop        ecx
 005CAFE9    mov        dword ptr fs:[eax],edx
 005CAFEC    push       5CB001
 005CAFF1    lea        eax,[ebp-0C]
 005CAFF4    call       @LStrClr
 005CAFF9    ret
<005CAFFA    jmp        @HandleFinally
<005CAFFF    jmp        005CAFF1
 005CB001    pop        edi
 005CB002    pop        esi
 005CB003    pop        ebx
 005CB004    mov        esp,ebp
 005CB006    pop        ebp
 005CB007    ret
*}
//end;

//005CB008
procedure sub_005CB008;
begin
{*
 005CB008    push       ebp
 005CB009    mov        ebp,esp
 005CB00B    push       0
 005CB00D    push       0
 005CB00F    push       0
 005CB011    push       ebx
 005CB012    push       esi
 005CB013    push       edi
 005CB014    mov        dword ptr [ebp-4],eax
 005CB017    xor        eax,eax
 005CB019    push       ebp
 005CB01A    push       5CB11E
 005CB01F    push       dword ptr fs:[eax]
 005CB022    mov        dword ptr fs:[eax],esp
 005CB025    mov        eax,dword ptr [ebp-4]
 005CB028    call       005C9D80
 005CB02D    xor        eax,eax
 005CB02F    push       ebp
 005CB030    push       5CB0FC
 005CB035    push       dword ptr fs:[eax]
 005CB038    mov        dword ptr fs:[eax],esp
 005CB03B    mov        eax,dword ptr [ebp-4]
 005CB03E    call       005C9CA4
 005CB043    lea        edx,[ebp-8]
 005CB046    mov        eax,dword ptr [ebp-4]
 005CB049    mov        ecx,dword ptr [eax]
 005CB04B    call       dword ptr [ecx+1C]; TRPBarsPostNet.sub_005CAD60
 005CB04E    mov        eax,dword ptr [ebp-4]
 005CB051    call       005C93D0
 005CB056    mov        eax,dword ptr [ebp-4]
 005CB059    fstp       qword ptr [eax+38]; TRPBarsPostNet.?f38:?Double
 005CB05C    wait
 005CB05D    mov        eax,dword ptr [ebp-4]
 005CB060    call       005C9664
 005CB065    mov        eax,dword ptr [ebp-4]
 005CB068    fstp       qword ptr [eax+40]; TRPBarsPostNet.?f40:?Double
 005CB06B    wait
 005CB06C    mov        al,[006172DC]
 005CB071    push       eax
 005CB072    mov        cl,byte ptr ds:[6172E8]
 005CB078    mov        edx,5CB134; '20'
 005CB07D    mov        eax,dword ptr [ebp-4]
 005CB080    call       005C9E94
 005CB085    mov        eax,dword ptr [ebp-8]
 005CB088    call       @LStrLen
 005CB08D    mov        ebx,eax
 005CB08F    test       ebx,ebx
>005CB091    jle        005CB0C5
 005CB093    mov        esi,1
 005CB098    mov        al,[006172DC]
 005CB09D    push       eax
 005CB09E    mov        eax,dword ptr [ebp-8]
 005CB0A1    mov        dl,byte ptr [eax+esi-1]
 005CB0A5    lea        ecx,[ebp-0C]
 005CB0A8    mov        eax,dword ptr [ebp-4]
 005CB0AB    mov        edi,dword ptr [eax]
 005CB0AD    call       dword ptr [edi+10]; TRPBarsPostNet.sub_005CAEDC
 005CB0B0    mov        edx,dword ptr [ebp-0C]
 005CB0B3    mov        cl,byte ptr ds:[6172E8]
 005CB0B9    mov        eax,dword ptr [ebp-4]
 005CB0BC    call       005C9E94
 005CB0C1    inc        esi
 005CB0C2    dec        ebx
<005CB0C3    jne        005CB098
 005CB0C5    mov        al,[006172DC]
 005CB0CA    push       eax
 005CB0CB    mov        cl,byte ptr ds:[6172E8]
 005CB0D1    mov        edx,5CB140; '2'
 005CB0D6    mov        eax,dword ptr [ebp-4]
 005CB0D9    call       005C9E94
 005CB0DE    mov        eax,dword ptr [ebp-4]
 005CB0E1    mov        edx,dword ptr [eax]
 005CB0E3    call       dword ptr [edx+4]; TRPBarsPostNet.sub_005C9804
 005CB0E6    xor        eax,eax
 005CB0E8    pop        edx
 005CB0E9    pop        ecx
 005CB0EA    pop        ecx
 005CB0EB    mov        dword ptr fs:[eax],edx
 005CB0EE    push       5CB103
 005CB0F3    mov        eax,dword ptr [ebp-4]
 005CB0F6    call       005C9D24
 005CB0FB    ret
<005CB0FC    jmp        @HandleFinally
<005CB101    jmp        005CB0F3
 005CB103    xor        eax,eax
 005CB105    pop        edx
 005CB106    pop        ecx
 005CB107    pop        ecx
 005CB108    mov        dword ptr fs:[eax],edx
 005CB10B    push       5CB125
 005CB110    lea        eax,[ebp-0C]
 005CB113    mov        edx,2
 005CB118    call       @LStrArrayClr
 005CB11D    ret
<005CB11E    jmp        @HandleFinally
<005CB123    jmp        005CB110
 005CB125    pop        edi
 005CB126    pop        esi
 005CB127    pop        ebx
 005CB128    mov        esp,ebp
 005CB12A    pop        ebp
 005CB12B    ret
*}
end;

//005CB144
//procedure sub_005CB144(?:?);
//begin
{*
 005CB144    push       ebp
 005CB145    mov        ebp,esp
 005CB147    add        esp,0FFFFFFF8
 005CB14A    push       ebx
 005CB14B    xor        ecx,ecx
 005CB14D    mov        dword ptr [ebp-8],ecx
 005CB150    mov        dword ptr [ebp-4],edx
 005CB153    mov        ebx,eax
 005CB155    mov        eax,dword ptr [ebp-4]
 005CB158    call       @LStrAddRef
 005CB15D    xor        eax,eax
 005CB15F    push       ebp
 005CB160    push       5CB1E9
 005CB165    push       dword ptr fs:[eax]
 005CB168    mov        dword ptr fs:[eax],esp
 005CB16B    mov        edx,dword ptr [ebp-4]
 005CB16E    mov        eax,ebx
 005CB170    call       005C9740
 005CB175    mov        eax,dword ptr [ebx+34]; TRPBarsPostNet.?f34:String
 005CB178    call       @LStrLen
 005CB17D    cmp        eax,0B
>005CB180    jle        005CB19A
 005CB182    lea        eax,[ebx+34]; TRPBarsPostNet.?f34:String
 005CB185    push       eax
 005CB186    mov        ecx,0B
 005CB18B    mov        edx,1
 005CB190    mov        eax,dword ptr [ebx+34]; TRPBarsPostNet.?f34:String
 005CB193    call       @LStrCopy
>005CB198    jmp        005CB1CE
 005CB19A    mov        eax,dword ptr [ebx+34]; TRPBarsPostNet.?f34:String
 005CB19D    call       @LStrLen
 005CB1A2    cmp        eax,5
>005CB1A5    jge        005CB1CE
 005CB1A7    mov        eax,dword ptr [ebx+34]; TRPBarsPostNet.?f34:String
 005CB1AA    call       @LStrLen
 005CB1AF    mov        edx,5
 005CB1B4    sub        edx,eax
 005CB1B6    lea        ecx,[ebp-8]
 005CB1B9    mov        al,30
 005CB1BB    call       @LStrOfChar
 005CB1C0    mov        edx,dword ptr [ebp-8]
 005CB1C3    lea        eax,[ebx+34]; TRPBarsPostNet.?f34:String
 005CB1C6    mov        ecx,dword ptr [ebx+34]; TRPBarsPostNet.?f34:String
 005CB1C9    call       @LStrCat3
 005CB1CE    xor        eax,eax
 005CB1D0    pop        edx
 005CB1D1    pop        ecx
 005CB1D2    pop        ecx
 005CB1D3    mov        dword ptr fs:[eax],edx
 005CB1D6    push       5CB1F0
 005CB1DB    lea        eax,[ebp-8]
 005CB1DE    mov        edx,2
 005CB1E3    call       @LStrArrayClr
 005CB1E8    ret
<005CB1E9    jmp        @HandleFinally
<005CB1EE    jmp        005CB1DB
 005CB1F0    pop        ebx
 005CB1F1    pop        ecx
 005CB1F2    pop        ecx
 005CB1F3    pop        ebp
 005CB1F4    ret
*}
//end;

//005CB1F8
constructor TRPBarsCode128.Create;
begin
{*
 005CB1F8    push       ebx
 005CB1F9    push       esi
 005CB1FA    test       dl,dl
>005CB1FC    je         005CB206
 005CB1FE    add        esp,0FFFFFFF0
 005CB201    call       @ClassCreate
 005CB206    mov        ebx,edx
 005CB208    mov        esi,eax
 005CB20A    xor        edx,edx
 005CB20C    mov        eax,esi
 005CB20E    call       005C92C0
 005CB213    mov        dword ptr [esi+54],67; TRPBarsCode128.?f54:dword
 005CB21A    mov        dl,1
 005CB21C    mov        eax,esi
 005CB21E    mov        ecx,dword ptr [eax]
 005CB220    call       dword ptr [ecx+0C]; TRPBarsCode128.sub_005C97E0
 005CB223    mov        byte ptr [esi+7B],1; TRPBarsCode128.?f7B:byte
 005CB227    mov        eax,esi
 005CB229    test       bl,bl
>005CB22B    je         005CB23C
 005CB22D    call       @AfterConstruction
 005CB232    pop        dword ptr fs:[0]
 005CB239    add        esp,0C
 005CB23C    mov        eax,esi
 005CB23E    pop        esi
 005CB23F    pop        ebx
 005CB240    ret
*}
end;

//005CB244
//function sub_005CB244(?:?):?;
//begin
{*
 005CB244    push       ebp
 005CB245    mov        ebp,esp
 005CB247    xor        ecx,ecx
 005CB249    push       ecx
 005CB24A    push       ecx
 005CB24B    push       ecx
 005CB24C    push       ecx
 005CB24D    push       ebx
 005CB24E    mov        ebx,edx
 005CB250    xor        eax,eax
 005CB252    push       ebp
 005CB253    push       5CB2E6
 005CB258    push       dword ptr fs:[eax]
 005CB25B    mov        dword ptr fs:[eax],esp
 005CB25E    lea        eax,[ebp-4]
 005CB261    mov        edx,61764C; gvar_0061764C:ShortString
 005CB266    call       @LStrFromString
 005CB26B    mov        eax,dword ptr [ebp-4]
 005CB26E    push       eax
 005CB26F    lea        eax,[ebp-8]
 005CB272    mov        edx,ebx
 005CB274    call       @LStrFromChar
 005CB279    mov        eax,dword ptr [ebp-8]
 005CB27C    pop        edx
 005CB27D    call       AnsiPos
 005CB282    test       eax,eax
>005CB284    jg         005CB2C7
 005CB286    lea        eax,[ebp-0C]
 005CB289    mov        edx,6176B4; gvar_006176B4:ShortString
 005CB28E    call       @LStrFromString
 005CB293    mov        eax,dword ptr [ebp-0C]
 005CB296    push       eax
 005CB297    lea        eax,[ebp-10]
 005CB29A    mov        edx,ebx
 005CB29C    call       @LStrFromChar
 005CB2A1    mov        eax,dword ptr [ebp-10]
 005CB2A4    pop        edx
 005CB2A5    call       AnsiPos
 005CB2AA    test       eax,eax
>005CB2AC    jg         005CB2C7
 005CB2AE    add        bl,0D0
 005CB2B1    sub        bl,0A
>005CB2B4    jb         005CB2C7
 005CB2B6    sub        bl,0B7
>005CB2B9    je         005CB2C7
 005CB2BB    add        bl,0FC
 005CB2BE    sub        bl,2
>005CB2C1    jb         005CB2C7
 005CB2C3    xor        eax,eax
>005CB2C5    jmp        005CB2C9
 005CB2C7    mov        al,1
 005CB2C9    mov        ebx,eax
 005CB2CB    xor        eax,eax
 005CB2CD    pop        edx
 005CB2CE    pop        ecx
 005CB2CF    pop        ecx
 005CB2D0    mov        dword ptr fs:[eax],edx
 005CB2D3    push       5CB2ED
 005CB2D8    lea        eax,[ebp-10]
 005CB2DB    mov        edx,4
 005CB2E0    call       @LStrArrayClr
 005CB2E5    ret
<005CB2E6    jmp        @HandleFinally
<005CB2EB    jmp        005CB2D8
 005CB2ED    mov        eax,ebx
 005CB2EF    pop        ebx
 005CB2F0    mov        esp,ebp
 005CB2F2    pop        ebp
 005CB2F3    ret
*}
//end;

//005CB2F4
procedure sub_005CB2F4;
begin
{*
 005CB2F4    push       ebp
 005CB2F5    mov        ebp,esp
 005CB2F7    add        esp,0FFFFFFF0
 005CB2FA    push       ebx
 005CB2FB    xor        edx,edx
 005CB2FD    mov        dword ptr [ebp-0C],edx
 005CB300    mov        ebx,eax
 005CB302    xor        eax,eax
 005CB304    push       ebp
 005CB305    push       5CB34B
 005CB30A    push       dword ptr fs:[eax]
 005CB30D    mov        dword ptr fs:[eax],esp
 005CB310    lea        edx,[ebp-0C]
 005CB313    mov        eax,ebx
 005CB315    call       005CB8BC
 005CB31A    mov        eax,dword ptr [ebp-0C]
 005CB31D    call       @LStrLen
 005CB322    imul       eax,eax,0B
 005CB325    add        eax,23
 005CB328    mov        dword ptr [ebp-10],eax
 005CB32B    fild       dword ptr [ebp-10]
 005CB32E    fmul       qword ptr [ebx+10]; TRPBarsCode128.?f10:?Double
 005CB331    fstp       qword ptr [ebp-8]
 005CB334    wait
 005CB335    xor        eax,eax
 005CB337    pop        edx
 005CB338    pop        ecx
 005CB339    pop        ecx
 005CB33A    mov        dword ptr fs:[eax],edx
 005CB33D    push       5CB352
 005CB342    lea        eax,[ebp-0C]
 005CB345    call       @LStrClr
 005CB34A    ret
<005CB34B    jmp        @HandleFinally
<005CB350    jmp        005CB342
 005CB352    fld        qword ptr [ebp-8]
 005CB355    pop        ebx
 005CB356    mov        esp,ebp
 005CB358    pop        ebp
 005CB359    ret
*}
end;

//005CB35C
//procedure sub_005CB35C(?:?);
//begin
{*
 005CB35C    push       ebx
 005CB35D    push       esi
 005CB35E    mov        esi,edx
 005CB360    mov        ebx,eax
 005CB362    mov        eax,esi
 005CB364    mov        edx,dword ptr [ebx+34]; TRPBarsCode128.?f34:String
 005CB367    call       @LStrAsg
 005CB36C    pop        esi
 005CB36D    pop        ebx
 005CB36E    ret
*}
//end;

//005CB370
//function sub_005CB370(?:?; ?:?):?;
//begin
{*
 005CB370    push       ebp
 005CB371    mov        ebp,esp
 005CB373    push       ecx
 005CB374    push       ebx
 005CB375    mov        ebx,eax
 005CB377    mov        byte ptr [ebp-1],0
 005CB37B    mov        eax,dword ptr [ebp+8]
 005CB37E    mov        eax,dword ptr [eax-8]
 005CB381    call       @LStrLen
 005CB386    mov        edx,dword ptr [ebp+8]
 005CB389    mov        edx,dword ptr [edx-4]
 005CB38C    xor        ecx,ecx
 005CB38E    mov        cl,bl
 005CB390    add        edx,ecx
 005CB392    cmp        eax,edx
>005CB394    jl         005CB3C5
 005CB396    mov        eax,ebx
 005CB398    test       al,al
>005CB39A    jbe        005CB3C1
 005CB39C    mov        dl,1
 005CB39E    mov        ecx,dword ptr [ebp+8]
 005CB3A1    mov        ecx,dword ptr [ecx-4]
 005CB3A4    xor        ebx,ebx
 005CB3A6    mov        bl,dl
 005CB3A8    add        ecx,ebx
 005CB3AA    mov        ebx,dword ptr [ebp+8]
 005CB3AD    mov        ebx,dword ptr [ebx-8]
 005CB3B0    mov        cl,byte ptr [ebx+ecx-1]
 005CB3B4    add        cl,0D0
 005CB3B7    sub        cl,0A
>005CB3BA    jae        005CB3C5
 005CB3BC    inc        edx
 005CB3BD    dec        al
<005CB3BF    jne        005CB39E
 005CB3C1    mov        byte ptr [ebp-1],1
 005CB3C5    mov        al,byte ptr [ebp-1]
 005CB3C8    pop        ebx
 005CB3C9    pop        ecx
 005CB3CA    pop        ebp
 005CB3CB    ret
*}
//end;

//005CB3CC
//function sub_005CB3CC(?:?):?;
//begin
{*
 005CB3CC    push       ebp
 005CB3CD    mov        ebp,esp
 005CB3CF    push       ebx
 005CB3D0    push       esi
 005CB3D1    xor        esi,esi
 005CB3D3    mov        eax,dword ptr [ebp+8]
 005CB3D6    mov        dl,byte ptr [eax-4]
 005CB3D9    push       edx
 005CB3DA    mov        eax,dword ptr [ebp+8]
 005CB3DD    mov        eax,dword ptr [eax-8]
 005CB3E0    call       @LStrLen
 005CB3E5    pop        edx
 005CB3E6    sub        al,dl
>005CB3E8    jb         005CB407
 005CB3EA    inc        eax
 005CB3EB    xor        ecx,ecx
 005CB3ED    mov        cl,dl
 005CB3EF    mov        ebx,dword ptr [ebp+8]
 005CB3F2    mov        ebx,dword ptr [ebx-8]
 005CB3F5    mov        cl,byte ptr [ebx+ecx-1]
 005CB3F9    add        cl,0D0
 005CB3FC    sub        cl,0A
>005CB3FF    jae        005CB407
 005CB401    inc        esi
 005CB402    inc        edx
 005CB403    dec        al
<005CB405    jne        005CB3EB
 005CB407    mov        eax,esi
 005CB409    pop        esi
 005CB40A    pop        ebx
 005CB40B    pop        ebp
 005CB40C    ret
*}
//end;

//005CB410
//procedure sub_005CB410(?:TRPBarsCode128; ?:Longint; ?:AnsiString);
//begin
{*
 005CB410    push       ebp
 005CB411    mov        ebp,esp
 005CB413    push       ecx
 005CB414    mov        ecx,0B
 005CB419    push       0
 005CB41B    push       0
 005CB41D    dec        ecx
<005CB41E    jne        005CB419
 005CB420    xchg       ecx,dword ptr [ebp-4]
 005CB423    push       ebx
 005CB424    push       esi
 005CB425    push       edi
 005CB426    mov        esi,ecx
 005CB428    mov        byte ptr [ebp-0D],dl
 005CB42B    mov        dword ptr [ebp-0C],eax
 005CB42E    xor        eax,eax
 005CB430    push       ebp
 005CB431    push       5CB87E
 005CB436    push       dword ptr fs:[eax]
 005CB439    mov        dword ptr fs:[eax],esp
 005CB43C    mov        eax,dword ptr [ebp-0C]
 005CB43F    mov        bl,byte ptr [eax+7A]; TRPBarsCode128.?f7A:byte
 005CB442    lea        eax,[ebp-8]
 005CB445    mov        edx,dword ptr [ebp-0C]
 005CB448    mov        edx,dword ptr [edx+34]; TRPBarsCode128.?f34:String
 005CB44B    call       @LStrLAsg
 005CB450    xor        eax,eax
 005CB452    mov        dword ptr [ebp-4],eax
 005CB455    mov        eax,esi
 005CB457    call       @LStrClr
>005CB45C    jmp        005CB84A
 005CB461    cmp        byte ptr [ebp-0D],0
>005CB465    jbe        005CB47B
 005CB467    mov        eax,dword ptr [esi]
 005CB469    call       @LStrLen
 005CB46E    xor        edx,edx
 005CB470    mov        dl,byte ptr [ebp-0D]
 005CB473    cmp        eax,edx
>005CB475    jge        005CB85B
 005CB47B    inc        dword ptr [ebp-4]
 005CB47E    mov        eax,dword ptr [ebp-0C]
 005CB481    cmp        byte ptr [eax+7B],0; TRPBarsCode128.?f7B:byte
>005CB485    je         005CB49B
 005CB487    mov        eax,dword ptr [ebp-8]
 005CB48A    mov        edx,dword ptr [ebp-4]
 005CB48D    mov        al,byte ptr [eax+edx-1]
 005CB491    add        al,0B
 005CB493    sub        al,4
>005CB495    jb         005CB84A
 005CB49B    mov        eax,dword ptr [ebp-0C]
 005CB49E    cmp        byte ptr [eax+7B],0; TRPBarsCode128.?f7B:byte
>005CB4A2    je         005CB4CD
 005CB4A4    cmp        bl,2
>005CB4A7    je         005CB4CD
 005CB4A9    push       ebp
 005CB4AA    call       005CB3CC
 005CB4AF    pop        ecx
 005CB4B0    mov        edi,eax
 005CB4B2    cmp        edi,6
>005CB4B5    jl         005CB4CD
 005CB4B7    test       edi,1
>005CB4BD    jne        005CB4CD
 005CB4BF    mov        eax,esi
 005CB4C1    mov        edx,5CB894; 'c'
 005CB4C6    call       @LStrCat
 005CB4CB    mov        bl,2
 005CB4CD    mov        eax,ebx
 005CB4CF    sub        al,1
>005CB4D1    jb         005CB4DE
>005CB4D3    je         005CB5BA
>005CB4D9    jmp        005CB698
 005CB4DE    mov        eax,dword ptr [ebp-8]
 005CB4E1    mov        edx,dword ptr [ebp-4]
 005CB4E4    cmp        byte ptr [eax+edx-1],0F5
>005CB4E9    je         005CB84A
 005CB4EF    lea        eax,[ebp-14]
 005CB4F2    mov        edx,dword ptr [ebp-8]
 005CB4F5    mov        ecx,dword ptr [ebp-4]
 005CB4F8    mov        dl,byte ptr [edx+ecx-1]
 005CB4FC    call       @LStrFromChar
 005CB501    mov        eax,dword ptr [ebp-14]
 005CB504    push       eax
 005CB505    lea        eax,[ebp-18]
 005CB508    mov        edx,61764C; gvar_0061764C:ShortString
 005CB50D    call       @LStrFromString
 005CB512    mov        edx,dword ptr [ebp-18]
 005CB515    pop        eax
 005CB516    call       AnsiPos
 005CB51B    mov        edi,eax
 005CB51D    test       edi,edi
>005CB51F    jle        005CB55C
 005CB521    lea        eax,[ebp-1C]
 005CB524    mov        edx,edi
 005CB526    dec        edx
 005CB527    call       @LStrFromChar
 005CB52C    mov        edx,dword ptr [ebp-1C]
 005CB52F    mov        eax,esi
 005CB531    call       @LStrCat
 005CB536    dec        edi
 005CB537    sub        edi,62
>005CB53A    je         005CB547
 005CB53C    dec        edi
>005CB53D    je         005CB54E
 005CB53F    dec        edi
>005CB540    je         005CB555
>005CB542    jmp        005CB84A
 005CB547    mov        bl,1
>005CB549    jmp        005CB84A
 005CB54E    mov        bl,2
>005CB550    jmp        005CB84A
 005CB555    mov        bl,1
>005CB557    jmp        005CB84A
 005CB55C    lea        eax,[ebp-20]
 005CB55F    mov        edx,dword ptr [ebp-8]
 005CB562    mov        ecx,dword ptr [ebp-4]
 005CB565    mov        dl,byte ptr [edx+ecx-1]
 005CB569    call       @LStrFromChar
 005CB56E    mov        eax,dword ptr [ebp-20]
 005CB571    push       eax
 005CB572    lea        eax,[ebp-24]
 005CB575    mov        edx,6176B4; gvar_006176B4:ShortString
 005CB57A    call       @LStrFromString
 005CB57F    mov        edx,dword ptr [ebp-24]
 005CB582    pop        eax
 005CB583    call       AnsiPos
 005CB588    mov        edi,eax
 005CB58A    test       edi,edi
>005CB58C    jle        005CB84A
 005CB592    push       dword ptr [esi]
 005CB594    push       5CB8A0; 'd'
 005CB599    lea        eax,[ebp-28]
 005CB59C    mov        edx,edi
 005CB59E    dec        edx
 005CB59F    call       @LStrFromChar
 005CB5A4    push       dword ptr [ebp-28]
 005CB5A7    mov        eax,esi
 005CB5A9    mov        edx,3
 005CB5AE    call       @LStrCatN
 005CB5B3    mov        bl,1
>005CB5B5    jmp        005CB84A
 005CB5BA    mov        eax,dword ptr [ebp-8]
 005CB5BD    mov        edx,dword ptr [ebp-4]
 005CB5C0    cmp        byte ptr [eax+edx-1],0F6
>005CB5C5    je         005CB84A
 005CB5CB    lea        eax,[ebp-2C]
 005CB5CE    mov        edx,dword ptr [ebp-8]
 005CB5D1    mov        ecx,dword ptr [ebp-4]
 005CB5D4    mov        dl,byte ptr [edx+ecx-1]
 005CB5D8    call       @LStrFromChar
 005CB5DD    mov        eax,dword ptr [ebp-2C]
 005CB5E0    push       eax
 005CB5E1    lea        eax,[ebp-30]
 005CB5E4    mov        edx,6176B4; gvar_006176B4:ShortString
 005CB5E9    call       @LStrFromString
 005CB5EE    mov        edx,dword ptr [ebp-30]
 005CB5F1    pop        eax
 005CB5F2    call       AnsiPos
 005CB5F7    mov        edi,eax
 005CB5F9    test       edi,edi
>005CB5FB    jle        005CB63A
 005CB5FD    lea        eax,[ebp-34]
 005CB600    mov        edx,edi
 005CB602    dec        edx
 005CB603    call       @LStrFromChar
 005CB608    mov        edx,dword ptr [ebp-34]
 005CB60B    mov        eax,esi
 005CB60D    call       @LStrCat
 005CB612    dec        edi
 005CB613    sub        edi,62
>005CB616    je         005CB625
 005CB618    dec        edi
>005CB619    je         005CB62C
 005CB61B    sub        edi,2
>005CB61E    je         005CB633
>005CB620    jmp        005CB84A
 005CB625    xor        ebx,ebx
>005CB627    jmp        005CB84A
 005CB62C    mov        bl,2
>005CB62E    jmp        005CB84A
 005CB633    mov        bl,1
>005CB635    jmp        005CB84A
 005CB63A    lea        eax,[ebp-38]
 005CB63D    mov        edx,dword ptr [ebp-8]
 005CB640    mov        ecx,dword ptr [ebp-4]
 005CB643    mov        dl,byte ptr [edx+ecx-1]
 005CB647    call       @LStrFromChar
 005CB64C    mov        eax,dword ptr [ebp-38]
 005CB64F    push       eax
 005CB650    lea        eax,[ebp-3C]
 005CB653    mov        edx,61764C; gvar_0061764C:ShortString
 005CB658    call       @LStrFromString
 005CB65D    mov        edx,dword ptr [ebp-3C]
 005CB660    pop        eax
 005CB661    call       AnsiPos
 005CB666    mov        edi,eax
 005CB668    test       edi,edi
>005CB66A    jle        005CB84A
 005CB670    push       dword ptr [esi]
 005CB672    push       5CB8AC; 'e'
 005CB677    lea        eax,[ebp-40]
 005CB67A    mov        edx,edi
 005CB67C    dec        edx
 005CB67D    call       @LStrFromChar
 005CB682    push       dword ptr [ebp-40]
 005CB685    mov        eax,esi
 005CB687    mov        edx,3
 005CB68C    call       @LStrCatN
 005CB691    xor        ebx,ebx
>005CB693    jmp        005CB84A
 005CB698    mov        eax,dword ptr [ebp-8]
 005CB69B    mov        edx,dword ptr [ebp-4]
 005CB69E    cmp        byte ptr [eax+edx-1],0F7
>005CB6A3    je         005CB84A
 005CB6A9    mov        eax,dword ptr [ebp-8]
 005CB6AC    mov        edx,dword ptr [ebp-4]
 005CB6AF    mov        al,byte ptr [eax+edx-1]
 005CB6B3    add        al,0D0
 005CB6B5    sub        al,0A
>005CB6B7    jae        005CB702
 005CB6B9    push       ebp
 005CB6BA    mov        al,1
 005CB6BC    call       005CB370
 005CB6C1    pop        ecx
 005CB6C2    test       al,al
>005CB6C4    je         005CB702
 005CB6C6    lea        eax,[ebp-44]
 005CB6C9    mov        edx,dword ptr [ebp-8]
 005CB6CC    mov        ecx,dword ptr [ebp-4]
 005CB6CF    movzx      edx,byte ptr [edx+ecx-1]
 005CB6D4    sub        edx,30
 005CB6D7    add        edx,edx
 005CB6D9    lea        edx,[edx+edx*4]
 005CB6DC    mov        ecx,dword ptr [ebp-8]
 005CB6DF    mov        edi,dword ptr [ebp-4]
 005CB6E2    movzx      ecx,byte ptr [ecx+edi]
 005CB6E6    sub        ecx,30
 005CB6E9    add        edx,ecx
 005CB6EB    call       @LStrFromChar
 005CB6F0    mov        edx,dword ptr [ebp-44]
 005CB6F3    mov        eax,esi
 005CB6F5    call       @LStrCat
 005CB6FA    inc        dword ptr [ebp-4]
>005CB6FD    jmp        005CB84A
 005CB702    mov        eax,dword ptr [ebp-8]
 005CB705    mov        edx,dword ptr [ebp-4]
 005CB708    mov        al,byte ptr [eax+edx-1]
 005CB70C    sub        al,0F1
>005CB70E    je         005CB716
 005CB710    add        al,0FC
 005CB712    sub        al,2
>005CB714    jae        005CB768
 005CB716    mov        eax,dword ptr [ebp-8]
 005CB719    mov        edx,dword ptr [ebp-4]
 005CB71C    mov        al,byte ptr [eax+edx-1]
 005CB720    sub        al,0F1
>005CB722    je         005CB731
 005CB724    sub        al,4
>005CB726    je         005CB742
 005CB728    dec        al
>005CB72A    je         005CB755
>005CB72C    jmp        005CB84A
 005CB731    mov        eax,esi
 005CB733    mov        edx,5CB8B8; 'f'
 005CB738    call       @LStrCat
>005CB73D    jmp        005CB84A
 005CB742    mov        eax,esi
 005CB744    mov        edx,5CB8AC; 'e'
 005CB749    call       @LStrCat
 005CB74E    xor        ebx,ebx
>005CB750    jmp        005CB84A
 005CB755    mov        eax,esi
 005CB757    mov        edx,5CB8A0; 'd'
 005CB75C    call       @LStrCat
 005CB761    mov        bl,1
>005CB763    jmp        005CB84A
 005CB768    lea        eax,[ebp-48]
 005CB76B    mov        edx,dword ptr [ebp-8]
 005CB76E    mov        ecx,dword ptr [ebp-4]
 005CB771    mov        dl,byte ptr [edx+ecx-1]
 005CB775    call       @LStrFromChar
 005CB77A    mov        eax,dword ptr [ebp-48]
 005CB77D    push       eax
 005CB77E    lea        eax,[ebp-4C]
 005CB781    mov        edx,6176B4; gvar_006176B4:ShortString
 005CB786    call       @LStrFromString
 005CB78B    mov        edx,dword ptr [ebp-4C]
 005CB78E    pop        eax
 005CB78F    call       AnsiPos
 005CB794    mov        edi,eax
 005CB796    test       edi,edi
>005CB798    jle        005CB7DA
 005CB79A    push       dword ptr [esi]
 005CB79C    push       5CB8A0; 'd'
 005CB7A1    lea        eax,[ebp-50]
 005CB7A4    mov        edx,edi
 005CB7A6    dec        edx
 005CB7A7    call       @LStrFromChar
 005CB7AC    push       dword ptr [ebp-50]
 005CB7AF    mov        eax,esi
 005CB7B1    mov        edx,3
 005CB7B6    call       @LStrCatN
 005CB7BB    push       ebp
 005CB7BC    mov        al,4
 005CB7BE    call       005CB370
 005CB7C3    pop        ecx
 005CB7C4    test       al,al
>005CB7C6    je         005CB7D6
 005CB7C8    mov        eax,esi
 005CB7CA    mov        edx,5CB894; 'c'
 005CB7CF    call       @LStrCat
>005CB7D4    jmp        005CB84A
 005CB7D6    mov        bl,1
>005CB7D8    jmp        005CB84A
 005CB7DA    lea        eax,[ebp-54]
 005CB7DD    mov        edx,dword ptr [ebp-8]
 005CB7E0    mov        ecx,dword ptr [ebp-4]
 005CB7E3    mov        dl,byte ptr [edx+ecx-1]
 005CB7E7    call       @LStrFromChar
 005CB7EC    mov        eax,dword ptr [ebp-54]
 005CB7EF    push       eax
 005CB7F0    lea        eax,[ebp-58]
 005CB7F3    mov        edx,61764C; gvar_0061764C:ShortString
 005CB7F8    call       @LStrFromString
 005CB7FD    mov        edx,dword ptr [ebp-58]
 005CB800    pop        eax
 005CB801    call       AnsiPos
 005CB806    mov        edi,eax
 005CB808    test       edi,edi
>005CB80A    jle        005CB84A
 005CB80C    push       dword ptr [esi]
 005CB80E    push       5CB8AC; 'e'
 005CB813    lea        eax,[ebp-5C]
 005CB816    mov        edx,edi
 005CB818    dec        edx
 005CB819    call       @LStrFromChar
 005CB81E    push       dword ptr [ebp-5C]
 005CB821    mov        eax,esi
 005CB823    mov        edx,3
 005CB828    call       @LStrCatN
 005CB82D    push       ebp
 005CB82E    mov        al,4
 005CB830    call       005CB370
 005CB835    pop        ecx
 005CB836    test       al,al
>005CB838    je         005CB848
 005CB83A    mov        eax,esi
 005CB83C    mov        edx,5CB894; 'c'
 005CB841    call       @LStrCat
>005CB846    jmp        005CB84A
 005CB848    xor        ebx,ebx
 005CB84A    mov        eax,dword ptr [ebp-8]
 005CB84D    call       @LStrLen
 005CB852    cmp        eax,dword ptr [ebp-4]
<005CB855    jg         005CB461
 005CB85B    xor        eax,eax
 005CB85D    pop        edx
 005CB85E    pop        ecx
 005CB85F    pop        ecx
 005CB860    mov        dword ptr fs:[eax],edx
 005CB863    push       5CB885
 005CB868    lea        eax,[ebp-5C]
 005CB86B    mov        edx,13
 005CB870    call       @LStrArrayClr
 005CB875    lea        eax,[ebp-8]
 005CB878    call       @LStrClr
 005CB87D    ret
<005CB87E    jmp        @HandleFinally
<005CB883    jmp        005CB868
 005CB885    pop        edi
 005CB886    pop        esi
 005CB887    pop        ebx
 005CB888    mov        esp,ebp
 005CB88A    pop        ebp
 005CB88B    ret
*}
//end;

//005CB8BC
//procedure sub_005CB8BC(?:TRPBarsCode128; ?:AnsiString);
//begin
{*
 005CB8BC    push       ebp
 005CB8BD    mov        ebp,esp
 005CB8BF    push       0
 005CB8C1    push       ebx
 005CB8C2    push       esi
 005CB8C3    push       edi
 005CB8C4    mov        esi,edx
 005CB8C6    mov        ebx,eax
 005CB8C8    xor        eax,eax
 005CB8CA    push       ebp
 005CB8CB    push       5CB990
 005CB8D0    push       dword ptr fs:[eax]
 005CB8D3    mov        dword ptr fs:[eax],esp
 005CB8D6    cmp        byte ptr [ebx+7B],0; TRPBarsCode128.?f7B:byte
>005CB8DA    je         005CB969
 005CB8E0    mov        byte ptr [ebx+7A],0; TRPBarsCode128.?f7A:byte
 005CB8E4    mov        ecx,esi
 005CB8E6    xor        edx,edx
 005CB8E8    mov        eax,ebx
 005CB8EA    call       005CB410
 005CB8EF    mov        byte ptr [ebx+79],0; TRPBarsCode128.?f79:byte
 005CB8F3    mov        byte ptr [ebx+7A],1; TRPBarsCode128.?f7A:byte
 005CB8F7    mov        eax,dword ptr [esi]
 005CB8F9    call       @LStrLen
 005CB8FE    mov        edx,eax
 005CB900    lea        ecx,[ebp-4]
 005CB903    mov        eax,ebx
 005CB905    call       005CB410
 005CB90A    mov        eax,dword ptr [ebp-4]
 005CB90D    call       @LStrLen
 005CB912    mov        edi,eax
 005CB914    mov        eax,dword ptr [esi]
 005CB916    call       @LStrLen
 005CB91B    cmp        edi,eax
>005CB91D    jge        005CB92D
 005CB91F    mov        byte ptr [ebx+79],1; TRPBarsCode128.?f79:byte
 005CB923    mov        eax,esi
 005CB925    mov        edx,dword ptr [ebp-4]
 005CB928    call       @LStrAsg
 005CB92D    mov        byte ptr [ebx+7A],2; TRPBarsCode128.?f7A:byte
 005CB931    mov        eax,dword ptr [esi]
 005CB933    call       @LStrLen
 005CB938    mov        edx,eax
 005CB93A    lea        ecx,[ebp-4]
 005CB93D    mov        eax,ebx
 005CB93F    call       005CB410
 005CB944    mov        eax,dword ptr [ebp-4]
 005CB947    call       @LStrLen
 005CB94C    mov        edi,eax
 005CB94E    mov        eax,dword ptr [esi]
 005CB950    call       @LStrLen
 005CB955    cmp        edi,eax
>005CB957    jge        005CB97A
 005CB959    mov        byte ptr [ebx+79],2; TRPBarsCode128.?f79:byte
 005CB95D    mov        eax,esi
 005CB95F    mov        edx,dword ptr [ebp-4]
 005CB962    call       @LStrAsg
>005CB967    jmp        005CB97A
 005CB969    mov        al,byte ptr [ebx+78]; TRPBarsCode128.?f78:byte
 005CB96C    mov        byte ptr [ebx+79],al; TRPBarsCode128.?f79:byte
 005CB96F    mov        ecx,esi
 005CB971    xor        edx,edx
 005CB973    mov        eax,ebx
 005CB975    call       005CB410
 005CB97A    xor        eax,eax
 005CB97C    pop        edx
 005CB97D    pop        ecx
 005CB97E    pop        ecx
 005CB97F    mov        dword ptr fs:[eax],edx
 005CB982    push       5CB997
 005CB987    lea        eax,[ebp-4]
 005CB98A    call       @LStrClr
 005CB98F    ret
<005CB990    jmp        @HandleFinally
<005CB995    jmp        005CB987
 005CB997    pop        edi
 005CB998    pop        esi
 005CB999    pop        ebx
 005CB99A    pop        ecx
 005CB99B    pop        ebp
 005CB99C    ret
*}
//end;

//005CB9A0
//procedure sub_005CB9A0(?:?; ?:?);
//begin
{*
 005CB9A0    push       ebp
 005CB9A1    mov        ebp,esp
 005CB9A3    add        esp,0FFFFFFF8
 005CB9A6    push       ebx
 005CB9A7    push       esi
 005CB9A8    push       edi
 005CB9A9    xor        ebx,ebx
 005CB9AB    mov        dword ptr [ebp-4],ebx
 005CB9AE    mov        edi,ecx
 005CB9B0    mov        ebx,edx
 005CB9B2    mov        esi,eax
 005CB9B4    xor        eax,eax
 005CB9B6    push       ebp
 005CB9B7    push       5CB9F6
 005CB9BC    push       dword ptr fs:[eax]
 005CB9BF    mov        dword ptr fs:[eax],esp
 005CB9C2    lea        eax,[ebp-4]
 005CB9C5    mov        edx,ebx
 005CB9C7    call       @LStrFromChar
 005CB9CC    mov        eax,dword ptr [ebp-4]
 005CB9CF    call       StrToInt
 005CB9D4    mov        dword ptr [ebp-8],eax
 005CB9D7    fild       dword ptr [ebp-8]
 005CB9DA    fmul       qword ptr [esi+10]; TRPBarsCode128.?f10:?Double
 005CB9DD    fstp       qword ptr [edi]
 005CB9DF    wait
 005CB9E0    xor        eax,eax
 005CB9E2    pop        edx
 005CB9E3    pop        ecx
 005CB9E4    pop        ecx
 005CB9E5    mov        dword ptr fs:[eax],edx
 005CB9E8    push       5CB9FD
 005CB9ED    lea        eax,[ebp-4]
 005CB9F0    call       @LStrClr
 005CB9F5    ret
<005CB9F6    jmp        @HandleFinally
<005CB9FB    jmp        005CB9ED
 005CB9FD    pop        edi
 005CB9FE    pop        esi
 005CB9FF    pop        ebx
 005CBA00    pop        ecx
 005CBA01    pop        ecx
 005CBA02    pop        ebp
 005CBA03    ret        8
*}
//end;

//005CBA08
//procedure sub_005CBA08(?:?; ?:?);
//begin
{*
 005CBA08    push       ebx
 005CBA09    push       esi
 005CBA0A    mov        esi,ecx
 005CBA0C    mov        ebx,edx
 005CBA0E    mov        edx,esi
 005CBA10    xor        eax,eax
 005CBA12    mov        al,bl
 005CBA14    mov        eax,dword ptr [eax*4+61771C]
 005CBA1B    call       IntToStr
 005CBA20    pop        esi
 005CBA21    pop        ebx
 005CBA22    ret
*}
//end;

//005CBA24
//function sub_005CBA24(?:TRPBarsCode128; ?:AnsiString):?;
//begin
{*
 005CBA24    push       ebp
 005CBA25    mov        ebp,esp
 005CBA27    push       ecx
 005CBA28    push       ebx
 005CBA29    push       esi
 005CBA2A    mov        dword ptr [ebp-4],edx
 005CBA2D    mov        esi,eax
 005CBA2F    mov        eax,dword ptr [ebp-4]
 005CBA32    call       @LStrAddRef
 005CBA37    xor        eax,eax
 005CBA39    push       ebp
 005CBA3A    push       5CBAA5
 005CBA3F    push       dword ptr fs:[eax]
 005CBA42    mov        dword ptr fs:[eax],esp
 005CBA45    mov        al,byte ptr [esi+79]; TRPBarsCode128.?f79:byte
 005CBA48    sub        al,1
>005CBA4A    jb         005CBA50
>005CBA4C    je         005CBA57
>005CBA4E    jmp        005CBA5E
 005CBA50    mov        ebx,67
>005CBA55    jmp        005CBA63
 005CBA57    mov        ebx,68
>005CBA5C    jmp        005CBA63
 005CBA5E    mov        ebx,69
 005CBA63    mov        eax,dword ptr [ebp-4]
 005CBA66    call       @LStrLen
 005CBA6B    mov        edx,eax
 005CBA6D    test       edx,edx
>005CBA6F    jle        005CBA87
 005CBA71    mov        eax,1
 005CBA76    mov        ecx,dword ptr [ebp-4]
 005CBA79    movzx      ecx,byte ptr [ecx+eax-1]
 005CBA7E    imul       ecx,eax
 005CBA81    add        ebx,ecx
 005CBA83    inc        eax
 005CBA84    dec        edx
<005CBA85    jne        005CBA76
 005CBA87    mov        eax,ebx
 005CBA89    cdq
 005CBA8A    idiv       eax,dword ptr [esi+54]; TRPBarsCode128.?f54:dword
 005CBA8D    mov        ebx,edx
 005CBA8F    xor        eax,eax
 005CBA91    pop        edx
 005CBA92    pop        ecx
 005CBA93    pop        ecx
 005CBA94    mov        dword ptr fs:[eax],edx
 005CBA97    push       5CBAAC
 005CBA9C    lea        eax,[ebp-4]
 005CBA9F    call       @LStrClr
 005CBAA4    ret
<005CBAA5    jmp        @HandleFinally
<005CBAAA    jmp        005CBA9C
 005CBAAC    mov        eax,ebx
 005CBAAE    pop        esi
 005CBAAF    pop        ebx
 005CBAB0    pop        ecx
 005CBAB1    pop        ebp
 005CBAB2    ret
*}
//end;

//005CBAB4
//procedure sub_005CBAB4(?:?);
//begin
{*
 005CBAB4    push       ebp
 005CBAB5    mov        ebp,esp
 005CBAB7    push       0
 005CBAB9    push       ebx
 005CBABA    push       esi
 005CBABB    mov        esi,edx
 005CBABD    mov        ebx,eax
 005CBABF    xor        eax,eax
 005CBAC1    push       ebp
 005CBAC2    push       5CBB00
 005CBAC7    push       dword ptr fs:[eax]
 005CBACA    mov        dword ptr fs:[eax],esp
 005CBACD    lea        edx,[ebp-4]
 005CBAD0    mov        eax,ebx
 005CBAD2    call       005CB8BC
 005CBAD7    mov        edx,dword ptr [ebp-4]
 005CBADA    mov        eax,ebx
 005CBADC    call       005CBA24
 005CBAE1    mov        edx,eax
 005CBAE3    mov        eax,esi
 005CBAE5    call       @LStrFromChar
 005CBAEA    xor        eax,eax
 005CBAEC    pop        edx
 005CBAED    pop        ecx
 005CBAEE    pop        ecx
 005CBAEF    mov        dword ptr fs:[eax],edx
 005CBAF2    push       5CBB07
 005CBAF7    lea        eax,[ebp-4]
 005CBAFA    call       @LStrClr
 005CBAFF    ret
<005CBB00    jmp        @HandleFinally
<005CBB05    jmp        005CBAF7
 005CBB07    pop        esi
 005CBB08    pop        ebx
 005CBB09    pop        ecx
 005CBB0A    pop        ebp
 005CBB0B    ret
*}
//end;

//005CBB0C
procedure sub_005CBB0C;
begin
{*
 005CBB0C    push       ebp
 005CBB0D    mov        ebp,esp
 005CBB0F    xor        ecx,ecx
 005CBB11    push       ecx
 005CBB12    push       ecx
 005CBB13    push       ecx
 005CBB14    push       ecx
 005CBB15    push       ecx
 005CBB16    push       ecx
 005CBB17    push       ecx
 005CBB18    push       ecx
 005CBB19    push       ebx
 005CBB1A    push       esi
 005CBB1B    push       edi
 005CBB1C    mov        dword ptr [ebp-4],eax
 005CBB1F    xor        eax,eax
 005CBB21    push       ebp
 005CBB22    push       5CBCC9
 005CBB27    push       dword ptr fs:[eax]
 005CBB2A    mov        dword ptr fs:[eax],esp
 005CBB2D    mov        eax,dword ptr [ebp-4]
 005CBB30    call       005C9D80
 005CBB35    xor        eax,eax
 005CBB37    push       ebp
 005CBB38    push       5CBCA7
 005CBB3D    push       dword ptr fs:[eax]
 005CBB40    mov        dword ptr fs:[eax],esp
 005CBB43    mov        eax,dword ptr [ebp-4]
 005CBB46    call       005C9CA4
 005CBB4B    mov        eax,dword ptr [ebp-4]
 005CBB4E    call       005C93D0
 005CBB53    mov        eax,dword ptr [ebp-4]
 005CBB56    fstp       qword ptr [eax+38]; TRPBarsCode128.?f38:?Double
 005CBB59    wait
 005CBB5A    mov        eax,dword ptr [ebp-4]
 005CBB5D    call       005C9664
 005CBB62    mov        eax,dword ptr [ebp-4]
 005CBB65    fstp       qword ptr [eax+40]; TRPBarsCode128.?f40:?Double
 005CBB68    wait
 005CBB69    lea        edx,[ebp-8]
 005CBB6C    mov        eax,dword ptr [ebp-4]
 005CBB6F    call       005CB8BC
 005CBB74    mov        eax,dword ptr [ebp-4]
 005CBB77    mov        al,byte ptr [eax+79]; TRPBarsCode128.?f79:byte
 005CBB7A    sub        al,1
>005CBB7C    jb         005CBB86
>005CBB7E    je         005CBBAC
 005CBB80    dec        al
>005CBB82    je         005CBBD2
>005CBB84    jmp        005CBBF6
 005CBB86    mov        al,[006172DC]
 005CBB8B    push       eax
 005CBB8C    lea        edx,[ebp-0C]
 005CBB8F    mov        eax,[0061763C]
 005CBB94    call       IntToStr
 005CBB99    mov        edx,dword ptr [ebp-0C]
 005CBB9C    mov        cl,byte ptr ds:[6172E8]
 005CBBA2    mov        eax,dword ptr [ebp-4]
 005CBBA5    call       005C9E94
>005CBBAA    jmp        005CBBF6
 005CBBAC    mov        al,[006172DC]
 005CBBB1    push       eax
 005CBBB2    lea        edx,[ebp-10]
 005CBBB5    mov        eax,[00617640]
 005CBBBA    call       IntToStr
 005CBBBF    mov        edx,dword ptr [ebp-10]
 005CBBC2    mov        cl,byte ptr ds:[6172E8]
 005CBBC8    mov        eax,dword ptr [ebp-4]
 005CBBCB    call       005C9E94
>005CBBD0    jmp        005CBBF6
 005CBBD2    mov        al,[006172DC]
 005CBBD7    push       eax
 005CBBD8    lea        edx,[ebp-14]
 005CBBDB    mov        eax,[00617644]
 005CBBE0    call       IntToStr
 005CBBE5    mov        edx,dword ptr [ebp-14]
 005CBBE8    mov        cl,byte ptr ds:[6172E8]
 005CBBEE    mov        eax,dword ptr [ebp-4]
 005CBBF1    call       005C9E94
 005CBBF6    mov        eax,dword ptr [ebp-8]
 005CBBF9    call       @LStrLen
 005CBBFE    mov        ebx,eax
 005CBC00    test       ebx,ebx
>005CBC02    jle        005CBC36
 005CBC04    mov        esi,1
 005CBC09    mov        al,[006172DC]
 005CBC0E    push       eax
 005CBC0F    mov        eax,dword ptr [ebp-8]
 005CBC12    mov        dl,byte ptr [eax+esi-1]
 005CBC16    lea        ecx,[ebp-18]
 005CBC19    mov        eax,dword ptr [ebp-4]
 005CBC1C    mov        edi,dword ptr [eax]
 005CBC1E    call       dword ptr [edi+10]; TRPBarsCode128.sub_005CBA08
 005CBC21    mov        edx,dword ptr [ebp-18]
 005CBC24    mov        cl,byte ptr ds:[6172E8]
 005CBC2A    mov        eax,dword ptr [ebp-4]
 005CBC2D    call       005C9E94
 005CBC32    inc        esi
 005CBC33    dec        ebx
<005CBC34    jne        005CBC09
 005CBC36    mov        al,[006172DC]
 005CBC3B    push       eax
 005CBC3C    mov        edx,dword ptr [ebp-8]
 005CBC3F    mov        eax,dword ptr [ebp-4]
 005CBC42    call       005CBA24
 005CBC47    mov        edx,eax
 005CBC49    lea        ecx,[ebp-1C]
 005CBC4C    mov        eax,dword ptr [ebp-4]
 005CBC4F    mov        ebx,dword ptr [eax]
 005CBC51    call       dword ptr [ebx+10]; TRPBarsCode128.sub_005CBA08
 005CBC54    mov        edx,dword ptr [ebp-1C]
 005CBC57    mov        cl,byte ptr ds:[6172E8]
 005CBC5D    mov        eax,dword ptr [ebp-4]
 005CBC60    call       005C9E94
 005CBC65    mov        al,[006172DC]
 005CBC6A    push       eax
 005CBC6B    lea        edx,[ebp-20]
 005CBC6E    mov        eax,[00617648]
 005CBC73    call       IntToStr
 005CBC78    mov        edx,dword ptr [ebp-20]
 005CBC7B    mov        cl,byte ptr ds:[6172E8]
 005CBC81    mov        eax,dword ptr [ebp-4]
 005CBC84    call       005C9E94
 005CBC89    mov        eax,dword ptr [ebp-4]
 005CBC8C    mov        edx,dword ptr [eax]
 005CBC8E    call       dword ptr [edx+4]; TRPBarsCode128.sub_005C9804
 005CBC91    xor        eax,eax
 005CBC93    pop        edx
 005CBC94    pop        ecx
 005CBC95    pop        ecx
 005CBC96    mov        dword ptr fs:[eax],edx
 005CBC99    push       5CBCAE
 005CBC9E    mov        eax,dword ptr [ebp-4]
 005CBCA1    call       005C9D24
 005CBCA6    ret
<005CBCA7    jmp        @HandleFinally
<005CBCAC    jmp        005CBC9E
 005CBCAE    xor        eax,eax
 005CBCB0    pop        edx
 005CBCB1    pop        ecx
 005CBCB2    pop        ecx
 005CBCB3    mov        dword ptr fs:[eax],edx
 005CBCB6    push       5CBCD0
 005CBCBB    lea        eax,[ebp-20]
 005CBCBE    mov        edx,7
 005CBCC3    call       @LStrArrayClr
 005CBCC8    ret
<005CBCC9    jmp        @HandleFinally
<005CBCCE    jmp        005CBCBB
 005CBCD0    pop        edi
 005CBCD1    pop        esi
 005CBCD2    pop        ebx
 005CBCD3    mov        esp,ebp
 005CBCD5    pop        ebp
 005CBCD6    ret
*}
end;

//005CBCD8
constructor TRPBarsUPC.Create;
begin
{*
 005CBCD8    push       ebx
 005CBCD9    push       esi
 005CBCDA    test       dl,dl
>005CBCDC    je         005CBCE6
 005CBCDE    add        esp,0FFFFFFF0
 005CBCE1    call       @ClassCreate
 005CBCE6    mov        ebx,edx
 005CBCE8    mov        esi,eax
 005CBCEA    xor        edx,edx
 005CBCEC    mov        eax,esi
 005CBCEE    call       005C92C0
 005CBCF3    mov        dword ptr [esi+54],0A; TRPBarsUPC.?f54:dword
 005CBCFA    mov        dl,1
 005CBCFC    mov        eax,esi
 005CBCFE    mov        ecx,dword ptr [eax]
 005CBD00    call       dword ptr [ecx+0C]; TRPBarsUPC.sub_005CCE80
 005CBD03    mov        dword ptr [esi+7C],0B; TRPBarsUPC.?f7C:dword
 005CBD0A    mov        eax,esi
 005CBD0C    test       bl,bl
>005CBD0E    je         005CBD1F
 005CBD10    call       @AfterConstruction
 005CBD15    pop        dword ptr fs:[0]
 005CBD1C    add        esp,0C
 005CBD1F    mov        eax,esi
 005CBD21    pop        esi
 005CBD22    pop        ebx
 005CBD23    ret
*}
end;

//005CBD24
//function sub_005CBD24(?:?):?;
//begin
{*
 005CBD24    push       ebp
 005CBD25    mov        ebp,esp
 005CBD27    push       0
 005CBD29    push       0
 005CBD2B    push       ebx
 005CBD2C    mov        ebx,edx
 005CBD2E    xor        eax,eax
 005CBD30    push       ebp
 005CBD31    push       5CBD82
 005CBD36    push       dword ptr fs:[eax]
 005CBD39    mov        dword ptr fs:[eax],esp
 005CBD3C    lea        eax,[ebp-4]
 005CBD3F    mov        edx,6178C0; gvar_006178C0:ShortString
 005CBD44    call       @LStrFromString
 005CBD49    mov        eax,dword ptr [ebp-4]
 005CBD4C    push       eax
 005CBD4D    lea        eax,[ebp-8]
 005CBD50    mov        edx,ebx
 005CBD52    call       @LStrFromChar
 005CBD57    mov        eax,dword ptr [ebp-8]
 005CBD5A    pop        edx
 005CBD5B    call       AnsiPos
 005CBD60    test       eax,eax
 005CBD62    setg       al
 005CBD65    mov        ebx,eax
 005CBD67    xor        eax,eax
 005CBD69    pop        edx
 005CBD6A    pop        ecx
 005CBD6B    pop        ecx
 005CBD6C    mov        dword ptr fs:[eax],edx
 005CBD6F    push       5CBD89
 005CBD74    lea        eax,[ebp-8]
 005CBD77    mov        edx,2
 005CBD7C    call       @LStrArrayClr
 005CBD81    ret
<005CBD82    jmp        @HandleFinally
<005CBD87    jmp        005CBD74
 005CBD89    mov        eax,ebx
 005CBD8B    pop        ebx
 005CBD8C    pop        ecx
 005CBD8D    pop        ecx
 005CBD8E    pop        ebp
 005CBD8F    ret
*}
//end;

//005CBD90
procedure sub_005CBD90;
begin
{*
 005CBD90    add        esp,0FFFFFFF8
 005CBD93    fld        qword ptr [eax+10]; TRPBarsEAN.?f10:?Double
 005CBD96    fmul       dword ptr ds:[5CBDB8]; 11:Single
 005CBD9C    fld        qword ptr [eax+10]; TRPBarsEAN.?f10:?Double
 005CBD9F    fmul       dword ptr ds:[5CBDBC]; 7:Single
 005CBDA5    fmul       dword ptr ds:[5CBDC0]; 12:Single
 005CBDAB    faddp      st(1),st
 005CBDAD    fstp       qword ptr [esp]
 005CBDB0    wait
 005CBDB1    fld        qword ptr [esp]
 005CBDB4    pop        ecx
 005CBDB5    pop        edx
 005CBDB6    ret
*}
end;

//005CBDC4
//procedure sub_005CBDC4(?:?);
//begin
{*
 005CBDC4    push       ebp
 005CBDC5    mov        ebp,esp
 005CBDC7    push       0
 005CBDC9    push       ebx
 005CBDCA    push       esi
 005CBDCB    mov        esi,edx
 005CBDCD    mov        ebx,eax
 005CBDCF    xor        eax,eax
 005CBDD1    push       ebp
 005CBDD2    push       5CBE17
 005CBDD7    push       dword ptr fs:[eax]
 005CBDDA    mov        dword ptr fs:[eax],esp
 005CBDDD    mov        eax,esi
 005CBDDF    mov        edx,dword ptr [ebx+34]; TRPBarsEAN.?f34:String
 005CBDE2    call       @LStrAsg
 005CBDE7    cmp        byte ptr [ebx+50],0; TRPBarsEAN.?f50:byte
>005CBDEB    je         005CBE01
 005CBDED    lea        edx,[ebp-4]
 005CBDF0    mov        eax,ebx
 005CBDF2    mov        ecx,dword ptr [eax]
 005CBDF4    call       dword ptr [ecx+14]; TRPBarsEAN.sub_005CC040
 005CBDF7    mov        edx,dword ptr [ebp-4]
 005CBDFA    mov        eax,esi
 005CBDFC    call       @LStrCat
 005CBE01    xor        eax,eax
 005CBE03    pop        edx
 005CBE04    pop        ecx
 005CBE05    pop        ecx
 005CBE06    mov        dword ptr fs:[eax],edx
 005CBE09    push       5CBE1E
 005CBE0E    lea        eax,[ebp-4]
 005CBE11    call       @LStrClr
 005CBE16    ret
<005CBE17    jmp        @HandleFinally
<005CBE1C    jmp        005CBE0E
 005CBE1E    pop        esi
 005CBE1F    pop        ebx
 005CBE20    pop        ecx
 005CBE21    pop        ebp
 005CBE22    ret
*}
//end;

//005CBE24
//procedure sub_005CBE24(?:?; ?:?; ?:?);
//begin
{*
 005CBE24    push       ebp
 005CBE25    mov        ebp,esp
 005CBE27    add        esp,0FFFFFFF4
 005CBE2A    push       ebx
 005CBE2B    push       esi
 005CBE2C    push       edi
 005CBE2D    xor        ebx,ebx
 005CBE2F    mov        dword ptr [ebp-8],ebx
 005CBE32    mov        dword ptr [ebp-4],ecx
 005CBE35    mov        ebx,edx
 005CBE37    mov        edi,eax
 005CBE39    mov        esi,dword ptr [ebp+0C]
 005CBE3C    xor        eax,eax
 005CBE3E    push       ebp
 005CBE3F    push       5CBEAD
 005CBE44    push       dword ptr fs:[eax]
 005CBE47    mov        dword ptr fs:[eax],esp
 005CBE4A    lea        eax,[ebp-8]
 005CBE4D    mov        edx,ebx
 005CBE4F    call       @LStrFromChar
 005CBE54    mov        eax,dword ptr [ebp-8]
 005CBE57    call       StrToInt
 005CBE5C    mov        dword ptr [ebp-0C],eax
 005CBE5F    fild       dword ptr [ebp-0C]
 005CBE62    fmul       qword ptr [edi+10]; TRPBarsEAN.?f10:?Double
 005CBE65    mov        eax,dword ptr [ebp-4]
 005CBE68    fstp       qword ptr [eax]
 005CBE6A    wait
 005CBE6B    cmp        byte ptr [edi+78],0; TRPBarsEAN.?f78:byte
>005CBE6F    jne        005CBE77
 005CBE71    cmp        byte ptr [edi+58],0; TRPBarsEAN.?f58:byte
>005CBE75    jne        005CBE84
 005CBE77    mov        eax,dword ptr [edi+18]; TRPBarsEAN.?f18:?Double
 005CBE7A    mov        dword ptr [esi],eax
 005CBE7C    mov        eax,dword ptr [edi+1C]; TRPBarsEAN.?f1C:dword
 005CBE7F    mov        dword ptr [esi+4],eax
>005CBE82    jmp        005CBE97
 005CBE84    mov        eax,edi
 005CBE86    call       005C9390
 005CBE8B    fdiv       dword ptr ds:[5CBEC0]; 2:Single
 005CBE91    fsubr      qword ptr [edi+18]; TRPBarsEAN.?f18:?Double
 005CBE94    fstp       qword ptr [esi]
 005CBE96    wait
 005CBE97    xor        eax,eax
 005CBE99    pop        edx
 005CBE9A    pop        ecx
 005CBE9B    pop        ecx
 005CBE9C    mov        dword ptr fs:[eax],edx
 005CBE9F    push       5CBEB4
 005CBEA4    lea        eax,[ebp-8]
 005CBEA7    call       @LStrClr
 005CBEAC    ret
<005CBEAD    jmp        @HandleFinally
<005CBEB2    jmp        005CBEA4
 005CBEB4    pop        edi
 005CBEB5    pop        esi
 005CBEB6    pop        ebx
 005CBEB7    mov        esp,ebp
 005CBEB9    pop        ebp
 005CBEBA    ret        8
*}
//end;

//005CBEC4
//procedure sub_005CBEC4(?:?; ?:?);
//begin
{*
 005CBEC4    push       ebp
 005CBEC5    mov        ebp,esp
 005CBEC7    push       0
 005CBEC9    push       0
 005CBECB    push       ebx
 005CBECC    push       esi
 005CBECD    push       edi
 005CBECE    mov        edi,ecx
 005CBED0    mov        ebx,edx
 005CBED2    mov        esi,eax
 005CBED4    xor        eax,eax
 005CBED6    push       ebp
 005CBED7    push       5CBF43
 005CBEDC    push       dword ptr fs:[eax]
 005CBEDF    mov        dword ptr fs:[eax],esp
 005CBEE2    mov        eax,edi
 005CBEE4    call       @LStrClr
 005CBEE9    mov        edx,ebx
 005CBEEB    mov        eax,esi
 005CBEED    mov        ecx,dword ptr [eax]
 005CBEEF    call       dword ptr [ecx+2C]; TRPBarsEAN.sub_005CBD24
 005CBEF2    test       al,al
>005CBEF4    je         005CBF28
 005CBEF6    lea        eax,[ebp-4]
 005CBEF9    mov        edx,6178C0; gvar_006178C0:ShortString
 005CBEFE    call       @LStrFromString
 005CBF03    mov        eax,dword ptr [ebp-4]
 005CBF06    push       eax
 005CBF07    lea        eax,[ebp-8]
 005CBF0A    mov        edx,ebx
 005CBF0C    call       @LStrFromChar
 005CBF11    mov        eax,dword ptr [ebp-8]
 005CBF14    pop        edx
 005CBF15    call       AnsiPos
 005CBF1A    mov        eax,dword ptr [eax*4+6178C8]
 005CBF21    mov        edx,edi
 005CBF23    call       IntToStr
 005CBF28    xor        eax,eax
 005CBF2A    pop        edx
 005CBF2B    pop        ecx
 005CBF2C    pop        ecx
 005CBF2D    mov        dword ptr fs:[eax],edx
 005CBF30    push       5CBF4A
 005CBF35    lea        eax,[ebp-8]
 005CBF38    mov        edx,2
 005CBF3D    call       @LStrArrayClr
 005CBF42    ret
<005CBF43    jmp        @HandleFinally
<005CBF48    jmp        005CBF35
 005CBF4A    pop        edi
 005CBF4B    pop        esi
 005CBF4C    pop        ebx
 005CBF4D    pop        ecx
 005CBF4E    pop        ecx
 005CBF4F    pop        ebp
 005CBF50    ret
*}
//end;

//005CBF54
procedure sub_005CBF54;
begin
{*
 005CBF54    push       ebx
 005CBF55    push       esi
 005CBF56    add        esp,0FFFFFFE8
 005CBF59    mov        esi,eax
 005CBF5B    mov        ebx,dword ptr [esi+30]; TRPBarsUPC.?f30:dword
 005CBF5E    mov        eax,ebx
 005CBF60    call       0058869C
 005CBF65    fstp       qword ptr [esp+8]
 005CBF69    wait
 005CBF6A    mov        eax,dword ptr [esp+8]
 005CBF6E    mov        dword ptr [esp],eax
 005CBF71    mov        eax,dword ptr [esp+0C]
 005CBF75    mov        dword ptr [esp+4],eax
>005CBF79    jmp        005CBFB6
 005CBF7B    fld        tbyte ptr ds:[5CC00C]; 0,1:Extended
 005CBF81    fsubr      qword ptr [esp]
 005CBF84    fstp       qword ptr [esp]
 005CBF87    wait
 005CBF88    push       dword ptr [esp+4]
 005CBF8C    push       dword ptr [esp+4]
 005CBF90    mov        eax,ebx
 005CBF92    call       005886B8
 005CBF97    fld        qword ptr [esp]
 005CBF9A    fcomp      dword ptr ds:[5CC018]; 0:Single
 005CBFA0    fnstsw     al
 005CBFA2    sahf
>005CBFA3    ja         005CBFB6
 005CBFA5    mov        eax,dword ptr [esp+8]
 005CBFA9    mov        dword ptr [esp],eax
 005CBFAC    mov        eax,dword ptr [esp+0C]
 005CBFB0    mov        dword ptr [esp+4],eax
>005CBFB4    jmp        005CBFE5
 005CBFB6    mov        edx,5CC024; '0000000000'
 005CBFBB    mov        eax,ebx
 005CBFBD    mov        ecx,dword ptr [eax]
 005CBFBF    call       dword ptr [ecx+134]
 005CBFC5    fstp       qword ptr [esp+10]
 005CBFC9    wait
 005CBFCA    mov        eax,esi
 005CBFCC    mov        edx,dword ptr [eax]
 005CBFCE    call       dword ptr [edx+8]; TRPBarsUPC.sub_005CBD90
 005CBFD1    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CBFD4    fmul       dword ptr ds:[5CC030]; 11:Single
 005CBFDA    fsubp      st(1),st
 005CBFDC    fcomp      qword ptr [esp+10]
 005CBFE0    fnstsw     al
 005CBFE2    sahf
<005CBFE3    jb         005CBF7B
 005CBFE5    fld        tbyte ptr ds:[5CC034]; 0,9:Extended
 005CBFEB    fmul       qword ptr [esp]
 005CBFEE    fstp       qword ptr [esp]
 005CBFF1    wait
 005CBFF2    push       dword ptr [esp+0C]
 005CBFF6    push       dword ptr [esp+0C]
 005CBFFA    mov        eax,ebx
 005CBFFC    call       005886B8
 005CC001    fld        qword ptr [esp]
 005CC004    add        esp,18
 005CC007    pop        esi
 005CC008    pop        ebx
 005CC009    ret
*}
end;

//005CC040
//procedure sub_005CC040(?:?);
//begin
{*
 005CC040    push       ebp
 005CC041    mov        ebp,esp
 005CC043    add        esp,0FFFFFFE0
 005CC046    push       ebx
 005CC047    push       esi
 005CC048    push       edi
 005CC049    xor        ecx,ecx
 005CC04B    mov        dword ptr [ebp-20],ecx
 005CC04E    mov        dword ptr [ebp-1C],ecx
 005CC051    mov        dword ptr [ebp-18],ecx
 005CC054    mov        dword ptr [ebp-14],ecx
 005CC057    mov        dword ptr [ebp-8],edx
 005CC05A    mov        dword ptr [ebp-4],eax
 005CC05D    xor        eax,eax
 005CC05F    push       ebp
 005CC060    push       5CC156
 005CC065    push       dword ptr fs:[eax]
 005CC068    mov        dword ptr fs:[eax],esp
 005CC06B    xor        edi,edi
 005CC06D    xor        eax,eax
 005CC06F    mov        dword ptr [ebp-0C],eax
 005CC072    lea        eax,[ebp-14]
 005CC075    mov        edx,dword ptr [ebp-4]
 005CC078    mov        edx,dword ptr [edx+34]; TRPBarsEAN.?f34:String
 005CC07B    call       @LStrLAsg
 005CC080    mov        eax,dword ptr [ebp-4]
 005CC083    cmp        dword ptr [eax+7C],0C; TRPBarsEAN.?f7C:dword
>005CC087    jne        005CC0B7
 005CC089    lea        eax,[ebp-18]
 005CC08C    mov        edx,dword ptr [ebp-14]
 005CC08F    mov        dl,byte ptr [edx]
 005CC091    call       @LStrFromChar
 005CC096    mov        eax,dword ptr [ebp-18]
 005CC099    xor        edx,edx
 005CC09B    call       StrToIntDef
 005CC0A0    mov        byte ptr [ebp-0D],al
 005CC0A3    lea        eax,[ebp-14]
 005CC0A6    mov        ecx,1
 005CC0AB    mov        edx,1
 005CC0B0    call       @LStrDelete
>005CC0B5    jmp        005CC0BB
 005CC0B7    mov        byte ptr [ebp-0D],0
 005CC0BB    mov        eax,dword ptr [ebp-14]
 005CC0BE    call       @LStrLen
 005CC0C3    mov        esi,eax
 005CC0C5    test       esi,esi
>005CC0C7    jle        005CC10C
 005CC0C9    mov        ebx,1
 005CC0CE    test       bl,1
>005CC0D1    je         005CC0EE
 005CC0D3    lea        eax,[ebp-1C]
 005CC0D6    mov        edx,dword ptr [ebp-14]
 005CC0D9    mov        dl,byte ptr [edx+ebx-1]
 005CC0DD    call       @LStrFromChar
 005CC0E2    mov        eax,dword ptr [ebp-1C]
 005CC0E5    call       StrToInt
 005CC0EA    add        edi,eax
>005CC0EC    jmp        005CC108
 005CC0EE    lea        eax,[ebp-20]
 005CC0F1    mov        edx,dword ptr [ebp-14]
 005CC0F4    mov        dl,byte ptr [edx+ebx-1]
 005CC0F8    call       @LStrFromChar
 005CC0FD    mov        eax,dword ptr [ebp-20]
 005CC100    call       StrToInt
 005CC105    add        dword ptr [ebp-0C],eax
 005CC108    inc        ebx
 005CC109    dec        esi
<005CC10A    jne        005CC0CE
 005CC10C    lea        eax,[edi+edi*2]
 005CC10F    mov        edi,eax
 005CC111    mov        ebx,dword ptr [ebp-0C]
 005CC114    add        ebx,edi
 005CC116    xor        eax,eax
 005CC118    mov        al,byte ptr [ebp-0D]
 005CC11B    add        ebx,eax
 005CC11D    mov        eax,dword ptr [ebp-4]
 005CC120    mov        ecx,dword ptr [eax+54]; TRPBarsEAN.?f54:dword
 005CC123    mov        eax,ebx
 005CC125    cdq
 005CC126    idiv       eax,ecx
 005CC128    mov        eax,ecx
 005CC12A    sub        eax,edx
 005CC12C    cdq
 005CC12D    idiv       eax,ecx
 005CC12F    mov        ebx,edx
 005CC131    mov        edx,dword ptr [ebp-8]
 005CC134    mov        eax,ebx
 005CC136    call       IntToStr
 005CC13B    xor        eax,eax
 005CC13D    pop        edx
 005CC13E    pop        ecx
 005CC13F    pop        ecx
 005CC140    mov        dword ptr fs:[eax],edx
 005CC143    push       5CC15D
 005CC148    lea        eax,[ebp-20]
 005CC14B    mov        edx,4
 005CC150    call       @LStrArrayClr
 005CC155    ret
<005CC156    jmp        @HandleFinally
<005CC15B    jmp        005CC148
 005CC15D    pop        edi
 005CC15E    pop        esi
 005CC15F    pop        ebx
 005CC160    mov        esp,ebp
 005CC162    pop        ebp
 005CC163    ret
*}
//end;

//005CC164
procedure sub_005CC164;
begin
{*
 005CC164    push       ebp
 005CC165    mov        ebp,esp
 005CC167    add        esp,0FFFFFFDC
 005CC16A    push       ebx
 005CC16B    push       esi
 005CC16C    push       edi
 005CC16D    xor        edx,edx
 005CC16F    mov        dword ptr [ebp-4],edx
 005CC172    mov        dword ptr [ebp-8],edx
 005CC175    mov        esi,eax
 005CC177    xor        eax,eax
 005CC179    push       ebp
 005CC17A    push       5CCA18
 005CC17F    push       dword ptr fs:[eax]
 005CC182    mov        dword ptr fs:[eax],esp
 005CC185    xor        edx,edx
 005CC187    mov        eax,esi
 005CC189    call       005C9C84
 005CC18E    test       al,al
>005CC190    jne        005CC9FD
 005CC196    mov        ebx,dword ptr [esi+30]; TRPBarsUPC.?f30:dword
 005CC199    mov        eax,ebx
 005CC19B    call       00588614
 005CC1A0    mov        edi,eax
 005CC1A2    mov        eax,ebx
 005CC1A4    call       0058869C
 005CC1A9    fdiv       dword ptr ds:[5CCA28]; 3:Single
 005CC1AF    fstp       qword ptr [ebp-10]
 005CC1B2    wait
 005CC1B3    lea        eax,[ebp-4]
 005CC1B6    mov        edx,dword ptr [esi+34]; TRPBarsUPC.?f34:String
 005CC1B9    call       @LStrLAsg
 005CC1BE    cmp        dword ptr [esi+7C],0C; TRPBarsUPC.?f7C:dword
>005CC1C2    jne        005CC1D6
 005CC1C4    lea        eax,[ebp-4]
 005CC1C7    mov        ecx,1
 005CC1CC    mov        edx,1
 005CC1D1    call       @LStrDelete
 005CC1D6    mov        al,byte ptr [esi+5D]; TRPBarsUPC.?f5D:byte
 005CC1D9    sub        al,1
>005CC1DB    jb         005CC1F8
>005CC1DD    je         005CC393
 005CC1E3    dec        al
>005CC1E5    je         005CC5C0
 005CC1EB    dec        al
>005CC1ED    je         005CC7D7
>005CC1F3    jmp        005CC9F4
 005CC1F8    mov        eax,ebx
 005CC1FA    call       00588A4C
 005CC1FF    fdiv       dword ptr ds:[5CCA2C]; 2:Single
 005CC205    fstp       tbyte ptr [ebp-1C]
 005CC208    wait
 005CC209    mov        eax,esi
 005CC20B    call       005C96E0
 005CC210    fld        tbyte ptr [ebp-1C]
 005CC213    fsubp      st(1),st
 005CC215    add        esp,0FFFFFFF8
 005CC218    fstp       qword ptr [esp]
 005CC21B    wait
 005CC21C    mov        eax,ebx
 005CC21E    call       005889EC
 005CC223    xor        edx,edx
 005CC225    mov        eax,ebx
 005CC227    call       005885EC
 005CC22C    mov        eax,ebx
 005CC22E    call       0058869C
 005CC233    fsub       qword ptr [ebp-10]
 005CC236    add        esp,0FFFFFFF8
 005CC239    fstp       qword ptr [esp]
 005CC23C    wait
 005CC23D    mov        eax,ebx
 005CC23F    call       005886B8
 005CC244    lea        eax,[ebp-8]
 005CC247    push       eax
 005CC248    mov        ecx,1
 005CC24D    mov        edx,1
 005CC252    mov        eax,dword ptr [ebp-4]
 005CC255    call       @LStrCopy
 005CC25A    mov        eax,esi
 005CC25C    call       005C93D0
 005CC261    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC264    fmul       dword ptr ds:[5CCA2C]; 2:Single
 005CC26A    fsubp      st(1),st
 005CC26C    add        esp,0FFFFFFF8
 005CC26F    fstp       qword ptr [esp]
 005CC272    wait
 005CC273    mov        edx,dword ptr [ebp-8]
 005CC276    mov        eax,ebx
 005CC278    call       005867F0
 005CC27D    mov        eax,ebx
 005CC27F    call       0058869C
 005CC284    fadd       qword ptr [ebp-10]
 005CC287    add        esp,0FFFFFFF8
 005CC28A    fstp       qword ptr [esp]
 005CC28D    wait
 005CC28E    mov        eax,ebx
 005CC290    call       005886B8
 005CC295    lea        eax,[ebp-8]
 005CC298    push       eax
 005CC299    mov        eax,dword ptr [ebp-4]
 005CC29C    call       @LStrLen
 005CC2A1    mov        ecx,eax
 005CC2A3    dec        ecx
 005CC2A4    sar        ecx,1
>005CC2A6    jns        005CC2AB
 005CC2A8    adc        ecx,0
 005CC2AB    mov        edx,2
 005CC2B0    mov        eax,dword ptr [ebp-4]
 005CC2B3    call       @LStrCopy
 005CC2B8    mov        eax,esi
 005CC2BA    call       005C93D0
 005CC2BF    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC2C2    fmul       dword ptr ds:[5CCA30]; 24:Single
 005CC2C8    faddp      st(1),st
 005CC2CA    add        esp,0FFFFFFF8
 005CC2CD    fstp       qword ptr [esp]
 005CC2D0    wait
 005CC2D1    mov        edx,dword ptr [ebp-8]
 005CC2D4    mov        eax,ebx
 005CC2D6    call       00586444
 005CC2DB    lea        eax,[ebp-8]
 005CC2DE    push       eax
 005CC2DF    mov        eax,dword ptr [ebp-4]
 005CC2E2    call       @LStrLen
 005CC2E7    dec        eax
 005CC2E8    sar        eax,1
>005CC2EA    jns        005CC2EF
 005CC2EC    adc        eax,0
 005CC2EF    push       eax
 005CC2F0    mov        eax,dword ptr [ebp-4]
 005CC2F3    call       @LStrLen
 005CC2F8    mov        edx,eax
 005CC2FA    dec        edx
 005CC2FB    sar        edx,1
>005CC2FD    jns        005CC302
 005CC2FF    adc        edx,0
 005CC302    add        edx,2
 005CC305    mov        eax,dword ptr [ebp-4]
 005CC308    pop        ecx
 005CC309    call       @LStrCopy
 005CC30E    mov        eax,esi
 005CC310    call       005C93D0
 005CC315    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC318    fmul       dword ptr ds:[5CCA34]; 71:Single
 005CC31E    faddp      st(1),st
 005CC320    add        esp,0FFFFFFF8
 005CC323    fstp       qword ptr [esp]
 005CC326    wait
 005CC327    mov        edx,dword ptr [ebp-8]
 005CC32A    mov        eax,ebx
 005CC32C    call       00586444
 005CC331    lea        edx,[ebp-8]
 005CC334    mov        eax,esi
 005CC336    mov        ecx,dword ptr [eax]
 005CC338    call       dword ptr [ecx+14]; TRPBarsUPC.sub_005CC040
 005CC33B    mov        eax,ebx
 005CC33D    call       0058869C
 005CC342    fsub       qword ptr [ebp-10]
 005CC345    add        esp,0FFFFFFF8
 005CC348    fstp       qword ptr [esp]
 005CC34B    wait
 005CC34C    mov        eax,ebx
 005CC34E    call       005886B8
 005CC353    mov        eax,esi
 005CC355    call       005C9488
 005CC35A    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC35D    fmul       dword ptr ds:[5CCA2C]; 2:Single
 005CC363    faddp      st(1),st
 005CC365    add        esp,0FFFFFFF8
 005CC368    fstp       qword ptr [esp]
 005CC36B    wait
 005CC36C    mov        edx,dword ptr [ebp-8]
 005CC36F    mov        eax,ebx
 005CC371    call       005866BC
 005CC376    mov        eax,ebx
 005CC378    call       0058869C
 005CC37D    fadd       qword ptr [ebp-10]
 005CC380    add        esp,0FFFFFFF8
 005CC383    fstp       qword ptr [esp]
 005CC386    wait
 005CC387    mov        eax,ebx
 005CC389    call       005886B8
>005CC38E    jmp        005CC9F4
 005CC393    mov        edx,5A
 005CC398    mov        eax,ebx
 005CC39A    call       005885EC
 005CC39F    mov        eax,ebx
 005CC3A1    call       0058869C
 005CC3A6    fsub       qword ptr [ebp-10]
 005CC3A9    add        esp,0FFFFFFF8
 005CC3AC    fstp       qword ptr [esp]
 005CC3AF    wait
 005CC3B0    mov        eax,ebx
 005CC3B2    call       005886B8
 005CC3B7    lea        eax,[ebp-8]
 005CC3BA    push       eax
 005CC3BB    mov        ecx,1
 005CC3C0    mov        edx,1
 005CC3C5    mov        eax,dword ptr [ebp-4]
 005CC3C8    call       @LStrCopy
 005CC3CD    mov        eax,ebx
 005CC3CF    call       00588A4C
 005CC3D4    fdiv       dword ptr ds:[5CCA2C]; 2:Single
 005CC3DA    fstp       tbyte ptr [ebp-1C]
 005CC3DD    wait
 005CC3DE    mov        eax,esi
 005CC3E0    call       005C9604
 005CC3E5    fld        tbyte ptr [ebp-1C]
 005CC3E8    fsubp      st(1),st
 005CC3EA    add        esp,0FFFFFFF8
 005CC3ED    fstp       qword ptr [esp]
 005CC3F0    wait
 005CC3F1    mov        eax,ebx
 005CC3F3    call       005844DC
 005CC3F8    mov        edx,5CCA40; '0'
 005CC3FD    mov        eax,ebx
 005CC3FF    mov        ecx,dword ptr [eax]
 005CC401    call       dword ptr [ecx+134]
 005CC407    fstp       qword ptr [ebp-24]
 005CC40A    wait
 005CC40B    mov        eax,esi
 005CC40D    call       005C93D0
 005CC412    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC415    fmul       dword ptr ds:[5CCA2C]; 2:Single
 005CC41B    faddp      st(1),st
 005CC41D    fadd       qword ptr [ebp-24]
 005CC420    add        esp,0FFFFFFF8
 005CC423    fstp       qword ptr [esp]
 005CC426    wait
 005CC427    mov        eax,ebx
 005CC429    call       0058451C
 005CC42E    mov        edx,dword ptr [ebp-8]
 005CC431    mov        eax,ebx
 005CC433    call       00586358
 005CC438    mov        eax,ebx
 005CC43A    call       0058869C
 005CC43F    fadd       qword ptr [ebp-10]
 005CC442    add        esp,0FFFFFFF8
 005CC445    fstp       qword ptr [esp]
 005CC448    wait
 005CC449    mov        eax,ebx
 005CC44B    call       005886B8
 005CC450    lea        eax,[ebp-8]
 005CC453    push       eax
 005CC454    mov        eax,dword ptr [ebp-4]
 005CC457    call       @LStrLen
 005CC45C    mov        ecx,eax
 005CC45E    dec        ecx
 005CC45F    sar        ecx,1
>005CC461    jns        005CC466
 005CC463    adc        ecx,0
 005CC466    mov        edx,2
 005CC46B    mov        eax,dword ptr [ebp-4]
 005CC46E    call       @LStrCopy
 005CC473    mov        edx,5CCA4C; '00000'
 005CC478    mov        eax,ebx
 005CC47A    mov        ecx,dword ptr [eax]
 005CC47C    call       dword ptr [ecx+134]
 005CC482    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC485    fmul       dword ptr ds:[5CCA54]; 42:Single
 005CC48B    fsubrp     st(1),st
 005CC48D    fdiv       dword ptr ds:[5CCA2C]; 2:Single
 005CC493    fstp       tbyte ptr [ebp-1C]
 005CC496    wait
 005CC497    mov        eax,esi
 005CC499    call       005C93D0
 005CC49E    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC4A1    fmul       dword ptr ds:[5CCA28]; 3:Single
 005CC4A7    fsubp      st(1),st
 005CC4A9    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC4AC    fmul       dword ptr ds:[5CCA28]; 3:Single
 005CC4B2    fsubp      st(1),st
 005CC4B4    fld        tbyte ptr [ebp-1C]
 005CC4B7    fsubp      st(1),st
 005CC4B9    add        esp,0FFFFFFF8
 005CC4BC    fstp       qword ptr [esp]
 005CC4BF    wait
 005CC4C0    mov        eax,ebx
 005CC4C2    call       0058451C
 005CC4C7    mov        edx,dword ptr [ebp-8]
 005CC4CA    mov        eax,ebx
 005CC4CC    call       00586358
 005CC4D1    lea        eax,[ebp-8]
 005CC4D4    push       eax
 005CC4D5    mov        eax,dword ptr [ebp-4]
 005CC4D8    call       @LStrLen
 005CC4DD    dec        eax
 005CC4DE    sar        eax,1
>005CC4E0    jns        005CC4E5
 005CC4E2    adc        eax,0
 005CC4E5    push       eax
 005CC4E6    mov        eax,dword ptr [ebp-4]
 005CC4E9    call       @LStrLen
 005CC4EE    mov        edx,eax
 005CC4F0    dec        edx
 005CC4F1    sar        edx,1
>005CC4F3    jns        005CC4F8
 005CC4F5    adc        edx,0
 005CC4F8    add        edx,2
 005CC4FB    mov        eax,dword ptr [ebp-4]
 005CC4FE    pop        ecx
 005CC4FF    call       @LStrCopy
 005CC504    mov        edx,5CCA4C; '00000'
 005CC509    mov        eax,ebx
 005CC50B    mov        ecx,dword ptr [eax]
 005CC50D    call       dword ptr [ecx+134]
 005CC513    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC516    fmul       dword ptr ds:[5CCA54]; 42:Single
 005CC51C    fsubrp     st(1),st
 005CC51E    fdiv       dword ptr ds:[5CCA2C]; 2:Single
 005CC524    fstp       tbyte ptr [ebp-1C]
 005CC527    wait
 005CC528    mov        eax,esi
 005CC52A    call       005C93D0
 005CC52F    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC532    fmul       dword ptr ds:[5CCA58]; 50:Single
 005CC538    fsubp      st(1),st
 005CC53A    fld        tbyte ptr [ebp-1C]
 005CC53D    fsubp      st(1),st
 005CC53F    add        esp,0FFFFFFF8
 005CC542    fstp       qword ptr [esp]
 005CC545    wait
 005CC546    mov        eax,ebx
 005CC548    call       0058451C
 005CC54D    mov        edx,dword ptr [ebp-8]
 005CC550    mov        eax,ebx
 005CC552    call       00586358
 005CC557    lea        edx,[ebp-8]
 005CC55A    mov        eax,esi
 005CC55C    mov        ecx,dword ptr [eax]
 005CC55E    call       dword ptr [ecx+14]; TRPBarsUPC.sub_005CC040
 005CC561    mov        eax,ebx
 005CC563    call       0058869C
 005CC568    fsub       qword ptr [ebp-10]
 005CC56B    add        esp,0FFFFFFF8
 005CC56E    fstp       qword ptr [esp]
 005CC571    wait
 005CC572    mov        eax,ebx
 005CC574    call       005886B8
 005CC579    mov        eax,esi
 005CC57B    call       005C9488
 005CC580    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC583    fmul       dword ptr ds:[5CCA2C]; 2:Single
 005CC589    fsubp      st(1),st
 005CC58B    add        esp,0FFFFFFF8
 005CC58E    fstp       qword ptr [esp]
 005CC591    wait
 005CC592    mov        eax,ebx
 005CC594    call       0058451C
 005CC599    mov        edx,dword ptr [ebp-8]
 005CC59C    mov        eax,ebx
 005CC59E    call       00586358
 005CC5A3    mov        eax,ebx
 005CC5A5    call       0058869C
 005CC5AA    fadd       qword ptr [ebp-10]
 005CC5AD    add        esp,0FFFFFFF8
 005CC5B0    fstp       qword ptr [esp]
 005CC5B3    wait
 005CC5B4    mov        eax,ebx
 005CC5B6    call       005886B8
>005CC5BB    jmp        005CC9F4
 005CC5C0    mov        edx,0B4
 005CC5C5    mov        eax,ebx
 005CC5C7    call       005885EC
 005CC5CC    mov        eax,ebx
 005CC5CE    call       0058869C
 005CC5D3    fsub       qword ptr [ebp-10]
 005CC5D6    add        esp,0FFFFFFF8
 005CC5D9    fstp       qword ptr [esp]
 005CC5DC    wait
 005CC5DD    mov        eax,ebx
 005CC5DF    call       005886B8
 005CC5E4    lea        eax,[ebp-8]
 005CC5E7    push       eax
 005CC5E8    mov        ecx,1
 005CC5ED    mov        edx,1
 005CC5F2    mov        eax,dword ptr [ebp-4]
 005CC5F5    call       @LStrCopy
 005CC5FA    mov        edx,5CCA40; '0'
 005CC5FF    mov        eax,ebx
 005CC601    mov        ecx,dword ptr [eax]
 005CC603    call       dword ptr [ecx+134]
 005CC609    fstp       qword ptr [ebp-24]
 005CC60C    wait
 005CC60D    mov        eax,esi
 005CC60F    call       005C93D0
 005CC614    fadd       qword ptr [ebp-24]
 005CC617    add        esp,0FFFFFFF8
 005CC61A    fstp       qword ptr [esp]
 005CC61D    wait
 005CC61E    mov        eax,ebx
 005CC620    call       005844DC
 005CC625    mov        eax,ebx
 005CC627    call       00588A4C
 005CC62C    fdiv       dword ptr ds:[5CCA2C]; 2:Single
 005CC632    fstp       tbyte ptr [ebp-1C]
 005CC635    wait
 005CC636    mov        eax,esi
 005CC638    call       005C9604
 005CC63D    fld        tbyte ptr [ebp-1C]
 005CC640    faddp      st(1),st
 005CC642    add        esp,0FFFFFFF8
 005CC645    fstp       qword ptr [esp]
 005CC648    wait
 005CC649    mov        eax,ebx
 005CC64B    call       0058451C
 005CC650    mov        edx,dword ptr [ebp-8]
 005CC653    mov        eax,ebx
 005CC655    call       00586358
 005CC65A    mov        eax,ebx
 005CC65C    call       0058869C
 005CC661    fadd       qword ptr [ebp-10]
 005CC664    add        esp,0FFFFFFF8
 005CC667    fstp       qword ptr [esp]
 005CC66A    wait
 005CC66B    mov        eax,ebx
 005CC66D    call       005886B8
 005CC672    lea        eax,[ebp-8]
 005CC675    push       eax
 005CC676    mov        eax,dword ptr [ebp-4]
 005CC679    call       @LStrLen
 005CC67E    mov        ecx,eax
 005CC680    dec        ecx
 005CC681    sar        ecx,1
>005CC683    jns        005CC688
 005CC685    adc        ecx,0
 005CC688    mov        edx,2
 005CC68D    mov        eax,dword ptr [ebp-4]
 005CC690    call       @LStrCopy
 005CC695    mov        edx,5CCA4C; '00000'
 005CC69A    mov        eax,ebx
 005CC69C    mov        ecx,dword ptr [eax]
 005CC69E    call       dword ptr [ecx+134]
 005CC6A4    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC6A7    fmul       dword ptr ds:[5CCA54]; 42:Single
 005CC6AD    fsubrp     st(1),st
 005CC6AF    fdiv       dword ptr ds:[5CCA2C]; 2:Single
 005CC6B5    fstp       tbyte ptr [ebp-1C]
 005CC6B8    wait
 005CC6B9    mov        eax,esi
 005CC6BB    call       005C93D0
 005CC6C0    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC6C3    fmul       dword ptr ds:[5CCA28]; 3:Single
 005CC6C9    fsubp      st(1),st
 005CC6CB    fld        tbyte ptr [ebp-1C]
 005CC6CE    fsubp      st(1),st
 005CC6D0    add        esp,0FFFFFFF8
 005CC6D3    fstp       qword ptr [esp]
 005CC6D6    wait
 005CC6D7    mov        eax,ebx
 005CC6D9    call       005844DC
 005CC6DE    mov        edx,dword ptr [ebp-8]
 005CC6E1    mov        eax,ebx
 005CC6E3    call       00586358
 005CC6E8    lea        eax,[ebp-8]
 005CC6EB    push       eax
 005CC6EC    mov        eax,dword ptr [ebp-4]
 005CC6EF    call       @LStrLen
 005CC6F4    dec        eax
 005CC6F5    sar        eax,1
>005CC6F7    jns        005CC6FC
 005CC6F9    adc        eax,0
 005CC6FC    push       eax
 005CC6FD    mov        eax,dword ptr [ebp-4]
 005CC700    call       @LStrLen
 005CC705    mov        edx,eax
 005CC707    dec        edx
 005CC708    sar        edx,1
>005CC70A    jns        005CC70F
 005CC70C    adc        edx,0
 005CC70F    add        edx,2
 005CC712    mov        eax,dword ptr [ebp-4]
 005CC715    pop        ecx
 005CC716    call       @LStrCopy
 005CC71B    mov        edx,5CCA4C; '00000'
 005CC720    mov        eax,ebx
 005CC722    mov        ecx,dword ptr [eax]
 005CC724    call       dword ptr [ecx+134]
 005CC72A    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC72D    fmul       dword ptr ds:[5CCA54]; 42:Single
 005CC733    fsubrp     st(1),st
 005CC735    fdiv       dword ptr ds:[5CCA2C]; 2:Single
 005CC73B    fstp       tbyte ptr [ebp-1C]
 005CC73E    wait
 005CC73F    mov        eax,esi
 005CC741    call       005C93D0
 005CC746    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC749    fmul       dword ptr ds:[5CCA58]; 50:Single
 005CC74F    fsubp      st(1),st
 005CC751    fld        tbyte ptr [ebp-1C]
 005CC754    fsubp      st(1),st
 005CC756    add        esp,0FFFFFFF8
 005CC759    fstp       qword ptr [esp]
 005CC75C    wait
 005CC75D    mov        eax,ebx
 005CC75F    call       005844DC
 005CC764    mov        edx,dword ptr [ebp-8]
 005CC767    mov        eax,ebx
 005CC769    call       00586358
 005CC76E    lea        edx,[ebp-8]
 005CC771    mov        eax,esi
 005CC773    mov        ecx,dword ptr [eax]
 005CC775    call       dword ptr [ecx+14]; TRPBarsUPC.sub_005CC040
 005CC778    mov        eax,ebx
 005CC77A    call       0058869C
 005CC77F    fsub       qword ptr [ebp-10]
 005CC782    add        esp,0FFFFFFF8
 005CC785    fstp       qword ptr [esp]
 005CC788    wait
 005CC789    mov        eax,ebx
 005CC78B    call       005886B8
 005CC790    mov        eax,esi
 005CC792    call       005C9488
 005CC797    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC79A    fmul       dword ptr ds:[5CCA2C]; 2:Single
 005CC7A0    fsubp      st(1),st
 005CC7A2    add        esp,0FFFFFFF8
 005CC7A5    fstp       qword ptr [esp]
 005CC7A8    wait
 005CC7A9    mov        eax,ebx
 005CC7AB    call       005844DC
 005CC7B0    mov        edx,dword ptr [ebp-8]
 005CC7B3    mov        eax,ebx
 005CC7B5    call       00586358
 005CC7BA    mov        eax,ebx
 005CC7BC    call       0058869C
 005CC7C1    fadd       qword ptr [ebp-10]
 005CC7C4    add        esp,0FFFFFFF8
 005CC7C7    fstp       qword ptr [esp]
 005CC7CA    wait
 005CC7CB    mov        eax,ebx
 005CC7CD    call       005886B8
>005CC7D2    jmp        005CC9F4
 005CC7D7    mov        edx,10E
 005CC7DC    mov        eax,ebx
 005CC7DE    call       005885EC
 005CC7E3    mov        eax,ebx
 005CC7E5    call       0058869C
 005CC7EA    fsub       qword ptr [ebp-10]
 005CC7ED    add        esp,0FFFFFFF8
 005CC7F0    fstp       qword ptr [esp]
 005CC7F3    wait
 005CC7F4    mov        eax,ebx
 005CC7F6    call       005886B8
 005CC7FB    lea        eax,[ebp-8]
 005CC7FE    push       eax
 005CC7FF    mov        ecx,1
 005CC804    mov        edx,1
 005CC809    mov        eax,dword ptr [ebp-4]
 005CC80C    call       @LStrCopy
 005CC811    mov        eax,ebx
 005CC813    call       00588A4C
 005CC818    fdiv       dword ptr ds:[5CCA2C]; 2:Single
 005CC81E    fstp       tbyte ptr [ebp-1C]
 005CC821    wait
 005CC822    mov        eax,esi
 005CC824    call       005C9604
 005CC829    fld        tbyte ptr [ebp-1C]
 005CC82C    faddp      st(1),st
 005CC82E    add        esp,0FFFFFFF8
 005CC831    fstp       qword ptr [esp]
 005CC834    wait
 005CC835    mov        eax,ebx
 005CC837    call       005844DC
 005CC83C    mov        edx,5CCA40; '0'
 005CC841    mov        eax,ebx
 005CC843    mov        ecx,dword ptr [eax]
 005CC845    call       dword ptr [ecx+134]
 005CC84B    fstp       qword ptr [ebp-24]
 005CC84E    wait
 005CC84F    mov        eax,esi
 005CC851    call       005C93D0
 005CC856    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC859    fmul       dword ptr ds:[5CCA2C]; 2:Single
 005CC85F    fsubp      st(1),st
 005CC861    fsub       qword ptr [ebp-24]
 005CC864    add        esp,0FFFFFFF8
 005CC867    fstp       qword ptr [esp]
 005CC86A    wait
 005CC86B    mov        eax,ebx
 005CC86D    call       0058451C
 005CC872    mov        edx,dword ptr [ebp-8]
 005CC875    mov        eax,ebx
 005CC877    call       00586358
 005CC87C    mov        eax,ebx
 005CC87E    call       0058869C
 005CC883    fadd       qword ptr [ebp-10]
 005CC886    add        esp,0FFFFFFF8
 005CC889    fstp       qword ptr [esp]
 005CC88C    wait
 005CC88D    mov        eax,ebx
 005CC88F    call       005886B8
 005CC894    lea        eax,[ebp-8]
 005CC897    push       eax
 005CC898    mov        eax,dword ptr [ebp-4]
 005CC89B    call       @LStrLen
 005CC8A0    mov        ecx,eax
 005CC8A2    dec        ecx
 005CC8A3    sar        ecx,1
>005CC8A5    jns        005CC8AA
 005CC8A7    adc        ecx,0
 005CC8AA    mov        edx,2
 005CC8AF    mov        eax,dword ptr [ebp-4]
 005CC8B2    call       @LStrCopy
 005CC8B7    mov        edx,5CCA4C; '00000'
 005CC8BC    mov        eax,ebx
 005CC8BE    mov        ecx,dword ptr [eax]
 005CC8C0    call       dword ptr [ecx+134]
 005CC8C6    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC8C9    fmul       dword ptr ds:[5CCA54]; 42:Single
 005CC8CF    fsubrp     st(1),st
 005CC8D1    fdiv       dword ptr ds:[5CCA2C]; 2:Single
 005CC8D7    fstp       tbyte ptr [ebp-1C]
 005CC8DA    wait
 005CC8DB    mov        eax,esi
 005CC8DD    call       005C93D0
 005CC8E2    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC8E5    fmul       dword ptr ds:[5CCA5C]; 4:Single
 005CC8EB    faddp      st(1),st
 005CC8ED    fld        tbyte ptr [ebp-1C]
 005CC8F0    faddp      st(1),st
 005CC8F2    add        esp,0FFFFFFF8
 005CC8F5    fstp       qword ptr [esp]
 005CC8F8    wait
 005CC8F9    mov        eax,ebx
 005CC8FB    call       0058451C
 005CC900    mov        edx,dword ptr [ebp-8]
 005CC903    mov        eax,ebx
 005CC905    call       00586358
 005CC90A    lea        eax,[ebp-8]
 005CC90D    push       eax
 005CC90E    mov        eax,dword ptr [ebp-4]
 005CC911    call       @LStrLen
 005CC916    dec        eax
 005CC917    sar        eax,1
>005CC919    jns        005CC91E
 005CC91B    adc        eax,0
 005CC91E    push       eax
 005CC91F    mov        eax,dword ptr [ebp-4]
 005CC922    call       @LStrLen
 005CC927    mov        edx,eax
 005CC929    dec        edx
 005CC92A    sar        edx,1
>005CC92C    jns        005CC931
 005CC92E    adc        edx,0
 005CC931    add        edx,2
 005CC934    mov        eax,dword ptr [ebp-4]
 005CC937    pop        ecx
 005CC938    call       @LStrCopy
 005CC93D    mov        edx,5CCA4C; '00000'
 005CC942    mov        eax,ebx
 005CC944    mov        ecx,dword ptr [eax]
 005CC946    call       dword ptr [ecx+134]
 005CC94C    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC94F    fmul       dword ptr ds:[5CCA54]; 42:Single
 005CC955    fsubrp     st(1),st
 005CC957    fdiv       dword ptr ds:[5CCA2C]; 2:Single
 005CC95D    fstp       tbyte ptr [ebp-1C]
 005CC960    wait
 005CC961    mov        eax,esi
 005CC963    call       005C93D0
 005CC968    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC96B    fmul       dword ptr ds:[5CCA58]; 50:Single
 005CC971    faddp      st(1),st
 005CC973    fld        tbyte ptr [ebp-1C]
 005CC976    faddp      st(1),st
 005CC978    add        esp,0FFFFFFF8
 005CC97B    fstp       qword ptr [esp]
 005CC97E    wait
 005CC97F    mov        eax,ebx
 005CC981    call       0058451C
 005CC986    mov        edx,dword ptr [ebp-8]
 005CC989    mov        eax,ebx
 005CC98B    call       00586358
 005CC990    lea        edx,[ebp-8]
 005CC993    mov        eax,esi
 005CC995    mov        ecx,dword ptr [eax]
 005CC997    call       dword ptr [ecx+14]; TRPBarsUPC.sub_005CC040
 005CC99A    mov        eax,ebx
 005CC99C    call       0058869C
 005CC9A1    fsub       qword ptr [ebp-10]
 005CC9A4    add        esp,0FFFFFFF8
 005CC9A7    fstp       qword ptr [esp]
 005CC9AA    wait
 005CC9AB    mov        eax,ebx
 005CC9AD    call       005886B8
 005CC9B2    mov        eax,esi
 005CC9B4    call       005C9488
 005CC9B9    fld        qword ptr [esi+10]; TRPBarsUPC.?f10:?Double
 005CC9BC    fmul       dword ptr ds:[5CCA2C]; 2:Single
 005CC9C2    faddp      st(1),st
 005CC9C4    add        esp,0FFFFFFF8
 005CC9C7    fstp       qword ptr [esp]
 005CC9CA    wait
 005CC9CB    mov        eax,ebx
 005CC9CD    call       0058451C
 005CC9D2    mov        edx,dword ptr [ebp-8]
 005CC9D5    mov        eax,ebx
 005CC9D7    call       00586358
 005CC9DC    mov        eax,ebx
 005CC9DE    call       0058869C
 005CC9E3    fadd       qword ptr [ebp-10]
 005CC9E6    add        esp,0FFFFFFF8
 005CC9E9    fstp       qword ptr [esp]
 005CC9EC    wait
 005CC9ED    mov        eax,ebx
 005CC9EF    call       005886B8
 005CC9F4    mov        edx,edi
 005CC9F6    mov        eax,ebx
 005CC9F8    call       005885EC
 005CC9FD    xor        eax,eax
 005CC9FF    pop        edx
 005CCA00    pop        ecx
 005CCA01    pop        ecx
 005CCA02    mov        dword ptr fs:[eax],edx
 005CCA05    push       5CCA1F
 005CCA0A    lea        eax,[ebp-8]
 005CCA0D    mov        edx,2
 005CCA12    call       @LStrArrayClr
 005CCA17    ret
<005CCA18    jmp        @HandleFinally
<005CCA1D    jmp        005CCA0A
 005CCA1F    pop        edi
 005CCA20    pop        esi
 005CCA21    pop        ebx
 005CCA22    mov        esp,ebp
 005CCA24    pop        ebp
 005CCA25    ret
*}
end;

//005CCA60
//procedure sub_005CCA60(?:AnsiString; ?:?; ?:AnsiString);
//begin
{*
 005CCA60    push       ebp
 005CCA61    mov        ebp,esp
 005CCA63    add        esp,0FFFFFFF8
 005CCA66    push       ebx
 005CCA67    push       esi
 005CCA68    xor        ebx,ebx
 005CCA6A    mov        dword ptr [ebp-8],ebx
 005CCA6D    mov        esi,ecx
 005CCA6F    mov        ebx,edx
 005CCA71    mov        dword ptr [ebp-4],eax
 005CCA74    mov        eax,dword ptr [ebp-4]
 005CCA77    call       @LStrAddRef
 005CCA7C    xor        eax,eax
 005CCA7E    push       ebp
 005CCA7F    push       5CCAE9
 005CCA84    push       dword ptr fs:[eax]
 005CCA87    mov        dword ptr fs:[eax],esp
 005CCA8A    test       bl,bl
>005CCA8C    je         005CCAC4
 005CCA8E    mov        eax,esi
 005CCA90    call       @LStrClr
 005CCA95    mov        eax,dword ptr [ebp-4]
 005CCA98    call       @LStrLen
 005CCA9D    mov        ebx,eax
 005CCA9F    cmp        ebx,1
>005CCAA2    jl         005CCACE
 005CCAA4    lea        eax,[ebp-8]
 005CCAA7    mov        edx,dword ptr [ebp-4]
 005CCAAA    mov        dl,byte ptr [edx+ebx-1]
 005CCAAE    call       @LStrFromChar
 005CCAB3    mov        edx,dword ptr [ebp-8]
 005CCAB6    mov        eax,esi
 005CCAB8    call       @LStrCat
 005CCABD    dec        ebx
 005CCABE    test       ebx,ebx
<005CCAC0    jne        005CCAA4
>005CCAC2    jmp        005CCACE
 005CCAC4    mov        eax,esi
 005CCAC6    mov        edx,dword ptr [ebp-4]
 005CCAC9    call       @LStrAsg
 005CCACE    xor        eax,eax
 005CCAD0    pop        edx
 005CCAD1    pop        ecx
 005CCAD2    pop        ecx
 005CCAD3    mov        dword ptr fs:[eax],edx
 005CCAD6    push       5CCAF0
 005CCADB    lea        eax,[ebp-8]
 005CCADE    mov        edx,2
 005CCAE3    call       @LStrArrayClr
 005CCAE8    ret
<005CCAE9    jmp        @HandleFinally
<005CCAEE    jmp        005CCADB
 005CCAF0    pop        esi
 005CCAF1    pop        ebx
 005CCAF2    pop        ecx
 005CCAF3    pop        ecx
 005CCAF4    pop        ebp
 005CCAF5    ret
*}
//end;

//005CCAF8
procedure sub_005CCAF8;
begin
{*
 005CCAF8    push       ebp
 005CCAF9    mov        ebp,esp
 005CCAFB    mov        ecx,8
 005CCB00    push       0
 005CCB02    push       0
 005CCB04    dec        ecx
<005CCB05    jne        005CCB00
 005CCB07    push       ebx
 005CCB08    push       esi
 005CCB09    push       edi
 005CCB0A    mov        dword ptr [ebp-4],eax
 005CCB0D    xor        eax,eax
 005CCB0F    push       ebp
 005CCB10    push       5CCE6F
 005CCB15    push       dword ptr fs:[eax]
 005CCB18    mov        dword ptr fs:[eax],esp
 005CCB1B    mov        eax,dword ptr [ebp-4]
 005CCB1E    call       005C9D80
 005CCB23    xor        eax,eax
 005CCB25    push       ebp
 005CCB26    push       5CCE45
 005CCB2B    push       dword ptr fs:[eax]
 005CCB2E    mov        dword ptr fs:[eax],esp
 005CCB31    mov        eax,dword ptr [ebp-4]
 005CCB34    call       005C9CA4
 005CCB39    lea        edx,[ebp-8]
 005CCB3C    mov        eax,dword ptr [ebp-4]
 005CCB3F    mov        ecx,dword ptr [eax]
 005CCB41    call       dword ptr [ecx+1C]; TRPBarsEAN.sub_005CBDC4
 005CCB44    mov        eax,dword ptr [ebp-4]
 005CCB47    cmp        dword ptr [eax+7C],0C; TRPBarsEAN.?f7C:dword
>005CCB4B    jne        005CCB7B
 005CCB4D    lea        eax,[ebp-1C]
 005CCB50    mov        edx,dword ptr [ebp-8]
 005CCB53    mov        dl,byte ptr [edx]
 005CCB55    call       @LStrFromChar
 005CCB5A    mov        eax,dword ptr [ebp-1C]
 005CCB5D    xor        edx,edx
 005CCB5F    call       StrToIntDef
 005CCB64    mov        byte ptr [ebp-11],al
 005CCB67    lea        eax,[ebp-8]
 005CCB6A    mov        ecx,1
 005CCB6F    mov        edx,1
 005CCB74    call       @LStrDelete
>005CCB79    jmp        005CCB7F
 005CCB7B    mov        byte ptr [ebp-11],0
 005CCB7F    xor        eax,eax
 005CCB81    mov        dword ptr [ebp-10],eax
 005CCB84    mov        dword ptr [ebp-0C],eax
 005CCB87    xor        edx,edx
 005CCB89    mov        eax,dword ptr [ebp-4]
 005CCB8C    call       005C9C84
 005CCB91    test       al,al
>005CCB93    jne        005CCBBE
 005CCB95    mov        eax,dword ptr [ebp-4]
 005CCB98    mov        eax,dword ptr [eax+30]; TRPBarsEAN.?f30:dword
 005CCB9B    call       0058869C
 005CCBA0    fstp       qword ptr [ebp-10]
 005CCBA3    wait
 005CCBA4    mov        eax,dword ptr [ebp-4]
 005CCBA7    mov        edx,dword ptr [eax]
 005CCBA9    call       dword ptr [edx+30]; TRPBarsEAN.sub_005CCF74
 005CCBAC    add        esp,0FFFFFFF8
 005CCBAF    fstp       qword ptr [esp]
 005CCBB2    wait
 005CCBB3    mov        eax,dword ptr [ebp-4]
 005CCBB6    mov        eax,dword ptr [eax+30]; TRPBarsEAN.?f30:dword
 005CCBB9    call       005886B8
 005CCBBE    mov        eax,dword ptr [ebp-4]
 005CCBC1    call       005C93D0
 005CCBC6    mov        eax,dword ptr [ebp-4]
 005CCBC9    fstp       qword ptr [eax+38]; TRPBarsEAN.?f38:?Double
 005CCBCC    wait
 005CCBCD    mov        eax,dword ptr [ebp-4]
 005CCBD0    call       005C9664
 005CCBD5    mov        eax,dword ptr [ebp-4]
 005CCBD8    fstp       qword ptr [eax+40]; TRPBarsEAN.?f40:?Double
 005CCBDB    wait
 005CCBDC    mov        eax,dword ptr [ebp-4]
 005CCBDF    mov        byte ptr [eax+78],1; TRPBarsEAN.?f78:byte
 005CCBE3    mov        al,[006172DC]
 005CCBE8    push       eax
 005CCBE9    lea        edx,[ebp-20]
 005CCBEC    mov        eax,[006178B8]
 005CCBF1    call       IntToStr
 005CCBF6    mov        edx,dword ptr [ebp-20]
 005CCBF9    mov        cl,byte ptr ds:[6172E8]
 005CCBFF    mov        eax,dword ptr [ebp-4]
 005CCC02    call       005C9E94
 005CCC07    mov        eax,dword ptr [ebp-8]
 005CCC0A    call       @LStrLen
 005CCC0F    mov        esi,eax
 005CCC11    test       esi,esi
>005CCC13    jle        005CCDD4
 005CCC19    mov        ebx,1
 005CCC1E    mov        eax,ebx
 005CCC20    dec        eax
 005CCC21    sub        eax,6
>005CCC24    jae        005CCD9C
 005CCC2A    mov        eax,dword ptr [ebp-4]
 005CCC2D    mov        byte ptr [eax+78],0; TRPBarsEAN.?f78:byte
 005CCC31    mov        eax,dword ptr [ebp-8]
 005CCC34    mov        dl,byte ptr [eax+ebx-1]
 005CCC38    lea        ecx,[ebp-18]
 005CCC3B    mov        eax,dword ptr [ebp-4]
 005CCC3E    mov        edi,dword ptr [eax]
 005CCC40    call       dword ptr [edi+10]; TRPBarsEAN.sub_005CBEC4
 005CCC43    mov        eax,ebx
 005CCC45    cmp        eax,6
>005CCC48    ja         005CCD53
 005CCC4E    jmp        dword ptr [eax*4+5CCC55]
 005CCC4E    dd         5CCD53
 005CCC4E    dd         5CCD53
 005CCC4E    dd         5CCC71
 005CCC4E    dd         5CCC96
 005CCC4E    dd         5CCCC8
 005CCC4E    dd         5CCCF5
 005CCC4E    dd         5CCD26
 005CCC71    mov        al,byte ptr [ebp-11]
 005CCC74    add        al,0FC
 005CCC76    sub        al,6
 005CCC78    setb       dl
 005CCC7B    lea        ecx,[ebp-24]
 005CCC7E    mov        eax,dword ptr [ebp-18]
 005CCC81    call       005CCA60
 005CCC86    mov        edx,dword ptr [ebp-24]
 005CCC89    lea        eax,[ebp-18]
 005CCC8C    call       @LStrLAsg
>005CCC91    jmp        005CCD53
 005CCC96    mov        al,byte ptr [ebp-11]
 005CCC99    dec        eax
 005CCC9A    sub        al,3
>005CCC9C    jb         005CCCAB
 005CCC9E    dec        eax
 005CCC9F    sub        al,2
>005CCCA1    jb         005CCCAB
 005CCCA3    sub        al,2
>005CCCA5    je         005CCCAB
 005CCCA7    xor        edx,edx
>005CCCA9    jmp        005CCCAD
 005CCCAB    mov        dl,1
 005CCCAD    lea        ecx,[ebp-28]
 005CCCB0    mov        eax,dword ptr [ebp-18]
 005CCCB3    call       005CCA60
 005CCCB8    mov        edx,dword ptr [ebp-28]
 005CCCBB    lea        eax,[ebp-18]
 005CCCBE    call       @LStrLAsg
>005CCCC3    jmp        005CCD53
 005CCCC8    mov        al,byte ptr [ebp-11]
 005CCCCB    add        al,0FE
 005CCCCD    sub        al,2
>005CCCCF    jb         005CCCDB
 005CCCD1    add        al,0FE
 005CCCD3    sub        al,3
>005CCCD5    jb         005CCCDB
 005CCCD7    xor        edx,edx
>005CCCD9    jmp        005CCCDD
 005CCCDB    mov        dl,1
 005CCCDD    lea        ecx,[ebp-2C]
 005CCCE0    mov        eax,dword ptr [ebp-18]
 005CCCE3    call       005CCA60
 005CCCE8    mov        edx,dword ptr [ebp-2C]
 005CCCEB    lea        eax,[ebp-18]
 005CCCEE    call       @LStrLAsg
>005CCCF3    jmp        005CCD53
 005CCCF5    mov        al,byte ptr [ebp-11]
 005CCCF8    sub        al,1
>005CCCFA    je         005CCD0C
 005CCCFC    add        al,0FE
 005CCCFE    sub        al,2
>005CCD00    jb         005CCD0C
 005CCD02    add        al,0FD
 005CCD04    sub        al,2
>005CCD06    jb         005CCD0C
 005CCD08    xor        edx,edx
>005CCD0A    jmp        005CCD0E
 005CCD0C    mov        dl,1
 005CCD0E    lea        ecx,[ebp-30]
 005CCD11    mov        eax,dword ptr [ebp-18]
 005CCD14    call       005CCA60
 005CCD19    mov        edx,dword ptr [ebp-30]
 005CCD1C    lea        eax,[ebp-18]
 005CCD1F    call       @LStrLAsg
>005CCD24    jmp        005CCD53
 005CCD26    mov        al,byte ptr [ebp-11]
 005CCD29    dec        eax
 005CCD2A    sub        al,2
>005CCD2C    jb         005CCD3B
 005CCD2E    dec        eax
 005CCD2F    sub        al,2
>005CCD31    jb         005CCD3B
 005CCD33    sub        al,1
>005CCD35    je         005CCD3B
 005CCD37    xor        edx,edx
>005CCD39    jmp        005CCD3D
 005CCD3B    mov        dl,1
 005CCD3D    lea        ecx,[ebp-34]
 005CCD40    mov        eax,dword ptr [ebp-18]
 005CCD43    call       005CCA60
 005CCD48    mov        edx,dword ptr [ebp-34]
 005CCD4B    lea        eax,[ebp-18]
 005CCD4E    call       @LStrLAsg
 005CCD53    mov        al,[006172DC]
 005CCD58    push       eax
 005CCD59    mov        cl,byte ptr ds:[6172E4]
 005CCD5F    mov        edx,dword ptr [ebp-18]
 005CCD62    mov        eax,dword ptr [ebp-4]
 005CCD65    call       005C9E94
 005CCD6A    cmp        ebx,6
>005CCD6D    jne        005CCDCC
 005CCD6F    mov        eax,dword ptr [ebp-4]
 005CCD72    mov        byte ptr [eax+78],1; TRPBarsEAN.?f78:byte
 005CCD76    mov        al,[006172DC]
 005CCD7B    push       eax
 005CCD7C    lea        edx,[ebp-38]
 005CCD7F    mov        eax,[006178BC]
 005CCD84    call       IntToStr
 005CCD89    mov        edx,dword ptr [ebp-38]
 005CCD8C    mov        cl,byte ptr ds:[6172E4]
 005CCD92    mov        eax,dword ptr [ebp-4]
 005CCD95    call       005C9E94
>005CCD9A    jmp        005CCDCC
 005CCD9C    mov        eax,dword ptr [ebp-4]
 005CCD9F    mov        byte ptr [eax+78],0; TRPBarsEAN.?f78:byte
 005CCDA3    mov        al,[006172DC]
 005CCDA8    push       eax
 005CCDA9    mov        eax,dword ptr [ebp-8]
 005CCDAC    mov        dl,byte ptr [eax+ebx-1]
 005CCDB0    lea        ecx,[ebp-3C]
 005CCDB3    mov        eax,dword ptr [ebp-4]
 005CCDB6    mov        edi,dword ptr [eax]
 005CCDB8    call       dword ptr [edi+10]; TRPBarsEAN.sub_005CBEC4
 005CCDBB    mov        edx,dword ptr [ebp-3C]
 005CCDBE    mov        cl,byte ptr ds:[6172E8]
 005CCDC4    mov        eax,dword ptr [ebp-4]
 005CCDC7    call       005C9E94
 005CCDCC    inc        ebx
 005CCDCD    dec        esi
<005CCDCE    jne        005CCC1E
 005CCDD4    mov        eax,dword ptr [ebp-4]
 005CCDD7    mov        byte ptr [eax+78],1; TRPBarsEAN.?f78:byte
 005CCDDB    mov        al,[006172DC]
 005CCDE0    push       eax
 005CCDE1    lea        edx,[ebp-40]
 005CCDE4    mov        eax,[006178B8]
 005CCDE9    call       IntToStr
 005CCDEE    mov        edx,dword ptr [ebp-40]
 005CCDF1    mov        cl,byte ptr ds:[6172E8]
 005CCDF7    mov        eax,dword ptr [ebp-4]
 005CCDFA    call       005C9E94
 005CCDFF    mov        eax,dword ptr [ebp-4]
 005CCE02    cmp        byte ptr [eax+58],0; TRPBarsEAN.?f58:byte
>005CCE06    je         005CCE10
 005CCE08    mov        eax,dword ptr [ebp-4]
 005CCE0B    mov        edx,dword ptr [eax]
 005CCE0D    call       dword ptr [edx+4]; TRPBarsEAN.sub_005CD064
 005CCE10    xor        edx,edx
 005CCE12    mov        eax,dword ptr [ebp-4]
 005CCE15    call       005C9C84
 005CCE1A    test       al,al
>005CCE1C    jne        005CCE2F
 005CCE1E    push       dword ptr [ebp-0C]
 005CCE21    push       dword ptr [ebp-10]
 005CCE24    mov        eax,dword ptr [ebp-4]
 005CCE27    mov        eax,dword ptr [eax+30]; TRPBarsEAN.?f30:dword
 005CCE2A    call       005886B8
 005CCE2F    xor        eax,eax
 005CCE31    pop        edx
 005CCE32    pop        ecx
 005CCE33    pop        ecx
 005CCE34    mov        dword ptr fs:[eax],edx
 005CCE37    push       5CCE4C
 005CCE3C    mov        eax,dword ptr [ebp-4]
 005CCE3F    call       005C9D24
 005CCE44    ret
<005CCE45    jmp        @HandleFinally
<005CCE4A    jmp        005CCE3C
 005CCE4C    xor        eax,eax
 005CCE4E    pop        edx
 005CCE4F    pop        ecx
 005CCE50    pop        ecx
 005CCE51    mov        dword ptr fs:[eax],edx
 005CCE54    push       5CCE76
 005CCE59    lea        eax,[ebp-40]
 005CCE5C    mov        edx,0B
 005CCE61    call       @LStrArrayClr
 005CCE66    lea        eax,[ebp-8]
 005CCE69    call       @LStrClr
 005CCE6E    ret
<005CCE6F    jmp        @HandleFinally
<005CCE74    jmp        005CCE59
 005CCE76    pop        edi
 005CCE77    pop        esi
 005CCE78    pop        ebx
 005CCE79    mov        esp,ebp
 005CCE7B    pop        ebp
 005CCE7C    ret
*}
end;

//005CCE80
procedure sub_005CCE80;
begin
{*
 005CCE80    mov        byte ptr [eax+50],1; TRPBarsEAN.?f50:byte
 005CCE84    ret
*}
end;

//005CCE88
//procedure sub_005CCE88(?:?);
//begin
{*
 005CCE88    push       ebp
 005CCE89    mov        ebp,esp
 005CCE8B    add        esp,0FFFFFFF8
 005CCE8E    push       ebx
 005CCE8F    push       esi
 005CCE90    xor        ecx,ecx
 005CCE92    mov        dword ptr [ebp-8],ecx
 005CCE95    mov        dword ptr [ebp-4],edx
 005CCE98    mov        ebx,eax
 005CCE9A    mov        eax,dword ptr [ebp-4]
 005CCE9D    call       @LStrAddRef
 005CCEA2    xor        eax,eax
 005CCEA4    push       ebp
 005CCEA5    push       5CCF2B
 005CCEAA    push       dword ptr fs:[eax]
 005CCEAD    mov        dword ptr fs:[eax],esp
 005CCEB0    mov        edx,dword ptr [ebp-4]
 005CCEB3    mov        eax,ebx
 005CCEB5    call       005C9740
 005CCEBA    mov        eax,dword ptr [ebx+34]; TRPBarsEAN.?f34:String
 005CCEBD    call       @LStrLen
 005CCEC2    mov        esi,dword ptr [ebx+7C]; TRPBarsEAN.?f7C:dword
 005CCEC5    cmp        eax,esi
>005CCEC7    jle        005CCEDE
 005CCEC9    lea        eax,[ebx+34]; TRPBarsEAN.?f34:String
 005CCECC    push       eax
 005CCECD    mov        ecx,esi
 005CCECF    mov        edx,1
 005CCED4    mov        eax,dword ptr [ebx+34]; TRPBarsEAN.?f34:String
 005CCED7    call       @LStrCopy
>005CCEDC    jmp        005CCF10
 005CCEDE    mov        eax,dword ptr [ebx+34]; TRPBarsEAN.?f34:String
 005CCEE1    call       @LStrLen
 005CCEE6    cmp        eax,dword ptr [ebx+7C]; TRPBarsEAN.?f7C:dword
>005CCEE9    jge        005CCF10
 005CCEEB    mov        eax,dword ptr [ebx+34]; TRPBarsEAN.?f34:String
 005CCEEE    call       @LStrLen
 005CCEF3    mov        edx,dword ptr [ebx+7C]; TRPBarsEAN.?f7C:dword
 005CCEF6    sub        edx,eax
 005CCEF8    lea        ecx,[ebp-8]
 005CCEFB    mov        al,30
 005CCEFD    call       @LStrOfChar
 005CCF02    mov        edx,dword ptr [ebp-8]
 005CCF05    lea        eax,[ebx+34]; TRPBarsEAN.?f34:String
 005CCF08    mov        ecx,dword ptr [ebx+34]; TRPBarsEAN.?f34:String
 005CCF0B    call       @LStrCat3
 005CCF10    xor        eax,eax
 005CCF12    pop        edx
 005CCF13    pop        ecx
 005CCF14    pop        ecx
 005CCF15    mov        dword ptr fs:[eax],edx
 005CCF18    push       5CCF32
 005CCF1D    lea        eax,[ebp-8]
 005CCF20    mov        edx,2
 005CCF25    call       @LStrArrayClr
 005CCF2A    ret
<005CCF2B    jmp        @HandleFinally
<005CCF30    jmp        005CCF1D
 005CCF32    pop        esi
 005CCF33    pop        ebx
 005CCF34    pop        ecx
 005CCF35    pop        ecx
 005CCF36    pop        ebp
 005CCF37    ret
*}
//end;

//005CCF38
constructor TRPBarsEAN.Create;
begin
{*
 005CCF38    push       ebx
 005CCF39    push       esi
 005CCF3A    test       dl,dl
>005CCF3C    je         005CCF46
 005CCF3E    add        esp,0FFFFFFF0
 005CCF41    call       @ClassCreate
 005CCF46    mov        ebx,edx
 005CCF48    mov        esi,eax
 005CCF4A    xor        edx,edx
 005CCF4C    mov        eax,esi
 005CCF4E    call       TRPBarsUPC.Create
 005CCF53    mov        dword ptr [esi+7C],0C; TRPBarsEAN.?f7C:dword
 005CCF5A    mov        eax,esi
 005CCF5C    test       bl,bl
>005CCF5E    je         005CCF6F
 005CCF60    call       @AfterConstruction
 005CCF65    pop        dword ptr fs:[0]
 005CCF6C    add        esp,0C
 005CCF6F    mov        eax,esi
 005CCF71    pop        esi
 005CCF72    pop        ebx
 005CCF73    ret
*}
end;

//005CCF74
procedure sub_005CCF74;
begin
{*
 005CCF74    push       ebx
 005CCF75    push       esi
 005CCF76    add        esp,0FFFFFFE8
 005CCF79    mov        esi,eax
 005CCF7B    mov        ebx,dword ptr [esi+30]; TRPBarsEAN.?f30:dword
 005CCF7E    mov        eax,ebx
 005CCF80    call       0058869C
 005CCF85    fstp       qword ptr [esp+8]
 005CCF89    wait
 005CCF8A    mov        eax,dword ptr [esp+8]
 005CCF8E    mov        dword ptr [esp],eax
 005CCF91    mov        eax,dword ptr [esp+0C]
 005CCF95    mov        dword ptr [esp+4],eax
>005CCF99    jmp        005CCFD6
 005CCF9B    fld        tbyte ptr ds:[5CD02C]; 0,1:Extended
 005CCFA1    fsubr      qword ptr [esp]
 005CCFA4    fstp       qword ptr [esp]
 005CCFA7    wait
 005CCFA8    push       dword ptr [esp+4]
 005CCFAC    push       dword ptr [esp+4]
 005CCFB0    mov        eax,ebx
 005CCFB2    call       005886B8
 005CCFB7    fld        qword ptr [esp]
 005CCFBA    fcomp      dword ptr ds:[5CD038]; 0:Single
 005CCFC0    fnstsw     al
 005CCFC2    sahf
>005CCFC3    ja         005CCFD6
 005CCFC5    mov        eax,dword ptr [esp+8]
 005CCFC9    mov        dword ptr [esp],eax
 005CCFCC    mov        eax,dword ptr [esp+0C]
 005CCFD0    mov        dword ptr [esp+4],eax
>005CCFD4    jmp        005CD005
 005CCFD6    mov        edx,5CD044; '000000000000'
 005CCFDB    mov        eax,ebx
 005CCFDD    mov        ecx,dword ptr [eax]
 005CCFDF    call       dword ptr [ecx+134]
 005CCFE5    fstp       qword ptr [esp+10]
 005CCFE9    wait
 005CCFEA    mov        eax,esi
 005CCFEC    mov        edx,dword ptr [eax]
 005CCFEE    call       dword ptr [edx+8]; TRPBarsEAN.sub_005CBD90
 005CCFF1    fld        qword ptr [esi+10]; TRPBarsEAN.?f10:?Double
 005CCFF4    fmul       dword ptr ds:[5CD054]; 11:Single
 005CCFFA    fsubp      st(1),st
 005CCFFC    fcomp      qword ptr [esp+10]
 005CD000    fnstsw     al
 005CD002    sahf
<005CD003    jb         005CCF9B
 005CD005    fld        tbyte ptr ds:[5CD058]; 0,9:Extended
 005CD00B    fmul       qword ptr [esp]
 005CD00E    fstp       qword ptr [esp]
 005CD011    wait
 005CD012    push       dword ptr [esp+0C]
 005CD016    push       dword ptr [esp+0C]
 005CD01A    mov        eax,ebx
 005CD01C    call       005886B8
 005CD021    fld        qword ptr [esp]
 005CD024    add        esp,18
 005CD027    pop        esi
 005CD028    pop        ebx
 005CD029    ret
*}
end;

//005CD064
procedure sub_005CD064;
begin
{*
 005CD064    push       ebp
 005CD065    mov        ebp,esp
 005CD067    add        esp,0FFFFFFE0
 005CD06A    push       ebx
 005CD06B    push       esi
 005CD06C    push       edi
 005CD06D    xor        edx,edx
 005CD06F    mov        dword ptr [ebp-0C],edx
 005CD072    mov        dword ptr [ebp-4],edx
 005CD075    mov        dword ptr [ebp-8],edx
 005CD078    mov        ebx,eax
 005CD07A    xor        eax,eax
 005CD07C    push       ebp
 005CD07D    push       5CD6BC
 005CD082    push       dword ptr fs:[eax]
 005CD085    mov        dword ptr fs:[eax],esp
 005CD088    xor        edx,edx
 005CD08A    mov        eax,ebx
 005CD08C    call       005C9C84
 005CD091    test       al,al
>005CD093    jne        005CD6A1
 005CD099    mov        esi,dword ptr [ebx+30]; TRPBarsEAN.?f30:dword
 005CD09C    mov        eax,esi
 005CD09E    call       00588614
 005CD0A3    mov        edi,eax
 005CD0A5    lea        edx,[ebp-0C]
 005CD0A8    mov        eax,ebx
 005CD0AA    mov        ecx,dword ptr [eax]
 005CD0AC    call       dword ptr [ecx+14]; TRPBarsEAN.sub_005CC040
 005CD0AF    mov        ecx,dword ptr [ebp-0C]
 005CD0B2    lea        eax,[ebp-4]
 005CD0B5    mov        edx,dword ptr [ebx+34]; TRPBarsEAN.?f34:String
 005CD0B8    call       @LStrCat3
 005CD0BD    mov        al,byte ptr [ebx+5D]; TRPBarsEAN.?f5D:byte
 005CD0C0    sub        al,1
>005CD0C2    jb         005CD0DF
>005CD0C4    je         005CD1EA
 005CD0CA    dec        al
>005CD0CC    je         005CD386
 005CD0D2    dec        al
>005CD0D4    je         005CD50C
>005CD0DA    jmp        005CD698
 005CD0DF    mov        eax,esi
 005CD0E1    call       00588A4C
 005CD0E6    fdiv       dword ptr ds:[5CD6CC]; 2:Single
 005CD0EC    fstp       tbyte ptr [ebp-18]
 005CD0EF    wait
 005CD0F0    mov        eax,ebx
 005CD0F2    call       005C96E0
 005CD0F7    fld        tbyte ptr [ebp-18]
 005CD0FA    fsubp      st(1),st
 005CD0FC    add        esp,0FFFFFFF8
 005CD0FF    fstp       qword ptr [esp]
 005CD102    wait
 005CD103    mov        eax,esi
 005CD105    call       005889EC
 005CD10A    xor        edx,edx
 005CD10C    mov        eax,esi
 005CD10E    call       005885EC
 005CD113    lea        eax,[ebp-8]
 005CD116    push       eax
 005CD117    mov        ecx,1
 005CD11C    mov        edx,1
 005CD121    mov        eax,dword ptr [ebp-4]
 005CD124    call       @LStrCopy
 005CD129    mov        eax,ebx
 005CD12B    call       005C93D0
 005CD130    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD133    fmul       dword ptr ds:[5CD6CC]; 2:Single
 005CD139    fsubp      st(1),st
 005CD13B    add        esp,0FFFFFFF8
 005CD13E    fstp       qword ptr [esp]
 005CD141    wait
 005CD142    mov        edx,dword ptr [ebp-8]
 005CD145    mov        eax,esi
 005CD147    call       005867F0
 005CD14C    lea        eax,[ebp-8]
 005CD14F    push       eax
 005CD150    mov        eax,dword ptr [ebp-4]
 005CD153    call       @LStrLen
 005CD158    mov        ecx,eax
 005CD15A    sar        ecx,1
>005CD15C    jns        005CD161
 005CD15E    adc        ecx,0
 005CD161    mov        edx,2
 005CD166    mov        eax,dword ptr [ebp-4]
 005CD169    call       @LStrCopy
 005CD16E    mov        eax,ebx
 005CD170    call       005C93D0
 005CD175    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD178    fmul       dword ptr ds:[5CD6D0]; 24:Single
 005CD17E    faddp      st(1),st
 005CD180    add        esp,0FFFFFFF8
 005CD183    fstp       qword ptr [esp]
 005CD186    wait
 005CD187    mov        edx,dword ptr [ebp-8]
 005CD18A    mov        eax,esi
 005CD18C    call       00586444
 005CD191    lea        eax,[ebp-8]
 005CD194    push       eax
 005CD195    mov        eax,dword ptr [ebp-4]
 005CD198    call       @LStrLen
 005CD19D    sar        eax,1
>005CD19F    jns        005CD1A4
 005CD1A1    adc        eax,0
 005CD1A4    push       eax
 005CD1A5    mov        eax,dword ptr [ebp-4]
 005CD1A8    call       @LStrLen
 005CD1AD    mov        edx,eax
 005CD1AF    sar        edx,1
>005CD1B1    jns        005CD1B6
 005CD1B3    adc        edx,0
 005CD1B6    add        edx,2
 005CD1B9    mov        eax,dword ptr [ebp-4]
 005CD1BC    pop        ecx
 005CD1BD    call       @LStrCopy
 005CD1C2    mov        eax,ebx
 005CD1C4    call       005C93D0
 005CD1C9    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD1CC    fmul       dword ptr ds:[5CD6D4]; 71:Single
 005CD1D2    faddp      st(1),st
 005CD1D4    add        esp,0FFFFFFF8
 005CD1D7    fstp       qword ptr [esp]
 005CD1DA    wait
 005CD1DB    mov        edx,dword ptr [ebp-8]
 005CD1DE    mov        eax,esi
 005CD1E0    call       00586444
>005CD1E5    jmp        005CD698
 005CD1EA    mov        edx,5A
 005CD1EF    mov        eax,esi
 005CD1F1    call       005885EC
 005CD1F6    lea        eax,[ebp-8]
 005CD1F9    push       eax
 005CD1FA    mov        ecx,1
 005CD1FF    mov        edx,1
 005CD204    mov        eax,dword ptr [ebp-4]
 005CD207    call       @LStrCopy
 005CD20C    mov        eax,esi
 005CD20E    call       00588A4C
 005CD213    fdiv       dword ptr ds:[5CD6D8]; 3:Single
 005CD219    fmul       dword ptr ds:[5CD6CC]; 2:Single
 005CD21F    fstp       tbyte ptr [ebp-18]
 005CD222    wait
 005CD223    mov        eax,ebx
 005CD225    call       005C9604
 005CD22A    fld        tbyte ptr [ebp-18]
 005CD22D    fsubp      st(1),st
 005CD22F    add        esp,0FFFFFFF8
 005CD232    fstp       qword ptr [esp]
 005CD235    wait
 005CD236    mov        eax,esi
 005CD238    call       005844DC
 005CD23D    mov        edx,5CD6E4; '0'
 005CD242    mov        eax,esi
 005CD244    mov        ecx,dword ptr [eax]
 005CD246    call       dword ptr [ecx+134]
 005CD24C    fstp       qword ptr [ebp-20]
 005CD24F    wait
 005CD250    mov        eax,ebx
 005CD252    call       005C93D0
 005CD257    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD25A    fmul       dword ptr ds:[5CD6CC]; 2:Single
 005CD260    faddp      st(1),st
 005CD262    fadd       qword ptr [ebp-20]
 005CD265    add        esp,0FFFFFFF8
 005CD268    fstp       qword ptr [esp]
 005CD26B    wait
 005CD26C    mov        eax,esi
 005CD26E    call       0058451C
 005CD273    mov        edx,dword ptr [ebp-8]
 005CD276    mov        eax,esi
 005CD278    call       00586358
 005CD27D    lea        eax,[ebp-8]
 005CD280    push       eax
 005CD281    mov        eax,dword ptr [ebp-4]
 005CD284    call       @LStrLen
 005CD289    mov        ecx,eax
 005CD28B    sar        ecx,1
>005CD28D    jns        005CD292
 005CD28F    adc        ecx,0
 005CD292    mov        edx,2
 005CD297    mov        eax,dword ptr [ebp-4]
 005CD29A    call       @LStrCopy
 005CD29F    mov        edx,5CD6F0; '000000'
 005CD2A4    mov        eax,esi
 005CD2A6    mov        ecx,dword ptr [eax]
 005CD2A8    call       dword ptr [ecx+134]
 005CD2AE    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD2B1    fmul       dword ptr ds:[5CD6F8]; 42:Single
 005CD2B7    fsubrp     st(1),st
 005CD2B9    fdiv       dword ptr ds:[5CD6CC]; 2:Single
 005CD2BF    fstp       tbyte ptr [ebp-18]
 005CD2C2    wait
 005CD2C3    mov        eax,ebx
 005CD2C5    call       005C93D0
 005CD2CA    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD2CD    fmul       dword ptr ds:[5CD6D8]; 3:Single
 005CD2D3    fsubp      st(1),st
 005CD2D5    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD2D8    fmul       dword ptr ds:[5CD6D8]; 3:Single
 005CD2DE    fsubp      st(1),st
 005CD2E0    fld        tbyte ptr [ebp-18]
 005CD2E3    fsubp      st(1),st
 005CD2E5    add        esp,0FFFFFFF8
 005CD2E8    fstp       qword ptr [esp]
 005CD2EB    wait
 005CD2EC    mov        eax,esi
 005CD2EE    call       0058451C
 005CD2F3    mov        edx,dword ptr [ebp-8]
 005CD2F6    mov        eax,esi
 005CD2F8    call       00586358
 005CD2FD    lea        eax,[ebp-8]
 005CD300    push       eax
 005CD301    mov        eax,dword ptr [ebp-4]
 005CD304    call       @LStrLen
 005CD309    sar        eax,1
>005CD30B    jns        005CD310
 005CD30D    adc        eax,0
 005CD310    push       eax
 005CD311    mov        eax,dword ptr [ebp-4]
 005CD314    call       @LStrLen
 005CD319    mov        edx,eax
 005CD31B    sar        edx,1
>005CD31D    jns        005CD322
 005CD31F    adc        edx,0
 005CD322    add        edx,2
 005CD325    mov        eax,dword ptr [ebp-4]
 005CD328    pop        ecx
 005CD329    call       @LStrCopy
 005CD32E    mov        edx,5CD6F0; '000000'
 005CD333    mov        eax,esi
 005CD335    mov        ecx,dword ptr [eax]
 005CD337    call       dword ptr [ecx+134]
 005CD33D    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD340    fmul       dword ptr ds:[5CD6F8]; 42:Single
 005CD346    fsubrp     st(1),st
 005CD348    fdiv       dword ptr ds:[5CD6CC]; 2:Single
 005CD34E    fstp       tbyte ptr [ebp-18]
 005CD351    wait
 005CD352    mov        eax,ebx
 005CD354    call       005C93D0
 005CD359    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD35C    fmul       dword ptr ds:[5CD6FC]; 50:Single
 005CD362    fsubp      st(1),st
 005CD364    fld        tbyte ptr [ebp-18]
 005CD367    fsubp      st(1),st
 005CD369    add        esp,0FFFFFFF8
 005CD36C    fstp       qword ptr [esp]
 005CD36F    wait
 005CD370    mov        eax,esi
 005CD372    call       0058451C
 005CD377    mov        edx,dword ptr [ebp-8]
 005CD37A    mov        eax,esi
 005CD37C    call       00586358
>005CD381    jmp        005CD698
 005CD386    mov        edx,0B4
 005CD38B    mov        eax,esi
 005CD38D    call       005885EC
 005CD392    lea        eax,[ebp-8]
 005CD395    push       eax
 005CD396    mov        ecx,1
 005CD39B    mov        edx,1
 005CD3A0    mov        eax,dword ptr [ebp-4]
 005CD3A3    call       @LStrCopy
 005CD3A8    mov        edx,5CD6E4; '0'
 005CD3AD    mov        eax,esi
 005CD3AF    mov        ecx,dword ptr [eax]
 005CD3B1    call       dword ptr [ecx+134]
 005CD3B7    fstp       qword ptr [ebp-20]
 005CD3BA    wait
 005CD3BB    mov        eax,ebx
 005CD3BD    call       005C93D0
 005CD3C2    fadd       qword ptr [ebp-20]
 005CD3C5    add        esp,0FFFFFFF8
 005CD3C8    fstp       qword ptr [esp]
 005CD3CB    wait
 005CD3CC    mov        eax,esi
 005CD3CE    call       005844DC
 005CD3D3    mov        eax,esi
 005CD3D5    call       00588A4C
 005CD3DA    fdiv       dword ptr ds:[5CD6D8]; 3:Single
 005CD3E0    fmul       dword ptr ds:[5CD6CC]; 2:Single
 005CD3E6    fstp       tbyte ptr [ebp-18]
 005CD3E9    wait
 005CD3EA    mov        eax,ebx
 005CD3EC    call       005C9604
 005CD3F1    fld        tbyte ptr [ebp-18]
 005CD3F4    faddp      st(1),st
 005CD3F6    add        esp,0FFFFFFF8
 005CD3F9    fstp       qword ptr [esp]
 005CD3FC    wait
 005CD3FD    mov        eax,esi
 005CD3FF    call       0058451C
 005CD404    mov        edx,dword ptr [ebp-8]
 005CD407    mov        eax,esi
 005CD409    call       00586358
 005CD40E    lea        eax,[ebp-8]
 005CD411    push       eax
 005CD412    mov        eax,dword ptr [ebp-4]
 005CD415    call       @LStrLen
 005CD41A    mov        ecx,eax
 005CD41C    sar        ecx,1
>005CD41E    jns        005CD423
 005CD420    adc        ecx,0
 005CD423    mov        edx,2
 005CD428    mov        eax,dword ptr [ebp-4]
 005CD42B    call       @LStrCopy
 005CD430    mov        edx,5CD6F0; '000000'
 005CD435    mov        eax,esi
 005CD437    mov        ecx,dword ptr [eax]
 005CD439    call       dword ptr [ecx+134]
 005CD43F    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD442    fmul       dword ptr ds:[5CD6F8]; 42:Single
 005CD448    fsubrp     st(1),st
 005CD44A    fdiv       dword ptr ds:[5CD6CC]; 2:Single
 005CD450    fstp       tbyte ptr [ebp-18]
 005CD453    wait
 005CD454    mov        eax,ebx
 005CD456    call       005C93D0
 005CD45B    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD45E    fmul       dword ptr ds:[5CD6D8]; 3:Single
 005CD464    fsubp      st(1),st
 005CD466    fld        tbyte ptr [ebp-18]
 005CD469    fsubp      st(1),st
 005CD46B    add        esp,0FFFFFFF8
 005CD46E    fstp       qword ptr [esp]
 005CD471    wait
 005CD472    mov        eax,esi
 005CD474    call       005844DC
 005CD479    mov        edx,dword ptr [ebp-8]
 005CD47C    mov        eax,esi
 005CD47E    call       00586358
 005CD483    lea        eax,[ebp-8]
 005CD486    push       eax
 005CD487    mov        eax,dword ptr [ebp-4]
 005CD48A    call       @LStrLen
 005CD48F    sar        eax,1
>005CD491    jns        005CD496
 005CD493    adc        eax,0
 005CD496    push       eax
 005CD497    mov        eax,dword ptr [ebp-4]
 005CD49A    call       @LStrLen
 005CD49F    mov        edx,eax
 005CD4A1    sar        edx,1
>005CD4A3    jns        005CD4A8
 005CD4A5    adc        edx,0
 005CD4A8    add        edx,2
 005CD4AB    mov        eax,dword ptr [ebp-4]
 005CD4AE    pop        ecx
 005CD4AF    call       @LStrCopy
 005CD4B4    mov        edx,5CD6F0; '000000'
 005CD4B9    mov        eax,esi
 005CD4BB    mov        ecx,dword ptr [eax]
 005CD4BD    call       dword ptr [ecx+134]
 005CD4C3    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD4C6    fmul       dword ptr ds:[5CD6F8]; 42:Single
 005CD4CC    fsubrp     st(1),st
 005CD4CE    fdiv       dword ptr ds:[5CD6CC]; 2:Single
 005CD4D4    fstp       tbyte ptr [ebp-18]
 005CD4D7    wait
 005CD4D8    mov        eax,ebx
 005CD4DA    call       005C93D0
 005CD4DF    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD4E2    fmul       dword ptr ds:[5CD6FC]; 50:Single
 005CD4E8    fsubp      st(1),st
 005CD4EA    fld        tbyte ptr [ebp-18]
 005CD4ED    fsubp      st(1),st
 005CD4EF    add        esp,0FFFFFFF8
 005CD4F2    fstp       qword ptr [esp]
 005CD4F5    wait
 005CD4F6    mov        eax,esi
 005CD4F8    call       005844DC
 005CD4FD    mov        edx,dword ptr [ebp-8]
 005CD500    mov        eax,esi
 005CD502    call       00586358
>005CD507    jmp        005CD698
 005CD50C    mov        edx,10E
 005CD511    mov        eax,esi
 005CD513    call       005885EC
 005CD518    lea        eax,[ebp-8]
 005CD51B    push       eax
 005CD51C    mov        ecx,1
 005CD521    mov        edx,1
 005CD526    mov        eax,dword ptr [ebp-4]
 005CD529    call       @LStrCopy
 005CD52E    mov        eax,esi
 005CD530    call       00588A4C
 005CD535    fdiv       dword ptr ds:[5CD6D8]; 3:Single
 005CD53B    fmul       dword ptr ds:[5CD6CC]; 2:Single
 005CD541    fstp       tbyte ptr [ebp-18]
 005CD544    wait
 005CD545    mov        eax,ebx
 005CD547    call       005C9604
 005CD54C    fld        tbyte ptr [ebp-18]
 005CD54F    faddp      st(1),st
 005CD551    add        esp,0FFFFFFF8
 005CD554    fstp       qword ptr [esp]
 005CD557    wait
 005CD558    mov        eax,esi
 005CD55A    call       005844DC
 005CD55F    mov        edx,5CD6E4; '0'
 005CD564    mov        eax,esi
 005CD566    mov        ecx,dword ptr [eax]
 005CD568    call       dword ptr [ecx+134]
 005CD56E    fstp       qword ptr [ebp-20]
 005CD571    wait
 005CD572    mov        eax,ebx
 005CD574    call       005C93D0
 005CD579    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD57C    fmul       dword ptr ds:[5CD6CC]; 2:Single
 005CD582    fsubp      st(1),st
 005CD584    fsub       qword ptr [ebp-20]
 005CD587    add        esp,0FFFFFFF8
 005CD58A    fstp       qword ptr [esp]
 005CD58D    wait
 005CD58E    mov        eax,esi
 005CD590    call       0058451C
 005CD595    mov        edx,dword ptr [ebp-8]
 005CD598    mov        eax,esi
 005CD59A    call       00586358
 005CD59F    lea        eax,[ebp-8]
 005CD5A2    push       eax
 005CD5A3    mov        eax,dword ptr [ebp-4]
 005CD5A6    call       @LStrLen
 005CD5AB    mov        ecx,eax
 005CD5AD    sar        ecx,1
>005CD5AF    jns        005CD5B4
 005CD5B1    adc        ecx,0
 005CD5B4    mov        edx,2
 005CD5B9    mov        eax,dword ptr [ebp-4]
 005CD5BC    call       @LStrCopy
 005CD5C1    mov        edx,5CD6F0; '000000'
 005CD5C6    mov        eax,esi
 005CD5C8    mov        ecx,dword ptr [eax]
 005CD5CA    call       dword ptr [ecx+134]
 005CD5D0    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD5D3    fmul       dword ptr ds:[5CD6F8]; 42:Single
 005CD5D9    fsubrp     st(1),st
 005CD5DB    fdiv       dword ptr ds:[5CD6CC]; 2:Single
 005CD5E1    fstp       tbyte ptr [ebp-18]
 005CD5E4    wait
 005CD5E5    mov        eax,ebx
 005CD5E7    call       005C93D0
 005CD5EC    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD5EF    fmul       dword ptr ds:[5CD700]; 4:Single
 005CD5F5    faddp      st(1),st
 005CD5F7    fld        tbyte ptr [ebp-18]
 005CD5FA    faddp      st(1),st
 005CD5FC    add        esp,0FFFFFFF8
 005CD5FF    fstp       qword ptr [esp]
 005CD602    wait
 005CD603    mov        eax,esi
 005CD605    call       0058451C
 005CD60A    mov        edx,dword ptr [ebp-8]
 005CD60D    mov        eax,esi
 005CD60F    call       00586358
 005CD614    lea        eax,[ebp-8]
 005CD617    push       eax
 005CD618    mov        eax,dword ptr [ebp-4]
 005CD61B    call       @LStrLen
 005CD620    sar        eax,1
>005CD622    jns        005CD627
 005CD624    adc        eax,0
 005CD627    push       eax
 005CD628    mov        eax,dword ptr [ebp-4]
 005CD62B    call       @LStrLen
 005CD630    mov        edx,eax
 005CD632    sar        edx,1
>005CD634    jns        005CD639
 005CD636    adc        edx,0
 005CD639    add        edx,2
 005CD63C    mov        eax,dword ptr [ebp-4]
 005CD63F    pop        ecx
 005CD640    call       @LStrCopy
 005CD645    mov        edx,5CD6F0; '000000'
 005CD64A    mov        eax,esi
 005CD64C    mov        ecx,dword ptr [eax]
 005CD64E    call       dword ptr [ecx+134]
 005CD654    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD657    fmul       dword ptr ds:[5CD6F8]; 42:Single
 005CD65D    fsubrp     st(1),st
 005CD65F    fdiv       dword ptr ds:[5CD6CC]; 2:Single
 005CD665    fstp       tbyte ptr [ebp-18]
 005CD668    wait
 005CD669    mov        eax,ebx
 005CD66B    call       005C93D0
 005CD670    fld        qword ptr [ebx+10]; TRPBarsEAN.?f10:?Double
 005CD673    fmul       dword ptr ds:[5CD6FC]; 50:Single
 005CD679    faddp      st(1),st
 005CD67B    fld        tbyte ptr [ebp-18]
 005CD67E    faddp      st(1),st
 005CD680    add        esp,0FFFFFFF8
 005CD683    fstp       qword ptr [esp]
 005CD686    wait
 005CD687    mov        eax,esi
 005CD689    call       0058451C
 005CD68E    mov        edx,dword ptr [ebp-8]
 005CD691    mov        eax,esi
 005CD693    call       00586358
 005CD698    mov        edx,edi
 005CD69A    mov        eax,esi
 005CD69C    call       005885EC
 005CD6A1    xor        eax,eax
 005CD6A3    pop        edx
 005CD6A4    pop        ecx
 005CD6A5    pop        ecx
 005CD6A6    mov        dword ptr fs:[eax],edx
 005CD6A9    push       5CD6C3
 005CD6AE    lea        eax,[ebp-0C]
 005CD6B1    mov        edx,3
 005CD6B6    call       @LStrArrayClr
 005CD6BB    ret
<005CD6BC    jmp        @HandleFinally
<005CD6C1    jmp        005CD6AE
 005CD6C3    pop        edi
 005CD6C4    pop        esi
 005CD6C5    pop        ebx
 005CD6C6    mov        esp,ebp
 005CD6C8    pop        ebp
 005CD6C9    ret
*}
end;

end.