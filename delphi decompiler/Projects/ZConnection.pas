{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZConnection;

interface

uses
  Classes, Windows, Graphics, ZDbcIntfs;

type
  TZLoginEvent = procedure(Sender:TObject; var Username:String; var Password:String) of object;
  TZConnection = class(TComponent)
  public
    f30:String;//f30
    f34:String;//f34
    Port:Integer;//f38
    f3C:String;//f3C
    f40:String;//f40
    f44:String;//f44
    f48:String;//f48
    Properties:TStrings;//f4C
    AutoCommit:Boolean;//f50
    ReadOnly:Boolean;//f51
    TransactIsolationLevel:TZTransactIsolationLevel;//f52
    f54:IZConnection;//f54
    f58:TList;//f58
    f5C:TList;//f5C
    LoginPrompt:Boolean;//f60
    f61:byte;//f61
    f64:dword;//f64
    SQLHourGlass:Boolean;//f68
    DesignConnection:Boolean;//f69
    BeforeConnect:TNotifyEvent;//f70
    f72:word;//f72
    f74:dword;//f74
    BeforeDisconnect:TNotifyEvent;//f78
    f7A:word;//f7A
    f7C:dword;//f7C
    AfterDisconnect:TNotifyEvent;//f80
    f82:word;//f82
    f84:dword;//f84
    AfterConnect:TNotifyEvent;//f88
    f8A:word;//f8A
    f8C:dword;//f8C
    BeforeReconnect:TNotifyEvent;//f90
    AfterReconnect:TNotifyEvent;//f98
    OnCommit:TNotifyEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    OnRollback:TNotifyEvent;//fA8
    fAA:word;//fAA
    fAC:dword;//fAC
    OnStartTransaction:TNotifyEvent;//fB0
    fB2:word;//fB2
    fB4:dword;//fB4
    OnLogin:TZLoginEvent;//fB8
    fBA:word;//fBA
    fBC:dword;//fBC
    destructor Destroy; virtual;
    procedure Loaded; virtual;
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_0057704C; virtual;
    procedure sub_00577310; virtual;
    //function sub_0057738C:?; virtual;
    procedure sub_005774C8; virtual;
    procedure sub_005774FC; virtual;
    procedure sub_005775F8; virtual;
    //procedure sub_005777A0(?:?); virtual;
    //procedure sub_005775C0(?:?); virtual;
    //procedure sub_005776BC(?:?); virtual;
    //function sub_0057774C:?; virtual;
  end;

implementation

{$R *.DFM}

//00576A88
constructor TZConnection.Create(AOwner:TComponent);
begin
{*
 00576A88    push       ebp
 00576A89    mov        ebp,esp
 00576A8B    push       ebx
 00576A8C    push       esi
 00576A8D    test       dl,dl
>00576A8F    je         00576A99
 00576A91    add        esp,0FFFFFFF0
 00576A94    call       @ClassCreate
 00576A99    mov        ebx,edx
 00576A9B    mov        esi,eax
 00576A9D    xor        edx,edx
 00576A9F    mov        eax,esi
 00576AA1    call       TComponent.Create
 00576AA6    mov        byte ptr [esi+50],1; TZConnection.AutoCommit:Boolean
 00576AAA    mov        byte ptr [esi+51],0; TZConnection.ReadOnly:Boolean
 00576AAE    mov        byte ptr [esi+52],0; TZConnection.TransactIsolationLevel:TZTransactIsolationLevel
 00576AB2    lea        eax,[esi+54]; TZConnection.?f54:IZConnection
 00576AB5    call       @IntfClear
 00576ABA    mov        dl,1
 00576ABC    mov        eax,[0041C8E4]; TStringList
 00576AC1    call       TObject.Create; TStringList.Create
 00576AC6    mov        dword ptr [esi+4C],eax; TZConnection.Properties:TStrings
 00576AC9    mov        dl,1
 00576ACB    mov        eax,[0041C260]; TList
 00576AD0    call       TObject.Create; TList.Create
 00576AD5    mov        dword ptr [esi+58],eax; TZConnection.?f58:TList
 00576AD8    mov        dl,1
 00576ADA    mov        eax,[0041C260]; TList
 00576ADF    call       TObject.Create; TList.Create
 00576AE4    mov        dword ptr [esi+5C],eax; TZConnection.?f5C:TList
 00576AE7    mov        byte ptr [esi+60],0; TZConnection.LoginPrompt:Boolean
 00576AEB    mov        byte ptr [esi+69],0; TZConnection.DesignConnection:Boolean
 00576AEF    mov        eax,esi
 00576AF1    test       bl,bl
>00576AF3    je         00576B04
 00576AF5    call       @AfterConstruction
 00576AFA    pop        dword ptr fs:[0]
 00576B01    add        esp,0C
 00576B04    mov        eax,esi
 00576B06    pop        esi
 00576B07    pop        ebx
 00576B08    pop        ebp
 00576B09    ret
*}
end;

//00576B0C
destructor TZConnection.Destroy;
begin
{*
 00576B0C    push       ebp
 00576B0D    mov        ebp,esp
 00576B0F    push       ebx
 00576B10    push       esi
 00576B11    call       @BeforeDestruction
 00576B16    mov        ebx,edx
 00576B18    mov        esi,eax
 00576B1A    mov        eax,esi
 00576B1C    mov        edx,dword ptr [eax]
 00576B1E    call       dword ptr [edx+34]; TZConnection.sub_00577310
 00576B21    mov        eax,esi
 00576B23    call       00577924
 00576B28    mov        eax,dword ptr [esi+4C]; TZConnection.Properties:TStrings
 00576B2B    call       TObject.Free
 00576B30    mov        eax,dword ptr [esi+58]; TZConnection.?f58:TList
 00576B33    call       TObject.Free
 00576B38    mov        eax,dword ptr [esi+5C]; TZConnection.?f5C:TList
 00576B3B    mov        edx,dword ptr [eax]
 00576B3D    call       dword ptr [edx+8]; TList.Clear
 00576B40    mov        eax,dword ptr [esi+5C]; TZConnection.?f5C:TList
 00576B43    call       TObject.Free
 00576B48    mov        edx,ebx
 00576B4A    and        dl,0FC
 00576B4D    mov        eax,esi
 00576B4F    call       TComponent.Destroy
 00576B54    test       bl,bl
>00576B56    jle        00576B5F
 00576B58    mov        eax,esi
 00576B5A    call       @ClassDestroy
 00576B5F    pop        esi
 00576B60    pop        ebx
 00576B61    pop        ebp
 00576B62    ret
*}
end;

//00576B64
procedure TZConnection.Loaded;
begin
{*
 00576B64    push       ebp
 00576B65    mov        ebp,esp
 00576B67    push       ecx
 00576B68    push       ebx
 00576B69    push       esi
 00576B6A    push       edi
 00576B6B    mov        dword ptr [ebp-4],eax
 00576B6E    mov        eax,dword ptr [ebp-4]
 00576B71    call       TComponent.Loaded
 00576B76    xor        eax,eax
 00576B78    push       ebp
 00576B79    push       576BB3
 00576B7E    push       dword ptr fs:[eax]
 00576B81    mov        dword ptr fs:[eax],esp
 00576B84    mov        eax,dword ptr [ebp-4]
 00576B87    cmp        byte ptr [eax+61],0; TZConnection.?f61:byte
>00576B8B    je         00576BA9
 00576B8D    mov        eax,dword ptr [ebp-4]
 00576B90    test       byte ptr [eax+1C],10; TZConnection.FComponentState:TComponentState
>00576B94    jne        00576B9F
 00576B96    mov        eax,dword ptr [ebp-4]
 00576B99    cmp        byte ptr [eax+69],0; TZConnection.DesignConnection:Boolean
>00576B9D    jne        00576BA9
 00576B9F    mov        dl,1
 00576BA1    mov        eax,dword ptr [ebp-4]
 00576BA4    call       TZConnection.SetConnected
 00576BA9    xor        eax,eax
 00576BAB    pop        edx
 00576BAC    pop        ecx
 00576BAD    pop        ecx
 00576BAE    mov        dword ptr fs:[eax],edx
>00576BB1    jmp        00576BFE
<00576BB3    jmp        @HandleAnyException
 00576BB8    mov        eax,dword ptr [ebp-4]
 00576BBB    test       byte ptr [eax+1C],10; TZConnection.FComponentState:TComponentState
>00576BBF    je         00576BF4
 00576BC1    mov        eax,[0061B9D0]; ^ApplicationHandleException:procedure(val Sender:System.TObject) of object
 00576BC6    cmp        word ptr [eax+2],0
>00576BCB    je         00576BE1
 00576BCD    call       ExceptObject
 00576BD2    mov        edx,eax
 00576BD4    mov        ebx,dword ptr ds:[61B9D0]; ^ApplicationHandleException:procedure(val Sender:System.TObject) of object
 00576BDA    mov        eax,dword ptr [ebx+4]
 00576BDD    call       dword ptr [ebx]
>00576BDF    jmp        00576BF9
 00576BE1    call       ExceptAddr
 00576BE6    push       eax
 00576BE7    call       ExceptObject
 00576BEC    pop        edx
 00576BED    call       ShowException
>00576BF2    jmp        00576BF9
 00576BF4    call       @RaiseAgain
 00576BF9    call       @DoneExcept
 00576BFE    pop        edi
 00576BFF    pop        esi
 00576C00    pop        ebx
 00576C01    pop        ecx
 00576C02    pop        ebp
 00576C03    ret
*}
end;

//00576C04
//function TZConnection.GetConnected(Self:TZConnection):?;
//begin
{*
 00576C04    push       ebp
 00576C05    mov        ebp,esp
 00576C07    push       ebx
 00576C08    mov        ebx,eax
 00576C0A    cmp        dword ptr [ebx+54],0; TZConnection.?f54:IZConnection
>00576C0E    je         00576C1C
 00576C10    mov        eax,dword ptr [ebx+54]; TZConnection.?f54:IZConnection
 00576C13    mov        edx,dword ptr [eax]
 00576C15    call       dword ptr [edx+5C]
 00576C18    test       al,al
>00576C1A    je         00576C21
 00576C1C    xor        eax,eax
 00576C1E    pop        ebx
 00576C1F    pop        ebp
 00576C20    ret
 00576C21    mov        al,1
 00576C23    pop        ebx
 00576C24    pop        ebp
 00576C25    ret
*}
//end;

//00576C28
//procedure TZConnection.SetConnected(Self:TZConnection; ?:?);
//begin
{*
 00576C28    push       ebp
 00576C29    mov        ebp,esp
 00576C2B    push       ebx
 00576C2C    push       esi
 00576C2D    mov        ebx,edx
 00576C2F    mov        esi,eax
 00576C31    test       byte ptr [esi+1C],2; TZConnection.FComponentState:TComponentState
 00576C35    setne      al
 00576C38    test       al,bl
>00576C3A    je         00576C42
 00576C3C    mov        byte ptr [esi+61],1; TZConnection.?f61:byte
>00576C40    jmp        00576C61
 00576C42    mov        eax,esi
 00576C44    call       TZConnection.GetConnected
 00576C49    cmp        bl,al
>00576C4B    je         00576C61
 00576C4D    test       bl,bl
>00576C4F    je         00576C5A
 00576C51    mov        eax,esi
 00576C53    mov        edx,dword ptr [eax]
 00576C55    call       dword ptr [edx+30]; TZConnection.sub_0057704C
>00576C58    jmp        00576C61
 00576C5A    mov        eax,esi
 00576C5C    mov        edx,dword ptr [eax]
 00576C5E    call       dword ptr [edx+34]; TZConnection.sub_00577310
 00576C61    pop        esi
 00576C62    pop        ebx
 00576C63    pop        ebp
 00576C64    ret
*}
//end;

//00576C68
//procedure TZConnection.SetProperties(Self:TZConnection; ?:?);
//begin
{*
 00576C68    push       ebp
 00576C69    mov        ebp,esp
 00576C6B    push       0
 00576C6D    push       ebx
 00576C6E    push       esi
 00576C6F    mov        esi,edx
 00576C71    mov        ebx,eax
 00576C73    xor        eax,eax
 00576C75    push       ebp
 00576C76    push       576CBA
 00576C7B    push       dword ptr fs:[eax]
 00576C7E    mov        dword ptr fs:[eax],esp
 00576C81    test       esi,esi
>00576C83    je         00576C9C
 00576C85    lea        edx,[ebp-4]
 00576C88    mov        eax,esi
 00576C8A    mov        ecx,dword ptr [eax]
 00576C8C    call       dword ptr [ecx+1C]
 00576C8F    mov        edx,dword ptr [ebp-4]
 00576C92    mov        eax,dword ptr [ebx+4C]; TZConnection.Properties:TStrings
 00576C95    mov        ecx,dword ptr [eax]
 00576C97    call       dword ptr [ecx+2C]; TStrings.SetTextStr
>00576C9A    jmp        00576CA4
 00576C9C    mov        eax,dword ptr [ebx+4C]; TZConnection.Properties:TStrings
 00576C9F    mov        edx,dword ptr [eax]
 00576CA1    call       dword ptr [edx+44]; TStrings.Clear
 00576CA4    xor        eax,eax
 00576CA6    pop        edx
 00576CA7    pop        ecx
 00576CA8    pop        ecx
 00576CA9    mov        dword ptr fs:[eax],edx
 00576CAC    push       576CC1
 00576CB1    lea        eax,[ebp-4]
 00576CB4    call       @LStrClr
 00576CB9    ret
<00576CBA    jmp        @HandleFinally
<00576CBF    jmp        00576CB1
 00576CC1    pop        esi
 00576CC2    pop        ebx
 00576CC3    pop        ecx
 00576CC4    pop        ebp
 00576CC5    ret
*}
//end;

//00576CC8
//procedure TZConnection.SetAutoCommit(Self:TZConnection; ?:?);
//begin
{*
 00576CC8    push       ebp
 00576CC9    mov        ebp,esp
 00576CCB    add        esp,0FFFFFFF8
 00576CCE    push       ebx
 00576CCF    xor        ecx,ecx
 00576CD1    mov        dword ptr [ebp-8],ecx
 00576CD4    mov        ebx,edx
 00576CD6    mov        dword ptr [ebp-4],eax
 00576CD9    xor        eax,eax
 00576CDB    push       ebp
 00576CDC    push       576D7E
 00576CE1    push       dword ptr fs:[eax]
 00576CE4    mov        dword ptr fs:[eax],esp
 00576CE7    mov        eax,dword ptr [ebp-4]
 00576CEA    cmp        bl,byte ptr [eax+50]; TZConnection.AutoCommit:Boolean
>00576CED    je         00576D68
 00576CEF    mov        eax,dword ptr [ebp-4]
 00576CF2    cmp        dword ptr [eax+64],0; TZConnection.?f64:dword
>00576CF6    jle        00576D19
 00576CF8    lea        edx,[ebp-8]
 00576CFB    mov        eax,[0061BEF4]; ^#122.sResString68:TResStringRec
 00576D00    call       LoadResString
 00576D05    mov        ecx,dword ptr [ebp-8]
 00576D08    mov        dl,1
 00576D0A    mov        eax,[004087B0]; Exception
 00576D0F    call       Exception.Create; Exception.Create
 00576D14    call       @RaiseExcept
 00576D19    mov        eax,dword ptr [ebp-4]
 00576D1C    mov        byte ptr [eax+50],bl; TZConnection.AutoCommit:Boolean
 00576D1F    mov        eax,dword ptr [ebp-4]
 00576D22    call       005779A4
 00576D27    xor        eax,eax
 00576D29    push       ebp
 00576D2A    push       576D61
 00576D2F    push       dword ptr fs:[eax]
 00576D32    mov        dword ptr fs:[eax],esp
 00576D35    mov        eax,dword ptr [ebp-4]
 00576D38    cmp        dword ptr [eax+54],0; TZConnection.?f54:IZConnection
>00576D3C    je         00576D4B
 00576D3E    mov        eax,dword ptr [ebp-4]
 00576D41    mov        eax,dword ptr [eax+54]; TZConnection.?f54:IZConnection
 00576D44    mov        edx,ebx
 00576D46    mov        ecx,dword ptr [eax]
 00576D48    call       dword ptr [ecx+30]
 00576D4B    xor        eax,eax
 00576D4D    pop        edx
 00576D4E    pop        ecx
 00576D4F    pop        ecx
 00576D50    mov        dword ptr fs:[eax],edx
 00576D53    push       576D68
 00576D58    mov        eax,dword ptr [ebp-4]
 00576D5B    call       005779F8
 00576D60    ret
<00576D61    jmp        @HandleFinally
<00576D66    jmp        00576D58
 00576D68    xor        eax,eax
 00576D6A    pop        edx
 00576D6B    pop        ecx
 00576D6C    pop        ecx
 00576D6D    mov        dword ptr fs:[eax],edx
 00576D70    push       576D85
 00576D75    lea        eax,[ebp-8]
 00576D78    call       @LStrClr
 00576D7D    ret
<00576D7E    jmp        @HandleFinally
<00576D83    jmp        00576D75
 00576D85    pop        ebx
 00576D86    pop        ecx
 00576D87    pop        ecx
 00576D88    pop        ebp
 00576D89    ret
*}
//end;

//00576D8C
//procedure TZConnection.SetTransactIsolationLevel(Self:TZConnection; ?:?);
//begin
{*
 00576D8C    push       ebp
 00576D8D    mov        ebp,esp
 00576D8F    push       ecx
 00576D90    push       ebx
 00576D91    mov        ebx,edx
 00576D93    mov        dword ptr [ebp-4],eax
 00576D96    mov        eax,dword ptr [ebp-4]
 00576D99    cmp        bl,byte ptr [eax+52]; TZConnection.TransactIsolationLevel:TZTransactIsolationLevel
>00576D9C    je         00576DF0
 00576D9E    mov        eax,dword ptr [ebp-4]
 00576DA1    mov        byte ptr [eax+52],bl; TZConnection.TransactIsolationLevel:TZTransactIsolationLevel
 00576DA4    mov        eax,dword ptr [ebp-4]
 00576DA7    call       005779A4
 00576DAC    xor        eax,eax
 00576DAE    push       ebp
 00576DAF    push       576DE9
 00576DB4    push       dword ptr fs:[eax]
 00576DB7    mov        dword ptr fs:[eax],esp
 00576DBA    mov        eax,dword ptr [ebp-4]
 00576DBD    cmp        dword ptr [eax+54],0; TZConnection.?f54:IZConnection
>00576DC1    je         00576DD3
 00576DC3    mov        eax,dword ptr [ebp-4]
 00576DC6    mov        eax,dword ptr [eax+54]; TZConnection.?f54:IZConnection
 00576DC9    mov        edx,ebx
 00576DCB    mov        ecx,dword ptr [eax]
 00576DCD    call       dword ptr [ecx+84]
 00576DD3    xor        eax,eax
 00576DD5    pop        edx
 00576DD6    pop        ecx
 00576DD7    pop        ecx
 00576DD8    mov        dword ptr fs:[eax],edx
 00576DDB    push       576DF0
 00576DE0    mov        eax,dword ptr [ebp-4]
 00576DE3    call       005779F8
 00576DE8    ret
<00576DE9    jmp        @HandleFinally
<00576DEE    jmp        00576DE0
 00576DF0    pop        ebx
 00576DF1    pop        ecx
 00576DF2    pop        ebp
 00576DF3    ret
*}
//end;

//00576DF4
//procedure sub_00576DF4(?:TPersistent; ?:?);
//begin
{*
 00576DF4    push       ebp
 00576DF5    mov        ebp,esp
 00576DF7    push       0
 00576DF9    push       ebx
 00576DFA    push       esi
 00576DFB    mov        esi,edx
 00576DFD    mov        ebx,eax
 00576DFF    xor        eax,eax
 00576E01    push       ebp
 00576E02    push       576E55
 00576E07    push       dword ptr fs:[eax]
 00576E0A    mov        dword ptr fs:[eax],esp
 00576E0D    cmp        dword ptr [ebx+54],0; TZConnection.?f54:IZConnection
>00576E11    je         00576E1F
 00576E13    mov        edx,esi
 00576E15    mov        eax,dword ptr [ebx+54]; TZConnection.?f54:IZConnection
 00576E18    mov        ecx,dword ptr [eax]
 00576E1A    call       dword ptr [ecx+60]
>00576E1D    jmp        00576E3F
 00576E1F    lea        eax,[ebp-4]
 00576E22    push       eax
 00576E23    xor        ecx,ecx
 00576E25    xor        edx,edx
 00576E27    mov        eax,ebx
 00576E29    call       00576E64
 00576E2E    mov        edx,dword ptr [ebp-4]
 00576E31    mov        ecx,esi
 00576E33    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00576E38    mov        eax,dword ptr [eax]
 00576E3A    mov        ebx,dword ptr [eax]
 00576E3C    call       dword ptr [ebx+18]
 00576E3F    xor        eax,eax
 00576E41    pop        edx
 00576E42    pop        ecx
 00576E43    pop        ecx
 00576E44    mov        dword ptr fs:[eax],edx
 00576E47    push       576E5C
 00576E4C    lea        eax,[ebp-4]
 00576E4F    call       @LStrClr
 00576E54    ret
<00576E55    jmp        @HandleFinally
<00576E5A    jmp        00576E4C
 00576E5C    pop        esi
 00576E5D    pop        ebx
 00576E5E    pop        ecx
 00576E5F    pop        ebp
 00576E60    ret
*}
//end;

//00576E64
//procedure sub_00576E64(?:TPersistent; ?:AnsiString; ?:AnsiString; ?:?);
//begin
{*
 00576E64    push       ebp
 00576E65    mov        ebp,esp
 00576E67    add        esp,0FFFFFFA8
 00576E6A    push       ebx
 00576E6B    push       esi
 00576E6C    push       edi
 00576E6D    mov        edi,ecx
 00576E6F    mov        esi,edx
 00576E71    mov        ebx,eax
 00576E73    cmp        dword ptr [ebx+38],0; TZConnection.Port:Integer
>00576E77    je         00576EC7
 00576E79    mov        eax,dword ptr [ebp+8]
 00576E7C    push       eax
 00576E7D    mov        eax,dword ptr [ebx+30]; TZConnection.?f30:String
 00576E80    mov        dword ptr [ebp-30],eax
 00576E83    mov        byte ptr [ebp-2C],0B
 00576E87    mov        eax,dword ptr [ebx+34]; TZConnection.?f34:String
 00576E8A    mov        dword ptr [ebp-28],eax
 00576E8D    mov        byte ptr [ebp-24],0B
 00576E91    mov        eax,dword ptr [ebx+38]; TZConnection.Port:Integer
 00576E94    mov        dword ptr [ebp-20],eax
 00576E97    mov        byte ptr [ebp-1C],0
 00576E9B    mov        eax,dword ptr [ebx+3C]; TZConnection.?f3C:String
 00576E9E    mov        dword ptr [ebp-18],eax
 00576EA1    mov        byte ptr [ebp-14],0B
 00576EA5    mov        dword ptr [ebp-10],esi
 00576EA8    mov        byte ptr [ebp-0C],0B
 00576EAC    mov        dword ptr [ebp-8],edi
 00576EAF    mov        byte ptr [ebp-4],0B
 00576EB3    lea        edx,[ebp-30]
 00576EB6    mov        ecx,5
 00576EBB    mov        eax,576F1C; 'zdbc:%s://%s:%d/%s?UID=%s;PWD=%s'
 00576EC0    call       Format
>00576EC5    jmp        00576F09
 00576EC7    mov        eax,dword ptr [ebp+8]
 00576ECA    push       eax
 00576ECB    mov        eax,dword ptr [ebx+30]; TZConnection.?f30:String
 00576ECE    mov        dword ptr [ebp-58],eax
 00576ED1    mov        byte ptr [ebp-54],0B
 00576ED5    mov        eax,dword ptr [ebx+34]; TZConnection.?f34:String
 00576ED8    mov        dword ptr [ebp-50],eax
 00576EDB    mov        byte ptr [ebp-4C],0B
 00576EDF    mov        eax,dword ptr [ebx+3C]; TZConnection.?f3C:String
 00576EE2    mov        dword ptr [ebp-48],eax
 00576EE5    mov        byte ptr [ebp-44],0B
 00576EE9    mov        dword ptr [ebp-40],esi
 00576EEC    mov        byte ptr [ebp-3C],0B
 00576EF0    mov        dword ptr [ebp-38],edi
 00576EF3    mov        byte ptr [ebp-34],0B
 00576EF7    lea        edx,[ebp-58]
 00576EFA    mov        ecx,4
 00576EFF    mov        eax,576F48; 'zdbc:%s://%s/%s?UID=%s;PWD=%s'
 00576F04    call       Format
 00576F09    pop        edi
 00576F0A    pop        esi
 00576F0B    pop        ebx
 00576F0C    mov        esp,ebp
 00576F0E    pop        ebp
 00576F0F    ret        4
*}
//end;

//00576F68
//procedure sub_00576F68(?:TZConnection);
//begin
{*
 00576F68    push       ebp
 00576F69    mov        ebp,esp
 00576F6B    push       ebx
 00576F6C    cmp        word ptr [eax+72],0; TZConnection.?f72:word
>00576F71    je         00576F7D
 00576F73    mov        ebx,eax
 00576F75    mov        edx,eax
 00576F77    mov        eax,dword ptr [ebx+74]; TZConnection.?f74:dword
 00576F7A    call       dword ptr [ebx+70]; TZConnection.BeforeConnect
 00576F7D    pop        ebx
 00576F7E    pop        ebp
 00576F7F    ret
*}
//end;

//00576F80
//procedure sub_00576F80(?:TZConnection);
//begin
{*
 00576F80    push       ebp
 00576F81    mov        ebp,esp
 00576F83    push       ebx
 00576F84    cmp        word ptr [eax+8A],0; TZConnection.?f8A:word
>00576F8C    je         00576F9E
 00576F8E    mov        ebx,eax
 00576F90    mov        edx,eax
 00576F92    mov        eax,dword ptr [ebx+8C]; TZConnection.?f8C:dword
 00576F98    call       dword ptr [ebx+88]; TZConnection.AfterConnect
 00576F9E    pop        ebx
 00576F9F    pop        ebp
 00576FA0    ret
*}
//end;

//00576FA4
//procedure sub_00576FA4(?:TZConnection);
//begin
{*
 00576FA4    push       ebp
 00576FA5    mov        ebp,esp
 00576FA7    push       ebx
 00576FA8    cmp        word ptr [eax+7A],0; TZConnection.?f7A:word
>00576FAD    je         00576FB9
 00576FAF    mov        ebx,eax
 00576FB1    mov        edx,eax
 00576FB3    mov        eax,dword ptr [ebx+7C]; TZConnection.?f7C:dword
 00576FB6    call       dword ptr [ebx+78]; TZConnection.BeforeDisconnect
 00576FB9    pop        ebx
 00576FBA    pop        ebp
 00576FBB    ret
*}
//end;

//00576FBC
//procedure sub_00576FBC(?:TZConnection);
//begin
{*
 00576FBC    push       ebp
 00576FBD    mov        ebp,esp
 00576FBF    push       ebx
 00576FC0    cmp        word ptr [eax+82],0; TZConnection.?f82:word
>00576FC8    je         00576FDA
 00576FCA    mov        ebx,eax
 00576FCC    mov        edx,eax
 00576FCE    mov        eax,dword ptr [ebx+84]; TZConnection.?f84:dword
 00576FD4    call       dword ptr [ebx+80]; TZConnection.AfterDisconnect
 00576FDA    pop        ebx
 00576FDB    pop        ebp
 00576FDC    ret
*}
//end;

//00576FE0
//procedure sub_00576FE0(?:TZConnection);
//begin
{*
 00576FE0    push       ebp
 00576FE1    mov        ebp,esp
 00576FE3    push       ebx
 00576FE4    cmp        word ptr [eax+0A2],0; TZConnection.?fA2:word
>00576FEC    je         00576FFE
 00576FEE    mov        ebx,eax
 00576FF0    mov        edx,eax
 00576FF2    mov        eax,dword ptr [ebx+0A4]; TZConnection.?fA4:dword
 00576FF8    call       dword ptr [ebx+0A0]; TZConnection.OnCommit
 00576FFE    pop        ebx
 00576FFF    pop        ebp
 00577000    ret
*}
//end;

//00577004
//procedure sub_00577004(?:TZConnection);
//begin
{*
 00577004    push       ebp
 00577005    mov        ebp,esp
 00577007    push       ebx
 00577008    cmp        word ptr [eax+0AA],0; TZConnection.?fAA:word
>00577010    je         00577022
 00577012    mov        ebx,eax
 00577014    mov        edx,eax
 00577016    mov        eax,dword ptr [ebx+0AC]; TZConnection.?fAC:dword
 0057701C    call       dword ptr [ebx+0A8]; TZConnection.OnRollback
 00577022    pop        ebx
 00577023    pop        ebp
 00577024    ret
*}
//end;

//00577028
//procedure sub_00577028(?:TZConnection);
//begin
{*
 00577028    push       ebp
 00577029    mov        ebp,esp
 0057702B    push       ebx
 0057702C    cmp        word ptr [eax+0B2],0; TZConnection.?fB2:word
>00577034    je         00577046
 00577036    mov        ebx,eax
 00577038    mov        edx,eax
 0057703A    mov        eax,dword ptr [ebx+0B4]; TZConnection.?fB4:dword
 00577040    call       dword ptr [ebx+0B0]; TZConnection.OnStartTransaction
 00577046    pop        ebx
 00577047    pop        ebp
 00577048    ret
*}
//end;

//0057704C
procedure sub_0057704C;
begin
{*
 0057704C    push       ebp
 0057704D    mov        ebp,esp
 0057704F    xor        ecx,ecx
 00577051    push       ecx
 00577052    push       ecx
 00577053    push       ecx
 00577054    push       ecx
 00577055    push       ecx
 00577056    push       ecx
 00577057    push       ecx
 00577058    push       ebx
 00577059    push       esi
 0057705A    push       edi
 0057705B    mov        dword ptr [ebp-4],eax
 0057705E    xor        eax,eax
 00577060    push       ebp
 00577061    push       5772C2
 00577066    push       dword ptr fs:[eax]
 00577069    mov        dword ptr fs:[eax],esp
 0057706C    mov        eax,dword ptr [ebp-4]
 0057706F    cmp        dword ptr [eax+54],0; TZConnection.?f54:IZConnection
>00577073    jne        00577287
 00577079    mov        eax,dword ptr [ebp-4]
 0057707C    call       00576F68
 00577081    lea        eax,[ebp-8]
 00577084    mov        edx,dword ptr [ebp-4]
 00577087    mov        edx,dword ptr [edx+40]; TZConnection.?f40:String
 0057708A    call       @LStrLAsg
 0057708F    lea        eax,[ebp-0C]
 00577092    mov        edx,dword ptr [ebp-4]
 00577095    mov        edx,dword ptr [edx+44]; TZConnection.?f44:String
 00577098    call       @LStrLAsg
 0057709D    mov        eax,dword ptr [ebp-4]
 005770A0    cmp        byte ptr [eax+60],0; TZConnection.LoginPrompt:Boolean
>005770A4    je         00577181
 005770AA    cmp        dword ptr [ebp-8],0
>005770AE    jne        005770C3
 005770B0    lea        ecx,[ebp-8]
 005770B3    mov        eax,dword ptr [ebp-4]
 005770B6    mov        eax,dword ptr [eax+4C]; TZConnection.Properties:TStrings
 005770B9    mov        edx,5772D8; 'UID'
 005770BE    call       TStrings.GetValue
 005770C3    cmp        dword ptr [ebp-8],0
>005770C7    jne        005770DC
 005770C9    lea        ecx,[ebp-8]
 005770CC    mov        eax,dword ptr [ebp-4]
 005770CF    mov        eax,dword ptr [eax+4C]; TZConnection.Properties:TStrings
 005770D2    mov        edx,5772E4; 'username'
 005770D7    call       TStrings.GetValue
 005770DC    cmp        dword ptr [ebp-0C],0
>005770E0    jne        005770F5
 005770E2    lea        ecx,[ebp-0C]
 005770E5    mov        eax,dword ptr [ebp-4]
 005770E8    mov        eax,dword ptr [eax+4C]; TZConnection.Properties:TStrings
 005770EB    mov        edx,5772F8; 'PWD'
 005770F0    call       TStrings.GetValue
 005770F5    cmp        dword ptr [ebp-0C],0
>005770F9    jne        0057710E
 005770FB    lea        ecx,[ebp-0C]
 005770FE    mov        eax,dword ptr [ebp-4]
 00577101    mov        eax,dword ptr [eax+4C]; TZConnection.Properties:TStrings
 00577104    mov        edx,577304; 'password'
 00577109    call       TStrings.GetValue
 0057710E    mov        eax,dword ptr [ebp-4]
 00577111    cmp        word ptr [eax+0BA],0; TZConnection.?fBA:word
>00577119    je         00577136
 0057711B    lea        eax,[ebp-0C]
 0057711E    push       eax
 0057711F    lea        ecx,[ebp-8]
 00577122    mov        ebx,dword ptr [ebp-4]
 00577125    mov        edx,dword ptr [ebp-4]
 00577128    mov        eax,dword ptr [ebx+0BC]; TZConnection.?fBC:dword
 0057712E    call       dword ptr [ebx+0B8]; TZConnection.OnLogin
>00577134    jmp        00577181
 00577136    mov        eax,[0061B10C]; LoginDialogProc:function(val ADatabaseName:System.AnsiString;var AUserName:System.AnsiString;var APassword:System.AnsiString):System.Boolean
 0057713B    cmp        dword ptr [eax],0
>0057713E    je         00577160
 00577140    mov        ebx,dword ptr ds:[61B10C]; LoginDialogProc:function(val ADatabaseName:System.AnsiString;var AUserName:System.AnsiString;var APassword:System.AnsiString):System.Boolean
 00577146    mov        ebx,dword ptr [ebx]
 00577148    lea        ecx,[ebp-0C]
 0057714B    lea        edx,[ebp-8]
 0057714E    mov        eax,dword ptr [ebp-4]
 00577151    mov        eax,dword ptr [eax+3C]; TZConnection.?f3C:String
 00577154    call       ebx
 00577156    test       al,al
>00577158    je         00577287
>0057715E    jmp        00577181
 00577160    lea        edx,[ebp-14]
 00577163    mov        eax,[0061B59C]; ^#122.sResString80:TResStringRec
 00577168    call       LoadResString
 0057716D    mov        ecx,dword ptr [ebp-14]
 00577170    mov        dl,1
 00577172    mov        eax,[004087B0]; Exception
 00577177    call       Exception.Create; Exception.Create
 0057717C    call       @RaiseExcept
 00577181    mov        eax,dword ptr [ebp-4]
 00577184    call       005779A4
 00577189    xor        eax,eax
 0057718B    push       ebp
 0057718C    push       577269
 00577191    push       dword ptr fs:[eax]
 00577194    mov        dword ptr fs:[eax],esp
 00577197    lea        eax,[ebp-18]
 0057719A    push       eax
 0057719B    lea        eax,[ebp-1C]
 0057719E    push       eax
 0057719F    mov        ecx,dword ptr [ebp-0C]
 005771A2    mov        edx,dword ptr [ebp-8]
 005771A5    mov        eax,dword ptr [ebp-4]
 005771A8    call       00576E64
 005771AD    mov        edx,dword ptr [ebp-1C]
 005771B0    mov        eax,dword ptr [ebp-4]
 005771B3    mov        ecx,dword ptr [eax+4C]; TZConnection.Properties:TStrings
 005771B6    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 005771BB    mov        eax,dword ptr [eax]
 005771BD    mov        ebx,dword ptr [eax]
 005771BF    call       dword ptr [ebx+10]
 005771C2    mov        edx,dword ptr [ebp-18]
 005771C5    mov        eax,dword ptr [ebp-4]
 005771C8    add        eax,54; TZConnection.?f54:IZConnection
 005771CB    call       @IntfCopy
 005771D0    xor        eax,eax
 005771D2    push       ebp
 005771D3    push       577239
 005771D8    push       dword ptr fs:[eax]
 005771DB    mov        dword ptr fs:[eax],esp
 005771DE    lea        eax,[ebp-10]
 005771E1    mov        edx,dword ptr [ebp-4]
 005771E4    mov        edx,dword ptr [edx+54]; TZConnection.?f54:IZConnection
 005771E7    call       @IntfCopy
 005771EC    mov        eax,dword ptr [ebp-4]
 005771EF    mov        dl,byte ptr [eax+50]; TZConnection.AutoCommit:Boolean
 005771F2    mov        eax,dword ptr [ebp-10]
 005771F5    mov        ecx,dword ptr [eax]
 005771F7    call       dword ptr [ecx+30]
 005771FA    mov        eax,dword ptr [ebp-4]
 005771FD    mov        dl,byte ptr [eax+51]; TZConnection.ReadOnly:Boolean
 00577200    mov        eax,dword ptr [ebp-10]
 00577203    mov        ecx,dword ptr [eax]
 00577205    call       dword ptr [ecx+74]
 00577208    mov        eax,dword ptr [ebp-4]
 0057720B    mov        edx,dword ptr [eax+48]; TZConnection.?f48:String
 0057720E    mov        eax,dword ptr [ebp-10]
 00577211    mov        ecx,dword ptr [eax]
 00577213    call       dword ptr [ecx+7C]
 00577216    mov        eax,dword ptr [ebp-4]
 00577219    mov        dl,byte ptr [eax+52]; TZConnection.TransactIsolationLevel:TZTransactIsolationLevel
 0057721C    mov        eax,dword ptr [ebp-10]
 0057721F    mov        ecx,dword ptr [eax]
 00577221    call       dword ptr [ecx+84]
 00577227    mov        eax,dword ptr [ebp-10]
 0057722A    mov        edx,dword ptr [eax]
 0057722C    call       dword ptr [edx+54]
 0057722F    xor        eax,eax
 00577231    pop        edx
 00577232    pop        ecx
 00577233    pop        ecx
 00577234    mov        dword ptr fs:[eax],edx
>00577237    jmp        00577253
<00577239    jmp        @HandleAnyException
 0057723E    mov        eax,dword ptr [ebp-4]
 00577241    add        eax,54; TZConnection.?f54:IZConnection
 00577244    call       @IntfClear
 00577249    call       @RaiseAgain
 0057724E    call       @DoneExcept
 00577253    xor        eax,eax
 00577255    pop        edx
 00577256    pop        ecx
 00577257    pop        ecx
 00577258    mov        dword ptr fs:[eax],edx
 0057725B    push       577270
 00577260    mov        eax,dword ptr [ebp-4]
 00577263    call       005779F8
 00577268    ret
<00577269    jmp        @HandleFinally
<0057726E    jmp        00577260
 00577270    mov        eax,dword ptr [ebp-4]
 00577273    mov        eax,dword ptr [eax+54]; TZConnection.?f54:IZConnection
 00577276    mov        edx,dword ptr [eax]
 00577278    call       dword ptr [edx+5C]
 0057727B    test       al,al
>0057727D    jne        00577287
 0057727F    mov        eax,dword ptr [ebp-4]
 00577282    call       00576F80
 00577287    xor        eax,eax
 00577289    pop        edx
 0057728A    pop        ecx
 0057728B    pop        ecx
 0057728C    mov        dword ptr fs:[eax],edx
 0057728F    push       5772C9
 00577294    lea        eax,[ebp-1C]
 00577297    call       @LStrClr
 0057729C    lea        eax,[ebp-18]
 0057729F    call       @IntfClear
 005772A4    lea        eax,[ebp-14]
 005772A7    call       @LStrClr
 005772AC    lea        eax,[ebp-10]
 005772AF    call       @IntfClear
 005772B4    lea        eax,[ebp-0C]
 005772B7    mov        edx,2
 005772BC    call       @LStrArrayClr
 005772C1    ret
<005772C2    jmp        @HandleFinally
<005772C7    jmp        00577294
 005772C9    pop        edi
 005772CA    pop        esi
 005772CB    pop        ebx
 005772CC    mov        esp,ebp
 005772CE    pop        ebp
 005772CF    ret
*}
end;

//00577310
procedure sub_00577310;
begin
{*
 00577310    push       ebp
 00577311    mov        ebp,esp
 00577313    push       ecx
 00577314    mov        dword ptr [ebp-4],eax
 00577317    mov        eax,dword ptr [ebp-4]
 0057731A    cmp        dword ptr [eax+54],0; TZConnection.?f54:IZConnection
>0057731E    je         00577389
 00577320    mov        eax,dword ptr [ebp-4]
 00577323    call       00576FA4
 00577328    mov        eax,dword ptr [ebp-4]
 0057732B    call       005779A4
 00577330    xor        eax,eax
 00577332    push       ebp
 00577333    push       57737A
 00577338    push       dword ptr fs:[eax]
 0057733B    mov        dword ptr fs:[eax],esp
 0057733E    mov        eax,dword ptr [ebp-4]
 00577341    call       00577890
 00577346    mov        eax,dword ptr [ebp-4]
 00577349    call       00577A7C
 0057734E    mov        eax,dword ptr [ebp-4]
 00577351    mov        eax,dword ptr [eax+54]; TZConnection.?f54:IZConnection
 00577354    mov        edx,dword ptr [eax]
 00577356    call       dword ptr [edx+58]
 00577359    xor        eax,eax
 0057735B    pop        edx
 0057735C    pop        ecx
 0057735D    pop        ecx
 0057735E    mov        dword ptr fs:[eax],edx
 00577361    push       577381
 00577366    mov        eax,dword ptr [ebp-4]
 00577369    add        eax,54; TZConnection.?f54:IZConnection
 0057736C    call       @IntfClear
 00577371    mov        eax,dword ptr [ebp-4]
 00577374    call       005779F8
 00577379    ret
<0057737A    jmp        @HandleFinally
<0057737F    jmp        00577366
 00577381    mov        eax,dword ptr [ebp-4]
 00577384    call       00576FBC
 00577389    pop        ecx
 0057738A    pop        ebp
 0057738B    ret
*}
end;

//0057738C
//function sub_0057738C:?;
//begin
{*
 0057738C    push       ebp
 0057738D    mov        ebp,esp
 0057738F    push       ebx
 00577390    mov        ebx,eax
 00577392    cmp        dword ptr [ebx+54],0; TZConnection.?f54:IZConnection
>00577396    je         005773A4
 00577398    mov        eax,dword ptr [ebx+54]; TZConnection.?f54:IZConnection
 0057739B    mov        edx,dword ptr [eax]
 0057739D    call       dword ptr [edx+4C]
 005773A0    test       eax,eax
>005773A2    je         005773A9
 005773A4    xor        eax,eax
 005773A6    pop        ebx
 005773A7    pop        ebp
 005773A8    ret
 005773A9    mov        al,1
 005773AB    pop        ebx
 005773AC    pop        ebp
 005773AD    ret
*}
//end;

//005773B0
//procedure sub_005773B0(?:TZConnection);
//begin
{*
 005773B0    push       ebp
 005773B1    mov        ebp,esp
 005773B3    push       0
 005773B5    xor        edx,edx
 005773B7    push       ebp
 005773B8    push       577400
 005773BD    push       dword ptr fs:[edx]
 005773C0    mov        dword ptr fs:[edx],esp
 005773C3    cmp        dword ptr [eax+54],0; TZConnection.?f54:IZConnection
>005773C7    jne        005773EA
 005773C9    lea        edx,[ebp-4]
 005773CC    mov        eax,[0061B110]; ^#122.sResString53:TResStringRec
 005773D1    call       LoadResString
 005773D6    mov        ecx,dword ptr [ebp-4]
 005773D9    mov        dl,1
 005773DB    mov        eax,[0057089C]; EZDatabaseError
 005773E0    call       EZDatabaseError.Create; EZDatabaseError.Create
 005773E5    call       @RaiseExcept
 005773EA    xor        eax,eax
 005773EC    pop        edx
 005773ED    pop        ecx
 005773EE    pop        ecx
 005773EF    mov        dword ptr fs:[eax],edx
 005773F2    push       577407
 005773F7    lea        eax,[ebp-4]
 005773FA    call       @LStrClr
 005773FF    ret
<00577400    jmp        @HandleFinally
<00577405    jmp        005773F7
 00577407    pop        ecx
 00577408    pop        ebp
 00577409    ret
*}
//end;

//0057740C
//procedure sub_0057740C(?:TZConnection);
//begin
{*
 0057740C    push       ebp
 0057740D    mov        ebp,esp
 0057740F    push       0
 00577411    xor        edx,edx
 00577413    push       ebp
 00577414    push       57745C
 00577419    push       dword ptr fs:[edx]
 0057741C    mov        dword ptr fs:[edx],esp
 0057741F    cmp        byte ptr [eax+50],0; TZConnection.AutoCommit:Boolean
>00577423    je         00577446
 00577425    lea        edx,[ebp-4]
 00577428    mov        eax,[0061B0A8]; ^#122.sResString54:TResStringRec
 0057742D    call       LoadResString
 00577432    mov        ecx,dword ptr [ebp-4]
 00577435    mov        dl,1
 00577437    mov        eax,[0057089C]; EZDatabaseError
 0057743C    call       EZDatabaseError.Create; EZDatabaseError.Create
 00577441    call       @RaiseExcept
 00577446    xor        eax,eax
 00577448    pop        edx
 00577449    pop        ecx
 0057744A    pop        ecx
 0057744B    mov        dword ptr fs:[eax],edx
 0057744E    push       577463
 00577453    lea        eax,[ebp-4]
 00577456    call       @LStrClr
 0057745B    ret
<0057745C    jmp        @HandleFinally
<00577461    jmp        00577453
 00577463    pop        ecx
 00577464    pop        ebp
 00577465    ret
*}
//end;

//00577468
//procedure sub_00577468(?:TZConnection);
//begin
{*
 00577468    push       ebp
 00577469    mov        ebp,esp
 0057746B    push       0
 0057746D    xor        edx,edx
 0057746F    push       ebp
 00577470    push       5774BE
 00577475    push       dword ptr fs:[edx]
 00577478    mov        dword ptr fs:[edx],esp
 0057747B    cmp        byte ptr [eax+50],0; TZConnection.AutoCommit:Boolean
>0057747F    jne        005774A8
 00577481    cmp        dword ptr [eax+64],0; TZConnection.?f64:dword
>00577485    jne        005774A8
 00577487    lea        edx,[ebp-4]
 0057748A    mov        eax,[0061BD20]; ^#122.sResString55:TResStringRec
 0057748F    call       LoadResString
 00577494    mov        ecx,dword ptr [ebp-4]
 00577497    mov        dl,1
 00577499    mov        eax,[0057089C]; EZDatabaseError
 0057749E    call       EZDatabaseError.Create; EZDatabaseError.Create
 005774A3    call       @RaiseExcept
 005774A8    xor        eax,eax
 005774AA    pop        edx
 005774AB    pop        ecx
 005774AC    pop        ecx
 005774AD    mov        dword ptr fs:[eax],edx
 005774B0    push       5774C5
 005774B5    lea        eax,[ebp-4]
 005774B8    call       @LStrClr
 005774BD    ret
<005774BE    jmp        @HandleFinally
<005774C3    jmp        005774B5
 005774C5    pop        ecx
 005774C6    pop        ebp
 005774C7    ret
*}
//end;

//005774C8
procedure sub_005774C8;
begin
{*
 005774C8    push       ebp
 005774C9    mov        ebp,esp
 005774CB    push       ebx
 005774CC    mov        ebx,eax
 005774CE    mov        eax,ebx
 005774D0    call       00577468
 005774D5    cmp        dword ptr [ebx+64],0; TZConnection.?f64:dword
>005774D9    jne        005774E4
 005774DB    xor        edx,edx
 005774DD    mov        eax,ebx
 005774DF    call       TZConnection.SetAutoCommit
 005774E4    mov        eax,ebx
 005774E6    call       00577028
 005774EB    add        dword ptr [ebx+64],1; TZConnection.?f64:dword
>005774EF    jno        005774F6
 005774F1    call       @IntOver
 005774F6    pop        ebx
 005774F7    pop        ebp
 005774F8    ret
*}
end;

//005774FC
procedure sub_005774FC;
begin
{*
 005774FC    push       ebp
 005774FD    mov        ebp,esp
 005774FF    add        esp,0FFFFFFF8
 00577502    mov        dword ptr [ebp-4],eax
 00577505    mov        eax,dword ptr [ebp-4]
 00577508    call       005773B0
 0057750D    mov        eax,dword ptr [ebp-4]
 00577510    call       0057740C
 00577515    mov        eax,dword ptr [ebp-4]
 00577518    mov        eax,dword ptr [eax+64]; TZConnection.?f64:dword
 0057751B    test       eax,eax
 0057751D    setg       byte ptr [ebp-5]
 00577521    cmp        eax,2
>00577524    jge        005775AD
 0057752A    mov        eax,dword ptr [ebp-4]
 0057752D    call       005779A4
 00577532    xor        eax,eax
 00577534    push       ebp
 00577535    push       57759C
 0057753A    push       dword ptr fs:[eax]
 0057753D    mov        dword ptr fs:[eax],esp
 00577540    xor        eax,eax
 00577542    push       ebp
 00577543    push       57757F
 00577548    push       dword ptr fs:[eax]
 0057754B    mov        dword ptr fs:[eax],esp
 0057754E    mov        eax,dword ptr [ebp-4]
 00577551    mov        eax,dword ptr [eax+54]; TZConnection.?f54:IZConnection
 00577554    mov        edx,dword ptr [eax]
 00577556    call       dword ptr [edx+38]
 00577559    xor        eax,eax
 0057755B    pop        edx
 0057755C    pop        ecx
 0057755D    pop        ecx
 0057755E    mov        dword ptr fs:[eax],edx
 00577561    push       577586
 00577566    mov        eax,dword ptr [ebp-4]
 00577569    xor        edx,edx
 0057756B    mov        dword ptr [eax+64],edx; TZConnection.?f64:dword
 0057756E    cmp        byte ptr [ebp-5],0
>00577572    je         0057757E
 00577574    mov        dl,1
 00577576    mov        eax,dword ptr [ebp-4]
 00577579    call       TZConnection.SetAutoCommit
 0057757E    ret
<0057757F    jmp        @HandleFinally
<00577584    jmp        00577566
 00577586    xor        eax,eax
 00577588    pop        edx
 00577589    pop        ecx
 0057758A    pop        ecx
 0057758B    mov        dword ptr fs:[eax],edx
 0057758E    push       5775A3
 00577593    mov        eax,dword ptr [ebp-4]
 00577596    call       005779F8
 0057759B    ret
<0057759C    jmp        @HandleFinally
<005775A1    jmp        00577593
 005775A3    mov        eax,dword ptr [ebp-4]
 005775A6    call       00576FE0
>005775AB    jmp        005775BB
 005775AD    mov        eax,dword ptr [ebp-4]
 005775B0    sub        dword ptr [eax+64],1
>005775B4    jno        005775BB
 005775B6    call       @IntOver
 005775BB    pop        ecx
 005775BC    pop        ecx
 005775BD    pop        ebp
 005775BE    ret
*}
end;

//005775C0
//procedure sub_005775C0(?:?);
//begin
{*
 005775C0    push       ebp
 005775C1    mov        ebp,esp
 005775C3    push       ebx
 005775C4    push       esi
 005775C5    push       edi
 005775C6    mov        edi,edx
 005775C8    mov        esi,eax
 005775CA    mov        eax,esi
 005775CC    call       00577468
 005775D1    mov        bl,byte ptr [esi+52]; TZConnection.TransactIsolationLevel:TZTransactIsolationLevel
 005775D4    xor        edx,edx
 005775D6    mov        eax,esi
 005775D8    call       TZConnection.SetTransactIsolationLevel
 005775DD    mov        edx,edi
 005775DF    mov        eax,dword ptr [esi+54]; TZConnection.?f54:IZConnection
 005775E2    mov        ecx,dword ptr [eax]
 005775E4    call       dword ptr [ecx+44]
 005775E7    mov        edx,ebx
 005775E9    mov        eax,esi
 005775EB    call       TZConnection.SetTransactIsolationLevel
 005775F0    pop        edi
 005775F1    pop        esi
 005775F2    pop        ebx
 005775F3    pop        ebp
 005775F4    ret
*}
//end;

//005775F8
procedure sub_005775F8;
begin
{*
 005775F8    push       ebp
 005775F9    mov        ebp,esp
 005775FB    add        esp,0FFFFFFF8
 005775FE    mov        dword ptr [ebp-4],eax
 00577601    mov        eax,dword ptr [ebp-4]
 00577604    call       005773B0
 00577609    mov        eax,dword ptr [ebp-4]
 0057760C    call       0057740C
 00577611    mov        eax,dword ptr [ebp-4]
 00577614    mov        eax,dword ptr [eax+64]; TZConnection.?f64:dword
 00577617    test       eax,eax
 00577619    setg       byte ptr [ebp-5]
 0057761D    cmp        eax,2
>00577620    jge        005776A9
 00577626    mov        eax,dword ptr [ebp-4]
 00577629    call       005779A4
 0057762E    xor        eax,eax
 00577630    push       ebp
 00577631    push       577698
 00577636    push       dword ptr fs:[eax]
 00577639    mov        dword ptr fs:[eax],esp
 0057763C    xor        eax,eax
 0057763E    push       ebp
 0057763F    push       57767B
 00577644    push       dword ptr fs:[eax]
 00577647    mov        dword ptr fs:[eax],esp
 0057764A    mov        eax,dword ptr [ebp-4]
 0057764D    mov        eax,dword ptr [eax+54]; TZConnection.?f54:IZConnection
 00577650    mov        edx,dword ptr [eax]
 00577652    call       dword ptr [edx+3C]
 00577655    xor        eax,eax
 00577657    pop        edx
 00577658    pop        ecx
 00577659    pop        ecx
 0057765A    mov        dword ptr fs:[eax],edx
 0057765D    push       577682
 00577662    mov        eax,dword ptr [ebp-4]
 00577665    xor        edx,edx
 00577667    mov        dword ptr [eax+64],edx; TZConnection.?f64:dword
 0057766A    cmp        byte ptr [ebp-5],0
>0057766E    je         0057767A
 00577670    mov        dl,1
 00577672    mov        eax,dword ptr [ebp-4]
 00577675    call       TZConnection.SetAutoCommit
 0057767A    ret
<0057767B    jmp        @HandleFinally
<00577680    jmp        00577662
 00577682    xor        eax,eax
 00577684    pop        edx
 00577685    pop        ecx
 00577686    pop        ecx
 00577687    mov        dword ptr fs:[eax],edx
 0057768A    push       57769F
 0057768F    mov        eax,dword ptr [ebp-4]
 00577692    call       005779F8
 00577697    ret
<00577698    jmp        @HandleFinally
<0057769D    jmp        0057768F
 0057769F    mov        eax,dword ptr [ebp-4]
 005776A2    call       00577004
>005776A7    jmp        005776B7
 005776A9    mov        eax,dword ptr [ebp-4]
 005776AC    sub        dword ptr [eax+64],1
>005776B0    jno        005776B7
 005776B2    call       @IntOver
 005776B7    pop        ecx
 005776B8    pop        ecx
 005776B9    pop        ebp
 005776BA    ret
*}
end;

//005776BC
//procedure sub_005776BC(?:?);
//begin
{*
 005776BC    push       ebp
 005776BD    mov        ebp,esp
 005776BF    push       ebx
 005776C0    push       esi
 005776C1    push       edi
 005776C2    mov        edi,edx
 005776C4    mov        esi,eax
 005776C6    mov        eax,esi
 005776C8    call       00577468
 005776CD    mov        bl,byte ptr [esi+52]; TZConnection.TransactIsolationLevel:TZTransactIsolationLevel
 005776D0    xor        edx,edx
 005776D2    mov        eax,esi
 005776D4    call       TZConnection.SetTransactIsolationLevel
 005776D9    mov        edx,edi
 005776DB    mov        eax,dword ptr [esi+54]; TZConnection.?f54:IZConnection
 005776DE    mov        ecx,dword ptr [eax]
 005776E0    call       dword ptr [ecx+48]
 005776E3    mov        edx,ebx
 005776E5    mov        eax,esi
 005776E7    call       TZConnection.SetTransactIsolationLevel
 005776EC    pop        edi
 005776ED    pop        esi
 005776EE    pop        ebx
 005776EF    pop        ebp
 005776F0    ret
*}
//end;

//005776F4
procedure TZConnection.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005776F4    push       ebp
 005776F5    mov        ebp,esp
 005776F7    push       ebx
 005776F8    push       esi
 005776F9    push       edi
 005776FA    mov        ebx,ecx
 005776FC    mov        edi,edx
 005776FE    mov        esi,eax
 00577700    mov        ecx,ebx
 00577702    mov        edx,edi
 00577704    mov        eax,esi
 00577706    call       TComponent.Notification
 0057770B    cmp        bl,1
>0057770E    jne        00577744
 00577710    mov        eax,edi
 00577712    mov        edx,dword ptr ds:[499F6C]; TDataSet
 00577718    call       @IsClass
 0057771D    test       al,al
>0057771F    je         0057772A
 00577721    mov        edx,edi
 00577723    mov        eax,esi
 00577725    call       00577914
 0057772A    mov        eax,edi
 0057772C    mov        edx,dword ptr ds:[56BF10]; TZSequence
 00577732    call       @IsClass
 00577737    test       al,al
>00577739    je         00577744
 0057773B    mov        edx,edi
 0057773D    mov        eax,esi
 0057773F    call       00577B00
 00577744    pop        edi
 00577745    pop        esi
 00577746    pop        ebx
 00577747    pop        ebp
 00577748    ret
*}
end;

//0057774C
//function sub_0057774C:?;
//begin
{*
 0057774C    push       ebp
 0057774D    mov        ebp,esp
 0057774F    push       ecx
 00577750    push       ebx
 00577751    push       esi
 00577752    mov        esi,eax
 00577754    xor        ebx,ebx
 00577756    mov        eax,esi
 00577758    call       TZConnection.GetConnected
 0057775D    mov        byte ptr [ebp-1],al
 00577760    cmp        dword ptr [esi+54],0; TZConnection.?f54:IZConnection
>00577764    je         00577788
 00577766    mov        eax,dword ptr [esi+54]; TZConnection.?f54:IZConnection
 00577769    mov        edx,dword ptr [eax]
 0057776B    call       dword ptr [edx+4C]
 0057776E    test       eax,eax
 00577770    sete       bl
 00577773    test       bl,bl
>00577775    jne        00577797
 00577777    cmp        byte ptr [ebp-1],0
>0057777B    je         00577797
 0057777D    mov        edx,ebx
 0057777F    mov        eax,esi
 00577781    call       TZConnection.SetConnected
>00577786    jmp        00577797
 00577788    cmp        byte ptr [ebp-1],0
>0057778C    je         00577797
 0057778E    xor        edx,edx
 00577790    mov        eax,esi
 00577792    call       TZConnection.SetConnected
 00577797    mov        eax,ebx
 00577799    pop        esi
 0057779A    pop        ebx
 0057779B    pop        ecx
 0057779C    pop        ebp
 0057779D    ret
*}
//end;

//005777A0
//procedure sub_005777A0(?:?);
//begin
{*
 005777A0    push       ebp
 005777A1    mov        ebp,esp
 005777A3    add        esp,0FFFFFFF8
 005777A6    push       ebx
 005777A7    xor        ecx,ecx
 005777A9    mov        dword ptr [ebp-8],ecx
 005777AC    mov        ebx,edx
 005777AE    mov        dword ptr [ebp-4],eax
 005777B1    xor        eax,eax
 005777B3    push       ebp
 005777B4    push       577884
 005777B9    push       dword ptr fs:[eax]
 005777BC    mov        dword ptr fs:[eax],esp
 005777BF    mov        eax,dword ptr [ebp-4]
 005777C2    call       005773B0
 005777C7    mov        eax,dword ptr [ebp-4]
 005777CA    call       0057740C
 005777CF    mov        eax,dword ptr [ebp-4]
 005777D2    cmp        dword ptr [eax+64],1; TZConnection.?f64:dword
>005777D6    je         005777F9
 005777D8    lea        edx,[ebp-8]
 005777DB    mov        eax,[0061BFA0]; ^#122.sResString56:TResStringRec
 005777E0    call       LoadResString
 005777E5    mov        ecx,dword ptr [ebp-8]
 005777E8    mov        dl,1
 005777EA    mov        eax,[0057089C]; EZDatabaseError
 005777EF    call       EZDatabaseError.Create; EZDatabaseError.Create
 005777F4    call       @RaiseExcept
 005777F9    mov        eax,dword ptr [ebp-4]
 005777FC    call       005779A4
 00577801    xor        eax,eax
 00577803    push       ebp
 00577804    push       577867
 00577809    push       dword ptr fs:[eax]
 0057780C    mov        dword ptr fs:[eax],esp
 0057780F    xor        eax,eax
 00577811    push       ebp
 00577812    push       57784A
 00577817    push       dword ptr fs:[eax]
 0057781A    mov        dword ptr fs:[eax],esp
 0057781D    mov        eax,dword ptr [ebp-4]
 00577820    mov        eax,dword ptr [eax+54]; TZConnection.?f54:IZConnection
 00577823    mov        edx,ebx
 00577825    mov        ecx,dword ptr [eax]
 00577827    call       dword ptr [ecx+40]
 0057782A    xor        eax,eax
 0057782C    pop        edx
 0057782D    pop        ecx
 0057782E    pop        ecx
 0057782F    mov        dword ptr fs:[eax],edx
 00577832    push       577851
 00577837    mov        eax,dword ptr [ebp-4]
 0057783A    xor        edx,edx
 0057783C    mov        dword ptr [eax+64],edx; TZConnection.?f64:dword
 0057783F    mov        dl,1
 00577841    mov        eax,dword ptr [ebp-4]
 00577844    call       TZConnection.SetAutoCommit
 00577849    ret
<0057784A    jmp        @HandleFinally
<0057784F    jmp        00577837
 00577851    xor        eax,eax
 00577853    pop        edx
 00577854    pop        ecx
 00577855    pop        ecx
 00577856    mov        dword ptr fs:[eax],edx
 00577859    push       57786E
 0057785E    mov        eax,dword ptr [ebp-4]
 00577861    call       005779F8
 00577866    ret
<00577867    jmp        @HandleFinally
<0057786C    jmp        0057785E
 0057786E    xor        eax,eax
 00577870    pop        edx
 00577871    pop        ecx
 00577872    pop        ecx
 00577873    mov        dword ptr fs:[eax],edx
 00577876    push       57788B
 0057787B    lea        eax,[ebp-8]
 0057787E    call       @LStrClr
 00577883    ret
<00577884    jmp        @HandleFinally
<00577889    jmp        0057787B
 0057788B    pop        ebx
 0057788C    pop        ecx
 0057788D    pop        ecx
 0057788E    pop        ebp
 0057788F    ret
*}
//end;

//00577890
//procedure sub_00577890(?:TZConnection);
//begin
{*
 00577890    push       ebp
 00577891    mov        ebp,esp
 00577893    add        esp,0FFFFFFF4
 00577896    push       ebx
 00577897    push       esi
 00577898    push       edi
 00577899    mov        dword ptr [ebp-4],eax
 0057789C    mov        eax,dword ptr [ebp-4]
 0057789F    mov        eax,dword ptr [eax+58]; TZConnection.?f58:TList
 005778A2    mov        eax,dword ptr [eax+8]; TList.FCount:Integer
 005778A5    sub        eax,1
>005778A8    jno        005778AF
 005778AA    call       @IntOver
 005778AF    test       eax,eax
>005778B1    jl         005778FB
 005778B3    inc        eax
 005778B4    mov        dword ptr [ebp-0C],eax
 005778B7    mov        dword ptr [ebp-8],0
 005778BE    mov        eax,dword ptr [ebp-4]
 005778C1    mov        eax,dword ptr [eax+58]; TZConnection.?f58:TList
 005778C4    mov        edx,dword ptr [ebp-8]
 005778C7    call       TList.Get
 005778CC    xor        edx,edx
 005778CE    push       ebp
 005778CF    push       5778E9
 005778D4    push       dword ptr fs:[edx]
 005778D7    mov        dword ptr fs:[edx],esp
 005778DA    call       TDataSet.Close
 005778DF    xor        eax,eax
 005778E1    pop        edx
 005778E2    pop        ecx
 005778E3    pop        ecx
 005778E4    mov        dword ptr fs:[eax],edx
>005778E7    jmp        005778F3
<005778E9    jmp        @HandleAnyException
 005778EE    call       @DoneExcept
 005778F3    inc        dword ptr [ebp-8]
 005778F6    dec        dword ptr [ebp-0C]
<005778F9    jne        005778BE
 005778FB    pop        edi
 005778FC    pop        esi
 005778FD    pop        ebx
 005778FE    mov        esp,ebp
 00577900    pop        ebp
 00577901    ret
*}
//end;

//00577904
//procedure sub_00577904(?:?);
//begin
{*
 00577904    push       ebp
 00577905    mov        ebp,esp
 00577907    mov        eax,dword ptr [eax+58]
 0057790A    call       TList.Add
 0057790F    pop        ebp
 00577910    ret
*}
//end;

//00577914
//procedure sub_00577914(?:TZConnection);
//begin
{*
 00577914    push       ebp
 00577915    mov        ebp,esp
 00577917    mov        eax,dword ptr [eax+58]; TZConnection.?f58:TList
 0057791A    call       TList.Remove
 0057791F    pop        ebp
 00577920    ret
*}
//end;

//00577924
//procedure sub_00577924(?:TZConnection);
//begin
{*
 00577924    push       ebp
 00577925    mov        ebp,esp
 00577927    add        esp,0FFFFFFF8
 0057792A    push       ebx
 0057792B    push       esi
 0057792C    push       edi
 0057792D    mov        dword ptr [ebp-4],eax
 00577930    mov        eax,dword ptr [ebp-4]
 00577933    mov        eax,dword ptr [eax+58]; TZConnection.?f58:TList
 00577936    mov        eax,dword ptr [eax+8]; TList.FCount:Integer
 00577939    sub        eax,1
>0057793C    jno        00577943
 0057793E    call       @IntOver
 00577943    cmp        eax,0
>00577946    jl         0057799C
 00577948    mov        dword ptr [ebp-8],eax
 0057794B    mov        eax,dword ptr [ebp-4]
 0057794E    mov        eax,dword ptr [eax+58]; TZConnection.?f58:TList
 00577951    mov        edx,dword ptr [ebp-8]
 00577954    call       TList.Get
 00577959    mov        ebx,eax
 0057795B    mov        eax,dword ptr [ebp-4]
 0057795E    mov        eax,dword ptr [eax+58]; TZConnection.?f58:TList
 00577961    mov        edx,ebx
 00577963    call       TList.Remove
 00577968    xor        eax,eax
 0057796A    push       ebp
 0057796B    push       577989
 00577970    push       dword ptr fs:[eax]
 00577973    mov        dword ptr fs:[eax],esp
 00577976    xor        edx,edx
 00577978    mov        eax,ebx
 0057797A    call       TZAbstractRODataset.SetConnection
 0057797F    xor        eax,eax
 00577981    pop        edx
 00577982    pop        ecx
 00577983    pop        ecx
 00577984    mov        dword ptr fs:[eax],edx
>00577987    jmp        00577993
<00577989    jmp        @HandleAnyException
 0057798E    call       @DoneExcept
 00577993    dec        dword ptr [ebp-8]
 00577996    cmp        dword ptr [ebp-8],0FFFFFFFF
<0057799A    jne        0057794B
 0057799C    pop        edi
 0057799D    pop        esi
 0057799E    pop        ebx
 0057799F    pop        ecx
 005779A0    pop        ecx
 005779A1    pop        ebp
 005779A2    ret
*}
//end;

//005779A4
//procedure sub_005779A4(?:TZConnection);
//begin
{*
 005779A4    push       ebp
 005779A5    mov        ebp,esp
 005779A7    cmp        byte ptr [eax+68],0; TZConnection.SQLHourGlass:Boolean
>005779AB    je         005779F6
 005779AD    cmp        dword ptr ds:[61EF98],0; gvar_0061EF98
>005779B4    jne        005779E8
 005779B6    mov        eax,[0061BD78]; ^DBScreen:IDBScreen
 005779BB    cmp        dword ptr [eax],0
>005779BE    je         005779E8
 005779C0    mov        eax,[0061BD78]; ^DBScreen:IDBScreen
 005779C5    mov        eax,dword ptr [eax]
 005779C7    mov        edx,dword ptr [eax]
 005779C9    call       dword ptr [edx+0C]
 005779CC    mov        [0061EF9C],al; gvar_0061EF9C
 005779D1    cmp        byte ptr ds:[61EF9C],3; gvar_0061EF9C
>005779D8    je         005779E8
 005779DA    mov        eax,[0061BD78]; ^DBScreen:IDBScreen
 005779DF    mov        eax,dword ptr [eax]
 005779E1    mov        dl,2
 005779E3    mov        ecx,dword ptr [eax]
 005779E5    call       dword ptr [ecx+10]
 005779E8    add        dword ptr ds:[61EF98],1; gvar_0061EF98
>005779EF    jno        005779F6
 005779F1    call       @IntOver
 005779F6    pop        ebp
 005779F7    ret
*}
//end;

//005779F8
//procedure sub_005779F8(?:TZConnection);
//begin
{*
 005779F8    push       ebp
 005779F9    mov        ebp,esp
 005779FB    cmp        byte ptr [eax+68],0; TZConnection.SQLHourGlass:Boolean
>005779FF    je         00577A46
 00577A01    cmp        dword ptr ds:[61EF98],0; gvar_0061EF98
>00577A08    jle        00577A18
 00577A0A    sub        dword ptr ds:[61EF98],1; gvar_0061EF98
>00577A11    jno        00577A18
 00577A13    call       @IntOver
 00577A18    cmp        dword ptr ds:[61EF98],0; gvar_0061EF98
>00577A1F    jne        00577A46
 00577A21    cmp        byte ptr ds:[61EF9C],3; gvar_0061EF9C
>00577A28    je         00577A46
 00577A2A    mov        eax,[0061BD78]; ^DBScreen:IDBScreen
 00577A2F    cmp        dword ptr [eax],0
>00577A32    je         00577A46
 00577A34    mov        eax,[0061BD78]; ^DBScreen:IDBScreen
 00577A39    mov        eax,dword ptr [eax]
 00577A3B    mov        dl,byte ptr ds:[61EF9C]; gvar_0061EF9C
 00577A41    mov        ecx,dword ptr [eax]
 00577A43    call       dword ptr [ecx+10]
 00577A46    pop        ebp
 00577A47    ret
*}
//end;

//00577A48
//procedure TZConnection.GetVersion(Self:TZConnection; ?:?);
//begin
{*
 00577A48    push       ebp
 00577A49    mov        ebp,esp
 00577A4B    push       ebx
 00577A4C    mov        ebx,edx
 00577A4E    mov        eax,ebx
 00577A50    mov        edx,577A68; '6.6.6-stable'
 00577A55    call       @LStrAsg
 00577A5A    pop        ebx
 00577A5B    pop        ebp
 00577A5C    ret
*}
//end;

//00577A78
procedure TZConnection.SetVersion(Self:TZConnection);
begin
{*
 00577A78    ret
*}
end;

//00577A7C
//procedure sub_00577A7C(?:TZConnection);
//begin
{*
 00577A7C    push       ebp
 00577A7D    mov        ebp,esp
 00577A7F    add        esp,0FFFFFFF4
 00577A82    push       ebx
 00577A83    push       esi
 00577A84    push       edi
 00577A85    mov        dword ptr [ebp-4],eax
 00577A88    mov        eax,dword ptr [ebp-4]
 00577A8B    mov        eax,dword ptr [eax+5C]; TZConnection.?f5C:TList
 00577A8E    mov        eax,dword ptr [eax+8]; TList.FCount:Integer
 00577A91    sub        eax,1
>00577A94    jno        00577A9B
 00577A96    call       @IntOver
 00577A9B    test       eax,eax
>00577A9D    jl         00577AE7
 00577A9F    inc        eax
 00577AA0    mov        dword ptr [ebp-0C],eax
 00577AA3    mov        dword ptr [ebp-8],0
 00577AAA    mov        eax,dword ptr [ebp-4]
 00577AAD    mov        eax,dword ptr [eax+5C]; TZConnection.?f5C:TList
 00577AB0    mov        edx,dword ptr [ebp-8]
 00577AB3    call       TList.Get
 00577AB8    xor        edx,edx
 00577ABA    push       ebp
 00577ABB    push       577AD5
 00577AC0    push       dword ptr fs:[edx]
 00577AC3    mov        dword ptr fs:[edx],esp
 00577AC6    call       0056C04C
 00577ACB    xor        eax,eax
 00577ACD    pop        edx
 00577ACE    pop        ecx
 00577ACF    pop        ecx
 00577AD0    mov        dword ptr fs:[eax],edx
>00577AD3    jmp        00577ADF
<00577AD5    jmp        @HandleAnyException
 00577ADA    call       @DoneExcept
 00577ADF    inc        dword ptr [ebp-8]
 00577AE2    dec        dword ptr [ebp-0C]
<00577AE5    jne        00577AAA
 00577AE7    pop        edi
 00577AE8    pop        esi
 00577AE9    pop        ebx
 00577AEA    mov        esp,ebp
 00577AEC    pop        ebp
 00577AED    ret
*}
//end;

//00577AF0
//procedure sub_00577AF0(?:?);
//begin
{*
 00577AF0    push       ebp
 00577AF1    mov        ebp,esp
 00577AF3    mov        eax,dword ptr [eax+5C]
 00577AF6    call       TList.Add
 00577AFB    pop        ebp
 00577AFC    ret
*}
//end;

//00577B00
//procedure sub_00577B00(?:TZConnection);
//begin
{*
 00577B00    push       ebp
 00577B01    mov        ebp,esp
 00577B03    mov        ecx,dword ptr [eax+5C]; TZConnection.?f5C:TList
 00577B06    test       ecx,ecx
>00577B08    je         00577B11
 00577B0A    mov        eax,ecx
 00577B0C    call       TList.Remove
 00577B11    pop        ebp
 00577B12    ret
*}
//end;

Initialization
//00577B44
{*
 00577B44    push       ebp
 00577B45    mov        ebp,esp
 00577B47    sub        dword ptr ds:[61EF94],1
>00577B4E    jae        00577B57
 00577B50    xor        eax,eax
 00577B52    mov        [0061EF98],eax; gvar_0061EF98
 00577B57    pop        ebp
 00577B58    ret
*}
Finalization
end.