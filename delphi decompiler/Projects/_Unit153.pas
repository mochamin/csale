{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit153;

interface

uses
  Classes, Windows, Graphics, ZDbcStatement, ZDbcASA, ZDbcASAUtils;

type
  TZASAStatement = class(TZAbstractStatement)
  public
    f48:byte;//f48
    f4A:word;//f4A
    f4C:IZASAConnection;//f4C
    f50:IZASASQLDA;//f50
    f54:byte;//f54
    destructor Destroy; virtual;
    //procedure sub_0055E4B8(?:?; ?:?); virtual;
    //function sub_0055E8A4(?:?):?; virtual;
    procedure sub_0055E220; virtual;
    procedure sub_0055E2E4; virtual;
    //function sub_0055E9BC(?:?):?; virtual;
    //function sub_0055E3A8:?; virtual;
    procedure sub_0055E390(); virtual;
    procedure sub_0055E39C(); virtual;
    //constructor Create(?:TZASAStatement; _Dv__:Boolean; ?:?);
  end;
  TZASAPreparedStatement = class(TZAbstractPreparedStatement)
  public
    f60:byte;//f60
    f62:word;//f62
    f64:IZASAConnection;//f64
    f68:IZASASQLDA;//f68
    f6C:IZASASQLDA;//f6C
    f70:byte;//f70
    //f71:?;//f71
    destructor Destroy; virtual;
    //procedure sub_0055EFAC(?:?; ?:?); virtual;
    //procedure sub_0055F2A0(?:?); virtual;
    procedure sub_0055EC64; virtual;
    procedure sub_0055ED28; virtual;
    //procedure sub_0055EEE8(?:?); virtual;
    //function sub_0055EDF0:?; virtual;
    procedure sub_0055EDD8(); virtual;
    procedure sub_0055EDE4(); virtual;
    //procedure sub_0055F004(?:?); virtual;
    //function sub_0055F2F0:?; virtual;
    //function sub_0055EF38:?; virtual;
    //constructor Create(?:TZASAPreparedStatement; _Dv__:Boolean; ?:?; ?:?);
  end;
  TZASACallableStatement = class(TZAbstractCallableStatement)
  public
    f78:byte;//f78
    f7A:word;//f7A
    f7C:IZASAConnection;//f7C
    f80:IZASASQLDA;//f80
    f84:IZASASQLDA;//f84
    f88:byte;//f88
    f89:byte;//f89
    destructor Destroy; virtual;
    //procedure sub_0055FA24(?:?; ?:?); virtual;
    //function sub_0055FDA4:?; virtual;
    procedure sub_0055F64C; virtual;
    procedure sub_0055F710; virtual;
    //function sub_0055F8D4:?; virtual;
    //function sub_0055F7D8:?; virtual;
    procedure sub_0055F7C0(); virtual;
    procedure sub_0055F7CC(); virtual;
    //procedure sub_0055FAD0(?:?); virtual;
    //function sub_0055FE4C:?; virtual;
    //function sub_0055F97C:?; virtual;
    //constructor Create(?:TZASACallableStatement; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//0055E080
//constructor TZASAStatement.Create(?:TZASAStatement; _Dv__:Boolean; ?:?);
//begin
{*
 0055E080    push       ebp
 0055E081    mov        ebp,esp
 0055E083    push       0
 0055E085    push       0
 0055E087    push       0
 0055E089    push       0
 0055E08B    push       ebx
 0055E08C    push       esi
 0055E08D    test       dl,dl
>0055E08F    je         0055E099
 0055E091    add        esp,0FFFFFFF0
 0055E094    call       @ClassCreate
 0055E099    mov        dword ptr [ebp-4],ecx
 0055E09C    mov        ebx,edx
 0055E09E    mov        esi,eax
 0055E0A0    mov        eax,dword ptr [ebp-4]
 0055E0A3    call       @IntfAddRef
 0055E0A8    xor        eax,eax
 0055E0AA    push       ebp
 0055E0AB    push       55E18F
 0055E0B0    push       dword ptr fs:[eax]
 0055E0B3    mov        dword ptr fs:[eax],esp
 0055E0B6    mov        eax,dword ptr [ebp+8]
 0055E0B9    push       eax
 0055E0BA    mov        ecx,dword ptr [ebp-4]
 0055E0BD    xor        edx,edx
 0055E0BF    mov        eax,esi
 0055E0C1    call       004DFC94
 0055E0C6    lea        eax,[esi+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E0C9    mov        edx,dword ptr [ebp-4]
 0055E0CC    mov        ecx,55E1B8; ['{FAAAFCE0-F550-4098-96C6-580145813EBF}']
 0055E0D1    call       @IntfCast
 0055E0D6    mov        dword ptr [esi+28],14; TZASAStatement.?f28:dword
 0055E0DD    mov        byte ptr [esi+2C],1; TZASAStatement.?f2C:byte
 0055E0E1    mov        byte ptr [esi+2D],2; TZASAStatement.?f2D:byte
 0055E0E5    lea        eax,[ebp-8]
 0055E0E8    push       eax
 0055E0E9    mov        eax,esi
 0055E0EB    test       eax,eax
>0055E0ED    je         0055E0F2
 0055E0EF    sub        eax,0FFFFFFBC
 0055E0F2    mov        ecx,55E1D0; 'true'
 0055E0F7    mov        edx,55E1E0; 'cashedblob'
 0055E0FC    call       004D30D4
 0055E101    mov        eax,dword ptr [ebp-8]
 0055E104    call       004BEFC0
 0055E109    mov        byte ptr [esi+48],al; TZASAStatement.?f48:byte
 0055E10C    lea        edx,[ebp-0C]
 0055E10F    mov        eax,0C
 0055E114    call       00557358
 0055E119    mov        edx,dword ptr [ebp-0C]
 0055E11C    lea        eax,[esi+30]; TZASAStatement.?f30:String
 0055E11F    call       @LStrAsg
 0055E124    mov        eax,dword ptr [esi+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E127    mov        edx,dword ptr [eax]
 0055E129    call       dword ptr [edx+94]
 0055E12F    push       eax
 0055E130    mov        eax,dword ptr [esi+30]; TZASAStatement.?f30:String
 0055E133    push       eax
 0055E134    push       14
 0055E136    lea        edx,[ebp-10]
 0055E139    mov        eax,dword ptr [esi+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E13C    mov        ecx,dword ptr [eax]
 0055E13E    call       dword ptr [ecx+98]
 0055E144    mov        ecx,dword ptr [ebp-10]
 0055E147    mov        dl,1
 0055E149    mov        eax,[00550BF8]; TZASASQLDA
 0055E14E    call       TZASASQLDA.Create; TZASASQLDA.Create
 0055E153    mov        edx,eax
 0055E155    test       edx,edx
>0055E157    je         0055E15C
 0055E159    sub        edx,0FFFFFFE0
 0055E15C    lea        eax,[esi+50]; TZASAStatement.?f50:IZASASQLDA
 0055E15F    call       @IntfCopy
 0055E164    xor        eax,eax
 0055E166    pop        edx
 0055E167    pop        ecx
 0055E168    pop        ecx
 0055E169    mov        dword ptr fs:[eax],edx
 0055E16C    push       55E196
 0055E171    lea        eax,[ebp-10]
 0055E174    call       @IntfClear
 0055E179    lea        eax,[ebp-0C]
 0055E17C    mov        edx,2
 0055E181    call       @LStrArrayClr
 0055E186    lea        eax,[ebp-4]
 0055E189    call       @IntfClear
 0055E18E    ret
<0055E18F    jmp        @HandleFinally
<0055E194    jmp        0055E171
 0055E196    mov        eax,esi
 0055E198    test       bl,bl
>0055E19A    je         0055E1AB
 0055E19C    call       @AfterConstruction
 0055E1A1    pop        dword ptr fs:[0]
 0055E1A8    add        esp,0C
 0055E1AB    mov        eax,esi
 0055E1AD    pop        esi
 0055E1AE    pop        ebx
 0055E1AF    mov        esp,ebp
 0055E1B1    pop        ebp
 0055E1B2    ret        4
*}
//end;

//0055E1EC
destructor TZASAStatement.Destroy;
begin
{*
 0055E1EC    push       ebp
 0055E1ED    mov        ebp,esp
 0055E1EF    push       ebx
 0055E1F0    push       esi
 0055E1F1    call       @BeforeDestruction
 0055E1F6    mov        ebx,edx
 0055E1F8    mov        esi,eax
 0055E1FA    lea        eax,[esi+50]; TZASAStatement.?f50:IZASASQLDA
 0055E1FD    call       @IntfClear
 0055E202    mov        edx,ebx
 0055E204    and        dl,0FC
 0055E207    mov        eax,esi
 0055E209    call       TZAbstractStatement.Destroy
 0055E20E    test       bl,bl
>0055E210    jle        0055E219
 0055E212    mov        eax,esi
 0055E214    call       @ClassDestroy
 0055E219    pop        esi
 0055E21A    pop        ebx
 0055E21B    pop        ebp
 0055E21C    ret
*}
end;

//0055E220
procedure sub_0055E220;
begin
{*
 0055E220    push       ebp
 0055E221    mov        ebp,esp
 0055E223    push       0
 0055E225    push       0
 0055E227    push       ebx
 0055E228    push       esi
 0055E229    mov        ebx,eax
 0055E22B    xor        eax,eax
 0055E22D    push       ebp
 0055E22E    push       55E2D7
 0055E233    push       dword ptr fs:[eax]
 0055E236    mov        dword ptr fs:[eax],esp
 0055E239    cmp        byte ptr [ebx+40],0; TZASAStatement.?f40:byte
>0055E23D    jne        0055E275
 0055E23F    lea        edx,[ebp-4]
 0055E242    mov        eax,dword ptr [ebx+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E245    mov        ecx,dword ptr [eax]
 0055E247    call       dword ptr [ecx+98]
 0055E24D    mov        eax,dword ptr [ebp-4]
 0055E250    push       eax
 0055E251    mov        eax,dword ptr [ebx+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E254    mov        edx,dword ptr [eax]
 0055E256    call       dword ptr [edx+94]
 0055E25C    push       eax
 0055E25D    mov        eax,dword ptr [ebx+30]; TZASAStatement.?f30:String
 0055E260    call       @LStrToPChar
 0055E265    mov        ecx,eax
 0055E267    pop        edx
 0055E268    pop        eax
 0055E269    mov        esi,dword ptr [eax]
 0055E26B    call       dword ptr [esi+80]
 0055E271    mov        byte ptr [ebx+40],0; TZASAStatement.?f40:byte
 0055E275    cmp        word ptr [ebx+4A],0; TZASAStatement.?f4A:word
>0055E27A    je         0055E2AF
 0055E27C    push       0
 0055E27E    lea        eax,[ebx+4A]; TZASAStatement.?f4A:word
 0055E281    push       eax
 0055E282    lea        edx,[ebp-8]
 0055E285    mov        eax,dword ptr [ebx+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E288    mov        ecx,dword ptr [eax]
 0055E28A    call       dword ptr [ecx+98]
 0055E290    mov        eax,dword ptr [ebp-8]
 0055E293    push       eax
 0055E294    mov        eax,dword ptr [ebx+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E297    mov        edx,dword ptr [eax]
 0055E299    call       dword ptr [edx+94]
 0055E29F    mov        edx,eax
 0055E2A1    xor        ecx,ecx
 0055E2A3    pop        eax
 0055E2A4    mov        esi,dword ptr [eax]
 0055E2A6    call       dword ptr [esi+78]
 0055E2A9    mov        word ptr [ebx+4A],0; TZASAStatement.?f4A:word
 0055E2AF    mov        eax,ebx
 0055E2B1    call       004DFEB4
 0055E2B6    xor        eax,eax
 0055E2B8    pop        edx
 0055E2B9    pop        ecx
 0055E2BA    pop        ecx
 0055E2BB    mov        dword ptr fs:[eax],edx
 0055E2BE    push       55E2DE
 0055E2C3    lea        eax,[ebp-8]
 0055E2C6    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055E2CC    mov        ecx,2
 0055E2D1    call       @FinalizeArray
 0055E2D6    ret
<0055E2D7    jmp        @HandleFinally
<0055E2DC    jmp        0055E2C3
 0055E2DE    pop        esi
 0055E2DF    pop        ebx
 0055E2E0    pop        ecx
 0055E2E1    pop        ecx
 0055E2E2    pop        ebp
 0055E2E3    ret
*}
end;

//0055E2E4
procedure sub_0055E2E4;
begin
{*
 0055E2E4    push       ebp
 0055E2E5    mov        ebp,esp
 0055E2E7    push       0
 0055E2E9    push       0
 0055E2EB    push       0
 0055E2ED    push       ebx
 0055E2EE    mov        ebx,eax
 0055E2F0    xor        eax,eax
 0055E2F2    push       ebp
 0055E2F3    push       55E383
 0055E2F8    push       dword ptr fs:[eax]
 0055E2FB    mov        dword ptr fs:[eax],esp
 0055E2FE    lea        eax,[ebp-4]
 0055E301    mov        edx,dword ptr [ebx+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E304    call       @IntfCopy
 0055E309    lea        edx,[ebp-8]
 0055E30C    mov        eax,dword ptr [ebp-4]
 0055E30F    mov        ecx,dword ptr [eax]
 0055E311    call       dword ptr [ecx+98]
 0055E317    mov        eax,dword ptr [ebp-8]
 0055E31A    push       eax
 0055E31B    mov        eax,dword ptr [ebp-4]
 0055E31E    mov        edx,dword ptr [eax]
 0055E320    call       dword ptr [edx+94]
 0055E326    mov        edx,eax
 0055E328    pop        eax
 0055E329    mov        ecx,dword ptr [eax]
 0055E32B    call       dword ptr [ecx+0C0]
 0055E331    push       0
 0055E333    lea        edx,[ebp-0C]
 0055E336    mov        eax,dword ptr [ebp-4]
 0055E339    mov        ecx,dword ptr [eax]
 0055E33B    call       dword ptr [ecx+98]
 0055E341    mov        eax,dword ptr [ebp-0C]
 0055E344    push       eax
 0055E345    mov        eax,dword ptr [ebp-4]
 0055E348    mov        edx,dword ptr [eax]
 0055E34A    call       dword ptr [edx+94]
 0055E350    mov        edx,eax
 0055E352    mov        cl,3
 0055E354    pop        eax
 0055E355    call       00556588
 0055E35A    xor        eax,eax
 0055E35C    pop        edx
 0055E35D    pop        ecx
 0055E35E    pop        ecx
 0055E35F    mov        dword ptr fs:[eax],edx
 0055E362    push       55E38A
 0055E367    lea        eax,[ebp-0C]
 0055E36A    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055E370    mov        ecx,2
 0055E375    call       @FinalizeArray
 0055E37A    lea        eax,[ebp-4]
 0055E37D    call       @IntfClear
 0055E382    ret
<0055E383    jmp        @HandleFinally
<0055E388    jmp        0055E367
 0055E38A    pop        ebx
 0055E38B    mov        esp,ebp
 0055E38D    pop        ebp
 0055E38E    ret
*}
end;

//0055E390
procedure sub_0055E390();
begin
{*
 0055E390    push       ebp
 0055E391    mov        ebp,esp
 0055E393    call       004DFF00
 0055E398    pop        ebp
 0055E399    ret
*}
end;

//0055E39C
procedure sub_0055E39C();
begin
{*
 0055E39C    push       ebp
 0055E39D    mov        ebp,esp
 0055E39F    call       004DFF04
 0055E3A4    pop        ebp
 0055E3A5    ret
*}
end;

//0055E3A8
//function sub_0055E3A8:?;
//begin
{*
 0055E3A8    push       ebp
 0055E3A9    mov        ebp,esp
 0055E3AB    xor        ecx,ecx
 0055E3AD    push       ecx
 0055E3AE    push       ecx
 0055E3AF    push       ecx
 0055E3B0    push       ecx
 0055E3B1    push       ecx
 0055E3B2    push       ebx
 0055E3B3    push       esi
 0055E3B4    mov        ebx,eax
 0055E3B6    xor        eax,eax
 0055E3B8    push       ebp
 0055E3B9    push       55E4A5
 0055E3BE    push       dword ptr fs:[eax]
 0055E3C1    mov        dword ptr fs:[eax],esp
 0055E3C4    mov        al,byte ptr [ebx+54]; TZASAStatement.?f54:byte
 0055E3C7    mov        byte ptr [ebp-1],al
 0055E3CA    test       al,al
>0055E3CC    je         0055E474
 0055E3D2    lea        eax,[ebp-0C]
 0055E3D5    mov        edx,dword ptr [ebx+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E3D8    call       @IntfCopy
 0055E3DD    lea        edx,[ebp-10]
 0055E3E0    mov        eax,dword ptr [ebp-0C]
 0055E3E3    mov        ecx,dword ptr [eax]
 0055E3E5    call       dword ptr [ecx+98]
 0055E3EB    mov        eax,dword ptr [ebp-10]
 0055E3EE    push       eax
 0055E3EF    mov        eax,dword ptr [ebp-0C]
 0055E3F2    mov        edx,dword ptr [eax]
 0055E3F4    call       dword ptr [edx+94]
 0055E3FA    push       eax
 0055E3FB    mov        eax,dword ptr [ebx+30]; TZASAStatement.?f30:String
 0055E3FE    call       @LStrToPChar
 0055E403    mov        ecx,eax
 0055E405    pop        edx
 0055E406    pop        eax
 0055E407    mov        esi,dword ptr [eax]
 0055E409    call       dword ptr [esi+0BC]
 0055E40F    push       0
 0055E411    lea        edx,[ebp-14]
 0055E414    mov        eax,dword ptr [ebp-0C]
 0055E417    mov        ecx,dword ptr [eax]
 0055E419    call       dword ptr [ecx+98]
 0055E41F    mov        eax,dword ptr [ebp-14]
 0055E422    push       eax
 0055E423    mov        eax,dword ptr [ebp-0C]
 0055E426    mov        edx,dword ptr [eax]
 0055E428    call       dword ptr [edx+94]
 0055E42E    mov        edx,eax
 0055E430    mov        cl,3
 0055E432    pop        eax
 0055E433    call       00556588
 0055E438    mov        eax,dword ptr [ebp-0C]
 0055E43B    mov        edx,dword ptr [eax]
 0055E43D    call       dword ptr [edx+94]
 0055E443    cmp        dword ptr [eax+0C],69
>0055E447    jne        0055E44F
 0055E449    mov        byte ptr [ebp-1],0
>0055E44D    jmp        0055E474
 0055E44F    lea        eax,[ebp-8]
 0055E452    mov        edx,dword ptr [ebx+20]; TZASAStatement.?f20:IZResultSet
 0055E455    mov        edx,dword ptr [edx+4C]
 0055E458    call       @IntfCopy
 0055E45D    push       0
 0055E45F    mov        edx,dword ptr [ebp-8]
 0055E462    test       edx,edx
>0055E464    je         0055E469
 0055E466    sub        edx,0FFFFFFE0
 0055E469    mov        ecx,dword ptr [ebx+30]; TZASAStatement.?f30:String
 0055E46C    mov        eax,dword ptr [ebx+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E46F    call       005567D0
 0055E474    xor        eax,eax
 0055E476    pop        edx
 0055E477    pop        ecx
 0055E478    pop        ecx
 0055E479    mov        dword ptr fs:[eax],edx
 0055E47C    push       55E4AC
 0055E481    lea        eax,[ebp-14]
 0055E484    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055E48A    mov        ecx,2
 0055E48F    call       @FinalizeArray
 0055E494    lea        eax,[ebp-0C]
 0055E497    call       @IntfClear
 0055E49C    lea        eax,[ebp-8]
 0055E49F    call       @IntfClear
 0055E4A4    ret
<0055E4A5    jmp        @HandleFinally
<0055E4AA    jmp        0055E481
 0055E4AC    mov        al,byte ptr [ebp-1]
 0055E4AF    pop        esi
 0055E4B0    pop        ebx
 0055E4B1    mov        esp,ebp
 0055E4B3    pop        ebp
 0055E4B4    ret
*}
//end;

//0055E4B8
//procedure sub_0055E4B8(?:?; ?:?);
//begin
{*
 0055E4B8    push       ebp
 0055E4B9    mov        ebp,esp
 0055E4BB    push       ecx
 0055E4BC    mov        ecx,6
 0055E4C1    push       0
 0055E4C3    push       0
 0055E4C5    dec        ecx
<0055E4C6    jne        0055E4C1
 0055E4C8    xchg       ecx,dword ptr [ebp-4]
 0055E4CB    push       ebx
 0055E4CC    push       esi
 0055E4CD    push       edi
 0055E4CE    mov        dword ptr [ebp-8],ecx
 0055E4D1    mov        ebx,edx
 0055E4D3    mov        dword ptr [ebp-4],eax
 0055E4D6    xor        eax,eax
 0055E4D8    push       ebp
 0055E4D9    push       55E894
 0055E4DE    push       dword ptr fs:[eax]
 0055E4E1    mov        dword ptr fs:[eax],esp
 0055E4E4    mov        eax,dword ptr [ebp-4]
 0055E4E7    mov        edx,dword ptr [eax]
 0055E4E9    call       dword ptr [edx+0C]; TZASAStatement.sub_0055E220
 0055E4EC    lea        eax,[ebp-10]
 0055E4EF    mov        edx,dword ptr [ebp-4]
 0055E4F2    mov        edx,dword ptr [edx+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E4F5    call       @IntfCopy
 0055E4FA    xor        edx,edx
 0055E4FC    push       ebp
 0055E4FD    push       55E815
 0055E502    push       dword ptr fs:[edx]
 0055E505    mov        dword ptr fs:[edx],esp
 0055E508    mov        eax,dword ptr [ebp-4]
 0055E50B    add        eax,4A; TZASAStatement.?f4A:word
 0055E50E    push       eax
 0055E50F    mov        eax,ebx
 0055E511    call       @LStrToPChar
 0055E516    push       eax
 0055E517    mov        eax,dword ptr [ebp-4]
 0055E51A    mov        eax,dword ptr [eax+50]; TZASAStatement.?f50:IZASASQLDA
 0055E51D    mov        edx,dword ptr [eax]
 0055E51F    call       dword ptr [edx+18]
 0055E522    push       eax
 0055E523    push       903
 0055E528    push       0
 0055E52A    lea        edx,[ebp-14]
 0055E52D    mov        eax,dword ptr [ebp-10]
 0055E530    mov        ecx,dword ptr [eax]
 0055E532    call       dword ptr [ecx+98]
 0055E538    mov        eax,dword ptr [ebp-14]
 0055E53B    push       eax
 0055E53C    mov        eax,dword ptr [ebp-10]
 0055E53F    mov        edx,dword ptr [eax]
 0055E541    call       dword ptr [edx+94]
 0055E547    mov        edx,eax
 0055E549    xor        ecx,ecx
 0055E54B    pop        eax
 0055E54C    mov        esi,dword ptr [eax]
 0055E54E    call       dword ptr [esi+6C]
 0055E551    push       ebx
 0055E552    lea        edx,[ebp-18]
 0055E555    mov        eax,dword ptr [ebp-10]
 0055E558    mov        ecx,dword ptr [eax]
 0055E55A    call       dword ptr [ecx+98]
 0055E560    mov        eax,dword ptr [ebp-18]
 0055E563    push       eax
 0055E564    mov        eax,dword ptr [ebp-10]
 0055E567    mov        edx,dword ptr [eax]
 0055E569    call       dword ptr [edx+94]
 0055E56F    mov        edx,eax
 0055E571    mov        cl,3
 0055E573    pop        eax
 0055E574    call       00556588
 0055E579    mov        eax,dword ptr [ebp-10]
 0055E57C    mov        edx,dword ptr [eax]
 0055E57E    call       dword ptr [edx+94]
 0055E584    cmp        dword ptr [eax+68],0
 0055E588    sete       al
 0055E58B    mov        edx,dword ptr [ebp-4]
 0055E58E    mov        byte ptr [edx+54],al; TZASAStatement.?f54:byte
 0055E591    mov        eax,dword ptr [ebp-4]
 0055E594    cmp        byte ptr [eax+54],0; TZASAStatement.?f54:byte
>0055E598    jne        0055E67F
 0055E59E    mov        eax,dword ptr [ebp-4]
 0055E5A1    mov        eax,dword ptr [eax+50]; TZASAStatement.?f50:IZASASQLDA
 0055E5A4    mov        edx,dword ptr [eax]
 0055E5A6    call       dword ptr [edx+18]
 0055E5A9    cmp        word ptr [eax+0E],0
>0055E5AE    ja         0055E5D6
 0055E5B0    lea        edx,[ebp-1C]
 0055E5B3    mov        eax,[0061B544]; ^#122.sResString28:TResStringRec
 0055E5B8    call       LoadResString
 0055E5BD    mov        ecx,dword ptr [ebp-1C]
 0055E5C0    mov        dl,1
 0055E5C2    mov        eax,[004C6D20]; EZSQLException
 0055E5C7    call       EZSQLException.Create; EZSQLException.Create
 0055E5CC    call       @RaiseExcept
>0055E5D1    jmp        0055E674
 0055E5D6    mov        eax,dword ptr [ebp-4]
 0055E5D9    mov        eax,dword ptr [eax+50]; TZASAStatement.?f50:IZASASQLDA
 0055E5DC    mov        edx,dword ptr [eax]
 0055E5DE    call       dword ptr [edx+18]
 0055E5E1    mov        si,word ptr [eax+0E]
 0055E5E5    mov        eax,dword ptr [ebp-4]
 0055E5E8    mov        eax,dword ptr [eax+50]; TZASAStatement.?f50:IZASASQLDA
 0055E5EB    mov        edx,dword ptr [eax]
 0055E5ED    call       dword ptr [edx+18]
 0055E5F0    cmp        si,word ptr [eax+0C]
>0055E5F4    jbe        0055E674
 0055E5F6    mov        eax,dword ptr [ebp-4]
 0055E5F9    mov        eax,dword ptr [eax+50]; TZASAStatement.?f50:IZASASQLDA
 0055E5FC    mov        edx,dword ptr [eax]
 0055E5FE    call       dword ptr [edx+18]
 0055E601    mov        dx,word ptr [eax+0E]
 0055E605    mov        eax,dword ptr [ebp-4]
 0055E608    mov        eax,dword ptr [eax+50]; TZASAStatement.?f50:IZASASQLDA
 0055E60B    mov        ecx,dword ptr [eax]
 0055E60D    call       dword ptr [ecx+0C]
 0055E610    mov        eax,dword ptr [ebp-4]
 0055E613    add        eax,4A; TZASAStatement.?f4A:word
 0055E616    push       eax
 0055E617    mov        eax,dword ptr [ebp-4]
 0055E61A    mov        eax,dword ptr [eax+50]; TZASAStatement.?f50:IZASASQLDA
 0055E61D    mov        edx,dword ptr [eax]
 0055E61F    call       dword ptr [edx+18]
 0055E622    push       eax
 0055E623    push       1
 0055E625    lea        edx,[ebp-20]
 0055E628    mov        eax,dword ptr [ebp-10]
 0055E62B    mov        ecx,dword ptr [eax]
 0055E62D    call       dword ptr [ecx+98]
 0055E633    mov        eax,dword ptr [ebp-20]
 0055E636    push       eax
 0055E637    mov        eax,dword ptr [ebp-10]
 0055E63A    mov        edx,dword ptr [eax]
 0055E63C    call       dword ptr [edx+94]
 0055E642    mov        edx,eax
 0055E644    xor        ecx,ecx
 0055E646    pop        eax
 0055E647    mov        esi,dword ptr [eax]
 0055E649    call       dword ptr [esi+74]
 0055E64C    push       ebx
 0055E64D    lea        edx,[ebp-24]
 0055E650    mov        eax,dword ptr [ebp-10]
 0055E653    mov        ecx,dword ptr [eax]
 0055E655    call       dword ptr [ecx+98]
 0055E65B    mov        eax,dword ptr [ebp-24]
 0055E65E    push       eax
 0055E65F    mov        eax,dword ptr [ebp-10]
 0055E662    mov        edx,dword ptr [eax]
 0055E664    call       dword ptr [edx+94]
 0055E66A    mov        edx,eax
 0055E66C    mov        cl,3
 0055E66E    pop        eax
 0055E66F    call       00556588
 0055E674    mov        eax,dword ptr [ebp-4]
 0055E677    mov        eax,dword ptr [eax+50]; TZASAStatement.?f50:IZASASQLDA
 0055E67A    mov        edx,dword ptr [eax]
 0055E67C    call       dword ptr [edx+10]
 0055E67F    mov        eax,dword ptr [ebp-4]
 0055E682    cmp        byte ptr [eax+2C],1; TZASAStatement.?f2C:byte
>0055E686    jne        0055E68E
 0055E688    mov        si,1020
>0055E68C    jmp        0055E692
 0055E68E    mov        si,22
 0055E692    mov        eax,dword ptr [ebp-4]
 0055E695    cmp        byte ptr [eax+2D],1; TZASAStatement.?f2D:byte
>0055E699    jne        0055E6C2
 0055E69B    movsx      eax,si
 0055E69E    add        eax,400
>0055E6A3    jno        0055E6AA
 0055E6A5    call       @IntOver
 0055E6AA    add        eax,8000
 0055E6AF    cmp        eax,0FFFF
>0055E6B4    jbe        0055E6BB
 0055E6B6    call       @BoundErr
 0055E6BB    add        eax,0FFFF8000
 0055E6C0    mov        esi,eax
 0055E6C2    lea        eax,[ebp-0C]
 0055E6C5    mov        edx,dword ptr [ebp-4]
 0055E6C8    mov        edx,dword ptr [edx+30]; TZASAStatement.?f30:String
 0055E6CB    call       @LStrLAsg
 0055E6D0    push       0
 0055E6D2    mov        eax,dword ptr [ebp-4]
 0055E6D5    add        eax,4A; TZASAStatement.?f4A:word
 0055E6D8    push       eax
 0055E6D9    push       0
 0055E6DB    mov        eax,dword ptr [ebp-4]
 0055E6DE    mov        eax,dword ptr [eax+28]; TZASAStatement.?f28:dword
 0055E6E1    add        eax,8000
 0055E6E6    cmp        eax,0FFFF
>0055E6EB    jbe        0055E6F2
 0055E6ED    call       @BoundErr
 0055E6F2    add        eax,0FFFF8000
 0055E6F7    push       eax
 0055E6F8    push       0
 0055E6FA    movsx      eax,si
 0055E6FD    cmp        eax,0FFFF
>0055E702    jbe        0055E709
 0055E704    call       @BoundErr
 0055E709    push       eax
 0055E70A    lea        edx,[ebp-28]
 0055E70D    mov        eax,dword ptr [ebp-10]
 0055E710    mov        ecx,dword ptr [eax]
 0055E712    call       dword ptr [ecx+98]
 0055E718    mov        eax,dword ptr [ebp-28]
 0055E71B    push       eax
 0055E71C    mov        eax,dword ptr [ebp-10]
 0055E71F    mov        edx,dword ptr [eax]
 0055E721    call       dword ptr [edx+94]
 0055E727    push       eax
 0055E728    mov        eax,dword ptr [ebp-0C]
 0055E72B    call       @LStrToPChar
 0055E730    mov        ecx,eax
 0055E732    pop        edx
 0055E733    pop        eax
 0055E734    mov        esi,dword ptr [eax]
 0055E736    call       dword ptr [esi+7C]
 0055E739    push       ebx
 0055E73A    lea        edx,[ebp-2C]
 0055E73D    mov        eax,dword ptr [ebp-10]
 0055E740    mov        ecx,dword ptr [eax]
 0055E742    call       dword ptr [ecx+98]
 0055E748    mov        eax,dword ptr [ebp-2C]
 0055E74B    push       eax
 0055E74C    mov        eax,dword ptr [ebp-10]
 0055E74F    mov        edx,dword ptr [eax]
 0055E751    call       dword ptr [edx+94]
 0055E757    mov        edx,eax
 0055E759    mov        cl,3
 0055E75B    pop        eax
 0055E75C    call       00556588
 0055E761    mov        eax,dword ptr [ebp-4]
 0055E764    mov        byte ptr [eax+40],0; TZASAStatement.?f40:byte
 0055E768    mov        eax,dword ptr [ebp-4]
 0055E76B    cmp        byte ptr [eax+54],0; TZASAStatement.?f54:byte
>0055E76F    je         0055E786
 0055E771    push       ebx
 0055E772    mov        eax,dword ptr [ebp-4]
 0055E775    mov        edx,dword ptr [eax+50]; TZASAStatement.?f50:IZASASQLDA
 0055E778    mov        eax,dword ptr [ebp-4]
 0055E77B    mov        eax,dword ptr [eax+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E77E    mov        ecx,dword ptr [ebp-0C]
 0055E781    call       005567D0
 0055E786    mov        eax,dword ptr [ebp-4]
 0055E789    mov        dword ptr [eax+1C],0FFFFFFFF; TZASAStatement.?f1C:Integer
 0055E790    mov        eax,dword ptr [ebp-8]
 0055E793    push       eax
 0055E794    push       ebx
 0055E795    mov        eax,dword ptr [ebp-4]
 0055E798    add        eax,4A; TZASAStatement.?f4A:word
 0055E79B    push       eax
 0055E79C    mov        eax,dword ptr [ebp-0C]
 0055E79F    push       eax
 0055E7A0    mov        eax,dword ptr [ebp-4]
 0055E7A3    mov        eax,dword ptr [eax+50]; TZASAStatement.?f50:IZASASQLDA
 0055E7A6    push       eax
 0055E7A7    push       0
 0055E7A9    mov        eax,dword ptr [ebp-4]
 0055E7AC    mov        al,byte ptr [eax+48]; TZASAStatement.?f48:byte
 0055E7AF    push       eax
 0055E7B0    mov        ecx,dword ptr [ebp-4]
 0055E7B3    test       ecx,ecx
>0055E7B5    je         0055E7BA
 0055E7B7    sub        ecx,0FFFFFFBC
 0055E7BA    mov        dl,1
 0055E7BC    mov        eax,[0055C124]; TZASAResultSet
 0055E7C1    call       TZASAResultSet.Create; TZASAResultSet.Create
 0055E7C6    mov        ecx,eax
 0055E7C8    test       ecx,ecx
>0055E7CA    je         0055E7CF
 0055E7CC    sub        ecx,0FFFFFFC8
 0055E7CF    mov        edx,dword ptr [ebp-4]
 0055E7D2    test       edx,edx
>0055E7D4    je         0055E7D9
 0055E7D6    sub        edx,0FFFFFFBC
 0055E7D9    mov        eax,ebx
 0055E7DB    call       005566C4
 0055E7E0    push       ebx
 0055E7E1    lea        edx,[ebp-34]
 0055E7E4    mov        eax,dword ptr [ebp-10]
 0055E7E7    mov        ecx,dword ptr [eax]
 0055E7E9    call       dword ptr [ecx+98]
 0055E7EF    mov        eax,dword ptr [ebp-34]
 0055E7F2    lea        edx,[ebp-30]
 0055E7F5    mov        ecx,dword ptr [eax]
 0055E7F7    call       dword ptr [ecx+0C]
 0055E7FA    mov        ecx,dword ptr [ebp-30]
 0055E7FD    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0055E802    mov        eax,dword ptr [eax]
 0055E804    mov        dl,3
 0055E806    mov        ebx,dword ptr [eax]
 0055E808    call       dword ptr [ebx+3C]
 0055E80B    xor        eax,eax
 0055E80D    pop        edx
 0055E80E    pop        ecx
 0055E80F    pop        ecx
 0055E810    mov        dword ptr fs:[eax],edx
>0055E813    jmp        0055E838
<0055E815    jmp        @HandleOnException
 0055E81A    dd        1
 0055E81E    dd        4087B0;Exception
 0055E822    dd        55E826
 0055E826    mov        eax,dword ptr [ebp-4]
 0055E829    mov        edx,dword ptr [eax]
 0055E82B    call       dword ptr [edx+0C]; TZASAStatement.sub_0055E220
 0055E82E    call       @RaiseAgain
 0055E833    call       @DoneExcept
 0055E838    xor        eax,eax
 0055E83A    pop        edx
 0055E83B    pop        ecx
 0055E83C    pop        ecx
 0055E83D    mov        dword ptr fs:[eax],edx
 0055E840    push       55E89B
 0055E845    lea        eax,[ebp-34]
 0055E848    call       @IntfClear
 0055E84D    lea        eax,[ebp-30]
 0055E850    call       @LStrClr
 0055E855    lea        eax,[ebp-2C]
 0055E858    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055E85E    mov        ecx,4
 0055E863    call       @FinalizeArray
 0055E868    lea        eax,[ebp-1C]
 0055E86B    call       @LStrClr
 0055E870    lea        eax,[ebp-18]
 0055E873    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055E879    mov        ecx,2
 0055E87E    call       @FinalizeArray
 0055E883    lea        eax,[ebp-10]
 0055E886    call       @IntfClear
 0055E88B    lea        eax,[ebp-0C]
 0055E88E    call       @LStrClr
 0055E893    ret
<0055E894    jmp        @HandleFinally
<0055E899    jmp        0055E845
 0055E89B    pop        edi
 0055E89C    pop        esi
 0055E89D    pop        ebx
 0055E89E    mov        esp,ebp
 0055E8A0    pop        ebp
 0055E8A1    ret
*}
//end;

//0055E8A4
//function sub_0055E8A4(?:?):?;
//begin
{*
 0055E8A4    push       ebp
 0055E8A5    mov        ebp,esp
 0055E8A7    xor        ecx,ecx
 0055E8A9    push       ecx
 0055E8AA    push       ecx
 0055E8AB    push       ecx
 0055E8AC    push       ecx
 0055E8AD    push       ecx
 0055E8AE    push       ecx
 0055E8AF    push       ebx
 0055E8B0    push       esi
 0055E8B1    push       edi
 0055E8B2    mov        esi,edx
 0055E8B4    mov        ebx,eax
 0055E8B6    xor        eax,eax
 0055E8B8    push       ebp
 0055E8B9    push       55E9AA
 0055E8BE    push       dword ptr fs:[eax]
 0055E8C1    mov        dword ptr fs:[eax],esp
 0055E8C4    mov        eax,ebx
 0055E8C6    mov        edx,dword ptr [eax]
 0055E8C8    call       dword ptr [edx+0C]; TZASAStatement.sub_0055E220
 0055E8CB    lea        eax,[ebp-8]
 0055E8CE    mov        edx,dword ptr [ebx+4C]; TZASAStatement.?f4C:IZASAConnection
 0055E8D1    call       @IntfCopy
 0055E8D6    lea        edx,[ebp-0C]
 0055E8D9    mov        eax,dword ptr [ebp-8]
 0055E8DC    mov        ecx,dword ptr [eax]
 0055E8DE    call       dword ptr [ecx+98]
 0055E8E4    mov        eax,dword ptr [ebp-0C]
 0055E8E7    push       eax
 0055E8E8    mov        eax,dword ptr [ebp-8]
 0055E8EB    mov        edx,dword ptr [eax]
 0055E8ED    call       dword ptr [edx+94]
 0055E8F3    push       eax
 0055E8F4    mov        eax,esi
 0055E8F6    call       @LStrToPChar
 0055E8FB    mov        ecx,eax
 0055E8FD    pop        edx
 0055E8FE    pop        eax
 0055E8FF    mov        edi,dword ptr [eax]
 0055E901    call       dword ptr [edi+0A8]
 0055E907    push       esi
 0055E908    lea        edx,[ebp-10]
 0055E90B    mov        eax,dword ptr [ebp-8]
 0055E90E    mov        ecx,dword ptr [eax]
 0055E910    call       dword ptr [ecx+98]
 0055E916    mov        eax,dword ptr [ebp-10]
 0055E919    push       eax
 0055E91A    mov        eax,dword ptr [ebp-8]
 0055E91D    mov        edx,dword ptr [eax]
 0055E91F    call       dword ptr [edx+94]
 0055E925    mov        edx,eax
 0055E927    mov        cl,3
 0055E929    pop        eax
 0055E92A    call       00556588
 0055E92F    mov        eax,dword ptr [ebp-8]
 0055E932    mov        edx,dword ptr [eax]
 0055E934    call       dword ptr [edx+94]
 0055E93A    mov        eax,dword ptr [eax+68]
 0055E93D    mov        dword ptr [ebp-4],eax
 0055E940    mov        eax,dword ptr [ebp-4]
 0055E943    mov        dword ptr [ebx+1C],eax; TZASAStatement.?f1C:Integer
 0055E946    push       esi
 0055E947    lea        edx,[ebp-18]
 0055E94A    mov        eax,dword ptr [ebp-8]
 0055E94D    mov        ecx,dword ptr [eax]
 0055E94F    call       dword ptr [ecx+98]
 0055E955    mov        eax,dword ptr [ebp-18]
 0055E958    lea        edx,[ebp-14]
 0055E95B    mov        ecx,dword ptr [eax]
 0055E95D    call       dword ptr [ecx+0C]
 0055E960    mov        ecx,dword ptr [ebp-14]
 0055E963    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0055E968    mov        eax,dword ptr [eax]
 0055E96A    mov        dl,3
 0055E96C    mov        ebx,dword ptr [eax]
 0055E96E    call       dword ptr [ebx+3C]
 0055E971    xor        eax,eax
 0055E973    pop        edx
 0055E974    pop        ecx
 0055E975    pop        ecx
 0055E976    mov        dword ptr fs:[eax],edx
 0055E979    push       55E9B1
 0055E97E    lea        eax,[ebp-18]
 0055E981    call       @IntfClear
 0055E986    lea        eax,[ebp-14]
 0055E989    call       @LStrClr
 0055E98E    lea        eax,[ebp-10]
 0055E991    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055E997    mov        ecx,2
 0055E99C    call       @FinalizeArray
 0055E9A1    lea        eax,[ebp-8]
 0055E9A4    call       @IntfClear
 0055E9A9    ret
<0055E9AA    jmp        @HandleFinally
<0055E9AF    jmp        0055E97E
 0055E9B1    mov        eax,dword ptr [ebp-4]
 0055E9B4    pop        edi
 0055E9B5    pop        esi
 0055E9B6    pop        ebx
 0055E9B7    mov        esp,ebp
 0055E9B9    pop        ebp
 0055E9BA    ret
*}
//end;

//0055E9BC
//function sub_0055E9BC(?:?):?;
//begin
{*
 0055E9BC    push       ebp
 0055E9BD    mov        ebp,esp
 0055E9BF    add        esp,0FFFFFFF4
 0055E9C2    push       ebx
 0055E9C3    push       esi
 0055E9C4    push       edi
 0055E9C5    xor        ecx,ecx
 0055E9C7    mov        dword ptr [ebp-0C],ecx
 0055E9CA    mov        dword ptr [ebp-8],edx
 0055E9CD    mov        dword ptr [ebp-4],eax
 0055E9D0    xor        eax,eax
 0055E9D2    push       ebp
 0055E9D3    push       55EA3D
 0055E9D8    push       dword ptr fs:[eax]
 0055E9DB    mov        dword ptr fs:[eax],esp
 0055E9DE    xor        eax,eax
 0055E9E0    push       ebp
 0055E9E1    push       55EA10
 0055E9E6    push       dword ptr fs:[eax]
 0055E9E9    mov        dword ptr fs:[eax],esp
 0055E9EC    lea        ecx,[ebp-0C]
 0055E9EF    mov        edx,dword ptr [ebp-8]
 0055E9F2    mov        eax,dword ptr [ebp-4]
 0055E9F5    mov        ebx,dword ptr [eax]
 0055E9F7    call       dword ptr [ebx+4]; TZASAStatement.sub_0055E4B8
 0055E9FA    mov        edx,dword ptr [ebp-0C]
 0055E9FD    mov        eax,dword ptr [ebp-4]
 0055EA00    mov        ecx,dword ptr [eax]
 0055EA02    call       dword ptr [ecx]; TZASAStatement.sub_004DFE2C
 0055EA04    mov        bl,1
 0055EA06    xor        eax,eax
 0055EA08    pop        edx
 0055EA09    pop        ecx
 0055EA0A    pop        ecx
 0055EA0B    mov        dword ptr fs:[eax],edx
>0055EA0E    jmp        0055EA27
<0055EA10    jmp        @HandleAnyException
 0055EA15    mov        edx,dword ptr [ebp-8]
 0055EA18    mov        eax,dword ptr [ebp-4]
 0055EA1B    mov        ecx,dword ptr [eax]
 0055EA1D    call       dword ptr [ecx+8]; TZASAStatement.sub_0055E8A4
 0055EA20    xor        ebx,ebx
 0055EA22    call       @DoneExcept
 0055EA27    xor        eax,eax
 0055EA29    pop        edx
 0055EA2A    pop        ecx
 0055EA2B    pop        ecx
 0055EA2C    mov        dword ptr fs:[eax],edx
 0055EA2F    push       55EA44
 0055EA34    lea        eax,[ebp-0C]
 0055EA37    call       @IntfClear
 0055EA3C    ret
<0055EA3D    jmp        @HandleFinally
<0055EA42    jmp        0055EA34
 0055EA44    mov        eax,ebx
 0055EA46    pop        edi
 0055EA47    pop        esi
 0055EA48    pop        ebx
 0055EA49    mov        esp,ebp
 0055EA4B    pop        ebp
 0055EA4C    ret
*}
//end;

//0055EA50
//constructor TZASAPreparedStatement.Create(?:TZASAPreparedStatement; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 0055EA50    push       ebp
 0055EA51    mov        ebp,esp
 0055EA53    push       0
 0055EA55    push       0
 0055EA57    push       0
 0055EA59    push       0
 0055EA5B    push       0
 0055EA5D    push       ebx
 0055EA5E    push       esi
 0055EA5F    push       edi
 0055EA60    test       dl,dl
>0055EA62    je         0055EA6C
 0055EA64    add        esp,0FFFFFFF0
 0055EA67    call       @ClassCreate
 0055EA6C    mov        dword ptr [ebp-4],ecx
 0055EA6F    mov        ebx,edx
 0055EA71    mov        edi,eax
 0055EA73    mov        esi,dword ptr [ebp+0C]
 0055EA76    mov        eax,dword ptr [ebp-4]
 0055EA79    call       @IntfAddRef
 0055EA7E    xor        eax,eax
 0055EA80    push       ebp
 0055EA81    push       55EBCC
 0055EA86    push       dword ptr fs:[eax]
 0055EA89    mov        dword ptr fs:[eax],esp
 0055EA8C    push       esi
 0055EA8D    mov        eax,dword ptr [ebp+8]
 0055EA90    push       eax
 0055EA91    mov        ecx,dword ptr [ebp-4]
 0055EA94    xor        edx,edx
 0055EA96    mov        eax,edi
 0055EA98    call       004E0088
 0055EA9D    lea        eax,[edi+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EAA0    mov        edx,dword ptr [ebp-4]
 0055EAA3    mov        ecx,55EBF4; ['{FAAAFCE0-F550-4098-96C6-580145813EBF}']
 0055EAA8    call       @IntfCast
 0055EAAD    mov        dword ptr [edi+28],14; TZASAPreparedStatement.?f28:dword
 0055EAB4    mov        byte ptr [edi+2C],1; TZASAPreparedStatement.?f2C:byte
 0055EAB8    mov        byte ptr [edi+2D],2; TZASAPreparedStatement.?f2D:byte
 0055EABC    lea        eax,[ebp-8]
 0055EABF    push       eax
 0055EAC0    mov        eax,edi
 0055EAC2    test       eax,eax
>0055EAC4    je         0055EAC9
 0055EAC6    sub        eax,0FFFFFFBC
 0055EAC9    mov        ecx,55EC0C; 'true'
 0055EACE    mov        edx,55EC1C; 'cashedblob'
 0055EAD3    call       004D30D4
 0055EAD8    mov        eax,dword ptr [ebp-8]
 0055EADB    call       004BEFC0
 0055EAE0    mov        byte ptr [edi+60],al; TZASAPreparedStatement.?f60:byte
 0055EAE3    lea        edx,[ebp-0C]
 0055EAE6    mov        eax,0C
 0055EAEB    call       00557358
 0055EAF0    mov        edx,dword ptr [ebp-0C]
 0055EAF3    lea        eax,[edi+30]; TZASAPreparedStatement.?f30:String
 0055EAF6    call       @LStrAsg
 0055EAFB    mov        eax,dword ptr [edi+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EAFE    mov        edx,dword ptr [eax]
 0055EB00    call       dword ptr [edx+94]
 0055EB06    push       eax
 0055EB07    mov        eax,dword ptr [edi+30]; TZASAPreparedStatement.?f30:String
 0055EB0A    push       eax
 0055EB0B    push       14
 0055EB0D    lea        edx,[ebp-10]
 0055EB10    mov        eax,dword ptr [edi+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EB13    mov        ecx,dword ptr [eax]
 0055EB15    call       dword ptr [ecx+98]
 0055EB1B    mov        ecx,dword ptr [ebp-10]
 0055EB1E    mov        dl,1
 0055EB20    mov        eax,[00550BF8]; TZASASQLDA
 0055EB25    call       TZASASQLDA.Create; TZASASQLDA.Create
 0055EB2A    mov        edx,eax
 0055EB2C    test       edx,edx
>0055EB2E    je         0055EB33
 0055EB30    sub        edx,0FFFFFFE0
 0055EB33    lea        eax,[edi+68]; TZASAPreparedStatement.?f68:IZASASQLDA
 0055EB36    call       @IntfCopy
 0055EB3B    mov        eax,dword ptr [edi+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EB3E    mov        edx,dword ptr [eax]
 0055EB40    call       dword ptr [edx+94]
 0055EB46    push       eax
 0055EB47    mov        eax,dword ptr [edi+30]; TZASAPreparedStatement.?f30:String
 0055EB4A    push       eax
 0055EB4B    push       14
 0055EB4D    lea        edx,[ebp-14]
 0055EB50    mov        eax,dword ptr [edi+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EB53    mov        ecx,dword ptr [eax]
 0055EB55    call       dword ptr [ecx+98]
 0055EB5B    mov        ecx,dword ptr [ebp-14]
 0055EB5E    mov        dl,1
 0055EB60    mov        eax,[00550BF8]; TZASASQLDA
 0055EB65    call       TZASASQLDA.Create; TZASASQLDA.Create
 0055EB6A    mov        edx,eax
 0055EB6C    test       edx,edx
>0055EB6E    je         0055EB73
 0055EB70    sub        edx,0FFFFFFE0
 0055EB73    lea        eax,[edi+6C]; TZASAPreparedStatement.?f6C:IZASASQLDA
 0055EB76    call       @IntfCopy
 0055EB7B    push       esi
 0055EB7C    lea        eax,[edi+62]; TZASAPreparedStatement.?f62:word
 0055EB7F    push       eax
 0055EB80    lea        eax,[edi+71]; TZASAPreparedStatement.?f71:?
 0055EB83    push       eax
 0055EB84    lea        eax,[edi+70]; TZASAPreparedStatement.?f70:byte
 0055EB87    push       eax
 0055EB88    mov        ecx,dword ptr [edi+68]; TZASAPreparedStatement.?f68:IZASASQLDA
 0055EB8B    mov        edx,dword ptr [edi+6C]; TZASAPreparedStatement.?f6C:IZASASQLDA
 0055EB8E    mov        eax,dword ptr [edi+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EB91    call       005569C4
 0055EB96    xor        eax,eax
 0055EB98    pop        edx
 0055EB99    pop        ecx
 0055EB9A    pop        ecx
 0055EB9B    mov        dword ptr fs:[eax],edx
 0055EB9E    push       55EBD3
 0055EBA3    lea        eax,[ebp-14]
 0055EBA6    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055EBAC    mov        ecx,2
 0055EBB1    call       @FinalizeArray
 0055EBB6    lea        eax,[ebp-0C]
 0055EBB9    mov        edx,2
 0055EBBE    call       @LStrArrayClr
 0055EBC3    lea        eax,[ebp-4]
 0055EBC6    call       @IntfClear
 0055EBCB    ret
<0055EBCC    jmp        @HandleFinally
<0055EBD1    jmp        0055EBA3
 0055EBD3    mov        eax,edi
 0055EBD5    test       bl,bl
>0055EBD7    je         0055EBE8
 0055EBD9    call       @AfterConstruction
 0055EBDE    pop        dword ptr fs:[0]
 0055EBE5    add        esp,0C
 0055EBE8    mov        eax,edi
 0055EBEA    pop        edi
 0055EBEB    pop        esi
 0055EBEC    pop        ebx
 0055EBED    mov        esp,ebp
 0055EBEF    pop        ebp
 0055EBF0    ret        8
*}
//end;

//0055EC28
destructor TZASAPreparedStatement.Destroy;
begin
{*
 0055EC28    push       ebp
 0055EC29    mov        ebp,esp
 0055EC2B    push       ebx
 0055EC2C    push       esi
 0055EC2D    call       @BeforeDestruction
 0055EC32    mov        ebx,edx
 0055EC34    mov        esi,eax
 0055EC36    lea        eax,[esi+6C]; TZASAPreparedStatement.?f6C:IZASASQLDA
 0055EC39    call       @IntfClear
 0055EC3E    lea        eax,[esi+68]; TZASAPreparedStatement.?f68:IZASASQLDA
 0055EC41    call       @IntfClear
 0055EC46    mov        edx,ebx
 0055EC48    and        dl,0FC
 0055EC4B    mov        eax,esi
 0055EC4D    call       TZAbstractPreparedStatement.Destroy
 0055EC52    test       bl,bl
>0055EC54    jle        0055EC5D
 0055EC56    mov        eax,esi
 0055EC58    call       @ClassDestroy
 0055EC5D    pop        esi
 0055EC5E    pop        ebx
 0055EC5F    pop        ebp
 0055EC60    ret
*}
end;

//0055EC64
procedure sub_0055EC64;
begin
{*
 0055EC64    push       ebp
 0055EC65    mov        ebp,esp
 0055EC67    push       0
 0055EC69    push       0
 0055EC6B    push       ebx
 0055EC6C    push       esi
 0055EC6D    mov        ebx,eax
 0055EC6F    xor        eax,eax
 0055EC71    push       ebp
 0055EC72    push       55ED1B
 0055EC77    push       dword ptr fs:[eax]
 0055EC7A    mov        dword ptr fs:[eax],esp
 0055EC7D    cmp        byte ptr [ebx+40],0; TZASAPreparedStatement.?f40:byte
>0055EC81    jne        0055ECB9
 0055EC83    lea        edx,[ebp-4]
 0055EC86    mov        eax,dword ptr [ebx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EC89    mov        ecx,dword ptr [eax]
 0055EC8B    call       dword ptr [ecx+98]
 0055EC91    mov        eax,dword ptr [ebp-4]
 0055EC94    push       eax
 0055EC95    mov        eax,dword ptr [ebx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EC98    mov        edx,dword ptr [eax]
 0055EC9A    call       dword ptr [edx+94]
 0055ECA0    push       eax
 0055ECA1    mov        eax,dword ptr [ebx+30]; TZASAPreparedStatement.?f30:String
 0055ECA4    call       @LStrToPChar
 0055ECA9    mov        ecx,eax
 0055ECAB    pop        edx
 0055ECAC    pop        eax
 0055ECAD    mov        esi,dword ptr [eax]
 0055ECAF    call       dword ptr [esi+80]
 0055ECB5    mov        byte ptr [ebx+40],0; TZASAPreparedStatement.?f40:byte
 0055ECB9    cmp        word ptr [ebx+62],0; TZASAPreparedStatement.?f62:word
>0055ECBE    je         0055ECF3
 0055ECC0    push       0
 0055ECC2    lea        eax,[ebx+62]; TZASAPreparedStatement.?f62:word
 0055ECC5    push       eax
 0055ECC6    lea        edx,[ebp-8]
 0055ECC9    mov        eax,dword ptr [ebx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055ECCC    mov        ecx,dword ptr [eax]
 0055ECCE    call       dword ptr [ecx+98]
 0055ECD4    mov        eax,dword ptr [ebp-8]
 0055ECD7    push       eax
 0055ECD8    mov        eax,dword ptr [ebx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055ECDB    mov        edx,dword ptr [eax]
 0055ECDD    call       dword ptr [edx+94]
 0055ECE3    mov        edx,eax
 0055ECE5    xor        ecx,ecx
 0055ECE7    pop        eax
 0055ECE8    mov        esi,dword ptr [eax]
 0055ECEA    call       dword ptr [esi+78]
 0055ECED    mov        word ptr [ebx+62],0; TZASAPreparedStatement.?f62:word
 0055ECF3    mov        eax,ebx
 0055ECF5    call       004DFEB4
 0055ECFA    xor        eax,eax
 0055ECFC    pop        edx
 0055ECFD    pop        ecx
 0055ECFE    pop        ecx
 0055ECFF    mov        dword ptr fs:[eax],edx
 0055ED02    push       55ED22
 0055ED07    lea        eax,[ebp-8]
 0055ED0A    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055ED10    mov        ecx,2
 0055ED15    call       @FinalizeArray
 0055ED1A    ret
<0055ED1B    jmp        @HandleFinally
<0055ED20    jmp        0055ED07
 0055ED22    pop        esi
 0055ED23    pop        ebx
 0055ED24    pop        ecx
 0055ED25    pop        ecx
 0055ED26    pop        ebp
 0055ED27    ret
*}
end;

//0055ED28
procedure sub_0055ED28;
begin
{*
 0055ED28    push       ebp
 0055ED29    mov        ebp,esp
 0055ED2B    push       0
 0055ED2D    push       0
 0055ED2F    push       0
 0055ED31    push       ebx
 0055ED32    mov        ebx,eax
 0055ED34    xor        eax,eax
 0055ED36    push       ebp
 0055ED37    push       55EDC9
 0055ED3C    push       dword ptr fs:[eax]
 0055ED3F    mov        dword ptr fs:[eax],esp
 0055ED42    lea        eax,[ebp-4]
 0055ED45    mov        edx,dword ptr [ebx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055ED48    call       @IntfCopy
 0055ED4D    lea        edx,[ebp-8]
 0055ED50    mov        eax,dword ptr [ebp-4]
 0055ED53    mov        ecx,dword ptr [eax]
 0055ED55    call       dword ptr [ecx+98]
 0055ED5B    mov        eax,dword ptr [ebp-8]
 0055ED5E    push       eax
 0055ED5F    mov        eax,dword ptr [ebp-4]
 0055ED62    mov        edx,dword ptr [eax]
 0055ED64    call       dword ptr [edx+94]
 0055ED6A    mov        edx,eax
 0055ED6C    pop        eax
 0055ED6D    mov        ecx,dword ptr [eax]
 0055ED6F    call       dword ptr [ecx+0C0]
 0055ED75    mov        eax,dword ptr [ebx+48]; TZASAPreparedStatement.?f48:String
 0055ED78    push       eax
 0055ED79    lea        edx,[ebp-0C]
 0055ED7C    mov        eax,dword ptr [ebp-4]
 0055ED7F    mov        ecx,dword ptr [eax]
 0055ED81    call       dword ptr [ecx+98]
 0055ED87    mov        eax,dword ptr [ebp-0C]
 0055ED8A    push       eax
 0055ED8B    mov        eax,dword ptr [ebp-4]
 0055ED8E    mov        edx,dword ptr [eax]
 0055ED90    call       dword ptr [edx+94]
 0055ED96    mov        edx,eax
 0055ED98    mov        cl,3
 0055ED9A    pop        eax
 0055ED9B    call       00556588
 0055EDA0    xor        eax,eax
 0055EDA2    pop        edx
 0055EDA3    pop        ecx
 0055EDA4    pop        ecx
 0055EDA5    mov        dword ptr fs:[eax],edx
 0055EDA8    push       55EDD0
 0055EDAD    lea        eax,[ebp-0C]
 0055EDB0    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055EDB6    mov        ecx,2
 0055EDBB    call       @FinalizeArray
 0055EDC0    lea        eax,[ebp-4]
 0055EDC3    call       @IntfClear
 0055EDC8    ret
<0055EDC9    jmp        @HandleFinally
<0055EDCE    jmp        0055EDAD
 0055EDD0    pop        ebx
 0055EDD1    mov        esp,ebp
 0055EDD3    pop        ebp
 0055EDD4    ret
*}
end;

//0055EDD8
procedure sub_0055EDD8();
begin
{*
 0055EDD8    push       ebp
 0055EDD9    mov        ebp,esp
 0055EDDB    call       004DFF00
 0055EDE0    pop        ebp
 0055EDE1    ret
*}
end;

//0055EDE4
procedure sub_0055EDE4();
begin
{*
 0055EDE4    push       ebp
 0055EDE5    mov        ebp,esp
 0055EDE7    call       004DFF04
 0055EDEC    pop        ebp
 0055EDED    ret
*}
end;

//0055EDF0
//function sub_0055EDF0:?;
//begin
{*
 0055EDF0    push       ebp
 0055EDF1    mov        ebp,esp
 0055EDF3    xor        ecx,ecx
 0055EDF5    push       ecx
 0055EDF6    push       ecx
 0055EDF7    push       ecx
 0055EDF8    push       ecx
 0055EDF9    push       ebx
 0055EDFA    push       esi
 0055EDFB    mov        ebx,eax
 0055EDFD    xor        eax,eax
 0055EDFF    push       ebp
 0055EE00    push       55EED6
 0055EE05    push       dword ptr fs:[eax]
 0055EE08    mov        dword ptr fs:[eax],esp
 0055EE0B    mov        al,byte ptr [ebx+70]; TZASAPreparedStatement.?f70:byte
 0055EE0E    mov        byte ptr [ebp-1],al
 0055EE11    test       al,al
>0055EE13    je         0055EEAD
 0055EE19    lea        eax,[ebp-8]
 0055EE1C    mov        edx,dword ptr [ebx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EE1F    call       @IntfCopy
 0055EE24    lea        edx,[ebp-0C]
 0055EE27    mov        eax,dword ptr [ebp-8]
 0055EE2A    mov        ecx,dword ptr [eax]
 0055EE2C    call       dword ptr [ecx+98]
 0055EE32    mov        eax,dword ptr [ebp-0C]
 0055EE35    push       eax
 0055EE36    mov        eax,dword ptr [ebp-8]
 0055EE39    mov        edx,dword ptr [eax]
 0055EE3B    call       dword ptr [edx+94]
 0055EE41    push       eax
 0055EE42    mov        eax,dword ptr [ebx+30]; TZASAPreparedStatement.?f30:String
 0055EE45    call       @LStrToPChar
 0055EE4A    mov        ecx,eax
 0055EE4C    pop        edx
 0055EE4D    pop        eax
 0055EE4E    mov        esi,dword ptr [eax]
 0055EE50    call       dword ptr [esi+0BC]
 0055EE56    push       0
 0055EE58    lea        edx,[ebp-10]
 0055EE5B    mov        eax,dword ptr [ebp-8]
 0055EE5E    mov        ecx,dword ptr [eax]
 0055EE60    call       dword ptr [ecx+98]
 0055EE66    mov        eax,dword ptr [ebp-10]
 0055EE69    push       eax
 0055EE6A    mov        eax,dword ptr [ebp-8]
 0055EE6D    mov        edx,dword ptr [eax]
 0055EE6F    call       dword ptr [edx+94]
 0055EE75    mov        edx,eax
 0055EE77    mov        cl,3
 0055EE79    pop        eax
 0055EE7A    call       00556588
 0055EE7F    mov        eax,dword ptr [ebp-8]
 0055EE82    mov        edx,dword ptr [eax]
 0055EE84    call       dword ptr [edx+94]
 0055EE8A    cmp        dword ptr [eax+0C],69
>0055EE8E    jne        0055EE96
 0055EE90    mov        byte ptr [ebp-1],0
>0055EE94    jmp        0055EEAD
 0055EE96    push       0
 0055EE98    mov        edx,dword ptr [ebx+6C]; TZASAPreparedStatement.?f6C:IZASASQLDA
 0055EE9B    test       edx,edx
>0055EE9D    je         0055EEA2
 0055EE9F    sub        edx,0FFFFFFE0
 0055EEA2    mov        ecx,dword ptr [ebx+30]; TZASAPreparedStatement.?f30:String
 0055EEA5    mov        eax,dword ptr [ebx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EEA8    call       005567D0
 0055EEAD    xor        eax,eax
 0055EEAF    pop        edx
 0055EEB0    pop        ecx
 0055EEB1    pop        ecx
 0055EEB2    mov        dword ptr fs:[eax],edx
 0055EEB5    push       55EEDD
 0055EEBA    lea        eax,[ebp-10]
 0055EEBD    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055EEC3    mov        ecx,2
 0055EEC8    call       @FinalizeArray
 0055EECD    lea        eax,[ebp-8]
 0055EED0    call       @IntfClear
 0055EED5    ret
<0055EED6    jmp        @HandleFinally
<0055EEDB    jmp        0055EEBA
 0055EEDD    mov        al,byte ptr [ebp-1]
 0055EEE0    pop        esi
 0055EEE1    pop        ebx
 0055EEE2    mov        esp,ebp
 0055EEE4    pop        ebp
 0055EEE5    ret
*}
//end;

//0055EEE8
//procedure sub_0055EEE8(?:?);
//begin
{*
 0055EEE8    push       ebp
 0055EEE9    mov        ebp,esp
 0055EEEB    push       ebx
 0055EEEC    push       esi
 0055EEED    mov        esi,edx
 0055EEEF    mov        ebx,eax
 0055EEF1    mov        eax,dword ptr [ebx+48]; TZASAPreparedStatement.?f48:String
 0055EEF4    mov        edx,esi
 0055EEF6    call       @LStrCmp
>0055EEFB    je         0055EF29
 0055EEFD    mov        eax,ebx
 0055EEFF    mov        edx,dword ptr [eax]
 0055EF01    call       dword ptr [edx+0C]; TZASAPreparedStatement.sub_0055EC64
 0055EF04    lea        eax,[ebx+48]; TZASAPreparedStatement.?f48:String
 0055EF07    mov        edx,esi
 0055EF09    call       @LStrAsg
 0055EF0E    push       esi
 0055EF0F    lea        eax,[ebx+62]; TZASAPreparedStatement.?f62:word
 0055EF12    push       eax
 0055EF13    lea        eax,[ebx+71]; TZASAPreparedStatement.?f71:?
 0055EF16    push       eax
 0055EF17    lea        eax,[ebx+70]; TZASAPreparedStatement.?f70:byte
 0055EF1A    push       eax
 0055EF1B    mov        ecx,dword ptr [ebx+68]; TZASAPreparedStatement.?f68:IZASASQLDA
 0055EF1E    mov        edx,dword ptr [ebx+6C]; TZASAPreparedStatement.?f6C:IZASASQLDA
 0055EF21    mov        eax,dword ptr [ebx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EF24    call       005569C4
 0055EF29    mov        eax,ebx
 0055EF2B    mov        edx,dword ptr [eax]
 0055EF2D    call       dword ptr [edx+88]; TZASAPreparedStatement.sub_0055EF38
 0055EF33    pop        esi
 0055EF34    pop        ebx
 0055EF35    pop        ebp
 0055EF36    ret
*}
//end;

//0055EF38
//function sub_0055EF38:?;
//begin
{*
 0055EF38    push       ebp
 0055EF39    mov        ebp,esp
 0055EF3B    push       0
 0055EF3D    push       ebx
 0055EF3E    mov        ebx,eax
 0055EF40    xor        eax,eax
 0055EF42    push       ebp
 0055EF43    push       55EF9F
 0055EF48    push       dword ptr fs:[eax]
 0055EF4B    mov        dword ptr fs:[eax],esp
 0055EF4E    cmp        byte ptr [ebx+70],0; TZASAPreparedStatement.?f70:byte
>0055EF52    jne        0055EF63
 0055EF54    mov        eax,dword ptr [ebx+6C]; TZASAPreparedStatement.?f6C:IZASASQLDA
 0055EF57    mov        edx,dword ptr [eax]
 0055EF59    call       dword ptr [edx+18]
 0055EF5C    cmp        word ptr [eax+0E],0
>0055EF61    jbe        0055EF7D
 0055EF63    lea        edx,[ebp-4]
 0055EF66    mov        eax,ebx
 0055EF68    mov        ecx,dword ptr [eax]
 0055EF6A    call       dword ptr [ecx+80]; TZASAPreparedStatement.sub_0055F004
 0055EF70    mov        edx,dword ptr [ebp-4]
 0055EF73    mov        eax,ebx
 0055EF75    mov        ecx,dword ptr [eax]
 0055EF77    call       dword ptr [ecx]; TZASAPreparedStatement.sub_004DFE2C
 0055EF79    mov        bl,1
>0055EF7B    jmp        0055EF89
 0055EF7D    mov        eax,ebx
 0055EF7F    mov        edx,dword ptr [eax]
 0055EF81    call       dword ptr [edx+84]; TZASAPreparedStatement.sub_0055F2F0
 0055EF87    xor        ebx,ebx
 0055EF89    xor        eax,eax
 0055EF8B    pop        edx
 0055EF8C    pop        ecx
 0055EF8D    pop        ecx
 0055EF8E    mov        dword ptr fs:[eax],edx
 0055EF91    push       55EFA6
 0055EF96    lea        eax,[ebp-4]
 0055EF99    call       @IntfClear
 0055EF9E    ret
<0055EF9F    jmp        @HandleFinally
<0055EFA4    jmp        0055EF96
 0055EFA6    mov        eax,ebx
 0055EFA8    pop        ebx
 0055EFA9    pop        ecx
 0055EFAA    pop        ebp
 0055EFAB    ret
*}
//end;

//0055EFAC
//procedure sub_0055EFAC(?:?; ?:?);
//begin
{*
 0055EFAC    push       ebp
 0055EFAD    mov        ebp,esp
 0055EFAF    push       ebx
 0055EFB0    push       esi
 0055EFB1    push       edi
 0055EFB2    mov        edi,ecx
 0055EFB4    mov        esi,edx
 0055EFB6    mov        ebx,eax
 0055EFB8    mov        eax,dword ptr [ebx+48]; TZASAPreparedStatement.?f48:String
 0055EFBB    mov        edx,esi
 0055EFBD    call       @LStrCmp
>0055EFC2    je         0055EFF0
 0055EFC4    mov        eax,ebx
 0055EFC6    mov        edx,dword ptr [eax]
 0055EFC8    call       dword ptr [edx+0C]; TZASAPreparedStatement.sub_0055EC64
 0055EFCB    lea        eax,[ebx+48]; TZASAPreparedStatement.?f48:String
 0055EFCE    mov        edx,esi
 0055EFD0    call       @LStrAsg
 0055EFD5    push       esi
 0055EFD6    lea        eax,[ebx+62]; TZASAPreparedStatement.?f62:word
 0055EFD9    push       eax
 0055EFDA    lea        eax,[ebx+71]; TZASAPreparedStatement.?f71:?
 0055EFDD    push       eax
 0055EFDE    lea        eax,[ebx+70]; TZASAPreparedStatement.?f70:byte
 0055EFE1    push       eax
 0055EFE2    mov        ecx,dword ptr [ebx+68]; TZASAPreparedStatement.?f68:IZASASQLDA
 0055EFE5    mov        edx,dword ptr [ebx+6C]; TZASAPreparedStatement.?f6C:IZASASQLDA
 0055EFE8    mov        eax,dword ptr [ebx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055EFEB    call       005569C4
 0055EFF0    mov        edx,edi
 0055EFF2    mov        eax,ebx
 0055EFF4    mov        ecx,dword ptr [eax]
 0055EFF6    call       dword ptr [ecx+80]; TZASAPreparedStatement.sub_0055F004
 0055EFFC    pop        edi
 0055EFFD    pop        esi
 0055EFFE    pop        ebx
 0055EFFF    pop        ebp
 0055F000    ret
*}
//end;

//0055F004
//procedure sub_0055F004(?:?);
//begin
{*
 0055F004    push       ebp
 0055F005    mov        ebp,esp
 0055F007    xor        ecx,ecx
 0055F009    push       ecx
 0055F00A    push       ecx
 0055F00B    push       ecx
 0055F00C    push       ecx
 0055F00D    push       ecx
 0055F00E    push       ecx
 0055F00F    push       ecx
 0055F010    push       ecx
 0055F011    push       ebx
 0055F012    push       esi
 0055F013    push       edi
 0055F014    mov        esi,edx
 0055F016    mov        dword ptr [ebp-4],eax
 0055F019    xor        eax,eax
 0055F01B    push       ebp
 0055F01C    push       55F292
 0055F021    push       dword ptr fs:[eax]
 0055F024    mov        dword ptr fs:[eax],esp
 0055F027    lea        eax,[ebp-0C]
 0055F02A    mov        edx,dword ptr [ebp-4]
 0055F02D    mov        edx,dword ptr [edx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055F030    call       @IntfCopy
 0055F035    mov        eax,dword ptr [ebp-4]
 0055F038    mov        eax,dword ptr [eax+58]; TZASAPreparedStatement.?f58:dword
 0055F03B    push       eax
 0055F03C    mov        eax,dword ptr [ebp-4]
 0055F03F    mov        eax,dword ptr [eax+68]; TZASAPreparedStatement.?f68:IZASASQLDA
 0055F042    push       eax
 0055F043    lea        edx,[ebp-10]
 0055F046    mov        eax,dword ptr [ebp-0C]
 0055F049    mov        ecx,dword ptr [eax]
 0055F04B    call       dword ptr [ecx+98]
 0055F051    mov        eax,dword ptr [ebp-10]
 0055F054    mov        edx,dword ptr [ebp-4]
 0055F057    mov        ecx,dword ptr [edx+50]; TZASAPreparedStatement.?f50:TZSQLTypeArray
 0055F05A    mov        edx,dword ptr [ebp-4]
 0055F05D    mov        edx,dword ptr [edx+4C]; TZASAPreparedStatement.?f4C:TZVariantDynArray
 0055F060    call       00556DA0
 0055F065    mov        eax,dword ptr [ebp-4]
 0055F068    cmp        byte ptr [eax+2C],1; TZASAPreparedStatement.?f2C:byte
>0055F06C    jne        0055F074
 0055F06E    mov        bx,1020
>0055F072    jmp        0055F078
 0055F074    mov        bx,22
 0055F078    mov        eax,dword ptr [ebp-4]
 0055F07B    cmp        byte ptr [eax+2D],1; TZASAPreparedStatement.?f2D:byte
>0055F07F    jne        0055F0A8
 0055F081    movsx      eax,bx
 0055F084    add        eax,400
>0055F089    jno        0055F090
 0055F08B    call       @IntOver
 0055F090    add        eax,8000
 0055F095    cmp        eax,0FFFF
>0055F09A    jbe        0055F0A1
 0055F09C    call       @BoundErr
 0055F0A1    add        eax,0FFFF8000
 0055F0A6    mov        ebx,eax
 0055F0A8    lea        eax,[ebp-8]
 0055F0AB    mov        edx,dword ptr [ebp-4]
 0055F0AE    mov        edx,dword ptr [edx+30]; TZASAPreparedStatement.?f30:String
 0055F0B1    call       @LStrLAsg
 0055F0B6    push       0
 0055F0B8    mov        eax,dword ptr [ebp-4]
 0055F0BB    add        eax,62; TZASAPreparedStatement.?f62:word
 0055F0BE    push       eax
 0055F0BF    mov        eax,dword ptr [ebp-4]
 0055F0C2    mov        eax,dword ptr [eax+68]; TZASAPreparedStatement.?f68:IZASASQLDA
 0055F0C5    mov        edx,dword ptr [eax]
 0055F0C7    call       dword ptr [edx+18]
 0055F0CA    push       eax
 0055F0CB    mov        eax,dword ptr [ebp-4]
 0055F0CE    mov        eax,dword ptr [eax+28]; TZASAPreparedStatement.?f28:dword
 0055F0D1    add        eax,8000
 0055F0D6    cmp        eax,0FFFF
>0055F0DB    jbe        0055F0E2
 0055F0DD    call       @BoundErr
 0055F0E2    add        eax,0FFFF8000
 0055F0E7    push       eax
 0055F0E8    push       0
 0055F0EA    movsx      eax,bx
 0055F0ED    cmp        eax,0FFFF
>0055F0F2    jbe        0055F0F9
 0055F0F4    call       @BoundErr
 0055F0F9    push       eax
 0055F0FA    lea        edx,[ebp-14]
 0055F0FD    mov        eax,dword ptr [ebp-0C]
 0055F100    mov        ecx,dword ptr [eax]
 0055F102    call       dword ptr [ecx+98]
 0055F108    mov        eax,dword ptr [ebp-14]
 0055F10B    push       eax
 0055F10C    mov        eax,dword ptr [ebp-0C]
 0055F10F    mov        edx,dword ptr [eax]
 0055F111    call       dword ptr [edx+94]
 0055F117    push       eax
 0055F118    mov        eax,dword ptr [ebp-8]
 0055F11B    call       @LStrToPChar
 0055F120    mov        ecx,eax
 0055F122    pop        edx
 0055F123    pop        eax
 0055F124    mov        ebx,dword ptr [eax]
 0055F126    call       dword ptr [ebx+7C]
 0055F129    mov        eax,dword ptr [ebp-4]
 0055F12C    mov        eax,dword ptr [eax+48]; TZASAPreparedStatement.?f48:String
 0055F12F    push       eax
 0055F130    lea        edx,[ebp-18]
 0055F133    mov        eax,dword ptr [ebp-0C]
 0055F136    mov        ecx,dword ptr [eax]
 0055F138    call       dword ptr [ecx+98]
 0055F13E    mov        eax,dword ptr [ebp-18]
 0055F141    push       eax
 0055F142    mov        eax,dword ptr [ebp-0C]
 0055F145    mov        edx,dword ptr [eax]
 0055F147    call       dword ptr [edx+94]
 0055F14D    mov        edx,eax
 0055F14F    mov        cl,3
 0055F151    pop        eax
 0055F152    call       00556588
 0055F157    mov        eax,dword ptr [ebp-4]
 0055F15A    mov        byte ptr [eax+40],0; TZASAPreparedStatement.?f40:byte
 0055F15E    xor        edx,edx
 0055F160    push       ebp
 0055F161    push       55F22E
 0055F166    push       dword ptr fs:[edx]
 0055F169    mov        dword ptr fs:[edx],esp
 0055F16C    mov        eax,dword ptr [ebp-4]
 0055F16F    cmp        byte ptr [eax+70],0; TZASAPreparedStatement.?f70:byte
>0055F173    je         0055F192
 0055F175    push       0
 0055F177    mov        eax,dword ptr [ebp-4]
 0055F17A    mov        edx,dword ptr [eax+6C]; TZASAPreparedStatement.?f6C:IZASASQLDA
 0055F17D    test       edx,edx
>0055F17F    je         0055F184
 0055F181    sub        edx,0FFFFFFE0
 0055F184    mov        eax,dword ptr [ebp-4]
 0055F187    mov        eax,dword ptr [eax+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055F18A    mov        ecx,dword ptr [ebp-8]
 0055F18D    call       005567D0
 0055F192    mov        eax,dword ptr [ebp-4]
 0055F195    mov        dword ptr [eax+1C],0FFFFFFFF; TZASAPreparedStatement.?f1C:Integer
 0055F19C    push       esi
 0055F19D    mov        eax,dword ptr [ebp-4]
 0055F1A0    mov        eax,dword ptr [eax+48]; TZASAPreparedStatement.?f48:String
 0055F1A3    push       eax
 0055F1A4    mov        eax,dword ptr [ebp-4]
 0055F1A7    add        eax,62; TZASAPreparedStatement.?f62:word
 0055F1AA    push       eax
 0055F1AB    mov        eax,dword ptr [ebp-8]
 0055F1AE    push       eax
 0055F1AF    mov        eax,dword ptr [ebp-4]
 0055F1B2    mov        eax,dword ptr [eax+6C]; TZASAPreparedStatement.?f6C:IZASASQLDA
 0055F1B5    push       eax
 0055F1B6    push       0
 0055F1B8    mov        eax,dword ptr [ebp-4]
 0055F1BB    mov        al,byte ptr [eax+60]; TZASAPreparedStatement.?f60:byte
 0055F1BE    push       eax
 0055F1BF    mov        ecx,dword ptr [ebp-4]
 0055F1C2    test       ecx,ecx
>0055F1C4    je         0055F1C9
 0055F1C6    sub        ecx,0FFFFFFBC
 0055F1C9    mov        dl,1
 0055F1CB    mov        eax,[0055C124]; TZASAResultSet
 0055F1D0    call       TZASAResultSet.Create; TZASAResultSet.Create
 0055F1D5    mov        ecx,eax
 0055F1D7    test       ecx,ecx
>0055F1D9    je         0055F1DE
 0055F1DB    sub        ecx,0FFFFFFC8
 0055F1DE    mov        edx,dword ptr [ebp-4]
 0055F1E1    test       edx,edx
>0055F1E3    je         0055F1E8
 0055F1E5    sub        edx,0FFFFFFBC
 0055F1E8    mov        eax,dword ptr [ebp-4]
 0055F1EB    mov        eax,dword ptr [eax+48]; TZASAPreparedStatement.?f48:String
 0055F1EE    call       005566C4
 0055F1F3    mov        eax,dword ptr [ebp-4]
 0055F1F6    mov        eax,dword ptr [eax+48]; TZASAPreparedStatement.?f48:String
 0055F1F9    push       eax
 0055F1FA    lea        edx,[ebp-20]
 0055F1FD    mov        eax,dword ptr [ebp-0C]
 0055F200    mov        ecx,dword ptr [eax]
 0055F202    call       dword ptr [ecx+98]
 0055F208    mov        eax,dword ptr [ebp-20]
 0055F20B    lea        edx,[ebp-1C]
 0055F20E    mov        ecx,dword ptr [eax]
 0055F210    call       dword ptr [ecx+0C]
 0055F213    mov        ecx,dword ptr [ebp-1C]
 0055F216    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0055F21B    mov        eax,dword ptr [eax]
 0055F21D    mov        dl,3
 0055F21F    mov        ebx,dword ptr [eax]
 0055F221    call       dword ptr [ebx+3C]
 0055F224    xor        eax,eax
 0055F226    pop        edx
 0055F227    pop        ecx
 0055F228    pop        ecx
 0055F229    mov        dword ptr fs:[eax],edx
>0055F22C    jmp        0055F251
<0055F22E    jmp        @HandleOnException
 0055F233    dd        1
 0055F237    dd        4087B0;Exception
 0055F23B    dd        55F23F
 0055F23F    mov        eax,dword ptr [ebp-4]
 0055F242    mov        edx,dword ptr [eax]
 0055F244    call       dword ptr [edx+0C]; TZASAPreparedStatement.sub_0055EC64
 0055F247    call       @RaiseAgain
 0055F24C    call       @DoneExcept
 0055F251    xor        eax,eax
 0055F253    pop        edx
 0055F254    pop        ecx
 0055F255    pop        ecx
 0055F256    mov        dword ptr fs:[eax],edx
 0055F259    push       55F299
 0055F25E    lea        eax,[ebp-20]
 0055F261    call       @IntfClear
 0055F266    lea        eax,[ebp-1C]
 0055F269    call       @LStrClr
 0055F26E    lea        eax,[ebp-18]
 0055F271    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055F277    mov        ecx,3
 0055F27C    call       @FinalizeArray
 0055F281    lea        eax,[ebp-0C]
 0055F284    call       @IntfClear
 0055F289    lea        eax,[ebp-8]
 0055F28C    call       @LStrClr
 0055F291    ret
<0055F292    jmp        @HandleFinally
<0055F297    jmp        0055F25E
 0055F299    pop        edi
 0055F29A    pop        esi
 0055F29B    pop        ebx
 0055F29C    mov        esp,ebp
 0055F29E    pop        ebp
 0055F29F    ret
*}
//end;

//0055F2A0
//procedure sub_0055F2A0(?:?);
//begin
{*
 0055F2A0    push       ebp
 0055F2A1    mov        ebp,esp
 0055F2A3    push       ebx
 0055F2A4    push       esi
 0055F2A5    mov        esi,edx
 0055F2A7    mov        ebx,eax
 0055F2A9    mov        eax,dword ptr [ebx+48]; TZASAPreparedStatement.?f48:String
 0055F2AC    mov        edx,esi
 0055F2AE    call       @LStrCmp
>0055F2B3    je         0055F2E1
 0055F2B5    mov        eax,ebx
 0055F2B7    mov        edx,dword ptr [eax]
 0055F2B9    call       dword ptr [edx+0C]; TZASAPreparedStatement.sub_0055EC64
 0055F2BC    lea        eax,[ebx+48]; TZASAPreparedStatement.?f48:String
 0055F2BF    mov        edx,esi
 0055F2C1    call       @LStrAsg
 0055F2C6    push       esi
 0055F2C7    lea        eax,[ebx+62]; TZASAPreparedStatement.?f62:word
 0055F2CA    push       eax
 0055F2CB    lea        eax,[ebx+71]; TZASAPreparedStatement.?f71:?
 0055F2CE    push       eax
 0055F2CF    lea        eax,[ebx+70]; TZASAPreparedStatement.?f70:byte
 0055F2D2    push       eax
 0055F2D3    mov        ecx,dword ptr [ebx+68]; TZASAPreparedStatement.?f68:IZASASQLDA
 0055F2D6    mov        edx,dword ptr [ebx+6C]; TZASAPreparedStatement.?f6C:IZASASQLDA
 0055F2D9    mov        eax,dword ptr [ebx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055F2DC    call       005569C4
 0055F2E1    mov        eax,ebx
 0055F2E3    mov        edx,dword ptr [eax]
 0055F2E5    call       dword ptr [edx+84]; TZASAPreparedStatement.sub_0055F2F0
 0055F2EB    pop        esi
 0055F2EC    pop        ebx
 0055F2ED    pop        ebp
 0055F2EE    ret
*}
//end;

//0055F2F0
//function sub_0055F2F0:?;
//begin
{*
 0055F2F0    push       ebp
 0055F2F1    mov        ebp,esp
 0055F2F3    xor        ecx,ecx
 0055F2F5    push       ecx
 0055F2F6    push       ecx
 0055F2F7    push       ecx
 0055F2F8    push       ecx
 0055F2F9    push       ecx
 0055F2FA    push       ecx
 0055F2FB    push       ebx
 0055F2FC    push       esi
 0055F2FD    mov        ebx,eax
 0055F2FF    xor        eax,eax
 0055F301    push       ebp
 0055F302    push       55F43D
 0055F307    push       dword ptr fs:[eax]
 0055F30A    mov        dword ptr fs:[eax],esp
 0055F30D    lea        eax,[ebp-4]
 0055F310    mov        edx,dword ptr [ebx+64]; TZASAPreparedStatement.?f64:IZASAConnection
 0055F313    call       @IntfCopy
 0055F318    mov        eax,dword ptr [ebx+58]; TZASAPreparedStatement.?f58:dword
 0055F31B    push       eax
 0055F31C    mov        eax,dword ptr [ebx+68]; TZASAPreparedStatement.?f68:IZASASQLDA
 0055F31F    push       eax
 0055F320    lea        edx,[ebp-8]
 0055F323    mov        eax,dword ptr [ebp-4]
 0055F326    mov        ecx,dword ptr [eax]
 0055F328    call       dword ptr [ecx+98]
 0055F32E    mov        eax,dword ptr [ebp-8]
 0055F331    mov        ecx,dword ptr [ebx+50]; TZASAPreparedStatement.?f50:TZSQLTypeArray
 0055F334    mov        edx,dword ptr [ebx+4C]; TZASAPreparedStatement.?f4C:TZVariantDynArray
 0055F337    call       00556DA0
 0055F33C    push       0
 0055F33E    lea        eax,[ebx+62]; TZASAPreparedStatement.?f62:word
 0055F341    push       eax
 0055F342    mov        eax,dword ptr [ebx+68]; TZASAPreparedStatement.?f68:IZASASQLDA
 0055F345    mov        edx,dword ptr [eax]
 0055F347    call       dword ptr [edx+18]
 0055F34A    push       eax
 0055F34B    push       0
 0055F34D    lea        edx,[ebp-0C]
 0055F350    mov        eax,dword ptr [ebp-4]
 0055F353    mov        ecx,dword ptr [eax]
 0055F355    call       dword ptr [ecx+98]
 0055F35B    mov        eax,dword ptr [ebp-0C]
 0055F35E    push       eax
 0055F35F    mov        eax,dword ptr [ebp-4]
 0055F362    mov        edx,dword ptr [eax]
 0055F364    call       dword ptr [edx+94]
 0055F36A    mov        edx,eax
 0055F36C    xor        ecx,ecx
 0055F36E    pop        eax
 0055F36F    mov        esi,dword ptr [eax]
 0055F371    call       dword ptr [esi+0A4]
 0055F377    mov        eax,dword ptr [ebp-4]
 0055F37A    mov        edx,dword ptr [eax]
 0055F37C    call       dword ptr [edx+94]
 0055F382    cmp        dword ptr [eax+0C],0FFFFFF47
>0055F389    jne        0055F39A
 0055F38B    mov        eax,dword ptr [ebx+6C]; TZASAPreparedStatement.?f6C:IZASASQLDA
 0055F38E    mov        edx,dword ptr [eax]
 0055F390    call       dword ptr [edx+18]
 0055F393    cmp        word ptr [eax+0E],0
>0055F398    jne        0055F3C5
 0055F39A    mov        eax,dword ptr [ebx+48]; TZASAPreparedStatement.?f48:String
 0055F39D    push       eax
 0055F39E    lea        edx,[ebp-10]
 0055F3A1    mov        eax,dword ptr [ebp-4]
 0055F3A4    mov        ecx,dword ptr [eax]
 0055F3A6    call       dword ptr [ecx+98]
 0055F3AC    mov        eax,dword ptr [ebp-10]
 0055F3AF    push       eax
 0055F3B0    mov        eax,dword ptr [ebp-4]
 0055F3B3    mov        edx,dword ptr [eax]
 0055F3B5    call       dword ptr [edx+94]
 0055F3BB    mov        edx,eax
 0055F3BD    mov        cl,3
 0055F3BF    pop        eax
 0055F3C0    call       00556588
 0055F3C5    mov        eax,dword ptr [ebp-4]
 0055F3C8    mov        edx,dword ptr [eax]
 0055F3CA    call       dword ptr [edx+94]
 0055F3D0    mov        esi,dword ptr [eax+68]
 0055F3D3    mov        dword ptr [ebx+1C],esi; TZASAPreparedStatement.?f1C:Integer
 0055F3D6    mov        eax,dword ptr [ebx+48]; TZASAPreparedStatement.?f48:String
 0055F3D9    push       eax
 0055F3DA    lea        edx,[ebp-18]
 0055F3DD    mov        eax,dword ptr [ebp-4]
 0055F3E0    mov        ecx,dword ptr [eax]
 0055F3E2    call       dword ptr [ecx+98]
 0055F3E8    mov        eax,dword ptr [ebp-18]
 0055F3EB    lea        edx,[ebp-14]
 0055F3EE    mov        ecx,dword ptr [eax]
 0055F3F0    call       dword ptr [ecx+0C]
 0055F3F3    mov        ecx,dword ptr [ebp-14]
 0055F3F6    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0055F3FB    mov        eax,dword ptr [eax]
 0055F3FD    mov        dl,3
 0055F3FF    mov        ebx,dword ptr [eax]
 0055F401    call       dword ptr [ebx+3C]
 0055F404    xor        eax,eax
 0055F406    pop        edx
 0055F407    pop        ecx
 0055F408    pop        ecx
 0055F409    mov        dword ptr fs:[eax],edx
 0055F40C    push       55F444
 0055F411    lea        eax,[ebp-18]
 0055F414    call       @IntfClear
 0055F419    lea        eax,[ebp-14]
 0055F41C    call       @LStrClr
 0055F421    lea        eax,[ebp-10]
 0055F424    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055F42A    mov        ecx,3
 0055F42F    call       @FinalizeArray
 0055F434    lea        eax,[ebp-4]
 0055F437    call       @IntfClear
 0055F43C    ret
<0055F43D    jmp        @HandleFinally
<0055F442    jmp        0055F411
 0055F444    mov        eax,esi
 0055F446    pop        esi
 0055F447    pop        ebx
 0055F448    mov        esp,ebp
 0055F44A    pop        ebp
 0055F44B    ret
*}
//end;

//0055F44C
//constructor TZASACallableStatement.Create(?:TZASACallableStatement; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 0055F44C    push       ebp
 0055F44D    mov        ebp,esp
 0055F44F    push       0
 0055F451    push       0
 0055F453    push       0
 0055F455    push       0
 0055F457    push       0
 0055F459    push       ebx
 0055F45A    push       esi
 0055F45B    test       dl,dl
>0055F45D    je         0055F467
 0055F45F    add        esp,0FFFFFFF0
 0055F462    call       @ClassCreate
 0055F467    mov        dword ptr [ebp-4],ecx
 0055F46A    mov        ebx,edx
 0055F46C    mov        esi,eax
 0055F46E    mov        eax,dword ptr [ebp-4]
 0055F471    call       @IntfAddRef
 0055F476    xor        eax,eax
 0055F478    push       ebp
 0055F479    push       55F5B2
 0055F47E    push       dword ptr fs:[eax]
 0055F481    mov        dword ptr fs:[eax],esp
 0055F484    mov        eax,dword ptr [ebp+0C]
 0055F487    push       eax
 0055F488    mov        eax,dword ptr [ebp+8]
 0055F48B    push       eax
 0055F48C    mov        ecx,dword ptr [ebp-4]
 0055F48F    xor        edx,edx
 0055F491    mov        eax,esi
 0055F493    call       004E0C98
 0055F498    lea        eax,[esi+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F49B    mov        edx,dword ptr [ebp-4]
 0055F49E    mov        ecx,55F5D8; ['{FAAAFCE0-F550-4098-96C6-580145813EBF}']
 0055F4A3    call       @IntfCast
 0055F4A8    mov        dword ptr [esi+28],14; TZASACallableStatement.?f28:dword
 0055F4AF    mov        byte ptr [esi+2C],1; TZASACallableStatement.?f2C:byte
 0055F4B3    mov        byte ptr [esi+2D],2; TZASACallableStatement.?f2D:byte
 0055F4B7    lea        eax,[ebp-8]
 0055F4BA    push       eax
 0055F4BB    mov        eax,esi
 0055F4BD    test       eax,eax
>0055F4BF    je         0055F4C4
 0055F4C1    sub        eax,0FFFFFFBC
 0055F4C4    mov        ecx,55F5F0; 'true'
 0055F4C9    mov        edx,55F600; 'cashedblob'
 0055F4CE    call       004D30D4
 0055F4D3    mov        eax,dword ptr [ebp-8]
 0055F4D6    call       004BEFC0
 0055F4DB    mov        byte ptr [esi+78],al; TZASACallableStatement.?f78:byte
 0055F4DE    lea        edx,[ebp-0C]
 0055F4E1    mov        eax,0C
 0055F4E6    call       00557358
 0055F4EB    mov        edx,dword ptr [ebp-0C]
 0055F4EE    lea        eax,[esi+30]; TZASACallableStatement.?f30:String
 0055F4F1    call       @LStrAsg
 0055F4F6    mov        eax,dword ptr [esi+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F4F9    mov        edx,dword ptr [eax]
 0055F4FB    call       dword ptr [edx+94]
 0055F501    push       eax
 0055F502    mov        eax,dword ptr [esi+30]; TZASACallableStatement.?f30:String
 0055F505    push       eax
 0055F506    push       14
 0055F508    lea        edx,[ebp-10]
 0055F50B    mov        eax,dword ptr [esi+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F50E    mov        ecx,dword ptr [eax]
 0055F510    call       dword ptr [ecx+98]
 0055F516    mov        ecx,dword ptr [ebp-10]
 0055F519    mov        dl,1
 0055F51B    mov        eax,[00550BF8]; TZASASQLDA
 0055F520    call       TZASASQLDA.Create; TZASASQLDA.Create
 0055F525    mov        edx,eax
 0055F527    test       edx,edx
>0055F529    je         0055F52E
 0055F52B    sub        edx,0FFFFFFE0
 0055F52E    lea        eax,[esi+80]; TZASACallableStatement.?f80:IZASASQLDA
 0055F534    call       @IntfCopy
 0055F539    mov        eax,dword ptr [esi+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F53C    mov        edx,dword ptr [eax]
 0055F53E    call       dword ptr [edx+94]
 0055F544    push       eax
 0055F545    mov        eax,dword ptr [esi+30]; TZASACallableStatement.?f30:String
 0055F548    push       eax
 0055F549    push       14
 0055F54B    lea        edx,[ebp-14]
 0055F54E    mov        eax,dword ptr [esi+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F551    mov        ecx,dword ptr [eax]
 0055F553    call       dword ptr [ecx+98]
 0055F559    mov        ecx,dword ptr [ebp-14]
 0055F55C    mov        dl,1
 0055F55E    mov        eax,[00550BF8]; TZASASQLDA
 0055F563    call       TZASASQLDA.Create; TZASASQLDA.Create
 0055F568    mov        edx,eax
 0055F56A    test       edx,edx
>0055F56C    je         0055F571
 0055F56E    sub        edx,0FFFFFFE0
 0055F571    lea        eax,[esi+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055F577    call       @IntfCopy
 0055F57C    xor        eax,eax
 0055F57E    pop        edx
 0055F57F    pop        ecx
 0055F580    pop        ecx
 0055F581    mov        dword ptr fs:[eax],edx
 0055F584    push       55F5B9
 0055F589    lea        eax,[ebp-14]
 0055F58C    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055F592    mov        ecx,2
 0055F597    call       @FinalizeArray
 0055F59C    lea        eax,[ebp-0C]
 0055F59F    mov        edx,2
 0055F5A4    call       @LStrArrayClr
 0055F5A9    lea        eax,[ebp-4]
 0055F5AC    call       @IntfClear
 0055F5B1    ret
<0055F5B2    jmp        @HandleFinally
<0055F5B7    jmp        0055F589
 0055F5B9    mov        eax,esi
 0055F5BB    test       bl,bl
>0055F5BD    je         0055F5CE
 0055F5BF    call       @AfterConstruction
 0055F5C4    pop        dword ptr fs:[0]
 0055F5CB    add        esp,0C
 0055F5CE    mov        eax,esi
 0055F5D0    pop        esi
 0055F5D1    pop        ebx
 0055F5D2    mov        esp,ebp
 0055F5D4    pop        ebp
 0055F5D5    ret        8
*}
//end;

//0055F60C
destructor TZASACallableStatement.Destroy;
begin
{*
 0055F60C    push       ebp
 0055F60D    mov        ebp,esp
 0055F60F    push       ebx
 0055F610    push       esi
 0055F611    call       @BeforeDestruction
 0055F616    mov        ebx,edx
 0055F618    mov        esi,eax
 0055F61A    lea        eax,[esi+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055F620    call       @IntfClear
 0055F625    lea        eax,[esi+80]; TZASACallableStatement.?f80:IZASASQLDA
 0055F62B    call       @IntfClear
 0055F630    mov        edx,ebx
 0055F632    and        dl,0FC
 0055F635    mov        eax,esi
 0055F637    call       TZAbstractPreparedStatement.Destroy
 0055F63C    test       bl,bl
>0055F63E    jle        0055F647
 0055F640    mov        eax,esi
 0055F642    call       @ClassDestroy
 0055F647    pop        esi
 0055F648    pop        ebx
 0055F649    pop        ebp
 0055F64A    ret
*}
end;

//0055F64C
procedure sub_0055F64C;
begin
{*
 0055F64C    push       ebp
 0055F64D    mov        ebp,esp
 0055F64F    push       0
 0055F651    push       0
 0055F653    push       ebx
 0055F654    push       esi
 0055F655    mov        ebx,eax
 0055F657    xor        eax,eax
 0055F659    push       ebp
 0055F65A    push       55F703
 0055F65F    push       dword ptr fs:[eax]
 0055F662    mov        dword ptr fs:[eax],esp
 0055F665    cmp        byte ptr [ebx+40],0; TZASACallableStatement.?f40:byte
>0055F669    jne        0055F6A1
 0055F66B    lea        edx,[ebp-4]
 0055F66E    mov        eax,dword ptr [ebx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F671    mov        ecx,dword ptr [eax]
 0055F673    call       dword ptr [ecx+98]
 0055F679    mov        eax,dword ptr [ebp-4]
 0055F67C    push       eax
 0055F67D    mov        eax,dword ptr [ebx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F680    mov        edx,dword ptr [eax]
 0055F682    call       dword ptr [edx+94]
 0055F688    push       eax
 0055F689    mov        eax,dword ptr [ebx+30]; TZASACallableStatement.?f30:String
 0055F68C    call       @LStrToPChar
 0055F691    mov        ecx,eax
 0055F693    pop        edx
 0055F694    pop        eax
 0055F695    mov        esi,dword ptr [eax]
 0055F697    call       dword ptr [esi+80]
 0055F69D    mov        byte ptr [ebx+40],0; TZASACallableStatement.?f40:byte
 0055F6A1    cmp        word ptr [ebx+7A],0; TZASACallableStatement.?f7A:word
>0055F6A6    je         0055F6DB
 0055F6A8    push       0
 0055F6AA    lea        eax,[ebx+7A]; TZASACallableStatement.?f7A:word
 0055F6AD    push       eax
 0055F6AE    lea        edx,[ebp-8]
 0055F6B1    mov        eax,dword ptr [ebx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F6B4    mov        ecx,dword ptr [eax]
 0055F6B6    call       dword ptr [ecx+98]
 0055F6BC    mov        eax,dword ptr [ebp-8]
 0055F6BF    push       eax
 0055F6C0    mov        eax,dword ptr [ebx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F6C3    mov        edx,dword ptr [eax]
 0055F6C5    call       dword ptr [edx+94]
 0055F6CB    mov        edx,eax
 0055F6CD    xor        ecx,ecx
 0055F6CF    pop        eax
 0055F6D0    mov        esi,dword ptr [eax]
 0055F6D2    call       dword ptr [esi+78]
 0055F6D5    mov        word ptr [ebx+7A],0; TZASACallableStatement.?f7A:word
 0055F6DB    mov        eax,ebx
 0055F6DD    call       004DFEB4
 0055F6E2    xor        eax,eax
 0055F6E4    pop        edx
 0055F6E5    pop        ecx
 0055F6E6    pop        ecx
 0055F6E7    mov        dword ptr fs:[eax],edx
 0055F6EA    push       55F70A
 0055F6EF    lea        eax,[ebp-8]
 0055F6F2    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055F6F8    mov        ecx,2
 0055F6FD    call       @FinalizeArray
 0055F702    ret
<0055F703    jmp        @HandleFinally
<0055F708    jmp        0055F6EF
 0055F70A    pop        esi
 0055F70B    pop        ebx
 0055F70C    pop        ecx
 0055F70D    pop        ecx
 0055F70E    pop        ebp
 0055F70F    ret
*}
end;

//0055F710
procedure sub_0055F710;
begin
{*
 0055F710    push       ebp
 0055F711    mov        ebp,esp
 0055F713    push       0
 0055F715    push       0
 0055F717    push       0
 0055F719    push       ebx
 0055F71A    mov        ebx,eax
 0055F71C    xor        eax,eax
 0055F71E    push       ebp
 0055F71F    push       55F7B1
 0055F724    push       dword ptr fs:[eax]
 0055F727    mov        dword ptr fs:[eax],esp
 0055F72A    lea        eax,[ebp-4]
 0055F72D    mov        edx,dword ptr [ebx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F730    call       @IntfCopy
 0055F735    lea        edx,[ebp-8]
 0055F738    mov        eax,dword ptr [ebp-4]
 0055F73B    mov        ecx,dword ptr [eax]
 0055F73D    call       dword ptr [ecx+98]
 0055F743    mov        eax,dword ptr [ebp-8]
 0055F746    push       eax
 0055F747    mov        eax,dword ptr [ebp-4]
 0055F74A    mov        edx,dword ptr [eax]
 0055F74C    call       dword ptr [edx+94]
 0055F752    mov        edx,eax
 0055F754    pop        eax
 0055F755    mov        ecx,dword ptr [eax]
 0055F757    call       dword ptr [ecx+0C0]
 0055F75D    mov        eax,dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 0055F760    push       eax
 0055F761    lea        edx,[ebp-0C]
 0055F764    mov        eax,dword ptr [ebp-4]
 0055F767    mov        ecx,dword ptr [eax]
 0055F769    call       dword ptr [ecx+98]
 0055F76F    mov        eax,dword ptr [ebp-0C]
 0055F772    push       eax
 0055F773    mov        eax,dword ptr [ebp-4]
 0055F776    mov        edx,dword ptr [eax]
 0055F778    call       dword ptr [edx+94]
 0055F77E    mov        edx,eax
 0055F780    mov        cl,3
 0055F782    pop        eax
 0055F783    call       00556588
 0055F788    xor        eax,eax
 0055F78A    pop        edx
 0055F78B    pop        ecx
 0055F78C    pop        ecx
 0055F78D    mov        dword ptr fs:[eax],edx
 0055F790    push       55F7B8
 0055F795    lea        eax,[ebp-0C]
 0055F798    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055F79E    mov        ecx,2
 0055F7A3    call       @FinalizeArray
 0055F7A8    lea        eax,[ebp-4]
 0055F7AB    call       @IntfClear
 0055F7B0    ret
<0055F7B1    jmp        @HandleFinally
<0055F7B6    jmp        0055F795
 0055F7B8    pop        ebx
 0055F7B9    mov        esp,ebp
 0055F7BB    pop        ebp
 0055F7BC    ret
*}
end;

//0055F7C0
procedure sub_0055F7C0();
begin
{*
 0055F7C0    push       ebp
 0055F7C1    mov        ebp,esp
 0055F7C3    call       004DFF00
 0055F7C8    pop        ebp
 0055F7C9    ret
*}
end;

//0055F7CC
procedure sub_0055F7CC();
begin
{*
 0055F7CC    push       ebp
 0055F7CD    mov        ebp,esp
 0055F7CF    call       004DFF04
 0055F7D4    pop        ebp
 0055F7D5    ret
*}
end;

//0055F7D8
//function sub_0055F7D8:?;
//begin
{*
 0055F7D8    push       ebp
 0055F7D9    mov        ebp,esp
 0055F7DB    xor        ecx,ecx
 0055F7DD    push       ecx
 0055F7DE    push       ecx
 0055F7DF    push       ecx
 0055F7E0    push       ecx
 0055F7E1    push       ebx
 0055F7E2    push       esi
 0055F7E3    mov        ebx,eax
 0055F7E5    xor        eax,eax
 0055F7E7    push       ebp
 0055F7E8    push       55F8C4
 0055F7ED    push       dword ptr fs:[eax]
 0055F7F0    mov        dword ptr fs:[eax],esp
 0055F7F3    mov        al,byte ptr [ebx+88]; TZASACallableStatement.?f88:byte
 0055F7F9    mov        byte ptr [ebp-1],al
 0055F7FC    test       al,al
>0055F7FE    je         0055F89B
 0055F804    lea        eax,[ebp-8]
 0055F807    mov        edx,dword ptr [ebx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F80A    call       @IntfCopy
 0055F80F    lea        edx,[ebp-0C]
 0055F812    mov        eax,dword ptr [ebp-8]
 0055F815    mov        ecx,dword ptr [eax]
 0055F817    call       dword ptr [ecx+98]
 0055F81D    mov        eax,dword ptr [ebp-0C]
 0055F820    push       eax
 0055F821    mov        eax,dword ptr [ebp-8]
 0055F824    mov        edx,dword ptr [eax]
 0055F826    call       dword ptr [edx+94]
 0055F82C    push       eax
 0055F82D    mov        eax,dword ptr [ebx+30]; TZASACallableStatement.?f30:String
 0055F830    call       @LStrToPChar
 0055F835    mov        ecx,eax
 0055F837    pop        edx
 0055F838    pop        eax
 0055F839    mov        esi,dword ptr [eax]
 0055F83B    call       dword ptr [esi+0BC]
 0055F841    push       0
 0055F843    lea        edx,[ebp-10]
 0055F846    mov        eax,dword ptr [ebp-8]
 0055F849    mov        ecx,dword ptr [eax]
 0055F84B    call       dword ptr [ecx+98]
 0055F851    mov        eax,dword ptr [ebp-10]
 0055F854    push       eax
 0055F855    mov        eax,dword ptr [ebp-8]
 0055F858    mov        edx,dword ptr [eax]
 0055F85A    call       dword ptr [edx+94]
 0055F860    mov        edx,eax
 0055F862    mov        cl,3
 0055F864    pop        eax
 0055F865    call       00556588
 0055F86A    mov        eax,dword ptr [ebp-8]
 0055F86D    mov        edx,dword ptr [eax]
 0055F86F    call       dword ptr [edx+94]
 0055F875    cmp        dword ptr [eax+0C],69
>0055F879    jne        0055F881
 0055F87B    mov        byte ptr [ebp-1],0
>0055F87F    jmp        0055F89B
 0055F881    push       0
 0055F883    mov        edx,dword ptr [ebx+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055F889    test       edx,edx
>0055F88B    je         0055F890
 0055F88D    sub        edx,0FFFFFFE0
 0055F890    mov        ecx,dword ptr [ebx+30]; TZASACallableStatement.?f30:String
 0055F893    mov        eax,dword ptr [ebx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F896    call       005567D0
 0055F89B    xor        eax,eax
 0055F89D    pop        edx
 0055F89E    pop        ecx
 0055F89F    pop        ecx
 0055F8A0    mov        dword ptr fs:[eax],edx
 0055F8A3    push       55F8CB
 0055F8A8    lea        eax,[ebp-10]
 0055F8AB    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055F8B1    mov        ecx,2
 0055F8B6    call       @FinalizeArray
 0055F8BB    lea        eax,[ebp-8]
 0055F8BE    call       @IntfClear
 0055F8C3    ret
<0055F8C4    jmp        @HandleFinally
<0055F8C9    jmp        0055F8A8
 0055F8CB    mov        al,byte ptr [ebp-1]
 0055F8CE    pop        esi
 0055F8CF    pop        ebx
 0055F8D0    mov        esp,ebp
 0055F8D2    pop        ebp
 0055F8D3    ret
*}
//end;

//0055F8D4
//function sub_0055F8D4:?;
//begin
{*
 0055F8D4    push       ebp
 0055F8D5    mov        ebp,esp
 0055F8D7    push       0
 0055F8D9    push       ebx
 0055F8DA    mov        ebx,eax
 0055F8DC    xor        eax,eax
 0055F8DE    push       ebp
 0055F8DF    push       55F96F
 0055F8E4    push       dword ptr fs:[eax]
 0055F8E7    mov        dword ptr fs:[eax],esp
 0055F8EA    mov        eax,ebx
 0055F8EC    call       00560528
 0055F8F1    lea        edx,[ebp-4]
 0055F8F4    mov        eax,ebx
 0055F8F6    call       00560474
 0055F8FB    cmp        byte ptr [ebx+89],0; TZASACallableStatement.?f89:byte
>0055F902    je         0055F911
 0055F904    mov        eax,dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 0055F907    mov        edx,dword ptr [ebp-4]
 0055F90A    call       @LStrCmp
>0055F90F    je         0055F94D
 0055F911    mov        eax,ebx
 0055F913    mov        edx,dword ptr [eax]
 0055F915    call       dword ptr [edx+0C]; TZASACallableStatement.sub_0055F64C
 0055F918    lea        eax,[ebx+48]; TZASACallableStatement.?f48:String
 0055F91B    mov        edx,dword ptr [ebp-4]
 0055F91E    call       @LStrAsg
 0055F923    mov        eax,dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 0055F926    push       eax
 0055F927    lea        eax,[ebx+7A]; TZASACallableStatement.?f7A:word
 0055F92A    push       eax
 0055F92B    lea        eax,[ebx+89]; TZASACallableStatement.?f89:byte
 0055F931    push       eax
 0055F932    lea        eax,[ebx+88]; TZASACallableStatement.?f88:byte
 0055F938    push       eax
 0055F939    mov        ecx,dword ptr [ebx+80]; TZASACallableStatement.?f80:IZASASQLDA
 0055F93F    mov        edx,dword ptr [ebx+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055F945    mov        eax,dword ptr [ebx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055F948    call       005569C4
 0055F94D    mov        eax,ebx
 0055F94F    mov        edx,dword ptr [eax]
 0055F951    call       dword ptr [edx+88]; TZASACallableStatement.sub_0055F97C
 0055F957    mov        ebx,eax
 0055F959    xor        eax,eax
 0055F95B    pop        edx
 0055F95C    pop        ecx
 0055F95D    pop        ecx
 0055F95E    mov        dword ptr fs:[eax],edx
 0055F961    push       55F976
 0055F966    lea        eax,[ebp-4]
 0055F969    call       @LStrClr
 0055F96E    ret
<0055F96F    jmp        @HandleFinally
<0055F974    jmp        0055F966
 0055F976    mov        eax,ebx
 0055F978    pop        ebx
 0055F979    pop        ecx
 0055F97A    pop        ebp
 0055F97B    ret
*}
//end;

//0055F97C
//function sub_0055F97C:?;
//begin
{*
 0055F97C    push       ebp
 0055F97D    mov        ebp,esp
 0055F97F    push       0
 0055F981    push       ebx
 0055F982    mov        ebx,eax
 0055F984    xor        eax,eax
 0055F986    push       ebp
 0055F987    push       55FA16
 0055F98C    push       dword ptr fs:[eax]
 0055F98F    mov        dword ptr fs:[eax],esp
 0055F992    cmp        byte ptr [ebx+89],0; TZASACallableStatement.?f89:byte
>0055F999    jne        0055F9A9
 0055F99B    mov        edx,dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 0055F99E    mov        eax,ebx
 0055F9A0    mov        ecx,dword ptr [eax]
 0055F9A2    call       dword ptr [ecx+34]; TZASACallableStatement.sub_0055F8D4
 0055F9A5    mov        ebx,eax
>0055F9A7    jmp        0055FA00
 0055F9A9    cmp        byte ptr [ebx+88],0; TZASACallableStatement.?f88:byte
>0055F9B0    jne        0055F9DA
 0055F9B2    mov        eax,dword ptr [ebx+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055F9B8    mov        edx,dword ptr [eax]
 0055F9BA    call       dword ptr [edx+18]
 0055F9BD    cmp        word ptr [eax+0E],0
>0055F9C2    jbe        0055F9F4
 0055F9C4    mov        eax,dword ptr [ebx+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055F9CA    mov        edx,dword ptr [eax]
 0055F9CC    call       dword ptr [edx+18]
 0055F9CF    mov        eax,dword ptr [eax+18]
 0055F9D2    movsx      eax,word ptr [eax]
 0055F9D5    test       ah,80
>0055F9D8    jne        0055F9F4
 0055F9DA    lea        edx,[ebp-4]
 0055F9DD    mov        eax,ebx
 0055F9DF    mov        ecx,dword ptr [eax]
 0055F9E1    call       dword ptr [ecx+80]; TZASACallableStatement.sub_0055FAD0
 0055F9E7    mov        edx,dword ptr [ebp-4]
 0055F9EA    mov        eax,ebx
 0055F9EC    mov        ecx,dword ptr [eax]
 0055F9EE    call       dword ptr [ecx]; TZASACallableStatement.sub_004DFE2C
 0055F9F0    mov        bl,1
>0055F9F2    jmp        0055FA00
 0055F9F4    mov        eax,ebx
 0055F9F6    mov        edx,dword ptr [eax]
 0055F9F8    call       dword ptr [edx+84]; TZASACallableStatement.sub_0055FE4C
 0055F9FE    xor        ebx,ebx
 0055FA00    xor        eax,eax
 0055FA02    pop        edx
 0055FA03    pop        ecx
 0055FA04    pop        ecx
 0055FA05    mov        dword ptr fs:[eax],edx
 0055FA08    push       55FA1D
 0055FA0D    lea        eax,[ebp-4]
 0055FA10    call       @IntfClear
 0055FA15    ret
<0055FA16    jmp        @HandleFinally
<0055FA1B    jmp        0055FA0D
 0055FA1D    mov        eax,ebx
 0055FA1F    pop        ebx
 0055FA20    pop        ecx
 0055FA21    pop        ebp
 0055FA22    ret
*}
//end;

//0055FA24
//procedure sub_0055FA24(?:?; ?:?);
//begin
{*
 0055FA24    push       ebp
 0055FA25    mov        ebp,esp
 0055FA27    push       0
 0055FA29    push       ebx
 0055FA2A    push       esi
 0055FA2B    mov        esi,ecx
 0055FA2D    mov        ebx,eax
 0055FA2F    xor        eax,eax
 0055FA31    push       ebp
 0055FA32    push       55FAC2
 0055FA37    push       dword ptr fs:[eax]
 0055FA3A    mov        dword ptr fs:[eax],esp
 0055FA3D    mov        eax,ebx
 0055FA3F    call       00560528
 0055FA44    lea        edx,[ebp-4]
 0055FA47    mov        eax,ebx
 0055FA49    call       00560474
 0055FA4E    cmp        byte ptr [ebx+89],0; TZASACallableStatement.?f89:byte
>0055FA55    je         0055FA64
 0055FA57    mov        eax,dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 0055FA5A    mov        edx,dword ptr [ebp-4]
 0055FA5D    call       @LStrCmp
>0055FA62    je         0055FAA0
 0055FA64    mov        eax,ebx
 0055FA66    mov        edx,dword ptr [eax]
 0055FA68    call       dword ptr [edx+0C]; TZASACallableStatement.sub_0055F64C
 0055FA6B    lea        eax,[ebx+48]; TZASACallableStatement.?f48:String
 0055FA6E    mov        edx,dword ptr [ebp-4]
 0055FA71    call       @LStrAsg
 0055FA76    mov        eax,dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 0055FA79    push       eax
 0055FA7A    lea        eax,[ebx+7A]; TZASACallableStatement.?f7A:word
 0055FA7D    push       eax
 0055FA7E    lea        eax,[ebx+89]; TZASACallableStatement.?f89:byte
 0055FA84    push       eax
 0055FA85    lea        eax,[ebx+88]; TZASACallableStatement.?f88:byte
 0055FA8B    push       eax
 0055FA8C    mov        ecx,dword ptr [ebx+80]; TZASACallableStatement.?f80:IZASASQLDA
 0055FA92    mov        edx,dword ptr [ebx+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055FA98    mov        eax,dword ptr [ebx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055FA9B    call       005569C4
 0055FAA0    mov        edx,esi
 0055FAA2    mov        eax,ebx
 0055FAA4    mov        ecx,dword ptr [eax]
 0055FAA6    call       dword ptr [ecx+80]; TZASACallableStatement.sub_0055FAD0
 0055FAAC    xor        eax,eax
 0055FAAE    pop        edx
 0055FAAF    pop        ecx
 0055FAB0    pop        ecx
 0055FAB1    mov        dword ptr fs:[eax],edx
 0055FAB4    push       55FAC9
 0055FAB9    lea        eax,[ebp-4]
 0055FABC    call       @LStrClr
 0055FAC1    ret
<0055FAC2    jmp        @HandleFinally
<0055FAC7    jmp        0055FAB9
 0055FAC9    pop        esi
 0055FACA    pop        ebx
 0055FACB    pop        ecx
 0055FACC    pop        ebp
 0055FACD    ret
*}
//end;

//0055FAD0
//procedure sub_0055FAD0(?:?);
//begin
{*
 0055FAD0    push       ebp
 0055FAD1    mov        ebp,esp
 0055FAD3    xor        ecx,ecx
 0055FAD5    push       ecx
 0055FAD6    push       ecx
 0055FAD7    push       ecx
 0055FAD8    push       ecx
 0055FAD9    push       ecx
 0055FADA    push       ecx
 0055FADB    push       ecx
 0055FADC    push       ecx
 0055FADD    push       ebx
 0055FADE    push       esi
 0055FADF    push       edi
 0055FAE0    mov        esi,edx
 0055FAE2    mov        dword ptr [ebp-4],eax
 0055FAE5    xor        eax,eax
 0055FAE7    push       ebp
 0055FAE8    push       55FD93
 0055FAED    push       dword ptr fs:[eax]
 0055FAF0    mov        dword ptr fs:[eax],esp
 0055FAF3    mov        eax,dword ptr [ebp-4]
 0055FAF6    cmp        byte ptr [eax+89],0; TZASACallableStatement.?f89:byte
>0055FAFD    jne        0055FB14
 0055FAFF    mov        ecx,esi
 0055FB01    mov        eax,dword ptr [ebp-4]
 0055FB04    mov        edx,dword ptr [eax+48]; TZASACallableStatement.?f48:String
 0055FB07    mov        eax,dword ptr [ebp-4]
 0055FB0A    mov        ebx,dword ptr [eax]
 0055FB0C    call       dword ptr [ebx+4]; TZASACallableStatement.sub_0055FA24
>0055FB0F    jmp        0055FD52
 0055FB14    lea        eax,[ebp-0C]
 0055FB17    mov        edx,dword ptr [ebp-4]
 0055FB1A    mov        edx,dword ptr [edx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055FB1D    call       @IntfCopy
 0055FB22    mov        eax,dword ptr [ebp-4]
 0055FB25    mov        eax,dword ptr [eax+58]; TZASACallableStatement.?f58:dword
 0055FB28    push       eax
 0055FB29    mov        eax,dword ptr [ebp-4]
 0055FB2C    mov        eax,dword ptr [eax+80]; TZASACallableStatement.?f80:IZASASQLDA
 0055FB32    push       eax
 0055FB33    lea        edx,[ebp-10]
 0055FB36    mov        eax,dword ptr [ebp-0C]
 0055FB39    mov        ecx,dword ptr [eax]
 0055FB3B    call       dword ptr [ecx+98]
 0055FB41    mov        eax,dword ptr [ebp-10]
 0055FB44    mov        edx,dword ptr [ebp-4]
 0055FB47    mov        ecx,dword ptr [edx+50]; TZASACallableStatement.?f50:TZSQLTypeArray
 0055FB4A    mov        edx,dword ptr [ebp-4]
 0055FB4D    mov        edx,dword ptr [edx+4C]; TZASACallableStatement.?f4C:TZVariantDynArray
 0055FB50    call       00556DA0
 0055FB55    mov        eax,dword ptr [ebp-4]
 0055FB58    cmp        byte ptr [eax+2C],1; TZASACallableStatement.?f2C:byte
>0055FB5C    jne        0055FB64
 0055FB5E    mov        bx,1020
>0055FB62    jmp        0055FB68
 0055FB64    mov        bx,22
 0055FB68    mov        eax,dword ptr [ebp-4]
 0055FB6B    cmp        byte ptr [eax+2D],1; TZASACallableStatement.?f2D:byte
>0055FB6F    jne        0055FB98
 0055FB71    movsx      eax,bx
 0055FB74    add        eax,400
>0055FB79    jno        0055FB80
 0055FB7B    call       @IntOver
 0055FB80    add        eax,8000
 0055FB85    cmp        eax,0FFFF
>0055FB8A    jbe        0055FB91
 0055FB8C    call       @BoundErr
 0055FB91    add        eax,0FFFF8000
 0055FB96    mov        ebx,eax
 0055FB98    lea        eax,[ebp-8]
 0055FB9B    mov        edx,dword ptr [ebp-4]
 0055FB9E    mov        edx,dword ptr [edx+30]; TZASACallableStatement.?f30:String
 0055FBA1    call       @LStrLAsg
 0055FBA6    push       0
 0055FBA8    mov        eax,dword ptr [ebp-4]
 0055FBAB    add        eax,7A; TZASACallableStatement.?f7A:word
 0055FBAE    push       eax
 0055FBAF    mov        eax,dword ptr [ebp-4]
 0055FBB2    mov        eax,dword ptr [eax+80]; TZASACallableStatement.?f80:IZASASQLDA
 0055FBB8    mov        edx,dword ptr [eax]
 0055FBBA    call       dword ptr [edx+18]
 0055FBBD    push       eax
 0055FBBE    mov        eax,dword ptr [ebp-4]
 0055FBC1    mov        eax,dword ptr [eax+28]; TZASACallableStatement.?f28:dword
 0055FBC4    add        eax,8000
 0055FBC9    cmp        eax,0FFFF
>0055FBCE    jbe        0055FBD5
 0055FBD0    call       @BoundErr
 0055FBD5    add        eax,0FFFF8000
 0055FBDA    push       eax
 0055FBDB    push       0
 0055FBDD    movsx      eax,bx
 0055FBE0    cmp        eax,0FFFF
>0055FBE5    jbe        0055FBEC
 0055FBE7    call       @BoundErr
 0055FBEC    push       eax
 0055FBED    lea        edx,[ebp-14]
 0055FBF0    mov        eax,dword ptr [ebp-0C]
 0055FBF3    mov        ecx,dword ptr [eax]
 0055FBF5    call       dword ptr [ecx+98]
 0055FBFB    mov        eax,dword ptr [ebp-14]
 0055FBFE    push       eax
 0055FBFF    mov        eax,dword ptr [ebp-0C]
 0055FC02    mov        edx,dword ptr [eax]
 0055FC04    call       dword ptr [edx+94]
 0055FC0A    push       eax
 0055FC0B    mov        eax,dword ptr [ebp-8]
 0055FC0E    call       @LStrToPChar
 0055FC13    mov        ecx,eax
 0055FC15    pop        edx
 0055FC16    pop        eax
 0055FC17    mov        ebx,dword ptr [eax]
 0055FC19    call       dword ptr [ebx+7C]
 0055FC1C    mov        eax,dword ptr [ebp-4]
 0055FC1F    mov        eax,dword ptr [eax+48]; TZASACallableStatement.?f48:String
 0055FC22    push       eax
 0055FC23    lea        edx,[ebp-18]
 0055FC26    mov        eax,dword ptr [ebp-0C]
 0055FC29    mov        ecx,dword ptr [eax]
 0055FC2B    call       dword ptr [ecx+98]
 0055FC31    mov        eax,dword ptr [ebp-18]
 0055FC34    push       eax
 0055FC35    mov        eax,dword ptr [ebp-0C]
 0055FC38    mov        edx,dword ptr [eax]
 0055FC3A    call       dword ptr [edx+94]
 0055FC40    mov        edx,eax
 0055FC42    mov        cl,3
 0055FC44    pop        eax
 0055FC45    call       00556588
 0055FC4A    mov        eax,dword ptr [ebp-4]
 0055FC4D    mov        byte ptr [eax+40],0; TZASACallableStatement.?f40:byte
 0055FC51    xor        edx,edx
 0055FC53    push       ebp
 0055FC54    push       55FD2F
 0055FC59    push       dword ptr fs:[edx]
 0055FC5C    mov        dword ptr fs:[edx],esp
 0055FC5F    mov        eax,dword ptr [ebp-4]
 0055FC62    cmp        byte ptr [eax+88],0; TZASACallableStatement.?f88:byte
>0055FC69    je         0055FC90
 0055FC6B    mov        eax,dword ptr [ebp-4]
 0055FC6E    mov        eax,dword ptr [eax+48]; TZASACallableStatement.?f48:String
 0055FC71    push       eax
 0055FC72    mov        eax,dword ptr [ebp-4]
 0055FC75    mov        edx,dword ptr [eax+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055FC7B    test       edx,edx
>0055FC7D    je         0055FC82
 0055FC7F    sub        edx,0FFFFFFE0
 0055FC82    mov        eax,dword ptr [ebp-4]
 0055FC85    mov        eax,dword ptr [eax+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055FC88    mov        ecx,dword ptr [ebp-8]
 0055FC8B    call       005567D0
 0055FC90    mov        eax,dword ptr [ebp-4]
 0055FC93    mov        dword ptr [eax+1C],0FFFFFFFF; TZASACallableStatement.?f1C:Integer
 0055FC9A    push       esi
 0055FC9B    mov        eax,dword ptr [ebp-4]
 0055FC9E    mov        eax,dword ptr [eax+48]; TZASACallableStatement.?f48:String
 0055FCA1    push       eax
 0055FCA2    mov        eax,dword ptr [ebp-4]
 0055FCA5    add        eax,7A; TZASACallableStatement.?f7A:word
 0055FCA8    push       eax
 0055FCA9    mov        eax,dword ptr [ebp-8]
 0055FCAC    push       eax
 0055FCAD    mov        eax,dword ptr [ebp-4]
 0055FCB0    mov        eax,dword ptr [eax+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055FCB6    push       eax
 0055FCB7    push       0
 0055FCB9    mov        eax,dword ptr [ebp-4]
 0055FCBC    mov        al,byte ptr [eax+78]; TZASACallableStatement.?f78:byte
 0055FCBF    push       eax
 0055FCC0    mov        ecx,dword ptr [ebp-4]
 0055FCC3    test       ecx,ecx
>0055FCC5    je         0055FCCA
 0055FCC7    sub        ecx,0FFFFFFBC
 0055FCCA    mov        dl,1
 0055FCCC    mov        eax,[0055C124]; TZASAResultSet
 0055FCD1    call       TZASAResultSet.Create; TZASAResultSet.Create
 0055FCD6    mov        ecx,eax
 0055FCD8    test       ecx,ecx
>0055FCDA    je         0055FCDF
 0055FCDC    sub        ecx,0FFFFFFC8
 0055FCDF    mov        edx,dword ptr [ebp-4]
 0055FCE2    test       edx,edx
>0055FCE4    je         0055FCE9
 0055FCE6    sub        edx,0FFFFFFBC
 0055FCE9    mov        eax,dword ptr [ebp-4]
 0055FCEC    mov        eax,dword ptr [eax+48]; TZASACallableStatement.?f48:String
 0055FCEF    call       005566C4
 0055FCF4    mov        eax,dword ptr [ebp-4]
 0055FCF7    mov        eax,dword ptr [eax+48]; TZASACallableStatement.?f48:String
 0055FCFA    push       eax
 0055FCFB    lea        edx,[ebp-20]
 0055FCFE    mov        eax,dword ptr [ebp-0C]
 0055FD01    mov        ecx,dword ptr [eax]
 0055FD03    call       dword ptr [ecx+98]
 0055FD09    mov        eax,dword ptr [ebp-20]
 0055FD0C    lea        edx,[ebp-1C]
 0055FD0F    mov        ecx,dword ptr [eax]
 0055FD11    call       dword ptr [ecx+0C]
 0055FD14    mov        ecx,dword ptr [ebp-1C]
 0055FD17    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0055FD1C    mov        eax,dword ptr [eax]
 0055FD1E    mov        dl,3
 0055FD20    mov        ebx,dword ptr [eax]
 0055FD22    call       dword ptr [ebx+3C]
 0055FD25    xor        eax,eax
 0055FD27    pop        edx
 0055FD28    pop        ecx
 0055FD29    pop        ecx
 0055FD2A    mov        dword ptr fs:[eax],edx
>0055FD2D    jmp        0055FD52
<0055FD2F    jmp        @HandleOnException
 0055FD34    dd        1
 0055FD38    dd        4087B0;Exception
 0055FD3C    dd        55FD40
 0055FD40    mov        eax,dword ptr [ebp-4]
 0055FD43    mov        edx,dword ptr [eax]
 0055FD45    call       dword ptr [edx+0C]; TZASACallableStatement.sub_0055F64C
 0055FD48    call       @RaiseAgain
 0055FD4D    call       @DoneExcept
 0055FD52    xor        eax,eax
 0055FD54    pop        edx
 0055FD55    pop        ecx
 0055FD56    pop        ecx
 0055FD57    mov        dword ptr fs:[eax],edx
 0055FD5A    push       55FD9A
 0055FD5F    lea        eax,[ebp-20]
 0055FD62    call       @IntfClear
 0055FD67    lea        eax,[ebp-1C]
 0055FD6A    call       @LStrClr
 0055FD6F    lea        eax,[ebp-18]
 0055FD72    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055FD78    mov        ecx,3
 0055FD7D    call       @FinalizeArray
 0055FD82    lea        eax,[ebp-0C]
 0055FD85    call       @IntfClear
 0055FD8A    lea        eax,[ebp-8]
 0055FD8D    call       @LStrClr
 0055FD92    ret
<0055FD93    jmp        @HandleFinally
<0055FD98    jmp        0055FD5F
 0055FD9A    pop        edi
 0055FD9B    pop        esi
 0055FD9C    pop        ebx
 0055FD9D    mov        esp,ebp
 0055FD9F    pop        ebp
 0055FDA0    ret
*}
//end;

//0055FDA4
//function sub_0055FDA4:?;
//begin
{*
 0055FDA4    push       ebp
 0055FDA5    mov        ebp,esp
 0055FDA7    push       0
 0055FDA9    push       ebx
 0055FDAA    mov        ebx,eax
 0055FDAC    xor        eax,eax
 0055FDAE    push       ebp
 0055FDAF    push       55FE3F
 0055FDB4    push       dword ptr fs:[eax]
 0055FDB7    mov        dword ptr fs:[eax],esp
 0055FDBA    mov        eax,ebx
 0055FDBC    call       00560528
 0055FDC1    lea        edx,[ebp-4]
 0055FDC4    mov        eax,ebx
 0055FDC6    call       00560474
 0055FDCB    cmp        byte ptr [ebx+89],0; TZASACallableStatement.?f89:byte
>0055FDD2    je         0055FDE1
 0055FDD4    mov        eax,dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 0055FDD7    mov        edx,dword ptr [ebp-4]
 0055FDDA    call       @LStrCmp
>0055FDDF    je         0055FE1D
 0055FDE1    mov        eax,ebx
 0055FDE3    mov        edx,dword ptr [eax]
 0055FDE5    call       dword ptr [edx+0C]; TZASACallableStatement.sub_0055F64C
 0055FDE8    lea        eax,[ebx+48]; TZASACallableStatement.?f48:String
 0055FDEB    mov        edx,dword ptr [ebp-4]
 0055FDEE    call       @LStrAsg
 0055FDF3    mov        eax,dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 0055FDF6    push       eax
 0055FDF7    lea        eax,[ebx+7A]; TZASACallableStatement.?f7A:word
 0055FDFA    push       eax
 0055FDFB    lea        eax,[ebx+89]; TZASACallableStatement.?f89:byte
 0055FE01    push       eax
 0055FE02    lea        eax,[ebx+88]; TZASACallableStatement.?f88:byte
 0055FE08    push       eax
 0055FE09    mov        ecx,dword ptr [ebx+80]; TZASACallableStatement.?f80:IZASASQLDA
 0055FE0F    mov        edx,dword ptr [ebx+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055FE15    mov        eax,dword ptr [ebx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055FE18    call       005569C4
 0055FE1D    mov        eax,ebx
 0055FE1F    mov        edx,dword ptr [eax]
 0055FE21    call       dword ptr [edx+84]; TZASACallableStatement.sub_0055FE4C
 0055FE27    mov        ebx,eax
 0055FE29    xor        eax,eax
 0055FE2B    pop        edx
 0055FE2C    pop        ecx
 0055FE2D    pop        ecx
 0055FE2E    mov        dword ptr fs:[eax],edx
 0055FE31    push       55FE46
 0055FE36    lea        eax,[ebp-4]
 0055FE39    call       @LStrClr
 0055FE3E    ret
<0055FE3F    jmp        @HandleFinally
<0055FE44    jmp        0055FE36
 0055FE46    mov        eax,ebx
 0055FE48    pop        ebx
 0055FE49    pop        ecx
 0055FE4A    pop        ebp
 0055FE4B    ret
*}
//end;

//0055FE4C
//function sub_0055FE4C:?;
//begin
{*
 0055FE4C    push       ebp
 0055FE4D    mov        ebp,esp
 0055FE4F    xor        ecx,ecx
 0055FE51    push       ecx
 0055FE52    push       ecx
 0055FE53    push       ecx
 0055FE54    push       ecx
 0055FE55    push       ecx
 0055FE56    push       ecx
 0055FE57    push       ebx
 0055FE58    push       esi
 0055FE59    mov        ebx,eax
 0055FE5B    xor        eax,eax
 0055FE5D    push       ebp
 0055FE5E    push       55FFAD
 0055FE63    push       dword ptr fs:[eax]
 0055FE66    mov        dword ptr fs:[eax],esp
 0055FE69    cmp        byte ptr [ebx+89],0; TZASACallableStatement.?f89:byte
>0055FE70    jne        0055FE83
 0055FE72    mov        edx,dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 0055FE75    mov        eax,ebx
 0055FE77    mov        ecx,dword ptr [eax]
 0055FE79    call       dword ptr [ecx+8]; TZASACallableStatement.sub_0055FDA4
 0055FE7C    mov        esi,eax
>0055FE7E    jmp        0055FF74
 0055FE83    lea        eax,[ebp-4]
 0055FE86    mov        edx,dword ptr [ebx+7C]; TZASACallableStatement.?f7C:IZASAConnection
 0055FE89    call       @IntfCopy
 0055FE8E    mov        eax,dword ptr [ebx+58]; TZASACallableStatement.?f58:dword
 0055FE91    push       eax
 0055FE92    mov        eax,dword ptr [ebx+80]; TZASACallableStatement.?f80:IZASASQLDA
 0055FE98    push       eax
 0055FE99    lea        edx,[ebp-8]
 0055FE9C    mov        eax,dword ptr [ebp-4]
 0055FE9F    mov        ecx,dword ptr [eax]
 0055FEA1    call       dword ptr [ecx+98]
 0055FEA7    mov        eax,dword ptr [ebp-8]
 0055FEAA    mov        ecx,dword ptr [ebx+50]; TZASACallableStatement.?f50:TZSQLTypeArray
 0055FEAD    mov        edx,dword ptr [ebx+4C]; TZASACallableStatement.?f4C:TZVariantDynArray
 0055FEB0    call       00556DA0
 0055FEB5    push       0
 0055FEB7    lea        eax,[ebx+7A]; TZASACallableStatement.?f7A:word
 0055FEBA    push       eax
 0055FEBB    mov        eax,dword ptr [ebx+80]; TZASACallableStatement.?f80:IZASASQLDA
 0055FEC1    mov        edx,dword ptr [eax]
 0055FEC3    call       dword ptr [edx+18]
 0055FEC6    push       eax
 0055FEC7    mov        eax,dword ptr [ebx+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055FECD    mov        edx,dword ptr [eax]
 0055FECF    call       dword ptr [edx+18]
 0055FED2    push       eax
 0055FED3    lea        edx,[ebp-0C]
 0055FED6    mov        eax,dword ptr [ebp-4]
 0055FED9    mov        ecx,dword ptr [eax]
 0055FEDB    call       dword ptr [ecx+98]
 0055FEE1    mov        eax,dword ptr [ebp-0C]
 0055FEE4    push       eax
 0055FEE5    mov        eax,dword ptr [ebp-4]
 0055FEE8    mov        edx,dword ptr [eax]
 0055FEEA    call       dword ptr [edx+94]
 0055FEF0    mov        edx,eax
 0055FEF2    xor        ecx,ecx
 0055FEF4    pop        eax
 0055FEF5    mov        esi,dword ptr [eax]
 0055FEF7    call       dword ptr [esi+0A4]
 0055FEFD    mov        eax,dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 0055FF00    push       eax
 0055FF01    lea        edx,[ebp-10]
 0055FF04    mov        eax,dword ptr [ebp-4]
 0055FF07    mov        ecx,dword ptr [eax]
 0055FF09    call       dword ptr [ecx+98]
 0055FF0F    mov        eax,dword ptr [ebp-10]
 0055FF12    push       eax
 0055FF13    mov        eax,dword ptr [ebp-4]
 0055FF16    mov        edx,dword ptr [eax]
 0055FF18    call       dword ptr [edx+94]
 0055FF1E    mov        edx,eax
 0055FF20    mov        cl,3
 0055FF22    pop        eax
 0055FF23    call       00556588
 0055FF28    mov        eax,dword ptr [ebp-4]
 0055FF2B    mov        edx,dword ptr [eax]
 0055FF2D    call       dword ptr [edx+94]
 0055FF33    mov        esi,dword ptr [eax+68]
 0055FF36    mov        dword ptr [ebx+1C],esi; TZASACallableStatement.?f1C:Integer
 0055FF39    mov        edx,dword ptr [ebx+84]; TZASACallableStatement.?f84:IZASASQLDA
 0055FF3F    mov        eax,ebx
 0055FF41    call       0055FFBC
 0055FF46    mov        eax,dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 0055FF49    push       eax
 0055FF4A    lea        edx,[ebp-18]
 0055FF4D    mov        eax,dword ptr [ebp-4]
 0055FF50    mov        ecx,dword ptr [eax]
 0055FF52    call       dword ptr [ecx+98]
 0055FF58    mov        eax,dword ptr [ebp-18]
 0055FF5B    lea        edx,[ebp-14]
 0055FF5E    mov        ecx,dword ptr [eax]
 0055FF60    call       dword ptr [ecx+0C]
 0055FF63    mov        ecx,dword ptr [ebp-14]
 0055FF66    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0055FF6B    mov        eax,dword ptr [eax]
 0055FF6D    mov        dl,3
 0055FF6F    mov        ebx,dword ptr [eax]
 0055FF71    call       dword ptr [ebx+3C]
 0055FF74    xor        eax,eax
 0055FF76    pop        edx
 0055FF77    pop        ecx
 0055FF78    pop        ecx
 0055FF79    mov        dword ptr fs:[eax],edx
 0055FF7C    push       55FFB4
 0055FF81    lea        eax,[ebp-18]
 0055FF84    call       @IntfClear
 0055FF89    lea        eax,[ebp-14]
 0055FF8C    call       @LStrClr
 0055FF91    lea        eax,[ebp-10]
 0055FF94    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055FF9A    mov        ecx,3
 0055FF9F    call       @FinalizeArray
 0055FFA4    lea        eax,[ebp-4]
 0055FFA7    call       @IntfClear
 0055FFAC    ret
<0055FFAD    jmp        @HandleFinally
<0055FFB2    jmp        0055FF81
 0055FFB4    mov        eax,esi
 0055FFB6    pop        esi
 0055FFB7    pop        ebx
 0055FFB8    mov        esp,ebp
 0055FFBA    pop        ebp
 0055FFBB    ret
*}
//end;

//0055FFBC
//procedure sub_0055FFBC(?:TZASACallableStatement; ?:IZASASQLDA);
//begin
{*
 0055FFBC    push       ebp
 0055FFBD    mov        ebp,esp
 0055FFBF    add        esp,0FFFFFFAC
 0055FFC2    push       ebx
 0055FFC3    push       esi
 0055FFC4    push       edi
 0055FFC5    xor        ecx,ecx
 0055FFC7    mov        dword ptr [ebp-50],ecx
 0055FFCA    mov        dword ptr [ebp-54],ecx
 0055FFCD    mov        dword ptr [ebp-48],ecx
 0055FFD0    mov        dword ptr [ebp-4C],ecx
 0055FFD3    mov        dword ptr [ebp-44],ecx
 0055FFD6    mov        dword ptr [ebp-10],ecx
 0055FFD9    mov        dword ptr [ebp-8],edx
 0055FFDC    mov        dword ptr [ebp-4],eax
 0055FFDF    mov        eax,dword ptr [ebp-8]
 0055FFE2    call       @IntfAddRef
 0055FFE7    lea        eax,[ebp-40]
 0055FFEA    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0055FFF0    call       @InitializeRecord
 0055FFF5    xor        eax,eax
 0055FFF7    push       ebp
 0055FFF8    push       560411
 0055FFFD    push       dword ptr fs:[eax]
 00560000    mov        dword ptr fs:[eax],esp
 00560003    mov        eax,dword ptr [ebp-8]
 00560006    mov        edx,dword ptr [eax]
 00560008    call       dword ptr [edx+24]
 0056000B    mov        edx,eax
 0056000D    mov        eax,dword ptr [ebp-4]
 00560010    mov        ecx,dword ptr [eax]
 00560012    call       dword ptr [ecx+0EC]; TZASACallableStatement.sub_004E0D3C
 00560018    mov        eax,dword ptr [ebp-8]
 0056001B    mov        edx,dword ptr [eax]
 0056001D    call       dword ptr [edx+24]
 00560020    mov        esi,eax
 00560022    sub        esi,1
>00560025    jno        0056002C
 00560027    call       @IntOver
 0056002C    test       esi,esi
>0056002E    jl         005603BA
 00560034    inc        esi
 00560035    xor        ebx,ebx
 00560037    mov        edx,ebx
 00560039    mov        eax,dword ptr [ebp-8]
 0056003C    mov        ecx,dword ptr [eax]
 0056003E    call       dword ptr [ecx+80]
 00560044    test       al,al
>00560046    je         0056005C
 00560048    lea        edx,[ebp-40]
 0056004B    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00560050    mov        eax,dword ptr [eax]
 00560052    mov        ecx,dword ptr [eax]
 00560054    call       dword ptr [ecx+10]
>00560057    jmp        00560391
 0056005C    mov        edi,ebx
 0056005E    cmp        edi,0FFFF
>00560064    jbe        0056006B
 00560066    call       @BoundErr
 0056006B    mov        edx,edi
 0056006D    mov        eax,dword ptr [ebp-8]
 00560070    mov        ecx,dword ptr [eax]
 00560072    call       dword ptr [ecx+34]
 00560075    and        eax,7F
 00560078    cmp        eax,11
>0056007B    ja         00560391
 00560081    jmp        dword ptr [eax*4+560088]
 00560081    dd         560391
 00560081    dd         5600D0
 00560081    dd         5600F3
 00560081    dd         56011A
 00560081    dd         560141
 00560081    dd         560165
 00560081    dd         560188
 00560081    dd         5601B0
 00560081    dd         5601D8
 00560081    dd         560200
 00560081    dd         560227
 00560081    dd         560259
 00560081    dd         56028B
 00560081    dd         5602B3
 00560081    dd         5602DB
 00560081    dd         560303
 00560081    dd         560303
 00560081    dd         560303
 005600D0    mov        edx,ebx
 005600D2    mov        eax,dword ptr [ebp-8]
 005600D5    mov        ecx,dword ptr [eax]
 005600D7    call       dword ptr [ecx+88]
 005600DD    mov        ecx,eax
 005600DF    lea        edx,[ebp-40]
 005600E2    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 005600E7    mov        eax,dword ptr [eax]
 005600E9    mov        edi,dword ptr [eax]
 005600EB    call       dword ptr [edi+44]
>005600EE    jmp        00560391
 005600F3    mov        edx,ebx
 005600F5    mov        eax,dword ptr [ebp-8]
 005600F8    mov        ecx,dword ptr [eax]
 005600FA    call       dword ptr [ecx+8C]
 00560100    movsx      eax,al
 00560103    cdq
 00560104    push       edx
 00560105    push       eax
 00560106    lea        edx,[ebp-40]
 00560109    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056010E    mov        eax,dword ptr [eax]
 00560110    mov        ecx,dword ptr [eax]
 00560112    call       dword ptr [ecx+48]
>00560115    jmp        00560391
 0056011A    mov        edx,ebx
 0056011C    mov        eax,dword ptr [ebp-8]
 0056011F    mov        ecx,dword ptr [eax]
 00560121    call       dword ptr [ecx+90]
 00560127    movsx      eax,ax
 0056012A    cdq
 0056012B    push       edx
 0056012C    push       eax
 0056012D    lea        edx,[ebp-40]
 00560130    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00560135    mov        eax,dword ptr [eax]
 00560137    mov        ecx,dword ptr [eax]
 00560139    call       dword ptr [ecx+48]
>0056013C    jmp        00560391
 00560141    mov        edx,ebx
 00560143    mov        eax,dword ptr [ebp-8]
 00560146    mov        ecx,dword ptr [eax]
 00560148    call       dword ptr [ecx+94]
 0056014E    cdq
 0056014F    push       edx
 00560150    push       eax
 00560151    lea        edx,[ebp-40]
 00560154    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00560159    mov        eax,dword ptr [eax]
 0056015B    mov        ecx,dword ptr [eax]
 0056015D    call       dword ptr [ecx+48]
>00560160    jmp        00560391
 00560165    mov        edx,ebx
 00560167    mov        eax,dword ptr [ebp-8]
 0056016A    mov        ecx,dword ptr [eax]
 0056016C    call       dword ptr [ecx+98]
 00560172    push       edx
 00560173    push       eax
 00560174    lea        edx,[ebp-40]
 00560177    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056017C    mov        eax,dword ptr [eax]
 0056017E    mov        ecx,dword ptr [eax]
 00560180    call       dword ptr [ecx+48]
>00560183    jmp        00560391
 00560188    mov        edx,ebx
 0056018A    mov        eax,dword ptr [ebp-8]
 0056018D    mov        ecx,dword ptr [eax]
 0056018F    call       dword ptr [ecx+9C]
 00560195    add        esp,0FFFFFFF4
 00560198    fstp       tbyte ptr [esp]
 0056019B    wait
 0056019C    lea        edx,[ebp-40]
 0056019F    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 005601A4    mov        eax,dword ptr [eax]
 005601A6    mov        ecx,dword ptr [eax]
 005601A8    call       dword ptr [ecx+4C]
>005601AB    jmp        00560391
 005601B0    mov        edx,ebx
 005601B2    mov        eax,dword ptr [ebp-8]
 005601B5    mov        ecx,dword ptr [eax]
 005601B7    call       dword ptr [ecx+0A0]
 005601BD    add        esp,0FFFFFFF4
 005601C0    fstp       tbyte ptr [esp]
 005601C3    wait
 005601C4    lea        edx,[ebp-40]
 005601C7    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 005601CC    mov        eax,dword ptr [eax]
 005601CE    mov        ecx,dword ptr [eax]
 005601D0    call       dword ptr [ecx+4C]
>005601D3    jmp        00560391
 005601D8    mov        edx,ebx
 005601DA    mov        eax,dword ptr [ebp-8]
 005601DD    mov        ecx,dword ptr [eax]
 005601DF    call       dword ptr [ecx+0A4]
 005601E5    add        esp,0FFFFFFF4
 005601E8    fstp       tbyte ptr [esp]
 005601EB    wait
 005601EC    lea        edx,[ebp-40]
 005601EF    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 005601F4    mov        eax,dword ptr [eax]
 005601F6    mov        ecx,dword ptr [eax]
 005601F8    call       dword ptr [ecx+4C]
>005601FB    jmp        00560391
 00560200    lea        ecx,[ebp-44]
 00560203    mov        edx,ebx
 00560205    mov        eax,dword ptr [ebp-8]
 00560208    mov        edi,dword ptr [eax]
 0056020A    call       dword ptr [edi+0AC]
 00560210    mov        ecx,dword ptr [ebp-44]
 00560213    lea        edx,[ebp-40]
 00560216    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056021B    mov        eax,dword ptr [eax]
 0056021D    mov        edi,dword ptr [eax]
 0056021F    call       dword ptr [edi+50]
>00560222    jmp        00560391
 00560227    lea        ecx,[ebp-4C]
 0056022A    mov        edx,ebx
 0056022C    mov        eax,dword ptr [ebp-8]
 0056022F    mov        edi,dword ptr [eax]
 00560231    call       dword ptr [edi+0AC]
 00560237    mov        edx,dword ptr [ebp-4C]
 0056023A    lea        eax,[ebp-48]
 0056023D    call       @WStrFromLStr
 00560242    mov        ecx,dword ptr [ebp-48]
 00560245    lea        edx,[ebp-40]
 00560248    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056024D    mov        eax,dword ptr [eax]
 0056024F    mov        edi,dword ptr [eax]
 00560251    call       dword ptr [edi+54]
>00560254    jmp        00560391
 00560259    lea        ecx,[ebp-54]
 0056025C    mov        edx,ebx
 0056025E    mov        eax,dword ptr [ebp-8]
 00560261    mov        edi,dword ptr [eax]
 00560263    call       dword ptr [edi+0B0]
 00560269    mov        eax,dword ptr [ebp-54]
 0056026C    lea        edx,[ebp-50]
 0056026F    call       004BF648
 00560274    mov        ecx,dword ptr [ebp-50]
 00560277    lea        edx,[ebp-40]
 0056027A    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056027F    mov        eax,dword ptr [eax]
 00560281    mov        edi,dword ptr [eax]
 00560283    call       dword ptr [edi+50]
>00560286    jmp        00560391
 0056028B    mov        edx,ebx
 0056028D    mov        eax,dword ptr [ebp-8]
 00560290    mov        ecx,dword ptr [eax]
 00560292    call       dword ptr [ecx+0B4]
 00560298    add        esp,0FFFFFFF8
 0056029B    fstp       qword ptr [esp]
 0056029E    wait
 0056029F    lea        edx,[ebp-40]
 005602A2    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 005602A7    mov        eax,dword ptr [eax]
 005602A9    mov        ecx,dword ptr [eax]
 005602AB    call       dword ptr [ecx+58]
>005602AE    jmp        00560391
 005602B3    mov        edx,ebx
 005602B5    mov        eax,dword ptr [ebp-8]
 005602B8    mov        ecx,dword ptr [eax]
 005602BA    call       dword ptr [ecx+0B8]
 005602C0    add        esp,0FFFFFFF8
 005602C3    fstp       qword ptr [esp]
 005602C6    wait
 005602C7    lea        edx,[ebp-40]
 005602CA    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 005602CF    mov        eax,dword ptr [eax]
 005602D1    mov        ecx,dword ptr [eax]
 005602D3    call       dword ptr [ecx+58]
>005602D6    jmp        00560391
 005602DB    mov        edx,ebx
 005602DD    mov        eax,dword ptr [ebp-8]
 005602E0    mov        ecx,dword ptr [eax]
 005602E2    call       dword ptr [ecx+0BC]
 005602E8    add        esp,0FFFFFFF8
 005602EB    fstp       qword ptr [esp]
 005602EE    wait
 005602EF    lea        edx,[ebp-40]
 005602F2    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 005602F7    mov        eax,dword ptr [eax]
 005602F9    mov        ecx,dword ptr [eax]
 005602FB    call       dword ptr [ecx+58]
>005602FE    jmp        00560391
 00560303    mov        eax,dword ptr [ebp-8]
 00560306    mov        edx,dword ptr [eax]
 00560308    call       dword ptr [edx+18]
 0056030B    cmp        ebx,7FFF
>00560311    jbe        00560318
 00560313    call       @BoundErr
 00560318    imul       edx,ebx,0B
>0056031B    jno        00560322
 0056031D    call       @IntOver
 00560322    mov        eax,dword ptr [eax+edx*4+14]
 00560326    mov        eax,dword ptr [eax+8]
 00560329    call       @GetMem
 0056032E    mov        dword ptr [ebp-14],eax
 00560331    lea        eax,[ebp-0C]
 00560334    push       eax
 00560335    lea        ecx,[ebp-14]
 00560338    cmp        ebx,0FFFF
>0056033E    jbe        00560345
 00560340    call       @BoundErr
 00560345    mov        edx,edi
 00560347    mov        eax,dword ptr [ebp-8]
 0056034A    mov        edi,dword ptr [eax]
 0056034C    call       dword ptr [edi+0C4]
 00560352    mov        eax,dword ptr [ebp-0C]
 00560355    test       eax,eax
>00560357    jns        0056035E
 00560359    call       @BoundErr
 0056035E    push       eax
 0056035F    mov        ecx,dword ptr [ebp-14]
 00560362    mov        dl,1
 00560364    mov        eax,[0055C39C]; TZASABlob
 00560369    call       TZASABlob.Create; TZASABlob.Create
 0056036E    mov        edx,eax
 00560370    test       edx,edx
>00560372    je         00560377
 00560374    sub        edx,0FFFFFFE8
 00560377    lea        eax,[ebp-10]
 0056037A    call       @IntfCopy
 0056037F    lea        edx,[ebp-40]
 00560382    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00560387    mov        eax,dword ptr [eax]
 00560389    mov        ecx,dword ptr [ebp-10]
 0056038C    mov        edi,dword ptr [eax]
 0056038E    call       dword ptr [edi+60]
 00560391    imul       eax,ebx,0B
>00560394    jno        0056039B
 00560396    call       @IntOver
 0056039B    mov        edx,dword ptr [ebp-4]
 0056039E    mov        edx,dword ptr [edx+60]; TZASACallableStatement.?f60:TZVariantDynArray
 005603A1    lea        eax,[edx+eax*4]
 005603A4    lea        edx,[ebp-40]
 005603A7    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 005603AD    call       @CopyRecord
 005603B2    inc        ebx
 005603B3    dec        esi
<005603B4    jne        00560037
 005603BA    xor        eax,eax
 005603BC    pop        edx
 005603BD    pop        ecx
 005603BE    pop        ecx
 005603BF    mov        dword ptr fs:[eax],edx
 005603C2    push       560418
 005603C7    lea        eax,[ebp-54]
 005603CA    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 005603D0    call       @DynArrayClear
 005603D5    lea        eax,[ebp-50]
 005603D8    mov        edx,2
 005603DD    call       @LStrArrayClr
 005603E2    lea        eax,[ebp-48]
 005603E5    call       @WStrClr
 005603EA    lea        eax,[ebp-44]
 005603ED    call       @LStrClr
 005603F2    lea        eax,[ebp-40]
 005603F5    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005603FB    call       @FinalizeRecord
 00560400    lea        eax,[ebp-10]
 00560403    call       @IntfClear
 00560408    lea        eax,[ebp-8]
 0056040B    call       @IntfClear
 00560410    ret
<00560411    jmp        @HandleFinally
<00560416    jmp        005603C7
 00560418    pop        edi
 00560419    pop        esi
 0056041A    pop        ebx
 0056041B    mov        esp,ebp
 0056041D    pop        ebp
 0056041E    ret
*}
//end;

//00560420
//procedure sub_00560420(?:?; ?:AnsiString);
//begin
{*
 00560420    push       ebp
 00560421    mov        ebp,esp
 00560423    push       ebx
 00560424    push       esi
 00560425    mov        ebx,edx
 00560427    mov        esi,eax
 00560429    sub        esi,1
>0056042C    jno        00560433
 0056042E    call       @IntOver
 00560433    test       esi,esi
>00560435    jl         00560458
 00560437    inc        esi
 00560438    cmp        dword ptr [ebx],0
>0056043B    je         00560449
 0056043D    mov        eax,ebx
 0056043F    mov        edx,560464; ','
 00560444    call       @LStrCat
 00560449    mov        eax,ebx
 0056044B    mov        edx,560470; '?'
 00560450    call       @LStrCat
 00560455    dec        esi
<00560456    jne        00560438
 00560458    pop        esi
 00560459    pop        ebx
 0056045A    pop        ebp
 0056045B    ret
*}
//end;

//00560474
//procedure sub_00560474(?:TZASACallableStatement; ?:AnsiString);
//begin
{*
 00560474    push       ebp
 00560475    mov        ebp,esp
 00560477    push       0
 00560479    push       ebx
 0056047A    push       esi
 0056047B    mov        esi,edx
 0056047D    mov        ebx,eax
 0056047F    xor        eax,eax
 00560481    push       ebp
 00560482    push       5604F4
 00560487    push       dword ptr fs:[eax]
 0056048A    mov        dword ptr fs:[eax],esp
 0056048D    mov        eax,dword ptr [ebx+4C]; TZASACallableStatement.?f4C:TZVariantDynArray
 00560490    call       @DynArrayHigh
 00560495    add        eax,1
>00560498    jno        0056049F
 0056049A    call       @IntOver
 0056049F    lea        edx,[ebp-4]
 005604A2    call       00560420
 005604A7    cmp        dword ptr [ebp-4],0
>005604AB    je         005604C7
 005604AD    push       560508; '('
 005604B2    push       dword ptr [ebp-4]
 005604B5    push       560514; ')'
 005604BA    lea        eax,[ebp-4]
 005604BD    mov        edx,3
 005604C2    call       @LStrCatN
 005604C7    push       560520; 'call '
 005604CC    push       dword ptr [ebx+48]; TZASACallableStatement.?f48:String
 005604CF    push       dword ptr [ebp-4]
 005604D2    mov        eax,esi
 005604D4    mov        edx,3
 005604D9    call       @LStrCatN
 005604DE    xor        eax,eax
 005604E0    pop        edx
 005604E1    pop        ecx
 005604E2    pop        ecx
 005604E3    mov        dword ptr fs:[eax],edx
 005604E6    push       5604FB
 005604EB    lea        eax,[ebp-4]
 005604EE    call       @LStrClr
 005604F3    ret
<005604F4    jmp        @HandleFinally
<005604F9    jmp        005604EB
 005604FB    pop        esi
 005604FC    pop        ebx
 005604FD    pop        ecx
 005604FE    pop        ebp
 005604FF    ret
*}
//end;

//00560528
//procedure sub_00560528(?:TZASACallableStatement);
//begin
{*
 00560528    push       ebp
 00560529    mov        ebp,esp
 0056052B    push       0
 0056052D    push       0
 0056052F    push       0
 00560531    push       ebx
 00560532    push       esi
 00560533    push       edi
 00560534    mov        ebx,eax
 00560536    xor        eax,eax
 00560538    push       ebp
 00560539    push       560664
 0056053E    push       dword ptr fs:[eax]
 00560541    mov        dword ptr fs:[eax],esp
 00560544    xor        edi,edi
 00560546    mov        eax,dword ptr [ebx+58]; TZASACallableStatement.?f58:dword
 00560549    push       eax
 0056054A    lea        eax,[ebp-4]
 0056054D    mov        ecx,1
 00560552    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 00560558    call       @DynArraySetLength
 0056055D    add        esp,4
 00560560    mov        eax,dword ptr [ebx+58]; TZASACallableStatement.?f58:dword
 00560563    push       eax
 00560564    lea        eax,[ebp-8]
 00560567    mov        ecx,1
 0056056C    mov        edx,dword ptr ds:[4DE944]; TZSQLTypeArray
 00560572    call       @DynArraySetLength
 00560577    add        esp,4
 0056057A    mov        eax,dword ptr [ebx+50]; TZASACallableStatement.?f50:TZSQLTypeArray
 0056057D    call       @DynArrayHigh
 00560582    test       eax,eax
>00560584    jl         0056060A
 0056058A    inc        eax
 0056058B    mov        dword ptr [ebp-0C],eax
 0056058E    xor        esi,esi
 00560590    mov        eax,dword ptr [ebx+50]; TZASACallableStatement.?f50:TZSQLTypeArray
 00560593    test       eax,eax
>00560595    je         0056059C
 00560597    cmp        esi,dword ptr [eax-4]
>0056059A    jb         005605A1
 0056059C    call       @BoundErr
 005605A1    cmp        byte ptr [eax+esi],0
>005605A5    je         00560604
 005605A7    mov        eax,dword ptr [ebx+50]; TZASACallableStatement.?f50:TZSQLTypeArray
 005605AA    test       eax,eax
>005605AC    je         005605B3
 005605AE    cmp        esi,dword ptr [eax-4]
>005605B1    jb         005605B8
 005605B3    call       @BoundErr
 005605B8    mov        al,byte ptr [eax+esi]
 005605BB    mov        edx,dword ptr [ebp-8]
 005605BE    test       edx,edx
>005605C0    je         005605C7
 005605C2    cmp        edi,dword ptr [edx-4]
>005605C5    jb         005605CC
 005605C7    call       @BoundErr
 005605CC    mov        byte ptr [edx+edi],al
 005605CF    imul       eax,edi,0B
>005605D2    jno        005605D9
 005605D4    call       @IntOver
 005605D9    mov        edx,dword ptr [ebp-4]
 005605DC    lea        eax,[edx+eax*4]
 005605DF    imul       edx,esi,0B
>005605E2    jno        005605E9
 005605E4    call       @IntOver
 005605E9    mov        ecx,dword ptr [ebx+4C]; TZASACallableStatement.?f4C:TZVariantDynArray
 005605EC    lea        edx,[ecx+edx*4]
 005605EF    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 005605F5    call       @CopyRecord
 005605FA    add        edi,1
>005605FD    jno        00560604
 005605FF    call       @IntOver
 00560604    inc        esi
 00560605    dec        dword ptr [ebp-0C]
<00560608    jne        00560590
 0056060A    cmp        edi,dword ptr [ebx+58]; TZASACallableStatement.?f58:dword
>0056060D    je         0056063A
 0056060F    lea        eax,[ebx+50]; TZASACallableStatement.?f50:TZSQLTypeArray
 00560612    mov        edx,dword ptr [ebp-8]
 00560615    mov        ecx,dword ptr ds:[4DE944]; TZSQLTypeArray
 0056061B    call       @DynArrayAsg
 00560620    lea        eax,[ebx+4C]; TZASACallableStatement.?f4C:TZVariantDynArray
 00560623    mov        edx,dword ptr [ebp-4]
 00560626    mov        ecx,dword ptr ds:[4C41A4]; TZVariantDynArray
 0056062C    call       @DynArrayAsg
 00560631    mov        edx,edi
 00560633    mov        eax,ebx
 00560635    mov        ecx,dword ptr [eax]
 00560637    call       dword ptr [ecx+78]; TZASACallableStatement.sub_004E0150
 0056063A    xor        eax,eax
 0056063C    pop        edx
 0056063D    pop        ecx
 0056063E    pop        ecx
 0056063F    mov        dword ptr fs:[eax],edx
 00560642    push       56066B
 00560647    lea        eax,[ebp-8]
 0056064A    mov        edx,dword ptr ds:[4DE944]; TZSQLTypeArray
 00560650    call       @DynArrayClear
 00560655    lea        eax,[ebp-4]
 00560658    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 0056065E    call       @DynArrayClear
 00560663    ret
<00560664    jmp        @HandleFinally
<00560669    jmp        00560647
 0056066B    pop        edi
 0056066C    pop        esi
 0056066D    pop        ebx
 0056066E    mov        esp,ebp
 00560670    pop        ebp
 00560671    ret
*}
//end;

end.