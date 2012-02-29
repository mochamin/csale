{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit176;

interface

uses
  Classes, Windows, Graphics, _Unit147, ZPlainSqLiteDriver;

type
  TZSQLiteDriver = class(TZAbstractDriver)
  public
    f18:IZSQLitePlainDriver;//f18
    f1C:IZSQLitePlainDriver;//f1C
    //procedure sub_00542AF0(?:?); virtual;
    //procedure sub_00542964(?:?; ?:?; ?:?); virtual;
    //function sub_00542A68():?; virtual;
    //function sub_00542A70():?; virtual;
    //procedure sub_00542A74(?:?); virtual;
    //procedure sub_00542AB4(?:?); virtual;
    //constructor Create(?:TZSQLiteDriver; _Dv__:Boolean);
  end;
  TZSQLiteConnection = class(TZAbstractConnection)
  public
    f34:String;//f34
    f38:IZSQLitePlainDriver;//f38
    f3C:dword;//f3C
    destructor Destroy; virtual;
    //procedure sub_00543024(?:?; ?:?); virtual;
    //procedure sub_00543078(?:?; ?:?; ?:?); virtual;
    procedure sub_005431A0; virtual;
    procedure sub_0054327C; virtual;
    procedure sub_00542DA4; virtual;
    procedure sub_0054335C; virtual;
    //procedure sub_0054343C(?:?); virtual;
    //procedure sub_00543424(?:?); virtual;
    //procedure sub_00543454(?:?); virtual;
    //constructor Create(?:TZSQLiteConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//005428F8
//constructor TZSQLiteDriver.Create(?:TZSQLiteDriver; _Dv__:Boolean);
//begin
{*
 005428F8    push       ebp
 005428F9    mov        ebp,esp
 005428FB    push       ebx
 005428FC    push       esi
 005428FD    test       dl,dl
>005428FF    je         00542909
 00542901    add        esp,0FFFFFFF0
 00542904    call       @ClassCreate
 00542909    mov        ebx,edx
 0054290B    mov        esi,eax
 0054290D    mov        dl,1
 0054290F    mov        eax,[0053BB40]; TZSQLite28PlainDriver
 00542914    call       TZSQLite28PlainDriver.Create; TZSQLite28PlainDriver.Create
 00542919    mov        edx,eax
 0054291B    test       edx,edx
>0054291D    je         00542922
 0054291F    sub        edx,0FFFFFFF0
 00542922    lea        eax,[esi+18]; TZSQLiteDriver.?f18:IZSQLitePlainDriver
 00542925    call       @IntfCopy
 0054292A    mov        dl,1
 0054292C    mov        eax,[0053BE04]; TZSQLite3PlainDriver
 00542931    call       TZSQLite3PlainDriver.Create; TZSQLite3PlainDriver.Create
 00542936    mov        edx,eax
 00542938    test       edx,edx
>0054293A    je         0054293F
 0054293C    sub        edx,0FFFFFFF0
 0054293F    lea        eax,[esi+1C]; TZSQLiteDriver.?f1C:IZSQLitePlainDriver
 00542942    call       @IntfCopy
 00542947    mov        eax,esi
 00542949    test       bl,bl
>0054294B    je         0054295C
 0054294D    call       @AfterConstruction
 00542952    pop        dword ptr fs:[0]
 00542959    add        esp,0C
 0054295C    mov        eax,esi
 0054295E    pop        esi
 0054295F    pop        ebx
 00542960    pop        ebp
 00542961    ret
*}
//end;

//00542964
//procedure sub_00542964(?:?; ?:?; ?:?);
//begin
{*
 00542964    push       ebp
 00542965    mov        ebp,esp
 00542967    push       0
 00542969    push       0
 0054296B    push       0
 0054296D    push       0
 0054296F    push       0
 00542971    push       0
 00542973    push       0
 00542975    push       ebx
 00542976    push       esi
 00542977    push       edi
 00542978    mov        edi,ecx
 0054297A    mov        esi,edx
 0054297C    mov        ebx,eax
 0054297E    xor        eax,eax
 00542980    push       ebp
 00542981    push       542A58
 00542986    push       dword ptr fs:[eax]
 00542989    mov        dword ptr fs:[eax],esp
 0054298C    mov        dl,1
 0054298E    mov        eax,[0041C8E4]; TStringList
 00542993    call       TObject.Create; TStringList.Create
 00542998    mov        dword ptr [ebp-4],eax
 0054299B    xor        eax,eax
 0054299D    push       ebp
 0054299E    push       542A2E
 005429A3    push       dword ptr fs:[eax]
 005429A6    mov        dword ptr fs:[eax],esp
 005429A9    lea        ecx,[ebp-1C]
 005429AC    mov        edx,esi
 005429AE    mov        eax,ebx
 005429B0    call       00542BD0
 005429B5    lea        eax,[ebp-18]
 005429B8    push       eax
 005429B9    lea        eax,[ebp-0C]
 005429BC    push       eax
 005429BD    lea        eax,[ebp-10]
 005429C0    push       eax
 005429C1    lea        eax,[ebp-14]
 005429C4    push       eax
 005429C5    mov        eax,dword ptr [ebp-4]
 005429C8    push       eax
 005429C9    lea        ecx,[ebp-8]
 005429CC    mov        edx,edi
 005429CE    mov        eax,esi
 005429D0    call       004D28A4
 005429D5    push       esi
 005429D6    mov        eax,dword ptr [ebp-1C]
 005429D9    push       eax
 005429DA    mov        eax,dword ptr [ebp-8]
 005429DD    push       eax
 005429DE    mov        eax,dword ptr [ebp-18]
 005429E1    push       eax
 005429E2    mov        eax,dword ptr [ebp-0C]
 005429E5    push       eax
 005429E6    mov        eax,dword ptr [ebp-10]
 005429E9    push       eax
 005429EA    mov        eax,dword ptr [ebp-14]
 005429ED    push       eax
 005429EE    mov        eax,dword ptr [ebp-4]
 005429F1    push       eax
 005429F2    mov        ecx,ebx
 005429F4    test       ecx,ecx
>005429F6    je         005429FB
 005429F8    sub        ecx,0FFFFFFEC
 005429FB    mov        dl,1
 005429FD    mov        eax,[0054280C]; TZSQLiteConnection
 00542A02    call       TZSQLiteConnection.Create; TZSQLiteConnection.Create
 00542A07    mov        edx,eax
 00542A09    test       edx,edx
>00542A0B    je         00542A10
 00542A0D    sub        edx,0FFFFFFD0
 00542A10    mov        eax,dword ptr [ebp+8]
 00542A13    call       @IntfCopy
 00542A18    xor        eax,eax
 00542A1A    pop        edx
 00542A1B    pop        ecx
 00542A1C    pop        ecx
 00542A1D    mov        dword ptr fs:[eax],edx
 00542A20    push       542A35
 00542A25    mov        eax,dword ptr [ebp-4]
 00542A28    call       TObject.Free
 00542A2D    ret
<00542A2E    jmp        @HandleFinally
<00542A33    jmp        00542A25
 00542A35    xor        eax,eax
 00542A37    pop        edx
 00542A38    pop        ecx
 00542A39    pop        ecx
 00542A3A    mov        dword ptr fs:[eax],edx
 00542A3D    push       542A5F
 00542A42    lea        eax,[ebp-1C]
 00542A45    call       @IntfClear
 00542A4A    lea        eax,[ebp-14]
 00542A4D    mov        edx,4
 00542A52    call       @LStrArrayClr
 00542A57    ret
<00542A58    jmp        @HandleFinally
<00542A5D    jmp        00542A42
 00542A5F    pop        edi
 00542A60    pop        esi
 00542A61    pop        ebx
 00542A62    mov        esp,ebp
 00542A64    pop        ebp
 00542A65    ret        4
*}
//end;

//00542A68
//function sub_00542A68():?;
//begin
{*
 00542A68    mov        eax,1
 00542A6D    ret
*}
//end;

//00542A70
//function sub_00542A70():?;
//begin
{*
 00542A70    xor        eax,eax
 00542A72    ret
*}
//end;

//00542A74
//procedure sub_00542A74(?:?);
//begin
{*
 00542A74    push       ebp
 00542A75    mov        ebp,esp
 00542A77    push       ebx
 00542A78    push       esi
 00542A79    mov        esi,edx
 00542A7B    mov        ebx,eax
 00542A7D    cmp        dword ptr [ebx+0C],0; TZSQLiteDriver.?fC:IZTokenizer
>00542A81    jne        00542AA3
 00542A83    mov        dl,1
 00542A85    mov        eax,[0053FB48]; TZSQLiteTokenizer
 00542A8A    call       TZSQLiteTokenizer.Create; TZSQLiteTokenizer.Create
 00542A8F    mov        edx,eax
 00542A91    test       edx,edx
>00542A93    je         00542A9B
 00542A95    sub        edx,0FFFFFBD8
 00542A9B    lea        eax,[ebx+0C]; TZSQLiteDriver.?fC:IZTokenizer
 00542A9E    call       @IntfCopy
 00542AA3    mov        eax,esi
 00542AA5    mov        edx,dword ptr [ebx+0C]; TZSQLiteDriver.?fC:IZTokenizer
 00542AA8    call       @IntfCopy
 00542AAD    pop        esi
 00542AAE    pop        ebx
 00542AAF    pop        ebp
 00542AB0    ret
*}
//end;

//00542AB4
//procedure sub_00542AB4(?:?);
//begin
{*
 00542AB4    push       ebp
 00542AB5    mov        ebp,esp
 00542AB7    push       ebx
 00542AB8    push       esi
 00542AB9    mov        esi,edx
 00542ABB    mov        ebx,eax
 00542ABD    cmp        dword ptr [ebx+10],0; TZSQLiteDriver.?f10:IZStatementAnalyser
>00542AC1    jne        00542AE0
 00542AC3    mov        dl,1
 00542AC5    mov        eax,[005421F0]; TZSQLiteStatementAnalyser
 00542ACA    call       TZSQLiteStatementAnalyser.Create; TZSQLiteStatementAnalyser.Create
 00542ACF    mov        edx,eax
 00542AD1    test       edx,edx
>00542AD3    je         00542AD8
 00542AD5    sub        edx,0FFFFFFE0
 00542AD8    lea        eax,[ebx+10]; TZSQLiteDriver.?f10:IZStatementAnalyser
 00542ADB    call       @IntfCopy
 00542AE0    mov        eax,esi
 00542AE2    mov        edx,dword ptr [ebx+10]; TZSQLiteDriver.?f10:IZStatementAnalyser
 00542AE5    call       @IntfCopy
 00542AEA    pop        esi
 00542AEB    pop        ebx
 00542AEC    pop        ebp
 00542AED    ret
*}
//end;

//00542AF0
//procedure sub_00542AF0(?:?);
//begin
{*
 00542AF0    push       ebp
 00542AF1    mov        ebp,esp
 00542AF3    push       0
 00542AF5    push       0
 00542AF7    push       ebx
 00542AF8    push       esi
 00542AF9    mov        ebx,edx
 00542AFB    mov        esi,eax
 00542AFD    xor        eax,eax
 00542AFF    push       ebp
 00542B00    push       542BB2
 00542B05    push       dword ptr fs:[eax]
 00542B08    mov        dword ptr fs:[eax],esp
 00542B0B    push       3
 00542B0D    mov        eax,ebx
 00542B0F    mov        ecx,1
 00542B14    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 00542B1A    call       @DynArraySetLength
 00542B1F    add        esp,4
 00542B22    xor        eax,eax
 00542B24    mov        edx,dword ptr [ebx]
 00542B26    test       edx,edx
>00542B28    je         00542B2F
 00542B2A    cmp        eax,dword ptr [edx-4]
>00542B2D    jb         00542B34
 00542B2F    call       @BoundErr
 00542B34    lea        eax,[edx+eax*4]
 00542B37    mov        edx,542BC8; 'sqlite'
 00542B3C    call       @LStrAsg
 00542B41    lea        edx,[ebp-4]
 00542B44    mov        eax,dword ptr [esi+18]; TZSQLiteDriver.?f18:IZSQLitePlainDriver
 00542B47    mov        ecx,dword ptr [eax]
 00542B49    call       dword ptr [ecx+0C]
 00542B4C    mov        edx,dword ptr [ebp-4]
 00542B4F    mov        eax,1
 00542B54    mov        ecx,dword ptr [ebx]
 00542B56    test       ecx,ecx
>00542B58    je         00542B5F
 00542B5A    cmp        eax,dword ptr [ecx-4]
>00542B5D    jb         00542B64
 00542B5F    call       @BoundErr
 00542B64    lea        eax,[ecx+eax*4]
 00542B67    call       @LStrAsg
 00542B6C    lea        edx,[ebp-8]
 00542B6F    mov        eax,dword ptr [esi+1C]; TZSQLiteDriver.?f1C:IZSQLitePlainDriver
 00542B72    mov        ecx,dword ptr [eax]
 00542B74    call       dword ptr [ecx+0C]
 00542B77    mov        edx,dword ptr [ebp-8]
 00542B7A    mov        eax,2
 00542B7F    mov        ecx,dword ptr [ebx]
 00542B81    test       ecx,ecx
>00542B83    je         00542B8A
 00542B85    cmp        eax,dword ptr [ecx-4]
>00542B88    jb         00542B8F
 00542B8A    call       @BoundErr
 00542B8F    lea        eax,[ecx+eax*4]
 00542B92    call       @LStrAsg
 00542B97    xor        eax,eax
 00542B99    pop        edx
 00542B9A    pop        ecx
 00542B9B    pop        ecx
 00542B9C    mov        dword ptr fs:[eax],edx
 00542B9F    push       542BB9
 00542BA4    lea        eax,[ebp-8]
 00542BA7    mov        edx,2
 00542BAC    call       @LStrArrayClr
 00542BB1    ret
<00542BB2    jmp        @HandleFinally
<00542BB7    jmp        00542BA4
 00542BB9    pop        esi
 00542BBA    pop        ebx
 00542BBB    pop        ecx
 00542BBC    pop        ecx
 00542BBD    pop        ebp
 00542BBE    ret
*}
//end;

//00542BD0
//procedure sub_00542BD0(?:TZSQLiteDriver; ?:?; ?:?);
//begin
{*
 00542BD0    push       ebp
 00542BD1    mov        ebp,esp
 00542BD3    push       0
 00542BD5    push       0
 00542BD7    push       0
 00542BD9    push       0
 00542BDB    push       ebx
 00542BDC    push       esi
 00542BDD    push       edi
 00542BDE    mov        esi,ecx
 00542BE0    mov        edi,edx
 00542BE2    mov        ebx,eax
 00542BE4    xor        eax,eax
 00542BE6    push       ebp
 00542BE7    push       542C92
 00542BEC    push       dword ptr fs:[eax]
 00542BEF    mov        dword ptr fs:[eax],esp
 00542BF2    lea        edx,[ebp-8]
 00542BF5    mov        eax,ebx
 00542BF7    mov        ecx,dword ptr [eax]
 00542BF9    call       dword ptr [ecx]; TZSQLiteDriver.sub_00542AF0
 00542BFB    mov        edx,dword ptr [ebp-8]
 00542BFE    lea        ecx,[ebp-4]
 00542C01    mov        eax,edi
 00542C03    call       004D263C
 00542C08    lea        edx,[ebp-0C]
 00542C0B    mov        eax,dword ptr [ebx+18]; TZSQLiteDriver.?f18:IZSQLitePlainDriver
 00542C0E    mov        ecx,dword ptr [eax]
 00542C10    call       dword ptr [ecx+0C]
 00542C13    mov        edx,dword ptr [ebp-0C]
 00542C16    mov        eax,dword ptr [ebp-4]
 00542C19    call       @LStrCmp
>00542C1E    jne        00542C2C
 00542C20    mov        eax,esi
 00542C22    mov        edx,dword ptr [ebx+18]; TZSQLiteDriver.?f18:IZSQLitePlainDriver
 00542C25    call       @IntfCopy
>00542C2A    jmp        00542C5A
 00542C2C    lea        edx,[ebp-10]
 00542C2F    mov        eax,dword ptr [ebx+1C]; TZSQLiteDriver.?f1C:IZSQLitePlainDriver
 00542C32    mov        ecx,dword ptr [eax]
 00542C34    call       dword ptr [ecx+0C]
 00542C37    mov        edx,dword ptr [ebp-10]
 00542C3A    mov        eax,dword ptr [ebp-4]
 00542C3D    call       @LStrCmp
>00542C42    jne        00542C50
 00542C44    mov        eax,esi
 00542C46    mov        edx,dword ptr [ebx+1C]; TZSQLiteDriver.?f1C:IZSQLitePlainDriver
 00542C49    call       @IntfCopy
>00542C4E    jmp        00542C5A
 00542C50    mov        eax,esi
 00542C52    mov        edx,dword ptr [ebx+18]; TZSQLiteDriver.?f18:IZSQLitePlainDriver
 00542C55    call       @IntfCopy
 00542C5A    mov        eax,dword ptr [esi]
 00542C5C    mov        edx,dword ptr [eax]
 00542C5E    call       dword ptr [edx+14]
 00542C61    xor        eax,eax
 00542C63    pop        edx
 00542C64    pop        ecx
 00542C65    pop        ecx
 00542C66    mov        dword ptr fs:[eax],edx
 00542C69    push       542C99
 00542C6E    lea        eax,[ebp-10]
 00542C71    mov        edx,2
 00542C76    call       @LStrArrayClr
 00542C7B    lea        eax,[ebp-8]
 00542C7E    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 00542C84    call       @DynArrayClear
 00542C89    lea        eax,[ebp-4]
 00542C8C    call       @LStrClr
 00542C91    ret
<00542C92    jmp        @HandleFinally
<00542C97    jmp        00542C6E
 00542C99    pop        edi
 00542C9A    pop        esi
 00542C9B    pop        ebx
 00542C9C    mov        esp,ebp
 00542C9E    pop        ebp
 00542C9F    ret
*}
//end;

//00542CA0
//constructor TZSQLiteConnection.Create(?:TZSQLiteConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00542CA0    push       ebp
 00542CA1    mov        ebp,esp
 00542CA3    add        esp,0FFFFFFF8
 00542CA6    push       ebx
 00542CA7    push       esi
 00542CA8    push       edi
 00542CA9    test       dl,dl
>00542CAB    je         00542CB5
 00542CAD    add        esp,0FFFFFFF0
 00542CB0    call       @ClassCreate
 00542CB5    mov        dword ptr [ebp-8],ecx
 00542CB8    mov        byte ptr [ebp-1],dl
 00542CBB    mov        ebx,eax
 00542CBD    mov        edi,dword ptr [ebp+8]
 00542CC0    mov        esi,dword ptr [ebp+24]
 00542CC3    mov        eax,dword ptr [ebp-8]
 00542CC6    call       @IntfAddRef
 00542CCB    mov        eax,dword ptr [ebp+20]
 00542CCE    call       @IntfAddRef
 00542CD3    xor        eax,eax
 00542CD5    push       ebp
 00542CD6    push       542D4C
 00542CDB    push       dword ptr fs:[eax]
 00542CDE    mov        dword ptr fs:[eax],esp
 00542CE1    push       esi
 00542CE2    mov        eax,dword ptr [ebp+1C]
 00542CE5    push       eax
 00542CE6    mov        eax,dword ptr [ebp+18]
 00542CE9    push       eax
 00542CEA    mov        eax,dword ptr [ebp+14]
 00542CED    push       eax
 00542CEE    mov        eax,dword ptr [ebp+10]
 00542CF1    push       eax
 00542CF2    mov        eax,dword ptr [ebp+0C]
 00542CF5    push       eax
 00542CF6    push       edi
 00542CF7    push       esi
 00542CF8    push       edi
 00542CF9    mov        ecx,ebx
 00542CFB    mov        dl,1
 00542CFD    mov        eax,[0054051C]; TZSQLiteDatabaseMetadata
 00542D02    call       TZSQLiteDatabaseMetadata.Create; TZSQLiteDatabaseMetadata.Create
 00542D07    push       eax
 00542D08    mov        ecx,dword ptr [ebp-8]
 00542D0B    xor        edx,edx
 00542D0D    mov        eax,ebx
 00542D0F    call       004DDD88
 00542D14    lea        eax,[ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00542D17    mov        edx,dword ptr [ebp+20]
 00542D1A    call       @IntfCopy
 00542D1F    mov        byte ptr [ebx+28],1; TZSQLiteConnection.?f28:byte
 00542D23    mov        byte ptr [ebx+2A],0; TZSQLiteConnection.?f2A:byte
 00542D27    mov        eax,ebx
 00542D29    mov        edx,dword ptr [eax]
 00542D2B    call       dword ptr [edx+3C]; TZSQLiteConnection.sub_00542DA4
 00542D2E    xor        eax,eax
 00542D30    pop        edx
 00542D31    pop        ecx
 00542D32    pop        ecx
 00542D33    mov        dword ptr fs:[eax],edx
 00542D36    push       542D53
 00542D3B    lea        eax,[ebp-8]
 00542D3E    call       @IntfClear
 00542D43    lea        eax,[ebp+20]
 00542D46    call       @IntfClear
 00542D4B    ret
<00542D4C    jmp        @HandleFinally
<00542D51    jmp        00542D3B
 00542D53    mov        eax,ebx
 00542D55    cmp        byte ptr [ebp-1],0
>00542D59    je         00542D6A
 00542D5B    call       @AfterConstruction
 00542D60    pop        dword ptr fs:[0]
 00542D67    add        esp,0C
 00542D6A    mov        eax,ebx
 00542D6C    pop        edi
 00542D6D    pop        esi
 00542D6E    pop        ebx
 00542D6F    pop        ecx
 00542D70    pop        ecx
 00542D71    pop        ebp
 00542D72    ret        20
*}
//end;

//00542D78
destructor TZSQLiteConnection.Destroy;
begin
{*
 00542D78    push       ebp
 00542D79    mov        ebp,esp
 00542D7B    push       ebx
 00542D7C    push       esi
 00542D7D    call       @BeforeDestruction
 00542D82    mov        ebx,edx
 00542D84    mov        esi,eax
 00542D86    mov        edx,ebx
 00542D88    and        dl,0FC
 00542D8B    mov        eax,esi
 00542D8D    call       TZAbstractConnection.Destroy
 00542D92    test       bl,bl
>00542D94    jle        00542D9D
 00542D96    mov        eax,esi
 00542D98    call       @ClassDestroy
 00542D9D    pop        esi
 00542D9E    pop        ebx
 00542D9F    pop        ebp
 00542DA0    ret
*}
end;

//00542DA4
procedure sub_00542DA4;
begin
{*
 00542DA4    push       ebp
 00542DA5    mov        ebp,esp
 00542DA7    add        esp,0FFFFFFD8
 00542DAA    push       ebx
 00542DAB    push       esi
 00542DAC    push       edi
 00542DAD    xor        edx,edx
 00542DAF    mov        dword ptr [ebp-28],edx
 00542DB2    mov        dword ptr [ebp-24],edx
 00542DB5    mov        dword ptr [ebp-0C],edx
 00542DB8    mov        dword ptr [ebp-10],edx
 00542DBB    mov        dword ptr [ebp-4],eax
 00542DBE    xor        eax,eax
 00542DC0    push       ebp
 00542DC1    push       542F9D
 00542DC6    push       dword ptr fs:[eax]
 00542DC9    mov        dword ptr fs:[eax],esp
 00542DCC    mov        eax,dword ptr [ebp-4]
 00542DCF    cmp        byte ptr [eax+2B],0; TZSQLiteConnection.?f2B:byte
>00542DD3    je         00542F75
 00542DD9    mov        eax,542FAC
 00542DDE    mov        dword ptr [ebp-8],eax
 00542DE1    lea        eax,[ebp-0C]
 00542DE4    push       eax
 00542DE5    mov        eax,dword ptr [ebp-4]
 00542DE8    mov        eax,dword ptr [eax+18]; TZSQLiteConnection.?f18:String
 00542DEB    mov        dword ptr [ebp-20],eax
 00542DEE    mov        byte ptr [ebp-1C],0B
 00542DF2    mov        eax,dword ptr [ebp-4]
 00542DF5    mov        eax,dword ptr [eax+1C]; TZSQLiteConnection.?f1C:String
 00542DF8    mov        dword ptr [ebp-18],eax
 00542DFB    mov        byte ptr [ebp-14],0B
 00542DFF    lea        edx,[ebp-20]
 00542E02    mov        ecx,1
 00542E07    mov        eax,542FB8; 'CONNECT TO \"%s\" AS USER \"%s\"'
 00542E0C    call       Format
 00542E11    lea        eax,[ebp-8]
 00542E14    push       eax
 00542E15    mov        eax,dword ptr [ebp-4]
 00542E18    mov        eax,dword ptr [eax+18]; TZSQLiteConnection.?f18:String
 00542E1B    call       @LStrToPChar
 00542E20    mov        edx,eax
 00542E22    mov        eax,dword ptr [ebp-4]
 00542E25    mov        eax,dword ptr [eax+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00542E28    xor        ecx,ecx
 00542E2A    mov        ebx,dword ptr [eax]
 00542E2C    call       dword ptr [ebx+18]
 00542E2F    mov        ebx,eax
 00542E31    mov        eax,dword ptr [ebp-4]
 00542E34    mov        dword ptr [eax+3C],ebx; TZSQLiteConnection.?f3C:dword
 00542E37    test       ebx,ebx
>00542E39    jne        00542E54
 00542E3B    push       0
 00542E3D    mov        eax,dword ptr [ebp-0C]
 00542E40    push       eax
 00542E41    mov        eax,dword ptr [ebp-4]
 00542E44    mov        eax,dword ptr [eax+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00542E47    mov        ecx,dword ptr [ebp-8]
 00542E4A    mov        edx,1
 00542E4F    call       0053D304
 00542E54    mov        eax,dword ptr [ebp-0C]
 00542E57    push       eax
 00542E58    lea        edx,[ebp-24]
 00542E5B    mov        eax,dword ptr [ebp-4]
 00542E5E    mov        eax,dword ptr [eax+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00542E61    mov        ecx,dword ptr [eax]
 00542E63    call       dword ptr [ecx+0C]
 00542E66    mov        ecx,dword ptr [ebp-24]
 00542E69    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00542E6E    mov        eax,dword ptr [eax]
 00542E70    xor        edx,edx
 00542E72    mov        ebx,dword ptr [eax]
 00542E74    call       dword ptr [ebx+3C]
 00542E77    lea        ecx,[ebp-28]
 00542E7A    mov        eax,dword ptr [ebp-4]
 00542E7D    mov        eax,dword ptr [eax+24]; TZSQLiteConnection.?f24:dword
 00542E80    mov        edx,542FE0; 'encrypted'
 00542E85    call       TStrings.GetValue
 00542E8A    mov        eax,dword ptr [ebp-28]
 00542E8D    call       004BEFC0
 00542E92    test       al,al
>00542E94    je         00542EE0
 00542E96    mov        eax,dword ptr [ebp-4]
 00542E99    mov        eax,dword ptr [eax+20]; TZSQLiteConnection.?f20:String
 00542E9C    call       @LStrToPChar
 00542EA1    mov        ebx,eax
 00542EA3    mov        eax,ebx
 00542EA5    call       StrLen
 00542EAA    test       eax,eax
>00542EAC    jns        00542EB3
 00542EAE    call       @BoundErr
 00542EB3    push       eax
 00542EB4    mov        ecx,ebx
 00542EB6    mov        eax,dword ptr [ebp-4]
 00542EB9    mov        edx,dword ptr [eax+3C]; TZSQLiteConnection.?f3C:dword
 00542EBC    mov        eax,dword ptr [ebp-4]
 00542EBF    mov        eax,dword ptr [eax+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00542EC2    mov        ebx,dword ptr [eax]
 00542EC4    call       dword ptr [ebx+0AC]
 00542ECA    push       0
 00542ECC    push       542FF4; 'SQLite.Key'
 00542ED1    mov        edx,dword ptr [ebp-4]
 00542ED4    mov        edx,dword ptr [edx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00542ED7    mov        ecx,dword ptr [ebp-8]
 00542EDA    xchg       eax,edx
 00542EDB    call       0053D304
 00542EE0    xor        edx,edx
 00542EE2    push       ebp
 00542EE3    push       542F45
 00542EE8    push       dword ptr fs:[edx]
 00542EEB    mov        dword ptr fs:[edx],esp
 00542EEE    lea        eax,[ebp-10]
 00542EF1    mov        edx,543008; 'PRAGMA show_datatypes = ON'
 00542EF6    call       @LStrLAsg
 00542EFB    push       0
 00542EFD    push       0
 00542EFF    lea        eax,[ebp-8]
 00542F02    push       eax
 00542F03    mov        eax,dword ptr [ebp-10]
 00542F06    call       @LStrToPChar
 00542F0B    mov        ecx,eax
 00542F0D    mov        eax,dword ptr [ebp-4]
 00542F10    mov        edx,dword ptr [eax+3C]; TZSQLiteConnection.?f3C:dword
 00542F13    mov        eax,dword ptr [ebp-4]
 00542F16    mov        eax,dword ptr [eax+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00542F19    mov        ebx,dword ptr [eax]
 00542F1B    call       dword ptr [ebx+20]
 00542F1E    push       3
 00542F20    mov        edx,dword ptr [ebp-10]
 00542F23    push       edx
 00542F24    mov        edx,dword ptr [ebp-4]
 00542F27    mov        edx,dword ptr [edx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00542F2A    mov        ecx,dword ptr [ebp-8]
 00542F2D    xchg       eax,edx
 00542F2E    call       0053D304
 00542F33    mov        eax,dword ptr [ebp-4]
 00542F36    call       005430D0
 00542F3B    xor        eax,eax
 00542F3D    pop        edx
 00542F3E    pop        ecx
 00542F3F    pop        ecx
 00542F40    mov        dword ptr fs:[eax],edx
>00542F43    jmp        00542F6D
<00542F45    jmp        @HandleAnyException
 00542F4A    mov        eax,dword ptr [ebp-4]
 00542F4D    mov        edx,dword ptr [eax+3C]; TZSQLiteConnection.?f3C:dword
 00542F50    mov        eax,dword ptr [ebp-4]
 00542F53    mov        eax,dword ptr [eax+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00542F56    mov        ecx,dword ptr [eax]
 00542F58    call       dword ptr [ecx+1C]
 00542F5B    mov        eax,dword ptr [ebp-4]
 00542F5E    xor        edx,edx
 00542F60    mov        dword ptr [eax+3C],edx; TZSQLiteConnection.?f3C:dword
 00542F63    call       @RaiseAgain
 00542F68    call       @DoneExcept
 00542F6D    mov        eax,dword ptr [ebp-4]
 00542F70    call       004DDF38
 00542F75    xor        eax,eax
 00542F77    pop        edx
 00542F78    pop        ecx
 00542F79    pop        ecx
 00542F7A    mov        dword ptr fs:[eax],edx
 00542F7D    push       542FA4
 00542F82    lea        eax,[ebp-28]
 00542F85    mov        edx,2
 00542F8A    call       @LStrArrayClr
 00542F8F    lea        eax,[ebp-10]
 00542F92    mov        edx,2
 00542F97    call       @LStrArrayClr
 00542F9C    ret
<00542F9D    jmp        @HandleFinally
<00542FA2    jmp        00542F82
 00542FA4    pop        edi
 00542FA5    pop        esi
 00542FA6    pop        ebx
 00542FA7    mov        esp,ebp
 00542FA9    pop        ebp
 00542FAA    ret
*}
end;

//00543024
//procedure sub_00543024(?:?; ?:?);
//begin
{*
 00543024    push       ebp
 00543025    mov        ebp,esp
 00543027    push       ebx
 00543028    push       esi
 00543029    push       edi
 0054302A    mov        edi,ecx
 0054302C    mov        esi,edx
 0054302E    mov        ebx,eax
 00543030    mov        eax,ebx
 00543032    mov        edx,dword ptr [eax]
 00543034    call       dword ptr [edx+44]; TZSQLiteConnection.sub_004DE1AC
 00543037    test       al,al
>00543039    je         00543042
 0054303B    mov        eax,ebx
 0054303D    mov        edx,dword ptr [eax]
 0054303F    call       dword ptr [edx+3C]; TZSQLiteConnection.sub_00542DA4
 00543042    mov        eax,ebx
 00543044    test       eax,eax
>00543046    je         0054304B
 00543048    sub        eax,0FFFFFFD0
 0054304B    push       eax
 0054304C    push       esi
 0054304D    mov        eax,dword ptr [ebx+3C]; TZSQLiteConnection.?f3C:dword
 00543050    push       eax
 00543051    mov        ecx,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00543054    mov        dl,1
 00543056    mov        eax,[0053EC60]; TZSQLiteStatement
 0054305B    call       TZSQLiteStatement.Create; TZSQLiteStatement.Create
 00543060    mov        edx,eax
 00543062    test       edx,edx
>00543064    je         00543069
 00543066    sub        edx,0FFFFFFBC
 00543069    mov        eax,edi
 0054306B    call       @IntfCopy
 00543070    pop        edi
 00543071    pop        esi
 00543072    pop        ebx
 00543073    pop        ebp
 00543074    ret
*}
//end;

//00543078
//procedure sub_00543078(?:?; ?:?; ?:?);
//begin
{*
 00543078    push       ebp
 00543079    mov        ebp,esp
 0054307B    push       ebx
 0054307C    push       esi
 0054307D    push       edi
 0054307E    mov        edi,ecx
 00543080    mov        esi,edx
 00543082    mov        ebx,eax
 00543084    mov        eax,ebx
 00543086    mov        edx,dword ptr [eax]
 00543088    call       dword ptr [edx+44]; TZSQLiteConnection.sub_004DE1AC
 0054308B    test       al,al
>0054308D    je         00543096
 0054308F    mov        eax,ebx
 00543091    mov        edx,dword ptr [eax]
 00543093    call       dword ptr [edx+3C]; TZSQLiteConnection.sub_00542DA4
 00543096    mov        eax,ebx
 00543098    test       eax,eax
>0054309A    je         0054309F
 0054309C    sub        eax,0FFFFFFD0
 0054309F    push       eax
 005430A0    push       esi
 005430A1    push       edi
 005430A2    mov        eax,dword ptr [ebx+3C]; TZSQLiteConnection.?f3C:dword
 005430A5    push       eax
 005430A6    mov        ecx,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 005430A9    mov        dl,1
 005430AB    mov        eax,[0053ED48]; TZSQLitePreparedStatement
 005430B0    call       TZSQLitePreparedStatement.Create; TZSQLitePreparedStatement.Create
 005430B5    mov        edx,eax
 005430B7    test       edx,edx
>005430B9    je         005430BE
 005430BB    sub        edx,0FFFFFFA4
 005430BE    mov        eax,dword ptr [ebp+8]
 005430C1    call       @IntfCopy
 005430C6    pop        edi
 005430C7    pop        esi
 005430C8    pop        ebx
 005430C9    pop        ebp
 005430CA    ret        4
*}
//end;

//005430D0
//procedure sub_005430D0(?:TZSQLiteConnection);
//begin
{*
 005430D0    push       ebp
 005430D1    mov        ebp,esp
 005430D3    xor        ecx,ecx
 005430D5    push       ecx
 005430D6    push       ecx
 005430D7    push       ecx
 005430D8    push       ecx
 005430D9    push       ebx
 005430DA    push       esi
 005430DB    push       edi
 005430DC    mov        ebx,eax
 005430DE    xor        eax,eax
 005430E0    push       ebp
 005430E1    push       543178
 005430E6    push       dword ptr fs:[eax]
 005430E9    mov        dword ptr fs:[eax],esp
 005430EC    cmp        byte ptr [ebx+2A],0; TZSQLiteConnection.?f2A:byte
>005430F0    je         0054315D
 005430F2    mov        eax,543188
 005430F7    mov        dword ptr [ebp-4],eax
 005430FA    mov        esi,54318C; 'BEGIN TRANSACTION'
 005430FF    push       0
 00543101    push       0
 00543103    lea        eax,[ebp-4]
 00543106    push       eax
 00543107    mov        ecx,esi
 00543109    mov        edx,dword ptr [ebx+3C]; TZSQLiteConnection.?f3C:dword
 0054310C    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 0054310F    mov        edi,dword ptr [eax]
 00543111    call       dword ptr [edi+20]
 00543114    mov        edi,eax
 00543116    push       3
 00543118    lea        eax,[ebp-8]
 0054311B    mov        edx,esi
 0054311D    call       @LStrFromPChar
 00543122    mov        eax,dword ptr [ebp-8]
 00543125    push       eax
 00543126    mov        ecx,dword ptr [ebp-4]
 00543129    mov        edx,edi
 0054312B    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 0054312E    call       0053D304
 00543133    lea        eax,[ebp-0C]
 00543136    mov        edx,esi
 00543138    call       @LStrFromPChar
 0054313D    mov        eax,dword ptr [ebp-0C]
 00543140    push       eax
 00543141    lea        edx,[ebp-10]
 00543144    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00543147    mov        ecx,dword ptr [eax]
 00543149    call       dword ptr [ecx+0C]
 0054314C    mov        ecx,dword ptr [ebp-10]
 0054314F    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00543154    mov        eax,dword ptr [eax]
 00543156    mov        dl,3
 00543158    mov        ebx,dword ptr [eax]
 0054315A    call       dword ptr [ebx+3C]
 0054315D    xor        eax,eax
 0054315F    pop        edx
 00543160    pop        ecx
 00543161    pop        ecx
 00543162    mov        dword ptr fs:[eax],edx
 00543165    push       54317F
 0054316A    lea        eax,[ebp-10]
 0054316D    mov        edx,3
 00543172    call       @LStrArrayClr
 00543177    ret
<00543178    jmp        @HandleFinally
<0054317D    jmp        0054316A
 0054317F    pop        edi
 00543180    pop        esi
 00543181    pop        ebx
 00543182    mov        esp,ebp
 00543184    pop        ebp
 00543185    ret
*}
//end;

//005431A0
procedure sub_005431A0;
begin
{*
 005431A0    push       ebp
 005431A1    mov        ebp,esp
 005431A3    xor        ecx,ecx
 005431A5    push       ecx
 005431A6    push       ecx
 005431A7    push       ecx
 005431A8    push       ecx
 005431A9    push       ebx
 005431AA    push       esi
 005431AB    push       edi
 005431AC    mov        ebx,eax
 005431AE    xor        eax,eax
 005431B0    push       ebp
 005431B1    push       543255
 005431B6    push       dword ptr fs:[eax]
 005431B9    mov        dword ptr fs:[eax],esp
 005431BC    cmp        byte ptr [ebx+2A],0; TZSQLiteConnection.?f2A:byte
>005431C0    je         0054323A
 005431C2    cmp        byte ptr [ebx+2B],0; TZSQLiteConnection.?f2B:byte
>005431C6    jne        0054323A
 005431C8    mov        eax,543264
 005431CD    mov        dword ptr [ebp-4],eax
 005431D0    mov        esi,543268; 'COMMIT TRANSACTION'
 005431D5    push       0
 005431D7    push       0
 005431D9    lea        eax,[ebp-4]
 005431DC    push       eax
 005431DD    mov        ecx,esi
 005431DF    mov        edx,dword ptr [ebx+3C]; TZSQLiteConnection.?f3C:dword
 005431E2    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 005431E5    mov        edi,dword ptr [eax]
 005431E7    call       dword ptr [edi+20]
 005431EA    mov        edi,eax
 005431EC    push       3
 005431EE    lea        eax,[ebp-8]
 005431F1    mov        edx,esi
 005431F3    call       @LStrFromPChar
 005431F8    mov        eax,dword ptr [ebp-8]
 005431FB    push       eax
 005431FC    mov        ecx,dword ptr [ebp-4]
 005431FF    mov        edx,edi
 00543201    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00543204    call       0053D304
 00543209    lea        eax,[ebp-0C]
 0054320C    mov        edx,esi
 0054320E    call       @LStrFromPChar
 00543213    mov        eax,dword ptr [ebp-0C]
 00543216    push       eax
 00543217    lea        edx,[ebp-10]
 0054321A    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 0054321D    mov        ecx,dword ptr [eax]
 0054321F    call       dword ptr [ecx+0C]
 00543222    mov        ecx,dword ptr [ebp-10]
 00543225    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054322A    mov        eax,dword ptr [eax]
 0054322C    mov        dl,3
 0054322E    mov        esi,dword ptr [eax]
 00543230    call       dword ptr [esi+3C]
 00543233    mov        eax,ebx
 00543235    call       005430D0
 0054323A    xor        eax,eax
 0054323C    pop        edx
 0054323D    pop        ecx
 0054323E    pop        ecx
 0054323F    mov        dword ptr fs:[eax],edx
 00543242    push       54325C
 00543247    lea        eax,[ebp-10]
 0054324A    mov        edx,3
 0054324F    call       @LStrArrayClr
 00543254    ret
<00543255    jmp        @HandleFinally
<0054325A    jmp        00543247
 0054325C    pop        edi
 0054325D    pop        esi
 0054325E    pop        ebx
 0054325F    mov        esp,ebp
 00543261    pop        ebp
 00543262    ret
*}
end;

//0054327C
procedure sub_0054327C;
begin
{*
 0054327C    push       ebp
 0054327D    mov        ebp,esp
 0054327F    xor        ecx,ecx
 00543281    push       ecx
 00543282    push       ecx
 00543283    push       ecx
 00543284    push       ecx
 00543285    push       ebx
 00543286    push       esi
 00543287    push       edi
 00543288    mov        ebx,eax
 0054328A    xor        eax,eax
 0054328C    push       ebp
 0054328D    push       543331
 00543292    push       dword ptr fs:[eax]
 00543295    mov        dword ptr fs:[eax],esp
 00543298    cmp        byte ptr [ebx+2A],0; TZSQLiteConnection.?f2A:byte
>0054329C    je         00543316
 0054329E    cmp        byte ptr [ebx+2B],0; TZSQLiteConnection.?f2B:byte
>005432A2    jne        00543316
 005432A4    mov        eax,543340
 005432A9    mov        dword ptr [ebp-4],eax
 005432AC    mov        esi,543344; 'ROLLBACK TRANSACTION'
 005432B1    push       0
 005432B3    push       0
 005432B5    lea        eax,[ebp-4]
 005432B8    push       eax
 005432B9    mov        ecx,esi
 005432BB    mov        edx,dword ptr [ebx+3C]; TZSQLiteConnection.?f3C:dword
 005432BE    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 005432C1    mov        edi,dword ptr [eax]
 005432C3    call       dword ptr [edi+20]
 005432C6    mov        edi,eax
 005432C8    push       3
 005432CA    lea        eax,[ebp-8]
 005432CD    mov        edx,esi
 005432CF    call       @LStrFromPChar
 005432D4    mov        eax,dword ptr [ebp-8]
 005432D7    push       eax
 005432D8    mov        ecx,dword ptr [ebp-4]
 005432DB    mov        edx,edi
 005432DD    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 005432E0    call       0053D304
 005432E5    lea        eax,[ebp-0C]
 005432E8    mov        edx,esi
 005432EA    call       @LStrFromPChar
 005432EF    mov        eax,dword ptr [ebp-0C]
 005432F2    push       eax
 005432F3    lea        edx,[ebp-10]
 005432F6    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 005432F9    mov        ecx,dword ptr [eax]
 005432FB    call       dword ptr [ecx+0C]
 005432FE    mov        ecx,dword ptr [ebp-10]
 00543301    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00543306    mov        eax,dword ptr [eax]
 00543308    mov        dl,3
 0054330A    mov        esi,dword ptr [eax]
 0054330C    call       dword ptr [esi+3C]
 0054330F    mov        eax,ebx
 00543311    call       005430D0
 00543316    xor        eax,eax
 00543318    pop        edx
 00543319    pop        ecx
 0054331A    pop        ecx
 0054331B    mov        dword ptr fs:[eax],edx
 0054331E    push       543338
 00543323    lea        eax,[ebp-10]
 00543326    mov        edx,3
 0054332B    call       @LStrArrayClr
 00543330    ret
<00543331    jmp        @HandleFinally
<00543336    jmp        00543323
 00543338    pop        edi
 00543339    pop        esi
 0054333A    pop        ebx
 0054333B    mov        esp,ebp
 0054333D    pop        ebp
 0054333E    ret
*}
end;

//0054335C
procedure sub_0054335C;
begin
{*
 0054335C    push       ebp
 0054335D    mov        ebp,esp
 0054335F    add        esp,0FFFFFFF0
 00543362    push       ebx
 00543363    push       esi
 00543364    xor        edx,edx
 00543366    mov        dword ptr [ebp-10],edx
 00543369    mov        dword ptr [ebp-4],edx
 0054336C    mov        ebx,eax
 0054336E    xor        eax,eax
 00543370    push       ebp
 00543371    push       5433F4
 00543376    push       dword ptr fs:[eax]
 00543379    mov        dword ptr fs:[eax],esp
 0054337C    cmp        byte ptr [ebx+2B],0; TZSQLiteConnection.?f2B:byte
>00543380    jne        005433CF
 00543382    mov        edx,dword ptr [ebx+3C]; TZSQLiteConnection.?f3C:dword
 00543385    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 00543388    mov        ecx,dword ptr [eax]
 0054338A    call       dword ptr [ecx+1C]
 0054338D    xor        eax,eax
 0054338F    mov        dword ptr [ebx+3C],eax; TZSQLiteConnection.?f3C:dword
 00543392    lea        eax,[ebp-4]
 00543395    push       eax
 00543396    mov        eax,dword ptr [ebx+18]; TZSQLiteConnection.?f18:String
 00543399    mov        dword ptr [ebp-0C],eax
 0054339C    mov        byte ptr [ebp-8],0B
 005433A0    lea        edx,[ebp-0C]
 005433A3    xor        ecx,ecx
 005433A5    mov        eax,54340C; 'DISCONNECT FROM \"%s\"'
 005433AA    call       Format
 005433AF    mov        eax,dword ptr [ebp-4]
 005433B2    push       eax
 005433B3    lea        edx,[ebp-10]
 005433B6    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 005433B9    mov        ecx,dword ptr [eax]
 005433BB    call       dword ptr [ecx+0C]
 005433BE    mov        ecx,dword ptr [ebp-10]
 005433C1    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 005433C6    mov        eax,dword ptr [eax]
 005433C8    mov        dl,1
 005433CA    mov        esi,dword ptr [eax]
 005433CC    call       dword ptr [esi+3C]
 005433CF    mov        eax,ebx
 005433D1    call       004DE1A4
 005433D6    xor        eax,eax
 005433D8    pop        edx
 005433D9    pop        ecx
 005433DA    pop        ecx
 005433DB    mov        dword ptr fs:[eax],edx
 005433DE    push       5433FB
 005433E3    lea        eax,[ebp-10]
 005433E6    call       @LStrClr
 005433EB    lea        eax,[ebp-4]
 005433EE    call       @LStrClr
 005433F3    ret
<005433F4    jmp        @HandleFinally
<005433F9    jmp        005433E3
 005433FB    pop        esi
 005433FC    pop        ebx
 005433FD    mov        esp,ebp
 005433FF    pop        ebp
 00543400    ret
*}
end;

//00543424
//procedure sub_00543424(?:?);
//begin
{*
 00543424    push       ebp
 00543425    mov        ebp,esp
 00543427    push       ebx
 00543428    push       esi
 00543429    mov        esi,edx
 0054342B    mov        ebx,eax
 0054342D    mov        eax,esi
 0054342F    mov        edx,dword ptr [ebx+34]; TZSQLiteConnection.?f34:String
 00543432    call       @LStrAsg
 00543437    pop        esi
 00543438    pop        ebx
 00543439    pop        ebp
 0054343A    ret
*}
//end;

//0054343C
//procedure sub_0054343C(?:?);
//begin
{*
 0054343C    push       ebp
 0054343D    mov        ebp,esp
 0054343F    push       ebx
 00543440    push       esi
 00543441    mov        esi,edx
 00543443    mov        ebx,eax
 00543445    lea        eax,[ebx+34]; TZSQLiteConnection.?f34:String
 00543448    mov        edx,esi
 0054344A    call       @LStrAsg
 0054344F    pop        esi
 00543450    pop        ebx
 00543451    pop        ebp
 00543452    ret
*}
//end;

//00543454
//procedure sub_00543454(?:?);
//begin
{*
 00543454    push       ebp
 00543455    mov        ebp,esp
 00543457    xor        ecx,ecx
 00543459    push       ecx
 0054345A    push       ecx
 0054345B    push       ecx
 0054345C    push       ecx
 0054345D    push       ecx
 0054345E    push       ebx
 0054345F    push       esi
 00543460    push       edi
 00543461    mov        byte ptr [ebp-1],dl
 00543464    mov        ebx,eax
 00543466    xor        eax,eax
 00543468    push       ebp
 00543469    push       54351D
 0054346E    push       dword ptr fs:[eax]
 00543471    mov        dword ptr fs:[eax],esp
 00543474    cmp        byte ptr [ebx+2A],0; TZSQLiteConnection.?f2A:byte
>00543478    je         005434EB
 0054347A    cmp        byte ptr [ebx+2B],0; TZSQLiteConnection.?f2B:byte
>0054347E    jne        005434EB
 00543480    mov        eax,54352C
 00543485    mov        dword ptr [ebp-8],eax
 00543488    mov        esi,543530; 'ROLLBACK TRANSACTION'
 0054348D    push       0
 0054348F    push       0
 00543491    lea        eax,[ebp-8]
 00543494    push       eax
 00543495    mov        ecx,esi
 00543497    mov        edx,dword ptr [ebx+3C]; TZSQLiteConnection.?f3C:dword
 0054349A    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 0054349D    mov        edi,dword ptr [eax]
 0054349F    call       dword ptr [edi+20]
 005434A2    mov        edi,eax
 005434A4    push       3
 005434A6    lea        eax,[ebp-0C]
 005434A9    mov        edx,esi
 005434AB    call       @LStrFromPChar
 005434B0    mov        eax,dword ptr [ebp-0C]
 005434B3    push       eax
 005434B4    mov        ecx,dword ptr [ebp-8]
 005434B7    mov        edx,edi
 005434B9    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 005434BC    call       0053D304
 005434C1    lea        eax,[ebp-10]
 005434C4    mov        edx,esi
 005434C6    call       @LStrFromPChar
 005434CB    mov        eax,dword ptr [ebp-10]
 005434CE    push       eax
 005434CF    lea        edx,[ebp-14]
 005434D2    mov        eax,dword ptr [ebx+38]; TZSQLiteConnection.?f38:IZSQLitePlainDriver
 005434D5    mov        ecx,dword ptr [eax]
 005434D7    call       dword ptr [ecx+0C]
 005434DA    mov        ecx,dword ptr [ebp-14]
 005434DD    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 005434E2    mov        eax,dword ptr [eax]
 005434E4    mov        dl,3
 005434E6    mov        esi,dword ptr [eax]
 005434E8    call       dword ptr [esi+3C]
 005434EB    mov        dl,byte ptr [ebp-1]
 005434EE    mov        eax,ebx
 005434F0    call       004DE224
 005434F5    cmp        byte ptr [ebx+2B],0; TZSQLiteConnection.?f2B:byte
>005434F9    jne        00543502
 005434FB    mov        eax,ebx
 005434FD    call       005430D0
 00543502    xor        eax,eax
 00543504    pop        edx
 00543505    pop        ecx
 00543506    pop        ecx
 00543507    mov        dword ptr fs:[eax],edx
 0054350A    push       543524
 0054350F    lea        eax,[ebp-14]
 00543512    mov        edx,3
 00543517    call       @LStrArrayClr
 0054351C    ret
<0054351D    jmp        @HandleFinally
<00543522    jmp        0054350F
 00543524    pop        edi
 00543525    pop        esi
 00543526    pop        ebx
 00543527    mov        esp,ebp
 00543529    pop        ebp
 0054352A    ret
*}
//end;

Initialization
//005435C4
{*
 005435C4    push       ebp
 005435C5    mov        ebp,esp
 005435C7    xor        eax,eax
 005435C9    push       ebp
 005435CA    push       54361D
 005435CF    push       dword ptr fs:[eax]
 005435D2    mov        dword ptr fs:[eax],esp
 005435D5    sub        dword ptr ds:[61EBD4],1
>005435DC    jae        0054360F
 005435DE    mov        dl,1
 005435E0    mov        eax,[005424F4]; TZSQLiteDriver
 005435E5    call       TZSQLiteDriver.Create; TZSQLiteDriver.Create
 005435EA    mov        edx,eax
 005435EC    test       edx,edx
>005435EE    je         005435F3
 005435F0    sub        edx,0FFFFFFEC
 005435F3    mov        eax,61EBD0; gvar_0061EBD0:IInterface
 005435F8    call       @IntfCopy
 005435FD    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00543602    mov        eax,dword ptr [eax]
 00543604    mov        edx,dword ptr ds:[61EBD0]; gvar_0061EBD0:IInterface
 0054360A    mov        ecx,dword ptr [eax]
 0054360C    call       dword ptr [ecx+20]
 0054360F    xor        eax,eax
 00543611    pop        edx
 00543612    pop        ecx
 00543613    pop        ecx
 00543614    mov        dword ptr fs:[eax],edx
 00543617    push       543624
 0054361C    ret
<0054361D    jmp        @HandleFinally
<00543622    jmp        0054361C
 00543624    pop        ebp
 00543625    ret
*}
Finalization
//00543564
{*
 00543564    push       ebp
 00543565    mov        ebp,esp
 00543567    xor        eax,eax
 00543569    push       ebp
 0054356A    push       5435BB
 0054356F    push       dword ptr fs:[eax]
 00543572    mov        dword ptr fs:[eax],esp
 00543575    inc        dword ptr ds:[61EBD4]
>0054357B    jne        005435AD
 0054357D    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00543582    cmp        dword ptr [eax],0
>00543585    je         00543599
 00543587    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054358C    mov        eax,dword ptr [eax]
 0054358E    mov        edx,dword ptr ds:[61EBD0]; gvar_0061EBD0:IInterface
 00543594    mov        ecx,dword ptr [eax]
 00543596    call       dword ptr [ecx+24]
 00543599    mov        eax,61EBD0; gvar_0061EBD0:IInterface
 0054359E    call       @IntfClear
 005435A3    mov        eax,61EBD0; gvar_0061EBD0:IInterface
 005435A8    call       @IntfClear
 005435AD    xor        eax,eax
 005435AF    pop        edx
 005435B0    pop        ecx
 005435B1    pop        ecx
 005435B2    mov        dword ptr fs:[eax],edx
 005435B5    push       5435C2
 005435BA    ret
<005435BB    jmp        @HandleFinally
<005435C0    jmp        005435BA
 005435C2    pop        ebp
 005435C3    ret
*}
end.