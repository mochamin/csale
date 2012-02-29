{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvDatabase;

interface

uses
  Classes, Windows, Graphics, RvClass;

type
  TLinkInfo = class(TObject)
  public
    f4:Pointer;//f4
    fC:dword;//fC
  end;
  TRaveDBAuth = class(TPersistent)
  public
    f4:String;//f4
    f8:String;//f8
    fC:String;//fC
    f10:String;//f10
    procedure AssignTo(Dest:TPersistent); virtual;
  end;
  TRaveDatabase = class(TRaveDataObject)
  public
    f7C:TRaveDBAuth;//f7C
    AuthDesign:TRaveDBAuth;//f80
    AuthRun:TRaveDBAuth;//f84
    f88:TThreadList;//f88
    f8C:dword;//f8C
    LinkPoolSize:Integer;//f90
    f94:String;//f94
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //function sub_005C14B4():?; virtual;
  end;

implementation

{$R *.DFM}

//005C0EC8
procedure sub_005C0EC8;
begin
{*
 005C0EC8    push       ebp
 005C0EC9    mov        ebp,esp
 005C0ECB    add        esp,0FFFFFFF8
 005C0ECE    push       ebx
 005C0ECF    xor        eax,eax
 005C0ED1    mov        dword ptr [ebp-8],eax
 005C0ED4    xor        eax,eax
 005C0ED6    push       ebp
 005C0ED7    push       5C0F2C
 005C0EDC    push       dword ptr fs:[eax]
 005C0EDF    mov        dword ptr fs:[eax],esp
 005C0EE2    mov        eax,[005C0CB4]; TRaveDatabase
 005C0EE7    mov        dword ptr [ebp-4],eax
 005C0EEA    lea        edx,[ebp-4]
 005C0EED    xor        ecx,ecx
 005C0EEF    xor        eax,eax
 005C0EF1    call       005A7F48
 005C0EF6    mov        ebx,dword ptr ds:[61B830]
 005C0EFC    mov        ebx,dword ptr [ebx]
 005C0EFE    lea        edx,[ebp-8]
 005C0F01    mov        eax,5C0F40; 'Database Connection'
 005C0F06    call       ebx
 005C0F08    mov        eax,dword ptr [ebp-8]
 005C0F0B    mov        edx,dword ptr ds:[5C0CB4]; TRaveDatabase
 005C0F11    call       005A80C0
 005C0F16    xor        eax,eax
 005C0F18    pop        edx
 005C0F19    pop        ecx
 005C0F1A    pop        ecx
 005C0F1B    mov        dword ptr fs:[eax],edx
 005C0F1E    push       5C0F33
 005C0F23    lea        eax,[ebp-8]
 005C0F26    call       @LStrClr
 005C0F2B    ret
<005C0F2C    jmp        @HandleFinally
<005C0F31    jmp        005C0F23
 005C0F33    pop        ebx
 005C0F34    pop        ecx
 005C0F35    pop        ecx
 005C0F36    pop        ebp
 005C0F37    ret
*}
end;

//005C0F54
//function sub_005C0F54(?:TRaveDatabase):?;
//begin
{*
 005C0F54    push       ebx
 005C0F55    push       esi
 005C0F56    mov        esi,eax
 005C0F58    mov        eax,[0061B248]; ^gvar_00617278:TRaveDataLinks
 005C0F5D    cmp        dword ptr [eax],0
>005C0F60    je         005C0FBE
 005C0F62    mov        eax,[0061B248]; ^gvar_00617278:TRaveDataLinks
 005C0F67    mov        eax,dword ptr [eax]
 005C0F69    call       005C0AC0
 005C0F6E    test       eax,eax
>005C0F70    jle        005C0FBE
 005C0F72    mov        edx,dword ptr [esi+94]; TRaveDatabase.?f94:String
 005C0F78    mov        eax,[0061B248]; ^gvar_00617278:TRaveDataLinks
 005C0F7D    mov        eax,dword ptr [eax]
 005C0F7F    call       005C09D4
 005C0F84    mov        ebx,eax
 005C0F86    mov        esi,dword ptr [esi+7C]; TRaveDatabase.?f7C:TRaveDBAuth
 005C0F89    lea        eax,[ebx+0C]
 005C0F8C    mov        edx,dword ptr [esi+4]; TRaveDBAuth.?f4:String
 005C0F8F    call       @LStrAsg
 005C0F94    lea        eax,[ebx+14]
 005C0F97    mov        edx,dword ptr [esi+10]; TRaveDBAuth.?f10:String
 005C0F9A    call       @LStrAsg
 005C0F9F    lea        eax,[ebx+18]
 005C0FA2    mov        edx,dword ptr [esi+0C]; TRaveDBAuth.?fC:String
 005C0FA5    call       @LStrAsg
 005C0FAA    lea        eax,[ebx+10]
 005C0FAD    mov        edx,dword ptr [esi+8]; TRaveDBAuth.?f8:String
 005C0FB0    call       @LStrAsg
 005C0FB5    mov        eax,ebx
 005C0FB7    call       005BF97C
>005C0FBC    jmp        005C0FD4
 005C0FBE    mov        ecx,5C0FE4; 'No DATA Link drivers have been loaded.'
 005C0FC3    mov        dl,1
 005C0FC5    mov        eax,[004087B0]; Exception
 005C0FCA    call       Exception.Create; Exception.Create
 005C0FCF    call       @RaiseExcept
 005C0FD4    mov        eax,ebx
 005C0FD6    pop        esi
 005C0FD7    pop        ebx
 005C0FD8    ret
*}
//end;

//005C100C
constructor TRaveDatabase.Create(AOwner:TComponent);
begin
{*
 005C100C    push       ebx
 005C100D    push       esi
 005C100E    test       dl,dl
>005C1010    je         005C101A
 005C1012    add        esp,0FFFFFFF0
 005C1015    call       @ClassCreate
 005C101A    mov        ebx,edx
 005C101C    mov        esi,eax
 005C101E    xor        edx,edx
 005C1020    mov        eax,esi
 005C1022    call       TRaveProjectItem.Create
 005C1027    mov        dl,1
 005C1029    mov        eax,[005C0B6C]; TRaveDBAuth
 005C102E    call       TObject.Create; TRaveDBAuth.Create
 005C1033    mov        dword ptr [esi+80],eax; TRaveDatabase.AuthDesign:TRaveDBAuth
 005C1039    mov        dl,1
 005C103B    mov        eax,[005C0B6C]; TRaveDBAuth
 005C1040    call       TObject.Create; TRaveDBAuth.Create
 005C1045    mov        dword ptr [esi+84],eax; TRaveDatabase.AuthRun:TRaveDBAuth
 005C104B    mov        eax,[0061B184]
 005C1050    cmp        byte ptr [eax],0
>005C1053    jne        005C105E
 005C1055    cmp        byte ptr ds:[61727C],0
>005C105C    je         005C1069
 005C105E    mov        eax,dword ptr [esi+80]; TRaveDatabase.AuthDesign:TRaveDBAuth
 005C1064    mov        dword ptr [esi+7C],eax; TRaveDatabase.?f7C:TRaveDBAuth
>005C1067    jmp        005C1072
 005C1069    mov        eax,dword ptr [esi+84]; TRaveDatabase.AuthRun:TRaveDBAuth
 005C106F    mov        dword ptr [esi+7C],eax; TRaveDatabase.?f7C:TRaveDBAuth
 005C1072    mov        eax,esi
 005C1074    test       bl,bl
>005C1076    je         005C1087
 005C1078    call       @AfterConstruction
 005C107D    pop        dword ptr fs:[0]
 005C1084    add        esp,0C
 005C1087    mov        eax,esi
 005C1089    pop        esi
 005C108A    pop        ebx
 005C108B    ret
*}
end;

//005C108C
destructor TRaveDatabase.Destroy;
begin
{*
 005C108C    push       ebp
 005C108D    mov        ebp,esp
 005C108F    add        esp,0FFFFFFF8
 005C1092    push       ebx
 005C1093    push       esi
 005C1094    push       edi
 005C1095    call       @BeforeDestruction
 005C109A    mov        byte ptr [ebp-5],dl
 005C109D    mov        dword ptr [ebp-4],eax
 005C10A0    mov        eax,dword ptr [ebp-4]
 005C10A3    mov        eax,dword ptr [eax+88]; TRaveDatabase.?f88:TThreadList
 005C10A9    test       eax,eax
>005C10AB    je         005C110D
 005C10AD    call       TThreadList.LockList
 005C10B2    mov        ebx,eax
 005C10B4    xor        eax,eax
 005C10B6    push       ebp
 005C10B7    push       5C10F9
 005C10BC    push       dword ptr fs:[eax]
 005C10BF    mov        dword ptr fs:[eax],esp
>005C10C2    jmp        005C10D7
 005C10C4    xor        edx,edx
 005C10C6    mov        eax,ebx
 005C10C8    call       TList.Get
 005C10CD    mov        edx,eax
 005C10CF    mov        eax,dword ptr [ebp-4]
 005C10D2    call       005C13D4
 005C10D7    cmp        dword ptr [ebx+8],0; TList.FCount:Integer
<005C10DB    jg         005C10C4
 005C10DD    xor        eax,eax
 005C10DF    pop        edx
 005C10E0    pop        ecx
 005C10E1    pop        ecx
 005C10E2    mov        dword ptr fs:[eax],edx
 005C10E5    push       5C1100
 005C10EA    mov        eax,dword ptr [ebp-4]
 005C10ED    mov        eax,dword ptr [eax+88]; TRaveDatabase.?f88:TThreadList
 005C10F3    call       TThreadList.UnlockList
 005C10F8    ret
<005C10F9    jmp        @HandleFinally
<005C10FE    jmp        005C10EA
 005C1100    mov        eax,dword ptr [ebp-4]
 005C1103    add        eax,88; TRaveDatabase.?f88:TThreadList
 005C1108    call       FreeAndNil
 005C110D    mov        eax,dword ptr [ebp-4]
 005C1110    mov        eax,dword ptr [eax+8C]; TRaveDatabase.?f8C:dword
 005C1116    test       eax,eax
>005C1118    je         005C117C
 005C111A    call       TThreadList.LockList
 005C111F    mov        edi,eax
 005C1121    xor        eax,eax
 005C1123    push       ebp
 005C1124    push       5C1168
 005C1129    push       dword ptr fs:[eax]
 005C112C    mov        dword ptr fs:[eax],esp
 005C112F    mov        ebx,dword ptr [edi+8]; TList.FCount:Integer
 005C1132    dec        ebx
 005C1133    test       ebx,ebx
>005C1135    jl         005C114C
 005C1137    inc        ebx
 005C1138    xor        esi,esi
 005C113A    mov        edx,esi
 005C113C    mov        eax,edi
 005C113E    call       TList.Get
 005C1143    call       TObject.Free
 005C1148    inc        esi
 005C1149    dec        ebx
<005C114A    jne        005C113A
 005C114C    xor        eax,eax
 005C114E    pop        edx
 005C114F    pop        ecx
 005C1150    pop        ecx
 005C1151    mov        dword ptr fs:[eax],edx
 005C1154    push       5C116F
 005C1159    mov        eax,dword ptr [ebp-4]
 005C115C    mov        eax,dword ptr [eax+8C]; TRaveDatabase.?f8C:dword
 005C1162    call       TThreadList.UnlockList
 005C1167    ret
<005C1168    jmp        @HandleFinally
<005C116D    jmp        005C1159
 005C116F    mov        eax,dword ptr [ebp-4]
 005C1172    add        eax,8C; TRaveDatabase.?f8C:dword
 005C1177    call       FreeAndNil
 005C117C    mov        eax,dword ptr [ebp-4]
 005C117F    add        eax,80; TRaveDatabase.AuthDesign:TRaveDBAuth
 005C1184    call       FreeAndNil
 005C1189    mov        eax,dword ptr [ebp-4]
 005C118C    add        eax,84; TRaveDatabase.AuthRun:TRaveDBAuth
 005C1191    call       FreeAndNil
 005C1196    mov        dl,byte ptr [ebp-5]
 005C1199    and        dl,0FC
 005C119C    mov        eax,dword ptr [ebp-4]
 005C119F    call       TRaveProjectItem.Destroy
 005C11A4    cmp        byte ptr [ebp-5],0
>005C11A8    jle        005C11B2
 005C11AA    mov        eax,dword ptr [ebp-4]
 005C11AD    call       @ClassDestroy
 005C11B2    pop        edi
 005C11B3    pop        esi
 005C11B4    pop        ebx
 005C11B5    pop        ecx
 005C11B6    pop        ecx
 005C11B7    pop        ebp
 005C11B8    ret
*}
end;

//005C11BC
//function sub_005C11BC(?:TRaveDatabase; ?:Pointer):?;
//begin
{*
 005C11BC    push       ebp
 005C11BD    mov        ebp,esp
 005C11BF    add        esp,0FFFFFFF4
 005C11C2    push       ebx
 005C11C3    push       esi
 005C11C4    push       edi
 005C11C5    mov        dword ptr [ebp-8],edx
 005C11C8    mov        dword ptr [ebp-4],eax
 005C11CB    xor        eax,eax
 005C11CD    mov        dword ptr [ebp-0C],eax
 005C11D0    mov        eax,dword ptr [ebp-4]
 005C11D3    mov        eax,dword ptr [eax+88]; TRaveDatabase.?f88:TThreadList
 005C11D9    test       eax,eax
>005C11DB    je         005C1241
 005C11DD    call       TThreadList.LockList
 005C11E2    mov        edi,eax
 005C11E4    xor        eax,eax
 005C11E6    push       ebp
 005C11E7    push       5C123A
 005C11EC    push       dword ptr fs:[eax]
 005C11EF    mov        dword ptr fs:[eax],esp
 005C11F2    mov        esi,dword ptr [edi+8]; TList.FCount:Integer
 005C11F5    dec        esi
 005C11F6    test       esi,esi
>005C11F8    jl         005C121E
 005C11FA    inc        esi
 005C11FB    xor        ebx,ebx
 005C11FD    mov        edx,ebx
 005C11FF    mov        eax,edi
 005C1201    call       TList.Get
 005C1206    mov        eax,dword ptr [eax+4]
 005C1209    cmp        eax,dword ptr [ebp-8]
>005C120C    jne        005C121A
 005C120E    mov        edx,ebx
 005C1210    mov        eax,edi
 005C1212    call       TList.Get
 005C1217    mov        dword ptr [ebp-0C],eax
 005C121A    inc        ebx
 005C121B    dec        esi
<005C121C    jne        005C11FD
 005C121E    xor        eax,eax
 005C1220    pop        edx
 005C1221    pop        ecx
 005C1222    pop        ecx
 005C1223    mov        dword ptr fs:[eax],edx
 005C1226    push       5C1241
 005C122B    mov        eax,dword ptr [ebp-4]
 005C122E    mov        eax,dword ptr [eax+88]; TRaveDatabase.?f88:TThreadList
 005C1234    call       TThreadList.UnlockList
 005C1239    ret
<005C123A    jmp        @HandleFinally
<005C123F    jmp        005C122B
 005C1241    mov        eax,dword ptr [ebp-0C]
 005C1244    pop        edi
 005C1245    pop        esi
 005C1246    pop        ebx
 005C1247    mov        esp,ebp
 005C1249    pop        ebp
 005C124A    ret
*}
//end;

//005C124C
//function sub_005C124C(?:TRaveDatabase):?;
//begin
{*
 005C124C    push       ebp
 005C124D    mov        ebp,esp
 005C124F    add        esp,0FFFFFFF8
 005C1252    push       ebx
 005C1253    push       esi
 005C1254    push       edi
 005C1255    mov        dword ptr [ebp-4],eax
 005C1258    mov        eax,dword ptr [ebp-4]
 005C125B    mov        eax,dword ptr [eax+88]; TRaveDatabase.?f88:TThreadList
 005C1261    test       eax,eax
>005C1263    jne        005C126C
 005C1265    xor        eax,eax
 005C1267    mov        dword ptr [ebp-8],eax
>005C126A    jmp        005C12DB
 005C126C    call       TThreadList.LockList
 005C1271    mov        edi,eax
 005C1273    xor        eax,eax
 005C1275    push       ebp
 005C1276    push       5C12D4
 005C127B    push       dword ptr fs:[eax]
 005C127E    mov        dword ptr fs:[eax],esp
 005C1281    xor        eax,eax
 005C1283    mov        dword ptr [ebp-8],eax
 005C1286    mov        esi,dword ptr [edi+8]; TList.FCount:Integer
 005C1289    dec        esi
 005C128A    test       esi,esi
>005C128C    jl         005C12B8
 005C128E    inc        esi
 005C128F    xor        ebx,ebx
 005C1291    mov        edx,ebx
 005C1293    mov        eax,edi
 005C1295    call       TList.Get
 005C129A    mov        eax,dword ptr [eax+8]
 005C129D    push       eax
 005C129E    call       kernel32.GetCurrentThreadId
 005C12A3    pop        edx
 005C12A4    cmp        edx,eax
>005C12A6    jne        005C12B4
 005C12A8    mov        edx,ebx
 005C12AA    mov        eax,edi
 005C12AC    call       TList.Get
 005C12B1    mov        dword ptr [ebp-8],eax
 005C12B4    inc        ebx
 005C12B5    dec        esi
<005C12B6    jne        005C1291
 005C12B8    xor        eax,eax
 005C12BA    pop        edx
 005C12BB    pop        ecx
 005C12BC    pop        ecx
 005C12BD    mov        dword ptr fs:[eax],edx
 005C12C0    push       5C12DB
 005C12C5    mov        eax,dword ptr [ebp-4]
 005C12C8    mov        eax,dword ptr [eax+88]; TRaveDatabase.?f88:TThreadList
 005C12CE    call       TThreadList.UnlockList
 005C12D3    ret
<005C12D4    jmp        @HandleFinally
<005C12D9    jmp        005C12C5
 005C12DB    mov        eax,dword ptr [ebp-8]
 005C12DE    pop        edi
 005C12DF    pop        esi
 005C12E0    pop        ebx
 005C12E1    pop        ecx
 005C12E2    pop        ecx
 005C12E3    pop        ebp
 005C12E4    ret
*}
//end;

//005C12E8
//function sub_005C12E8(?:TRaveDatabase):?;
//begin
{*
 005C12E8    push       ebp
 005C12E9    mov        ebp,esp
 005C12EB    add        esp,0FFFFFFF8
 005C12EE    push       ebx
 005C12EF    mov        dword ptr [ebp-4],eax
 005C12F2    mov        eax,dword ptr [ebp-4]
 005C12F5    call       005C124C
 005C12FA    mov        dword ptr [ebp-8],eax
 005C12FD    cmp        dword ptr [ebp-8],0
>005C1301    jne        005C13C2
 005C1307    mov        dl,1
 005C1309    mov        eax,[005C0B14]; TLinkInfo
 005C130E    call       TObject.Create; TLinkInfo.Create
 005C1313    mov        dword ptr [ebp-8],eax
 005C1316    mov        eax,dword ptr [ebp-4]
 005C1319    mov        eax,dword ptr [eax+8C]; TRaveDatabase.?f8C:dword
 005C131F    test       eax,eax
>005C1321    je         005C1379
 005C1323    call       TThreadList.LockList
 005C1328    mov        ebx,eax
 005C132A    xor        eax,eax
 005C132C    push       ebp
 005C132D    push       5C1372
 005C1332    push       dword ptr fs:[eax]
 005C1335    mov        dword ptr fs:[eax],esp
 005C1338    cmp        dword ptr [ebx+8],0; TList.FCount:Integer
>005C133C    jle        005C1356
 005C133E    xor        edx,edx
 005C1340    mov        eax,ebx
 005C1342    call       TList.Get
 005C1347    mov        edx,dword ptr [ebp-8]
 005C134A    mov        dword ptr [edx+4],eax; TLinkInfo.?f4:Pointer
 005C134D    xor        edx,edx
 005C134F    mov        eax,ebx
 005C1351    call       TList.Delete
 005C1356    xor        eax,eax
 005C1358    pop        edx
 005C1359    pop        ecx
 005C135A    pop        ecx
 005C135B    mov        dword ptr fs:[eax],edx
 005C135E    push       5C1379
 005C1363    mov        eax,dword ptr [ebp-4]
 005C1366    mov        eax,dword ptr [eax+8C]; TRaveDatabase.?f8C:dword
 005C136C    call       TThreadList.UnlockList
 005C1371    ret
<005C1372    jmp        @HandleFinally
<005C1377    jmp        005C1363
 005C1379    mov        eax,dword ptr [ebp-8]
 005C137C    cmp        dword ptr [eax+4],0; TLinkInfo.?f4:Pointer
>005C1380    jne        005C1390
 005C1382    mov        eax,dword ptr [ebp-4]
 005C1385    call       005C0F54
 005C138A    mov        edx,dword ptr [ebp-8]
 005C138D    mov        dword ptr [edx+4],eax; TLinkInfo.?f4:Pointer
 005C1390    mov        eax,dword ptr [ebp-4]
 005C1393    cmp        dword ptr [eax+88],0; TRaveDatabase.?f88:TThreadList
>005C139A    jne        005C13B1
 005C139C    mov        dl,1
 005C139E    mov        eax,[0041C2E4]; TThreadList
 005C13A3    call       TThreadList.Create; TThreadList.Create
 005C13A8    mov        edx,dword ptr [ebp-4]
 005C13AB    mov        dword ptr [edx+88],eax; TRaveDatabase.?f88:TThreadList
 005C13B1    mov        eax,dword ptr [ebp-4]
 005C13B4    mov        eax,dword ptr [eax+88]; TRaveDatabase.?f88:TThreadList
 005C13BA    mov        edx,dword ptr [ebp-8]
 005C13BD    call       TThreadList.Add
 005C13C2    mov        eax,dword ptr [ebp-8]
 005C13C5    inc        dword ptr [eax+0C]; TLinkInfo.?fC:dword
 005C13C8    mov        eax,dword ptr [ebp-8]
 005C13CB    mov        eax,dword ptr [eax+4]; TLinkInfo.?f4:Pointer
 005C13CE    pop        ebx
 005C13CF    pop        ecx
 005C13D0    pop        ecx
 005C13D1    pop        ebp
 005C13D2    ret
*}
//end;

//005C13D4
//procedure sub_005C13D4(?:TRaveDatabase; ?:Pointer);
//begin
{*
 005C13D4    push       ebp
 005C13D5    mov        ebp,esp
 005C13D7    add        esp,0FFFFFFF8
 005C13DA    push       ebx
 005C13DB    mov        ebx,edx
 005C13DD    mov        dword ptr [ebp-4],eax
 005C13E0    mov        edx,ebx
 005C13E2    mov        eax,dword ptr [ebp-4]
 005C13E5    call       005C11BC
 005C13EA    mov        dword ptr [ebp-8],eax
 005C13ED    cmp        dword ptr [ebp-8],0
>005C13F1    je         005C1497
 005C13F7    mov        eax,dword ptr [ebp-8]
 005C13FA    dec        dword ptr [eax+0C]
 005C13FD    mov        eax,dword ptr [ebp-8]
 005C1400    cmp        dword ptr [eax+0C],0
>005C1404    jne        005C1497
 005C140A    mov        eax,dword ptr [ebp-4]
 005C140D    mov        eax,dword ptr [eax+8C]; TRaveDatabase.?f8C:dword
 005C1413    test       eax,eax
>005C1415    je         005C1473
 005C1417    call       TThreadList.LockList
 005C141C    xor        edx,edx
 005C141E    push       ebp
 005C141F    push       5C146C
 005C1424    push       dword ptr fs:[edx]
 005C1427    mov        dword ptr fs:[edx],esp
 005C142A    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 005C142D    mov        ecx,dword ptr [ebp-4]
 005C1430    cmp        edx,dword ptr [ecx+90]
>005C1436    jge        005C1445
 005C1438    mov        edx,dword ptr [ebp-8]
 005C143B    mov        edx,dword ptr [edx+4]
 005C143E    call       TList.Add
>005C1443    jmp        005C1450
 005C1445    mov        eax,dword ptr [ebp-8]
 005C1448    add        eax,4
 005C144B    call       FreeAndNil
 005C1450    xor        eax,eax
 005C1452    pop        edx
 005C1453    pop        ecx
 005C1454    pop        ecx
 005C1455    mov        dword ptr fs:[eax],edx
 005C1458    push       5C147E
 005C145D    mov        eax,dword ptr [ebp-4]
 005C1460    mov        eax,dword ptr [eax+8C]; TRaveDatabase.?f8C:dword
 005C1466    call       TThreadList.UnlockList
 005C146B    ret
<005C146C    jmp        @HandleFinally
<005C1471    jmp        005C145D
 005C1473    mov        eax,dword ptr [ebp-8]
 005C1476    add        eax,4
 005C1479    call       FreeAndNil
 005C147E    mov        eax,dword ptr [ebp-4]
 005C1481    mov        eax,dword ptr [eax+88]; TRaveDatabase.?f88:TThreadList
 005C1487    mov        edx,dword ptr [ebp-8]
 005C148A    call       TThreadList.Remove
 005C148F    lea        eax,[ebp-8]
 005C1492    call       FreeAndNil
 005C1497    pop        ebx
 005C1498    pop        ecx
 005C1499    pop        ecx
 005C149A    pop        ebp
 005C149B    ret
*}
//end;

//005C149C
procedure TRaveDatabase.SetAuthDesign(Self:TRaveDatabase);
begin
{*
 005C149C    mov        eax,dword ptr [eax+80]; TRaveDatabase.AuthDesign:TRaveDBAuth
 005C14A2    mov        ecx,dword ptr [eax]
 005C14A4    call       dword ptr [ecx+8]; TPersistent.Assign
 005C14A7    ret
*}
end;

//005C14A8
procedure TRaveDatabase.SetAuthRun(Self:TRaveDatabase);
begin
{*
 005C14A8    mov        eax,dword ptr [eax+84]; TRaveDatabase.AuthRun:TRaveDBAuth
 005C14AE    mov        ecx,dword ptr [eax]
 005C14B0    call       dword ptr [ecx+8]; TPersistent.Assign
 005C14B3    ret
*}
end;

//005C14B4
//function sub_005C14B4():?;
//begin
{*
 005C14B4    mov        al,1
 005C14B6    ret
*}
//end;

//005C14B8
procedure TRaveDBAuth.AssignTo(Dest:TPersistent);
begin
{*
 005C14B8    push       ebx
 005C14B9    push       esi
 005C14BA    mov        esi,edx
 005C14BC    mov        ebx,eax
 005C14BE    mov        eax,esi
 005C14C0    mov        edx,dword ptr ds:[5C0B6C]; TRaveDBAuth
 005C14C6    call       @IsClass
 005C14CB    test       al,al
>005C14CD    je         005C14FE
 005C14CF    lea        eax,[esi+4]
 005C14D2    mov        edx,dword ptr [ebx+4]; TRaveDBAuth.?f4:String
 005C14D5    call       @LStrAsg
 005C14DA    lea        eax,[esi+8]
 005C14DD    mov        edx,dword ptr [ebx+8]; TRaveDBAuth.?f8:String
 005C14E0    call       @LStrAsg
 005C14E5    lea        eax,[esi+0C]
 005C14E8    mov        edx,dword ptr [ebx+0C]; TRaveDBAuth.?fC:String
 005C14EB    call       @LStrAsg
 005C14F0    lea        eax,[esi+10]
 005C14F3    mov        edx,dword ptr [ebx+10]; TRaveDBAuth.?f10:String
 005C14F6    call       @LStrAsg
 005C14FB    pop        esi
 005C14FC    pop        ebx
 005C14FD    ret
 005C14FE    mov        edx,esi
 005C1500    mov        eax,ebx
 005C1502    call       TPersistent.AssignTo
 005C1507    pop        esi
 005C1508    pop        ebx
 005C1509    ret
*}
end;

Initialization
//005C153C
{*
 005C153C    sub        dword ptr ds:[61F8AC],1
>005C1543    jae        005C1554
 005C1545    mov        edx,5C0EC8; sub_005C0EC8
 005C154A    mov        eax,5C1560; 'RVCL'
 005C154F    call       005A7E10
 005C1554    ret
*}
Finalization
end.