{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit165;

interface

uses
  Classes, Windows, Graphics, ZDbcStatement, ZPlainOracleDriver, ZDbcIntfs;

type
  TZOracleStatement = class(TZAbstractStatement)
  public
    f48:IZOraclePlainDriver;//f48
    destructor Destroy; virtual;
    //procedure sub_00548810(?:?; ?:?); virtual;
    //function sub_005488FC(?:?):?; virtual;
    //function sub_00548A10(?:?):?; virtual;
    //constructor Create(?:TZOracleStatement; _Dv__:Boolean; ?:?; ?:?);
  end;
  TZOraclePreparedStatement = class(TZAbstractPreparedStatement)
  public
    f60:byte;//f60
    f64:dword;//f64
    f68:dword;//f68
    f6C:IZOraclePlainDriver;//f6C
    f70:String;//f70
    f74:IZStatement;//f74
    f78:IZStatement;//f78
    f7C:dword;//f7C
    destructor Destroy; virtual;
    //procedure sub_0054903C(?:?; ?:?); virtual;
    //function sub_00549098(?:?):?; virtual;
    procedure sub_00548F6C; virtual;
    //function sub_00548FAC(?:?):?; virtual;
    //procedure sub_005493EC(?:?); virtual;
    //function sub_00549494:?; virtual;
    //function sub_005492B8:?; virtual;
    procedure sub_005490F0; virtual;
    //constructor Create(?:TZOraclePreparedStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//00548748
//constructor TZOracleStatement.Create(?:TZOracleStatement; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 00548748    push       ebp
 00548749    mov        ebp,esp
 0054874B    push       ecx
 0054874C    push       ebx
 0054874D    push       esi
 0054874E    test       dl,dl
>00548750    je         0054875A
 00548752    add        esp,0FFFFFFF0
 00548755    call       @ClassCreate
 0054875A    mov        dword ptr [ebp-4],ecx
 0054875D    mov        ebx,edx
 0054875F    mov        esi,eax
 00548761    mov        eax,dword ptr [ebp-4]
 00548764    call       @IntfAddRef
 00548769    mov        eax,dword ptr [ebp+0C]
 0054876C    call       @IntfAddRef
 00548771    xor        eax,eax
 00548773    push       ebp
 00548774    push       5487BC
 00548779    push       dword ptr fs:[eax]
 0054877C    mov        dword ptr fs:[eax],esp
 0054877F    mov        eax,dword ptr [ebp+8]
 00548782    push       eax
 00548783    mov        ecx,dword ptr [ebp+0C]
 00548786    xor        edx,edx
 00548788    mov        eax,esi
 0054878A    call       004DFC94
 0054878F    lea        eax,[esi+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548792    mov        edx,dword ptr [ebp-4]
 00548795    call       @IntfCopy
 0054879A    mov        byte ptr [esi+2D],0; TZOracleStatement.?f2D:byte
 0054879E    xor        eax,eax
 005487A0    pop        edx
 005487A1    pop        ecx
 005487A2    pop        ecx
 005487A3    mov        dword ptr fs:[eax],edx
 005487A6    push       5487C3
 005487AB    lea        eax,[ebp-4]
 005487AE    call       @IntfClear
 005487B3    lea        eax,[ebp+0C]
 005487B6    call       @IntfClear
 005487BB    ret
<005487BC    jmp        @HandleFinally
<005487C1    jmp        005487AB
 005487C3    mov        eax,esi
 005487C5    test       bl,bl
>005487C7    je         005487D8
 005487C9    call       @AfterConstruction
 005487CE    pop        dword ptr fs:[0]
 005487D5    add        esp,0C
 005487D8    mov        eax,esi
 005487DA    pop        esi
 005487DB    pop        ebx
 005487DC    pop        ecx
 005487DD    pop        ebp
 005487DE    ret        8
*}
//end;

//005487E4
destructor TZOracleStatement.Destroy;
begin
{*
 005487E4    push       ebp
 005487E5    mov        ebp,esp
 005487E7    push       ebx
 005487E8    push       esi
 005487E9    call       @BeforeDestruction
 005487EE    mov        ebx,edx
 005487F0    mov        esi,eax
 005487F2    mov        edx,ebx
 005487F4    and        dl,0FC
 005487F7    mov        eax,esi
 005487F9    call       TZAbstractStatement.Destroy
 005487FE    test       bl,bl
>00548800    jle        00548809
 00548802    mov        eax,esi
 00548804    call       @ClassDestroy
 00548809    pop        esi
 0054880A    pop        ebx
 0054880B    pop        ebp
 0054880C    ret
*}
end;

//00548810
//procedure sub_00548810(?:?; ?:?);
//begin
{*
 00548810    push       ebp
 00548811    mov        ebp,esp
 00548813    add        esp,0FFFFFFF0
 00548816    push       ebx
 00548817    push       esi
 00548818    push       edi
 00548819    xor        ebx,ebx
 0054881B    mov        dword ptr [ebp-10],ebx
 0054881E    mov        esi,ecx
 00548820    mov        ebx,edx
 00548822    mov        dword ptr [ebp-4],eax
 00548825    xor        eax,eax
 00548827    push       ebp
 00548828    push       5488ED
 0054882D    push       dword ptr fs:[eax]
 00548830    mov        dword ptr fs:[eax],esp
 00548833    lea        eax,[ebp-0C]
 00548836    push       eax
 00548837    lea        ecx,[ebp-8]
 0054883A    mov        eax,dword ptr [ebp-4]
 0054883D    mov        edx,dword ptr [eax+38]; TZOracleStatement.?f38:IZConnection
 00548840    mov        eax,dword ptr [ebp-4]
 00548843    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548846    call       00547F04
 0054884B    xor        eax,eax
 0054884D    push       ebp
 0054884E    push       548897
 00548853    push       dword ptr fs:[eax]
 00548856    mov        dword ptr fs:[eax],esp
 00548859    mov        eax,dword ptr [ebp-0C]
 0054885C    push       eax
 0054885D    mov        eax,dword ptr [ebp-4]
 00548860    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548863    mov        ecx,dword ptr [ebp-8]
 00548866    mov        edx,ebx
 00548868    call       0054804C
 0054886D    mov        eax,dword ptr [ebp-8]
 00548870    push       eax
 00548871    mov        eax,dword ptr [ebp-0C]
 00548874    push       eax
 00548875    push       esi
 00548876    mov        edx,dword ptr [ebp-4]
 00548879    test       edx,edx
>0054887B    je         00548880
 0054887D    sub        edx,0FFFFFFBC
 00548880    mov        eax,dword ptr [ebp-4]
 00548883    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548886    mov        ecx,ebx
 00548888    call       00547DCC
 0054888D    xor        eax,eax
 0054888F    pop        edx
 00548890    pop        ecx
 00548891    pop        ecx
 00548892    mov        dword ptr fs:[eax],edx
>00548895    jmp        005488B7
<00548897    jmp        @HandleAnyException
 0054889C    lea        ecx,[ebp-0C]
 0054889F    lea        edx,[ebp-8]
 005488A2    mov        eax,dword ptr [ebp-4]
 005488A5    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 005488A8    call       00547FD4
 005488AD    call       @RaiseAgain
 005488B2    call       @DoneExcept
 005488B7    push       ebx
 005488B8    lea        edx,[ebp-10]
 005488BB    mov        eax,dword ptr [ebp-4]
 005488BE    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 005488C1    mov        ecx,dword ptr [eax]
 005488C3    call       dword ptr [ecx+0C]
 005488C6    mov        ecx,dword ptr [ebp-10]
 005488C9    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 005488CE    mov        eax,dword ptr [eax]
 005488D0    mov        dl,3
 005488D2    mov        ebx,dword ptr [eax]
 005488D4    call       dword ptr [ebx+3C]
 005488D7    xor        eax,eax
 005488D9    pop        edx
 005488DA    pop        ecx
 005488DB    pop        ecx
 005488DC    mov        dword ptr fs:[eax],edx
 005488DF    push       5488F4
 005488E4    lea        eax,[ebp-10]
 005488E7    call       @LStrClr
 005488EC    ret
<005488ED    jmp        @HandleFinally
<005488F2    jmp        005488E4
 005488F4    pop        edi
 005488F5    pop        esi
 005488F6    pop        ebx
 005488F7    mov        esp,ebp
 005488F9    pop        ebp
 005488FA    ret
*}
//end;

//005488FC
//function sub_005488FC(?:?):?;
//begin
{*
 005488FC    push       ebp
 005488FD    mov        ebp,esp
 005488FF    add        esp,0FFFFFFE8
 00548902    push       ebx
 00548903    xor        ecx,ecx
 00548905    mov        dword ptr [ebp-18],ecx
 00548908    mov        dword ptr [ebp-8],edx
 0054890B    mov        dword ptr [ebp-4],eax
 0054890E    xor        eax,eax
 00548910    push       ebp
 00548911    push       548A00
 00548916    push       dword ptr fs:[eax]
 00548919    mov        dword ptr fs:[eax],esp
 0054891C    lea        eax,[ebp-14]
 0054891F    push       eax
 00548920    lea        ecx,[ebp-10]
 00548923    mov        eax,dword ptr [ebp-4]
 00548926    mov        edx,dword ptr [eax+38]; TZOracleStatement.?f38:IZConnection
 00548929    mov        eax,dword ptr [ebp-4]
 0054892C    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 0054892F    call       00547F04
 00548934    xor        eax,eax
 00548936    push       ebp
 00548937    push       5489A6
 0054893C    push       dword ptr fs:[eax]
 0054893F    mov        dword ptr fs:[eax],esp
 00548942    mov        eax,dword ptr [ebp-14]
 00548945    push       eax
 00548946    mov        eax,dword ptr [ebp-4]
 00548949    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 0054894C    mov        ecx,dword ptr [ebp-10]
 0054894F    mov        edx,dword ptr [ebp-8]
 00548952    call       0054804C
 00548957    mov        eax,dword ptr [ebp-10]
 0054895A    push       eax
 0054895B    mov        eax,dword ptr [ebp-14]
 0054895E    push       eax
 0054895F    mov        eax,dword ptr [ebp-4]
 00548962    mov        edx,dword ptr [eax+38]; TZOracleStatement.?f38:IZConnection
 00548965    mov        eax,dword ptr [ebp-4]
 00548968    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 0054896B    mov        ecx,dword ptr [ebp-8]
 0054896E    call       005480E0
 00548973    mov        eax,dword ptr [ebp-4]
 00548976    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548979    mov        ecx,dword ptr [ebp-14]
 0054897C    mov        edx,dword ptr [ebp-10]
 0054897F    call       005481B4
 00548984    mov        dword ptr [ebp-0C],eax
 00548987    xor        eax,eax
 00548989    pop        edx
 0054898A    pop        ecx
 0054898B    pop        ecx
 0054898C    mov        dword ptr fs:[eax],edx
 0054898F    push       5489AD
 00548994    lea        ecx,[ebp-14]
 00548997    lea        edx,[ebp-10]
 0054899A    mov        eax,dword ptr [ebp-4]
 0054899D    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 005489A0    call       00547FD4
 005489A5    ret
<005489A6    jmp        @HandleFinally
<005489AB    jmp        00548994
 005489AD    mov        eax,dword ptr [ebp-8]
 005489B0    push       eax
 005489B1    lea        edx,[ebp-18]
 005489B4    mov        eax,dword ptr [ebp-4]
 005489B7    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 005489BA    mov        ecx,dword ptr [eax]
 005489BC    call       dword ptr [ecx+0C]
 005489BF    mov        ecx,dword ptr [ebp-18]
 005489C2    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 005489C7    mov        eax,dword ptr [eax]
 005489C9    mov        dl,3
 005489CB    mov        ebx,dword ptr [eax]
 005489CD    call       dword ptr [ebx+3C]
 005489D0    mov        eax,dword ptr [ebp-4]
 005489D3    mov        eax,dword ptr [eax+38]; TZOracleStatement.?f38:IZConnection
 005489D6    mov        edx,dword ptr [eax]
 005489D8    call       dword ptr [edx+34]
 005489DB    test       al,al
>005489DD    je         005489EA
 005489DF    mov        eax,dword ptr [ebp-4]
 005489E2    mov        eax,dword ptr [eax+38]; TZOracleStatement.?f38:IZConnection
 005489E5    mov        edx,dword ptr [eax]
 005489E7    call       dword ptr [edx+38]
 005489EA    xor        eax,eax
 005489EC    pop        edx
 005489ED    pop        ecx
 005489EE    pop        ecx
 005489EF    mov        dword ptr fs:[eax],edx
 005489F2    push       548A07
 005489F7    lea        eax,[ebp-18]
 005489FA    call       @LStrClr
 005489FF    ret
<00548A00    jmp        @HandleFinally
<00548A05    jmp        005489F7
 00548A07    mov        eax,dword ptr [ebp-0C]
 00548A0A    pop        ebx
 00548A0B    mov        esp,ebp
 00548A0D    pop        ebp
 00548A0E    ret
*}
//end;

//00548A10
//function sub_00548A10(?:?):?;
//begin
{*
 00548A10    push       ebp
 00548A11    mov        ebp,esp
 00548A13    add        esp,0FFFFFFE0
 00548A16    push       ebx
 00548A17    xor        ecx,ecx
 00548A19    mov        dword ptr [ebp-20],ecx
 00548A1C    mov        dword ptr [ebp-1C],ecx
 00548A1F    mov        dword ptr [ebp-8],edx
 00548A22    mov        dword ptr [ebp-4],eax
 00548A25    xor        eax,eax
 00548A27    push       ebp
 00548A28    push       548B99
 00548A2D    push       dword ptr fs:[eax]
 00548A30    mov        dword ptr fs:[eax],esp
 00548A33    mov        byte ptr [ebp-9],0
 00548A37    lea        eax,[ebp-14]
 00548A3A    push       eax
 00548A3B    lea        ecx,[ebp-10]
 00548A3E    mov        eax,dword ptr [ebp-4]
 00548A41    mov        edx,dword ptr [eax+38]; TZOracleStatement.?f38:IZConnection
 00548A44    mov        eax,dword ptr [ebp-4]
 00548A47    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548A4A    call       00547F04
 00548A4F    xor        eax,eax
 00548A51    push       ebp
 00548A52    push       548B31
 00548A57    push       dword ptr fs:[eax]
 00548A5A    mov        dword ptr fs:[eax],esp
 00548A5D    mov        eax,dword ptr [ebp-14]
 00548A60    push       eax
 00548A61    mov        eax,dword ptr [ebp-4]
 00548A64    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548A67    mov        ecx,dword ptr [ebp-10]
 00548A6A    mov        edx,dword ptr [ebp-8]
 00548A6D    call       0054804C
 00548A72    mov        word ptr [ebp-16],0
 00548A78    lea        eax,[ebp-16]
 00548A7B    push       eax
 00548A7C    push       0
 00548A7E    push       18
 00548A80    mov        eax,dword ptr [ebp-14]
 00548A83    push       eax
 00548A84    mov        eax,dword ptr [ebp-4]
 00548A87    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548A8A    mov        ecx,4
 00548A8F    mov        edx,dword ptr [ebp-10]
 00548A92    mov        ebx,dword ptr [eax]
 00548A94    call       dword ptr [ebx+50]
 00548A97    cmp        word ptr [ebp-16],1
>00548A9C    jne        00548AD9
 00548A9E    mov        eax,dword ptr [ebp-10]
 00548AA1    push       eax
 00548AA2    mov        eax,dword ptr [ebp-14]
 00548AA5    push       eax
 00548AA6    lea        eax,[ebp-1C]
 00548AA9    push       eax
 00548AAA    mov        edx,dword ptr [ebp-4]
 00548AAD    test       edx,edx
>00548AAF    je         00548AB4
 00548AB1    sub        edx,0FFFFFFBC
 00548AB4    mov        eax,dword ptr [ebp-4]
 00548AB7    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548ABA    mov        ecx,dword ptr [ebp-8]
 00548ABD    call       00547DCC
 00548AC2    mov        edx,dword ptr [ebp-1C]
 00548AC5    mov        eax,dword ptr [ebp-4]
 00548AC8    mov        ecx,dword ptr [eax]
 00548ACA    call       dword ptr [ecx]; TZOracleStatement.sub_004DFE2C
 00548ACC    mov        eax,dword ptr [ebp-4]
 00548ACF    cmp        dword ptr [eax+20],0; TZOracleStatement.?f20:IZResultSet
 00548AD3    setne      byte ptr [ebp-9]
>00548AD7    jmp        00548B0C
 00548AD9    mov        eax,dword ptr [ebp-10]
 00548ADC    push       eax
 00548ADD    mov        eax,dword ptr [ebp-14]
 00548AE0    push       eax
 00548AE1    mov        eax,dword ptr [ebp-4]
 00548AE4    mov        edx,dword ptr [eax+38]; TZOracleStatement.?f38:IZConnection
 00548AE7    mov        eax,dword ptr [ebp-4]
 00548AEA    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548AED    mov        ecx,dword ptr [ebp-8]
 00548AF0    call       005480E0
 00548AF5    mov        eax,dword ptr [ebp-4]
 00548AF8    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548AFB    mov        ecx,dword ptr [ebp-14]
 00548AFE    mov        edx,dword ptr [ebp-10]
 00548B01    call       005481B4
 00548B06    mov        edx,dword ptr [ebp-4]
 00548B09    mov        dword ptr [edx+1C],eax; TZOracleStatement.?f1C:Integer
 00548B0C    xor        eax,eax
 00548B0E    pop        edx
 00548B0F    pop        ecx
 00548B10    pop        ecx
 00548B11    mov        dword ptr fs:[eax],edx
 00548B14    push       548B38
 00548B19    cmp        byte ptr [ebp-9],0
>00548B1D    jne        00548B30
 00548B1F    lea        ecx,[ebp-14]
 00548B22    lea        edx,[ebp-10]
 00548B25    mov        eax,dword ptr [ebp-4]
 00548B28    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548B2B    call       00547FD4
 00548B30    ret
<00548B31    jmp        @HandleFinally
<00548B36    jmp        00548B19
 00548B38    mov        eax,dword ptr [ebp-8]
 00548B3B    push       eax
 00548B3C    lea        edx,[ebp-20]
 00548B3F    mov        eax,dword ptr [ebp-4]
 00548B42    mov        eax,dword ptr [eax+48]; TZOracleStatement.?f48:IZOraclePlainDriver
 00548B45    mov        ecx,dword ptr [eax]
 00548B47    call       dword ptr [ecx+0C]
 00548B4A    mov        ecx,dword ptr [ebp-20]
 00548B4D    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00548B52    mov        eax,dword ptr [eax]
 00548B54    mov        dl,3
 00548B56    mov        ebx,dword ptr [eax]
 00548B58    call       dword ptr [ebx+3C]
 00548B5B    cmp        byte ptr [ebp-9],0
>00548B5F    jne        00548B7B
 00548B61    mov        eax,dword ptr [ebp-4]
 00548B64    mov        eax,dword ptr [eax+38]; TZOracleStatement.?f38:IZConnection
 00548B67    mov        edx,dword ptr [eax]
 00548B69    call       dword ptr [edx+34]
 00548B6C    test       al,al
>00548B6E    je         00548B7B
 00548B70    mov        eax,dword ptr [ebp-4]
 00548B73    mov        eax,dword ptr [eax+38]; TZOracleStatement.?f38:IZConnection
 00548B76    mov        edx,dword ptr [eax]
 00548B78    call       dword ptr [edx+38]
 00548B7B    xor        eax,eax
 00548B7D    pop        edx
 00548B7E    pop        ecx
 00548B7F    pop        ecx
 00548B80    mov        dword ptr fs:[eax],edx
 00548B83    push       548BA0
 00548B88    lea        eax,[ebp-20]
 00548B8B    call       @LStrClr
 00548B90    lea        eax,[ebp-1C]
 00548B93    call       @IntfClear
 00548B98    ret
<00548B99    jmp        @HandleFinally
<00548B9E    jmp        00548B88
 00548BA0    mov        al,byte ptr [ebp-9]
 00548BA3    pop        ebx
 00548BA4    mov        esp,ebp
 00548BA6    pop        ebp
 00548BA7    ret
*}
//end;

//00548BAC
//constructor TZOraclePreparedStatement.Create(?:TZOraclePreparedStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
//begin
{*
 00548BAC    push       ebp
 00548BAD    mov        ebp,esp
 00548BAF    add        esp,0FFFFFFF8
 00548BB2    push       ebx
 00548BB3    push       esi
 00548BB4    push       edi
 00548BB5    xor        ebx,ebx
 00548BB7    mov        dword ptr [ebp-8],ebx
 00548BBA    test       dl,dl
>00548BBC    je         00548BC6
 00548BBE    add        esp,0FFFFFFF0
 00548BC1    call       @ClassCreate
 00548BC6    mov        dword ptr [ebp-4],ecx
 00548BC9    mov        ebx,edx
 00548BCB    mov        edi,eax
 00548BCD    mov        esi,dword ptr [ebp+0C]
 00548BD0    mov        eax,dword ptr [ebp-4]
 00548BD3    call       @IntfAddRef
 00548BD8    mov        eax,dword ptr [ebp+10]
 00548BDB    call       @IntfAddRef
 00548BE0    xor        eax,eax
 00548BE2    push       ebp
 00548BE3    push       548C4F
 00548BE8    push       dword ptr fs:[eax]
 00548BEB    mov        dword ptr fs:[eax],esp
 00548BEE    push       esi
 00548BEF    mov        eax,dword ptr [ebp+8]
 00548BF2    push       eax
 00548BF3    mov        ecx,dword ptr [ebp+10]
 00548BF6    xor        edx,edx
 00548BF8    mov        eax,edi
 00548BFA    call       004E0088
 00548BFF    lea        eax,[edi+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00548C02    mov        edx,dword ptr [ebp-4]
 00548C05    call       @IntfCopy
 00548C0A    mov        byte ptr [edi+2D],0; TZOraclePreparedStatement.?f2D:byte
 00548C0E    lea        ecx,[ebp-8]
 00548C11    mov        edx,esi
 00548C13    mov        eax,edi
 00548C15    call       00548DD8
 00548C1A    mov        edx,dword ptr [ebp-8]
 00548C1D    lea        eax,[edi+70]; TZOraclePreparedStatement.?f70:String
 00548C20    call       @LStrAsg
 00548C25    mov        byte ptr [edi+60],0; TZOraclePreparedStatement.?f60:byte
 00548C29    xor        eax,eax
 00548C2B    pop        edx
 00548C2C    pop        ecx
 00548C2D    pop        ecx
 00548C2E    mov        dword ptr fs:[eax],edx
 00548C31    push       548C56
 00548C36    lea        eax,[ebp-8]
 00548C39    call       @LStrClr
 00548C3E    lea        eax,[ebp-4]
 00548C41    call       @IntfClear
 00548C46    lea        eax,[ebp+10]
 00548C49    call       @IntfClear
 00548C4E    ret
<00548C4F    jmp        @HandleFinally
<00548C54    jmp        00548C36
 00548C56    mov        eax,edi
 00548C58    test       bl,bl
>00548C5A    je         00548C6B
 00548C5C    call       @AfterConstruction
 00548C61    pop        dword ptr fs:[0]
 00548C68    add        esp,0C
 00548C6B    mov        eax,edi
 00548C6D    pop        edi
 00548C6E    pop        esi
 00548C6F    pop        ebx
 00548C70    pop        ecx
 00548C71    pop        ecx
 00548C72    pop        ebp
 00548C73    ret        0C
*}
//end;

//00548C78
destructor TZOraclePreparedStatement.Destroy;
begin
{*
 00548C78    push       ebp
 00548C79    mov        ebp,esp
 00548C7B    push       ebx
 00548C7C    push       esi
 00548C7D    call       @BeforeDestruction
 00548C82    mov        ebx,edx
 00548C84    mov        esi,eax
 00548C86    mov        edx,ebx
 00548C88    and        dl,0FC
 00548C8B    mov        eax,esi
 00548C8D    call       TZAbstractPreparedStatement.Destroy
 00548C92    test       bl,bl
>00548C94    jle        00548C9D
 00548C96    mov        eax,esi
 00548C98    call       @ClassDestroy
 00548C9D    pop        esi
 00548C9E    pop        ebx
 00548C9F    pop        ebp
 00548CA0    ret
*}
end;

//00548CA4
//procedure sub_00548CA4(?:TZOraclePreparedStatement; ?:?);
//begin
{*
 00548CA4    push       ebp
 00548CA5    mov        ebp,esp
 00548CA7    push       ecx
 00548CA8    push       ebx
 00548CA9    mov        dword ptr [ebp-4],edx
 00548CAC    mov        ebx,eax
 00548CAE    mov        eax,dword ptr [ebp-4]
 00548CB1    call       @IntfAddRef
 00548CB6    xor        eax,eax
 00548CB8    push       ebp
 00548CB9    push       548CF3
 00548CBE    push       dword ptr fs:[eax]
 00548CC1    mov        dword ptr fs:[eax],esp
 00548CC4    cmp        dword ptr [ebx+78],0; TZOraclePreparedStatement.?f78:IZStatement
>00548CC8    je         00548CD2
 00548CCA    mov        eax,dword ptr [ebx+78]; TZOraclePreparedStatement.?f78:IZStatement
 00548CCD    mov        edx,dword ptr [eax]
 00548CCF    call       dword ptr [edx+14]
 00548CD2    lea        eax,[ebx+78]; TZOraclePreparedStatement.?f78:IZStatement
 00548CD5    mov        edx,dword ptr [ebp-4]
 00548CD8    call       @IntfCopy
 00548CDD    xor        eax,eax
 00548CDF    pop        edx
 00548CE0    pop        ecx
 00548CE1    pop        ecx
 00548CE2    mov        dword ptr fs:[eax],edx
 00548CE5    push       548CFA
 00548CEA    lea        eax,[ebp-4]
 00548CED    call       @IntfClear
 00548CF2    ret
<00548CF3    jmp        @HandleFinally
<00548CF8    jmp        00548CEA
 00548CFA    pop        ebx
 00548CFB    pop        ecx
 00548CFC    pop        ebp
 00548CFD    ret
*}
//end;

//00548D00
//procedure sub_00548D00(?:TZOraclePreparedStatement; ?:?);
//begin
{*
 00548D00    push       ebp
 00548D01    mov        ebp,esp
 00548D03    push       ebx
 00548D04    push       esi
 00548D05    mov        esi,edx
 00548D07    mov        ebx,eax
 00548D09    cmp        dword ptr [ebx+74],0; TZOraclePreparedStatement.?f74:IZStatement
>00548D0D    jne        00548DC8
 00548D13    mov        eax,dword ptr [ebx+38]; TZOraclePreparedStatement.?f38:IZConnection
 00548D16    push       eax
 00548D17    mov        eax,dword ptr [ebx+3C]; TZOraclePreparedStatement.?f3C:dword
 00548D1A    push       eax
 00548D1B    mov        ecx,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00548D1E    mov        dl,1
 00548D20    mov        eax,[005484E0]; TZOracleStatement
 00548D25    call       TZOracleStatement.Create; TZOracleStatement.Create
 00548D2A    mov        edx,eax
 00548D2C    test       edx,edx
>00548D2E    je         00548D33
 00548D30    sub        edx,0FFFFFFBC
 00548D33    lea        eax,[ebx+74]; TZOraclePreparedStatement.?f74:IZStatement
 00548D36    call       @IntfCopy
 00548D3B    mov        eax,ebx
 00548D3D    mov        edx,dword ptr [eax]
 00548D3F    call       dword ptr [edx+10]; TZOraclePreparedStatement.sub_004DFED8
 00548D42    mov        edx,eax
 00548D44    mov        eax,dword ptr [ebx+74]; TZOraclePreparedStatement.?f74:IZStatement
 00548D47    mov        ecx,dword ptr [eax]
 00548D49    call       dword ptr [ecx+1C]
 00548D4C    mov        eax,ebx
 00548D4E    mov        edx,dword ptr [eax]
 00548D50    call       dword ptr [edx+18]; TZOraclePreparedStatement.sub_004DFEE0
 00548D53    mov        edx,eax
 00548D55    mov        eax,dword ptr [ebx+74]; TZOraclePreparedStatement.?f74:IZStatement
 00548D58    mov        ecx,dword ptr [eax]
 00548D5A    call       dword ptr [ecx+24]
 00548D5D    mov        dl,byte ptr [ebx+14]; TZOraclePreparedStatement.?f14:byte
 00548D60    mov        eax,dword ptr [ebx+74]; TZOraclePreparedStatement.?f74:IZStatement
 00548D63    mov        ecx,dword ptr [eax]
 00548D65    call       dword ptr [ecx+28]
 00548D68    mov        eax,ebx
 00548D6A    mov        edx,dword ptr [eax]
 00548D6C    call       dword ptr [edx+24]; TZOraclePreparedStatement.sub_004DFEEC
 00548D6F    mov        edx,eax
 00548D71    mov        eax,dword ptr [ebx+74]; TZOraclePreparedStatement.?f74:IZStatement
 00548D74    mov        ecx,dword ptr [eax]
 00548D76    call       dword ptr [ecx+30]
 00548D79    mov        edx,dword ptr [ebx+30]; TZOraclePreparedStatement.?f30:String
 00548D7C    mov        eax,dword ptr [ebx+74]; TZOraclePreparedStatement.?f74:IZStatement
 00548D7F    mov        ecx,dword ptr [eax]
 00548D81    call       dword ptr [ecx+38]
 00548D84    mov        eax,ebx
 00548D86    mov        edx,dword ptr [eax]
 00548D88    call       dword ptr [edx+48]; TZOraclePreparedStatement.sub_004DFF60
 00548D8B    mov        edx,eax
 00548D8D    mov        eax,dword ptr [ebx+74]; TZOraclePreparedStatement.?f74:IZStatement
 00548D90    mov        ecx,dword ptr [eax]
 00548D92    call       dword ptr [ecx+4C]
 00548D95    mov        eax,ebx
 00548D97    mov        edx,dword ptr [eax]
 00548D99    call       dword ptr [edx+50]; TZOraclePreparedStatement.sub_004DFF68
 00548D9C    mov        edx,eax
 00548D9E    mov        eax,dword ptr [ebx+74]; TZOraclePreparedStatement.?f74:IZStatement
 00548DA1    mov        ecx,dword ptr [eax]
 00548DA3    call       dword ptr [ecx+54]
 00548DA6    mov        eax,ebx
 00548DA8    mov        edx,dword ptr [eax]
 00548DAA    call       dword ptr [edx+58]; TZOraclePreparedStatement.sub_004DFF74
 00548DAD    mov        edx,eax
 00548DAF    mov        eax,dword ptr [ebx+74]; TZOraclePreparedStatement.?f74:IZStatement
 00548DB2    mov        ecx,dword ptr [eax]
 00548DB4    call       dword ptr [ecx+5C]
 00548DB7    mov        eax,ebx
 00548DB9    mov        edx,dword ptr [eax]
 00548DBB    call       dword ptr [edx+60]; TZOraclePreparedStatement.sub_004DFF7C
 00548DBE    mov        edx,eax
 00548DC0    mov        eax,dword ptr [ebx+74]; TZOraclePreparedStatement.?f74:IZStatement
 00548DC3    mov        ecx,dword ptr [eax]
 00548DC5    call       dword ptr [ecx+64]
 00548DC8    mov        eax,esi
 00548DCA    mov        edx,dword ptr [ebx+74]; TZOraclePreparedStatement.?f74:IZStatement
 00548DCD    call       @IntfCopy
 00548DD2    pop        esi
 00548DD3    pop        ebx
 00548DD4    pop        ebp
 00548DD5    ret
*}
//end;

//00548DD8
//procedure sub_00548DD8(?:TZOraclePreparedStatement; ?:?; ?:AnsiString);
//begin
{*
 00548DD8    push       ebp
 00548DD9    mov        ebp,esp
 00548DDB    push       ecx
 00548DDC    mov        ecx,4
 00548DE1    push       0
 00548DE3    push       0
 00548DE5    dec        ecx
<00548DE6    jne        00548DE1
 00548DE8    xchg       ecx,dword ptr [ebp-4]
 00548DEB    push       ebx
 00548DEC    push       esi
 00548DED    push       edi
 00548DEE    mov        ebx,ecx
 00548DF0    mov        dword ptr [ebp-4],edx
 00548DF3    mov        esi,eax
 00548DF5    mov        eax,dword ptr [ebp-4]
 00548DF8    call       @LStrAddRef
 00548DFD    xor        eax,eax
 00548DFF    push       ebp
 00548E00    push       548F41
 00548E05    push       dword ptr fs:[eax]
 00548E08    mov        dword ptr fs:[eax],esp
 00548E0B    mov        edx,dword ptr [ebp-4]
 00548E0E    mov        eax,548F58; '?'
 00548E13    call       @LStrPos
 00548E18    test       eax,eax
>00548E1A    jle        00548F04
 00548E20    lea        edx,[ebp-18]
 00548E23    mov        eax,dword ptr [esi+38]; TZOraclePreparedStatement.?f38:IZConnection
 00548E26    mov        ecx,dword ptr [eax]
 00548E28    call       dword ptr [ecx+60]
 00548E2B    mov        eax,dword ptr [ebp-18]
 00548E2E    lea        edx,[ebp-14]
 00548E31    mov        ecx,dword ptr [eax]
 00548E33    call       dword ptr [ecx+2C]
 00548E36    mov        eax,dword ptr [ebp-14]
 00548E39    mov        cl,byte ptr ds:[548F5C]; 0x10
 00548E3F    mov        edx,dword ptr [ebp-4]
 00548E42    mov        esi,dword ptr [eax]
 00548E44    call       dword ptr [esi+0C]
 00548E47    mov        dword ptr [ebp-0C],eax
 00548E4A    xor        eax,eax
 00548E4C    push       ebp
 00548E4D    push       548EFD
 00548E52    push       dword ptr fs:[eax]
 00548E55    mov        dword ptr fs:[eax],esp
 00548E58    mov        eax,ebx
 00548E5A    call       @LStrClr
 00548E5F    xor        eax,eax
 00548E61    mov        dword ptr [ebp-8],eax
 00548E64    mov        eax,dword ptr [ebp-0C]
 00548E67    mov        edx,dword ptr [eax]
 00548E69    call       dword ptr [edx+14]
 00548E6C    sub        eax,1
>00548E6F    jno        00548E76
 00548E71    call       @IntOver
 00548E76    test       eax,eax
>00548E78    jl         00548EE7
 00548E7A    inc        eax
 00548E7B    mov        dword ptr [ebp-10],eax
 00548E7E    xor        esi,esi
 00548E80    lea        ecx,[ebp-1C]
 00548E83    mov        edx,esi
 00548E85    mov        eax,dword ptr [ebp-0C]
 00548E88    mov        edi,dword ptr [eax]
 00548E8A    call       dword ptr [edi+0C]
 00548E8D    mov        eax,dword ptr [ebp-1C]
 00548E90    mov        edx,548F58; '?'
 00548E95    call       @LStrCmp
>00548E9A    jne        00548ECA
 00548E9C    add        dword ptr [ebp-8],1
>00548EA0    jno        00548EA7
 00548EA2    call       @IntOver
 00548EA7    push       dword ptr [ebx]
 00548EA9    push       548F68; ':P'
 00548EAE    lea        edx,[ebp-20]
 00548EB1    mov        eax,dword ptr [ebp-8]
 00548EB4    call       IntToStr
 00548EB9    push       dword ptr [ebp-20]
 00548EBC    mov        eax,ebx
 00548EBE    mov        edx,3
 00548EC3    call       @LStrCatN
>00548EC8    jmp        00548EE1
 00548ECA    lea        ecx,[ebp-24]
 00548ECD    mov        edx,esi
 00548ECF    mov        eax,dword ptr [ebp-0C]
 00548ED2    mov        edi,dword ptr [eax]
 00548ED4    call       dword ptr [edi+0C]
 00548ED7    mov        edx,dword ptr [ebp-24]
 00548EDA    mov        eax,ebx
 00548EDC    call       @LStrCat
 00548EE1    inc        esi
 00548EE2    dec        dword ptr [ebp-10]
<00548EE5    jne        00548E80
 00548EE7    xor        eax,eax
 00548EE9    pop        edx
 00548EEA    pop        ecx
 00548EEB    pop        ecx
 00548EEC    mov        dword ptr fs:[eax],edx
 00548EEF    push       548F0E
 00548EF4    mov        eax,dword ptr [ebp-0C]
 00548EF7    call       TObject.Free
 00548EFC    ret
<00548EFD    jmp        @HandleFinally
<00548F02    jmp        00548EF4
 00548F04    mov        eax,ebx
 00548F06    mov        edx,dword ptr [ebp-4]
 00548F09    call       @LStrAsg
 00548F0E    xor        eax,eax
 00548F10    pop        edx
 00548F11    pop        ecx
 00548F12    pop        ecx
 00548F13    mov        dword ptr fs:[eax],edx
 00548F16    push       548F48
 00548F1B    lea        eax,[ebp-24]
 00548F1E    mov        edx,3
 00548F23    call       @LStrArrayClr
 00548F28    lea        eax,[ebp-18]
 00548F2B    call       @IntfClear
 00548F30    lea        eax,[ebp-14]
 00548F33    call       @IntfClear
 00548F38    lea        eax,[ebp-4]
 00548F3B    call       @LStrClr
 00548F40    ret
<00548F41    jmp        @HandleFinally
<00548F46    jmp        00548F1B
 00548F48    pop        edi
 00548F49    pop        esi
 00548F4A    pop        ebx
 00548F4B    mov        esp,ebp
 00548F4D    pop        ebp
 00548F4E    ret
*}
//end;

//00548F6C
procedure sub_00548F6C;
begin
{*
 00548F6C    push       ebp
 00548F6D    mov        ebp,esp
 00548F6F    push       ebx
 00548F70    mov        ebx,eax
 00548F72    mov        eax,ebx
 00548F74    call       004DFEB4
 00548F79    cmp        dword ptr [ebx+78],0; TZOraclePreparedStatement.?f78:IZStatement
>00548F7D    je         00548F8F
 00548F7F    mov        eax,dword ptr [ebx+78]; TZOraclePreparedStatement.?f78:IZStatement
 00548F82    mov        edx,dword ptr [eax]
 00548F84    call       dword ptr [edx+14]
 00548F87    lea        eax,[ebx+78]; TZOraclePreparedStatement.?f78:IZStatement
 00548F8A    call       @IntfClear
 00548F8F    lea        ecx,[ebx+68]; TZOraclePreparedStatement.?f68:dword
 00548F92    lea        edx,[ebx+64]; TZOraclePreparedStatement.?f64:dword
 00548F95    mov        eax,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00548F98    call       00547FD4
 00548F9D    lea        edx,[ebx+7C]; TZOraclePreparedStatement.?f7C:dword
 00548FA0    mov        eax,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00548FA3    call       00547064
 00548FA8    pop        ebx
 00548FA9    pop        ebp
 00548FAA    ret
*}
end;

//00548FAC
//function sub_00548FAC(?:?):?;
//begin
{*
 00548FAC    push       ebp
 00548FAD    mov        ebp,esp
 00548FAF    push       0
 00548FB1    push       0
 00548FB3    push       ebx
 00548FB4    push       esi
 00548FB5    mov        ebx,edx
 00548FB7    mov        esi,eax
 00548FB9    xor        eax,eax
 00548FBB    push       ebp
 00548FBC    push       54902A
 00548FC1    push       dword ptr fs:[eax]
 00548FC4    mov        dword ptr fs:[eax],esp
 00548FC7    lea        edx,[ebp-4]
 00548FCA    mov        eax,esi
 00548FCC    call       00548D00
 00548FD1    mov        edx,dword ptr [ebp-4]
 00548FD4    mov        eax,esi
 00548FD6    call       00548CA4
 00548FDB    mov        edx,ebx
 00548FDD    mov        eax,dword ptr [esi+78]; TZOraclePreparedStatement.?f78:IZStatement
 00548FE0    mov        ecx,dword ptr [eax]
 00548FE2    call       dword ptr [ecx+3C]
 00548FE5    mov        ebx,eax
 00548FE7    test       bl,bl
>00548FE9    je         00549001
 00548FEB    lea        edx,[ebp-8]
 00548FEE    mov        eax,dword ptr [esi+78]; TZOraclePreparedStatement.?f78:IZStatement
 00548FF1    mov        ecx,dword ptr [eax]
 00548FF3    call       dword ptr [ecx+40]
 00548FF6    mov        edx,dword ptr [ebp-8]
 00548FF9    mov        eax,esi
 00548FFB    mov        ecx,dword ptr [eax]
 00548FFD    call       dword ptr [ecx]; TZOraclePreparedStatement.sub_004DFE2C
>00548FFF    jmp        0054900C
 00549001    mov        eax,dword ptr [esi+78]; TZOraclePreparedStatement.?f78:IZStatement
 00549004    mov        edx,dword ptr [eax]
 00549006    call       dword ptr [edx+44]
 00549009    mov        dword ptr [esi+1C],eax; TZOraclePreparedStatement.?f1C:Integer
 0054900C    xor        eax,eax
 0054900E    pop        edx
 0054900F    pop        ecx
 00549010    pop        ecx
 00549011    mov        dword ptr fs:[eax],edx
 00549014    push       549031
 00549019    lea        eax,[ebp-8]
 0054901C    call       @IntfClear
 00549021    lea        eax,[ebp-4]
 00549024    call       @IntfClear
 00549029    ret
<0054902A    jmp        @HandleFinally
<0054902F    jmp        00549019
 00549031    mov        eax,ebx
 00549033    pop        esi
 00549034    pop        ebx
 00549035    pop        ecx
 00549036    pop        ecx
 00549037    pop        ebp
 00549038    ret
*}
//end;

//0054903C
//procedure sub_0054903C(?:?; ?:?);
//begin
{*
 0054903C    push       ebp
 0054903D    mov        ebp,esp
 0054903F    add        esp,0FFFFFFF8
 00549042    push       ebx
 00549043    push       esi
 00549044    xor        ebx,ebx
 00549046    mov        dword ptr [ebp-8],ebx
 00549049    mov        dword ptr [ebp-4],ecx
 0054904C    mov        esi,edx
 0054904E    mov        ebx,eax
 00549050    xor        eax,eax
 00549052    push       ebp
 00549053    push       54908B
 00549058    push       dword ptr fs:[eax]
 0054905B    mov        dword ptr fs:[eax],esp
 0054905E    lea        edx,[ebp-8]
 00549061    mov        eax,ebx
 00549063    call       00548D00
 00549068    mov        eax,dword ptr [ebp-8]
 0054906B    mov        ecx,dword ptr [ebp-4]
 0054906E    mov        edx,esi
 00549070    mov        ebx,dword ptr [eax]
 00549072    call       dword ptr [ebx+0C]
 00549075    xor        eax,eax
 00549077    pop        edx
 00549078    pop        ecx
 00549079    pop        ecx
 0054907A    mov        dword ptr fs:[eax],edx
 0054907D    push       549092
 00549082    lea        eax,[ebp-8]
 00549085    call       @IntfClear
 0054908A    ret
<0054908B    jmp        @HandleFinally
<00549090    jmp        00549082
 00549092    pop        esi
 00549093    pop        ebx
 00549094    pop        ecx
 00549095    pop        ecx
 00549096    pop        ebp
 00549097    ret
*}
//end;

//00549098
//function sub_00549098(?:?):?;
//begin
{*
 00549098    push       ebp
 00549099    mov        ebp,esp
 0054909B    push       0
 0054909D    push       ebx
 0054909E    push       esi
 0054909F    mov        esi,edx
 005490A1    mov        ebx,eax
 005490A3    xor        eax,eax
 005490A5    push       ebp
 005490A6    push       5490E0
 005490AB    push       dword ptr fs:[eax]
 005490AE    mov        dword ptr fs:[eax],esp
 005490B1    lea        edx,[ebp-4]
 005490B4    mov        eax,ebx
 005490B6    call       00548D00
 005490BB    mov        eax,dword ptr [ebp-4]
 005490BE    mov        edx,esi
 005490C0    mov        ecx,dword ptr [eax]
 005490C2    call       dword ptr [ecx+10]
 005490C5    mov        esi,eax
 005490C7    mov        dword ptr [ebx+1C],esi; TZOraclePreparedStatement.?f1C:Integer
 005490CA    xor        eax,eax
 005490CC    pop        edx
 005490CD    pop        ecx
 005490CE    pop        ecx
 005490CF    mov        dword ptr fs:[eax],edx
 005490D2    push       5490E7
 005490D7    lea        eax,[ebp-4]
 005490DA    call       @IntfClear
 005490DF    ret
<005490E0    jmp        @HandleFinally
<005490E5    jmp        005490D7
 005490E7    mov        eax,esi
 005490E9    pop        esi
 005490EA    pop        ebx
 005490EB    pop        ecx
 005490EC    pop        ebp
 005490ED    ret
*}
//end;

//005490F0
procedure sub_005490F0;
begin
{*
 005490F0    push       ebp
 005490F1    mov        ebp,esp
 005490F3    add        esp,0FFFFFFF4
 005490F6    push       ebx
 005490F7    push       esi
 005490F8    push       edi
 005490F9    xor        edx,edx
 005490FB    mov        dword ptr [ebp-0C],edx
 005490FE    mov        ebx,eax
 00549100    xor        eax,eax
 00549102    push       ebp
 00549103    push       5492A8
 00549108    push       dword ptr fs:[eax]
 0054910B    mov        dword ptr fs:[eax],esp
 0054910E    cmp        byte ptr [ebx+60],0; TZOraclePreparedStatement.?f60:byte
>00549112    jne        00549292
 00549118    cmp        dword ptr [ebx+64],0; TZOraclePreparedStatement.?f64:dword
>0054911C    je         00549124
 0054911E    cmp        dword ptr [ebx+68],0; TZOraclePreparedStatement.?f68:dword
>00549122    jne        00549136
 00549124    lea        eax,[ebx+68]; TZOraclePreparedStatement.?f68:dword
 00549127    push       eax
 00549128    lea        ecx,[ebx+64]; TZOraclePreparedStatement.?f64:dword
 0054912B    mov        edx,dword ptr [ebx+38]; TZOraclePreparedStatement.?f38:IZConnection
 0054912E    mov        eax,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549131    call       00547F04
 00549136    mov        eax,dword ptr [ebx+68]; TZOraclePreparedStatement.?f68:dword
 00549139    push       eax
 0054913A    mov        ecx,dword ptr [ebx+64]; TZOraclePreparedStatement.?f64:dword
 0054913D    mov        edx,dword ptr [ebx+70]; TZOraclePreparedStatement.?f70:String
 00549140    mov        eax,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549143    call       0054804C
 00549148    lea        eax,[ebx+7C]; TZOraclePreparedStatement.?f7C:dword
 0054914B    mov        edx,dword ptr [ebx+58]; TZOraclePreparedStatement.?f58:dword
 0054914E    call       00547020
 00549153    mov        eax,dword ptr [ebx+7C]; TZOraclePreparedStatement.?f7C:dword
 00549156    mov        edx,dword ptr [ebx+58]; TZOraclePreparedStatement.?f58:dword
 00549159    mov        dword ptr [eax+4],edx
 0054915C    mov        eax,dword ptr [ebx+58]; TZOraclePreparedStatement.?f58:dword
 0054915F    sub        eax,1
>00549162    jno        00549169
 00549164    call       @IntOver
 00549169    test       eax,eax
>0054916B    jl         0054926E
 00549171    inc        eax
 00549172    mov        dword ptr [ebp-8],eax
 00549175    xor        esi,esi
 00549177    mov        edi,esi
 00549179    add        edi,1
>0054917C    jno        00549183
 0054917E    call       @IntOver
 00549183    dec        edi
 00549184    cmp        edi,3FF
>0054918A    jbe        00549191
 0054918C    call       @BoundErr
 00549191    inc        edi
 00549192    imul       eax,edi,2D
>00549195    jno        0054919C
 00549197    call       @IntOver
 0054919C    mov        edx,dword ptr [ebx+7C]; TZOraclePreparedStatement.?f7C:dword
 0054919F    lea        eax,[edx+eax-25]
 005491A3    mov        dword ptr [ebp-4],eax
 005491A6    mov        eax,dword ptr [ebp-4]
 005491A9    xor        edx,edx
 005491AB    mov        dword ptr [eax],edx
 005491AD    mov        eax,dword ptr [ebx+50]; TZOraclePreparedStatement.?f50:TZSQLTypeArray
 005491B0    test       eax,eax
>005491B2    je         005491B9
 005491B4    cmp        esi,dword ptr [eax-4]
>005491B7    jb         005491BE
 005491B9    call       @BoundErr
 005491BE    cmp        byte ptr [eax+esi],11
>005491C2    jne        005491CA
 005491C4    mov        ax,71
>005491C8    jmp        005491EB
 005491CA    mov        eax,dword ptr [ebx+50]; TZOraclePreparedStatement.?f50:TZSQLTypeArray
 005491CD    test       eax,eax
>005491CF    je         005491D6
 005491D1    cmp        esi,dword ptr [eax-4]
>005491D4    jb         005491DB
 005491D6    call       @BoundErr
 005491DB    cmp        byte ptr [eax+esi],0F
>005491DF    jne        005491E7
 005491E1    mov        ax,70
>005491E5    jmp        005491EB
 005491E7    mov        ax,5
 005491EB    mov        edx,dword ptr [ebx+50]; TZOraclePreparedStatement.?f50:TZSQLTypeArray
 005491EE    test       edx,edx
>005491F0    je         005491F7
 005491F2    cmp        esi,dword ptr [edx-4]
>005491F5    jb         005491FC
 005491F7    call       @BoundErr
 005491FC    mov        dl,byte ptr [edx+esi]
 005491FF    push       edx
 00549200    push       eax
 00549201    push       400
 00549206    lea        ecx,[ebp-4]
 00549209    mov        edx,dword ptr [ebx+38]; TZOraclePreparedStatement.?f38:IZConnection
 0054920C    mov        eax,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 0054920F    call       0054715C
 00549214    mov        eax,dword ptr [ebx+68]; TZOraclePreparedStatement.?f68:dword
 00549217    push       eax
 00549218    push       edi
 00549219    mov        eax,dword ptr [ebp-4]
 0054921C    mov        eax,dword ptr [eax+0C]
 0054921F    push       eax
 00549220    mov        eax,dword ptr [ebp-4]
 00549223    mov        eax,dword ptr [eax+18]
 00549226    push       eax
 00549227    mov        eax,dword ptr [ebp-4]
 0054922A    mov        ax,word ptr [eax+25]
 0054922E    push       eax
 0054922F    mov        eax,dword ptr [ebp-4]
 00549232    add        eax,27
 00549235    push       eax
 00549236    push       0
 00549238    push       0
 0054923A    push       0
 0054923C    push       0
 0054923E    push       0
 00549240    mov        eax,dword ptr [ebp-4]
 00549243    lea        ecx,[eax+8]
 00549246    mov        edx,dword ptr [ebx+64]; TZOraclePreparedStatement.?f64:dword
 00549249    mov        eax,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 0054924C    mov        edi,dword ptr [eax]
 0054924E    call       dword ptr [edi+60]
 00549251    push       3
 00549253    mov        edx,dword ptr [ebx+48]; TZOraclePreparedStatement.?f48:String
 00549256    push       edx
 00549257    mov        ecx,eax
 00549259    mov        edx,dword ptr [ebx+68]; TZOraclePreparedStatement.?f68:dword
 0054925C    mov        eax,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 0054925F    call       00547B30
 00549264    inc        esi
 00549265    dec        dword ptr [ebp-8]
<00549268    jne        00549177
 0054926E    mov        eax,dword ptr [ebx+48]; TZOraclePreparedStatement.?f48:String
 00549271    push       eax
 00549272    lea        edx,[ebp-0C]
 00549275    mov        eax,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549278    mov        ecx,dword ptr [eax]
 0054927A    call       dword ptr [ecx+0C]
 0054927D    mov        ecx,dword ptr [ebp-0C]
 00549280    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00549285    mov        eax,dword ptr [eax]
 00549287    mov        dl,3
 00549289    mov        esi,dword ptr [eax]
 0054928B    call       dword ptr [esi+3C]
 0054928E    mov        byte ptr [ebx+60],1; TZOraclePreparedStatement.?f60:byte
 00549292    xor        eax,eax
 00549294    pop        edx
 00549295    pop        ecx
 00549296    pop        ecx
 00549297    mov        dword ptr fs:[eax],edx
 0054929A    push       5492AF
 0054929F    lea        eax,[ebp-0C]
 005492A2    call       @LStrClr
 005492A7    ret
<005492A8    jmp        @HandleFinally
<005492AD    jmp        0054929F
 005492AF    pop        edi
 005492B0    pop        esi
 005492B1    pop        ebx
 005492B2    mov        esp,ebp
 005492B4    pop        ebp
 005492B5    ret
*}
end;

//005492B8
//function sub_005492B8:?;
//begin
{*
 005492B8    push       ebp
 005492B9    mov        ebp,esp
 005492BB    push       0
 005492BD    push       0
 005492BF    push       0
 005492C1    push       ebx
 005492C2    push       esi
 005492C3    push       edi
 005492C4    mov        esi,eax
 005492C6    xor        eax,eax
 005492C8    push       ebp
 005492C9    push       5493DC
 005492CE    push       dword ptr fs:[eax]
 005492D1    mov        dword ptr fs:[eax],esp
 005492D4    xor        ebx,ebx
 005492D6    cmp        byte ptr [esi+60],0; TZOraclePreparedStatement.?f60:byte
>005492DA    jne        005492E6
 005492DC    mov        eax,esi
 005492DE    mov        edx,dword ptr [eax]
 005492E0    call       dword ptr [edx+0EC]; TZOraclePreparedStatement.sub_005490F0
 005492E6    mov        eax,dword ptr [esi+7C]; TZOraclePreparedStatement.?f7C:dword
 005492E9    push       eax
 005492EA    mov        eax,dword ptr [esi+4C]; TZOraclePreparedStatement.?f4C:TZVariantDynArray
 005492ED    push       eax
 005492EE    mov        ecx,dword ptr [esi+68]; TZOraclePreparedStatement.?f68:dword
 005492F1    mov        edx,dword ptr [esi+38]; TZOraclePreparedStatement.?f38:IZConnection
 005492F4    mov        eax,dword ptr [esi+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 005492F7    call       00547364
 005492FC    mov        word ptr [ebp-2],0
 00549302    lea        eax,[ebp-2]
 00549305    push       eax
 00549306    push       0
 00549308    push       18
 0054930A    mov        eax,dword ptr [esi+68]; TZOraclePreparedStatement.?f68:dword
 0054930D    push       eax
 0054930E    mov        ecx,4
 00549313    mov        edx,dword ptr [esi+64]; TZOraclePreparedStatement.?f64:dword
 00549316    mov        eax,dword ptr [esi+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549319    mov        edi,dword ptr [eax]
 0054931B    call       dword ptr [edi+50]
 0054931E    cmp        word ptr [ebp-2],1
>00549323    jne        00549357
 00549325    mov        eax,dword ptr [esi+64]; TZOraclePreparedStatement.?f64:dword
 00549328    push       eax
 00549329    mov        eax,dword ptr [esi+68]; TZOraclePreparedStatement.?f68:dword
 0054932C    push       eax
 0054932D    lea        eax,[ebp-8]
 00549330    push       eax
 00549331    mov        edx,esi
 00549333    test       edx,edx
>00549335    je         0054933A
 00549337    sub        edx,0FFFFFFBC
 0054933A    mov        ecx,dword ptr [esi+48]; TZOraclePreparedStatement.?f48:String
 0054933D    mov        eax,dword ptr [esi+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549340    call       00547DCC
 00549345    mov        edx,dword ptr [ebp-8]
 00549348    mov        eax,esi
 0054934A    mov        ecx,dword ptr [eax]
 0054934C    call       dword ptr [ecx]; TZOraclePreparedStatement.sub_004DFE2C
 0054934E    cmp        dword ptr [esi+20],0; TZOraclePreparedStatement.?f20:IZResultSet
 00549352    setne      bl
>00549355    jmp        0054937E
 00549357    mov        eax,dword ptr [esi+64]; TZOraclePreparedStatement.?f64:dword
 0054935A    push       eax
 0054935B    mov        eax,dword ptr [esi+68]; TZOraclePreparedStatement.?f68:dword
 0054935E    push       eax
 0054935F    mov        ecx,dword ptr [esi+70]; TZOraclePreparedStatement.?f70:String
 00549362    mov        edx,dword ptr [esi+38]; TZOraclePreparedStatement.?f38:IZConnection
 00549365    mov        eax,dword ptr [esi+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549368    call       005480E0
 0054936D    mov        ecx,dword ptr [esi+68]; TZOraclePreparedStatement.?f68:dword
 00549370    mov        edx,dword ptr [esi+64]; TZOraclePreparedStatement.?f64:dword
 00549373    mov        eax,dword ptr [esi+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549376    call       005481B4
 0054937B    mov        dword ptr [esi+1C],eax; TZOraclePreparedStatement.?f1C:Integer
 0054937E    mov        eax,dword ptr [esi+70]; TZOraclePreparedStatement.?f70:String
 00549381    push       eax
 00549382    lea        edx,[ebp-0C]
 00549385    mov        eax,dword ptr [esi+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549388    mov        ecx,dword ptr [eax]
 0054938A    call       dword ptr [ecx+0C]
 0054938D    mov        ecx,dword ptr [ebp-0C]
 00549390    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00549395    mov        eax,dword ptr [eax]
 00549397    mov        dl,3
 00549399    mov        edi,dword ptr [eax]
 0054939B    call       dword ptr [edi+3C]
 0054939E    mov        eax,dword ptr [esi+7C]; TZOraclePreparedStatement.?f7C:dword
 005493A1    call       00547778
 005493A6    test       bl,bl
>005493A8    jne        005493BE
 005493AA    mov        eax,dword ptr [esi+38]; TZOraclePreparedStatement.?f38:IZConnection
 005493AD    mov        edx,dword ptr [eax]
 005493AF    call       dword ptr [edx+34]
 005493B2    test       al,al
>005493B4    je         005493BE
 005493B6    mov        eax,dword ptr [esi+38]; TZOraclePreparedStatement.?f38:IZConnection
 005493B9    mov        edx,dword ptr [eax]
 005493BB    call       dword ptr [edx+38]
 005493BE    xor        eax,eax
 005493C0    pop        edx
 005493C1    pop        ecx
 005493C2    pop        ecx
 005493C3    mov        dword ptr fs:[eax],edx
 005493C6    push       5493E3
 005493CB    lea        eax,[ebp-0C]
 005493CE    call       @LStrClr
 005493D3    lea        eax,[ebp-8]
 005493D6    call       @IntfClear
 005493DB    ret
<005493DC    jmp        @HandleFinally
<005493E1    jmp        005493CB
 005493E3    mov        eax,ebx
 005493E5    pop        edi
 005493E6    pop        esi
 005493E7    pop        ebx
 005493E8    mov        esp,ebp
 005493EA    pop        ebp
 005493EB    ret
*}
//end;

//005493EC
//procedure sub_005493EC(?:?);
//begin
{*
 005493EC    push       ebp
 005493ED    mov        ebp,esp
 005493EF    push       0
 005493F1    push       ebx
 005493F2    push       esi
 005493F3    mov        esi,edx
 005493F5    mov        ebx,eax
 005493F7    xor        eax,eax
 005493F9    push       ebp
 005493FA    push       549486
 005493FF    push       dword ptr fs:[eax]
 00549402    mov        dword ptr fs:[eax],esp
 00549405    cmp        byte ptr [ebx+60],0; TZOraclePreparedStatement.?f60:byte
>00549409    jne        00549415
 0054940B    mov        eax,ebx
 0054940D    mov        edx,dword ptr [eax]
 0054940F    call       dword ptr [edx+0EC]; TZOraclePreparedStatement.sub_005490F0
 00549415    mov        eax,dword ptr [ebx+7C]; TZOraclePreparedStatement.?f7C:dword
 00549418    push       eax
 00549419    mov        eax,dword ptr [ebx+4C]; TZOraclePreparedStatement.?f4C:TZVariantDynArray
 0054941C    push       eax
 0054941D    mov        ecx,dword ptr [ebx+68]; TZOraclePreparedStatement.?f68:dword
 00549420    mov        edx,dword ptr [ebx+38]; TZOraclePreparedStatement.?f38:IZConnection
 00549423    mov        eax,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549426    call       00547364
 0054942B    mov        eax,dword ptr [ebx+64]; TZOraclePreparedStatement.?f64:dword
 0054942E    push       eax
 0054942F    mov        eax,dword ptr [ebx+68]; TZOraclePreparedStatement.?f68:dword
 00549432    push       eax
 00549433    push       esi
 00549434    mov        edx,ebx
 00549436    test       edx,edx
>00549438    je         0054943D
 0054943A    sub        edx,0FFFFFFBC
 0054943D    mov        ecx,dword ptr [ebx+48]; TZOraclePreparedStatement.?f48:String
 00549440    mov        eax,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549443    call       00547DCC
 00549448    mov        eax,dword ptr [ebx+48]; TZOraclePreparedStatement.?f48:String
 0054944B    push       eax
 0054944C    lea        edx,[ebp-4]
 0054944F    mov        eax,dword ptr [ebx+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549452    mov        ecx,dword ptr [eax]
 00549454    call       dword ptr [ecx+0C]
 00549457    mov        ecx,dword ptr [ebp-4]
 0054945A    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054945F    mov        eax,dword ptr [eax]
 00549461    mov        dl,3
 00549463    mov        esi,dword ptr [eax]
 00549465    call       dword ptr [esi+3C]
 00549468    mov        eax,dword ptr [ebx+7C]; TZOraclePreparedStatement.?f7C:dword
 0054946B    call       00547778
 00549470    xor        eax,eax
 00549472    pop        edx
 00549473    pop        ecx
 00549474    pop        ecx
 00549475    mov        dword ptr fs:[eax],edx
 00549478    push       54948D
 0054947D    lea        eax,[ebp-4]
 00549480    call       @LStrClr
 00549485    ret
<00549486    jmp        @HandleFinally
<0054948B    jmp        0054947D
 0054948D    pop        esi
 0054948E    pop        ebx
 0054948F    pop        ecx
 00549490    pop        ebp
 00549491    ret
*}
//end;

//00549494
//function sub_00549494:?;
//begin
{*
 00549494    push       ebp
 00549495    mov        ebp,esp
 00549497    add        esp,0FFFFFFF0
 0054949A    push       ebx
 0054949B    push       esi
 0054949C    xor        edx,edx
 0054949E    mov        dword ptr [ebp-10],edx
 005494A1    mov        dword ptr [ebp-0C],edx
 005494A4    mov        dword ptr [ebp-4],eax
 005494A7    xor        eax,eax
 005494A9    push       ebp
 005494AA    push       549646
 005494AF    push       dword ptr fs:[eax]
 005494B2    mov        dword ptr fs:[eax],esp
 005494B5    mov        eax,dword ptr [ebp-4]
 005494B8    cmp        byte ptr [eax+60],0; TZOraclePreparedStatement.?f60:byte
>005494BC    jne        005494C9
 005494BE    mov        eax,dword ptr [ebp-4]
 005494C1    mov        edx,dword ptr [eax]
 005494C3    call       dword ptr [edx+0EC]; TZOraclePreparedStatement.sub_005490F0
 005494C9    mov        eax,dword ptr [ebp-4]
 005494CC    mov        eax,dword ptr [eax+7C]; TZOraclePreparedStatement.?f7C:dword
 005494CF    push       eax
 005494D0    mov        eax,dword ptr [ebp-4]
 005494D3    mov        eax,dword ptr [eax+4C]; TZOraclePreparedStatement.?f4C:TZVariantDynArray
 005494D6    push       eax
 005494D7    mov        eax,dword ptr [ebp-4]
 005494DA    mov        ecx,dword ptr [eax+68]; TZOraclePreparedStatement.?f68:dword
 005494DD    mov        eax,dword ptr [ebp-4]
 005494E0    mov        edx,dword ptr [eax+38]; TZOraclePreparedStatement.?f38:IZConnection
 005494E3    mov        eax,dword ptr [ebp-4]
 005494E6    mov        eax,dword ptr [eax+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 005494E9    call       00547364
 005494EE    mov        word ptr [ebp-6],0
 005494F4    lea        eax,[ebp-6]
 005494F7    push       eax
 005494F8    push       0
 005494FA    push       18
 005494FC    mov        eax,dword ptr [ebp-4]
 005494FF    mov        eax,dword ptr [eax+68]; TZOraclePreparedStatement.?f68:dword
 00549502    push       eax
 00549503    mov        eax,dword ptr [ebp-4]
 00549506    mov        edx,dword ptr [eax+64]; TZOraclePreparedStatement.?f64:dword
 00549509    mov        eax,dword ptr [ebp-4]
 0054950C    mov        eax,dword ptr [eax+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 0054950F    mov        ecx,4
 00549514    mov        ebx,dword ptr [eax]
 00549516    call       dword ptr [ebx+50]
 00549519    cmp        word ptr [ebp-6],1
>0054951E    jne        00549595
 00549520    mov        eax,dword ptr [ebp-4]
 00549523    mov        eax,dword ptr [eax+64]; TZOraclePreparedStatement.?f64:dword
 00549526    push       eax
 00549527    mov        eax,dword ptr [ebp-4]
 0054952A    mov        eax,dword ptr [eax+68]; TZOraclePreparedStatement.?f68:dword
 0054952D    push       eax
 0054952E    lea        eax,[ebp-0C]
 00549531    push       eax
 00549532    mov        eax,dword ptr [ebp-4]
 00549535    mov        ecx,dword ptr [eax+48]; TZOraclePreparedStatement.?f48:String
 00549538    mov        edx,dword ptr [ebp-4]
 0054953B    test       edx,edx
>0054953D    je         00549542
 0054953F    sub        edx,0FFFFFFBC
 00549542    mov        eax,dword ptr [ebp-4]
 00549545    mov        eax,dword ptr [eax+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 00549548    call       00547DCC
 0054954D    xor        eax,eax
 0054954F    push       ebp
 00549550    push       54958E
 00549555    push       dword ptr fs:[eax]
 00549558    mov        dword ptr fs:[eax],esp
 0054955B    mov        eax,dword ptr [ebp-0C]
 0054955E    mov        edx,dword ptr [eax]
 00549560    call       dword ptr [edx+0C]
 00549563    test       al,al
<00549565    jne        0054955B
 00549567    mov        eax,dword ptr [ebp-0C]
 0054956A    mov        edx,dword ptr [eax]
 0054956C    call       dword ptr [edx+0F4]
 00549572    mov        edx,dword ptr [ebp-4]
 00549575    mov        dword ptr [edx+1C],eax; TZOraclePreparedStatement.?f1C:Integer
 00549578    xor        eax,eax
 0054957A    pop        edx
 0054957B    pop        ecx
 0054957C    pop        ecx
 0054957D    mov        dword ptr fs:[eax],edx
 00549580    push       5495D7
 00549585    mov        eax,dword ptr [ebp-0C]
 00549588    mov        edx,dword ptr [eax]
 0054958A    call       dword ptr [edx+10]
 0054958D    ret
<0054958E    jmp        @HandleFinally
<00549593    jmp        00549585
 00549595    mov        eax,dword ptr [ebp-4]
 00549598    mov        eax,dword ptr [eax+64]; TZOraclePreparedStatement.?f64:dword
 0054959B    push       eax
 0054959C    mov        eax,dword ptr [ebp-4]
 0054959F    mov        eax,dword ptr [eax+68]; TZOraclePreparedStatement.?f68:dword
 005495A2    push       eax
 005495A3    mov        eax,dword ptr [ebp-4]
 005495A6    mov        ecx,dword ptr [eax+70]; TZOraclePreparedStatement.?f70:String
 005495A9    mov        eax,dword ptr [ebp-4]
 005495AC    mov        edx,dword ptr [eax+38]; TZOraclePreparedStatement.?f38:IZConnection
 005495AF    mov        eax,dword ptr [ebp-4]
 005495B2    mov        eax,dword ptr [eax+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 005495B5    call       005480E0
 005495BA    mov        eax,dword ptr [ebp-4]
 005495BD    mov        ecx,dword ptr [eax+68]; TZOraclePreparedStatement.?f68:dword
 005495C0    mov        eax,dword ptr [ebp-4]
 005495C3    mov        edx,dword ptr [eax+64]; TZOraclePreparedStatement.?f64:dword
 005495C6    mov        eax,dword ptr [ebp-4]
 005495C9    mov        eax,dword ptr [eax+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 005495CC    call       005481B4
 005495D1    mov        edx,dword ptr [ebp-4]
 005495D4    mov        dword ptr [edx+1C],eax; TZOraclePreparedStatement.?f1C:Integer
 005495D7    mov        eax,dword ptr [ebp-4]
 005495DA    mov        ebx,dword ptr [eax+1C]; TZOraclePreparedStatement.?f1C:Integer
 005495DD    mov        eax,dword ptr [ebp-4]
 005495E0    mov        eax,dword ptr [eax+70]; TZOraclePreparedStatement.?f70:String
 005495E3    push       eax
 005495E4    lea        edx,[ebp-10]
 005495E7    mov        eax,dword ptr [ebp-4]
 005495EA    mov        eax,dword ptr [eax+6C]; TZOraclePreparedStatement.?f6C:IZOraclePlainDriver
 005495ED    mov        ecx,dword ptr [eax]
 005495EF    call       dword ptr [ecx+0C]
 005495F2    mov        ecx,dword ptr [ebp-10]
 005495F5    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 005495FA    mov        eax,dword ptr [eax]
 005495FC    mov        dl,3
 005495FE    mov        esi,dword ptr [eax]
 00549600    call       dword ptr [esi+3C]
 00549603    mov        eax,dword ptr [ebp-4]
 00549606    mov        eax,dword ptr [eax+7C]; TZOraclePreparedStatement.?f7C:dword
 00549609    call       00547778
 0054960E    mov        eax,dword ptr [ebp-4]
 00549611    mov        eax,dword ptr [eax+38]; TZOraclePreparedStatement.?f38:IZConnection
 00549614    mov        edx,dword ptr [eax]
 00549616    call       dword ptr [edx+34]
 00549619    test       al,al
>0054961B    je         00549628
 0054961D    mov        eax,dword ptr [ebp-4]
 00549620    mov        eax,dword ptr [eax+38]; TZOraclePreparedStatement.?f38:IZConnection
 00549623    mov        edx,dword ptr [eax]
 00549625    call       dword ptr [edx+38]
 00549628    xor        eax,eax
 0054962A    pop        edx
 0054962B    pop        ecx
 0054962C    pop        ecx
 0054962D    mov        dword ptr fs:[eax],edx
 00549630    push       54964D
 00549635    lea        eax,[ebp-10]
 00549638    call       @LStrClr
 0054963D    lea        eax,[ebp-0C]
 00549640    call       @IntfClear
 00549645    ret
<00549646    jmp        @HandleFinally
<0054964B    jmp        00549635
 0054964D    mov        eax,ebx
 0054964F    pop        esi
 00549650    pop        ebx
 00549651    mov        esp,ebp
 00549653    pop        ebp
 00549654    ret
*}
//end;

end.