{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpRave;

interface

uses
  Classes, Windows, Graphics, RpDefine, RvProj, RvClass;

type
  TRvProject = class(TRpComponent)
  public
    f34:byte;//f34
    f38:String;//f38
    Engine:TRpComponent;//f3C
    f40:String;//f40
    LoadDesigner:Boolean;//f44
    StoreRAV:Boolean;//f45
    f48:dword;//f48
    f50:?Double;//f50
    f54:dword;//f54
    f58:TRaveProjectManager;//f58
    f5C:TRaveContainerControl;//f5C
    OnCreate:TNotifyEvent;//f60
    f62:word;//f62
    f64:dword;//f64
    OnDestroy:TNotifyEvent;//f68
    f6A:word;//f6A
    f6C:dword;//f6C
    OnDesignerSave:TNotifyEvent;//f70
    OnDesignerSaveAs:TNotifyEvent;//f78
    OnDesignerShow:TNotifyEvent;//f90
    f92:word;//f92
    f94:dword;//f94
    OnBeforeOpen:TNotifyEvent;//f98
    f9A:word;//f9A
    f9C:dword;//f9C
    OnAfterOpen:TNotifyEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    OnBeforeClose:TNotifyEvent;//fA8
    fAA:word;//fAA
    fAC:dword;//fAC
    OnAfterClose:TNotifyEvent;//fB0
    fB2:word;//fB2
    fB4:dword;//fB4
    destructor Destroy; virtual;
    procedure DefineProperties(Filer:TFiler); virtual;
    procedure Loaded; virtual;
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_005D7F38; virtual;
    procedure sub_005D7F4C; virtual;
    procedure sub_005D7F60; virtual;
    procedure sub_005D7F80; virtual;
    procedure sub_005D7FA0; virtual;
    procedure sub_005D7FC0; virtual;
    procedure sub_005D7FE0; virtual;
  end;

implementation

{$R *.DFM}

//005D7E1C
constructor TRvProject.Create(AOwner:TComponent);
begin
{*
 005D7E1C    push       ebp
 005D7E1D    mov        ebp,esp
 005D7E1F    push       ecx
 005D7E20    push       ebx
 005D7E21    push       esi
 005D7E22    push       edi
 005D7E23    test       dl,dl
>005D7E25    je         005D7E2F
 005D7E27    add        esp,0FFFFFFF0
 005D7E2A    call       @ClassCreate
 005D7E2F    mov        byte ptr [ebp-1],dl
 005D7E32    mov        esi,eax
 005D7E34    xor        edx,edx
 005D7E36    mov        eax,esi
 005D7E38    call       TRpComponent.Create
 005D7E3D    xor        ecx,ecx
 005D7E3F    mov        dl,1
 005D7E41    mov        eax,[005A6D38]; TRaveContainerControl
 005D7E46    call       TRaveContainerControl.Create; TRaveContainerControl.Create
 005D7E4B    mov        ebx,eax
 005D7E4D    mov        dword ptr [esi+5C],ebx; TRvProject.?f5C:TRaveContainerControl
 005D7E50    mov        ecx,ebx
 005D7E52    mov        dl,1
 005D7E54    mov        eax,[005A1434]; TRaveProjectManager
 005D7E59    call       TRaveProjectManager.Create; TRaveProjectManager.Create
 005D7E5E    mov        edi,eax
 005D7E60    mov        dword ptr [esi+58],edi; TRvProject.?f58:TRaveProjectManager
 005D7E63    mov        eax,edi
 005D7E65    mov        edx,5D7ED8; 'RaveProject'
 005D7E6A    mov        ecx,dword ptr [eax]
 005D7E6C    call       dword ptr [ecx+18]; TRaveProjectItem.SetName
 005D7E6F    test       byte ptr [esi+1C],10; TRvProject.FComponentState:TComponentState
>005D7E73    jne        005D7EB1
 005D7E75    mov        eax,[0061C430]
 005D7E7A    cmp        byte ptr [eax],0
>005D7E7D    jne        005D7EB1
 005D7E7F    mov        eax,[0061B838]; ^gvar_00617148:TRaveDataSystem
 005D7E84    cmp        dword ptr [eax],0
>005D7E87    jne        005D7E9D
 005D7E89    mov        dl,1
 005D7E8B    mov        eax,[0059ACA4]; TRaveDataSystem
 005D7E90    call       TRaveDataSystem.Create; TRaveDataSystem.Create
 005D7E95    mov        edx,dword ptr ds:[61B838]; ^gvar_00617148:TRaveDataSystem
 005D7E9B    mov        dword ptr [edx],eax
 005D7E9D    mov        eax,dword ptr [esi]
 005D7E9F    call       005D854C
 005D7EA4    call       005BFC0C
 005D7EA9    mov        eax,[0061C430]
 005D7EAE    mov        byte ptr [eax],1
 005D7EB1    mov        eax,esi
 005D7EB3    cmp        byte ptr [ebp-1],0
>005D7EB7    je         005D7EC8
 005D7EB9    call       @AfterConstruction
 005D7EBE    pop        dword ptr fs:[0]
 005D7EC5    add        esp,0C
 005D7EC8    mov        eax,esi
 005D7ECA    pop        edi
 005D7ECB    pop        esi
 005D7ECC    pop        ebx
 005D7ECD    pop        ecx
 005D7ECE    pop        ebp
 005D7ECF    ret
*}
end;

//005D7EE4
destructor TRvProject.Destroy;
begin
{*
 005D7EE4    push       ebx
 005D7EE5    push       esi
 005D7EE6    call       @BeforeDestruction
 005D7EEB    mov        ebx,edx
 005D7EED    mov        esi,eax
 005D7EEF    mov        eax,esi
 005D7EF1    call       005D8454
 005D7EF6    mov        eax,esi
 005D7EF8    mov        edx,dword ptr [eax]
 005D7EFA    call       dword ptr [edx+34]; TRvProject.sub_005D7F4C
 005D7EFD    mov        eax,esi
 005D7EFF    call       005D8114
 005D7F04    lea        eax,[esi+58]; TRvProject.?f58:TRaveProjectManager
 005D7F07    call       FreeAndNil
 005D7F0C    lea        eax,[esi+5C]; TRvProject.?f5C:TRaveContainerControl
 005D7F0F    call       FreeAndNil
 005D7F14    mov        edx,ebx
 005D7F16    and        dl,0FC
 005D7F19    mov        eax,esi
 005D7F1B    call       TComponent.Destroy
 005D7F20    test       bl,bl
>005D7F22    jle        005D7F2B
 005D7F24    mov        eax,esi
 005D7F26    call       @ClassDestroy
 005D7F2B    pop        esi
 005D7F2C    pop        ebx
 005D7F2D    ret
*}
end;

//005D7F30
procedure TRvProject.Loaded;
begin
{*
 005D7F30    mov        edx,dword ptr [eax]
 005D7F32    call       dword ptr [edx+30]; TRvProject.sub_005D7F38
 005D7F35    ret
*}
end;

//005D7F38
procedure sub_005D7F38;
begin
{*
 005D7F38    push       ebx
 005D7F39    cmp        word ptr [eax+62],0; TRvProject.?f62:word
>005D7F3E    je         005D7F4A
 005D7F40    mov        ebx,eax
 005D7F42    mov        edx,eax
 005D7F44    mov        eax,dword ptr [ebx+64]; TRvProject.?f64:dword
 005D7F47    call       dword ptr [ebx+60]; TRvProject.OnCreate
 005D7F4A    pop        ebx
 005D7F4B    ret
*}
end;

//005D7F4C
procedure sub_005D7F4C;
begin
{*
 005D7F4C    push       ebx
 005D7F4D    cmp        word ptr [eax+6A],0; TRvProject.?f6A:word
>005D7F52    je         005D7F5E
 005D7F54    mov        ebx,eax
 005D7F56    mov        edx,eax
 005D7F58    mov        eax,dword ptr [ebx+6C]; TRvProject.?f6C:dword
 005D7F5B    call       dword ptr [ebx+68]; TRvProject.OnDestroy
 005D7F5E    pop        ebx
 005D7F5F    ret
*}
end;

//005D7F60
procedure sub_005D7F60;
begin
{*
 005D7F60    push       ebx
 005D7F61    cmp        word ptr [eax+92],0; TRvProject.?f92:word
>005D7F69    je         005D7F7B
 005D7F6B    mov        ebx,eax
 005D7F6D    mov        edx,eax
 005D7F6F    mov        eax,dword ptr [ebx+94]; TRvProject.?f94:dword
 005D7F75    call       dword ptr [ebx+90]; TRvProject.OnDesignerShow
 005D7F7B    pop        ebx
 005D7F7C    ret
*}
end;

//005D7F80
procedure sub_005D7F80;
begin
{*
 005D7F80    push       ebx
 005D7F81    cmp        word ptr [eax+9A],0; TRvProject.?f9A:word
>005D7F89    je         005D7F9B
 005D7F8B    mov        ebx,eax
 005D7F8D    mov        edx,eax
 005D7F8F    mov        eax,dword ptr [ebx+9C]; TRvProject.?f9C:dword
 005D7F95    call       dword ptr [ebx+98]; TRvProject.OnBeforeOpen
 005D7F9B    pop        ebx
 005D7F9C    ret
*}
end;

//005D7FA0
procedure sub_005D7FA0;
begin
{*
 005D7FA0    push       ebx
 005D7FA1    cmp        word ptr [eax+0A2],0; TRvProject.?fA2:word
>005D7FA9    je         005D7FBB
 005D7FAB    mov        ebx,eax
 005D7FAD    mov        edx,eax
 005D7FAF    mov        eax,dword ptr [ebx+0A4]; TRvProject.?fA4:dword
 005D7FB5    call       dword ptr [ebx+0A0]; TRvProject.OnAfterOpen
 005D7FBB    pop        ebx
 005D7FBC    ret
*}
end;

//005D7FC0
procedure sub_005D7FC0;
begin
{*
 005D7FC0    push       ebx
 005D7FC1    cmp        word ptr [eax+0AA],0; TRvProject.?fAA:word
>005D7FC9    je         005D7FDB
 005D7FCB    mov        ebx,eax
 005D7FCD    mov        edx,eax
 005D7FCF    mov        eax,dword ptr [ebx+0AC]; TRvProject.?fAC:dword
 005D7FD5    call       dword ptr [ebx+0A8]; TRvProject.OnBeforeClose
 005D7FDB    pop        ebx
 005D7FDC    ret
*}
end;

//005D7FE0
procedure sub_005D7FE0;
begin
{*
 005D7FE0    push       ebx
 005D7FE1    cmp        word ptr [eax+0B2],0; TRvProject.?fB2:word
>005D7FE9    je         005D7FFB
 005D7FEB    mov        ebx,eax
 005D7FED    mov        edx,eax
 005D7FEF    mov        eax,dword ptr [ebx+0B4]; TRvProject.?fB4:dword
 005D7FF5    call       dword ptr [ebx+0B0]; TRvProject.OnAfterClose
 005D7FFB    pop        ebx
 005D7FFC    ret
*}
end;

//005D8000
procedure TRvProject.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005D8000    push       ebx
 005D8001    push       esi
 005D8002    push       edi
 005D8003    mov        ebx,ecx
 005D8005    mov        esi,edx
 005D8007    mov        edi,eax
 005D8009    mov        ecx,ebx
 005D800B    mov        edx,esi
 005D800D    mov        eax,edi
 005D800F    call       TComponent.Notification
 005D8014    cmp        bl,1
>005D8017    jne        005D8023
 005D8019    cmp        esi,dword ptr [edi+3C]; TRvProject.Engine:TRpComponent
>005D801C    jne        005D8023
 005D801E    xor        eax,eax
 005D8020    mov        dword ptr [edi+3C],eax; TRvProject.Engine:TRpComponent
 005D8023    pop        edi
 005D8024    pop        esi
 005D8025    pop        ebx
 005D8026    ret
*}
end;

//005D8028
//procedure TRvProject.SetEngine(Self:TRvProject; ?:?);
//begin
{*
 005D8028    mov        dword ptr [eax+3C],edx; TRvProject.Engine:TRpComponent
 005D802B    test       edx,edx
>005D802D    je         005D8035
 005D802F    xchg       eax,edx
 005D8030    call       TComponent.FreeNotification
 005D8035    ret
*}
//end;

//005D8038
//procedure sub_005D8038(?:?; ?:?);
//begin
{*
 005D8038    push       ebx
 005D8039    push       esi
 005D803A    push       edi
 005D803B    mov        esi,edx
 005D803D    mov        ebx,eax
 005D803F    cmp        dword ptr [ebx+48],0
>005D8043    jne        005D8054
 005D8045    mov        dl,1
 005D8047    mov        eax,[0041CBF8]; TMemoryStream
 005D804C    call       TObject.Create; TMemoryStream.Create
 005D8051    mov        dword ptr [ebx+48],eax
 005D8054    mov        eax,esi
 005D8056    call       TReader.ReadInteger
 005D805B    mov        edi,eax
 005D805D    mov        eax,esi
 005D805F    call       TReader.ReadFloat
 005D8064    fstp       qword ptr [ebx+50]
 005D8067    wait
 005D8068    mov        edx,edi
 005D806A    mov        eax,dword ptr [ebx+48]
 005D806D    mov        ecx,dword ptr [eax]
 005D806F    call       dword ptr [ecx+4]
 005D8072    mov        eax,dword ptr [ebx+48]
 005D8075    mov        edx,dword ptr [eax+4]
 005D8078    mov        ecx,edi
 005D807A    mov        eax,esi
 005D807C    call       TReader.Read
 005D8081    pop        edi
 005D8082    pop        esi
 005D8083    pop        ebx
 005D8084    ret
*}
//end;

//005D8088
//procedure sub_005D8088(?:?; ?:?);
//begin
{*
 005D8088    push       ebx
 005D8089    push       esi
 005D808A    push       edi
 005D808B    mov        esi,edx
 005D808D    mov        ebx,eax
 005D808F    mov        eax,dword ptr [ebx+48]
 005D8092    mov        edx,dword ptr [eax]
 005D8094    call       dword ptr [edx]
 005D8096    push       edx
 005D8097    push       eax
 005D8098    mov        eax,esi
 005D809A    call       TWriter.WriteInteger
 005D809F    fld        qword ptr [ebx+50]
 005D80A2    add        esp,0FFFFFFF4
 005D80A5    fstp       tbyte ptr [esp]
 005D80A8    wait
 005D80A9    mov        eax,esi
 005D80AB    call       TWriter.WriteFloat
 005D80B0    mov        edi,dword ptr [ebx+48]
 005D80B3    mov        eax,edi
 005D80B5    mov        edx,dword ptr [eax]
 005D80B7    call       dword ptr [edx]
 005D80B9    mov        ecx,eax
 005D80BB    mov        edx,dword ptr [edi+4]
 005D80BE    mov        eax,esi
 005D80C0    call       TWriter.Write
 005D80C5    pop        edi
 005D80C6    pop        esi
 005D80C7    pop        ebx
 005D80C8    ret
*}
//end;

//005D80CC
procedure TRvProject.DefineProperties(Filer:TFiler);
begin
{*
 005D80CC    push       ebx
 005D80CD    push       esi
 005D80CE    mov        esi,edx
 005D80D0    mov        ebx,eax
 005D80D2    mov        edx,esi
 005D80D4    mov        eax,ebx
 005D80D6    call       TComponent.DefineProperties
 005D80DB    push       ebx
 005D80DC    push       5D8038; sub_005D8038
 005D80E1    push       ebx
 005D80E2    push       5D8088; sub_005D8088
 005D80E7    cmp        dword ptr [ebx+48],0; TRvProject.?f48:dword
 005D80EB    setne      cl
 005D80EE    mov        edx,5D8108; 'RaveBlob'
 005D80F3    mov        eax,esi
 005D80F5    mov        ebx,dword ptr [eax]
 005D80F7    call       dword ptr [ebx+4]; TFiler.DefineProperty
 005D80FA    pop        esi
 005D80FB    pop        ebx
 005D80FC    ret
*}
end;

//005D8114
//procedure sub_005D8114(?:TRvProject);
//begin
{*
 005D8114    push       ebx
 005D8115    mov        ebx,eax
 005D8117    mov        eax,dword ptr [ebx+48]; TRvProject.?f48:dword
 005D811A    test       eax,eax
>005D811C    je         005D8130
 005D811E    call       TObject.Free
 005D8123    xor        eax,eax
 005D8125    mov        dword ptr [ebx+48],eax; TRvProject.?f48:dword
 005D8128    xor        eax,eax
 005D812A    mov        dword ptr [ebx+50],eax; TRvProject.?f50:?Double
 005D812D    mov        dword ptr [ebx+54],eax; TRvProject.?f54:dword
 005D8130    pop        ebx
 005D8131    ret
*}
//end;

//005D8134
//procedure TRvProject.SetProjectFile(Self:TRvProject; ?:AnsiString);
//begin
{*
 005D8134    push       ebp
 005D8135    mov        ebp,esp
 005D8137    push       ecx
 005D8138    push       ebx
 005D8139    mov        dword ptr [ebp-4],edx
 005D813C    mov        ebx,eax
 005D813E    mov        eax,dword ptr [ebp-4]
 005D8141    call       @LStrAddRef
 005D8146    xor        eax,eax
 005D8148    push       ebp
 005D8149    push       5D819E
 005D814E    push       dword ptr fs:[eax]
 005D8151    mov        dword ptr fs:[eax],esp
 005D8154    mov        edx,dword ptr [ebp-4]
 005D8157    mov        eax,5D81B4; '.'
 005D815C    call       @LStrPos
 005D8161    test       eax,eax
>005D8163    jne        005D817D
 005D8165    cmp        dword ptr [ebp-4],0
>005D8169    je         005D817D
 005D816B    lea        eax,[ebx+38]; TRvProject.?f38:String
 005D816E    mov        ecx,5D81C0; '.rav'
 005D8173    mov        edx,dword ptr [ebp-4]
 005D8176    call       @LStrCat3
>005D817B    jmp        005D8188
 005D817D    lea        eax,[ebx+38]; TRvProject.?f38:String
 005D8180    mov        edx,dword ptr [ebp-4]
 005D8183    call       @LStrAsg
 005D8188    xor        eax,eax
 005D818A    pop        edx
 005D818B    pop        ecx
 005D818C    pop        ecx
 005D818D    mov        dword ptr fs:[eax],edx
 005D8190    push       5D81A5
 005D8195    lea        eax,[ebp-4]
 005D8198    call       @LStrClr
 005D819D    ret
<005D819E    jmp        @HandleFinally
<005D81A3    jmp        005D8195
 005D81A5    pop        ebx
 005D81A6    pop        ecx
 005D81A7    pop        ebp
 005D81A8    ret
*}
//end;

//005D81C8
//function sub_005D81C8(?:TRvProject):?;
//begin
{*
 005D81C8    mov        edx,dword ptr [eax+58]; TRvProject.?f58:TRaveProjectManager
 005D81CB    test       edx,edx
>005D81CD    je         005D81F4
 005D81CF    cmp        dword ptr [edx+94],0; TRaveProjectManager.?f94:TRaveReport
>005D81D6    je         005D81F4
 005D81D8    mov        ecx,dword ptr [edx+94]; TRaveProjectManager.?f94:TRaveReport
 005D81DE    cmp        dword ptr [ecx+0C8],0; TRaveReport.?fC8:dword
>005D81E5    je         005D81F4
 005D81E7    mov        eax,dword ptr [edx+94]; TRaveProjectManager.?f94:TRaveReport
 005D81ED    mov        eax,dword ptr [eax+0C8]; TRaveReport.?fC8:dword
 005D81F3    ret
 005D81F4    mov        eax,edx
 005D81F6    ret
*}
//end;

//005D81F8
//procedure sub_005D81F8(?:TRvProject);
//begin
{*
 005D81F8    push       ebp
 005D81F9    mov        ebp,esp
 005D81FB    xor        ecx,ecx
 005D81FD    push       ecx
 005D81FE    push       ecx
 005D81FF    push       ecx
 005D8200    push       ecx
 005D8201    push       ecx
 005D8202    push       ecx
 005D8203    push       ecx
 005D8204    push       ecx
 005D8205    push       ebx
 005D8206    mov        ebx,eax
 005D8208    xor        eax,eax
 005D820A    push       ebp
 005D820B    push       5D8369
 005D8210    push       dword ptr fs:[eax]
 005D8213    mov        dword ptr fs:[eax],esp
 005D8216    cmp        byte ptr [ebx+34],0; TRvProject.?f34:byte
>005D821A    jne        005D834E
 005D8220    mov        eax,ebx
 005D8222    mov        edx,dword ptr [eax]
 005D8224    call       dword ptr [edx+3C]; TRvProject.sub_005D7F80
 005D8227    mov        eax,ebx
 005D8229    call       005D81C8
 005D822E    mov        eax,dword ptr [ebx+38]; TRvProject.?f38:String
 005D8231    call       FileAge
 005D8236    test       eax,eax
>005D8238    jl         005D8245
 005D823A    call       FileDateToDateTime
 005D823F    fstp       qword ptr [ebp-8]
 005D8242    wait
>005D8243    jmp        005D824D
 005D8245    xor        eax,eax
 005D8247    mov        dword ptr [ebp-8],eax
 005D824A    mov        dword ptr [ebp-4],eax
 005D824D    cmp        dword ptr [ebx+48],0; TRvProject.?f48:dword
 005D8251    setne      dl
 005D8254    xor        dl,1
 005D8257    test       dl,dl
>005D8259    jne        005D82A9
 005D825B    fld        qword ptr [ebp-8]
 005D825E    fcomp      qword ptr [ebx+50]; TRvProject.?f50:?Double
 005D8261    fnstsw     al
 005D8263    sahf
>005D8264    jbe        005D82A9
 005D8266    push       0
 005D8268    push       5D8380; 'The report project stored in the executable is older than the disk file\r\"'
 005D826D    lea        edx,[ebp-10]
 005D8270    mov        eax,dword ptr [ebx+38]; TRvProject.?f38:String
 005D8273    call       ExpandFileName
 005D8278    push       dword ptr [ebp-10]
 005D827B    push       5D83D4; '\"\r'
 005D8280    push       5D83E0; 'Do you want to use the file on disk?'
 005D8285    lea        eax,[ebp-0C]
 005D8288    mov        edx,4
 005D828D    call       @LStrCatN
 005D8292    mov        eax,dword ptr [ebp-0C]
 005D8295    mov        cx,word ptr ds:[5D8408]; 0x3
 005D829C    xor        edx,edx
 005D829E    call       MessageDlg
 005D82A3    cmp        eax,6
 005D82A6    sete       dl
 005D82A9    test       dl,dl
>005D82AB    jne        005D82CA
 005D82AD    push       0
 005D82AF    push       0
 005D82B1    mov        eax,dword ptr [ebx+48]; TRvProject.?f48:dword
 005D82B4    call       TStream.SetPosition
 005D82B9    mov        eax,ebx
 005D82BB    call       005D81C8
 005D82C0    mov        edx,dword ptr [ebx+48]; TRvProject.?f48:dword
 005D82C3    call       005A4634
>005D82C8    jmp        005D8343
 005D82CA    cmp        dword ptr [ebx+38],0; TRvProject.?f38:String
>005D82CE    je         005D8316
 005D82D0    lea        edx,[ebp-14]
 005D82D3    mov        eax,dword ptr [ebx+38]; TRvProject.?f38:String
 005D82D6    call       ExpandFileName
 005D82DB    mov        eax,dword ptr [ebp-14]
 005D82DE    call       FileExists
 005D82E3    test       al,al
>005D82E5    je         005D8316
 005D82E7    mov        eax,ebx
 005D82E9    call       005D81C8
 005D82EE    add        eax,9C
 005D82F3    push       eax
 005D82F4    lea        edx,[ebp-18]
 005D82F7    mov        eax,dword ptr [ebx+38]; TRvProject.?f38:String
 005D82FA    call       ExpandFileName
 005D82FF    mov        edx,dword ptr [ebp-18]
 005D8302    pop        eax
 005D8303    call       @LStrAsg
 005D8308    mov        eax,ebx
 005D830A    call       005D81C8
 005D830F    call       005A4A78
>005D8314    jmp        005D8343
 005D8316    push       5D8414; 'The following reporting project does not exist:\r\"'
 005D831B    lea        edx,[ebp-20]
 005D831E    mov        eax,dword ptr [ebx+38]; TRvProject.?f38:String
 005D8321    call       ExpandFileName
 005D8326    push       dword ptr [ebp-20]
 005D8329    push       5D8450; '\"'
 005D832E    lea        eax,[ebp-1C]
 005D8331    mov        edx,3
 005D8336    call       @LStrCatN
 005D833B    mov        eax,dword ptr [ebp-1C]
 005D833E    call       005998CC
 005D8343    mov        byte ptr [ebx+34],1; TRvProject.?f34:byte
 005D8347    mov        eax,ebx
 005D8349    mov        edx,dword ptr [eax]
 005D834B    call       dword ptr [edx+40]; TRvProject.sub_005D7FA0
 005D834E    xor        eax,eax
 005D8350    pop        edx
 005D8351    pop        ecx
 005D8352    pop        ecx
 005D8353    mov        dword ptr fs:[eax],edx
 005D8356    push       5D8370
 005D835B    lea        eax,[ebp-20]
 005D835E    mov        edx,6
 005D8363    call       @LStrArrayClr
 005D8368    ret
<005D8369    jmp        @HandleFinally
<005D836E    jmp        005D835B
 005D8370    pop        ebx
 005D8371    mov        esp,ebp
 005D8373    pop        ebp
 005D8374    ret
*}
//end;

//005D8454
//procedure sub_005D8454(?:TRvProject);
//begin
{*
 005D8454    push       ebx
 005D8455    mov        ebx,eax
 005D8457    cmp        byte ptr [ebx+34],0; TRvProject.?f34:byte
>005D845B    je         005D8482
 005D845D    mov        eax,ebx
 005D845F    mov        edx,dword ptr [eax]
 005D8461    call       dword ptr [edx+44]; TRvProject.sub_005D7FC0
 005D8464    mov        eax,ebx
 005D8466    call       005D81C8
 005D846B    mov        eax,ebx
 005D846D    call       005D81C8
 005D8472    call       005A4BD8
 005D8477    mov        byte ptr [ebx+34],0; TRvProject.?f34:byte
 005D847B    mov        eax,ebx
 005D847D    mov        edx,dword ptr [eax]
 005D847F    call       dword ptr [edx+48]; TRvProject.sub_005D7FE0
 005D8482    pop        ebx
 005D8483    ret
*}
//end;

//005D8484
//procedure sub_005D8484(?:TRvProject);
//begin
{*
 005D8484    push       esi
 005D8485    mov        esi,eax
 005D8487    mov        eax,esi
 005D8489    call       005D81F8
 005D848E    mov        eax,esi
 005D8490    call       005D81C8
 005D8495    mov        eax,dword ptr [eax+94]
 005D849B    mov        edx,dword ptr [eax]
 005D849D    call       dword ptr [edx+0B4]
 005D84A3    mov        eax,esi
 005D84A5    call       005D81C8
 005D84AA    mov        eax,dword ptr [eax+94]
 005D84B0    mov        edx,dword ptr [esi+3C]; TRvProject.Engine:TRpComponent
 005D84B3    call       005A3098
 005D84B8    mov        eax,esi
 005D84BA    call       005D81C8
 005D84BF    mov        eax,dword ptr [eax+94]
 005D84C5    mov        edx,dword ptr [eax]
 005D84C7    call       dword ptr [edx+0B0]
 005D84CD    pop        esi
 005D84CE    ret
*}
//end;

//005D84D0
//function sub_005D84D0(?:TRvProject; ?:AnsiString; ?:?):?;
//begin
{*
 005D84D0    push       ebp
 005D84D1    mov        ebp,esp
 005D84D3    push       ecx
 005D84D4    push       ebx
 005D84D5    push       esi
 005D84D6    push       edi
 005D84D7    mov        ebx,ecx
 005D84D9    mov        dword ptr [ebp-4],edx
 005D84DC    mov        edi,eax
 005D84DE    mov        eax,dword ptr [ebp-4]
 005D84E1    call       @LStrAddRef
 005D84E6    xor        eax,eax
 005D84E8    push       ebp
 005D84E9    push       5D853B
 005D84EE    push       dword ptr fs:[eax]
 005D84F1    mov        dword ptr fs:[eax],esp
 005D84F4    mov        eax,edi
 005D84F6    call       005D81F8
 005D84FB    mov        eax,edi
 005D84FD    call       005D81C8
 005D8502    mov        ecx,ebx
 005D8504    mov        edx,dword ptr [ebp-4]
 005D8507    call       005A51D4
 005D850C    mov        esi,eax
 005D850E    test       esi,esi
 005D8510    setne      bl
 005D8513    test       bl,bl
>005D8515    je         005D8525
 005D8517    mov        eax,edi
 005D8519    call       005D81C8
 005D851E    mov        edx,esi
 005D8520    call       005A4A2C
 005D8525    xor        eax,eax
 005D8527    pop        edx
 005D8528    pop        ecx
 005D8529    pop        ecx
 005D852A    mov        dword ptr fs:[eax],edx
 005D852D    push       5D8542
 005D8532    lea        eax,[ebp-4]
 005D8535    call       @LStrClr
 005D853A    ret
<005D853B    jmp        @HandleFinally
<005D8540    jmp        005D8532
 005D8542    mov        eax,ebx
 005D8544    pop        edi
 005D8545    pop        esi
 005D8546    pop        ebx
 005D8547    pop        ecx
 005D8548    pop        ebp
 005D8549    ret
*}
//end;

//005D854C
procedure sub_005D854C;
begin
{*
 005D854C    mov        eax,5D8560; '*'
 005D8551    call       005A7E7C
 005D8556    ret
*}
end;

end.