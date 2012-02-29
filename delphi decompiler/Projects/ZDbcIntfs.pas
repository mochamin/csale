{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDbcIntfs;

interface

uses
  Classes, Windows, Graphics, SysUtils, ZClasses;

type
  EZSQLThrowable = class(Exception)
  public
    fC:dword;//fC
    f10:String;//f10
  end;
  EZSQLException = class(EZSQLThrowable)
    //constructor Create(?:EZSQLException; _Dv__:Boolean);
    //constructor Create(?:EZSQLException; _Dv__:Boolean);
    //constructor Create(?:EZSQLException; _Dv__:Boolean; ?:?);
    //constructor Create(?:EZSQLException; _Dv__:Boolean; ?:?);
  end;
  TZSQLType = (stUnknown, stBoolean, stByte, stShort, stInteger, stLong, stFloat, stDouble, stBigDecimal, stString, stUnicodeString, stBytes, stDate, stTime, stTimestamp, stAsciiStream, stUnicodeStream, stBinaryStream);
  TZTransactIsolationLevel = (tiNone, tiReadUncommitted, tiReadCommitted, tiRepeatableRead, tiSerializable);
  TZDriverManager = class(TInterfacedObject)
  public
    fC:IZCollection;//fC
    f10:dword;//f10
    f14:IZCollection;//f14
    destructor Destroy; virtual;
    //constructor Create(?:TZDriverManager; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//004C7234
//constructor TZDriverManager.Create(?:TZDriverManager; _Dv__:Boolean);
//begin
{*
 004C7234    push       ebp
 004C7235    mov        ebp,esp
 004C7237    push       ebx
 004C7238    push       esi
 004C7239    test       dl,dl
>004C723B    je         004C7245
 004C723D    add        esp,0FFFFFFF0
 004C7240    call       @ClassCreate
 004C7245    mov        ebx,edx
 004C7247    mov        esi,eax
 004C7249    mov        dl,1
 004C724B    mov        eax,[004BCEAC]; TZCollection
 004C7250    call       TZCollection.Create; TZCollection.Create
 004C7255    mov        edx,eax
 004C7257    test       edx,edx
>004C7259    je         004C725E
 004C725B    sub        edx,0FFFFFFE4
 004C725E    lea        eax,[esi+0C]; TZDriverManager.?fC:IZCollection
 004C7261    call       @IntfCopy
 004C7266    xor        eax,eax
 004C7268    mov        dword ptr [esi+10],eax; TZDriverManager.?f10:dword
 004C726B    mov        dl,1
 004C726D    mov        eax,[004BCEAC]; TZCollection
 004C7272    call       TZCollection.Create; TZCollection.Create
 004C7277    mov        edx,eax
 004C7279    test       edx,edx
>004C727B    je         004C7280
 004C727D    sub        edx,0FFFFFFE4
 004C7280    lea        eax,[esi+14]; TZDriverManager.?f14:IZCollection
 004C7283    call       @IntfCopy
 004C7288    mov        eax,esi
 004C728A    test       bl,bl
>004C728C    je         004C729D
 004C728E    call       @AfterConstruction
 004C7293    pop        dword ptr fs:[0]
 004C729A    add        esp,0C
 004C729D    mov        eax,esi
 004C729F    pop        esi
 004C72A0    pop        ebx
 004C72A1    pop        ebp
 004C72A2    ret
*}
//end;

//004C72A4
destructor TZDriverManager.Destroy;
begin
{*
 004C72A4    push       ebp
 004C72A5    mov        ebp,esp
 004C72A7    push       ebx
 004C72A8    push       esi
 004C72A9    call       @BeforeDestruction
 004C72AE    mov        ebx,edx
 004C72B0    mov        esi,eax
 004C72B2    lea        eax,[esi+0C]; TZDriverManager.?fC:IZCollection
 004C72B5    call       @IntfClear
 004C72BA    lea        eax,[esi+14]; TZDriverManager.?f14:IZCollection
 004C72BD    call       @IntfClear
 004C72C2    mov        edx,ebx
 004C72C4    and        dl,0FC
 004C72C7    mov        eax,esi
 004C72C9    call       TObject.Destroy
 004C72CE    test       bl,bl
>004C72D0    jle        004C72D9
 004C72D2    mov        eax,esi
 004C72D4    call       @ClassDestroy
 004C72D9    pop        esi
 004C72DA    pop        ebx
 004C72DB    pop        ebp
 004C72DC    ret
*}
end;

//004C78C0
//constructor EZSQLException.Create(?:EZSQLException; _Dv__:Boolean);
//begin
{*
 004C78C0    push       ebp
 004C78C1    mov        ebp,esp
 004C78C3    push       ebx
 004C78C4    push       esi
 004C78C5    push       edi
 004C78C6    test       dl,dl
>004C78C8    je         004C78D2
 004C78CA    add        esp,0FFFFFFF0
 004C78CD    call       @ClassCreate
 004C78D2    mov        esi,ecx
 004C78D4    mov        ebx,edx
 004C78D6    mov        edi,eax
 004C78D8    mov        ecx,dword ptr [esi+4]
 004C78DB    xor        edx,edx
 004C78DD    mov        eax,edi
 004C78DF    call       Exception.Create
 004C78E4    mov        eax,dword ptr [esi+0C]
 004C78E7    mov        dword ptr [edi+0C],eax; EZSQLException.?fC:dword
 004C78EA    lea        eax,[edi+10]; EZSQLException.?f10:String
 004C78ED    mov        edx,dword ptr [esi+10]
 004C78F0    call       @LStrAsg
 004C78F5    mov        eax,edi
 004C78F7    test       bl,bl
>004C78F9    je         004C790A
 004C78FB    call       @AfterConstruction
 004C7900    pop        dword ptr fs:[0]
 004C7907    add        esp,0C
 004C790A    mov        eax,edi
 004C790C    pop        edi
 004C790D    pop        esi
 004C790E    pop        ebx
 004C790F    pop        ebp
 004C7910    ret
*}
//end;

//004C7914
//constructor EZSQLException.Create(?:EZSQLException; _Dv__:Boolean);
//begin
{*
 004C7914    push       ebp
 004C7915    mov        ebp,esp
 004C7917    push       ebx
 004C7918    push       esi
 004C7919    test       dl,dl
>004C791B    je         004C7925
 004C791D    add        esp,0FFFFFFF0
 004C7920    call       @ClassCreate
 004C7925    mov        ebx,edx
 004C7927    mov        esi,eax
 004C7929    xor        edx,edx
 004C792B    mov        eax,esi
 004C792D    call       Exception.Create
 004C7932    mov        dword ptr [esi+0C],0FFFFFFFF; EZSQLException.?fC:dword
 004C7939    mov        eax,esi
 004C793B    test       bl,bl
>004C793D    je         004C794E
 004C793F    call       @AfterConstruction
 004C7944    pop        dword ptr fs:[0]
 004C794B    add        esp,0C
 004C794E    mov        eax,esi
 004C7950    pop        esi
 004C7951    pop        ebx
 004C7952    pop        ebp
 004C7953    ret
*}
//end;

//004C7954
//constructor EZSQLException.Create(?:EZSQLException; _Dv__:Boolean; ?:?);
//begin
{*
 004C7954    push       ebp
 004C7955    mov        ebp,esp
 004C7957    push       ebx
 004C7958    push       esi
 004C7959    push       edi
 004C795A    test       dl,dl
>004C795C    je         004C7966
 004C795E    add        esp,0FFFFFFF0
 004C7961    call       @ClassCreate
 004C7966    mov        esi,ecx
 004C7968    mov        ebx,edx
 004C796A    mov        edi,eax
 004C796C    mov        ecx,dword ptr [ebp+8]
 004C796F    xor        edx,edx
 004C7971    mov        eax,edi
 004C7973    call       Exception.Create
 004C7978    mov        dword ptr [edi+0C],esi; EZSQLException.?fC:dword
 004C797B    mov        eax,edi
 004C797D    test       bl,bl
>004C797F    je         004C7990
 004C7981    call       @AfterConstruction
 004C7986    pop        dword ptr fs:[0]
 004C798D    add        esp,0C
 004C7990    mov        eax,edi
 004C7992    pop        edi
 004C7993    pop        esi
 004C7994    pop        ebx
 004C7995    pop        ebp
 004C7996    ret        4
*}
//end;

//004C799C
//constructor EZSQLException.Create(?:EZSQLException; _Dv__:Boolean; ?:?);
//begin
{*
 004C799C    push       ebp
 004C799D    mov        ebp,esp
 004C799F    push       ebx
 004C79A0    push       esi
 004C79A1    push       edi
 004C79A2    test       dl,dl
>004C79A4    je         004C79AE
 004C79A6    add        esp,0FFFFFFF0
 004C79A9    call       @ClassCreate
 004C79AE    mov        esi,ecx
 004C79B0    mov        ebx,edx
 004C79B2    mov        edi,eax
 004C79B4    mov        ecx,dword ptr [ebp+8]
 004C79B7    xor        edx,edx
 004C79B9    mov        eax,edi
 004C79BB    call       Exception.Create
 004C79C0    lea        eax,[edi+10]; EZSQLException.?f10:String
 004C79C3    mov        edx,esi
 004C79C5    call       @LStrAsg
 004C79CA    mov        eax,edi
 004C79CC    test       bl,bl
>004C79CE    je         004C79DF
 004C79D0    call       @AfterConstruction
 004C79D5    pop        dword ptr fs:[0]
 004C79DC    add        esp,0C
 004C79DF    mov        eax,edi
 004C79E1    pop        edi
 004C79E2    pop        esi
 004C79E3    pop        ebx
 004C79E4    pop        ebp
 004C79E5    ret        4
*}
//end;

Initialization
//004C7A2C
{*
 004C7A2C    push       ebp
 004C7A2D    mov        ebp,esp
 004C7A2F    xor        eax,eax
 004C7A31    push       ebp
 004C7A32    push       4C7A73
 004C7A37    push       dword ptr fs:[eax]
 004C7A3A    mov        dword ptr fs:[eax],esp
 004C7A3D    sub        dword ptr ds:[61DD14],1
>004C7A44    jae        004C7A65
 004C7A46    mov        dl,1
 004C7A48    mov        eax,[004C71BC]; TZDriverManager
 004C7A4D    call       TZDriverManager.Create; TZDriverManager.Create
 004C7A52    mov        edx,eax
 004C7A54    test       edx,edx
>004C7A56    je         004C7A5B
 004C7A58    sub        edx,0FFFFFFE8
 004C7A5B    mov        eax,61DD10; gvar_0061DD10:IInterface
 004C7A60    call       @IntfCopy
 004C7A65    xor        eax,eax
 004C7A67    pop        edx
 004C7A68    pop        ecx
 004C7A69    pop        ecx
 004C7A6A    mov        dword ptr fs:[eax],edx
 004C7A6D    push       4C7A7A
 004C7A72    ret
<004C7A73    jmp        @HandleFinally
<004C7A78    jmp        004C7A72
 004C7A7A    pop        ebp
 004C7A7B    ret
*}
Finalization
//004C79E8
{*
 004C79E8    push       ebp
 004C79E9    mov        ebp,esp
 004C79EB    xor        eax,eax
 004C79ED    push       ebp
 004C79EE    push       4C7A23
 004C79F3    push       dword ptr fs:[eax]
 004C79F6    mov        dword ptr fs:[eax],esp
 004C79F9    inc        dword ptr ds:[61DD14]
>004C79FF    jne        004C7A15
 004C7A01    mov        eax,61DD10; gvar_0061DD10:IInterface
 004C7A06    call       @IntfClear
 004C7A0B    mov        eax,61DD10; gvar_0061DD10:IInterface
 004C7A10    call       @IntfClear
 004C7A15    xor        eax,eax
 004C7A17    pop        edx
 004C7A18    pop        ecx
 004C7A19    pop        ecx
 004C7A1A    mov        dword ptr fs:[eax],edx
 004C7A1D    push       4C7A2A
 004C7A22    ret
<004C7A23    jmp        @HandleFinally
<004C7A28    jmp        004C7A22
 004C7A2A    pop        ebp
 004C7A2B    ret
*}
end.