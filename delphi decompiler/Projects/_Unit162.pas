{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit162;

interface

uses
  Classes, Windows, Graphics, _Unit134, ZPlainOracleDriver, ZDbcIntfs;

type
  TZOracleResultSet = class(TZAbstractResultSet)
  public
    f3C:String;//f3C
    f40:dword;//f40
    f44:dword;//f44
    f48:IZOraclePlainDriver;//f48
    f4C:dword;//f4C
    destructor Destroy; virtual;
    procedure sub_00545644; virtual;
    //function sub_00546764:?; virtual;
    procedure sub_00545C1C; virtual;
    //function sub_00545C48(?:?):?; virtual;
    //procedure sub_005462C4(?:?; ?:?); virtual;
    //function sub_005462EC(?:?):?; virtual;
    //procedure sub_00546364(?:?); virtual;
    //procedure sub_00546388(?:?); virtual;
    //procedure sub_005463AC(?:?); virtual;
    //procedure sub_005463D0(?:?); virtual;
    //procedure sub_00546408(?:?); virtual;
    //procedure sub_00546434(?:?); virtual;
    //procedure sub_00546464(?:?); virtual;
    //procedure sub_00546494(?:?; ?:?); virtual;
    //procedure sub_005464F8(?:?); virtual;
    //procedure sub_00546538(?:?); virtual;
    //procedure sub_0054656C(?:?); virtual;
    //procedure sub_0054659C(?:?; ?:?); virtual;
    //constructor Create(?:TZOracleResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
  end;
  TZOracleBlob = class(TZAbstractBlob)
  public
    f1C:IZConnection;//f1C
    f20:dword;//f20
    f24:IZOraclePlainDriver;//f24
    f28:byte;//f28
    f29:byte;//f29
    destructor Destroy; virtual;
    procedure sub_00546F60; virtual;
    procedure sub_00546FB8; virtual;
    //procedure sub_00546F78(?:?); virtual;
    //constructor Create(?:TZOracleBlob; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//00545550
//constructor TZOracleResultSet.Create(?:TZOracleResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00545550    push       ebp
 00545551    mov        ebp,esp
 00545553    push       ecx
 00545554    push       ebx
 00545555    push       esi
 00545556    test       dl,dl
>00545558    je         00545562
 0054555A    add        esp,0FFFFFFF0
 0054555D    call       @ClassCreate
 00545562    mov        dword ptr [ebp-4],ecx
 00545565    mov        ebx,edx
 00545567    mov        esi,eax
 00545569    mov        eax,dword ptr [ebp-4]
 0054556C    call       @IntfAddRef
 00545571    mov        eax,dword ptr [ebp+14]
 00545574    call       @IntfAddRef
 00545579    mov        eax,dword ptr [ebp+10]
 0054557C    call       @LStrAddRef
 00545581    xor        eax,eax
 00545583    push       ebp
 00545584    push       5455F3
 00545589    push       dword ptr fs:[eax]
 0054558C    mov        dword ptr fs:[eax],esp
 0054558F    mov        eax,dword ptr [ebp+10]
 00545592    push       eax
 00545593    push       0
 00545595    mov        ecx,dword ptr [ebp+14]
 00545598    xor        edx,edx
 0054559A    mov        eax,esi
 0054559C    call       004D3FC8
 005455A1    lea        eax,[esi+3C]; TZOracleResultSet.?f3C:String
 005455A4    mov        edx,dword ptr [ebp+10]
 005455A7    call       @LStrAsg
 005455AC    mov        eax,dword ptr [ebp+0C]
 005455AF    mov        dword ptr [esi+40],eax; TZOracleResultSet.?f40:dword
 005455B2    mov        eax,dword ptr [ebp+8]
 005455B5    mov        dword ptr [esi+44],eax; TZOracleResultSet.?f44:dword
 005455B8    lea        eax,[esi+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 005455BB    mov        edx,dword ptr [ebp-4]
 005455BE    call       @IntfCopy
 005455C3    mov        byte ptr [esi+25],0; TZOracleResultSet.?f25:byte
 005455C7    mov        eax,esi
 005455C9    mov        edx,dword ptr [eax]
 005455CB    call       dword ptr [edx]; TZOracleResultSet.sub_00545644
 005455CD    xor        eax,eax
 005455CF    pop        edx
 005455D0    pop        ecx
 005455D1    pop        ecx
 005455D2    mov        dword ptr fs:[eax],edx
 005455D5    push       5455FA
 005455DA    lea        eax,[ebp-4]
 005455DD    call       @IntfClear
 005455E2    lea        eax,[ebp+10]
 005455E5    call       @LStrClr
 005455EA    lea        eax,[ebp+14]
 005455ED    call       @IntfClear
 005455F2    ret
<005455F3    jmp        @HandleFinally
<005455F8    jmp        005455DA
 005455FA    mov        eax,esi
 005455FC    test       bl,bl
>005455FE    je         0054560F
 00545600    call       @AfterConstruction
 00545605    pop        dword ptr fs:[0]
 0054560C    add        esp,0C
 0054560F    mov        eax,esi
 00545611    pop        esi
 00545612    pop        ebx
 00545613    pop        ecx
 00545614    pop        ebp
 00545615    ret        10
*}
//end;

//00545618
destructor TZOracleResultSet.Destroy;
begin
{*
 00545618    push       ebp
 00545619    mov        ebp,esp
 0054561B    push       ebx
 0054561C    push       esi
 0054561D    call       @BeforeDestruction
 00545622    mov        ebx,edx
 00545624    mov        esi,eax
 00545626    mov        edx,ebx
 00545628    and        dl,0FC
 0054562B    mov        eax,esi
 0054562D    call       TZAbstractResultSet.Destroy
 00545632    test       bl,bl
>00545634    jle        0054563D
 00545636    mov        eax,esi
 00545638    call       @ClassDestroy
 0054563D    pop        esi
 0054563E    pop        ebx
 0054563F    pop        ebp
 00545640    ret
*}
end;

//00545644
procedure sub_00545644;
begin
{*
 00545644    push       ebp
 00545645    mov        ebp,esp
 00545647    add        esp,0FFFFFFD0
 0054564A    push       ebx
 0054564B    push       esi
 0054564C    push       edi
 0054564D    xor        edx,edx
 0054564F    mov        dword ptr [ebp-30],edx
 00545652    mov        dword ptr [ebp-28],edx
 00545655    mov        dword ptr [ebp-2C],edx
 00545658    mov        dword ptr [ebp-24],edx
 0054565B    mov        dword ptr [ebp-20],edx
 0054565E    mov        dword ptr [ebp-8],edx
 00545661    mov        ebx,eax
 00545663    xor        eax,eax
 00545665    push       ebp
 00545666    push       545BFB
 0054566B    push       dword ptr fs:[eax]
 0054566E    mov        dword ptr fs:[eax],esp
 00545671    cmp        byte ptr [ebx+25],1; TZOracleResultSet.?f25:byte
>00545675    jne        00545698
 00545677    lea        edx,[ebp-20]
 0054567A    mov        eax,[0061B624]; ^#122.sResString46:TResStringRec
 0054567F    call       LoadResString
 00545684    mov        ecx,dword ptr [ebp-20]
 00545687    mov        dl,1
 00545689    mov        eax,[004C6D20]; EZSQLException
 0054568E    call       EZSQLException.Create; EZSQLException.Create
 00545693    call       @RaiseExcept
 00545698    cmp        dword ptr [ebx+40],0; TZOracleResultSet.?f40:dword
>0054569C    je         005456A4
 0054569E    cmp        dword ptr [ebx+44],0; TZOracleResultSet.?f44:dword
>005456A2    jne        005456C5
 005456A4    lea        edx,[ebp-24]
 005456A7    mov        eax,[0061B544]; ^#122.sResString28:TResStringRec
 005456AC    call       LoadResString
 005456B1    mov        ecx,dword ptr [ebp-24]
 005456B4    mov        dl,1
 005456B6    mov        eax,[004C6D20]; EZSQLException
 005456BB    call       EZSQLException.Create; EZSQLException.Create
 005456C0    call       @RaiseExcept
 005456C5    lea        edx,[ebp-2C]
 005456C8    mov        eax,ebx
 005456CA    mov        ecx,dword ptr [eax]
 005456CC    call       dword ptr [ecx+1E0]; TZOracleResultSet.sub_004D5990
 005456D2    mov        eax,dword ptr [ebp-2C]
 005456D5    lea        edx,[ebp-28]
 005456D8    mov        ecx,dword ptr [eax]
 005456DA    call       dword ptr [ecx+88]
 005456E0    mov        edx,dword ptr [ebp-28]
 005456E3    lea        eax,[ebp-8]
 005456E6    mov        ecx,545C0C; ['{C7F36FDF-8A64-477B-A0EB-3E8AB7C09F8D}']
 005456EB    call       @IntfCast
 005456F0    mov        eax,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 005456F3    push       eax
 005456F4    push       1
 005456F6    push       0
 005456F8    push       0
 005456FA    push       0
 005456FC    push       10
 005456FE    mov        eax,dword ptr [ebp-8]
 00545701    mov        edx,dword ptr [eax]
 00545703    call       dword ptr [edx+9C]
 00545709    mov        edx,eax
 0054570B    mov        ecx,dword ptr [ebx+40]; TZOracleResultSet.?f40:dword
 0054570E    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00545711    mov        esi,dword ptr [eax]
 00545713    call       dword ptr [esi+48]
 00545716    push       3
 00545718    mov        edx,dword ptr [ebx+3C]; TZOracleResultSet.?f3C:String
 0054571B    push       edx
 0054571C    mov        ecx,eax
 0054571E    mov        edx,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 00545721    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00545724    call       00547B30
 00545729    lea        eax,[ebp-10]
 0054572C    push       eax
 0054572D    push       0
 0054572F    push       12
 00545731    mov        eax,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 00545734    push       eax
 00545735    mov        ecx,4
 0054573A    mov        edx,dword ptr [ebx+40]; TZOracleResultSet.?f40:dword
 0054573D    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00545740    mov        esi,dword ptr [eax]
 00545742    call       dword ptr [esi+50]
 00545745    lea        eax,[ebx+4C]; TZOracleResultSet.?f4C:dword
 00545748    mov        edx,dword ptr [ebp-10]
 0054574B    call       00547020
 00545750    mov        edx,dword ptr [ebx+4C]; TZOracleResultSet.?f4C:dword
 00545753    mov        eax,dword ptr [ebp-10]
 00545756    mov        dword ptr [edx+4],eax
 00545759    test       eax,eax
>0054575B    jle        00545AB9
 00545761    mov        dword ptr [ebp-1C],eax
 00545764    mov        dword ptr [ebp-4],1
 0054576B    mov        eax,dword ptr [ebp-4]
 0054576E    dec        eax
 0054576F    cmp        eax,3FF
>00545774    jbe        0054577B
 00545776    call       @BoundErr
 0054577B    inc        eax
 0054577C    imul       eax,eax,2D
>0054577F    jno        00545786
 00545781    call       @IntOver
 00545786    mov        edx,dword ptr [ebx+4C]; TZOracleResultSet.?f4C:dword
 00545789    lea        eax,[edx+eax-25]
 0054578D    mov        dword ptr [ebp-0C],eax
 00545790    mov        eax,dword ptr [ebp-0C]
 00545793    xor        edx,edx
 00545795    mov        dword ptr [eax],edx
 00545797    mov        eax,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 0054579A    push       eax
 0054579B    mov        eax,dword ptr [ebp-0C]
 0054579E    push       eax
 0054579F    mov        eax,dword ptr [ebp-4]
 005457A2    push       eax
 005457A3    mov        ecx,4
 005457A8    mov        edx,dword ptr [ebx+40]; TZOracleResultSet.?f40:dword
 005457AB    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 005457AE    mov        esi,dword ptr [eax]
 005457B0    call       dword ptr [esi+4C]
 005457B3    mov        eax,dword ptr [ebp-0C]
 005457B6    add        eax,16
 005457B9    push       eax
 005457BA    push       0
 005457BC    push       1
 005457BE    mov        eax,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 005457C1    push       eax
 005457C2    mov        eax,dword ptr [ebp-0C]
 005457C5    mov        edx,dword ptr [eax]
 005457C7    mov        ecx,35
 005457CC    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 005457CF    mov        esi,dword ptr [eax]
 005457D1    call       dword ptr [esi+50]
 005457D4    mov        eax,dword ptr [ebp-0C]
 005457D7    add        eax,14
 005457DA    push       eax
 005457DB    push       0
 005457DD    push       2
 005457DF    mov        eax,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 005457E2    push       eax
 005457E3    mov        eax,dword ptr [ebp-0C]
 005457E6    mov        edx,dword ptr [eax]
 005457E8    mov        ecx,35
 005457ED    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 005457F0    mov        esi,dword ptr [eax]
 005457F2    call       dword ptr [esi+50]
 005457F5    mov        eax,dword ptr [ebp-0C]
 005457F8    xor        edx,edx
 005457FA    mov        dword ptr [eax+20],edx
 005457FD    mov        eax,dword ptr [ebp-0C]
 00545800    xor        edx,edx
 00545802    mov        dword ptr [eax+1C],edx
 00545805    mov        eax,dword ptr [ebp-0C]
 00545808    movzx      eax,word ptr [eax+14]
 0054580C    cmp        eax,5E
>0054580F    jg         005458A3
>00545815    je         005459C5
 0054581B    cmp        eax,1D
>0054581E    ja         00545A32
 00545824    jmp        dword ptr [eax*4+54582B]
 00545824    dd         545A32
 00545824    dd         5458FE
 00545824    dd         54590A
 00545824    dd         5459BC
 00545824    dd         545A32
 00545824    dd         5458FE
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         5459C5
 00545824    dd         5458FE
 00545824    dd         545A32
 00545824    dd         5459CE
 00545824    dd         5459E0
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         5459FB
 00545824    dd         5459FB
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         545A32
 00545824    dd         5459BC
 005458A3    cmp        eax,9B
>005458A8    jg         005458D2
>005458AA    je         005458FE
 005458AC    add        eax,0FFFFFFA0
 005458AF    sub        eax,2
>005458B2    jb         005458FE
 005458B4    sub        eax,6
>005458B7    je         005459CE
 005458BD    sub        eax,8
>005458C0    je         00545A04
 005458C6    dec        eax
>005458C7    je         00545A1B
>005458CD    jmp        00545A32
 005458D2    sub        eax,0B8
>005458D7    je         005459E0
 005458DD    dec        eax
 005458DE    sub        eax,2
>005458E1    jb         005459E9
 005458E7    sub        eax,2
>005458EA    jb         005459F2
 005458F0    sub        eax,2B
>005458F3    je         005459F2
>005458F9    jmp        00545A32
 005458FE    mov        eax,dword ptr [ebp-0C]
 00545901    mov        byte ptr [eax+24],9
>00545905    jmp        00545A39
 0054590A    mov        eax,dword ptr [ebp-0C]
 0054590D    add        eax,1C
 00545910    push       eax
 00545911    push       0
 00545913    push       5
 00545915    mov        eax,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 00545918    push       eax
 00545919    mov        eax,dword ptr [ebp-0C]
 0054591C    mov        edx,dword ptr [eax]
 0054591E    mov        ecx,35
 00545923    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00545926    mov        esi,dword ptr [eax]
 00545928    call       dword ptr [esi+50]
 0054592B    mov        eax,dword ptr [ebp-0C]
 0054592E    add        eax,20
 00545931    push       eax
 00545932    push       0
 00545934    push       6
 00545936    mov        eax,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 00545939    push       eax
 0054593A    mov        eax,dword ptr [ebp-0C]
 0054593D    mov        edx,dword ptr [eax]
 0054593F    mov        ecx,35
 00545944    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00545947    mov        esi,dword ptr [eax]
 00545949    call       dword ptr [esi+50]
 0054594C    mov        eax,dword ptr [ebp-0C]
 0054594F    cmp        dword ptr [eax+20],0
>00545953    jne        005459B3
 00545955    mov        eax,dword ptr [ebp-0C]
 00545958    cmp        dword ptr [eax+1C],0
>0054595C    je         005459B3
 0054595E    mov        eax,dword ptr [ebp-0C]
 00545961    mov        eax,dword ptr [eax+1C]
 00545964    test       eax,eax
>00545966    jne        00545974
 00545968    mov        eax,dword ptr [ebp-0C]
 0054596B    mov        byte ptr [eax+24],4
>0054596F    jmp        00545A39
 00545974    cmp        eax,2
>00545977    jg         00545985
 00545979    mov        eax,dword ptr [ebp-0C]
 0054597C    mov        byte ptr [eax+24],2
>00545980    jmp        00545A39
 00545985    cmp        eax,4
>00545988    jg         00545996
 0054598A    mov        eax,dword ptr [ebp-0C]
 0054598D    mov        byte ptr [eax+24],3
>00545991    jmp        00545A39
 00545996    cmp        eax,9
>00545999    jg         005459A7
 0054599B    mov        eax,dword ptr [ebp-0C]
 0054599E    mov        byte ptr [eax+24],4
>005459A2    jmp        00545A39
 005459A7    mov        eax,dword ptr [ebp-0C]
 005459AA    mov        byte ptr [eax+24],5
>005459AE    jmp        00545A39
 005459B3    mov        eax,dword ptr [ebp-0C]
 005459B6    mov        byte ptr [eax+24],7
>005459BA    jmp        00545A39
 005459BC    mov        eax,dword ptr [ebp-0C]
 005459BF    mov        byte ptr [eax+24],4
>005459C3    jmp        00545A39
 005459C5    mov        eax,dword ptr [ebp-0C]
 005459C8    mov        byte ptr [eax+24],0F
>005459CC    jmp        00545A39
 005459CE    mov        eax,dword ptr [ebp-0C]
 005459D1    mov        byte ptr [eax+24],9
 005459D5    mov        eax,dword ptr [ebp-0C]
 005459D8    mov        word ptr [eax+16],14
>005459DE    jmp        00545A39
 005459E0    mov        eax,dword ptr [ebp-0C]
 005459E3    mov        byte ptr [eax+24],0C
>005459E7    jmp        00545A39
 005459E9    mov        eax,dword ptr [ebp-0C]
 005459EC    mov        byte ptr [eax+24],0D
>005459F0    jmp        00545A39
 005459F2    mov        eax,dword ptr [ebp-0C]
 005459F5    mov        byte ptr [eax+24],0E
>005459F9    jmp        00545A39
 005459FB    mov        eax,dword ptr [ebp-0C]
 005459FE    mov        byte ptr [eax+24],11
>00545A02    jmp        00545A39
 00545A04    mov        eax,dword ptr [ebp-0C]
 00545A07    mov        byte ptr [eax+24],0F
 00545A0B    mov        eax,dword ptr [ebp-0C]
 00545A0E    mov        ax,word ptr [eax+14]
 00545A12    mov        edx,dword ptr [ebp-0C]
 00545A15    mov        word ptr [edx+25],ax
>00545A19    jmp        00545A39
 00545A1B    mov        eax,dword ptr [ebp-0C]
 00545A1E    mov        byte ptr [eax+24],11
 00545A22    mov        eax,dword ptr [ebp-0C]
 00545A25    mov        ax,word ptr [eax+14]
 00545A29    mov        edx,dword ptr [ebp-0C]
 00545A2C    mov        word ptr [edx+25],ax
>00545A30    jmp        00545A39
 00545A32    mov        eax,dword ptr [ebp-0C]
 00545A35    mov        byte ptr [eax+24],0
 00545A39    mov        eax,dword ptr [ebp-0C]
 00545A3C    mov        al,byte ptr [eax+24]
 00545A3F    push       eax
 00545A40    mov        eax,dword ptr [ebp-0C]
 00545A43    mov        ax,word ptr [eax+25]
 00545A47    push       eax
 00545A48    mov        eax,dword ptr [ebp-0C]
 00545A4B    movzx      eax,word ptr [eax+16]
 00545A4F    push       eax
 00545A50    lea        ecx,[ebp-0C]
 00545A53    mov        edx,dword ptr [ebp-8]
 00545A56    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00545A59    call       0054715C
 00545A5E    mov        eax,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 00545A61    push       eax
 00545A62    mov        eax,dword ptr [ebp-4]
 00545A65    push       eax
 00545A66    mov        eax,dword ptr [ebp-0C]
 00545A69    mov        eax,dword ptr [eax+0C]
 00545A6C    push       eax
 00545A6D    mov        eax,dword ptr [ebp-0C]
 00545A70    mov        eax,dword ptr [eax+18]
 00545A73    push       eax
 00545A74    mov        eax,dword ptr [ebp-0C]
 00545A77    mov        ax,word ptr [eax+25]
 00545A7B    push       eax
 00545A7C    mov        eax,dword ptr [ebp-0C]
 00545A7F    add        eax,27
 00545A82    push       eax
 00545A83    push       0
 00545A85    push       0
 00545A87    push       0
 00545A89    mov        eax,dword ptr [ebp-0C]
 00545A8C    lea        ecx,[eax+4]
 00545A8F    mov        edx,dword ptr [ebx+40]; TZOracleResultSet.?f40:dword
 00545A92    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00545A95    mov        esi,dword ptr [eax]
 00545A97    call       dword ptr [esi+58]
 00545A9A    push       3
 00545A9C    mov        edx,dword ptr [ebx+3C]; TZOracleResultSet.?f3C:String
 00545A9F    push       edx
 00545AA0    mov        ecx,eax
 00545AA2    mov        edx,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 00545AA5    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00545AA8    call       00547B30
 00545AAD    inc        dword ptr [ebp-4]
 00545AB0    dec        dword ptr [ebp-1C]
<00545AB3    jne        0054576B
 00545AB9    mov        eax,dword ptr [ebx+28]; TZOracleResultSet.?f28:dword
 00545ABC    mov        edx,dword ptr [eax]
 00545ABE    call       dword ptr [edx+8]
 00545AC1    mov        eax,dword ptr [ebx+4C]; TZOracleResultSet.?f4C:dword
 00545AC4    mov        eax,dword ptr [eax+4]
 00545AC7    test       eax,eax
>00545AC9    jle        00545BB9
 00545ACF    mov        dword ptr [ebp-1C],eax
 00545AD2    mov        dword ptr [ebp-4],1
 00545AD9    mov        eax,dword ptr [ebp-4]
 00545ADC    dec        eax
 00545ADD    cmp        eax,3FF
>00545AE2    jbe        00545AE9
 00545AE4    call       @BoundErr
 00545AE9    inc        eax
 00545AEA    imul       eax,eax,2D
>00545AED    jno        00545AF4
 00545AEF    call       @IntOver
 00545AF4    mov        edx,dword ptr [ebx+4C]; TZOracleResultSet.?f4C:dword
 00545AF7    lea        eax,[edx+eax-25]
 00545AFB    mov        dword ptr [ebp-0C],eax
 00545AFE    mov        dl,1
 00545B00    mov        eax,[004D5F00]; TZColumnInfo
 00545B05    call       TZColumnInfo.Create; TZColumnInfo.Create
 00545B0A    mov        esi,eax
 00545B0C    lea        eax,[esi+14]; TZColumnInfo.?f14:String
 00545B0F    call       @LStrClr
 00545B14    lea        eax,[esi+24]; TZColumnInfo.?f24:String
 00545B17    call       @LStrClr
 00545B1C    xor        eax,eax
 00545B1E    mov        dword ptr [ebp-14],eax
 00545B21    lea        eax,[ebp-14]
 00545B24    push       eax
 00545B25    lea        eax,[ebp-18]
 00545B28    push       eax
 00545B29    push       4
 00545B2B    mov        eax,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 00545B2E    push       eax
 00545B2F    mov        eax,dword ptr [ebp-0C]
 00545B32    mov        edx,dword ptr [eax]
 00545B34    mov        ecx,35
 00545B39    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00545B3C    mov        edi,dword ptr [eax]
 00545B3E    call       dword ptr [edi+50]
 00545B41    cmp        dword ptr [ebp-14],0
>00545B45    je         00545B60
 00545B47    lea        ecx,[ebp-30]
 00545B4A    mov        edx,dword ptr [ebp-18]
 00545B4D    mov        eax,dword ptr [ebp-14]
 00545B50    call       004BEF98
 00545B55    mov        edx,dword ptr [ebp-30]
 00545B58    lea        eax,[esi+10]; TZColumnInfo.?f10:String
 00545B5B    call       @LStrAsg
 00545B60    xor        eax,eax
 00545B62    mov        dword ptr [esi+0C],eax; TZColumnInfo.?fC:dword
 00545B65    mov        byte ptr [esi+4],0; TZColumnInfo.?f4:LongBool
 00545B69    mov        byte ptr [esi+9],1; TZColumnInfo.?f9:byte
 00545B6D    mov        byte ptr [esi+8],1; TZColumnInfo.?f8:byte
 00545B71    mov        eax,dword ptr [ebp-0C]
 00545B74    mov        al,byte ptr [eax+24]
 00545B77    mov        byte ptr [esi+2C],al; TZColumnInfo.?f2C:byte
 00545B7A    mov        eax,dword ptr [ebp-0C]
 00545B7D    mov        eax,dword ptr [eax+20]
 00545B80    mov        dword ptr [esi+20],eax; TZColumnInfo.?f20:dword
 00545B83    mov        al,byte ptr [esi+2C]; TZColumnInfo.?f2C:byte
 00545B86    cmp        al,9
>00545B88    je         00545B8E
 00545B8A    cmp        al,0A
>00545B8C    jne        00545B9A
 00545B8E    mov        eax,dword ptr [ebp-0C]
 00545B91    movzx      eax,word ptr [eax+16]
 00545B95    mov        dword ptr [esi+1C],eax; TZColumnInfo.?f1C:Integer
>00545B98    jmp        00545BA3
 00545B9A    mov        eax,dword ptr [ebp-0C]
 00545B9D    mov        eax,dword ptr [eax+1C]
 00545BA0    mov        dword ptr [esi+1C],eax; TZColumnInfo.?f1C:Integer
 00545BA3    mov        edx,esi
 00545BA5    mov        eax,dword ptr [ebx+28]; TZOracleResultSet.?f28:dword
 00545BA8    call       00433178
 00545BAD    inc        dword ptr [ebp-4]
 00545BB0    dec        dword ptr [ebp-1C]
<00545BB3    jne        00545AD9
 00545BB9    mov        eax,ebx
 00545BBB    call       004D4580
 00545BC0    xor        eax,eax
 00545BC2    pop        edx
 00545BC3    pop        ecx
 00545BC4    pop        ecx
 00545BC5    mov        dword ptr fs:[eax],edx
 00545BC8    push       545C02
 00545BCD    lea        eax,[ebp-30]
 00545BD0    call       @LStrClr
 00545BD5    lea        eax,[ebp-2C]
 00545BD8    call       @IntfClear
 00545BDD    lea        eax,[ebp-28]
 00545BE0    call       @IntfClear
 00545BE5    lea        eax,[ebp-24]
 00545BE8    mov        edx,2
 00545BED    call       @LStrArrayClr
 00545BF2    lea        eax,[ebp-8]
 00545BF5    call       @IntfClear
 00545BFA    ret
<00545BFB    jmp        @HandleFinally
<00545C00    jmp        00545BCD
 00545C02    pop        edi
 00545C03    pop        esi
 00545C04    pop        ebx
 00545C05    mov        esp,ebp
 00545C07    pop        ebp
 00545C08    ret
*}
end;

//00545C1C
procedure sub_00545C1C;
begin
{*
 00545C1C    push       ebp
 00545C1D    mov        ebp,esp
 00545C1F    push       ebx
 00545C20    mov        ebx,eax
 00545C22    lea        edx,[ebx+4C]; TZOracleResultSet.?f4C:dword
 00545C25    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00545C28    call       00547064
 00545C2D    lea        ecx,[ebx+44]; TZOracleResultSet.?f44:dword
 00545C30    lea        edx,[ebx+40]; TZOracleResultSet.?f40:dword
 00545C33    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00545C36    call       00547FD4
 00545C3B    mov        eax,ebx
 00545C3D    call       004D4588
 00545C42    pop        ebx
 00545C43    pop        ebp
 00545C44    ret
*}
end;

//00545C48
//function sub_00545C48(?:?):?;
//begin
{*
 00545C48    push       ebp
 00545C49    mov        ebp,esp
 00545C4B    xor        ecx,ecx
 00545C4D    push       ecx
 00545C4E    push       ecx
 00545C4F    push       ecx
 00545C50    push       ecx
 00545C51    push       ecx
 00545C52    push       ebx
 00545C53    push       esi
 00545C54    mov        esi,edx
 00545C56    mov        ebx,eax
 00545C58    xor        eax,eax
 00545C5A    push       ebp
 00545C5B    push       545D23
 00545C60    push       dword ptr fs:[eax]
 00545C63    mov        dword ptr fs:[eax],esp
 00545C66    mov        eax,ebx
 00545C68    call       004D42AC
 00545C6D    mov        eax,dword ptr [ebx+10]; TZOracleResultSet.?f10:dword
 00545C70    cmp        eax,1
>00545C73    jl         00545C7A
 00545C75    cmp        eax,dword ptr [ebx+14]; TZOracleResultSet.?f14:Integer
>00545C78    jle        00545C9B
 00545C7A    lea        edx,[ebp-4]
 00545C7D    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 00545C82    call       LoadResString
 00545C87    mov        ecx,dword ptr [ebp-4]
 00545C8A    mov        dl,1
 00545C8C    mov        eax,[004C6D20]; EZSQLException
 00545C91    call       EZSQLException.Create; EZSQLException.Create
 00545C96    call       @RaiseExcept
 00545C9B    test       esi,esi
>00545C9D    jle        00545CA7
 00545C9F    mov        eax,dword ptr [ebx+4C]; TZOracleResultSet.?f4C:dword
 00545CA2    cmp        esi,dword ptr [eax+4]
>00545CA5    jle        00545CE0
 00545CA7    lea        eax,[ebp-8]
 00545CAA    push       eax
 00545CAB    lea        edx,[ebp-0C]
 00545CAE    mov        eax,[0061B758]; ^#122.sResString30:TResStringRec
 00545CB3    call       LoadResString
 00545CB8    mov        eax,dword ptr [ebp-0C]
 00545CBB    mov        dword ptr [ebp-14],esi
 00545CBE    mov        byte ptr [ebp-10],0
 00545CC2    lea        edx,[ebp-14]
 00545CC5    xor        ecx,ecx
 00545CC7    call       Format
 00545CCC    mov        ecx,dword ptr [ebp-8]
 00545CCF    mov        dl,1
 00545CD1    mov        eax,[004C6D20]; EZSQLException
 00545CD6    call       EZSQLException.Create; EZSQLException.Create
 00545CDB    call       @RaiseExcept
 00545CE0    dec        esi
 00545CE1    cmp        esi,3FF
>00545CE7    jbe        00545CEE
 00545CE9    call       @BoundErr
 00545CEE    inc        esi
 00545CEF    imul       eax,esi,2D
>00545CF2    jno        00545CF9
 00545CF4    call       @IntOver
 00545CF9    mov        edx,dword ptr [ebx+4C]; TZOracleResultSet.?f4C:dword
 00545CFC    lea        eax,[edx+eax-25]
 00545D00    cmp        word ptr [eax+27],0
 00545D05    setl       bl
 00545D08    xor        eax,eax
 00545D0A    pop        edx
 00545D0B    pop        ecx
 00545D0C    pop        ecx
 00545D0D    mov        dword ptr fs:[eax],edx
 00545D10    push       545D2A
 00545D15    lea        eax,[ebp-0C]
 00545D18    mov        edx,3
 00545D1D    call       @LStrArrayClr
 00545D22    ret
<00545D23    jmp        @HandleFinally
<00545D28    jmp        00545D15
 00545D2A    mov        eax,ebx
 00545D2C    pop        esi
 00545D2D    pop        ebx
 00545D2E    mov        esp,ebp
 00545D30    pop        ebp
 00545D31    ret
*}
//end;

//00545D34
//function sub_00545D34(?:TZOracleResultSet; ?:Integer):?;
//begin
{*
 00545D34    push       ebp
 00545D35    mov        ebp,esp
 00545D37    push       0
 00545D39    push       ebx
 00545D3A    push       esi
 00545D3B    mov        esi,edx
 00545D3D    mov        ebx,eax
 00545D3F    xor        eax,eax
 00545D41    push       ebp
 00545D42    push       545DD6
 00545D47    push       dword ptr fs:[eax]
 00545D4A    mov        dword ptr fs:[eax],esp
 00545D4D    mov        eax,ebx
 00545D4F    call       004D42AC
 00545D54    mov        eax,dword ptr [ebx+10]; TZOracleResultSet.?f10:dword
 00545D57    cmp        eax,1
>00545D5A    jl         00545D61
 00545D5C    cmp        eax,dword ptr [ebx+14]; TZOracleResultSet.?f14:Integer
>00545D5F    jle        00545D82
 00545D61    lea        edx,[ebp-4]
 00545D64    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 00545D69    call       LoadResString
 00545D6E    mov        ecx,dword ptr [ebp-4]
 00545D71    mov        dl,1
 00545D73    mov        eax,[004C6D20]; EZSQLException
 00545D78    call       EZSQLException.Create; EZSQLException.Create
 00545D7D    call       @RaiseExcept
 00545D82    dec        esi
 00545D83    cmp        esi,3FF
>00545D89    jbe        00545D90
 00545D8B    call       @BoundErr
 00545D90    inc        esi
 00545D91    imul       eax,esi,2D
>00545D94    jno        00545D9B
 00545D96    call       @IntOver
 00545D9B    mov        edx,dword ptr [ebx+4C]; TZOracleResultSet.?f4C:dword
 00545D9E    lea        eax,[edx+eax-25]
 00545DA2    mov        esi,eax
 00545DA4    cmp        word ptr [esi+27],0
>00545DA9    jl         00545DB5
 00545DAB    cmp        dword ptr [esi+0C],0
>00545DAF    je         00545DB5
 00545DB1    xor        eax,eax
>00545DB3    jmp        00545DB7
 00545DB5    mov        al,1
 00545DB7    mov        byte ptr [ebx+34],al; TZOracleResultSet.?f34:byte
 00545DBA    test       al,al
>00545DBC    je         00545DC0
 00545DBE    xor        esi,esi
 00545DC0    xor        eax,eax
 00545DC2    pop        edx
 00545DC3    pop        ecx
 00545DC4    pop        ecx
 00545DC5    mov        dword ptr fs:[eax],edx
 00545DC8    push       545DDD
 00545DCD    lea        eax,[ebp-4]
 00545DD0    call       @LStrClr
 00545DD5    ret
<00545DD6    jmp        @HandleFinally
<00545DDB    jmp        00545DCD
 00545DDD    mov        eax,esi
 00545DDF    pop        esi
 00545DE0    pop        ebx
 00545DE1    pop        ecx
 00545DE2    pop        ebp
 00545DE3    ret
*}
//end;

//00545DE4
//procedure sub_00545DE4(?:TZOracleResultSet; ?:Integer; ?:?; ?:?);
//begin
{*
 00545DE4    push       ebp
 00545DE5    mov        ebp,esp
 00545DE7    add        esp,0FFFFFFF8
 00545DEA    push       ebx
 00545DEB    push       esi
 00545DEC    push       edi
 00545DED    xor        ebx,ebx
 00545DEF    mov        dword ptr [ebp-8],ebx
 00545DF2    mov        edi,ecx
 00545DF4    mov        dword ptr [ebp-4],edx
 00545DF7    mov        esi,eax
 00545DF9    xor        eax,eax
 00545DFB    push       ebp
 00545DFC    push       545F11
 00545E01    push       dword ptr fs:[eax]
 00545E04    mov        dword ptr fs:[eax],esp
 00545E07    test       edi,edi
>00545E09    jne        00545E17
 00545E0B    mov        edx,dword ptr [ebp-4]
 00545E0E    mov        eax,esi
 00545E10    call       00545D34
 00545E15    mov        edi,eax
 00545E17    test       edi,edi
>00545E19    je         00545EF3
 00545E1F    movzx      eax,word ptr [edi+25]
 00545E23    cmp        eax,0C
>00545E26    jg         00545E3E
>00545E28    je         00545EBC
 00545E2E    sub        eax,3
>00545E31    je         00545E5C
 00545E33    dec        eax
>00545E34    je         00545E6E
 00545E36    dec        eax
>00545E37    je         00545E9B
>00545E39    jmp        00545EFB
 00545E3E    add        eax,0FFFFFFA2
 00545E41    sub        eax,2
>00545E44    jb         00545EA8
 00545E46    add        eax,0FFFFFFF0
 00545E49    sub        eax,2
>00545E4C    jb         00545ED9
 00545E52    sub        eax,49
>00545E55    je         00545EBC
>00545E57    jmp        00545EFB
 00545E5C    mov        edx,dword ptr [ebp+8]
 00545E5F    mov        eax,dword ptr [edi+0C]
 00545E62    mov        eax,dword ptr [eax]
 00545E64    call       IntToStr
>00545E69    jmp        00545EFB
 00545E6E    mov        ebx,dword ptr ds:[61C46C]; ^DecimalSeparator:Char
 00545E74    mov        bl,byte ptr [ebx]
 00545E76    mov        eax,[0061C46C]; ^DecimalSeparator:Char
 00545E7B    mov        byte ptr [eax],2E
 00545E7E    mov        eax,dword ptr [edi+0C]
 00545E81    fld        qword ptr [eax]
 00545E83    add        esp,0FFFFFFF4
 00545E86    fstp       tbyte ptr [esp]
 00545E89    wait
 00545E8A    mov        eax,dword ptr [ebp+8]
 00545E8D    call       004BF500
 00545E92    mov        eax,[0061C46C]; ^DecimalSeparator:Char
 00545E97    mov        byte ptr [eax],bl
>00545E99    jmp        00545EFB
 00545E9B    mov        edx,dword ptr [ebp+8]
 00545E9E    mov        eax,dword ptr [edi+0C]
 00545EA1    call       StrPas
>00545EA6    jmp        00545EFB
 00545EA8    mov        ecx,dword ptr [ebp+8]
 00545EAB    mov        esi,dword ptr [edi+0C]
 00545EAE    mov        edx,dword ptr [esi]
 00545EB0    mov        eax,esi
 00545EB2    add        eax,4
 00545EB5    call       004BEF98
>00545EBA    jmp        00545EFB
 00545EBC    mov        ecx,edi
 00545EBE    mov        edx,dword ptr [ebp-4]
 00545EC1    mov        eax,esi
 00545EC3    call       00546098
 00545EC8    add        esp,0FFFFFFF8
 00545ECB    fstp       qword ptr [esp]
 00545ECE    wait
 00545ECF    mov        eax,dword ptr [ebp+8]
 00545ED2    call       004BFD98
>00545ED7    jmp        00545EFB
 00545ED9    lea        ecx,[ebp-8]
 00545EDC    mov        edx,dword ptr [ebp-4]
 00545EDF    mov        eax,esi
 00545EE1    mov        ebx,dword ptr [eax]
 00545EE3    call       dword ptr [ebx+5C]; TZOracleResultSet.sub_0054659C
 00545EE6    mov        edx,dword ptr [ebp+8]
 00545EE9    mov        eax,dword ptr [ebp-8]
 00545EEC    mov        ecx,dword ptr [eax]
 00545EEE    call       dword ptr [ecx+18]
>00545EF1    jmp        00545EFB
 00545EF3    mov        eax,dword ptr [ebp+8]
 00545EF6    call       @LStrClr
 00545EFB    xor        eax,eax
 00545EFD    pop        edx
 00545EFE    pop        ecx
 00545EFF    pop        ecx
 00545F00    mov        dword ptr fs:[eax],edx
 00545F03    push       545F18
 00545F08    lea        eax,[ebp-8]
 00545F0B    call       @IntfClear
 00545F10    ret
<00545F11    jmp        @HandleFinally
<00545F16    jmp        00545F08
 00545F18    pop        edi
 00545F19    pop        esi
 00545F1A    pop        ebx
 00545F1B    pop        ecx
 00545F1C    pop        ecx
 00545F1D    pop        ebp
 00545F1E    ret        4
*}
//end;

//00545F24
//function sub_00545F24(?:TZOracleResultSet; ?:?; ?:?):?;
//begin
{*
 00545F24    push       ebp
 00545F25    mov        ebp,esp
 00545F27    push       0
 00545F29    push       ebx
 00545F2A    push       esi
 00545F2B    push       edi
 00545F2C    mov        ebx,ecx
 00545F2E    mov        edi,edx
 00545F30    mov        esi,eax
 00545F32    xor        eax,eax
 00545F34    push       ebp
 00545F35    push       545FD3
 00545F3A    push       dword ptr fs:[eax]
 00545F3D    mov        dword ptr fs:[eax],esp
 00545F40    test       ebx,ebx
>00545F42    jne        00545F4F
 00545F44    mov        edx,edi
 00545F46    mov        eax,esi
 00545F48    call       00545D34
 00545F4D    mov        ebx,eax
 00545F4F    test       ebx,ebx
>00545F51    je         00545FBB
 00545F53    mov        ax,word ptr [ebx+25]
 00545F57    sub        ax,3
>00545F5B    je         00545F64
 00545F5D    dec        ax
>00545F60    je         00545F6B
>00545F62    jmp        00545F87
 00545F64    mov        eax,dword ptr [ebx+0C]
 00545F67    mov        ebx,dword ptr [eax]
>00545F69    jmp        00545FBD
 00545F6B    mov        eax,dword ptr [ebx+0C]
 00545F6E    fld        qword ptr [eax]
 00545F70    call       @TRUNC
 00545F75    push       eax
 00545F76    sar        eax,1F
 00545F79    cmp        eax,edx
 00545F7B    pop        eax
>00545F7C    je         00545F83
 00545F7E    call       @BoundErr
 00545F83    mov        ebx,eax
>00545F85    jmp        00545FBD
 00545F87    push       0
 00545F89    push       0
 00545F8B    push       0
 00545F8D    lea        eax,[ebp-4]
 00545F90    push       eax
 00545F91    mov        ecx,ebx
 00545F93    mov        edx,edi
 00545F95    mov        eax,esi
 00545F97    call       00545DE4
 00545F9C    mov        eax,dword ptr [ebp-4]
 00545F9F    call       004BEE6C
 00545FA4    call       @TRUNC
 00545FA9    push       eax
 00545FAA    sar        eax,1F
 00545FAD    cmp        eax,edx
 00545FAF    pop        eax
>00545FB0    je         00545FB7
 00545FB2    call       @BoundErr
 00545FB7    mov        ebx,eax
>00545FB9    jmp        00545FBD
 00545FBB    xor        ebx,ebx
 00545FBD    xor        eax,eax
 00545FBF    pop        edx
 00545FC0    pop        ecx
 00545FC1    pop        ecx
 00545FC2    mov        dword ptr fs:[eax],edx
 00545FC5    push       545FDA
 00545FCA    lea        eax,[ebp-4]
 00545FCD    call       @LStrClr
 00545FD2    ret
<00545FD3    jmp        @HandleFinally
<00545FD8    jmp        00545FCA
 00545FDA    mov        eax,ebx
 00545FDC    pop        edi
 00545FDD    pop        esi
 00545FDE    pop        ebx
 00545FDF    pop        ecx
 00545FE0    pop        ebp
 00545FE1    ret
*}
//end;

//00545FE4
//function sub_00545FE4(?:TZOracleResultSet; ?:?; ?:?):?;
//begin
{*
 00545FE4    push       ebp
 00545FE5    mov        ebp,esp
 00545FE7    add        esp,0FFFFFFF4
 00545FEA    push       ebx
 00545FEB    push       esi
 00545FEC    push       edi
 00545FED    xor        ebx,ebx
 00545FEF    mov        dword ptr [ebp-0C],ebx
 00545FF2    mov        ebx,ecx
 00545FF4    mov        edi,edx
 00545FF6    mov        esi,eax
 00545FF8    xor        eax,eax
 00545FFA    push       ebp
 00545FFB    push       546086
 00546000    push       dword ptr fs:[eax]
 00546003    mov        dword ptr fs:[eax],esp
 00546006    test       ebx,ebx
>00546008    jne        00546015
 0054600A    mov        edx,edi
 0054600C    mov        eax,esi
 0054600E    call       00545D34
 00546013    mov        ebx,eax
 00546015    test       ebx,ebx
>00546017    je         00546068
 00546019    mov        ax,word ptr [ebx+25]
 0054601D    sub        ax,3
>00546021    je         0054602A
 00546023    dec        ax
>00546026    je         00546035
>00546028    jmp        00546045
 0054602A    mov        eax,dword ptr [ebx+0C]
 0054602D    fild       dword ptr [eax]
 0054602F    fstp       qword ptr [ebp-8]
 00546032    wait
>00546033    jmp        00546070
 00546035    mov        eax,dword ptr [ebx+0C]
 00546038    mov        edx,dword ptr [eax]
 0054603A    mov        dword ptr [ebp-8],edx
 0054603D    mov        edx,dword ptr [eax+4]
 00546040    mov        dword ptr [ebp-4],edx
>00546043    jmp        00546070
 00546045    push       0
 00546047    push       0
 00546049    push       0
 0054604B    lea        eax,[ebp-0C]
 0054604E    push       eax
 0054604F    mov        ecx,ebx
 00546051    mov        edx,edi
 00546053    mov        eax,esi
 00546055    call       00545DE4
 0054605A    mov        eax,dword ptr [ebp-0C]
 0054605D    call       004BEE6C
 00546062    fstp       qword ptr [ebp-8]
 00546065    wait
>00546066    jmp        00546070
 00546068    xor        eax,eax
 0054606A    mov        dword ptr [ebp-8],eax
 0054606D    mov        dword ptr [ebp-4],eax
 00546070    xor        eax,eax
 00546072    pop        edx
 00546073    pop        ecx
 00546074    pop        ecx
 00546075    mov        dword ptr fs:[eax],edx
 00546078    push       54608D
 0054607D    lea        eax,[ebp-0C]
 00546080    call       @LStrClr
 00546085    ret
<00546086    jmp        @HandleFinally
<0054608B    jmp        0054607D
 0054608D    fld        qword ptr [ebp-8]
 00546090    pop        edi
 00546091    pop        esi
 00546092    pop        ebx
 00546093    mov        esp,ebp
 00546095    pop        ebp
 00546096    ret
*}
//end;

//00546098
//function sub_00546098(?:TZOracleResultSet; ?:Integer; ?:?):?;
//begin
{*
 00546098    push       ebp
 00546099    mov        ebp,esp
 0054609B    add        esp,0FFFFFFDC
 0054609E    push       ebx
 0054609F    push       esi
 005460A0    push       edi
 005460A1    xor        ebx,ebx
 005460A3    mov        dword ptr [ebp-24],ebx
 005460A6    mov        dword ptr [ebp-1C],ebx
 005460A9    mov        dword ptr [ebp-20],ebx
 005460AC    mov        dword ptr [ebp-18],ebx
 005460AF    mov        ebx,ecx
 005460B1    mov        edi,edx
 005460B3    mov        esi,eax
 005460B5    xor        eax,eax
 005460B7    push       ebp
 005460B8    push       54629F
 005460BD    push       dword ptr fs:[eax]
 005460C0    mov        dword ptr fs:[eax],esp
 005460C3    test       ebx,ebx
>005460C5    jne        005460D2
 005460C7    mov        edx,edi
 005460C9    mov        eax,esi
 005460CB    call       00545D34
 005460D0    mov        ebx,eax
 005460D2    test       ebx,ebx
>005460D4    je         00546269
 005460DA    mov        ax,word ptr [ebx+25]
 005460DE    sub        ax,0C
>005460E2    je         005460EF
 005460E4    sub        ax,0AF
>005460E8    je         00546100
>005460EA    jmp        0054624C
 005460EF    mov        eax,dword ptr [ebx+0C]
 005460F2    call       00547A6C
 005460F7    fstp       qword ptr [ebp-8]
 005460FA    wait
>005460FB    jmp        00546271
 00546100    lea        edx,[ebp-20]
 00546103    mov        eax,esi
 00546105    mov        ecx,dword ptr [eax]
 00546107    call       dword ptr [ecx+1E0]; TZOracleResultSet.sub_004D5990
 0054610D    mov        eax,dword ptr [ebp-20]
 00546110    lea        edx,[ebp-1C]
 00546113    mov        ecx,dword ptr [eax]
 00546115    call       dword ptr [ecx+88]
 0054611B    mov        edx,dword ptr [ebp-1C]
 0054611E    lea        eax,[ebp-18]
 00546121    mov        ecx,5462B0; ['{C7F36FDF-8A64-477B-A0EB-3E8AB7C09F8D}']
 00546126    call       @IntfCast
 0054612B    mov        al,byte ptr [ebx+24]
 0054612E    sub        al,0C
>00546130    je         00546136
 00546132    sub        al,2
>00546134    jne        00546196
 00546136    mov        eax,dword ptr [ebx+0C]
 00546139    mov        eax,dword ptr [eax]
 0054613B    push       eax
 0054613C    lea        eax,[ebp-0A]
 0054613F    push       eax
 00546140    lea        eax,[ebp-0B]
 00546143    push       eax
 00546144    lea        eax,[ebp-0C]
 00546147    push       eax
 00546148    mov        eax,dword ptr [ebp-18]
 0054614B    mov        edx,dword ptr [eax]
 0054614D    call       dword ptr [edx+98]
 00546153    mov        edx,eax
 00546155    mov        ecx,dword ptr [esi+44]; TZOracleResultSet.?f44:dword
 00546158    mov        eax,dword ptr [esi+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 0054615B    mov        edi,dword ptr [eax]
 0054615D    call       dword ptr [edi+0AC]
 00546163    test       eax,eax
>00546165    jne        0054618C
 00546167    xor        ecx,ecx
 00546169    mov        cl,byte ptr [ebp-0C]
 0054616C    xor        edx,edx
 0054616E    mov        dl,byte ptr [ebp-0B]
 00546171    movsx      eax,word ptr [ebp-0A]
 00546175    cmp        eax,0FFFF
>0054617A    jbe        00546181
 0054617C    call       @BoundErr
 00546181    call       EncodeDate
 00546186    fstp       qword ptr [ebp-8]
 00546189    wait
>0054618A    jmp        0054619E
 0054618C    xor        eax,eax
 0054618E    mov        dword ptr [ebp-8],eax
 00546191    mov        dword ptr [ebp-4],eax
>00546194    jmp        0054619E
 00546196    xor        eax,eax
 00546198    mov        dword ptr [ebp-8],eax
 0054619B    mov        dword ptr [ebp-4],eax
 0054619E    mov        al,byte ptr [ebx+24]
 005461A1    add        al,0F3
 005461A3    sub        al,2
>005461A5    jae        00546271
 005461AB    mov        eax,dword ptr [ebx+0C]
 005461AE    mov        eax,dword ptr [eax]
 005461B0    push       eax
 005461B1    lea        eax,[ebp-0D]
 005461B4    push       eax
 005461B5    lea        eax,[ebp-0E]
 005461B8    push       eax
 005461B9    lea        eax,[ebp-0F]
 005461BC    push       eax
 005461BD    lea        eax,[ebp-14]
 005461C0    push       eax
 005461C1    mov        eax,dword ptr [ebp-18]
 005461C4    mov        edx,dword ptr [eax]
 005461C6    call       dword ptr [edx+98]
 005461CC    mov        edx,eax
 005461CE    mov        ecx,dword ptr [esi+44]; TZOracleResultSet.?f44:dword
 005461D1    mov        eax,dword ptr [esi+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 005461D4    mov        ebx,dword ptr [eax]
 005461D6    call       dword ptr [ebx+0B0]
 005461DC    test       eax,eax
>005461DE    jne        00546271
 005461E4    fld        qword ptr [ebp-8]
 005461E7    fcomp      dword ptr ds:[5462C0]; 0:Single
 005461ED    fnstsw     al
 005461EF    sahf
>005461F0    jb         0054621F
 005461F2    mov        eax,dword ptr [ebp-14]
 005461F5    cmp        eax,0FFFF
>005461FA    jbe        00546201
 005461FC    call       @BoundErr
 00546201    push       eax
 00546202    xor        ecx,ecx
 00546204    mov        cl,byte ptr [ebp-0F]
 00546207    xor        edx,edx
 00546209    mov        dl,byte ptr [ebp-0E]
 0054620C    xor        eax,eax
 0054620E    mov        al,byte ptr [ebp-0D]
 00546211    call       EncodeTime
 00546216    fadd       qword ptr [ebp-8]
 00546219    fstp       qword ptr [ebp-8]
 0054621C    wait
>0054621D    jmp        00546271
 0054621F    mov        eax,dword ptr [ebp-14]
 00546222    cmp        eax,0FFFF
>00546227    jbe        0054622E
 00546229    call       @BoundErr
 0054622E    push       eax
 0054622F    xor        ecx,ecx
 00546231    mov        cl,byte ptr [ebp-0F]
 00546234    xor        edx,edx
 00546236    mov        dl,byte ptr [ebp-0E]
 00546239    xor        eax,eax
 0054623B    mov        al,byte ptr [ebp-0D]
 0054623E    call       EncodeTime
 00546243    fsubr      qword ptr [ebp-8]
 00546246    fstp       qword ptr [ebp-8]
 00546249    wait
>0054624A    jmp        00546271
 0054624C    lea        eax,[ebp-24]
 0054624F    push       eax
 00546250    mov        ecx,ebx
 00546252    mov        edx,edi
 00546254    mov        eax,esi
 00546256    call       00545DE4
 0054625B    mov        eax,dword ptr [ebp-24]
 0054625E    call       004BF8B0
 00546263    fstp       qword ptr [ebp-8]
 00546266    wait
>00546267    jmp        00546271
 00546269    xor        eax,eax
 0054626B    mov        dword ptr [ebp-8],eax
 0054626E    mov        dword ptr [ebp-4],eax
 00546271    xor        eax,eax
 00546273    pop        edx
 00546274    pop        ecx
 00546275    pop        ecx
 00546276    mov        dword ptr fs:[eax],edx
 00546279    push       5462A6
 0054627E    lea        eax,[ebp-24]
 00546281    call       @LStrClr
 00546286    lea        eax,[ebp-20]
 00546289    call       @IntfClear
 0054628E    lea        eax,[ebp-1C]
 00546291    call       @IntfClear
 00546296    lea        eax,[ebp-18]
 00546299    call       @IntfClear
 0054629E    ret
<0054629F    jmp        @HandleFinally
<005462A4    jmp        0054627E
 005462A6    fld        qword ptr [ebp-8]
 005462A9    pop        edi
 005462AA    pop        esi
 005462AB    pop        ebx
 005462AC    mov        esp,ebp
 005462AE    pop        ebp
 005462AF    ret
*}
//end;

//005462C4
//procedure sub_005462C4(?:?; ?:?);
//begin
{*
 005462C4    push       ebp
 005462C5    mov        ebp,esp
 005462C7    push       ebx
 005462C8    push       esi
 005462C9    push       edi
 005462CA    mov        edi,ecx
 005462CC    mov        esi,edx
 005462CE    mov        ebx,eax
 005462D0    mov        cl,9
 005462D2    mov        edx,esi
 005462D4    mov        eax,ebx
 005462D6    call       004D4308
 005462DB    push       edi
 005462DC    xor        ecx,ecx
 005462DE    mov        edx,esi
 005462E0    mov        eax,ebx
 005462E2    call       00545DE4
 005462E7    pop        edi
 005462E8    pop        esi
 005462E9    pop        ebx
 005462EA    pop        ebp
 005462EB    ret
*}
//end;

//005462EC
//function sub_005462EC(?:?):?;
//begin
{*
 005462EC    push       ebp
 005462ED    mov        ebp,esp
 005462EF    push       0
 005462F1    push       ebx
 005462F2    push       esi
 005462F3    mov        esi,edx
 005462F5    mov        ebx,eax
 005462F7    xor        eax,eax
 005462F9    push       ebp
 005462FA    push       546355
 005462FF    push       dword ptr fs:[eax]
 00546302    mov        dword ptr fs:[eax],esp
 00546305    mov        cl,1
 00546307    mov        edx,esi
 00546309    mov        eax,ebx
 0054630B    call       004D4308
 00546310    lea        eax,[ebp-4]
 00546313    push       eax
 00546314    xor        ecx,ecx
 00546316    mov        edx,esi
 00546318    mov        eax,ebx
 0054631A    call       00545DE4
 0054631F    xor        edx,edx
 00546321    mov        eax,dword ptr [ebp-4]
 00546324    call       StrToIntDef
 00546329    test       eax,eax
>0054632B    jne        0054633D
 0054632D    mov        eax,dword ptr [ebp-4]
 00546330    call       004BEFC0
 00546335    test       al,al
>00546337    jne        0054633D
 00546339    xor        ebx,ebx
>0054633B    jmp        0054633F
 0054633D    mov        bl,1
 0054633F    xor        eax,eax
 00546341    pop        edx
 00546342    pop        ecx
 00546343    pop        ecx
 00546344    mov        dword ptr fs:[eax],edx
 00546347    push       54635C
 0054634C    lea        eax,[ebp-4]
 0054634F    call       @LStrClr
 00546354    ret
<00546355    jmp        @HandleFinally
<0054635A    jmp        0054634C
 0054635C    mov        eax,ebx
 0054635E    pop        esi
 0054635F    pop        ebx
 00546360    pop        ecx
 00546361    pop        ebp
 00546362    ret
*}
//end;

//00546364
//procedure sub_00546364(?:?);
//begin
{*
 00546364    push       ebp
 00546365    mov        ebp,esp
 00546367    push       ebx
 00546368    push       esi
 00546369    mov        esi,edx
 0054636B    mov        ebx,eax
 0054636D    mov        cl,2
 0054636F    mov        edx,esi
 00546371    mov        eax,ebx
 00546373    call       004D4308
 00546378    xor        ecx,ecx
 0054637A    mov        edx,esi
 0054637C    mov        eax,ebx
 0054637E    call       00545F24
 00546383    pop        esi
 00546384    pop        ebx
 00546385    pop        ebp
 00546386    ret
*}
//end;

//00546388
//procedure sub_00546388(?:?);
//begin
{*
 00546388    push       ebp
 00546389    mov        ebp,esp
 0054638B    push       ebx
 0054638C    push       esi
 0054638D    mov        esi,edx
 0054638F    mov        ebx,eax
 00546391    mov        cl,3
 00546393    mov        edx,esi
 00546395    mov        eax,ebx
 00546397    call       004D4308
 0054639C    xor        ecx,ecx
 0054639E    mov        edx,esi
 005463A0    mov        eax,ebx
 005463A2    call       00545F24
 005463A7    pop        esi
 005463A8    pop        ebx
 005463A9    pop        ebp
 005463AA    ret
*}
//end;

//005463AC
//procedure sub_005463AC(?:?);
//begin
{*
 005463AC    push       ebp
 005463AD    mov        ebp,esp
 005463AF    push       ebx
 005463B0    push       esi
 005463B1    mov        esi,edx
 005463B3    mov        ebx,eax
 005463B5    mov        cl,4
 005463B7    mov        edx,esi
 005463B9    mov        eax,ebx
 005463BB    call       004D4308
 005463C0    xor        ecx,ecx
 005463C2    mov        edx,esi
 005463C4    mov        eax,ebx
 005463C6    call       00545F24
 005463CB    pop        esi
 005463CC    pop        ebx
 005463CD    pop        ebp
 005463CE    ret
*}
//end;

//005463D0
//procedure sub_005463D0(?:?);
//begin
{*
 005463D0    push       ebp
 005463D1    mov        ebp,esp
 005463D3    add        esp,0FFFFFFF8
 005463D6    push       ebx
 005463D7    push       esi
 005463D8    mov        esi,edx
 005463DA    mov        ebx,eax
 005463DC    mov        cl,5
 005463DE    mov        edx,esi
 005463E0    mov        eax,ebx
 005463E2    call       004D4308
 005463E7    xor        ecx,ecx
 005463E9    mov        edx,esi
 005463EB    mov        eax,ebx
 005463ED    call       00545F24
 005463F2    cdq
 005463F3    mov        dword ptr [ebp-8],eax
 005463F6    mov        dword ptr [ebp-4],edx
 005463F9    mov        eax,dword ptr [ebp-8]
 005463FC    mov        edx,dword ptr [ebp-4]
 005463FF    pop        esi
 00546400    pop        ebx
 00546401    pop        ecx
 00546402    pop        ecx
 00546403    pop        ebp
 00546404    ret
*}
//end;

//00546408
//procedure sub_00546408(?:?);
//begin
{*
 00546408    push       ebp
 00546409    mov        ebp,esp
 0054640B    push       ecx
 0054640C    push       ebx
 0054640D    push       esi
 0054640E    mov        esi,edx
 00546410    mov        ebx,eax
 00546412    mov        cl,6
 00546414    mov        edx,esi
 00546416    mov        eax,ebx
 00546418    call       004D4308
 0054641D    xor        ecx,ecx
 0054641F    mov        edx,esi
 00546421    mov        eax,ebx
 00546423    call       00545FE4
 00546428    fstp       dword ptr [ebp-4]
 0054642B    wait
 0054642C    fld        dword ptr [ebp-4]
 0054642F    pop        esi
 00546430    pop        ebx
 00546431    pop        ecx
 00546432    pop        ebp
 00546433    ret
*}
//end;

//00546434
//procedure sub_00546434(?:?);
//begin
{*
 00546434    push       ebp
 00546435    mov        ebp,esp
 00546437    add        esp,0FFFFFFF8
 0054643A    push       ebx
 0054643B    push       esi
 0054643C    mov        esi,edx
 0054643E    mov        ebx,eax
 00546440    mov        cl,7
 00546442    mov        edx,esi
 00546444    mov        eax,ebx
 00546446    call       004D4308
 0054644B    xor        ecx,ecx
 0054644D    mov        edx,esi
 0054644F    mov        eax,ebx
 00546451    call       00545FE4
 00546456    fstp       qword ptr [ebp-8]
 00546459    wait
 0054645A    fld        qword ptr [ebp-8]
 0054645D    pop        esi
 0054645E    pop        ebx
 0054645F    pop        ecx
 00546460    pop        ecx
 00546461    pop        ebp
 00546462    ret
*}
//end;

//00546464
//procedure sub_00546464(?:?);
//begin
{*
 00546464    push       ebp
 00546465    mov        ebp,esp
 00546467    add        esp,0FFFFFFF0
 0054646A    push       ebx
 0054646B    push       esi
 0054646C    mov        esi,edx
 0054646E    mov        ebx,eax
 00546470    mov        cl,8
 00546472    mov        edx,esi
 00546474    mov        eax,ebx
 00546476    call       004D4308
 0054647B    xor        ecx,ecx
 0054647D    mov        edx,esi
 0054647F    mov        eax,ebx
 00546481    call       00545FE4
 00546486    fstp       tbyte ptr [ebp-10]
 00546489    wait
 0054648A    fld        tbyte ptr [ebp-10]
 0054648D    pop        esi
 0054648E    pop        ebx
 0054648F    mov        esp,ebp
 00546491    pop        ebp
 00546492    ret
*}
//end;

//00546494
//procedure sub_00546494(?:?; ?:?);
//begin
{*
 00546494    push       ebp
 00546495    mov        ebp,esp
 00546497    push       0
 00546499    push       ebx
 0054649A    push       esi
 0054649B    push       edi
 0054649C    mov        edi,ecx
 0054649E    mov        esi,edx
 005464A0    mov        ebx,eax
 005464A2    xor        eax,eax
 005464A4    push       ebp
 005464A5    push       5464EA
 005464AA    push       dword ptr fs:[eax]
 005464AD    mov        dword ptr fs:[eax],esp
 005464B0    mov        cl,0B
 005464B2    mov        edx,esi
 005464B4    mov        eax,ebx
 005464B6    call       004D4308
 005464BB    lea        eax,[ebp-4]
 005464BE    push       eax
 005464BF    xor        ecx,ecx
 005464C1    mov        edx,esi
 005464C3    mov        eax,ebx
 005464C5    call       00545DE4
 005464CA    mov        eax,dword ptr [ebp-4]
 005464CD    mov        edx,edi
 005464CF    call       004BF678
 005464D4    xor        eax,eax
 005464D6    pop        edx
 005464D7    pop        ecx
 005464D8    pop        ecx
 005464D9    mov        dword ptr fs:[eax],edx
 005464DC    push       5464F1
 005464E1    lea        eax,[ebp-4]
 005464E4    call       @LStrClr
 005464E9    ret
<005464EA    jmp        @HandleFinally
<005464EF    jmp        005464E1
 005464F1    pop        edi
 005464F2    pop        esi
 005464F3    pop        ebx
 005464F4    pop        ecx
 005464F5    pop        ebp
 005464F6    ret
*}
//end;

//005464F8
//procedure sub_005464F8(?:?);
//begin
{*
 005464F8    push       ebp
 005464F9    mov        ebp,esp
 005464FB    add        esp,0FFFFFFF0
 005464FE    push       ebx
 005464FF    push       esi
 00546500    mov        esi,edx
 00546502    mov        ebx,eax
 00546504    mov        cl,0C
 00546506    mov        edx,esi
 00546508    mov        eax,ebx
 0054650A    call       004D4308
 0054650F    xor        ecx,ecx
 00546511    mov        edx,esi
 00546513    mov        eax,ebx
 00546515    call       00546098
 0054651A    call       @TRUNC
 0054651F    mov        dword ptr [ebp-10],eax
 00546522    mov        dword ptr [ebp-0C],edx
 00546525    fild       qword ptr [ebp-10]
 00546528    fstp       qword ptr [ebp-8]
 0054652B    wait
 0054652C    fld        qword ptr [ebp-8]
 0054652F    pop        esi
 00546530    pop        ebx
 00546531    mov        esp,ebp
 00546533    pop        ebp
 00546534    ret
*}
//end;

//00546538
//procedure sub_00546538(?:?);
//begin
{*
 00546538    push       ebp
 00546539    mov        ebp,esp
 0054653B    add        esp,0FFFFFFF8
 0054653E    push       ebx
 0054653F    push       esi
 00546540    mov        esi,edx
 00546542    mov        ebx,eax
 00546544    mov        cl,0D
 00546546    mov        edx,esi
 00546548    mov        eax,ebx
 0054654A    call       004D4308
 0054654F    xor        ecx,ecx
 00546551    mov        edx,esi
 00546553    mov        eax,ebx
 00546555    call       00546098
 0054655A    call       @FRAC
 0054655F    fstp       qword ptr [ebp-8]
 00546562    wait
 00546563    fld        qword ptr [ebp-8]
 00546566    pop        esi
 00546567    pop        ebx
 00546568    pop        ecx
 00546569    pop        ecx
 0054656A    pop        ebp
 0054656B    ret
*}
//end;

//0054656C
//procedure sub_0054656C(?:?);
//begin
{*
 0054656C    push       ebp
 0054656D    mov        ebp,esp
 0054656F    add        esp,0FFFFFFF8
 00546572    push       ebx
 00546573    push       esi
 00546574    mov        esi,edx
 00546576    mov        ebx,eax
 00546578    mov        cl,0E
 0054657A    mov        edx,esi
 0054657C    mov        eax,ebx
 0054657E    call       004D4308
 00546583    xor        ecx,ecx
 00546585    mov        edx,esi
 00546587    mov        eax,ebx
 00546589    call       00546098
 0054658E    fstp       qword ptr [ebp-8]
 00546591    wait
 00546592    fld        qword ptr [ebp-8]
 00546595    pop        esi
 00546596    pop        ebx
 00546597    pop        ecx
 00546598    pop        ecx
 00546599    pop        ebp
 0054659A    ret
*}
//end;

//0054659C
//procedure sub_0054659C(?:?; ?:?);
//begin
{*
 0054659C    push       ebp
 0054659D    mov        ebp,esp
 0054659F    push       0
 005465A1    push       0
 005465A3    push       0
 005465A5    push       0
 005465A7    push       0
 005465A9    push       0
 005465AB    push       0
 005465AD    push       ebx
 005465AE    push       esi
 005465AF    push       edi
 005465B0    mov        dword ptr [ebp-4],ecx
 005465B3    mov        edi,edx
 005465B5    mov        ebx,eax
 005465B7    xor        eax,eax
 005465B9    push       ebp
 005465BA    push       546745
 005465BF    push       dword ptr fs:[eax]
 005465C2    mov        dword ptr fs:[eax],esp
 005465C5    mov        edx,edi
 005465C7    mov        eax,ebx
 005465C9    call       004D4450
 005465CE    mov        edx,edi
 005465D0    mov        eax,ebx
 005465D2    call       00545D34
 005465D7    dec        edi
 005465D8    cmp        edi,3FF
>005465DE    jbe        005465E5
 005465E0    call       @BoundErr
 005465E5    inc        edi
 005465E6    imul       eax,edi,2D
>005465E9    jno        005465F0
 005465EB    call       @IntOver
 005465F0    mov        edx,dword ptr [ebx+4C]; TZOracleResultSet.?f4C:dword
 005465F3    lea        esi,[edx+eax-25]
 005465F7    mov        ax,word ptr [esi+25]
 005465FB    add        eax,0FFFFFF90
 005465FE    sub        ax,2
>00546602    jae        0054667A
 00546604    cmp        word ptr [esi+27],0
>00546609    jl         00546615
 0054660B    mov        eax,dword ptr [esi+0C]
 0054660E    mov        eax,dword ptr [eax]
 00546610    mov        dword ptr [ebp-0C],eax
>00546613    jmp        0054661A
 00546615    xor        eax,eax
 00546617    mov        dword ptr [ebp-0C],eax
 0054661A    lea        edx,[ebp-18]
 0054661D    mov        eax,ebx
 0054661F    mov        ecx,dword ptr [eax]
 00546621    call       dword ptr [ecx+1E0]; TZOracleResultSet.sub_004D5990
 00546627    mov        eax,dword ptr [ebp-18]
 0054662A    lea        edx,[ebp-14]
 0054662D    mov        ecx,dword ptr [eax]
 0054662F    call       dword ptr [ecx+88]
 00546635    mov        edx,dword ptr [ebp-14]
 00546638    lea        eax,[ebp-8]
 0054663B    mov        ecx,546754; ['{C7F36FDF-8A64-477B-A0EB-3E8AB7C09F8D}']
 00546640    call       @IntfCast
 00546645    push       0
 00546647    push       0
 00546649    mov        eax,dword ptr [ebp-8]
 0054664C    push       eax
 0054664D    mov        eax,dword ptr [ebp-0C]
 00546650    push       eax
 00546651    mov        al,byte ptr [esi+24]
 00546654    push       eax
 00546655    mov        ecx,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00546658    mov        dl,1
 0054665A    mov        eax,[005454A8]; TZOracleBlob
 0054665F    call       TZOracleBlob.Create; TZOracleBlob.Create
 00546664    mov        edx,eax
 00546666    test       edx,edx
>00546668    je         0054666D
 0054666A    sub        edx,0FFFFFFE8
 0054666D    mov        eax,dword ptr [ebp-4]
 00546670    call       @IntfCopy
>00546675    jmp        00546717
 0054667A    cmp        word ptr [esi+27],0
>0054667F    jl         005466F8
 00546681    xor        eax,eax
 00546683    mov        dword ptr [ebp-10],eax
 00546686    xor        eax,eax
 00546688    push       ebp
 00546689    push       5466F1
 0054668E    push       dword ptr fs:[eax]
 00546691    mov        dword ptr fs:[eax],esp
 00546694    lea        eax,[ebp-1C]
 00546697    push       eax
 00546698    mov        ecx,esi
 0054669A    mov        edx,edi
 0054669C    mov        eax,ebx
 0054669E    call       00545DE4
 005466A3    mov        ecx,dword ptr [ebp-1C]
 005466A6    mov        dl,1
 005466A8    mov        eax,[0041CC74]; TStringStream
 005466AD    call       TStringStream.Create; TStringStream.Create
 005466B2    mov        dword ptr [ebp-10],eax
 005466B5    mov        ecx,dword ptr [ebp-10]
 005466B8    mov        dl,1
 005466BA    mov        eax,[004D3F38]; TZAbstractBlob
 005466BF    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 005466C4    mov        edx,eax
 005466C6    test       edx,edx
>005466C8    je         005466CD
 005466CA    sub        edx,0FFFFFFE8
 005466CD    mov        eax,dword ptr [ebp-4]
 005466D0    call       @IntfCopy
 005466D5    xor        eax,eax
 005466D7    pop        edx
 005466D8    pop        ecx
 005466D9    pop        ecx
 005466DA    mov        dword ptr fs:[eax],edx
 005466DD    push       546717
 005466E2    cmp        dword ptr [ebp-10],0
>005466E6    je         005466F0
 005466E8    mov        eax,dword ptr [ebp-10]
 005466EB    call       TObject.Free
 005466F0    ret
<005466F1    jmp        @HandleFinally
<005466F6    jmp        005466E2
 005466F8    xor        ecx,ecx
 005466FA    mov        dl,1
 005466FC    mov        eax,[004D3F38]; TZAbstractBlob
 00546701    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 00546706    mov        edx,eax
 00546708    test       edx,edx
>0054670A    je         0054670F
 0054670C    sub        edx,0FFFFFFE8
 0054670F    mov        eax,dword ptr [ebp-4]
 00546712    call       @IntfCopy
 00546717    xor        eax,eax
 00546719    pop        edx
 0054671A    pop        ecx
 0054671B    pop        ecx
 0054671C    mov        dword ptr fs:[eax],edx
 0054671F    push       54674C
 00546724    lea        eax,[ebp-1C]
 00546727    call       @LStrClr
 0054672C    lea        eax,[ebp-18]
 0054672F    call       @IntfClear
 00546734    lea        eax,[ebp-14]
 00546737    call       @IntfClear
 0054673C    lea        eax,[ebp-8]
 0054673F    call       @IntfClear
 00546744    ret
<00546745    jmp        @HandleFinally
<0054674A    jmp        00546724
 0054674C    pop        edi
 0054674D    pop        esi
 0054674E    pop        ebx
 0054674F    mov        esp,ebp
 00546751    pop        ebp
 00546752    ret
*}
//end;

//00546764
//function sub_00546764:?;
//begin
{*
 00546764    push       ebp
 00546765    mov        ebp,esp
 00546767    xor        ecx,ecx
 00546769    push       ecx
 0054676A    push       ecx
 0054676B    push       ecx
 0054676C    push       ecx
 0054676D    push       ebx
 0054676E    push       esi
 0054676F    mov        ebx,eax
 00546771    xor        eax,eax
 00546773    push       ebp
 00546774    push       54688E
 00546779    push       dword ptr fs:[eax]
 0054677C    mov        dword ptr fs:[eax],esp
 0054677F    mov        byte ptr [ebp-1],0
 00546783    mov        edx,dword ptr [ebx+10]; TZOracleResultSet.?f10:dword
 00546786    cmp        edx,dword ptr [ebx+14]; TZOracleResultSet.?f14:Integer
>00546789    jg         00546868
 0054678F    mov        eax,dword ptr [ebx+18]; TZOracleResultSet.?f18:dword
 00546792    test       eax,eax
>00546794    jle        0054679F
 00546796    cmp        eax,dword ptr [ebx+10]; TZOracleResultSet.?f10:dword
>00546799    jle        00546868
 0054679F    cmp        dword ptr [ebx+10],0; TZOracleResultSet.?f10:dword
>005467A3    jne        005467FA
 005467A5    lea        edx,[ebp-10]
 005467A8    mov        eax,ebx
 005467AA    mov        ecx,dword ptr [eax]
 005467AC    call       dword ptr [ecx+1E0]; TZOracleResultSet.sub_004D5990
 005467B2    mov        eax,dword ptr [ebp-10]
 005467B5    lea        edx,[ebp-0C]
 005467B8    mov        ecx,dword ptr [eax]
 005467BA    call       dword ptr [ecx+88]
 005467C0    mov        edx,dword ptr [ebp-0C]
 005467C3    lea        eax,[ebp-8]
 005467C6    mov        ecx,5468A0; ['{C7F36FDF-8A64-477B-A0EB-3E8AB7C09F8D}']
 005467CB    call       @IntfCast
 005467D0    mov        eax,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 005467D3    push       eax
 005467D4    push       1
 005467D6    push       0
 005467D8    push       0
 005467DA    push       0
 005467DC    push       0
 005467DE    mov        eax,dword ptr [ebp-8]
 005467E1    mov        edx,dword ptr [eax]
 005467E3    call       dword ptr [edx+9C]
 005467E9    mov        edx,eax
 005467EB    mov        ecx,dword ptr [ebx+40]; TZOracleResultSet.?f40:dword
 005467EE    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 005467F1    mov        esi,dword ptr [eax]
 005467F3    call       dword ptr [esi+48]
 005467F6    mov        esi,eax
>005467F8    jmp        00546810
 005467FA    push       1
 005467FC    push       2
 005467FE    push       0
 00546800    mov        ecx,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 00546803    mov        edx,dword ptr [ebx+40]; TZOracleResultSet.?f40:dword
 00546806    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 00546809    mov        esi,dword ptr [eax]
 0054680B    call       dword ptr [esi+54]
 0054680E    mov        esi,eax
 00546810    mov        eax,esi
 00546812    test       eax,eax
>00546814    je         0054682F
 00546816    sub        eax,64
>00546819    je         0054682F
 0054681B    push       4
 0054681D    push       5468B8; 'FETCH ROW'
 00546822    mov        ecx,esi
 00546824    mov        edx,dword ptr [ebx+44]; TZOracleResultSet.?f44:dword
 00546827    mov        eax,dword ptr [ebx+48]; TZOracleResultSet.?f48:IZOraclePlainDriver
 0054682A    call       00547B30
 0054682F    test       esi,esi
>00546831    jne        0054684F
 00546833    add        dword ptr [ebx+10],1; TZOracleResultSet.?f10:dword
>00546837    jno        0054683E
 00546839    call       @IntOver
 0054683E    mov        eax,dword ptr [ebx+10]; TZOracleResultSet.?f10:dword
 00546841    cmp        eax,dword ptr [ebx+14]; TZOracleResultSet.?f14:Integer
>00546844    jle        00546849
 00546846    mov        dword ptr [ebx+14],eax; TZOracleResultSet.?f14:Integer
 00546849    mov        byte ptr [ebp-1],1
>0054684D    jmp        00546868
 0054684F    mov        eax,dword ptr [ebx+14]; TZOracleResultSet.?f14:Integer
 00546852    cmp        eax,dword ptr [ebx+10]; TZOracleResultSet.?f10:dword
>00546855    jl         00546864
 00546857    add        eax,1
>0054685A    jno        00546861
 0054685C    call       @IntOver
 00546861    mov        dword ptr [ebx+10],eax; TZOracleResultSet.?f10:dword
 00546864    mov        byte ptr [ebp-1],0
 00546868    xor        eax,eax
 0054686A    pop        edx
 0054686B    pop        ecx
 0054686C    pop        ecx
 0054686D    mov        dword ptr fs:[eax],edx
 00546870    push       546895
 00546875    lea        eax,[ebp-10]
 00546878    call       @IntfClear
 0054687D    lea        eax,[ebp-0C]
 00546880    call       @IntfClear
 00546885    lea        eax,[ebp-8]
 00546888    call       @IntfClear
 0054688D    ret
<0054688E    jmp        @HandleFinally
<00546893    jmp        00546875
 00546895    mov        al,byte ptr [ebp-1]
 00546898    pop        esi
 00546899    pop        ebx
 0054689A    mov        esp,ebp
 0054689C    pop        ebp
 0054689D    ret
*}
//end;

//005468C4
//constructor TZOracleBlob.Create(?:TZOracleBlob; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005468C4    push       ebp
 005468C5    mov        ebp,esp
 005468C7    push       ecx
 005468C8    push       ebx
 005468C9    push       esi
 005468CA    test       dl,dl
>005468CC    je         005468D6
 005468CE    add        esp,0FFFFFFF0
 005468D1    call       @ClassCreate
 005468D6    mov        dword ptr [ebp-4],ecx
 005468D9    mov        ebx,edx
 005468DB    mov        esi,eax
 005468DD    mov        eax,dword ptr [ebp-4]
 005468E0    call       @IntfAddRef
 005468E5    mov        eax,dword ptr [ebp+10]
 005468E8    call       @IntfAddRef
 005468ED    xor        eax,eax
 005468EF    push       ebp
 005468F0    push       54694F
 005468F5    push       dword ptr fs:[eax]
 005468F8    mov        dword ptr fs:[eax],esp
 005468FB    mov        eax,dword ptr [ebp+14]
 005468FE    push       eax
 005468FF    mov        ecx,dword ptr [ebp+18]
 00546902    xor        edx,edx
 00546904    mov        eax,esi
 00546906    call       TZAbstractBlob.Create
 0054690B    lea        eax,[esi+1C]; TZOracleBlob.?f1C:IZConnection
 0054690E    mov        edx,dword ptr [ebp+10]
 00546911    call       @IntfCopy
 00546916    mov        eax,dword ptr [ebp+0C]
 00546919    mov        dword ptr [esi+20],eax; TZOracleBlob.?f20:dword
 0054691C    lea        eax,[esi+24]; TZOracleBlob.?f24:IZOraclePlainDriver
 0054691F    mov        edx,dword ptr [ebp-4]
 00546922    call       @IntfCopy
 00546927    mov        byte ptr [esi+29],0; TZOracleBlob.?f29:byte
 0054692B    mov        al,byte ptr [ebp+8]
 0054692E    mov        byte ptr [esi+28],al; TZOracleBlob.?f28:byte
 00546931    xor        eax,eax
 00546933    pop        edx
 00546934    pop        ecx
 00546935    pop        ecx
 00546936    mov        dword ptr fs:[eax],edx
 00546939    push       546956
 0054693E    lea        eax,[ebp-4]
 00546941    call       @IntfClear
 00546946    lea        eax,[ebp+10]
 00546949    call       @IntfClear
 0054694E    ret
<0054694F    jmp        @HandleFinally
<00546954    jmp        0054693E
 00546956    mov        eax,esi
 00546958    test       bl,bl
>0054695A    je         0054696B
 0054695C    call       @AfterConstruction
 00546961    pop        dword ptr fs:[0]
 00546968    add        esp,0C
 0054696B    mov        eax,esi
 0054696D    pop        esi
 0054696E    pop        ebx
 0054696F    pop        ecx
 00546970    pop        ebp
 00546971    ret        14
*}
//end;

//00546974
destructor TZOracleBlob.Destroy;
begin
{*
 00546974    push       ebp
 00546975    mov        ebp,esp
 00546977    push       0
 00546979    push       ebx
 0054697A    push       esi
 0054697B    push       edi
 0054697C    call       @BeforeDestruction
 00546981    mov        ebx,edx
 00546983    mov        esi,eax
 00546985    xor        eax,eax
 00546987    push       ebp
 00546988    push       5469F4
 0054698D    push       dword ptr fs:[eax]
 00546990    mov        dword ptr fs:[eax],esp
 00546993    cmp        byte ptr [esi+29],0; TZOracleBlob.?f29:byte
>00546997    je         005469D2
 00546999    lea        eax,[ebp-4]
 0054699C    mov        edx,dword ptr [esi+1C]; TZOracleBlob.?f1C:IZConnection
 0054699F    mov        ecx,546A0C; ['{C7F36FDF-8A64-477B-A0EB-3E8AB7C09F8D}']
 005469A4    call       @IntfCast
 005469A9    mov        eax,dword ptr [esi+20]; TZOracleBlob.?f20:dword
 005469AC    push       eax
 005469AD    mov        eax,dword ptr [ebp-4]
 005469B0    mov        edx,dword ptr [eax]
 005469B2    call       dword ptr [edx+0A0]
 005469B8    push       eax
 005469B9    mov        eax,dword ptr [ebp-4]
 005469BC    mov        edx,dword ptr [eax]
 005469BE    call       dword ptr [edx+9C]
 005469C4    mov        edx,eax
 005469C6    mov        eax,dword ptr [esi+24]; TZOracleBlob.?f24:IZOraclePlainDriver
 005469C9    pop        ecx
 005469CA    mov        edi,dword ptr [eax]
 005469CC    call       dword ptr [edi+11C]
 005469D2    mov        edx,ebx
 005469D4    and        dl,0FC
 005469D7    mov        eax,esi
 005469D9    call       TZAbstractBlob.Destroy
 005469DE    xor        eax,eax
 005469E0    pop        edx
 005469E1    pop        ecx
 005469E2    pop        ecx
 005469E3    mov        dword ptr fs:[eax],edx
 005469E6    push       5469FB
 005469EB    lea        eax,[ebp-4]
 005469EE    call       @IntfClear
 005469F3    ret
<005469F4    jmp        @HandleFinally
<005469F9    jmp        005469EB
 005469FB    test       bl,bl
>005469FD    jle        00546A06
 005469FF    mov        eax,esi
 00546A01    call       @ClassDestroy
 00546A06    pop        edi
 00546A07    pop        esi
 00546A08    pop        ebx
 00546A09    pop        ecx
 00546A0A    pop        ebp
 00546A0B    ret
*}
end;

//00546AF8
//procedure sub_00546AF8(?:TZOracleBlob);
//begin
{*
 00546AF8    push       ebp
 00546AF9    mov        ebp,esp
 00546AFB    add        esp,0FFFFFBEC
 00546B01    push       ebx
 00546B02    push       esi
 00546B03    xor        edx,edx
 00546B05    mov        dword ptr [ebp-10],edx
 00546B08    mov        ebx,eax
 00546B0A    xor        eax,eax
 00546B0C    push       ebp
 00546B0D    push       546D0A
 00546B12    push       dword ptr fs:[eax]
 00546B15    mov        dword ptr fs:[eax],esp
 00546B18    cmp        byte ptr [ebx+14],0; TZOracleBlob.?f14:byte
>00546B1C    jne        00546CF4
 00546B22    cmp        dword ptr [ebx+20],0; TZOracleBlob.?f20:dword
>00546B26    je         00546CF4
 00546B2C    cmp        dword ptr [ebx+0C],0; TZOracleBlob.?fC:Pointer
>00546B30    jne        00546CF4
 00546B36    cmp        byte ptr [ebx+29],0; TZOracleBlob.?f29:byte
>00546B3A    jne        00546CF4
 00546B40    lea        eax,[ebp-10]
 00546B43    mov        edx,dword ptr [ebx+1C]; TZOracleBlob.?f1C:IZConnection
 00546B46    mov        ecx,546D18; ['{C7F36FDF-8A64-477B-A0EB-3E8AB7C09F8D}']
 00546B4B    call       @IntfCast
 00546B50    mov        eax,dword ptr [ebx+20]; TZOracleBlob.?f20:dword
 00546B53    push       eax
 00546B54    push       1
 00546B56    mov        eax,dword ptr [ebp-10]
 00546B59    mov        edx,dword ptr [eax]
 00546B5B    call       dword ptr [edx+0A0]
 00546B61    push       eax
 00546B62    mov        eax,dword ptr [ebp-10]
 00546B65    mov        edx,dword ptr [eax]
 00546B67    call       dword ptr [edx+9C]
 00546B6D    mov        edx,eax
 00546B6F    mov        eax,dword ptr [ebx+24]; TZOracleBlob.?f24:IZOraclePlainDriver
 00546B72    pop        ecx
 00546B73    mov        esi,dword ptr [eax]
 00546B75    call       dword ptr [esi+104]
 00546B7B    mov        esi,eax
 00546B7D    push       4
 00546B7F    push       546D30; 'Open Large Object'
 00546B84    mov        eax,dword ptr [ebp-10]
 00546B87    mov        edx,dword ptr [eax]
 00546B89    call       dword ptr [edx+0A0]
 00546B8F    mov        edx,eax
 00546B91    mov        ecx,esi
 00546B93    mov        eax,dword ptr [ebx+24]; TZOracleBlob.?f24:IZOraclePlainDriver
 00546B96    call       00547B30
 00546B9B    mov        dl,1
 00546B9D    mov        eax,[0041CBF8]; TMemoryStream
 00546BA2    call       TObject.Create; TMemoryStream.Create
 00546BA7    mov        dword ptr [ebp-0C],eax
 00546BAA    xor        eax,eax
 00546BAC    mov        dword ptr [ebp-8],eax
 00546BAF    mov        dword ptr [ebp-4],400
 00546BB6    mov        eax,dword ptr [ebx+20]; TZOracleBlob.?f20:dword
 00546BB9    push       eax
 00546BBA    lea        eax,[ebp-4]
 00546BBD    push       eax
 00546BBE    mov        eax,dword ptr [ebp-8]
 00546BC1    add        eax,1
>00546BC4    jno        00546BCB
 00546BC6    call       @IntOver
 00546BCB    push       eax
 00546BCC    lea        eax,[ebp-411]
 00546BD2    push       eax
 00546BD3    push       400
 00546BD8    push       0
 00546BDA    push       0
 00546BDC    push       0
 00546BDE    push       1
 00546BE0    mov        eax,dword ptr [ebp-10]
 00546BE3    mov        edx,dword ptr [eax]
 00546BE5    call       dword ptr [edx+0A0]
 00546BEB    push       eax
 00546BEC    mov        eax,dword ptr [ebp-10]
 00546BEF    mov        edx,dword ptr [eax]
 00546BF1    call       dword ptr [edx+9C]
 00546BF7    mov        edx,eax
 00546BF9    mov        eax,dword ptr [ebx+24]; TZOracleBlob.?f24:IZOraclePlainDriver
 00546BFC    pop        ecx
 00546BFD    mov        esi,dword ptr [eax]
 00546BFF    call       dword ptr [esi+108]
 00546C05    mov        esi,eax
 00546C07    push       4
 00546C09    push       546D4C; 'Read Large Object'
 00546C0E    mov        eax,dword ptr [ebp-10]
 00546C11    mov        edx,dword ptr [eax]
 00546C13    call       dword ptr [edx+0A0]
 00546C19    mov        edx,eax
 00546C1B    mov        ecx,esi
 00546C1D    mov        eax,dword ptr [ebx+24]; TZOracleBlob.?f24:IZOraclePlainDriver
 00546C20    call       00547B30
 00546C25    cmp        dword ptr [ebp-4],0
>00546C29    jle        00546C80
 00546C2B    mov        eax,dword ptr [ebp-0C]
 00546C2E    mov        edx,dword ptr [eax]
 00546C30    call       dword ptr [edx]; TStream.GetSize
 00546C32    push       edx
 00546C33    push       eax
 00546C34    mov        eax,dword ptr [ebp-4]
 00546C37    cdq
 00546C38    add        eax,dword ptr [esp]
 00546C3B    adc        edx,dword ptr [esp+4]
>00546C3F    jno        00546C46
 00546C41    call       @IntOver
 00546C46    add        esp,8
 00546C49    push       eax
 00546C4A    sar        eax,1F
 00546C4D    cmp        eax,edx
 00546C4F    pop        eax
>00546C50    je         00546C57
 00546C52    call       @BoundErr
 00546C57    mov        edx,eax
 00546C59    mov        eax,dword ptr [ebp-0C]
 00546C5C    mov        ecx,dword ptr [eax]
 00546C5E    call       dword ptr [ecx+4]; TMemoryStream.SetSize
 00546C61    lea        edx,[ebp-411]
 00546C67    mov        ecx,dword ptr [ebp-4]
 00546C6A    mov        eax,dword ptr [ebp-0C]
 00546C6D    mov        esi,dword ptr [eax]
 00546C6F    call       dword ptr [esi+10]; TMemoryStream.Write
 00546C72    add        dword ptr [ebp-8],400
>00546C79    jno        00546C80
 00546C7B    call       @IntOver
 00546C80    cmp        dword ptr [ebp-4],400
<00546C87    jge        00546BAF
 00546C8D    mov        eax,dword ptr [ebx+20]; TZOracleBlob.?f20:dword
 00546C90    push       eax
 00546C91    mov        eax,dword ptr [ebp-10]
 00546C94    mov        edx,dword ptr [eax]
 00546C96    call       dword ptr [edx+0A0]
 00546C9C    push       eax
 00546C9D    mov        eax,dword ptr [ebp-10]
 00546CA0    mov        edx,dword ptr [eax]
 00546CA2    call       dword ptr [edx+9C]
 00546CA8    mov        edx,eax
 00546CAA    mov        eax,dword ptr [ebx+24]; TZOracleBlob.?f24:IZOraclePlainDriver
 00546CAD    pop        ecx
 00546CAE    mov        esi,dword ptr [eax]
 00546CB0    call       dword ptr [esi+0D0]
 00546CB6    mov        esi,eax
 00546CB8    push       4
 00546CBA    push       546D68; 'Close Large Object'
 00546CBF    mov        eax,dword ptr [ebp-10]
 00546CC2    mov        edx,dword ptr [eax]
 00546CC4    call       dword ptr [edx+0A0]
 00546CCA    mov        edx,eax
 00546CCC    mov        ecx,esi
 00546CCE    mov        eax,dword ptr [ebx+24]; TZOracleBlob.?f24:IZOraclePlainDriver
 00546CD1    call       00547B30
 00546CD6    push       0
 00546CD8    push       0
 00546CDA    mov        eax,dword ptr [ebp-0C]
 00546CDD    call       TStream.SetPosition
 00546CE2    mov        edx,dword ptr [ebp-0C]
 00546CE5    mov        eax,ebx
 00546CE7    mov        ecx,dword ptr [eax]
 00546CE9    call       dword ptr [ecx+28]; TZOracleBlob.sub_004D5E5C
 00546CEC    mov        eax,dword ptr [ebp-0C]
 00546CEF    call       TObject.Free
 00546CF4    xor        eax,eax
 00546CF6    pop        edx
 00546CF7    pop        ecx
 00546CF8    pop        ecx
 00546CF9    mov        dword ptr fs:[eax],edx
 00546CFC    push       546D11
 00546D01    lea        eax,[ebp-10]
 00546D04    call       @IntfClear
 00546D09    ret
<00546D0A    jmp        @HandleFinally
<00546D0F    jmp        00546D01
 00546D11    pop        esi
 00546D12    pop        ebx
 00546D13    mov        esp,ebp
 00546D15    pop        ebp
 00546D16    ret
*}
//end;

//00546F60
procedure sub_00546F60;
begin
{*
 00546F60    push       ebp
 00546F61    mov        ebp,esp
 00546F63    push       ebx
 00546F64    mov        ebx,eax
 00546F66    mov        eax,ebx
 00546F68    call       00546AF8
 00546F6D    mov        eax,ebx
 00546F6F    call       004D5B3C
 00546F74    pop        ebx
 00546F75    pop        ebp
 00546F76    ret
*}
end;

//00546F78
//procedure sub_00546F78(?:?);
//begin
{*
 00546F78    push       ebp
 00546F79    mov        ebp,esp
 00546F7B    push       ebx
 00546F7C    push       esi
 00546F7D    mov        esi,edx
 00546F7F    mov        ebx,eax
 00546F81    mov        eax,dword ptr [ebx+0C]; TZOracleBlob.?fC:Pointer
 00546F84    push       eax
 00546F85    mov        eax,dword ptr [ebx+10]; TZOracleBlob.?f10:Longint
 00546F88    push       eax
 00546F89    mov        eax,dword ptr [ebx+1C]; TZOracleBlob.?f1C:IZConnection
 00546F8C    push       eax
 00546F8D    mov        eax,dword ptr [ebx+20]; TZOracleBlob.?f20:dword
 00546F90    push       eax
 00546F91    mov        al,byte ptr [ebx+28]; TZOracleBlob.?f28:byte
 00546F94    push       eax
 00546F95    mov        ecx,dword ptr [ebx+24]; TZOracleBlob.?f24:IZOraclePlainDriver
 00546F98    mov        dl,1
 00546F9A    mov        eax,[005454A8]; TZOracleBlob
 00546F9F    call       TZOracleBlob.Create; TZOracleBlob.Create
 00546FA4    mov        edx,eax
 00546FA6    test       edx,edx
>00546FA8    je         00546FAD
 00546FAA    sub        edx,0FFFFFFE8
 00546FAD    mov        eax,esi
 00546FAF    call       @IntfCopy
 00546FB4    pop        esi
 00546FB5    pop        ebx
 00546FB6    pop        ebp
 00546FB7    ret
*}
//end;

//00546FB8
procedure sub_00546FB8;
begin
{*
 00546FB8    push       ebp
 00546FB9    mov        ebp,esp
 00546FBB    push       ebx
 00546FBC    mov        ebx,eax
 00546FBE    mov        eax,ebx
 00546FC0    call       00546AF8
 00546FC5    mov        eax,ebx
 00546FC7    call       004D5E0C
 00546FCC    pop        ebx
 00546FCD    pop        ebp
 00546FCE    ret
*}
end;

end.