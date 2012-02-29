{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit209;

interface

uses
  Classes, Windows, Graphics, _Unit136, _Unit134, ZPlainMySqlDriver, _Unit139;

type
  TZMySQLResultSetMetadata = class(TZAbstractResultSetMetadata)
  public
    procedure sub_00504160(); virtual;
    //function sub_0050412C(?:?):?; virtual;
  end;
  TZMySQLResultSet = class(TZAbstractResultSet)
  public
    f3C:dword;//f3C
    f40:dword;//f40
    f44:dword;//f44
    f48:IZMySQLPlainDriver;//f48
    f4C:byte;//f4C
    destructor Destroy; virtual;
    procedure sub_005042A4; virtual;
    //function sub_005051BC:?; virtual;
    procedure sub_005044F8; virtual;
    //function sub_00504524(?:?):?; virtual;
    //function sub_00504628(?:?):?; virtual;
    //procedure sub_005046C0(?:?; ?:?); virtual;
    //function sub_005047AC(?:?):?; virtual;
    //function sub_005048A0(?:?):?; virtual;
    //function sub_00504908(?:?):?; virtual;
    //function sub_00504970(?:?):?; virtual;
    //procedure sub_005049D8(?:?); virtual;
    //procedure sub_00504A50(?:?); virtual;
    //procedure sub_00504AC8(?:?); virtual;
    //procedure sub_00504B40(?:?); virtual;
    //procedure sub_00504BB8(?:?; ?:?); virtual;
    //procedure sub_00504C20(?:?); virtual;
    //procedure sub_00504D54(?:?); virtual;
    //procedure sub_00504E60(?:?); virtual;
    //function sub_00504F28(?:?):?; virtual;
    //function sub_00504F90():?; virtual;
    //function sub_00504FA0(?:?):?; virtual;
    //procedure sub_00505008(?:?; ?:?); virtual;
    //function sub_005050F8(?:?):?; virtual;
    //constructor Create(?:TZMySQLResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
  end;
  TZMySQLCachedResolver = class(TZGenericCachedResolver)
  public
    f30:dword;//f30
    f34:IZMySQLPlainDriver;//f34
    f38:dword;//f38
    //procedure sub_005054A4(?:?; ?:?); virtual;
    //procedure sub_00505310(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00505390(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZMySQLCachedResolver; _Dv__:Boolean; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//0050412C
//function sub_0050412C(?:?):?;
//begin
{*
 0050412C    push       ebp
 0050412D    mov        ebp,esp
 0050412F    push       ebx
 00504130    push       esi
 00504131    mov        esi,edx
 00504133    mov        ebx,eax
 00504135    cmp        byte ptr [ebx+0C],0; TZMySQLResultSetMetadata.?fC:byte
>00504139    jne        00504142
 0050413B    mov        eax,ebx
 0050413D    call       004D7028
 00504142    mov        edx,esi
 00504144    sub        edx,1
>00504147    jno        0050414E
 00504149    call       @IntOver
 0050414E    mov        eax,dword ptr [ebx+24]; TZMySQLResultSetMetadata.?f24:dword
 00504151    mov        eax,dword ptr [eax+28]
 00504154    call       TObjectList.GetItem
 00504159    mov        al,byte ptr [eax+2C]
 0050415C    pop        esi
 0050415D    pop        ebx
 0050415E    pop        ebp
 0050415F    ret
*}
//end;

//00504160
procedure sub_00504160();
begin
{*
 00504160    push       ebp
 00504161    mov        ebp,esp
 00504163    call       004D6510
 00504168    pop        ebp
 00504169    ret
*}
end;

//0050416C
//constructor TZMySQLResultSet.Create(?:TZMySQLResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0050416C    push       ebp
 0050416D    mov        ebp,esp
 0050416F    push       0
 00504171    push       0
 00504173    push       0
 00504175    push       ebx
 00504176    push       esi
 00504177    test       dl,dl
>00504179    je         00504183
 0050417B    add        esp,0FFFFFFF0
 0050417E    call       @ClassCreate
 00504183    mov        dword ptr [ebp-4],ecx
 00504186    mov        ebx,edx
 00504188    mov        esi,eax
 0050418A    mov        eax,dword ptr [ebp-4]
 0050418D    call       @IntfAddRef
 00504192    mov        eax,dword ptr [ebp+14]
 00504195    call       @IntfAddRef
 0050419A    mov        eax,dword ptr [ebp+10]
 0050419D    call       @LStrAddRef
 005041A2    xor        eax,eax
 005041A4    push       ebp
 005041A5    push       50424F
 005041AA    push       dword ptr fs:[eax]
 005041AD    mov        dword ptr fs:[eax],esp
 005041B0    mov        eax,dword ptr [ebp+10]
 005041B3    push       eax
 005041B4    mov        eax,dword ptr [ebp+10]
 005041B7    push       eax
 005041B8    push       esi
 005041B9    lea        edx,[ebp-0C]
 005041BC    mov        eax,dword ptr [ebp+14]
 005041BF    mov        ecx,dword ptr [eax]
 005041C1    call       dword ptr [ecx+88]
 005041C7    mov        eax,dword ptr [ebp-0C]
 005041CA    lea        edx,[ebp-8]
 005041CD    mov        ecx,dword ptr [eax]
 005041CF    call       dword ptr [ecx+64]
 005041D2    mov        ecx,dword ptr [ebp-8]
 005041D5    mov        dl,1
 005041D7    mov        eax,[00503D10]; TZMySQLResultSetMetadata
 005041DC    call       TZAbstractResultSetMetadata.Create; TZMySQLResultSetMetadata.Create
 005041E1    push       eax
 005041E2    mov        ecx,dword ptr [ebp+14]
 005041E5    xor        edx,edx
 005041E7    mov        eax,esi
 005041E9    call       004D3FC8
 005041EE    mov        eax,dword ptr [ebp+0C]
 005041F1    mov        dword ptr [esi+3C],eax; TZMySQLResultSet.?f3C:dword
 005041F4    xor        eax,eax
 005041F6    mov        dword ptr [esi+40],eax; TZMySQLResultSet.?f40:dword
 005041F9    xor        eax,eax
 005041FB    mov        dword ptr [esi+44],eax; TZMySQLResultSet.?f44:dword
 005041FE    lea        eax,[esi+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00504201    mov        edx,dword ptr [ebp-4]
 00504204    call       @IntfCopy
 00504209    mov        byte ptr [esi+25],0; TZMySQLResultSet.?f25:byte
 0050420D    mov        al,byte ptr [ebp+8]
 00504210    mov        byte ptr [esi+4C],al; TZMySQLResultSet.?f4C:byte
 00504213    mov        eax,esi
 00504215    mov        edx,dword ptr [eax]
 00504217    call       dword ptr [edx]; TZMySQLResultSet.sub_005042A4
 00504219    xor        eax,eax
 0050421B    pop        edx
 0050421C    pop        ecx
 0050421D    pop        ecx
 0050421E    mov        dword ptr fs:[eax],edx
 00504221    push       504256
 00504226    lea        eax,[ebp-0C]
 00504229    call       @IntfClear
 0050422E    lea        eax,[ebp-8]
 00504231    call       @IntfClear
 00504236    lea        eax,[ebp-4]
 00504239    call       @IntfClear
 0050423E    lea        eax,[ebp+10]
 00504241    call       @LStrClr
 00504246    lea        eax,[ebp+14]
 00504249    call       @IntfClear
 0050424E    ret
<0050424F    jmp        @HandleFinally
<00504254    jmp        00504226
 00504256    mov        eax,esi
 00504258    test       bl,bl
>0050425A    je         0050426B
 0050425C    call       @AfterConstruction
 00504261    pop        dword ptr fs:[0]
 00504268    add        esp,0C
 0050426B    mov        eax,esi
 0050426D    pop        esi
 0050426E    pop        ebx
 0050426F    mov        esp,ebp
 00504271    pop        ebp
 00504272    ret        10
*}
//end;

//00504278
destructor TZMySQLResultSet.Destroy;
begin
{*
 00504278    push       ebp
 00504279    mov        ebp,esp
 0050427B    push       ebx
 0050427C    push       esi
 0050427D    call       @BeforeDestruction
 00504282    mov        ebx,edx
 00504284    mov        esi,eax
 00504286    mov        edx,ebx
 00504288    and        dl,0FC
 0050428B    mov        eax,esi
 0050428D    call       TZAbstractResultSet.Destroy
 00504292    test       bl,bl
>00504294    jle        0050429D
 00504296    mov        eax,esi
 00504298    call       @ClassDestroy
 0050429D    pop        esi
 0050429E    pop        ebx
 0050429F    pop        ebp
 005042A0    ret
*}
end;

//005042A4
procedure sub_005042A4;
begin
{*
 005042A4    push       ebp
 005042A5    mov        ebp,esp
 005042A7    add        esp,0FFFFFFEC
 005042AA    push       ebx
 005042AB    push       esi
 005042AC    push       edi
 005042AD    xor        edx,edx
 005042AF    mov        dword ptr [ebp-14],edx
 005042B2    mov        dword ptr [ebp-10],edx
 005042B5    mov        ebx,eax
 005042B7    xor        eax,eax
 005042B9    push       ebp
 005042BA    push       5044E9
 005042BF    push       dword ptr fs:[eax]
 005042C2    mov        dword ptr fs:[eax],esp
 005042C5    cmp        byte ptr [ebx+25],1; TZMySQLResultSet.?f25:byte
>005042C9    jne        005042EC
 005042CB    lea        edx,[ebp-10]
 005042CE    mov        eax,[0061B624]; ^#122.sResString46:TResStringRec
 005042D3    call       LoadResString
 005042D8    mov        ecx,dword ptr [ebp-10]
 005042DB    mov        dl,1
 005042DD    mov        eax,[004C6D20]; EZSQLException
 005042E2    call       EZSQLException.Create; EZSQLException.Create
 005042E7    call       @RaiseExcept
 005042EC    cmp        byte ptr [ebx+4C],0; TZMySQLResultSet.?f4C:byte
>005042F0    je         0050430A
 005042F2    mov        edx,dword ptr [ebx+3C]; TZMySQLResultSet.?f3C:dword
 005042F5    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 005042F8    mov        ecx,dword ptr [eax]
 005042FA    call       dword ptr [ecx+0C8]
 00504300    mov        dword ptr [ebx+40],eax; TZMySQLResultSet.?f40:dword
 00504303    xor        eax,eax
 00504305    mov        dword ptr [ebx+14],eax; TZMySQLResultSet.?f14:Integer
>00504308    jmp        00504346
 0050430A    mov        edx,dword ptr [ebx+3C]; TZMySQLResultSet.?f3C:dword
 0050430D    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00504310    mov        ecx,dword ptr [eax]
 00504312    call       dword ptr [ecx+0C0]
 00504318    mov        esi,eax
 0050431A    mov        dword ptr [ebx+40],esi; TZMySQLResultSet.?f40:dword
 0050431D    test       esi,esi
>0050431F    je         00504341
 00504321    mov        edx,esi
 00504323    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00504326    mov        ecx,dword ptr [eax]
 00504328    call       dword ptr [ecx+140]
 0050432E    push       eax
 0050432F    sar        eax,1F
 00504332    cmp        eax,edx
 00504334    pop        eax
>00504335    je         0050433C
 00504337    call       @BoundErr
 0050433C    mov        dword ptr [ebx+14],eax; TZMySQLResultSet.?f14:Integer
>0050433F    jmp        00504346
 00504341    xor        eax,eax
 00504343    mov        dword ptr [ebx+14],eax; TZMySQLResultSet.?f14:Integer
 00504346    cmp        dword ptr [ebx+40],0; TZMySQLResultSet.?f40:dword
>0050434A    jne        0050436D
 0050434C    lea        edx,[ebp-14]
 0050434F    mov        eax,[0061B544]; ^#122.sResString28:TResStringRec
 00504354    call       LoadResString
 00504359    mov        ecx,dword ptr [ebp-14]
 0050435C    mov        dl,1
 0050435E    mov        eax,[004C6D20]; EZSQLException
 00504363    call       EZSQLException.Create; EZSQLException.Create
 00504368    call       @RaiseExcept
 0050436D    mov        eax,dword ptr [ebx+28]; TZMySQLResultSet.?f28:dword
 00504370    mov        edx,dword ptr [eax]
 00504372    call       dword ptr [edx+8]
 00504375    mov        edx,dword ptr [ebx+40]; TZMySQLResultSet.?f40:dword
 00504378    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 0050437B    mov        ecx,dword ptr [eax]
 0050437D    call       dword ptr [ecx+144]
 00504383    sub        eax,1
>00504386    jno        0050438D
 00504388    call       @IntOver
 0050438D    test       eax,eax
>0050438F    jl         005044C7
 00504395    inc        eax
 00504396    mov        dword ptr [ebp-0C],eax
 00504399    mov        dword ptr [ebp-4],0
 005043A0    mov        ecx,dword ptr [ebp-4]
 005043A3    test       ecx,ecx
>005043A5    jns        005043AC
 005043A7    call       @BoundErr
 005043AC    mov        edx,dword ptr [ebx+40]; TZMySQLResultSet.?f40:dword
 005043AF    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 005043B2    mov        esi,dword ptr [eax]
 005043B4    call       dword ptr [esi+5C]
 005043B7    mov        edx,dword ptr [ebx+40]; TZMySQLResultSet.?f40:dword
 005043BA    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 005043BD    mov        ecx,dword ptr [eax]
 005043BF    call       dword ptr [ecx+50]
 005043C2    mov        edi,eax
 005043C4    test       edi,edi
>005043C6    je         005044C7
 005043CC    mov        dl,1
 005043CE    mov        eax,[004D5F00]; TZColumnInfo
 005043D3    call       TZColumnInfo.Create; TZColumnInfo.Create
 005043D8    mov        esi,eax
 005043DA    mov        edx,edi
 005043DC    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 005043DF    mov        ecx,dword ptr [eax]
 005043E1    call       dword ptr [ecx+138]
 005043E7    mov        dword ptr [ebp-8],eax
 005043EA    mov        edx,edi
 005043EC    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 005043EF    mov        ecx,dword ptr [eax]
 005043F1    call       dword ptr [ecx+148]
 005043F7    mov        edx,eax
 005043F9    lea        eax,[esi+10]; TZColumnInfo.?f10:String
 005043FC    call       @LStrFromPChar
 00504401    mov        edx,edi
 00504403    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00504406    mov        ecx,dword ptr [eax]
 00504408    call       dword ptr [ecx+14C]
 0050440E    mov        edx,eax
 00504410    lea        eax,[esi+24]; TZColumnInfo.?f24:String
 00504413    call       @LStrFromPChar
 00504418    mov        edx,edi
 0050441A    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 0050441D    mov        ecx,dword ptr [eax]
 0050441F    call       dword ptr [ecx+14C]
 00504425    test       eax,eax
 00504427    sete       al
 0050442A    mov        byte ptr [esi+2D],al; TZColumnInfo.?f2D:byte
 0050442D    mov        ecx,dword ptr [ebp-8]
 00504430    mov        edx,edi
 00504432    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00504435    call       005030CC
 0050443A    mov        byte ptr [esi+2C],al; TZColumnInfo.?f2C:byte
 0050443D    mov        edx,edi
 0050443F    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00504442    mov        ecx,dword ptr [eax]
 00504444    call       dword ptr [ecx+150]
 0050444A    mov        dword ptr [esi+0C],eax; TZColumnInfo.?fC:dword
 0050444D    mov        edx,edi
 0050444F    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00504452    mov        ecx,dword ptr [eax]
 00504454    call       dword ptr [ecx+150]
 0050445A    push       eax
 0050445B    mov        edx,edi
 0050445D    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00504460    mov        ecx,dword ptr [eax]
 00504462    call       dword ptr [ecx+154]
 00504468    pop        edx
 00504469    call       Max
 0050446E    mov        dword ptr [esi+1C],eax; TZColumnInfo.?f1C:Integer
 00504471    mov        edx,edi
 00504473    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00504476    mov        ecx,dword ptr [eax]
 00504478    call       dword ptr [ecx+158]
 0050447E    mov        dword ptr [esi+20],eax; TZColumnInfo.?f20:dword
 00504481    test       byte ptr [ebp-7],2
>00504485    jne        0050448D
 00504487    test       byte ptr [ebp-7],4
>0050448B    je         00504491
 0050448D    mov        byte ptr [esi+4],1; TZColumnInfo.?f4:LongBool
 00504491    test       byte ptr [ebp-8],20
>00504495    je         0050449D
 00504497    mov        byte ptr [esi+9],0; TZColumnInfo.?f9:byte
>0050449B    jmp        005044A1
 0050449D    mov        byte ptr [esi+9],1; TZColumnInfo.?f9:byte
 005044A1    test       byte ptr [ebp-8],1
>005044A5    je         005044AD
 005044A7    mov        byte ptr [esi+8],0; TZColumnInfo.?f8:byte
>005044AB    jmp        005044B1
 005044AD    mov        byte ptr [esi+8],1; TZColumnInfo.?f8:byte
 005044B1    mov        edx,esi
 005044B3    mov        eax,dword ptr [ebx+28]; TZMySQLResultSet.?f28:dword
 005044B6    call       00433178
 005044BB    inc        dword ptr [ebp-4]
 005044BE    dec        dword ptr [ebp-0C]
<005044C1    jne        005043A0
 005044C7    mov        eax,ebx
 005044C9    call       004D4580
 005044CE    xor        eax,eax
 005044D0    pop        edx
 005044D1    pop        ecx
 005044D2    pop        ecx
 005044D3    mov        dword ptr fs:[eax],edx
 005044D6    push       5044F0
 005044DB    lea        eax,[ebp-14]
 005044DE    mov        edx,2
 005044E3    call       @LStrArrayClr
 005044E8    ret
<005044E9    jmp        @HandleFinally
<005044EE    jmp        005044DB
 005044F0    pop        edi
 005044F1    pop        esi
 005044F2    pop        ebx
 005044F3    mov        esp,ebp
 005044F5    pop        ebp
 005044F6    ret
*}
end;

//005044F8
procedure sub_005044F8;
begin
{*
 005044F8    push       ebp
 005044F9    mov        ebp,esp
 005044FB    push       ebx
 005044FC    mov        ebx,eax
 005044FE    mov        eax,dword ptr [ebx+40]; TZMySQLResultSet.?f40:dword
 00504501    test       eax,eax
>00504503    je         0050450F
 00504505    mov        edx,eax
 00504507    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 0050450A    mov        ecx,dword ptr [eax]
 0050450C    call       dword ptr [ecx+60]
 0050450F    xor        eax,eax
 00504511    mov        dword ptr [ebx+40],eax; TZMySQLResultSet.?f40:dword
 00504514    xor        eax,eax
 00504516    mov        dword ptr [ebx+44],eax; TZMySQLResultSet.?f44:dword
 00504519    mov        eax,ebx
 0050451B    call       004D4588
 00504520    pop        ebx
 00504521    pop        ebp
 00504522    ret
*}
end;

//00504524
//function sub_00504524(?:?):?;
//begin
{*
 00504524    push       ebp
 00504525    mov        ebp,esp
 00504527    xor        ecx,ecx
 00504529    push       ecx
 0050452A    push       ecx
 0050452B    push       ecx
 0050452C    push       ecx
 0050452D    push       ecx
 0050452E    push       ebx
 0050452F    push       esi
 00504530    mov        dword ptr [ebp-4],edx
 00504533    mov        ebx,eax
 00504535    xor        eax,eax
 00504537    push       ebp
 00504538    push       504614
 0050453D    push       dword ptr fs:[eax]
 00504540    mov        dword ptr fs:[eax],esp
 00504543    mov        eax,ebx
 00504545    call       004D42AC
 0050454A    cmp        dword ptr [ebx+44],0; TZMySQLResultSet.?f44:dword
>0050454E    jne        00504571
 00504550    lea        edx,[ebp-0C]
 00504553    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 00504558    call       LoadResString
 0050455D    mov        ecx,dword ptr [ebp-0C]
 00504560    mov        dl,1
 00504562    mov        eax,[004C6D20]; EZSQLException
 00504567    call       EZSQLException.Create; EZSQLException.Create
 0050456C    call       @RaiseExcept
 00504571    mov        ecx,dword ptr [ebp-4]
 00504574    sub        ecx,1
>00504577    jno        0050457E
 00504579    call       @IntOver
 0050457E    test       ecx,ecx
>00504580    jns        00504587
 00504582    call       @BoundErr
 00504587    mov        edx,dword ptr [ebx+44]; TZMySQLResultSet.?f44:dword
 0050458A    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 0050458D    mov        esi,dword ptr [eax]
 0050458F    call       dword ptr [esi+15C]
 00504595    mov        esi,eax
 00504597    test       esi,esi
 00504599    sete       byte ptr [ebp-5]
 0050459D    cmp        byte ptr [ebp-5],0
>005045A1    jne        005045F9
 005045A3    mov        edx,dword ptr [ebp-4]
 005045A6    mov        eax,dword ptr [ebx+2C]; TZMySQLResultSet.?f2C:dword
 005045A9    mov        ecx,dword ptr [eax]
 005045AB    call       dword ptr [ecx+44]
 005045AE    sub        al,0C
>005045B0    je         005045B6
 005045B2    sub        al,2
>005045B4    jne        005045F9
 005045B6    lea        eax,[ebp-10]
 005045B9    mov        edx,esi
 005045BB    call       @LStrFromPChar
 005045C0    mov        eax,dword ptr [ebp-10]
 005045C3    call       004BF8B0
 005045C8    fcomp      dword ptr ds:[504624]; 0:Single
 005045CE    fnstsw     al
 005045D0    sahf
>005045D1    jne        005045F0
 005045D3    lea        eax,[ebp-14]
 005045D6    mov        edx,esi
 005045D8    call       @LStrFromPChar
 005045DD    mov        eax,dword ptr [ebp-14]
 005045E0    call       004BFB00
 005045E5    fcomp      dword ptr ds:[504624]; 0:Single
 005045EB    fnstsw     al
 005045ED    sahf
>005045EE    je         005045F4
 005045F0    xor        eax,eax
>005045F2    jmp        005045F6
 005045F4    mov        al,1
 005045F6    mov        byte ptr [ebp-5],al
 005045F9    xor        eax,eax
 005045FB    pop        edx
 005045FC    pop        ecx
 005045FD    pop        ecx
 005045FE    mov        dword ptr fs:[eax],edx
 00504601    push       50461B
 00504606    lea        eax,[ebp-14]
 00504609    mov        edx,3
 0050460E    call       @LStrArrayClr
 00504613    ret
<00504614    jmp        @HandleFinally
<00504619    jmp        00504606
 0050461B    mov        al,byte ptr [ebp-5]
 0050461E    pop        esi
 0050461F    pop        ebx
 00504620    mov        esp,ebp
 00504622    pop        ebp
 00504623    ret
*}
//end;

//00504628
//function sub_00504628(?:?):?;
//begin
{*
 00504628    push       ebp
 00504629    mov        ebp,esp
 0050462B    push       0
 0050462D    push       ebx
 0050462E    push       esi
 0050462F    mov        esi,edx
 00504631    mov        ebx,eax
 00504633    xor        eax,eax
 00504635    push       ebp
 00504636    push       5046B2
 0050463B    push       dword ptr fs:[eax]
 0050463E    mov        dword ptr fs:[eax],esp
 00504641    mov        eax,ebx
 00504643    call       004D42AC
 00504648    cmp        dword ptr [ebx+44],0; TZMySQLResultSet.?f44:dword
>0050464C    jne        0050466F
 0050464E    lea        edx,[ebp-4]
 00504651    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 00504656    call       LoadResString
 0050465B    mov        ecx,dword ptr [ebp-4]
 0050465E    mov        dl,1
 00504660    mov        eax,[004C6D20]; EZSQLException
 00504665    call       EZSQLException.Create; EZSQLException.Create
 0050466A    call       @RaiseExcept
 0050466F    mov        ecx,esi
 00504671    sub        ecx,1
>00504674    jno        0050467B
 00504676    call       @IntOver
 0050467B    test       ecx,ecx
>0050467D    jns        00504684
 0050467F    call       @BoundErr
 00504684    mov        edx,dword ptr [ebx+44]; TZMySQLResultSet.?f44:dword
 00504687    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 0050468A    mov        esi,dword ptr [eax]
 0050468C    call       dword ptr [esi+15C]
 00504692    mov        esi,eax
 00504694    test       esi,esi
 00504696    sete       al
 00504699    mov        byte ptr [ebx+34],al; TZMySQLResultSet.?f34:byte
 0050469C    xor        eax,eax
 0050469E    pop        edx
 0050469F    pop        ecx
 005046A0    pop        ecx
 005046A1    mov        dword ptr fs:[eax],edx
 005046A4    push       5046B9
 005046A9    lea        eax,[ebp-4]
 005046AC    call       @LStrClr
 005046B1    ret
<005046B2    jmp        @HandleFinally
<005046B7    jmp        005046A9
 005046B9    mov        eax,esi
 005046BB    pop        esi
 005046BC    pop        ebx
 005046BD    pop        ecx
 005046BE    pop        ebp
 005046BF    ret
*}
//end;

//005046C0
//procedure sub_005046C0(?:?; ?:?);
//begin
{*
 005046C0    push       ebp
 005046C1    mov        ebp,esp
 005046C3    add        esp,0FFFFFFF4
 005046C6    push       ebx
 005046C7    push       esi
 005046C8    xor        ebx,ebx
 005046CA    mov        dword ptr [ebp-0C],ebx
 005046CD    mov        dword ptr [ebp-4],ecx
 005046D0    mov        esi,edx
 005046D2    mov        ebx,eax
 005046D4    xor        eax,eax
 005046D6    push       ebp
 005046D7    push       50479C
 005046DC    push       dword ptr fs:[eax]
 005046DF    mov        dword ptr fs:[eax],esp
 005046E2    mov        eax,ebx
 005046E4    call       004D42AC
 005046E9    cmp        dword ptr [ebx+44],0; TZMySQLResultSet.?f44:dword
>005046ED    jne        00504710
 005046EF    lea        edx,[ebp-0C]
 005046F2    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 005046F7    call       LoadResString
 005046FC    mov        ecx,dword ptr [ebp-0C]
 005046FF    mov        dl,1
 00504701    mov        eax,[004C6D20]; EZSQLException
 00504706    call       EZSQLException.Create; EZSQLException.Create
 0050470B    call       @RaiseExcept
 00504710    sub        esi,1
>00504713    jno        0050471A
 00504715    call       @IntOver
 0050471A    mov        edx,dword ptr [ebx+40]; TZMySQLResultSet.?f40:dword
 0050471D    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00504720    mov        ecx,dword ptr [eax]
 00504722    call       dword ptr [ecx+54]
 00504725    test       eax,eax
>00504727    je         00504743
 00504729    imul       edx,esi,4
>0050472C    jno        00504733
 0050472E    call       @IntOver
 00504733    add        edx,eax
>00504735    jno        0050473C
 00504737    call       @IntOver
 0050473C    mov        eax,dword ptr [edx]
 0050473E    mov        dword ptr [ebp-8],eax
>00504741    jmp        00504748
 00504743    xor        eax,eax
 00504745    mov        dword ptr [ebp-8],eax
 00504748    mov        ecx,esi
 0050474A    test       ecx,ecx
>0050474C    jns        00504753
 0050474E    call       @BoundErr
 00504753    mov        edx,dword ptr [ebx+44]; TZMySQLResultSet.?f44:dword
 00504756    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00504759    mov        esi,dword ptr [eax]
 0050475B    call       dword ptr [esi+15C]
 00504761    mov        esi,eax
 00504763    test       esi,esi
 00504765    sete       al
 00504768    mov        byte ptr [ebx+34],al; TZMySQLResultSet.?f34:byte
 0050476B    mov        eax,dword ptr [ebp-4]
 0050476E    call       @LStrClr
 00504773    cmp        byte ptr [ebx+34],0; TZMySQLResultSet.?f34:byte
>00504777    jne        00504786
 00504779    mov        eax,dword ptr [ebp-4]
 0050477C    mov        ecx,dword ptr [ebp-8]
 0050477F    mov        edx,esi
 00504781    call       @LStrFromPCharLen
 00504786    xor        eax,eax
 00504788    pop        edx
 00504789    pop        ecx
 0050478A    pop        ecx
 0050478B    mov        dword ptr fs:[eax],edx
 0050478E    push       5047A3
 00504793    lea        eax,[ebp-0C]
 00504796    call       @LStrClr
 0050479B    ret
<0050479C    jmp        @HandleFinally
<005047A1    jmp        00504793
 005047A3    pop        esi
 005047A4    pop        ebx
 005047A5    mov        esp,ebp
 005047A7    pop        ebp
 005047A8    ret
*}
//end;

//005047AC
//function sub_005047AC(?:?):?;
//begin
{*
 005047AC    push       ebp
 005047AD    mov        ebp,esp
 005047AF    push       0
 005047B1    push       0
 005047B3    push       ebx
 005047B4    push       esi
 005047B5    mov        esi,edx
 005047B7    mov        ebx,eax
 005047B9    xor        eax,eax
 005047BB    push       ebp
 005047BC    push       50485B
 005047C1    push       dword ptr fs:[eax]
 005047C4    mov        dword ptr fs:[eax],esp
 005047C7    mov        cl,1
 005047C9    mov        edx,esi
 005047CB    mov        eax,ebx
 005047CD    call       004D4308
 005047D2    mov        edx,esi
 005047D4    mov        eax,ebx
 005047D6    mov        ecx,dword ptr [eax]
 005047D8    call       dword ptr [ecx+14]; TZMySQLResultSet.sub_00504628
 005047DB    mov        edx,eax
 005047DD    lea        eax,[ebp-8]
 005047E0    call       @LStrFromPChar
 005047E5    mov        eax,dword ptr [ebp-8]
 005047E8    lea        edx,[ebp-4]
 005047EB    call       UpperCase
 005047F0    mov        eax,dword ptr [ebp-4]
 005047F3    mov        edx,504874; 'Y'
 005047F8    call       @LStrCmp
>005047FD    je         0050483E
 005047FF    mov        eax,dword ptr [ebp-4]
 00504802    mov        edx,504880; 'YES'
 00504807    call       @LStrCmp
>0050480C    je         0050483E
 0050480E    mov        eax,dword ptr [ebp-4]
 00504811    mov        edx,50488C; 'T'
 00504816    call       @LStrCmp
>0050481B    je         0050483E
 0050481D    mov        eax,dword ptr [ebp-4]
 00504820    mov        edx,504898; 'TRUE'
 00504825    call       @LStrCmp
>0050482A    je         0050483E
 0050482C    xor        edx,edx
 0050482E    mov        eax,dword ptr [ebp-4]
 00504831    call       StrToIntDef
 00504836    test       eax,eax
>00504838    jne        0050483E
 0050483A    xor        ebx,ebx
>0050483C    jmp        00504840
 0050483E    mov        bl,1
 00504840    xor        eax,eax
 00504842    pop        edx
 00504843    pop        ecx
 00504844    pop        ecx
 00504845    mov        dword ptr fs:[eax],edx
 00504848    push       504862
 0050484D    lea        eax,[ebp-8]
 00504850    mov        edx,2
 00504855    call       @LStrArrayClr
 0050485A    ret
<0050485B    jmp        @HandleFinally
<00504860    jmp        0050484D
 00504862    mov        eax,ebx
 00504864    pop        esi
 00504865    pop        ebx
 00504866    pop        ecx
 00504867    pop        ecx
 00504868    pop        ebp
 00504869    ret
*}
//end;

//005048A0
//function sub_005048A0(?:?):?;
//begin
{*
 005048A0    push       ebp
 005048A1    mov        ebp,esp
 005048A3    push       0
 005048A5    push       ebx
 005048A6    push       esi
 005048A7    mov        esi,edx
 005048A9    mov        ebx,eax
 005048AB    xor        eax,eax
 005048AD    push       ebp
 005048AE    push       5048F9
 005048B3    push       dword ptr fs:[eax]
 005048B6    mov        dword ptr fs:[eax],esp
 005048B9    mov        cl,2
 005048BB    mov        edx,esi
 005048BD    mov        eax,ebx
 005048BF    call       004D4308
 005048C4    mov        edx,esi
 005048C6    mov        eax,ebx
 005048C8    mov        ecx,dword ptr [eax]
 005048CA    call       dword ptr [ecx+14]; TZMySQLResultSet.sub_00504628
 005048CD    mov        edx,eax
 005048CF    lea        eax,[ebp-4]
 005048D2    call       @LStrFromPChar
 005048D7    mov        eax,dword ptr [ebp-4]
 005048DA    xor        edx,edx
 005048DC    call       StrToIntDef
 005048E1    mov        ebx,eax
 005048E3    xor        eax,eax
 005048E5    pop        edx
 005048E6    pop        ecx
 005048E7    pop        ecx
 005048E8    mov        dword ptr fs:[eax],edx
 005048EB    push       504900
 005048F0    lea        eax,[ebp-4]
 005048F3    call       @LStrClr
 005048F8    ret
<005048F9    jmp        @HandleFinally
<005048FE    jmp        005048F0
 00504900    mov        eax,ebx
 00504902    pop        esi
 00504903    pop        ebx
 00504904    pop        ecx
 00504905    pop        ebp
 00504906    ret
*}
//end;

//00504908
//function sub_00504908(?:?):?;
//begin
{*
 00504908    push       ebp
 00504909    mov        ebp,esp
 0050490B    push       0
 0050490D    push       ebx
 0050490E    push       esi
 0050490F    mov        esi,edx
 00504911    mov        ebx,eax
 00504913    xor        eax,eax
 00504915    push       ebp
 00504916    push       504961
 0050491B    push       dword ptr fs:[eax]
 0050491E    mov        dword ptr fs:[eax],esp
 00504921    mov        cl,3
 00504923    mov        edx,esi
 00504925    mov        eax,ebx
 00504927    call       004D4308
 0050492C    mov        edx,esi
 0050492E    mov        eax,ebx
 00504930    mov        ecx,dword ptr [eax]
 00504932    call       dword ptr [ecx+14]; TZMySQLResultSet.sub_00504628
 00504935    mov        edx,eax
 00504937    lea        eax,[ebp-4]
 0050493A    call       @LStrFromPChar
 0050493F    mov        eax,dword ptr [ebp-4]
 00504942    xor        edx,edx
 00504944    call       StrToIntDef
 00504949    mov        ebx,eax
 0050494B    xor        eax,eax
 0050494D    pop        edx
 0050494E    pop        ecx
 0050494F    pop        ecx
 00504950    mov        dword ptr fs:[eax],edx
 00504953    push       504968
 00504958    lea        eax,[ebp-4]
 0050495B    call       @LStrClr
 00504960    ret
<00504961    jmp        @HandleFinally
<00504966    jmp        00504958
 00504968    mov        eax,ebx
 0050496A    pop        esi
 0050496B    pop        ebx
 0050496C    pop        ecx
 0050496D    pop        ebp
 0050496E    ret
*}
//end;

//00504970
//function sub_00504970(?:?):?;
//begin
{*
 00504970    push       ebp
 00504971    mov        ebp,esp
 00504973    push       0
 00504975    push       ebx
 00504976    push       esi
 00504977    mov        esi,edx
 00504979    mov        ebx,eax
 0050497B    xor        eax,eax
 0050497D    push       ebp
 0050497E    push       5049C9
 00504983    push       dword ptr fs:[eax]
 00504986    mov        dword ptr fs:[eax],esp
 00504989    mov        cl,4
 0050498B    mov        edx,esi
 0050498D    mov        eax,ebx
 0050498F    call       004D4308
 00504994    mov        edx,esi
 00504996    mov        eax,ebx
 00504998    mov        ecx,dword ptr [eax]
 0050499A    call       dword ptr [ecx+14]; TZMySQLResultSet.sub_00504628
 0050499D    mov        edx,eax
 0050499F    lea        eax,[ebp-4]
 005049A2    call       @LStrFromPChar
 005049A7    mov        eax,dword ptr [ebp-4]
 005049AA    xor        edx,edx
 005049AC    call       StrToIntDef
 005049B1    mov        ebx,eax
 005049B3    xor        eax,eax
 005049B5    pop        edx
 005049B6    pop        ecx
 005049B7    pop        ecx
 005049B8    mov        dword ptr fs:[eax],edx
 005049BB    push       5049D0
 005049C0    lea        eax,[ebp-4]
 005049C3    call       @LStrClr
 005049C8    ret
<005049C9    jmp        @HandleFinally
<005049CE    jmp        005049C0
 005049D0    mov        eax,ebx
 005049D2    pop        esi
 005049D3    pop        ebx
 005049D4    pop        ecx
 005049D5    pop        ebp
 005049D6    ret
*}
//end;

//005049D8
//procedure sub_005049D8(?:?);
//begin
{*
 005049D8    push       ebp
 005049D9    mov        ebp,esp
 005049DB    add        esp,0FFFFFFF4
 005049DE    push       ebx
 005049DF    push       esi
 005049E0    xor        ecx,ecx
 005049E2    mov        dword ptr [ebp-0C],ecx
 005049E5    mov        esi,edx
 005049E7    mov        ebx,eax
 005049E9    xor        eax,eax
 005049EB    push       ebp
 005049EC    push       504A3D
 005049F1    push       dword ptr fs:[eax]
 005049F4    mov        dword ptr fs:[eax],esp
 005049F7    mov        cl,5
 005049F9    mov        edx,esi
 005049FB    mov        eax,ebx
 005049FD    call       004D4308
 00504A02    push       0
 00504A04    push       0
 00504A06    mov        edx,esi
 00504A08    mov        eax,ebx
 00504A0A    mov        ecx,dword ptr [eax]
 00504A0C    call       dword ptr [ecx+14]; TZMySQLResultSet.sub_00504628
 00504A0F    mov        edx,eax
 00504A11    lea        eax,[ebp-0C]
 00504A14    call       @LStrFromPChar
 00504A19    mov        eax,dword ptr [ebp-0C]
 00504A1C    call       StrToInt64Def
 00504A21    mov        dword ptr [ebp-8],eax
 00504A24    mov        dword ptr [ebp-4],edx
 00504A27    xor        eax,eax
 00504A29    pop        edx
 00504A2A    pop        ecx
 00504A2B    pop        ecx
 00504A2C    mov        dword ptr fs:[eax],edx
 00504A2F    push       504A44
 00504A34    lea        eax,[ebp-0C]
 00504A37    call       @LStrClr
 00504A3C    ret
<00504A3D    jmp        @HandleFinally
<00504A42    jmp        00504A34
 00504A44    mov        eax,dword ptr [ebp-8]
 00504A47    mov        edx,dword ptr [ebp-4]
 00504A4A    pop        esi
 00504A4B    pop        ebx
 00504A4C    mov        esp,ebp
 00504A4E    pop        ebp
 00504A4F    ret
*}
//end;

//00504A50
//procedure sub_00504A50(?:?);
//begin
{*
 00504A50    push       ebp
 00504A51    mov        ebp,esp
 00504A53    add        esp,0FFFFFFF8
 00504A56    push       ebx
 00504A57    push       esi
 00504A58    xor        ecx,ecx
 00504A5A    mov        dword ptr [ebp-8],ecx
 00504A5D    mov        esi,edx
 00504A5F    mov        ebx,eax
 00504A61    xor        eax,eax
 00504A63    push       ebp
 00504A64    push       504AB5
 00504A69    push       dword ptr fs:[eax]
 00504A6C    mov        dword ptr fs:[eax],esp
 00504A6F    mov        cl,6
 00504A71    mov        edx,esi
 00504A73    mov        eax,ebx
 00504A75    call       004D4308
 00504A7A    push       0
 00504A7C    push       0
 00504A7E    push       0
 00504A80    mov        edx,esi
 00504A82    mov        eax,ebx
 00504A84    mov        ecx,dword ptr [eax]
 00504A86    call       dword ptr [ecx+14]; TZMySQLResultSet.sub_00504628
 00504A89    mov        edx,eax
 00504A8B    lea        eax,[ebp-8]
 00504A8E    call       @LStrFromPChar
 00504A93    mov        eax,dword ptr [ebp-8]
 00504A96    call       004BEE6C
 00504A9B    fstp       dword ptr [ebp-4]
 00504A9E    wait
 00504A9F    xor        eax,eax
 00504AA1    pop        edx
 00504AA2    pop        ecx
 00504AA3    pop        ecx
 00504AA4    mov        dword ptr fs:[eax],edx
 00504AA7    push       504ABC
 00504AAC    lea        eax,[ebp-8]
 00504AAF    call       @LStrClr
 00504AB4    ret
<00504AB5    jmp        @HandleFinally
<00504ABA    jmp        00504AAC
 00504ABC    fld        dword ptr [ebp-4]
 00504ABF    pop        esi
 00504AC0    pop        ebx
 00504AC1    pop        ecx
 00504AC2    pop        ecx
 00504AC3    pop        ebp
 00504AC4    ret
*}
//end;

//00504AC8
//procedure sub_00504AC8(?:?);
//begin
{*
 00504AC8    push       ebp
 00504AC9    mov        ebp,esp
 00504ACB    add        esp,0FFFFFFF4
 00504ACE    push       ebx
 00504ACF    push       esi
 00504AD0    xor        ecx,ecx
 00504AD2    mov        dword ptr [ebp-0C],ecx
 00504AD5    mov        esi,edx
 00504AD7    mov        ebx,eax
 00504AD9    xor        eax,eax
 00504ADB    push       ebp
 00504ADC    push       504B2D
 00504AE1    push       dword ptr fs:[eax]
 00504AE4    mov        dword ptr fs:[eax],esp
 00504AE7    mov        cl,7
 00504AE9    mov        edx,esi
 00504AEB    mov        eax,ebx
 00504AED    call       004D4308
 00504AF2    push       0
 00504AF4    push       0
 00504AF6    push       0
 00504AF8    mov        edx,esi
 00504AFA    mov        eax,ebx
 00504AFC    mov        ecx,dword ptr [eax]
 00504AFE    call       dword ptr [ecx+14]; TZMySQLResultSet.sub_00504628
 00504B01    mov        edx,eax
 00504B03    lea        eax,[ebp-0C]
 00504B06    call       @LStrFromPChar
 00504B0B    mov        eax,dword ptr [ebp-0C]
 00504B0E    call       004BEE6C
 00504B13    fstp       qword ptr [ebp-8]
 00504B16    wait
 00504B17    xor        eax,eax
 00504B19    pop        edx
 00504B1A    pop        ecx
 00504B1B    pop        ecx
 00504B1C    mov        dword ptr fs:[eax],edx
 00504B1F    push       504B34
 00504B24    lea        eax,[ebp-0C]
 00504B27    call       @LStrClr
 00504B2C    ret
<00504B2D    jmp        @HandleFinally
<00504B32    jmp        00504B24
 00504B34    fld        qword ptr [ebp-8]
 00504B37    pop        esi
 00504B38    pop        ebx
 00504B39    mov        esp,ebp
 00504B3B    pop        ebp
 00504B3C    ret
*}
//end;

//00504B40
//procedure sub_00504B40(?:?);
//begin
{*
 00504B40    push       ebp
 00504B41    mov        ebp,esp
 00504B43    add        esp,0FFFFFFEC
 00504B46    push       ebx
 00504B47    push       esi
 00504B48    xor        ecx,ecx
 00504B4A    mov        dword ptr [ebp-14],ecx
 00504B4D    mov        esi,edx
 00504B4F    mov        ebx,eax
 00504B51    xor        eax,eax
 00504B53    push       ebp
 00504B54    push       504BA5
 00504B59    push       dword ptr fs:[eax]
 00504B5C    mov        dword ptr fs:[eax],esp
 00504B5F    mov        cl,8
 00504B61    mov        edx,esi
 00504B63    mov        eax,ebx
 00504B65    call       004D4308
 00504B6A    push       0
 00504B6C    push       0
 00504B6E    push       0
 00504B70    mov        edx,esi
 00504B72    mov        eax,ebx
 00504B74    mov        ecx,dword ptr [eax]
 00504B76    call       dword ptr [ecx+14]; TZMySQLResultSet.sub_00504628
 00504B79    mov        edx,eax
 00504B7B    lea        eax,[ebp-14]
 00504B7E    call       @LStrFromPChar
 00504B83    mov        eax,dword ptr [ebp-14]
 00504B86    call       004BEE6C
 00504B8B    fstp       tbyte ptr [ebp-10]
 00504B8E    wait
 00504B8F    xor        eax,eax
 00504B91    pop        edx
 00504B92    pop        ecx
 00504B93    pop        ecx
 00504B94    mov        dword ptr fs:[eax],edx
 00504B97    push       504BAC
 00504B9C    lea        eax,[ebp-14]
 00504B9F    call       @LStrClr
 00504BA4    ret
<00504BA5    jmp        @HandleFinally
<00504BAA    jmp        00504B9C
 00504BAC    fld        tbyte ptr [ebp-10]
 00504BAF    pop        esi
 00504BB0    pop        ebx
 00504BB1    mov        esp,ebp
 00504BB3    pop        ebp
 00504BB4    ret
*}
//end;

//00504BB8
//procedure sub_00504BB8(?:?; ?:?);
//begin
{*
 00504BB8    push       ebp
 00504BB9    mov        ebp,esp
 00504BBB    add        esp,0FFFFFFF8
 00504BBE    push       ebx
 00504BBF    push       esi
 00504BC0    xor        ebx,ebx
 00504BC2    mov        dword ptr [ebp-8],ebx
 00504BC5    mov        dword ptr [ebp-4],ecx
 00504BC8    mov        esi,edx
 00504BCA    mov        ebx,eax
 00504BCC    xor        eax,eax
 00504BCE    push       ebp
 00504BCF    push       504C12
 00504BD4    push       dword ptr fs:[eax]
 00504BD7    mov        dword ptr fs:[eax],esp
 00504BDA    mov        cl,0B
 00504BDC    mov        edx,esi
 00504BDE    mov        eax,ebx
 00504BE0    call       004D4308
 00504BE5    lea        ecx,[ebp-8]
 00504BE8    mov        edx,esi
 00504BEA    mov        eax,ebx
 00504BEC    mov        ebx,dword ptr [eax]
 00504BEE    call       dword ptr [ebx+18]; TZMySQLResultSet.sub_005046C0
 00504BF1    mov        eax,dword ptr [ebp-8]
 00504BF4    mov        edx,dword ptr [ebp-4]
 00504BF7    call       004BF678
 00504BFC    xor        eax,eax
 00504BFE    pop        edx
 00504BFF    pop        ecx
 00504C00    pop        ecx
 00504C01    mov        dword ptr fs:[eax],edx
 00504C04    push       504C19
 00504C09    lea        eax,[ebp-8]
 00504C0C    call       @LStrClr
 00504C11    ret
<00504C12    jmp        @HandleFinally
<00504C17    jmp        00504C09
 00504C19    pop        esi
 00504C1A    pop        ebx
 00504C1B    pop        ecx
 00504C1C    pop        ecx
 00504C1D    pop        ebp
 00504C1E    ret
*}
//end;

//00504C20
//procedure sub_00504C20(?:?);
//begin
{*
 00504C20    push       ebp
 00504C21    mov        ebp,esp
 00504C23    add        esp,0FFFFFFE8
 00504C26    push       ebx
 00504C27    push       esi
 00504C28    push       edi
 00504C29    xor        ecx,ecx
 00504C2B    mov        dword ptr [ebp-10],ecx
 00504C2E    mov        dword ptr [ebp-0C],ecx
 00504C31    mov        esi,edx
 00504C33    mov        edi,eax
 00504C35    xor        eax,eax
 00504C37    push       ebp
 00504C38    push       504D17
 00504C3D    push       dword ptr fs:[eax]
 00504C40    mov        dword ptr fs:[eax],esp
 00504C43    mov        cl,0C
 00504C45    mov        edx,esi
 00504C47    mov        eax,edi
 00504C49    call       004D4308
 00504C4E    mov        edx,esi
 00504C50    mov        eax,edi
 00504C52    mov        ecx,dword ptr [eax]
 00504C54    call       dword ptr [ecx+14]; TZMySQLResultSet.sub_00504628
 00504C57    mov        edx,eax
 00504C59    lea        eax,[ebp-0C]
 00504C5C    call       @LStrFromPChar
 00504C61    cmp        byte ptr [edi+34],0; TZMySQLResultSet.?f34:byte
>00504C65    jne        00504C90
 00504C67    lea        eax,[ebp-10]
 00504C6A    push       eax
 00504C6B    mov        ecx,0A
 00504C70    mov        edx,1
 00504C75    mov        eax,dword ptr [ebp-0C]
 00504C78    call       @LStrCopy
 00504C7D    mov        eax,dword ptr [ebp-10]
 00504C80    mov        edx,504D30; '0000-00-00'
 00504C85    call       @LStrCmp
>00504C8A    je         00504C90
 00504C8C    xor        ebx,ebx
>00504C8E    jmp        00504C92
 00504C90    mov        bl,1
 00504C92    mov        byte ptr [edi+34],bl; TZMySQLResultSet.?f34:byte
 00504C95    test       bl,bl
>00504C97    je         00504CA3
 00504C99    xor        eax,eax
 00504C9B    mov        dword ptr [ebp-8],eax
 00504C9E    mov        dword ptr [ebp-4],eax
>00504CA1    jmp        00504CFC
 00504CA3    mov        edx,dword ptr [ebp-0C]
 00504CA6    mov        eax,504D44; '????-??-??*'
 00504CAB    call       004BE568
 00504CB0    test       al,al
>00504CB2    je         00504CD0
 00504CB4    mov        eax,dword ptr [ebp-0C]
 00504CB7    call       004BF8B0
 00504CBC    call       @TRUNC
 00504CC1    mov        dword ptr [ebp-18],eax
 00504CC4    mov        dword ptr [ebp-14],edx
 00504CC7    fild       qword ptr [ebp-18]
 00504CCA    fstp       qword ptr [ebp-8]
 00504CCD    wait
>00504CCE    jmp        00504CEA
 00504CD0    mov        eax,dword ptr [ebp-0C]
 00504CD3    call       004BFB00
 00504CD8    call       @TRUNC
 00504CDD    mov        dword ptr [ebp-18],eax
 00504CE0    mov        dword ptr [ebp-14],edx
 00504CE3    fild       qword ptr [ebp-18]
 00504CE6    fstp       qword ptr [ebp-8]
 00504CE9    wait
 00504CEA    fld        qword ptr [ebp-8]
 00504CED    fcomp      dword ptr ds:[504D50]; 0:Single
 00504CF3    fnstsw     al
 00504CF5    sahf
 00504CF6    sete       al
 00504CF9    mov        byte ptr [edi+34],al; TZMySQLResultSet.?f34:byte
 00504CFC    xor        eax,eax
 00504CFE    pop        edx
 00504CFF    pop        ecx
 00504D00    pop        ecx
 00504D01    mov        dword ptr fs:[eax],edx
 00504D04    push       504D1E
 00504D09    lea        eax,[ebp-10]
 00504D0C    mov        edx,2
 00504D11    call       @LStrArrayClr
 00504D16    ret
<00504D17    jmp        @HandleFinally
<00504D1C    jmp        00504D09
 00504D1E    fld        qword ptr [ebp-8]
 00504D21    pop        edi
 00504D22    pop        esi
 00504D23    pop        ebx
 00504D24    mov        esp,ebp
 00504D26    pop        ebp
 00504D27    ret
*}
//end;

//00504D54
//procedure sub_00504D54(?:?);
//begin
{*
 00504D54    push       ebp
 00504D55    mov        ebp,esp
 00504D57    add        esp,0FFFFFFF0
 00504D5A    push       ebx
 00504D5B    push       esi
 00504D5C    push       edi
 00504D5D    xor        ecx,ecx
 00504D5F    mov        dword ptr [ebp-10],ecx
 00504D62    mov        dword ptr [ebp-0C],ecx
 00504D65    mov        esi,edx
 00504D67    mov        edi,eax
 00504D69    xor        eax,eax
 00504D6B    push       ebp
 00504D6C    push       504E27
 00504D71    push       dword ptr fs:[eax]
 00504D74    mov        dword ptr fs:[eax],esp
 00504D77    mov        cl,0D
 00504D79    mov        edx,esi
 00504D7B    mov        eax,edi
 00504D7D    call       004D4308
 00504D82    mov        edx,esi
 00504D84    mov        eax,edi
 00504D86    mov        ecx,dword ptr [eax]
 00504D88    call       dword ptr [ecx+14]; TZMySQLResultSet.sub_00504628
 00504D8B    mov        edx,eax
 00504D8D    lea        eax,[ebp-0C]
 00504D90    call       @LStrFromPChar
 00504D95    cmp        byte ptr [edi+34],0; TZMySQLResultSet.?f34:byte
>00504D99    jne        00504DC4
 00504D9B    lea        eax,[ebp-10]
 00504D9E    push       eax
 00504D9F    mov        ecx,8
 00504DA4    mov        edx,1
 00504DA9    mov        eax,dword ptr [ebp-0C]
 00504DAC    call       @LStrCopy
 00504DB1    mov        eax,dword ptr [ebp-10]
 00504DB4    mov        edx,504E40; '00:00:00'
 00504DB9    call       @LStrCmp
>00504DBE    je         00504DC4
 00504DC0    xor        ebx,ebx
>00504DC2    jmp        00504DC6
 00504DC4    mov        bl,1
 00504DC6    mov        byte ptr [edi+34],bl; TZMySQLResultSet.?f34:byte
 00504DC9    test       bl,bl
>00504DCB    je         00504DD7
 00504DCD    xor        eax,eax
 00504DCF    mov        dword ptr [ebp-8],eax
 00504DD2    mov        dword ptr [ebp-4],eax
>00504DD5    jmp        00504E0C
 00504DD7    mov        edx,dword ptr [ebp-0C]
 00504DDA    mov        eax,504E54; '*??:??:??*'
 00504DDF    call       004BE568
 00504DE4    test       al,al
>00504DE6    je         00504DFB
 00504DE8    mov        eax,dword ptr [ebp-0C]
 00504DEB    call       004BF8B0
 00504DF0    call       @FRAC
 00504DF5    fstp       qword ptr [ebp-8]
 00504DF8    wait
>00504DF9    jmp        00504E0C
 00504DFB    mov        eax,dword ptr [ebp-0C]
 00504DFE    call       004BFB00
 00504E03    call       @FRAC
 00504E08    fstp       qword ptr [ebp-8]
 00504E0B    wait
 00504E0C    xor        eax,eax
 00504E0E    pop        edx
 00504E0F    pop        ecx
 00504E10    pop        ecx
 00504E11    mov        dword ptr fs:[eax],edx
 00504E14    push       504E2E
 00504E19    lea        eax,[ebp-10]
 00504E1C    mov        edx,2
 00504E21    call       @LStrArrayClr
 00504E26    ret
<00504E27    jmp        @HandleFinally
<00504E2C    jmp        00504E19
 00504E2E    fld        qword ptr [ebp-8]
 00504E31    pop        edi
 00504E32    pop        esi
 00504E33    pop        ebx
 00504E34    mov        esp,ebp
 00504E36    pop        ebp
 00504E37    ret
*}
//end;

//00504E60
//procedure sub_00504E60(?:?);
//begin
{*
 00504E60    push       ebp
 00504E61    mov        ebp,esp
 00504E63    add        esp,0FFFFFFF4
 00504E66    push       ebx
 00504E67    push       esi
 00504E68    xor        ecx,ecx
 00504E6A    mov        dword ptr [ebp-0C],ecx
 00504E6D    mov        esi,edx
 00504E6F    mov        ebx,eax
 00504E71    xor        eax,eax
 00504E73    push       ebp
 00504E74    push       504F00
 00504E79    push       dword ptr fs:[eax]
 00504E7C    mov        dword ptr fs:[eax],esp
 00504E7F    mov        cl,0E
 00504E81    mov        edx,esi
 00504E83    mov        eax,ebx
 00504E85    call       004D4308
 00504E8A    mov        edx,esi
 00504E8C    mov        eax,ebx
 00504E8E    mov        ecx,dword ptr [eax]
 00504E90    call       dword ptr [ecx+14]; TZMySQLResultSet.sub_00504628
 00504E93    mov        edx,eax
 00504E95    lea        eax,[ebp-0C]
 00504E98    call       @LStrFromPChar
 00504E9D    cmp        byte ptr [ebx+34],0; TZMySQLResultSet.?f34:byte
>00504EA1    je         00504EAD
 00504EA3    xor        eax,eax
 00504EA5    mov        dword ptr [ebp-8],eax
 00504EA8    mov        dword ptr [ebp-4],eax
>00504EAB    jmp        00504EEA
 00504EAD    mov        edx,dword ptr [ebp-0C]
 00504EB0    mov        eax,504F18; '????-??-??*'
 00504EB5    call       004BE568
 00504EBA    test       al,al
>00504EBC    je         00504ECC
 00504EBE    mov        eax,dword ptr [ebp-0C]
 00504EC1    call       004BF8B0
 00504EC6    fstp       qword ptr [ebp-8]
 00504EC9    wait
>00504ECA    jmp        00504ED8
 00504ECC    mov        eax,dword ptr [ebp-0C]
 00504ECF    call       004BFB00
 00504ED4    fstp       qword ptr [ebp-8]
 00504ED7    wait
 00504ED8    fld        qword ptr [ebp-8]
 00504EDB    fcomp      dword ptr ds:[504F24]; 0:Single
 00504EE1    fnstsw     al
 00504EE3    sahf
 00504EE4    sete       al
 00504EE7    mov        byte ptr [ebx+34],al; TZMySQLResultSet.?f34:byte
 00504EEA    xor        eax,eax
 00504EEC    pop        edx
 00504EED    pop        ecx
 00504EEE    pop        ecx
 00504EEF    mov        dword ptr fs:[eax],edx
 00504EF2    push       504F07
 00504EF7    lea        eax,[ebp-0C]
 00504EFA    call       @LStrClr
 00504EFF    ret
<00504F00    jmp        @HandleFinally
<00504F05    jmp        00504EF7
 00504F07    fld        qword ptr [ebp-8]
 00504F0A    pop        esi
 00504F0B    pop        ebx
 00504F0C    mov        esp,ebp
 00504F0E    pop        ebp
 00504F0F    ret
*}
//end;

//00504F28
//function sub_00504F28(?:?):?;
//begin
{*
 00504F28    push       ebp
 00504F29    mov        ebp,esp
 00504F2B    push       0
 00504F2D    push       ebx
 00504F2E    push       esi
 00504F2F    mov        esi,edx
 00504F31    mov        ebx,eax
 00504F33    xor        eax,eax
 00504F35    push       ebp
 00504F36    push       504F7F
 00504F3B    push       dword ptr fs:[eax]
 00504F3E    mov        dword ptr fs:[eax],esp
 00504F41    mov        cl,0F
 00504F43    mov        edx,esi
 00504F45    mov        eax,ebx
 00504F47    call       004D4308
 00504F4C    lea        ecx,[ebp-4]
 00504F4F    mov        edx,esi
 00504F51    mov        eax,ebx
 00504F53    mov        ebx,dword ptr [eax]
 00504F55    call       dword ptr [ebx+18]; TZMySQLResultSet.sub_005046C0
 00504F58    mov        ecx,dword ptr [ebp-4]
 00504F5B    mov        dl,1
 00504F5D    mov        eax,[0041CC74]; TStringStream
 00504F62    call       TStringStream.Create; TStringStream.Create
 00504F67    mov        ebx,eax
 00504F69    xor        eax,eax
 00504F6B    pop        edx
 00504F6C    pop        ecx
 00504F6D    pop        ecx
 00504F6E    mov        dword ptr fs:[eax],edx
 00504F71    push       504F86
 00504F76    lea        eax,[ebp-4]
 00504F79    call       @LStrClr
 00504F7E    ret
<00504F7F    jmp        @HandleFinally
<00504F84    jmp        00504F76
 00504F86    mov        eax,ebx
 00504F88    pop        esi
 00504F89    pop        ebx
 00504F8A    pop        ecx
 00504F8B    pop        ebp
 00504F8C    ret
*}
//end;

//00504F90
//function sub_00504F90():?;
//begin
{*
 00504F90    push       ebp
 00504F91    mov        ebp,esp
 00504F93    mov        cl,10
 00504F95    call       004D4308
 00504F9A    xor        eax,eax
 00504F9C    pop        ebp
 00504F9D    ret
*}
//end;

//00504FA0
//function sub_00504FA0(?:?):?;
//begin
{*
 00504FA0    push       ebp
 00504FA1    mov        ebp,esp
 00504FA3    push       0
 00504FA5    push       ebx
 00504FA6    push       esi
 00504FA7    mov        esi,edx
 00504FA9    mov        ebx,eax
 00504FAB    xor        eax,eax
 00504FAD    push       ebp
 00504FAE    push       504FF7
 00504FB3    push       dword ptr fs:[eax]
 00504FB6    mov        dword ptr fs:[eax],esp
 00504FB9    mov        cl,11
 00504FBB    mov        edx,esi
 00504FBD    mov        eax,ebx
 00504FBF    call       004D4308
 00504FC4    lea        ecx,[ebp-4]
 00504FC7    mov        edx,esi
 00504FC9    mov        eax,ebx
 00504FCB    mov        ebx,dword ptr [eax]
 00504FCD    call       dword ptr [ebx+18]; TZMySQLResultSet.sub_005046C0
 00504FD0    mov        ecx,dword ptr [ebp-4]
 00504FD3    mov        dl,1
 00504FD5    mov        eax,[0041CC74]; TStringStream
 00504FDA    call       TStringStream.Create; TStringStream.Create
 00504FDF    mov        ebx,eax
 00504FE1    xor        eax,eax
 00504FE3    pop        edx
 00504FE4    pop        ecx
 00504FE5    pop        ecx
 00504FE6    mov        dword ptr fs:[eax],edx
 00504FE9    push       504FFE
 00504FEE    lea        eax,[ebp-4]
 00504FF1    call       @LStrClr
 00504FF6    ret
<00504FF7    jmp        @HandleFinally
<00504FFC    jmp        00504FEE
 00504FFE    mov        eax,ebx
 00505000    pop        esi
 00505001    pop        ebx
 00505002    pop        ecx
 00505003    pop        ebp
 00505004    ret
*}
//end;

//00505008
//procedure sub_00505008(?:?; ?:?);
//begin
{*
 00505008    push       ebp
 00505009    mov        ebp,esp
 0050500B    add        esp,0FFFFFFF4
 0050500E    push       ebx
 0050500F    push       esi
 00505010    xor        ebx,ebx
 00505012    mov        dword ptr [ebp-0C],ebx
 00505015    mov        dword ptr [ebp-4],ecx
 00505018    mov        esi,edx
 0050501A    mov        ebx,eax
 0050501C    xor        eax,eax
 0050501E    push       ebp
 0050501F    push       5050EB
 00505024    push       dword ptr fs:[eax]
 00505027    mov        dword ptr fs:[eax],esp
 0050502A    mov        edx,esi
 0050502C    mov        eax,ebx
 0050502E    call       004D4450
 00505033    xor        eax,eax
 00505035    mov        dword ptr [ebp-8],eax
 00505038    xor        eax,eax
 0050503A    push       ebp
 0050503B    push       5050CE
 00505040    push       dword ptr fs:[eax]
 00505043    mov        dword ptr fs:[eax],esp
 00505046    mov        edx,esi
 00505048    mov        eax,ebx
 0050504A    mov        ecx,dword ptr [eax]
 0050504C    call       dword ptr [ecx+10]; TZMySQLResultSet.sub_00504524
 0050504F    test       al,al
>00505051    jne        00505093
 00505053    lea        ecx,[ebp-0C]
 00505056    mov        edx,esi
 00505058    mov        eax,ebx
 0050505A    mov        ebx,dword ptr [eax]
 0050505C    call       dword ptr [ebx+18]; TZMySQLResultSet.sub_005046C0
 0050505F    mov        ecx,dword ptr [ebp-0C]
 00505062    mov        dl,1
 00505064    mov        eax,[0041CC74]; TStringStream
 00505069    call       TStringStream.Create; TStringStream.Create
 0050506E    mov        dword ptr [ebp-8],eax
 00505071    mov        ecx,dword ptr [ebp-8]
 00505074    mov        dl,1
 00505076    mov        eax,[004D3F38]; TZAbstractBlob
 0050507B    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 00505080    mov        edx,eax
 00505082    test       edx,edx
>00505084    je         00505089
 00505086    sub        edx,0FFFFFFE8
 00505089    mov        eax,dword ptr [ebp-4]
 0050508C    call       @IntfCopy
>00505091    jmp        005050B2
 00505093    xor        ecx,ecx
 00505095    mov        dl,1
 00505097    mov        eax,[004D3F38]; TZAbstractBlob
 0050509C    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 005050A1    mov        edx,eax
 005050A3    test       edx,edx
>005050A5    je         005050AA
 005050A7    sub        edx,0FFFFFFE8
 005050AA    mov        eax,dword ptr [ebp-4]
 005050AD    call       @IntfCopy
 005050B2    xor        eax,eax
 005050B4    pop        edx
 005050B5    pop        ecx
 005050B6    pop        ecx
 005050B7    mov        dword ptr fs:[eax],edx
 005050BA    push       5050D5
 005050BF    cmp        dword ptr [ebp-8],0
>005050C3    je         005050CD
 005050C5    mov        eax,dword ptr [ebp-8]
 005050C8    call       TObject.Free
 005050CD    ret
<005050CE    jmp        @HandleFinally
<005050D3    jmp        005050BF
 005050D5    xor        eax,eax
 005050D7    pop        edx
 005050D8    pop        ecx
 005050D9    pop        ecx
 005050DA    mov        dword ptr fs:[eax],edx
 005050DD    push       5050F2
 005050E2    lea        eax,[ebp-0C]
 005050E5    call       @LStrClr
 005050EA    ret
<005050EB    jmp        @HandleFinally
<005050F0    jmp        005050E2
 005050F2    pop        esi
 005050F3    pop        ebx
 005050F4    mov        esp,ebp
 005050F6    pop        ebp
 005050F7    ret
*}
//end;

//005050F8
//function sub_005050F8(?:?):?;
//begin
{*
 005050F8    push       ebp
 005050F9    mov        ebp,esp
 005050FB    push       ecx
 005050FC    push       ebx
 005050FD    push       esi
 005050FE    mov        esi,edx
 00505100    mov        ebx,eax
 00505102    mov        eax,ebx
 00505104    call       004D42AC
 00505109    mov        byte ptr [ebp-1],0
 0050510D    mov        eax,dword ptr [ebx+18]; TZMySQLResultSet.?f18:dword
 00505110    test       eax,eax
>00505112    jle        0050511C
 00505114    cmp        eax,esi
>00505116    jl         005051B1
 0050511C    cmp        byte ptr [ebx+4C],0; TZMySQLResultSet.?f4C:byte
>00505120    jne        005051AA
 00505126    test       esi,esi
>00505128    jge        00505148
 0050512A    mov        eax,dword ptr [ebx+14]; TZMySQLResultSet.?f14:Integer
 0050512D    sub        eax,esi
>0050512F    jno        00505136
 00505131    call       @IntOver
 00505136    add        eax,1
>00505139    jno        00505140
 0050513B    call       @IntOver
 00505140    mov        esi,eax
 00505142    test       esi,esi
>00505144    jge        00505148
 00505146    xor        esi,esi
 00505148    test       esi,esi
>0050514A    jl         005051A0
 0050514C    mov        eax,dword ptr [ebx+14]; TZMySQLResultSet.?f14:Integer
 0050514F    add        eax,1
>00505152    jno        00505159
 00505154    call       @IntOver
 00505159    cmp        esi,eax
>0050515B    jg         005051A0
 0050515D    mov        dword ptr [ebx+10],esi; TZMySQLResultSet.?f10:dword
 00505160    cmp        esi,1
>00505163    jl         0050519B
 00505165    cmp        esi,dword ptr [ebx+14]; TZMySQLResultSet.?f14:Integer
>00505168    jg         0050519B
 0050516A    mov        ecx,dword ptr [ebx+10]; TZMySQLResultSet.?f10:dword
 0050516D    sub        ecx,1
>00505170    jno        00505177
 00505172    call       @IntOver
 00505177    test       ecx,ecx
>00505179    jns        00505180
 0050517B    call       @BoundErr
 00505180    mov        edx,dword ptr [ebx+40]; TZMySQLResultSet.?f40:dword
 00505183    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00505186    mov        esi,dword ptr [eax]
 00505188    call       dword ptr [esi+34]
 0050518B    mov        edx,dword ptr [ebx+40]; TZMySQLResultSet.?f40:dword
 0050518E    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 00505191    mov        ecx,dword ptr [eax]
 00505193    call       dword ptr [ecx+58]
 00505196    mov        dword ptr [ebx+44],eax; TZMySQLResultSet.?f44:dword
>00505199    jmp        005051A0
 0050519B    xor        eax,eax
 0050519D    mov        dword ptr [ebx+44],eax; TZMySQLResultSet.?f44:dword
 005051A0    cmp        dword ptr [ebx+44],0; TZMySQLResultSet.?f44:dword
 005051A4    setne      byte ptr [ebp-1]
>005051A8    jmp        005051B1
 005051AA    mov        eax,ebx
 005051AC    call       004D4204
 005051B1    mov        al,byte ptr [ebp-1]
 005051B4    pop        esi
 005051B5    pop        ebx
 005051B6    pop        ecx
 005051B7    pop        ebp
 005051B8    ret
*}
//end;

//005051BC
//function sub_005051BC:?;
//begin
{*
 005051BC    push       ebp
 005051BD    mov        ebp,esp
 005051BF    push       ebx
 005051C0    push       esi
 005051C1    mov        ebx,eax
 005051C3    xor        eax,eax
 005051C5    mov        edx,dword ptr [ebx+18]; TZMySQLResultSet.?f18:dword
 005051C8    test       edx,edx
>005051CA    jle        005051D1
 005051CC    cmp        edx,dword ptr [ebx+10]; TZMySQLResultSet.?f10:dword
>005051CF    jle        00505216
 005051D1    mov        edx,dword ptr [ebx+40]; TZMySQLResultSet.?f40:dword
 005051D4    mov        eax,dword ptr [ebx+48]; TZMySQLResultSet.?f48:IZMySQLPlainDriver
 005051D7    mov        ecx,dword ptr [eax]
 005051D9    call       dword ptr [ecx+58]
 005051DC    mov        esi,eax
 005051DE    mov        dword ptr [ebx+44],esi; TZMySQLResultSet.?f44:dword
 005051E1    test       esi,esi
>005051E3    je         005051FF
 005051E5    add        dword ptr [ebx+10],1; TZMySQLResultSet.?f10:dword
>005051E9    jno        005051F0
 005051EB    call       @IntOver
 005051F0    mov        eax,dword ptr [ebx+10]; TZMySQLResultSet.?f10:dword
 005051F3    cmp        eax,dword ptr [ebx+14]; TZMySQLResultSet.?f14:Integer
>005051F6    jle        005051FB
 005051F8    mov        dword ptr [ebx+14],eax; TZMySQLResultSet.?f14:Integer
 005051FB    mov        al,1
>005051FD    jmp        00505216
 005051FF    mov        eax,dword ptr [ebx+14]; TZMySQLResultSet.?f14:Integer
 00505202    cmp        eax,dword ptr [ebx+10]; TZMySQLResultSet.?f10:dword
>00505205    jl         00505214
 00505207    add        eax,1
>0050520A    jno        00505211
 0050520C    call       @IntOver
 00505211    mov        dword ptr [ebx+10],eax; TZMySQLResultSet.?f10:dword
 00505214    xor        eax,eax
 00505216    pop        esi
 00505217    pop        ebx
 00505218    pop        ebp
 00505219    ret
*}
//end;

//0050521C
//constructor TZMySQLCachedResolver.Create(?:TZMySQLCachedResolver; _Dv__:Boolean; ?:?; ?:?; ?:?);
//begin
{*
 0050521C    push       ebp
 0050521D    mov        ebp,esp
 0050521F    add        esp,0FFFFFFF8
 00505222    push       ebx
 00505223    push       esi
 00505224    push       edi
 00505225    test       dl,dl
>00505227    je         00505231
 00505229    add        esp,0FFFFFFF0
 0050522C    call       @ClassCreate
 00505231    mov        dword ptr [ebp-8],ecx
 00505234    mov        byte ptr [ebp-1],dl
 00505237    mov        edi,eax
 00505239    mov        eax,dword ptr [ebp-8]
 0050523C    call       @IntfAddRef
 00505241    mov        eax,dword ptr [ebp+0C]
 00505244    call       @IntfAddRef
 00505249    mov        eax,dword ptr [ebp+8]
 0050524C    call       @IntfAddRef
 00505251    xor        eax,eax
 00505253    push       ebp
 00505254    push       5052E5
 00505259    push       dword ptr fs:[eax]
 0050525C    mov        dword ptr fs:[eax],esp
 0050525F    mov        eax,dword ptr [ebp+8]
 00505262    push       eax
 00505263    mov        ecx,dword ptr [ebp+0C]
 00505266    xor        edx,edx
 00505268    mov        eax,edi
 0050526A    call       TZGenericCachedResolver.Create
 0050526F    lea        eax,[edi+34]; TZMySQLCachedResolver.?f34:IZMySQLPlainDriver
 00505272    mov        edx,dword ptr [ebp-8]
 00505275    call       @IntfCopy
 0050527A    mov        eax,dword ptr [ebp+10]
 0050527D    mov        dword ptr [edi+30],eax; TZMySQLCachedResolver.?f30:dword
 00505280    xor        eax,eax
 00505282    mov        dword ptr [edi+38],eax; TZMySQLCachedResolver.?f38:dword
 00505285    mov        eax,dword ptr [ebp+8]
 00505288    mov        edx,dword ptr [eax]
 0050528A    call       dword ptr [edx+0C]
 0050528D    mov        esi,eax
 0050528F    test       esi,esi
>00505291    jle        005052BF
 00505293    mov        ebx,1
 00505298    mov        edx,ebx
 0050529A    mov        eax,dword ptr [ebp+8]
 0050529D    mov        ecx,dword ptr [eax]
 0050529F    call       dword ptr [ecx+10]
 005052A2    test       al,al
>005052A4    je         005052BB
 005052A6    mov        edx,ebx
 005052A8    mov        eax,dword ptr [ebp+8]
 005052AB    mov        ecx,dword ptr [eax]
 005052AD    call       dword ptr [ecx+48]
 005052B0    add        al,0FE
 005052B2    sub        al,4
>005052B4    jae        005052BB
 005052B6    mov        dword ptr [edi+38],ebx; TZMySQLCachedResolver.?f38:dword
>005052B9    jmp        005052BF
 005052BB    inc        ebx
 005052BC    dec        esi
<005052BD    jne        00505298
 005052BF    xor        eax,eax
 005052C1    pop        edx
 005052C2    pop        ecx
 005052C3    pop        ecx
 005052C4    mov        dword ptr fs:[eax],edx
 005052C7    push       5052EC
 005052CC    lea        eax,[ebp-8]
 005052CF    call       @IntfClear
 005052D4    lea        eax,[ebp+8]
 005052D7    call       @IntfClear
 005052DC    lea        eax,[ebp+0C]
 005052DF    call       @IntfClear
 005052E4    ret
<005052E5    jmp        @HandleFinally
<005052EA    jmp        005052CC
 005052EC    mov        eax,edi
 005052EE    cmp        byte ptr [ebp-1],0
>005052F2    je         00505303
 005052F4    call       @AfterConstruction
 005052F9    pop        dword ptr fs:[0]
 00505300    add        esp,0C
 00505303    mov        eax,edi
 00505305    pop        edi
 00505306    pop        esi
 00505307    pop        ebx
 00505308    pop        ecx
 00505309    pop        ecx
 0050530A    pop        ebp
 0050530B    ret        0C
*}
//end;

//00505310
//procedure sub_00505310(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00505310    push       ebp
 00505311    mov        ebp,esp
 00505313    push       ecx
 00505314    push       ebx
 00505315    push       esi
 00505316    push       edi
 00505317    mov        ebx,ecx
 00505319    mov        dword ptr [ebp-4],edx
 0050531C    mov        esi,eax
 0050531E    mov        edi,dword ptr [ebp+0C]
 00505321    mov        eax,dword ptr [ebp-4]
 00505324    call       @IntfAddRef
 00505329    xor        eax,eax
 0050532B    push       ebp
 0050532C    push       50537E
 00505331    push       dword ptr fs:[eax]
 00505334    mov        dword ptr fs:[eax],esp
 00505337    push       edi
 00505338    mov        eax,dword ptr [ebp+8]
 0050533B    push       eax
 0050533C    mov        ecx,ebx
 0050533E    mov        edx,dword ptr [ebp-4]
 00505341    mov        eax,esi
 00505343    call       004CF2B8
 00505348    cmp        bl,2
>0050534B    jne        00505368
 0050534D    push       edi
 0050534E    mov        eax,dword ptr [ebp+8]
 00505351    push       eax
 00505352    mov        eax,esi
 00505354    test       eax,eax
>00505356    je         0050535B
 00505358    sub        eax,0FFFFFFC4
 0050535B    push       eax
 0050535C    mov        ecx,ebx
 0050535E    mov        edx,dword ptr [ebp-4]
 00505361    mov        eax,esi
 00505363    mov        ebx,dword ptr [eax]
 00505365    call       dword ptr [ebx+0C]; TZMySQLCachedResolver.sub_00505390
 00505368    xor        eax,eax
 0050536A    pop        edx
 0050536B    pop        ecx
 0050536C    pop        ecx
 0050536D    mov        dword ptr fs:[eax],edx
 00505370    push       505385
 00505375    lea        eax,[ebp-4]
 00505378    call       @IntfClear
 0050537D    ret
<0050537E    jmp        @HandleFinally
<00505383    jmp        00505375
 00505385    pop        edi
 00505386    pop        esi
 00505387    pop        ebx
 00505388    pop        ecx
 00505389    pop        ebp
 0050538A    ret        8
*}
//end;

//00505390
//procedure sub_00505390(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00505390    push       ebp
 00505391    mov        ebp,esp
 00505393    push       ecx
 00505394    mov        ecx,7
 00505399    push       0
 0050539B    push       0
 0050539D    dec        ecx
<0050539E    jne        00505399
 005053A0    xchg       ecx,dword ptr [ebp-4]
 005053A3    push       ebx
 005053A4    push       esi
 005053A5    push       edi
 005053A6    mov        byte ptr [ebp-5],cl
 005053A9    mov        dword ptr [ebp-4],edx
 005053AC    mov        ebx,eax
 005053AE    mov        edi,dword ptr [ebp+0C]
 005053B1    mov        esi,dword ptr [ebp+10]
 005053B4    mov        eax,dword ptr [ebp-4]
 005053B7    call       @IntfAddRef
 005053BC    mov        eax,dword ptr [ebp+8]
 005053BF    call       @IntfAddRef
 005053C4    xor        eax,eax
 005053C6    push       ebp
 005053C7    push       505483
 005053CC    push       dword ptr fs:[eax]
 005053CF    mov        dword ptr fs:[eax],esp
 005053D2    push       esi
 005053D3    push       edi
 005053D4    mov        eax,dword ptr [ebp+8]
 005053D7    push       eax
 005053D8    mov        cl,byte ptr [ebp-5]
 005053DB    mov        edx,dword ptr [ebp-4]
 005053DE    mov        eax,ebx
 005053E0    call       004CF884
 005053E5    cmp        dword ptr [ebx+38],0; TZMySQLCachedResolver.?f38:dword
>005053E9    jle        00505447
 005053EB    mov        edx,dword ptr [ebx+38]; TZMySQLCachedResolver.?f38:dword
 005053EE    mov        eax,esi
 005053F0    call       004C9638
 005053F5    test       al,al
>005053F7    jne        00505412
 005053F9    lea        ecx,[ebp-38]
 005053FC    mov        edx,dword ptr [ebx+38]; TZMySQLCachedResolver.?f38:dword
 005053FF    mov        eax,esi
 00505401    call       004CB6EC
 00505406    cmp        dword ptr [ebp-32],0
>0050540A    jne        00505410
 0050540C    cmp        dword ptr [ebp-36],0
>00505410    jne        00505447
 00505412    lea        eax,[ebp-3C]
 00505415    mov        edx,dword ptr [ebx+0C]; TZMySQLCachedResolver.?fC:IZConnection
 00505418    mov        ecx,505494; ['{68E33DD3-4CDC-4BFC-8A28-E9F2EE94E457}']
 0050541D    call       @IntfCast
 00505422    mov        eax,dword ptr [ebp-3C]
 00505425    lea        edx,[ebp-0C]
 00505428    mov        ecx,dword ptr [eax]
 0050542A    call       dword ptr [ecx+94]
 00505430    mov        edx,dword ptr [ebx+30]; TZMySQLCachedResolver.?f30:dword
 00505433    mov        eax,dword ptr [ebp-0C]
 00505436    mov        ecx,dword ptr [eax]
 00505438    call       dword ptr [ecx+78]
 0050543B    push       edx
 0050543C    push       eax
 0050543D    mov        edx,dword ptr [ebx+38]; TZMySQLCachedResolver.?f38:dword
 00505440    mov        eax,edi
 00505442    call       004CC1D4
 00505447    xor        eax,eax
 00505449    pop        edx
 0050544A    pop        ecx
 0050544B    pop        ecx
 0050544C    mov        dword ptr fs:[eax],edx
 0050544F    push       50548A
 00505454    lea        eax,[ebp-3C]
 00505457    call       @IntfClear
 0050545C    lea        eax,[ebp-38]
 0050545F    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00505465    call       @FinalizeRecord
 0050546A    lea        eax,[ebp-0C]
 0050546D    call       @IntfClear
 00505472    lea        eax,[ebp-4]
 00505475    call       @IntfClear
 0050547A    lea        eax,[ebp+8]
 0050547D    call       @IntfClear
 00505482    ret
<00505483    jmp        @HandleFinally
<00505488    jmp        00505454
 0050548A    pop        edi
 0050548B    pop        esi
 0050548C    pop        ebx
 0050548D    mov        esp,ebp
 0050548F    pop        ebp
 00505490    ret        0C
*}
//end;

//005054A4
//procedure sub_005054A4(?:?; ?:?);
//begin
{*
 005054A4    push       ebp
 005054A5    mov        ebp,esp
 005054A7    add        esp,0FFFFFFF8
 005054AA    push       ebx
 005054AB    push       esi
 005054AC    push       edi
 005054AD    mov        ebx,ecx
 005054AF    mov        dword ptr [ebp-4],edx
 005054B2    mov        eax,ebx
 005054B4    call       @LStrClr
 005054B9    mov        eax,dword ptr [ebp-4]
 005054BC    mov        eax,dword ptr [eax+8]
 005054BF    test       eax,eax
>005054C1    je         0050552B
 005054C3    mov        edi,eax
 005054C5    sub        edi,1
>005054C8    jno        005054CF
 005054CA    call       @IntOver
 005054CF    test       edi,edi
>005054D1    jl         0050551D
 005054D3    inc        edi
 005054D4    mov        dword ptr [ebp-8],0
 005054DB    mov        edx,dword ptr [ebp-8]
 005054DE    mov        eax,dword ptr [ebp-4]
 005054E1    call       TObjectList.GetItem
 005054E6    mov        esi,eax
 005054E8    cmp        dword ptr [ebx],0
>005054EB    je         005054F9
 005054ED    mov        eax,ebx
 005054EF    mov        edx,50553C; ','
 005054F4    call       @LStrCat
 005054F9    cmp        dword ptr [esi+10],0
>005054FD    je         0050550B
 005054FF    mov        eax,ebx
 00505501    mov        edx,dword ptr [esi+10]
 00505504    call       @LStrCat
>00505509    jmp        00505517
 0050550B    mov        eax,ebx
 0050550D    mov        edx,505548; 'NULL'
 00505512    call       @LStrCat
 00505517    inc        dword ptr [ebp-8]
 0050551A    dec        edi
<0050551B    jne        005054DB
 0050551D    mov        ecx,dword ptr [ebx]
 0050551F    mov        eax,ebx
 00505521    mov        edx,505558; 'SELECT '
 00505526    call       @LStrCat3
 0050552B    pop        edi
 0050552C    pop        esi
 0050552D    pop        ebx
 0050552E    pop        ecx
 0050552F    pop        ecx
 00505530    pop        ebp
 00505531    ret
*}
//end;

end.