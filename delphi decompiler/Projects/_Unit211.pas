{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit211;

interface

uses
  Classes, Windows, Graphics, _Unit147, ZPlainMySqlDriver;

type
  TZMySQLDriver = class(TZAbstractDriver)
  public
    f18:IZMySQLPlainDriver;//f18
    f1C:IZMySQLPlainDriver;//f1C
    f20:IZMySQLPlainDriver;//f20
    f24:IZMySQLPlainDriver;//f24
    //procedure sub_0050D140(?:?); virtual;
    //procedure sub_0050CF9C(?:?; ?:?; ?:?); virtual;
    //function sub_0050D0B4():?; virtual;
    //function sub_0050D0BC():?; virtual;
    //procedure sub_0050D0C4(?:?); virtual;
    //procedure sub_0050D104(?:?); virtual;
    //function sub_0050D3BC(?:?):?; virtual;
    //constructor Create(?:TZMySQLDriver; _Dv__:Boolean);
  end;
  TZMySQLConnection = class(TZAbstractConnection)
  public
    f34:String;//f34
    f38:IZMySQLPlainDriver;//f38
    f3C:dword;//f3C
    f40:String;//f40
    destructor Destroy; virtual;
    //procedure sub_0050DE48(?:?; ?:?); virtual;
    //procedure sub_0050DE9C(?:?; ?:?; ?:?); virtual;
    //procedure sub_0050E360(?:?); virtual;
    procedure sub_0050DEF4; virtual;
    procedure sub_0050DFA0; virtual;
    procedure sub_0050DD20; virtual;
    //procedure sub_0050DD44(?:?; ?:?); virtual;
    procedure sub_0050D570; virtual;
    procedure sub_0050E050; virtual;
    procedure sub_0050E484; virtual;
    //function sub_0050E49C:?; virtual;
    //procedure sub_0050E138(?:?); virtual;
    //procedure sub_0050E120(?:?); virtual;
    //procedure sub_0050E150(?:?); virtual;
    //constructor Create(?:TZMySQLConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//0050CEEC
//constructor TZMySQLDriver.Create(?:TZMySQLDriver; _Dv__:Boolean);
//begin
{*
 0050CEEC    push       ebp
 0050CEED    mov        ebp,esp
 0050CEEF    push       ebx
 0050CEF0    push       esi
 0050CEF1    test       dl,dl
>0050CEF3    je         0050CEFD
 0050CEF5    add        esp,0FFFFFFF0
 0050CEF8    call       @ClassCreate
 0050CEFD    mov        ebx,edx
 0050CEFF    mov        esi,eax
 0050CF01    mov        dl,1
 0050CF03    mov        eax,[00501644]; TZMySQL41PlainDriver
 0050CF08    call       TZMySQL41PlainDriver.Create; TZMySQL41PlainDriver.Create
 0050CF0D    mov        edx,eax
 0050CF0F    test       edx,edx
>0050CF11    je         0050CF19
 0050CF13    sub        edx,0FFFFFE14
 0050CF19    lea        eax,[esi+18]; TZMySQLDriver.?f18:IZMySQLPlainDriver
 0050CF1C    call       @IntfCopy
 0050CF21    mov        dl,1
 0050CF23    mov        eax,[00501C8C]; TZMySQL5PlainDriver
 0050CF28    call       TZMySQL5PlainDriver.Create; TZMySQL5PlainDriver.Create
 0050CF2D    mov        edx,eax
 0050CF2F    test       edx,edx
>0050CF31    je         0050CF39
 0050CF33    sub        edx,0FFFFFE10
 0050CF39    lea        eax,[esi+1C]; TZMySQLDriver.?f1C:IZMySQLPlainDriver
 0050CF3C    call       @IntfCopy
 0050CF41    mov        dl,1
 0050CF43    mov        eax,[005016C8]; TZMySQLD41PlainDriver
 0050CF48    call       TZMySQL41PlainDriver.Create; TZMySQLD41PlainDriver.Create
 0050CF4D    mov        edx,eax
 0050CF4F    test       edx,edx
>0050CF51    je         0050CF59
 0050CF53    sub        edx,0FFFFFE14
 0050CF59    lea        eax,[esi+20]; TZMySQLDriver.?f20:IZMySQLPlainDriver
 0050CF5C    call       @IntfCopy
 0050CF61    mov        dl,1
 0050CF63    mov        eax,[00501D0C]; TZMySQLD5PlainDriver
 0050CF68    call       TZMySQL5PlainDriver.Create; TZMySQLD5PlainDriver.Create
 0050CF6D    mov        edx,eax
 0050CF6F    test       edx,edx
>0050CF71    je         0050CF79
 0050CF73    sub        edx,0FFFFFE10
 0050CF79    lea        eax,[esi+24]; TZMySQLDriver.?f24:IZMySQLPlainDriver
 0050CF7C    call       @IntfCopy
 0050CF81    mov        eax,esi
 0050CF83    test       bl,bl
>0050CF85    je         0050CF96
 0050CF87    call       @AfterConstruction
 0050CF8C    pop        dword ptr fs:[0]
 0050CF93    add        esp,0C
 0050CF96    mov        eax,esi
 0050CF98    pop        esi
 0050CF99    pop        ebx
 0050CF9A    pop        ebp
 0050CF9B    ret
*}
//end;

//0050CF9C
//procedure sub_0050CF9C(?:?; ?:?; ?:?);
//begin
{*
 0050CF9C    push       ebp
 0050CF9D    mov        ebp,esp
 0050CF9F    push       0
 0050CFA1    push       0
 0050CFA3    push       0
 0050CFA5    push       0
 0050CFA7    push       0
 0050CFA9    push       0
 0050CFAB    push       0
 0050CFAD    push       ebx
 0050CFAE    push       esi
 0050CFAF    push       edi
 0050CFB0    mov        edi,ecx
 0050CFB2    mov        esi,edx
 0050CFB4    mov        ebx,eax
 0050CFB6    xor        eax,eax
 0050CFB8    push       ebp
 0050CFB9    push       50D0A4
 0050CFBE    push       dword ptr fs:[eax]
 0050CFC1    mov        dword ptr fs:[eax],esp
 0050CFC4    mov        dl,1
 0050CFC6    mov        eax,[0041C8E4]; TStringList
 0050CFCB    call       TObject.Create; TStringList.Create
 0050CFD0    mov        dword ptr [ebp-4],eax
 0050CFD3    xor        eax,eax
 0050CFD5    push       ebp
 0050CFD6    push       50D07A
 0050CFDB    push       dword ptr fs:[eax]
 0050CFDE    mov        dword ptr fs:[eax],esp
 0050CFE1    lea        ecx,[ebp-1C]
 0050CFE4    mov        edx,esi
 0050CFE6    mov        eax,ebx
 0050CFE8    call       0050D2A0
 0050CFED    lea        eax,[ebp-18]
 0050CFF0    push       eax
 0050CFF1    lea        eax,[ebp-0C]
 0050CFF4    push       eax
 0050CFF5    lea        eax,[ebp-10]
 0050CFF8    push       eax
 0050CFF9    lea        eax,[ebp-14]
 0050CFFC    push       eax
 0050CFFD    mov        eax,dword ptr [ebp-4]
 0050D000    push       eax
 0050D001    lea        ecx,[ebp-8]
 0050D004    mov        edx,edi
 0050D006    mov        eax,esi
 0050D008    call       004D28A4
 0050D00D    cmp        dword ptr [ebp-1C],0
>0050D011    je         0050D021
 0050D013    mov        edx,dword ptr [ebp-4]
 0050D016    mov        eax,dword ptr [ebp-1C]
 0050D019    mov        ecx,dword ptr [eax]
 0050D01B    call       dword ptr [ecx+160]
 0050D021    push       esi
 0050D022    mov        eax,dword ptr [ebp-1C]
 0050D025    push       eax
 0050D026    mov        eax,dword ptr [ebp-8]
 0050D029    push       eax
 0050D02A    mov        eax,dword ptr [ebp-18]
 0050D02D    push       eax
 0050D02E    mov        eax,dword ptr [ebp-0C]
 0050D031    push       eax
 0050D032    mov        eax,dword ptr [ebp-10]
 0050D035    push       eax
 0050D036    mov        eax,dword ptr [ebp-14]
 0050D039    push       eax
 0050D03A    mov        eax,dword ptr [ebp-4]
 0050D03D    push       eax
 0050D03E    mov        ecx,ebx
 0050D040    test       ecx,ecx
>0050D042    je         0050D047
 0050D044    sub        ecx,0FFFFFFEC
 0050D047    mov        dl,1
 0050D049    mov        eax,[0050CDFC]; TZMySQLConnection
 0050D04E    call       TZMySQLConnection.Create; TZMySQLConnection.Create
 0050D053    mov        edx,eax
 0050D055    test       edx,edx
>0050D057    je         0050D05C
 0050D059    sub        edx,0FFFFFFD0
 0050D05C    mov        eax,dword ptr [ebp+8]
 0050D05F    call       @IntfCopy
 0050D064    xor        eax,eax
 0050D066    pop        edx
 0050D067    pop        ecx
 0050D068    pop        ecx
 0050D069    mov        dword ptr fs:[eax],edx
 0050D06C    push       50D081
 0050D071    mov        eax,dword ptr [ebp-4]
 0050D074    call       TObject.Free
 0050D079    ret
<0050D07A    jmp        @HandleFinally
<0050D07F    jmp        0050D071
 0050D081    xor        eax,eax
 0050D083    pop        edx
 0050D084    pop        ecx
 0050D085    pop        ecx
 0050D086    mov        dword ptr fs:[eax],edx
 0050D089    push       50D0AB
 0050D08E    lea        eax,[ebp-1C]
 0050D091    call       @IntfClear
 0050D096    lea        eax,[ebp-14]
 0050D099    mov        edx,4
 0050D09E    call       @LStrArrayClr
 0050D0A3    ret
<0050D0A4    jmp        @HandleFinally
<0050D0A9    jmp        0050D08E
 0050D0AB    pop        edi
 0050D0AC    pop        esi
 0050D0AD    pop        ebx
 0050D0AE    mov        esp,ebp
 0050D0B0    pop        ebp
 0050D0B1    ret        4
*}
//end;

//0050D0B4
//function sub_0050D0B4():?;
//begin
{*
 0050D0B4    mov        eax,1
 0050D0B9    ret
*}
//end;

//0050D0BC
//function sub_0050D0BC():?;
//begin
{*
 0050D0BC    mov        eax,1
 0050D0C1    ret
*}
//end;

//0050D0C4
//procedure sub_0050D0C4(?:?);
//begin
{*
 0050D0C4    push       ebp
 0050D0C5    mov        ebp,esp
 0050D0C7    push       ebx
 0050D0C8    push       esi
 0050D0C9    mov        esi,edx
 0050D0CB    mov        ebx,eax
 0050D0CD    cmp        dword ptr [ebx+0C],0; TZMySQLDriver.?fC:IZTokenizer
>0050D0D1    jne        0050D0F3
 0050D0D3    mov        dl,1
 0050D0D5    mov        eax,[00506A40]; TZMySQLTokenizer
 0050D0DA    call       TZMySQLTokenizer.Create; TZMySQLTokenizer.Create
 0050D0DF    mov        edx,eax
 0050D0E1    test       edx,edx
>0050D0E3    je         0050D0EB
 0050D0E5    sub        edx,0FFFFFBD8
 0050D0EB    lea        eax,[ebx+0C]; TZMySQLDriver.?fC:IZTokenizer
 0050D0EE    call       @IntfCopy
 0050D0F3    mov        eax,esi
 0050D0F5    mov        edx,dword ptr [ebx+0C]; TZMySQLDriver.?fC:IZTokenizer
 0050D0F8    call       @IntfCopy
 0050D0FD    pop        esi
 0050D0FE    pop        ebx
 0050D0FF    pop        ebp
 0050D100    ret
*}
//end;

//0050D104
//procedure sub_0050D104(?:?);
//begin
{*
 0050D104    push       ebp
 0050D105    mov        ebp,esp
 0050D107    push       ebx
 0050D108    push       esi
 0050D109    mov        esi,edx
 0050D10B    mov        ebx,eax
 0050D10D    cmp        dword ptr [ebx+10],0; TZMySQLDriver.?f10:IZStatementAnalyser
>0050D111    jne        0050D130
 0050D113    mov        dl,1
 0050D115    mov        eax,[0050C6A8]; TZMySQLStatementAnalyser
 0050D11A    call       TZMySQLStatementAnalyser.Create; TZMySQLStatementAnalyser.Create
 0050D11F    mov        edx,eax
 0050D121    test       edx,edx
>0050D123    je         0050D128
 0050D125    sub        edx,0FFFFFFE0
 0050D128    lea        eax,[ebx+10]; TZMySQLDriver.?f10:IZStatementAnalyser
 0050D12B    call       @IntfCopy
 0050D130    mov        eax,esi
 0050D132    mov        edx,dword ptr [ebx+10]; TZMySQLDriver.?f10:IZStatementAnalyser
 0050D135    call       @IntfCopy
 0050D13A    pop        esi
 0050D13B    pop        ebx
 0050D13C    pop        ebp
 0050D13D    ret
*}
//end;

//0050D140
//procedure sub_0050D140(?:?);
//begin
{*
 0050D140    push       ebp
 0050D141    mov        ebp,esp
 0050D143    xor        ecx,ecx
 0050D145    push       ecx
 0050D146    push       ecx
 0050D147    push       ecx
 0050D148    push       ecx
 0050D149    push       ebx
 0050D14A    push       esi
 0050D14B    push       edi
 0050D14C    mov        esi,edx
 0050D14E    mov        edi,eax
 0050D150    xor        eax,eax
 0050D152    push       ebp
 0050D153    push       50D282
 0050D158    push       dword ptr fs:[eax]
 0050D15B    mov        dword ptr fs:[eax],esp
 0050D15E    push       5
 0050D160    mov        eax,esi
 0050D162    mov        ecx,1
 0050D167    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 0050D16D    call       @DynArraySetLength
 0050D172    add        esp,4
 0050D175    xor        ebx,ebx
 0050D177    movsx      eax,bx
 0050D17A    mov        edx,dword ptr [esi]
 0050D17C    test       edx,edx
>0050D17E    je         0050D185
 0050D180    cmp        eax,dword ptr [edx-4]
>0050D183    jb         0050D18A
 0050D185    call       @BoundErr
 0050D18A    lea        eax,[edx+eax*4]
 0050D18D    mov        edx,50D298; 'mysql'
 0050D192    call       @LStrAsg
 0050D197    add        bx,1
>0050D19B    jno        0050D1A2
 0050D19D    call       @IntOver
 0050D1A2    lea        edx,[ebp-4]
 0050D1A5    mov        eax,dword ptr [edi+18]; TZMySQLDriver.?f18:IZMySQLPlainDriver
 0050D1A8    mov        ecx,dword ptr [eax]
 0050D1AA    call       dword ptr [ecx+0C]
 0050D1AD    mov        edx,dword ptr [ebp-4]
 0050D1B0    movsx      eax,bx
 0050D1B3    mov        ecx,dword ptr [esi]
 0050D1B5    test       ecx,ecx
>0050D1B7    je         0050D1BE
 0050D1B9    cmp        eax,dword ptr [ecx-4]
>0050D1BC    jb         0050D1C3
 0050D1BE    call       @BoundErr
 0050D1C3    lea        eax,[ecx+eax*4]
 0050D1C6    call       @LStrAsg
 0050D1CB    add        bx,1
>0050D1CF    jno        0050D1D6
 0050D1D1    call       @IntOver
 0050D1D6    lea        edx,[ebp-8]
 0050D1D9    mov        eax,dword ptr [edi+1C]; TZMySQLDriver.?f1C:IZMySQLPlainDriver
 0050D1DC    mov        ecx,dword ptr [eax]
 0050D1DE    call       dword ptr [ecx+0C]
 0050D1E1    mov        edx,dword ptr [ebp-8]
 0050D1E4    movsx      eax,bx
 0050D1E7    mov        ecx,dword ptr [esi]
 0050D1E9    test       ecx,ecx
>0050D1EB    je         0050D1F2
 0050D1ED    cmp        eax,dword ptr [ecx-4]
>0050D1F0    jb         0050D1F7
 0050D1F2    call       @BoundErr
 0050D1F7    lea        eax,[ecx+eax*4]
 0050D1FA    call       @LStrAsg
 0050D1FF    add        bx,1
>0050D203    jno        0050D20A
 0050D205    call       @IntOver
 0050D20A    lea        edx,[ebp-0C]
 0050D20D    mov        eax,dword ptr [edi+20]; TZMySQLDriver.?f20:IZMySQLPlainDriver
 0050D210    mov        ecx,dword ptr [eax]
 0050D212    call       dword ptr [ecx+0C]
 0050D215    mov        edx,dword ptr [ebp-0C]
 0050D218    movsx      eax,bx
 0050D21B    mov        ecx,dword ptr [esi]
 0050D21D    test       ecx,ecx
>0050D21F    je         0050D226
 0050D221    cmp        eax,dword ptr [ecx-4]
>0050D224    jb         0050D22B
 0050D226    call       @BoundErr
 0050D22B    lea        eax,[ecx+eax*4]
 0050D22E    call       @LStrAsg
 0050D233    add        bx,1
>0050D237    jno        0050D23E
 0050D239    call       @IntOver
 0050D23E    lea        edx,[ebp-10]
 0050D241    mov        eax,dword ptr [edi+24]; TZMySQLDriver.?f24:IZMySQLPlainDriver
 0050D244    mov        ecx,dword ptr [eax]
 0050D246    call       dword ptr [ecx+0C]
 0050D249    mov        edx,dword ptr [ebp-10]
 0050D24C    movsx      eax,bx
 0050D24F    mov        ecx,dword ptr [esi]
 0050D251    test       ecx,ecx
>0050D253    je         0050D25A
 0050D255    cmp        eax,dword ptr [ecx-4]
>0050D258    jb         0050D25F
 0050D25A    call       @BoundErr
 0050D25F    lea        eax,[ecx+eax*4]
 0050D262    call       @LStrAsg
 0050D267    xor        eax,eax
 0050D269    pop        edx
 0050D26A    pop        ecx
 0050D26B    pop        ecx
 0050D26C    mov        dword ptr fs:[eax],edx
 0050D26F    push       50D289
 0050D274    lea        eax,[ebp-10]
 0050D277    mov        edx,4
 0050D27C    call       @LStrArrayClr
 0050D281    ret
<0050D282    jmp        @HandleFinally
<0050D287    jmp        0050D274
 0050D289    pop        edi
 0050D28A    pop        esi
 0050D28B    pop        ebx
 0050D28C    mov        esp,ebp
 0050D28E    pop        ebp
 0050D28F    ret
*}
//end;

//0050D2A0
//procedure sub_0050D2A0(?:TZMySQLDriver; ?:?; ?:?);
//begin
{*
 0050D2A0    push       ebp
 0050D2A1    mov        ebp,esp
 0050D2A3    push       0
 0050D2A5    push       0
 0050D2A7    push       0
 0050D2A9    push       0
 0050D2AB    push       0
 0050D2AD    push       0
 0050D2AF    push       ebx
 0050D2B0    push       esi
 0050D2B1    push       edi
 0050D2B2    mov        esi,ecx
 0050D2B4    mov        edi,edx
 0050D2B6    mov        ebx,eax
 0050D2B8    xor        eax,eax
 0050D2BA    push       ebp
 0050D2BB    push       50D3AE
 0050D2C0    push       dword ptr fs:[eax]
 0050D2C3    mov        dword ptr fs:[eax],esp
 0050D2C6    lea        edx,[ebp-8]
 0050D2C9    mov        eax,ebx
 0050D2CB    mov        ecx,dword ptr [eax]
 0050D2CD    call       dword ptr [ecx]; TZMySQLDriver.sub_0050D140
 0050D2CF    mov        edx,dword ptr [ebp-8]
 0050D2D2    lea        ecx,[ebp-4]
 0050D2D5    mov        eax,edi
 0050D2D7    call       004D263C
 0050D2DC    lea        edx,[ebp-0C]
 0050D2DF    mov        eax,dword ptr [ebx+18]; TZMySQLDriver.?f18:IZMySQLPlainDriver
 0050D2E2    mov        ecx,dword ptr [eax]
 0050D2E4    call       dword ptr [ecx+0C]
 0050D2E7    mov        edx,dword ptr [ebp-0C]
 0050D2EA    mov        eax,dword ptr [ebp-4]
 0050D2ED    call       @LStrCmp
>0050D2F2    jne        0050D300
 0050D2F4    mov        eax,esi
 0050D2F6    mov        edx,dword ptr [ebx+18]; TZMySQLDriver.?f18:IZMySQLPlainDriver
 0050D2F9    call       @IntfCopy
>0050D2FE    jmp        0050D376
 0050D300    lea        edx,[ebp-10]
 0050D303    mov        eax,dword ptr [ebx+1C]; TZMySQLDriver.?f1C:IZMySQLPlainDriver
 0050D306    mov        ecx,dword ptr [eax]
 0050D308    call       dword ptr [ecx+0C]
 0050D30B    mov        edx,dword ptr [ebp-10]
 0050D30E    mov        eax,dword ptr [ebp-4]
 0050D311    call       @LStrCmp
>0050D316    jne        0050D324
 0050D318    mov        eax,esi
 0050D31A    mov        edx,dword ptr [ebx+1C]; TZMySQLDriver.?f1C:IZMySQLPlainDriver
 0050D31D    call       @IntfCopy
>0050D322    jmp        0050D376
 0050D324    lea        edx,[ebp-14]
 0050D327    mov        eax,dword ptr [ebx+20]; TZMySQLDriver.?f20:IZMySQLPlainDriver
 0050D32A    mov        ecx,dword ptr [eax]
 0050D32C    call       dword ptr [ecx+0C]
 0050D32F    mov        edx,dword ptr [ebp-14]
 0050D332    mov        eax,dword ptr [ebp-4]
 0050D335    call       @LStrCmp
>0050D33A    jne        0050D348
 0050D33C    mov        eax,esi
 0050D33E    mov        edx,dword ptr [ebx+20]; TZMySQLDriver.?f20:IZMySQLPlainDriver
 0050D341    call       @IntfCopy
>0050D346    jmp        0050D376
 0050D348    lea        edx,[ebp-18]
 0050D34B    mov        eax,dword ptr [ebx+24]; TZMySQLDriver.?f24:IZMySQLPlainDriver
 0050D34E    mov        ecx,dword ptr [eax]
 0050D350    call       dword ptr [ecx+0C]
 0050D353    mov        edx,dword ptr [ebp-18]
 0050D356    mov        eax,dword ptr [ebp-4]
 0050D359    call       @LStrCmp
>0050D35E    jne        0050D36C
 0050D360    mov        eax,esi
 0050D362    mov        edx,dword ptr [ebx+24]; TZMySQLDriver.?f24:IZMySQLPlainDriver
 0050D365    call       @IntfCopy
>0050D36A    jmp        0050D376
 0050D36C    mov        eax,esi
 0050D36E    mov        edx,dword ptr [ebx+1C]; TZMySQLDriver.?f1C:IZMySQLPlainDriver
 0050D371    call       @IntfCopy
 0050D376    mov        eax,dword ptr [esi]
 0050D378    mov        edx,dword ptr [eax]
 0050D37A    call       dword ptr [edx+14]
 0050D37D    xor        eax,eax
 0050D37F    pop        edx
 0050D380    pop        ecx
 0050D381    pop        ecx
 0050D382    mov        dword ptr fs:[eax],edx
 0050D385    push       50D3B5
 0050D38A    lea        eax,[ebp-18]
 0050D38D    mov        edx,4
 0050D392    call       @LStrArrayClr
 0050D397    lea        eax,[ebp-8]
 0050D39A    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 0050D3A0    call       @DynArrayClear
 0050D3A5    lea        eax,[ebp-4]
 0050D3A8    call       @LStrClr
 0050D3AD    ret
<0050D3AE    jmp        @HandleFinally
<0050D3B3    jmp        0050D38A
 0050D3B5    pop        edi
 0050D3B6    pop        esi
 0050D3B7    pop        ebx
 0050D3B8    mov        esp,ebp
 0050D3BA    pop        ebp
 0050D3BB    ret
*}
//end;

//0050D3BC
//function sub_0050D3BC(?:?):?;
//begin
{*
 0050D3BC    push       ebp
 0050D3BD    mov        ebp,esp
 0050D3BF    push       0
 0050D3C1    push       ebx
 0050D3C2    push       esi
 0050D3C3    mov        esi,edx
 0050D3C5    mov        ebx,eax
 0050D3C7    xor        eax,eax
 0050D3C9    push       ebp
 0050D3CA    push       50D406
 0050D3CF    push       dword ptr fs:[eax]
 0050D3D2    mov        dword ptr fs:[eax],esp
 0050D3D5    lea        ecx,[ebp-4]
 0050D3D8    mov        edx,esi
 0050D3DA    mov        eax,ebx
 0050D3DC    call       0050D2A0
 0050D3E1    mov        eax,dword ptr [ebp-4]
 0050D3E4    mov        edx,dword ptr [eax]
 0050D3E6    call       dword ptr [edx+18]
 0050D3E9    call       00503C98
 0050D3EE    mov        ebx,eax
 0050D3F0    xor        eax,eax
 0050D3F2    pop        edx
 0050D3F3    pop        ecx
 0050D3F4    pop        ecx
 0050D3F5    mov        dword ptr fs:[eax],edx
 0050D3F8    push       50D40D
 0050D3FD    lea        eax,[ebp-4]
 0050D400    call       @IntfClear
 0050D405    ret
<0050D406    jmp        @HandleFinally
<0050D40B    jmp        0050D3FD
 0050D40D    mov        eax,ebx
 0050D40F    pop        esi
 0050D410    pop        ebx
 0050D411    pop        ecx
 0050D412    pop        ebp
 0050D413    ret
*}
//end;

//0050D414
//constructor TZMySQLConnection.Create(?:TZMySQLConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0050D414    push       ebp
 0050D415    mov        ebp,esp
 0050D417    add        esp,0FFFFFFF0
 0050D41A    push       ebx
 0050D41B    push       esi
 0050D41C    push       edi
 0050D41D    xor        ebx,ebx
 0050D41F    mov        dword ptr [ebp-0C],ebx
 0050D422    mov        dword ptr [ebp-10],ebx
 0050D425    test       dl,dl
>0050D427    je         0050D431
 0050D429    add        esp,0FFFFFFF0
 0050D42C    call       @ClassCreate
 0050D431    mov        dword ptr [ebp-8],ecx
 0050D434    mov        byte ptr [ebp-1],dl
 0050D437    mov        ebx,eax
 0050D439    mov        esi,dword ptr [ebp+8]
 0050D43C    mov        edi,dword ptr [ebp+24]
 0050D43F    mov        eax,dword ptr [ebp-8]
 0050D442    call       @IntfAddRef
 0050D447    mov        eax,dword ptr [ebp+20]
 0050D44A    call       @IntfAddRef
 0050D44F    xor        eax,eax
 0050D451    push       ebp
 0050D452    push       50D507
 0050D457    push       dword ptr fs:[eax]
 0050D45A    mov        dword ptr fs:[eax],esp
 0050D45D    push       edi
 0050D45E    mov        eax,dword ptr [ebp+1C]
 0050D461    push       eax
 0050D462    mov        eax,dword ptr [ebp+18]
 0050D465    push       eax
 0050D466    mov        eax,dword ptr [ebp+14]
 0050D469    push       eax
 0050D46A    mov        eax,dword ptr [ebp+10]
 0050D46D    push       eax
 0050D46E    mov        eax,dword ptr [ebp+0C]
 0050D471    push       eax
 0050D472    push       esi
 0050D473    push       edi
 0050D474    push       esi
 0050D475    mov        ecx,ebx
 0050D477    mov        dl,1
 0050D479    mov        eax,[005075D0]; TZMySQLDatabaseMetadata
 0050D47E    call       TZMySQLDatabaseMetadata.Create; TZMySQLDatabaseMetadata.Create
 0050D483    push       eax
 0050D484    mov        ecx,dword ptr [ebp-8]
 0050D487    xor        edx,edx
 0050D489    mov        eax,ebx
 0050D48B    call       004DDD88
 0050D490    lea        eax,[ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050D493    mov        edx,dword ptr [ebp+20]
 0050D496    call       @IntfCopy
 0050D49B    cmp        dword ptr [ebx+14],0; TZMySQLConnection.?f14:dword
>0050D49F    jne        0050D4A8
 0050D4A1    mov        dword ptr [ebx+14],0CEA; TZMySQLConnection.?f14:dword
 0050D4A8    mov        byte ptr [ebx+28],1; TZMySQLConnection.?f28:byte
 0050D4AC    mov        byte ptr [ebx+2A],0; TZMySQLConnection.?f2A:byte
 0050D4B0    lea        ecx,[ebp-10]
 0050D4B3    mov        edx,50D538; 'codepage'
 0050D4B8    mov        eax,esi
 0050D4BA    call       TStrings.GetValue
 0050D4BF    mov        eax,dword ptr [ebp-10]
 0050D4C2    lea        edx,[ebp-0C]
 0050D4C5    call       Trim
 0050D4CA    mov        edx,dword ptr [ebp-0C]
 0050D4CD    lea        eax,[ebx+40]; TZMySQLConnection.?f40:String
 0050D4D0    call       @LStrAsg
 0050D4D5    mov        eax,ebx
 0050D4D7    mov        edx,dword ptr [eax]
 0050D4D9    call       dword ptr [edx+3C]; TZMySQLConnection.sub_0050D570
 0050D4DC    xor        eax,eax
 0050D4DE    pop        edx
 0050D4DF    pop        ecx
 0050D4E0    pop        ecx
 0050D4E1    mov        dword ptr fs:[eax],edx
 0050D4E4    push       50D50E
 0050D4E9    lea        eax,[ebp-10]
 0050D4EC    mov        edx,2
 0050D4F1    call       @LStrArrayClr
 0050D4F6    lea        eax,[ebp-8]
 0050D4F9    call       @IntfClear
 0050D4FE    lea        eax,[ebp+20]
 0050D501    call       @IntfClear
 0050D506    ret
<0050D507    jmp        @HandleFinally
<0050D50C    jmp        0050D4E9
 0050D50E    mov        eax,ebx
 0050D510    cmp        byte ptr [ebp-1],0
>0050D514    je         0050D525
 0050D516    call       @AfterConstruction
 0050D51B    pop        dword ptr fs:[0]
 0050D522    add        esp,0C
 0050D525    mov        eax,ebx
 0050D527    pop        edi
 0050D528    pop        esi
 0050D529    pop        ebx
 0050D52A    mov        esp,ebp
 0050D52C    pop        ebp
 0050D52D    ret        20
*}
//end;

//0050D544
destructor TZMySQLConnection.Destroy;
begin
{*
 0050D544    push       ebp
 0050D545    mov        ebp,esp
 0050D547    push       ebx
 0050D548    push       esi
 0050D549    call       @BeforeDestruction
 0050D54E    mov        ebx,edx
 0050D550    mov        esi,eax
 0050D552    mov        edx,ebx
 0050D554    and        dl,0FC
 0050D557    mov        eax,esi
 0050D559    call       TZAbstractConnection.Destroy
 0050D55E    test       bl,bl
>0050D560    jle        0050D569
 0050D562    mov        eax,esi
 0050D564    call       @ClassDestroy
 0050D569    pop        esi
 0050D56A    pop        ebx
 0050D56B    pop        ebp
 0050D56C    ret
*}
end;

//0050D570
procedure sub_0050D570;
begin
{*
 0050D570    push       ebp
 0050D571    mov        ebp,esp
 0050D573    mov        ecx,14
 0050D578    push       0
 0050D57A    push       0
 0050D57C    dec        ecx
<0050D57D    jne        0050D578
 0050D57F    push       ecx
 0050D580    push       ebx
 0050D581    push       esi
 0050D582    push       edi
 0050D583    mov        dword ptr [ebp-4],eax
 0050D586    xor        eax,eax
 0050D588    push       ebp
 0050D589    push       50DBC9
 0050D58E    push       dword ptr fs:[eax]
 0050D591    mov        dword ptr fs:[eax],esp
 0050D594    mov        eax,dword ptr [ebp-4]
 0050D597    cmp        byte ptr [eax+2B],0; TZMySQLConnection.?f2B:byte
>0050D59B    je         0050DB79
 0050D5A1    lea        eax,[ebp-8]
 0050D5A4    push       eax
 0050D5A5    mov        eax,dword ptr [ebp-4]
 0050D5A8    mov        eax,dword ptr [eax+18]; TZMySQLConnection.?f18:String
 0050D5AB    mov        dword ptr [ebp-30],eax
 0050D5AE    mov        byte ptr [ebp-2C],0B
 0050D5B2    mov        eax,dword ptr [ebp-4]
 0050D5B5    mov        eax,dword ptr [eax+1C]; TZMySQLConnection.?f1C:String
 0050D5B8    mov        dword ptr [ebp-28],eax
 0050D5BB    mov        byte ptr [ebp-24],0B
 0050D5BF    lea        edx,[ebp-30]
 0050D5C2    mov        ecx,1
 0050D5C7    mov        eax,50DBE0; 'CONNECT TO \"%s\" AS USER \"%s\"'
 0050D5CC    call       Format
 0050D5D1    mov        eax,dword ptr [ebp-4]
 0050D5D4    lea        edx,[eax+3C]; TZMySQLConnection.?f3C:dword
 0050D5D7    mov        eax,dword ptr [ebp-4]
 0050D5DA    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050D5DD    mov        ecx,dword ptr [eax]
 0050D5DF    call       dword ptr [ecx+74]
 0050D5E2    xor        edx,edx
 0050D5E4    push       ebp
 0050D5E5    push       50DB38
 0050D5EA    push       dword ptr fs:[edx]
 0050D5ED    mov        dword ptr fs:[edx],esp
 0050D5F0    mov        eax,dword ptr [ebp-4]
 0050D5F3    cmp        dword ptr [eax+14],0; TZMySQLConnection.?f14:dword
>0050D5F7    jne        0050D603
 0050D5F9    mov        eax,dword ptr [ebp-4]
 0050D5FC    mov        dword ptr [eax+14],0CEA; TZMySQLConnection.?f14:dword
 0050D603    lea        ecx,[ebp-34]
 0050D606    mov        eax,dword ptr [ebp-4]
 0050D609    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D60C    mov        edx,50DC08; 'compress'
 0050D611    call       TStrings.GetValue
 0050D616    mov        eax,dword ptr [ebp-34]
 0050D619    call       004BEFC0
 0050D61E    test       al,al
>0050D620    je         0050D63A
 0050D622    push       0
 0050D624    mov        eax,dword ptr [ebp-4]
 0050D627    mov        edx,dword ptr [eax+3C]; TZMySQLConnection.?f3C:dword
 0050D62A    mov        eax,dword ptr [ebp-4]
 0050D62D    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050D630    mov        cl,1
 0050D632    mov        ebx,dword ptr [eax]
 0050D634    call       dword ptr [ebx+94]
 0050D63A    lea        ecx,[ebp-38]
 0050D63D    mov        eax,dword ptr [ebp-4]
 0050D640    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D643    mov        edx,50DC1C; 'timeout'
 0050D648    call       TStrings.GetValue
 0050D64D    mov        eax,dword ptr [ebp-38]
 0050D650    xor        edx,edx
 0050D652    call       StrToIntDef
 0050D657    mov        dword ptr [ebp-0C],eax
 0050D65A    cmp        dword ptr [ebp-0C],0
>0050D65E    jl         0050D67A
 0050D660    lea        eax,[ebp-0C]
 0050D663    push       eax
 0050D664    mov        eax,dword ptr [ebp-4]
 0050D667    mov        edx,dword ptr [eax+3C]; TZMySQLConnection.?f3C:dword
 0050D66A    mov        eax,dword ptr [ebp-4]
 0050D66D    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050D670    xor        ecx,ecx
 0050D672    mov        ebx,dword ptr [eax]
 0050D674    call       dword ptr [ebx+94]
 0050D67A    xor        ebx,ebx
 0050D67C    lea        ecx,[ebp-1C]
 0050D67F    xor        edx,edx
 0050D681    mov        dl,bl
 0050D683    mov        eax,[00500FD8]; TZMySQLOption
 0050D688    call       GetEnumName
 0050D68D    lea        ecx,[ebp-3C]
 0050D690    mov        eax,dword ptr [ebp-4]
 0050D693    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D696    mov        edx,dword ptr [ebp-1C]
 0050D699    call       TStrings.GetValue
 0050D69E    cmp        dword ptr [ebp-3C],0
>0050D6A2    je         0050D6D4
 0050D6A4    lea        ecx,[ebp-40]
 0050D6A7    mov        eax,dword ptr [ebp-4]
 0050D6AA    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D6AD    mov        edx,dword ptr [ebp-1C]
 0050D6B0    call       TStrings.GetValue
 0050D6B5    mov        eax,dword ptr [ebp-40]
 0050D6B8    call       @LStrToPChar
 0050D6BD    push       eax
 0050D6BE    mov        eax,dword ptr [ebp-4]
 0050D6C1    mov        edx,dword ptr [eax+3C]; TZMySQLConnection.?f3C:dword
 0050D6C4    mov        eax,dword ptr [ebp-4]
 0050D6C7    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050D6CA    mov        ecx,ebx
 0050D6CC    mov        esi,dword ptr [eax]
 0050D6CE    call       dword ptr [esi+94]
 0050D6D4    inc        ebx
 0050D6D5    cmp        bl,8
<0050D6D8    jne        0050D67C
 0050D6DA    xor        esi,esi
 0050D6DC    lea        ecx,[ebp-44]
 0050D6DF    mov        eax,dword ptr [ebp-4]
 0050D6E2    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D6E5    mov        edx,50DC2C; 'dbless'
 0050D6EA    call       TStrings.GetValue
 0050D6EF    mov        eax,dword ptr [ebp-44]
 0050D6F2    call       004BEFC0
 0050D6F7    test       al,al
>0050D6F9    jne        0050D738
 0050D6FB    push       4000
 0050D700    push       80000000
 0050D705    push       0
 0050D707    mov        edx,50DC3C; '_CLIENT_CONNECT_WITH_DB'
 0050D70C    mov        eax,[004FE608]; TMYSQL_CLIENT_OPTIONS
 0050D711    call       GetEnumValue
 0050D716    mov        dword ptr [ebp-48],eax
 0050D719    fild       dword ptr [ebp-48]
 0050D71C    add        esp,0FFFFFFF4
 0050D71F    fstp       tbyte ptr [esp]
 0050D722    wait
 0050D723    call       Power
 0050D728    call       @TRUNC
 0050D72D    test       edx,edx
>0050D72F    je         0050D736
 0050D731    call       @BoundErr
 0050D736    mov        esi,eax
 0050D738    xor        ebx,ebx
 0050D73A    lea        ecx,[ebp-20]
 0050D73D    xor        edx,edx
 0050D73F    mov        dl,bl
 0050D741    mov        eax,[004FE608]; TMYSQL_CLIENT_OPTIONS
 0050D746    call       GetEnumName
 0050D74B    lea        ecx,[ebp-4C]
 0050D74E    mov        eax,dword ptr [ebp-4]
 0050D751    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D754    mov        edx,dword ptr [ebp-20]
 0050D757    call       TStrings.GetValue
 0050D75C    mov        eax,dword ptr [ebp-4C]
 0050D75F    call       004BEFC0
 0050D764    test       al,al
>0050D766    je         0050D7B3
 0050D768    push       4000
 0050D76D    push       80000000
 0050D772    push       0
 0050D774    mov        edx,dword ptr [ebp-20]
 0050D777    mov        eax,[004FE608]; TMYSQL_CLIENT_OPTIONS
 0050D77C    call       GetEnumValue
 0050D781    mov        dword ptr [ebp-48],eax
 0050D784    fild       dword ptr [ebp-48]
 0050D787    add        esp,0FFFFFFF4
 0050D78A    fstp       tbyte ptr [esp]
 0050D78D    wait
 0050D78E    call       Power
 0050D793    call       @TRUNC
 0050D798    push       edx
 0050D799    push       eax
 0050D79A    mov        eax,esi
 0050D79C    xor        edx,edx
 0050D79E    or         eax,dword ptr [esp]
 0050D7A1    or         edx,dword ptr [esp+4]
 0050D7A5    add        esp,8
 0050D7A8    test       edx,edx
>0050D7AA    je         0050D7B1
 0050D7AC    call       @BoundErr
 0050D7B1    mov        esi,eax
 0050D7B3    inc        ebx
 0050D7B4    cmp        bl,20
<0050D7B7    jne        0050D73A
 0050D7B9    xor        eax,eax
 0050D7BB    mov        dword ptr [ebp-10],eax
 0050D7BE    xor        eax,eax
 0050D7C0    mov        dword ptr [ebp-14],eax
 0050D7C3    xor        ebx,ebx
 0050D7C5    xor        edi,edi
 0050D7C7    xor        eax,eax
 0050D7C9    mov        dword ptr [ebp-18],eax
 0050D7CC    lea        ecx,[ebp-50]
 0050D7CF    mov        eax,dword ptr [ebp-4]
 0050D7D2    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D7D5    mov        edx,50DC5C; 'MYSQL_SSL'
 0050D7DA    call       TStrings.GetValue
 0050D7DF    mov        eax,dword ptr [ebp-50]
 0050D7E2    call       004BEFC0
 0050D7E7    test       al,al
>0050D7E9    je         0050D945
 0050D7EF    lea        ecx,[ebp-54]
 0050D7F2    mov        eax,dword ptr [ebp-4]
 0050D7F5    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D7F8    mov        edx,50DC70; 'MYSQL_SSL_KEY'
 0050D7FD    call       TStrings.GetValue
 0050D802    cmp        dword ptr [ebp-54],0
>0050D806    je         0050D826
 0050D808    lea        ecx,[ebp-58]
 0050D80B    mov        eax,dword ptr [ebp-4]
 0050D80E    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D811    mov        edx,50DC70; 'MYSQL_SSL_KEY'
 0050D816    call       TStrings.GetValue
 0050D81B    mov        eax,dword ptr [ebp-58]
 0050D81E    call       @LStrToPChar
 0050D823    mov        dword ptr [ebp-10],eax
 0050D826    lea        ecx,[ebp-5C]
 0050D829    mov        eax,dword ptr [ebp-4]
 0050D82C    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D82F    mov        edx,50DC88; 'MYSQL_SSL_CERT'
 0050D834    call       TStrings.GetValue
 0050D839    cmp        dword ptr [ebp-5C],0
>0050D83D    je         0050D85D
 0050D83F    lea        ecx,[ebp-60]
 0050D842    mov        eax,dword ptr [ebp-4]
 0050D845    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D848    mov        edx,50DC88; 'MYSQL_SSL_CERT'
 0050D84D    call       TStrings.GetValue
 0050D852    mov        eax,dword ptr [ebp-60]
 0050D855    call       @LStrToPChar
 0050D85A    mov        dword ptr [ebp-14],eax
 0050D85D    lea        ecx,[ebp-64]
 0050D860    mov        eax,dword ptr [ebp-4]
 0050D863    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D866    mov        edx,50DCA0; 'MYSQL_SSL_CA'
 0050D86B    call       TStrings.GetValue
 0050D870    cmp        dword ptr [ebp-64],0
>0050D874    je         0050D893
 0050D876    lea        ecx,[ebp-68]
 0050D879    mov        eax,dword ptr [ebp-4]
 0050D87C    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D87F    mov        edx,50DCA0; 'MYSQL_SSL_CA'
 0050D884    call       TStrings.GetValue
 0050D889    mov        eax,dword ptr [ebp-68]
 0050D88C    call       @LStrToPChar
 0050D891    mov        ebx,eax
 0050D893    lea        ecx,[ebp-6C]
 0050D896    mov        eax,dword ptr [ebp-4]
 0050D899    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D89C    mov        edx,50DCB8; 'MYSQL_SSL_CAPATH'
 0050D8A1    call       TStrings.GetValue
 0050D8A6    cmp        dword ptr [ebp-6C],0
>0050D8AA    je         0050D8C9
 0050D8AC    lea        ecx,[ebp-70]
 0050D8AF    mov        eax,dword ptr [ebp-4]
 0050D8B2    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D8B5    mov        edx,50DCB8; 'MYSQL_SSL_CAPATH'
 0050D8BA    call       TStrings.GetValue
 0050D8BF    mov        eax,dword ptr [ebp-70]
 0050D8C2    call       @LStrToPChar
 0050D8C7    mov        edi,eax
 0050D8C9    lea        ecx,[ebp-74]
 0050D8CC    mov        eax,dword ptr [ebp-4]
 0050D8CF    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D8D2    mov        edx,50DCD4; 'MYSQL_SSL_CYPHER'
 0050D8D7    call       TStrings.GetValue
 0050D8DC    cmp        dword ptr [ebp-74],0
>0050D8E0    je         0050D900
 0050D8E2    lea        ecx,[ebp-78]
 0050D8E5    mov        eax,dword ptr [ebp-4]
 0050D8E8    mov        eax,dword ptr [eax+24]; TZMySQLConnection.?f24:dword
 0050D8EB    mov        edx,50DCD4; 'MYSQL_SSL_CYPHER'
 0050D8F0    call       TStrings.GetValue
 0050D8F5    mov        eax,dword ptr [ebp-78]
 0050D8F8    call       @LStrToPChar
 0050D8FD    mov        dword ptr [ebp-18],eax
 0050D900    mov        eax,dword ptr [ebp-14]
 0050D903    push       eax
 0050D904    push       ebx
 0050D905    push       edi
 0050D906    mov        eax,dword ptr [ebp-18]
 0050D909    push       eax
 0050D90A    mov        eax,dword ptr [ebp-4]
 0050D90D    mov        edx,dword ptr [eax+3C]; TZMySQLConnection.?f3C:dword
 0050D910    mov        eax,dword ptr [ebp-4]
 0050D913    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050D916    mov        ecx,dword ptr [ebp-10]
 0050D919    mov        ebx,dword ptr [eax]
 0050D91B    call       dword ptr [ebx+0B8]
 0050D921    push       50DCF0; 'SSL options set'
 0050D926    lea        edx,[ebp-7C]
 0050D929    mov        eax,dword ptr [ebp-4]
 0050D92C    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050D92F    mov        ecx,dword ptr [eax]
 0050D931    call       dword ptr [ecx+0C]
 0050D934    mov        ecx,dword ptr [ebp-7C]
 0050D937    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050D93C    mov        eax,dword ptr [eax]
 0050D93E    xor        edx,edx
 0050D940    mov        ebx,dword ptr [eax]
 0050D942    call       dword ptr [ebx+3C]
 0050D945    mov        eax,dword ptr [ebp-4]
 0050D948    mov        eax,dword ptr [eax+1C]; TZMySQLConnection.?f1C:String
 0050D94B    call       @LStrToPChar
 0050D950    push       eax
 0050D951    mov        eax,dword ptr [ebp-4]
 0050D954    mov        eax,dword ptr [eax+20]; TZMySQLConnection.?f20:String
 0050D957    call       @LStrToPChar
 0050D95C    push       eax
 0050D95D    mov        eax,dword ptr [ebp-4]
 0050D960    mov        eax,dword ptr [eax+18]; TZMySQLConnection.?f18:String
 0050D963    call       @LStrToPChar
 0050D968    push       eax
 0050D969    mov        eax,dword ptr [ebp-4]
 0050D96C    mov        eax,dword ptr [eax+14]; TZMySQLConnection.?f14:dword
 0050D96F    test       eax,eax
>0050D971    jns        0050D978
 0050D973    call       @BoundErr
 0050D978    push       eax
 0050D979    push       0
 0050D97B    push       esi
 0050D97C    mov        eax,dword ptr [ebp-4]
 0050D97F    mov        eax,dword ptr [eax+10]; TZMySQLConnection.?f10:String
 0050D982    call       @LStrToPChar
 0050D987    mov        ecx,eax
 0050D989    mov        eax,dword ptr [ebp-4]
 0050D98C    mov        edx,dword ptr [eax+3C]; TZMySQLConnection.?f3C:dword
 0050D98F    mov        eax,dword ptr [ebp-4]
 0050D992    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050D995    mov        ebx,dword ptr [eax]
 0050D997    call       dword ptr [ebx+0A0]
 0050D99D    test       eax,eax
>0050D99F    jne        0050DA1B
 0050D9A1    mov        eax,dword ptr [ebp-8]
 0050D9A4    push       eax
 0050D9A5    mov        eax,dword ptr [ebp-4]
 0050D9A8    mov        edx,dword ptr [eax+3C]; TZMySQLConnection.?f3C:dword
 0050D9AB    mov        eax,dword ptr [ebp-4]
 0050D9AE    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050D9B1    xor        ecx,ecx
 0050D9B3    call       00503AE8
 0050D9B8    mov        eax,dword ptr [ebp-8]
 0050D9BB    push       eax
 0050D9BC    push       0
 0050D9BE    lea        edx,[ebp-80]
 0050D9C1    mov        eax,[0061C480]; ^#122.sResString78:TResStringRec
 0050D9C6    call       LoadResString
 0050D9CB    mov        eax,dword ptr [ebp-80]
 0050D9CE    push       eax
 0050D9CF    lea        edx,[ebp-84]
 0050D9D5    mov        eax,dword ptr [ebp-4]
 0050D9D8    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050D9DB    mov        ecx,dword ptr [eax]
 0050D9DD    call       dword ptr [ecx+0C]
 0050D9E0    mov        ecx,dword ptr [ebp-84]
 0050D9E6    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050D9EB    mov        eax,dword ptr [eax]
 0050D9ED    xor        edx,edx
 0050D9EF    mov        ebx,dword ptr [eax]
 0050D9F1    call       dword ptr [ebx+40]
 0050D9F4    lea        edx,[ebp-88]
 0050D9FA    mov        eax,[0061BB00]; ^#122.sResString44:TResStringRec
 0050D9FF    call       LoadResString
 0050DA04    mov        ecx,dword ptr [ebp-88]
 0050DA0A    mov        dl,1
 0050DA0C    mov        eax,[004C6D20]; EZSQLException
 0050DA11    call       EZSQLException.Create; EZSQLException.Create
 0050DA16    call       @RaiseExcept
 0050DA1B    mov        eax,dword ptr [ebp-8]
 0050DA1E    push       eax
 0050DA1F    lea        edx,[ebp-8C]
 0050DA25    mov        eax,dword ptr [ebp-4]
 0050DA28    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DA2B    mov        ecx,dword ptr [eax]
 0050DA2D    call       dword ptr [ecx+0C]
 0050DA30    mov        ecx,dword ptr [ebp-8C]
 0050DA36    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050DA3B    mov        eax,dword ptr [eax]
 0050DA3D    xor        edx,edx
 0050DA3F    mov        ebx,dword ptr [eax]
 0050DA41    call       dword ptr [ebx+3C]
 0050DA44    mov        eax,dword ptr [ebp-4]
 0050DA47    cmp        dword ptr [eax+40],0; TZMySQLConnection.?f40:String
>0050DA4B    je         0050DB00
 0050DA51    lea        eax,[ebp-90]
 0050DA57    push       eax
 0050DA58    mov        eax,dword ptr [ebp-4]
 0050DA5B    mov        eax,dword ptr [eax+40]; TZMySQLConnection.?f40:String
 0050DA5E    mov        dword ptr [ebp-98],eax
 0050DA64    mov        byte ptr [ebp-94],0B
 0050DA6B    lea        edx,[ebp-98]
 0050DA71    xor        ecx,ecx
 0050DA73    mov        eax,50DD08; 'SET CHARACTER SET %s'
 0050DA78    call       Format
 0050DA7D    mov        eax,dword ptr [ebp-90]
 0050DA83    call       @LStrToPChar
 0050DA88    mov        ebx,eax
 0050DA8A    mov        eax,dword ptr [ebp-4]
 0050DA8D    mov        edx,dword ptr [eax+3C]; TZMySQLConnection.?f3C:dword
 0050DA90    mov        eax,dword ptr [ebp-4]
 0050DA93    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DA96    mov        ecx,ebx
 0050DA98    mov        esi,dword ptr [eax]
 0050DA9A    call       dword ptr [esi+9C]
 0050DAA0    lea        eax,[ebp-9C]
 0050DAA6    mov        edx,ebx
 0050DAA8    call       @LStrFromPChar
 0050DAAD    mov        eax,dword ptr [ebp-9C]
 0050DAB3    push       eax
 0050DAB4    mov        eax,dword ptr [ebp-4]
 0050DAB7    mov        edx,dword ptr [eax+3C]; TZMySQLConnection.?f3C:dword
 0050DABA    mov        eax,dword ptr [ebp-4]
 0050DABD    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DAC0    mov        cl,3
 0050DAC2    call       00503AE8
 0050DAC7    lea        eax,[ebp-0A0]
 0050DACD    mov        edx,ebx
 0050DACF    call       @LStrFromPChar
 0050DAD4    mov        eax,dword ptr [ebp-0A0]
 0050DADA    push       eax
 0050DADB    lea        edx,[ebp-0A4]
 0050DAE1    mov        eax,dword ptr [ebp-4]
 0050DAE4    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DAE7    mov        ecx,dword ptr [eax]
 0050DAE9    call       dword ptr [ecx+0C]
 0050DAEC    mov        ecx,dword ptr [ebp-0A4]
 0050DAF2    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050DAF7    mov        eax,dword ptr [eax]
 0050DAF9    mov        dl,3
 0050DAFB    mov        ebx,dword ptr [eax]
 0050DAFD    call       dword ptr [ebx+3C]
 0050DB00    mov        eax,dword ptr [ebp-4]
 0050DB03    mov        al,byte ptr [eax+2A]; TZMySQLConnection.?f2A:byte
 0050DB06    mov        edx,dword ptr [ebp-4]
 0050DB09    mov        byte ptr [edx+2A],0; TZMySQLConnection.?f2A:byte
 0050DB0D    mov        edx,eax
 0050DB0F    mov        eax,dword ptr [ebp-4]
 0050DB12    mov        ecx,dword ptr [eax]
 0050DB14    call       dword ptr [ecx+60]; TZMySQLConnection.sub_0050E150
 0050DB17    mov        eax,dword ptr [ebp-4]
 0050DB1A    mov        al,byte ptr [eax+28]; TZMySQLConnection.?f28:byte
 0050DB1D    mov        edx,dword ptr [ebp-4]
 0050DB20    mov        byte ptr [edx+28],1; TZMySQLConnection.?f28:byte
 0050DB24    mov        edx,eax
 0050DB26    mov        eax,dword ptr [ebp-4]
 0050DB29    mov        ecx,dword ptr [eax]
 0050DB2B    call       dword ptr [ecx+18]; TZMySQLConnection.sub_0050E360
 0050DB2E    xor        eax,eax
 0050DB30    pop        edx
 0050DB31    pop        ecx
 0050DB32    pop        ecx
 0050DB33    mov        dword ptr fs:[eax],edx
>0050DB36    jmp        0050DB71
<0050DB38    jmp        @HandleAnyException
 0050DB3D    mov        eax,dword ptr [ebp-4]
 0050DB40    mov        edx,dword ptr [eax+3C]; TZMySQLConnection.?f3C:dword
 0050DB43    mov        eax,dword ptr [ebp-4]
 0050DB46    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DB49    mov        ecx,dword ptr [eax]
 0050DB4B    call       dword ptr [ecx+28]
 0050DB4E    mov        eax,dword ptr [ebp-4]
 0050DB51    lea        edx,[eax+3C]; TZMySQLConnection.?f3C:dword
 0050DB54    mov        eax,dword ptr [ebp-4]
 0050DB57    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DB5A    mov        ecx,dword ptr [eax]
 0050DB5C    call       dword ptr [ecx+20]
 0050DB5F    mov        eax,dword ptr [ebp-4]
 0050DB62    xor        edx,edx
 0050DB64    mov        dword ptr [eax+3C],edx; TZMySQLConnection.?f3C:dword
 0050DB67    call       @RaiseAgain
 0050DB6C    call       @DoneExcept
 0050DB71    mov        eax,dword ptr [ebp-4]
 0050DB74    call       004DDF38
 0050DB79    xor        eax,eax
 0050DB7B    pop        edx
 0050DB7C    pop        ecx
 0050DB7D    pop        ecx
 0050DB7E    mov        dword ptr fs:[eax],edx
 0050DB81    push       50DBD0
 0050DB86    lea        eax,[ebp-0A4]
 0050DB8C    mov        edx,3
 0050DB91    call       @LStrArrayClr
 0050DB96    lea        eax,[ebp-90]
 0050DB9C    mov        edx,12
 0050DBA1    call       @LStrArrayClr
 0050DBA6    lea        eax,[ebp-44]
 0050DBA9    mov        edx,5
 0050DBAE    call       @LStrArrayClr
 0050DBB3    lea        eax,[ebp-20]
 0050DBB6    mov        edx,2
 0050DBBB    call       @LStrArrayClr
 0050DBC0    lea        eax,[ebp-8]
 0050DBC3    call       @LStrClr
 0050DBC8    ret
<0050DBC9    jmp        @HandleFinally
<0050DBCE    jmp        0050DB86
 0050DBD0    pop        edi
 0050DBD1    pop        esi
 0050DBD2    pop        ebx
 0050DBD3    mov        esp,ebp
 0050DBD5    pop        ebp
 0050DBD6    ret
*}
end;

//0050DD20
procedure sub_0050DD20;
begin
{*
 0050DD20    push       ebp
 0050DD21    mov        ebp,esp
 0050DD23    mov        ecx,dword ptr [eax+3C]; TZMySQLConnection.?f3C:dword
 0050DD26    test       ecx,ecx
 0050DD28    sete       dl
 0050DD2B    or         dl,byte ptr [eax+2B]; TZMySQLConnection.?f2B:byte
>0050DD2E    je         0050DD35
 0050DD30    or         eax,0FFFFFFFF
 0050DD33    pop        ebp
 0050DD34    ret
 0050DD35    mov        edx,ecx
 0050DD37    mov        eax,dword ptr [eax+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DD3A    mov        ecx,dword ptr [eax]
 0050DD3C    call       dword ptr [ecx+98]
 0050DD42    pop        ebp
 0050DD43    ret
*}
end;

//0050DD44
//procedure sub_0050DD44(?:?; ?:?);
//begin
{*
 0050DD44    push       ebp
 0050DD45    mov        ebp,esp
 0050DD47    add        esp,0FFFFFFF4
 0050DD4A    push       ebx
 0050DD4B    push       esi
 0050DD4C    xor        ebx,ebx
 0050DD4E    mov        dword ptr [ebp-0C],ebx
 0050DD51    mov        dword ptr [ebp-8],ecx
 0050DD54    mov        dword ptr [ebp-4],edx
 0050DD57    mov        ebx,eax
 0050DD59    mov        eax,dword ptr [ebp-4]
 0050DD5C    call       @LStrAddRef
 0050DD61    xor        eax,eax
 0050DD63    push       ebp
 0050DD64    push       50DE38
 0050DD69    push       dword ptr fs:[eax]
 0050DD6C    mov        dword ptr fs:[eax],esp
 0050DD6F    mov        eax,dword ptr [ebp-4]
 0050DD72    call       @LStrLen
 0050DD77    mov        esi,eax
 0050DD79    imul       edx,esi,2
>0050DD7C    jno        0050DD83
 0050DD7E    call       @IntOver
 0050DD83    add        edx,1
>0050DD86    jno        0050DD8D
 0050DD88    call       @IntOver
 0050DD8D    lea        eax,[ebp-0C]
 0050DD90    call       @LStrSetLength
 0050DD95    cmp        dword ptr [ebx+3C],0; TZMySQLConnection.?f3C:dword
 0050DD99    sete       al
 0050DD9C    or         al,byte ptr [ebx+2B]; TZMySQLConnection.?f2B:byte
>0050DD9F    je         0050DDD2
 0050DDA1    test       esi,esi
>0050DDA3    jns        0050DDAA
 0050DDA5    call       @BoundErr
 0050DDAA    push       esi
 0050DDAB    mov        eax,dword ptr [ebp-4]
 0050DDAE    call       @LStrToPChar
 0050DDB3    push       eax
 0050DDB4    mov        eax,dword ptr [ebp-0C]
 0050DDB7    call       @LStrToPChar
 0050DDBC    mov        edx,eax
 0050DDBE    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DDC1    pop        ecx
 0050DDC2    mov        ebx,dword ptr [eax]
 0050DDC4    call       dword ptr [ebx+4C]
 0050DDC7    test       eax,eax
>0050DDC9    jns        0050DE06
 0050DDCB    call       @BoundErr
>0050DDD0    jmp        0050DE06
 0050DDD2    mov        eax,dword ptr [ebp-4]
 0050DDD5    call       @LStrToPChar
 0050DDDA    push       eax
 0050DDDB    test       esi,esi
>0050DDDD    jns        0050DDE4
 0050DDDF    call       @BoundErr
 0050DDE4    push       esi
 0050DDE5    mov        eax,dword ptr [ebp-0C]
 0050DDE8    call       @LStrToPChar
 0050DDED    mov        ecx,eax
 0050DDEF    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050DDF2    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DDF5    mov        ebx,dword ptr [eax]
 0050DDF7    call       dword ptr [ebx+0A4]
 0050DDFD    test       eax,eax
>0050DDFF    jns        0050DE06
 0050DE01    call       @BoundErr
 0050DE06    lea        edx,[ebp-0C]
 0050DE09    xchg       eax,edx
 0050DE0A    call       @LStrSetLength
 0050DE0F    mov        eax,dword ptr [ebp-8]
 0050DE12    mov        edx,dword ptr [ebp-0C]
 0050DE15    call       @LStrAsg
 0050DE1A    xor        eax,eax
 0050DE1C    pop        edx
 0050DE1D    pop        ecx
 0050DE1E    pop        ecx
 0050DE1F    mov        dword ptr fs:[eax],edx
 0050DE22    push       50DE3F
 0050DE27    lea        eax,[ebp-0C]
 0050DE2A    call       @LStrClr
 0050DE2F    lea        eax,[ebp-4]
 0050DE32    call       @LStrClr
 0050DE37    ret
<0050DE38    jmp        @HandleFinally
<0050DE3D    jmp        0050DE27
 0050DE3F    pop        esi
 0050DE40    pop        ebx
 0050DE41    mov        esp,ebp
 0050DE43    pop        ebp
 0050DE44    ret
*}
//end;

//0050DE48
//procedure sub_0050DE48(?:?; ?:?);
//begin
{*
 0050DE48    push       ebp
 0050DE49    mov        ebp,esp
 0050DE4B    push       ebx
 0050DE4C    push       esi
 0050DE4D    push       edi
 0050DE4E    mov        edi,ecx
 0050DE50    mov        esi,edx
 0050DE52    mov        ebx,eax
 0050DE54    mov        eax,ebx
 0050DE56    mov        edx,dword ptr [eax]
 0050DE58    call       dword ptr [edx+44]; TZMySQLConnection.sub_004DE1AC
 0050DE5B    test       al,al
>0050DE5D    je         0050DE66
 0050DE5F    mov        eax,ebx
 0050DE61    mov        edx,dword ptr [eax]
 0050DE63    call       dword ptr [edx+3C]; TZMySQLConnection.sub_0050D570
 0050DE66    mov        eax,ebx
 0050DE68    test       eax,eax
>0050DE6A    je         0050DE6F
 0050DE6C    sub        eax,0FFFFFFD0
 0050DE6F    push       eax
 0050DE70    push       esi
 0050DE71    mov        eax,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050DE74    push       eax
 0050DE75    mov        ecx,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DE78    mov        dl,1
 0050DE7A    mov        eax,[00505828]; TZMySQLStatement
 0050DE7F    call       TZMySQLStatement.Create; TZMySQLStatement.Create
 0050DE84    mov        edx,eax
 0050DE86    test       edx,edx
>0050DE88    je         0050DE8D
 0050DE8A    sub        edx,0FFFFFFBC
 0050DE8D    mov        eax,edi
 0050DE8F    call       @IntfCopy
 0050DE94    pop        edi
 0050DE95    pop        esi
 0050DE96    pop        ebx
 0050DE97    pop        ebp
 0050DE98    ret
*}
//end;

//0050DE9C
//procedure sub_0050DE9C(?:?; ?:?; ?:?);
//begin
{*
 0050DE9C    push       ebp
 0050DE9D    mov        ebp,esp
 0050DE9F    push       ebx
 0050DEA0    push       esi
 0050DEA1    push       edi
 0050DEA2    mov        edi,ecx
 0050DEA4    mov        esi,edx
 0050DEA6    mov        ebx,eax
 0050DEA8    mov        eax,ebx
 0050DEAA    mov        edx,dword ptr [eax]
 0050DEAC    call       dword ptr [edx+44]; TZMySQLConnection.sub_004DE1AC
 0050DEAF    test       al,al
>0050DEB1    je         0050DEBA
 0050DEB3    mov        eax,ebx
 0050DEB5    mov        edx,dword ptr [eax]
 0050DEB7    call       dword ptr [edx+3C]; TZMySQLConnection.sub_0050D570
 0050DEBA    mov        eax,ebx
 0050DEBC    test       eax,eax
>0050DEBE    je         0050DEC3
 0050DEC0    sub        eax,0FFFFFFD0
 0050DEC3    push       eax
 0050DEC4    push       esi
 0050DEC5    push       edi
 0050DEC6    mov        eax,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050DEC9    push       eax
 0050DECA    mov        ecx,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DECD    mov        dl,1
 0050DECF    mov        eax,[00505918]; TZMySQLPreparedStatement
 0050DED4    call       TZMySQLPreparedStatement.Create; TZMySQLPreparedStatement.Create
 0050DED9    mov        edx,eax
 0050DEDB    test       edx,edx
>0050DEDD    je         0050DEE2
 0050DEDF    sub        edx,0FFFFFFA4
 0050DEE2    mov        eax,dword ptr [ebp+8]
 0050DEE5    call       @IntfCopy
 0050DEEA    pop        edi
 0050DEEB    pop        esi
 0050DEEC    pop        ebx
 0050DEED    pop        ebp
 0050DEEE    ret        4
*}
//end;

//0050DEF4
procedure sub_0050DEF4;
begin
{*
 0050DEF4    push       ebp
 0050DEF5    mov        ebp,esp
 0050DEF7    push       0
 0050DEF9    push       ebx
 0050DEFA    mov        ebx,eax
 0050DEFC    xor        eax,eax
 0050DEFE    push       ebp
 0050DEFF    push       50DF77
 0050DF04    push       dword ptr fs:[eax]
 0050DF07    mov        dword ptr fs:[eax],esp
 0050DF0A    cmp        byte ptr [ebx+2A],0; TZMySQLConnection.?f2A:byte
>0050DF0E    je         0050DF61
 0050DF10    cmp        byte ptr [ebx+28],1; TZMySQLConnection.?f28:byte
>0050DF14    je         0050DF61
 0050DF16    cmp        byte ptr [ebx+2B],0; TZMySQLConnection.?f2B:byte
>0050DF1A    jne        0050DF61
 0050DF1C    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050DF1F    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DF22    mov        ecx,dword ptr [eax]
 0050DF24    call       dword ptr [ecx+0D4]
 0050DF2A    test       al,al
>0050DF2C    jne        0050DF40
 0050DF2E    push       50DF8C; 'Native Commit call'
 0050DF33    mov        cl,3
 0050DF35    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050DF38    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DF3B    call       00503AE8
 0050DF40    push       50DF8C; 'Native Commit call'
 0050DF45    lea        edx,[ebp-4]
 0050DF48    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DF4B    mov        ecx,dword ptr [eax]
 0050DF4D    call       dword ptr [ecx+0C]
 0050DF50    mov        ecx,dword ptr [ebp-4]
 0050DF53    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050DF58    mov        eax,dword ptr [eax]
 0050DF5A    mov        dl,3
 0050DF5C    mov        ebx,dword ptr [eax]
 0050DF5E    call       dword ptr [ebx+3C]
 0050DF61    xor        eax,eax
 0050DF63    pop        edx
 0050DF64    pop        ecx
 0050DF65    pop        ecx
 0050DF66    mov        dword ptr fs:[eax],edx
 0050DF69    push       50DF7E
 0050DF6E    lea        eax,[ebp-4]
 0050DF71    call       @LStrClr
 0050DF76    ret
<0050DF77    jmp        @HandleFinally
<0050DF7C    jmp        0050DF6E
 0050DF7E    pop        ebx
 0050DF7F    pop        ecx
 0050DF80    pop        ebp
 0050DF81    ret
*}
end;

//0050DFA0
procedure sub_0050DFA0;
begin
{*
 0050DFA0    push       ebp
 0050DFA1    mov        ebp,esp
 0050DFA3    push       0
 0050DFA5    push       ebx
 0050DFA6    mov        ebx,eax
 0050DFA8    xor        eax,eax
 0050DFAA    push       ebp
 0050DFAB    push       50E023
 0050DFB0    push       dword ptr fs:[eax]
 0050DFB3    mov        dword ptr fs:[eax],esp
 0050DFB6    cmp        byte ptr [ebx+2A],0; TZMySQLConnection.?f2A:byte
>0050DFBA    je         0050E00D
 0050DFBC    cmp        byte ptr [ebx+28],1; TZMySQLConnection.?f28:byte
>0050DFC0    je         0050E00D
 0050DFC2    cmp        byte ptr [ebx+2B],0; TZMySQLConnection.?f2B:byte
>0050DFC6    jne        0050E00D
 0050DFC8    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050DFCB    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DFCE    mov        ecx,dword ptr [eax]
 0050DFD0    call       dword ptr [ecx+0E0]
 0050DFD6    test       al,al
>0050DFD8    jne        0050DFEC
 0050DFDA    push       50E038; 'Native Rollback call'
 0050DFDF    mov        cl,3
 0050DFE1    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050DFE4    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DFE7    call       00503AE8
 0050DFEC    push       50E038; 'Native Rollback call'
 0050DFF1    lea        edx,[ebp-4]
 0050DFF4    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050DFF7    mov        ecx,dword ptr [eax]
 0050DFF9    call       dword ptr [ecx+0C]
 0050DFFC    mov        ecx,dword ptr [ebp-4]
 0050DFFF    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050E004    mov        eax,dword ptr [eax]
 0050E006    mov        dl,3
 0050E008    mov        ebx,dword ptr [eax]
 0050E00A    call       dword ptr [ebx+3C]
 0050E00D    xor        eax,eax
 0050E00F    pop        edx
 0050E010    pop        ecx
 0050E011    pop        ecx
 0050E012    mov        dword ptr fs:[eax],edx
 0050E015    push       50E02A
 0050E01A    lea        eax,[ebp-4]
 0050E01D    call       @LStrClr
 0050E022    ret
<0050E023    jmp        @HandleFinally
<0050E028    jmp        0050E01A
 0050E02A    pop        ebx
 0050E02B    pop        ecx
 0050E02C    pop        ebp
 0050E02D    ret
*}
end;

//0050E050
procedure sub_0050E050;
begin
{*
 0050E050    push       ebp
 0050E051    mov        ebp,esp
 0050E053    add        esp,0FFFFFFF0
 0050E056    push       ebx
 0050E057    push       esi
 0050E058    xor        edx,edx
 0050E05A    mov        dword ptr [ebp-10],edx
 0050E05D    mov        dword ptr [ebp-4],edx
 0050E060    mov        ebx,eax
 0050E062    xor        eax,eax
 0050E064    push       ebp
 0050E065    push       50E0F3
 0050E06A    push       dword ptr fs:[eax]
 0050E06D    mov        dword ptr fs:[eax],esp
 0050E070    cmp        byte ptr [ebx+2B],0; TZMySQLConnection.?f2B:byte
>0050E074    jne        0050E0CE
 0050E076    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050E079    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E07C    mov        ecx,dword ptr [eax]
 0050E07E    call       dword ptr [ecx+28]
 0050E081    lea        edx,[ebx+3C]; TZMySQLConnection.?f3C:dword
 0050E084    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E087    mov        ecx,dword ptr [eax]
 0050E089    call       dword ptr [ecx+20]
 0050E08C    xor        eax,eax
 0050E08E    mov        dword ptr [ebx+3C],eax; TZMySQLConnection.?f3C:dword
 0050E091    lea        eax,[ebp-4]
 0050E094    push       eax
 0050E095    mov        eax,dword ptr [ebx+18]; TZMySQLConnection.?f18:String
 0050E098    mov        dword ptr [ebp-0C],eax
 0050E09B    mov        byte ptr [ebp-8],0B
 0050E09F    lea        edx,[ebp-0C]
 0050E0A2    xor        ecx,ecx
 0050E0A4    mov        eax,50E108; 'DISCONNECT FROM \"%s\"'
 0050E0A9    call       Format
 0050E0AE    mov        eax,dword ptr [ebp-4]
 0050E0B1    push       eax
 0050E0B2    lea        edx,[ebp-10]
 0050E0B5    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E0B8    mov        ecx,dword ptr [eax]
 0050E0BA    call       dword ptr [ecx+0C]
 0050E0BD    mov        ecx,dword ptr [ebp-10]
 0050E0C0    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050E0C5    mov        eax,dword ptr [eax]
 0050E0C7    mov        dl,1
 0050E0C9    mov        esi,dword ptr [eax]
 0050E0CB    call       dword ptr [esi+3C]
 0050E0CE    mov        eax,ebx
 0050E0D0    call       004DE1A4
 0050E0D5    xor        eax,eax
 0050E0D7    pop        edx
 0050E0D8    pop        ecx
 0050E0D9    pop        ecx
 0050E0DA    mov        dword ptr fs:[eax],edx
 0050E0DD    push       50E0FA
 0050E0E2    lea        eax,[ebp-10]
 0050E0E5    call       @LStrClr
 0050E0EA    lea        eax,[ebp-4]
 0050E0ED    call       @LStrClr
 0050E0F2    ret
<0050E0F3    jmp        @HandleFinally
<0050E0F8    jmp        0050E0E2
 0050E0FA    pop        esi
 0050E0FB    pop        ebx
 0050E0FC    mov        esp,ebp
 0050E0FE    pop        ebp
 0050E0FF    ret
*}
end;

//0050E120
//procedure sub_0050E120(?:?);
//begin
{*
 0050E120    push       ebp
 0050E121    mov        ebp,esp
 0050E123    push       ebx
 0050E124    push       esi
 0050E125    mov        esi,edx
 0050E127    mov        ebx,eax
 0050E129    mov        eax,esi
 0050E12B    mov        edx,dword ptr [ebx+34]; TZMySQLConnection.?f34:String
 0050E12E    call       @LStrAsg
 0050E133    pop        esi
 0050E134    pop        ebx
 0050E135    pop        ebp
 0050E136    ret
*}
//end;

//0050E138
//procedure sub_0050E138(?:?);
//begin
{*
 0050E138    push       ebp
 0050E139    mov        ebp,esp
 0050E13B    push       ebx
 0050E13C    push       esi
 0050E13D    mov        esi,edx
 0050E13F    mov        ebx,eax
 0050E141    lea        eax,[ebx+34]; TZMySQLConnection.?f34:String
 0050E144    mov        edx,esi
 0050E146    call       @LStrAsg
 0050E14B    pop        esi
 0050E14C    pop        ebx
 0050E14D    pop        ebp
 0050E14E    ret
*}
//end;

//0050E150
//procedure sub_0050E150(?:?);
//begin
{*
 0050E150    push       ebp
 0050E151    mov        ebp,esp
 0050E153    push       0
 0050E155    push       0
 0050E157    push       0
 0050E159    push       ebx
 0050E15A    push       esi
 0050E15B    push       edi
 0050E15C    mov        ebx,eax
 0050E15E    xor        eax,eax
 0050E160    push       ebp
 0050E161    push       50E268
 0050E166    push       dword ptr fs:[eax]
 0050E169    mov        dword ptr fs:[eax],esp
 0050E16C    cmp        dl,byte ptr [ebx+2A]; TZMySQLConnection.?f2A:byte
>0050E16F    je         0050E24D
 0050E175    mov        eax,ebx
 0050E177    call       004DE224
 0050E17C    mov        eax,1
 0050E181    cmp        byte ptr [ebx+2B],0; TZMySQLConnection.?f2B:byte
>0050E185    jne        0050E24D
 0050E18B    mov        dl,byte ptr [ebx+2A]; TZMySQLConnection.?f2A:byte
 0050E18E    sub        dl,2
>0050E191    jb         0050E19F
>0050E193    je         0050E1B6
 0050E195    dec        dl
>0050E197    je         0050E1CD
 0050E199    dec        dl
>0050E19B    je         0050E1E4
>0050E19D    jmp        0050E1FB
 0050E19F    mov        esi,50E278; 'SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED'
 0050E1A4    mov        ecx,esi
 0050E1A6    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050E1A9    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E1AC    mov        edi,dword ptr [eax]
 0050E1AE    call       dword ptr [edi+9C]
>0050E1B4    jmp        0050E200
 0050E1B6    mov        esi,50E2B4
 0050E1BB    mov        ecx,esi
 0050E1BD    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050E1C0    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E1C3    mov        edi,dword ptr [eax]
 0050E1C5    call       dword ptr [edi+9C]
>0050E1CB    jmp        0050E200
 0050E1CD    mov        esi,50E2EC
 0050E1D2    mov        ecx,esi
 0050E1D4    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050E1D7    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E1DA    mov        edi,dword ptr [eax]
 0050E1DC    call       dword ptr [edi+9C]
>0050E1E2    jmp        0050E200
 0050E1E4    mov        esi,50E324
 0050E1E9    mov        ecx,esi
 0050E1EB    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050E1EE    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E1F1    mov        edi,dword ptr [eax]
 0050E1F3    call       dword ptr [edi+9C]
>0050E1F9    jmp        0050E200
 0050E1FB    mov        esi,50E35C
 0050E200    test       eax,eax
>0050E202    je         0050E21F
 0050E204    lea        eax,[ebp-4]
 0050E207    mov        edx,esi
 0050E209    call       @LStrFromPChar
 0050E20E    mov        eax,dword ptr [ebp-4]
 0050E211    push       eax
 0050E212    mov        cl,3
 0050E214    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050E217    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E21A    call       00503AE8
 0050E21F    test       esi,esi
>0050E221    je         0050E24D
 0050E223    lea        eax,[ebp-8]
 0050E226    mov        edx,esi
 0050E228    call       @LStrFromPChar
 0050E22D    mov        eax,dword ptr [ebp-8]
 0050E230    push       eax
 0050E231    lea        edx,[ebp-0C]
 0050E234    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E237    mov        ecx,dword ptr [eax]
 0050E239    call       dword ptr [ecx+0C]
 0050E23C    mov        ecx,dword ptr [ebp-0C]
 0050E23F    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050E244    mov        eax,dword ptr [eax]
 0050E246    mov        dl,3
 0050E248    mov        ebx,dword ptr [eax]
 0050E24A    call       dword ptr [ebx+3C]
 0050E24D    xor        eax,eax
 0050E24F    pop        edx
 0050E250    pop        ecx
 0050E251    pop        ecx
 0050E252    mov        dword ptr fs:[eax],edx
 0050E255    push       50E26F
 0050E25A    lea        eax,[ebp-0C]
 0050E25D    mov        edx,3
 0050E262    call       @LStrArrayClr
 0050E267    ret
<0050E268    jmp        @HandleFinally
<0050E26D    jmp        0050E25A
 0050E26F    pop        edi
 0050E270    pop        esi
 0050E271    pop        ebx
 0050E272    mov        esp,ebp
 0050E274    pop        ebp
 0050E275    ret
*}
//end;

//0050E360
//procedure sub_0050E360(?:?);
//begin
{*
 0050E360    push       ebp
 0050E361    mov        ebp,esp
 0050E363    xor        ecx,ecx
 0050E365    push       ecx
 0050E366    push       ecx
 0050E367    push       ecx
 0050E368    push       ecx
 0050E369    push       ecx
 0050E36A    push       ebx
 0050E36B    push       esi
 0050E36C    push       edi
 0050E36D    mov        ebx,edx
 0050E36F    mov        esi,eax
 0050E371    xor        eax,eax
 0050E373    push       ebp
 0050E374    push       50E443
 0050E379    push       dword ptr fs:[eax]
 0050E37C    mov        dword ptr fs:[eax],esp
 0050E37F    cmp        bl,byte ptr [esi+28]; TZMySQLConnection.?f28:byte
>0050E382    je         0050E428
 0050E388    mov        edx,ebx
 0050E38A    mov        eax,esi
 0050E38C    call       004DE10C
 0050E391    cmp        byte ptr [esi+2B],0; TZMySQLConnection.?f2B:byte
>0050E395    jne        0050E428
 0050E39B    mov        ecx,ebx
 0050E39D    mov        edx,dword ptr [esi+3C]; TZMySQLConnection.?f3C:dword
 0050E3A0    mov        eax,dword ptr [esi+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E3A3    mov        edi,dword ptr [eax]
 0050E3A5    call       dword ptr [edi+0D0]
 0050E3AB    test       al,al
>0050E3AD    jne        0050E3E4
 0050E3AF    push       50E45C; 'Native SetAutoCommit '
 0050E3B4    lea        edx,[ebp-8]
 0050E3B7    mov        eax,ebx
 0050E3B9    call       004BF0A8
 0050E3BE    push       dword ptr [ebp-8]
 0050E3C1    push       50E47C; 'call'
 0050E3C6    lea        eax,[ebp-4]
 0050E3C9    mov        edx,3
 0050E3CE    call       @LStrCatN
 0050E3D3    mov        eax,dword ptr [ebp-4]
 0050E3D6    push       eax
 0050E3D7    mov        cl,3
 0050E3D9    mov        edx,dword ptr [esi+3C]; TZMySQLConnection.?f3C:dword
 0050E3DC    mov        eax,dword ptr [esi+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E3DF    call       00503AE8
 0050E3E4    push       50E45C; 'Native SetAutoCommit '
 0050E3E9    lea        edx,[ebp-10]
 0050E3EC    mov        eax,ebx
 0050E3EE    call       004BF0A8
 0050E3F3    push       dword ptr [ebp-10]
 0050E3F6    push       50E47C; 'call'
 0050E3FB    lea        eax,[ebp-0C]
 0050E3FE    mov        edx,3
 0050E403    call       @LStrCatN
 0050E408    mov        eax,dword ptr [ebp-0C]
 0050E40B    push       eax
 0050E40C    lea        edx,[ebp-14]
 0050E40F    mov        eax,dword ptr [esi+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E412    mov        ecx,dword ptr [eax]
 0050E414    call       dword ptr [ecx+0C]
 0050E417    mov        ecx,dword ptr [ebp-14]
 0050E41A    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050E41F    mov        eax,dword ptr [eax]
 0050E421    mov        dl,3
 0050E423    mov        ebx,dword ptr [eax]
 0050E425    call       dword ptr [ebx+3C]
 0050E428    xor        eax,eax
 0050E42A    pop        edx
 0050E42B    pop        ecx
 0050E42C    pop        ecx
 0050E42D    mov        dword ptr fs:[eax],edx
 0050E430    push       50E44A
 0050E435    lea        eax,[ebp-14]
 0050E438    mov        edx,5
 0050E43D    call       @LStrArrayClr
 0050E442    ret
<0050E443    jmp        @HandleFinally
<0050E448    jmp        0050E435
 0050E44A    pop        edi
 0050E44B    pop        esi
 0050E44C    pop        ebx
 0050E44D    mov        esp,ebp
 0050E44F    pop        ebp
 0050E450    ret
*}
//end;

//0050E484
procedure sub_0050E484;
begin
{*
 0050E484    push       ebp
 0050E485    mov        ebp,esp
 0050E487    push       ebx
 0050E488    mov        ebx,eax
 0050E48A    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E48D    mov        edx,dword ptr [eax]
 0050E48F    call       dword ptr [edx+18]
 0050E492    call       00503C98
 0050E497    pop        ebx
 0050E498    pop        ebp
 0050E499    ret
*}
end;

//0050E49C
//function sub_0050E49C:?;
//begin
{*
 0050E49C    push       ebp
 0050E49D    mov        ebp,esp
 0050E49F    push       ebx
 0050E4A0    push       esi
 0050E4A1    mov        ebx,eax
 0050E4A3    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050E4A6    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E4A9    mov        ecx,dword ptr [eax]
 0050E4AB    call       dword ptr [ecx+1C]
 0050E4AE    call       00503C98
 0050E4B3    mov        esi,eax
 0050E4B5    push       50E4D8; 'mysql_get_server_version()'
 0050E4BA    mov        cl,3
 0050E4BC    mov        edx,dword ptr [ebx+3C]; TZMySQLConnection.?f3C:dword
 0050E4BF    mov        eax,dword ptr [ebx+38]; TZMySQLConnection.?f38:IZMySQLPlainDriver
 0050E4C2    call       00503AE8
 0050E4C7    mov        eax,esi
 0050E4C9    pop        esi
 0050E4CA    pop        ebx
 0050E4CB    pop        ebp
 0050E4CC    ret
*}
//end;

Initialization
//0050E570
{*
 0050E570    push       ebp
 0050E571    mov        ebp,esp
 0050E573    xor        eax,eax
 0050E575    push       ebp
 0050E576    push       50E5C9
 0050E57B    push       dword ptr fs:[eax]
 0050E57E    mov        dword ptr fs:[eax],esp
 0050E581    sub        dword ptr ds:[61E2F4],1
>0050E588    jae        0050E5BB
 0050E58A    mov        dl,1
 0050E58C    mov        eax,[0050CAD4]; TZMySQLDriver
 0050E591    call       TZMySQLDriver.Create; TZMySQLDriver.Create
 0050E596    mov        edx,eax
 0050E598    test       edx,edx
>0050E59A    je         0050E59F
 0050E59C    sub        edx,0FFFFFFEC
 0050E59F    mov        eax,61E2F0; gvar_0061E2F0:IInterface
 0050E5A4    call       @IntfCopy
 0050E5A9    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050E5AE    mov        eax,dword ptr [eax]
 0050E5B0    mov        edx,dword ptr ds:[61E2F0]; gvar_0061E2F0:IInterface
 0050E5B6    mov        ecx,dword ptr [eax]
 0050E5B8    call       dword ptr [ecx+20]
 0050E5BB    xor        eax,eax
 0050E5BD    pop        edx
 0050E5BE    pop        ecx
 0050E5BF    pop        ecx
 0050E5C0    mov        dword ptr fs:[eax],edx
 0050E5C3    push       50E5D0
 0050E5C8    ret
<0050E5C9    jmp        @HandleFinally
<0050E5CE    jmp        0050E5C8
 0050E5D0    pop        ebp
 0050E5D1    ret
*}
Finalization
//0050E510
{*
 0050E510    push       ebp
 0050E511    mov        ebp,esp
 0050E513    xor        eax,eax
 0050E515    push       ebp
 0050E516    push       50E567
 0050E51B    push       dword ptr fs:[eax]
 0050E51E    mov        dword ptr fs:[eax],esp
 0050E521    inc        dword ptr ds:[61E2F4]
>0050E527    jne        0050E559
 0050E529    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050E52E    cmp        dword ptr [eax],0
>0050E531    je         0050E545
 0050E533    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0050E538    mov        eax,dword ptr [eax]
 0050E53A    mov        edx,dword ptr ds:[61E2F0]; gvar_0061E2F0:IInterface
 0050E540    mov        ecx,dword ptr [eax]
 0050E542    call       dword ptr [ecx+24]
 0050E545    mov        eax,61E2F0; gvar_0061E2F0:IInterface
 0050E54A    call       @IntfClear
 0050E54F    mov        eax,61E2F0; gvar_0061E2F0:IInterface
 0050E554    call       @IntfClear
 0050E559    xor        eax,eax
 0050E55B    pop        edx
 0050E55C    pop        ecx
 0050E55D    pop        ecx
 0050E55E    mov        dword ptr fs:[eax],edx
 0050E561    push       50E56E
 0050E566    ret
<0050E567    jmp        @HandleFinally
<0050E56C    jmp        0050E566
 0050E56E    pop        ebp
 0050E56F    ret
*}
end.