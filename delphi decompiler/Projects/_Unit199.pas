{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit199;

interface

uses
  Classes, Windows, Graphics, _Unit134, ZPlainPostgreSqlDriver;

type
  TZPostgreSQLResultSet = class(TZAbstractResultSet)
  public
    f3C:dword;//f3C
    f40:dword;//f40
    f44:IZPostgreSQLPlainDriver;//f44
    destructor Destroy; virtual;
    procedure sub_005127E8; virtual;
    procedure sub_005129D4; virtual;
    //function sub_00512A04(?:?):?; virtual;
    //procedure sub_00512AAC(?:?; ?:?); virtual;
    //function sub_00512BD8(?:?):?; virtual;
    //function sub_00512CC4(?:?):?; virtual;
    //function sub_00512D24(?:?):?; virtual;
    //function sub_00512D84(?:?):?; virtual;
    //procedure sub_00512DE4(?:?); virtual;
    //procedure sub_00512E58(?:?); virtual;
    //procedure sub_00512EC8(?:?); virtual;
    //procedure sub_00512F38(?:?); virtual;
    //procedure sub_00512FA8(?:?; ?:?); virtual;
    //procedure sub_00513020(?:?); virtual;
    //procedure sub_005130D8(?:?); virtual;
    //procedure sub_00513180(?:?); virtual;
    //procedure sub_0051321C(?:?; ?:?); virtual;
    //function sub_005134BC(?:?):?; virtual;
    //constructor Create(?:TZPostgreSQLResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
  end;
  TZPostgreSQLBlob = class(TZAbstractBlob)
  public
    f1C:dword;//f1C
    f20:dword;//f20
    f24:IZPostgreSQLPlainDriver;//f24
    destructor Destroy; virtual;
    procedure sub_005138C8; virtual;
    procedure sub_0051391C; virtual;
    //procedure sub_005138E0(?:?); virtual;
    //constructor Create(?:TZPostgreSQLBlob; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//00512600
//constructor TZPostgreSQLResultSet.Create(?:TZPostgreSQLResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00512600    push       ebp
 00512601    mov        ebp,esp
 00512603    push       ecx
 00512604    push       ebx
 00512605    push       esi
 00512606    test       dl,dl
>00512608    je         00512612
 0051260A    add        esp,0FFFFFFF0
 0051260D    call       @ClassCreate
 00512612    mov        dword ptr [ebp-4],ecx
 00512615    mov        ebx,edx
 00512617    mov        esi,eax
 00512619    mov        eax,dword ptr [ebp-4]
 0051261C    call       @IntfAddRef
 00512621    mov        eax,dword ptr [ebp+14]
 00512624    call       @IntfAddRef
 00512629    mov        eax,dword ptr [ebp+10]
 0051262C    call       @LStrAddRef
 00512631    xor        eax,eax
 00512633    push       ebp
 00512634    push       512698
 00512639    push       dword ptr fs:[eax]
 0051263C    mov        dword ptr fs:[eax],esp
 0051263F    mov        eax,dword ptr [ebp+10]
 00512642    push       eax
 00512643    push       0
 00512645    mov        ecx,dword ptr [ebp+14]
 00512648    xor        edx,edx
 0051264A    mov        eax,esi
 0051264C    call       004D3FC8
 00512651    mov        eax,dword ptr [ebp+0C]
 00512654    mov        dword ptr [esi+3C],eax; TZPostgreSQLResultSet.?f3C:dword
 00512657    mov        eax,dword ptr [ebp+8]
 0051265A    mov        dword ptr [esi+40],eax; TZPostgreSQLResultSet.?f40:dword
 0051265D    lea        eax,[esi+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00512660    mov        edx,dword ptr [ebp-4]
 00512663    call       @IntfCopy
 00512668    mov        byte ptr [esi+25],0; TZPostgreSQLResultSet.?f25:byte
 0051266C    mov        eax,esi
 0051266E    mov        edx,dword ptr [eax]
 00512670    call       dword ptr [edx]; TZPostgreSQLResultSet.sub_005127E8
 00512672    xor        eax,eax
 00512674    pop        edx
 00512675    pop        ecx
 00512676    pop        ecx
 00512677    mov        dword ptr fs:[eax],edx
 0051267A    push       51269F
 0051267F    lea        eax,[ebp-4]
 00512682    call       @IntfClear
 00512687    lea        eax,[ebp+10]
 0051268A    call       @LStrClr
 0051268F    lea        eax,[ebp+14]
 00512692    call       @IntfClear
 00512697    ret
<00512698    jmp        @HandleFinally
<0051269D    jmp        0051267F
 0051269F    mov        eax,esi
 005126A1    test       bl,bl
>005126A3    je         005126B4
 005126A5    call       @AfterConstruction
 005126AA    pop        dword ptr fs:[0]
 005126B1    add        esp,0C
 005126B4    mov        eax,esi
 005126B6    pop        esi
 005126B7    pop        ebx
 005126B8    pop        ecx
 005126B9    pop        ebp
 005126BA    ret        10
*}
//end;

//005126C0
destructor TZPostgreSQLResultSet.Destroy;
begin
{*
 005126C0    push       ebp
 005126C1    mov        ebp,esp
 005126C3    push       ebx
 005126C4    push       esi
 005126C5    call       @BeforeDestruction
 005126CA    mov        ebx,edx
 005126CC    mov        esi,eax
 005126CE    mov        edx,ebx
 005126D0    and        dl,0FC
 005126D3    mov        eax,esi
 005126D5    call       TZAbstractResultSet.Destroy
 005126DA    test       bl,bl
>005126DC    jle        005126E5
 005126DE    mov        eax,esi
 005126E0    call       @ClassDestroy
 005126E5    pop        esi
 005126E6    pop        ebx
 005126E7    pop        ebp
 005126E8    ret
*}
end;

//005126EC
//procedure sub_005126EC(?:TZPostgreSQLResultSet; ?:?; ?:TZColumnInfo; ?:?);
//begin
{*
 005126EC    push       ebp
 005126ED    mov        ebp,esp
 005126EF    push       0
 005126F1    push       0
 005126F3    push       ebx
 005126F4    push       esi
 005126F5    push       edi
 005126F6    mov        ebx,ecx
 005126F8    mov        esi,eax
 005126FA    mov        edi,dword ptr [ebp+8]
 005126FD    xor        eax,eax
 005126FF    push       ebp
 00512700    push       5127C5
 00512705    push       dword ptr fs:[eax]
 00512708    mov        dword ptr fs:[eax],esp
 0051270B    lea        edx,[ebp-8]
 0051270E    mov        eax,dword ptr [esi+30]; TZPostgreSQLResultSet.?f30:IZStatement
 00512711    mov        ecx,dword ptr [eax]
 00512713    call       dword ptr [ecx+88]
 00512719    mov        edx,dword ptr [ebp-8]
 0051271C    lea        eax,[ebp-4]
 0051271F    mov        ecx,5127D8; ['{8E62EA93-5A49-4F20-928A-0EA44ABCE5DB}']
 00512724    call       @IntfCast
 00512729    mov        eax,edi
 0051272B    cmp        eax,18
>0051272E    jg         0051273E
>00512730    je         00512766
 00512732    sub        eax,11
>00512735    je         0051276F
 00512737    sub        eax,2
>0051273A    je         00512754
>0051273C    jmp        00512785
 0051273E    sub        eax,316
>00512743    je         0051274E
 00512745    sub        eax,18C
>0051274A    je         0051275D
>0051274C    jmp        00512785
 0051274E    mov        byte ptr [ebx+7],1; TZColumnInfo.?f7:byte
>00512752    jmp        00512785
 00512754    mov        dword ptr [ebx+1C],20; TZColumnInfo.?f1C:Integer
>0051275B    jmp        00512785
 0051275D    mov        dword ptr [ebx+1C],20; TZColumnInfo.?f1C:Integer
>00512764    jmp        00512785
 00512766    mov        dword ptr [ebx+1C],0A; TZColumnInfo.?f1C:Integer
>0051276D    jmp        00512785
 0051276F    mov        eax,dword ptr [ebp-4]
 00512772    mov        edx,dword ptr [eax]
 00512774    call       dword ptr [edx+94]
 0051277A    test       al,al
>0051277C    je         00512785
 0051277E    mov        dword ptr [ebx+1C],100; TZColumnInfo.?f1C:Integer
 00512785    mov        edx,edi
 00512787    mov        eax,dword ptr [ebp-4]
 0051278A    call       00511548
 0051278F    test       al,al
>00512791    je         00512798
 00512793    mov        byte ptr [ebx+2C],al; TZColumnInfo.?f2C:byte
>00512796    jmp        005127A7
 00512798    mov        byte ptr [ebx+2C],9; TZColumnInfo.?f2C:byte
 0051279C    mov        dword ptr [ebx+1C],0FF; TZColumnInfo.?f1C:Integer
 005127A3    mov        byte ptr [ebx+2D],1; TZColumnInfo.?f2D:byte
 005127A7    xor        eax,eax
 005127A9    pop        edx
 005127AA    pop        ecx
 005127AB    pop        ecx
 005127AC    mov        dword ptr fs:[eax],edx
 005127AF    push       5127CC
 005127B4    lea        eax,[ebp-8]
 005127B7    call       @IntfClear
 005127BC    lea        eax,[ebp-4]
 005127BF    call       @IntfClear
 005127C4    ret
<005127C5    jmp        @HandleFinally
<005127CA    jmp        005127B4
 005127CC    pop        edi
 005127CD    pop        esi
 005127CE    pop        ebx
 005127CF    pop        ecx
 005127D0    pop        ecx
 005127D1    pop        ebp
 005127D2    ret        4
*}
//end;

//005127E8
procedure sub_005127E8;
begin
{*
 005127E8    push       ebp
 005127E9    mov        ebp,esp
 005127EB    xor        ecx,ecx
 005127ED    push       ecx
 005127EE    push       ecx
 005127EF    push       ecx
 005127F0    push       ecx
 005127F1    push       ecx
 005127F2    push       ebx
 005127F3    push       esi
 005127F4    push       edi
 005127F5    mov        esi,eax
 005127F7    xor        eax,eax
 005127F9    push       ebp
 005127FA    push       5129B5
 005127FF    push       dword ptr fs:[eax]
 00512802    mov        dword ptr fs:[eax],esp
 00512805    cmp        byte ptr [esi+25],1; TZPostgreSQLResultSet.?f25:byte
>00512809    jne        0051282C
 0051280B    lea        edx,[ebp-0C]
 0051280E    mov        eax,[0061B624]; ^#122.sResString46:TResStringRec
 00512813    call       LoadResString
 00512818    mov        ecx,dword ptr [ebp-0C]
 0051281B    mov        dl,1
 0051281D    mov        eax,[004C6D20]; EZSQLException
 00512822    call       EZSQLException.Create; EZSQLException.Create
 00512827    call       @RaiseExcept
 0051282C    cmp        dword ptr [esi+40],0; TZPostgreSQLResultSet.?f40:dword
>00512830    jne        00512853
 00512832    lea        edx,[ebp-10]
 00512835    mov        eax,[0061B544]; ^#122.sResString28:TResStringRec
 0051283A    call       LoadResString
 0051283F    mov        ecx,dword ptr [ebp-10]
 00512842    mov        dl,1
 00512844    mov        eax,[004C6D20]; EZSQLException
 00512849    call       EZSQLException.Create; EZSQLException.Create
 0051284E    call       @RaiseExcept
 00512853    mov        edx,dword ptr [esi+40]; TZPostgreSQLResultSet.?f40:dword
 00512856    mov        eax,dword ptr [esi+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00512859    mov        ecx,dword ptr [eax]
 0051285B    call       dword ptr [ecx+0B0]
 00512861    mov        dword ptr [esi+14],eax; TZPostgreSQLResultSet.?f14:Integer
 00512864    mov        eax,dword ptr [esi+28]; TZPostgreSQLResultSet.?f28:dword
 00512867    mov        edx,dword ptr [eax]
 00512869    call       dword ptr [edx+8]
 0051286C    mov        edx,dword ptr [esi+40]; TZPostgreSQLResultSet.?f40:dword
 0051286F    mov        eax,dword ptr [esi+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00512872    mov        ecx,dword ptr [eax]
 00512874    call       dword ptr [ecx+0B4]
 0051287A    sub        eax,1
>0051287D    jno        00512884
 0051287F    call       @IntOver
 00512884    test       eax,eax
>00512886    jl         00512993
 0051288C    inc        eax
 0051288D    mov        dword ptr [ebp-8],eax
 00512890    mov        dword ptr [ebp-4],0
 00512897    mov        dl,1
 00512899    mov        eax,[004D5F00]; TZColumnInfo
 0051289E    call       TZColumnInfo.Create; TZColumnInfo.Create
 005128A3    mov        ebx,eax
 005128A5    lea        eax,[ebx+14]; TZColumnInfo.?f14:String
 005128A8    call       @LStrClr
 005128AD    lea        eax,[ebx+24]; TZColumnInfo.?f24:String
 005128B0    call       @LStrClr
 005128B5    mov        ecx,dword ptr [ebp-4]
 005128B8    mov        edx,dword ptr [esi+40]; TZPostgreSQLResultSet.?f40:dword
 005128BB    mov        eax,dword ptr [esi+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 005128BE    mov        edi,dword ptr [eax]
 005128C0    call       dword ptr [edi+0BC]
 005128C6    lea        edx,[ebp-14]
 005128C9    call       StrPas
 005128CE    mov        edx,dword ptr [ebp-14]
 005128D1    lea        eax,[ebx+10]; TZColumnInfo.?f10:String
 005128D4    call       @LStrAsg
 005128D9    xor        eax,eax
 005128DB    mov        dword ptr [ebx+0C],eax; TZColumnInfo.?fC:dword
 005128DE    xor        eax,eax
 005128E0    mov        dword ptr [ebx+20],eax; TZColumnInfo.?f20:dword
 005128E3    xor        eax,eax
 005128E5    mov        dword ptr [ebx+1C],eax; TZColumnInfo.?f1C:Integer
 005128E8    mov        byte ptr [ebx+4],0; TZColumnInfo.?f4:LongBool
 005128EC    mov        byte ptr [ebx+9],0; TZColumnInfo.?f9:byte
 005128F0    mov        byte ptr [ebx+8],1; TZColumnInfo.?f8:byte
 005128F4    mov        ecx,dword ptr [ebp-4]
 005128F7    mov        edx,dword ptr [esi+40]; TZPostgreSQLResultSet.?f40:dword
 005128FA    mov        eax,dword ptr [esi+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 005128FD    mov        edi,dword ptr [eax]
 005128FF    call       dword ptr [edi+0C4]
 00512905    push       eax
 00512906    mov        ecx,ebx
 00512908    mov        edx,dword ptr [ebp-4]
 0051290B    mov        eax,esi
 0051290D    call       005126EC
 00512912    cmp        dword ptr [ebx+1C],0; TZColumnInfo.?f1C:Integer
>00512916    jne        00512955
 00512918    mov        ecx,dword ptr [ebp-4]
 0051291B    mov        edx,dword ptr [esi+40]; TZPostgreSQLResultSet.?f40:dword
 0051291E    mov        eax,dword ptr [esi+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00512921    mov        edi,dword ptr [eax]
 00512923    call       dword ptr [edi+0C8]
 00512929    push       eax
 0051292A    mov        ecx,dword ptr [ebp-4]
 0051292D    mov        edx,dword ptr [esi+40]; TZPostgreSQLResultSet.?f40:dword
 00512930    mov        eax,dword ptr [esi+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00512933    mov        edi,dword ptr [eax]
 00512935    call       dword ptr [edi+0CC]
 0051293B    sub        eax,4
>0051293E    jno        00512945
 00512940    call       @IntOver
 00512945    pop        edx
 00512946    call       Max
 0051294B    xor        edx,edx
 0051294D    call       Max
 00512952    mov        dword ptr [ebx+1C],eax; TZColumnInfo.?f1C:Integer
 00512955    cmp        byte ptr [ebx+2C],9; TZColumnInfo.?f2C:byte
>00512959    je         00512961
 0051295B    cmp        byte ptr [ebx+2C],0A; TZColumnInfo.?f2C:byte
>0051295F    jne        0051297D
 00512961    cmp        dword ptr [ebx+1C],0; TZColumnInfo.?f1C:Integer
>00512965    je         00512976
 00512967    mov        eax,dword ptr [ebx+10]; TZColumnInfo.?f10:String
 0051296A    mov        edx,5129CC; 'expr'
 0051296F    call       @LStrCmp
>00512974    jne        0051297D
 00512976    mov        dword ptr [ebx+1C],0FF; TZColumnInfo.?f1C:Integer
 0051297D    mov        edx,ebx
 0051297F    mov        eax,dword ptr [esi+28]; TZPostgreSQLResultSet.?f28:dword
 00512982    call       00433178
 00512987    inc        dword ptr [ebp-4]
 0051298A    dec        dword ptr [ebp-8]
<0051298D    jne        00512897
 00512993    mov        eax,esi
 00512995    call       004D4580
 0051299A    xor        eax,eax
 0051299C    pop        edx
 0051299D    pop        ecx
 0051299E    pop        ecx
 0051299F    mov        dword ptr fs:[eax],edx
 005129A2    push       5129BC
 005129A7    lea        eax,[ebp-14]
 005129AA    mov        edx,3
 005129AF    call       @LStrArrayClr
 005129B4    ret
<005129B5    jmp        @HandleFinally
<005129BA    jmp        005129A7
 005129BC    pop        edi
 005129BD    pop        esi
 005129BE    pop        ebx
 005129BF    mov        esp,ebp
 005129C1    pop        ebp
 005129C2    ret
*}
end;

//005129D4
procedure sub_005129D4;
begin
{*
 005129D4    push       ebp
 005129D5    mov        ebp,esp
 005129D7    push       ebx
 005129D8    push       esi
 005129D9    mov        ebx,eax
 005129DB    mov        esi,dword ptr [ebx+40]; TZPostgreSQLResultSet.?f40:dword
 005129DE    test       esi,esi
>005129E0    je         005129EF
 005129E2    mov        edx,esi
 005129E4    mov        eax,dword ptr [ebx+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 005129E7    mov        ecx,dword ptr [eax]
 005129E9    call       dword ptr [ecx+0EC]
 005129EF    xor        eax,eax
 005129F1    mov        dword ptr [ebx+3C],eax; TZPostgreSQLResultSet.?f3C:dword
 005129F4    xor        eax,eax
 005129F6    mov        dword ptr [ebx+40],eax; TZPostgreSQLResultSet.?f40:dword
 005129F9    mov        eax,ebx
 005129FB    call       004D4588
 00512A00    pop        esi
 00512A01    pop        ebx
 00512A02    pop        ebp
 00512A03    ret
*}
end;

//00512A04
//function sub_00512A04(?:?):?;
//begin
{*
 00512A04    push       ebp
 00512A05    mov        ebp,esp
 00512A07    add        esp,0FFFFFFF8
 00512A0A    push       ebx
 00512A0B    xor        ecx,ecx
 00512A0D    mov        dword ptr [ebp-8],ecx
 00512A10    mov        dword ptr [ebp-4],edx
 00512A13    mov        ebx,eax
 00512A15    xor        eax,eax
 00512A17    push       ebp
 00512A18    push       512A9E
 00512A1D    push       dword ptr fs:[eax]
 00512A20    mov        dword ptr fs:[eax],esp
 00512A23    mov        eax,ebx
 00512A25    call       004D42AC
 00512A2A    mov        eax,dword ptr [ebx+10]; TZPostgreSQLResultSet.?f10:dword
 00512A2D    cmp        eax,1
>00512A30    jl         00512A37
 00512A32    cmp        eax,dword ptr [ebx+14]; TZPostgreSQLResultSet.?f14:Integer
>00512A35    jle        00512A58
 00512A37    lea        edx,[ebp-8]
 00512A3A    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 00512A3F    call       LoadResString
 00512A44    mov        ecx,dword ptr [ebp-8]
 00512A47    mov        dl,1
 00512A49    mov        eax,[004C6D20]; EZSQLException
 00512A4E    call       EZSQLException.Create; EZSQLException.Create
 00512A53    call       @RaiseExcept
 00512A58    mov        eax,dword ptr [ebp-4]
 00512A5B    sub        eax,1
>00512A5E    jno        00512A65
 00512A60    call       @IntOver
 00512A65    push       eax
 00512A66    mov        ecx,dword ptr [ebx+10]; TZPostgreSQLResultSet.?f10:dword
 00512A69    sub        ecx,1
>00512A6C    jno        00512A73
 00512A6E    call       @IntOver
 00512A73    mov        edx,dword ptr [ebx+40]; TZPostgreSQLResultSet.?f40:dword
 00512A76    mov        eax,dword ptr [ebx+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00512A79    mov        ebx,dword ptr [eax]
 00512A7B    call       dword ptr [ebx+0E8]
 00512A81    test       eax,eax
 00512A83    setne      al
 00512A86    mov        ebx,eax
 00512A88    xor        eax,eax
 00512A8A    pop        edx
 00512A8B    pop        ecx
 00512A8C    pop        ecx
 00512A8D    mov        dword ptr fs:[eax],edx
 00512A90    push       512AA5
 00512A95    lea        eax,[ebp-8]
 00512A98    call       @LStrClr
 00512A9D    ret
<00512A9E    jmp        @HandleFinally
<00512AA3    jmp        00512A95
 00512AA5    mov        eax,ebx
 00512AA7    pop        ebx
 00512AA8    pop        ecx
 00512AA9    pop        ecx
 00512AAA    pop        ebp
 00512AAB    ret
*}
//end;

//00512AAC
//procedure sub_00512AAC(?:?; ?:?);
//begin
{*
 00512AAC    push       ebp
 00512AAD    mov        ebp,esp
 00512AAF    push       0
 00512AB1    push       0
 00512AB3    push       0
 00512AB5    push       ebx
 00512AB6    push       esi
 00512AB7    push       edi
 00512AB8    mov        dword ptr [ebp-4],ecx
 00512ABB    mov        esi,edx
 00512ABD    mov        ebx,eax
 00512ABF    xor        eax,eax
 00512AC1    push       ebp
 00512AC2    push       512BC9
 00512AC7    push       dword ptr fs:[eax]
 00512ACA    mov        dword ptr fs:[eax],esp
 00512ACD    mov        eax,ebx
 00512ACF    call       004D42AC
 00512AD4    mov        cl,9
 00512AD6    mov        edx,esi
 00512AD8    mov        eax,ebx
 00512ADA    call       004D4308
 00512ADF    mov        eax,dword ptr [ebx+10]; TZPostgreSQLResultSet.?f10:dword
 00512AE2    cmp        eax,1
>00512AE5    jl         00512AEC
 00512AE7    cmp        eax,dword ptr [ebx+14]; TZPostgreSQLResultSet.?f14:Integer
>00512AEA    jle        00512B0D
 00512AEC    lea        edx,[ebp-8]
 00512AEF    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 00512AF4    call       LoadResString
 00512AF9    mov        ecx,dword ptr [ebp-8]
 00512AFC    mov        dl,1
 00512AFE    mov        eax,[004C6D20]; EZSQLException
 00512B03    call       EZSQLException.Create; EZSQLException.Create
 00512B08    call       @RaiseExcept
 00512B0D    sub        esi,1
>00512B10    jno        00512B17
 00512B12    call       @IntOver
 00512B17    push       esi
 00512B18    mov        ecx,dword ptr [ebx+10]; TZPostgreSQLResultSet.?f10:dword
 00512B1B    sub        ecx,1
>00512B1E    jno        00512B25
 00512B20    call       @IntOver
 00512B25    mov        edx,dword ptr [ebx+40]; TZPostgreSQLResultSet.?f40:dword
 00512B28    mov        eax,dword ptr [ebx+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00512B2B    mov        edi,dword ptr [eax]
 00512B2D    call       dword ptr [edi+0E8]
 00512B33    test       eax,eax
 00512B35    setne      al
 00512B38    mov        byte ptr [ebx+34],al; TZPostgreSQLResultSet.?f34:byte
 00512B3B    push       esi
 00512B3C    mov        ecx,dword ptr [ebx+10]; TZPostgreSQLResultSet.?f10:dword
 00512B3F    sub        ecx,1
>00512B42    jno        00512B49
 00512B44    call       @IntOver
 00512B49    mov        edx,dword ptr [ebx+40]; TZPostgreSQLResultSet.?f40:dword
 00512B4C    mov        eax,dword ptr [ebx+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00512B4F    mov        edi,dword ptr [eax]
 00512B51    call       dword ptr [edi+0E4]
 00512B57    push       eax
 00512B58    push       esi
 00512B59    mov        ecx,dword ptr [ebx+10]; TZPostgreSQLResultSet.?f10:dword
 00512B5C    sub        ecx,1
>00512B5F    jno        00512B66
 00512B61    call       @IntOver
 00512B66    mov        edx,dword ptr [ebx+40]; TZPostgreSQLResultSet.?f40:dword
 00512B69    mov        eax,dword ptr [ebx+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00512B6C    mov        edi,dword ptr [eax]
 00512B6E    call       dword ptr [edi+0E0]
 00512B74    mov        edx,eax
 00512B76    mov        eax,dword ptr [ebp-4]
 00512B79    pop        ecx
 00512B7A    call       @LStrFromPCharLen
 00512B7F    mov        ecx,esi
 00512B81    mov        edx,dword ptr [ebx+40]; TZPostgreSQLResultSet.?f40:dword
 00512B84    mov        eax,dword ptr [ebx+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00512B87    mov        ebx,dword ptr [eax]
 00512B89    call       dword ptr [ebx+0C4]
 00512B8F    cmp        eax,412
>00512B94    jne        00512BAE
 00512B96    lea        edx,[ebp-0C]
 00512B99    mov        eax,dword ptr [ebp-4]
 00512B9C    mov        eax,dword ptr [eax]
 00512B9E    call       TrimRight
 00512BA3    mov        edx,dword ptr [ebp-0C]
 00512BA6    mov        eax,dword ptr [ebp-4]
 00512BA9    call       @LStrAsg
 00512BAE    xor        eax,eax
 00512BB0    pop        edx
 00512BB1    pop        ecx
 00512BB2    pop        ecx
 00512BB3    mov        dword ptr fs:[eax],edx
 00512BB6    push       512BD0
 00512BBB    lea        eax,[ebp-0C]
 00512BBE    mov        edx,2
 00512BC3    call       @LStrArrayClr
 00512BC8    ret
<00512BC9    jmp        @HandleFinally
<00512BCE    jmp        00512BBB
 00512BD0    pop        edi
 00512BD1    pop        esi
 00512BD2    pop        ebx
 00512BD3    mov        esp,ebp
 00512BD5    pop        ebp
 00512BD6    ret
*}
//end;

//00512BD8
//function sub_00512BD8(?:?):?;
//begin
{*
 00512BD8    push       ebp
 00512BD9    mov        ebp,esp
 00512BDB    push       0
 00512BDD    push       0
 00512BDF    push       ebx
 00512BE0    push       esi
 00512BE1    mov        esi,edx
 00512BE3    mov        ebx,eax
 00512BE5    xor        eax,eax
 00512BE7    push       ebp
 00512BE8    push       512C80
 00512BED    push       dword ptr fs:[eax]
 00512BF0    mov        dword ptr fs:[eax],esp
 00512BF3    mov        cl,1
 00512BF5    mov        edx,esi
 00512BF7    mov        eax,ebx
 00512BF9    call       004D4308
 00512BFE    lea        ecx,[ebp-8]
 00512C01    mov        edx,esi
 00512C03    mov        eax,ebx
 00512C05    mov        ebx,dword ptr [eax]
 00512C07    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 00512C0A    mov        eax,dword ptr [ebp-8]
 00512C0D    lea        edx,[ebp-4]
 00512C10    call       UpperCase
 00512C15    mov        eax,dword ptr [ebp-4]
 00512C18    mov        edx,512C98; 'Y'
 00512C1D    call       @LStrCmp
>00512C22    je         00512C63
 00512C24    mov        eax,dword ptr [ebp-4]
 00512C27    mov        edx,512CA4; 'YES'
 00512C2C    call       @LStrCmp
>00512C31    je         00512C63
 00512C33    mov        eax,dword ptr [ebp-4]
 00512C36    mov        edx,512CB0; 'T'
 00512C3B    call       @LStrCmp
>00512C40    je         00512C63
 00512C42    mov        eax,dword ptr [ebp-4]
 00512C45    mov        edx,512CBC; 'TRUE'
 00512C4A    call       @LStrCmp
>00512C4F    je         00512C63
 00512C51    xor        edx,edx
 00512C53    mov        eax,dword ptr [ebp-4]
 00512C56    call       StrToIntDef
 00512C5B    test       eax,eax
>00512C5D    jne        00512C63
 00512C5F    xor        ebx,ebx
>00512C61    jmp        00512C65
 00512C63    mov        bl,1
 00512C65    xor        eax,eax
 00512C67    pop        edx
 00512C68    pop        ecx
 00512C69    pop        ecx
 00512C6A    mov        dword ptr fs:[eax],edx
 00512C6D    push       512C87
 00512C72    lea        eax,[ebp-8]
 00512C75    mov        edx,2
 00512C7A    call       @LStrArrayClr
 00512C7F    ret
<00512C80    jmp        @HandleFinally
<00512C85    jmp        00512C72
 00512C87    mov        eax,ebx
 00512C89    pop        esi
 00512C8A    pop        ebx
 00512C8B    pop        ecx
 00512C8C    pop        ecx
 00512C8D    pop        ebp
 00512C8E    ret
*}
//end;

//00512CC4
//function sub_00512CC4(?:?):?;
//begin
{*
 00512CC4    push       ebp
 00512CC5    mov        ebp,esp
 00512CC7    push       0
 00512CC9    push       ebx
 00512CCA    push       esi
 00512CCB    mov        esi,edx
 00512CCD    mov        ebx,eax
 00512CCF    xor        eax,eax
 00512CD1    push       ebp
 00512CD2    push       512D16
 00512CD7    push       dword ptr fs:[eax]
 00512CDA    mov        dword ptr fs:[eax],esp
 00512CDD    mov        cl,2
 00512CDF    mov        edx,esi
 00512CE1    mov        eax,ebx
 00512CE3    call       004D4308
 00512CE8    lea        ecx,[ebp-4]
 00512CEB    mov        edx,esi
 00512CED    mov        eax,ebx
 00512CEF    mov        ebx,dword ptr [eax]
 00512CF1    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 00512CF4    mov        eax,dword ptr [ebp-4]
 00512CF7    xor        edx,edx
 00512CF9    call       StrToIntDef
 00512CFE    mov        ebx,eax
 00512D00    xor        eax,eax
 00512D02    pop        edx
 00512D03    pop        ecx
 00512D04    pop        ecx
 00512D05    mov        dword ptr fs:[eax],edx
 00512D08    push       512D1D
 00512D0D    lea        eax,[ebp-4]
 00512D10    call       @LStrClr
 00512D15    ret
<00512D16    jmp        @HandleFinally
<00512D1B    jmp        00512D0D
 00512D1D    mov        eax,ebx
 00512D1F    pop        esi
 00512D20    pop        ebx
 00512D21    pop        ecx
 00512D22    pop        ebp
 00512D23    ret
*}
//end;

//00512D24
//function sub_00512D24(?:?):?;
//begin
{*
 00512D24    push       ebp
 00512D25    mov        ebp,esp
 00512D27    push       0
 00512D29    push       ebx
 00512D2A    push       esi
 00512D2B    mov        esi,edx
 00512D2D    mov        ebx,eax
 00512D2F    xor        eax,eax
 00512D31    push       ebp
 00512D32    push       512D76
 00512D37    push       dword ptr fs:[eax]
 00512D3A    mov        dword ptr fs:[eax],esp
 00512D3D    mov        cl,3
 00512D3F    mov        edx,esi
 00512D41    mov        eax,ebx
 00512D43    call       004D4308
 00512D48    lea        ecx,[ebp-4]
 00512D4B    mov        edx,esi
 00512D4D    mov        eax,ebx
 00512D4F    mov        ebx,dword ptr [eax]
 00512D51    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 00512D54    mov        eax,dword ptr [ebp-4]
 00512D57    xor        edx,edx
 00512D59    call       StrToIntDef
 00512D5E    mov        ebx,eax
 00512D60    xor        eax,eax
 00512D62    pop        edx
 00512D63    pop        ecx
 00512D64    pop        ecx
 00512D65    mov        dword ptr fs:[eax],edx
 00512D68    push       512D7D
 00512D6D    lea        eax,[ebp-4]
 00512D70    call       @LStrClr
 00512D75    ret
<00512D76    jmp        @HandleFinally
<00512D7B    jmp        00512D6D
 00512D7D    mov        eax,ebx
 00512D7F    pop        esi
 00512D80    pop        ebx
 00512D81    pop        ecx
 00512D82    pop        ebp
 00512D83    ret
*}
//end;

//00512D84
//function sub_00512D84(?:?):?;
//begin
{*
 00512D84    push       ebp
 00512D85    mov        ebp,esp
 00512D87    push       0
 00512D89    push       ebx
 00512D8A    push       esi
 00512D8B    mov        esi,edx
 00512D8D    mov        ebx,eax
 00512D8F    xor        eax,eax
 00512D91    push       ebp
 00512D92    push       512DD6
 00512D97    push       dword ptr fs:[eax]
 00512D9A    mov        dword ptr fs:[eax],esp
 00512D9D    mov        cl,4
 00512D9F    mov        edx,esi
 00512DA1    mov        eax,ebx
 00512DA3    call       004D4308
 00512DA8    lea        ecx,[ebp-4]
 00512DAB    mov        edx,esi
 00512DAD    mov        eax,ebx
 00512DAF    mov        ebx,dword ptr [eax]
 00512DB1    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 00512DB4    mov        eax,dword ptr [ebp-4]
 00512DB7    xor        edx,edx
 00512DB9    call       StrToIntDef
 00512DBE    mov        ebx,eax
 00512DC0    xor        eax,eax
 00512DC2    pop        edx
 00512DC3    pop        ecx
 00512DC4    pop        ecx
 00512DC5    mov        dword ptr fs:[eax],edx
 00512DC8    push       512DDD
 00512DCD    lea        eax,[ebp-4]
 00512DD0    call       @LStrClr
 00512DD5    ret
<00512DD6    jmp        @HandleFinally
<00512DDB    jmp        00512DCD
 00512DDD    mov        eax,ebx
 00512DDF    pop        esi
 00512DE0    pop        ebx
 00512DE1    pop        ecx
 00512DE2    pop        ebp
 00512DE3    ret
*}
//end;

//00512DE4
//procedure sub_00512DE4(?:?);
//begin
{*
 00512DE4    push       ebp
 00512DE5    mov        ebp,esp
 00512DE7    add        esp,0FFFFFFF4
 00512DEA    push       ebx
 00512DEB    push       esi
 00512DEC    xor        ecx,ecx
 00512DEE    mov        dword ptr [ebp-0C],ecx
 00512DF1    mov        esi,edx
 00512DF3    mov        ebx,eax
 00512DF5    xor        eax,eax
 00512DF7    push       ebp
 00512DF8    push       512E42
 00512DFD    push       dword ptr fs:[eax]
 00512E00    mov        dword ptr fs:[eax],esp
 00512E03    mov        cl,5
 00512E05    mov        edx,esi
 00512E07    mov        eax,ebx
 00512E09    call       004D4308
 00512E0E    push       0
 00512E10    push       0
 00512E12    lea        ecx,[ebp-0C]
 00512E15    mov        edx,esi
 00512E17    mov        eax,ebx
 00512E19    mov        ebx,dword ptr [eax]
 00512E1B    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 00512E1E    mov        eax,dword ptr [ebp-0C]
 00512E21    call       StrToInt64Def
 00512E26    mov        dword ptr [ebp-8],eax
 00512E29    mov        dword ptr [ebp-4],edx
 00512E2C    xor        eax,eax
 00512E2E    pop        edx
 00512E2F    pop        ecx
 00512E30    pop        ecx
 00512E31    mov        dword ptr fs:[eax],edx
 00512E34    push       512E49
 00512E39    lea        eax,[ebp-0C]
 00512E3C    call       @LStrClr
 00512E41    ret
<00512E42    jmp        @HandleFinally
<00512E47    jmp        00512E39
 00512E49    mov        eax,dword ptr [ebp-8]
 00512E4C    mov        edx,dword ptr [ebp-4]
 00512E4F    pop        esi
 00512E50    pop        ebx
 00512E51    mov        esp,ebp
 00512E53    pop        ebp
 00512E54    ret
*}
//end;

//00512E58
//procedure sub_00512E58(?:?);
//begin
{*
 00512E58    push       ebp
 00512E59    mov        ebp,esp
 00512E5B    add        esp,0FFFFFFF8
 00512E5E    push       ebx
 00512E5F    push       esi
 00512E60    xor        ecx,ecx
 00512E62    mov        dword ptr [ebp-8],ecx
 00512E65    mov        esi,edx
 00512E67    mov        ebx,eax
 00512E69    xor        eax,eax
 00512E6B    push       ebp
 00512E6C    push       512EB6
 00512E71    push       dword ptr fs:[eax]
 00512E74    mov        dword ptr fs:[eax],esp
 00512E77    mov        cl,6
 00512E79    mov        edx,esi
 00512E7B    mov        eax,ebx
 00512E7D    call       004D4308
 00512E82    push       0
 00512E84    push       0
 00512E86    push       0
 00512E88    lea        ecx,[ebp-8]
 00512E8B    mov        edx,esi
 00512E8D    mov        eax,ebx
 00512E8F    mov        ebx,dword ptr [eax]
 00512E91    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 00512E94    mov        eax,dword ptr [ebp-8]
 00512E97    call       004BEE6C
 00512E9C    fstp       dword ptr [ebp-4]
 00512E9F    wait
 00512EA0    xor        eax,eax
 00512EA2    pop        edx
 00512EA3    pop        ecx
 00512EA4    pop        ecx
 00512EA5    mov        dword ptr fs:[eax],edx
 00512EA8    push       512EBD
 00512EAD    lea        eax,[ebp-8]
 00512EB0    call       @LStrClr
 00512EB5    ret
<00512EB6    jmp        @HandleFinally
<00512EBB    jmp        00512EAD
 00512EBD    fld        dword ptr [ebp-4]
 00512EC0    pop        esi
 00512EC1    pop        ebx
 00512EC2    pop        ecx
 00512EC3    pop        ecx
 00512EC4    pop        ebp
 00512EC5    ret
*}
//end;

//00512EC8
//procedure sub_00512EC8(?:?);
//begin
{*
 00512EC8    push       ebp
 00512EC9    mov        ebp,esp
 00512ECB    add        esp,0FFFFFFF4
 00512ECE    push       ebx
 00512ECF    push       esi
 00512ED0    xor        ecx,ecx
 00512ED2    mov        dword ptr [ebp-0C],ecx
 00512ED5    mov        esi,edx
 00512ED7    mov        ebx,eax
 00512ED9    xor        eax,eax
 00512EDB    push       ebp
 00512EDC    push       512F26
 00512EE1    push       dword ptr fs:[eax]
 00512EE4    mov        dword ptr fs:[eax],esp
 00512EE7    mov        cl,7
 00512EE9    mov        edx,esi
 00512EEB    mov        eax,ebx
 00512EED    call       004D4308
 00512EF2    push       0
 00512EF4    push       0
 00512EF6    push       0
 00512EF8    lea        ecx,[ebp-0C]
 00512EFB    mov        edx,esi
 00512EFD    mov        eax,ebx
 00512EFF    mov        ebx,dword ptr [eax]
 00512F01    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 00512F04    mov        eax,dword ptr [ebp-0C]
 00512F07    call       004BEE6C
 00512F0C    fstp       qword ptr [ebp-8]
 00512F0F    wait
 00512F10    xor        eax,eax
 00512F12    pop        edx
 00512F13    pop        ecx
 00512F14    pop        ecx
 00512F15    mov        dword ptr fs:[eax],edx
 00512F18    push       512F2D
 00512F1D    lea        eax,[ebp-0C]
 00512F20    call       @LStrClr
 00512F25    ret
<00512F26    jmp        @HandleFinally
<00512F2B    jmp        00512F1D
 00512F2D    fld        qword ptr [ebp-8]
 00512F30    pop        esi
 00512F31    pop        ebx
 00512F32    mov        esp,ebp
 00512F34    pop        ebp
 00512F35    ret
*}
//end;

//00512F38
//procedure sub_00512F38(?:?);
//begin
{*
 00512F38    push       ebp
 00512F39    mov        ebp,esp
 00512F3B    add        esp,0FFFFFFEC
 00512F3E    push       ebx
 00512F3F    push       esi
 00512F40    xor        ecx,ecx
 00512F42    mov        dword ptr [ebp-14],ecx
 00512F45    mov        esi,edx
 00512F47    mov        ebx,eax
 00512F49    xor        eax,eax
 00512F4B    push       ebp
 00512F4C    push       512F96
 00512F51    push       dword ptr fs:[eax]
 00512F54    mov        dword ptr fs:[eax],esp
 00512F57    mov        cl,8
 00512F59    mov        edx,esi
 00512F5B    mov        eax,ebx
 00512F5D    call       004D4308
 00512F62    push       0
 00512F64    push       0
 00512F66    push       0
 00512F68    lea        ecx,[ebp-14]
 00512F6B    mov        edx,esi
 00512F6D    mov        eax,ebx
 00512F6F    mov        ebx,dword ptr [eax]
 00512F71    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 00512F74    mov        eax,dword ptr [ebp-14]
 00512F77    call       004BEE6C
 00512F7C    fstp       tbyte ptr [ebp-10]
 00512F7F    wait
 00512F80    xor        eax,eax
 00512F82    pop        edx
 00512F83    pop        ecx
 00512F84    pop        ecx
 00512F85    mov        dword ptr fs:[eax],edx
 00512F88    push       512F9D
 00512F8D    lea        eax,[ebp-14]
 00512F90    call       @LStrClr
 00512F95    ret
<00512F96    jmp        @HandleFinally
<00512F9B    jmp        00512F8D
 00512F9D    fld        tbyte ptr [ebp-10]
 00512FA0    pop        esi
 00512FA1    pop        ebx
 00512FA2    mov        esp,ebp
 00512FA4    pop        ebp
 00512FA5    ret
*}
//end;

//00512FA8
//procedure sub_00512FA8(?:?; ?:?);
//begin
{*
 00512FA8    push       ebp
 00512FA9    mov        ebp,esp
 00512FAB    push       0
 00512FAD    push       0
 00512FAF    push       0
 00512FB1    push       ebx
 00512FB2    push       esi
 00512FB3    mov        dword ptr [ebp-4],ecx
 00512FB6    mov        esi,edx
 00512FB8    mov        ebx,eax
 00512FBA    xor        eax,eax
 00512FBC    push       ebp
 00512FBD    push       513010
 00512FC2    push       dword ptr fs:[eax]
 00512FC5    mov        dword ptr fs:[eax],esp
 00512FC8    mov        cl,0B
 00512FCA    mov        edx,esi
 00512FCC    mov        eax,ebx
 00512FCE    call       004D4308
 00512FD3    lea        ecx,[ebp-0C]
 00512FD6    mov        edx,esi
 00512FD8    mov        eax,ebx
 00512FDA    mov        ebx,dword ptr [eax]
 00512FDC    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 00512FDF    mov        eax,dword ptr [ebp-0C]
 00512FE2    lea        edx,[ebp-8]
 00512FE5    call       00511DD4
 00512FEA    mov        eax,dword ptr [ebp-8]
 00512FED    mov        edx,dword ptr [ebp-4]
 00512FF0    call       004BF678
 00512FF5    xor        eax,eax
 00512FF7    pop        edx
 00512FF8    pop        ecx
 00512FF9    pop        ecx
 00512FFA    mov        dword ptr fs:[eax],edx
 00512FFD    push       513017
 00513002    lea        eax,[ebp-0C]
 00513005    mov        edx,2
 0051300A    call       @LStrArrayClr
 0051300F    ret
<00513010    jmp        @HandleFinally
<00513015    jmp        00513002
 00513017    pop        esi
 00513018    pop        ebx
 00513019    mov        esp,ebp
 0051301B    pop        ebp
 0051301C    ret
*}
//end;

//00513020
//procedure sub_00513020(?:?);
//begin
{*
 00513020    push       ebp
 00513021    mov        ebp,esp
 00513023    add        esp,0FFFFFFEC
 00513026    push       ebx
 00513027    push       esi
 00513028    xor        ecx,ecx
 0051302A    mov        dword ptr [ebp-0C],ecx
 0051302D    mov        esi,edx
 0051302F    mov        ebx,eax
 00513031    xor        eax,eax
 00513033    push       ebp
 00513034    push       5130B3
 00513039    push       dword ptr fs:[eax]
 0051303C    mov        dword ptr fs:[eax],esp
 0051303F    mov        cl,0C
 00513041    mov        edx,esi
 00513043    mov        eax,ebx
 00513045    call       004D4308
 0051304A    lea        ecx,[ebp-0C]
 0051304D    mov        edx,esi
 0051304F    mov        eax,ebx
 00513051    mov        ebx,dword ptr [eax]
 00513053    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 00513056    mov        edx,dword ptr [ebp-0C]
 00513059    mov        eax,5130CC; '????-??-??*'
 0051305E    call       004BE568
 00513063    test       al,al
>00513065    je         00513083
 00513067    mov        eax,dword ptr [ebp-0C]
 0051306A    call       004BF8B0
 0051306F    call       @TRUNC
 00513074    mov        dword ptr [ebp-14],eax
 00513077    mov        dword ptr [ebp-10],edx
 0051307A    fild       qword ptr [ebp-14]
 0051307D    fstp       qword ptr [ebp-8]
 00513080    wait
>00513081    jmp        0051309D
 00513083    mov        eax,dword ptr [ebp-0C]
 00513086    call       004BFB00
 0051308B    call       @TRUNC
 00513090    mov        dword ptr [ebp-14],eax
 00513093    mov        dword ptr [ebp-10],edx
 00513096    fild       qword ptr [ebp-14]
 00513099    fstp       qword ptr [ebp-8]
 0051309C    wait
 0051309D    xor        eax,eax
 0051309F    pop        edx
 005130A0    pop        ecx
 005130A1    pop        ecx
 005130A2    mov        dword ptr fs:[eax],edx
 005130A5    push       5130BA
 005130AA    lea        eax,[ebp-0C]
 005130AD    call       @LStrClr
 005130B2    ret
<005130B3    jmp        @HandleFinally
<005130B8    jmp        005130AA
 005130BA    fld        qword ptr [ebp-8]
 005130BD    pop        esi
 005130BE    pop        ebx
 005130BF    mov        esp,ebp
 005130C1    pop        ebp
 005130C2    ret
*}
//end;

//005130D8
//procedure sub_005130D8(?:?);
//begin
{*
 005130D8    push       ebp
 005130D9    mov        ebp,esp
 005130DB    add        esp,0FFFFFFF4
 005130DE    push       ebx
 005130DF    push       esi
 005130E0    xor        ecx,ecx
 005130E2    mov        dword ptr [ebp-0C],ecx
 005130E5    mov        esi,edx
 005130E7    mov        ebx,eax
 005130E9    xor        eax,eax
 005130EB    push       ebp
 005130EC    push       513159
 005130F1    push       dword ptr fs:[eax]
 005130F4    mov        dword ptr fs:[eax],esp
 005130F7    mov        cl,0D
 005130F9    mov        edx,esi
 005130FB    mov        eax,ebx
 005130FD    call       004D4308
 00513102    lea        ecx,[ebp-0C]
 00513105    mov        edx,esi
 00513107    mov        eax,ebx
 00513109    mov        ebx,dword ptr [eax]
 0051310B    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 0051310E    mov        edx,dword ptr [ebp-0C]
 00513111    mov        eax,513174; '*??:??:??*'
 00513116    call       004BE568
 0051311B    test       al,al
>0051311D    je         00513132
 0051311F    mov        eax,dword ptr [ebp-0C]
 00513122    call       004BF8B0
 00513127    call       @FRAC
 0051312C    fstp       qword ptr [ebp-8]
 0051312F    wait
>00513130    jmp        00513143
 00513132    mov        eax,dword ptr [ebp-0C]
 00513135    call       004BFB00
 0051313A    call       @FRAC
 0051313F    fstp       qword ptr [ebp-8]
 00513142    wait
 00513143    xor        eax,eax
 00513145    pop        edx
 00513146    pop        ecx
 00513147    pop        ecx
 00513148    mov        dword ptr fs:[eax],edx
 0051314B    push       513160
 00513150    lea        eax,[ebp-0C]
 00513153    call       @LStrClr
 00513158    ret
<00513159    jmp        @HandleFinally
<0051315E    jmp        00513150
 00513160    fld        qword ptr [ebp-8]
 00513163    pop        esi
 00513164    pop        ebx
 00513165    mov        esp,ebp
 00513167    pop        ebp
 00513168    ret
*}
//end;

//00513180
//procedure sub_00513180(?:?);
//begin
{*
 00513180    push       ebp
 00513181    mov        ebp,esp
 00513183    add        esp,0FFFFFFF4
 00513186    push       ebx
 00513187    push       esi
 00513188    xor        ecx,ecx
 0051318A    mov        dword ptr [ebp-0C],ecx
 0051318D    mov        esi,edx
 0051318F    mov        ebx,eax
 00513191    xor        eax,eax
 00513193    push       ebp
 00513194    push       5131F7
 00513199    push       dword ptr fs:[eax]
 0051319C    mov        dword ptr fs:[eax],esp
 0051319F    mov        cl,0E
 005131A1    mov        edx,esi
 005131A3    mov        eax,ebx
 005131A5    call       004D4308
 005131AA    lea        ecx,[ebp-0C]
 005131AD    mov        edx,esi
 005131AF    mov        eax,ebx
 005131B1    mov        ebx,dword ptr [eax]
 005131B3    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 005131B6    mov        edx,dword ptr [ebp-0C]
 005131B9    mov        eax,513210; '????-??-??*'
 005131BE    call       004BE568
 005131C3    test       al,al
>005131C5    je         005131D5
 005131C7    mov        eax,dword ptr [ebp-0C]
 005131CA    call       004BF8B0
 005131CF    fstp       qword ptr [ebp-8]
 005131D2    wait
>005131D3    jmp        005131E1
 005131D5    mov        eax,dword ptr [ebp-0C]
 005131D8    call       004BFB00
 005131DD    fstp       qword ptr [ebp-8]
 005131E0    wait
 005131E1    xor        eax,eax
 005131E3    pop        edx
 005131E4    pop        ecx
 005131E5    pop        ecx
 005131E6    mov        dword ptr fs:[eax],edx
 005131E9    push       5131FE
 005131EE    lea        eax,[ebp-0C]
 005131F1    call       @LStrClr
 005131F6    ret
<005131F7    jmp        @HandleFinally
<005131FC    jmp        005131EE
 005131FE    fld        qword ptr [ebp-8]
 00513201    pop        esi
 00513202    pop        ebx
 00513203    mov        esp,ebp
 00513205    pop        ebp
 00513206    ret
*}
//end;

//0051321C
//procedure sub_0051321C(?:?; ?:?);
//begin
{*
 0051321C    push       ebp
 0051321D    mov        ebp,esp
 0051321F    push       ecx
 00513220    mov        ecx,5
 00513225    push       0
 00513227    push       0
 00513229    dec        ecx
<0051322A    jne        00513225
 0051322C    xchg       ecx,dword ptr [ebp-4]
 0051322F    push       ebx
 00513230    push       esi
 00513231    push       edi
 00513232    mov        dword ptr [ebp-4],ecx
 00513235    mov        esi,edx
 00513237    mov        ebx,eax
 00513239    xor        eax,eax
 0051323B    push       ebp
 0051323C    push       51349E
 00513241    push       dword ptr fs:[eax]
 00513244    mov        dword ptr fs:[eax],esp
 00513247    mov        edx,esi
 00513249    mov        eax,ebx
 0051324B    call       004D4450
 00513250    mov        eax,ebx
 00513252    call       004D42AC
 00513257    mov        eax,dword ptr [ebx+10]; TZPostgreSQLResultSet.?f10:dword
 0051325A    cmp        eax,1
>0051325D    jl         00513264
 0051325F    cmp        eax,dword ptr [ebx+14]; TZPostgreSQLResultSet.?f14:Integer
>00513262    jle        00513285
 00513264    lea        edx,[ebp-0C]
 00513267    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 0051326C    call       LoadResString
 00513271    mov        ecx,dword ptr [ebp-0C]
 00513274    mov        dl,1
 00513276    mov        eax,[004C6D20]; EZSQLException
 0051327B    call       EZSQLException.Create; EZSQLException.Create
 00513280    call       @RaiseExcept
 00513285    lea        edx,[ebp-10]
 00513288    mov        eax,ebx
 0051328A    mov        ecx,dword ptr [eax]
 0051328C    call       dword ptr [ecx+0C4]; TZPostgreSQLResultSet.sub_004D4E80
 00513292    mov        eax,dword ptr [ebp-10]
 00513295    mov        edx,esi
 00513297    mov        ecx,dword ptr [eax]
 00513299    call       dword ptr [ecx+48]
 0051329C    cmp        al,11
>0051329E    jne        00513347
 005132A4    lea        edx,[ebp-18]
 005132A7    mov        eax,dword ptr [ebx+30]; TZPostgreSQLResultSet.?f30:IZStatement
 005132AA    mov        ecx,dword ptr [eax]
 005132AC    call       dword ptr [ecx+88]
 005132B2    mov        edx,dword ptr [ebp-18]
 005132B5    lea        eax,[ebp-14]
 005132B8    mov        ecx,5134AC; ['{8E62EA93-5A49-4F20-928A-0EA44ABCE5DB}']
 005132BD    call       @IntfCast
 005132C2    mov        eax,dword ptr [ebp-14]
 005132C5    mov        edx,dword ptr [eax]
 005132C7    call       dword ptr [edx+94]
 005132CD    test       al,al
>005132CF    je         00513347
 005132D1    mov        eax,esi
 005132D3    sub        eax,1
>005132D6    jno        005132DD
 005132D8    call       @IntOver
 005132DD    push       eax
 005132DE    mov        ecx,dword ptr [ebx+10]; TZPostgreSQLResultSet.?f10:dword
 005132E1    sub        ecx,1
>005132E4    jno        005132EB
 005132E6    call       @IntOver
 005132EB    mov        edx,dword ptr [ebx+40]; TZPostgreSQLResultSet.?f40:dword
 005132EE    mov        eax,dword ptr [ebx+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 005132F1    mov        edi,dword ptr [eax]
 005132F3    call       dword ptr [edi+0E8]
 005132F9    test       eax,eax
>005132FB    jne        00513317
 005132FD    lea        ecx,[ebp-1C]
 00513300    mov        edx,esi
 00513302    mov        eax,ebx
 00513304    mov        esi,dword ptr [eax]
 00513306    call       dword ptr [esi+18]; TZPostgreSQLResultSet.sub_00512AAC
 00513309    mov        eax,dword ptr [ebp-1C]
 0051330C    xor        edx,edx
 0051330E    call       StrToIntDef
 00513313    mov        esi,eax
>00513315    jmp        00513319
 00513317    xor        esi,esi
 00513319    push       0
 0051331B    push       0
 0051331D    mov        eax,dword ptr [ebx+3C]; TZPostgreSQLResultSet.?f3C:dword
 00513320    push       eax
 00513321    push       esi
 00513322    mov        ecx,dword ptr [ebx+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00513325    mov        dl,1
 00513327    mov        eax,[0051255C]; TZPostgreSQLBlob
 0051332C    call       TZPostgreSQLBlob.Create; TZPostgreSQLBlob.Create
 00513331    mov        edx,eax
 00513333    test       edx,edx
>00513335    je         0051333A
 00513337    sub        edx,0FFFFFFE8
 0051333A    mov        eax,dword ptr [ebp-4]
 0051333D    call       @IntfCopy
>00513342    jmp        00513453
 00513347    mov        eax,esi
 00513349    sub        eax,1
>0051334C    jno        00513353
 0051334E    call       @IntOver
 00513353    push       eax
 00513354    mov        ecx,dword ptr [ebx+10]; TZPostgreSQLResultSet.?f10:dword
 00513357    sub        ecx,1
>0051335A    jno        00513361
 0051335C    call       @IntOver
 00513361    mov        edx,dword ptr [ebx+40]; TZPostgreSQLResultSet.?f40:dword
 00513364    mov        eax,dword ptr [ebx+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 00513367    mov        edi,dword ptr [eax]
 00513369    call       dword ptr [edi+0E8]
 0051336F    test       eax,eax
>00513371    jne        00513434
 00513377    xor        eax,eax
 00513379    mov        dword ptr [ebp-8],eax
 0051337C    xor        eax,eax
 0051337E    push       ebp
 0051337F    push       51342D
 00513384    push       dword ptr fs:[eax]
 00513387    mov        dword ptr fs:[eax],esp
 0051338A    lea        edx,[ebp-20]
 0051338D    mov        eax,ebx
 0051338F    mov        ecx,dword ptr [eax]
 00513391    call       dword ptr [ecx+0C4]; TZPostgreSQLResultSet.sub_004D4E80
 00513397    mov        eax,dword ptr [ebp-20]
 0051339A    mov        edx,esi
 0051339C    mov        ecx,dword ptr [eax]
 0051339E    call       dword ptr [ecx+48]
 005133A1    cmp        al,11
>005133A3    jne        005133D3
 005133A5    lea        ecx,[ebp-28]
 005133A8    mov        edx,esi
 005133AA    mov        eax,ebx
 005133AC    mov        esi,dword ptr [eax]
 005133AE    call       dword ptr [esi+18]; TZPostgreSQLResultSet.sub_00512AAC
 005133B1    mov        edx,dword ptr [ebp-28]
 005133B4    lea        ecx,[ebp-24]
 005133B7    mov        eax,dword ptr [ebx+44]; TZPostgreSQLResultSet.?f44:IZPostgreSQLPlainDriver
 005133BA    mov        ebx,dword ptr [eax]
 005133BC    call       dword ptr [ebx+1C]
 005133BF    mov        ecx,dword ptr [ebp-24]
 005133C2    mov        dl,1
 005133C4    mov        eax,[0041CC74]; TStringStream
 005133C9    call       TStringStream.Create; TStringStream.Create
 005133CE    mov        dword ptr [ebp-8],eax
>005133D1    jmp        005133F1
 005133D3    lea        ecx,[ebp-2C]
 005133D6    mov        edx,esi
 005133D8    mov        eax,ebx
 005133DA    mov        ebx,dword ptr [eax]
 005133DC    call       dword ptr [ebx+18]; TZPostgreSQLResultSet.sub_00512AAC
 005133DF    mov        ecx,dword ptr [ebp-2C]
 005133E2    mov        dl,1
 005133E4    mov        eax,[0041CC74]; TStringStream
 005133E9    call       TStringStream.Create; TStringStream.Create
 005133EE    mov        dword ptr [ebp-8],eax
 005133F1    mov        ecx,dword ptr [ebp-8]
 005133F4    mov        dl,1
 005133F6    mov        eax,[004D3F38]; TZAbstractBlob
 005133FB    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 00513400    mov        edx,eax
 00513402    test       edx,edx
>00513404    je         00513409
 00513406    sub        edx,0FFFFFFE8
 00513409    mov        eax,dword ptr [ebp-4]
 0051340C    call       @IntfCopy
 00513411    xor        eax,eax
 00513413    pop        edx
 00513414    pop        ecx
 00513415    pop        ecx
 00513416    mov        dword ptr fs:[eax],edx
 00513419    push       513453
 0051341E    cmp        dword ptr [ebp-8],0
>00513422    je         0051342C
 00513424    mov        eax,dword ptr [ebp-8]
 00513427    call       TObject.Free
 0051342C    ret
<0051342D    jmp        @HandleFinally
<00513432    jmp        0051341E
 00513434    xor        ecx,ecx
 00513436    mov        dl,1
 00513438    mov        eax,[004D3F38]; TZAbstractBlob
 0051343D    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 00513442    mov        edx,eax
 00513444    test       edx,edx
>00513446    je         0051344B
 00513448    sub        edx,0FFFFFFE8
 0051344B    mov        eax,dword ptr [ebp-4]
 0051344E    call       @IntfCopy
 00513453    xor        eax,eax
 00513455    pop        edx
 00513456    pop        ecx
 00513457    pop        ecx
 00513458    mov        dword ptr fs:[eax],edx
 0051345B    push       5134A5
 00513460    lea        eax,[ebp-2C]
 00513463    mov        edx,3
 00513468    call       @LStrArrayClr
 0051346D    lea        eax,[ebp-20]
 00513470    call       @IntfClear
 00513475    lea        eax,[ebp-1C]
 00513478    call       @LStrClr
 0051347D    lea        eax,[ebp-18]
 00513480    call       @IntfClear
 00513485    lea        eax,[ebp-14]
 00513488    call       @IntfClear
 0051348D    lea        eax,[ebp-10]
 00513490    call       @IntfClear
 00513495    lea        eax,[ebp-0C]
 00513498    call       @LStrClr
 0051349D    ret
<0051349E    jmp        @HandleFinally
<005134A3    jmp        00513460
 005134A5    pop        edi
 005134A6    pop        esi
 005134A7    pop        ebx
 005134A8    mov        esp,ebp
 005134AA    pop        ebp
 005134AB    ret
*}
//end;

//005134BC
//function sub_005134BC(?:?):?;
//begin
{*
 005134BC    push       ebp
 005134BD    mov        ebp,esp
 005134BF    push       ebx
 005134C0    push       esi
 005134C1    push       edi
 005134C2    mov        esi,edx
 005134C4    mov        edi,eax
 005134C6    mov        eax,edi
 005134C8    call       004D42AC
 005134CD    xor        ebx,ebx
 005134CF    mov        eax,dword ptr [edi+18]; TZPostgreSQLResultSet.?f18:dword
 005134D2    test       eax,eax
>005134D4    jle        005134DA
 005134D6    cmp        eax,esi
>005134D8    jl         00513537
 005134DA    test       esi,esi
>005134DC    jge        005134FC
 005134DE    mov        eax,dword ptr [edi+14]; TZPostgreSQLResultSet.?f14:Integer
 005134E1    sub        eax,esi
>005134E3    jno        005134EA
 005134E5    call       @IntOver
 005134EA    add        eax,1
>005134ED    jno        005134F4
 005134EF    call       @IntOver
 005134F4    mov        esi,eax
 005134F6    test       esi,esi
>005134F8    jge        005134FC
 005134FA    xor        esi,esi
 005134FC    cmp        byte ptr [edi+24],0; TZPostgreSQLResultSet.?f24:byte
>00513500    je         00513530
 00513502    test       esi,esi
>00513504    jl         0051352C
 00513506    mov        eax,dword ptr [edi+14]; TZPostgreSQLResultSet.?f14:Integer
 00513509    add        eax,1
>0051350C    jno        00513513
 0051350E    call       @IntOver
 00513513    cmp        esi,eax
>00513515    jg         0051352C
 00513517    mov        dword ptr [edi+10],esi; TZPostgreSQLResultSet.?f10:dword
 0051351A    cmp        esi,1
>0051351D    jl         00513524
 0051351F    cmp        esi,dword ptr [edi+14]; TZPostgreSQLResultSet.?f14:Integer
>00513522    jle        00513528
 00513524    xor        ebx,ebx
>00513526    jmp        00513537
 00513528    mov        bl,1
>0051352A    jmp        00513537
 0051352C    xor        ebx,ebx
>0051352E    jmp        00513537
 00513530    mov        eax,edi
 00513532    call       004D4204
 00513537    mov        eax,ebx
 00513539    pop        edi
 0051353A    pop        esi
 0051353B    pop        ebx
 0051353C    pop        ebp
 0051353D    ret
*}
//end;

//00513540
//constructor TZPostgreSQLBlob.Create(?:TZPostgreSQLBlob; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00513540    push       ebp
 00513541    mov        ebp,esp
 00513543    push       ecx
 00513544    push       ebx
 00513545    push       esi
 00513546    test       dl,dl
>00513548    je         00513552
 0051354A    add        esp,0FFFFFFF0
 0051354D    call       @ClassCreate
 00513552    mov        dword ptr [ebp-4],ecx
 00513555    mov        ebx,edx
 00513557    mov        esi,eax
 00513559    mov        eax,dword ptr [ebp-4]
 0051355C    call       @IntfAddRef
 00513561    xor        eax,eax
 00513563    push       ebp
 00513564    push       5135AC
 00513569    push       dword ptr fs:[eax]
 0051356C    mov        dword ptr fs:[eax],esp
 0051356F    mov        eax,dword ptr [ebp+10]
 00513572    push       eax
 00513573    mov        ecx,dword ptr [ebp+14]
 00513576    xor        edx,edx
 00513578    mov        eax,esi
 0051357A    call       TZAbstractBlob.Create
 0051357F    mov        eax,dword ptr [ebp+0C]
 00513582    mov        dword ptr [esi+1C],eax; TZPostgreSQLBlob.?f1C:dword
 00513585    mov        eax,dword ptr [ebp+8]
 00513588    mov        dword ptr [esi+20],eax; TZPostgreSQLBlob.?f20:dword
 0051358B    lea        eax,[esi+24]; TZPostgreSQLBlob.?f24:IZPostgreSQLPlainDriver
 0051358E    mov        edx,dword ptr [ebp-4]
 00513591    call       @IntfCopy
 00513596    xor        eax,eax
 00513598    pop        edx
 00513599    pop        ecx
 0051359A    pop        ecx
 0051359B    mov        dword ptr fs:[eax],edx
 0051359E    push       5135B3
 005135A3    lea        eax,[ebp-4]
 005135A6    call       @IntfClear
 005135AB    ret
<005135AC    jmp        @HandleFinally
<005135B1    jmp        005135A3
 005135B3    mov        eax,esi
 005135B5    test       bl,bl
>005135B7    je         005135C8
 005135B9    call       @AfterConstruction
 005135BE    pop        dword ptr fs:[0]
 005135C5    add        esp,0C
 005135C8    mov        eax,esi
 005135CA    pop        esi
 005135CB    pop        ebx
 005135CC    pop        ecx
 005135CD    pop        ebp
 005135CE    ret        10
*}
//end;

//005135D4
destructor TZPostgreSQLBlob.Destroy;
begin
{*
 005135D4    push       ebp
 005135D5    mov        ebp,esp
 005135D7    push       ebx
 005135D8    push       esi
 005135D9    call       @BeforeDestruction
 005135DE    mov        ebx,edx
 005135E0    mov        esi,eax
 005135E2    mov        edx,ebx
 005135E4    and        dl,0FC
 005135E7    mov        eax,esi
 005135E9    call       TZAbstractBlob.Destroy
 005135EE    test       bl,bl
>005135F0    jle        005135F9
 005135F2    mov        eax,esi
 005135F4    call       @ClassDestroy
 005135F9    pop        esi
 005135FA    pop        ebx
 005135FB    pop        ebp
 005135FC    ret
*}
end;

//00513604
//procedure sub_00513604(?:TZPostgreSQLBlob);
//begin
{*
 00513604    push       ebp
 00513605    mov        ebp,esp
 00513607    add        esp,0FFFFFBF4
 0051360D    push       ebx
 0051360E    push       esi
 0051360F    push       edi
 00513610    mov        ebx,eax
 00513612    cmp        byte ptr [ebx+14],0; TZPostgreSQLBlob.?f14:byte
>00513616    jne        00513718
 0051361C    cmp        dword ptr [ebx+20],0; TZPostgreSQLBlob.?f20:dword
>00513620    jle        00513718
 00513626    push       40000
 0051362B    mov        ecx,dword ptr [ebx+20]; TZPostgreSQLBlob.?f20:dword
 0051362E    mov        edx,dword ptr [ebx+1C]; TZPostgreSQLBlob.?f1C:dword
 00513631    mov        eax,dword ptr [ebx+24]; TZPostgreSQLBlob.?f24:IZPostgreSQLPlainDriver
 00513634    mov        esi,dword ptr [eax]
 00513636    call       dword ptr [esi+0F4]
 0051363C    mov        dword ptr [ebp-4],eax
 0051363F    push       4
 00513641    push       513728; 'Read Large Object'
 00513646    push       0
 00513648    mov        ecx,dword ptr [ebx+1C]; TZPostgreSQLBlob.?f1C:dword
 0051364B    mov        edx,dword ptr [ebx+24]; TZPostgreSQLBlob.?f24:IZPostgreSQLPlainDriver
 0051364E    xor        eax,eax
 00513650    call       00511EF0
 00513655    xor        eax,eax
 00513657    mov        dword ptr [ebp-8],eax
 0051365A    cmp        dword ptr [ebp-4],0
>0051365E    jl         00513700
 00513664    mov        dl,1
 00513666    mov        eax,[0041CBF8]; TMemoryStream
 0051366B    call       TObject.Create; TMemoryStream.Create
 00513670    mov        dword ptr [ebp-8],eax
 00513673    lea        eax,[ebp-409]
 00513679    push       eax
 0051367A    push       400
 0051367F    mov        ecx,dword ptr [ebp-4]
 00513682    mov        edx,dword ptr [ebx+1C]; TZPostgreSQLBlob.?f1C:dword
 00513685    mov        eax,dword ptr [ebx+24]; TZPostgreSQLBlob.?f24:IZPostgreSQLPlainDriver
 00513688    mov        esi,dword ptr [eax]
 0051368A    call       dword ptr [esi+0FC]
 00513690    mov        esi,eax
 00513692    test       esi,esi
>00513694    jle        005136DB
 00513696    mov        eax,dword ptr [ebp-8]
 00513699    mov        edx,dword ptr [eax]
 0051369B    call       dword ptr [edx]; TStream.GetSize
 0051369D    push       edx
 0051369E    push       eax
 0051369F    mov        eax,esi
 005136A1    cdq
 005136A2    add        eax,dword ptr [esp]
 005136A5    adc        edx,dword ptr [esp+4]
>005136A9    jno        005136B0
 005136AB    call       @IntOver
 005136B0    add        esp,8
 005136B3    push       eax
 005136B4    sar        eax,1F
 005136B7    cmp        eax,edx
 005136B9    pop        eax
>005136BA    je         005136C1
 005136BC    call       @BoundErr
 005136C1    mov        edx,eax
 005136C3    mov        eax,dword ptr [ebp-8]
 005136C6    mov        ecx,dword ptr [eax]
 005136C8    call       dword ptr [ecx+4]; TMemoryStream.SetSize
 005136CB    lea        edx,[ebp-409]
 005136D1    mov        ecx,esi
 005136D3    mov        eax,dword ptr [ebp-8]
 005136D6    mov        edi,dword ptr [eax]
 005136D8    call       dword ptr [edi+10]; TMemoryStream.Write
 005136DB    cmp        esi,400
<005136E1    jge        00513673
 005136E3    mov        ecx,dword ptr [ebp-4]
 005136E6    mov        edx,dword ptr [ebx+1C]; TZPostgreSQLBlob.?f1C:dword
 005136E9    mov        eax,dword ptr [ebx+24]; TZPostgreSQLBlob.?f24:IZPostgreSQLPlainDriver
 005136EC    mov        esi,dword ptr [eax]
 005136EE    call       dword ptr [esi+0F8]
 005136F4    push       0
 005136F6    push       0
 005136F8    mov        eax,dword ptr [ebp-8]
 005136FB    call       TStream.SetPosition
 00513700    mov        edx,dword ptr [ebp-8]
 00513703    mov        eax,ebx
 00513705    mov        ecx,dword ptr [eax]
 00513707    call       dword ptr [ecx+28]; TZPostgreSQLBlob.sub_004D5E5C
 0051370A    cmp        dword ptr [ebp-8],0
>0051370E    je         00513718
 00513710    mov        eax,dword ptr [ebp-8]
 00513713    call       TObject.Free
 00513718    pop        edi
 00513719    pop        esi
 0051371A    pop        ebx
 0051371B    mov        esp,ebp
 0051371D    pop        ebp
 0051371E    ret
*}
//end;

//005138C8
procedure sub_005138C8;
begin
{*
 005138C8    push       ebp
 005138C9    mov        ebp,esp
 005138CB    push       ebx
 005138CC    mov        ebx,eax
 005138CE    mov        eax,ebx
 005138D0    call       00513604
 005138D5    mov        eax,ebx
 005138D7    call       004D5B3C
 005138DC    pop        ebx
 005138DD    pop        ebp
 005138DE    ret
*}
end;

//005138E0
//procedure sub_005138E0(?:?);
//begin
{*
 005138E0    push       ebp
 005138E1    mov        ebp,esp
 005138E3    push       ebx
 005138E4    push       esi
 005138E5    mov        esi,edx
 005138E7    mov        ebx,eax
 005138E9    mov        eax,dword ptr [ebx+0C]; TZPostgreSQLBlob.?fC:Pointer
 005138EC    push       eax
 005138ED    mov        eax,dword ptr [ebx+10]; TZPostgreSQLBlob.?f10:Longint
 005138F0    push       eax
 005138F1    mov        eax,dword ptr [ebx+1C]; TZPostgreSQLBlob.?f1C:dword
 005138F4    push       eax
 005138F5    mov        eax,dword ptr [ebx+20]; TZPostgreSQLBlob.?f20:dword
 005138F8    push       eax
 005138F9    mov        ecx,dword ptr [ebx+24]; TZPostgreSQLBlob.?f24:IZPostgreSQLPlainDriver
 005138FC    mov        dl,1
 005138FE    mov        eax,[0051255C]; TZPostgreSQLBlob
 00513903    call       TZPostgreSQLBlob.Create; TZPostgreSQLBlob.Create
 00513908    mov        edx,eax
 0051390A    test       edx,edx
>0051390C    je         00513911
 0051390E    sub        edx,0FFFFFFE8
 00513911    mov        eax,esi
 00513913    call       @IntfCopy
 00513918    pop        esi
 00513919    pop        ebx
 0051391A    pop        ebp
 0051391B    ret
*}
//end;

//0051391C
procedure sub_0051391C;
begin
{*
 0051391C    push       ebp
 0051391D    mov        ebp,esp
 0051391F    push       ebx
 00513920    mov        ebx,eax
 00513922    mov        eax,ebx
 00513924    call       00513604
 00513929    mov        eax,ebx
 0051392B    call       004D5E0C
 00513930    pop        ebx
 00513931    pop        ebp
 00513932    ret
*}
end;

end.