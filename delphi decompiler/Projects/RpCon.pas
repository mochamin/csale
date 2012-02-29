{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpCon;

interface

uses
  Classes, Windows, Graphics, RpDefine;

type
  TRPConnectorEvent = procedure(Connection:TRvCustomConnection) of object;
  TRPEOFEvent = procedure(Connection:TRvCustomConnection; var Eof:Boolean) of object;
  TRPValidateRowEvent = procedure(Connection:TRvCustomConnection; var ValidRow:Boolean) of object;
  TRuntimeVisibility = (rtNone, rtDeveloper, rtEndUser);
  TDataConnectManager = class(TObject)
  public
    f4:TList;//f4
    destructor Destroy; virtual;
    //constructor Create(?:TDataConnectManager; _Dv__:Boolean);
  end;
  TDataConnectThread = class(TThread)
  public
    f40:dword;//f40
    f44:dword;//f44
    f48:byte;//f48
    f4C:TRvCustomConnection;//f4C
    procedure sub_0057A540; virtual;
  end;
  TDataConnectFieldDef = class(TObject)
  public
    f4:byte;//f4
    f8:String;//f8
    fC:byte;//fC
    f10:dword;//f10
    f14:String;//f14
    f18:dword;//f18
    f1C:dword;//f1C
    destructor Destroy; virtual;
    //constructor Create(?:TDataConnectFieldDef; _Dv__:Boolean; ?:?; ?:?);
  end;
  TRvCustomConnection = class(TRpComponent)
  public
    f34:dword;//f34
    f38:dword;//f38
    f3C:dword;//f3C
    f40:dword;//f40
    f44:dword;//f44
    f48:byte;//f48
    f4C:dword;//f4C
    f50:Int64;//f50
    f54:dword;//f54
    f5C:TDataConnectThread;//f5C
    f60:byte;//f60
    f64:String;//f64
    f68:byte;//f68
    f6C:TList;//f6C
    f70:dword;//f70
    f74:dword;//f74
    f78:dword;//f78
    f7C:dword;//f7C
    f80:String;//f80
    f84:String;//f84
    f88:String;//f88
    LocalFilter:Boolean;//f8C
    f8D:Boolean;//f8D
    RuntimeVisibility:TRuntimeVisibility;//f8E
    FieldAliasList:TStrings;//f90
    OnFirst:TRPConnectorEvent;//f98
    OnNext:TRPConnectorEvent;//fA0
    OnEOF:TRPEOFEvent;//fA8
    OnGetCols:TRPConnectorEvent;//fB0
    OnGetRow:TRPConnectorEvent;//fB8
    OnSetFilter:TRPConnectorEvent;//fC0
    OnGetSorts:TRPConnectorEvent;//fC8
    OnSetSort:TRPConnectorEvent;//fD0
    OnOpen:TRPConnectorEvent;//fD8
    OnRestore:TRPConnectorEvent;//fE0
    OnValidateRow:TRPValidateRowEvent;//fE8
    destructor Destroy; virtual;
    procedure DefineProperties(Filer:TFiler); virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_0057C7D0; virtual;
    procedure sub_0057C7D8; virtual;
    function sub_0057C7DC:Boolean; virtual;
    procedure sub_0057C898(); virtual;
    procedure sub_0057C7E8; virtual;
    procedure sub_0057C8C4(); virtual;
    procedure sub_0057C8C8(); virtual;
    procedure sub_0057C8D0(); virtual;
    procedure sub_0057C8D4; virtual;
    procedure sub_0057C8E4(); virtual;
    //function sub_0057C8E8():?; virtual;
  end;

implementation

{$R *.DFM}

//0057A39C
//constructor TDataConnectManager.Create(?:TDataConnectManager; _Dv__:Boolean);
//begin
{*
 0057A39C    push       ebx
 0057A39D    push       esi
 0057A39E    test       dl,dl
>0057A3A0    je         0057A3AA
 0057A3A2    add        esp,0FFFFFFF0
 0057A3A5    call       @ClassCreate
 0057A3AA    mov        ebx,edx
 0057A3AC    mov        esi,eax
 0057A3AE    xor        edx,edx
 0057A3B0    mov        eax,esi
 0057A3B2    call       TObject.Create
 0057A3B7    mov        dl,1
 0057A3B9    mov        eax,[0041C260]; TList
 0057A3BE    call       TObject.Create; TList.Create
 0057A3C3    mov        dword ptr [esi+4],eax; TDataConnectManager.?f4:TList
 0057A3C6    mov        eax,esi
 0057A3C8    test       bl,bl
>0057A3CA    je         0057A3DB
 0057A3CC    call       @AfterConstruction
 0057A3D1    pop        dword ptr fs:[0]
 0057A3D8    add        esp,0C
 0057A3DB    mov        eax,esi
 0057A3DD    pop        esi
 0057A3DE    pop        ebx
 0057A3DF    ret
*}
//end;

//0057A3E0
destructor TDataConnectManager.Destroy;
begin
{*
 0057A3E0    push       ebx
 0057A3E1    push       esi
 0057A3E2    call       @BeforeDestruction
 0057A3E7    mov        ebx,edx
 0057A3E9    mov        esi,eax
 0057A3EB    lea        eax,[esi+4]; TDataConnectManager.?f4:TList
 0057A3EE    call       FreeAndNil
 0057A3F3    mov        edx,ebx
 0057A3F5    and        dl,0FC
 0057A3F8    mov        eax,esi
 0057A3FA    call       TObject.Destroy
 0057A3FF    test       bl,bl
>0057A401    jle        0057A40A
 0057A403    mov        eax,esi
 0057A405    call       @ClassDestroy
 0057A40A    pop        esi
 0057A40B    pop        ebx
 0057A40C    ret
*}
end;

//0057A410
//procedure sub_0057A410(?:TDataConnectManager);
//begin
{*
 0057A410    mov        eax,dword ptr [eax+4]; TDataConnectManager.?f4:TList
 0057A413    call       TList.Add
 0057A418    ret
*}
//end;

//0057A41C
//procedure sub_0057A41C(?:TDataConnectManager);
//begin
{*
 0057A41C    mov        eax,dword ptr [eax+4]; TDataConnectManager.?f4:TList
 0057A41F    call       TList.Remove
 0057A424    ret
*}
//end;

//0057A428
//function sub_0057A428(?:TDataConnectManager; ?:AnsiString):?;
//begin
{*
 0057A428    push       ebp
 0057A429    mov        ebp,esp
 0057A42B    add        esp,0FFFFFFF8
 0057A42E    push       ebx
 0057A42F    push       esi
 0057A430    push       edi
 0057A431    mov        dword ptr [ebp-8],edx
 0057A434    mov        dword ptr [ebp-4],eax
 0057A437    mov        eax,dword ptr [ebp-8]
 0057A43A    call       @LStrAddRef
 0057A43F    xor        eax,eax
 0057A441    push       ebp
 0057A442    push       57A498
 0057A447    push       dword ptr fs:[eax]
 0057A44A    mov        dword ptr fs:[eax],esp
 0057A44D    mov        eax,dword ptr [ebp-4]
 0057A450    mov        eax,dword ptr [eax+4]; TDataConnectManager.?f4:TList
 0057A453    mov        ebx,dword ptr [eax+8]; TList.FCount:Integer
 0057A456    dec        ebx
 0057A457    test       ebx,ebx
>0057A459    jl         0057A480
 0057A45B    inc        ebx
 0057A45C    xor        edi,edi
 0057A45E    mov        eax,dword ptr [ebp-4]
 0057A461    mov        eax,dword ptr [eax+4]; TDataConnectManager.?f4:TList
 0057A464    mov        edx,edi
 0057A466    call       TList.Get
 0057A46B    mov        esi,eax
 0057A46D    mov        eax,dword ptr [esi+8]
 0057A470    mov        edx,dword ptr [ebp-8]
 0057A473    call       AnsiCompareText
 0057A478    test       eax,eax
>0057A47A    je         0057A482
 0057A47C    inc        edi
 0057A47D    dec        ebx
<0057A47E    jne        0057A45E
 0057A480    xor        esi,esi
 0057A482    xor        eax,eax
 0057A484    pop        edx
 0057A485    pop        ecx
 0057A486    pop        ecx
 0057A487    mov        dword ptr fs:[eax],edx
 0057A48A    push       57A49F
 0057A48F    lea        eax,[ebp-8]
 0057A492    call       @LStrClr
 0057A497    ret
<0057A498    jmp        @HandleFinally
<0057A49D    jmp        0057A48F
 0057A49F    mov        eax,esi
 0057A4A1    pop        edi
 0057A4A2    pop        esi
 0057A4A3    pop        ebx
 0057A4A4    pop        ecx
 0057A4A5    pop        ecx
 0057A4A6    pop        ebp
 0057A4A7    ret
*}
//end;

//0057A4A8
//procedure sub_0057A4A8(?:?);
//begin
{*
 0057A4A8    push       ebp
 0057A4A9    mov        ebp,esp
 0057A4AB    push       ecx
 0057A4AC    push       ebx
 0057A4AD    push       esi
 0057A4AE    push       edi
 0057A4AF    mov        dword ptr [ebp-4],eax
 0057A4B2    xor        eax,eax
 0057A4B4    push       ebp
 0057A4B5    push       57A4D3
 0057A4BA    push       dword ptr fs:[eax]
 0057A4BD    mov        dword ptr fs:[eax],esp
 0057A4C0    mov        ebx,dword ptr [ebp-4]
 0057A4C3    mov        eax,dword ptr [ebx+44]
 0057A4C6    call       dword ptr [ebx+40]
 0057A4C9    xor        eax,eax
 0057A4CB    pop        edx
 0057A4CC    pop        ecx
 0057A4CD    pop        ecx
 0057A4CE    mov        dword ptr fs:[eax],edx
>0057A4D1    jmp        0057A4DD
<0057A4D3    jmp        @HandleAnyException
 0057A4D8    call       @DoneExcept
 0057A4DD    mov        eax,dword ptr [ebp-4]
 0057A4E0    mov        byte ptr [eax+48],1
 0057A4E4    pop        edi
 0057A4E5    pop        esi
 0057A4E6    pop        ebx
 0057A4E7    pop        ecx
 0057A4E8    pop        ebp
 0057A4E9    ret
*}
//end;

//0057A4EC
//procedure sub_0057A4EC(?:TDataConnectThread; ?:?; ?:?);
//begin
{*
 0057A4EC    push       ebp
 0057A4ED    mov        ebp,esp
 0057A4EF    push       ebx
 0057A4F0    mov        ebx,eax
 0057A4F2    mov        eax,dword ptr [ebp+8]
 0057A4F5    mov        dword ptr [ebx+40],eax; TDataConnectThread.?f40:dword
 0057A4F8    mov        eax,dword ptr [ebp+0C]
 0057A4FB    mov        dword ptr [ebx+44],eax; TDataConnectThread.?f44:dword
 0057A4FE    mov        byte ptr [ebx+48],0; TDataConnectThread.?f48:byte
 0057A502    cmp        byte ptr ds:[616FE0],0
>0057A509    je         0057A51D
 0057A50B    mov        dword ptr ds:[616FE8],ebx; gvar_00616FE8:TDataConnectThread
 0057A511    mov        dword ptr ds:[616FE4],57A4A8
>0057A51B    jmp        0057A533
 0057A51D    push       ebx
 0057A51E    push       57A4A8; sub_0057A4A8
 0057A523    mov        eax,ebx
 0057A525    call       TThread.Synchronize
>0057A52A    jmp        0057A533
 0057A52C    push       0
 0057A52E    call       kernel32.Sleep
 0057A533    cmp        byte ptr [ebx+48],0; TDataConnectThread.?f48:byte
<0057A537    je         0057A52C
 0057A539    pop        ebx
 0057A53A    pop        ebp
 0057A53B    ret        8
*}
//end;

//0057A540
procedure sub_0057A540;
begin
{*
 0057A540    push       ebp
 0057A541    mov        ebp,esp
 0057A543    add        esp,0FFFFFFCC
 0057A546    push       ebx
 0057A547    push       esi
 0057A548    push       edi
 0057A549    xor        edx,edx
 0057A54B    mov        dword ptr [ebp-34],edx
 0057A54E    mov        dword ptr [ebp-30],edx
 0057A551    mov        dword ptr [ebp-2C],edx
 0057A554    mov        dword ptr [ebp-28],edx
 0057A557    mov        dword ptr [ebp-20],edx
 0057A55A    mov        esi,eax
 0057A55C    xor        eax,eax
 0057A55E    push       ebp
 0057A55F    push       57A9AE
 0057A564    push       dword ptr fs:[eax]
 0057A567    mov        dword ptr fs:[eax],esp
 0057A56A    xor        ebx,ebx
 0057A56C    mov        eax,dword ptr [esi+4C]; TDataConnectThread.?f4C:TRvCustomConnection
 0057A56F    mov        dword ptr [ebp-24],eax
 0057A572    mov        eax,57A9C4; 'RAVECOMPLETED'
 0057A577    call       005794F4
 0057A57C    mov        dword ptr [ebp-0C],eax
 0057A57F    mov        eax,57A9DC; 'RAVEDISCONNECT'
 0057A584    call       00579584
 0057A589    mov        dword ptr [ebp-18],eax
 0057A58C    mov        eax,57A9F4; 'RAVECONNECT'
 0057A591    call       005794F4
 0057A596    mov        dword ptr [ebp-14],eax
 0057A599    lea        eax,[ebp-20]
 0057A59C    mov        edx,57AA08; '!'
 0057A5A1    call       @LStrLAsg
 0057A5A6    xor        eax,eax
 0057A5A8    mov        dword ptr [ebp-1C],eax
 0057A5AB    xor        eax,eax
 0057A5AD    mov        dword ptr [ebp-10],eax
 0057A5B0    xor        edx,edx
 0057A5B2    push       ebp
 0057A5B3    push       57A984
 0057A5B8    push       dword ptr fs:[edx]
 0057A5BB    mov        dword ptr fs:[edx],esp
 0057A5BE    mov        eax,dword ptr [ebp-20]
 0057A5C1    mov        edx,dword ptr [ebp-24]
 0057A5C4    mov        edx,dword ptr [edx+8]
 0057A5C7    call       @LStrCmp
>0057A5CC    je         0057A681
 0057A5D2    cmp        dword ptr [ebp-1C],0
>0057A5D6    je         0057A5E1
 0057A5D8    mov        eax,dword ptr [ebp-1C]
 0057A5DB    push       eax
 0057A5DC    call       kernel32.CloseHandle
 0057A5E1    cmp        dword ptr [ebp-10],0
>0057A5E5    je         0057A5F0
 0057A5E7    mov        eax,dword ptr [ebp-10]
 0057A5EA    push       eax
 0057A5EB    call       kernel32.CloseHandle
 0057A5F0    mov        eax,dword ptr [ebp-24]
 0057A5F3    cmp        byte ptr [eax+60],0
>0057A5F7    je         0057A637
 0057A5F9    mov        eax,dword ptr [ebp-24]
 0057A5FC    mov        ecx,dword ptr [eax+8]
 0057A5FF    lea        eax,[ebp-28]
 0057A602    mov        edx,57AA14; 'RAVERTDATA_'
 0057A607    call       @LStrCat3
 0057A60C    mov        eax,dword ptr [ebp-28]
 0057A60F    call       005794F4
 0057A614    mov        dword ptr [ebp-1C],eax
 0057A617    mov        eax,dword ptr [ebp-24]
 0057A61A    mov        ecx,dword ptr [eax+8]
 0057A61D    lea        eax,[ebp-2C]
 0057A620    mov        edx,57AA28; 'RAVERTACK_'
 0057A625    call       @LStrCat3
 0057A62A    mov        eax,dword ptr [ebp-2C]
 0057A62D    call       005794F4
 0057A632    mov        dword ptr [ebp-10],eax
>0057A635    jmp        0057A673
 0057A637    mov        eax,dword ptr [ebp-24]
 0057A63A    mov        ecx,dword ptr [eax+8]
 0057A63D    lea        eax,[ebp-30]
 0057A640    mov        edx,57AA3C; 'RAVEDTDATA_'
 0057A645    call       @LStrCat3
 0057A64A    mov        eax,dword ptr [ebp-30]
 0057A64D    call       005794F4
 0057A652    mov        dword ptr [ebp-1C],eax
 0057A655    mov        eax,dword ptr [ebp-24]
 0057A658    mov        ecx,dword ptr [eax+8]
 0057A65B    lea        eax,[ebp-34]
 0057A65E    mov        edx,57AA50; 'RAVEDTACK_'
 0057A663    call       @LStrCat3
 0057A668    mov        eax,dword ptr [ebp-34]
 0057A66B    call       005794F4
 0057A670    mov        dword ptr [ebp-10],eax
 0057A673    lea        eax,[ebp-20]
 0057A676    mov        edx,dword ptr [ebp-24]
 0057A679    mov        edx,dword ptr [edx+8]
 0057A67C    call       @LStrLAsg
 0057A681    mov        eax,dword ptr [ebp-1C]
 0057A684    mov        dword ptr [ebp-8],eax
 0057A687    test       bl,bl
>0057A689    je         0057A693
 0057A68B    mov        eax,dword ptr [ebp-18]
 0057A68E    mov        dword ptr [ebp-4],eax
>0057A691    jmp        0057A699
 0057A693    mov        eax,dword ptr [ebp-14]
 0057A696    mov        dword ptr [ebp-4],eax
 0057A699    push       3E8
 0057A69E    push       0
 0057A6A0    lea        eax,[ebp-8]
 0057A6A3    push       eax
 0057A6A4    push       2
 0057A6A6    call       kernel32.WaitForMultipleObjects
 0057A6AB    cmp        byte ptr [esi+0D],0; TDataConnectThread.FTerminated:Boolean
>0057A6AF    jne        0057A931
 0057A6B5    test       eax,eax
>0057A6B7    jne        0057A8BA
 0057A6BD    mov        eax,dword ptr [ebp-24]
 0057A6C0    call       0057C30C
 0057A6C5    mov        eax,dword ptr [ebp-24]
 0057A6C8    call       0057C054
 0057A6CD    mov        edi,eax
 0057A6CF    mov        eax,edi
 0057A6D1    cmp        eax,0C
>0057A6D4    ja         0057A88F
 0057A6DA    jmp        dword ptr [eax*4+57A6E1]
 0057A6DA    dd         57A88F
 0057A6DA    dd         57A715
 0057A6DA    dd         57A72A
 0057A6DA    dd         57A73F
 0057A6DA    dd         57A754
 0057A6DA    dd         57A769
 0057A6DA    dd         57A77E
 0057A6DA    dd         57A793
 0057A6DA    dd         57A7A8
 0057A6DA    dd         57A7BD
 0057A6DA    dd         57A7D2
 0057A6DA    dd         57A7E7
 0057A6DA    dd         57A84B
 0057A715    mov        eax,dword ptr [ebp-24]
 0057A718    push       eax
 0057A719    push       57C398; sub_0057C398
 0057A71E    mov        eax,esi
 0057A720    call       0057A4EC
>0057A725    jmp        0057A88F
 0057A72A    mov        eax,dword ptr [ebp-24]
 0057A72D    push       eax
 0057A72E    push       57C3F4; sub_0057C3F4
 0057A733    mov        eax,esi
 0057A735    call       0057A4EC
>0057A73A    jmp        0057A88F
 0057A73F    mov        eax,dword ptr [ebp-24]
 0057A742    push       eax
 0057A743    push       57C450; sub_0057C450
 0057A748    mov        eax,esi
 0057A74A    call       0057A4EC
>0057A74F    jmp        0057A88F
 0057A754    mov        eax,dword ptr [ebp-24]
 0057A757    push       eax
 0057A758    push       57C594; sub_0057C594
 0057A75D    mov        eax,esi
 0057A75F    call       0057A4EC
>0057A764    jmp        0057A88F
 0057A769    mov        eax,dword ptr [ebp-24]
 0057A76C    push       eax
 0057A76D    push       57C4C8; sub_0057C4C8
 0057A772    mov        eax,esi
 0057A774    call       0057A4EC
>0057A779    jmp        0057A88F
 0057A77E    mov        eax,dword ptr [ebp-24]
 0057A781    push       eax
 0057A782    push       57C624; sub_0057C624
 0057A787    mov        eax,esi
 0057A789    call       0057A4EC
>0057A78E    jmp        0057A88F
 0057A793    mov        eax,dword ptr [ebp-24]
 0057A796    push       eax
 0057A797    push       57C6B4; sub_0057C6B4
 0057A79C    mov        eax,esi
 0057A79E    call       0057A4EC
>0057A7A3    jmp        0057A88F
 0057A7A8    mov        eax,dword ptr [ebp-24]
 0057A7AB    push       eax
 0057A7AC    push       57C6E8; sub_0057C6E8
 0057A7B1    mov        eax,esi
 0057A7B3    call       0057A4EC
>0057A7B8    jmp        0057A88F
 0057A7BD    mov        eax,dword ptr [ebp-24]
 0057A7C0    push       eax
 0057A7C1    push       57C718; sub_0057C718
 0057A7C6    mov        eax,esi
 0057A7C8    call       0057A4EC
>0057A7CD    jmp        0057A88F
 0057A7D2    mov        eax,dword ptr [ebp-24]
 0057A7D5    push       eax
 0057A7D6    push       57C74C; sub_0057C74C
 0057A7DB    mov        eax,esi
 0057A7DD    call       0057A4EC
>0057A7E2    jmp        0057A88F
 0057A7E7    mov        eax,dword ptr [ebp-24]
 0057A7EA    call       0057C30C
 0057A7EF    mov        eax,dword ptr [ebp-24]
 0057A7F2    mov        edx,dword ptr [eax+8]
 0057A7F5    mov        eax,dword ptr [ebp-24]
 0057A7F8    call       0057B1B4
 0057A7FD    mov        eax,dword ptr [ebp-24]
 0057A800    mov        dl,byte ptr [eax+60]
 0057A803    mov        eax,dword ptr [ebp-24]
 0057A806    call       0057B24C
 0057A80B    mov        eax,[0061BD04]; ^Application:TApplication
 0057A810    mov        eax,dword ptr [eax]
 0057A812    mov        edx,dword ptr [eax+30]; TApplication.FHandle:HWND
 0057A815    mov        eax,dword ptr [ebp-24]
 0057A818    call       0057B224
 0057A81D    mov        edx,dword ptr [esi+4C]; TDataConnectThread.?f4C:TRvCustomConnection
 0057A820    mov        eax,dword ptr [ebp-24]
 0057A823    call       0057B224
 0057A828    mov        edx,dword ptr ds:[616FDC]
 0057A82E    mov        eax,dword ptr [ebp-24]
 0057A831    call       0057B224
 0057A836    mov        eax,dword ptr [esi+4C]; TDataConnectThread.?f4C:TRvCustomConnection
 0057A839    xor        edx,edx
 0057A83B    mov        dl,byte ptr [eax+8E]; TRvCustomConnection.RuntimeVisibility:TRuntimeVisibility
 0057A841    mov        eax,dword ptr [ebp-24]
 0057A844    call       0057B224
>0057A849    jmp        0057A88F
 0057A84B    mov        eax,dword ptr [ebp-24]
 0057A84E    cmp        byte ptr [eax+48],0
>0057A852    jbe        0057A88F
 0057A854    mov        eax,dword ptr [ebp-24]
 0057A857    mov        eax,dword ptr [eax+40]
 0057A85A    push       eax
 0057A85B    call       kernel32.UnmapViewOfFile
 0057A860    mov        eax,dword ptr [ebp-24]
 0057A863    mov        eax,dword ptr [eax+3C]
 0057A866    push       eax
 0057A867    call       kernel32.CloseHandle
 0057A86C    mov        eax,dword ptr [ebp-24]
 0057A86F    mov        byte ptr [eax+48],0
 0057A873    mov        eax,dword ptr [ebp-24]
 0057A876    mov        dword ptr [eax+44],10000
 0057A87D    mov        eax,dword ptr [ebp-24]
 0057A880    mov        eax,dword ptr [eax+38]
 0057A883    mov        edx,dword ptr [ebp-24]
 0057A886    mov        dword ptr [edx+4C],eax
 0057A889    mov        edx,dword ptr [ebp-24]
 0057A88C    mov        dword ptr [edx+50],eax
 0057A88F    cmp        edi,0B
>0057A892    jne        0057A8A2
 0057A894    mov        eax,dword ptr [ebp-10]
 0057A897    push       eax
 0057A898    call       kernel32.SetEvent
>0057A89D    jmp        0057A931
 0057A8A2    mov        eax,dword ptr [ebp-24]
 0057A8A5    cmp        byte ptr [eax+58],0
>0057A8A9    jne        0057A931
 0057A8AF    mov        eax,dword ptr [ebp-0C]
 0057A8B2    push       eax
 0057A8B3    call       kernel32.SetEvent
>0057A8B8    jmp        0057A931
 0057A8BA    cmp        eax,1
>0057A8BD    jne        0057A931
 0057A8BF    xor        bl,1
 0057A8C2    test       bl,bl
>0057A8C4    je         0057A931
 0057A8C6    mov        eax,dword ptr [ebp-24]
 0057A8C9    call       0057C30C
 0057A8CE    mov        eax,dword ptr [ebp-24]
 0057A8D1    mov        edx,dword ptr [eax+8]
 0057A8D4    mov        eax,dword ptr [ebp-24]
 0057A8D7    call       0057B1B4
 0057A8DC    mov        eax,dword ptr [ebp-24]
 0057A8DF    mov        dl,byte ptr [eax+60]
 0057A8E2    mov        eax,dword ptr [ebp-24]
 0057A8E5    call       0057B24C
 0057A8EA    mov        eax,[0061BD04]; ^Application:TApplication
 0057A8EF    mov        eax,dword ptr [eax]
 0057A8F1    mov        edx,dword ptr [eax+30]; TApplication.FHandle:HWND
 0057A8F4    mov        eax,dword ptr [ebp-24]
 0057A8F7    call       0057B224
 0057A8FC    mov        edx,dword ptr [esi+4C]; TDataConnectThread.?f4C:TRvCustomConnection
 0057A8FF    mov        eax,dword ptr [ebp-24]
 0057A902    call       0057B224
 0057A907    mov        edx,dword ptr ds:[616FDC]
 0057A90D    mov        eax,dword ptr [ebp-24]
 0057A910    call       0057B224
 0057A915    mov        eax,dword ptr [esi+4C]; TDataConnectThread.?f4C:TRvCustomConnection
 0057A918    xor        edx,edx
 0057A91A    mov        dl,byte ptr [eax+8E]; TRvCustomConnection.RuntimeVisibility:TRuntimeVisibility
 0057A920    mov        eax,dword ptr [ebp-24]
 0057A923    call       0057B224
 0057A928    mov        eax,dword ptr [ebp-0C]
 0057A92B    push       eax
 0057A92C    call       kernel32.SetEvent
 0057A931    mov        eax,dword ptr [ebp-24]
 0057A934    mov        byte ptr [eax+58],0
 0057A938    cmp        byte ptr [esi+0D],0; TDataConnectThread.FTerminated:Boolean
<0057A93C    je         0057A5BE
 0057A942    xor        eax,eax
 0057A944    pop        edx
 0057A945    pop        ecx
 0057A946    pop        ecx
 0057A947    mov        dword ptr fs:[eax],edx
 0057A94A    push       57A98B
 0057A94F    mov        eax,dword ptr [ebp-10]
 0057A952    push       eax
 0057A953    call       kernel32.CloseHandle
 0057A958    mov        eax,dword ptr [ebp-0C]
 0057A95B    push       eax
 0057A95C    call       kernel32.CloseHandle
 0057A961    mov        eax,dword ptr [ebp-14]
 0057A964    push       eax
 0057A965    call       kernel32.CloseHandle
 0057A96A    mov        eax,dword ptr [ebp-18]
 0057A96D    push       eax
 0057A96E    call       kernel32.CloseHandle
 0057A973    mov        eax,dword ptr [ebp-1C]
 0057A976    push       eax
 0057A977    call       kernel32.CloseHandle
 0057A97C    mov        eax,dword ptr [ebp-24]
 0057A97F    mov        byte ptr [eax+68],1
 0057A983    ret
<0057A984    jmp        @HandleFinally
<0057A989    jmp        0057A94F
 0057A98B    xor        eax,eax
 0057A98D    pop        edx
 0057A98E    pop        ecx
 0057A98F    pop        ecx
 0057A990    mov        dword ptr fs:[eax],edx
 0057A993    push       57A9B5
 0057A998    lea        eax,[ebp-34]
 0057A99B    mov        edx,4
 0057A9A0    call       @LStrArrayClr
 0057A9A5    lea        eax,[ebp-20]
 0057A9A8    call       @LStrClr
 0057A9AD    ret
<0057A9AE    jmp        @HandleFinally
<0057A9B3    jmp        0057A998
 0057A9B5    pop        edi
 0057A9B6    pop        esi
 0057A9B7    pop        ebx
 0057A9B8    mov        esp,ebp
 0057A9BA    pop        ebp
 0057A9BB    ret
*}
end;

//0057AA5C
//constructor TDataConnectFieldDef.Create(?:TDataConnectFieldDef; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 0057AA5C    push       ebp
 0057AA5D    mov        ebp,esp
 0057AA5F    push       ecx
 0057AA60    push       ebx
 0057AA61    push       esi
 0057AA62    test       dl,dl
>0057AA64    je         0057AA6E
 0057AA66    add        esp,0FFFFFFF0
 0057AA69    call       @ClassCreate
 0057AA6E    mov        ebx,ecx
 0057AA70    mov        byte ptr [ebp-1],dl
 0057AA73    mov        esi,eax
 0057AA75    mov        eax,dword ptr [ebp+0C]
 0057AA78    call       @LStrAddRef
 0057AA7D    xor        eax,eax
 0057AA7F    push       ebp
 0057AA80    push       57AABE
 0057AA85    push       dword ptr fs:[eax]
 0057AA88    mov        dword ptr fs:[eax],esp
 0057AA8B    xor        edx,edx
 0057AA8D    mov        eax,esi
 0057AA8F    call       TObject.Create
 0057AA94    mov        byte ptr [esi+4],bl; TDataConnectFieldDef.?f4:byte
 0057AA97    lea        eax,[esi+8]; TDataConnectFieldDef.?f8:String
 0057AA9A    mov        edx,dword ptr [ebp+0C]
 0057AA9D    call       @LStrAsg
 0057AAA2    mov        al,byte ptr [ebp+8]
 0057AAA5    mov        byte ptr [esi+0C],al; TDataConnectFieldDef.?fC:byte
 0057AAA8    xor        eax,eax
 0057AAAA    pop        edx
 0057AAAB    pop        ecx
 0057AAAC    pop        ecx
 0057AAAD    mov        dword ptr fs:[eax],edx
 0057AAB0    push       57AAC5
 0057AAB5    lea        eax,[ebp+0C]
 0057AAB8    call       @LStrClr
 0057AABD    ret
<0057AABE    jmp        @HandleFinally
<0057AAC3    jmp        0057AAB5
 0057AAC5    mov        eax,esi
 0057AAC7    cmp        byte ptr [ebp-1],0
>0057AACB    je         0057AADC
 0057AACD    call       @AfterConstruction
 0057AAD2    pop        dword ptr fs:[0]
 0057AAD9    add        esp,0C
 0057AADC    mov        eax,esi
 0057AADE    pop        esi
 0057AADF    pop        ebx
 0057AAE0    pop        ecx
 0057AAE1    pop        ebp
 0057AAE2    ret        8
*}
//end;

//0057AAE8
destructor TDataConnectFieldDef.Destroy;
begin
{*
 0057AAE8    push       ebx
 0057AAE9    push       esi
 0057AAEA    call       @BeforeDestruction
 0057AAEF    mov        ebx,edx
 0057AAF1    mov        esi,eax
 0057AAF3    mov        eax,esi
 0057AAF5    call       0057AB14
 0057AAFA    mov        edx,ebx
 0057AAFC    and        dl,0FC
 0057AAFF    mov        eax,esi
 0057AB01    call       TObject.Destroy
 0057AB06    test       bl,bl
>0057AB08    jle        0057AB11
 0057AB0A    mov        eax,esi
 0057AB0C    call       @ClassDestroy
 0057AB11    pop        esi
 0057AB12    pop        ebx
 0057AB13    ret
*}
end;

//0057AB14
//procedure sub_0057AB14(?:TDataConnectFieldDef);
//begin
{*
 0057AB14    push       ebx
 0057AB15    mov        ebx,eax
 0057AB17    cmp        byte ptr [ebx+4],0; TDataConnectFieldDef.?f4:byte
>0057AB1B    jne        0057AB27
 0057AB1D    lea        eax,[ebx+14]; TDataConnectFieldDef.?f14:String
 0057AB20    call       @LStrClr
>0057AB25    jmp        0057AB3D
 0057AB27    mov        eax,dword ptr [ebx+1C]; TDataConnectFieldDef.?f1C:dword
 0057AB2A    test       eax,eax
>0057AB2C    jle        0057AB3D
 0057AB2E    mov        edx,eax
 0057AB30    mov        eax,dword ptr [ebx+18]; TDataConnectFieldDef.?f18:dword
 0057AB33    call       @FreeMem
 0057AB38    xor        eax,eax
 0057AB3A    mov        dword ptr [ebx+18],eax; TDataConnectFieldDef.?f18:dword
 0057AB3D    xor        eax,eax
 0057AB3F    mov        dword ptr [ebx+1C],eax; TDataConnectFieldDef.?f1C:dword
 0057AB42    pop        ebx
 0057AB43    ret
*}
//end;

//0057AB44
//procedure sub_0057AB44(?:?; ?:Extended);
//begin
{*
 0057AB44    push       ebx
 0057AB45    push       esi
 0057AB46    push       edi
 0057AB47    push       ebp
 0057AB48    mov        edi,edx
 0057AB4A    mov        ebx,eax
 0057AB4C    mov        eax,ebx
 0057AB4E    call       0057AB14
 0057AB53    xor        eax,eax
 0057AB55    mov        al,byte ptr [ebx+4]
 0057AB58    movzx      esi,byte ptr [eax+616FEC]
 0057AB5F    mov        dword ptr [ebx+1C],esi
 0057AB62    cmp        byte ptr [ebx+4],0
>0057AB66    jne        0057AB77
 0057AB68    lea        eax,[ebx+14]
 0057AB6B    mov        edx,dword ptr [edi]
 0057AB6D    call       @LStrAsg
>0057AB72    jmp        0057ABF7
 0057AB77    test       esi,esi
>0057AB79    jle        0057ABF7
 0057AB7B    mov        eax,esi
 0057AB7D    call       @GetMem
 0057AB82    mov        ebp,eax
 0057AB84    mov        dword ptr [ebx+18],ebp
 0057AB87    xor        eax,eax
 0057AB89    mov        al,byte ptr [ebx+4]
 0057AB8C    cmp        eax,8
>0057AB8F    ja         0057ABF7
 0057AB91    jmp        dword ptr [eax*4+57AB98]
 0057AB91    dd         57ABF7
 0057AB91    dd         57ABBC
 0057AB91    dd         57ABC3
 0057AB91    dd         57ABCA
 0057AB91    dd         57ABDF
 0057AB91    dd         57ABDF
 0057AB91    dd         57ABEC
 0057AB91    dd         57ABEC
 0057AB91    dd         57ABEC
 0057ABBC    mov        eax,dword ptr [edi]
 0057ABBE    mov        dword ptr [ebp],eax
>0057ABC1    jmp        0057ABF7
 0057ABC3    mov        al,byte ptr [edi]
 0057ABC5    mov        byte ptr [ebp],al
>0057ABC8    jmp        0057ABF7
 0057ABCA    mov        eax,dword ptr [edi]
 0057ABCC    mov        dword ptr [ebp],eax
 0057ABCF    mov        eax,dword ptr [edi+4]
 0057ABD2    mov        dword ptr [ebp+4],eax
 0057ABD5    mov        ax,word ptr [edi+8]
 0057ABD9    mov        word ptr [ebp+8],ax
>0057ABDD    jmp        0057ABF7
 0057ABDF    mov        eax,dword ptr [edi]
 0057ABE1    mov        dword ptr [ebp],eax
 0057ABE4    mov        eax,dword ptr [edi+4]
 0057ABE7    mov        dword ptr [ebp+4],eax
>0057ABEA    jmp        0057ABF7
 0057ABEC    mov        eax,dword ptr [edi]
 0057ABEE    mov        dword ptr [ebp],eax
 0057ABF1    mov        eax,dword ptr [edi+4]
 0057ABF4    mov        dword ptr [ebp+4],eax
 0057ABF7    pop        ebp
 0057ABF8    pop        edi
 0057ABF9    pop        esi
 0057ABFA    pop        ebx
 0057ABFB    ret
*}
//end;

//0057ABFC
//function sub_0057ABFC(?:?; ?:AnsiString):Boolean;
//begin
{*
 0057ABFC    push       ebx
 0057ABFD    push       esi
 0057ABFE    mov        esi,edx
 0057AC00    mov        ebx,eax
 0057AC02    mov        al,1
 0057AC04    cmp        dword ptr [ebx+1C],0
>0057AC08    jle        0057AC9F
 0057AC0E    xor        edx,edx
 0057AC10    mov        dl,byte ptr [ebx+4]
 0057AC13    cmp        edx,8
>0057AC16    ja         0057AC9F
 0057AC1C    jmp        dword ptr [edx*4+57AC23]
 0057AC1C    dd         57AC47
 0057AC1C    dd         57AC58
 0057AC1C    dd         57AC64
 0057AC1C    dd         57AC70
 0057AC1C    dd         57AC81
 0057AC1C    dd         57AC81
 0057AC1C    dd         57AC92
 0057AC1C    dd         57AC92
 0057AC1C    dd         57AC92
 0057AC47    mov        edx,dword ptr [esi]
 0057AC49    mov        eax,dword ptr [ebx+14]
 0057AC4C    call       AnsiCompareStr
 0057AC51    test       eax,eax
 0057AC53    sete       al
>0057AC56    jmp        0057AC9F
 0057AC58    mov        eax,dword ptr [ebx+18]
 0057AC5B    mov        eax,dword ptr [eax]
 0057AC5D    cmp        eax,dword ptr [esi]
 0057AC5F    sete       al
>0057AC62    jmp        0057AC9F
 0057AC64    mov        al,byte ptr [esi]
 0057AC66    mov        edx,dword ptr [ebx+18]
 0057AC69    cmp        al,byte ptr [edx]
 0057AC6B    sete       al
>0057AC6E    jmp        0057AC9F
 0057AC70    mov        eax,dword ptr [ebx+18]
 0057AC73    fld        tbyte ptr [eax]
 0057AC75    fld        tbyte ptr [esi]
 0057AC77    fcompp
 0057AC79    fnstsw     al
 0057AC7B    sahf
 0057AC7C    sete       al
>0057AC7F    jmp        0057AC9F
 0057AC81    mov        eax,dword ptr [ebx+18]
 0057AC84    fild       qword ptr [eax]
 0057AC86    fild       qword ptr [esi]
 0057AC88    fcompp
 0057AC8A    fnstsw     al
 0057AC8C    sahf
 0057AC8D    sete       al
>0057AC90    jmp        0057AC9F
 0057AC92    mov        eax,dword ptr [ebx+18]
 0057AC95    fld        qword ptr [eax]
 0057AC97    fcomp      qword ptr [esi]
 0057AC99    fnstsw     al
 0057AC9B    sahf
 0057AC9C    sete       al
 0057AC9F    pop        esi
 0057ACA0    pop        ebx
 0057ACA1    ret
*}
//end;

//0057ACA4
constructor TRvCustomConnection.Create(AOwner:TComponent);
begin
{*
 0057ACA4    push       ebp
 0057ACA5    mov        ebp,esp
 0057ACA7    push       ecx
 0057ACA8    push       ebx
 0057ACA9    push       esi
 0057ACAA    push       edi
 0057ACAB    test       dl,dl
>0057ACAD    je         0057ACB7
 0057ACAF    add        esp,0FFFFFFF0
 0057ACB2    call       @ClassCreate
 0057ACB7    mov        byte ptr [ebp-1],dl
 0057ACBA    mov        ebx,eax
 0057ACBC    xor        edx,edx
 0057ACBE    mov        eax,ebx
 0057ACC0    call       TRpComponent.Create
 0057ACC5    mov        dl,1
 0057ACC7    mov        eax,[0041C260]; TList
 0057ACCC    call       TObject.Create; TList.Create
 0057ACD1    mov        dword ptr [ebx+6C],eax; TRvCustomConnection.?f6C:TList
 0057ACD4    mov        edx,ebx
 0057ACD6    mov        eax,[0061EFB0]; gvar_0061EFB0:TDataConnectManager
 0057ACDB    call       0057A410
 0057ACE0    test       byte ptr [ebx+1C],10; TRvCustomConnection.FComponentState:TComponentState
 0057ACE4    setne      al
 0057ACE7    xor        al,1
 0057ACE9    mov        byte ptr [ebx+60],al; TRvCustomConnection.?f60:byte
 0057ACEC    test       al,al
>0057ACEE    je         0057ACFF
 0057ACF0    lea        eax,[ebx+64]; TRvCustomConnection.?f64:String
 0057ACF3    mov        edx,57ADB4; 'RT'
 0057ACF8    call       @LStrAsg
>0057ACFD    jmp        0057AD0C
 0057ACFF    lea        eax,[ebx+64]; TRvCustomConnection.?f64:String
 0057AD02    mov        edx,57ADC0; 'DT'
 0057AD07    call       @LStrAsg
 0057AD0C    mov        dword ptr [ebx+44],10000; TRvCustomConnection.?f44:dword
 0057AD13    mov        byte ptr [ebx+48],0; TRvCustomConnection.?f48:byte
 0057AD17    mov        edx,dword ptr [ebx+44]; TRvCustomConnection.?f44:dword
 0057AD1A    mov        eax,57ADCC; 'RAVEBUFFER'
 0057AD1F    call       00579700
 0057AD24    mov        esi,eax
 0057AD26    mov        dword ptr [ebx+34],esi; TRvCustomConnection.?f34:dword
 0057AD29    mov        eax,esi
 0057AD2B    call       00579784
 0057AD30    mov        edi,eax
 0057AD32    mov        dword ptr [ebx+38],edi; TRvCustomConnection.?f38:dword
 0057AD35    mov        dword ptr [ebx+4C],edi; TRvCustomConnection.?f4C:dword
 0057AD38    cmp        byte ptr [ebx+60],0; TRvCustomConnection.?f60:byte
>0057AD3C    jne        0057AD65
 0057AD3E    mov        byte ptr [ebx+68],0; TRvCustomConnection.?f68:byte
 0057AD42    mov        cl,1
 0057AD44    mov        dl,1
 0057AD46    mov        eax,[00579FA4]; TDataConnectThread
 0057AD4B    call       TThread.Create; TDataConnectThread.Create
 0057AD50    mov        esi,eax
 0057AD52    mov        dword ptr [ebx+5C],esi; TRvCustomConnection.?f5C:TDataConnectThread
 0057AD55    mov        byte ptr [esi+0F],1; TDataConnectThread.FFreeOnTerminate:Boolean
 0057AD59    mov        dword ptr [esi+4C],ebx; TDataConnectThread.?f4C:TRvCustomConnection
 0057AD5C    mov        eax,esi
 0057AD5E    call       TThread.Resume
>0057AD63    jmp        0057AD6A
 0057AD65    xor        eax,eax
 0057AD67    mov        dword ptr [ebx+5C],eax; TRvCustomConnection.?f5C:TDataConnectThread
 0057AD6A    mov        byte ptr [ebx+8C],1; TRvCustomConnection.LocalFilter:Boolean
 0057AD71    mov        byte ptr [ebx+8E],1; TRvCustomConnection.RuntimeVisibility:TRuntimeVisibility
 0057AD78    mov        dl,1
 0057AD7A    mov        eax,[0041C8E4]; TStringList
 0057AD7F    call       TObject.Create; TStringList.Create
 0057AD84    mov        dword ptr [ebx+90],eax; TRvCustomConnection.FieldAliasList:TStrings
 0057AD8A    mov        eax,ebx
 0057AD8C    cmp        byte ptr [ebp-1],0
>0057AD90    je         0057ADA1
 0057AD92    call       @AfterConstruction
 0057AD97    pop        dword ptr fs:[0]
 0057AD9E    add        esp,0C
 0057ADA1    mov        eax,ebx
 0057ADA3    pop        edi
 0057ADA4    pop        esi
 0057ADA5    pop        ebx
 0057ADA6    pop        ecx
 0057ADA7    pop        ebp
 0057ADA8    ret
*}
end;

//0057ADD8
destructor TRvCustomConnection.Destroy;
begin
{*
 0057ADD8    push       ebp
 0057ADD9    mov        ebp,esp
 0057ADDB    add        esp,0FFFFFFE8
 0057ADDE    xor        ecx,ecx
 0057ADE0    mov        dword ptr [ebp-18],ecx
 0057ADE3    mov        dword ptr [ebp-14],ecx
 0057ADE6    call       @BeforeDestruction
 0057ADEB    mov        byte ptr [ebp-5],dl
 0057ADEE    mov        dword ptr [ebp-4],eax
 0057ADF1    xor        eax,eax
 0057ADF3    push       ebp
 0057ADF4    push       57AF85
 0057ADF9    push       dword ptr fs:[eax]
 0057ADFC    mov        dword ptr fs:[eax],esp
 0057ADFF    mov        edx,dword ptr [ebp-4]
 0057AE02    mov        eax,[0061EFB0]; gvar_0061EFB0:TDataConnectManager
 0057AE07    call       0057A41C
 0057AE0C    mov        eax,dword ptr [ebp-4]
 0057AE0F    mov        eax,dword ptr [eax+5C]; TRvCustomConnection.?f5C:TDataConnectThread
 0057AE12    test       eax,eax
>0057AE14    je         0057AF03
 0057AE1A    call       TThread.Terminate
 0057AE1F    mov        eax,57AFA8; 'RAVECONTROLER'
 0057AE24    call       00579614
 0057AE29    mov        dword ptr [ebp-10],eax
 0057AE2C    xor        edx,edx
 0057AE2E    push       ebp
 0057AE2F    push       57AEFC
 0057AE34    push       dword ptr fs:[edx]
 0057AE37    mov        dword ptr fs:[edx],esp
 0057AE3A    push       3E8
 0057AE3F    mov        eax,dword ptr [ebp-10]
 0057AE42    push       eax
 0057AE43    call       kernel32.WaitForSingleObject
 0057AE48    test       eax,eax
>0057AE4A    jne        0057AEE5
 0057AE50    mov        eax,dword ptr [ebp-4]
 0057AE53    cmp        byte ptr [eax+60],0; TRvCustomConnection.?f60:byte
>0057AE57    je         0057AE79
 0057AE59    mov        eax,dword ptr [ebp-4]
 0057AE5C    mov        ecx,dword ptr [eax+8]; TRvCustomConnection.?f8:TComponentName
 0057AE5F    lea        eax,[ebp-14]
 0057AE62    mov        edx,57AFC0; 'RAVERTDATA_'
 0057AE67    call       @LStrCat3
 0057AE6C    mov        eax,dword ptr [ebp-14]
 0057AE6F    call       005794F4
 0057AE74    mov        dword ptr [ebp-0C],eax
>0057AE77    jmp        0057AE97
 0057AE79    mov        eax,dword ptr [ebp-4]
 0057AE7C    mov        ecx,dword ptr [eax+8]; TRvCustomConnection.?f8:TComponentName
 0057AE7F    lea        eax,[ebp-18]
 0057AE82    mov        edx,57AFD4; 'RAVEDTDATA_'
 0057AE87    call       @LStrCat3
 0057AE8C    mov        eax,dword ptr [ebp-18]
 0057AE8F    call       005794F4
 0057AE94    mov        dword ptr [ebp-0C],eax
 0057AE97    xor        eax,eax
 0057AE99    push       ebp
 0057AE9A    push       57AEDE
 0057AE9F    push       dword ptr fs:[eax]
 0057AEA2    mov        dword ptr fs:[eax],esp
 0057AEA5    mov        eax,dword ptr [ebp-0C]
 0057AEA8    push       eax
 0057AEA9    call       kernel32.SetEvent
 0057AEAE    push       0
 0057AEB0    call       kernel32.Sleep
 0057AEB5    mov        eax,dword ptr [ebp-4]
 0057AEB8    cmp        byte ptr [eax+68],0; TRvCustomConnection.?f68:byte
<0057AEBC    je         0057AEAE
 0057AEBE    xor        eax,eax
 0057AEC0    pop        edx
 0057AEC1    pop        ecx
 0057AEC2    pop        ecx
 0057AEC3    mov        dword ptr fs:[eax],edx
 0057AEC6    push       57AEE5
 0057AECB    mov        eax,dword ptr [ebp-0C]
 0057AECE    push       eax
 0057AECF    call       kernel32.CloseHandle
 0057AED4    mov        eax,dword ptr [ebp-10]
 0057AED7    push       eax
 0057AED8    call       kernel32.ReleaseMutex
 0057AEDD    ret
<0057AEDE    jmp        @HandleFinally
<0057AEE3    jmp        0057AECB
 0057AEE5    xor        eax,eax
 0057AEE7    pop        edx
 0057AEE8    pop        ecx
 0057AEE9    pop        ecx
 0057AEEA    mov        dword ptr fs:[eax],edx
 0057AEED    push       57AF03
 0057AEF2    mov        eax,dword ptr [ebp-10]
 0057AEF5    push       eax
 0057AEF6    call       kernel32.CloseHandle
 0057AEFB    ret
<0057AEFC    jmp        @HandleFinally
<0057AF01    jmp        0057AEF2
 0057AF03    mov        eax,dword ptr [ebp-4]
 0057AF06    cmp        byte ptr [eax+48],0; TRvCustomConnection.?f48:byte
>0057AF0A    jbe        0057AF24
 0057AF0C    mov        eax,dword ptr [ebp-4]
 0057AF0F    mov        eax,dword ptr [eax+40]; TRvCustomConnection.?f40:dword
 0057AF12    push       eax
 0057AF13    call       kernel32.UnmapViewOfFile
 0057AF18    mov        eax,dword ptr [ebp-4]
 0057AF1B    mov        eax,dword ptr [eax+3C]; TRvCustomConnection.?f3C:dword
 0057AF1E    push       eax
 0057AF1F    call       kernel32.CloseHandle
 0057AF24    mov        eax,dword ptr [ebp-4]
 0057AF27    mov        eax,dword ptr [eax+38]; TRvCustomConnection.?f38:dword
 0057AF2A    push       eax
 0057AF2B    call       kernel32.UnmapViewOfFile
 0057AF30    mov        eax,dword ptr [ebp-4]
 0057AF33    mov        eax,dword ptr [eax+34]; TRvCustomConnection.?f34:dword
 0057AF36    push       eax
 0057AF37    call       kernel32.CloseHandle
 0057AF3C    mov        eax,dword ptr [ebp-4]
 0057AF3F    call       0057B2CC
 0057AF44    mov        eax,dword ptr [ebp-4]
 0057AF47    add        eax,6C; TRvCustomConnection.?f6C:TList
 0057AF4A    call       FreeAndNil
 0057AF4F    mov        eax,dword ptr [ebp-4]
 0057AF52    add        eax,90; TRvCustomConnection.FieldAliasList:TStrings
 0057AF57    call       FreeAndNil
 0057AF5C    mov        dl,byte ptr [ebp-5]
 0057AF5F    and        dl,0FC
 0057AF62    mov        eax,dword ptr [ebp-4]
 0057AF65    call       TComponent.Destroy
 0057AF6A    xor        eax,eax
 0057AF6C    pop        edx
 0057AF6D    pop        ecx
 0057AF6E    pop        ecx
 0057AF6F    mov        dword ptr fs:[eax],edx
 0057AF72    push       57AF8C
 0057AF77    lea        eax,[ebp-18]
 0057AF7A    mov        edx,2
 0057AF7F    call       @LStrArrayClr
 0057AF84    ret
<0057AF85    jmp        @HandleFinally
<0057AF8A    jmp        0057AF77
 0057AF8C    cmp        byte ptr [ebp-5],0
>0057AF90    jle        0057AF9A
 0057AF92    mov        eax,dword ptr [ebp-4]
 0057AF95    call       @ClassDestroy
 0057AF9A    mov        esp,ebp
 0057AF9C    pop        ebp
 0057AF9D    ret
*}
end;

//0057AFE0
//procedure sub_0057AFE0(?:?; ?:?);
//begin
{*
 0057AFE0    push       ebx
 0057AFE1    push       esi
 0057AFE2    mov        esi,edx
 0057AFE4    mov        ebx,eax
 0057AFE6    mov        eax,esi
 0057AFE8    call       TReader.ReadBoolean
 0057AFED    test       al,al
>0057AFEF    je         0057AFFA
 0057AFF1    mov        dl,2
 0057AFF3    mov        eax,ebx
 0057AFF5    call       TRvCustomConnection.SetRuntimeVisibility
 0057AFFA    pop        esi
 0057AFFB    pop        ebx
 0057AFFC    ret
*}
//end;

//0057B000
procedure TRvCustomConnection.DefineProperties(Filer:TFiler);
begin
{*
 0057B000    push       ebx
 0057B001    push       esi
 0057B002    mov        esi,edx
 0057B004    mov        ebx,eax
 0057B006    mov        edx,esi
 0057B008    mov        eax,ebx
 0057B00A    call       TComponent.DefineProperties
 0057B00F    push       ebx
 0057B010    push       57AFE0; sub_0057AFE0
 0057B015    push       0
 0057B017    push       0
 0057B019    xor        ecx,ecx
 0057B01B    mov        edx,57B034; 'Visible'
 0057B020    mov        eax,esi
 0057B022    mov        ebx,dword ptr [eax]
 0057B024    call       dword ptr [ebx+4]; TFiler.DefineProperty
 0057B027    pop        esi
 0057B028    pop        ebx
 0057B029    ret
*}
end;

//0057B03C
//procedure TRvCustomConnection.SetRuntimeVisibility(Self:TRvCustomConnection; ?:?);
//begin
{*
 0057B03C    push       ebx
 0057B03D    push       esi
 0057B03E    mov        ebx,eax
 0057B040    mov        byte ptr [ebx+8E],dl; TRvCustomConnection.RuntimeVisibility:TRuntimeVisibility
 0057B046    cmp        dword ptr [ebx+5C],0; TRvCustomConnection.?f5C:TDataConnectThread
>0057B04A    jne        0057B07C
 0057B04C    mov        al,byte ptr [ebx+8E]; TRvCustomConnection.RuntimeVisibility:TRuntimeVisibility
 0057B052    dec        eax
 0057B053    sub        al,2
>0057B055    jae        0057B07C
 0057B057    mov        byte ptr [ebx+68],0; TRvCustomConnection.?f68:byte
 0057B05B    mov        cl,1
 0057B05D    mov        dl,1
 0057B05F    mov        eax,[00579FA4]; TDataConnectThread
 0057B064    call       TThread.Create; TDataConnectThread.Create
 0057B069    mov        esi,eax
 0057B06B    mov        dword ptr [ebx+5C],esi; TRvCustomConnection.?f5C:TDataConnectThread
 0057B06E    mov        byte ptr [esi+0F],1; TDataConnectThread.FFreeOnTerminate:Boolean
 0057B072    mov        dword ptr [esi+4C],ebx; TDataConnectThread.?f4C:TRvCustomConnection
 0057B075    mov        eax,esi
 0057B077    call       TThread.Resume
 0057B07C    pop        esi
 0057B07D    pop        ebx
 0057B07E    ret
*}
//end;

//0057B080
procedure TRvCustomConnection.SetFieldAliasList(Self:TRvCustomConnection);
begin
{*
 0057B080    push       esi
 0057B081    mov        esi,eax
 0057B083    mov        eax,dword ptr [esi+90]; TRvCustomConnection.FieldAliasList:TStrings
 0057B089    mov        ecx,dword ptr [eax]
 0057B08B    call       dword ptr [ecx+8]; TStrings.Assign
 0057B08E    pop        esi
 0057B08F    ret
*}
end;

//0057B090
//procedure sub_0057B090(?:TRvDataSetConnection; ?:AnsiString; ?:AnsiString);
//begin
{*
 0057B090    push       ebp
 0057B091    mov        ebp,esp
 0057B093    add        esp,0FFFFFFE0
 0057B096    push       ebx
 0057B097    push       esi
 0057B098    xor        ebx,ebx
 0057B09A    mov        dword ptr [ebp-20],ebx
 0057B09D    mov        dword ptr [ebp-18],ebx
 0057B0A0    mov        dword ptr [ebp-1C],ebx
 0057B0A3    mov        dword ptr [ebp-14],ebx
 0057B0A6    mov        dword ptr [ebp-0C],ecx
 0057B0A9    mov        dword ptr [ebp-8],edx
 0057B0AC    mov        dword ptr [ebp-4],eax
 0057B0AF    mov        eax,dword ptr [ebp-8]
 0057B0B2    call       @LStrAddRef
 0057B0B7    xor        eax,eax
 0057B0B9    push       ebp
 0057B0BA    push       57B19B
 0057B0BF    push       dword ptr fs:[eax]
 0057B0C2    mov        dword ptr fs:[eax],esp
 0057B0C5    mov        eax,dword ptr [ebp-0C]
 0057B0C8    mov        edx,dword ptr [ebp-8]
 0057B0CB    call       @LStrAsg
 0057B0D0    mov        eax,dword ptr [ebp-4]
 0057B0D3    mov        eax,dword ptr [eax+90]; TRvDataSetConnection.FieldAliasList:TStrings
 0057B0D9    mov        edx,dword ptr [eax]
 0057B0DB    call       dword ptr [edx+14]; TStrings.GetCount
 0057B0DE    mov        esi,eax
 0057B0E0    dec        esi
 0057B0E1    test       esi,esi
>0057B0E3    jl         0057B178
 0057B0E9    inc        esi
 0057B0EA    mov        dword ptr [ebp-10],0
 0057B0F1    lea        ecx,[ebp-14]
 0057B0F4    mov        eax,dword ptr [ebp-4]
 0057B0F7    mov        eax,dword ptr [eax+90]; TRvDataSetConnection.FieldAliasList:TStrings
 0057B0FD    mov        edx,dword ptr [ebp-10]
 0057B100    mov        ebx,dword ptr [eax]
 0057B102    call       dword ptr [ebx+0C]; TStrings.Get
 0057B105    mov        edx,dword ptr [ebp-14]
 0057B108    mov        eax,57B1B0; '='
 0057B10D    call       @LStrPos
 0057B112    mov        ebx,eax
 0057B114    test       ebx,ebx
>0057B116    jle        0057B16E
 0057B118    lea        eax,[ebp-1C]
 0057B11B    push       eax
 0057B11C    mov        ecx,ebx
 0057B11E    dec        ecx
 0057B11F    mov        edx,1
 0057B124    mov        eax,dword ptr [ebp-14]
 0057B127    call       @LStrCopy
 0057B12C    mov        eax,dword ptr [ebp-1C]
 0057B12F    lea        edx,[ebp-18]
 0057B132    call       Trim
 0057B137    mov        edx,dword ptr [ebp-18]
 0057B13A    mov        eax,dword ptr [ebp-8]
 0057B13D    call       AnsiCompareText
 0057B142    test       eax,eax
>0057B144    jne        0057B16E
 0057B146    lea        eax,[ebp-20]
 0057B149    push       eax
 0057B14A    mov        eax,dword ptr [ebp-14]
 0057B14D    call       @LStrLen
 0057B152    mov        ecx,eax
 0057B154    sub        ecx,ebx
 0057B156    lea        edx,[ebx+1]
 0057B159    mov        eax,dword ptr [ebp-14]
 0057B15C    call       @LStrCopy
 0057B161    mov        eax,dword ptr [ebp-20]
 0057B164    mov        edx,dword ptr [ebp-0C]
 0057B167    call       Trim
>0057B16C    jmp        0057B178
 0057B16E    inc        dword ptr [ebp-10]
 0057B171    dec        esi
<0057B172    jne        0057B0F1
 0057B178    xor        eax,eax
 0057B17A    pop        edx
 0057B17B    pop        ecx
 0057B17C    pop        ecx
 0057B17D    mov        dword ptr fs:[eax],edx
 0057B180    push       57B1A2
 0057B185    lea        eax,[ebp-20]
 0057B188    mov        edx,4
 0057B18D    call       @LStrArrayClr
 0057B192    lea        eax,[ebp-8]
 0057B195    call       @LStrClr
 0057B19A    ret
<0057B19B    jmp        @HandleFinally
<0057B1A0    jmp        0057B185
 0057B1A2    pop        esi
 0057B1A3    pop        ebx
 0057B1A4    mov        esp,ebp
 0057B1A6    pop        ebp
 0057B1A7    ret
*}
//end;

//0057B1B4
//procedure sub_0057B1B4(?:dword; ?:AnsiString);
//begin
{*
 0057B1B4    push       ebp
 0057B1B5    mov        ebp,esp
 0057B1B7    push       ecx
 0057B1B8    push       ebx
 0057B1B9    push       esi
 0057B1BA    mov        dword ptr [ebp-4],edx
 0057B1BD    mov        esi,eax
 0057B1BF    mov        eax,dword ptr [ebp-4]
 0057B1C2    call       @LStrAddRef
 0057B1C7    xor        eax,eax
 0057B1C9    push       ebp
 0057B1CA    push       57B217
 0057B1CF    push       dword ptr fs:[eax]
 0057B1D2    mov        dword ptr fs:[eax],esp
 0057B1D5    mov        eax,dword ptr [ebp-4]
 0057B1D8    call       @LStrLen
 0057B1DD    mov        ebx,eax
 0057B1DF    mov        edx,ebx
 0057B1E1    mov        eax,esi
 0057B1E3    call       0057B224
 0057B1E8    test       ebx,ebx
>0057B1EA    jle        0057B201
 0057B1EC    lea        eax,[ebp-4]
 0057B1EF    call       @UniqueStringA
 0057B1F4    mov        edx,dword ptr [esi+50]
 0057B1F7    mov        ecx,ebx
 0057B1F9    call       Move
 0057B1FE    add        dword ptr [esi+50],ebx
 0057B201    xor        eax,eax
 0057B203    pop        edx
 0057B204    pop        ecx
 0057B205    pop        ecx
 0057B206    mov        dword ptr fs:[eax],edx
 0057B209    push       57B21E
 0057B20E    lea        eax,[ebp-4]
 0057B211    call       @LStrClr
 0057B216    ret
<0057B217    jmp        @HandleFinally
<0057B21C    jmp        0057B20E
 0057B21E    pop        esi
 0057B21F    pop        ebx
 0057B220    pop        ecx
 0057B221    pop        ebp
 0057B222    ret
*}
//end;

//0057B224
//procedure sub_0057B224(?:dword; ?:HWND);
//begin
{*
 0057B224    mov        ecx,dword ptr [eax+50]
 0057B227    mov        dword ptr [ecx],edx
 0057B229    add        dword ptr [eax+50],4
 0057B22D    ret
*}
//end;

//0057B230
//procedure sub_0057B230(?:TRvDataSetConnection; ?:?; ?:?);
//begin
{*
 0057B230    push       ebp
 0057B231    mov        ebp,esp
 0057B233    mov        edx,dword ptr [eax+50]; TRvDataSetConnection.?f50:Int64
 0057B236    mov        ecx,dword ptr [ebp+8]
 0057B239    mov        dword ptr [edx],ecx
 0057B23B    mov        ecx,dword ptr [ebp+0C]
 0057B23E    mov        dword ptr [edx+4],ecx
 0057B241    add        dword ptr [eax+50],8; TRvDataSetConnection.?f50:Int64
 0057B245    pop        ebp
 0057B246    ret        8
*}
//end;

//0057B24C
//procedure sub_0057B24C(?:dword; ?:AnsiString);
//begin
{*
 0057B24C    mov        ecx,dword ptr [eax+50]
 0057B24F    mov        byte ptr [ecx],dl
 0057B251    inc        dword ptr [eax+50]
 0057B254    ret
*}
//end;

//0057B258
//procedure sub_0057B258(?:TRvDataSetConnection; ?:?; ?:?; ?:?);
//begin
{*
 0057B258    push       ebp
 0057B259    mov        ebp,esp
 0057B25B    mov        edx,dword ptr [eax+50]; TRvDataSetConnection.?f50:Int64
 0057B25E    mov        ecx,dword ptr [ebp+8]
 0057B261    mov        dword ptr [edx],ecx
 0057B263    mov        ecx,dword ptr [ebp+0C]
 0057B266    mov        dword ptr [edx+4],ecx
 0057B269    mov        cx,word ptr [ebp+10]
 0057B26D    mov        word ptr [edx+8],cx
 0057B271    add        dword ptr [eax+50],0A; TRvDataSetConnection.?f50:Int64
 0057B275    pop        ebp
 0057B276    ret        0C
*}
//end;

//0057B27C
//procedure sub_0057B27C(?:TRvDataSetConnection; ?:?; ?:?);
//begin
{*
 0057B27C    push       ebp
 0057B27D    mov        ebp,esp
 0057B27F    mov        edx,dword ptr [eax+50]; TRvDataSetConnection.?f50:Int64
 0057B282    mov        ecx,dword ptr [ebp+8]
 0057B285    mov        dword ptr [edx],ecx
 0057B287    mov        ecx,dword ptr [ebp+0C]
 0057B28A    mov        dword ptr [edx+4],ecx
 0057B28D    add        dword ptr [eax+50],8; TRvDataSetConnection.?f50:Int64
 0057B291    pop        ebp
 0057B292    ret        8
*}
//end;

//0057B298
//procedure sub_0057B298(?:TRvDataSetConnection; ?:?; ?:?);
//begin
{*
 0057B298    push       ebp
 0057B299    mov        ebp,esp
 0057B29B    mov        edx,dword ptr [eax+50]; TRvDataSetConnection.?f50:Int64
 0057B29E    mov        ecx,dword ptr [ebp+8]
 0057B2A1    mov        dword ptr [edx],ecx
 0057B2A3    mov        ecx,dword ptr [ebp+0C]
 0057B2A6    mov        dword ptr [edx+4],ecx
 0057B2A9    add        dword ptr [eax+50],8; TRvDataSetConnection.?f50:Int64
 0057B2AD    pop        ebp
 0057B2AE    ret        8
*}
//end;

//0057B2B4
//procedure sub_0057B2B4(?:TRvDataSetConnection; ?:Pointer; ?:Int64);
//begin
{*
 0057B2B4    push       ebx
 0057B2B5    push       esi
 0057B2B6    mov        esi,ecx
 0057B2B8    mov        ebx,eax
 0057B2BA    mov        eax,edx
 0057B2BC    mov        edx,dword ptr [ebx+50]; TRvDataSetConnection.?f50:Int64
 0057B2BF    mov        ecx,esi
 0057B2C1    call       Move
 0057B2C6    add        dword ptr [ebx+50],esi; TRvDataSetConnection.?f50:Int64
 0057B2C9    pop        esi
 0057B2CA    pop        ebx
 0057B2CB    ret
*}
//end;

//0057B2CC
//procedure sub_0057B2CC(?:TRvCustomConnection);
//begin
{*
 0057B2CC    push       ebx
 0057B2CD    push       esi
 0057B2CE    push       edi
 0057B2CF    mov        edi,eax
 0057B2D1    mov        eax,dword ptr [edi+6C]; TRvCustomConnection.?f6C:TList
 0057B2D4    mov        esi,dword ptr [eax+8]; TList.FCount:Integer
 0057B2D7    dec        esi
 0057B2D8    test       esi,esi
>0057B2DA    jl         0057B300
 0057B2DC    inc        esi
 0057B2DD    xor        ebx,ebx
 0057B2DF    mov        eax,dword ptr [edi+6C]; TRvCustomConnection.?f6C:TList
 0057B2E2    mov        edx,ebx
 0057B2E4    call       TList.Get
 0057B2E9    test       eax,eax
>0057B2EB    je         0057B2FC
 0057B2ED    mov        eax,dword ptr [edi+6C]; TRvCustomConnection.?f6C:TList
 0057B2F0    mov        edx,ebx
 0057B2F2    call       TList.Get
 0057B2F7    call       TObject.Free
 0057B2FC    inc        ebx
 0057B2FD    dec        esi
<0057B2FE    jne        0057B2DF
 0057B300    mov        eax,dword ptr [edi+6C]; TRvCustomConnection.?f6C:TList
 0057B303    mov        edx,dword ptr [eax]
 0057B305    call       dword ptr [edx+8]; TList.Clear
 0057B308    pop        edi
 0057B309    pop        esi
 0057B30A    pop        ebx
 0057B30B    ret
*}
//end;

//0057B30C
//procedure sub_0057B30C(?:?);
//begin
{*
 0057B30C    push       ebx
 0057B30D    push       esi
 0057B30E    push       edi
 0057B30F    mov        edi,eax
 0057B311    mov        eax,dword ptr [edi+6C]
 0057B314    mov        esi,dword ptr [eax+8]
 0057B317    dec        esi
 0057B318    test       esi,esi
>0057B31A    jl         0057B340
 0057B31C    inc        esi
 0057B31D    xor        ebx,ebx
 0057B31F    mov        eax,dword ptr [edi+6C]
 0057B322    mov        edx,ebx
 0057B324    call       TList.Get
 0057B329    test       eax,eax
>0057B32B    je         0057B33C
 0057B32D    mov        eax,dword ptr [edi+6C]
 0057B330    mov        edx,ebx
 0057B332    call       TList.Get
 0057B337    call       0057AB14
 0057B33C    inc        ebx
 0057B33D    dec        esi
<0057B33E    jne        0057B31F
 0057B340    pop        edi
 0057B341    pop        esi
 0057B342    pop        ebx
 0057B343    ret
*}
//end;

//0057B344
//function sub_0057B344(?:TRvDataSetConnection):?;
//begin
{*
 0057B344    push       ebx
 0057B345    push       esi
 0057B346    push       edi
 0057B347    mov        ebx,eax
 0057B349    mov        esi,dword ptr [ebx+6C]; TRvDataSetConnection.?f6C:TList
 0057B34C    mov        eax,dword ptr [esi+8]; TList.FCount:Integer
 0057B34F    mov        edi,dword ptr [ebx+70]; TRvDataSetConnection.?f70:dword
 0057B352    cmp        eax,edi
>0057B354    jg         0057B35A
 0057B356    xor        eax,eax
>0057B358    jmp        0057B363
 0057B35A    mov        edx,edi
 0057B35C    mov        eax,esi
 0057B35E    call       TList.Get
 0057B363    pop        edi
 0057B364    pop        esi
 0057B365    pop        ebx
 0057B366    ret
*}
//end;

//0057B368
//procedure sub_0057B368(?:TRvDataSetConnection; ?:?);
//begin
{*
 0057B368    push       ebp
 0057B369    mov        ebp,esp
 0057B36B    add        esp,0FFFFFFD8
 0057B36E    push       ebx
 0057B36F    push       esi
 0057B370    push       edi
 0057B371    xor        ecx,ecx
 0057B373    mov        dword ptr [ebp-0C],ecx
 0057B376    mov        dword ptr [ebp-10],ecx
 0057B379    mov        dword ptr [ebp-24],ecx
 0057B37C    mov        dword ptr [ebp-28],ecx
 0057B37F    mov        dword ptr [ebp-8],ecx
 0057B382    mov        word ptr [ebp-2],dx
 0057B386    mov        ebx,eax
 0057B388    xor        eax,eax
 0057B38A    push       ebp
 0057B38B    push       57B45C
 0057B390    push       dword ptr fs:[eax]
 0057B393    mov        dword ptr fs:[eax],esp
 0057B396    mov        esi,dword ptr [ebx+6C]; TRvDataSetConnection.?f6C:TList
 0057B399    mov        eax,dword ptr [esi+8]; TList.FCount:Integer
 0057B39C    mov        edi,dword ptr [ebx+70]; TRvDataSetConnection.?f70:dword
 0057B39F    cmp        eax,edi
>0057B3A1    jg         0057B3BF
 0057B3A3    mov        ebx,dword ptr ds:[61B830]
 0057B3A9    mov        ebx,dword ptr [ebx]
 0057B3AB    lea        edx,[ebp-8]
 0057B3AE    mov        eax,57B474; 'Attempt to write more fields than defined.'
 0057B3B3    call       ebx
 0057B3B5    mov        eax,dword ptr [ebp-8]
 0057B3B8    call       00579798
>0057B3BD    jmp        0057B434
 0057B3BF    mov        edx,edi
 0057B3C1    mov        eax,esi
 0057B3C3    call       TList.Get
 0057B3C8    mov        al,byte ptr [eax+4]
 0057B3CB    cmp        al,0F
>0057B3CD    ja         0057B3D6
 0057B3CF    and        eax,7F
 0057B3D2    bt         dword ptr [ebp-2],eax
>0057B3D6    jb         0057B434
 0057B3D8    lea        eax,[ebp-10]
 0057B3DB    push       eax
 0057B3DC    lea        edx,[ebp-24]
 0057B3DF    mov        eax,dword ptr [ebx+70]; TRvDataSetConnection.?f70:dword
 0057B3E2    inc        eax
 0057B3E3    call       IntToStr
 0057B3E8    mov        eax,dword ptr [ebp-24]
 0057B3EB    mov        dword ptr [ebp-20],eax
 0057B3EE    mov        byte ptr [ebp-1C],0B
 0057B3F2    lea        edx,[ebp-28]
 0057B3F5    mov        eax,dword ptr [ebx+6C]; TRvDataSetConnection.?f6C:TList
 0057B3F8    mov        eax,dword ptr [eax+8]; TList.FCount:Integer
 0057B3FB    call       IntToStr
 0057B400    mov        eax,dword ptr [ebp-28]
 0057B403    mov        dword ptr [ebp-18],eax
 0057B406    mov        byte ptr [ebp-14],0B
 0057B40A    lea        edx,[ebp-20]
 0057B40D    mov        ecx,1
 0057B412    mov        eax,57B4A8; 'Attempt to write different data type than defined (Column %0:s/%1:s).'
 0057B417    call       Format
 0057B41C    mov        eax,dword ptr [ebp-10]
 0057B41F    mov        ebx,dword ptr ds:[61B830]
 0057B425    mov        ebx,dword ptr [ebx]
 0057B427    lea        edx,[ebp-0C]
 0057B42A    call       ebx
 0057B42C    mov        eax,dword ptr [ebp-0C]
 0057B42F    call       00579798
 0057B434    xor        eax,eax
 0057B436    pop        edx
 0057B437    pop        ecx
 0057B438    pop        ecx
 0057B439    mov        dword ptr fs:[eax],edx
 0057B43C    push       57B463
 0057B441    lea        eax,[ebp-28]
 0057B444    mov        edx,2
 0057B449    call       @LStrArrayClr
 0057B44E    lea        eax,[ebp-10]
 0057B451    mov        edx,3
 0057B456    call       @LStrArrayClr
 0057B45B    ret
<0057B45C    jmp        @HandleFinally
<0057B461    jmp        0057B441
 0057B463    pop        edi
 0057B464    pop        esi
 0057B465    pop        ebx
 0057B466    mov        esp,ebp
 0057B468    pop        ebp
 0057B469    ret
*}
//end;

//0057B4F0
//procedure sub_0057B4F0(?:TRvDataSetConnection; ?:AnsiString; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0057B4F0    push       ebp
 0057B4F1    mov        ebp,esp
 0057B4F3    push       0
 0057B4F5    push       0
 0057B4F7    push       0
 0057B4F9    push       0
 0057B4FB    push       0
 0057B4FD    push       ebx
 0057B4FE    push       esi
 0057B4FF    push       edi
 0057B500    mov        byte ptr [ebp-5],cl
 0057B503    mov        dword ptr [ebp-4],edx
 0057B506    mov        ebx,eax
 0057B508    mov        eax,dword ptr [ebp-4]
 0057B50B    call       @LStrAddRef
 0057B510    mov        eax,dword ptr [ebp+0C]
 0057B513    call       @LStrAddRef
 0057B518    mov        eax,dword ptr [ebp+8]
 0057B51B    call       @LStrAddRef
 0057B520    xor        eax,eax
 0057B522    push       ebp
 0057B523    push       57B66D
 0057B528    push       dword ptr fs:[eax]
 0057B52B    mov        dword ptr fs:[eax],esp
 0057B52E    mov        esi,dword ptr [ebx+6C]; TRvDataSetConnection.?f6C:TList
 0057B531    mov        edi,dword ptr [esi+8]; TList.FCount:Integer
 0057B534    test       edi,edi
>0057B536    jne        0057B53D
 0057B538    or         edi,0FFFFFFFF
>0057B53B    jmp        0057B54A
 0057B53D    mov        edx,edi
 0057B53F    dec        edx
 0057B540    mov        eax,esi
 0057B542    call       TList.Get
 0057B547    mov        edi,dword ptr [eax+10]
 0057B54A    lea        ecx,[ebp-0C]
 0057B54D    mov        edx,dword ptr [ebp-4]
 0057B550    mov        eax,ebx
 0057B552    call       0057B090
 0057B557    mov        eax,dword ptr [ebp-4]
 0057B55A    push       eax
 0057B55B    cmp        dword ptr [ebp-0C],0
 0057B55F    setne      al
 0057B562    push       eax
 0057B563    mov        cl,byte ptr [ebp-5]
 0057B566    mov        dl,1
 0057B568    mov        eax,[0057A00C]; TDataConnectFieldDef
 0057B56D    call       TDataConnectFieldDef.Create; TDataConnectFieldDef.Create
 0057B572    mov        esi,eax
 0057B574    cmp        byte ptr [esi+0C],0; TDataConnectFieldDef.?fC:byte
>0057B578    je         0057B630
 0057B57E    inc        edi
 0057B57F    mov        dword ptr [esi+10],edi; TDataConnectFieldDef.?f10:dword
 0057B582    mov        edx,57B688; 'N'
 0057B587    mov        eax,ebx
 0057B589    call       0057B1B4
 0057B58E    mov        edx,dword ptr [ebp-0C]
 0057B591    mov        eax,ebx
 0057B593    call       0057B1B4
 0057B598    cmp        byte ptr [ebp-5],0
>0057B59C    je         0057B5C6
 0057B59E    mov        edx,57B694; 'T'
 0057B5A3    mov        eax,ebx
 0057B5A5    call       0057B1B4
 0057B5AA    lea        ecx,[ebp-10]
 0057B5AD    xor        edx,edx
 0057B5AF    mov        dl,byte ptr [ebp-5]
 0057B5B2    mov        eax,[00579448]; TRPDataType
 0057B5B7    call       GetEnumName
 0057B5BC    mov        edx,dword ptr [ebp-10]
 0057B5BF    mov        eax,ebx
 0057B5C1    call       0057B1B4
 0057B5C6    cmp        dword ptr [ebp+10],0
>0057B5CA    jle        0057B5ED
 0057B5CC    mov        edx,57B6A0; 'W'
 0057B5D1    mov        eax,ebx
 0057B5D3    call       0057B1B4
 0057B5D8    lea        edx,[ebp-14]
 0057B5DB    mov        eax,dword ptr [ebp+10]
 0057B5DE    call       IntToStr
 0057B5E3    mov        edx,dword ptr [ebp-14]
 0057B5E6    mov        eax,ebx
 0057B5E8    call       0057B1B4
 0057B5ED    cmp        dword ptr [ebp+0C],0
>0057B5F1    je         0057B609
 0057B5F3    mov        edx,57B6AC; 'L'
 0057B5F8    mov        eax,ebx
 0057B5FA    call       0057B1B4
 0057B5FF    mov        edx,dword ptr [ebp+0C]
 0057B602    mov        eax,ebx
 0057B604    call       0057B1B4
 0057B609    cmp        dword ptr [ebp+8],0
>0057B60D    je         0057B625
 0057B60F    mov        edx,57B6B8; 'D'
 0057B614    mov        eax,ebx
 0057B616    call       0057B1B4
 0057B61B    mov        edx,dword ptr [ebp+8]
 0057B61E    mov        eax,ebx
 0057B620    call       0057B1B4
 0057B625    xor        edx,edx
 0057B627    mov        eax,ebx
 0057B629    call       0057B1B4
>0057B62E    jmp        0057B633
 0057B630    mov        dword ptr [esi+10],edi; TDataConnectFieldDef.?f10:dword
 0057B633    mov        edx,esi
 0057B635    mov        eax,dword ptr [ebx+6C]; TRvDataSetConnection.?f6C:TList
 0057B638    call       TList.Add
 0057B63D    xor        eax,eax
 0057B63F    pop        edx
 0057B640    pop        ecx
 0057B641    pop        ecx
 0057B642    mov        dword ptr fs:[eax],edx
 0057B645    push       57B674
 0057B64A    lea        eax,[ebp-14]
 0057B64D    mov        edx,3
 0057B652    call       @LStrArrayClr
 0057B657    lea        eax,[ebp-4]
 0057B65A    call       @LStrClr
 0057B65F    lea        eax,[ebp+8]
 0057B662    mov        edx,2
 0057B667    call       @LStrArrayClr
 0057B66C    ret
<0057B66D    jmp        @HandleFinally
<0057B672    jmp        0057B64A
 0057B674    pop        edi
 0057B675    pop        esi
 0057B676    pop        ebx
 0057B677    mov        esp,ebp
 0057B679    pop        ebp
 0057B67A    ret        0C
*}
//end;

//0057B6BC
//procedure sub_0057B6BC(?:TRvDataSetConnection);
//begin
{*
 0057B6BC    push       ebx
 0057B6BD    mov        ecx,dword ptr [eax+50]; TRvDataSetConnection.?f50:Int64
 0057B6C0    mov        edx,dword ptr [eax+54]; TRvDataSetConnection.?f54:dword
 0057B6C3    sub        ecx,edx
 0057B6C5    mov        ebx,dword ptr [eax+74]; TRvDataSetConnection.?f74:dword
 0057B6C8    shl        ebx,3
 0057B6CB    add        ebx,edx
 0057B6CD    mov        dword ptr [ebx],ecx
 0057B6CF    pop        ebx
 0057B6D0    ret
*}
//end;

//0057B6D4
//procedure sub_0057B6D4(?:TRvDataSetConnection);
//begin
{*
 0057B6D4    push       ebx
 0057B6D5    mov        ecx,dword ptr [eax+50]; TRvDataSetConnection.?f50:Int64
 0057B6D8    mov        edx,dword ptr [eax+54]; TRvDataSetConnection.?f54:dword
 0057B6DB    sub        ecx,edx
 0057B6DD    mov        ebx,dword ptr [eax+74]; TRvDataSetConnection.?f74:dword
 0057B6E0    shl        ebx,3
 0057B6E3    add        ebx,edx
 0057B6E5    add        ebx,4
 0057B6E8    mov        dword ptr [ebx],ecx
 0057B6EA    pop        ebx
 0057B6EB    ret
*}
//end;

//0057B6EC
//procedure sub_0057B6EC(?:TRvDataSetConnection; ?:?);
//begin
{*
 0057B6EC    push       ebp
 0057B6ED    mov        ebp,esp
 0057B6EF    add        esp,0FFFFFFE8
 0057B6F2    push       ebx
 0057B6F3    push       esi
 0057B6F4    push       edi
 0057B6F5    xor        ecx,ecx
 0057B6F7    mov        dword ptr [ebp-14],ecx
 0057B6FA    mov        dword ptr [ebp-18],ecx
 0057B6FD    mov        dword ptr [ebp-4],edx
 0057B700    mov        edi,eax
 0057B702    xor        eax,eax
 0057B704    push       ebp
 0057B705    push       57B7FD
 0057B70A    push       dword ptr fs:[eax]
 0057B70D    mov        dword ptr fs:[eax],esp
 0057B710    mov        eax,dword ptr [edi+50]; TRvDataSetConnection.?f50:Int64
 0057B713    sub        eax,dword ptr [edi+4C]
 0057B716    add        eax,dword ptr [ebp-4]
 0057B719    cmp        eax,dword ptr [edi+44]; TRvDataSetConnection.?f44:dword
>0057B71C    jle        0057B7E2
 0057B722    xor        ebx,ebx
 0057B724    mov        bl,byte ptr [edi+48]; TRvDataSetConnection.?f48:byte
 0057B727    and        ebx,1
 0057B72A    inc        ebx
 0057B72B    add        eax,10000
 0057B730    mov        dword ptr [ebp-0C],eax
 0057B733    lea        edx,[ebp-18]
 0057B736    xor        eax,eax
 0057B738    mov        al,bl
 0057B73A    call       IntToStr
 0057B73F    mov        ecx,dword ptr [ebp-18]
 0057B742    lea        eax,[ebp-14]
 0057B745    mov        edx,57B814; 'RAVEBUFFERALT'
 0057B74A    call       @LStrCat3
 0057B74F    mov        eax,dword ptr [ebp-14]
 0057B752    mov        edx,dword ptr [ebp-0C]
 0057B755    call       00579700
 0057B75A    mov        dword ptr [ebp-8],eax
 0057B75D    mov        eax,dword ptr [ebp-8]
 0057B760    call       00579784
 0057B765    mov        esi,eax
 0057B767    mov        ecx,dword ptr [edi+50]; TRvDataSetConnection.?f50:Int64
 0057B76A    mov        eax,dword ptr [edi+4C]; TRvDataSetConnection.?f4C:dword
 0057B76D    sub        ecx,eax
 0057B76F    push       esi
 0057B770    pop        edx
 0057B771    call       Move
 0057B776    mov        eax,dword ptr [edi+50]; TRvDataSetConnection.?f50:Int64
 0057B779    sub        eax,dword ptr [edi+4C]
 0057B77C    add        eax,esi
 0057B77E    mov        dword ptr [edi+50],eax; TRvDataSetConnection.?f50:Int64
 0057B781    mov        eax,dword ptr [edi+54]; TRvDataSetConnection.?f54:dword
 0057B784    sub        eax,dword ptr [edi+4C]
 0057B787    add        eax,esi
 0057B789    mov        dword ptr [edi+54],eax; TRvDataSetConnection.?f54:dword
 0057B78C    cmp        byte ptr [edi+48],0; TRvDataSetConnection.?f48:byte
>0057B790    jbe        0057B7A4
 0057B792    mov        eax,dword ptr [edi+40]; TRvDataSetConnection.?f40:dword
 0057B795    push       eax
 0057B796    call       kernel32.UnmapViewOfFile
 0057B79B    mov        eax,dword ptr [edi+3C]; TRvDataSetConnection.?f3C:dword
 0057B79E    push       eax
 0057B79F    call       kernel32.CloseHandle
 0057B7A4    mov        eax,dword ptr [edi+50]; TRvDataSetConnection.?f50:Int64
 0057B7A7    mov        dword ptr [ebp-10],eax
 0057B7AA    mov        eax,dword ptr [edi+38]; TRvDataSetConnection.?f38:dword
 0057B7AD    mov        dword ptr [edi+50],eax; TRvDataSetConnection.?f50:Int64
 0057B7B0    xor        edx,edx
 0057B7B2    mov        eax,edi
 0057B7B4    call       0057B224
 0057B7B9    xor        edx,edx
 0057B7BB    mov        dl,bl
 0057B7BD    mov        eax,edi
 0057B7BF    call       0057B224
 0057B7C4    mov        eax,dword ptr [ebp-10]
 0057B7C7    mov        dword ptr [edi+50],eax; TRvDataSetConnection.?f50:Int64
 0057B7CA    mov        eax,dword ptr [ebp-8]
 0057B7CD    mov        dword ptr [edi+3C],eax; TRvDataSetConnection.?f3C:dword
 0057B7D0    mov        dword ptr [edi+40],esi; TRvDataSetConnection.?f40:dword
 0057B7D3    mov        eax,dword ptr [ebp-0C]
 0057B7D6    mov        dword ptr [edi+44],eax; TRvDataSetConnection.?f44:dword
 0057B7D9    mov        byte ptr [edi+48],bl; TRvDataSetConnection.?f48:byte
 0057B7DC    mov        eax,dword ptr [edi+40]; TRvDataSetConnection.?f40:dword
 0057B7DF    mov        dword ptr [edi+4C],eax; TRvDataSetConnection.?f4C:dword
 0057B7E2    xor        eax,eax
 0057B7E4    pop        edx
 0057B7E5    pop        ecx
 0057B7E6    pop        ecx
 0057B7E7    mov        dword ptr fs:[eax],edx
 0057B7EA    push       57B804
 0057B7EF    lea        eax,[ebp-18]
 0057B7F2    mov        edx,2
 0057B7F7    call       @LStrArrayClr
 0057B7FC    ret
<0057B7FD    jmp        @HandleFinally
<0057B802    jmp        0057B7EF
 0057B804    pop        edi
 0057B805    pop        esi
 0057B806    pop        ebx
 0057B807    mov        esp,ebp
 0057B809    pop        ebp
 0057B80A    ret
*}
//end;

//0057B824
//function sub_0057B824(?:TRvDataSetConnection; ?:AnsiString):?;
//begin
{*
 0057B824    push       ebx
 0057B825    push       esi
 0057B826    mov        esi,edx
 0057B828    mov        ebx,eax
 0057B82A    cmp        byte ptr [ebx+8C],0; TRvDataSetConnection.LocalFilter:Boolean
>0057B831    je         0057B850
 0057B833    cmp        byte ptr [ebx+8D],0; TRvDataSetConnection.?f8D:Boolean
>0057B83A    je         0057B850
 0057B83C    mov        eax,ebx
 0057B83E    call       0057B344
 0057B843    mov        edx,esi
 0057B845    call       0057ABFC
 0057B84A    mov        byte ptr [ebx+8D],al; TRvDataSetConnection.?f8D:Boolean
 0057B850    cmp        byte ptr [ebx+8C],0; TRvDataSetConnection.LocalFilter:Boolean
>0057B857    je         0057B862
 0057B859    cmp        byte ptr [ebx+8D],0; TRvDataSetConnection.?f8D:Boolean
>0057B860    je         0057B867
 0057B862    xor        eax,eax
 0057B864    pop        esi
 0057B865    pop        ebx
 0057B866    ret
 0057B867    mov        al,1
 0057B869    pop        esi
 0057B86A    pop        ebx
 0057B86B    ret
*}
//end;

//0057B86C
//procedure sub_0057B86C(?:TRvDataSetConnection);
//begin
{*
 0057B86C    push       ebx
 0057B86D    mov        ebx,eax
 0057B86F    mov        eax,ebx
 0057B871    call       0057B344
 0057B876    cmp        byte ptr [eax+0C],0
>0057B87A    je         0057B87F
 0057B87C    inc        dword ptr [ebx+74]; TRvDataSetConnection.?f74:dword
 0057B87F    inc        dword ptr [ebx+70]; TRvDataSetConnection.?f70:dword
 0057B882    pop        ebx
 0057B883    ret
*}
//end;

//0057B884
//procedure sub_0057B884(?:TRvDataSetConnection);
//begin
{*
 0057B884    push       ebx
 0057B885    mov        ebx,eax
 0057B887    cmp        byte ptr [ebx+8C],0; TRvDataSetConnection.LocalFilter:Boolean
>0057B88E    je         0057B8A4
 0057B890    mov        eax,ebx
 0057B892    call       0057B344
 0057B897    cmp        dword ptr [eax+1C],0
>0057B89B    je         0057B8A4
 0057B89D    mov        byte ptr [ebx+8D],0; TRvDataSetConnection.?f8D:Boolean
 0057B8A4    cmp        byte ptr [ebx+8D],0; TRvDataSetConnection.?f8D:Boolean
>0057B8AB    je         0057B8D7
 0057B8AD    mov        eax,ebx
 0057B8AF    call       0057B344
 0057B8B4    cmp        byte ptr [eax+0C],0
>0057B8B8    je         0057B8D7
 0057B8BA    mov        dx,word ptr ds:[57B8E0]; 0x1FFF
 0057B8C1    mov        eax,ebx
 0057B8C3    call       0057B368
 0057B8C8    mov        eax,dword ptr [ebx+74]; TRvDataSetConnection.?f74:dword
 0057B8CB    shl        eax,3
 0057B8CE    add        eax,dword ptr [ebx+54]; TRvDataSetConnection.?f54:dword
 0057B8D1    mov        dword ptr [eax],0FFFFFFFF
 0057B8D7    mov        eax,ebx
 0057B8D9    call       0057B86C
 0057B8DE    pop        ebx
 0057B8DF    ret
*}
//end;

//0057B8E4
//procedure sub_0057B8E4(?:TRvDataSetConnection; ?:AnsiString; ?:AnsiString);
//begin
{*
 0057B8E4    push       ebp
 0057B8E5    mov        ebp,esp
 0057B8E7    add        esp,0FFFFFFF8
 0057B8EA    push       ebx
 0057B8EB    push       esi
 0057B8EC    mov        dword ptr [ebp-8],ecx
 0057B8EF    mov        dword ptr [ebp-4],edx
 0057B8F2    mov        ebx,eax
 0057B8F4    mov        eax,dword ptr [ebp-4]
 0057B8F7    call       @LStrAddRef
 0057B8FC    mov        eax,dword ptr [ebp-8]
 0057B8FF    call       @LStrAddRef
 0057B904    xor        eax,eax
 0057B906    push       ebp
 0057B907    push       57B9CC
 0057B90C    push       dword ptr fs:[eax]
 0057B90F    mov        dword ptr fs:[eax],esp
 0057B912    mov        eax,ebx
 0057B914    call       0057B344
 0057B919    cmp        byte ptr [eax+0C],0
>0057B91D    je         0057B9AA
 0057B923    lea        edx,[ebp-8]
 0057B926    mov        eax,ebx
 0057B928    call       0057B824
 0057B92D    test       al,al
>0057B92F    jne        0057B9AA
 0057B931    mov        dx,word ptr ds:[57B9DC]; 0x1
 0057B938    mov        eax,ebx
 0057B93A    call       0057B368
 0057B93F    mov        eax,dword ptr [ebp-8]
 0057B942    mov        edx,dword ptr [ebp-4]
 0057B945    call       @LStrCmp
>0057B94A    je         0057B985
 0057B94C    cmp        dword ptr [ebp-4],0
>0057B950    je         0057B985
 0057B952    mov        eax,dword ptr [ebp-4]
 0057B955    call       @LStrLen
 0057B95A    mov        esi,eax
 0057B95C    mov        eax,dword ptr [ebp-8]
 0057B95F    call       @LStrLen
 0057B964    add        esi,eax
 0057B966    mov        edx,esi
 0057B968    add        edx,8
 0057B96B    mov        eax,ebx
 0057B96D    call       0057B6EC
 0057B972    mov        eax,ebx
 0057B974    call       0057B6D4
 0057B979    mov        edx,dword ptr [ebp-4]
 0057B97C    mov        eax,ebx
 0057B97E    call       0057B1B4
>0057B983    jmp        0057B999
 0057B985    mov        eax,dword ptr [ebp-8]
 0057B988    call       @LStrLen
 0057B98D    mov        edx,eax
 0057B98F    add        edx,4
 0057B992    mov        eax,ebx
 0057B994    call       0057B6EC
 0057B999    mov        eax,ebx
 0057B99B    call       0057B6BC
 0057B9A0    mov        edx,dword ptr [ebp-8]
 0057B9A3    mov        eax,ebx
 0057B9A5    call       0057B1B4
 0057B9AA    mov        eax,ebx
 0057B9AC    call       0057B86C
 0057B9B1    xor        eax,eax
 0057B9B3    pop        edx
 0057B9B4    pop        ecx
 0057B9B5    pop        ecx
 0057B9B6    mov        dword ptr fs:[eax],edx
 0057B9B9    push       57B9D3
 0057B9BE    lea        eax,[ebp-8]
 0057B9C1    mov        edx,2
 0057B9C6    call       @LStrArrayClr
 0057B9CB    ret
<0057B9CC    jmp        @HandleFinally
<0057B9D1    jmp        0057B9BE
 0057B9D3    pop        esi
 0057B9D4    pop        ebx
 0057B9D5    pop        ecx
 0057B9D6    pop        ecx
 0057B9D7    pop        ebp
 0057B9D8    ret
*}
//end;

//0057B9E0
//procedure sub_0057B9E0(?:TRvDataSetConnection; ?:AnsiString; ?:Longint);
//begin
{*
 0057B9E0    push       ebp
 0057B9E1    mov        ebp,esp
 0057B9E3    add        esp,0FFFFFFF4
 0057B9E6    push       ebx
 0057B9E7    xor        ebx,ebx
 0057B9E9    mov        dword ptr [ebp-0C],ebx
 0057B9EC    mov        dword ptr [ebp-8],ecx
 0057B9EF    mov        dword ptr [ebp-4],edx
 0057B9F2    mov        ebx,eax
 0057B9F4    mov        eax,dword ptr [ebp-4]
 0057B9F7    call       @LStrAddRef
 0057B9FC    xor        eax,eax
 0057B9FE    push       ebp
 0057B9FF    push       57BAC1
 0057BA04    push       dword ptr fs:[eax]
 0057BA07    mov        dword ptr fs:[eax],esp
 0057BA0A    mov        eax,ebx
 0057BA0C    call       0057B344
 0057BA11    cmp        byte ptr [eax+0C],0
>0057BA15    je         0057BA9C
 0057BA1B    lea        edx,[ebp-8]
 0057BA1E    mov        eax,ebx
 0057BA20    call       0057B824
 0057BA25    test       al,al
>0057BA27    jne        0057BA9C
 0057BA29    mov        dx,word ptr ds:[57BAD0]; 0x2
 0057BA30    mov        eax,ebx
 0057BA32    call       0057B368
 0057BA37    lea        edx,[ebp-0C]
 0057BA3A    mov        eax,dword ptr [ebp-8]
 0057BA3D    call       IntToStr
 0057BA42    mov        eax,dword ptr [ebp-0C]
 0057BA45    mov        edx,dword ptr [ebp-4]
 0057BA48    call       @LStrCmp
>0057BA4D    je         0057BA7F
 0057BA4F    cmp        dword ptr [ebp-4],0
>0057BA53    je         0057BA7F
 0057BA55    mov        eax,dword ptr [ebp-4]
 0057BA58    call       @LStrLen
 0057BA5D    mov        edx,eax
 0057BA5F    add        edx,4
 0057BA62    add        edx,4
 0057BA65    mov        eax,ebx
 0057BA67    call       0057B6EC
 0057BA6C    mov        eax,ebx
 0057BA6E    call       0057B6D4
 0057BA73    mov        edx,dword ptr [ebp-4]
 0057BA76    mov        eax,ebx
 0057BA78    call       0057B1B4
>0057BA7D    jmp        0057BA8B
 0057BA7F    mov        edx,4
 0057BA84    mov        eax,ebx
 0057BA86    call       0057B6EC
 0057BA8B    mov        eax,ebx
 0057BA8D    call       0057B6BC
 0057BA92    mov        edx,dword ptr [ebp-8]
 0057BA95    mov        eax,ebx
 0057BA97    call       0057B224
 0057BA9C    mov        eax,ebx
 0057BA9E    call       0057B86C
 0057BAA3    xor        eax,eax
 0057BAA5    pop        edx
 0057BAA6    pop        ecx
 0057BAA7    pop        ecx
 0057BAA8    mov        dword ptr fs:[eax],edx
 0057BAAB    push       57BAC8
 0057BAB0    lea        eax,[ebp-0C]
 0057BAB3    call       @LStrClr
 0057BAB8    lea        eax,[ebp-4]
 0057BABB    call       @LStrClr
 0057BAC0    ret
<0057BAC1    jmp        @HandleFinally
<0057BAC6    jmp        0057BAB0
 0057BAC8    pop        ebx
 0057BAC9    mov        esp,ebp
 0057BACB    pop        ebp
 0057BACC    ret
*}
//end;

//0057BAD4
//procedure sub_0057BAD4(?:TRvDataSetConnection; ?:AnsiString; ?:?; ?:?);
//begin
{*
 0057BAD4    push       ebp
 0057BAD5    mov        ebp,esp
 0057BAD7    add        esp,0FFFFFFF8
 0057BADA    push       ebx
 0057BADB    xor        ecx,ecx
 0057BADD    mov        dword ptr [ebp-8],ecx
 0057BAE0    mov        dword ptr [ebp-4],edx
 0057BAE3    mov        ebx,eax
 0057BAE5    mov        eax,dword ptr [ebp-4]
 0057BAE8    call       @LStrAddRef
 0057BAED    xor        eax,eax
 0057BAEF    push       ebp
 0057BAF0    push       57BBB5
 0057BAF5    push       dword ptr fs:[eax]
 0057BAF8    mov        dword ptr fs:[eax],esp
 0057BAFB    mov        eax,ebx
 0057BAFD    call       0057B344
 0057BB02    cmp        byte ptr [eax+0C],0
>0057BB06    je         0057BB93
 0057BB0C    lea        edx,[ebp+8]
 0057BB0F    mov        eax,ebx
 0057BB11    call       0057B824
 0057BB16    test       al,al
>0057BB18    jne        0057BB93
 0057BB1A    mov        dx,word ptr ds:[57BBC4]; 0x1000
 0057BB21    mov        eax,ebx
 0057BB23    call       0057B368
 0057BB28    push       dword ptr [ebp+0C]
 0057BB2B    push       dword ptr [ebp+8]
 0057BB2E    lea        eax,[ebp-8]
 0057BB31    call       IntToStr
 0057BB36    mov        eax,dword ptr [ebp-8]
 0057BB39    mov        edx,dword ptr [ebp-4]
 0057BB3C    call       @LStrCmp
>0057BB41    je         0057BB73
 0057BB43    cmp        dword ptr [ebp-4],0
>0057BB47    je         0057BB73
 0057BB49    mov        eax,dword ptr [ebp-4]
 0057BB4C    call       @LStrLen
 0057BB51    mov        edx,eax
 0057BB53    add        edx,4
 0057BB56    add        edx,8
 0057BB59    mov        eax,ebx
 0057BB5B    call       0057B6EC
 0057BB60    mov        eax,ebx
 0057BB62    call       0057B6D4
 0057BB67    mov        edx,dword ptr [ebp-4]
 0057BB6A    mov        eax,ebx
 0057BB6C    call       0057B1B4
>0057BB71    jmp        0057BB7F
 0057BB73    mov        edx,8
 0057BB78    mov        eax,ebx
 0057BB7A    call       0057B6EC
 0057BB7F    mov        eax,ebx
 0057BB81    call       0057B6BC
 0057BB86    push       dword ptr [ebp+0C]
 0057BB89    push       dword ptr [ebp+8]
 0057BB8C    mov        eax,ebx
 0057BB8E    call       0057B230
 0057BB93    mov        eax,ebx
 0057BB95    call       0057B86C
 0057BB9A    xor        eax,eax
 0057BB9C    pop        edx
 0057BB9D    pop        ecx
 0057BB9E    pop        ecx
 0057BB9F    mov        dword ptr fs:[eax],edx
 0057BBA2    push       57BBBC
 0057BBA7    lea        eax,[ebp-8]
 0057BBAA    mov        edx,2
 0057BBAF    call       @LStrArrayClr
 0057BBB4    ret
<0057BBB5    jmp        @HandleFinally
<0057BBBA    jmp        0057BBA7
 0057BBBC    pop        ebx
 0057BBBD    pop        ecx
 0057BBBE    pop        ecx
 0057BBBF    pop        ebp
 0057BBC0    ret        8
*}
//end;

//0057BBC8
//procedure sub_0057BBC8(?:TRvDataSetConnection; ?:AnsiString; ?:Boolean);
//begin
{*
 0057BBC8    push       ebp
 0057BBC9    mov        ebp,esp
 0057BBCB    add        esp,0FFFFFFF8
 0057BBCE    push       ebx
 0057BBCF    mov        byte ptr [ebp-5],cl
 0057BBD2    mov        dword ptr [ebp-4],edx
 0057BBD5    mov        ebx,eax
 0057BBD7    mov        eax,dword ptr [ebp-4]
 0057BBDA    call       @LStrAddRef
 0057BBDF    xor        eax,eax
 0057BBE1    push       ebp
 0057BBE2    push       57BC7E
 0057BBE7    push       dword ptr fs:[eax]
 0057BBEA    mov        dword ptr fs:[eax],esp
 0057BBED    mov        eax,ebx
 0057BBEF    call       0057B344
 0057BBF4    cmp        byte ptr [eax+0C],0
>0057BBF8    je         0057BC61
 0057BBFA    lea        edx,[ebp-5]
 0057BBFD    mov        eax,ebx
 0057BBFF    call       0057B824
 0057BC04    test       al,al
>0057BC06    jne        0057BC61
 0057BC08    mov        dx,word ptr ds:[57BC8C]; 0x4
 0057BC0F    mov        eax,ebx
 0057BC11    call       0057B368
 0057BC16    cmp        dword ptr [ebp-4],0
>0057BC1A    je         0057BC44
 0057BC1C    mov        eax,dword ptr [ebp-4]
 0057BC1F    call       @LStrLen
 0057BC24    mov        edx,eax
 0057BC26    add        edx,4
 0057BC29    inc        edx
 0057BC2A    mov        eax,ebx
 0057BC2C    call       0057B6EC
 0057BC31    mov        eax,ebx
 0057BC33    call       0057B6D4
 0057BC38    mov        edx,dword ptr [ebp-4]
 0057BC3B    mov        eax,ebx
 0057BC3D    call       0057B1B4
>0057BC42    jmp        0057BC50
 0057BC44    mov        edx,1
 0057BC49    mov        eax,ebx
 0057BC4B    call       0057B6EC
 0057BC50    mov        eax,ebx
 0057BC52    call       0057B6BC
 0057BC57    mov        dl,byte ptr [ebp-5]
 0057BC5A    mov        eax,ebx
 0057BC5C    call       0057B24C
 0057BC61    mov        eax,ebx
 0057BC63    call       0057B86C
 0057BC68    xor        eax,eax
 0057BC6A    pop        edx
 0057BC6B    pop        ecx
 0057BC6C    pop        ecx
 0057BC6D    mov        dword ptr fs:[eax],edx
 0057BC70    push       57BC85
 0057BC75    lea        eax,[ebp-4]
 0057BC78    call       @LStrClr
 0057BC7D    ret
<0057BC7E    jmp        @HandleFinally
<0057BC83    jmp        0057BC75
 0057BC85    pop        ebx
 0057BC86    pop        ecx
 0057BC87    pop        ecx
 0057BC88    pop        ebp
 0057BC89    ret
*}
//end;

//0057BC90
//procedure sub_0057BC90(?:TRvDataSetConnection; ?:AnsiString; ?:?; ?:?; ?:?);
//begin
{*
 0057BC90    push       ebp
 0057BC91    mov        ebp,esp
 0057BC93    push       ecx
 0057BC94    push       ebx
 0057BC95    mov        dword ptr [ebp-4],edx
 0057BC98    mov        ebx,eax
 0057BC9A    mov        eax,dword ptr [ebp-4]
 0057BC9D    call       @LStrAddRef
 0057BCA2    xor        eax,eax
 0057BCA4    push       ebp
 0057BCA5    push       57BD4B
 0057BCAA    push       dword ptr fs:[eax]
 0057BCAD    mov        dword ptr fs:[eax],esp
 0057BCB0    mov        eax,ebx
 0057BCB2    call       0057B344
 0057BCB7    cmp        byte ptr [eax+0C],0
>0057BCBB    je         0057BD2E
 0057BCBD    lea        edx,[ebp+8]
 0057BCC0    mov        eax,ebx
 0057BCC2    call       0057B824
 0057BCC7    test       al,al
>0057BCC9    jne        0057BD2E
 0057BCCB    mov        dx,word ptr ds:[57BD58]; 0x8
 0057BCD2    mov        eax,ebx
 0057BCD4    call       0057B368
 0057BCD9    cmp        dword ptr [ebp-4],0
>0057BCDD    je         0057BD09
 0057BCDF    mov        eax,dword ptr [ebp-4]
 0057BCE2    call       @LStrLen
 0057BCE7    mov        edx,eax
 0057BCE9    add        edx,4
 0057BCEC    add        edx,0A
 0057BCEF    mov        eax,ebx
 0057BCF1    call       0057B6EC
 0057BCF6    mov        eax,ebx
 0057BCF8    call       0057B6D4
 0057BCFD    mov        edx,dword ptr [ebp-4]
 0057BD00    mov        eax,ebx
 0057BD02    call       0057B1B4
>0057BD07    jmp        0057BD15
 0057BD09    mov        edx,0A
 0057BD0E    mov        eax,ebx
 0057BD10    call       0057B6EC
 0057BD15    mov        eax,ebx
 0057BD17    call       0057B6BC
 0057BD1C    mov        ax,word ptr [ebp+10]
 0057BD20    push       eax
 0057BD21    push       dword ptr [ebp+0C]
 0057BD24    push       dword ptr [ebp+8]
 0057BD27    mov        eax,ebx
 0057BD29    call       0057B258
 0057BD2E    mov        eax,ebx
 0057BD30    call       0057B86C
 0057BD35    xor        eax,eax
 0057BD37    pop        edx
 0057BD38    pop        ecx
 0057BD39    pop        ecx
 0057BD3A    mov        dword ptr fs:[eax],edx
 0057BD3D    push       57BD52
 0057BD42    lea        eax,[ebp-4]
 0057BD45    call       @LStrClr
 0057BD4A    ret
<0057BD4B    jmp        @HandleFinally
<0057BD50    jmp        0057BD42
 0057BD52    pop        ebx
 0057BD53    pop        ecx
 0057BD54    pop        ebp
 0057BD55    ret        0C
*}
//end;

//0057BD5C
//procedure sub_0057BD5C(?:TRvDataSetConnection; ?:AnsiString; ?:?; ?:?);
//begin
{*
 0057BD5C    push       ebp
 0057BD5D    mov        ebp,esp
 0057BD5F    push       ecx
 0057BD60    push       ebx
 0057BD61    mov        dword ptr [ebp-4],edx
 0057BD64    mov        ebx,eax
 0057BD66    mov        eax,dword ptr [ebp-4]
 0057BD69    call       @LStrAddRef
 0057BD6E    xor        eax,eax
 0057BD70    push       ebp
 0057BD71    push       57BE12
 0057BD76    push       dword ptr fs:[eax]
 0057BD79    mov        dword ptr fs:[eax],esp
 0057BD7C    mov        eax,ebx
 0057BD7E    call       0057B344
 0057BD83    cmp        byte ptr [eax+0C],0
>0057BD87    je         0057BDF5
 0057BD89    lea        edx,[ebp+8]
 0057BD8C    mov        eax,ebx
 0057BD8E    call       0057B824
 0057BD93    test       al,al
>0057BD95    jne        0057BDF5
 0057BD97    mov        dx,word ptr ds:[57BE20]; 0x10
 0057BD9E    mov        eax,ebx
 0057BDA0    call       0057B368
 0057BDA5    cmp        dword ptr [ebp-4],0
>0057BDA9    je         0057BDD5
 0057BDAB    mov        eax,dword ptr [ebp-4]
 0057BDAE    call       @LStrLen
 0057BDB3    mov        edx,eax
 0057BDB5    add        edx,4
 0057BDB8    add        edx,8
 0057BDBB    mov        eax,ebx
 0057BDBD    call       0057B6EC
 0057BDC2    mov        eax,ebx
 0057BDC4    call       0057B6D4
 0057BDC9    mov        edx,dword ptr [ebp-4]
 0057BDCC    mov        eax,ebx
 0057BDCE    call       0057B1B4
>0057BDD3    jmp        0057BDE1
 0057BDD5    mov        edx,8
 0057BDDA    mov        eax,ebx
 0057BDDC    call       0057B6EC
 0057BDE1    mov        eax,ebx
 0057BDE3    call       0057B6BC
 0057BDE8    push       dword ptr [ebp+0C]
 0057BDEB    push       dword ptr [ebp+8]
 0057BDEE    mov        eax,ebx
 0057BDF0    call       0057B27C
 0057BDF5    mov        eax,ebx
 0057BDF7    call       0057B86C
 0057BDFC    xor        eax,eax
 0057BDFE    pop        edx
 0057BDFF    pop        ecx
 0057BE00    pop        ecx
 0057BE01    mov        dword ptr fs:[eax],edx
 0057BE04    push       57BE19
 0057BE09    lea        eax,[ebp-4]
 0057BE0C    call       @LStrClr
 0057BE11    ret
<0057BE12    jmp        @HandleFinally
<0057BE17    jmp        0057BE09
 0057BE19    pop        ebx
 0057BE1A    pop        ecx
 0057BE1B    pop        ebp
 0057BE1C    ret        8
*}
//end;

//0057BE24
//procedure sub_0057BE24(?:TRvDataSetConnection; ?:AnsiString; ?:?; ?:?);
//begin
{*
 0057BE24    push       ebp
 0057BE25    mov        ebp,esp
 0057BE27    push       ecx
 0057BE28    push       ebx
 0057BE29    mov        dword ptr [ebp-4],edx
 0057BE2C    mov        ebx,eax
 0057BE2E    mov        eax,dword ptr [ebp-4]
 0057BE31    call       @LStrAddRef
 0057BE36    xor        eax,eax
 0057BE38    push       ebp
 0057BE39    push       57BEDA
 0057BE3E    push       dword ptr fs:[eax]
 0057BE41    mov        dword ptr fs:[eax],esp
 0057BE44    mov        eax,ebx
 0057BE46    call       0057B344
 0057BE4B    cmp        byte ptr [eax+0C],0
>0057BE4F    je         0057BEBD
 0057BE51    lea        edx,[ebp+8]
 0057BE54    mov        eax,ebx
 0057BE56    call       0057B824
 0057BE5B    test       al,al
>0057BE5D    jne        0057BEBD
 0057BE5F    mov        dx,word ptr ds:[57BEE8]; 0x20
 0057BE66    mov        eax,ebx
 0057BE68    call       0057B368
 0057BE6D    cmp        dword ptr [ebp-4],0
>0057BE71    je         0057BE9D
 0057BE73    mov        eax,dword ptr [ebp-4]
 0057BE76    call       @LStrLen
 0057BE7B    mov        edx,eax
 0057BE7D    add        edx,4
 0057BE80    add        edx,8
 0057BE83    mov        eax,ebx
 0057BE85    call       0057B6EC
 0057BE8A    mov        eax,ebx
 0057BE8C    call       0057B6D4
 0057BE91    mov        edx,dword ptr [ebp-4]
 0057BE94    mov        eax,ebx
 0057BE96    call       0057B1B4
>0057BE9B    jmp        0057BEA9
 0057BE9D    mov        edx,8
 0057BEA2    mov        eax,ebx
 0057BEA4    call       0057B6EC
 0057BEA9    mov        eax,ebx
 0057BEAB    call       0057B6BC
 0057BEB0    push       dword ptr [ebp+0C]
 0057BEB3    push       dword ptr [ebp+8]
 0057BEB6    mov        eax,ebx
 0057BEB8    call       0057B27C
 0057BEBD    mov        eax,ebx
 0057BEBF    call       0057B86C
 0057BEC4    xor        eax,eax
 0057BEC6    pop        edx
 0057BEC7    pop        ecx
 0057BEC8    pop        ecx
 0057BEC9    mov        dword ptr fs:[eax],edx
 0057BECC    push       57BEE1
 0057BED1    lea        eax,[ebp-4]
 0057BED4    call       @LStrClr
 0057BED9    ret
<0057BEDA    jmp        @HandleFinally
<0057BEDF    jmp        0057BED1
 0057BEE1    pop        ebx
 0057BEE2    pop        ecx
 0057BEE3    pop        ebp
 0057BEE4    ret        8
*}
//end;

//0057BEEC
//procedure sub_0057BEEC(?:TRvDataSetConnection; ?:AnsiString; ?:?; ?:?);
//begin
{*
 0057BEEC    push       ebp
 0057BEED    mov        ebp,esp
 0057BEEF    push       ecx
 0057BEF0    push       ebx
 0057BEF1    mov        dword ptr [ebp-4],edx
 0057BEF4    mov        ebx,eax
 0057BEF6    mov        eax,dword ptr [ebp-4]
 0057BEF9    call       @LStrAddRef
 0057BEFE    xor        eax,eax
 0057BF00    push       ebp
 0057BF01    push       57BFA2
 0057BF06    push       dword ptr fs:[eax]
 0057BF09    mov        dword ptr fs:[eax],esp
 0057BF0C    mov        eax,ebx
 0057BF0E    call       0057B344
 0057BF13    cmp        byte ptr [eax+0C],0
>0057BF17    je         0057BF85
 0057BF19    lea        edx,[ebp+8]
 0057BF1C    mov        eax,ebx
 0057BF1E    call       0057B824
 0057BF23    test       al,al
>0057BF25    jne        0057BF85
 0057BF27    mov        dx,word ptr ds:[57BFB0]; 0x1C0
 0057BF2E    mov        eax,ebx
 0057BF30    call       0057B368
 0057BF35    cmp        dword ptr [ebp-4],0
>0057BF39    je         0057BF65
 0057BF3B    mov        eax,dword ptr [ebp-4]
 0057BF3E    call       @LStrLen
 0057BF43    mov        edx,eax
 0057BF45    add        edx,4
 0057BF48    add        edx,8
 0057BF4B    mov        eax,ebx
 0057BF4D    call       0057B6EC
 0057BF52    mov        eax,ebx
 0057BF54    call       0057B6D4
 0057BF59    mov        edx,dword ptr [ebp-4]
 0057BF5C    mov        eax,ebx
 0057BF5E    call       0057B1B4
>0057BF63    jmp        0057BF71
 0057BF65    mov        edx,8
 0057BF6A    mov        eax,ebx
 0057BF6C    call       0057B6EC
 0057BF71    mov        eax,ebx
 0057BF73    call       0057B6BC
 0057BF78    push       dword ptr [ebp+0C]
 0057BF7B    push       dword ptr [ebp+8]
 0057BF7E    mov        eax,ebx
 0057BF80    call       0057B298
 0057BF85    mov        eax,ebx
 0057BF87    call       0057B86C
 0057BF8C    xor        eax,eax
 0057BF8E    pop        edx
 0057BF8F    pop        ecx
 0057BF90    pop        ecx
 0057BF91    mov        dword ptr fs:[eax],edx
 0057BF94    push       57BFA9
 0057BF99    lea        eax,[ebp-4]
 0057BF9C    call       @LStrClr
 0057BFA1    ret
<0057BFA2    jmp        @HandleFinally
<0057BFA7    jmp        0057BF99
 0057BFA9    pop        ebx
 0057BFAA    pop        ecx
 0057BFAB    pop        ebp
 0057BFAC    ret        8
*}
//end;

//0057BFB4
//procedure sub_0057BFB4(?:TRvDataSetConnection; ?:Pointer; ?:Int64);
//begin
{*
 0057BFB4    push       ebx
 0057BFB5    push       esi
 0057BFB6    push       edi
 0057BFB7    mov        esi,ecx
 0057BFB9    mov        edi,edx
 0057BFBB    mov        ebx,eax
 0057BFBD    cmp        byte ptr [ebx+8D],0; TRvDataSetConnection.?f8D:Boolean
>0057BFC4    je         0057C00A
 0057BFC6    mov        eax,ebx
 0057BFC8    call       0057B344
 0057BFCD    cmp        byte ptr [eax+0C],0
>0057BFD1    je         0057C00A
 0057BFD3    mov        dx,word ptr ds:[57C018]; 0xE00
 0057BFDA    mov        eax,ebx
 0057BFDC    call       0057B368
 0057BFE1    lea        edx,[esi+4]
 0057BFE4    mov        eax,ebx
 0057BFE6    call       0057B6EC
 0057BFEB    mov        eax,ebx
 0057BFED    call       0057B6BC
 0057BFF2    mov        edx,esi
 0057BFF4    mov        eax,ebx
 0057BFF6    call       0057B224
 0057BFFB    test       esi,esi
>0057BFFD    jle        0057C00A
 0057BFFF    mov        edx,edi
 0057C001    mov        ecx,esi
 0057C003    mov        eax,ebx
 0057C005    call       0057B2B4
 0057C00A    mov        eax,ebx
 0057C00C    call       0057B86C
 0057C011    pop        edi
 0057C012    pop        esi
 0057C013    pop        ebx
 0057C014    ret
*}
//end;

//0057C01C
//procedure sub_0057C01C(?:TRvDataSetConnection; ?:AnsiString);
//begin
{*
 0057C01C    push       ebx
 0057C01D    push       esi
 0057C01E    push       edi
 0057C01F    mov        edi,edx
 0057C021    mov        esi,eax
 0057C023    mov        eax,esi
 0057C025    call       0057C054
 0057C02A    mov        ebx,eax
 0057C02C    mov        eax,edi
 0057C02E    mov        edx,ebx
 0057C030    call       @LStrSetLength
 0057C035    test       ebx,ebx
>0057C037    jle        0057C04F
 0057C039    mov        eax,edi
 0057C03B    call       @UniqueStringA
 0057C040    mov        edx,eax
 0057C042    mov        eax,dword ptr [esi+50]
 0057C045    mov        ecx,ebx
 0057C047    call       Move
 0057C04C    add        dword ptr [esi+50],ebx
 0057C04F    pop        edi
 0057C050    pop        esi
 0057C051    pop        ebx
 0057C052    ret
*}
//end;

//0057C054
//function sub_0057C054(?:dword):?;
//begin
{*
 0057C054    mov        edx,dword ptr [eax+50]
 0057C057    mov        edx,dword ptr [edx]
 0057C059    add        dword ptr [eax+50],4
 0057C05D    mov        eax,edx
 0057C05F    ret
*}
//end;

//0057C060
//function sub_0057C060(?:TRvDataSetConnection):?;
//begin
{*
 0057C060    mov        edx,dword ptr [eax+50]
 0057C063    mov        dl,byte ptr [edx]
 0057C065    inc        dword ptr [eax+50]
 0057C068    mov        eax,edx
 0057C06A    ret
*}
//end;

//0057C06C
//function sub_0057C06C(?:TRvDataSetConnection):?;
//begin
{*
 0057C06C    add        esp,0FFFFFFF4
 0057C06F    mov        edx,dword ptr [eax+50]
 0057C072    mov        ecx,dword ptr [edx]
 0057C074    mov        dword ptr [esp],ecx
 0057C077    mov        ecx,dword ptr [edx+4]
 0057C07A    mov        dword ptr [esp+4],ecx
 0057C07E    mov        cx,word ptr [edx+8]
 0057C082    mov        word ptr [esp+8],cx
 0057C087    add        dword ptr [eax+50],0A
 0057C08B    fld        tbyte ptr [esp]
 0057C08E    add        esp,0C
 0057C091    ret
*}
//end;

//0057C094
//procedure sub_0057C094(?:TRvDataSetConnection);
//begin
{*
 0057C094    add        esp,0FFFFFFF8
 0057C097    mov        edx,dword ptr [eax+50]
 0057C09A    mov        ecx,dword ptr [edx]
 0057C09C    mov        dword ptr [esp],ecx
 0057C09F    mov        ecx,dword ptr [edx+4]
 0057C0A2    mov        dword ptr [esp+4],ecx
 0057C0A6    add        dword ptr [eax+50],8
 0057C0AA    fild       qword ptr [esp]
 0057C0AD    pop        ecx
 0057C0AE    pop        edx
 0057C0AF    ret
*}
//end;

//0057C0B0
//function sub_0057C0B0(?:TRvDataSetConnection):?;
//begin
{*
 0057C0B0    add        esp,0FFFFFFF8
 0057C0B3    mov        edx,dword ptr [eax+50]
 0057C0B6    mov        ecx,dword ptr [edx]
 0057C0B8    mov        dword ptr [esp],ecx
 0057C0BB    mov        ecx,dword ptr [edx+4]
 0057C0BE    mov        dword ptr [esp+4],ecx
 0057C0C2    add        dword ptr [eax+50],8
 0057C0C6    fld        qword ptr [esp]
 0057C0C9    pop        ecx
 0057C0CA    pop        edx
 0057C0CB    ret
*}
//end;

//0057C0CC
//function sub_0057C0CC(?:TRvDataSetConnection; ?:AnsiString):?;
//begin
{*
 0057C0CC    push       ebp
 0057C0CD    mov        ebp,esp
 0057C0CF    add        esp,0FFFFFFF8
 0057C0D2    push       ebx
 0057C0D3    push       esi
 0057C0D4    push       edi
 0057C0D5    mov        dword ptr [ebp-8],edx
 0057C0D8    mov        dword ptr [ebp-4],eax
 0057C0DB    mov        eax,dword ptr [ebp-8]
 0057C0DE    call       @LStrAddRef
 0057C0E3    xor        eax,eax
 0057C0E5    push       ebp
 0057C0E6    push       57C13C
 0057C0EB    push       dword ptr fs:[eax]
 0057C0EE    mov        dword ptr fs:[eax],esp
 0057C0F1    mov        eax,dword ptr [ebp-4]
 0057C0F4    mov        eax,dword ptr [eax+6C]
 0057C0F7    mov        ebx,dword ptr [eax+8]
 0057C0FA    dec        ebx
 0057C0FB    test       ebx,ebx
>0057C0FD    jl         0057C124
 0057C0FF    inc        ebx
 0057C100    xor        edi,edi
 0057C102    mov        eax,dword ptr [ebp-4]
 0057C105    mov        eax,dword ptr [eax+6C]
 0057C108    mov        edx,edi
 0057C10A    call       TList.Get
 0057C10F    mov        esi,eax
 0057C111    mov        eax,dword ptr [esi+8]
 0057C114    mov        edx,dword ptr [ebp-8]
 0057C117    call       CompareText
 0057C11C    test       eax,eax
>0057C11E    je         0057C126
 0057C120    inc        edi
 0057C121    dec        ebx
<0057C122    jne        0057C102
 0057C124    xor        esi,esi
 0057C126    xor        eax,eax
 0057C128    pop        edx
 0057C129    pop        ecx
 0057C12A    pop        ecx
 0057C12B    mov        dword ptr fs:[eax],edx
 0057C12E    push       57C143
 0057C133    lea        eax,[ebp-8]
 0057C136    call       @LStrClr
 0057C13B    ret
<0057C13C    jmp        @HandleFinally
<0057C141    jmp        0057C133
 0057C143    mov        eax,esi
 0057C145    pop        edi
 0057C146    pop        esi
 0057C147    pop        ebx
 0057C148    pop        ecx
 0057C149    pop        ecx
 0057C14A    pop        ebp
 0057C14B    ret
*}
//end;

//0057C14C
//function sub_0057C14C(?:TRvDataSetConnection; ?:AnsiString; ?:AnsiString; ?:?):?;
//begin
{*
 0057C14C    push       ebp
 0057C14D    mov        ebp,esp
 0057C14F    add        esp,0FFFFFFCC
 0057C152    push       ebx
 0057C153    push       esi
 0057C154    push       edi
 0057C155    xor        ebx,ebx
 0057C157    mov        dword ptr [ebp-34],ebx
 0057C15A    mov        dword ptr [ebp-30],ebx
 0057C15D    mov        dword ptr [ebp-2C],ebx
 0057C160    mov        dword ptr [ebp-4],ecx
 0057C163    mov        esi,edx
 0057C165    mov        edi,eax
 0057C167    xor        eax,eax
 0057C169    push       ebp
 0057C16A    push       57C2DE
 0057C16F    push       dword ptr fs:[eax]
 0057C172    mov        dword ptr fs:[eax],esp
 0057C175    lea        edx,[ebp-2C]
 0057C178    mov        eax,edi
 0057C17A    call       0057C01C
 0057C17F    mov        edx,dword ptr [ebp-2C]
 0057C182    mov        eax,esi
 0057C184    call       @LStrAsg
 0057C189    cmp        dword ptr [esi],0
 0057C18C    setne      bl
 0057C18F    test       bl,bl
>0057C191    je         0057C2C3
 0057C197    lea        edx,[ebp-30]
 0057C19A    mov        eax,edi
 0057C19C    call       0057C01C
 0057C1A1    mov        edx,dword ptr [ebp-30]
 0057C1A4    mov        eax,dword ptr [ebp-4]
 0057C1A7    call       @LStrAsg
 0057C1AC    lea        edx,[ebp-34]
 0057C1AF    mov        eax,edi
 0057C1B1    call       0057C01C
 0057C1B6    mov        edx,dword ptr [ebp-34]
 0057C1B9    mov        eax,dword ptr [ebp+8]
 0057C1BC    call       @LStrAsg
 0057C1C1    mov        eax,edi
 0057C1C3    call       0057C054
 0057C1C8    mov        byte ptr [ebp-5],al
 0057C1CB    xor        eax,eax
 0057C1CD    mov        al,byte ptr [ebp-5]
 0057C1D0    cmp        eax,8
>0057C1D3    ja         0057C23F
 0057C1D5    jmp        dword ptr [eax*4+57C1DC]
 0057C1D5    dd         57C23F
 0057C1D5    dd         57C202
 0057C1D5    dd         57C20E
 0057C1D5    dd         57C21A
 0057C1D5    dd         57C227
 0057C1D5    dd         57C227
 0057C1D5    dd         57C234
 0057C1D5    dd         57C234
 0057C1D5    dd         57C234
>0057C200    jmp        0057C23F
 0057C202    mov        eax,edi
 0057C204    call       0057C054
 0057C209    mov        dword ptr [ebp-0C],eax
>0057C20C    jmp        0057C23F
 0057C20E    mov        eax,edi
 0057C210    call       0057C060
 0057C215    mov        byte ptr [ebp-0D],al
>0057C218    jmp        0057C23F
 0057C21A    mov        eax,edi
 0057C21C    call       0057C06C
 0057C221    fstp       tbyte ptr [ebp-18]
 0057C224    wait
>0057C225    jmp        0057C23F
 0057C227    mov        eax,edi
 0057C229    call       0057C094
 0057C22E    fistp      qword ptr [ebp-20]
 0057C231    wait
>0057C232    jmp        0057C23F
 0057C234    mov        eax,edi
 0057C236    call       0057C0B0
 0057C23B    fstp       qword ptr [ebp-28]
 0057C23E    wait
 0057C23F    mov        edx,dword ptr [esi]
 0057C241    mov        eax,edi
 0057C243    call       0057C0CC
 0057C248    test       eax,eax
>0057C24A    je         0057C2C3
 0057C24C    mov        dl,byte ptr [eax+4]
 0057C24F    cmp        dl,byte ptr [ebp-5]
>0057C252    jne        0057C2C3
 0057C254    xor        edx,edx
 0057C256    mov        dl,byte ptr [ebp-5]
 0057C259    cmp        edx,8
>0057C25C    ja         0057C2C3
 0057C25E    jmp        dword ptr [edx*4+57C265]
 0057C25E    dd         57C289
 0057C25E    dd         57C293
 0057C25E    dd         57C29D
 0057C25E    dd         57C2A7
 0057C25E    dd         57C2B1
 0057C25E    dd         57C2B1
 0057C25E    dd         57C2BB
 0057C25E    dd         57C2BB
 0057C25E    dd         57C2BB
 0057C289    mov        edx,dword ptr [ebp+8]
 0057C28C    call       0057AB44
>0057C291    jmp        0057C2C3
 0057C293    lea        edx,[ebp-0C]
 0057C296    call       0057AB44
>0057C29B    jmp        0057C2C3
 0057C29D    lea        edx,[ebp-0D]
 0057C2A0    call       0057AB44
>0057C2A5    jmp        0057C2C3
 0057C2A7    lea        edx,[ebp-18]
 0057C2AA    call       0057AB44
>0057C2AF    jmp        0057C2C3
 0057C2B1    lea        edx,[ebp-20]
 0057C2B4    call       0057AB44
>0057C2B9    jmp        0057C2C3
 0057C2BB    lea        edx,[ebp-28]
 0057C2BE    call       0057AB44
 0057C2C3    xor        eax,eax
 0057C2C5    pop        edx
 0057C2C6    pop        ecx
 0057C2C7    pop        ecx
 0057C2C8    mov        dword ptr fs:[eax],edx
 0057C2CB    push       57C2E5
 0057C2D0    lea        eax,[ebp-34]
 0057C2D3    mov        edx,3
 0057C2D8    call       @LStrArrayClr
 0057C2DD    ret
<0057C2DE    jmp        @HandleFinally
<0057C2E3    jmp        0057C2D0
 0057C2E5    mov        eax,ebx
 0057C2E7    pop        edi
 0057C2E8    pop        esi
 0057C2E9    pop        ebx
 0057C2EA    mov        esp,ebp
 0057C2EC    pop        ebp
 0057C2ED    ret        4
*}
//end;

//0057C2F0
//function sub_0057C2F0(?:TRvDataSetConnection):?;
//begin
{*
 0057C2F0    lea        edx,[eax+88]; TRvDataSetConnection.?f88:String
 0057C2F6    push       edx
 0057C2F7    lea        ecx,[eax+84]; TRvDataSetConnection.?f84:String
 0057C2FD    lea        edx,[eax+80]; TRvDataSetConnection.?f80:String
 0057C303    call       0057C14C
 0057C308    ret
*}
//end;

//0057C30C
//procedure sub_0057C30C(?:dword);
//begin
{*
 0057C30C    push       ebx
 0057C30D    mov        ebx,eax
 0057C30F    cmp        byte ptr [ebx+48],0
>0057C313    jbe        0057C338
 0057C315    mov        eax,dword ptr [ebx+40]
 0057C318    push       eax
 0057C319    call       kernel32.UnmapViewOfFile
 0057C31E    mov        eax,dword ptr [ebx+3C]
 0057C321    push       eax
 0057C322    call       kernel32.CloseHandle
 0057C327    mov        eax,dword ptr [ebx+38]
 0057C32A    mov        dword ptr [ebx+4C],eax
 0057C32D    mov        byte ptr [ebx+48],0
 0057C331    mov        dword ptr [ebx+44],10000
 0057C338    mov        eax,dword ptr [ebx+4C]
 0057C33B    add        eax,8
 0057C33E    mov        dword ptr [ebx+50],eax
 0057C341    pop        ebx
 0057C342    ret
*}
//end;

//0057C344
//procedure sub_0057C344(?:?);
//begin
{*
 0057C344    push       ebx
 0057C345    push       esi
 0057C346    mov        ebx,eax
 0057C348    mov        esi,dword ptr [ebx+50]
 0057C34B    mov        eax,dword ptr [ebx+4C]
 0057C34E    mov        dword ptr [ebx+50],eax
 0057C351    mov        edx,esi
 0057C353    sub        edx,dword ptr [ebx+4C]
 0057C356    mov        eax,ebx
 0057C358    call       0057B224
 0057C35D    xor        edx,edx
 0057C35F    mov        dl,byte ptr [ebx+48]
 0057C362    mov        eax,ebx
 0057C364    call       0057B224
 0057C369    mov        dword ptr [ebx+50],esi
 0057C36C    pop        esi
 0057C36D    pop        ebx
 0057C36E    ret
*}
//end;

//0057C370
//procedure sub_0057C370(?:?);
//begin
{*
 0057C370    push       ebx
 0057C371    push       esi
 0057C372    mov        ebx,eax
 0057C374    mov        esi,dword ptr [ebx+50]
 0057C377    mov        eax,dword ptr [ebx+4C]
 0057C37A    mov        dword ptr [ebx+50],eax
 0057C37D    xor        edx,edx
 0057C37F    mov        eax,ebx
 0057C381    call       0057B224
 0057C386    xor        edx,edx
 0057C388    mov        eax,ebx
 0057C38A    call       0057B224
 0057C38F    mov        dword ptr [ebx+50],esi
 0057C392    pop        esi
 0057C393    pop        ebx
 0057C394    ret
*}
//end;

//0057C398
//procedure sub_0057C398(?:?);
//begin
{*
 0057C398    push       ebx
 0057C399    mov        ebx,eax
 0057C39B    cmp        word ptr [ebx+9A],0
>0057C3A3    je         0057C3B5
 0057C3A5    mov        edx,ebx
 0057C3A7    mov        eax,dword ptr [ebx+9C]
 0057C3AD    call       dword ptr [ebx+98]
>0057C3B3    jmp        0057C3BC
 0057C3B5    mov        eax,ebx
 0057C3B7    mov        edx,dword ptr [eax]
 0057C3B9    call       dword ptr [edx+30]
 0057C3BC    cmp        byte ptr [ebx+8C],0
>0057C3C3    je         0057C3CC
 0057C3C5    mov        eax,ebx
 0057C3C7    call       0057C4C8
 0057C3CC    mov        eax,ebx
 0057C3CE    call       0057C780
 0057C3D3    test       al,al
>0057C3D5    jne        0057C3E0
 0057C3D7    mov        eax,ebx
 0057C3D9    call       0057C3F4
 0057C3DE    pop        ebx
 0057C3DF    ret
 0057C3E0    cmp        byte ptr [ebx+8C],0
>0057C3E7    jne        0057C3F0
 0057C3E9    mov        eax,ebx
 0057C3EB    call       0057C4C8
 0057C3F0    pop        ebx
 0057C3F1    ret
*}
//end;

//0057C3F4
//procedure sub_0057C3F4(?:?);
//begin
{*
 0057C3F4    push       ebx
 0057C3F5    mov        ebx,eax
 0057C3F7    cmp        word ptr [ebx+0A2],0
>0057C3FF    je         0057C411
 0057C401    mov        edx,ebx
 0057C403    mov        eax,dword ptr [ebx+0A4]
 0057C409    call       dword ptr [ebx+0A0]
>0057C40F    jmp        0057C418
 0057C411    mov        eax,ebx
 0057C413    mov        edx,dword ptr [eax]
 0057C415    call       dword ptr [edx+34]
 0057C418    cmp        byte ptr [ebx+8C],0
>0057C41F    je         0057C428
 0057C421    mov        eax,ebx
 0057C423    call       0057C4C8
 0057C428    mov        eax,ebx
 0057C42A    call       0057C780
 0057C42F    test       al,al
>0057C431    jne        0057C43E
 0057C433    mov        eax,ebx
 0057C435    call       0057C498
 0057C43A    test       al,al
<0057C43C    je         0057C3F7
 0057C43E    cmp        byte ptr [ebx+8C],0
>0057C445    jne        0057C44E
 0057C447    mov        eax,ebx
 0057C449    call       0057C4C8
 0057C44E    pop        ebx
 0057C44F    ret
*}
//end;

//0057C450
//procedure sub_0057C450(?:?);
//begin
{*
 0057C450    push       ebx
 0057C451    push       ecx
 0057C452    mov        ebx,eax
 0057C454    cmp        word ptr [ebx+0AA],0
>0057C45C    je         0057C470
 0057C45E    mov        ecx,esp
 0057C460    mov        edx,ebx
 0057C462    mov        eax,dword ptr [ebx+0AC]
 0057C468    call       dword ptr [ebx+0A8]
>0057C46E    jmp        0057C47A
 0057C470    mov        eax,ebx
 0057C472    mov        edx,dword ptr [eax]
 0057C474    call       dword ptr [edx+38]
 0057C477    mov        byte ptr [esp],al
 0057C47A    mov        eax,ebx
 0057C47C    call       0057C30C
 0057C481    mov        dl,byte ptr [esp]
 0057C484    mov        eax,ebx
 0057C486    call       0057B24C
 0057C48B    mov        eax,ebx
 0057C48D    call       0057C344
 0057C492    pop        edx
 0057C493    pop        ebx
 0057C494    ret
*}
//end;

//0057C498
//function sub_0057C498(?:?):?;
//begin
{*
 0057C498    push       ebx
 0057C499    push       ecx
 0057C49A    mov        ebx,eax
 0057C49C    cmp        word ptr [ebx+0AA],0
>0057C4A4    je         0057C4B8
 0057C4A6    mov        ecx,esp
 0057C4A8    mov        edx,ebx
 0057C4AA    mov        eax,dword ptr [ebx+0AC]
 0057C4B0    call       dword ptr [ebx+0A8]
>0057C4B6    jmp        0057C4C2
 0057C4B8    mov        eax,ebx
 0057C4BA    mov        edx,dword ptr [eax]
 0057C4BC    call       dword ptr [edx+38]
 0057C4BF    mov        byte ptr [esp],al
 0057C4C2    mov        al,byte ptr [esp]
 0057C4C5    pop        edx
 0057C4C6    pop        ebx
 0057C4C7    ret
*}
//end;

//0057C4C8
//procedure sub_0057C4C8(?:?);
//begin
{*
 0057C4C8    push       ebx
 0057C4C9    push       esi
 0057C4CA    push       edi
 0057C4CB    mov        ebx,eax
 0057C4CD    mov        eax,ebx
 0057C4CF    call       0057C30C
 0057C4D4    mov        eax,ebx
 0057C4D6    call       0057C498
 0057C4DB    test       al,al
>0057C4DD    je         0057C4ED
 0057C4DF    mov        dl,1
 0057C4E1    mov        eax,ebx
 0057C4E3    call       0057B24C
>0057C4E8    jmp        0057C58F
 0057C4ED    xor        edx,edx
 0057C4EF    mov        eax,ebx
 0057C4F1    call       0057B24C
 0057C4F6    xor        eax,eax
 0057C4F8    mov        dword ptr [ebx+70],eax
 0057C4FB    xor        eax,eax
 0057C4FD    mov        dword ptr [ebx+74],eax
 0057C500    xor        edx,edx
 0057C502    mov        eax,ebx
 0057C504    call       0057B224
 0057C509    mov        eax,dword ptr [ebx+50]
 0057C50C    mov        dword ptr [ebx+54],eax
 0057C50F    mov        eax,dword ptr [ebx+6C]
 0057C512    mov        edi,dword ptr [eax+8]
 0057C515    dec        edi
 0057C516    test       edi,edi
>0057C518    jl         0057C543
 0057C51A    inc        edi
 0057C51B    xor        esi,esi
 0057C51D    mov        edx,esi
 0057C51F    mov        eax,dword ptr [ebx+6C]
 0057C522    call       TList.Get
 0057C527    cmp        byte ptr [eax+0C],0
>0057C52B    je         0057C53F
 0057C52D    xor        edx,edx
 0057C52F    mov        eax,ebx
 0057C531    call       0057B224
 0057C536    xor        edx,edx
 0057C538    mov        eax,ebx
 0057C53A    call       0057B224
 0057C53F    inc        esi
 0057C540    dec        edi
<0057C541    jne        0057C51D
 0057C543    mov        byte ptr [ebx+8D],1
 0057C54A    cmp        word ptr [ebx+0BA],0
>0057C552    je         0057C564
 0057C554    mov        edx,ebx
 0057C556    mov        eax,dword ptr [ebx+0BC]
 0057C55C    call       dword ptr [ebx+0B8]
>0057C562    jmp        0057C56B
 0057C564    mov        eax,ebx
 0057C566    mov        edx,dword ptr [eax]
 0057C568    call       dword ptr [edx+40]
 0057C56B    mov        esi,dword ptr [ebx+50]
 0057C56E    mov        eax,dword ptr [ebx+54]
 0057C571    sub        esi,eax
 0057C573    sub        eax,4
 0057C576    mov        dword ptr [ebx+50],eax
 0057C579    mov        edx,esi
 0057C57B    mov        eax,ebx
 0057C57D    call       0057B224
 0057C582    add        esi,dword ptr [ebx+54]
 0057C585    mov        dword ptr [ebx+50],esi
 0057C588    mov        eax,ebx
 0057C58A    call       0057C344
 0057C58F    pop        edi
 0057C590    pop        esi
 0057C591    pop        ebx
 0057C592    ret
*}
//end;

//0057C594
//procedure sub_0057C594(?:?);
//begin
{*
 0057C594    push       ebx
 0057C595    push       esi
 0057C596    push       edi
 0057C597    push       ebp
 0057C598    push       ecx
 0057C599    mov        ebx,eax
 0057C59B    mov        eax,ebx
 0057C59D    call       0057C30C
 0057C5A2    mov        eax,ebx
 0057C5A4    call       0057B2CC
 0057C5A9    xor        edx,edx
 0057C5AB    mov        eax,ebx
 0057C5AD    call       0057B224
 0057C5B2    cmp        word ptr [ebx+0B2],0
>0057C5BA    je         0057C5CC
 0057C5BC    mov        edx,ebx
 0057C5BE    mov        eax,dword ptr [ebx+0B4]
 0057C5C4    call       dword ptr [ebx+0B0]
>0057C5CA    jmp        0057C5D3
 0057C5CC    mov        eax,ebx
 0057C5CE    mov        edx,dword ptr [eax]
 0057C5D0    call       dword ptr [edx+3C]
 0057C5D3    mov        eax,dword ptr [ebx+50]
 0057C5D6    mov        dword ptr [esp],eax
 0057C5D9    mov        eax,ebx
 0057C5DB    call       0057C30C
 0057C5E0    xor        ebp,ebp
 0057C5E2    mov        eax,dword ptr [ebx+6C]
 0057C5E5    mov        esi,dword ptr [eax+8]
 0057C5E8    dec        esi
 0057C5E9    test       esi,esi
>0057C5EB    jl         0057C605
 0057C5ED    inc        esi
 0057C5EE    xor        edi,edi
 0057C5F0    mov        edx,edi
 0057C5F2    mov        eax,dword ptr [ebx+6C]
 0057C5F5    call       TList.Get
 0057C5FA    cmp        byte ptr [eax+0C],0
>0057C5FE    je         0057C601
 0057C600    inc        ebp
 0057C601    inc        edi
 0057C602    dec        esi
<0057C603    jne        0057C5F0
 0057C605    mov        edx,ebp
 0057C607    mov        eax,ebx
 0057C609    call       0057B224
 0057C60E    mov        eax,dword ptr [esp]
 0057C611    mov        dword ptr [ebx+50],eax
 0057C614    mov        eax,ebx
 0057C616    call       0057C344
 0057C61B    pop        edx
 0057C61C    pop        ebp
 0057C61D    pop        edi
 0057C61E    pop        esi
 0057C61F    pop        ebx
 0057C620    ret
*}
//end;

//0057C624
//procedure sub_0057C624(?:?);
//begin
{*
 0057C624    push       ebp
 0057C625    mov        ebp,esp
 0057C627    push       0
 0057C629    push       0
 0057C62B    push       0
 0057C62D    push       ebx
 0057C62E    mov        ebx,eax
 0057C630    xor        eax,eax
 0057C632    push       ebp
 0057C633    push       57C6A8
 0057C638    push       dword ptr fs:[eax]
 0057C63B    mov        dword ptr fs:[eax],esp
 0057C63E    mov        eax,ebx
 0057C640    call       0057B30C
 0057C645    cmp        byte ptr [ebx+8C],0
>0057C64C    je         0057C665
 0057C64E    lea        eax,[ebp-0C]
 0057C651    push       eax
 0057C652    lea        ecx,[ebp-8]
 0057C655    lea        edx,[ebp-4]
 0057C658    mov        eax,ebx
 0057C65A    call       0057C14C
 0057C65F    test       al,al
<0057C661    jne        0057C64E
>0057C663    jmp        0057C686
 0057C665    cmp        word ptr [ebx+0C2],0
>0057C66D    je         0057C67F
 0057C66F    mov        edx,ebx
 0057C671    mov        eax,dword ptr [ebx+0C4]
 0057C677    call       dword ptr [ebx+0C0]
>0057C67D    jmp        0057C686
 0057C67F    mov        eax,ebx
 0057C681    mov        edx,dword ptr [eax]
 0057C683    call       dword ptr [edx+44]
 0057C686    mov        eax,ebx
 0057C688    call       0057C370
 0057C68D    xor        eax,eax
 0057C68F    pop        edx
 0057C690    pop        ecx
 0057C691    pop        ecx
 0057C692    mov        dword ptr fs:[eax],edx
 0057C695    push       57C6AF
 0057C69A    lea        eax,[ebp-0C]
 0057C69D    mov        edx,3
 0057C6A2    call       @LStrArrayClr
 0057C6A7    ret
<0057C6A8    jmp        @HandleFinally
<0057C6AD    jmp        0057C69A
 0057C6AF    pop        ebx
 0057C6B0    mov        esp,ebp
 0057C6B2    pop        ebp
 0057C6B3    ret
*}
//end;

//0057C6B4
//procedure sub_0057C6B4(?:?);
//begin
{*
 0057C6B4    push       ebx
 0057C6B5    mov        ebx,eax
 0057C6B7    mov        eax,ebx
 0057C6B9    call       0057C30C
 0057C6BE    cmp        word ptr [ebx+0CA],0
>0057C6C6    je         0057C6D8
 0057C6C8    mov        edx,ebx
 0057C6CA    mov        eax,dword ptr [ebx+0CC]
 0057C6D0    call       dword ptr [ebx+0C8]
>0057C6D6    jmp        0057C6DF
 0057C6D8    mov        eax,ebx
 0057C6DA    mov        edx,dword ptr [eax]
 0057C6DC    call       dword ptr [edx+48]
 0057C6DF    mov        eax,ebx
 0057C6E1    call       0057C344
 0057C6E6    pop        ebx
 0057C6E7    ret
*}
//end;

//0057C6E8
//procedure sub_0057C6E8(?:?);
//begin
{*
 0057C6E8    push       ebx
 0057C6E9    mov        ebx,eax
 0057C6EB    cmp        word ptr [ebx+0D2],0
>0057C6F3    je         0057C705
 0057C6F5    mov        edx,ebx
 0057C6F7    mov        eax,dword ptr [ebx+0D4]
 0057C6FD    call       dword ptr [ebx+0D0]
>0057C703    jmp        0057C70C
 0057C705    mov        eax,ebx
 0057C707    mov        edx,dword ptr [eax]
 0057C709    call       dword ptr [edx+4C]
 0057C70C    mov        eax,ebx
 0057C70E    call       0057C370
 0057C713    pop        ebx
 0057C714    ret
*}
//end;

//0057C718
//procedure sub_0057C718(?:?);
//begin
{*
 0057C718    push       ebx
 0057C719    mov        ebx,eax
 0057C71B    mov        eax,ebx
 0057C71D    call       0057C30C
 0057C722    cmp        word ptr [ebx+0DA],0
>0057C72A    je         0057C73C
 0057C72C    mov        edx,ebx
 0057C72E    mov        eax,dword ptr [ebx+0DC]
 0057C734    call       dword ptr [ebx+0D8]
>0057C73A    jmp        0057C743
 0057C73C    mov        eax,ebx
 0057C73E    mov        edx,dword ptr [eax]
 0057C740    call       dword ptr [edx+50]
 0057C743    mov        eax,ebx
 0057C745    call       0057C370
 0057C74A    pop        ebx
 0057C74B    ret
*}
//end;

//0057C74C
//procedure sub_0057C74C(?:?);
//begin
{*
 0057C74C    push       ebx
 0057C74D    mov        ebx,eax
 0057C74F    mov        eax,ebx
 0057C751    call       0057C30C
 0057C756    cmp        word ptr [ebx+0E2],0
>0057C75E    je         0057C770
 0057C760    mov        edx,ebx
 0057C762    mov        eax,dword ptr [ebx+0E4]
 0057C768    call       dword ptr [ebx+0E0]
>0057C76E    jmp        0057C777
 0057C770    mov        eax,ebx
 0057C772    mov        edx,dword ptr [eax]
 0057C774    call       dword ptr [edx+54]
 0057C777    mov        eax,ebx
 0057C779    call       0057C370
 0057C77E    pop        ebx
 0057C77F    ret
*}
//end;

//0057C780
//function sub_0057C780(?:?):?;
//begin
{*
 0057C780    push       ebx
 0057C781    push       ecx
 0057C782    mov        ebx,eax
 0057C784    cmp        byte ptr [ebx+8C],0
>0057C78B    je         0057C798
 0057C78D    mov        al,byte ptr [ebx+8D]
 0057C793    mov        byte ptr [esp],al
>0057C796    jmp        0057C79C
 0057C798    mov        byte ptr [esp],1
 0057C79C    cmp        byte ptr [esp],0
>0057C7A0    je         0057C7C8
 0057C7A2    cmp        word ptr [ebx+0EA],0
>0057C7AA    je         0057C7BE
 0057C7AC    mov        ecx,esp
 0057C7AE    mov        edx,ebx
 0057C7B0    mov        eax,dword ptr [ebx+0EC]
 0057C7B6    call       dword ptr [ebx+0E8]
>0057C7BC    jmp        0057C7C8
 0057C7BE    mov        eax,ebx
 0057C7C0    mov        edx,dword ptr [eax]
 0057C7C2    call       dword ptr [edx+58]
 0057C7C5    mov        byte ptr [esp],al
 0057C7C8    mov        al,byte ptr [esp]
 0057C7CB    pop        edx
 0057C7CC    pop        ebx
 0057C7CD    ret
*}
//end;

//0057C7D0
procedure sub_0057C7D0;
begin
{*
 0057C7D0    xor        edx,edx
 0057C7D2    mov        dword ptr [eax+78],edx; TRvCustomConnection.?f78:dword
 0057C7D5    ret
*}
end;

//0057C7D8
procedure sub_0057C7D8;
begin
{*
 0057C7D8    inc        dword ptr [eax+78]; TRvCustomConnection.?f78:dword
 0057C7DB    ret
*}
end;

//0057C7DC
function sub_0057C7DC:Boolean;
begin
{*
 0057C7DC    mov        edx,dword ptr [eax+78]; TRvCustomConnection.?f78:dword
 0057C7DF    cmp        edx,dword ptr [eax+7C]; TRvCustomConnection.?f7C:dword
 0057C7E2    setge      al
 0057C7E5    ret
*}
end;

//0057C7E8
procedure sub_0057C7E8;
begin
{*
 0057C7E8    push       ebp
 0057C7E9    mov        ebp,esp
 0057C7EB    push       0
 0057C7ED    push       0
 0057C7EF    push       ebx
 0057C7F0    push       esi
 0057C7F1    mov        ebx,eax
 0057C7F3    xor        eax,eax
 0057C7F5    push       ebp
 0057C7F6    push       57C852
 0057C7FB    push       dword ptr fs:[eax]
 0057C7FE    mov        dword ptr fs:[eax],esp
 0057C801    push       57C868; '['
 0057C806    mov        esi,dword ptr ds:[61B830]
 0057C80C    mov        esi,dword ptr [esi]
 0057C80E    lea        edx,[ebp-8]
 0057C811    mov        eax,57C874; 'Inactive at design-time'
 0057C816    call       esi
 0057C818    push       dword ptr [ebp-8]
 0057C81B    push       57C894; ']'
 0057C820    lea        eax,[ebp-4]
 0057C823    mov        edx,3
 0057C828    call       @LStrCatN
 0057C82D    mov        edx,dword ptr [ebp-4]
 0057C830    mov        eax,ebx
 0057C832    call       0057B1B4
 0057C837    xor        eax,eax
 0057C839    pop        edx
 0057C83A    pop        ecx
 0057C83B    pop        ecx
 0057C83C    mov        dword ptr fs:[eax],edx
 0057C83F    push       57C859
 0057C844    lea        eax,[ebp-8]
 0057C847    mov        edx,2
 0057C84C    call       @LStrArrayClr
 0057C851    ret
<0057C852    jmp        @HandleFinally
<0057C857    jmp        0057C844
 0057C859    pop        esi
 0057C85A    pop        ebx
 0057C85B    pop        ecx
 0057C85C    pop        ecx
 0057C85D    pop        ebp
 0057C85E    ret
*}
end;

//0057C898
procedure sub_0057C898();
begin
{*
 0057C898    push       1E
 0057C89A    push       57C8B8; 'FieldName'
 0057C89F    push       0
 0057C8A1    xor        ecx,ecx
 0057C8A3    mov        edx,57C8B8; 'FieldName'
 0057C8A8    call       0057B4F0
 0057C8AD    ret
*}
end;

//0057C8C4
procedure sub_0057C8C4();
begin
{*
 0057C8C4    ret
*}
end;

//0057C8C8
procedure sub_0057C8C8();
begin
{*
 0057C8C8    xor        edx,edx
 0057C8CA    call       0057B1B4
 0057C8CF    ret
*}
end;

//0057C8D0
procedure sub_0057C8D0();
begin
{*
 0057C8D0    ret
*}
end;

//0057C8D4
procedure sub_0057C8D4;
begin
{*
 0057C8D4    mov        dword ptr [eax+7C],1; TRvCustomConnection.?f7C:dword
 0057C8DB    xor        edx,edx
 0057C8DD    mov        dword ptr [eax+78],edx; TRvCustomConnection.?f78:dword
 0057C8E0    ret
*}
end;

//0057C8E4
procedure sub_0057C8E4();
begin
{*
 0057C8E4    ret
*}
end;

//0057C8E8
//function sub_0057C8E8():?;
//begin
{*
 0057C8E8    mov        al,1
 0057C8EA    ret
*}
//end;

Initialization
//0057C928
{*
 0057C928    sub        dword ptr ds:[61EFB4],1
>0057C92F    jae        0057C942
 0057C931    mov        dl,1
 0057C933    mov        eax,[00579F44]; TDataConnectManager
 0057C938    call       TDataConnectManager.Create; TDataConnectManager.Create
 0057C93D    mov        [0061EFB0],eax; gvar_0061EFB0:TDataConnectManager
 0057C942    ret
*}
Finalization
//0057C8EC
{*
 0057C8EC    push       ebp
 0057C8ED    mov        ebp,esp
 0057C8EF    xor        eax,eax
 0057C8F1    push       ebp
 0057C8F2    push       57C91D
 0057C8F7    push       dword ptr fs:[eax]
 0057C8FA    mov        dword ptr fs:[eax],esp
 0057C8FD    inc        dword ptr ds:[61EFB4]
>0057C903    jne        0057C90F
 0057C905    mov        eax,61EFB0; gvar_0061EFB0:TDataConnectManager
 0057C90A    call       FreeAndNil
 0057C90F    xor        eax,eax
 0057C911    pop        edx
 0057C912    pop        ecx
 0057C913    pop        ecx
 0057C914    mov        dword ptr fs:[eax],edx
 0057C917    push       57C924
 0057C91C    ret
<0057C91D    jmp        @HandleFinally
<0057C922    jmp        0057C91C
 0057C924    pop        ebp
 0057C925    ret
*}
end.