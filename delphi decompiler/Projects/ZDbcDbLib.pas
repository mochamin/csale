{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDbcDbLib;

interface

uses
  Classes, Windows, Graphics, _Unit147, ZPlainDbLibDriver;

type
  TZDBLibDriver = class(TZAbstractDriver)
  public
    f18:IZDBLibPlainDriver;//f18
    f1C:IZDBLibPlainDriver;//f1C
    //procedure sub_004FD0E4(?:?); virtual;
    //procedure sub_004FD194(?:?; ?:?; ?:?); virtual;
    //function sub_004FD318():?; virtual;
    //function sub_004FD320():?; virtual;
    //procedure sub_004FD324(?:?); virtual;
    //procedure sub_004FD364(?:?); virtual;
    //constructor Create(?:TZDBLibDriver; _Dv__:Boolean);
  end;
  TZDBLibConnection = class(TZAbstractConnection)
  public
    f34:IZDBLibPlainDriver;//f34
    f38:dword;//f38
    destructor Destroy; virtual;
    //procedure sub_004FDE44(?:?; ?:?); virtual;
    //procedure sub_004FDE90(?:?; ?:?; ?:?); virtual;
    //procedure sub_004FDEE0(?:?; ?:?; ?:?); virtual;
    //procedure sub_004FDF30(?:?; ?:?); virtual;
    //procedure sub_004FDF48(?:?); virtual;
    procedure sub_004FE1C8; virtual;
    procedure sub_004FE24C; virtual;
    procedure sub_004FDC8C; virtual;
    procedure sub_004FE2D4; virtual;
    procedure sub_004FE408(); virtual;
    //procedure sub_004FE414(?:?); virtual;
    //procedure sub_004FE4E0(?:?); virtual;
    //procedure sub_004FE130(?:?); virtual;
    //function sub_004FE524():?; virtual;
    procedure sub_004FE528(); virtual;
    //procedure sub_004FD520(?:?); virtual;
    procedure sub_004FD68C; virtual;
    //procedure sub_004FDBB0(?:?; ?:?); virtual;
    procedure sub_004FE19C; virtual;
    //constructor Create(?:TZDBLibConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//004FD078
//constructor TZDBLibDriver.Create(?:TZDBLibDriver; _Dv__:Boolean);
//begin
{*
 004FD078    push       ebp
 004FD079    mov        ebp,esp
 004FD07B    push       ebx
 004FD07C    push       esi
 004FD07D    test       dl,dl
>004FD07F    je         004FD089
 004FD081    add        esp,0FFFFFFF0
 004FD084    call       @ClassCreate
 004FD089    mov        ebx,edx
 004FD08B    mov        esi,eax
 004FD08D    mov        dl,1
 004FD08F    mov        eax,[004EED64]; TZDBLibMSSQL7PlainDriver
 004FD094    call       TZDBLibMSSQL7PlainDriver.Create; TZDBLibMSSQL7PlainDriver.Create
 004FD099    mov        edx,eax
 004FD09B    test       edx,edx
>004FD09D    je         004FD0A2
 004FD09F    sub        edx,0FFFFFFF0
 004FD0A2    lea        eax,[esi+18]; TZDBLibDriver.?f18:IZDBLibPlainDriver
 004FD0A5    call       @IntfCopy
 004FD0AA    mov        dl,1
 004FD0AC    mov        eax,[004EEA38]; TZDBLibSybaseASE125PlainDriver
 004FD0B1    call       TZDBLibSybaseASE125PlainDriver.Create; TZDBLibSybaseASE125PlainDriver.Create
 004FD0B6    mov        edx,eax
 004FD0B8    test       edx,edx
>004FD0BA    je         004FD0BF
 004FD0BC    sub        edx,0FFFFFFF0
 004FD0BF    lea        eax,[esi+1C]; TZDBLibDriver.?f1C:IZDBLibPlainDriver
 004FD0C2    call       @IntfCopy
 004FD0C7    mov        eax,esi
 004FD0C9    test       bl,bl
>004FD0CB    je         004FD0DC
 004FD0CD    call       @AfterConstruction
 004FD0D2    pop        dword ptr fs:[0]
 004FD0D9    add        esp,0C
 004FD0DC    mov        eax,esi
 004FD0DE    pop        esi
 004FD0DF    pop        ebx
 004FD0E0    pop        ebp
 004FD0E1    ret
*}
//end;

//004FD0E4
//procedure sub_004FD0E4(?:?);
//begin
{*
 004FD0E4    push       ebp
 004FD0E5    mov        ebp,esp
 004FD0E7    push       0
 004FD0E9    push       0
 004FD0EB    push       ebx
 004FD0EC    push       esi
 004FD0ED    mov        esi,edx
 004FD0EF    mov        ebx,eax
 004FD0F1    xor        eax,eax
 004FD0F3    push       ebp
 004FD0F4    push       4FD184
 004FD0F9    push       dword ptr fs:[eax]
 004FD0FC    mov        dword ptr fs:[eax],esp
 004FD0FF    push       2
 004FD101    mov        eax,esi
 004FD103    mov        ecx,1
 004FD108    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 004FD10E    call       @DynArraySetLength
 004FD113    add        esp,4
 004FD116    lea        edx,[ebp-4]
 004FD119    mov        eax,dword ptr [ebx+1C]; TZDBLibDriver.?f1C:IZDBLibPlainDriver
 004FD11C    mov        ecx,dword ptr [eax]
 004FD11E    call       dword ptr [ecx+0C]
 004FD121    mov        edx,dword ptr [ebp-4]
 004FD124    xor        eax,eax
 004FD126    mov        ecx,dword ptr [esi]
 004FD128    test       ecx,ecx
>004FD12A    je         004FD131
 004FD12C    cmp        eax,dword ptr [ecx-4]
>004FD12F    jb         004FD136
 004FD131    call       @BoundErr
 004FD136    lea        eax,[ecx+eax*4]
 004FD139    call       @LStrAsg
 004FD13E    lea        edx,[ebp-8]
 004FD141    mov        eax,dword ptr [ebx+18]; TZDBLibDriver.?f18:IZDBLibPlainDriver
 004FD144    mov        ecx,dword ptr [eax]
 004FD146    call       dword ptr [ecx+0C]
 004FD149    mov        edx,dword ptr [ebp-8]
 004FD14C    mov        eax,1
 004FD151    mov        ecx,dword ptr [esi]
 004FD153    test       ecx,ecx
>004FD155    je         004FD15C
 004FD157    cmp        eax,dword ptr [ecx-4]
>004FD15A    jb         004FD161
 004FD15C    call       @BoundErr
 004FD161    lea        eax,[ecx+eax*4]
 004FD164    call       @LStrAsg
 004FD169    xor        eax,eax
 004FD16B    pop        edx
 004FD16C    pop        ecx
 004FD16D    pop        ecx
 004FD16E    mov        dword ptr fs:[eax],edx
 004FD171    push       4FD18B
 004FD176    lea        eax,[ebp-8]
 004FD179    mov        edx,2
 004FD17E    call       @LStrArrayClr
 004FD183    ret
<004FD184    jmp        @HandleFinally
<004FD189    jmp        004FD176
 004FD18B    pop        esi
 004FD18C    pop        ebx
 004FD18D    pop        ecx
 004FD18E    pop        ecx
 004FD18F    pop        ebp
 004FD190    ret
*}
//end;

//004FD194
//procedure sub_004FD194(?:?; ?:?; ?:?);
//begin
{*
 004FD194    push       ebp
 004FD195    mov        ebp,esp
 004FD197    push       ecx
 004FD198    mov        ecx,5
 004FD19D    push       0
 004FD19F    push       0
 004FD1A1    dec        ecx
<004FD1A2    jne        004FD19D
 004FD1A4    xchg       ecx,dword ptr [ebp-4]
 004FD1A7    push       ebx
 004FD1A8    push       esi
 004FD1A9    push       edi
 004FD1AA    mov        edi,ecx
 004FD1AC    mov        esi,edx
 004FD1AE    mov        ebx,eax
 004FD1B0    xor        eax,eax
 004FD1B2    push       ebp
 004FD1B3    push       4FD305
 004FD1B8    push       dword ptr fs:[eax]
 004FD1BB    mov        dword ptr fs:[eax],esp
 004FD1BE    mov        dl,1
 004FD1C0    mov        eax,[0041C8E4]; TStringList
 004FD1C5    call       TObject.Create; TStringList.Create
 004FD1CA    mov        dword ptr [ebp-4],eax
 004FD1CD    xor        eax,eax
 004FD1CF    push       ebp
 004FD1D0    push       4FD2B8
 004FD1D5    push       dword ptr fs:[eax]
 004FD1D8    mov        dword ptr fs:[eax],esp
 004FD1DB    lea        eax,[ebp-18]
 004FD1DE    push       eax
 004FD1DF    lea        eax,[ebp-0C]
 004FD1E2    push       eax
 004FD1E3    lea        eax,[ebp-10]
 004FD1E6    push       eax
 004FD1E7    lea        eax,[ebp-14]
 004FD1EA    push       eax
 004FD1EB    mov        eax,dword ptr [ebp-4]
 004FD1EE    push       eax
 004FD1EF    lea        ecx,[ebp-8]
 004FD1F2    mov        edx,edi
 004FD1F4    mov        eax,esi
 004FD1F6    call       004D28A4
 004FD1FB    lea        edx,[ebp-24]
 004FD1FE    mov        eax,ebx
 004FD200    mov        ecx,dword ptr [eax]
 004FD202    call       dword ptr [ecx]; TZDBLibDriver.sub_004FD0E4
 004FD204    mov        edx,dword ptr [ebp-24]
 004FD207    lea        ecx,[ebp-1C]
 004FD20A    mov        eax,esi
 004FD20C    call       004D263C
 004FD211    lea        edx,[ebp-28]
 004FD214    mov        eax,dword ptr [ebx+18]; TZDBLibDriver.?f18:IZDBLibPlainDriver
 004FD217    mov        ecx,dword ptr [eax]
 004FD219    call       dword ptr [ecx+0C]
 004FD21C    mov        edx,dword ptr [ebp-28]
 004FD21F    mov        eax,dword ptr [ebp-1C]
 004FD222    call       @LStrCmp
>004FD227    jne        004FD234
 004FD229    lea        eax,[ebp-20]
 004FD22C    mov        edx,dword ptr [ebx+18]; TZDBLibDriver.?f18:IZDBLibPlainDriver
 004FD22F    call       @IntfCopy
 004FD234    lea        edx,[ebp-2C]
 004FD237    mov        eax,dword ptr [ebx+1C]; TZDBLibDriver.?f1C:IZDBLibPlainDriver
 004FD23A    mov        ecx,dword ptr [eax]
 004FD23C    call       dword ptr [ecx+0C]
 004FD23F    mov        edx,dword ptr [ebp-2C]
 004FD242    mov        eax,dword ptr [ebp-1C]
 004FD245    call       @LStrCmp
>004FD24A    jne        004FD257
 004FD24C    lea        eax,[ebp-20]
 004FD24F    mov        edx,dword ptr [ebx+1C]; TZDBLibDriver.?f1C:IZDBLibPlainDriver
 004FD252    call       @IntfCopy
 004FD257    mov        eax,dword ptr [ebp-20]
 004FD25A    mov        edx,dword ptr [eax]
 004FD25C    call       dword ptr [edx+14]
 004FD25F    push       esi
 004FD260    mov        eax,dword ptr [ebp-20]
 004FD263    push       eax
 004FD264    mov        eax,dword ptr [ebp-8]
 004FD267    push       eax
 004FD268    mov        eax,dword ptr [ebp-18]
 004FD26B    push       eax
 004FD26C    mov        eax,dword ptr [ebp-0C]
 004FD26F    push       eax
 004FD270    mov        eax,dword ptr [ebp-10]
 004FD273    push       eax
 004FD274    mov        eax,dword ptr [ebp-14]
 004FD277    push       eax
 004FD278    mov        eax,dword ptr [ebp-4]
 004FD27B    push       eax
 004FD27C    mov        ecx,ebx
 004FD27E    test       ecx,ecx
>004FD280    je         004FD285
 004FD282    sub        ecx,0FFFFFFEC
 004FD285    mov        dl,1
 004FD287    mov        eax,[004FCF88]; TZDBLibConnection
 004FD28C    call       TZDBLibConnection.Create; TZDBLibConnection.Create
 004FD291    mov        edx,eax
 004FD293    test       edx,edx
>004FD295    je         004FD29A
 004FD297    sub        edx,0FFFFFFD0
 004FD29A    mov        eax,dword ptr [ebp+8]
 004FD29D    call       @IntfCopy
 004FD2A2    xor        eax,eax
 004FD2A4    pop        edx
 004FD2A5    pop        ecx
 004FD2A6    pop        ecx
 004FD2A7    mov        dword ptr fs:[eax],edx
 004FD2AA    push       4FD2BF
 004FD2AF    mov        eax,dword ptr [ebp-4]
 004FD2B2    call       TObject.Free
 004FD2B7    ret
<004FD2B8    jmp        @HandleFinally
<004FD2BD    jmp        004FD2AF
 004FD2BF    xor        eax,eax
 004FD2C1    pop        edx
 004FD2C2    pop        ecx
 004FD2C3    pop        ecx
 004FD2C4    mov        dword ptr fs:[eax],edx
 004FD2C7    push       4FD30C
 004FD2CC    lea        eax,[ebp-2C]
 004FD2CF    mov        edx,2
 004FD2D4    call       @LStrArrayClr
 004FD2D9    lea        eax,[ebp-24]
 004FD2DC    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 004FD2E2    call       @DynArrayClear
 004FD2E7    lea        eax,[ebp-20]
 004FD2EA    call       @IntfClear
 004FD2EF    lea        eax,[ebp-1C]
 004FD2F2    call       @LStrClr
 004FD2F7    lea        eax,[ebp-14]
 004FD2FA    mov        edx,4
 004FD2FF    call       @LStrArrayClr
 004FD304    ret
<004FD305    jmp        @HandleFinally
<004FD30A    jmp        004FD2CC
 004FD30C    pop        edi
 004FD30D    pop        esi
 004FD30E    pop        ebx
 004FD30F    mov        esp,ebp
 004FD311    pop        ebp
 004FD312    ret        4
*}
//end;

//004FD318
//function sub_004FD318():?;
//begin
{*
 004FD318    mov        eax,1
 004FD31D    ret
*}
//end;

//004FD320
//function sub_004FD320():?;
//begin
{*
 004FD320    xor        eax,eax
 004FD322    ret
*}
//end;

//004FD324
//procedure sub_004FD324(?:?);
//begin
{*
 004FD324    push       ebp
 004FD325    mov        ebp,esp
 004FD327    push       ebx
 004FD328    push       esi
 004FD329    mov        esi,edx
 004FD32B    mov        ebx,eax
 004FD32D    cmp        dword ptr [ebx+0C],0; TZDBLibDriver.?fC:IZTokenizer
>004FD331    jne        004FD353
 004FD333    mov        dl,1
 004FD335    mov        eax,[004F7734]; TZSybaseTokenizer
 004FD33A    call       TZSybaseTokenizer.Create; TZSybaseTokenizer.Create
 004FD33F    mov        edx,eax
 004FD341    test       edx,edx
>004FD343    je         004FD34B
 004FD345    sub        edx,0FFFFFBD8
 004FD34B    lea        eax,[ebx+0C]; TZDBLibDriver.?fC:IZTokenizer
 004FD34E    call       @IntfCopy
 004FD353    mov        eax,esi
 004FD355    mov        edx,dword ptr [ebx+0C]; TZDBLibDriver.?fC:IZTokenizer
 004FD358    call       @IntfCopy
 004FD35D    pop        esi
 004FD35E    pop        ebx
 004FD35F    pop        ebp
 004FD360    ret
*}
//end;

//004FD364
//procedure sub_004FD364(?:?);
//begin
{*
 004FD364    push       ebp
 004FD365    mov        ebp,esp
 004FD367    push       ebx
 004FD368    push       esi
 004FD369    mov        esi,edx
 004FD36B    mov        ebx,eax
 004FD36D    cmp        dword ptr [ebx+10],0; TZDBLibDriver.?f10:IZStatementAnalyser
>004FD371    jne        004FD390
 004FD373    mov        dl,1
 004FD375    mov        eax,[004F82A4]; TZSybaseStatementAnalyser
 004FD37A    call       TZGenericStatementAnalyser.Create; TZSybaseStatementAnalyser.Create
 004FD37F    mov        edx,eax
 004FD381    test       edx,edx
>004FD383    je         004FD388
 004FD385    sub        edx,0FFFFFFE0
 004FD388    lea        eax,[ebx+10]; TZDBLibDriver.?f10:IZStatementAnalyser
 004FD38B    call       @IntfCopy
 004FD390    mov        eax,esi
 004FD392    mov        edx,dword ptr [ebx+10]; TZDBLibDriver.?f10:IZStatementAnalyser
 004FD395    call       @IntfCopy
 004FD39A    pop        esi
 004FD39B    pop        ebx
 004FD39C    pop        ebp
 004FD39D    ret
*}
//end;

//004FD3A0
//constructor TZDBLibConnection.Create(?:TZDBLibConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004FD3A0    push       ebp
 004FD3A1    mov        ebp,esp
 004FD3A3    add        esp,0FFFFFFF0
 004FD3A6    push       ebx
 004FD3A7    push       esi
 004FD3A8    xor        ebx,ebx
 004FD3AA    mov        dword ptr [ebp-10],ebx
 004FD3AD    mov        dword ptr [ebp-0C],ebx
 004FD3B0    test       dl,dl
>004FD3B2    je         004FD3BC
 004FD3B4    add        esp,0FFFFFFF0
 004FD3B7    call       @ClassCreate
 004FD3BC    mov        dword ptr [ebp-8],ecx
 004FD3BF    mov        byte ptr [ebp-1],dl
 004FD3C2    mov        ebx,eax
 004FD3C4    mov        esi,dword ptr [ebp+24]
 004FD3C7    mov        eax,dword ptr [ebp-8]
 004FD3CA    call       @IntfAddRef
 004FD3CF    mov        eax,dword ptr [ebp+20]
 004FD3D2    call       @IntfAddRef
 004FD3D7    xor        eax,eax
 004FD3D9    push       ebp
 004FD3DA    push       4FD4A6
 004FD3DF    push       dword ptr fs:[eax]
 004FD3E2    mov        dword ptr fs:[eax],esp
 004FD3E5    lea        eax,[ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD3E8    mov        edx,dword ptr [ebp+20]
 004FD3EB    call       @IntfCopy
 004FD3F0    lea        edx,[ebp-0C]
 004FD3F3    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD3F6    mov        ecx,dword ptr [eax]
 004FD3F8    call       dword ptr [ecx+0C]
 004FD3FB    mov        eax,dword ptr [ebp-0C]
 004FD3FE    mov        edx,4FD4D8; 'mssql'
 004FD403    call       @LStrCmp
>004FD408    jne        004FD41F
 004FD40A    push       esi
 004FD40B    mov        eax,dword ptr [ebp+8]
 004FD40E    push       eax
 004FD40F    mov        ecx,ebx
 004FD411    mov        dl,1
 004FD413    mov        eax,[004F3658]; TZMsSqlDatabaseMetadata
 004FD418    call       TZMsSqlDatabaseMetadata.Create; TZMsSqlDatabaseMetadata.Create
>004FD41D    jmp        004FD450
 004FD41F    lea        edx,[ebp-10]
 004FD422    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD425    mov        ecx,dword ptr [eax]
 004FD427    call       dword ptr [ecx+0C]
 004FD42A    mov        eax,dword ptr [ebp-10]
 004FD42D    mov        edx,4FD4E8; 'sybase'
 004FD432    call       @LStrCmp
>004FD437    jne        004FD44E
 004FD439    push       esi
 004FD43A    mov        eax,dword ptr [ebp+8]
 004FD43D    push       eax
 004FD43E    mov        ecx,ebx
 004FD440    mov        dl,1
 004FD442    mov        eax,[004F8350]; TZSybaseDatabaseMetadata
 004FD447    call       TZSybaseDatabaseMetadata.Create; TZSybaseDatabaseMetadata.Create
>004FD44C    jmp        004FD450
 004FD44E    xor        eax,eax
 004FD450    push       esi
 004FD451    mov        edx,dword ptr [ebp+1C]
 004FD454    push       edx
 004FD455    mov        edx,dword ptr [ebp+18]
 004FD458    push       edx
 004FD459    mov        edx,dword ptr [ebp+14]
 004FD45C    push       edx
 004FD45D    mov        edx,dword ptr [ebp+10]
 004FD460    push       edx
 004FD461    mov        edx,dword ptr [ebp+0C]
 004FD464    push       edx
 004FD465    mov        edx,dword ptr [ebp+8]
 004FD468    push       edx
 004FD469    push       eax
 004FD46A    mov        ecx,dword ptr [ebp-8]
 004FD46D    xor        edx,edx
 004FD46F    mov        eax,ebx
 004FD471    call       004DDD88
 004FD476    xor        eax,eax
 004FD478    mov        dword ptr [ebx+38],eax; TZDBLibConnection.?f38:dword
 004FD47B    xor        eax,eax
 004FD47D    pop        edx
 004FD47E    pop        ecx
 004FD47F    pop        ecx
 004FD480    mov        dword ptr fs:[eax],edx
 004FD483    push       4FD4AD
 004FD488    lea        eax,[ebp-10]
 004FD48B    mov        edx,2
 004FD490    call       @LStrArrayClr
 004FD495    lea        eax,[ebp-8]
 004FD498    call       @IntfClear
 004FD49D    lea        eax,[ebp+20]
 004FD4A0    call       @IntfClear
 004FD4A5    ret
<004FD4A6    jmp        @HandleFinally
<004FD4AB    jmp        004FD488
 004FD4AD    mov        eax,ebx
 004FD4AF    cmp        byte ptr [ebp-1],0
>004FD4B3    je         004FD4C4
 004FD4B5    call       @AfterConstruction
 004FD4BA    pop        dword ptr fs:[0]
 004FD4C1    add        esp,0C
 004FD4C4    mov        eax,ebx
 004FD4C6    pop        esi
 004FD4C7    pop        ebx
 004FD4C8    mov        esp,ebp
 004FD4CA    pop        ebp
 004FD4CB    ret        20
*}
//end;

//004FD4F0
destructor TZDBLibConnection.Destroy;
begin
{*
 004FD4F0    push       ebp
 004FD4F1    mov        ebp,esp
 004FD4F3    push       ebx
 004FD4F4    push       esi
 004FD4F5    call       @BeforeDestruction
 004FD4FA    mov        ebx,edx
 004FD4FC    mov        esi,eax
 004FD4FE    mov        eax,esi
 004FD500    mov        edx,dword ptr [eax]
 004FD502    call       dword ptr [edx+40]; TZDBLibConnection.sub_004FE2D4
 004FD505    mov        edx,ebx
 004FD507    and        dl,0FC
 004FD50A    mov        eax,esi
 004FD50C    call       TZAbstractConnection.Destroy
 004FD511    test       bl,bl
>004FD513    jle        004FD51C
 004FD515    mov        eax,esi
 004FD517    call       @ClassDestroy
 004FD51C    pop        esi
 004FD51D    pop        ebx
 004FD51E    pop        ebp
 004FD51F    ret
*}
end;

//004FD520
//procedure sub_004FD520(?:?);
//begin
{*
 004FD520    push       ebp
 004FD521    mov        ebp,esp
 004FD523    xor        ecx,ecx
 004FD525    push       ecx
 004FD526    push       ecx
 004FD527    push       ecx
 004FD528    push       ecx
 004FD529    push       ebx
 004FD52A    push       esi
 004FD52B    mov        dword ptr [ebp-4],edx
 004FD52E    mov        ebx,eax
 004FD530    xor        eax,eax
 004FD532    push       ebp
 004FD533    push       4FD650
 004FD538    push       dword ptr fs:[eax]
 004FD53B    mov        dword ptr fs:[eax],esp
 004FD53E    mov        eax,ebx
 004FD540    call       004FDB30
 004FD545    mov        esi,eax
 004FD547    mov        dword ptr [ebx+38],esi; TZDBLibConnection.?f38:dword
 004FD54A    mov        edx,esi
 004FD54C    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD54F    mov        ecx,dword ptr [eax]
 004FD551    call       dword ptr [ecx+54]
 004FD554    dec        eax
>004FD555    je         004FD563
 004FD557    mov        ecx,dword ptr [ebp-4]
 004FD55A    mov        dl,3
 004FD55C    mov        eax,ebx
 004FD55E    mov        esi,dword ptr [eax]
 004FD560    call       dword ptr [esi+78]; TZDBLibConnection.sub_004FDBB0
 004FD563    lea        edx,[ebp-0C]
 004FD566    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD569    mov        ecx,dword ptr [eax]
 004FD56B    call       dword ptr [ecx+0C]
 004FD56E    mov        eax,dword ptr [ebp-0C]
 004FD571    mov        edx,4FD668; 'mssql'
 004FD576    call       @LStrCmp
>004FD57B    jne        004FD59B
 004FD57D    mov        al,[004FD670]; 0x1
 004FD582    push       eax
 004FD583    lea        eax,[ebp-8]
 004FD586    push       eax
 004FD587    mov        ecx,4FD67C; '\\\\\r'
 004FD58C    mov        edx,4FD688; '\\\r'
 004FD591    mov        eax,dword ptr [ebp-4]
 004FD594    call       StringReplace
>004FD599    jmp        004FD5A6
 004FD59B    lea        eax,[ebp-8]
 004FD59E    mov        edx,dword ptr [ebp-4]
 004FD5A1    call       @LStrLAsg
 004FD5A6    mov        eax,dword ptr [ebp-8]
 004FD5A9    call       @LStrToPChar
 004FD5AE    mov        ecx,eax
 004FD5B0    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FD5B3    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD5B6    mov        esi,dword ptr [eax]
 004FD5B8    call       dword ptr [esi+58]
 004FD5BB    dec        eax
>004FD5BC    je         004FD5CA
 004FD5BE    mov        ecx,dword ptr [ebp-8]
 004FD5C1    mov        dl,3
 004FD5C3    mov        eax,ebx
 004FD5C5    mov        esi,dword ptr [eax]
 004FD5C7    call       dword ptr [esi+78]; TZDBLibConnection.sub_004FDBB0
 004FD5CA    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FD5CD    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD5D0    mov        ecx,dword ptr [eax]
 004FD5D2    call       dword ptr [ecx+5C]
 004FD5D5    dec        eax
>004FD5D6    je         004FD5E4
 004FD5D8    mov        ecx,dword ptr [ebp-8]
 004FD5DB    mov        dl,3
 004FD5DD    mov        eax,ebx
 004FD5DF    mov        esi,dword ptr [eax]
 004FD5E1    call       dword ptr [esi+78]; TZDBLibConnection.sub_004FDBB0
 004FD5E4    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FD5E7    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD5EA    mov        ecx,dword ptr [eax]
 004FD5EC    call       dword ptr [ecx+60]
 004FD5EF    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FD5F2    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD5F5    mov        ecx,dword ptr [eax]
 004FD5F7    call       dword ptr [ecx+64]
 004FD5FA    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FD5FD    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD600    mov        ecx,dword ptr [eax]
 004FD602    call       dword ptr [ecx+68]
 004FD605    test       eax,eax
<004FD607    jne        004FD5E4
 004FD609    mov        ecx,dword ptr [ebp-8]
 004FD60C    mov        dl,3
 004FD60E    mov        eax,ebx
 004FD610    mov        esi,dword ptr [eax]
 004FD612    call       dword ptr [esi+78]; TZDBLibConnection.sub_004FDBB0
 004FD615    mov        eax,dword ptr [ebp-8]
 004FD618    push       eax
 004FD619    lea        edx,[ebp-10]
 004FD61C    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD61F    mov        ecx,dword ptr [eax]
 004FD621    call       dword ptr [ecx+0C]
 004FD624    mov        ecx,dword ptr [ebp-10]
 004FD627    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004FD62C    mov        eax,dword ptr [eax]
 004FD62E    mov        dl,3
 004FD630    mov        ebx,dword ptr [eax]
 004FD632    call       dword ptr [ebx+3C]
 004FD635    xor        eax,eax
 004FD637    pop        edx
 004FD638    pop        ecx
 004FD639    pop        ecx
 004FD63A    mov        dword ptr fs:[eax],edx
 004FD63D    push       4FD657
 004FD642    lea        eax,[ebp-10]
 004FD645    mov        edx,3
 004FD64A    call       @LStrArrayClr
 004FD64F    ret
<004FD650    jmp        @HandleFinally
<004FD655    jmp        004FD642
 004FD657    pop        esi
 004FD658    pop        ebx
 004FD659    mov        esp,ebp
 004FD65B    pop        ebp
 004FD65C    ret
*}
//end;

//004FD68C
procedure sub_004FD68C;
begin
{*
 004FD68C    push       ebp
 004FD68D    mov        ebp,esp
 004FD68F    mov        ecx,7
 004FD694    push       0
 004FD696    push       0
 004FD698    dec        ecx
<004FD699    jne        004FD694
 004FD69B    push       ebx
 004FD69C    mov        dword ptr [ebp-4],eax
 004FD69F    xor        eax,eax
 004FD6A1    push       ebp
 004FD6A2    push       4FDA07
 004FD6A7    push       dword ptr fs:[eax]
 004FD6AA    mov        dword ptr fs:[eax],esp
 004FD6AD    lea        eax,[ebp-0C]
 004FD6B0    push       eax
 004FD6B1    mov        eax,dword ptr [ebp-4]
 004FD6B4    mov        eax,dword ptr [eax+10]; TZDBLibConnection.?f10:String
 004FD6B7    mov        dword ptr [ebp-18],eax
 004FD6BA    mov        byte ptr [ebp-14],0B
 004FD6BE    lea        edx,[ebp-18]
 004FD6C1    xor        ecx,ecx
 004FD6C3    mov        eax,4FDA1C; 'CONNECT TO \"%s\"'
 004FD6C8    call       Format
 004FD6CD    mov        eax,dword ptr [ebp-4]
 004FD6D0    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD6D3    mov        edx,dword ptr [eax]
 004FD6D5    call       dword ptr [edx+20]
 004FD6D8    mov        dword ptr [ebp-8],eax
 004FD6DB    xor        eax,eax
 004FD6DD    push       ebp
 004FD6DE    push       4FD9D8
 004FD6E3    push       dword ptr fs:[eax]
 004FD6E6    mov        dword ptr fs:[eax],esp
 004FD6E9    lea        ecx,[ebp-10]
 004FD6EC    mov        eax,dword ptr [ebp-4]
 004FD6EF    mov        eax,dword ptr [eax+24]; TZDBLibConnection.?f24:dword
 004FD6F2    mov        edx,4FDA34; 'workstation'
 004FD6F7    call       TStrings.GetValue
 004FD6FC    cmp        dword ptr [ebp-10],0
>004FD700    je         004FD71A
 004FD702    mov        eax,dword ptr [ebp-10]
 004FD705    call       @LStrToPChar
 004FD70A    mov        ecx,eax
 004FD70C    mov        eax,dword ptr [ebp-4]
 004FD70F    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD712    mov        edx,dword ptr [ebp-8]
 004FD715    mov        ebx,dword ptr [eax]
 004FD717    call       dword ptr [ebx+30]
 004FD71A    lea        ecx,[ebp-10]
 004FD71D    mov        eax,dword ptr [ebp-4]
 004FD720    mov        eax,dword ptr [eax+24]; TZDBLibConnection.?f24:dword
 004FD723    mov        edx,4FDA48; 'appname'
 004FD728    call       TStrings.GetValue
 004FD72D    cmp        dword ptr [ebp-10],0
>004FD731    je         004FD74B
 004FD733    mov        eax,dword ptr [ebp-10]
 004FD736    call       @LStrToPChar
 004FD73B    mov        ecx,eax
 004FD73D    mov        eax,dword ptr [ebp-4]
 004FD740    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD743    mov        edx,dword ptr [ebp-8]
 004FD746    mov        ebx,dword ptr [eax]
 004FD748    call       dword ptr [ebx+3C]
 004FD74B    lea        ecx,[ebp-10]
 004FD74E    mov        eax,dword ptr [ebp-4]
 004FD751    mov        eax,dword ptr [eax+24]; TZDBLibConnection.?f24:dword
 004FD754    mov        edx,4FDA58; 'language'
 004FD759    call       TStrings.GetValue
 004FD75E    cmp        dword ptr [ebp-10],0
>004FD762    je         004FD77C
 004FD764    mov        eax,dword ptr [ebp-10]
 004FD767    call       @LStrToPChar
 004FD76C    mov        ecx,eax
 004FD76E    mov        eax,dword ptr [ebp-4]
 004FD771    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD774    mov        edx,dword ptr [ebp-8]
 004FD777    mov        ebx,dword ptr [eax]
 004FD779    call       dword ptr [ebx+40]
 004FD77C    lea        ecx,[ebp-10]
 004FD77F    mov        eax,dword ptr [ebp-4]
 004FD782    mov        eax,dword ptr [eax+24]; TZDBLibConnection.?f24:dword
 004FD785    mov        edx,4FDA6C; 'timeout'
 004FD78A    call       TStrings.GetValue
 004FD78F    cmp        dword ptr [ebp-10],0
>004FD793    je         004FD7AF
 004FD795    mov        edx,3C
 004FD79A    mov        eax,dword ptr [ebp-10]
 004FD79D    call       StrToIntDef
 004FD7A2    mov        edx,eax
 004FD7A4    mov        eax,dword ptr [ebp-4]
 004FD7A7    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD7AA    mov        ecx,dword ptr [eax]
 004FD7AC    call       dword ptr [ecx+28]
 004FD7AF    lea        edx,[ebp-1C]
 004FD7B2    mov        eax,dword ptr [ebp-4]
 004FD7B5    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD7B8    mov        ecx,dword ptr [eax]
 004FD7BA    call       dword ptr [ecx+0C]
 004FD7BD    mov        eax,dword ptr [ebp-1C]
 004FD7C0    mov        edx,4FDA7C; 'mssql'
 004FD7C5    call       @LStrCmp
>004FD7CA    jne        004FD8AB
 004FD7D0    lea        ecx,[ebp-20]
 004FD7D3    mov        eax,dword ptr [ebp-4]
 004FD7D6    mov        eax,dword ptr [eax+24]; TZDBLibConnection.?f24:dword
 004FD7D9    mov        edx,4FDA8C; 'NTAuth'
 004FD7DE    call       TStrings.GetValue
 004FD7E3    mov        eax,dword ptr [ebp-20]
 004FD7E6    call       004BEFC0
 004FD7EB    test       al,al
>004FD7ED    jne        004FD82D
 004FD7EF    lea        ecx,[ebp-24]
 004FD7F2    mov        eax,dword ptr [ebp-4]
 004FD7F5    mov        eax,dword ptr [eax+24]; TZDBLibConnection.?f24:dword
 004FD7F8    mov        edx,4FDA9C; 'trusted'
 004FD7FD    call       TStrings.GetValue
 004FD802    mov        eax,dword ptr [ebp-24]
 004FD805    call       004BEFC0
 004FD80A    test       al,al
>004FD80C    jne        004FD82D
 004FD80E    lea        ecx,[ebp-28]
 004FD811    mov        eax,dword ptr [ebp-4]
 004FD814    mov        eax,dword ptr [eax+24]; TZDBLibConnection.?f24:dword
 004FD817    mov        edx,4FDAAC; 'secure'
 004FD81C    call       TStrings.GetValue
 004FD821    mov        eax,dword ptr [ebp-28]
 004FD824    call       004BEFC0
 004FD829    test       al,al
>004FD82B    je         004FD84A
 004FD82D    mov        eax,dword ptr [ebp-4]
 004FD830    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD833    mov        edx,dword ptr [ebp-8]
 004FD836    mov        ecx,dword ptr [eax]
 004FD838    call       dword ptr [ecx+48]
 004FD83B    lea        eax,[ebp-0C]
 004FD83E    mov        edx,4FDABC; ' USING WINDOWS AUTHENTICATION'
 004FD843    call       @LStrCat
>004FD848    jmp        004FD8AB
 004FD84A    mov        eax,dword ptr [ebp-4]
 004FD84D    mov        eax,dword ptr [eax+1C]; TZDBLibConnection.?f1C:String
 004FD850    call       @LStrToPChar
 004FD855    mov        ecx,eax
 004FD857    mov        eax,dword ptr [ebp-4]
 004FD85A    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD85D    mov        edx,dword ptr [ebp-8]
 004FD860    mov        ebx,dword ptr [eax]
 004FD862    call       dword ptr [ebx+34]
 004FD865    mov        eax,dword ptr [ebp-4]
 004FD868    mov        eax,dword ptr [eax+20]; TZDBLibConnection.?f20:String
 004FD86B    call       @LStrToPChar
 004FD870    mov        ecx,eax
 004FD872    mov        eax,dword ptr [ebp-4]
 004FD875    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD878    mov        edx,dword ptr [ebp-8]
 004FD87B    mov        ebx,dword ptr [eax]
 004FD87D    call       dword ptr [ebx+38]
 004FD880    lea        eax,[ebp-2C]
 004FD883    push       eax
 004FD884    mov        eax,dword ptr [ebp-4]
 004FD887    mov        eax,dword ptr [eax+1C]; TZDBLibConnection.?f1C:String
 004FD88A    mov        dword ptr [ebp-18],eax
 004FD88D    mov        byte ptr [ebp-14],0B
 004FD891    lea        edx,[ebp-18]
 004FD894    xor        ecx,ecx
 004FD896    mov        eax,4FDAE4; ' AS USER \"%s\"'
 004FD89B    call       Format
 004FD8A0    mov        edx,dword ptr [ebp-2C]
 004FD8A3    lea        eax,[ebp-0C]
 004FD8A6    call       @LStrCat
 004FD8AB    lea        edx,[ebp-30]
 004FD8AE    mov        eax,dword ptr [ebp-4]
 004FD8B1    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD8B4    mov        ecx,dword ptr [eax]
 004FD8B6    call       dword ptr [ecx+0C]
 004FD8B9    mov        eax,dword ptr [ebp-30]
 004FD8BC    mov        edx,4FDAFC; 'sybase'
 004FD8C1    call       @LStrCmp
>004FD8C6    jne        004FD95E
 004FD8CC    lea        ecx,[ebp-10]
 004FD8CF    mov        eax,dword ptr [ebp-4]
 004FD8D2    mov        eax,dword ptr [eax+24]; TZDBLibConnection.?f24:dword
 004FD8D5    mov        edx,4FDB0C; 'codepage'
 004FD8DA    call       TStrings.GetValue
 004FD8DF    cmp        dword ptr [ebp-10],0
>004FD8E3    je         004FD8FD
 004FD8E5    mov        eax,dword ptr [ebp-10]
 004FD8E8    call       @LStrToPChar
 004FD8ED    mov        ecx,eax
 004FD8EF    mov        eax,dword ptr [ebp-4]
 004FD8F2    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD8F5    mov        edx,dword ptr [ebp-8]
 004FD8F8    mov        ebx,dword ptr [eax]
 004FD8FA    call       dword ptr [ebx+44]
 004FD8FD    mov        eax,dword ptr [ebp-4]
 004FD900    mov        eax,dword ptr [eax+1C]; TZDBLibConnection.?f1C:String
 004FD903    call       @LStrToPChar
 004FD908    mov        ecx,eax
 004FD90A    mov        eax,dword ptr [ebp-4]
 004FD90D    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD910    mov        edx,dword ptr [ebp-8]
 004FD913    mov        ebx,dword ptr [eax]
 004FD915    call       dword ptr [ebx+34]
 004FD918    mov        eax,dword ptr [ebp-4]
 004FD91B    mov        eax,dword ptr [eax+20]; TZDBLibConnection.?f20:String
 004FD91E    call       @LStrToPChar
 004FD923    mov        ecx,eax
 004FD925    mov        eax,dword ptr [ebp-4]
 004FD928    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD92B    mov        edx,dword ptr [ebp-8]
 004FD92E    mov        ebx,dword ptr [eax]
 004FD930    call       dword ptr [ebx+38]
 004FD933    lea        eax,[ebp-34]
 004FD936    push       eax
 004FD937    mov        eax,dword ptr [ebp-4]
 004FD93A    mov        eax,dword ptr [eax+1C]; TZDBLibConnection.?f1C:String
 004FD93D    mov        dword ptr [ebp-18],eax
 004FD940    mov        byte ptr [ebp-14],0B
 004FD944    lea        edx,[ebp-18]
 004FD947    xor        ecx,ecx
 004FD949    mov        eax,4FDAE4; ' AS USER \"%s\"'
 004FD94E    call       Format
 004FD953    mov        edx,dword ptr [ebp-34]
 004FD956    lea        eax,[ebp-0C]
 004FD959    call       @LStrCat
 004FD95E    mov        ecx,dword ptr [ebp-0C]
 004FD961    xor        edx,edx
 004FD963    mov        eax,dword ptr [ebp-4]
 004FD966    mov        ebx,dword ptr [eax]
 004FD968    call       dword ptr [ebx+78]; TZDBLibConnection.sub_004FDBB0
 004FD96B    mov        eax,dword ptr [ebp-4]
 004FD96E    mov        eax,dword ptr [eax+10]; TZDBLibConnection.?f10:String
 004FD971    call       @LStrToPChar
 004FD976    mov        ecx,eax
 004FD978    mov        eax,dword ptr [ebp-4]
 004FD97B    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD97E    mov        edx,dword ptr [ebp-8]
 004FD981    mov        ebx,dword ptr [eax]
 004FD983    call       dword ptr [ebx+50]
 004FD986    mov        edx,dword ptr [ebp-4]
 004FD989    mov        dword ptr [edx+38],eax; TZDBLibConnection.?f38:dword
 004FD98C    mov        ecx,dword ptr [ebp-0C]
 004FD98F    xor        edx,edx
 004FD991    mov        eax,dword ptr [ebp-4]
 004FD994    mov        ebx,dword ptr [eax]
 004FD996    call       dword ptr [ebx+78]; TZDBLibConnection.sub_004FDBB0
 004FD999    mov        eax,dword ptr [ebp-0C]
 004FD99C    push       eax
 004FD99D    lea        edx,[ebp-38]
 004FD9A0    mov        eax,dword ptr [ebp-4]
 004FD9A3    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD9A6    mov        ecx,dword ptr [eax]
 004FD9A8    call       dword ptr [ecx+0C]
 004FD9AB    mov        ecx,dword ptr [ebp-38]
 004FD9AE    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004FD9B3    mov        eax,dword ptr [eax]
 004FD9B5    xor        edx,edx
 004FD9B7    mov        ebx,dword ptr [eax]
 004FD9B9    call       dword ptr [ebx+3C]
 004FD9BC    xor        eax,eax
 004FD9BE    pop        edx
 004FD9BF    pop        ecx
 004FD9C0    pop        ecx
 004FD9C1    mov        dword ptr fs:[eax],edx
 004FD9C4    push       4FD9DF
 004FD9C9    mov        eax,dword ptr [ebp-4]
 004FD9CC    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FD9CF    mov        edx,dword ptr [ebp-8]
 004FD9D2    mov        ecx,dword ptr [eax]
 004FD9D4    call       dword ptr [ecx+24]
 004FD9D7    ret
<004FD9D8    jmp        @HandleFinally
<004FD9DD    jmp        004FD9C9
 004FD9DF    xor        eax,eax
 004FD9E1    pop        edx
 004FD9E2    pop        ecx
 004FD9E3    pop        ecx
 004FD9E4    mov        dword ptr fs:[eax],edx
 004FD9E7    push       4FDA0E
 004FD9EC    lea        eax,[ebp-38]
 004FD9EF    mov        edx,8
 004FD9F4    call       @LStrArrayClr
 004FD9F9    lea        eax,[ebp-10]
 004FD9FC    mov        edx,2
 004FDA01    call       @LStrArrayClr
 004FDA06    ret
<004FDA07    jmp        @HandleFinally
<004FDA0C    jmp        004FD9EC
 004FDA0E    pop        ebx
 004FDA0F    mov        esp,ebp
 004FDA11    pop        ebp
 004FDA12    ret
*}
end;

//004FDB30
//function sub_004FDB30(?:TZDBLibConnection):?;
//begin
{*
 004FDB30    push       ebp
 004FDB31    mov        ebp,esp
 004FDB33    push       0
 004FDB35    push       ebx
 004FDB36    mov        ebx,eax
 004FDB38    xor        eax,eax
 004FDB3A    push       ebp
 004FDB3B    push       4FDB93
 004FDB40    push       dword ptr fs:[eax]
 004FDB43    mov        dword ptr fs:[eax],esp
 004FDB46    lea        edx,[ebp-4]
 004FDB49    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FDB4C    mov        ecx,dword ptr [eax]
 004FDB4E    call       dword ptr [ecx+0C]
 004FDB51    mov        eax,dword ptr [ebp-4]
 004FDB54    mov        edx,4FDBA8; 'mssql'
 004FDB59    call       @LStrCmp
>004FDB5E    jne        004FDB7A
 004FDB60    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FDB63    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FDB66    mov        ecx,dword ptr [eax]
 004FDB68    call       dword ptr [ecx+1C]
 004FDB6B    test       al,al
>004FDB6D    je         004FDB7A
 004FDB6F    mov        byte ptr [ebx+2B],1; TZDBLibConnection.?f2B:byte
 004FDB73    mov        eax,ebx
 004FDB75    mov        edx,dword ptr [eax]
 004FDB77    call       dword ptr [edx+3C]; TZDBLibConnection.sub_004FDC8C
 004FDB7A    mov        ebx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FDB7D    xor        eax,eax
 004FDB7F    pop        edx
 004FDB80    pop        ecx
 004FDB81    pop        ecx
 004FDB82    mov        dword ptr fs:[eax],edx
 004FDB85    push       4FDB9A
 004FDB8A    lea        eax,[ebp-4]
 004FDB8D    call       @LStrClr
 004FDB92    ret
<004FDB93    jmp        @HandleFinally
<004FDB98    jmp        004FDB8A
 004FDB9A    mov        eax,ebx
 004FDB9C    pop        ebx
 004FDB9D    pop        ecx
 004FDB9E    pop        ebp
 004FDB9F    ret
*}
//end;

//004FDBB0
//procedure sub_004FDBB0(?:?; ?:?);
//begin
{*
 004FDBB0    push       ebp
 004FDBB1    mov        ebp,esp
 004FDBB3    add        esp,0FFFFFFF0
 004FDBB6    push       ebx
 004FDBB7    push       esi
 004FDBB8    push       edi
 004FDBB9    xor        ebx,ebx
 004FDBBB    mov        dword ptr [ebp-10],ebx
 004FDBBE    mov        dword ptr [ebp-0C],ecx
 004FDBC1    mov        byte ptr [ebp-5],dl
 004FDBC4    mov        dword ptr [ebp-4],eax
 004FDBC7    xor        eax,eax
 004FDBC9    push       ebp
 004FDBCA    push       4FDC55
 004FDBCF    push       dword ptr fs:[eax]
 004FDBD2    mov        dword ptr fs:[eax],esp
 004FDBD5    xor        eax,eax
 004FDBD7    push       ebp
 004FDBD8    push       4FDBF8
 004FDBDD    push       dword ptr fs:[eax]
 004FDBE0    mov        dword ptr fs:[eax],esp
 004FDBE3    mov        eax,dword ptr [ebp-4]
 004FDBE6    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FDBE9    mov        edx,dword ptr [eax]
 004FDBEB    call       dword ptr [edx+18]
 004FDBEE    xor        eax,eax
 004FDBF0    pop        edx
 004FDBF1    pop        ecx
 004FDBF2    pop        ecx
 004FDBF3    mov        dword ptr fs:[eax],edx
>004FDBF6    jmp        004FDC3F
<004FDBF8    jmp        @HandleOnException
 004FDBFD    dd        1
 004FDC01    dd        4087B0;Exception
 004FDC05    dd        4FDC09
 004FDC09    mov        ebx,eax
 004FDC0B    mov        eax,dword ptr [ebp-0C]
 004FDC0E    push       eax
 004FDC0F    push       0
 004FDC11    mov        eax,dword ptr [ebx+4]; Exception.?f4:String
 004FDC14    push       eax
 004FDC15    lea        edx,[ebp-10]
 004FDC18    mov        eax,dword ptr [ebp-4]
 004FDC1B    mov        eax,dword ptr [eax+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FDC1E    mov        ecx,dword ptr [eax]
 004FDC20    call       dword ptr [ecx+0C]
 004FDC23    mov        ecx,dword ptr [ebp-10]
 004FDC26    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004FDC2B    mov        eax,dword ptr [eax]
 004FDC2D    mov        dl,byte ptr [ebp-5]
 004FDC30    mov        ebx,dword ptr [eax]
 004FDC32    call       dword ptr [ebx+40]
 004FDC35    call       @RaiseAgain
 004FDC3A    call       @DoneExcept
 004FDC3F    xor        eax,eax
 004FDC41    pop        edx
 004FDC42    pop        ecx
 004FDC43    pop        ecx
 004FDC44    mov        dword ptr fs:[eax],edx
 004FDC47    push       4FDC5C
 004FDC4C    lea        eax,[ebp-10]
 004FDC4F    call       @LStrClr
 004FDC54    ret
<004FDC55    jmp        @HandleFinally
<004FDC5A    jmp        004FDC4C
 004FDC5C    pop        edi
 004FDC5D    pop        esi
 004FDC5E    pop        ebx
 004FDC5F    mov        esp,ebp
 004FDC61    pop        ebp
 004FDC62    ret
*}
//end;

//004FDC64
//procedure sub_004FDC64(?:TZDBLibConnection);
//begin
{*
 004FDC64    push       ebp
 004FDC65    mov        ebp,esp
 004FDC67    push       ebx
 004FDC68    mov        ebx,eax
 004FDC6A    cmp        byte ptr [ebx+2B],0; TZDBLibConnection.?f2B:byte
>004FDC6E    jne        004FDC88
 004FDC70    cmp        byte ptr [ebx+28],0; TZDBLibConnection.?f28:byte
>004FDC74    jne        004FDC88
 004FDC76    mov        eax,ebx
 004FDC78    mov        edx,dword ptr [eax]
 004FDC7A    call       dword ptr [edx+64]; TZDBLibConnection.sub_004DE228
 004FDC7D    test       al,al
>004FDC7F    je         004FDC88
 004FDC81    mov        eax,ebx
 004FDC83    mov        edx,dword ptr [eax]
 004FDC85    call       dword ptr [edx+7C]; TZDBLibConnection.sub_004FE19C
 004FDC88    pop        ebx
 004FDC89    pop        ebp
 004FDC8A    ret
*}
//end;

//004FDC8C
procedure sub_004FDC8C;
begin
{*
 004FDC8C    push       ebp
 004FDC8D    mov        ebp,esp
 004FDC8F    xor        ecx,ecx
 004FDC91    push       ecx
 004FDC92    push       ecx
 004FDC93    push       ecx
 004FDC94    push       ecx
 004FDC95    push       ecx
 004FDC96    push       ebx
 004FDC97    push       esi
 004FDC98    mov        ebx,eax
 004FDC9A    xor        eax,eax
 004FDC9C    push       ebp
 004FDC9D    push       4FDDBA
 004FDCA2    push       dword ptr fs:[eax]
 004FDCA5    mov        dword ptr fs:[eax],esp
 004FDCA8    cmp        byte ptr [ebx+2B],0; TZDBLibConnection.?f2B:byte
>004FDCAC    je         004FDD97
 004FDCB2    mov        eax,ebx
 004FDCB4    mov        edx,dword ptr [eax]
 004FDCB6    call       dword ptr [edx+74]; TZDBLibConnection.sub_004FD68C
 004FDCB9    lea        eax,[ebp-4]
 004FDCBC    push       eax
 004FDCBD    mov        eax,dword ptr [ebx+18]; TZDBLibConnection.?f18:String
 004FDCC0    mov        dword ptr [ebp-0C],eax
 004FDCC3    mov        byte ptr [ebp-8],0B
 004FDCC7    lea        edx,[ebp-0C]
 004FDCCA    xor        ecx,ecx
 004FDCCC    mov        eax,4FDDD0; 'USE %s'
 004FDCD1    call       Format
 004FDCD6    mov        eax,dword ptr [ebx+18]; TZDBLibConnection.?f18:String
 004FDCD9    call       @LStrToPChar
 004FDCDE    mov        ecx,eax
 004FDCE0    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FDCE3    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FDCE6    mov        esi,dword ptr [eax]
 004FDCE8    call       dword ptr [esi+6C]
 004FDCEB    dec        eax
>004FDCEC    je         004FDCFA
 004FDCEE    mov        ecx,dword ptr [ebp-4]
 004FDCF1    xor        edx,edx
 004FDCF3    mov        eax,ebx
 004FDCF5    mov        esi,dword ptr [eax]
 004FDCF7    call       dword ptr [esi+78]; TZDBLibConnection.sub_004FDBB0
 004FDCFA    mov        eax,dword ptr [ebp-4]
 004FDCFD    push       eax
 004FDCFE    lea        edx,[ebp-10]
 004FDD01    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FDD04    mov        ecx,dword ptr [eax]
 004FDD06    call       dword ptr [ecx+0C]
 004FDD09    mov        ecx,dword ptr [ebp-10]
 004FDD0C    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004FDD11    mov        eax,dword ptr [eax]
 004FDD13    xor        edx,edx
 004FDD15    mov        esi,dword ptr [eax]
 004FDD17    call       dword ptr [esi+3C]
 004FDD1A    lea        eax,[ebp-4]
 004FDD1D    mov        edx,4FDDE0; 'set textlimit=2147483647'
 004FDD22    call       @LStrLAsg
 004FDD27    push       4FDDFC
 004FDD2C    push       0FF
 004FDD2E    mov        ecx,4
 004FDD33    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FDD36    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FDD39    mov        esi,dword ptr [eax]
 004FDD3B    call       dword ptr [esi+70]
 004FDD3E    dec        eax
>004FDD3F    je         004FDD4D
 004FDD41    mov        ecx,dword ptr [ebp-4]
 004FDD44    xor        edx,edx
 004FDD46    mov        eax,ebx
 004FDD48    mov        esi,dword ptr [eax]
 004FDD4A    call       dword ptr [esi+78]; TZDBLibConnection.sub_004FDBB0
 004FDD4D    mov        eax,dword ptr [ebp-4]
 004FDD50    push       eax
 004FDD51    lea        edx,[ebp-14]
 004FDD54    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FDD57    mov        ecx,dword ptr [eax]
 004FDD59    call       dword ptr [ecx+0C]
 004FDD5C    mov        ecx,dword ptr [ebp-14]
 004FDD5F    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004FDD64    mov        eax,dword ptr [eax]
 004FDD66    xor        edx,edx
 004FDD68    mov        esi,dword ptr [eax]
 004FDD6A    call       dword ptr [esi+3C]
 004FDD6D    mov        edx,4FDE10; 'set textsize 2147483647 set quoted_identifier on'
 004FDD72    mov        eax,ebx
 004FDD74    mov        ecx,dword ptr [eax]
 004FDD76    call       dword ptr [ecx+70]; TZDBLibConnection.sub_004FD520
 004FDD79    mov        eax,ebx
 004FDD7B    call       004DDF38
 004FDD80    mov        eax,ebx
 004FDD82    mov        edx,dword ptr [eax]
 004FDD84    call       dword ptr [edx+64]; TZDBLibConnection.sub_004DE228
 004FDD87    mov        edx,eax
 004FDD89    mov        eax,ebx
 004FDD8B    call       004FE02C
 004FDD90    mov        eax,ebx
 004FDD92    call       004FDC64
 004FDD97    xor        eax,eax
 004FDD99    pop        edx
 004FDD9A    pop        ecx
 004FDD9B    pop        ecx
 004FDD9C    mov        dword ptr fs:[eax],edx
 004FDD9F    push       4FDDC1
 004FDDA4    lea        eax,[ebp-14]
 004FDDA7    mov        edx,2
 004FDDAC    call       @LStrArrayClr
 004FDDB1    lea        eax,[ebp-4]
 004FDDB4    call       @LStrClr
 004FDDB9    ret
<004FDDBA    jmp        @HandleFinally
<004FDDBF    jmp        004FDDA4
 004FDDC1    pop        esi
 004FDDC2    pop        ebx
 004FDDC3    mov        esp,ebp
 004FDDC5    pop        ebp
 004FDDC6    ret
*}
end;

//004FDE44
//procedure sub_004FDE44(?:?; ?:?);
//begin
{*
 004FDE44    push       ebp
 004FDE45    mov        ebp,esp
 004FDE47    push       ebx
 004FDE48    push       esi
 004FDE49    push       edi
 004FDE4A    mov        edi,ecx
 004FDE4C    mov        esi,edx
 004FDE4E    mov        ebx,eax
 004FDE50    mov        eax,ebx
 004FDE52    mov        edx,dword ptr [eax]
 004FDE54    call       dword ptr [edx+44]; TZDBLibConnection.sub_004DE1AC
 004FDE57    test       al,al
>004FDE59    je         004FDE62
 004FDE5B    mov        eax,ebx
 004FDE5D    mov        edx,dword ptr [eax]
 004FDE5F    call       dword ptr [edx+3C]; TZDBLibConnection.sub_004FDC8C
 004FDE62    push       esi
 004FDE63    mov        ecx,ebx
 004FDE65    test       ecx,ecx
>004FDE67    je         004FDE6C
 004FDE69    sub        ecx,0FFFFFFD0
 004FDE6C    mov        dl,1
 004FDE6E    mov        eax,[004F13D4]; TZDBLibStatement
 004FDE73    call       TZDBLibStatement.Create; TZDBLibStatement.Create
 004FDE78    mov        edx,eax
 004FDE7A    test       edx,edx
>004FDE7C    je         004FDE81
 004FDE7E    sub        edx,0FFFFFFBC
 004FDE81    mov        eax,edi
 004FDE83    call       @IntfCopy
 004FDE88    pop        edi
 004FDE89    pop        esi
 004FDE8A    pop        ebx
 004FDE8B    pop        ebp
 004FDE8C    ret
*}
//end;

//004FDE90
//procedure sub_004FDE90(?:?; ?:?; ?:?);
//begin
{*
 004FDE90    push       ebp
 004FDE91    mov        ebp,esp
 004FDE93    push       ebx
 004FDE94    push       esi
 004FDE95    push       edi
 004FDE96    mov        edi,ecx
 004FDE98    mov        esi,edx
 004FDE9A    mov        ebx,eax
 004FDE9C    mov        eax,ebx
 004FDE9E    mov        edx,dword ptr [eax]
 004FDEA0    call       dword ptr [edx+44]; TZDBLibConnection.sub_004DE1AC
 004FDEA3    test       al,al
>004FDEA5    je         004FDEAE
 004FDEA7    mov        eax,ebx
 004FDEA9    mov        edx,dword ptr [eax]
 004FDEAB    call       dword ptr [edx+3C]; TZDBLibConnection.sub_004FDC8C
 004FDEAE    push       esi
 004FDEAF    push       edi
 004FDEB0    mov        ecx,ebx
 004FDEB2    test       ecx,ecx
>004FDEB4    je         004FDEB9
 004FDEB6    sub        ecx,0FFFFFFD0
 004FDEB9    mov        dl,1
 004FDEBB    mov        eax,[004F14E4]; TZDBLibPreparedStatementEmulated
 004FDEC0    call       TZDBLibPreparedStatementEmulated.Create; TZDBLibPreparedStatementEmulated.Create
 004FDEC5    mov        edx,eax
 004FDEC7    test       edx,edx
>004FDEC9    je         004FDECE
 004FDECB    sub        edx,0FFFFFFA4
 004FDECE    mov        eax,dword ptr [ebp+8]
 004FDED1    call       @IntfCopy
 004FDED6    pop        edi
 004FDED7    pop        esi
 004FDED8    pop        ebx
 004FDED9    pop        ebp
 004FDEDA    ret        4
*}
//end;

//004FDEE0
//procedure sub_004FDEE0(?:?; ?:?; ?:?);
//begin
{*
 004FDEE0    push       ebp
 004FDEE1    mov        ebp,esp
 004FDEE3    push       ebx
 004FDEE4    push       esi
 004FDEE5    push       edi
 004FDEE6    mov        edi,ecx
 004FDEE8    mov        esi,edx
 004FDEEA    mov        ebx,eax
 004FDEEC    mov        eax,ebx
 004FDEEE    mov        edx,dword ptr [eax]
 004FDEF0    call       dword ptr [edx+44]; TZDBLibConnection.sub_004DE1AC
 004FDEF3    test       al,al
>004FDEF5    je         004FDEFE
 004FDEF7    mov        eax,ebx
 004FDEF9    mov        edx,dword ptr [eax]
 004FDEFB    call       dword ptr [edx+3C]; TZDBLibConnection.sub_004FDC8C
 004FDEFE    push       esi
 004FDEFF    push       edi
 004FDF00    mov        ecx,ebx
 004FDF02    test       ecx,ecx
>004FDF04    je         004FDF09
 004FDF06    sub        ecx,0FFFFFFD0
 004FDF09    mov        dl,1
 004FDF0B    mov        eax,[004F164C]; TZDBLibCallableStatement
 004FDF10    call       TZDBLibCallableStatement.Create; TZDBLibCallableStatement.Create
 004FDF15    mov        edx,eax
 004FDF17    test       edx,edx
>004FDF19    je         004FDF1E
 004FDF1B    sub        edx,0FFFFFF8C
 004FDF1E    mov        eax,dword ptr [ebp+8]
 004FDF21    call       @IntfCopy
 004FDF26    pop        edi
 004FDF27    pop        esi
 004FDF28    pop        ebx
 004FDF29    pop        ebp
 004FDF2A    ret        4
*}
//end;

//004FDF30
//procedure sub_004FDF30(?:?; ?:?);
//begin
{*
 004FDF30    push       ebp
 004FDF31    mov        ebp,esp
 004FDF33    push       ebx
 004FDF34    push       esi
 004FDF35    mov        esi,ecx
 004FDF37    mov        ebx,edx
 004FDF39    mov        eax,esi
 004FDF3B    mov        edx,ebx
 004FDF3D    call       @LStrAsg
 004FDF42    pop        esi
 004FDF43    pop        ebx
 004FDF44    pop        ebp
 004FDF45    ret
*}
//end;

//004FDF48
//procedure sub_004FDF48(?:?);
//begin
{*
 004FDF48    push       ebp
 004FDF49    mov        ebp,esp
 004FDF4B    push       ebx
 004FDF4C    push       esi
 004FDF4D    mov        ebx,edx
 004FDF4F    mov        esi,eax
 004FDF51    mov        eax,esi
 004FDF53    mov        edx,dword ptr [eax]
 004FDF55    call       dword ptr [edx+1C]; TZDBLibConnection.sub_004DE110
 004FDF58    cmp        bl,al
>004FDF5A    je         004FDF81
 004FDF5C    mov        al,byte ptr [esi+2B]; TZDBLibConnection.?f2B:byte
 004FDF5F    xor        al,1
 004FDF61    test       al,bl
>004FDF63    je         004FDF71
 004FDF65    mov        edx,4FDF90; 'commit'
 004FDF6A    mov        eax,esi
 004FDF6C    mov        ecx,dword ptr [eax]
 004FDF6E    call       dword ptr [ecx+70]; TZDBLibConnection.sub_004FD520
 004FDF71    mov        edx,ebx
 004FDF73    mov        eax,esi
 004FDF75    call       004DE10C
 004FDF7A    mov        eax,esi
 004FDF7C    call       004FDC64
 004FDF81    pop        esi
 004FDF82    pop        ebx
 004FDF83    pop        ebp
 004FDF84    ret
*}
//end;

//004FE02C
//procedure sub_004FE02C(?:TZDBLibConnection);
//begin
{*
 004FE02C    push       ebp
 004FE02D    mov        ebp,esp
 004FE02F    push       0
 004FE031    push       0
 004FE033    push       0
 004FE035    push       ebx
 004FE036    push       esi
 004FE037    mov        ebx,eax
 004FE039    xor        eax,eax
 004FE03B    push       ebp
 004FE03C    push       4FE0D5
 004FE041    push       dword ptr fs:[eax]
 004FE044    mov        dword ptr fs:[eax],esp
 004FE047    or         esi,0FFFFFFFF
 004FE04A    lea        edx,[ebp-8]
 004FE04D    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FE050    mov        ecx,dword ptr [eax]
 004FE052    call       dword ptr [ecx+0C]
 004FE055    mov        eax,dword ptr [ebp-8]
 004FE058    mov        edx,4FE0EC; 'mssql'
 004FE05D    call       @LStrCmp
>004FE062    jne        004FE066
 004FE064    xor        esi,esi
 004FE066    lea        edx,[ebp-0C]
 004FE069    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FE06C    mov        ecx,dword ptr [eax]
 004FE06E    call       dword ptr [ecx+0C]
 004FE071    mov        eax,dword ptr [ebp-0C]
 004FE074    mov        edx,4FE0FC; 'sybase'
 004FE079    call       @LStrCmp
>004FE07E    jne        004FE085
 004FE080    mov        esi,1
 004FE085    mov        eax,ebx
 004FE087    mov        edx,dword ptr [eax]
 004FE089    call       dword ptr [edx+64]; TZDBLibConnection.sub_004DE228
 004FE08C    and        eax,7F
 004FE08F    lea        eax,[eax*8+616030]; gvar_00616030:array[10] of String
 004FE096    cmp        esi,1
>004FE099    jbe        004FE0A0
 004FE09B    call       @BoundErr
 004FE0A0    mov        ecx,dword ptr [eax+esi*4]
 004FE0A3    lea        eax,[ebp-4]
 004FE0A6    mov        edx,4FE10C; 'SET TRANSACTION ISOLATION LEVEL '
 004FE0AB    call       @LStrCat3
 004FE0B0    mov        edx,dword ptr [ebp-4]
 004FE0B3    mov        eax,ebx
 004FE0B5    mov        ecx,dword ptr [eax]
 004FE0B7    call       dword ptr [ecx+70]; TZDBLibConnection.sub_004FD520
 004FE0BA    xor        eax,eax
 004FE0BC    pop        edx
 004FE0BD    pop        ecx
 004FE0BE    pop        ecx
 004FE0BF    mov        dword ptr fs:[eax],edx
 004FE0C2    push       4FE0DC
 004FE0C7    lea        eax,[ebp-0C]
 004FE0CA    mov        edx,3
 004FE0CF    call       @LStrArrayClr
 004FE0D4    ret
<004FE0D5    jmp        @HandleFinally
<004FE0DA    jmp        004FE0C7
 004FE0DC    pop        esi
 004FE0DD    pop        ebx
 004FE0DE    mov        esp,ebp
 004FE0E0    pop        ebp
 004FE0E1    ret
*}
//end;

//004FE130
//procedure sub_004FE130(?:?);
//begin
{*
 004FE130    push       ebp
 004FE131    mov        ebp,esp
 004FE133    push       ebx
 004FE134    push       esi
 004FE135    mov        ebx,edx
 004FE137    mov        esi,eax
 004FE139    mov        eax,esi
 004FE13B    mov        edx,dword ptr [eax]
 004FE13D    call       dword ptr [edx+64]; TZDBLibConnection.sub_004DE228
 004FE140    cmp        bl,al
>004FE142    je         004FE186
 004FE144    cmp        byte ptr [esi+2B],0; TZDBLibConnection.?f2B:byte
>004FE148    jne        004FE167
 004FE14A    cmp        byte ptr [esi+28],0; TZDBLibConnection.?f28:byte
>004FE14E    jne        004FE167
 004FE150    mov        eax,esi
 004FE152    mov        edx,dword ptr [eax]
 004FE154    call       dword ptr [edx+64]; TZDBLibConnection.sub_004DE228
 004FE157    test       al,al
>004FE159    je         004FE167
 004FE15B    mov        edx,4FE194; 'commit'
 004FE160    mov        eax,esi
 004FE162    mov        ecx,dword ptr [eax]
 004FE164    call       dword ptr [ecx+70]; TZDBLibConnection.sub_004FD520
 004FE167    mov        edx,ebx
 004FE169    mov        eax,esi
 004FE16B    call       004DE224
 004FE170    cmp        byte ptr [esi+2B],0; TZDBLibConnection.?f2B:byte
>004FE174    jne        004FE17F
 004FE176    mov        edx,ebx
 004FE178    mov        eax,esi
 004FE17A    call       004FE02C
 004FE17F    mov        eax,esi
 004FE181    call       004FDC64
 004FE186    pop        esi
 004FE187    pop        ebx
 004FE188    pop        ebp
 004FE189    ret
*}
//end;

//004FE19C
procedure sub_004FE19C;
begin
{*
 004FE19C    push       ebp
 004FE19D    mov        ebp,esp
 004FE19F    mov        edx,4FE1B4; 'begin transaction'
 004FE1A4    mov        ecx,dword ptr [eax]
 004FE1A6    call       dword ptr [ecx+70]; TZDBLibConnection.sub_004FD520
 004FE1A9    pop        ebp
 004FE1AA    ret
*}
end;

//004FE1C8
procedure sub_004FE1C8;
begin
{*
 004FE1C8    push       ebp
 004FE1C9    mov        ebp,esp
 004FE1CB    push       0
 004FE1CD    push       ebx
 004FE1CE    mov        ebx,eax
 004FE1D0    xor        eax,eax
 004FE1D2    push       ebp
 004FE1D3    push       4FE22E
 004FE1D8    push       dword ptr fs:[eax]
 004FE1DB    mov        dword ptr fs:[eax],esp
 004FE1DE    cmp        byte ptr [ebx+28],0; TZDBLibConnection.?f28:byte
>004FE1E2    je         004FE205
 004FE1E4    lea        edx,[ebp-4]
 004FE1E7    mov        eax,[0061BCDC]; ^#122.sResString39:TResStringRec
 004FE1EC    call       LoadResString
 004FE1F1    mov        ecx,dword ptr [ebp-4]
 004FE1F4    mov        dl,1
 004FE1F6    mov        eax,[004087B0]; Exception
 004FE1FB    call       Exception.Create; Exception.Create
 004FE200    call       @RaiseExcept
 004FE205    mov        edx,4FE244; 'commit'
 004FE20A    mov        eax,ebx
 004FE20C    mov        ecx,dword ptr [eax]
 004FE20E    call       dword ptr [ecx+70]; TZDBLibConnection.sub_004FD520
 004FE211    mov        eax,ebx
 004FE213    mov        edx,dword ptr [eax]
 004FE215    call       dword ptr [edx+7C]; TZDBLibConnection.sub_004FE19C
 004FE218    xor        eax,eax
 004FE21A    pop        edx
 004FE21B    pop        ecx
 004FE21C    pop        ecx
 004FE21D    mov        dword ptr fs:[eax],edx
 004FE220    push       4FE235
 004FE225    lea        eax,[ebp-4]
 004FE228    call       @LStrClr
 004FE22D    ret
<004FE22E    jmp        @HandleFinally
<004FE233    jmp        004FE225
 004FE235    pop        ebx
 004FE236    pop        ecx
 004FE237    pop        ebp
 004FE238    ret
*}
end;

//004FE24C
procedure sub_004FE24C;
begin
{*
 004FE24C    push       ebp
 004FE24D    mov        ebp,esp
 004FE24F    push       0
 004FE251    push       ebx
 004FE252    mov        ebx,eax
 004FE254    xor        eax,eax
 004FE256    push       ebp
 004FE257    push       4FE2B2
 004FE25C    push       dword ptr fs:[eax]
 004FE25F    mov        dword ptr fs:[eax],esp
 004FE262    cmp        byte ptr [ebx+28],0; TZDBLibConnection.?f28:byte
>004FE266    je         004FE289
 004FE268    lea        edx,[ebp-4]
 004FE26B    mov        eax,[0061AFD4]; ^#122.sResString40:TResStringRec
 004FE270    call       LoadResString
 004FE275    mov        ecx,dword ptr [ebp-4]
 004FE278    mov        dl,1
 004FE27A    mov        eax,[004087B0]; Exception
 004FE27F    call       Exception.Create; Exception.Create
 004FE284    call       @RaiseExcept
 004FE289    mov        edx,4FE2C8; 'rollback'
 004FE28E    mov        eax,ebx
 004FE290    mov        ecx,dword ptr [eax]
 004FE292    call       dword ptr [ecx+70]; TZDBLibConnection.sub_004FD520
 004FE295    mov        eax,ebx
 004FE297    mov        edx,dword ptr [eax]
 004FE299    call       dword ptr [edx+7C]; TZDBLibConnection.sub_004FE19C
 004FE29C    xor        eax,eax
 004FE29E    pop        edx
 004FE29F    pop        ecx
 004FE2A0    pop        ecx
 004FE2A1    mov        dword ptr fs:[eax],edx
 004FE2A4    push       4FE2B9
 004FE2A9    lea        eax,[ebp-4]
 004FE2AC    call       @LStrClr
 004FE2B1    ret
<004FE2B2    jmp        @HandleFinally
<004FE2B7    jmp        004FE2A9
 004FE2B9    pop        ebx
 004FE2BA    pop        ecx
 004FE2BB    pop        ebp
 004FE2BC    ret
*}
end;

//004FE2D4
procedure sub_004FE2D4;
begin
{*
 004FE2D4    push       ebp
 004FE2D5    mov        ebp,esp
 004FE2D7    add        esp,0FFFFFFE8
 004FE2DA    push       ebx
 004FE2DB    push       esi
 004FE2DC    xor        edx,edx
 004FE2DE    mov        dword ptr [ebp-18],edx
 004FE2E1    mov        dword ptr [ebp-4],edx
 004FE2E4    mov        ebx,eax
 004FE2E6    xor        eax,eax
 004FE2E8    push       ebp
 004FE2E9    push       4FE3A7
 004FE2EE    push       dword ptr fs:[eax]
 004FE2F1    mov        dword ptr fs:[eax],esp
 004FE2F4    cmp        byte ptr [ebx+2B],0; TZDBLibConnection.?f2B:byte
>004FE2F8    jne        004FE389
 004FE2FE    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FE301    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FE304    mov        ecx,dword ptr [eax]
 004FE306    call       dword ptr [ecx+1C]
 004FE309    test       al,al
>004FE30B    jne        004FE319
 004FE30D    mov        edx,4FE3BC; 'if @@trancount > 0 rollback'
 004FE312    mov        eax,ebx
 004FE314    mov        ecx,dword ptr [eax]
 004FE316    call       dword ptr [ecx+70]; TZDBLibConnection.sub_004FD520
 004FE319    lea        eax,[ebp-4]
 004FE31C    push       eax
 004FE31D    mov        eax,dword ptr [ebx+10]; TZDBLibConnection.?f10:String
 004FE320    mov        dword ptr [ebp-14],eax
 004FE323    mov        byte ptr [ebp-10],0B
 004FE327    mov        eax,dword ptr [ebx+18]; TZDBLibConnection.?f18:String
 004FE32A    mov        dword ptr [ebp-0C],eax
 004FE32D    mov        byte ptr [ebp-8],0B
 004FE331    lea        edx,[ebp-14]
 004FE334    mov        ecx,1
 004FE339    mov        eax,4FE3E0; 'CLOSE CONNECTION TO \"%s\" DATABASE \"%s\"'
 004FE33E    call       Format
 004FE343    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FE346    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FE349    mov        ecx,dword ptr [eax]
 004FE34B    call       dword ptr [ecx+74]
 004FE34E    dec        eax
>004FE34F    je         004FE35D
 004FE351    mov        ecx,dword ptr [ebp-4]
 004FE354    mov        dl,1
 004FE356    mov        eax,ebx
 004FE358    mov        esi,dword ptr [eax]
 004FE35A    call       dword ptr [esi+78]; TZDBLibConnection.sub_004FDBB0
 004FE35D    mov        eax,dword ptr [ebp-4]
 004FE360    push       eax
 004FE361    lea        edx,[ebp-18]
 004FE364    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FE367    mov        ecx,dword ptr [eax]
 004FE369    call       dword ptr [ecx+0C]
 004FE36C    mov        ecx,dword ptr [ebp-18]
 004FE36F    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004FE374    mov        eax,dword ptr [eax]
 004FE376    mov        dl,1
 004FE378    mov        esi,dword ptr [eax]
 004FE37A    call       dword ptr [esi+3C]
 004FE37D    xor        eax,eax
 004FE37F    mov        dword ptr [ebx+38],eax; TZDBLibConnection.?f38:dword
 004FE382    mov        eax,ebx
 004FE384    call       004DE1A4
 004FE389    xor        eax,eax
 004FE38B    pop        edx
 004FE38C    pop        ecx
 004FE38D    pop        ecx
 004FE38E    mov        dword ptr fs:[eax],edx
 004FE391    push       4FE3AE
 004FE396    lea        eax,[ebp-18]
 004FE399    call       @LStrClr
 004FE39E    lea        eax,[ebp-4]
 004FE3A1    call       @LStrClr
 004FE3A6    ret
<004FE3A7    jmp        @HandleFinally
<004FE3AC    jmp        004FE396
 004FE3AE    pop        esi
 004FE3AF    pop        ebx
 004FE3B0    mov        esp,ebp
 004FE3B2    pop        ebp
 004FE3B3    ret
*}
end;

//004FE408
procedure sub_004FE408();
begin
{*
 004FE408    push       ebp
 004FE409    mov        ebp,esp
 004FE40B    call       004DE208
 004FE410    pop        ebp
 004FE411    ret
*}
end;

//004FE414
//procedure sub_004FE414(?:?);
//begin
{*
 004FE414    push       ebp
 004FE415    mov        ebp,esp
 004FE417    add        esp,0FFFFFFF0
 004FE41A    push       ebx
 004FE41B    push       esi
 004FE41C    xor        ecx,ecx
 004FE41E    mov        dword ptr [ebp-10],ecx
 004FE421    mov        dword ptr [ebp-4],ecx
 004FE424    mov        esi,edx
 004FE426    mov        ebx,eax
 004FE428    xor        eax,eax
 004FE42A    push       ebp
 004FE42B    push       4FE4BB
 004FE430    push       dword ptr fs:[eax]
 004FE433    mov        dword ptr fs:[eax],esp
 004FE436    test       esi,esi
>004FE438    je         004FE49D
 004FE43A    cmp        byte ptr [ebx+2B],0; TZDBLibConnection.?f2B:byte
>004FE43E    jne        004FE49D
 004FE440    lea        eax,[ebp-4]
 004FE443    push       eax
 004FE444    mov        dword ptr [ebp-0C],esi
 004FE447    mov        byte ptr [ebp-8],0B
 004FE44B    lea        edx,[ebp-0C]
 004FE44E    xor        ecx,ecx
 004FE450    mov        eax,4FE4D0; 'SET CATALOG %s'
 004FE455    call       Format
 004FE45A    mov        eax,esi
 004FE45C    call       @LStrToPChar
 004FE461    mov        ecx,eax
 004FE463    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FE466    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FE469    mov        esi,dword ptr [eax]
 004FE46B    call       dword ptr [esi+6C]
 004FE46E    dec        eax
>004FE46F    je         004FE47D
 004FE471    mov        ecx,dword ptr [ebp-4]
 004FE474    mov        dl,4
 004FE476    mov        eax,ebx
 004FE478    mov        esi,dword ptr [eax]
 004FE47A    call       dword ptr [esi+78]; TZDBLibConnection.sub_004FDBB0
 004FE47D    mov        eax,dword ptr [ebp-4]
 004FE480    push       eax
 004FE481    lea        edx,[ebp-10]
 004FE484    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FE487    mov        ecx,dword ptr [eax]
 004FE489    call       dword ptr [ecx+0C]
 004FE48C    mov        ecx,dword ptr [ebp-10]
 004FE48F    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004FE494    mov        eax,dword ptr [eax]
 004FE496    mov        dl,4
 004FE498    mov        ebx,dword ptr [eax]
 004FE49A    call       dword ptr [ebx+3C]
 004FE49D    xor        eax,eax
 004FE49F    pop        edx
 004FE4A0    pop        ecx
 004FE4A1    pop        ecx
 004FE4A2    mov        dword ptr fs:[eax],edx
 004FE4A5    push       4FE4C2
 004FE4AA    lea        eax,[ebp-10]
 004FE4AD    call       @LStrClr
 004FE4B2    lea        eax,[ebp-4]
 004FE4B5    call       @LStrClr
 004FE4BA    ret
<004FE4BB    jmp        @HandleFinally
<004FE4C0    jmp        004FE4AA
 004FE4C2    pop        esi
 004FE4C3    pop        ebx
 004FE4C4    mov        esp,ebp
 004FE4C6    pop        ebp
 004FE4C7    ret
*}
//end;

//004FE4E0
//procedure sub_004FE4E0(?:?);
//begin
{*
 004FE4E0    push       ebp
 004FE4E1    mov        ebp,esp
 004FE4E3    push       ebx
 004FE4E4    push       esi
 004FE4E5    mov        esi,edx
 004FE4E7    mov        ebx,eax
 004FE4E9    mov        edx,dword ptr [ebx+38]; TZDBLibConnection.?f38:dword
 004FE4EC    mov        eax,dword ptr [ebx+34]; TZDBLibConnection.?f34:IZDBLibPlainDriver
 004FE4EF    mov        ecx,dword ptr [eax]
 004FE4F1    call       dword ptr [ecx+78]
 004FE4F4    mov        edx,eax
 004FE4F6    mov        eax,esi
 004FE4F8    call       @LStrFromPChar
 004FE4FD    mov        ecx,4FE518; 'GETCATALOG'
 004FE502    mov        dl,4
 004FE504    mov        eax,ebx
 004FE506    mov        ebx,dword ptr [eax]
 004FE508    call       dword ptr [ebx+78]; TZDBLibConnection.sub_004FDBB0
 004FE50B    pop        esi
 004FE50C    pop        ebx
 004FE50D    pop        ebp
 004FE50E    ret
*}
//end;

//004FE524
//function sub_004FE524():?;
//begin
{*
 004FE524    xor        eax,eax
 004FE526    ret
*}
//end;

//004FE528
procedure sub_004FE528();
begin
{*
 004FE528    ret
*}
end;

Initialization
//004FE5A4
{*
 004FE5A4    push       ebp
 004FE5A5    mov        ebp,esp
 004FE5A7    xor        eax,eax
 004FE5A9    push       ebp
 004FE5AA    push       4FE5FD
 004FE5AF    push       dword ptr fs:[eax]
 004FE5B2    mov        dword ptr fs:[eax],esp
 004FE5B5    sub        dword ptr ds:[61E2AC],1
>004FE5BC    jae        004FE5EF
 004FE5BE    mov        dl,1
 004FE5C0    mov        eax,[004FCC10]; TZDBLibDriver
 004FE5C5    call       TZDBLibDriver.Create; TZDBLibDriver.Create
 004FE5CA    mov        edx,eax
 004FE5CC    test       edx,edx
>004FE5CE    je         004FE5D3
 004FE5D0    sub        edx,0FFFFFFEC
 004FE5D3    mov        eax,61E2A8; gvar_0061E2A8:IInterface
 004FE5D8    call       @IntfCopy
 004FE5DD    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004FE5E2    mov        eax,dword ptr [eax]
 004FE5E4    mov        edx,dword ptr ds:[61E2A8]; gvar_0061E2A8:IInterface
 004FE5EA    mov        ecx,dword ptr [eax]
 004FE5EC    call       dword ptr [ecx+20]
 004FE5EF    xor        eax,eax
 004FE5F1    pop        edx
 004FE5F2    pop        ecx
 004FE5F3    pop        ecx
 004FE5F4    mov        dword ptr fs:[eax],edx
 004FE5F7    push       4FE604
 004FE5FC    ret
<004FE5FD    jmp        @HandleFinally
<004FE602    jmp        004FE5FC
 004FE604    pop        ebp
 004FE605    ret
*}
Finalization
//004FE52C
{*
 004FE52C    push       ebp
 004FE52D    mov        ebp,esp
 004FE52F    xor        eax,eax
 004FE531    push       ebp
 004FE532    push       4FE598
 004FE537    push       dword ptr fs:[eax]
 004FE53A    mov        dword ptr fs:[eax],esp
 004FE53D    inc        dword ptr ds:[61E2AC]
>004FE543    jne        004FE58A
 004FE545    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004FE54A    cmp        dword ptr [eax],0
>004FE54D    je         004FE561
 004FE54F    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004FE554    mov        eax,dword ptr [eax]
 004FE556    mov        edx,dword ptr ds:[61E2A8]; gvar_0061E2A8:IInterface
 004FE55C    mov        ecx,dword ptr [eax]
 004FE55E    call       dword ptr [ecx+24]
 004FE561    mov        eax,61E2A8; gvar_0061E2A8:IInterface
 004FE566    call       @IntfClear
 004FE56B    mov        eax,616030; gvar_00616030:array[10] of String
 004FE570    mov        ecx,0A
 004FE575    mov        edx,dword ptr ds:[4010F8]; String
 004FE57B    call       @FinalizeArray
 004FE580    mov        eax,61E2A8; gvar_0061E2A8:IInterface
 004FE585    call       @IntfClear
 004FE58A    xor        eax,eax
 004FE58C    pop        edx
 004FE58D    pop        ecx
 004FE58E    pop        ecx
 004FE58F    mov        dword ptr fs:[eax],edx
 004FE592    push       4FE59F
 004FE597    ret
<004FE598    jmp        @HandleFinally
<004FE59D    jmp        004FE597
 004FE59F    pop        ebp
 004FE5A0    ret
*}
end.