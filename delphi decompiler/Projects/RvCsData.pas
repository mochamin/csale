{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvCsData;

interface

uses
  Classes, Windows, Graphics, RvCsStd, RvDefine, RvData, RvClass;

type
  TRaveDataText = class(TRaveText)
  public
    f108:TRaveFieldName;//f108
    DataView:TRaveBaseDataView;//f10C
    LookupDataView:TRaveBaseDataView;//f110
    f114:TRaveFieldName;//f114
    f118:TRaveFieldName;//f118
    f11C:String;//f11C
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005BD608(?:?; ?:?); virtual;
    procedure sub_005BD668(); virtual;
    //procedure sub_005BD690(?:?); virtual;
  end;
  TRaveDataMemo = class(TRaveMemo)
  public
    f118:TRaveFieldName;//f118
    DataView:TRaveBaseDataView;//f11C
    //procedure sub_005BD994(?:?; ?:?); virtual;
    //procedure sub_005BD9D0(?:?); virtual;
  end;
  TRaveDisplayType = (dtNumericFormat, dtDateTimeFormat);
  TRaveCalcFunction = (cfNone, cfTrunc, cfFrac, cfRound, cfNeg, cfAbs, cfSin, cfCos, cfArcTan, cfSqr, cfSqrt, cfInc, cfDec, cfRandom, cfRound1, cfRound2, cfRound3, cfRound4, cfRound5, cfSecsToTime, cfMinsToTime, cfHoursToTime, cfTimeToSecs, cfTimeToMins, cfTimeToHours, cfPercent);
  TRaveCalcOperator = (coAdd, coSub, coMul, coDiv, coMod, coExp, coGreater, coLesser, coAverage);
  TRaveCalcText = class(TRaveText)
  public
    f108:dword;//f108
    f110:dword;//f110
    f114:dword;//f114
    f118:word;//f118
    Controller:TRaveComponent;//f11C
    Initializer:TRaveComponent;//f120
    DataView:TRaveBaseDataView;//f124
    f128:TRaveFieldName;//f128
    CalcType:TRaveCalcType;//f12C
    RunningTotal:Boolean;//f12D
    f130:String;//f130
    DisplayType:TRaveDisplayType;//f134
    CountBlanks:Boolean;//f135
    CountNulls:Boolean;//f136
    f138:String;//f138
    OnCalcValue:TRaveFloatEvent;//f13C
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005BDD6C(?:?); virtual;
    procedure sub_005BE0EC; virtual;
    //procedure sub_005BE25C(?:?); virtual;
    //procedure sub_005BDD04(?:?; ?:?); virtual;
    procedure sub_005BDDD8(); virtual;
    //procedure sub_005BDE00(?:?); virtual;
  end;
  TRaveCalcVariable = class(TRaveComponent)
  public
    f5C:String;//f5C
    f60:String;//f60
    f64:String;//f64
    f68:byte;//f68
    f6C:dword;//f6C
    //procedure sub_005BE294(?:?); virtual;
    procedure @AbstractError(); virtual;
    //function sub_005BE290():?; virtual;
  end;
  TRaveCalcOp = class(TRaveCalcVariable)
  public
    Src1CalcVar:TRaveCalcVariable;//f70
    f74:TRaveFieldName;//f74
    Src1DataView:TRaveBaseDataView;//f78
    Src1Value:Extended;//f80
    f84:dword;//f84
    f88:word;//f88
    Src1Function:TRaveCalcFunction;//f8A
    Src2CalcVar:TRaveCalcVariable;//f8C
    f90:TRaveFieldName;//f90
    Src2DataView:TRaveBaseDataView;//f94
    Src2Value:Extended;//f98
    f9C:dword;//f9C
    fA0:word;//fA0
    Src2Function:TRaveCalcFunction;//fA2
    Operator:TRaveCalcOperator;//fA3
    ResultFunction:TRaveCalcFunction;//fA4
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005BE694(?:?; ?:?); virtual;
    procedure sub_005BE3E4; virtual;
    //function sub_005BE3A8:?; virtual;
  end;
  TRaveCalcTotal = class(TRaveCalcVariable)
  public
    f70:dword;//f70
    f78:dword;//f78
    f7C:dword;//f7C
    f80:word;//f80
    CalcVar:TRaveCalcVariable;//f84
    DataView:TRaveBaseDataView;//f88
    f8C:TRaveFieldName;//f8C
    Controller:TRaveComponent;//f90
    Initializer:TRaveComponent;//f94
    CalcType:TRaveCalcType;//f98
    CountBlanks:Boolean;//f99
    CountNulls:Boolean;//f9A
    f9C:String;//f9C
    RunningTotal:Boolean;//fA0
    OnCalcValue:TRaveFloatEvent;//fA4
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005BE7FC; virtual;
    procedure sub_005BEAD0; virtual;
    //procedure sub_005BE984(?:?; ?:?); virtual;
    procedure sub_005BE790; virtual;
  end;
  TRaveCalcController = class(TRaveComponent)
  public
    f5C:TRaveMethodList;//f5C
    f60:TRaveMethodList;//f60
    InitCalcVar:TRaveCalcVariable;//f64
    f68:TRaveFieldName;//f68
    InitValue:Extended;//f70
    f74:dword;//f74
    f78:word;//f78
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005BEE1C; virtual;
    //procedure sub_005BEDA4(?:?; ?:?); virtual;
    //procedure sub_005BEB60(?:?; ?:?; ?:?); virtual;
    //procedure sub_005BEC44(?:?; ?:?; ?:?); virtual;
    //function sub_005BED0C(?:?):?; virtual;
  end;
  TRaveDataMirror = class(TPersistent)
  public
    f4:String;//f4
    SectionMirror:TRaveSection;//f8
    IsDefault:Boolean;//fC
  end;
  TRaveDataMirrorSection = class(TRaveSection)
  public
    fF8:byte;//fF8
    fF9:byte;//fF9
    fFC:TRaveFieldName;//fFC
    DataView:TRaveBaseDataView;//f100
    DataMirrors:TRavePersistentList;//f104
    CompareCase:Boolean;//f108
    f10C:TRaveControl;//f10C
    f110:TRaveAnchor;//f110
    f111:Boolean;//f111
    f114:TRaveFieldName;//f114
    f118:TRavePersistentList;//f118
    f11C:TRaveBaseDataView;//f11C
    f120:TDisplayOn;//f120
    f124:Integer;//f124
    OnMirrorValue:TRaveStringEvent;//f128
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005BF044; virtual;
    procedure sub_005BF1A4; virtual;
    //procedure sub_005BF31C(?:?; ?:?); virtual;
    procedure sub_005BF1E4; virtual;
    procedure sub_005BF248; virtual;
    procedure sub_005BF2B8; virtual;
    //procedure sub_005BF3AC(?:?); virtual;
    //procedure sub_005BF3D4(?:?); virtual;
  end;
  TRaveDataMirrorList = class(TRavePersistentList)
  public
    //function sub_005BEEDC():?; virtual;
  end;

implementation

{$R *.DFM}

//005BD028
procedure sub_005BD028;
begin
{*
 005BD028    push       ebp
 005BD029    mov        ebp,esp
 005BD02B    add        esp,0FFFFFFA4
 005BD02E    push       ebx
 005BD02F    xor        eax,eax
 005BD031    mov        dword ptr [ebp-4],eax
 005BD034    xor        eax,eax
 005BD036    push       ebp
 005BD037    push       5BD15D
 005BD03C    push       dword ptr fs:[eax]
 005BD03F    mov        dword ptr fs:[eax],esp
 005BD042    mov        ebx,dword ptr ds:[61B830]
 005BD048    mov        ebx,dword ptr [ebx]
 005BD04A    lea        edx,[ebp-4]
 005BD04D    mov        eax,5BD174; 'Report'
 005BD052    call       ebx
 005BD054    mov        edx,dword ptr [ebp-4]
 005BD057    mov        eax,5BD174; 'Report'
 005BD05C    call       005A7F38
 005BD061    mov        eax,[005BB580]; TRaveDataText
 005BD066    mov        dword ptr [ebp-30],eax
 005BD069    mov        eax,[005BB8B4]; TRaveDataMemo
 005BD06E    mov        dword ptr [ebp-2C],eax
 005BD071    mov        eax,[005BBD0C]; TRaveCalcText
 005BD076    mov        dword ptr [ebp-28],eax
 005BD079    mov        eax,[005BCD40]; TRaveDataMirrorSection
 005BD07E    mov        dword ptr [ebp-24],eax
 005BD081    mov        eax,[005B3AE0]; TRaveRegion
 005BD086    mov        dword ptr [ebp-20],eax
 005BD089    mov        eax,[005B3DA4]; TRaveBand
 005BD08E    mov        dword ptr [ebp-1C],eax
 005BD091    mov        eax,[005B457C]; TRaveDataBand
 005BD096    mov        dword ptr [ebp-18],eax
 005BD099    mov        eax,[005B4854]; TRaveDataCycle
 005BD09E    mov        dword ptr [ebp-14],eax
 005BD0A1    mov        eax,[005BC274]; TRaveCalcOp
 005BD0A6    mov        dword ptr [ebp-10],eax
 005BD0A9    mov        eax,[005BC674]; TRaveCalcTotal
 005BD0AE    mov        dword ptr [ebp-0C],eax
 005BD0B1    mov        eax,[005BCA40]; TRaveCalcController
 005BD0B6    mov        dword ptr [ebp-8],eax
 005BD0B9    lea        edx,[ebp-30]
 005BD0BC    mov        ecx,0A
 005BD0C1    mov        eax,5BD174; 'Report'
 005BD0C6    call       005A7F48
 005BD0CB    mov        eax,[005BB580]; TRaveDataText
 005BD0D0    mov        dword ptr [ebp-4C],eax
 005BD0D3    mov        eax,[005BB8B4]; TRaveDataMemo
 005BD0D8    mov        dword ptr [ebp-48],eax
 005BD0DB    mov        eax,[005BBD0C]; TRaveCalcText
 005BD0E0    mov        dword ptr [ebp-44],eax
 005BD0E3    mov        eax,[005BCD40]; TRaveDataMirrorSection
 005BD0E8    mov        dword ptr [ebp-40],eax
 005BD0EB    mov        eax,[005BC274]; TRaveCalcOp
 005BD0F0    mov        dword ptr [ebp-3C],eax
 005BD0F3    mov        eax,[005BC674]; TRaveCalcTotal
 005BD0F8    mov        dword ptr [ebp-38],eax
 005BD0FB    mov        eax,[005BCA40]; TRaveCalcController
 005BD100    mov        dword ptr [ebp-34],eax
 005BD103    lea        edx,[ebp-4C]
 005BD106    mov        ecx,6
 005BD10B    mov        eax,5BD184; 'RvCsData'
 005BD110    call       005A7FBC
 005BD115    mov        eax,[005B3AE0]; TRaveRegion
 005BD11A    mov        dword ptr [ebp-5C],eax
 005BD11D    mov        eax,[005B3DA4]; TRaveBand
 005BD122    mov        dword ptr [ebp-58],eax
 005BD125    mov        eax,[005B457C]; TRaveDataBand
 005BD12A    mov        dword ptr [ebp-54],eax
 005BD12D    mov        eax,[005B4854]; TRaveDataCycle
 005BD132    mov        dword ptr [ebp-50],eax
 005BD135    lea        edx,[ebp-5C]
 005BD138    mov        ecx,3
 005BD13D    mov        eax,5BD198; 'RvCsRpt'
 005BD142    call       005A7FBC
 005BD147    xor        eax,eax
 005BD149    pop        edx
 005BD14A    pop        ecx
 005BD14B    pop        ecx
 005BD14C    mov        dword ptr fs:[eax],edx
 005BD14F    push       5BD164
 005BD154    lea        eax,[ebp-4]
 005BD157    call       @LStrClr
 005BD15C    ret
<005BD15D    jmp        @HandleFinally
<005BD162    jmp        005BD154
 005BD164    pop        ebx
 005BD165    mov        esp,ebp
 005BD167    pop        ebp
 005BD168    ret
*}
end;

//005BD1A0
//function sub_005BD1A0(?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 005BD1A0    push       ebp
 005BD1A1    mov        ebp,esp
 005BD1A3    add        esp,0FFFFFFE8
 005BD1A6    push       ebx
 005BD1A7    push       esi
 005BD1A8    push       edi
 005BD1A9    mov        edx,dword ptr [ebp+8]
 005BD1AC    mov        dword ptr [ebp-10],edx
 005BD1AF    mov        edx,dword ptr [ebp+0C]
 005BD1B2    mov        dword ptr [ebp-0C],edx
 005BD1B5    mov        dx,word ptr [ebp+10]
 005BD1B9    mov        word ptr [ebp-8],dx
 005BD1BD    xor        edx,edx
 005BD1BF    push       ebp
 005BD1C0    push       5BD45D
 005BD1C5    push       dword ptr fs:[edx]
 005BD1C8    mov        dword ptr fs:[edx],esp
 005BD1CB    and        eax,7F
 005BD1CE    cmp        eax,19
>005BD1D1    ja         005BD453
 005BD1D7    jmp        dword ptr [eax*4+5BD1DE]
 005BD1D7    dd         5BD453
 005BD1D7    dd         5BD24B
 005BD1D7    dd         5BD265
 005BD1D7    dd         5BD276
 005BD1D7    dd         5BD290
 005BD1D7    dd         5BD29E
 005BD1D7    dd         5BD2AC
 005BD1D7    dd         5BD2BD
 005BD1D7    dd         5BD2CE
 005BD1D7    dd         5BD2DE
 005BD1D7    dd         5BD2EC
 005BD1D7    dd         5BD2FA
 005BD1D7    dd         5BD30C
 005BD1D7    dd         5BD31E
 005BD1D7    dd         5BD331
 005BD1D7    dd         5BD357
 005BD1D7    dd         5BD37D
 005BD1D7    dd         5BD3A3
 005BD1D7    dd         5BD3C9
 005BD1D7    dd         5BD3EC
 005BD1D7    dd         5BD3FB
 005BD1D7    dd         5BD40A
 005BD1D7    dd         5BD419
 005BD1D7    dd         5BD428
 005BD1D7    dd         5BD437
 005BD1D7    dd         5BD446
>005BD246    jmp        005BD453
 005BD24B    fld        tbyte ptr [ebp-10]
 005BD24E    call       @TRUNC
 005BD253    mov        dword ptr [ebp-18],eax
 005BD256    mov        dword ptr [ebp-14],edx
 005BD259    fild       qword ptr [ebp-18]
 005BD25C    fstp       tbyte ptr [ebp-10]
 005BD25F    wait
>005BD260    jmp        005BD453
 005BD265    fld        tbyte ptr [ebp-10]
 005BD268    call       @FRAC
 005BD26D    fstp       tbyte ptr [ebp-10]
 005BD270    wait
>005BD271    jmp        005BD453
 005BD276    fld        tbyte ptr [ebp-10]
 005BD279    call       @ROUND
 005BD27E    mov        dword ptr [ebp-18],eax
 005BD281    mov        dword ptr [ebp-14],edx
 005BD284    fild       qword ptr [ebp-18]
 005BD287    fstp       tbyte ptr [ebp-10]
 005BD28A    wait
>005BD28B    jmp        005BD453
 005BD290    fld        tbyte ptr [ebp-10]
 005BD293    fchs
 005BD295    fstp       tbyte ptr [ebp-10]
 005BD298    wait
>005BD299    jmp        005BD453
 005BD29E    fld        tbyte ptr [ebp-10]
 005BD2A1    fabs
 005BD2A3    fstp       tbyte ptr [ebp-10]
 005BD2A6    wait
>005BD2A7    jmp        005BD453
 005BD2AC    fld        tbyte ptr [ebp-10]
 005BD2AF    call       @SIN
 005BD2B4    fstp       tbyte ptr [ebp-10]
 005BD2B7    wait
>005BD2B8    jmp        005BD453
 005BD2BD    fld        tbyte ptr [ebp-10]
 005BD2C0    call       @COS
 005BD2C5    fstp       tbyte ptr [ebp-10]
 005BD2C8    wait
>005BD2C9    jmp        005BD453
 005BD2CE    fld        tbyte ptr [ebp-10]
 005BD2D1    fld1
 005BD2D3    fpatan
 005BD2D5    fstp       tbyte ptr [ebp-10]
 005BD2D8    wait
>005BD2D9    jmp        005BD453
 005BD2DE    fld        tbyte ptr [ebp-10]
 005BD2E1    fmul       st,st(0)
 005BD2E3    fstp       tbyte ptr [ebp-10]
 005BD2E6    wait
>005BD2E7    jmp        005BD453
 005BD2EC    fld        tbyte ptr [ebp-10]
 005BD2EF    fsqrt
 005BD2F1    fstp       tbyte ptr [ebp-10]
 005BD2F4    wait
>005BD2F5    jmp        005BD453
 005BD2FA    fld        tbyte ptr [ebp-10]
 005BD2FD    fadd       dword ptr ds:[5BD474]; 1:Single
 005BD303    fstp       tbyte ptr [ebp-10]
 005BD306    wait
>005BD307    jmp        005BD453
 005BD30C    fld        tbyte ptr [ebp-10]
 005BD30F    fsub       dword ptr ds:[5BD474]; 1:Single
 005BD315    fstp       tbyte ptr [ebp-10]
 005BD318    wait
>005BD319    jmp        005BD453
 005BD31E    call       @RandExt
 005BD323    fld        tbyte ptr [ebp-10]
 005BD326    fmulp      st(1),st
 005BD328    fstp       tbyte ptr [ebp-10]
 005BD32B    wait
>005BD32C    jmp        005BD453
 005BD331    fld        tbyte ptr [ebp-10]
 005BD334    fmul       dword ptr ds:[5BD478]; 10:Single
 005BD33A    call       @ROUND
 005BD33F    mov        dword ptr [ebp-18],eax
 005BD342    mov        dword ptr [ebp-14],edx
 005BD345    fild       qword ptr [ebp-18]
 005BD348    fdiv       dword ptr ds:[5BD478]; 10:Single
 005BD34E    fstp       tbyte ptr [ebp-10]
 005BD351    wait
>005BD352    jmp        005BD453
 005BD357    fld        tbyte ptr [ebp-10]
 005BD35A    fmul       dword ptr ds:[5BD47C]; 100:Single
 005BD360    call       @ROUND
 005BD365    mov        dword ptr [ebp-18],eax
 005BD368    mov        dword ptr [ebp-14],edx
 005BD36B    fild       qword ptr [ebp-18]
 005BD36E    fdiv       dword ptr ds:[5BD47C]; 100:Single
 005BD374    fstp       tbyte ptr [ebp-10]
 005BD377    wait
>005BD378    jmp        005BD453
 005BD37D    fld        tbyte ptr [ebp-10]
 005BD380    fmul       dword ptr ds:[5BD480]; 1000:Single
 005BD386    call       @ROUND
 005BD38B    mov        dword ptr [ebp-18],eax
 005BD38E    mov        dword ptr [ebp-14],edx
 005BD391    fild       qword ptr [ebp-18]
 005BD394    fdiv       dword ptr ds:[5BD480]; 1000:Single
 005BD39A    fstp       tbyte ptr [ebp-10]
 005BD39D    wait
>005BD39E    jmp        005BD453
 005BD3A3    fld        tbyte ptr [ebp-10]
 005BD3A6    fmul       dword ptr ds:[5BD484]; 10000:Single
 005BD3AC    call       @ROUND
 005BD3B1    mov        dword ptr [ebp-18],eax
 005BD3B4    mov        dword ptr [ebp-14],edx
 005BD3B7    fild       qword ptr [ebp-18]
 005BD3BA    fdiv       dword ptr ds:[5BD484]; 10000:Single
 005BD3C0    fstp       tbyte ptr [ebp-10]
 005BD3C3    wait
>005BD3C4    jmp        005BD453
 005BD3C9    fld        tbyte ptr [ebp-10]
 005BD3CC    fmul       dword ptr ds:[5BD488]; 100000:Single
 005BD3D2    call       @ROUND
 005BD3D7    mov        dword ptr [ebp-18],eax
 005BD3DA    mov        dword ptr [ebp-14],edx
 005BD3DD    fild       qword ptr [ebp-18]
 005BD3E0    fdiv       dword ptr ds:[5BD488]; 100000:Single
 005BD3E6    fstp       tbyte ptr [ebp-10]
 005BD3E9    wait
>005BD3EA    jmp        005BD453
 005BD3EC    fld        tbyte ptr [ebp-10]
 005BD3EF    fdiv       dword ptr ds:[5BD48C]; 86400:Single
 005BD3F5    fstp       tbyte ptr [ebp-10]
 005BD3F8    wait
>005BD3F9    jmp        005BD453
 005BD3FB    fld        tbyte ptr [ebp-10]
 005BD3FE    fdiv       dword ptr ds:[5BD490]; 1440:Single
 005BD404    fstp       tbyte ptr [ebp-10]
 005BD407    wait
>005BD408    jmp        005BD453
 005BD40A    fld        tbyte ptr [ebp-10]
 005BD40D    fdiv       dword ptr ds:[5BD494]; 24:Single
 005BD413    fstp       tbyte ptr [ebp-10]
 005BD416    wait
>005BD417    jmp        005BD453
 005BD419    fld        tbyte ptr [ebp-10]
 005BD41C    fmul       dword ptr ds:[5BD48C]; 86400:Single
 005BD422    fstp       tbyte ptr [ebp-10]
 005BD425    wait
>005BD426    jmp        005BD453
 005BD428    fld        tbyte ptr [ebp-10]
 005BD42B    fmul       dword ptr ds:[5BD490]; 1440:Single
 005BD431    fstp       tbyte ptr [ebp-10]
 005BD434    wait
>005BD435    jmp        005BD453
 005BD437    fld        tbyte ptr [ebp-10]
 005BD43A    fmul       dword ptr ds:[5BD494]; 24:Single
 005BD440    fstp       tbyte ptr [ebp-10]
 005BD443    wait
>005BD444    jmp        005BD453
 005BD446    fld        tbyte ptr [ebp-10]
 005BD449    fmul       dword ptr ds:[5BD47C]; 100:Single
 005BD44F    fstp       tbyte ptr [ebp-10]
 005BD452    wait
 005BD453    xor        eax,eax
 005BD455    pop        edx
 005BD456    pop        ecx
 005BD457    pop        ecx
 005BD458    mov        dword ptr fs:[eax],edx
>005BD45B    jmp        005BD467
<005BD45D    jmp        @HandleAnyException
 005BD462    call       @DoneExcept
 005BD467    fld        tbyte ptr [ebp-10]
 005BD46A    pop        edi
 005BD46B    pop        esi
 005BD46C    pop        ebx
 005BD46D    mov        esp,ebp
 005BD46F    pop        ebp
 005BD470    ret        0C
*}
//end;

//005BD498
//function sub_005BD498(?:TRaveComponent; ?:TRaveCalcVariable; ?:TRaveBaseDataView; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 005BD498    push       ebp
 005BD499    mov        ebp,esp
 005BD49B    add        esp,0FFFFFFE8
 005BD49E    push       ebx
 005BD49F    push       esi
 005BD4A0    push       edi
 005BD4A1    xor        ebx,ebx
 005BD4A3    mov        dword ptr [ebp-14],ebx
 005BD4A6    mov        dword ptr [ebp-18],ebx
 005BD4A9    mov        edi,ecx
 005BD4AB    mov        ebx,edx
 005BD4AD    mov        dword ptr [ebp-4],eax
 005BD4B0    mov        esi,dword ptr [ebp+8]
 005BD4B3    mov        eax,dword ptr [ebp+1C]
 005BD4B6    call       @LStrAddRef
 005BD4BB    xor        eax,eax
 005BD4BD    push       ebp
 005BD4BE    push       5BD5A3
 005BD4C3    push       dword ptr fs:[eax]
 005BD4C6    mov        dword ptr fs:[eax],esp
 005BD4C9    mov        byte ptr [esi],1
 005BD4CC    test       ebx,ebx
>005BD4CE    je         005BD4EE
 005BD4D0    mov        eax,ebx
 005BD4D2    mov        edx,dword ptr [eax]
 005BD4D4    call       dword ptr [edx+0D8]; TRaveCalcVariable.sub_005BE290
 005BD4DA    test       al,al
>005BD4DC    jne        005BD4EE
 005BD4DE    mov        eax,ebx
 005BD4E0    mov        edx,dword ptr [eax]
 005BD4E2    call       dword ptr [edx+0D4]; @AbstractError
 005BD4E8    fstp       tbyte ptr [ebp-10]
 005BD4EB    wait
>005BD4EC    jmp        005BD569
 005BD4EE    cmp        dword ptr [ebp+1C],0
>005BD4F2    je         005BD555
 005BD4F4    test       edi,edi
>005BD4F6    je         005BD506
 005BD4F8    mov        edx,dword ptr [ebp+1C]
 005BD4FB    mov        eax,edi
 005BD4FD    call       005A0AC8
 005BD502    mov        ebx,eax
>005BD504    jmp        005BD508
 005BD506    xor        ebx,ebx
 005BD508    test       ebx,ebx
>005BD50A    je         005BD527
 005BD50C    mov        eax,ebx
 005BD50E    mov        edx,dword ptr [eax]
 005BD510    call       dword ptr [edx+0E8]
 005BD516    fstp       tbyte ptr [ebp-10]
 005BD519    wait
 005BD51A    mov        eax,ebx
 005BD51C    call       0059EFE0
 005BD521    xor        al,1
 005BD523    mov        byte ptr [esi],al
>005BD525    jmp        005BD569
 005BD527    push       0
 005BD529    push       0
 005BD52B    lea        eax,[ebp-18]
 005BD52E    push       eax
 005BD52F    mov        ecx,dword ptr [ebp+1C]
 005BD532    mov        edx,edi
 005BD534    mov        eax,dword ptr [ebp-4]
 005BD537    call       005A02E4
 005BD53C    mov        eax,dword ptr [ebp-18]
 005BD53F    lea        edx,[ebp-14]
 005BD542    call       005A5D34
 005BD547    mov        eax,dword ptr [ebp-14]
 005BD54A    call       005A5E40
 005BD54F    fstp       tbyte ptr [ebp-10]
 005BD552    wait
>005BD553    jmp        005BD569
 005BD555    mov        eax,dword ptr [ebp+10]
 005BD558    mov        dword ptr [ebp-10],eax
 005BD55B    mov        eax,dword ptr [ebp+14]
 005BD55E    mov        dword ptr [ebp-0C],eax
 005BD561    mov        ax,word ptr [ebp+18]
 005BD565    mov        word ptr [ebp-8],ax
 005BD569    mov        ax,word ptr [ebp-8]
 005BD56D    push       eax
 005BD56E    push       dword ptr [ebp-0C]
 005BD571    push       dword ptr [ebp-10]
 005BD574    mov        al,byte ptr [ebp+0C]
 005BD577    call       005BD1A0
 005BD57C    fstp       tbyte ptr [ebp-10]
 005BD57F    wait
 005BD580    xor        eax,eax
 005BD582    pop        edx
 005BD583    pop        ecx
 005BD584    pop        ecx
 005BD585    mov        dword ptr fs:[eax],edx
 005BD588    push       5BD5AA
 005BD58D    lea        eax,[ebp-18]
 005BD590    mov        edx,2
 005BD595    call       @LStrArrayClr
 005BD59A    lea        eax,[ebp+1C]
 005BD59D    call       @LStrClr
 005BD5A2    ret
<005BD5A3    jmp        @HandleFinally
<005BD5A8    jmp        005BD58D
 005BD5AA    fld        tbyte ptr [ebp-10]
 005BD5AD    pop        edi
 005BD5AE    pop        esi
 005BD5AF    pop        ebx
 005BD5B0    mov        esp,ebp
 005BD5B2    pop        ebp
 005BD5B3    ret        18
*}
//end;

//005BD5B8
constructor TRaveDataText.Create(AOwner:TComponent);
begin
{*
 005BD5B8    push       ebx
 005BD5B9    push       esi
 005BD5BA    test       dl,dl
>005BD5BC    je         005BD5C6
 005BD5BE    add        esp,0FFFFFFF0
 005BD5C1    call       @ClassCreate
 005BD5C6    mov        ebx,edx
 005BD5C8    mov        esi,eax
 005BD5CA    xor        edx,edx
 005BD5CC    mov        eax,esi
 005BD5CE    call       TRaveText.Create
 005BD5D3    mov        byte ptr [esi+100],1; TRaveDataText.Truncate:Boolean
 005BD5DA    mov        eax,[0061B184]
 005BD5DF    cmp        byte ptr [eax],0
>005BD5E2    je         005BD5EB
 005BD5E4    mov        byte ptr [esi+0FC],1; TRaveDataText.?fFC:byte
 005BD5EB    mov        eax,esi
 005BD5ED    test       bl,bl
>005BD5EF    je         005BD600
 005BD5F1    call       @AfterConstruction
 005BD5F6    pop        dword ptr fs:[0]
 005BD5FD    add        esp,0C
 005BD600    mov        eax,esi
 005BD602    pop        esi
 005BD603    pop        ebx
 005BD604    ret
*}
end;

//005BD608
//procedure sub_005BD608(?:?; ?:?);
//begin
{*
 005BD608    push       ebx
 005BD609    push       esi
 005BD60A    push       edi
 005BD60B    mov        edi,ecx
 005BD60D    mov        esi,edx
 005BD60F    mov        ebx,eax
 005BD611    mov        ecx,edi
 005BD613    mov        edx,esi
 005BD615    mov        eax,ebx
 005BD617    call       005B1A4C
 005BD61C    mov        eax,dword ptr [ebx+10C]; TRaveDataText.DataView:TRaveBaseDataView
 005BD622    test       eax,eax
>005BD624    je         005BD63D
 005BD626    cmp        esi,eax
>005BD628    jne        005BD63D
 005BD62A    mov        eax,edi
 005BD62C    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005BD632    call       @AsClass
 005BD637    mov        dword ptr [ebx+10C],eax; TRaveDataText.DataView:TRaveBaseDataView
 005BD63D    mov        eax,dword ptr [ebx+110]; TRaveDataText.LookupDataView:TRaveBaseDataView
 005BD643    test       eax,eax
>005BD645    je         005BD661
 005BD647    cmp        esi,eax
>005BD649    jne        005BD661
 005BD64B    mov        eax,edi
 005BD64D    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005BD653    call       @AsClass
 005BD658    mov        edx,eax
 005BD65A    mov        eax,ebx
 005BD65C    call       TRaveDataText.SetLookupDataView
 005BD661    pop        edi
 005BD662    pop        esi
 005BD663    pop        ebx
 005BD664    ret
*}
//end;

//005BD668
procedure sub_005BD668();
begin
{*
 005BD668    push       ebp
 005BD669    mov        ebp,esp
 005BD66B    xor        eax,eax
 005BD66D    push       ebp
 005BD66E    push       5BD687
 005BD673    push       dword ptr fs:[eax]
 005BD676    mov        dword ptr fs:[eax],esp
 005BD679    xor        eax,eax
 005BD67B    pop        edx
 005BD67C    pop        ecx
 005BD67D    pop        ecx
 005BD67E    mov        dword ptr fs:[eax],edx
 005BD681    push       5BD68E
 005BD686    ret
<005BD687    jmp        @HandleFinally
<005BD68C    jmp        005BD686
 005BD68E    pop        ebp
 005BD68F    ret
*}
end;

//005BD690
//procedure sub_005BD690(?:?);
//begin
{*
 005BD690    push       ebp
 005BD691    mov        ebp,esp
 005BD693    push       0
 005BD695    push       ebx
 005BD696    push       esi
 005BD697    push       edi
 005BD698    mov        esi,edx
 005BD69A    mov        ebx,eax
 005BD69C    xor        eax,eax
 005BD69E    push       ebp
 005BD69F    push       5BD7E6
 005BD6A4    push       dword ptr fs:[eax]
 005BD6A7    mov        dword ptr fs:[eax],esp
 005BD6AA    mov        eax,dword ptr [ebx+48]; TRaveDataText.?f48:TRaveComponent
 005BD6AD    cmp        byte ptr [eax+0A5],0
>005BD6B4    je         005BD76B
 005BD6BA    push       esi
 005BD6BB    mov        ecx,dword ptr [ebx+108]; TRaveDataText.?f108:TRaveFieldName
 005BD6C1    mov        edx,dword ptr [ebx+10C]; TRaveDataText.DataView:TRaveBaseDataView
 005BD6C7    mov        eax,ebx
 005BD6C9    call       005A02E4
 005BD6CE    mov        edi,dword ptr [ebx+110]; TRaveDataText.LookupDataView:TRaveBaseDataView
 005BD6D4    test       edi,edi
>005BD6D6    je         005BD7D0
 005BD6DC    cmp        dword ptr [ebx+114],0; TRaveDataText.?f114:TRaveFieldName
>005BD6E3    je         005BD7D0
 005BD6E9    cmp        dword ptr [ebx+118],0; TRaveDataText.?f118:TRaveFieldName
>005BD6F0    je         005BD7D0
 005BD6F6    cmp        edi,dword ptr [ebx+10C]; TRaveDataText.DataView:TRaveBaseDataView
>005BD6FC    jne        005BD717
 005BD6FE    push       esi
 005BD6FF    mov        ecx,dword ptr [ebx+118]; TRaveDataText.?f118:TRaveFieldName
 005BD705    mov        edx,dword ptr [ebx+10C]; TRaveDataText.DataView:TRaveBaseDataView
 005BD70B    mov        eax,ebx
 005BD70D    call       005A02E4
>005BD712    jmp        005BD7D0
 005BD717    cmp        dword ptr [ebx+10C],0; TRaveDataText.DataView:TRaveBaseDataView
>005BD71E    je         005BD735
 005BD720    mov        edx,dword ptr [ebx+108]; TRaveDataText.?f108:TRaveFieldName
 005BD726    mov        eax,dword ptr [ebx+10C]; TRaveDataText.DataView:TRaveBaseDataView
 005BD72C    call       005A0AC8
 005BD731    mov        edi,eax
>005BD733    jmp        005BD737
 005BD735    xor        edi,edi
 005BD737    mov        eax,dword ptr [ebx+114]; TRaveDataText.?f114:TRaveFieldName
 005BD73D    push       eax
 005BD73E    mov        eax,dword ptr [ebx+118]; TRaveDataText.?f118:TRaveFieldName
 005BD744    push       eax
 005BD745    mov        eax,dword ptr [ebx+11C]; TRaveDataText.?f11C:String
 005BD74B    push       eax
 005BD74C    lea        eax,[ebp-4]
 005BD74F    push       eax
 005BD750    mov        edx,dword ptr [esi]
 005BD752    mov        ecx,edi
 005BD754    mov        eax,dword ptr [ebx+110]; TRaveDataText.LookupDataView:TRaveBaseDataView
 005BD75A    call       005A0408
 005BD75F    mov        edx,dword ptr [ebp-4]
 005BD762    mov        eax,esi
 005BD764    call       @LStrAsg
>005BD769    jmp        005BD7D0
 005BD76B    cmp        dword ptr [ebx+108],0; TRaveDataText.?f108:TRaveFieldName
>005BD772    jne        005BD780
 005BD774    mov        eax,esi
 005BD776    mov        edx,dword ptr [ebx+8]; TRaveDataText.?f8:TComponentName
 005BD779    call       @LStrAsg
>005BD77E    jmp        005BD7D0
 005BD780    mov        edi,dword ptr [ebx+110]; TRaveDataText.LookupDataView:TRaveBaseDataView
 005BD786    test       edi,edi
>005BD788    je         005BD7C3
 005BD78A    cmp        dword ptr [ebx+114],0; TRaveDataText.?f114:TRaveFieldName
>005BD791    je         005BD7C3
 005BD793    cmp        dword ptr [ebx+118],0; TRaveDataText.?f118:TRaveFieldName
>005BD79A    je         005BD7C3
 005BD79C    push       dword ptr [ebx+108]; TRaveDataText.?f108:TRaveFieldName
 005BD7A2    push       5BD7FC; '»'
 005BD7A7    push       dword ptr [edi+8]; TRaveBaseDataView.?f8:TComponentName
 005BD7AA    push       5BD808; '.'
 005BD7AF    push       dword ptr [ebx+118]; TRaveDataText.?f118:TRaveFieldName
 005BD7B5    mov        eax,esi
 005BD7B7    mov        edx,5
 005BD7BC    call       @LStrCatN
>005BD7C1    jmp        005BD7D0
 005BD7C3    mov        eax,esi
 005BD7C5    mov        edx,dword ptr [ebx+108]; TRaveDataText.?f108:TRaveFieldName
 005BD7CB    call       @LStrAsg
 005BD7D0    xor        eax,eax
 005BD7D2    pop        edx
 005BD7D3    pop        ecx
 005BD7D4    pop        ecx
 005BD7D5    mov        dword ptr fs:[eax],edx
 005BD7D8    push       5BD7ED
 005BD7DD    lea        eax,[ebp-4]
 005BD7E0    call       @LStrClr
 005BD7E5    ret
<005BD7E6    jmp        @HandleFinally
<005BD7EB    jmp        005BD7DD
 005BD7ED    pop        edi
 005BD7EE    pop        esi
 005BD7EF    pop        ebx
 005BD7F0    pop        ecx
 005BD7F1    pop        ebp
 005BD7F2    ret
*}
//end;

//005BD80C
//procedure TRaveDataText.SetDataField(Self:TRaveDataText; ?:?);
//begin
{*
 005BD80C    push       ebp
 005BD80D    mov        ebp,esp
 005BD80F    push       ecx
 005BD810    push       ebx
 005BD811    mov        dword ptr [ebp-4],edx
 005BD814    mov        ebx,eax
 005BD816    mov        eax,dword ptr [ebp-4]
 005BD819    call       @LStrAddRef
 005BD81E    xor        eax,eax
 005BD820    push       ebp
 005BD821    push       5BD857
 005BD826    push       dword ptr fs:[eax]
 005BD829    mov        dword ptr fs:[eax],esp
 005BD82C    lea        eax,[ebx+108]; TRaveDataText.?f108:TRaveFieldName
 005BD832    mov        edx,dword ptr [ebp-4]
 005BD835    call       @LStrAsg
 005BD83A    mov        eax,ebx
 005BD83C    call       005A8540
 005BD841    xor        eax,eax
 005BD843    pop        edx
 005BD844    pop        ecx
 005BD845    pop        ecx
 005BD846    mov        dword ptr fs:[eax],edx
 005BD849    push       5BD85E
 005BD84E    lea        eax,[ebp-4]
 005BD851    call       @LStrClr
 005BD856    ret
<005BD857    jmp        @HandleFinally
<005BD85C    jmp        005BD84E
 005BD85E    pop        ebx
 005BD85F    pop        ecx
 005BD860    pop        ebp
 005BD861    ret
*}
//end;

//005BD864
//procedure TRaveDataText.SetLookupDataView(Self:TRaveDataText; ?:TRaveBaseDataView);
//begin
{*
 005BD864    mov        dword ptr [eax+110],edx; TRaveDataText.LookupDataView:TRaveBaseDataView
 005BD86A    call       005A8540
 005BD86F    ret
*}
//end;

//005BD870
//procedure TRaveDataText.SetLookupField(Self:TRaveDataText; ?:?);
//begin
{*
 005BD870    push       ebp
 005BD871    mov        ebp,esp
 005BD873    push       ecx
 005BD874    push       ebx
 005BD875    mov        dword ptr [ebp-4],edx
 005BD878    mov        ebx,eax
 005BD87A    mov        eax,dword ptr [ebp-4]
 005BD87D    call       @LStrAddRef
 005BD882    xor        eax,eax
 005BD884    push       ebp
 005BD885    push       5BD8BB
 005BD88A    push       dword ptr fs:[eax]
 005BD88D    mov        dword ptr fs:[eax],esp
 005BD890    lea        eax,[ebx+114]; TRaveDataText.?f114:TRaveFieldName
 005BD896    mov        edx,dword ptr [ebp-4]
 005BD899    call       @LStrAsg
 005BD89E    mov        eax,ebx
 005BD8A0    call       005A8540
 005BD8A5    xor        eax,eax
 005BD8A7    pop        edx
 005BD8A8    pop        ecx
 005BD8A9    pop        ecx
 005BD8AA    mov        dword ptr fs:[eax],edx
 005BD8AD    push       5BD8C2
 005BD8B2    lea        eax,[ebp-4]
 005BD8B5    call       @LStrClr
 005BD8BA    ret
<005BD8BB    jmp        @HandleFinally
<005BD8C0    jmp        005BD8B2
 005BD8C2    pop        ebx
 005BD8C3    pop        ecx
 005BD8C4    pop        ebp
 005BD8C5    ret
*}
//end;

//005BD8C8
//procedure TRaveDataText.SetLookupDisplay(Self:TRaveDataText; ?:?);
//begin
{*
 005BD8C8    push       ebp
 005BD8C9    mov        ebp,esp
 005BD8CB    push       ecx
 005BD8CC    push       ebx
 005BD8CD    mov        dword ptr [ebp-4],edx
 005BD8D0    mov        ebx,eax
 005BD8D2    mov        eax,dword ptr [ebp-4]
 005BD8D5    call       @LStrAddRef
 005BD8DA    xor        eax,eax
 005BD8DC    push       ebp
 005BD8DD    push       5BD913
 005BD8E2    push       dword ptr fs:[eax]
 005BD8E5    mov        dword ptr fs:[eax],esp
 005BD8E8    lea        eax,[ebx+118]; TRaveDataText.?f118:TRaveFieldName
 005BD8EE    mov        edx,dword ptr [ebp-4]
 005BD8F1    call       @LStrAsg
 005BD8F6    mov        eax,ebx
 005BD8F8    call       005A8540
 005BD8FD    xor        eax,eax
 005BD8FF    pop        edx
 005BD900    pop        ecx
 005BD901    pop        ecx
 005BD902    mov        dword ptr fs:[eax],edx
 005BD905    push       5BD91A
 005BD90A    lea        eax,[ebp-4]
 005BD90D    call       @LStrClr
 005BD912    ret
<005BD913    jmp        @HandleFinally
<005BD918    jmp        005BD90A
 005BD91A    pop        ebx
 005BD91B    pop        ecx
 005BD91C    pop        ebp
 005BD91D    ret
*}
//end;

//005BD920
//procedure TRaveDataMemo.SetDataField(Self:TRaveDataMemo; ?:?);
//begin
{*
 005BD920    push       ebp
 005BD921    mov        ebp,esp
 005BD923    push       ecx
 005BD924    push       ebx
 005BD925    mov        dword ptr [ebp-4],edx
 005BD928    mov        ebx,eax
 005BD92A    mov        eax,dword ptr [ebp-4]
 005BD92D    call       @LStrAddRef
 005BD932    xor        eax,eax
 005BD934    push       ebp
 005BD935    push       5BD989
 005BD93A    push       dword ptr fs:[eax]
 005BD93D    mov        dword ptr fs:[eax],esp
 005BD940    mov        eax,[0061B184]
 005BD945    cmp        byte ptr [eax],0
>005BD948    je         005BD95E
 005BD94A    cmp        dword ptr [ebx+108],0; TRaveDataMemo.?f108:dword
>005BD951    je         005BD95E
 005BD953    lea        eax,[ebx+108]; TRaveDataMemo.?f108:dword
 005BD959    call       FreeAndNil
 005BD95E    lea        eax,[ebx+118]; TRaveDataMemo.?f118:TRaveFieldName
 005BD964    mov        edx,dword ptr [ebp-4]
 005BD967    call       @LStrAsg
 005BD96C    mov        eax,ebx
 005BD96E    call       005A8540
 005BD973    xor        eax,eax
 005BD975    pop        edx
 005BD976    pop        ecx
 005BD977    pop        ecx
 005BD978    mov        dword ptr fs:[eax],edx
 005BD97B    push       5BD990
 005BD980    lea        eax,[ebp-4]
 005BD983    call       @LStrClr
 005BD988    ret
<005BD989    jmp        @HandleFinally
<005BD98E    jmp        005BD980
 005BD990    pop        ebx
 005BD991    pop        ecx
 005BD992    pop        ebp
 005BD993    ret
*}
//end;

//005BD994
//procedure sub_005BD994(?:?; ?:?);
//begin
{*
 005BD994    push       ebx
 005BD995    push       esi
 005BD996    push       edi
 005BD997    mov        edi,ecx
 005BD999    mov        esi,edx
 005BD99B    mov        ebx,eax
 005BD99D    mov        ecx,edi
 005BD99F    mov        edx,esi
 005BD9A1    mov        eax,ebx
 005BD9A3    call       005B1A4C
 005BD9A8    mov        eax,dword ptr [ebx+11C]; TRaveDataMemo.DataView:TRaveBaseDataView
 005BD9AE    test       eax,eax
>005BD9B0    je         005BD9C9
 005BD9B2    cmp        esi,eax
>005BD9B4    jne        005BD9C9
 005BD9B6    mov        eax,edi
 005BD9B8    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005BD9BE    call       @AsClass
 005BD9C3    mov        dword ptr [ebx+11C],eax; TRaveDataMemo.DataView:TRaveBaseDataView
 005BD9C9    pop        edi
 005BD9CA    pop        esi
 005BD9CB    pop        ebx
 005BD9CC    ret
*}
//end;

//005BD9D0
//procedure sub_005BD9D0(?:?);
//begin
{*
 005BD9D0    push       ebx
 005BD9D1    push       esi
 005BD9D2    mov        esi,edx
 005BD9D4    mov        ebx,eax
 005BD9D6    mov        eax,dword ptr [ebx+48]; TRaveDataMemo.?f48:TRaveComponent
 005BD9D9    cmp        byte ptr [eax+0A5],0
>005BD9E0    je         005BD9F9
 005BD9E2    push       esi
 005BD9E3    mov        ecx,dword ptr [ebx+118]; TRaveDataMemo.?f118:TRaveFieldName
 005BD9E9    mov        edx,dword ptr [ebx+11C]; TRaveDataMemo.DataView:TRaveBaseDataView
 005BD9EF    mov        eax,ebx
 005BD9F1    call       005A02E4
 005BD9F6    pop        esi
 005BD9F7    pop        ebx
 005BD9F8    ret
 005BD9F9    cmp        dword ptr [ebx+118],0; TRaveDataMemo.?f118:TRaveFieldName
>005BDA00    jne        005BDA1D
 005BDA02    push       5BDA44; '['
 005BDA07    push       dword ptr [ebx+8]; TRaveDataMemo.?f8:TComponentName
 005BDA0A    push       5BDA50; ']'
 005BDA0F    mov        eax,esi
 005BDA11    mov        edx,3
 005BDA16    call       @LStrCatN
>005BDA1B    jmp        005BDA39
 005BDA1D    push       5BDA44; '['
 005BDA22    push       dword ptr [ebx+118]; TRaveDataMemo.?f118:TRaveFieldName
 005BDA28    push       5BDA50; ']'
 005BDA2D    mov        eax,esi
 005BDA2F    mov        edx,3
 005BDA34    call       @LStrCatN
 005BDA39    pop        esi
 005BDA3A    pop        ebx
 005BDA3B    ret
*}
//end;

//005BDA54
//function sub_005BDA54(?:dword; ?:?; ?:Extended; ?:?; ?:?):?;
//begin
{*
 005BDA54    push       ebp
 005BDA55    mov        ebp,esp
 005BDA57    add        esp,0FFFFFFEC
 005BDA5A    sub        dl,1
>005BDA5D    jb         005BDA6B
>005BDA5F    je         005BDA77
 005BDA61    dec        edx
 005BDA62    sub        dl,2
>005BDA65    jb         005BDA8D
>005BDA67    je         005BDAB5
>005BDA69    jmp        005BDAD8
 005BDA6B    mov        dword ptr [ebp-14],eax
 005BDA6E    fild       dword ptr [ebp-14]
 005BDA71    fstp       tbyte ptr [ebp-10]
 005BDA74    wait
>005BDA75    jmp        005BDAE4
 005BDA77    mov        eax,dword ptr [ebp+8]
 005BDA7A    mov        dword ptr [ebp-10],eax
 005BDA7D    mov        eax,dword ptr [ebp+0C]
 005BDA80    mov        dword ptr [ebp-0C],eax
 005BDA83    mov        ax,word ptr [ebp+10]
 005BDA87    mov        word ptr [ebp-8],ax
>005BDA8B    jmp        005BDAE4
 005BDA8D    test       eax,eax
>005BDA8F    jne        005BDA9F
 005BDA91    xor        eax,eax
 005BDA93    mov        dword ptr [ebp-10],eax
 005BDA96    mov        dword ptr [ebp-0C],eax
 005BDA99    mov        word ptr [ebp-8],ax
>005BDA9D    jmp        005BDAE4
 005BDA9F    mov        eax,dword ptr [ebp+8]
 005BDAA2    mov        dword ptr [ebp-10],eax
 005BDAA5    mov        eax,dword ptr [ebp+0C]
 005BDAA8    mov        dword ptr [ebp-0C],eax
 005BDAAB    mov        ax,word ptr [ebp+10]
 005BDAAF    mov        word ptr [ebp-8],ax
>005BDAB3    jmp        005BDAE4
 005BDAB5    test       eax,eax
>005BDAB7    jne        005BDAC7
 005BDAB9    xor        eax,eax
 005BDABB    mov        dword ptr [ebp-10],eax
 005BDABE    mov        dword ptr [ebp-0C],eax
 005BDAC1    mov        word ptr [ebp-8],ax
>005BDAC5    jmp        005BDAE4
 005BDAC7    mov        dword ptr [ebp-14],eax
 005BDACA    fild       dword ptr [ebp-14]
 005BDACD    fld        tbyte ptr [ebp+8]
 005BDAD0    fdivrp     st(1),st
 005BDAD2    fstp       tbyte ptr [ebp-10]
 005BDAD5    wait
>005BDAD6    jmp        005BDAE4
 005BDAD8    xor        eax,eax
 005BDADA    mov        dword ptr [ebp-10],eax
 005BDADD    mov        dword ptr [ebp-0C],eax
 005BDAE0    mov        word ptr [ebp-8],ax
 005BDAE4    fld        tbyte ptr [ebp-10]
 005BDAE7    mov        esp,ebp
 005BDAE9    pop        ebp
 005BDAEA    ret        0C
*}
//end;

//005BDAF0
//procedure sub_005BDAF0(?:?; ?:?; ?:?; ?:?; ?:Extended; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005BDAF0    push       ebp
 005BDAF1    mov        ebp,esp
 005BDAF3    push       ebx
 005BDAF4    push       esi
 005BDAF5    push       edi
 005BDAF6    mov        ebx,ecx
 005BDAF8    mov        edi,edx
 005BDAFA    mov        esi,eax
 005BDAFC    mov        eax,dword ptr [ebp+18]
 005BDAFF    call       @LStrAddRef
 005BDB04    mov        eax,dword ptr [ebp+8]
 005BDB07    call       @LStrAddRef
 005BDB0C    xor        eax,eax
 005BDB0E    push       ebp
 005BDB0F    push       5BDC16
 005BDB14    push       dword ptr fs:[eax]
 005BDB17    mov        dword ptr fs:[eax],esp
 005BDB1A    xor        eax,eax
 005BDB1C    mov        al,bl
 005BDB1E    cmp        eax,4
>005BDB21    ja         005BDBF8
 005BDB27    jmp        dword ptr [eax*4+5BDB2E]
 005BDB27    dd         5BDB42
 005BDB27    dd         5BDB74
 005BDB27    dd         5BDB80
 005BDB27    dd         5BDBAC
 005BDB27    dd         5BDBD8
 005BDB42    cmp        byte ptr [ebp+1C],0
>005BDB46    jne        005BDB56
 005BDB48    fld        tbyte ptr [ebp+0C]
 005BDB4B    fcomp      dword ptr ds:[5BDC24]; 0:Single
 005BDB51    fnstsw     al
 005BDB53    sahf
>005BDB54    je         005BDB5C
 005BDB56    cmp        dword ptr [ebp+18],0
>005BDB5A    je         005BDB6D
 005BDB5C    mov        eax,dword ptr [ebp+8]
 005BDB5F    mov        edx,dword ptr [ebp+18]
 005BDB62    call       @LStrCmp
>005BDB67    jne        005BDBF8
 005BDB6D    inc        dword ptr [edi]
>005BDB6F    jmp        005BDBF8
 005BDB74    fld        tbyte ptr [esi]
 005BDB76    fld        tbyte ptr [ebp+0C]
 005BDB79    faddp      st(1),st
 005BDB7B    fstp       tbyte ptr [esi]
 005BDB7D    wait
>005BDB7E    jmp        005BDBF8
 005BDB80    cmp        dword ptr [edi],0
>005BDB83    je         005BDB91
 005BDB85    fld        tbyte ptr [ebp+0C]
 005BDB88    fld        tbyte ptr [esi]
 005BDB8A    fcompp
 005BDB8C    fnstsw     al
 005BDB8E    sahf
>005BDB8F    jbe        005BDBF8
 005BDB91    mov        dword ptr [edi],1
 005BDB97    mov        eax,dword ptr [ebp+0C]
 005BDB9A    mov        dword ptr [esi],eax
 005BDB9C    mov        eax,dword ptr [ebp+10]
 005BDB9F    mov        dword ptr [esi+4],eax
 005BDBA2    mov        ax,word ptr [ebp+14]
 005BDBA6    mov        word ptr [esi+8],ax
>005BDBAA    jmp        005BDBF8
 005BDBAC    cmp        dword ptr [edi],0
>005BDBAF    je         005BDBBD
 005BDBB1    fld        tbyte ptr [ebp+0C]
 005BDBB4    fld        tbyte ptr [esi]
 005BDBB6    fcompp
 005BDBB8    fnstsw     al
 005BDBBA    sahf
>005BDBBB    jae        005BDBF8
 005BDBBD    mov        dword ptr [edi],1
 005BDBC3    mov        eax,dword ptr [ebp+0C]
 005BDBC6    mov        dword ptr [esi],eax
 005BDBC8    mov        eax,dword ptr [ebp+10]
 005BDBCB    mov        dword ptr [esi+4],eax
 005BDBCE    mov        ax,word ptr [ebp+14]
 005BDBD2    mov        word ptr [esi+8],ax
>005BDBD6    jmp        005BDBF8
 005BDBD8    fld        tbyte ptr [esi]
 005BDBDA    fld        tbyte ptr [ebp+0C]
 005BDBDD    faddp      st(1),st
 005BDBDF    fstp       tbyte ptr [esi]
 005BDBE1    wait
 005BDBE2    cmp        byte ptr [ebp+1C],0
>005BDBE6    jne        005BDBF6
 005BDBE8    fld        tbyte ptr [ebp+0C]
 005BDBEB    fcomp      dword ptr ds:[5BDC24]; 0:Single
 005BDBF1    fnstsw     al
 005BDBF3    sahf
>005BDBF4    je         005BDBF8
 005BDBF6    inc        dword ptr [edi]
 005BDBF8    xor        eax,eax
 005BDBFA    pop        edx
 005BDBFB    pop        ecx
 005BDBFC    pop        ecx
 005BDBFD    mov        dword ptr fs:[eax],edx
 005BDC00    push       5BDC1D
 005BDC05    lea        eax,[ebp+8]
 005BDC08    call       @LStrClr
 005BDC0D    lea        eax,[ebp+18]
 005BDC10    call       @LStrClr
 005BDC15    ret
<005BDC16    jmp        @HandleFinally
<005BDC1B    jmp        005BDC05
 005BDC1D    pop        edi
 005BDC1E    pop        esi
 005BDC1F    pop        ebx
 005BDC20    pop        ebp
 005BDC21    ret        18
*}
//end;

//005BDC28
//procedure sub_005BDC28(?:?; ?:?; ?:?; ?:Extended; ?:?; ?:?);
//begin
{*
 005BDC28    push       ebp
 005BDC29    mov        ebp,esp
 005BDC2B    push       ebx
 005BDC2C    push       esi
 005BDC2D    mov        esi,edx
 005BDC2F    mov        ebx,eax
 005BDC31    sub        cl,1
>005BDC34    jb         005BDC40
>005BDC36    je         005BDC57
 005BDC38    dec        ecx
 005BDC39    sub        cl,3
>005BDC3C    jb         005BDC70
>005BDC3E    jmp        005BDC7F
 005BDC40    fld        tbyte ptr [ebp+8]
 005BDC43    call       @TRUNC
 005BDC48    mov        dword ptr [esi],eax
 005BDC4A    xor        eax,eax
 005BDC4C    mov        dword ptr [ebx],eax
 005BDC4E    mov        dword ptr [ebx+4],eax
 005BDC51    mov        word ptr [ebx+8],ax
>005BDC55    jmp        005BDC7F
 005BDC57    xor        eax,eax
 005BDC59    mov        dword ptr [esi],eax
 005BDC5B    mov        eax,dword ptr [ebp+8]
 005BDC5E    mov        dword ptr [ebx],eax
 005BDC60    mov        eax,dword ptr [ebp+0C]
 005BDC63    mov        dword ptr [ebx+4],eax
 005BDC66    mov        ax,word ptr [ebp+10]
 005BDC6A    mov        word ptr [ebx+8],ax
>005BDC6E    jmp        005BDC7F
 005BDC70    xor        eax,eax
 005BDC72    mov        dword ptr [esi],eax
 005BDC74    xor        eax,eax
 005BDC76    mov        dword ptr [ebx],eax
 005BDC78    mov        dword ptr [ebx+4],eax
 005BDC7B    mov        word ptr [ebx+8],ax
 005BDC7F    pop        esi
 005BDC80    pop        ebx
 005BDC81    pop        ebp
 005BDC82    ret        0C
*}
//end;

//005BDC88
constructor TRaveCalcText.Create(AOwner:TComponent);
begin
{*
 005BDC88    push       ebx
 005BDC89    push       esi
 005BDC8A    test       dl,dl
>005BDC8C    je         005BDC96
 005BDC8E    add        esp,0FFFFFFF0
 005BDC91    call       @ClassCreate
 005BDC96    mov        ebx,edx
 005BDC98    mov        esi,eax
 005BDC9A    xor        edx,edx
 005BDC9C    mov        eax,esi
 005BDC9E    call       TRaveText.Create
 005BDCA3    mov        byte ptr [esi+12C],1; TRaveCalcText.CalcType:TRaveCalcType
 005BDCAA    mov        byte ptr [esi+135],1; TRaveCalcText.CountBlanks:Boolean
 005BDCB1    mov        eax,[0061B184]
 005BDCB6    cmp        byte ptr [eax],0
>005BDCB9    je         005BDCC2
 005BDCBB    mov        byte ptr [esi+0FC],1; TRaveCalcText.?fFC:byte
 005BDCC2    mov        eax,esi
 005BDCC4    test       bl,bl
>005BDCC6    je         005BDCD7
 005BDCC8    call       @AfterConstruction
 005BDCCD    pop        dword ptr fs:[0]
 005BDCD4    add        esp,0C
 005BDCD7    mov        eax,esi
 005BDCD9    pop        esi
 005BDCDA    pop        ebx
 005BDCDB    ret
*}
end;

//005BDCDC
destructor TRaveCalcText.Destroy;
begin
{*
 005BDCDC    push       ebx
 005BDCDD    push       esi
 005BDCDE    call       @BeforeDestruction
 005BDCE3    mov        ebx,edx
 005BDCE5    mov        esi,eax
 005BDCE7    mov        edx,ebx
 005BDCE9    and        dl,0FC
 005BDCEC    mov        eax,esi
 005BDCEE    call       TRaveCustomText.Destroy
 005BDCF3    test       bl,bl
>005BDCF5    jle        005BDCFE
 005BDCF7    mov        eax,esi
 005BDCF9    call       @ClassDestroy
 005BDCFE    pop        esi
 005BDCFF    pop        ebx
 005BDD00    ret
*}
end;

//005BDD04
//procedure sub_005BDD04(?:?; ?:?);
//begin
{*
 005BDD04    push       ebx
 005BDD05    push       esi
 005BDD06    push       edi
 005BDD07    mov        edi,ecx
 005BDD09    mov        esi,edx
 005BDD0B    mov        ebx,eax
 005BDD0D    mov        ecx,edi
 005BDD0F    mov        edx,esi
 005BDD11    mov        eax,ebx
 005BDD13    call       005B1A4C
 005BDD18    mov        eax,dword ptr [ebx+124]; TRaveCalcText.DataView:TRaveBaseDataView
 005BDD1E    test       eax,eax
>005BDD20    je         005BDD39
 005BDD22    cmp        esi,eax
>005BDD24    jne        005BDD39
 005BDD26    mov        eax,edi
 005BDD28    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005BDD2E    call       @AsClass
 005BDD33    mov        dword ptr [ebx+124],eax; TRaveCalcText.DataView:TRaveBaseDataView
 005BDD39    mov        eax,dword ptr [ebx+11C]; TRaveCalcText.Controller:TRaveComponent
 005BDD3F    test       eax,eax
>005BDD41    je         005BDD50
 005BDD43    cmp        esi,eax
>005BDD45    jne        005BDD50
 005BDD47    mov        edx,edi
 005BDD49    mov        eax,ebx
 005BDD4B    call       TRaveCalcText.SetController
 005BDD50    mov        eax,dword ptr [ebx+120]; TRaveCalcText.Initializer:TRaveComponent
 005BDD56    test       eax,eax
>005BDD58    je         005BDD67
 005BDD5A    cmp        esi,eax
>005BDD5C    jne        005BDD67
 005BDD5E    mov        edx,edi
 005BDD60    mov        eax,ebx
 005BDD62    call       TRaveCalcText.SetInitializer
 005BDD67    pop        edi
 005BDD68    pop        esi
 005BDD69    pop        ebx
 005BDD6A    ret
*}
//end;

//005BDD6C
//procedure sub_005BDD6C(?:?);
//begin
{*
 005BDD6C    push       eax
 005BDD6D    push       5BDD9C; sub_005BDD9C
 005BDD72    push       0
 005BDD74    push       0
 005BDD76    mov        eax,edx
 005BDD78    mov        edx,5BDD8C; 'ControllerBand'
 005BDD7D    call       005AC204
 005BDD82    ret
*}
//end;

//005BDD9C
//procedure sub_005BDD9C(?:?; ?:?);
//begin
{*
 005BDD9C    push       ebx
 005BDD9D    push       esi
 005BDD9E    mov        esi,edx
 005BDDA0    mov        ebx,eax
 005BDDA2    mov        eax,dword ptr [ebx]
 005BDDA4    call       TObject.ClassType
 005BDDA9    mov        edx,5BDDCC; 'Controller'
 005BDDAE    call       GetPropInfo
 005BDDB3    mov        ecx,eax
 005BDDB5    mov        edx,ebx
 005BDDB7    mov        eax,esi
 005BDDB9    call       005AD82C
 005BDDBE    pop        esi
 005BDDBF    pop        ebx
 005BDDC0    ret
*}
//end;

//005BDDD8
procedure sub_005BDDD8();
begin
{*
 005BDDD8    push       ebp
 005BDDD9    mov        ebp,esp
 005BDDDB    xor        eax,eax
 005BDDDD    push       ebp
 005BDDDE    push       5BDDF7
 005BDDE3    push       dword ptr fs:[eax]
 005BDDE6    mov        dword ptr fs:[eax],esp
 005BDDE9    xor        eax,eax
 005BDDEB    pop        edx
 005BDDEC    pop        ecx
 005BDDED    pop        ecx
 005BDDEE    mov        dword ptr fs:[eax],edx
 005BDDF1    push       5BDDFE
 005BDDF6    ret
<005BDDF7    jmp        @HandleFinally
<005BDDFC    jmp        005BDDF6
 005BDDFE    pop        ebp
 005BDDFF    ret
*}
end;

//005BDE00
//procedure sub_005BDE00(?:?);
//begin
{*
 005BDE00    push       ebx
 005BDE01    push       esi
 005BDE02    mov        esi,edx
 005BDE04    mov        ebx,eax
 005BDE06    mov        eax,dword ptr [ebx+48]; TRaveCalcText.?f48:TRaveComponent
 005BDE09    cmp        byte ptr [eax+0A5],0
>005BDE10    je         005BDE81
 005BDE12    cmp        byte ptr [ebx+12C],4; TRaveCalcText.CalcType:TRaveCalcType
>005BDE19    jne        005BDE3A
 005BDE1B    cmp        dword ptr [ebx+108],0; TRaveCalcText.?f108:dword
>005BDE22    jne        005BDE3A
 005BDE24    mov        ebx,dword ptr ds:[61B830]
 005BDE2A    mov        ebx,dword ptr [ebx]
 005BDE2C    mov        edx,esi
 005BDE2E    mov        eax,5BDF34; 'undefined'
 005BDE33    call       ebx
>005BDE35    jmp        005BDF27
 005BDE3A    cmp        byte ptr [ebx+134],0; TRaveCalcText.DisplayType:TRaveDisplayType
>005BDE41    jne        005BDE63
 005BDE43    mov        eax,ebx
 005BDE45    call       005BDF9C
 005BDE4A    add        esp,0FFFFFFF4
 005BDE4D    fstp       tbyte ptr [esp]
 005BDE50    wait
 005BDE51    mov        edx,esi
 005BDE53    mov        eax,dword ptr [ebx+130]; TRaveCalcText.?f130:String
 005BDE59    call       FormatFloat
>005BDE5E    jmp        005BDF27
 005BDE63    mov        eax,ebx
 005BDE65    call       005BDF9C
 005BDE6A    add        esp,0FFFFFFF8
 005BDE6D    fstp       qword ptr [esp]
 005BDE70    wait
 005BDE71    mov        edx,esi
 005BDE73    mov        eax,dword ptr [ebx+130]; TRaveCalcText.?f130:String
 005BDE79    call       FormatDateTime
 005BDE7E    pop        esi
 005BDE7F    pop        ebx
 005BDE80    ret
 005BDE81    xor        eax,eax
 005BDE83    mov        al,byte ptr [ebx+12C]; TRaveCalcText.CalcType:TRaveCalcType
 005BDE89    cmp        eax,4
>005BDE8C    ja         005BDEED
 005BDE8E    jmp        dword ptr [eax*4+5BDE95]
 005BDE8E    dd         5BDEA9
 005BDE8E    dd         5BDEB7
 005BDE8E    dd         5BDEC5
 005BDE8E    dd         5BDED3
 005BDE8E    dd         5BDEE1
 005BDEA9    mov        eax,esi
 005BDEAB    mov        edx,5BDF48; 'Count('
 005BDEB0    call       @LStrAsg
>005BDEB5    jmp        005BDEED
 005BDEB7    mov        eax,esi
 005BDEB9    mov        edx,5BDF58; 'Sum('
 005BDEBE    call       @LStrAsg
>005BDEC3    jmp        005BDEED
 005BDEC5    mov        eax,esi
 005BDEC7    mov        edx,5BDF68; 'Min('
 005BDECC    call       @LStrAsg
>005BDED1    jmp        005BDEED
 005BDED3    mov        eax,esi
 005BDED5    mov        edx,5BDF78; 'Max('
 005BDEDA    call       @LStrAsg
>005BDEDF    jmp        005BDEED
 005BDEE1    mov        eax,esi
 005BDEE3    mov        edx,5BDF88; 'Avg('
 005BDEE8    call       @LStrAsg
 005BDEED    cmp        dword ptr [ebx+128],0; TRaveCalcText.?f128:TRaveFieldName
>005BDEF4    jne        005BDF0E
 005BDEF6    push       dword ptr [esi]
 005BDEF8    push       dword ptr [ebx+8]; TRaveCalcText.?f8:TComponentName
 005BDEFB    push       5BDF98; ')'
 005BDF00    mov        eax,esi
 005BDF02    mov        edx,3
 005BDF07    call       @LStrCatN
>005BDF0C    jmp        005BDF27
 005BDF0E    push       dword ptr [esi]
 005BDF10    push       dword ptr [ebx+128]; TRaveCalcText.?f128:TRaveFieldName
 005BDF16    push       5BDF98; ')'
 005BDF1B    mov        eax,esi
 005BDF1D    mov        edx,3
 005BDF22    call       @LStrCatN
 005BDF27    pop        esi
 005BDF28    pop        ebx
 005BDF29    ret
*}
//end;

//005BDF9C
//procedure sub_005BDF9C(?:TRaveCalcText);
//begin
{*
 005BDF9C    add        esp,0FFFFFFF4
 005BDF9F    mov        dx,word ptr [eax+118]; TRaveCalcText.?f118:word
 005BDFA6    push       edx
 005BDFA7    push       dword ptr [eax+114]; TRaveCalcText.?f114:dword
 005BDFAD    push       dword ptr [eax+110]; TRaveCalcText.?f110:dword
 005BDFB3    mov        dl,byte ptr [eax+12C]; TRaveCalcText.CalcType:TRaveCalcType
 005BDFB9    mov        eax,dword ptr [eax+108]; TRaveCalcText.?f108:dword
 005BDFBF    call       005BDA54
 005BDFC4    fstp       tbyte ptr [esp]
 005BDFC7    wait
 005BDFC8    fld        tbyte ptr [esp]
 005BDFCB    add        esp,0C
 005BDFCE    ret
*}
//end;

//005BDFD0
//procedure TRaveCalcText.SetDataField(Self:TRaveCalcText; ?:?);
//begin
{*
 005BDFD0    push       ebp
 005BDFD1    mov        ebp,esp
 005BDFD3    push       ecx
 005BDFD4    push       ebx
 005BDFD5    mov        dword ptr [ebp-4],edx
 005BDFD8    mov        ebx,eax
 005BDFDA    mov        eax,dword ptr [ebp-4]
 005BDFDD    call       @LStrAddRef
 005BDFE2    xor        eax,eax
 005BDFE4    push       ebp
 005BDFE5    push       5BE01B
 005BDFEA    push       dword ptr fs:[eax]
 005BDFED    mov        dword ptr fs:[eax],esp
 005BDFF0    lea        eax,[ebx+128]; TRaveCalcText.?f128:TRaveFieldName
 005BDFF6    mov        edx,dword ptr [ebp-4]
 005BDFF9    call       @LStrAsg
 005BDFFE    mov        eax,ebx
 005BE000    call       005A8540
 005BE005    xor        eax,eax
 005BE007    pop        edx
 005BE008    pop        ecx
 005BE009    pop        ecx
 005BE00A    mov        dword ptr fs:[eax],edx
 005BE00D    push       5BE022
 005BE012    lea        eax,[ebp-4]
 005BE015    call       @LStrClr
 005BE01A    ret
<005BE01B    jmp        @HandleFinally
<005BE020    jmp        005BE012
 005BE022    pop        ebx
 005BE023    pop        ecx
 005BE024    pop        ebp
 005BE025    ret
*}
//end;

//005BE028
//procedure TRaveCalcText.SetController(Self:TRaveCalcText; ?:?);
//begin
{*
 005BE028    push       ebx
 005BE029    push       esi
 005BE02A    mov        esi,edx
 005BE02C    mov        ebx,eax
 005BE02E    mov        eax,dword ptr [ebx+11C]; TRaveCalcText.Controller:TRaveComponent
 005BE034    cmp        esi,eax
>005BE036    je         005BE06E
 005BE038    test       eax,eax
>005BE03A    je         005BE04F
 005BE03C    push       ebx
 005BE03D    push       5BE104; sub_005BE104
 005BE042    mov        edx,5BE07C; 'CalcNewData'
 005BE047    mov        ecx,dword ptr [eax]
 005BE049    call       dword ptr [ecx+0CC]; TRaveComponent.sub_005A8760
 005BE04F    mov        eax,esi
 005BE051    mov        dword ptr [ebx+11C],eax; TRaveCalcText.Controller:TRaveComponent
 005BE057    test       eax,eax
>005BE059    je         005BE06E
 005BE05B    push       ebx
 005BE05C    push       5BE104; sub_005BE104
 005BE061    mov        edx,5BE07C; 'CalcNewData'
 005BE066    mov        ecx,dword ptr [eax]
 005BE068    call       dword ptr [ecx+0C8]
 005BE06E    pop        esi
 005BE06F    pop        ebx
 005BE070    ret
*}
//end;

//005BE088
//procedure TRaveCalcText.SetInitializer(Self:TRaveCalcText; ?:?);
//begin
{*
 005BE088    push       ebx
 005BE089    push       esi
 005BE08A    mov        esi,edx
 005BE08C    mov        ebx,eax
 005BE08E    mov        eax,dword ptr [ebx+120]; TRaveCalcText.Initializer:TRaveComponent
 005BE094    cmp        esi,eax
>005BE096    je         005BE0CE
 005BE098    test       eax,eax
>005BE09A    je         005BE0AF
 005BE09C    push       ebx
 005BE09D    push       5BE204; sub_005BE204
 005BE0A2    mov        edx,5BE0DC; 'CalcInitData'
 005BE0A7    mov        ecx,dword ptr [eax]
 005BE0A9    call       dword ptr [ecx+0CC]; TRaveComponent.sub_005A8760
 005BE0AF    mov        eax,esi
 005BE0B1    mov        dword ptr [ebx+120],eax; TRaveCalcText.Initializer:TRaveComponent
 005BE0B7    test       eax,eax
>005BE0B9    je         005BE0CE
 005BE0BB    push       ebx
 005BE0BC    push       5BE204; sub_005BE204
 005BE0C1    mov        edx,5BE0DC; 'CalcInitData'
 005BE0C6    mov        ecx,dword ptr [eax]
 005BE0C8    call       dword ptr [ecx+0C8]
 005BE0CE    pop        esi
 005BE0CF    pop        ebx
 005BE0D0    ret
*}
//end;

//005BE0EC
procedure sub_005BE0EC;
begin
{*
 005BE0EC    push       ebx
 005BE0ED    mov        ebx,eax
 005BE0EF    xor        ecx,ecx
 005BE0F1    mov        edx,ebx
 005BE0F3    mov        eax,ebx
 005BE0F5    call       005BE204
 005BE0FA    mov        eax,ebx
 005BE0FC    call       005A8800
 005BE101    pop        ebx
 005BE102    ret
*}
end;

//005BE104
//procedure sub_005BE104(?:?);
//begin
{*
 005BE104    push       ebp
 005BE105    mov        ebp,esp
 005BE107    add        esp,0FFFFFFE8
 005BE10A    push       ebx
 005BE10B    xor        ebx,ebx
 005BE10D    mov        dword ptr [ebp-18],ebx
 005BE110    mov        ebx,eax
 005BE112    xor        eax,eax
 005BE114    push       ebp
 005BE115    push       5BE1F8
 005BE11A    push       dword ptr fs:[eax]
 005BE11D    mov        dword ptr fs:[eax],esp
 005BE120    mov        eax,dword ptr [ebx+128]
 005BE126    push       eax
 005BE127    push       0
 005BE129    push       0
 005BE12B    push       0
 005BE12D    push       0
 005BE12F    lea        eax,[ebp-11]
 005BE132    push       eax
 005BE133    mov        ecx,dword ptr [ebx+124]
 005BE139    xor        edx,edx
 005BE13B    mov        eax,ebx
 005BE13D    call       005BD498
 005BE142    fstp       tbyte ptr [ebp-10]
 005BE145    wait
 005BE146    mov        eax,dword ptr [ebx+13C]
 005BE14C    test       eax,eax
>005BE14E    je         005BE183
 005BE150    mov        edx,dword ptr [ebp-10]
 005BE153    mov        dword ptr [eax+20],edx
 005BE156    mov        edx,dword ptr [ebp-0C]
 005BE159    mov        dword ptr [eax+24],edx
 005BE15C    mov        dx,word ptr [ebp-8]
 005BE160    mov        word ptr [eax+28],dx
 005BE164    mov        edx,dword ptr [eax]
 005BE166    call       dword ptr [edx+0C]
 005BE169    mov        eax,dword ptr [ebx+13C]
 005BE16F    mov        edx,dword ptr [eax+20]
 005BE172    mov        dword ptr [ebp-10],edx
 005BE175    mov        edx,dword ptr [eax+24]
 005BE178    mov        dword ptr [ebp-0C],edx
 005BE17B    mov        dx,word ptr [eax+28]
 005BE17F    mov        word ptr [ebp-8],dx
 005BE183    cmp        byte ptr [ebp-11],0
>005BE187    jne        005BE197
 005BE189    mov        al,byte ptr [ebx+12C]
 005BE18F    test       al,al
>005BE191    je         005BE1E2
 005BE193    sub        al,4
>005BE195    je         005BE1E2
 005BE197    mov        al,byte ptr [ebx+135]
 005BE19D    push       eax
 005BE19E    mov        eax,dword ptr [ebx+138]
 005BE1A4    push       eax
 005BE1A5    mov        ax,word ptr [ebp-8]
 005BE1A9    push       eax
 005BE1AA    push       dword ptr [ebp-0C]
 005BE1AD    push       dword ptr [ebp-10]
 005BE1B0    lea        eax,[ebp-18]
 005BE1B3    push       eax
 005BE1B4    mov        ecx,dword ptr [ebx+128]
 005BE1BA    mov        edx,dword ptr [ebx+124]
 005BE1C0    mov        eax,ebx
 005BE1C2    call       005A02E4
 005BE1C7    mov        eax,dword ptr [ebp-18]
 005BE1CA    push       eax
 005BE1CB    lea        edx,[ebx+108]
 005BE1D1    lea        eax,[ebx+110]
 005BE1D7    mov        cl,byte ptr [ebx+12C]
 005BE1DD    call       005BDAF0
 005BE1E2    xor        eax,eax
 005BE1E4    pop        edx
 005BE1E5    pop        ecx
 005BE1E6    pop        ecx
 005BE1E7    mov        dword ptr fs:[eax],edx
 005BE1EA    push       5BE1FF
 005BE1EF    lea        eax,[ebp-18]
 005BE1F2    call       @LStrClr
 005BE1F7    ret
<005BE1F8    jmp        @HandleFinally
<005BE1FD    jmp        005BE1EF
 005BE1FF    pop        ebx
 005BE200    mov        esp,ebp
 005BE202    pop        ebp
 005BE203    ret
*}
//end;

//005BE204
//procedure sub_005BE204(?:TRaveCalcText; ?:TRaveCalcText; ?:?);
//begin
{*
 005BE204    add        esp,0FFFFFFF4
 005BE207    test       ecx,ecx
>005BE209    je         005BE222
 005BE20B    mov        edx,dword ptr [ecx]
 005BE20D    mov        dword ptr [esp],edx
 005BE210    mov        edx,dword ptr [ecx+4]
 005BE213    mov        dword ptr [esp+4],edx
 005BE217    mov        dx,word ptr [ecx+8]
 005BE21B    mov        word ptr [esp+8],dx
>005BE220    jmp        005BE230
 005BE222    xor        edx,edx
 005BE224    mov        dword ptr [esp],edx
 005BE227    mov        dword ptr [esp+4],edx
 005BE22B    mov        word ptr [esp+8],dx
 005BE230    mov        dx,word ptr [esp+8]
 005BE235    push       edx
 005BE236    push       dword ptr [esp+8]
 005BE23A    push       dword ptr [esp+8]
 005BE23E    lea        edx,[eax+108]; TRaveCalcText.?f108:dword
 005BE244    lea        ecx,[eax+110]; TRaveCalcText.?f110:dword
 005BE24A    mov        al,byte ptr [eax+12C]; TRaveCalcText.CalcType:TRaveCalcType
 005BE250    xchg       eax,ecx
 005BE251    call       005BDC28
 005BE256    add        esp,0C
 005BE259    ret
*}
//end;

//005BE25C
//procedure sub_005BE25C(?:?);
//begin
{*
 005BE25C    push       ebx
 005BE25D    push       esi
 005BE25E    mov        esi,edx
 005BE260    mov        ebx,eax
 005BE262    mov        eax,ebx
 005BE264    mov        edx,dword ptr [eax]
 005BE266    call       dword ptr [edx+0B8]; TRaveCalcText.sub_005AAA88
 005BE26C    test       al,al
>005BE26E    je         005BE28D
 005BE270    mov        edx,esi
 005BE272    mov        eax,ebx
 005BE274    call       005B1F38
 005BE279    cmp        byte ptr [ebx+12D],0; TRaveCalcText.RunningTotal:Boolean
>005BE280    jne        005BE28D
 005BE282    xor        ecx,ecx
 005BE284    mov        edx,ebx
 005BE286    mov        eax,ebx
 005BE288    call       005BE204
 005BE28D    pop        esi
 005BE28E    pop        ebx
 005BE28F    ret
*}
//end;

//005BE290
//function sub_005BE290():?;
//begin
{*
 005BE290    xor        eax,eax
 005BE292    ret
*}
//end;

//005BE294
//procedure sub_005BE294(?:?);
//begin
{*
 005BE294    push       ebp
 005BE295    mov        ebp,esp
 005BE297    push       0
 005BE299    push       ebx
 005BE29A    push       esi
 005BE29B    mov        esi,edx
 005BE29D    mov        ebx,eax
 005BE29F    xor        eax,eax
 005BE2A1    push       ebp
 005BE2A2    push       5BE339
 005BE2A7    push       dword ptr fs:[eax]
 005BE2AA    mov        dword ptr fs:[eax],esp
 005BE2AD    cmp        dword ptr [ebx+5C],0; TRaveCalcVariable.?f5C:String
>005BE2B1    jne        005BE2B9
 005BE2B3    cmp        dword ptr [ebx+60],0; TRaveCalcVariable.?f60:String
>005BE2B7    je         005BE323
 005BE2B9    cmp        byte ptr [ebx+68],0; TRaveCalcVariable.?f68:byte
>005BE2BD    jne        005BE2DD
 005BE2BF    mov        eax,ebx
 005BE2C1    mov        edx,dword ptr [eax]
 005BE2C3    call       dword ptr [edx+0D4]; @AbstractError
 005BE2C9    add        esp,0FFFFFFF4
 005BE2CC    fstp       tbyte ptr [esp]
 005BE2CF    wait
 005BE2D0    lea        edx,[ebp-4]
 005BE2D3    mov        eax,dword ptr [ebx+64]; TRaveCalcVariable.?f64:String
 005BE2D6    call       FormatFloat
>005BE2DB    jmp        005BE2F9
 005BE2DD    mov        eax,ebx
 005BE2DF    mov        edx,dword ptr [eax]
 005BE2E1    call       dword ptr [edx+0D4]; @AbstractError
 005BE2E7    add        esp,0FFFFFFF8
 005BE2EA    fstp       qword ptr [esp]
 005BE2ED    wait
 005BE2EE    lea        edx,[ebp-4]
 005BE2F1    mov        eax,dword ptr [ebx+64]; TRaveCalcVariable.?f64:String
 005BE2F4    call       FormatDateTime
 005BE2F9    cmp        dword ptr [ebx+5C],0; TRaveCalcVariable.?f5C:String
>005BE2FD    je         005BE30D
 005BE2FF    mov        ecx,dword ptr [ebp-4]
 005BE302    mov        edx,dword ptr [ebx+5C]; TRaveCalcVariable.?f5C:String
 005BE305    mov        eax,dword ptr [ebx+48]; TRaveCalcVariable.?f48:TRaveComponent
 005BE308    call       005A4DB8
 005BE30D    cmp        dword ptr [ebx+60],0; TRaveCalcVariable.?f60:String
>005BE311    je         005BE323
 005BE313    mov        ecx,dword ptr [ebp-4]
 005BE316    mov        edx,dword ptr [ebx+60]; TRaveCalcVariable.?f60:String
 005BE319    mov        eax,esi
 005BE31B    mov        ebx,dword ptr [eax]
 005BE31D    call       dword ptr [ebx+144]
 005BE323    xor        eax,eax
 005BE325    pop        edx
 005BE326    pop        ecx
 005BE327    pop        ecx
 005BE328    mov        dword ptr fs:[eax],edx
 005BE32B    push       5BE340
 005BE330    lea        eax,[ebp-4]
 005BE333    call       @LStrClr
 005BE338    ret
<005BE339    jmp        @HandleFinally
<005BE33E    jmp        005BE330
 005BE340    pop        esi
 005BE341    pop        ebx
 005BE342    pop        ecx
 005BE343    pop        ebp
 005BE344    ret
*}
//end;

//005BE348
constructor TRaveCalcOp.Create(AOwner:TComponent);
begin
{*
 005BE348    push       ebx
 005BE349    push       esi
 005BE34A    test       dl,dl
>005BE34C    je         005BE356
 005BE34E    add        esp,0FFFFFFF0
 005BE351    call       @ClassCreate
 005BE356    mov        ebx,edx
 005BE358    mov        esi,eax
 005BE35A    xor        edx,edx
 005BE35C    mov        eax,esi
 005BE35E    call       TRaveComponent.Create
 005BE363    mov        eax,esi
 005BE365    test       bl,bl
>005BE367    je         005BE378
 005BE369    call       @AfterConstruction
 005BE36E    pop        dword ptr fs:[0]
 005BE375    add        esp,0C
 005BE378    mov        eax,esi
 005BE37A    pop        esi
 005BE37B    pop        ebx
 005BE37C    ret
*}
end;

//005BE380
destructor TRaveCalcOp.Destroy;
begin
{*
 005BE380    push       ebx
 005BE381    push       esi
 005BE382    call       @BeforeDestruction
 005BE387    mov        ebx,edx
 005BE389    mov        esi,eax
 005BE38B    mov        edx,ebx
 005BE38D    and        dl,0FC
 005BE390    mov        eax,esi
 005BE392    call       TRaveComponent.Destroy
 005BE397    test       bl,bl
>005BE399    jle        005BE3A2
 005BE39B    mov        eax,esi
 005BE39D    call       @ClassDestroy
 005BE3A2    pop        esi
 005BE3A3    pop        ebx
 005BE3A4    ret
*}
end;

//005BE3A8
//function sub_005BE3A8:?;
//begin
{*
 005BE3A8    push       ebx
 005BE3A9    push       esi
 005BE3AA    push       edi
 005BE3AB    mov        ebx,eax
 005BE3AD    mov        esi,dword ptr [ebx+70]; TRaveCalcOp.Src1CalcVar:TRaveCalcVariable
 005BE3B0    test       esi,esi
>005BE3B2    je         005BE3C2
 005BE3B4    mov        eax,esi
 005BE3B6    mov        edx,dword ptr [eax]
 005BE3B8    call       dword ptr [edx+0D8]; TRaveCalcVariable.sub_005BE290
 005BE3BE    test       al,al
>005BE3C0    jne        005BE3DE
 005BE3C2    mov        edi,dword ptr [ebx+8C]; TRaveCalcOp.Src2CalcVar:TRaveCalcVariable
 005BE3C8    test       edi,edi
>005BE3CA    je         005BE3DA
 005BE3CC    mov        eax,edi
 005BE3CE    mov        edx,dword ptr [eax]
 005BE3D0    call       dword ptr [edx+0D8]; TRaveCalcVariable.sub_005BE290
 005BE3D6    test       al,al
>005BE3D8    jne        005BE3DE
 005BE3DA    xor        eax,eax
>005BE3DC    jmp        005BE3E0
 005BE3DE    mov        al,1
 005BE3E0    pop        edi
 005BE3E1    pop        esi
 005BE3E2    pop        ebx
 005BE3E3    ret
*}
//end;

//005BE3E4
procedure sub_005BE3E4;
begin
{*
 005BE3E4    push       ebp
 005BE3E5    mov        ebp,esp
 005BE3E7    add        esp,0FFFFFFC4
 005BE3EA    push       ebx
 005BE3EB    push       esi
 005BE3EC    push       edi
 005BE3ED    mov        dword ptr [ebp-4],eax
 005BE3F0    mov        eax,dword ptr [ebp-4]
 005BE3F3    mov        eax,dword ptr [eax+74]; TRaveCalcOp.?f74:TRaveFieldName
 005BE3F6    push       eax
 005BE3F7    mov        eax,dword ptr [ebp-4]
 005BE3FA    mov        dx,word ptr [eax+88]; TRaveCalcOp.?f88:word
 005BE401    push       edx
 005BE402    push       dword ptr [eax+84]; TRaveCalcOp.?f84:dword
 005BE408    push       dword ptr [eax+80]; TRaveCalcOp.Src1Value:Extended
 005BE40E    mov        eax,dword ptr [ebp-4]
 005BE411    mov        al,byte ptr [eax+8A]; TRaveCalcOp.Src1Function:TRaveCalcFunction
 005BE417    push       eax
 005BE418    lea        eax,[ebp-31]
 005BE41B    push       eax
 005BE41C    mov        eax,dword ptr [ebp-4]
 005BE41F    mov        ecx,dword ptr [eax+78]; TRaveCalcOp.Src1DataView:TRaveBaseDataView
 005BE422    mov        eax,dword ptr [ebp-4]
 005BE425    mov        edx,dword ptr [eax+70]; TRaveCalcOp.Src1CalcVar:TRaveCalcVariable
 005BE428    mov        eax,dword ptr [ebp-4]
 005BE42B    call       005BD498
 005BE430    fstp       tbyte ptr [ebp-20]
 005BE433    wait
 005BE434    mov        eax,dword ptr [ebp-4]
 005BE437    mov        eax,dword ptr [eax+90]; TRaveCalcOp.?f90:TRaveFieldName
 005BE43D    push       eax
 005BE43E    mov        eax,dword ptr [ebp-4]
 005BE441    mov        dx,word ptr [eax+0A0]; TRaveCalcOp.?fA0:word
 005BE448    push       edx
 005BE449    push       dword ptr [eax+9C]; TRaveCalcOp.?f9C:dword
 005BE44F    push       dword ptr [eax+98]; TRaveCalcOp.Src2Value:Extended
 005BE455    mov        eax,dword ptr [ebp-4]
 005BE458    mov        al,byte ptr [eax+0A2]; TRaveCalcOp.Src2Function:TRaveCalcFunction
 005BE45E    push       eax
 005BE45F    lea        eax,[ebp-31]
 005BE462    push       eax
 005BE463    mov        eax,dword ptr [ebp-4]
 005BE466    mov        ecx,dword ptr [eax+94]; TRaveCalcOp.Src2DataView:TRaveBaseDataView
 005BE46C    mov        eax,dword ptr [ebp-4]
 005BE46F    mov        edx,dword ptr [eax+8C]; TRaveCalcOp.Src2CalcVar:TRaveCalcVariable
 005BE475    mov        eax,dword ptr [ebp-4]
 005BE478    call       005BD498
 005BE47D    fstp       tbyte ptr [ebp-30]
 005BE480    wait
 005BE481    xor        eax,eax
 005BE483    push       ebp
 005BE484    push       5BE62E
 005BE489    push       dword ptr fs:[eax]
 005BE48C    mov        dword ptr fs:[eax],esp
 005BE48F    mov        eax,dword ptr [ebp-4]
 005BE492    movzx      eax,byte ptr [eax+0A3]; TRaveCalcOp.Operator:TRaveCalcOperator
 005BE499    cmp        eax,8
>005BE49C    ja         005BE5FB
 005BE4A2    jmp        dword ptr [eax*4+5BE4A9]
 005BE4A2    dd         5BE4CD
 005BE4A2    dd         5BE4DE
 005BE4A2    dd         5BE4EF
 005BE4A2    dd         5BE500
 005BE4A2    dd         5BE530
 005BE4A2    dd         5BE559
 005BE4A2    dd         5BE575
 005BE4A2    dd         5BE5AE
 005BE4A2    dd         5BE5E7
 005BE4CD    fld        tbyte ptr [ebp-20]
 005BE4D0    fld        tbyte ptr [ebp-30]
 005BE4D3    faddp      st(1),st
 005BE4D5    fstp       tbyte ptr [ebp-10]
 005BE4D8    wait
>005BE4D9    jmp        005BE607
 005BE4DE    fld        tbyte ptr [ebp-20]
 005BE4E1    fld        tbyte ptr [ebp-30]
 005BE4E4    fsubp      st(1),st
 005BE4E6    fstp       tbyte ptr [ebp-10]
 005BE4E9    wait
>005BE4EA    jmp        005BE607
 005BE4EF    fld        tbyte ptr [ebp-20]
 005BE4F2    fld        tbyte ptr [ebp-30]
 005BE4F5    fmulp      st(1),st
 005BE4F7    fstp       tbyte ptr [ebp-10]
 005BE4FA    wait
>005BE4FB    jmp        005BE607
 005BE500    fld        tbyte ptr [ebp-30]
 005BE503    fcomp      dword ptr ds:[5BE68C]; 0:Single
 005BE509    fnstsw     al
 005BE50B    sahf
>005BE50C    jne        005BE51F
 005BE50E    xor        eax,eax
 005BE510    mov        dword ptr [ebp-10],eax
 005BE513    mov        dword ptr [ebp-0C],eax
 005BE516    mov        word ptr [ebp-8],ax
>005BE51A    jmp        005BE607
 005BE51F    fld        tbyte ptr [ebp-20]
 005BE522    fld        tbyte ptr [ebp-30]
 005BE525    fdivp      st(1),st
 005BE527    fstp       tbyte ptr [ebp-10]
 005BE52A    wait
>005BE52B    jmp        005BE607
 005BE530    fld        tbyte ptr [ebp-30]
 005BE533    call       @TRUNC
 005BE538    push       edx
 005BE539    push       eax
 005BE53A    fld        tbyte ptr [ebp-20]
 005BE53D    call       @TRUNC
 005BE542    call       @_llmod
 005BE547    mov        dword ptr [ebp-3C],eax
 005BE54A    mov        dword ptr [ebp-38],edx
 005BE54D    fild       qword ptr [ebp-3C]
 005BE550    fstp       tbyte ptr [ebp-10]
 005BE553    wait
>005BE554    jmp        005BE607
 005BE559    fld        tbyte ptr [ebp-20]
 005BE55C    fldln2
 005BE55E    fxch       st(1)
 005BE560    fyl2x
 005BE562    fld        tbyte ptr [ebp-30]
 005BE565    fmulp      st(1),st
 005BE567    call       @EXP
 005BE56C    fstp       tbyte ptr [ebp-10]
 005BE56F    wait
>005BE570    jmp        005BE607
 005BE575    fld        tbyte ptr [ebp-20]
 005BE578    fld        tbyte ptr [ebp-30]
 005BE57B    fcompp
 005BE57D    fnstsw     al
 005BE57F    sahf
>005BE580    jae        005BE598
 005BE582    mov        eax,dword ptr [ebp-20]
 005BE585    mov        dword ptr [ebp-10],eax
 005BE588    mov        eax,dword ptr [ebp-1C]
 005BE58B    mov        dword ptr [ebp-0C],eax
 005BE58E    mov        ax,word ptr [ebp-18]
 005BE592    mov        word ptr [ebp-8],ax
>005BE596    jmp        005BE607
 005BE598    mov        eax,dword ptr [ebp-30]
 005BE59B    mov        dword ptr [ebp-10],eax
 005BE59E    mov        eax,dword ptr [ebp-2C]
 005BE5A1    mov        dword ptr [ebp-0C],eax
 005BE5A4    mov        ax,word ptr [ebp-28]
 005BE5A8    mov        word ptr [ebp-8],ax
>005BE5AC    jmp        005BE607
 005BE5AE    fld        tbyte ptr [ebp-20]
 005BE5B1    fld        tbyte ptr [ebp-30]
 005BE5B4    fcompp
 005BE5B6    fnstsw     al
 005BE5B8    sahf
>005BE5B9    jbe        005BE5D1
 005BE5BB    mov        eax,dword ptr [ebp-20]
 005BE5BE    mov        dword ptr [ebp-10],eax
 005BE5C1    mov        eax,dword ptr [ebp-1C]
 005BE5C4    mov        dword ptr [ebp-0C],eax
 005BE5C7    mov        ax,word ptr [ebp-18]
 005BE5CB    mov        word ptr [ebp-8],ax
>005BE5CF    jmp        005BE607
 005BE5D1    mov        eax,dword ptr [ebp-30]
 005BE5D4    mov        dword ptr [ebp-10],eax
 005BE5D7    mov        eax,dword ptr [ebp-2C]
 005BE5DA    mov        dword ptr [ebp-0C],eax
 005BE5DD    mov        ax,word ptr [ebp-28]
 005BE5E1    mov        word ptr [ebp-8],ax
>005BE5E5    jmp        005BE607
 005BE5E7    fld        tbyte ptr [ebp-20]
 005BE5EA    fld        tbyte ptr [ebp-30]
 005BE5ED    faddp      st(1),st
 005BE5EF    fdiv       dword ptr ds:[5BE690]; 2:Single
 005BE5F5    fstp       tbyte ptr [ebp-10]
 005BE5F8    wait
>005BE5F9    jmp        005BE607
 005BE5FB    xor        eax,eax
 005BE5FD    mov        dword ptr [ebp-10],eax
 005BE600    mov        dword ptr [ebp-0C],eax
 005BE603    mov        word ptr [ebp-8],ax
 005BE607    mov        ax,word ptr [ebp-8]
 005BE60B    push       eax
 005BE60C    push       dword ptr [ebp-0C]
 005BE60F    push       dword ptr [ebp-10]
 005BE612    mov        eax,dword ptr [ebp-4]
 005BE615    mov        al,byte ptr [eax+0A4]; TRaveCalcOp.ResultFunction:TRaveCalcFunction
 005BE61B    call       005BD1A0
 005BE620    fstp       tbyte ptr [ebp-10]
 005BE623    wait
 005BE624    xor        eax,eax
 005BE626    pop        edx
 005BE627    pop        ecx
 005BE628    pop        ecx
 005BE629    mov        dword ptr fs:[eax],edx
>005BE62C    jmp        005BE644
<005BE62E    jmp        @HandleAnyException
 005BE633    xor        eax,eax
 005BE635    mov        dword ptr [ebp-10],eax
 005BE638    mov        dword ptr [ebp-0C],eax
 005BE63B    mov        word ptr [ebp-8],ax
 005BE63F    call       @DoneExcept
 005BE644    mov        eax,dword ptr [ebp-4]
 005BE647    mov        eax,dword ptr [eax+6C]; TRaveCalcOp.?f6C:dword
 005BE64A    test       eax,eax
>005BE64C    je         005BE681
 005BE64E    mov        edx,dword ptr [ebp-10]
 005BE651    mov        dword ptr [eax+20],edx
 005BE654    mov        edx,dword ptr [ebp-0C]
 005BE657    mov        dword ptr [eax+24],edx
 005BE65A    mov        dx,word ptr [ebp-8]
 005BE65E    mov        word ptr [eax+28],dx
 005BE662    mov        edx,dword ptr [eax]
 005BE664    call       dword ptr [edx+0C]
 005BE667    mov        eax,dword ptr [ebp-4]
 005BE66A    mov        eax,dword ptr [eax+6C]; TRaveCalcOp.?f6C:dword
 005BE66D    mov        edx,dword ptr [eax+20]
 005BE670    mov        dword ptr [ebp-10],edx
 005BE673    mov        edx,dword ptr [eax+24]
 005BE676    mov        dword ptr [ebp-0C],edx
 005BE679    mov        dx,word ptr [eax+28]
 005BE67D    mov        word ptr [ebp-8],dx
 005BE681    fld        tbyte ptr [ebp-10]
 005BE684    pop        edi
 005BE685    pop        esi
 005BE686    pop        ebx
 005BE687    mov        esp,ebp
 005BE689    pop        ebp
 005BE68A    ret
*}
end;

//005BE694
//procedure sub_005BE694(?:?; ?:?);
//begin
{*
 005BE694    push       ebx
 005BE695    push       esi
 005BE696    push       edi
 005BE697    mov        edi,ecx
 005BE699    mov        esi,edx
 005BE69B    mov        ebx,eax
 005BE69D    mov        ecx,edi
 005BE69F    mov        edx,esi
 005BE6A1    mov        eax,ebx
 005BE6A3    call       005A85B8
 005BE6A8    mov        eax,dword ptr [ebx+70]; TRaveCalcOp.Src1CalcVar:TRaveCalcVariable
 005BE6AB    test       eax,eax
>005BE6AD    je         005BE6C3
 005BE6AF    cmp        esi,eax
>005BE6B1    jne        005BE6C3
 005BE6B3    mov        eax,edi
 005BE6B5    mov        edx,dword ptr ds:[5BC0EC]; TRaveCalcVariable
 005BE6BB    call       @AsClass
 005BE6C0    mov        dword ptr [ebx+70],eax; TRaveCalcOp.Src1CalcVar:TRaveCalcVariable
 005BE6C3    mov        eax,dword ptr [ebx+78]; TRaveCalcOp.Src1DataView:TRaveBaseDataView
 005BE6C6    test       eax,eax
>005BE6C8    je         005BE6DE
 005BE6CA    cmp        esi,eax
>005BE6CC    jne        005BE6DE
 005BE6CE    mov        eax,edi
 005BE6D0    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005BE6D6    call       @AsClass
 005BE6DB    mov        dword ptr [ebx+78],eax; TRaveCalcOp.Src1DataView:TRaveBaseDataView
 005BE6DE    mov        eax,dword ptr [ebx+8C]; TRaveCalcOp.Src2CalcVar:TRaveCalcVariable
 005BE6E4    test       eax,eax
>005BE6E6    je         005BE6FF
 005BE6E8    cmp        esi,eax
>005BE6EA    jne        005BE6FF
 005BE6EC    mov        eax,edi
 005BE6EE    mov        edx,dword ptr ds:[5BC0EC]; TRaveCalcVariable
 005BE6F4    call       @AsClass
 005BE6F9    mov        dword ptr [ebx+8C],eax; TRaveCalcOp.Src2CalcVar:TRaveCalcVariable
 005BE6FF    mov        eax,dword ptr [ebx+94]; TRaveCalcOp.Src2DataView:TRaveBaseDataView
 005BE705    test       eax,eax
>005BE707    je         005BE720
 005BE709    cmp        esi,eax
>005BE70B    jne        005BE720
 005BE70D    mov        eax,edi
 005BE70F    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005BE715    call       @AsClass
 005BE71A    mov        dword ptr [ebx+94],eax; TRaveCalcOp.Src2DataView:TRaveBaseDataView
 005BE720    pop        edi
 005BE721    pop        esi
 005BE722    pop        ebx
 005BE723    ret
*}
//end;

//005BE724
constructor TRaveCalcTotal.Create(AOwner:TComponent);
begin
{*
 005BE724    push       ebx
 005BE725    push       esi
 005BE726    test       dl,dl
>005BE728    je         005BE732
 005BE72A    add        esp,0FFFFFFF0
 005BE72D    call       @ClassCreate
 005BE732    mov        ebx,edx
 005BE734    mov        esi,eax
 005BE736    xor        edx,edx
 005BE738    mov        eax,esi
 005BE73A    call       TRaveComponent.Create
 005BE73F    mov        byte ptr [esi+98],1; TRaveCalcTotal.CalcType:TRaveCalcType
 005BE746    mov        byte ptr [esi+99],1; TRaveCalcTotal.CountBlanks:Boolean
 005BE74D    mov        eax,esi
 005BE74F    test       bl,bl
>005BE751    je         005BE762
 005BE753    call       @AfterConstruction
 005BE758    pop        dword ptr fs:[0]
 005BE75F    add        esp,0C
 005BE762    mov        eax,esi
 005BE764    pop        esi
 005BE765    pop        ebx
 005BE766    ret
*}
end;

//005BE768
destructor TRaveCalcTotal.Destroy;
begin
{*
 005BE768    push       ebx
 005BE769    push       esi
 005BE76A    call       @BeforeDestruction
 005BE76F    mov        ebx,edx
 005BE771    mov        esi,eax
 005BE773    mov        edx,ebx
 005BE775    and        dl,0FC
 005BE778    mov        eax,esi
 005BE77A    call       TRaveComponent.Destroy
 005BE77F    test       bl,bl
>005BE781    jle        005BE78A
 005BE783    mov        eax,esi
 005BE785    call       @ClassDestroy
 005BE78A    pop        esi
 005BE78B    pop        ebx
 005BE78C    ret
*}
end;

//005BE790
procedure sub_005BE790;
begin
{*
 005BE790    push       ebx
 005BE791    add        esp,0FFFFFFF4
 005BE794    mov        ebx,eax
 005BE796    mov        ax,word ptr [ebx+80]; TRaveCalcTotal.?f80:word
 005BE79D    push       eax
 005BE79E    push       dword ptr [ebx+7C]; TRaveCalcTotal.?f7C:dword
 005BE7A1    push       dword ptr [ebx+78]; TRaveCalcTotal.?f78:dword
 005BE7A4    mov        dl,byte ptr [ebx+98]; TRaveCalcTotal.CalcType:TRaveCalcType
 005BE7AA    mov        eax,dword ptr [ebx+70]; TRaveCalcTotal.?f70:dword
 005BE7AD    call       005BDA54
 005BE7B2    fstp       tbyte ptr [esp]
 005BE7B5    wait
 005BE7B6    mov        eax,dword ptr [ebx+6C]; TRaveCalcTotal.?f6C:dword
 005BE7B9    test       eax,eax
>005BE7BB    je         005BE7F1
 005BE7BD    mov        edx,dword ptr [esp]
 005BE7C0    mov        dword ptr [eax+20],edx
 005BE7C3    mov        edx,dword ptr [esp+4]
 005BE7C7    mov        dword ptr [eax+24],edx
 005BE7CA    mov        dx,word ptr [esp+8]
 005BE7CF    mov        word ptr [eax+28],dx
 005BE7D3    mov        edx,dword ptr [eax]
 005BE7D5    call       dword ptr [edx+0C]
 005BE7D8    mov        eax,dword ptr [ebx+6C]; TRaveCalcTotal.?f6C:dword
 005BE7DB    mov        edx,dword ptr [eax+20]
 005BE7DE    mov        dword ptr [esp],edx
 005BE7E1    mov        edx,dword ptr [eax+24]
 005BE7E4    mov        dword ptr [esp+4],edx
 005BE7E8    mov        dx,word ptr [eax+28]
 005BE7EC    mov        word ptr [esp+8],dx
 005BE7F1    fld        tbyte ptr [esp]
 005BE7F4    add        esp,0C
 005BE7F7    pop        ebx
 005BE7F8    ret
*}
end;

//005BE7FC
procedure sub_005BE7FC;
begin
{*
 005BE7FC    push       ebx
 005BE7FD    mov        ebx,eax
 005BE7FF    xor        ecx,ecx
 005BE801    mov        edx,ebx
 005BE803    mov        eax,ebx
 005BE805    call       005BE934
 005BE80A    mov        eax,ebx
 005BE80C    call       005A8800
 005BE811    pop        ebx
 005BE812    ret
*}
end;

//005BE814
//procedure sub_005BE814(?:?; ?:?);
//begin
{*
 005BE814    push       ebp
 005BE815    mov        ebp,esp
 005BE817    add        esp,0FFFFFFE8
 005BE81A    push       ebx
 005BE81B    push       esi
 005BE81C    push       edi
 005BE81D    xor        ebx,ebx
 005BE81F    mov        dword ptr [ebp-18],ebx
 005BE822    mov        edi,edx
 005BE824    mov        ebx,eax
 005BE826    xor        eax,eax
 005BE828    push       ebp
 005BE829    push       5BE926
 005BE82E    push       dword ptr fs:[eax]
 005BE831    mov        dword ptr fs:[eax],esp
 005BE834    mov        esi,dword ptr [ebx+84]
 005BE83A    test       esi,esi
>005BE83C    je         005BE850
 005BE83E    mov        eax,esi
 005BE840    mov        edx,dword ptr [eax]
 005BE842    call       dword ptr [edx+0D8]
 005BE848    test       al,al
>005BE84A    jne        005BE910
 005BE850    mov        eax,dword ptr [ebx+8C]
 005BE856    push       eax
 005BE857    push       0
 005BE859    push       0
 005BE85B    push       0
 005BE85D    push       0
 005BE85F    lea        eax,[ebp-11]
 005BE862    push       eax
 005BE863    mov        ecx,dword ptr [ebx+88]
 005BE869    mov        edx,dword ptr [ebx+84]
 005BE86F    mov        eax,ebx
 005BE871    call       005BD498
 005BE876    fstp       tbyte ptr [ebp-10]
 005BE879    wait
 005BE87A    mov        eax,dword ptr [ebx+0A4]
 005BE880    test       eax,eax
>005BE882    je         005BE8B7
 005BE884    mov        edx,dword ptr [ebp-10]
 005BE887    mov        dword ptr [eax+20],edx
 005BE88A    mov        edx,dword ptr [ebp-0C]
 005BE88D    mov        dword ptr [eax+24],edx
 005BE890    mov        dx,word ptr [ebp-8]
 005BE894    mov        word ptr [eax+28],dx
 005BE898    mov        edx,dword ptr [eax]
 005BE89A    call       dword ptr [edx+0C]
 005BE89D    mov        eax,dword ptr [ebx+0A4]
 005BE8A3    mov        edx,dword ptr [eax+20]
 005BE8A6    mov        dword ptr [ebp-10],edx
 005BE8A9    mov        edx,dword ptr [eax+24]
 005BE8AC    mov        dword ptr [ebp-0C],edx
 005BE8AF    mov        dx,word ptr [eax+28]
 005BE8B3    mov        word ptr [ebp-8],dx
 005BE8B7    cmp        byte ptr [ebp-11],0
>005BE8BB    jne        005BE8CB
 005BE8BD    mov        al,byte ptr [ebx+98]
 005BE8C3    test       al,al
>005BE8C5    je         005BE910
 005BE8C7    sub        al,4
>005BE8C9    je         005BE910
 005BE8CB    mov        al,byte ptr [ebx+99]
 005BE8D1    push       eax
 005BE8D2    mov        eax,dword ptr [ebx+9C]
 005BE8D8    push       eax
 005BE8D9    mov        ax,word ptr [ebp-8]
 005BE8DD    push       eax
 005BE8DE    push       dword ptr [ebp-0C]
 005BE8E1    push       dword ptr [ebp-10]
 005BE8E4    lea        eax,[ebp-18]
 005BE8E7    push       eax
 005BE8E8    mov        ecx,dword ptr [ebx+8C]
 005BE8EE    mov        edx,dword ptr [ebx+88]
 005BE8F4    mov        eax,edi
 005BE8F6    call       005A02E4
 005BE8FB    mov        eax,dword ptr [ebp-18]
 005BE8FE    push       eax
 005BE8FF    lea        edx,[ebx+70]
 005BE902    lea        eax,[ebx+78]
 005BE905    mov        cl,byte ptr [ebx+98]
 005BE90B    call       005BDAF0
 005BE910    xor        eax,eax
 005BE912    pop        edx
 005BE913    pop        ecx
 005BE914    pop        ecx
 005BE915    mov        dword ptr fs:[eax],edx
 005BE918    push       5BE92D
 005BE91D    lea        eax,[ebp-18]
 005BE920    call       @LStrClr
 005BE925    ret
<005BE926    jmp        @HandleFinally
<005BE92B    jmp        005BE91D
 005BE92D    pop        edi
 005BE92E    pop        esi
 005BE92F    pop        ebx
 005BE930    mov        esp,ebp
 005BE932    pop        ebp
 005BE933    ret
*}
//end;

//005BE934
//procedure sub_005BE934(?:TRaveCalcTotal; ?:TRaveCalcTotal; ?:?);
//begin
{*
 005BE934    add        esp,0FFFFFFF4
 005BE937    test       ecx,ecx
>005BE939    je         005BE952
 005BE93B    mov        edx,dword ptr [ecx]
 005BE93D    mov        dword ptr [esp],edx
 005BE940    mov        edx,dword ptr [ecx+4]
 005BE943    mov        dword ptr [esp+4],edx
 005BE947    mov        dx,word ptr [ecx+8]
 005BE94B    mov        word ptr [esp+8],dx
>005BE950    jmp        005BE960
 005BE952    xor        edx,edx
 005BE954    mov        dword ptr [esp],edx
 005BE957    mov        dword ptr [esp+4],edx
 005BE95B    mov        word ptr [esp+8],dx
 005BE960    mov        dx,word ptr [esp+8]
 005BE965    push       edx
 005BE966    push       dword ptr [esp+8]
 005BE96A    push       dword ptr [esp+8]
 005BE96E    lea        edx,[eax+70]; TRaveCalcTotal.?f70:dword
 005BE971    lea        ecx,[eax+78]; TRaveCalcTotal.?f78:dword
 005BE974    mov        al,byte ptr [eax+98]; TRaveCalcTotal.CalcType:TRaveCalcType
 005BE97A    xchg       eax,ecx
 005BE97B    call       005BDC28
 005BE980    add        esp,0C
 005BE983    ret
*}
//end;

//005BE984
//procedure sub_005BE984(?:?; ?:?);
//begin
{*
 005BE984    push       ebx
 005BE985    push       esi
 005BE986    push       edi
 005BE987    mov        edi,ecx
 005BE989    mov        esi,edx
 005BE98B    mov        ebx,eax
 005BE98D    mov        ecx,edi
 005BE98F    mov        edx,esi
 005BE991    mov        eax,ebx
 005BE993    call       005A85B8
 005BE998    mov        eax,dword ptr [ebx+84]; TRaveCalcTotal.CalcVar:TRaveCalcVariable
 005BE99E    test       eax,eax
>005BE9A0    je         005BE9B9
 005BE9A2    cmp        esi,eax
>005BE9A4    jne        005BE9B9
 005BE9A6    mov        eax,edi
 005BE9A8    mov        edx,dword ptr ds:[5BC0EC]; TRaveCalcVariable
 005BE9AE    call       @AsClass
 005BE9B3    mov        dword ptr [ebx+84],eax; TRaveCalcTotal.CalcVar:TRaveCalcVariable
 005BE9B9    mov        eax,dword ptr [ebx+88]; TRaveCalcTotal.DataView:TRaveBaseDataView
 005BE9BF    test       eax,eax
>005BE9C1    je         005BE9DA
 005BE9C3    cmp        esi,eax
>005BE9C5    jne        005BE9DA
 005BE9C7    mov        eax,edi
 005BE9C9    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005BE9CF    call       @AsClass
 005BE9D4    mov        dword ptr [ebx+88],eax; TRaveCalcTotal.DataView:TRaveBaseDataView
 005BE9DA    mov        eax,dword ptr [ebx+90]; TRaveCalcTotal.Controller:TRaveComponent
 005BE9E0    test       eax,eax
>005BE9E2    je         005BE9F1
 005BE9E4    cmp        esi,eax
>005BE9E6    jne        005BE9F1
 005BE9E8    mov        edx,edi
 005BE9EA    mov        eax,ebx
 005BE9EC    call       TRaveCalcTotal.SetController
 005BE9F1    mov        eax,dword ptr [ebx+94]; TRaveCalcTotal.Initializer:TRaveComponent
 005BE9F7    test       eax,eax
>005BE9F9    je         005BEA08
 005BE9FB    cmp        esi,eax
>005BE9FD    jne        005BEA08
 005BE9FF    mov        edx,edi
 005BEA01    mov        eax,ebx
 005BEA03    call       TRaveCalcTotal.SetInitializer
 005BEA08    pop        edi
 005BEA09    pop        esi
 005BEA0A    pop        ebx
 005BEA0B    ret
*}
//end;

//005BEA0C
//procedure TRaveCalcTotal.SetController(Self:TRaveCalcTotal; ?:?);
//begin
{*
 005BEA0C    push       ebx
 005BEA0D    push       esi
 005BEA0E    mov        esi,edx
 005BEA10    mov        ebx,eax
 005BEA12    mov        eax,dword ptr [ebx+90]; TRaveCalcTotal.Controller:TRaveComponent
 005BEA18    cmp        esi,eax
>005BEA1A    je         005BEA52
 005BEA1C    test       eax,eax
>005BEA1E    je         005BEA33
 005BEA20    push       ebx
 005BEA21    push       5BE814; sub_005BE814
 005BEA26    mov        edx,5BEA60; 'CalcNewData'
 005BEA2B    mov        ecx,dword ptr [eax]
 005BEA2D    call       dword ptr [ecx+0CC]; TRaveComponent.sub_005A8760
 005BEA33    mov        eax,esi
 005BEA35    mov        dword ptr [ebx+90],eax; TRaveCalcTotal.Controller:TRaveComponent
 005BEA3B    test       eax,eax
>005BEA3D    je         005BEA52
 005BEA3F    push       ebx
 005BEA40    push       5BE814; sub_005BE814
 005BEA45    mov        edx,5BEA60; 'CalcNewData'
 005BEA4A    mov        ecx,dword ptr [eax]
 005BEA4C    call       dword ptr [ecx+0C8]
 005BEA52    pop        esi
 005BEA53    pop        ebx
 005BEA54    ret
*}
//end;

//005BEA6C
//procedure TRaveCalcTotal.SetInitializer(Self:TRaveCalcTotal; ?:?);
//begin
{*
 005BEA6C    push       ebx
 005BEA6D    push       esi
 005BEA6E    mov        esi,edx
 005BEA70    mov        ebx,eax
 005BEA72    mov        eax,dword ptr [ebx+94]; TRaveCalcTotal.Initializer:TRaveComponent
 005BEA78    cmp        esi,eax
>005BEA7A    je         005BEAB2
 005BEA7C    test       eax,eax
>005BEA7E    je         005BEA93
 005BEA80    push       ebx
 005BEA81    push       5BE934; sub_005BE934
 005BEA86    mov        edx,5BEAC0; 'CalcInitData'
 005BEA8B    mov        ecx,dword ptr [eax]
 005BEA8D    call       dword ptr [ecx+0CC]; TRaveComponent.sub_005A8760
 005BEA93    mov        eax,esi
 005BEA95    mov        dword ptr [ebx+94],eax; TRaveCalcTotal.Initializer:TRaveComponent
 005BEA9B    test       eax,eax
>005BEA9D    je         005BEAB2
 005BEA9F    push       ebx
 005BEAA0    push       5BE934; sub_005BE934
 005BEAA5    mov        edx,5BEAC0; 'CalcInitData'
 005BEAAA    mov        ecx,dword ptr [eax]
 005BEAAC    call       dword ptr [ecx+0C8]
 005BEAB2    pop        esi
 005BEAB3    pop        ebx
 005BEAB4    ret
*}
//end;

//005BEAD0
procedure sub_005BEAD0;
begin
{*
 005BEAD0    push       ebx
 005BEAD1    mov        ebx,eax
 005BEAD3    mov        eax,ebx
 005BEAD5    call       005BE294
 005BEADA    cmp        byte ptr [ebx+0A0],0; TRaveCalcTotal.RunningTotal:Boolean
>005BEAE1    jne        005BEAEE
 005BEAE3    xor        ecx,ecx
 005BEAE5    mov        edx,ebx
 005BEAE7    mov        eax,ebx
 005BEAE9    call       005BE934
 005BEAEE    pop        ebx
 005BEAEF    ret
*}
end;

//005BEAF0
constructor TRaveCalcController.Create(AOwner:TComponent);
begin
{*
 005BEAF0    push       ebx
 005BEAF1    push       esi
 005BEAF2    test       dl,dl
>005BEAF4    je         005BEAFE
 005BEAF6    add        esp,0FFFFFFF0
 005BEAF9    call       @ClassCreate
 005BEAFE    mov        ebx,edx
 005BEB00    mov        esi,eax
 005BEB02    xor        edx,edx
 005BEB04    mov        eax,esi
 005BEB06    call       TRaveComponent.Create
 005BEB0B    mov        eax,esi
 005BEB0D    test       bl,bl
>005BEB0F    je         005BEB20
 005BEB11    call       @AfterConstruction
 005BEB16    pop        dword ptr fs:[0]
 005BEB1D    add        esp,0C
 005BEB20    mov        eax,esi
 005BEB22    pop        esi
 005BEB23    pop        ebx
 005BEB24    ret
*}
end;

//005BEB28
destructor TRaveCalcController.Destroy;
begin
{*
 005BEB28    push       ebx
 005BEB29    push       esi
 005BEB2A    call       @BeforeDestruction
 005BEB2F    mov        ebx,edx
 005BEB31    mov        esi,eax
 005BEB33    lea        eax,[esi+5C]; TRaveCalcController.?f5C:TRaveMethodList
 005BEB36    call       FreeAndNil
 005BEB3B    lea        eax,[esi+60]; TRaveCalcController.?f60:TRaveMethodList
 005BEB3E    call       FreeAndNil
 005BEB43    mov        edx,ebx
 005BEB45    and        dl,0FC
 005BEB48    mov        eax,esi
 005BEB4A    call       TRaveComponent.Destroy
 005BEB4F    test       bl,bl
>005BEB51    jle        005BEB5A
 005BEB53    mov        eax,esi
 005BEB55    call       @ClassDestroy
 005BEB5A    pop        esi
 005BEB5B    pop        ebx
 005BEB5C    ret
*}
end;

//005BEB60
//procedure sub_005BEB60(?:?; ?:?; ?:?);
//begin
{*
 005BEB60    push       ebp
 005BEB61    mov        ebp,esp
 005BEB63    push       ecx
 005BEB64    push       ebx
 005BEB65    mov        dword ptr [ebp-4],edx
 005BEB68    mov        ebx,eax
 005BEB6A    mov        eax,dword ptr [ebp-4]
 005BEB6D    call       @LStrAddRef
 005BEB72    xor        eax,eax
 005BEB74    push       ebp
 005BEB75    push       5BEC0A
 005BEB7A    push       dword ptr fs:[eax]
 005BEB7D    mov        dword ptr fs:[eax],esp
 005BEB80    push       dword ptr [ebp+0C]
 005BEB83    push       dword ptr [ebp+8]
 005BEB86    mov        edx,dword ptr [ebp-4]
 005BEB89    mov        eax,ebx
 005BEB8B    call       005A8734
 005BEB90    mov        edx,5BEC20; 'CalcNewData'
 005BEB95    mov        eax,dword ptr [ebp-4]
 005BEB98    call       AnsiCompareText
 005BEB9D    test       eax,eax
>005BEB9F    jne        005BEBC3
 005BEBA1    cmp        dword ptr [ebx+5C],0; TRaveCalcController.?f5C:TRaveMethodList
>005BEBA5    jne        005BEBB6
 005BEBA7    mov        dl,1
 005BEBA9    mov        eax,[005A6818]; TRaveMethodList
 005BEBAE    call       TObject.Create; TRaveMethodList.Create
 005BEBB3    mov        dword ptr [ebx+5C],eax; TRaveCalcController.?f5C:TRaveMethodList
 005BEBB6    lea        edx,[ebp+8]
 005BEBB9    mov        eax,dword ptr [ebx+5C]; TRaveCalcController.?f5C:TRaveMethodList
 005BEBBC    call       005A81D0
>005BEBC1    jmp        005BEBF4
 005BEBC3    mov        edx,5BEC34; 'CalcInitData'
 005BEBC8    mov        eax,dword ptr [ebp-4]
 005BEBCB    call       AnsiCompareText
 005BEBD0    test       eax,eax
>005BEBD2    jne        005BEBF4
 005BEBD4    cmp        dword ptr [ebx+60],0; TRaveCalcController.?f60:TRaveMethodList
>005BEBD8    jne        005BEBE9
 005BEBDA    mov        dl,1
 005BEBDC    mov        eax,[005A6818]; TRaveMethodList
 005BEBE1    call       TObject.Create; TRaveMethodList.Create
 005BEBE6    mov        dword ptr [ebx+60],eax; TRaveCalcController.?f60:TRaveMethodList
 005BEBE9    lea        edx,[ebp+8]
 005BEBEC    mov        eax,dword ptr [ebx+60]; TRaveCalcController.?f60:TRaveMethodList
 005BEBEF    call       005A81D0
 005BEBF4    xor        eax,eax
 005BEBF6    pop        edx
 005BEBF7    pop        ecx
 005BEBF8    pop        ecx
 005BEBF9    mov        dword ptr fs:[eax],edx
 005BEBFC    push       5BEC11
 005BEC01    lea        eax,[ebp-4]
 005BEC04    call       @LStrClr
 005BEC09    ret
<005BEC0A    jmp        @HandleFinally
<005BEC0F    jmp        005BEC01
 005BEC11    pop        ebx
 005BEC12    pop        ecx
 005BEC13    pop        ebp
 005BEC14    ret        8
*}
//end;

//005BEC44
//procedure sub_005BEC44(?:?; ?:?; ?:?);
//begin
{*
 005BEC44    push       ebp
 005BEC45    mov        ebp,esp
 005BEC47    push       ecx
 005BEC48    push       ebx
 005BEC49    mov        dword ptr [ebp-4],edx
 005BEC4C    mov        ebx,eax
 005BEC4E    mov        eax,dword ptr [ebp-4]
 005BEC51    call       @LStrAddRef
 005BEC56    xor        eax,eax
 005BEC58    push       ebp
 005BEC59    push       5BECD0
 005BEC5E    push       dword ptr fs:[eax]
 005BEC61    mov        dword ptr fs:[eax],esp
 005BEC64    push       dword ptr [ebp+0C]
 005BEC67    push       dword ptr [ebp+8]
 005BEC6A    mov        edx,dword ptr [ebp-4]
 005BEC6D    mov        eax,ebx
 005BEC6F    call       005A8760
 005BEC74    mov        edx,5BECE8; 'CalcNewData'
 005BEC79    mov        eax,dword ptr [ebp-4]
 005BEC7C    call       AnsiCompareText
 005BEC81    test       eax,eax
>005BEC83    jne        005BEC98
 005BEC85    cmp        dword ptr [ebx+5C],0; TRaveCalcController.?f5C:TRaveMethodList
>005BEC89    je         005BEC98
 005BEC8B    lea        edx,[ebp+8]
 005BEC8E    mov        eax,dword ptr [ebx+5C]; TRaveCalcController.?f5C:TRaveMethodList
 005BEC91    call       005A8204
>005BEC96    jmp        005BECBA
 005BEC98    mov        edx,5BECFC; 'CalcInitData'
 005BEC9D    mov        eax,dword ptr [ebp-4]
 005BECA0    call       AnsiCompareText
 005BECA5    test       eax,eax
>005BECA7    jne        005BECBA
 005BECA9    cmp        dword ptr [ebx+60],0; TRaveCalcController.?f60:TRaveMethodList
>005BECAD    je         005BECBA
 005BECAF    lea        edx,[ebp+8]
 005BECB2    mov        eax,dword ptr [ebx+60]; TRaveCalcController.?f60:TRaveMethodList
 005BECB5    call       005A8204
 005BECBA    xor        eax,eax
 005BECBC    pop        edx
 005BECBD    pop        ecx
 005BECBE    pop        ecx
 005BECBF    mov        dword ptr fs:[eax],edx
 005BECC2    push       5BECD7
 005BECC7    lea        eax,[ebp-4]
 005BECCA    call       @LStrClr
 005BECCF    ret
<005BECD0    jmp        @HandleFinally
<005BECD5    jmp        005BECC7
 005BECD7    pop        ebx
 005BECD8    pop        ecx
 005BECD9    pop        ebp
 005BECDA    ret        8
*}
//end;

//005BED0C
//function sub_005BED0C(?:?):?;
//begin
{*
 005BED0C    push       ebp
 005BED0D    mov        ebp,esp
 005BED0F    push       ecx
 005BED10    push       ebx
 005BED11    mov        dword ptr [ebp-4],edx
 005BED14    mov        eax,dword ptr [ebp-4]
 005BED17    call       @LStrAddRef
 005BED1C    xor        eax,eax
 005BED1E    push       ebp
 005BED1F    push       5BED68
 005BED24    push       dword ptr fs:[eax]
 005BED27    mov        dword ptr fs:[eax],esp
 005BED2A    mov        edx,5BED80; 'CalcNewData'
 005BED2F    mov        eax,dword ptr [ebp-4]
 005BED32    call       AnsiCompareText
 005BED37    test       eax,eax
>005BED39    je         005BED50
 005BED3B    mov        edx,5BED94; 'CalcInitData'
 005BED40    mov        eax,dword ptr [ebp-4]
 005BED43    call       AnsiCompareText
 005BED48    test       eax,eax
>005BED4A    je         005BED50
 005BED4C    xor        ebx,ebx
>005BED4E    jmp        005BED52
 005BED50    mov        bl,1
 005BED52    xor        eax,eax
 005BED54    pop        edx
 005BED55    pop        ecx
 005BED56    pop        ecx
 005BED57    mov        dword ptr fs:[eax],edx
 005BED5A    push       5BED6F
 005BED5F    lea        eax,[ebp-4]
 005BED62    call       @LStrClr
 005BED67    ret
<005BED68    jmp        @HandleFinally
<005BED6D    jmp        005BED5F
 005BED6F    mov        eax,ebx
 005BED71    pop        ebx
 005BED72    pop        ecx
 005BED73    pop        ebp
 005BED74    ret
*}
//end;

//005BEDA4
//procedure sub_005BEDA4(?:?; ?:?);
//begin
{*
 005BEDA4    push       ebx
 005BEDA5    push       esi
 005BEDA6    push       edi
 005BEDA7    mov        edi,ecx
 005BEDA9    mov        esi,edx
 005BEDAB    mov        ebx,eax
 005BEDAD    mov        ecx,edi
 005BEDAF    mov        edx,esi
 005BEDB1    mov        eax,ebx
 005BEDB3    call       005A85B8
 005BEDB8    mov        eax,dword ptr [ebx+64]; TRaveCalcController.InitCalcVar:TRaveCalcVariable
 005BEDBB    test       eax,eax
>005BEDBD    je         005BEDD3
 005BEDBF    cmp        esi,eax
>005BEDC1    jne        005BEDD3
 005BEDC3    mov        eax,edi
 005BEDC5    mov        edx,dword ptr ds:[5BC0EC]; TRaveCalcVariable
 005BEDCB    call       @AsClass
 005BEDD0    mov        dword ptr [ebx+64],eax; TRaveCalcController.InitCalcVar:TRaveCalcVariable
 005BEDD3    mov        eax,dword ptr [ebx+5C]; TRaveCalcController.?f5C:TRaveMethodList
 005BEDD6    test       eax,eax
>005BEDD8    je         005BEDF4
 005BEDDA    test       esi,esi
>005BEDDC    je         005BEDF4
 005BEDDE    test       edi,edi
>005BEDE0    je         005BEDED
 005BEDE2    mov        ecx,edi
 005BEDE4    mov        edx,esi
 005BEDE6    call       005A8294
>005BEDEB    jmp        005BEDF4
 005BEDED    mov        edx,esi
 005BEDEF    call       005A8258
 005BEDF4    mov        eax,dword ptr [ebx+60]; TRaveCalcController.?f60:TRaveMethodList
 005BEDF7    test       eax,eax
>005BEDF9    je         005BEE15
 005BEDFB    test       esi,esi
>005BEDFD    je         005BEE15
 005BEDFF    test       edi,edi
>005BEE01    je         005BEE0E
 005BEE03    mov        ecx,edi
 005BEE05    mov        edx,esi
 005BEE07    call       005A8294
>005BEE0C    jmp        005BEE15
 005BEE0E    mov        edx,esi
 005BEE10    call       005A8258
 005BEE15    pop        edi
 005BEE16    pop        esi
 005BEE17    pop        ebx
 005BEE18    ret
*}
//end;

//005BEE1C
procedure sub_005BEE1C;
begin
{*
 005BEE1C    push       ebx
 005BEE1D    add        esp,0FFFFFFF4
 005BEE20    mov        ebx,eax
 005BEE22    mov        eax,dword ptr [ebx+68]; TRaveCalcController.?f68:TRaveFieldName
 005BEE25    push       eax
 005BEE26    mov        ax,word ptr [ebx+78]; TRaveCalcController.?f78:word
 005BEE2A    push       eax
 005BEE2B    push       dword ptr [ebx+74]; TRaveCalcController.?f74:dword
 005BEE2E    push       dword ptr [ebx+70]; TRaveCalcController.InitValue:Extended
 005BEE31    push       0
 005BEE33    lea        eax,[esp+1E]
 005BEE37    push       eax
 005BEE38    xor        ecx,ecx
 005BEE3A    mov        edx,dword ptr [ebx+64]; TRaveCalcController.InitCalcVar:TRaveCalcVariable
 005BEE3D    mov        eax,ebx
 005BEE3F    call       005BD498
 005BEE44    fstp       tbyte ptr [esp]
 005BEE47    wait
 005BEE48    mov        ecx,esp
 005BEE4A    mov        edx,dword ptr [ebx+60]; TRaveCalcController.?f60:TRaveMethodList
 005BEE4D    mov        eax,ebx
 005BEE4F    call       005A86F0
 005BEE54    xor        ecx,ecx
 005BEE56    mov        edx,dword ptr [ebx+5C]; TRaveCalcController.?f5C:TRaveMethodList
 005BEE59    mov        eax,ebx
 005BEE5B    call       005A86F0
 005BEE60    add        esp,0C
 005BEE63    pop        ebx
 005BEE64    ret
*}
end;

//005BEEDC
//function sub_005BEEDC():?;
//begin
{*
 005BEEDC    push       ebp
 005BEEDD    mov        ebp,esp
 005BEEDF    push       ebx
 005BEEE0    xor        eax,eax
 005BEEE2    push       ebp
 005BEEE3    push       5BEF0A
 005BEEE8    push       dword ptr fs:[eax]
 005BEEEB    mov        dword ptr fs:[eax],esp
 005BEEEE    mov        dl,1
 005BEEF0    mov        eax,[005BCC28]; TRaveDataMirror
 005BEEF5    call       TObject.Create; TRaveDataMirror.Create
 005BEEFA    mov        ebx,eax
 005BEEFC    xor        eax,eax
 005BEEFE    pop        edx
 005BEEFF    pop        ecx
 005BEF00    pop        ecx
 005BEF01    mov        dword ptr fs:[eax],edx
 005BEF04    push       5BEF11
 005BEF09    ret
<005BEF0A    jmp        @HandleFinally
<005BEF0F    jmp        005BEF09
 005BEF11    mov        eax,ebx
 005BEF13    pop        ebx
 005BEF14    pop        ebp
 005BEF15    ret
*}
//end;

//005BEF18
constructor TRaveDataMirrorSection.Create(AOwner:TComponent);
begin
{*
 005BEF18    push       ebx
 005BEF19    push       esi
 005BEF1A    test       dl,dl
>005BEF1C    je         005BEF26
 005BEF1E    add        esp,0FFFFFFF0
 005BEF21    call       @ClassCreate
 005BEF26    mov        ebx,edx
 005BEF28    mov        esi,eax
 005BEF2A    xor        edx,edx
 005BEF2C    mov        eax,esi
 005BEF2E    call       TRaveSection.Create
 005BEF33    mov        dl,1
 005BEF35    mov        eax,[005BEE68]; TRaveDataMirrorList
 005BEF3A    call       TObject.Create; TRaveDataMirrorList.Create
 005BEF3F    mov        dword ptr [esi+104],eax; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BEF45    mov        eax,esi
 005BEF47    test       bl,bl
>005BEF49    je         005BEF5A
 005BEF4B    call       @AfterConstruction
 005BEF50    pop        dword ptr fs:[0]
 005BEF57    add        esp,0C
 005BEF5A    mov        eax,esi
 005BEF5C    pop        esi
 005BEF5D    pop        ebx
 005BEF5E    ret
*}
end;

//005BEF60
destructor TRaveDataMirrorSection.Destroy;
begin
{*
 005BEF60    push       ebx
 005BEF61    push       esi
 005BEF62    call       @BeforeDestruction
 005BEF67    mov        ebx,edx
 005BEF69    mov        esi,eax
 005BEF6B    cmp        byte ptr [esi+0F9],0; TRaveDataMirrorSection.?fF9:byte
>005BEF72    jne        005BEF8A
 005BEF74    mov        eax,dword ptr [esi+104]; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BEF7A    call       005A58C4
 005BEF7F    lea        eax,[esi+104]; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BEF85    call       FreeAndNil
 005BEF8A    mov        edx,ebx
 005BEF8C    and        dl,0FC
 005BEF8F    mov        eax,esi
 005BEF91    call       TRaveControl.Destroy
 005BEF96    test       bl,bl
>005BEF98    jle        005BEFA1
 005BEF9A    mov        eax,esi
 005BEF9C    call       @ClassDestroy
 005BEFA1    pop        esi
 005BEFA2    pop        ebx
 005BEFA3    ret
*}
end;

//005BEFA4
//procedure TRaveDataMirrorSection.SetDataMirrors(Self:TRaveDataMirrorSection; ?:?);
//begin
{*
 005BEFA4    push       ebx
 005BEFA5    push       esi
 005BEFA6    push       edi
 005BEFA7    push       ebp
 005BEFA8    add        esp,0FFFFFFF8
 005BEFAB    mov        dword ptr [esp],edx
 005BEFAE    mov        edi,eax
 005BEFB0    mov        eax,dword ptr [edi+48]; TRaveDataMirrorSection.?f48:TRaveComponent
 005BEFB3    cmp        byte ptr [eax+0A5],0
>005BEFBA    je         005BEFCE
 005BEFBC    mov        eax,dword ptr [esp]
 005BEFBF    mov        dword ptr [edi+104],eax; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BEFC5    mov        byte ptr [edi+0F9],1; TRaveDataMirrorSection.?fF9:byte
>005BEFCC    jmp        005BF03B
 005BEFCE    mov        byte ptr [edi+0F9],0; TRaveDataMirrorSection.?fF9:byte
 005BEFD5    mov        eax,dword ptr [edi+104]; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BEFDB    call       005A58C4
 005BEFE0    mov        eax,dword ptr [esp]
 005BEFE3    mov        ebp,dword ptr [eax+8]
 005BEFE6    dec        ebp
 005BEFE7    test       ebp,ebp
>005BEFE9    jl         005BF03B
 005BEFEB    inc        ebp
 005BEFEC    mov        dword ptr [esp+4],0
 005BEFF4    mov        edx,dword ptr [esp+4]
 005BEFF8    mov        eax,dword ptr [esp]
 005BEFFB    call       TList.Get
 005BF000    mov        esi,eax
 005BF002    mov        dl,1
 005BF004    mov        eax,[005BCC28]; TRaveDataMirror
 005BF009    call       TObject.Create; TRaveDataMirror.Create
 005BF00E    mov        ebx,eax
 005BF010    lea        eax,[ebx+4]; TRaveDataMirror.?f4:String
 005BF013    mov        edx,dword ptr [esi+4]
 005BF016    call       @LStrAsg
 005BF01B    mov        eax,dword ptr [esi+8]
 005BF01E    mov        dword ptr [ebx+8],eax; TRaveDataMirror.SectionMirror:TRaveSection
 005BF021    mov        al,byte ptr [esi+0C]
 005BF024    mov        byte ptr [ebx+0C],al; TRaveDataMirror.IsDefault:Boolean
 005BF027    mov        eax,dword ptr [edi+104]; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BF02D    mov        edx,ebx
 005BF02F    call       TList.Add
 005BF034    inc        dword ptr [esp+4]
 005BF038    dec        ebp
<005BF039    jne        005BEFF4
 005BF03B    pop        ecx
 005BF03C    pop        edx
 005BF03D    pop        ebp
 005BF03E    pop        edi
 005BF03F    pop        esi
 005BF040    pop        ebx
 005BF041    ret
*}
//end;

//005BF044
procedure sub_005BF044;
begin
{*
 005BF044    push       ebp
 005BF045    mov        ebp,esp
 005BF047    add        esp,0FFFFFFF0
 005BF04A    push       ebx
 005BF04B    push       esi
 005BF04C    push       edi
 005BF04D    xor        edx,edx
 005BF04F    mov        dword ptr [ebp-8],edx
 005BF052    mov        ebx,eax
 005BF054    xor        eax,eax
 005BF056    push       ebp
 005BF057    push       5BF195
 005BF05C    push       dword ptr fs:[eax]
 005BF05F    mov        dword ptr fs:[eax],esp
 005BF062    cmp        byte ptr [ebx+0F8],0; TRaveDataMirrorSection.?fF8:byte
>005BF069    jne        005BF17F
 005BF06F    mov        eax,dword ptr [ebx+5C]; TRaveDataMirrorSection.Mirror:TRaveControl
 005BF072    mov        dword ptr [ebx+10C],eax; TRaveDataMirrorSection.?f10C:TRaveControl
 005BF078    mov        dword ptr [ebp-0C],ebx
 005BF07B    xor        edi,edi
 005BF07D    lea        eax,[ebp-8]
 005BF080    push       eax
 005BF081    mov        ecx,dword ptr [ebx+0FC]; TRaveDataMirrorSection.?fFC:TRaveFieldName
 005BF087    mov        edx,dword ptr [ebx+100]; TRaveDataMirrorSection.DataView:TRaveBaseDataView
 005BF08D    mov        eax,ebx
 005BF08F    call       005A02E4
 005BF094    mov        esi,dword ptr [ebx+128]; TRaveDataMirrorSection.OnMirrorValue:TRaveStringEvent
 005BF09A    test       esi,esi
>005BF09C    je         005BF0C5
 005BF09E    lea        eax,[esi+1C]; TRaveStringEvent.?f1C:String
 005BF0A1    mov        edx,dword ptr [ebp-8]
 005BF0A4    call       @LStrAsg
 005BF0A9    mov        eax,dword ptr [ebx+128]; TRaveDataMirrorSection.OnMirrorValue:TRaveStringEvent
 005BF0AF    mov        edx,dword ptr [eax]
 005BF0B1    call       dword ptr [edx+0C]; TRaveStringEvent.sub_005ADEDC
 005BF0B4    lea        eax,[ebp-8]
 005BF0B7    mov        edx,dword ptr [ebx+128]; TRaveDataMirrorSection.OnMirrorValue:TRaveStringEvent
 005BF0BD    mov        edx,dword ptr [edx+1C]; TRaveStringEvent.?f1C:String
 005BF0C0    call       @LStrLAsg
 005BF0C5    mov        eax,dword ptr [ebx+104]; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BF0CB    mov        eax,dword ptr [eax+8]; TRavePersistentList.FCount:Integer
 005BF0CE    dec        eax
 005BF0CF    test       eax,eax
>005BF0D1    jl         005BF138
 005BF0D3    inc        eax
 005BF0D4    mov        dword ptr [ebp-10],eax
 005BF0D7    mov        dword ptr [ebp-4],0
 005BF0DE    mov        edx,dword ptr [ebp-4]
 005BF0E1    mov        eax,dword ptr [ebx+104]; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BF0E7    call       TList.Get
 005BF0EC    mov        esi,eax
 005BF0EE    cmp        byte ptr [esi+0C],0
>005BF0F2    je         005BF0FB
 005BF0F4    test       edi,edi
>005BF0F6    jne        005BF0FB
 005BF0F8    mov        edi,dword ptr [esi+8]
 005BF0FB    cmp        byte ptr [ebx+108],0; TRaveDataMirrorSection.CompareCase:Boolean
>005BF102    je         005BF113
 005BF104    mov        edx,dword ptr [esi+4]
 005BF107    mov        eax,dword ptr [ebp-8]
 005BF10A    call       AnsiCompareStr
 005BF10F    test       eax,eax
>005BF111    je         005BF12B
 005BF113    cmp        byte ptr [ebx+108],0; TRaveDataMirrorSection.CompareCase:Boolean
>005BF11A    jne        005BF130
 005BF11C    mov        edx,dword ptr [esi+4]
 005BF11F    mov        eax,dword ptr [ebp-8]
 005BF122    call       AnsiCompareText
 005BF127    test       eax,eax
>005BF129    jne        005BF130
 005BF12B    mov        edi,dword ptr [esi+8]
>005BF12E    jmp        005BF138
 005BF130    inc        dword ptr [ebp-4]
 005BF133    dec        dword ptr [ebp-10]
<005BF136    jne        005BF0DE
 005BF138    mov        edx,edi
 005BF13A    mov        eax,dword ptr [ebp-0C]
 005BF13D    call       TRaveControl.SetMirror
 005BF142    mov        eax,edi
 005BF144    mov        edx,dword ptr ds:[5BCD40]; TRaveDataMirrorSection
 005BF14A    call       @IsClass
 005BF14F    test       al,al
>005BF151    je         005BF158
 005BF153    mov        dword ptr [ebp-0C],edi
>005BF156    jmp        005BF15D
 005BF158    xor        eax,eax
 005BF15A    mov        dword ptr [ebp-0C],eax
 005BF15D    cmp        dword ptr [ebp-0C],0
<005BF161    jne        005BF07B
 005BF167    mov        eax,ebx
 005BF169    call       005A97A4
 005BF16E    mov        eax,ebx
 005BF170    mov        edx,dword ptr [eax]
 005BF172    call       dword ptr [edx+0A0]; TRaveDataMirrorSection.sub_005A9924
 005BF178    mov        byte ptr [ebx+0F8],1; TRaveDataMirrorSection.?fF8:byte
 005BF17F    xor        eax,eax
 005BF181    pop        edx
 005BF182    pop        ecx
 005BF183    pop        ecx
 005BF184    mov        dword ptr fs:[eax],edx
 005BF187    push       5BF19C
 005BF18C    lea        eax,[ebp-8]
 005BF18F    call       @LStrClr
 005BF194    ret
<005BF195    jmp        @HandleFinally
<005BF19A    jmp        005BF18C
 005BF19C    pop        edi
 005BF19D    pop        esi
 005BF19E    pop        ebx
 005BF19F    mov        esp,ebp
 005BF1A1    pop        ebp
 005BF1A2    ret
*}
end;

//005BF1A4
procedure sub_005BF1A4;
begin
{*
 005BF1A4    push       ebx
 005BF1A5    mov        ebx,eax
 005BF1A7    cmp        byte ptr [ebx+0F8],0; TRaveDataMirrorSection.?fF8:byte
>005BF1AE    je         005BF1E2
 005BF1B0    mov        eax,ebx
 005BF1B2    call       005A97E4
 005BF1B7    mov        eax,dword ptr [ebx+5C]; TRaveDataMirrorSection.Mirror:TRaveControl
 005BF1BA    cmp        eax,dword ptr [ebx+10C]; TRaveDataMirrorSection.?f10C:TRaveControl
>005BF1C0    je         005BF1DB
 005BF1C2    test       eax,eax
>005BF1C4    je         005BF1CE
 005BF1C6    mov        edx,dword ptr [eax]
 005BF1C8    call       dword ptr [edx+9C]; TRaveControl.sub_005A9874
 005BF1CE    mov        edx,dword ptr [ebx+10C]; TRaveDataMirrorSection.?f10C:TRaveControl
 005BF1D4    mov        eax,ebx
 005BF1D6    call       TRaveControl.SetMirror
 005BF1DB    mov        byte ptr [ebx+0F8],0; TRaveDataMirrorSection.?fF8:byte
 005BF1E2    pop        ebx
 005BF1E3    ret
*}
end;

//005BF1E4
procedure sub_005BF1E4;
begin
{*
 005BF1E4    push       ebx
 005BF1E5    mov        ebx,eax
 005BF1E7    mov        eax,ebx
 005BF1E9    call       005A9824
 005BF1EE    mov        al,byte ptr [ebx+0E1]; TRaveDataMirrorSection.Anchor:TRaveAnchor
 005BF1F4    mov        byte ptr [ebx+110],al; TRaveDataMirrorSection.?f110:TRaveAnchor
 005BF1FA    mov        al,byte ptr [ebx+108]; TRaveDataMirrorSection.CompareCase:Boolean
 005BF200    mov        byte ptr [ebx+111],al; TRaveDataMirrorSection.?f111:Boolean
 005BF206    lea        eax,[ebx+114]; TRaveDataMirrorSection.?f114:TRaveFieldName
 005BF20C    mov        edx,dword ptr [ebx+0FC]; TRaveDataMirrorSection.?fFC:TRaveFieldName
 005BF212    call       @LStrAsg
 005BF217    mov        eax,dword ptr [ebx+104]; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BF21D    mov        dword ptr [ebx+118],eax; TRaveDataMirrorSection.?f118:TRavePersistentList
 005BF223    mov        eax,dword ptr [ebx+100]; TRaveDataMirrorSection.DataView:TRaveBaseDataView
 005BF229    mov        dword ptr [ebx+11C],eax; TRaveDataMirrorSection.?f11C:TRaveBaseDataView
 005BF22F    mov        al,byte ptr [ebx+0E0]; TRaveDataMirrorSection.DisplayOn:TDisplayOn
 005BF235    mov        byte ptr [ebx+120],al; TRaveDataMirrorSection.?f120:TDisplayOn
 005BF23B    mov        eax,dword ptr [ebx+0C]; TRaveDataMirrorSection.Tag:Integer
 005BF23E    mov        dword ptr [ebx+124],eax; TRaveDataMirrorSection.?f124:Integer
 005BF244    pop        ebx
 005BF245    ret
*}
end;

//005BF248
procedure sub_005BF248;
begin
{*
 005BF248    push       ebx
 005BF249    mov        ebx,eax
 005BF24B    mov        dl,byte ptr [ebx+110]; TRaveDataMirrorSection.?f110:TRaveAnchor
 005BF251    mov        eax,ebx
 005BF253    call       TRaveControl.SetAnchor
 005BF258    mov        al,byte ptr [ebx+111]; TRaveDataMirrorSection.?f111:Boolean
 005BF25E    mov        byte ptr [ebx+108],al; TRaveDataMirrorSection.CompareCase:Boolean
 005BF264    lea        eax,[ebx+0FC]; TRaveDataMirrorSection.?fFC:TRaveFieldName
 005BF26A    mov        edx,dword ptr [ebx+114]; TRaveDataMirrorSection.?f114:TRaveFieldName
 005BF270    call       @LStrAsg
 005BF275    mov        eax,dword ptr [ebx+118]; TRaveDataMirrorSection.?f118:TRavePersistentList
 005BF27B    mov        dword ptr [ebx+104],eax; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BF281    mov        eax,dword ptr [ebx+11C]; TRaveDataMirrorSection.?f11C:TRaveBaseDataView
 005BF287    mov        dword ptr [ebx+100],eax; TRaveDataMirrorSection.DataView:TRaveBaseDataView
 005BF28D    mov        al,byte ptr [ebx+120]; TRaveDataMirrorSection.?f120:TDisplayOn
 005BF293    mov        byte ptr [ebx+0E0],al; TRaveDataMirrorSection.DisplayOn:TDisplayOn
 005BF299    mov        eax,dword ptr [ebx+124]; TRaveDataMirrorSection.?f124:Integer
 005BF29F    mov        dword ptr [ebx+0C],eax; TRaveDataMirrorSection.Tag:Integer
 005BF2A2    mov        eax,ebx
 005BF2A4    mov        edx,dword ptr [eax]
 005BF2A6    call       dword ptr [edx+8C]; TRaveDataMirrorSection.sub_005BF1A4
 005BF2AC    mov        eax,ebx
 005BF2AE    call       005A9874
 005BF2B3    pop        ebx
 005BF2B4    ret
*}
end;

//005BF2B8
procedure sub_005BF2B8;
begin
{*
 005BF2B8    push       ebx
 005BF2B9    mov        ebx,eax
 005BF2BB    mov        dl,byte ptr [ebx+110]; TRaveDataMirrorSection.?f110:TRaveAnchor
 005BF2C1    mov        eax,ebx
 005BF2C3    call       TRaveControl.SetAnchor
 005BF2C8    mov        al,byte ptr [ebx+111]; TRaveDataMirrorSection.?f111:Boolean
 005BF2CE    mov        byte ptr [ebx+108],al; TRaveDataMirrorSection.CompareCase:Boolean
 005BF2D4    lea        eax,[ebx+0FC]; TRaveDataMirrorSection.?fFC:TRaveFieldName
 005BF2DA    mov        edx,dword ptr [ebx+114]; TRaveDataMirrorSection.?f114:TRaveFieldName
 005BF2E0    call       @LStrAsg
 005BF2E5    mov        eax,dword ptr [ebx+118]; TRaveDataMirrorSection.?f118:TRavePersistentList
 005BF2EB    mov        dword ptr [ebx+104],eax; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BF2F1    mov        eax,dword ptr [ebx+11C]; TRaveDataMirrorSection.?f11C:TRaveBaseDataView
 005BF2F7    mov        dword ptr [ebx+100],eax; TRaveDataMirrorSection.DataView:TRaveBaseDataView
 005BF2FD    mov        al,byte ptr [ebx+120]; TRaveDataMirrorSection.?f120:TDisplayOn
 005BF303    mov        byte ptr [ebx+0E0],al; TRaveDataMirrorSection.DisplayOn:TDisplayOn
 005BF309    mov        eax,dword ptr [ebx+124]; TRaveDataMirrorSection.?f124:Integer
 005BF30F    mov        dword ptr [ebx+0C],eax; TRaveDataMirrorSection.Tag:Integer
 005BF312    mov        eax,ebx
 005BF314    call       005A9984
 005BF319    pop        ebx
 005BF31A    ret
*}
end;

//005BF31C
//procedure sub_005BF31C(?:?; ?:?);
//begin
{*
 005BF31C    push       ebx
 005BF31D    push       esi
 005BF31E    push       edi
 005BF31F    push       ebp
 005BF320    add        esp,0FFFFFFF8
 005BF323    mov        dword ptr [esp+4],ecx
 005BF327    mov        dword ptr [esp],edx
 005BF32A    mov        ebx,eax
 005BF32C    mov        ecx,dword ptr [esp+4]
 005BF330    mov        edx,dword ptr [esp]
 005BF333    mov        eax,ebx
 005BF335    call       005A8E1C
 005BF33A    mov        eax,dword ptr [ebx+100]; TRaveDataMirrorSection.DataView:TRaveBaseDataView
 005BF340    test       eax,eax
>005BF342    je         005BF35E
 005BF344    cmp        eax,dword ptr [esp]
>005BF347    jne        005BF35E
 005BF349    mov        eax,dword ptr [esp+4]
 005BF34D    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005BF353    call       @AsClass
 005BF358    mov        dword ptr [ebx+100],eax; TRaveDataMirrorSection.DataView:TRaveBaseDataView
 005BF35E    mov        eax,dword ptr [ebx+104]; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BF364    test       eax,eax
>005BF366    je         005BF3A4
 005BF368    mov        edi,dword ptr [eax+8]; TRavePersistentList.FCount:Integer
 005BF36B    dec        edi
 005BF36C    test       edi,edi
>005BF36E    jl         005BF3A4
 005BF370    inc        edi
 005BF371    xor        ebp,ebp
 005BF373    mov        edx,ebp
 005BF375    mov        eax,dword ptr [ebx+104]; TRaveDataMirrorSection.DataMirrors:TRavePersistentList
 005BF37B    call       TList.Get
 005BF380    mov        esi,eax
 005BF382    mov        eax,dword ptr [esi+8]
 005BF385    test       eax,eax
>005BF387    je         005BF3A0
 005BF389    cmp        eax,dword ptr [esp]
>005BF38C    jne        005BF3A0
 005BF38E    mov        eax,dword ptr [esp+4]
 005BF392    mov        edx,dword ptr ds:[5B0550]; TRaveSection
 005BF398    call       @AsClass
 005BF39D    mov        dword ptr [esi+8],eax
 005BF3A0    inc        ebp
 005BF3A1    dec        edi
<005BF3A2    jne        005BF373
 005BF3A4    pop        ecx
 005BF3A5    pop        edx
 005BF3A6    pop        ebp
 005BF3A7    pop        edi
 005BF3A8    pop        esi
 005BF3A9    pop        ebx
 005BF3AA    ret
*}
//end;

//005BF3AC
//procedure sub_005BF3AC(?:?);
//begin
{*
 005BF3AC    push       ebx
 005BF3AD    push       esi
 005BF3AE    mov        esi,edx
 005BF3B0    mov        ebx,eax
 005BF3B2    mov        eax,ebx
 005BF3B4    mov        edx,dword ptr [eax]
 005BF3B6    call       dword ptr [edx+88]; TRaveDataMirrorSection.sub_005BF044
 005BF3BC    mov        edx,esi
 005BF3BE    mov        eax,ebx
 005BF3C0    call       005B20D0
 005BF3C5    mov        eax,ebx
 005BF3C7    mov        edx,dword ptr [eax]
 005BF3C9    call       dword ptr [edx+8C]; TRaveDataMirrorSection.sub_005BF1A4
 005BF3CF    pop        esi
 005BF3D0    pop        ebx
 005BF3D1    ret
*}
//end;

//005BF3D4
//procedure sub_005BF3D4(?:?);
//begin
{*
 005BF3D4    push       ebx
 005BF3D5    push       esi
 005BF3D6    mov        esi,edx
 005BF3D8    mov        ebx,eax
 005BF3DA    mov        edx,0FF00FF
 005BF3DF    mov        eax,dword ptr [esi+10]
 005BF3E2    call       TPen.SetColor
 005BF3E7    mov        dl,2
 005BF3E9    mov        eax,dword ptr [esi+10]
 005BF3EC    call       TPen.SetStyle
 005BF3F1    mov        dl,4
 005BF3F3    mov        eax,dword ptr [esi+10]
 005BF3F6    call       TPen.SetMode
 005BF3FB    mov        edx,1
 005BF400    mov        eax,dword ptr [esi+10]
 005BF403    call       TPen.SetWidth
 005BF408    mov        edx,0FFFFFF
 005BF40D    mov        eax,dword ptr [esi+14]
 005BF410    call       TBrush.SetColor
 005BF415    mov        dl,1
 005BF417    mov        eax,dword ptr [esi+14]
 005BF41A    call       TBrush.SetStyle
 005BF41F    mov        eax,ebx
 005BF421    mov        edx,dword ptr [eax]
 005BF423    call       dword ptr [edx+64]; TRaveDataMirrorSection.sub_005A9744
 005BF426    add        esp,0FFFFFFF8
 005BF429    fstp       qword ptr [esp]
 005BF42C    wait
 005BF42D    mov        eax,ebx
 005BF42F    call       005AAE14
 005BF434    inc        eax
 005BF435    push       eax
 005BF436    mov        eax,ebx
 005BF438    mov        edx,dword ptr [eax]
 005BF43A    call       dword ptr [edx+68]; TRaveDataMirrorSection.sub_005A9770
 005BF43D    add        esp,0FFFFFFF8
 005BF440    fstp       qword ptr [esp]
 005BF443    wait
 005BF444    mov        eax,ebx
 005BF446    call       005AAE30
 005BF44B    inc        eax
 005BF44C    push       eax
 005BF44D    mov        eax,ebx
 005BF44F    mov        edx,dword ptr [eax]
 005BF451    call       dword ptr [edx+60]; TRaveDataMirrorSection.sub_005A970C
 005BF454    add        esp,0FFFFFFF8
 005BF457    fstp       qword ptr [esp]
 005BF45A    wait
 005BF45B    mov        eax,ebx
 005BF45D    call       005AAE30
 005BF462    push       eax
 005BF463    mov        eax,ebx
 005BF465    mov        edx,dword ptr [eax]
 005BF467    call       dword ptr [edx+5C]; TRaveDataMirrorSection.sub_005A96D4
 005BF46A    add        esp,0FFFFFFF8
 005BF46D    fstp       qword ptr [esp]
 005BF470    wait
 005BF471    mov        eax,ebx
 005BF473    call       005AAE14
 005BF478    mov        edx,eax
 005BF47A    mov        eax,esi
 005BF47C    pop        ecx
 005BF47D    call       TCanvas.Rectangle
 005BF482    pop        esi
 005BF483    pop        ebx
 005BF484    ret
*}
//end;

Initialization
//005BF4B8
{*
 005BF4B8    sub        dword ptr ds:[61F89C],1
>005BF4BF    jae        005BF4D0
 005BF4C1    mov        edx,5BD028; sub_005BD028
 005BF4C6    mov        eax,5BF4DC; 'RVCL'
 005BF4CB    call       005A7E10
 005BF4D0    ret
*}
Finalization
end.