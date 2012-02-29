{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDbcInterbase6Utils;

interface

uses
  Classes, Windows, Graphics, SysUtils, ZPlainInterbaseDriver;

type
  EZIBConvertError = class(Exception)
  end;
  TZIbParam = record //size = 8
  f0:String;;
  TZSQLDA = class(TInterfacedObject)
  public
    fC:Pointer;//fC
    f10:IZInterbasePlainDriver;//f10
    procedure sub_00534728; virtual;
  end;
  TZParamsSQLDA = class(TZSQLDA)
  public
    f18:dword;//f18
    f1C:dword;//f1C
    destructor Destroy; virtual;
    //constructor Create(?:TZParamsSQLDA; _Dv__:Boolean; ?:?; ?:?);
  end;
  _DynArr_181_5 = array of Variant;//varType equivalent:varVariant;
  TZResultSQLDA = class(TZSQLDA)
  public
    f18:.5;//f18
    f1C:dword;//f1C
    f20:dword;//f20
    destructor Destroy; virtual;
    procedure sub_005389B4; virtual;
    //constructor Create(?:TZResultSQLDA; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//00532284
//procedure sub_00532284(?:?; ?:AnsiString);
//begin
{*
 00532284    push       ebp
 00532285    mov        ebp,esp
 00532287    add        esp,0FFFFFFF8
 0053228A    push       ebx
 0053228B    push       esi
 0053228C    xor        ecx,ecx
 0053228E    mov        dword ptr [ebp-4],ecx
 00532291    mov        ebx,edx
 00532293    mov        esi,eax
 00532295    xor        eax,eax
 00532297    push       ebp
 00532298    push       532310
 0053229D    push       dword ptr fs:[eax]
 005322A0    mov        dword ptr fs:[eax],esp
 005322A3    mov        eax,ebx
 005322A5    call       @LStrClr
>005322AA    jmp        005322D5
 005322AC    mov        eax,7FFFFFFF
 005322B1    call       @RandInt
 005322B6    mov        dword ptr [ebp-8],eax
 005322B9    fild       dword ptr [ebp-8]
 005322BC    call       @TRUNC
 005322C1    push       edx
 005322C2    push       eax
 005322C3    lea        eax,[ebp-4]
 005322C6    call       IntToStr
 005322CB    mov        edx,dword ptr [ebp-4]
 005322CE    mov        eax,ebx
 005322D0    call       @LStrCat
 005322D5    mov        eax,dword ptr [ebx]
 005322D7    call       @LStrLen
 005322DC    cmp        esi,eax
<005322DE    jg         005322AC
 005322E0    mov        eax,dword ptr [ebx]
 005322E2    call       @LStrLen
 005322E7    cmp        esi,eax
>005322E9    jge        005322FA
 005322EB    push       ebx
 005322EC    mov        eax,dword ptr [ebx]
 005322EE    mov        ecx,esi
 005322F0    mov        edx,1
 005322F5    call       @LStrCopy
 005322FA    xor        eax,eax
 005322FC    pop        edx
 005322FD    pop        ecx
 005322FE    pop        ecx
 005322FF    mov        dword ptr fs:[eax],edx
 00532302    push       532317
 00532307    lea        eax,[ebp-4]
 0053230A    call       @LStrClr
 0053230F    ret
<00532310    jmp        @HandleFinally
<00532315    jmp        00532307
 00532317    pop        esi
 00532318    pop        ebx
 00532319    pop        ecx
 0053231A    pop        ecx
 0053231B    pop        ebp
 0053231C    ret
*}
//end;

//00532320
//procedure sub_00532320(?:AnsiString; ?:TZAbstractStatement; ?:TZInterbase6ResultSet; ?:?);
//begin
{*
 00532320    push       ebp
 00532321    mov        ebp,esp
 00532323    add        esp,0FFFFFFF0
 00532326    push       ebx
 00532327    push       esi
 00532328    xor        ebx,ebx
 0053232A    mov        dword ptr [ebp-10],ebx
 0053232D    mov        dword ptr [ebp-0C],ecx
 00532330    mov        dword ptr [ebp-8],edx
 00532333    mov        dword ptr [ebp-4],eax
 00532336    mov        esi,dword ptr [ebp+8]
 00532339    mov        eax,dword ptr [ebp-4]
 0053233C    call       @LStrAddRef
 00532341    mov        eax,dword ptr [ebp-8]
 00532344    call       @IntfAddRef
 00532349    mov        eax,dword ptr [ebp-0C]
 0053234C    call       @IntfAddRef
 00532351    xor        eax,eax
 00532353    push       ebp
 00532354    push       532410
 00532359    push       dword ptr fs:[eax]
 0053235C    mov        dword ptr fs:[eax],esp
 0053235F    mov        eax,dword ptr [ebp-8]
 00532362    mov        edx,dword ptr [eax]
 00532364    call       dword ptr [edx+60]; TZAbstractStatement.sub_004DFF7C
 00532367    test       al,al
>00532369    jne        00532377
 0053236B    mov        eax,dword ptr [ebp-8]
 0053236E    mov        edx,dword ptr [eax]
 00532370    call       dword ptr [edx+68]; TZAbstractStatement.sub_004DFFA0
 00532373    test       al,al
>00532375    je         005323D8
 00532377    lea        edx,[ebp-10]
 0053237A    mov        eax,dword ptr [ebp-0C]
 0053237D    mov        ecx,dword ptr [eax]
 0053237F    call       dword ptr [ecx+0CC]; TZInterbase6ResultSet.sub_004D501C
 00532385    mov        eax,dword ptr [ebp-10]
 00532388    push       eax
 00532389    mov        ecx,dword ptr [ebp-8]
 0053238C    mov        dl,1
 0053238E    mov        eax,[00538F48]; TZInterbase6CachedResolver
 00532393    call       TZGenericCachedResolver.Create; TZInterbase6CachedResolver.Create
 00532398    mov        edx,dword ptr [ebp-4]
 0053239B    push       edx
 0053239C    test       eax,eax
>0053239E    je         005323A3
 005323A0    sub        eax,0FFFFFFD4
 005323A3    push       eax
 005323A4    mov        ecx,dword ptr [ebp-0C]
 005323A7    mov        dl,1
 005323A9    mov        eax,[004D060C]; TZCachedResultSet
 005323AE    call       TZCachedResultSet.Create; TZCachedResultSet.Create
 005323B3    mov        ebx,eax
 005323B5    mov        eax,dword ptr [ebp-8]
 005323B8    mov        edx,dword ptr [eax]
 005323BA    call       dword ptr [edx+60]; TZAbstractStatement.sub_004DFF7C
 005323BD    mov        edx,eax
 005323BF    mov        eax,ebx
 005323C1    call       004D4578
 005323C6    mov        eax,esi
 005323C8    mov        edx,ebx
 005323CA    test       edx,edx
>005323CC    je         005323D1
 005323CE    sub        edx,0FFFFFFC8
 005323D1    call       @IntfCopy
>005323D6    jmp        005323E2
 005323D8    mov        eax,esi
 005323DA    mov        edx,dword ptr [ebp-0C]
 005323DD    call       @IntfCopy
 005323E2    xor        eax,eax
 005323E4    pop        edx
 005323E5    pop        ecx
 005323E6    pop        ecx
 005323E7    mov        dword ptr fs:[eax],edx
 005323EA    push       532417
 005323EF    lea        eax,[ebp-10]
 005323F2    call       @IntfClear
 005323F7    lea        eax,[ebp-0C]
 005323FA    call       @IntfClear
 005323FF    lea        eax,[ebp-8]
 00532402    call       @IntfClear
 00532407    lea        eax,[ebp-4]
 0053240A    call       @LStrClr
 0053240F    ret
<00532410    jmp        @HandleFinally
<00532415    jmp        005323EF
 00532417    pop        esi
 00532418    pop        ebx
 00532419    mov        esp,ebp
 0053241B    pop        ebp
 0053241C    ret        4
*}
//end;

//00532420
//function sub_00532420(?:dword; ?:?; ?:?):?;
//begin
{*
 00532420    push       ebp
 00532421    mov        ebp,esp
 00532423    push       ecx
 00532424    mov        ecx,9
 00532429    push       0
 0053242B    push       0
 0053242D    dec        ecx
<0053242E    jne        00532429
 00532430    push       ecx
 00532431    xchg       ecx,dword ptr [ebp-4]
 00532434    push       ebx
 00532435    push       esi
 00532436    push       edi
 00532437    mov        dword ptr [ebp-0C],ecx
 0053243A    mov        dword ptr [ebp-8],edx
 0053243D    mov        dword ptr [ebp-4],eax
 00532440    xor        eax,eax
 00532442    push       ebp
 00532443    push       532755
 00532448    push       dword ptr fs:[eax]
 0053244B    mov        dword ptr fs:[eax],esp
 0053244E    mov        eax,dword ptr [ebp-8]
 00532451    mov        word ptr [eax],1
 00532456    lea        eax,[ebp-18]
 00532459    mov        edx,532770; ''
 0053245E    call       @LStrLAsg
 00532463    mov        eax,dword ptr [ebp-4]
 00532466    mov        edx,dword ptr [eax]
 00532468    call       dword ptr [edx+14]
 0053246B    mov        esi,eax
 0053246D    sub        esi,1
>00532470    jno        00532477
 00532472    call       @IntOver
 00532477    test       esi,esi
>00532479    jl         00532719
 0053247F    inc        esi
 00532480    mov        dword ptr [ebp-10],0
 00532487    lea        ecx,[ebp-1C]
 0053248A    mov        edx,dword ptr [ebp-10]
 0053248D    mov        eax,dword ptr [ebp-4]
 00532490    mov        ebx,dword ptr [eax]
 00532492    call       dword ptr [ebx+0C]
 00532495    mov        edx,dword ptr [ebp-1C]
 00532498    mov        eax,53277C; ' =\t\n\r'
 0053249D    call       004BEC98
 005324A2    mov        ebx,eax
 005324A4    lea        eax,[ebp-20]
 005324A7    push       eax
 005324A8    mov        ecx,ebx
 005324AA    sub        ecx,1
>005324AD    jno        005324B4
 005324AF    call       @IntOver
 005324B4    mov        edx,1
 005324B9    mov        eax,dword ptr [ebp-1C]
 005324BC    call       @LStrCopy
 005324C1    lea        eax,[ebp-1C]
 005324C4    mov        ecx,ebx
 005324C6    mov        edx,1
 005324CB    call       @LStrDelete
 005324D0    lea        eax,[ebp-24]
 005324D3    mov        edx,dword ptr [ebp-1C]
 005324D6    call       @LStrLAsg
 005324DB    mov        eax,dword ptr [ebp-20]
 005324DE    call       00532940
 005324E3    mov        ebx,eax
 005324E5    movzx      eax,bx
 005324E8    cmp        eax,41
>005324EB    ja         0053270F
 005324F1    mov        al,byte ptr [eax+5324FE]
 005324F7    jmp        dword ptr [eax*4+532540]
 005324F7    db         1
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         4
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         4
 005324F7    db         5
 005324F7    db         0
 005324F7    db         0
 005324F7    db         4
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         4
 005324F7    db         3
 005324F7    db         3
 005324F7    db         3
 005324F7    db         7
 005324F7    db         6
 005324F7    db         7
 005324F7    db         4
 005324F7    db         7
 005324F7    db         7
 005324F7    db         4
 005324F7    db         3
 005324F7    db         3
 005324F7    db         3
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         3
 005324F7    db         3
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         3
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         0
 005324F7    db         2
 005324F7    dd         53270F
 005324F7    dd         53270F
 005324F7    dd         532565
 005324F7    dd         532586
 005324F7    dd         5325DF
 005324F7    dd         532629
 005324F7    dd         532663
 005324F7    dd         5326DA
>00532560    jmp        0053270F
 00532565    xor        edx,edx
 00532567    mov        eax,dword ptr [ebp-24]
 0053256A    call       StrToIntDef
 0053256F    cmp        eax,0FFFF
>00532574    jbe        0053257B
 00532576    call       @BoundErr
 0053257B    mov        edx,dword ptr [ebp-0C]
 0053257E    mov        word ptr [edx],ax
>00532581    jmp        0053270F
 00532586    push       dword ptr [ebp-18]
 00532589    lea        eax,[ebp-28]
 0053258C    mov        edx,ebx
 0053258E    call       @LStrFromChar
 00532593    push       dword ptr [ebp-28]
 00532596    mov        eax,dword ptr [ebp-24]
 00532599    call       @LStrLen
 0053259E    mov        edx,eax
 005325A0    lea        eax,[ebp-2C]
 005325A3    call       @LStrFromChar
 005325A8    push       dword ptr [ebp-2C]
 005325AB    push       dword ptr [ebp-24]
 005325AE    lea        eax,[ebp-18]
 005325B1    mov        edx,4
 005325B6    call       @LStrCatN
 005325BB    mov        eax,dword ptr [ebp-24]
 005325BE    call       @LStrLen
 005325C3    add        eax,2
>005325C6    jno        005325CD
 005325C8    call       @IntOver
 005325CD    mov        edx,dword ptr [ebp-8]
 005325D0    add        word ptr [edx],ax
>005325D3    jae        005325DA
 005325D5    call       @IntOver
>005325DA    jmp        0053270F
 005325DF    push       dword ptr [ebp-18]
 005325E2    lea        eax,[ebp-30]
 005325E5    mov        edx,ebx
 005325E7    call       @LStrFromChar
 005325EC    push       dword ptr [ebp-30]
 005325EF    push       532770; ''
 005325F4    mov        eax,dword ptr [ebp-24]
 005325F7    call       StrToInt
 005325FC    mov        edx,eax
 005325FE    lea        eax,[ebp-34]
 00532601    call       @LStrFromChar
 00532606    push       dword ptr [ebp-34]
 00532609    lea        eax,[ebp-18]
 0053260C    mov        edx,4
 00532611    call       @LStrCatN
 00532616    mov        eax,dword ptr [ebp-8]
 00532619    add        word ptr [eax],3
>0053261D    jae        00532624
 0053261F    call       @IntOver
>00532624    jmp        0053270F
 00532629    push       dword ptr [ebp-18]
 0053262C    lea        eax,[ebp-38]
 0053262F    mov        edx,ebx
 00532631    call       @LStrFromChar
 00532636    push       dword ptr [ebp-38]
 00532639    push       532770; ''
 0053263E    push       53278C; ''
 00532643    lea        eax,[ebp-18]
 00532646    mov        edx,4
 0053264B    call       @LStrCatN
 00532650    mov        eax,dword ptr [ebp-8]
 00532653    add        word ptr [eax],3
>00532657    jae        0053265E
 00532659    call       @IntOver
>0053265E    jmp        0053270F
 00532663    mov        eax,dword ptr [ebp-24]
 00532666    call       StrToInt
 0053266B    mov        dword ptr [ebp-14],eax
 0053266E    push       dword ptr [ebp-18]
 00532671    lea        eax,[ebp-3C]
 00532674    mov        edx,ebx
 00532676    call       @LStrFromChar
 0053267B    push       dword ptr [ebp-3C]
 0053267E    push       532798; ''
 00532683    lea        eax,[ebp-40]
 00532686    lea        edi,[ebp-14]
 00532689    mov        dl,byte ptr [edi]
 0053268B    call       @LStrFromChar
 00532690    push       dword ptr [ebp-40]
 00532693    lea        eax,[ebp-44]
 00532696    mov        dl,byte ptr [edi+1]
 00532699    call       @LStrFromChar
 0053269E    push       dword ptr [ebp-44]
 005326A1    lea        eax,[ebp-48]
 005326A4    mov        dl,byte ptr [edi+2]
 005326A7    call       @LStrFromChar
 005326AC    push       dword ptr [ebp-48]
 005326AF    lea        eax,[ebp-4C]
 005326B2    mov        dl,byte ptr [edi+3]
 005326B5    call       @LStrFromChar
 005326BA    push       dword ptr [ebp-4C]
 005326BD    lea        eax,[ebp-18]
 005326C0    mov        edx,7
 005326C5    call       @LStrCatN
 005326CA    mov        eax,dword ptr [ebp-8]
 005326CD    add        word ptr [eax],6
>005326D1    jae        005326D8
 005326D3    call       @IntOver
>005326D8    jmp        0053270F
 005326DA    push       dword ptr [ebp-18]
 005326DD    lea        eax,[ebp-50]
 005326E0    mov        edx,ebx
 005326E2    call       @LStrFromChar
 005326E7    push       dword ptr [ebp-50]
 005326EA    push       532770; ''
 005326EF    push       5327A4; '\0'
 005326F4    lea        eax,[ebp-18]
 005326F7    mov        edx,4
 005326FC    call       @LStrCatN
 00532701    mov        eax,dword ptr [ebp-8]
 00532704    add        word ptr [eax],3
>00532708    jae        0053270F
 0053270A    call       @IntOver
 0053270F    inc        dword ptr [ebp-10]
 00532712    dec        esi
<00532713    jne        00532487
 00532719    mov        eax,dword ptr [ebp-8]
 0053271C    movzx      eax,word ptr [eax]
 0053271F    add        eax,1
>00532722    jno        00532729
 00532724    call       @IntOver
 00532729    call       StrAlloc
 0053272E    mov        ebx,eax
 00532730    mov        edx,dword ptr [ebp-18]
 00532733    mov        eax,ebx
 00532735    call       StrPCopy
 0053273A    xor        eax,eax
 0053273C    pop        edx
 0053273D    pop        ecx
 0053273E    pop        ecx
 0053273F    mov        dword ptr fs:[eax],edx
 00532742    push       53275C
 00532747    lea        eax,[ebp-50]
 0053274A    mov        edx,0F
 0053274F    call       @LStrArrayClr
 00532754    ret
<00532755    jmp        @HandleFinally
<0053275A    jmp        00532747
 0053275C    mov        eax,ebx
 0053275E    pop        edi
 0053275F    pop        esi
 00532760    pop        ebx
 00532761    mov        esp,ebp
 00532763    pop        ebp
 00532764    ret
*}
//end;

//005327A8
//function sub_005327A8(?:TStringList; ?:?):?;
//begin
{*
 005327A8    push       ebp
 005327A9    mov        ebp,esp
 005327AB    mov        ecx,4
 005327B0    push       0
 005327B2    push       0
 005327B4    dec        ecx
<005327B5    jne        005327B0
 005327B7    push       ecx
 005327B8    push       ebx
 005327B9    push       esi
 005327BA    push       edi
 005327BB    mov        dword ptr [ebp-8],edx
 005327BE    mov        dword ptr [ebp-4],eax
 005327C1    xor        eax,eax
 005327C3    push       ebp
 005327C4    push       532930
 005327C9    push       dword ptr fs:[eax]
 005327CC    mov        dword ptr fs:[eax],esp
 005327CF    mov        word ptr [ebp-0E],0
 005327D5    lea        eax,[ebp-14]
 005327D8    call       @LStrClr
 005327DD    xor        ebx,ebx
 005327DF    mov        eax,dword ptr [ebp-4]
 005327E2    mov        edx,dword ptr [eax]
 005327E4    call       dword ptr [edx+14]; TStringList.GetCount
 005327E7    mov        esi,eax
 005327E9    sub        esi,1
>005327EC    jno        005327F3
 005327EE    call       @IntOver
 005327F3    test       esi,esi
>005327F5    jl         005328C8
 005327FB    inc        esi
 005327FC    mov        dword ptr [ebp-0C],0
 00532803    lea        ecx,[ebp-18]
 00532806    mov        edx,dword ptr [ebp-0C]
 00532809    mov        eax,dword ptr [ebp-4]
 0053280C    mov        edi,dword ptr [eax]
 0053280E    call       dword ptr [edi+0C]; TStringList.Get
 00532811    mov        eax,dword ptr [ebp-18]
 00532814    call       005329D0
 00532819    mov        edi,eax
 0053281B    mov        eax,edi
 0053281D    sub        ax,1
>00532821    jb         005328BE
 00532827    add        eax,0FFFFFFF7
 0053282A    sub        ax,2
>0053282E    jb         00532832
>00532830    jmp        00532886
 00532832    push       dword ptr [ebp-14]
 00532835    lea        eax,[ebp-1C]
 00532838    mov        edx,edi
 0053283A    call       @LStrFromChar
 0053283F    push       dword ptr [ebp-1C]
 00532842    mov        eax,dword ptr [ebp-18]
 00532845    call       @LStrLen
 0053284A    mov        edx,eax
 0053284C    lea        eax,[ebp-20]
 0053284F    call       @LStrFromChar
 00532854    push       dword ptr [ebp-20]
 00532857    push       dword ptr [ebp-18]
 0053285A    lea        eax,[ebp-14]
 0053285D    mov        edx,4
 00532862    call       @LStrCatN
 00532867    mov        eax,dword ptr [ebp-18]
 0053286A    call       @LStrLen
 0053286F    add        eax,2
>00532872    jno        00532879
 00532874    call       @IntOver
 00532879    add        word ptr [ebp-0E],ax
>0053287D    jae        00532884
 0053287F    call       @IntOver
>00532884    jmp        005328A7
 00532886    lea        eax,[ebp-24]
 00532889    mov        edx,edi
 0053288B    call       @LStrFromChar
 00532890    mov        edx,dword ptr [ebp-24]
 00532893    lea        eax,[ebp-14]
 00532896    call       @LStrCat
 0053289B    add        word ptr [ebp-0E],1
>005328A0    jae        005328A7
 005328A2    call       @IntOver
 005328A7    test       bl,bl
>005328A9    jne        005328BE
 005328AB    dec        edi
 005328AC    sub        di,2
>005328B0    jb         005328B8
 005328B2    sub        di,0C
>005328B6    jne        005328BC
 005328B8    mov        bl,1
>005328BA    jmp        005328BE
 005328BC    xor        ebx,ebx
 005328BE    inc        dword ptr [ebp-0C]
 005328C1    dec        esi
<005328C2    jne        00532803
 005328C8    cmp        word ptr [ebp-0E],0
>005328CD    jbe        005328F6
 005328CF    test       bl,bl
>005328D1    je         005328F6
 005328D3    movzx      eax,word ptr [ebp-0E]
 005328D7    add        eax,1
>005328DA    jno        005328E1
 005328DC    call       @IntOver
 005328E1    call       StrAlloc
 005328E6    mov        ebx,eax
 005328E8    mov        edx,dword ptr [ebp-14]
 005328EB    mov        eax,ebx
 005328ED    call       StrPCopy
 005328F2    mov        ebx,eax
>005328F4    jmp        005328F8
 005328F6    xor        ebx,ebx
 005328F8    mov        eax,0C
 005328FD    call       AllocMem
 00532902    mov        esi,eax
 00532904    mov        eax,esi
 00532906    mov        edx,dword ptr [ebp-8]
 00532909    mov        dword ptr [eax],edx
 0053290B    movzx      edx,word ptr [ebp-0E]
 0053290F    mov        dword ptr [eax+4],edx
 00532912    mov        dword ptr [eax+8],ebx
 00532915    xor        eax,eax
 00532917    pop        edx
 00532918    pop        ecx
 00532919    pop        ecx
 0053291A    mov        dword ptr fs:[eax],edx
 0053291D    push       532937
 00532922    lea        eax,[ebp-24]
 00532925    mov        edx,5
 0053292A    call       @LStrArrayClr
 0053292F    ret
<00532930    jmp        @HandleFinally
<00532935    jmp        00532922
 00532937    mov        eax,esi
 00532939    pop        edi
 0053293A    pop        esi
 0053293B    pop        ebx
 0053293C    mov        esp,ebp
 0053293E    pop        ebp
 0053293F    ret
*}
//end;

//00532940
//function sub_00532940(?:AnsiString):?;
//begin
{*
 00532940    push       ebp
 00532941    mov        ebp,esp
 00532943    push       0
 00532945    push       ebx
 00532946    push       esi
 00532947    push       edi
 00532948    mov        ebx,eax
 0053294A    xor        eax,eax
 0053294C    push       ebp
 0053294D    push       5329AC
 00532952    push       dword ptr fs:[eax]
 00532955    mov        dword ptr fs:[eax],esp
 00532958    lea        edx,[ebp-4]
 0053295B    mov        eax,ebx
 0053295D    call       LowerCase
 00532962    xor        edi,edi
 00532964    mov        edx,dword ptr [ebp-4]
 00532967    mov        eax,5329C4; 'isc_dpb_'
 0053296C    call       @LStrPos
 00532971    dec        eax
>00532972    jne        00532996
 00532974    mov        esi,43
 00532979    mov        ebx,616498; ^'isc_dpb_cdd_pathname'
 0053297E    mov        eax,dword ptr [ebp-4]
 00532981    mov        edx,dword ptr [ebx]
 00532983    call       @LStrCmp
>00532988    jne        00532990
 0053298A    mov        di,word ptr [ebx+4]
>0053298E    jmp        00532996
 00532990    add        ebx,8
 00532993    dec        esi
<00532994    jne        0053297E
 00532996    xor        eax,eax
 00532998    pop        edx
 00532999    pop        ecx
 0053299A    pop        ecx
 0053299B    mov        dword ptr fs:[eax],edx
 0053299E    push       5329B3
 005329A3    lea        eax,[ebp-4]
 005329A6    call       @LStrClr
 005329AB    ret
<005329AC    jmp        @HandleFinally
<005329B1    jmp        005329A3
 005329B3    mov        eax,edi
 005329B5    pop        edi
 005329B6    pop        esi
 005329B7    pop        ebx
 005329B8    pop        ecx
 005329B9    pop        ebp
 005329BA    ret
*}
//end;

//005329D0
//function sub_005329D0(?:AnsiString):?;
//begin
{*
 005329D0    push       ebp
 005329D1    mov        ebp,esp
 005329D3    push       0
 005329D5    push       ebx
 005329D6    push       esi
 005329D7    push       edi
 005329D8    mov        ebx,eax
 005329DA    xor        eax,eax
 005329DC    push       ebp
 005329DD    push       532A3C
 005329E2    push       dword ptr fs:[eax]
 005329E5    mov        dword ptr fs:[eax],esp
 005329E8    lea        edx,[ebp-4]
 005329EB    mov        eax,ebx
 005329ED    call       LowerCase
 005329F2    xor        edi,edi
 005329F4    mov        edx,dword ptr [ebp-4]
 005329F7    mov        eax,532A54; 'isc_tpb_'
 005329FC    call       @LStrPos
 00532A01    dec        eax
>00532A02    jne        00532A26
 00532A04    mov        esi,10
 00532A09    mov        ebx,6166B8; ^'isc_tpb_version3'
 00532A0E    mov        eax,dword ptr [ebp-4]
 00532A11    mov        edx,dword ptr [ebx]
 00532A13    call       @LStrCmp
>00532A18    jne        00532A20
 00532A1A    mov        di,word ptr [ebx+4]
>00532A1E    jmp        00532A26
 00532A20    add        ebx,8
 00532A23    dec        esi
<00532A24    jne        00532A0E
 00532A26    xor        eax,eax
 00532A28    pop        edx
 00532A29    pop        ecx
 00532A2A    pop        ecx
 00532A2B    mov        dword ptr fs:[eax],edx
 00532A2E    push       532A43
 00532A33    lea        eax,[ebp-4]
 00532A36    call       @LStrClr
 00532A3B    ret
<00532A3C    jmp        @HandleFinally
<00532A41    jmp        00532A33
 00532A43    mov        eax,edi
 00532A45    pop        edi
 00532A46    pop        esi
 00532A47    pop        ebx
 00532A48    pop        ecx
 00532A49    pop        ebp
 00532A4A    ret
*}
//end;

//00532A60
//function sub_00532A60(?:?; ?:?):?;
//begin
{*
 00532A60    xor        ecx,ecx
 00532A62    cmp        eax,10
>00532A65    jg         00532AA4
>00532A67    je         00532B32
 00532A6D    add        eax,0FFFFFFF9
 00532A70    cmp        eax,8
>00532A73    ja         00532BDA
 00532A79    jmp        dword ptr [eax*4+532A80]
 00532A79    dd         532B6D
 00532A79    dd         532B54
 00532A79    dd         532B2D
 00532A79    dd         532B28
 00532A79    dd         532B1E
 00532A79    dd         532B86
 00532A79    dd         532B8B
 00532A79    dd         532AEE
 00532A79    dd         532AEE
 00532AA4    cmp        eax,25
>00532AA7    jge        00532AC1
 00532AA9    sub        eax,11
>00532AAC    je         00532AE4
 00532AAE    sub        eax,0A
>00532AB1    je         00532B23
 00532AB3    sub        eax,8
>00532AB6    je         00532B90
>00532ABC    jmp        00532BDA
 00532AC1    add        eax,0FFFFFFDB
 00532AC4    sub        eax,2
>00532AC7    jb         00532AE9
 00532AC9    dec        eax
 00532ACA    sub        eax,2
>00532ACD    jb         00532AE9
 00532ACF    sub        eax,3
>00532AD2    je         00532B2D
 00532AD4    sub        eax,0D8
>00532AD9    je         00532B95
>00532ADF    jmp        00532BDA
 00532AE4    mov        cl,1
 00532AE6    mov        eax,ecx
 00532AE8    ret
 00532AE9    mov        cl,9
 00532AEB    mov        eax,ecx
 00532AED    ret
 00532AEE    sub        edx,1
>00532AF1    jb         00532AFD
>00532AF3    je         00532B04
 00532AF5    dec        edx
>00532AF6    je         00532B0B
 00532AF8    dec        edx
>00532AF9    je         00532B12
>00532AFB    jmp        00532B19
 00532AFD    mov        cl,9
>00532AFF    jmp        00532BDC
 00532B04    mov        cl,0B
>00532B06    jmp        00532BDC
 00532B0B    mov        cl,9
>00532B0D    jmp        00532BDC
 00532B12    mov        cl,0A
>00532B14    jmp        00532BDC
 00532B19    mov        cl,9
 00532B1B    mov        eax,ecx
 00532B1D    ret
 00532B1E    mov        cl,7
 00532B20    mov        eax,ecx
 00532B22    ret
 00532B23    mov        cl,7
 00532B25    mov        eax,ecx
 00532B27    ret
 00532B28    mov        cl,7
 00532B2A    mov        eax,ecx
 00532B2C    ret
 00532B2D    mov        cl,5
 00532B2F    mov        eax,ecx
 00532B31    ret
 00532B32    sub        edx,1
>00532B35    jb         00532B41
>00532B37    je         00532B48
 00532B39    dec        edx
>00532B3A    je         00532B4F
>00532B3C    jmp        00532BDC
 00532B41    mov        cl,5
>00532B43    jmp        00532BDC
 00532B48    mov        cl,7
>00532B4A    jmp        00532BDC
 00532B4F    mov        cl,8
 00532B51    mov        eax,ecx
 00532B53    ret
 00532B54    sub        edx,1
>00532B57    jb         00532B60
>00532B59    je         00532B64
 00532B5B    dec        edx
>00532B5C    je         00532B68
>00532B5E    jmp        00532BDC
 00532B60    mov        cl,4
>00532B62    jmp        00532BDC
 00532B64    mov        cl,7
>00532B66    jmp        00532BDC
 00532B68    mov        cl,8
 00532B6A    mov        eax,ecx
 00532B6C    ret
 00532B6D    sub        edx,1
>00532B70    jb         00532B79
>00532B72    je         00532B7D
 00532B74    dec        edx
>00532B75    je         00532B81
>00532B77    jmp        00532BDC
 00532B79    mov        cl,3
>00532B7B    jmp        00532BDC
 00532B7D    mov        cl,7
>00532B7F    jmp        00532BDC
 00532B81    mov        cl,7
 00532B83    mov        eax,ecx
 00532B85    ret
 00532B86    mov        cl,0C
 00532B88    mov        eax,ecx
 00532B8A    ret
 00532B8B    mov        cl,0D
 00532B8D    mov        eax,ecx
 00532B8F    ret
 00532B90    mov        cl,0E
 00532B92    mov        eax,ecx
 00532B94    ret
 00532B95    cmp        edx,6
>00532B98    ja         00532BDC
 00532B9A    jmp        dword ptr [edx*4+532BA1]
 00532B9A    dd         532BBD
 00532B9A    dd         532BC1
 00532B9A    dd         532BC5
 00532B9A    dd         532BC9
 00532B9A    dd         532BCD
 00532B9A    dd         532BD1
 00532B9A    dd         532BD5
 00532BBD    mov        cl,11
>00532BBF    jmp        00532BDC
 00532BC1    mov        cl,0F
>00532BC3    jmp        00532BDC
 00532BC5    mov        cl,11
>00532BC7    jmp        00532BDC
 00532BC9    mov        cl,0F
>00532BCB    jmp        00532BDC
 00532BCD    xor        ecx,ecx
>00532BCF    jmp        00532BDC
 00532BD1    mov        cl,0F
>00532BD3    jmp        00532BDC
 00532BD5    mov        cl,0F
 00532BD7    mov        eax,ecx
 00532BD9    ret
 00532BDA    xor        ecx,ecx
 00532BDC    mov        eax,ecx
 00532BDE    ret
*}
//end;

//00532ED0
//procedure sub_00532ED0(?:IZInterbasePlainDriver; ?:?; ?:?);
//begin
{*
 00532ED0    push       ebp
 00532ED1    mov        ebp,esp
 00532ED3    add        esp,0FFFFFB64
 00532ED9    push       ebx
 00532EDA    push       esi
 00532EDB    push       edi
 00532EDC    xor        ebx,ebx
 00532EDE    mov        dword ptr [ebp-484],ebx
 00532EE4    mov        dword ptr [ebp-47C],ebx
 00532EEA    mov        dword ptr [ebp-480],ebx
 00532EF0    mov        dword ptr [ebp-470],ebx
 00532EF6    mov        dword ptr [ebp-46C],ebx
 00532EFC    mov        dword ptr [ebp-0C],ebx
 00532EFF    mov        dword ptr [ebp-10],ebx
 00532F02    mov        esi,edx
 00532F04    lea        edi,[ebp-64]
 00532F07    push       ecx
 00532F08    mov        ecx,15
 00532F0D    rep movs   dword ptr [edi],dword ptr [esi]
 00532F0F    pop        ecx
 00532F10    mov        ebx,ecx
 00532F12    mov        dword ptr [ebp-4],eax
 00532F15    mov        eax,dword ptr [ebp-4]
 00532F18    call       @IntfAddRef
 00532F1D    mov        eax,dword ptr [ebp+8]
 00532F20    call       @LStrAddRef
 00532F25    xor        eax,eax
 00532F27    push       ebp
 00532F28    push       533123
 00532F2D    push       dword ptr fs:[eax]
 00532F30    mov        dword ptr fs:[eax],esp
 00532F33    cmp        dword ptr [ebp-64],1
>00532F37    jne        005330D8
 00532F3D    cmp        dword ptr [ebp-60],0
>00532F41    jle        005330D8
 00532F47    lea        eax,[ebp-0C]
 00532F4A    call       @LStrClr
 00532F4F    lea        eax,[ebp-64]
 00532F52    mov        dword ptr [ebp-8],eax
>00532F55    jmp        00532F83
 00532F57    push       dword ptr [ebp-0C]
 00532F5A    push       53313C; ' '
 00532F5F    lea        edx,[ebp-46C]
 00532F65    lea        eax,[ebp-465]
 00532F6B    call       StrPas
 00532F70    push       dword ptr [ebp-46C]
 00532F76    lea        eax,[ebp-0C]
 00532F79    mov        edx,3
 00532F7E    call       @LStrCatN
 00532F83    lea        ecx,[ebp-8]
 00532F86    lea        edx,[ebp-465]
 00532F8C    mov        eax,dword ptr [ebp-4]
 00532F8F    mov        esi,dword ptr [eax]
 00532F91    call       dword ptr [esi+4C]
 00532F94    test       eax,eax
<00532F96    jg         00532F57
 00532F98    lea        edx,[ebp-64]
 00532F9B    mov        eax,dword ptr [ebp-4]
 00532F9E    mov        ecx,dword ptr [eax]
 00532FA0    call       dword ptr [ecx+44]
 00532FA3    mov        esi,eax
 00532FA5    push       400
 00532FAA    lea        ecx,[ebp-465]
 00532FB0    mov        edx,esi
 00532FB2    add        edx,8000
 00532FB8    cmp        edx,0FFFF
>00532FBE    jbe        00532FC5
 00532FC0    call       @BoundErr
 00532FC5    add        edx,0FFFF8000
 00532FCB    mov        eax,dword ptr [ebp-4]
 00532FCE    mov        edi,dword ptr [eax]
 00532FD0    call       dword ptr [edi+48]
 00532FD3    lea        edx,[ebp-10]
 00532FD6    lea        eax,[ebp-465]
 00532FDC    call       StrPas
 00532FE1    cmp        dword ptr [ebp+8],0
>00532FE5    je         0053301E
 00532FE7    lea        eax,[ebp-470]
 00532FED    push       eax
 00532FEE    mov        eax,dword ptr [ebp+8]
 00532FF1    mov        dword ptr [ebp-478],eax
 00532FF7    mov        byte ptr [ebp-474],0B
 00532FFE    lea        edx,[ebp-478]
 00533004    xor        ecx,ecx
 00533006    mov        eax,533148; ' The SQL: %s; '
 0053300B    call       Format
 00533010    mov        edx,dword ptr [ebp-470]
 00533016    lea        eax,[ebp+8]
 00533019    call       @LStrLAsg
 0053301E    cmp        dword ptr [ebp-0C],0
>00533022    je         005330D8
 00533028    mov        eax,dword ptr [ebp-0C]
 0053302B    push       eax
 0053302C    push       esi
 0053302D    lea        eax,[ebp-47C]
 00533033    mov        ecx,dword ptr [ebp+8]
 00533036    mov        edx,dword ptr [ebp-10]
 00533039    call       @LStrCat3
 0053303E    mov        eax,dword ptr [ebp-47C]
 00533044    push       eax
 00533045    lea        edx,[ebp-480]
 0053304B    mov        eax,dword ptr [ebp-4]
 0053304E    mov        ecx,dword ptr [eax]
 00533050    call       dword ptr [ecx+0C]
 00533053    mov        ecx,dword ptr [ebp-480]
 00533059    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0053305E    mov        eax,dword ptr [eax]
 00533060    mov        edx,ebx
 00533062    mov        ebx,dword ptr [eax]
 00533064    call       dword ptr [ebx+40]
 00533067    lea        eax,[ebp-484]
 0053306D    push       eax
 0053306E    mov        eax,dword ptr [ebp-0C]
 00533071    mov        dword ptr [ebp-49C],eax
 00533077    mov        byte ptr [ebp-498],0B
 0053307E    mov        dword ptr [ebp-494],esi
 00533084    mov        byte ptr [ebp-490],0
 0053308B    mov        eax,dword ptr [ebp-10]
 0053308E    mov        dword ptr [ebp-48C],eax
 00533094    mov        byte ptr [ebp-488],0B
 0053309B    lea        edx,[ebp-49C]
 005330A1    mov        ecx,2
 005330A6    mov        eax,533160; 'SQL Error: %s. Error Code: %d. %s'
 005330AB    call       Format
 005330B0    lea        eax,[ebp-484]
 005330B6    mov        edx,dword ptr [ebp+8]
 005330B9    call       @LStrCat
 005330BE    mov        eax,dword ptr [ebp-484]
 005330C4    push       eax
 005330C5    mov        ecx,esi
 005330C7    mov        dl,1
 005330C9    mov        eax,[004C6D20]; EZSQLException
 005330CE    call       EZSQLException.Create; EZSQLException.Create
 005330D3    call       @RaiseExcept
 005330D8    xor        eax,eax
 005330DA    pop        edx
 005330DB    pop        ecx
 005330DC    pop        ecx
 005330DD    mov        dword ptr fs:[eax],edx
 005330E0    push       53312A
 005330E5    lea        eax,[ebp-484]
 005330EB    mov        edx,3
 005330F0    call       @LStrArrayClr
 005330F5    lea        eax,[ebp-470]
 005330FB    mov        edx,2
 00533100    call       @LStrArrayClr
 00533105    lea        eax,[ebp-10]
 00533108    mov        edx,2
 0053310D    call       @LStrArrayClr
 00533112    lea        eax,[ebp-4]
 00533115    call       @IntfClear
 0053311A    lea        eax,[ebp+8]
 0053311D    call       @LStrClr
 00533122    ret
<00533123    jmp        @HandleFinally
<00533128    jmp        005330E5
 0053312A    pop        edi
 0053312B    pop        esi
 0053312C    pop        ebx
 0053312D    mov        esp,ebp
 0053312F    pop        ebp
 00533130    ret        4
*}
//end;

//00533184
//function sub_00533184(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 00533184    push       ebp
 00533185    mov        ebp,esp
 00533187    add        esp,0FFFFFFA0
 0053318A    push       ebx
 0053318B    push       esi
 0053318C    xor        ebx,ebx
 0053318E    mov        dword ptr [ebp-60],ebx
 00533191    mov        dword ptr [ebp-8],ecx
 00533194    mov        ebx,edx
 00533196    mov        dword ptr [ebp-4],eax
 00533199    mov        esi,dword ptr [ebp+8]
 0053319C    mov        eax,dword ptr [ebp-4]
 0053319F    call       @IntfAddRef
 005331A4    mov        eax,dword ptr [ebp+0C]
 005331A7    call       @LStrAddRef
 005331AC    xor        eax,eax
 005331AE    push       ebp
 005331AF    push       53327B
 005331B4    push       dword ptr fs:[eax]
 005331B7    mov        dword ptr fs:[eax],esp
 005331BA    push       esi
 005331BB    lea        edx,[ebp-5C]
 005331BE    mov        ecx,ebx
 005331C0    mov        eax,dword ptr [ebp-4]
 005331C3    mov        ebx,dword ptr [eax]
 005331C5    call       dword ptr [ebx+6C]
 005331C8    mov        eax,dword ptr [ebp+0C]
 005331CB    push       eax
 005331CC    mov        cl,3
 005331CE    lea        edx,[ebp-5C]
 005331D1    mov        eax,dword ptr [ebp-4]
 005331D4    call       00532ED0
 005331D9    push       esi
 005331DA    push       0
 005331DC    mov        eax,dword ptr [ebp+0C]
 005331DF    call       @LStrToPChar
 005331E4    push       eax
 005331E5    mov        ax,word ptr [ebp+10]
 005331E9    push       eax
 005331EA    push       0
 005331EC    lea        edx,[ebp-5C]
 005331EF    mov        ecx,dword ptr [ebp-8]
 005331F2    mov        eax,dword ptr [ebp-4]
 005331F5    mov        ebx,dword ptr [eax]
 005331F7    call       dword ptr [ebx+8C]
 005331FD    mov        eax,dword ptr [ebp+0C]
 00533200    push       eax
 00533201    mov        cl,3
 00533203    lea        edx,[ebp-5C]
 00533206    mov        eax,dword ptr [ebp-4]
 00533209    call       00532ED0
 0053320E    mov        edx,dword ptr [esi]
 00533210    mov        eax,dword ptr [ebp-4]
 00533213    call       00533378
 00533218    mov        ebx,eax
 0053321A    mov        eax,ebx
 0053321C    test       al,al
>0053321E    je         0053322A
 00533220    add        al,0FA
 00533222    sub        al,2
>00533224    jb         0053322A
 00533226    sub        al,1
>00533228    jne        00533255
 0053322A    mov        edx,dword ptr [esi]
 0053322C    mov        eax,dword ptr [ebp-4]
 0053322F    call       00533438
 00533234    lea        edx,[ebp-60]
 00533237    mov        eax,[0061B74C]; ^#122.sResString72:TResStringRec
 0053323C    call       LoadResString
 00533241    mov        ecx,dword ptr [ebp-60]
 00533244    mov        dl,1
 00533246    mov        eax,[004C6D20]; EZSQLException
 0053324B    call       EZSQLException.Create; EZSQLException.Create
 00533250    call       @RaiseExcept
 00533255    xor        eax,eax
 00533257    pop        edx
 00533258    pop        ecx
 00533259    pop        ecx
 0053325A    mov        dword ptr fs:[eax],edx
 0053325D    push       533282
 00533262    lea        eax,[ebp-60]
 00533265    call       @LStrClr
 0053326A    lea        eax,[ebp-4]
 0053326D    call       @IntfClear
 00533272    lea        eax,[ebp+0C]
 00533275    call       @LStrClr
 0053327A    ret
<0053327B    jmp        @HandleFinally
<00533280    jmp        00533262
 00533282    mov        eax,ebx
 00533284    pop        esi
 00533285    pop        ebx
 00533286    mov        esp,ebp
 00533288    pop        ebp
 00533289    ret        0C
*}
//end;

//0053328C
//procedure sub_0053328C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0053328C    push       ebp
 0053328D    mov        ebp,esp
 0053328F    add        esp,0FFFFFFA8
 00533292    push       ebx
 00533293    push       esi
 00533294    push       edi
 00533295    mov        ebx,ecx
 00533297    mov        dword ptr [ebp-4],eax
 0053329A    mov        esi,dword ptr [ebp+0C]
 0053329D    mov        eax,dword ptr [ebp-4]
 005332A0    call       @IntfAddRef
 005332A5    mov        eax,dword ptr [ebp+10]
 005332A8    call       @LStrAddRef
 005332AD    mov        eax,dword ptr [ebp+8]
 005332B0    call       @IntfAddRef
 005332B5    xor        eax,eax
 005332B7    push       ebp
 005332B8    push       533365
 005332BD    push       dword ptr fs:[eax]
 005332C0    mov        dword ptr fs:[eax],esp
 005332C3    push       ebx
 005332C4    mov        eax,dword ptr [ebp+8]
 005332C7    mov        edx,dword ptr [eax]
 005332C9    call       dword ptr [edx+18]
 005332CC    push       eax
 005332CD    mov        ecx,esi
 005332CF    lea        edx,[ebp-58]
 005332D2    mov        eax,dword ptr [ebp-4]
 005332D5    mov        edi,dword ptr [eax]
 005332D7    call       dword ptr [edi+70]
 005332DA    mov        eax,dword ptr [ebp+10]
 005332DD    push       eax
 005332DE    mov        cl,3
 005332E0    lea        edx,[ebp-58]
 005332E3    mov        eax,dword ptr [ebp-4]
 005332E6    call       00532ED0
 005332EB    mov        eax,dword ptr [ebp+8]
 005332EE    mov        edx,dword ptr [eax]
 005332F0    call       dword ptr [edx+18]
 005332F3    mov        di,word ptr [eax+12]
 005332F7    mov        eax,dword ptr [ebp+8]
 005332FA    mov        edx,dword ptr [eax]
 005332FC    call       dword ptr [edx+18]
 005332FF    cmp        di,word ptr [eax+10]
>00533303    jle        00533335
 00533305    mov        eax,dword ptr [ebp+8]
 00533308    mov        edx,dword ptr [eax]
 0053330A    call       dword ptr [edx+10]
 0053330D    push       ebx
 0053330E    mov        eax,dword ptr [ebp+8]
 00533311    mov        edx,dword ptr [eax]
 00533313    call       dword ptr [edx+18]
 00533316    push       eax
 00533317    mov        ecx,esi
 00533319    lea        edx,[ebp-58]
 0053331C    mov        eax,dword ptr [ebp-4]
 0053331F    mov        ebx,dword ptr [eax]
 00533321    call       dword ptr [ebx+70]
 00533324    mov        eax,dword ptr [ebp+10]
 00533327    push       eax
 00533328    mov        cl,3
 0053332A    lea        edx,[ebp-58]
 0053332D    mov        eax,dword ptr [ebp-4]
 00533330    call       00532ED0
 00533335    xor        edx,edx
 00533337    mov        eax,dword ptr [ebp+8]
 0053333A    mov        ecx,dword ptr [eax]
 0053333C    call       dword ptr [ecx+0C]
 0053333F    xor        eax,eax
 00533341    pop        edx
 00533342    pop        ecx
 00533343    pop        ecx
 00533344    mov        dword ptr fs:[eax],edx
 00533347    push       53336C
 0053334C    lea        eax,[ebp-4]
 0053334F    call       @IntfClear
 00533354    lea        eax,[ebp+8]
 00533357    call       @IntfClear
 0053335C    lea        eax,[ebp+10]
 0053335F    call       @LStrClr
 00533364    ret
<00533365    jmp        @HandleFinally
<0053336A    jmp        0053334C
 0053336C    pop        edi
 0053336D    pop        esi
 0053336E    pop        ebx
 0053336F    mov        esp,ebp
 00533371    pop        ebp
 00533372    ret        0C
*}
//end;

//00533378
//function sub_00533378(?:?; ?:?):?;
//begin
{*
 00533378    push       ebp
 00533379    mov        ebp,esp
 0053337B    add        esp,0FFFFFF98
 0053337E    push       ebx
 0053337F    push       esi
 00533380    mov        dword ptr [ebp-8],edx
 00533383    mov        dword ptr [ebp-4],eax
 00533386    mov        eax,dword ptr [ebp-4]
 00533389    call       @IntfAddRef
 0053338E    xor        eax,eax
 00533390    push       ebp
 00533391    push       533429
 00533396    push       dword ptr fs:[eax]
 00533399    mov        dword ptr fs:[eax],esp
 0053339C    xor        ebx,ebx
 0053339E    mov        byte ptr [ebp-9],15
 005333A2    push       1
 005333A4    lea        eax,[ebp-9]
 005333A7    push       eax
 005333A8    push       8
 005333AA    lea        eax,[ebp-11]
 005333AD    push       eax
 005333AE    lea        ecx,[ebp-8]
 005333B1    lea        edx,[ebp-68]
 005333B4    mov        eax,dword ptr [ebp-4]
 005333B7    mov        esi,dword ptr [eax]
 005333B9    call       dword ptr [esi+94]
 005333BF    push       0
 005333C1    mov        cl,4
 005333C3    lea        edx,[ebp-68]
 005333C6    mov        eax,dword ptr [ebp-4]
 005333C9    call       00532ED0
 005333CE    cmp        byte ptr [ebp-11],15
>005333D2    jne        00533413
 005333D4    lea        edx,[ebp-10]
 005333D7    mov        cx,2
 005333DB    mov        eax,dword ptr [ebp-4]
 005333DE    mov        ebx,dword ptr [eax]
 005333E0    call       dword ptr [ebx+0CC]
 005333E6    mov        ebx,eax
 005333E8    mov        ecx,ebx
 005333EA    add        ecx,8000
 005333F0    cmp        ecx,0FFFF
>005333F6    jbe        005333FD
 005333F8    call       @BoundErr
 005333FD    add        ecx,0FFFF8000
 00533403    lea        edx,[ebp-0E]
 00533406    mov        eax,dword ptr [ebp-4]
 00533409    mov        ebx,dword ptr [eax]
 0053340B    call       dword ptr [ebx+0CC]
 00533411    mov        ebx,eax
 00533413    xor        eax,eax
 00533415    pop        edx
 00533416    pop        ecx
 00533417    pop        ecx
 00533418    mov        dword ptr fs:[eax],edx
 0053341B    push       533430
 00533420    lea        eax,[ebp-4]
 00533423    call       @IntfClear
 00533428    ret
<00533429    jmp        @HandleFinally
<0053342E    jmp        00533420
 00533430    mov        eax,ebx
 00533432    pop        esi
 00533433    pop        ebx
 00533434    mov        esp,ebp
 00533436    pop        ebp
 00533437    ret
*}
//end;

//00533438
//procedure sub_00533438(?:?; ?:dword);
//begin
{*
 00533438    push       ebp
 00533439    mov        ebp,esp
 0053343B    add        esp,0FFFFFFA4
 0053343E    push       ebx
 0053343F    mov        dword ptr [ebp-8],edx
 00533442    mov        dword ptr [ebp-4],eax
 00533445    mov        eax,dword ptr [ebp-4]
 00533448    call       @IntfAddRef
 0053344D    xor        eax,eax
 0053344F    push       ebp
 00533450    push       533499
 00533455    push       dword ptr fs:[eax]
 00533458    mov        dword ptr fs:[eax],esp
 0053345B    cmp        dword ptr [ebp-8],0
>0053345F    je         00533483
 00533461    push       2
 00533463    lea        ecx,[ebp-8]
 00533466    lea        edx,[ebp-5C]
 00533469    mov        eax,dword ptr [ebp-4]
 0053346C    mov        ebx,dword ptr [eax]
 0053346E    call       dword ptr [ebx+88]
 00533474    push       0
 00533476    mov        cl,4
 00533478    lea        edx,[ebp-5C]
 0053347B    mov        eax,dword ptr [ebp-4]
 0053347E    call       00532ED0
 00533483    xor        eax,eax
 00533485    pop        edx
 00533486    pop        ecx
 00533487    pop        ecx
 00533488    mov        dword ptr fs:[eax],edx
 0053348B    push       5334A0
 00533490    lea        eax,[ebp-4]
 00533493    call       @IntfClear
 00533498    ret
<00533499    jmp        @HandleFinally
<0053349E    jmp        00533490
 005334A0    pop        ebx
 005334A1    mov        esp,ebp
 005334A3    pop        ebp
 005334A4    ret
*}
//end;

//005334A8
//function sub_005334A8(?:?; ?:?; ?:?):?;
//begin
{*
 005334A8    push       ebp
 005334A9    mov        ebp,esp
 005334AB    add        esp,0FFFFFEA0
 005334B1    push       ebx
 005334B2    push       esi
 005334B3    push       edi
 005334B4    mov        ebx,ecx
 005334B6    mov        dword ptr [ebp-8],edx
 005334B9    mov        dword ptr [ebp-4],eax
 005334BC    mov        eax,dword ptr [ebp-4]
 005334BF    call       @IntfAddRef
 005334C4    xor        eax,eax
 005334C6    push       ebp
 005334C7    push       533591
 005334CC    push       dword ptr fs:[eax]
 005334CF    mov        dword ptr fs:[eax],esp
 005334D2    or         esi,0FFFFFFFF
 005334D5    mov        byte ptr [ebp-9],17
 005334D9    push       1
 005334DB    lea        eax,[ebp-9]
 005334DE    push       eax
 005334DF    push       100
 005334E4    lea        eax,[ebp-109]
 005334EA    push       eax
 005334EB    lea        ecx,[ebp-8]
 005334EE    lea        edx,[ebp-160]
 005334F4    mov        eax,dword ptr [ebp-4]
 005334F7    mov        edi,dword ptr [eax]
 005334F9    call       dword ptr [edi+94]
 005334FF    test       eax,eax
>00533501    jg         0053357B
 00533503    push       0
 00533505    mov        cl,4
 00533507    lea        edx,[ebp-160]
 0053350D    mov        eax,dword ptr [ebp-4]
 00533510    call       00532ED0
 00533515    cmp        byte ptr [ebp-109],17
>0053351C    jne        0053357B
 0053351E    sub        bl,2
>00533521    je         0053355F
 00533523    dec        bl
>00533525    je         0053352D
 00533527    dec        bl
>00533529    je         00533546
>0053352B    jmp        00533578
 0053352D    lea        edx,[ebp-103]
 00533533    mov        cx,4
 00533537    mov        eax,dword ptr [ebp-4]
 0053353A    mov        ebx,dword ptr [eax]
 0053353C    call       dword ptr [ebx+0CC]
 00533542    mov        esi,eax
>00533544    jmp        0053357B
 00533546    lea        edx,[ebp-0FC]
 0053354C    mov        cx,4
 00533550    mov        eax,dword ptr [ebp-4]
 00533553    mov        ebx,dword ptr [eax]
 00533555    call       dword ptr [ebx+0CC]
 0053355B    mov        esi,eax
>0053355D    jmp        0053357B
 0053355F    lea        edx,[ebp-0EE]
 00533565    mov        cx,4
 00533569    mov        eax,dword ptr [ebp-4]
 0053356C    mov        ebx,dword ptr [eax]
 0053356E    call       dword ptr [ebx+0CC]
 00533574    mov        esi,eax
>00533576    jmp        0053357B
 00533578    or         esi,0FFFFFFFF
 0053357B    xor        eax,eax
 0053357D    pop        edx
 0053357E    pop        ecx
 0053357F    pop        ecx
 00533580    mov        dword ptr fs:[eax],edx
 00533583    push       533598
 00533588    lea        eax,[ebp-4]
 0053358B    call       @IntfClear
 00533590    ret
<00533591    jmp        @HandleFinally
<00533596    jmp        00533588
 00533598    mov        eax,esi
 0053359A    pop        edi
 0053359B    pop        esi
 0053359C    pop        ebx
 0053359D    mov        esp,ebp
 0053359F    pop        ebp
 005335A0    ret
*}
//end;

//005335A4
//procedure sub_005335A4(?:?; ?:AnsiString; ?:TZVariantDynArray; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005335A4    push       ebp
 005335A5    mov        ebp,esp
 005335A7    add        esp,0FFFFFF70
 005335AD    push       ebx
 005335AE    push       esi
 005335AF    push       edi
 005335B0    xor        ebx,ebx
 005335B2    mov        dword ptr [ebp-90],ebx
 005335B8    mov        dword ptr [ebp-8C],ebx
 005335BE    mov        dword ptr [ebp-84],ebx
 005335C4    mov        dword ptr [ebp-88],ebx
 005335CA    mov        dword ptr [ebp-7C],ebx
 005335CD    mov        dword ptr [ebp-80],ebx
 005335D0    mov        dword ptr [ebp-78],ebx
 005335D3    mov        dword ptr [ebp-74],ebx
 005335D6    mov        dword ptr [ebp-14],ebx
 005335D9    mov        dword ptr [ebp-0C],ecx
 005335DC    mov        dword ptr [ebp-8],edx
 005335DF    mov        dword ptr [ebp-4],eax
 005335E2    mov        esi,dword ptr [ebp+0C]
 005335E5    mov        ebx,dword ptr [ebp+10]
 005335E8    mov        eax,dword ptr [ebp-4]
 005335EB    call       @IntfAddRef
 005335F0    mov        eax,dword ptr [ebp-8]
 005335F3    call       @LStrAddRef
 005335F8    mov        eax,dword ptr [ebp-0C]
 005335FB    call       @DynArrayAddRef
 00533600    mov        eax,dword ptr [ebp+18]
 00533603    call       @DynArrayAddRef
 00533608    mov        eax,dword ptr [ebp+8]
 0053360B    call       @IntfAddRef
 00533610    xor        eax,eax
 00533612    push       ebp
 00533613    push       533B28
 00533618    push       dword ptr fs:[eax]
 0053361B    mov        dword ptr fs:[eax],esp
 0053361E    push       ebx
 0053361F    mov        eax,dword ptr [ebp+8]
 00533622    mov        edx,dword ptr [eax]
 00533624    call       dword ptr [edx+18]
 00533627    push       eax
 00533628    mov        ecx,esi
 0053362A    lea        edx,[ebp-70]
 0053362D    mov        eax,dword ptr [ebp-4]
 00533630    mov        edi,dword ptr [eax]
 00533632    call       dword ptr [edi+74]
 00533635    mov        eax,dword ptr [ebp-8]
 00533638    push       eax
 00533639    mov        cl,3
 0053363B    lea        edx,[ebp-70]
 0053363E    mov        eax,dword ptr [ebp-4]
 00533641    call       00532ED0
 00533646    mov        eax,dword ptr [ebp+8]
 00533649    mov        edx,dword ptr [eax]
 0053364B    call       dword ptr [edx+18]
 0053364E    mov        di,word ptr [eax+12]
 00533652    mov        eax,dword ptr [ebp+8]
 00533655    mov        edx,dword ptr [eax]
 00533657    call       dword ptr [edx+18]
 0053365A    cmp        di,word ptr [eax+10]
>0053365E    jle        00533690
 00533660    mov        eax,dword ptr [ebp+8]
 00533663    mov        edx,dword ptr [eax]
 00533665    call       dword ptr [edx+10]
 00533668    push       ebx
 00533669    mov        eax,dword ptr [ebp+8]
 0053366C    mov        edx,dword ptr [eax]
 0053366E    call       dword ptr [edx+18]
 00533671    push       eax
 00533672    mov        ecx,esi
 00533674    lea        edx,[ebp-70]
 00533677    mov        eax,dword ptr [ebp-4]
 0053367A    mov        ebx,dword ptr [eax]
 0053367C    call       dword ptr [ebx+74]
 0053367F    mov        eax,dword ptr [ebp-8]
 00533682    push       eax
 00533683    mov        cl,3
 00533685    lea        edx,[ebp-70]
 00533688    mov        eax,dword ptr [ebp-4]
 0053368B    call       00532ED0
 00533690    mov        dl,1
 00533692    mov        eax,dword ptr [ebp+8]
 00533695    mov        ecx,dword ptr [eax]
 00533697    call       dword ptr [ecx+0C]
 0053369A    mov        eax,dword ptr [ebp+8]
 0053369D    mov        edx,dword ptr [eax]
 0053369F    call       dword ptr [edx+24]
 005336A2    cmp        eax,dword ptr [ebp+14]
>005336A5    je         005336C8
 005336A7    lea        edx,[ebp-74]
 005336AA    mov        eax,[0061B5C8]; ^#122.sResString47:TResStringRec
 005336AF    call       LoadResString
 005336B4    mov        ecx,dword ptr [ebp-74]
 005336B7    mov        dl,1
 005336B9    mov        eax,[004C6D20]; EZSQLException
 005336BE    call       EZSQLException.Create; EZSQLException.Create
 005336C3    call       @RaiseExcept
 005336C8    mov        eax,dword ptr [ebp+8]
 005336CB    mov        edx,dword ptr [eax]
 005336CD    call       dword ptr [edx+24]
 005336D0    sub        eax,1
>005336D3    jno        005336DA
 005336D5    call       @IntOver
 005336DA    test       eax,eax
>005336DC    jl         00533A97
 005336E2    inc        eax
 005336E3    mov        dword ptr [ebp-1C],eax
 005336E6    mov        dword ptr [ebp-10],0
 005336ED    imul       ebx,dword ptr [ebp-10],0B
>005336F1    jno        005336F8
 005336F3    call       @IntOver
 005336F8    mov        eax,dword ptr [ebp-0C]
 005336FB    lea        edx,[eax+ebx*4]
 005336FE    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00533703    mov        eax,dword ptr [eax]
 00533705    mov        ecx,dword ptr [eax]
 00533707    call       dword ptr [ecx+0C]
 0053370A    mov        ecx,eax
 0053370C    mov        edx,dword ptr [ebp-10]
 0053370F    mov        eax,dword ptr [ebp+8]
 00533712    mov        esi,dword ptr [eax]
 00533714    call       dword ptr [esi+58]
 00533717    mov        eax,dword ptr [ebp-0C]
 0053371A    lea        edx,[eax+ebx*4]
 0053371D    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00533722    mov        eax,dword ptr [eax]
 00533724    mov        ecx,dword ptr [eax]
 00533726    call       dword ptr [ecx+0C]
 00533729    test       al,al
>0053372B    jne        00533A8B
 00533731    mov        eax,dword ptr [ebp+18]
 00533734    mov        edx,dword ptr [ebp-10]
 00533737    movzx      eax,byte ptr [eax+edx]
 0053373B    cmp        eax,11
>0053373E    ja         00533A64
 00533744    jmp        dword ptr [eax*4+53374B]
 00533744    dd         533A64
 00533744    dd         533793
 00533744    dd         5337B7
 00533744    dd         5337DB
 00533744    dd         5337FF
 00533744    dd         533823
 00533744    dd         533847
 00533744    dd         533870
 00533744    dd         533899
 00533744    dd         5338C2
 00533744    dd         5338ED
 00533744    dd         533923
 00533744    dd         533965
 00533744    dd         533991
 00533744    dd         5339BD
 00533744    dd         5339E9
 00533744    dd         5339E9
 00533744    dd         5339E9
 00533793    mov        eax,dword ptr [ebp-0C]
 00533796    lea        edx,[eax+ebx*4]
 00533799    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0053379E    mov        eax,dword ptr [eax]
 005337A0    mov        ecx,dword ptr [eax]
 005337A2    call       dword ptr [ecx+24]
 005337A5    mov        ecx,eax
 005337A7    mov        edx,dword ptr [ebp-10]
 005337AA    mov        eax,dword ptr [ebp+8]
 005337AD    mov        ebx,dword ptr [eax]
 005337AF    call       dword ptr [ebx+5C]
>005337B2    jmp        00533A8B
 005337B7    mov        eax,dword ptr [ebp-0C]
 005337BA    lea        edx,[eax+ebx*4]
 005337BD    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005337C2    mov        eax,dword ptr [eax]
 005337C4    mov        ecx,dword ptr [eax]
 005337C6    call       dword ptr [ecx+28]
 005337C9    mov        ecx,eax
 005337CB    mov        edx,dword ptr [ebp-10]
 005337CE    mov        eax,dword ptr [ebp+8]
 005337D1    mov        ebx,dword ptr [eax]
 005337D3    call       dword ptr [ebx+60]
>005337D6    jmp        00533A8B
 005337DB    mov        eax,dword ptr [ebp-0C]
 005337DE    lea        edx,[eax+ebx*4]
 005337E1    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005337E6    mov        eax,dword ptr [eax]
 005337E8    mov        ecx,dword ptr [eax]
 005337EA    call       dword ptr [ecx+28]
 005337ED    mov        ecx,eax
 005337EF    mov        edx,dword ptr [ebp-10]
 005337F2    mov        eax,dword ptr [ebp+8]
 005337F5    mov        ebx,dword ptr [eax]
 005337F7    call       dword ptr [ebx+64]
>005337FA    jmp        00533A8B
 005337FF    mov        eax,dword ptr [ebp-0C]
 00533802    lea        edx,[eax+ebx*4]
 00533805    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0053380A    mov        eax,dword ptr [eax]
 0053380C    mov        ecx,dword ptr [eax]
 0053380E    call       dword ptr [ecx+28]
 00533811    mov        ecx,eax
 00533813    mov        edx,dword ptr [ebp-10]
 00533816    mov        eax,dword ptr [ebp+8]
 00533819    mov        ebx,dword ptr [eax]
 0053381B    call       dword ptr [ebx+68]
>0053381E    jmp        00533A8B
 00533823    mov        eax,dword ptr [ebp-0C]
 00533826    lea        edx,[eax+ebx*4]
 00533829    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0053382E    mov        eax,dword ptr [eax]
 00533830    mov        ecx,dword ptr [eax]
 00533832    call       dword ptr [ecx+28]
 00533835    push       edx
 00533836    push       eax
 00533837    mov        edx,dword ptr [ebp-10]
 0053383A    mov        eax,dword ptr [ebp+8]
 0053383D    mov        ecx,dword ptr [eax]
 0053383F    call       dword ptr [ecx+6C]
>00533842    jmp        00533A8B
 00533847    mov        eax,dword ptr [ebp-0C]
 0053384A    lea        edx,[eax+ebx*4]
 0053384D    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00533852    mov        eax,dword ptr [eax]
 00533854    mov        ecx,dword ptr [eax]
 00533856    call       dword ptr [ecx+2C]
 00533859    add        esp,0FFFFFFFC
 0053385C    fstp       dword ptr [esp]
 0053385F    wait
 00533860    mov        edx,dword ptr [ebp-10]
 00533863    mov        eax,dword ptr [ebp+8]
 00533866    mov        ecx,dword ptr [eax]
 00533868    call       dword ptr [ecx+70]
>0053386B    jmp        00533A8B
 00533870    mov        eax,dword ptr [ebp-0C]
 00533873    lea        edx,[eax+ebx*4]
 00533876    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0053387B    mov        eax,dword ptr [eax]
 0053387D    mov        ecx,dword ptr [eax]
 0053387F    call       dword ptr [ecx+2C]
 00533882    add        esp,0FFFFFFF8
 00533885    fstp       qword ptr [esp]
 00533888    wait
 00533889    mov        edx,dword ptr [ebp-10]
 0053388C    mov        eax,dword ptr [ebp+8]
 0053388F    mov        ecx,dword ptr [eax]
 00533891    call       dword ptr [ecx+74]
>00533894    jmp        00533A8B
 00533899    mov        eax,dword ptr [ebp-0C]
 0053389C    lea        edx,[eax+ebx*4]
 0053389F    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005338A4    mov        eax,dword ptr [eax]
 005338A6    mov        ecx,dword ptr [eax]
 005338A8    call       dword ptr [ecx+2C]
 005338AB    add        esp,0FFFFFFF4
 005338AE    fstp       tbyte ptr [esp]
 005338B1    wait
 005338B2    mov        edx,dword ptr [ebp-10]
 005338B5    mov        eax,dword ptr [ebp+8]
 005338B8    mov        ecx,dword ptr [eax]
 005338BA    call       dword ptr [ecx+78]
>005338BD    jmp        00533A8B
 005338C2    mov        eax,dword ptr [ebp-0C]
 005338C5    lea        edx,[eax+ebx*4]
 005338C8    lea        ecx,[ebp-78]
 005338CB    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005338D0    mov        eax,dword ptr [eax]
 005338D2    mov        ebx,dword ptr [eax]
 005338D4    call       dword ptr [ebx+30]
 005338D7    mov        ecx,dword ptr [ebp-78]
 005338DA    mov        edx,dword ptr [ebp-10]
 005338DD    mov        eax,dword ptr [ebp+8]
 005338E0    mov        ebx,dword ptr [eax]
 005338E2    call       dword ptr [ebx+80]
>005338E8    jmp        00533A8B
 005338ED    mov        eax,dword ptr [ebp-0C]
 005338F0    lea        edx,[eax+ebx*4]
 005338F3    lea        ecx,[ebp-80]
 005338F6    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005338FB    mov        eax,dword ptr [eax]
 005338FD    mov        ebx,dword ptr [eax]
 005338FF    call       dword ptr [ebx+34]
 00533902    mov        edx,dword ptr [ebp-80]
 00533905    lea        eax,[ebp-7C]
 00533908    call       @LStrFromWStr
 0053390D    mov        ecx,dword ptr [ebp-7C]
 00533910    mov        edx,dword ptr [ebp-10]
 00533913    mov        eax,dword ptr [ebp+8]
 00533916    mov        ebx,dword ptr [eax]
 00533918    call       dword ptr [ebx+80]
>0053391E    jmp        00533A8B
 00533923    mov        eax,dword ptr [ebp-0C]
 00533926    lea        edx,[eax+ebx*4]
 00533929    lea        ecx,[ebp-88]
 0053392F    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00533934    mov        eax,dword ptr [eax]
 00533936    mov        ebx,dword ptr [eax]
 00533938    call       dword ptr [ebx+30]
 0053393B    mov        eax,dword ptr [ebp-88]
 00533941    lea        edx,[ebp-84]
 00533947    call       004BF678
 0053394C    mov        ecx,dword ptr [ebp-84]
 00533952    mov        edx,dword ptr [ebp-10]
 00533955    mov        eax,dword ptr [ebp+8]
 00533958    mov        ebx,dword ptr [eax]
 0053395A    call       dword ptr [ebx+84]
>00533960    jmp        00533A8B
 00533965    mov        eax,dword ptr [ebp-0C]
 00533968    lea        edx,[eax+ebx*4]
 0053396B    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00533970    mov        eax,dword ptr [eax]
 00533972    mov        ecx,dword ptr [eax]
 00533974    call       dword ptr [ecx+38]
 00533977    add        esp,0FFFFFFF8
 0053397A    fstp       qword ptr [esp]
 0053397D    wait
 0053397E    mov        edx,dword ptr [ebp-10]
 00533981    mov        eax,dword ptr [ebp+8]
 00533984    mov        ecx,dword ptr [eax]
 00533986    call       dword ptr [ecx+88]
>0053398C    jmp        00533A8B
 00533991    mov        eax,dword ptr [ebp-0C]
 00533994    lea        edx,[eax+ebx*4]
 00533997    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0053399C    mov        eax,dword ptr [eax]
 0053399E    mov        ecx,dword ptr [eax]
 005339A0    call       dword ptr [ecx+38]
 005339A3    add        esp,0FFFFFFF8
 005339A6    fstp       qword ptr [esp]
 005339A9    wait
 005339AA    mov        edx,dword ptr [ebp-10]
 005339AD    mov        eax,dword ptr [ebp+8]
 005339B0    mov        ecx,dword ptr [eax]
 005339B2    call       dword ptr [ecx+8C]
>005339B8    jmp        00533A8B
 005339BD    mov        eax,dword ptr [ebp-0C]
 005339C0    lea        edx,[eax+ebx*4]
 005339C3    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005339C8    mov        eax,dword ptr [eax]
 005339CA    mov        ecx,dword ptr [eax]
 005339CC    call       dword ptr [ecx+38]
 005339CF    add        esp,0FFFFFFF8
 005339D2    fstp       qword ptr [esp]
 005339D5    wait
 005339D6    mov        edx,dword ptr [ebp-10]
 005339D9    mov        eax,dword ptr [ebp+8]
 005339DC    mov        ecx,dword ptr [eax]
 005339DE    call       dword ptr [ecx+90]
>005339E4    jmp        00533A8B
 005339E9    mov        eax,dword ptr [ebp-0C]
 005339EC    lea        edx,[eax+ebx*4]
 005339EF    lea        ecx,[ebp-8C]
 005339F5    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 005339FA    mov        eax,dword ptr [eax]
 005339FC    mov        ebx,dword ptr [eax]
 005339FE    call       dword ptr [ebx+40]
 00533A01    mov        edx,dword ptr [ebp-8C]
 00533A07    lea        eax,[ebp-14]
 00533A0A    mov        ecx,533B3C; ['{47D209F1-D065-49DD-A156-EFD1E523F6BF}']
 00533A0F    call       @IntfCast
 00533A14    mov        eax,dword ptr [ebp-14]
 00533A17    mov        edx,dword ptr [eax]
 00533A19    call       dword ptr [edx+0C]
 00533A1C    test       al,al
>00533A1E    jne        00533A8B
 00533A20    mov        eax,dword ptr [ebp-14]
 00533A23    mov        edx,dword ptr [eax]
 00533A25    call       dword ptr [edx+30]
 00533A28    mov        dword ptr [ebp-18],eax
 00533A2B    xor        eax,eax
 00533A2D    push       ebp
 00533A2E    push       533A5D
 00533A33    push       dword ptr fs:[eax]
 00533A36    mov        dword ptr fs:[eax],esp
 00533A39    mov        ecx,dword ptr [ebp-18]
 00533A3C    mov        edx,dword ptr [ebp-10]
 00533A3F    mov        eax,dword ptr [ebp+8]
 00533A42    mov        ebx,dword ptr [eax]
 00533A44    call       dword ptr [ebx+54]
 00533A47    xor        eax,eax
 00533A49    pop        edx
 00533A4A    pop        ecx
 00533A4B    pop        ecx
 00533A4C    mov        dword ptr fs:[eax],edx
 00533A4F    push       533A8B
 00533A54    mov        eax,dword ptr [ebp-18]
 00533A57    call       TObject.Free
 00533A5C    ret
<00533A5D    jmp        @HandleFinally
<00533A62    jmp        00533A54
 00533A64    lea        edx,[ebp-90]
 00533A6A    mov        eax,[0061B4A4]; ^#122.sResString75:TResStringRec
 00533A6F    call       LoadResString
 00533A74    mov        ecx,dword ptr [ebp-90]
 00533A7A    mov        dl,1
 00533A7C    mov        eax,[005310E4]; EZIBConvertError
 00533A81    call       Exception.Create; EZIBConvertError.Create
 00533A86    call       @RaiseExcept
 00533A8B    inc        dword ptr [ebp-10]
 00533A8E    dec        dword ptr [ebp-1C]
<00533A91    jne        005336ED
 00533A97    xor        eax,eax
 00533A99    pop        edx
 00533A9A    pop        ecx
 00533A9B    pop        ecx
 00533A9C    mov        dword ptr fs:[eax],edx
 00533A9F    push       533B32
 00533AA4    lea        eax,[ebp-90]
 00533AAA    call       @LStrClr
 00533AAF    lea        eax,[ebp-8C]
 00533AB5    call       @IntfClear
 00533ABA    lea        eax,[ebp-88]
 00533AC0    call       @LStrClr
 00533AC5    lea        eax,[ebp-84]
 00533ACB    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 00533AD1    call       @DynArrayClear
 00533AD6    lea        eax,[ebp-80]
 00533AD9    call       @WStrClr
 00533ADE    lea        eax,[ebp-7C]
 00533AE1    mov        edx,3
 00533AE6    call       @LStrArrayClr
 00533AEB    lea        eax,[ebp-14]
 00533AEE    call       @IntfClear
 00533AF3    lea        eax,[ebp-0C]
 00533AF6    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 00533AFC    call       @DynArrayClear
 00533B01    lea        eax,[ebp-8]
 00533B04    call       @LStrClr
 00533B09    lea        eax,[ebp-4]
 00533B0C    call       @IntfClear
 00533B11    lea        eax,[ebp+8]
 00533B14    call       @IntfClear
 00533B19    lea        eax,[ebp+18]
 00533B1C    mov        edx,dword ptr ds:[4DE944]; TZSQLTypeArray
 00533B22    call       @DynArrayClear
 00533B27    ret
<00533B28    jmp        @HandleFinally
<00533B2D    jmp        00533AA4
 00533B32    pop        edi
 00533B33    pop        esi
 00533B34    pop        ebx
 00533B35    mov        esp,ebp
 00533B37    pop        ebp
 00533B38    ret        14
*}
//end;

//00533B4C
//procedure sub_00533B4C(?:?; ?:?; ?:?);
//begin
{*
 00533B4C    push       ebp
 00533B4D    mov        ebp,esp
 00533B4F    add        esp,0FFFFFF34
 00533B55    push       ebx
 00533B56    push       esi
 00533B57    push       edi
 00533B58    mov        dword ptr [ebp-0C],ecx
 00533B5B    mov        dword ptr [ebp-8],edx
 00533B5E    mov        dword ptr [ebp-4],eax
 00533B61    mov        eax,dword ptr [ebp-4]
 00533B64    call       @IntfAddRef
 00533B69    xor        eax,eax
 00533B6B    push       ebp
 00533B6C    push       533D89
 00533B71    push       dword ptr fs:[eax]
 00533B74    mov        dword ptr fs:[eax],esp
 00533B77    xor        ebx,ebx
 00533B79    mov        byte ptr [ebp-10],4
 00533B7D    mov        byte ptr [ebp-0F],5
 00533B81    mov        byte ptr [ebp-0E],6
 00533B85    mov        byte ptr [ebp-0D],7
 00533B89    push       4
 00533B8B    lea        eax,[ebp-10]
 00533B8E    push       eax
 00533B8F    push       64
 00533B91    lea        eax,[ebp-78]
 00533B94    push       eax
 00533B95    lea        ecx,[ebp-8]
 00533B98    lea        edx,[ebp-0CC]
 00533B9E    mov        eax,dword ptr [ebp-4]
 00533BA1    mov        esi,dword ptr [eax]
 00533BA3    call       dword ptr [esi+0A0]
 00533BA9    test       eax,eax
>00533BAB    jle        00533D59
 00533BB1    push       0
 00533BB3    mov        cl,4
 00533BB5    lea        edx,[ebp-0CC]
 00533BBB    mov        eax,dword ptr [ebp-4]
 00533BBE    call       00532ED0
>00533BC3    jmp        00533D59
 00533BC8    cmp        ebx,63
>00533BCB    jbe        00533BD2
 00533BCD    call       @BoundErr
 00533BD2    xor        eax,eax
 00533BD4    mov        al,byte ptr [ebp+ebx-78]
 00533BD8    mov        dword ptr [ebp-14],eax
 00533BDB    add        ebx,1
>00533BDE    jno        00533BE5
 00533BE0    call       @IntOver
 00533BE5    cmp        ebx,63
>00533BE8    jbe        00533BEF
 00533BEA    call       @BoundErr
 00533BEF    lea        edx,[ebp+ebx-78]
 00533BF3    mov        cx,2
 00533BF7    mov        eax,dword ptr [ebp-4]
 00533BFA    mov        esi,dword ptr [eax]
 00533BFC    call       dword ptr [esi+0CC]
 00533C02    mov        esi,eax
 00533C04    add        ebx,2
>00533C07    jno        00533C0E
 00533C09    call       @IntOver
 00533C0E    mov        eax,dword ptr [ebp-14]
 00533C11    sub        eax,4
>00533C14    je         00533C2C
 00533C16    dec        eax
>00533C17    je         00533C77
 00533C19    dec        eax
>00533C1A    je         00533CC3
 00533C20    dec        eax
>00533C21    je         00533CFF
>00533C27    jmp        00533D50
 00533C2C    cmp        ebx,63
>00533C2F    jbe        00533C36
 00533C31    call       @BoundErr
 00533C36    lea        edx,[ebp+ebx-78]
 00533C3A    mov        ecx,esi
 00533C3C    add        ecx,8000
 00533C42    cmp        ecx,0FFFF
>00533C48    jbe        00533C4F
 00533C4A    call       @BoundErr
 00533C4F    add        ecx,0FFFF8000
 00533C55    mov        eax,dword ptr [ebp-4]
 00533C58    mov        edi,dword ptr [eax]
 00533C5A    call       dword ptr [edi+0CC]
 00533C60    cmp        eax,0FFFF
>00533C65    jbe        00533C6C
 00533C67    call       @BoundErr
 00533C6C    mov        edx,dword ptr [ebp-0C]
 00533C6F    mov        word ptr [edx],ax
>00533C72    jmp        00533D50
 00533C77    cmp        ebx,63
>00533C7A    jbe        00533C81
 00533C7C    call       @BoundErr
 00533C81    lea        edx,[ebp+ebx-78]
 00533C85    mov        ecx,esi
 00533C87    add        ecx,8000
 00533C8D    cmp        ecx,0FFFF
>00533C93    jbe        00533C9A
 00533C95    call       @BoundErr
 00533C9A    add        ecx,0FFFF8000
 00533CA0    mov        eax,dword ptr [ebp-4]
 00533CA3    mov        edi,dword ptr [eax]
 00533CA5    call       dword ptr [edi+0CC]
 00533CAB    cmp        eax,0FFFF
>00533CB0    jbe        00533CB7
 00533CB2    call       @BoundErr
 00533CB7    mov        edx,dword ptr [ebp-0C]
 00533CBA    mov        word ptr [edx+2],ax
>00533CBE    jmp        00533D50
 00533CC3    cmp        ebx,63
>00533CC6    jbe        00533CCD
 00533CC8    call       @BoundErr
 00533CCD    lea        edx,[ebp+ebx-78]
 00533CD1    mov        ecx,esi
 00533CD3    add        ecx,8000
 00533CD9    cmp        ecx,0FFFF
>00533CDF    jbe        00533CE6
 00533CE1    call       @BoundErr
 00533CE6    add        ecx,0FFFF8000
 00533CEC    mov        eax,dword ptr [ebp-4]
 00533CEF    mov        edi,dword ptr [eax]
 00533CF1    call       dword ptr [edi+0CC]
 00533CF7    mov        edx,dword ptr [ebp-0C]
 00533CFA    mov        dword ptr [edx+8],eax
>00533CFD    jmp        00533D50
 00533CFF    cmp        ebx,63
>00533D02    jbe        00533D09
 00533D04    call       @BoundErr
 00533D09    lea        edx,[ebp+ebx-78]
 00533D0D    mov        ecx,esi
 00533D0F    add        ecx,8000
 00533D15    cmp        ecx,0FFFF
>00533D1B    jbe        00533D22
 00533D1D    call       @BoundErr
 00533D22    add        ecx,0FFFF8000
 00533D28    mov        eax,dword ptr [ebp-4]
 00533D2B    mov        edi,dword ptr [eax]
 00533D2D    call       dword ptr [edi+0CC]
 00533D33    add        eax,8000
 00533D38    cmp        eax,0FFFF
>00533D3D    jbe        00533D44
 00533D3F    call       @BoundErr
 00533D44    add        eax,0FFFF8000
 00533D49    mov        edx,dword ptr [ebp-0C]
 00533D4C    mov        word ptr [edx+4],ax
 00533D50    add        ebx,esi
>00533D52    jno        00533D59
 00533D54    call       @IntOver
 00533D59    cmp        ebx,64
>00533D5C    jge        00533D73
 00533D5E    cmp        ebx,63
>00533D61    jbe        00533D68
 00533D63    call       @BoundErr
 00533D68    cmp        byte ptr [ebp+ebx-78],1
<00533D6D    jne        00533BC8
 00533D73    xor        eax,eax
 00533D75    pop        edx
 00533D76    pop        ecx
 00533D77    pop        ecx
 00533D78    mov        dword ptr fs:[eax],edx
 00533D7B    push       533D90
 00533D80    lea        eax,[ebp-4]
 00533D83    call       @IntfClear
 00533D88    ret
<00533D89    jmp        @HandleFinally
<00533D8E    jmp        00533D80
 00533D90    pop        edi
 00533D91    pop        esi
 00533D92    pop        ebx
 00533D93    mov        esp,ebp
 00533D95    pop        ebp
 00533D96    ret
*}
//end;

//00533D98
//procedure sub_00533D98(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00533D98    push       ebp
 00533D99    mov        ebp,esp
 00533D9B    add        esp,0FFFFFF88
 00533D9E    push       ebx
 00533D9F    push       esi
 00533DA0    push       edi
 00533DA1    mov        esi,dword ptr [ebp+10]
 00533DA4    lea        edi,[ebp-0C]
 00533DA7    movs       dword ptr [edi],dword ptr [esi]
 00533DA8    movs       dword ptr [edi],dword ptr [esi]
 00533DA9    mov        edi,ecx
 00533DAB    mov        esi,edx
 00533DAD    mov        dword ptr [ebp-4],eax
 00533DB0    mov        eax,dword ptr [ebp-4]
 00533DB3    call       @IntfAddRef
 00533DB8    xor        eax,eax
 00533DBA    push       ebp
 00533DBB    push       533EF2
 00533DC0    push       dword ptr fs:[eax]
 00533DC3    mov        dword ptr fs:[eax],esp
 00533DC6    xor        eax,eax
 00533DC8    mov        dword ptr [ebp-18],eax
 00533DCB    xor        ebx,ebx
 00533DCD    push       edi
 00533DCE    lea        eax,[ebp-18]
 00533DD1    push       eax
 00533DD2    lea        eax,[ebp-0C]
 00533DD5    push       eax
 00533DD6    push       0
 00533DD8    push       0
 00533DDA    lea        edx,[ebp-78]
 00533DDD    mov        ecx,esi
 00533DDF    mov        eax,dword ptr [ebp-4]
 00533DE2    mov        esi,dword ptr [eax]
 00533DE4    call       dword ptr [esi+98]
 00533DEA    push       0
 00533DEC    mov        cl,4
 00533DEE    lea        edx,[ebp-78]
 00533DF1    mov        eax,dword ptr [ebp-4]
 00533DF4    call       00532ED0
 00533DF9    lea        ecx,[ebp-24]
 00533DFC    mov        edx,dword ptr [ebp-18]
 00533DFF    mov        eax,dword ptr [ebp-4]
 00533E02    call       00533B4C
 00533E07    mov        esi,dword ptr [ebp-1C]
 00533E0A    mov        eax,dword ptr [ebp+0C]
 00533E0D    mov        dword ptr [eax],esi
 00533E0F    mov        ax,word ptr [ebp-22]
 00533E13    mov        word ptr [ebp-14],ax
 00533E17    mov        eax,esi
 00533E19    test       eax,eax
>00533E1B    jns        00533E22
 00533E1D    call       @BoundErr
 00533E22    call       AllocMem
 00533E27    mov        edx,dword ptr [ebp+8]
 00533E2A    mov        dword ptr [edx],eax
 00533E2C    mov        eax,dword ptr [ebp+8]
 00533E2F    mov        eax,dword ptr [eax]
 00533E31    mov        dword ptr [ebp-10],eax
 00533E34    cmp        esi,ebx
>00533E36    jle        00533EBC
 00533E3C    movzx      eax,word ptr [ebp-14]
 00533E40    add        eax,ebx
>00533E42    jno        00533E49
 00533E44    call       @IntOver
 00533E49    cmp        esi,eax
>00533E4B    jge        00533E68
 00533E4D    mov        eax,esi
 00533E4F    sub        eax,ebx
>00533E51    jno        00533E58
 00533E53    call       @IntOver
 00533E58    cmp        eax,0FFFF
>00533E5D    jbe        00533E64
 00533E5F    call       @BoundErr
 00533E64    mov        word ptr [ebp-14],ax
 00533E68    lea        eax,[ebp-12]
 00533E6B    push       eax
 00533E6C    mov        ax,word ptr [ebp-14]
 00533E70    push       eax
 00533E71    mov        eax,dword ptr [ebp-10]
 00533E74    push       eax
 00533E75    lea        ecx,[ebp-18]
 00533E78    lea        edx,[ebp-78]
 00533E7B    mov        eax,dword ptr [ebp-4]
 00533E7E    mov        edi,dword ptr [eax]
 00533E80    call       dword ptr [edi+0AC]
 00533E86    test       eax,eax
>00533E88    jne        00533E93
 00533E8A    cmp        dword ptr [ebp-74],1400002E
>00533E91    je         00533EA2
 00533E93    push       0
 00533E95    mov        cl,4
 00533E97    lea        edx,[ebp-78]
 00533E9A    mov        eax,dword ptr [ebp-4]
 00533E9D    call       00532ED0
 00533EA2    movzx      eax,word ptr [ebp-12]
 00533EA6    add        ebx,eax
>00533EA8    jno        00533EAF
 00533EAA    call       @IntOver
 00533EAF    add        dword ptr [ebp-10],eax
 00533EB2    mov        word ptr [ebp-12],0
 00533EB8    cmp        esi,ebx
<00533EBA    jg         00533E3C
 00533EBC    lea        ecx,[ebp-18]
 00533EBF    lea        edx,[ebp-78]
 00533EC2    mov        eax,dword ptr [ebp-4]
 00533EC5    mov        ebx,dword ptr [eax]
 00533EC7    call       dword ptr [ebx+0A4]
 00533ECD    push       0
 00533ECF    mov        cl,4
 00533ED1    lea        edx,[ebp-78]
 00533ED4    mov        eax,dword ptr [ebp-4]
 00533ED7    call       00532ED0
 00533EDC    xor        eax,eax
 00533EDE    pop        edx
 00533EDF    pop        ecx
 00533EE0    pop        ecx
 00533EE1    mov        dword ptr fs:[eax],edx
 00533EE4    push       533EF9
 00533EE9    lea        eax,[ebp-4]
 00533EEC    call       @IntfClear
 00533EF1    ret
<00533EF2    jmp        @HandleFinally
<00533EF7    jmp        00533EE9
 00533EF9    pop        edi
 00533EFA    pop        esi
 00533EFB    pop        ebx
 00533EFC    mov        esp,ebp
 00533EFE    pop        ebp
 00533EFF    ret        0C
*}
//end;

//00533F04
//procedure sub_00533F04(?:?; ?:?; ?:?);
//begin
{*
 00533F04    push       ebp
 00533F05    mov        ebp,esp
 00533F07    add        esp,0FFFFFBA4
 00533F0D    push       ebx
 00533F0E    push       esi
 00533F0F    mov        esi,ecx
 00533F11    mov        ebx,edx
 00533F13    mov        dword ptr [ebp-4],eax
 00533F16    mov        eax,dword ptr [ebp-4]
 00533F19    call       @IntfAddRef
 00533F1E    xor        eax,eax
 00533F20    push       ebp
 00533F21    push       533FA7
 00533F26    push       dword ptr fs:[eax]
 00533F29    mov        dword ptr fs:[eax],esp
 00533F2C    mov        byte ptr [ebp-5],0C
 00533F30    push       1
 00533F32    lea        eax,[ebp-5]
 00533F35    push       eax
 00533F36    push       400
 00533F3B    lea        eax,[ebp-45C]
 00533F41    push       eax
 00533F42    lea        edx,[ebp-5C]
 00533F45    mov        ecx,ebx
 00533F47    mov        eax,dword ptr [ebp-4]
 00533F4A    mov        ebx,dword ptr [eax]
 00533F4C    call       dword ptr [ebx+24]
 00533F4F    push       0
 00533F51    mov        cl,4
 00533F53    lea        edx,[ebp-5C]
 00533F56    mov        eax,dword ptr [ebp-4]
 00533F59    call       00532ED0
 00533F5E    xor        eax,eax
 00533F60    mov        al,byte ptr [ebp-458]
 00533F66    add        eax,5
>00533F69    jno        00533F70
 00533F6B    call       @IntOver
 00533F70    cmp        eax,3FF
>00533F75    jbe        00533F7C
 00533F77    call       @BoundErr
 00533F7C    mov        byte ptr [ebp+eax-45C],0
 00533F84    mov        eax,esi
 00533F86    lea        edx,[ebp-457]
 00533F8C    call       @LStrFromPChar
 00533F91    xor        eax,eax
 00533F93    pop        edx
 00533F94    pop        ecx
 00533F95    pop        ecx
 00533F96    mov        dword ptr fs:[eax],edx
 00533F99    push       533FAE
 00533F9E    lea        eax,[ebp-4]
 00533FA1    call       @IntfClear
 00533FA6    ret
<00533FA7    jmp        @HandleFinally
<00533FAC    jmp        00533F9E
 00533FAE    pop        esi
 00533FAF    pop        ebx
 00533FB0    mov        esp,ebp
 00533FB2    pop        ebp
 00533FB3    ret
*}
//end;

//005340F4
//procedure sub_005340F4(?:TZSQLDA);
//begin
{*
 005340F4    push       ebp
 005340F5    mov        ebp,esp
 005340F7    push       ecx
 005340F8    push       ebx
 005340F9    push       esi
 005340FA    push       edi
 005340FB    mov        dword ptr [ebp-4],eax
 005340FE    mov        eax,dword ptr [ebp-4]
 00534101    mov        eax,dword ptr [eax+0C]; TZSQLDA.?fC:Pointer
 00534104    movsx      esi,word ptr [eax+10]
 00534108    sub        esi,1
>0053410B    jno        00534112
 0053410D    call       @IntOver
 00534112    test       esi,esi
>00534114    jl         0053414B
 00534116    inc        esi
 00534117    xor        edi,edi
 00534119    imul       eax,edi,13
>0053411C    jno        00534123
 0053411E    call       @IntOver
 00534123    mov        edx,dword ptr [ebp-4]
 00534126    mov        edx,dword ptr [edx+0C]; TZSQLDA.?fC:Pointer
 00534129    lea        ebx,[edx+eax*8+14]
 0053412D    mov        eax,dword ptr [ebx+8]
 00534130    call       @FreeMem
 00534135    mov        eax,dword ptr [ebx+0C]
 00534138    call       @FreeMem
 0053413D    xor        eax,eax
 0053413F    mov        dword ptr [ebx+8],eax
 00534142    xor        eax,eax
 00534144    mov        dword ptr [ebx+0C],eax
 00534147    inc        edi
 00534148    dec        esi
<00534149    jne        00534119
 0053414B    pop        edi
 0053414C    pop        esi
 0053414D    pop        ebx
 0053414E    pop        ecx
 0053414F    pop        ebp
 00534150    ret
*}
//end;

//00534234
//function sub_00534234(?:TZResultSQLDA):?;
//begin
{*
 00534234    mov        eax,dword ptr [eax+0C]; TZResultSQLDA.?fC:Pointer
 00534237    movsx      eax,word ptr [eax+12]
 0053423B    ret
*}
//end;

//00534614
//procedure sub_00534614(?:TZSQLDA; ?:?; ?:?; ?:?);
//begin
{*
 00534614    push       ebp
 00534615    mov        ebp,esp
 00534617    push       ebx
 00534618    push       esi
 00534619    push       edi
 0053461A    mov        esi,ecx
 0053461C    mov        edi,edx
 0053461E    mov        ebx,dword ptr [ebp+8]
 00534621    mov        eax,edi
 00534623    mov        edx,ebx
 00534625    call       @ReallocMem
 0053462A    cmp        esi,ebx
>0053462C    jge        00534644
 0053462E    mov        edx,ebx
 00534630    sub        edx,esi
>00534632    jno        00534639
 00534634    call       @IntOver
 00534639    mov        eax,dword ptr [edi]
 0053463B    add        eax,esi
 0053463D    xor        ecx,ecx
 0053463F    call       @FillChar
 00534644    pop        edi
 00534645    pop        esi
 00534646    pop        ebx
 00534647    pop        ebp
 00534648    ret        4
*}
//end;

//00534728
procedure sub_00534728;
begin
{*
 00534728    push       ebp
 00534729    mov        ebp,esp
 0053472B    push       ebx
 0053472C    mov        ebx,eax
 0053472E    mov        eax,dword ptr [ebx+0C]; TZSQLDA.?fC:Pointer
 00534731    movsx      eax,word ptr [eax+12]
 00534735    call       0052183C
 0053473A    push       eax
 0053473B    mov        eax,dword ptr [ebx+0C]; TZSQLDA.?fC:Pointer
 0053473E    movsx      eax,word ptr [eax+10]
 00534742    call       0052183C
 00534747    mov        ecx,eax
 00534749    lea        edx,[ebx+0C]; TZSQLDA.?fC:Pointer
 0053474C    mov        eax,ebx
 0053474E    call       00534614
 00534753    mov        eax,dword ptr [ebx+0C]; TZSQLDA.?fC:Pointer
 00534756    mov        dx,word ptr [eax+12]
 0053475A    mov        word ptr [eax+10],dx
 0053475E    pop        ebx
 0053475F    pop        ebp
 00534760    ret
*}
end;

//00534764
//constructor TZParamsSQLDA.Create(?:TZParamsSQLDA; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 00534764    push       ebp
 00534765    mov        ebp,esp
 00534767    add        esp,0FFFFFFF8
 0053476A    push       ebx
 0053476B    push       esi
 0053476C    test       dl,dl
>0053476E    je         00534778
 00534770    add        esp,0FFFFFFF0
 00534773    call       @ClassCreate
 00534778    mov        dword ptr [ebp-8],ecx
 0053477B    mov        byte ptr [ebp-1],dl
 0053477E    mov        ebx,eax
 00534780    mov        eax,dword ptr [ebp-8]
 00534783    call       @IntfAddRef
 00534788    xor        eax,eax
 0053478A    push       ebp
 0053478B    push       5347FA
 00534790    push       dword ptr fs:[eax]
 00534793    mov        dword ptr fs:[eax],esp
 00534796    lea        eax,[ebx+10]; TZParamsSQLDA.?f10:IZInterbasePlainDriver
 00534799    mov        edx,dword ptr [ebp-8]
 0053479C    call       @IntfCopy
 005347A1    mov        eax,dword ptr [ebp+0C]
 005347A4    mov        dword ptr [ebx+18],eax; TZParamsSQLDA.?f18:dword
 005347A7    mov        eax,dword ptr [ebp+8]
 005347AA    mov        dword ptr [ebx+1C],eax; TZParamsSQLDA.?f1C:dword
 005347AD    xor        eax,eax
 005347AF    call       0052183C
 005347B4    call       @GetMem
 005347B9    mov        esi,eax
 005347BB    mov        dword ptr [ebx+0C],esi; TZParamsSQLDA.?fC:Pointer
 005347BE    xor        eax,eax
 005347C0    call       0052183C
 005347C5    mov        edx,eax
 005347C7    mov        eax,esi
 005347C9    xor        ecx,ecx
 005347CB    call       @FillChar
 005347D0    mov        eax,dword ptr [ebx+0C]; TZParamsSQLDA.?fC:Pointer
 005347D3    mov        word ptr [eax+10],0
 005347D9    mov        word ptr [eax+12],0
 005347DF    mov        word ptr [eax],1
 005347E4    xor        eax,eax
 005347E6    pop        edx
 005347E7    pop        ecx
 005347E8    pop        ecx
 005347E9    mov        dword ptr fs:[eax],edx
 005347EC    push       534801
 005347F1    lea        eax,[ebp-8]
 005347F4    call       @IntfClear
 005347F9    ret
<005347FA    jmp        @HandleFinally
<005347FF    jmp        005347F1
 00534801    mov        eax,ebx
 00534803    cmp        byte ptr [ebp-1],0
>00534807    je         00534818
 00534809    call       @AfterConstruction
 0053480E    pop        dword ptr fs:[0]
 00534815    add        esp,0C
 00534818    mov        eax,ebx
 0053481A    pop        esi
 0053481B    pop        ebx
 0053481C    pop        ecx
 0053481D    pop        ecx
 0053481E    pop        ebp
 0053481F    ret        8
*}
//end;

//00534824
destructor TZParamsSQLDA.Destroy;
begin
{*
 00534824    push       ebp
 00534825    mov        ebp,esp
 00534827    push       ebx
 00534828    push       esi
 00534829    call       @BeforeDestruction
 0053482E    mov        ebx,edx
 00534830    mov        esi,eax
 00534832    mov        eax,esi
 00534834    call       005340F4
 00534839    mov        eax,dword ptr [esi+0C]; TZParamsSQLDA.?fC:Pointer
 0053483C    call       @FreeMem
 00534841    mov        edx,ebx
 00534843    and        dl,0FC
 00534846    mov        eax,esi
 00534848    call       TObject.Destroy
 0053484D    test       bl,bl
>0053484F    jle        00534858
 00534851    mov        eax,esi
 00534853    call       @ClassDestroy
 00534858    pop        esi
 00534859    pop        ebx
 0053485A    pop        ebp
 0053485B    ret
*}
end;

//0053677C
//constructor TZResultSQLDA.Create(?:TZResultSQLDA; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 0053677C    push       ebp
 0053677D    mov        ebp,esp
 0053677F    add        esp,0FFFFFFF8
 00536782    push       ebx
 00536783    push       esi
 00536784    test       dl,dl
>00536786    je         00536790
 00536788    add        esp,0FFFFFFF0
 0053678B    call       @ClassCreate
 00536790    mov        dword ptr [ebp-8],ecx
 00536793    mov        byte ptr [ebp-1],dl
 00536796    mov        ebx,eax
 00536798    mov        eax,dword ptr [ebp-8]
 0053679B    call       @IntfAddRef
 005367A0    xor        eax,eax
 005367A2    push       ebp
 005367A3    push       536812
 005367A8    push       dword ptr fs:[eax]
 005367AB    mov        dword ptr fs:[eax],esp
 005367AE    lea        eax,[ebx+10]; TZResultSQLDA.?f10:IZInterbasePlainDriver
 005367B1    mov        edx,dword ptr [ebp-8]
 005367B4    call       @IntfCopy
 005367B9    mov        eax,dword ptr [ebp+0C]
 005367BC    mov        dword ptr [ebx+1C],eax; TZResultSQLDA.?f1C:dword
 005367BF    mov        eax,dword ptr [ebp+8]
 005367C2    mov        dword ptr [ebx+20],eax; TZResultSQLDA.?f20:dword
 005367C5    xor        eax,eax
 005367C7    call       0052183C
 005367CC    call       @GetMem
 005367D1    mov        esi,eax
 005367D3    mov        dword ptr [ebx+0C],esi; TZResultSQLDA.?fC:Pointer
 005367D6    xor        eax,eax
 005367D8    call       0052183C
 005367DD    mov        edx,eax
 005367DF    mov        eax,esi
 005367E1    xor        ecx,ecx
 005367E3    call       @FillChar
 005367E8    mov        eax,dword ptr [ebx+0C]; TZResultSQLDA.?fC:Pointer
 005367EB    mov        word ptr [eax+10],0
 005367F1    mov        word ptr [eax+12],0
 005367F7    mov        word ptr [eax],1
 005367FC    xor        eax,eax
 005367FE    pop        edx
 005367FF    pop        ecx
 00536800    pop        ecx
 00536801    mov        dword ptr fs:[eax],edx
 00536804    push       536819
 00536809    lea        eax,[ebp-8]
 0053680C    call       @IntfClear
 00536811    ret
<00536812    jmp        @HandleFinally
<00536817    jmp        00536809
 00536819    mov        eax,ebx
 0053681B    cmp        byte ptr [ebp-1],0
>0053681F    je         00536830
 00536821    call       @AfterConstruction
 00536826    pop        dword ptr fs:[0]
 0053682D    add        esp,0C
 00536830    mov        eax,ebx
 00536832    pop        esi
 00536833    pop        ebx
 00536834    pop        ecx
 00536835    pop        ecx
 00536836    pop        ebp
 00536837    ret        8
*}
//end;

//00538770
destructor TZResultSQLDA.Destroy;
begin
{*
 00538770    push       ebp
 00538771    mov        ebp,esp
 00538773    push       ebx
 00538774    push       esi
 00538775    call       @BeforeDestruction
 0053877A    mov        ebx,edx
 0053877C    mov        esi,eax
 0053877E    mov        eax,esi
 00538780    call       005340F4
 00538785    mov        eax,dword ptr [esi+0C]; TZResultSQLDA.?fC:Pointer
 00538788    call       @FreeMem
 0053878D    mov        edx,ebx
 0053878F    and        dl,0FC
 00538792    mov        eax,esi
 00538794    call       TObject.Destroy
 00538799    test       bl,bl
>0053879B    jle        005387A4
 0053879D    mov        eax,esi
 0053879F    call       @ClassDestroy
 005387A4    pop        esi
 005387A5    pop        ebx
 005387A6    pop        ebp
 005387A7    ret
*}
end;

//005389B4
procedure sub_005389B4;
begin
{*
 005389B4    push       ebp
 005389B5    mov        ebp,esp
 005389B7    push       ebx
 005389B8    mov        ebx,eax
 005389BA    mov        eax,ebx
 005389BC    call       00534728
 005389C1    mov        eax,ebx
 005389C3    call       00534234
 005389C8    push       eax
 005389C9    lea        eax,[ebx+18]; TZResultSQLDA.?f18:.5
 005389CC    mov        ecx,1
 005389D1    mov        edx,dword ptr ds:[531610]; _DynArr_181_5
 005389D7    call       @DynArraySetLength
 005389DC    add        esp,4
 005389DF    pop        ebx
 005389E0    pop        ebp
 005389E1    ret
*}
end;

Initialization
Finalization
//005389E4
{*
 005389E4    push       ebp
 005389E5    mov        ebp,esp
 005389E7    xor        eax,eax
 005389E9    push       ebp
 005389EA    push       538A35
 005389EF    push       dword ptr fs:[eax]
 005389F2    mov        dword ptr fs:[eax],esp
 005389F5    inc        dword ptr ds:[61EA70]
>005389FB    jne        00538A27
 005389FD    mov        eax,6166B0; gvar_006166B0:array[17] of TZIbParam
 00538A02    mov        ecx,11
 00538A07    mov        edx,dword ptr ds:[531144]; TZIbParam
 00538A0D    call       @FinalizeArray
 00538A12    mov        eax,616490; gvar_00616490:array[68] of TZIbParam
 00538A17    mov        ecx,44
 00538A1C    mov        edx,dword ptr ds:[531144]; TZIbParam
 00538A22    call       @FinalizeArray
 00538A27    xor        eax,eax
 00538A29    pop        edx
 00538A2A    pop        ecx
 00538A2B    pop        ecx
 00538A2C    mov        dword ptr fs:[eax],edx
 00538A2F    push       538A3C
 00538A34    ret
<00538A35    jmp        @HandleFinally
<00538A3A    jmp        00538A34
 00538A3C    pop        ebp
 00538A3D    ret
*}
end.