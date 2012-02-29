{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit89;

interface

uses
  Classes, Windows, Graphics;

type
  TRPCursor = class(TObject)
  public
    f4:TList;//f4
    destructor Destroy; virtual;
    constructor Create; virtual;
  end;

implementation

{$R *.DFM}

//00594E10
procedure sub_00594E10;
begin
{*
 00594E10    mov        dx,0FFF5
 00594E14    call       00594ED0
 00594E19    ret
*}
end;

//00594E1C
constructor TRPCursor.Create;
begin
{*
 00594E1C    push       ebx
 00594E1D    push       esi
 00594E1E    test       dl,dl
>00594E20    je         00594E2A
 00594E22    add        esp,0FFFFFFF0
 00594E25    call       @ClassCreate
 00594E2A    mov        ebx,edx
 00594E2C    mov        esi,eax
 00594E2E    xor        edx,edx
 00594E30    mov        eax,esi
 00594E32    call       TObject.Create
 00594E37    mov        dl,1
 00594E39    mov        eax,[0041C260]; TList
 00594E3E    call       TObject.Create; TList.Create
 00594E43    mov        dword ptr [esi+4],eax; TRPCursor.?f4:TList
 00594E46    mov        eax,esi
 00594E48    test       bl,bl
>00594E4A    je         00594E5B
 00594E4C    call       @AfterConstruction
 00594E51    pop        dword ptr fs:[0]
 00594E58    add        esp,0C
 00594E5B    mov        eax,esi
 00594E5D    pop        esi
 00594E5E    pop        ebx
 00594E5F    ret
*}
end;

//00594E60
destructor TRPCursor.Destroy;
begin
{*
 00594E60    push       ebx
 00594E61    push       esi
 00594E62    call       @BeforeDestruction
 00594E67    mov        ebx,edx
 00594E69    mov        esi,eax
 00594E6B    mov        eax,dword ptr [esi+4]; TRPCursor.?f4:TList
 00594E6E    call       TObject.Free
 00594E73    xor        eax,eax
 00594E75    mov        dword ptr [esi+4],eax; TRPCursor.?f4:TList
 00594E78    mov        edx,ebx
 00594E7A    and        dl,0FC
 00594E7D    mov        eax,esi
 00594E7F    call       TObject.Destroy
 00594E84    test       bl,bl
>00594E86    jle        00594E8F
 00594E88    mov        eax,esi
 00594E8A    call       @ClassDestroy
 00594E8F    pop        esi
 00594E90    pop        ebx
 00594E91    ret
*}
end;

//00594E94
//procedure sub_00594E94(?:TRPCursor);
//begin
{*
 00594E94    push       ebx
 00594E95    push       esi
 00594E96    push       edi
 00594E97    push       ebp
 00594E98    mov        esi,eax
 00594E9A    mov        edi,dword ptr [esi+4]; TRPCursor.?f4:TList
 00594E9D    mov        ebx,edi
 00594E9F    mov        ebp,dword ptr [ebx+8]; TList.FCount:Integer
 00594EA2    test       ebp,ebp
>00594EA4    jle        00594EC9
 00594EA6    mov        edx,ebp
 00594EA8    dec        edx
 00594EA9    mov        eax,edi
 00594EAB    call       TList.Get
 00594EB0    mov        edx,eax
 00594EB2    mov        eax,[0061C500]; ^Screen:TScreen
 00594EB7    mov        eax,dword ptr [eax]
 00594EB9    call       TScreen.SetCursor
 00594EBE    mov        edx,dword ptr [ebx+8]; TList.FCount:Integer
 00594EC1    dec        edx
 00594EC2    mov        eax,ebx
 00594EC4    call       TList.Delete
 00594EC9    pop        ebp
 00594ECA    pop        edi
 00594ECB    pop        esi
 00594ECC    pop        ebx
 00594ECD    ret
*}
//end;

//00594ED0
//procedure sub_00594ED0(?:?; ?:?);
//begin
{*
 00594ED0    push       ebx
 00594ED1    mov        ebx,edx
 00594ED3    mov        edx,dword ptr ds:[61C500]; ^Screen:TScreen
 00594ED9    mov        edx,dword ptr [edx]
 00594EDB    movsx      edx,word ptr [edx+44]; TScreen.FCursor:TCursor
 00594EDF    mov        eax,dword ptr [eax+4]
 00594EE2    call       TList.Add
 00594EE7    mov        eax,[0061C500]; ^Screen:TScreen
 00594EEC    mov        eax,dword ptr [eax]
 00594EEE    mov        edx,ebx
 00594EF0    call       TScreen.SetCursor
 00594EF5    pop        ebx
 00594EF6    ret
*}
//end;

Initialization
//00594F3C
{*
 00594F3C    sub        dword ptr ds:[61F000],1
>00594F43    jae        00594F56
 00594F45    mov        dl,1
 00594F47    mov        eax,[00594DB4]; TRPCursor
 00594F4C    call       TRPCursor.Create; TRPCursor.Create
 00594F51    mov        [0061EFFC],eax; gvar_0061EFFC:TRPCursor
 00594F56    ret
*}
Finalization
//00594EF8
{*
 00594EF8    push       ebp
 00594EF9    mov        ebp,esp
 00594EFB    xor        eax,eax
 00594EFD    push       ebp
 00594EFE    push       594F30
 00594F03    push       dword ptr fs:[eax]
 00594F06    mov        dword ptr fs:[eax],esp
 00594F09    inc        dword ptr ds:[61F000]
>00594F0F    jne        00594F22
 00594F11    mov        eax,[0061EFFC]; gvar_0061EFFC:TRPCursor
 00594F16    call       TObject.Free
 00594F1B    xor        eax,eax
 00594F1D    mov        [0061EFFC],eax; gvar_0061EFFC:TRPCursor
 00594F22    xor        eax,eax
 00594F24    pop        edx
 00594F25    pop        ecx
 00594F26    pop        ecx
 00594F27    mov        dword ptr fs:[eax],edx
 00594F2A    push       594F37
 00594F2F    ret
<00594F30    jmp        @HandleFinally
<00594F35    jmp        00594F2F
 00594F37    pop        ebp
 00594F38    ret
*}
end.