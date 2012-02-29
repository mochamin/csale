{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit166;

interface

uses
  Classes, Windows, Graphics, _Unit147, ZPlainOracleDriver, _Unit139;

type
  TZOracleDriver = class(TZAbstractDriver)
  public
    f18:IZOraclePlainDriver;//f18
    //procedure sub_0054C964(?:?); virtual;
    //procedure sub_0054C7D8(?:?; ?:?; ?:?); virtual;
    //function sub_0054C8DC():?; virtual;
    //function sub_0054C8E4():?; virtual;
    //procedure sub_0054C8E8(?:?); virtual;
    //procedure sub_0054C928(?:?); virtual;
    //constructor Create(?:TZOracleDriver; _Dv__:Boolean);
  end;
  TZOracleConnection = class(TZAbstractConnection)
  public
    f34:String;//f34
    f38:IZOraclePlainDriver;//f38
    f3C:dword;//f3C
    f40:dword;//f40
    f44:dword;//f44
    f48:dword;//f48
    f4C:dword;//f4C
    f50:dword;//f50
    f54:String;//f54
    destructor Destroy; virtual;
    //procedure sub_0054D16C(?:?; ?:?); virtual;
    //procedure sub_0054D1BC(?:?; ?:?; ?:?); virtual;
    //procedure sub_0054D624(?:?; ?:?; ?:?); virtual;
    procedure sub_0054D210; virtual;
    procedure sub_0054D2C4; virtual;
    procedure sub_0054CC9C; virtual;
    procedure sub_0054D37C; virtual;
    //procedure sub_0054D524(?:?); virtual;
    //procedure sub_0054D50C(?:?); virtual;
    //procedure sub_0054D53C(?:?); virtual;
    //constructor Create(?:TZOracleConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;
  TZOracleSequence = class(TZAbstractSequence)
  public
    procedure sub_0054D690; virtual;
    procedure sub_0054D824; virtual;
    //procedure sub_0054D798(?:?); virtual;
    //procedure sub_0054D92C(?:?); virtual;
  end;
  TZOracleCachedResolver = class(TZGenericCachedResolver)
  public
    //procedure sub_0054D9B8(?:?; ?:?); virtual;
  end;

implementation

{$R *.DFM}

//0054C788
//constructor TZOracleDriver.Create(?:TZOracleDriver; _Dv__:Boolean);
//begin
{*
 0054C788    push       ebp
 0054C789    mov        ebp,esp
 0054C78B    push       ebx
 0054C78C    push       esi
 0054C78D    test       dl,dl
>0054C78F    je         0054C799
 0054C791    add        esp,0FFFFFFF0
 0054C794    call       @ClassCreate
 0054C799    mov        ebx,edx
 0054C79B    mov        esi,eax
 0054C79D    mov        dl,1
 0054C79F    mov        eax,[00544500]; TZOracle9iPlainDriver
 0054C7A4    call       TZOracle9iPlainDriver.Create; TZOracle9iPlainDriver.Create
 0054C7A9    mov        edx,eax
 0054C7AB    test       edx,edx
>0054C7AD    je         0054C7B2
 0054C7AF    sub        edx,0FFFFFFF0
 0054C7B2    lea        eax,[esi+18]; TZOracleDriver.?f18:IZOraclePlainDriver
 0054C7B5    call       @IntfCopy
 0054C7BA    mov        eax,esi
 0054C7BC    test       bl,bl
>0054C7BE    je         0054C7CF
 0054C7C0    call       @AfterConstruction
 0054C7C5    pop        dword ptr fs:[0]
 0054C7CC    add        esp,0C
 0054C7CF    mov        eax,esi
 0054C7D1    pop        esi
 0054C7D2    pop        ebx
 0054C7D3    pop        ebp
 0054C7D4    ret
*}
//end;

//0054C7D8
//procedure sub_0054C7D8(?:?; ?:?; ?:?);
//begin
{*
 0054C7D8    push       ebp
 0054C7D9    mov        ebp,esp
 0054C7DB    push       0
 0054C7DD    push       0
 0054C7DF    push       0
 0054C7E1    push       0
 0054C7E3    push       0
 0054C7E5    push       0
 0054C7E7    push       0
 0054C7E9    push       ebx
 0054C7EA    push       esi
 0054C7EB    push       edi
 0054C7EC    mov        edi,ecx
 0054C7EE    mov        esi,edx
 0054C7F0    mov        ebx,eax
 0054C7F2    xor        eax,eax
 0054C7F4    push       ebp
 0054C7F5    push       54C8CC
 0054C7FA    push       dword ptr fs:[eax]
 0054C7FD    mov        dword ptr fs:[eax],esp
 0054C800    mov        dl,1
 0054C802    mov        eax,[0041C8E4]; TStringList
 0054C807    call       TObject.Create; TStringList.Create
 0054C80C    mov        dword ptr [ebp-4],eax
 0054C80F    xor        eax,eax
 0054C811    push       ebp
 0054C812    push       54C8A2
 0054C817    push       dword ptr fs:[eax]
 0054C81A    mov        dword ptr fs:[eax],esp
 0054C81D    lea        ecx,[ebp-1C]
 0054C820    mov        edx,esi
 0054C822    mov        eax,ebx
 0054C824    call       0054CA10
 0054C829    lea        eax,[ebp-18]
 0054C82C    push       eax
 0054C82D    lea        eax,[ebp-0C]
 0054C830    push       eax
 0054C831    lea        eax,[ebp-10]
 0054C834    push       eax
 0054C835    lea        eax,[ebp-14]
 0054C838    push       eax
 0054C839    mov        eax,dword ptr [ebp-4]
 0054C83C    push       eax
 0054C83D    lea        ecx,[ebp-8]
 0054C840    mov        edx,edi
 0054C842    mov        eax,esi
 0054C844    call       004D28A4
 0054C849    push       esi
 0054C84A    mov        eax,dword ptr [ebp-1C]
 0054C84D    push       eax
 0054C84E    mov        eax,dword ptr [ebp-8]
 0054C851    push       eax
 0054C852    mov        eax,dword ptr [ebp-18]
 0054C855    push       eax
 0054C856    mov        eax,dword ptr [ebp-0C]
 0054C859    push       eax
 0054C85A    mov        eax,dword ptr [ebp-10]
 0054C85D    push       eax
 0054C85E    mov        eax,dword ptr [ebp-14]
 0054C861    push       eax
 0054C862    mov        eax,dword ptr [ebp-4]
 0054C865    push       eax
 0054C866    mov        ecx,ebx
 0054C868    test       ecx,ecx
>0054C86A    je         0054C86F
 0054C86C    sub        ecx,0FFFFFFEC
 0054C86F    mov        dl,1
 0054C871    mov        eax,[0054C59C]; TZOracleConnection
 0054C876    call       TZOracleConnection.Create; TZOracleConnection.Create
 0054C87B    mov        edx,eax
 0054C87D    test       edx,edx
>0054C87F    je         0054C884
 0054C881    sub        edx,0FFFFFFD0
 0054C884    mov        eax,dword ptr [ebp+8]
 0054C887    call       @IntfCopy
 0054C88C    xor        eax,eax
 0054C88E    pop        edx
 0054C88F    pop        ecx
 0054C890    pop        ecx
 0054C891    mov        dword ptr fs:[eax],edx
 0054C894    push       54C8A9
 0054C899    mov        eax,dword ptr [ebp-4]
 0054C89C    call       TObject.Free
 0054C8A1    ret
<0054C8A2    jmp        @HandleFinally
<0054C8A7    jmp        0054C899
 0054C8A9    xor        eax,eax
 0054C8AB    pop        edx
 0054C8AC    pop        ecx
 0054C8AD    pop        ecx
 0054C8AE    mov        dword ptr fs:[eax],edx
 0054C8B1    push       54C8D3
 0054C8B6    lea        eax,[ebp-1C]
 0054C8B9    call       @IntfClear
 0054C8BE    lea        eax,[ebp-14]
 0054C8C1    mov        edx,4
 0054C8C6    call       @LStrArrayClr
 0054C8CB    ret
<0054C8CC    jmp        @HandleFinally
<0054C8D1    jmp        0054C8B6
 0054C8D3    pop        edi
 0054C8D4    pop        esi
 0054C8D5    pop        ebx
 0054C8D6    mov        esp,ebp
 0054C8D8    pop        ebp
 0054C8D9    ret        4
*}
//end;

//0054C8DC
//function sub_0054C8DC():?;
//begin
{*
 0054C8DC    mov        eax,1
 0054C8E1    ret
*}
//end;

//0054C8E4
//function sub_0054C8E4():?;
//begin
{*
 0054C8E4    xor        eax,eax
 0054C8E6    ret
*}
//end;

//0054C8E8
//procedure sub_0054C8E8(?:?);
//begin
{*
 0054C8E8    push       ebp
 0054C8E9    mov        ebp,esp
 0054C8EB    push       ebx
 0054C8EC    push       esi
 0054C8ED    mov        esi,edx
 0054C8EF    mov        ebx,eax
 0054C8F1    cmp        dword ptr [ebx+0C],0; TZOracleDriver.?fC:IZTokenizer
>0054C8F5    jne        0054C917
 0054C8F7    mov        dl,1
 0054C8F9    mov        eax,[0054BB8C]; TZOracleTokenizer
 0054C8FE    call       TZOracleTokenizer.Create; TZOracleTokenizer.Create
 0054C903    mov        edx,eax
 0054C905    test       edx,edx
>0054C907    je         0054C90F
 0054C909    sub        edx,0FFFFFBD8
 0054C90F    lea        eax,[ebx+0C]; TZOracleDriver.?fC:IZTokenizer
 0054C912    call       @IntfCopy
 0054C917    mov        eax,esi
 0054C919    mov        edx,dword ptr [ebx+0C]; TZOracleDriver.?fC:IZTokenizer
 0054C91C    call       @IntfCopy
 0054C921    pop        esi
 0054C922    pop        ebx
 0054C923    pop        ebp
 0054C924    ret
*}
//end;

//0054C928
//procedure sub_0054C928(?:?);
//begin
{*
 0054C928    push       ebp
 0054C929    mov        ebp,esp
 0054C92B    push       ebx
 0054C92C    push       esi
 0054C92D    mov        esi,edx
 0054C92F    mov        ebx,eax
 0054C931    cmp        dword ptr [ebx+10],0; TZOracleDriver.?f10:IZStatementAnalyser
>0054C935    jne        0054C954
 0054C937    mov        dl,1
 0054C939    mov        eax,[0054BF04]; TZOracleStatementAnalyser
 0054C93E    call       TZOracleStatementAnalyser.Create; TZOracleStatementAnalyser.Create
 0054C943    mov        edx,eax
 0054C945    test       edx,edx
>0054C947    je         0054C94C
 0054C949    sub        edx,0FFFFFFE0
 0054C94C    lea        eax,[ebx+10]; TZOracleDriver.?f10:IZStatementAnalyser
 0054C94F    call       @IntfCopy
 0054C954    mov        eax,esi
 0054C956    mov        edx,dword ptr [ebx+10]; TZOracleDriver.?f10:IZStatementAnalyser
 0054C959    call       @IntfCopy
 0054C95E    pop        esi
 0054C95F    pop        ebx
 0054C960    pop        ebp
 0054C961    ret
*}
//end;

//0054C964
//procedure sub_0054C964(?:?);
//begin
{*
 0054C964    push       ebp
 0054C965    mov        ebp,esp
 0054C967    push       0
 0054C969    push       ebx
 0054C96A    push       esi
 0054C96B    mov        ebx,edx
 0054C96D    mov        esi,eax
 0054C96F    xor        eax,eax
 0054C971    push       ebp
 0054C972    push       54C9F4
 0054C977    push       dword ptr fs:[eax]
 0054C97A    mov        dword ptr fs:[eax],esp
 0054C97D    push       2
 0054C97F    mov        eax,ebx
 0054C981    mov        ecx,1
 0054C986    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 0054C98C    call       @DynArraySetLength
 0054C991    add        esp,4
 0054C994    xor        eax,eax
 0054C996    mov        edx,dword ptr [ebx]
 0054C998    test       edx,edx
>0054C99A    je         0054C9A1
 0054C99C    cmp        eax,dword ptr [edx-4]
>0054C99F    jb         0054C9A6
 0054C9A1    call       @BoundErr
 0054C9A6    lea        eax,[edx+eax*4]
 0054C9A9    mov        edx,54CA08; 'oracle'
 0054C9AE    call       @LStrAsg
 0054C9B3    lea        edx,[ebp-4]
 0054C9B6    mov        eax,dword ptr [esi+18]; TZOracleDriver.?f18:IZOraclePlainDriver
 0054C9B9    mov        ecx,dword ptr [eax]
 0054C9BB    call       dword ptr [ecx+0C]
 0054C9BE    mov        edx,dword ptr [ebp-4]
 0054C9C1    mov        eax,1
 0054C9C6    mov        ecx,dword ptr [ebx]
 0054C9C8    test       ecx,ecx
>0054C9CA    je         0054C9D1
 0054C9CC    cmp        eax,dword ptr [ecx-4]
>0054C9CF    jb         0054C9D6
 0054C9D1    call       @BoundErr
 0054C9D6    lea        eax,[ecx+eax*4]
 0054C9D9    call       @LStrAsg
 0054C9DE    xor        eax,eax
 0054C9E0    pop        edx
 0054C9E1    pop        ecx
 0054C9E2    pop        ecx
 0054C9E3    mov        dword ptr fs:[eax],edx
 0054C9E6    push       54C9FB
 0054C9EB    lea        eax,[ebp-4]
 0054C9EE    call       @LStrClr
 0054C9F3    ret
<0054C9F4    jmp        @HandleFinally
<0054C9F9    jmp        0054C9EB
 0054C9FB    pop        esi
 0054C9FC    pop        ebx
 0054C9FD    pop        ecx
 0054C9FE    pop        ebp
 0054C9FF    ret
*}
//end;

//0054CA10
//procedure sub_0054CA10(?:TZOracleDriver; ?:?; ?:?);
//begin
{*
 0054CA10    push       ebp
 0054CA11    mov        ebp,esp
 0054CA13    push       0
 0054CA15    push       0
 0054CA17    push       0
 0054CA19    push       ebx
 0054CA1A    push       esi
 0054CA1B    push       edi
 0054CA1C    mov        esi,ecx
 0054CA1E    mov        edi,edx
 0054CA20    mov        ebx,eax
 0054CA22    xor        eax,eax
 0054CA24    push       ebp
 0054CA25    push       54CAA7
 0054CA2A    push       dword ptr fs:[eax]
 0054CA2D    mov        dword ptr fs:[eax],esp
 0054CA30    lea        edx,[ebp-8]
 0054CA33    mov        eax,ebx
 0054CA35    mov        ecx,dword ptr [eax]
 0054CA37    call       dword ptr [ecx]; TZOracleDriver.sub_0054C964
 0054CA39    mov        edx,dword ptr [ebp-8]
 0054CA3C    lea        ecx,[ebp-4]
 0054CA3F    mov        eax,edi
 0054CA41    call       004D263C
 0054CA46    lea        edx,[ebp-0C]
 0054CA49    mov        eax,dword ptr [ebx+18]; TZOracleDriver.?f18:IZOraclePlainDriver
 0054CA4C    mov        ecx,dword ptr [eax]
 0054CA4E    call       dword ptr [ecx+0C]
 0054CA51    mov        edx,dword ptr [ebp-0C]
 0054CA54    mov        eax,dword ptr [ebp-4]
 0054CA57    call       @LStrCmp
>0054CA5C    jne        0054CA6A
 0054CA5E    mov        eax,esi
 0054CA60    mov        edx,dword ptr [ebx+18]; TZOracleDriver.?f18:IZOraclePlainDriver
 0054CA63    call       @IntfCopy
>0054CA68    jmp        0054CA74
 0054CA6A    mov        eax,esi
 0054CA6C    mov        edx,dword ptr [ebx+18]; TZOracleDriver.?f18:IZOraclePlainDriver
 0054CA6F    call       @IntfCopy
 0054CA74    mov        eax,dword ptr [esi]
 0054CA76    mov        edx,dword ptr [eax]
 0054CA78    call       dword ptr [edx+14]
 0054CA7B    xor        eax,eax
 0054CA7D    pop        edx
 0054CA7E    pop        ecx
 0054CA7F    pop        ecx
 0054CA80    mov        dword ptr fs:[eax],edx
 0054CA83    push       54CAAE
 0054CA88    lea        eax,[ebp-0C]
 0054CA8B    call       @LStrClr
 0054CA90    lea        eax,[ebp-8]
 0054CA93    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 0054CA99    call       @DynArrayClear
 0054CA9E    lea        eax,[ebp-4]
 0054CAA1    call       @LStrClr
 0054CAA6    ret
<0054CAA7    jmp        @HandleFinally
<0054CAAC    jmp        0054CA88
 0054CAAE    pop        edi
 0054CAAF    pop        esi
 0054CAB0    pop        ebx
 0054CAB1    mov        esp,ebp
 0054CAB3    pop        ebp
 0054CAB4    ret
*}
//end;

//0054CAB8
//constructor TZOracleConnection.Create(?:TZOracleConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0054CAB8    push       ebp
 0054CAB9    mov        ebp,esp
 0054CABB    add        esp,0FFFFFFF0
 0054CABE    push       ebx
 0054CABF    push       esi
 0054CAC0    push       edi
 0054CAC1    xor        ebx,ebx
 0054CAC3    mov        dword ptr [ebp-0C],ebx
 0054CAC6    mov        dword ptr [ebp-10],ebx
 0054CAC9    test       dl,dl
>0054CACB    je         0054CAD5
 0054CACD    add        esp,0FFFFFFF0
 0054CAD0    call       @ClassCreate
 0054CAD5    mov        dword ptr [ebp-8],ecx
 0054CAD8    mov        byte ptr [ebp-1],dl
 0054CADB    mov        ebx,eax
 0054CADD    mov        esi,dword ptr [ebp+8]
 0054CAE0    mov        edi,dword ptr [ebp+24]
 0054CAE3    mov        eax,dword ptr [ebp-8]
 0054CAE6    call       @IntfAddRef
 0054CAEB    mov        eax,dword ptr [ebp+20]
 0054CAEE    call       @IntfAddRef
 0054CAF3    xor        eax,eax
 0054CAF5    push       ebp
 0054CAF6    push       54CBB0
 0054CAFB    push       dword ptr fs:[eax]
 0054CAFE    mov        dword ptr fs:[eax],esp
 0054CB01    push       edi
 0054CB02    mov        eax,dword ptr [ebp+1C]
 0054CB05    push       eax
 0054CB06    mov        eax,dword ptr [ebp+18]
 0054CB09    push       eax
 0054CB0A    mov        eax,dword ptr [ebp+14]
 0054CB0D    push       eax
 0054CB0E    mov        eax,dword ptr [ebp+10]
 0054CB11    push       eax
 0054CB12    mov        eax,dword ptr [ebp+0C]
 0054CB15    push       eax
 0054CB16    push       esi
 0054CB17    push       edi
 0054CB18    push       esi
 0054CB19    mov        ecx,ebx
 0054CB1B    mov        dl,1
 0054CB1D    mov        eax,[00549690]; TZOracleDatabaseMetadata
 0054CB22    call       TZOracleDatabaseMetadata.Create; TZOracleDatabaseMetadata.Create
 0054CB27    push       eax
 0054CB28    mov        ecx,dword ptr [ebp-8]
 0054CB2B    xor        edx,edx
 0054CB2D    mov        eax,ebx
 0054CB2F    call       004DDD88
 0054CB34    lea        eax,[ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CB37    mov        edx,dword ptr [ebp+20]
 0054CB3A    call       @IntfCopy
 0054CB3F    xor        eax,eax
 0054CB41    mov        dword ptr [ebx+3C],eax; TZOracleConnection.?f3C:dword
 0054CB44    cmp        dword ptr [ebx+14],0; TZOracleConnection.?f14:dword
>0054CB48    jne        0054CB51
 0054CB4A    mov        dword ptr [ebx+14],5F1; TZOracleConnection.?f14:dword
 0054CB51    mov        byte ptr [ebx+28],1; TZOracleConnection.?f28:byte
 0054CB55    mov        byte ptr [ebx+2A],0; TZOracleConnection.?f2A:byte
 0054CB59    lea        ecx,[ebp-10]
 0054CB5C    mov        edx,54CBE4; 'codepage'
 0054CB61    mov        eax,esi
 0054CB63    call       TStrings.GetValue
 0054CB68    mov        eax,dword ptr [ebp-10]
 0054CB6B    lea        edx,[ebp-0C]
 0054CB6E    call       Trim
 0054CB73    mov        edx,dword ptr [ebp-0C]
 0054CB76    lea        eax,[ebx+54]; TZOracleConnection.?f54:String
 0054CB79    call       @LStrAsg
 0054CB7E    mov        eax,ebx
 0054CB80    mov        edx,dword ptr [eax]
 0054CB82    call       dword ptr [edx+3C]; TZOracleConnection.sub_0054CC9C
 0054CB85    xor        eax,eax
 0054CB87    pop        edx
 0054CB88    pop        ecx
 0054CB89    pop        ecx
 0054CB8A    mov        dword ptr fs:[eax],edx
 0054CB8D    push       54CBB7
 0054CB92    lea        eax,[ebp-10]
 0054CB95    mov        edx,2
 0054CB9A    call       @LStrArrayClr
 0054CB9F    lea        eax,[ebp-8]
 0054CBA2    call       @IntfClear
 0054CBA7    lea        eax,[ebp+20]
 0054CBAA    call       @IntfClear
 0054CBAF    ret
<0054CBB0    jmp        @HandleFinally
<0054CBB5    jmp        0054CB92
 0054CBB7    mov        eax,ebx
 0054CBB9    cmp        byte ptr [ebp-1],0
>0054CBBD    je         0054CBCE
 0054CBBF    call       @AfterConstruction
 0054CBC4    pop        dword ptr fs:[0]
 0054CBCB    add        esp,0C
 0054CBCE    mov        eax,ebx
 0054CBD0    pop        edi
 0054CBD1    pop        esi
 0054CBD2    pop        ebx
 0054CBD3    mov        esp,ebp
 0054CBD5    pop        ebp
 0054CBD6    ret        20
*}
//end;

//0054CBF0
destructor TZOracleConnection.Destroy;
begin
{*
 0054CBF0    push       ebp
 0054CBF1    mov        ebp,esp
 0054CBF3    push       ecx
 0054CBF4    push       ebx
 0054CBF5    push       esi
 0054CBF6    call       @BeforeDestruction
 0054CBFB    mov        byte ptr [ebp-1],dl
 0054CBFE    mov        ebx,eax
 0054CC00    mov        eax,dword ptr [ebx+3C]; TZOracleConnection.?f3C:dword
 0054CC03    test       eax,eax
>0054CC05    je         0054CC1B
 0054CC07    mov        edx,eax
 0054CC09    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CC0C    mov        ecx,1
 0054CC11    mov        esi,dword ptr [eax]
 0054CC13    call       dword ptr [esi+3C]
 0054CC16    xor        eax,eax
 0054CC18    mov        dword ptr [ebx+3C],eax; TZOracleConnection.?f3C:dword
 0054CC1B    mov        dl,byte ptr [ebp-1]
 0054CC1E    and        dl,0FC
 0054CC21    mov        eax,ebx
 0054CC23    call       TZAbstractConnection.Destroy
 0054CC28    cmp        byte ptr [ebp-1],0
>0054CC2C    jle        0054CC35
 0054CC2E    mov        eax,ebx
 0054CC30    call       @ClassDestroy
 0054CC35    pop        esi
 0054CC36    pop        ebx
 0054CC37    pop        ecx
 0054CC38    pop        ebp
 0054CC39    ret
*}
end;

//0054CC3C
//procedure sub_0054CC3C(?:?);
//begin
{*
 0054CC3C    push       ebp
 0054CC3D    mov        ebp,esp
 0054CC3F    push       ebx
 0054CC40    push       esi
 0054CC41    mov        ebx,dword ptr [ebp+8]
 0054CC44    add        ebx,0FFFFFFFC
 0054CC47    mov        eax,dword ptr [ebx]
 0054CC49    mov        edx,dword ptr [eax+40]
 0054CC4C    mov        eax,dword ptr [ebx]
 0054CC4E    mov        eax,dword ptr [eax+38]
 0054CC51    mov        ecx,3
 0054CC56    mov        esi,dword ptr [eax]
 0054CC58    call       dword ptr [esi+3C]
 0054CC5B    mov        eax,dword ptr [ebx]
 0054CC5D    xor        edx,edx
 0054CC5F    mov        dword ptr [eax+40],edx
 0054CC62    mov        eax,dword ptr [ebx]
 0054CC64    mov        edx,dword ptr [eax+44]
 0054CC67    mov        eax,dword ptr [ebx]
 0054CC69    mov        eax,dword ptr [eax+38]
 0054CC6C    mov        ecx,2
 0054CC71    mov        esi,dword ptr [eax]
 0054CC73    call       dword ptr [esi+3C]
 0054CC76    mov        eax,dword ptr [ebx]
 0054CC78    xor        edx,edx
 0054CC7A    mov        dword ptr [eax+44],edx
 0054CC7D    mov        eax,dword ptr [ebx]
 0054CC7F    mov        edx,dword ptr [eax+48]
 0054CC82    mov        eax,dword ptr [ebx]
 0054CC84    mov        eax,dword ptr [eax+38]
 0054CC87    mov        ecx,8
 0054CC8C    mov        esi,dword ptr [eax]
 0054CC8E    call       dword ptr [esi+3C]
 0054CC91    mov        eax,dword ptr [ebx]
 0054CC93    xor        edx,edx
 0054CC95    mov        dword ptr [eax+48],edx
 0054CC98    pop        esi
 0054CC99    pop        ebx
 0054CC9A    pop        ebp
 0054CC9B    ret
*}
//end;

//0054CC9C
procedure sub_0054CC9C;
begin
{*
 0054CC9C    push       ebp
 0054CC9D    mov        ebp,esp
 0054CC9F    add        esp,0FFFFFFE4
 0054CCA2    push       ebx
 0054CCA3    push       esi
 0054CCA4    push       edi
 0054CCA5    xor        edx,edx
 0054CCA7    mov        dword ptr [ebp-1C],edx
 0054CCAA    mov        dword ptr [ebp-8],edx
 0054CCAD    mov        dword ptr [ebp-4],eax
 0054CCB0    lea        ebx,[ebp-4]
 0054CCB3    xor        eax,eax
 0054CCB5    push       ebp
 0054CCB6    push       54CF72
 0054CCBB    push       dword ptr fs:[eax]
 0054CCBE    mov        dword ptr fs:[eax],esp
 0054CCC1    mov        eax,dword ptr [ebx]
 0054CCC3    cmp        byte ptr [eax+2B],0; TZOracleConnection.?f2B:byte
>0054CCC7    je         0054CF54
 0054CCCD    lea        eax,[ebp-8]
 0054CCD0    push       eax
 0054CCD1    mov        eax,dword ptr [ebx]
 0054CCD3    mov        eax,dword ptr [eax+18]; TZOracleConnection.?f18:String
 0054CCD6    mov        dword ptr [ebp-18],eax
 0054CCD9    mov        byte ptr [ebp-14],0B
 0054CCDD    mov        eax,dword ptr [ebx]
 0054CCDF    mov        eax,dword ptr [eax+1C]; TZOracleConnection.?f1C:String
 0054CCE2    mov        dword ptr [ebp-10],eax
 0054CCE5    mov        byte ptr [ebp-0C],0B
 0054CCE9    lea        edx,[ebp-18]
 0054CCEC    mov        ecx,1
 0054CCF1    mov        eax,54CF88; 'CONNECT TO \"%s\" AS USER \"%s\"'
 0054CCF6    call       Format
 0054CCFB    mov        eax,dword ptr [ebx]
 0054CCFD    cmp        dword ptr [eax+14],0; TZOracleConnection.?f14:dword
>0054CD01    jne        0054CD0C
 0054CD03    mov        eax,dword ptr [ebx]
 0054CD05    mov        dword ptr [eax+14],5F1; TZOracleConnection.?f14:dword
 0054CD0C    mov        eax,dword ptr [ebx]
 0054CD0E    cmp        dword ptr [eax+3C],0; TZOracleConnection.?f3C:dword
>0054CD12    jne        0054CD29
 0054CD14    push       0
 0054CD16    push       0
 0054CD18    mov        eax,dword ptr [ebx]
 0054CD1A    lea        edx,[eax+3C]; TZOracleConnection.?f3C:dword
 0054CD1D    mov        eax,dword ptr [ebx]
 0054CD1F    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CD22    xor        ecx,ecx
 0054CD24    mov        esi,dword ptr [eax]
 0054CD26    call       dword ptr [esi+1C]
 0054CD29    mov        eax,dword ptr [ebx]
 0054CD2B    xor        edx,edx
 0054CD2D    mov        dword ptr [eax+44],edx; TZOracleConnection.?f44:dword
 0054CD30    push       2
 0054CD32    push       0
 0054CD34    push       0
 0054CD36    mov        eax,dword ptr [ebx]
 0054CD38    lea        ecx,[eax+44]; TZOracleConnection.?f44:dword
 0054CD3B    mov        eax,dword ptr [ebx]
 0054CD3D    mov        edx,dword ptr [eax+3C]; TZOracleConnection.?f3C:dword
 0054CD40    mov        eax,dword ptr [ebx]
 0054CD42    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CD45    mov        esi,dword ptr [eax]
 0054CD47    call       dword ptr [esi+24]
 0054CD4A    mov        eax,dword ptr [ebx]
 0054CD4C    xor        edx,edx
 0054CD4E    mov        dword ptr [eax+48],edx; TZOracleConnection.?f48:dword
 0054CD51    push       8
 0054CD53    push       0
 0054CD55    push       0
 0054CD57    mov        eax,dword ptr [ebx]
 0054CD59    lea        ecx,[eax+48]; TZOracleConnection.?f48:dword
 0054CD5C    mov        eax,dword ptr [ebx]
 0054CD5E    mov        edx,dword ptr [eax+3C]; TZOracleConnection.?f3C:dword
 0054CD61    mov        eax,dword ptr [ebx]
 0054CD63    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CD66    mov        esi,dword ptr [eax]
 0054CD68    call       dword ptr [esi+24]
 0054CD6B    mov        eax,dword ptr [ebx]
 0054CD6D    xor        edx,edx
 0054CD6F    mov        dword ptr [eax+40],edx; TZOracleConnection.?f40:dword
 0054CD72    push       3
 0054CD74    push       0
 0054CD76    push       0
 0054CD78    mov        eax,dword ptr [ebx]
 0054CD7A    lea        ecx,[eax+40]; TZOracleConnection.?f40:dword
 0054CD7D    mov        eax,dword ptr [ebx]
 0054CD7F    mov        edx,dword ptr [eax+3C]; TZOracleConnection.?f3C:dword
 0054CD82    mov        eax,dword ptr [ebx]
 0054CD84    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CD87    mov        esi,dword ptr [eax]
 0054CD89    call       dword ptr [esi+24]
 0054CD8C    mov        eax,dword ptr [ebx]
 0054CD8E    mov        eax,dword ptr [eax+18]; TZOracleConnection.?f18:String
 0054CD91    call       @LStrToPChar
 0054CD96    push       eax
 0054CD97    mov        eax,dword ptr [ebx]
 0054CD99    mov        eax,dword ptr [eax+18]; TZOracleConnection.?f18:String
 0054CD9C    call       @LStrLen
 0054CDA1    push       eax
 0054CDA2    push       0
 0054CDA4    mov        eax,dword ptr [ebx]
 0054CDA6    mov        ecx,dword ptr [eax+44]; TZOracleConnection.?f44:dword
 0054CDA9    mov        eax,dword ptr [ebx]
 0054CDAB    mov        edx,dword ptr [eax+48]; TZOracleConnection.?f48:dword
 0054CDAE    mov        eax,dword ptr [ebx]
 0054CDB0    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CDB3    mov        esi,dword ptr [eax]
 0054CDB5    call       dword ptr [esi+28]
 0054CDB8    xor        edx,edx
 0054CDBA    push       ebp
 0054CDBB    push       54CDE6
 0054CDC0    push       dword ptr fs:[edx]
 0054CDC3    mov        dword ptr fs:[edx],esp
 0054CDC6    push       0
 0054CDC8    mov        edx,dword ptr [ebp-8]
 0054CDCB    push       edx
 0054CDCC    mov        edx,dword ptr [ebx]
 0054CDCE    mov        edx,dword ptr [edx+44]; TZOracleConnection.?f44:dword
 0054CDD1    mov        ecx,dword ptr [ebx]
 0054CDD3    mov        ecx,dword ptr [ecx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CDD6    xchg       eax,ecx
 0054CDD7    call       00547B30
 0054CDDC    xor        eax,eax
 0054CDDE    pop        edx
 0054CDDF    pop        ecx
 0054CDE0    pop        ecx
 0054CDE1    mov        dword ptr fs:[eax],edx
>0054CDE4    jmp        0054CDFC
<0054CDE6    jmp        @HandleAnyException
 0054CDEB    push       ebp
 0054CDEC    call       0054CC3C
 0054CDF1    pop        ecx
 0054CDF2    call       @RaiseAgain
 0054CDF7    call       @DoneExcept
 0054CDFC    mov        eax,dword ptr [ebx]
 0054CDFE    mov        eax,dword ptr [eax+48]; TZOracleConnection.?f48:dword
 0054CE01    push       eax
 0054CE02    push       0
 0054CE04    push       6
 0054CE06    mov        eax,dword ptr [ebx]
 0054CE08    mov        eax,dword ptr [eax+44]; TZOracleConnection.?f44:dword
 0054CE0B    push       eax
 0054CE0C    mov        eax,dword ptr [ebx]
 0054CE0E    mov        edx,dword ptr [eax+40]; TZOracleConnection.?f40:dword
 0054CE11    mov        eax,dword ptr [ebx]
 0054CE13    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CE16    mov        ecx,3
 0054CE1B    mov        esi,dword ptr [eax]
 0054CE1D    call       dword ptr [esi+2C]
 0054CE20    push       9
 0054CE22    push       0
 0054CE24    push       0
 0054CE26    mov        eax,dword ptr [ebx]
 0054CE28    lea        ecx,[eax+4C]; TZOracleConnection.?f4C:dword
 0054CE2B    mov        eax,dword ptr [ebx]
 0054CE2D    mov        edx,dword ptr [eax+3C]; TZOracleConnection.?f3C:dword
 0054CE30    mov        eax,dword ptr [ebx]
 0054CE32    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CE35    mov        esi,dword ptr [eax]
 0054CE37    call       dword ptr [esi+24]
 0054CE3A    mov        eax,dword ptr [ebx]
 0054CE3C    mov        eax,dword ptr [eax+1C]; TZOracleConnection.?f1C:String
 0054CE3F    call       @LStrToPChar
 0054CE44    push       eax
 0054CE45    mov        eax,dword ptr [ebx]
 0054CE47    mov        eax,dword ptr [eax+1C]; TZOracleConnection.?f1C:String
 0054CE4A    call       @LStrLen
 0054CE4F    push       eax
 0054CE50    push       16
 0054CE52    mov        eax,dword ptr [ebx]
 0054CE54    mov        eax,dword ptr [eax+44]; TZOracleConnection.?f44:dword
 0054CE57    push       eax
 0054CE58    mov        eax,dword ptr [ebx]
 0054CE5A    mov        edx,dword ptr [eax+4C]; TZOracleConnection.?f4C:dword
 0054CE5D    mov        eax,dword ptr [ebx]
 0054CE5F    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CE62    mov        ecx,9
 0054CE67    mov        esi,dword ptr [eax]
 0054CE69    call       dword ptr [esi+2C]
 0054CE6C    mov        eax,dword ptr [ebx]
 0054CE6E    mov        eax,dword ptr [eax+20]; TZOracleConnection.?f20:String
 0054CE71    call       @LStrToPChar
 0054CE76    push       eax
 0054CE77    mov        eax,dword ptr [ebx]
 0054CE79    mov        eax,dword ptr [eax+20]; TZOracleConnection.?f20:String
 0054CE7C    call       @LStrLen
 0054CE81    push       eax
 0054CE82    push       17
 0054CE84    mov        eax,dword ptr [ebx]
 0054CE86    mov        eax,dword ptr [eax+44]; TZOracleConnection.?f44:dword
 0054CE89    push       eax
 0054CE8A    mov        eax,dword ptr [ebx]
 0054CE8C    mov        edx,dword ptr [eax+4C]; TZOracleConnection.?f4C:dword
 0054CE8F    mov        eax,dword ptr [ebx]
 0054CE91    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CE94    mov        ecx,9
 0054CE99    mov        esi,dword ptr [eax]
 0054CE9B    call       dword ptr [esi+2C]
 0054CE9E    mov        eax,dword ptr [ebx]
 0054CEA0    mov        eax,dword ptr [eax+4C]; TZOracleConnection.?f4C:dword
 0054CEA3    push       eax
 0054CEA4    push       1
 0054CEA6    push       0
 0054CEA8    mov        eax,dword ptr [ebx]
 0054CEAA    mov        ecx,dword ptr [eax+44]; TZOracleConnection.?f44:dword
 0054CEAD    mov        eax,dword ptr [ebx]
 0054CEAF    mov        edx,dword ptr [eax+40]; TZOracleConnection.?f40:dword
 0054CEB2    mov        eax,dword ptr [ebx]
 0054CEB4    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CEB7    mov        esi,dword ptr [eax]
 0054CEB9    call       dword ptr [esi+30]
 0054CEBC    xor        edx,edx
 0054CEBE    push       ebp
 0054CEBF    push       54CEEA
 0054CEC4    push       dword ptr fs:[edx]
 0054CEC7    mov        dword ptr fs:[edx],esp
 0054CECA    push       0
 0054CECC    mov        edx,dword ptr [ebp-8]
 0054CECF    push       edx
 0054CED0    mov        edx,dword ptr [ebx]
 0054CED2    mov        edx,dword ptr [edx+44]; TZOracleConnection.?f44:dword
 0054CED5    mov        ecx,dword ptr [ebx]
 0054CED7    mov        ecx,dword ptr [ecx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CEDA    xchg       eax,ecx
 0054CEDB    call       00547B30
 0054CEE0    xor        eax,eax
 0054CEE2    pop        edx
 0054CEE3    pop        ecx
 0054CEE4    pop        ecx
 0054CEE5    mov        dword ptr fs:[eax],edx
>0054CEE8    jmp        0054CF00
<0054CEEA    jmp        @HandleAnyException
 0054CEEF    push       ebp
 0054CEF0    call       0054CC3C
 0054CEF5    pop        ecx
 0054CEF6    call       @RaiseAgain
 0054CEFB    call       @DoneExcept
 0054CF00    mov        eax,dword ptr [ebx]
 0054CF02    mov        eax,dword ptr [eax+4C]; TZOracleConnection.?f4C:dword
 0054CF05    push       eax
 0054CF06    push       0
 0054CF08    push       7
 0054CF0A    mov        eax,dword ptr [ebx]
 0054CF0C    mov        eax,dword ptr [eax+44]; TZOracleConnection.?f44:dword
 0054CF0F    push       eax
 0054CF10    mov        eax,dword ptr [ebx]
 0054CF12    mov        edx,dword ptr [eax+40]; TZOracleConnection.?f40:dword
 0054CF15    mov        eax,dword ptr [ebx]
 0054CF17    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CF1A    mov        ecx,3
 0054CF1F    mov        esi,dword ptr [eax]
 0054CF21    call       dword ptr [esi+2C]
 0054CF24    mov        eax,dword ptr [ebp-8]
 0054CF27    push       eax
 0054CF28    lea        edx,[ebp-1C]
 0054CF2B    mov        eax,dword ptr [ebx]
 0054CF2D    mov        eax,dword ptr [eax+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054CF30    mov        ecx,dword ptr [eax]
 0054CF32    call       dword ptr [ecx+0C]
 0054CF35    mov        ecx,dword ptr [ebp-1C]
 0054CF38    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054CF3D    mov        eax,dword ptr [eax]
 0054CF3F    xor        edx,edx
 0054CF41    mov        esi,dword ptr [eax]
 0054CF43    call       dword ptr [esi+3C]
 0054CF46    mov        eax,dword ptr [ebx]
 0054CF48    call       0054CFA8
 0054CF4D    mov        eax,dword ptr [ebx]
 0054CF4F    call       004DDF38
 0054CF54    xor        eax,eax
 0054CF56    pop        edx
 0054CF57    pop        ecx
 0054CF58    pop        ecx
 0054CF59    mov        dword ptr fs:[eax],edx
 0054CF5C    push       54CF79
 0054CF61    lea        eax,[ebp-1C]
 0054CF64    call       @LStrClr
 0054CF69    lea        eax,[ebp-8]
 0054CF6C    call       @LStrClr
 0054CF71    ret
<0054CF72    jmp        @HandleFinally
<0054CF77    jmp        0054CF61
 0054CF79    pop        edi
 0054CF7A    pop        esi
 0054CF7B    pop        ebx
 0054CF7C    mov        esp,ebp
 0054CF7E    pop        ebp
 0054CF7F    ret
*}
end;

//0054CFA8
//procedure sub_0054CFA8(?:TZOracleConnection);
//begin
{*
 0054CFA8    push       ebp
 0054CFA9    mov        ebp,esp
 0054CFAB    xor        ecx,ecx
 0054CFAD    push       ecx
 0054CFAE    push       ecx
 0054CFAF    push       ecx
 0054CFB0    push       ecx
 0054CFB1    push       ecx
 0054CFB2    push       ebx
 0054CFB3    push       esi
 0054CFB4    push       edi
 0054CFB5    mov        ebx,eax
 0054CFB7    xor        eax,eax
 0054CFB9    push       ebp
 0054CFBA    push       54D0DA
 0054CFBF    push       dword ptr fs:[eax]
 0054CFC2    mov        dword ptr fs:[eax],esp
 0054CFC5    mov        al,byte ptr [ebx+2A]; TZOracleConnection.?f2A:byte
 0054CFC8    test       al,al
>0054CFCA    jne        0054CFD8
 0054CFCC    mov        esi,54D0E8; 'SET TRANSACTION ISOLATION LEVEL DEFAULT'
 0054CFD1    xor        eax,eax
 0054CFD3    mov        dword ptr [ebp-4],eax
>0054CFD6    jmp        0054D02D
 0054CFD8    cmp        al,2
>0054CFDA    jne        0054CFE8
 0054CFDC    mov        esi,54D0E8; 'SET TRANSACTION ISOLATION LEVEL DEFAULT'
 0054CFE1    xor        eax,eax
 0054CFE3    mov        dword ptr [ebp-4],eax
>0054CFE6    jmp        0054D02D
 0054CFE8    cmp        al,3
>0054CFEA    jne        0054CFFA
 0054CFEC    mov        esi,54D110
 0054CFF1    mov        dword ptr [ebp-4],200
>0054CFF8    jmp        0054D02D
 0054CFFA    cmp        al,4
>0054CFFC    jne        0054D00C
 0054CFFE    mov        esi,54D13C
 0054D003    mov        dword ptr [ebp-4],400
>0054D00A    jmp        0054D02D
 0054D00C    lea        edx,[ebp-8]
 0054D00F    mov        eax,[0061BD50]; ^#122.sResString48:TResStringRec
 0054D014    call       LoadResString
 0054D019    mov        ecx,dword ptr [ebp-8]
 0054D01C    mov        dl,1
 0054D01E    mov        eax,[004C6D20]; EZSQLException
 0054D023    call       EZSQLException.Create; EZSQLException.Create
 0054D028    call       @RaiseExcept
 0054D02D    xor        eax,eax
 0054D02F    mov        dword ptr [ebx+50],eax; TZOracleConnection.?f50:dword
 0054D032    push       0A
 0054D034    push       0
 0054D036    push       0
 0054D038    lea        ecx,[ebx+50]; TZOracleConnection.?f50:dword
 0054D03B    mov        edx,dword ptr [ebx+3C]; TZOracleConnection.?f3C:dword
 0054D03E    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D041    mov        edi,dword ptr [eax]
 0054D043    call       dword ptr [edi+24]
 0054D046    mov        eax,dword ptr [ebx+50]; TZOracleConnection.?f50:dword
 0054D049    push       eax
 0054D04A    push       0
 0054D04C    push       8
 0054D04E    mov        eax,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D051    push       eax
 0054D052    mov        ecx,3
 0054D057    mov        edx,dword ptr [ebx+40]; TZOracleConnection.?f40:dword
 0054D05A    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D05D    mov        edi,dword ptr [eax]
 0054D05F    call       dword ptr [edi+2C]
 0054D062    push       0
 0054D064    mov        eax,dword ptr [ebp-4]
 0054D067    push       eax
 0054D068    mov        ecx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D06B    mov        edx,dword ptr [ebx+40]; TZOracleConnection.?f40:dword
 0054D06E    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D071    mov        edi,dword ptr [eax]
 0054D073    call       dword ptr [edi+6C]
 0054D076    mov        edi,eax
 0054D078    push       3
 0054D07A    lea        eax,[ebp-0C]
 0054D07D    mov        edx,esi
 0054D07F    call       @LStrFromPChar
 0054D084    mov        eax,dword ptr [ebp-0C]
 0054D087    push       eax
 0054D088    mov        ecx,edi
 0054D08A    mov        edx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D08D    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D090    call       00547B30
 0054D095    lea        eax,[ebp-10]
 0054D098    mov        edx,esi
 0054D09A    call       @LStrFromPChar
 0054D09F    mov        eax,dword ptr [ebp-10]
 0054D0A2    push       eax
 0054D0A3    lea        edx,[ebp-14]
 0054D0A6    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D0A9    mov        ecx,dword ptr [eax]
 0054D0AB    call       dword ptr [ecx+0C]
 0054D0AE    mov        ecx,dword ptr [ebp-14]
 0054D0B1    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054D0B6    mov        eax,dword ptr [eax]
 0054D0B8    mov        dl,3
 0054D0BA    mov        ebx,dword ptr [eax]
 0054D0BC    call       dword ptr [ebx+3C]
 0054D0BF    xor        eax,eax
 0054D0C1    pop        edx
 0054D0C2    pop        ecx
 0054D0C3    pop        ecx
 0054D0C4    mov        dword ptr fs:[eax],edx
 0054D0C7    push       54D0E1
 0054D0CC    lea        eax,[ebp-14]
 0054D0CF    mov        edx,4
 0054D0D4    call       @LStrArrayClr
 0054D0D9    ret
<0054D0DA    jmp        @HandleFinally
<0054D0DF    jmp        0054D0CC
 0054D0E1    pop        edi
 0054D0E2    pop        esi
 0054D0E3    pop        ebx
 0054D0E4    mov        esp,ebp
 0054D0E6    pop        ebp
 0054D0E7    ret
*}
//end;

//0054D16C
//procedure sub_0054D16C(?:?; ?:?);
//begin
{*
 0054D16C    push       ebp
 0054D16D    mov        ebp,esp
 0054D16F    push       ebx
 0054D170    push       esi
 0054D171    push       edi
 0054D172    mov        edi,ecx
 0054D174    mov        esi,edx
 0054D176    mov        ebx,eax
 0054D178    mov        eax,ebx
 0054D17A    mov        edx,dword ptr [eax]
 0054D17C    call       dword ptr [edx+44]; TZOracleConnection.sub_004DE1AC
 0054D17F    test       al,al
>0054D181    je         0054D18A
 0054D183    mov        eax,ebx
 0054D185    mov        edx,dword ptr [eax]
 0054D187    call       dword ptr [edx+3C]; TZOracleConnection.sub_0054CC9C
 0054D18A    mov        eax,ebx
 0054D18C    test       eax,eax
>0054D18E    je         0054D193
 0054D190    sub        eax,0FFFFFFD0
 0054D193    push       eax
 0054D194    push       esi
 0054D195    mov        ecx,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D198    mov        dl,1
 0054D19A    mov        eax,[005484E0]; TZOracleStatement
 0054D19F    call       TZOracleStatement.Create; TZOracleStatement.Create
 0054D1A4    mov        edx,eax
 0054D1A6    test       edx,edx
>0054D1A8    je         0054D1AD
 0054D1AA    sub        edx,0FFFFFFBC
 0054D1AD    mov        eax,edi
 0054D1AF    call       @IntfCopy
 0054D1B4    pop        edi
 0054D1B5    pop        esi
 0054D1B6    pop        ebx
 0054D1B7    pop        ebp
 0054D1B8    ret
*}
//end;

//0054D1BC
//procedure sub_0054D1BC(?:?; ?:?; ?:?);
//begin
{*
 0054D1BC    push       ebp
 0054D1BD    mov        ebp,esp
 0054D1BF    push       ebx
 0054D1C0    push       esi
 0054D1C1    push       edi
 0054D1C2    mov        edi,ecx
 0054D1C4    mov        esi,edx
 0054D1C6    mov        ebx,eax
 0054D1C8    mov        eax,ebx
 0054D1CA    mov        edx,dword ptr [eax]
 0054D1CC    call       dword ptr [edx+44]; TZOracleConnection.sub_004DE1AC
 0054D1CF    test       al,al
>0054D1D1    je         0054D1DA
 0054D1D3    mov        eax,ebx
 0054D1D5    mov        edx,dword ptr [eax]
 0054D1D7    call       dword ptr [edx+3C]; TZOracleConnection.sub_0054CC9C
 0054D1DA    mov        eax,ebx
 0054D1DC    test       eax,eax
>0054D1DE    je         0054D1E3
 0054D1E0    sub        eax,0FFFFFFD0
 0054D1E3    push       eax
 0054D1E4    push       esi
 0054D1E5    push       edi
 0054D1E6    mov        ecx,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D1E9    mov        dl,1
 0054D1EB    mov        eax,[005485C8]; TZOraclePreparedStatement
 0054D1F0    call       TZOraclePreparedStatement.Create; TZOraclePreparedStatement.Create
 0054D1F5    mov        edx,eax
 0054D1F7    test       edx,edx
>0054D1F9    je         0054D1FE
 0054D1FB    sub        edx,0FFFFFFA4
 0054D1FE    mov        eax,dword ptr [ebp+8]
 0054D201    call       @IntfCopy
 0054D206    pop        edi
 0054D207    pop        esi
 0054D208    pop        ebx
 0054D209    pop        ebp
 0054D20A    ret        4
*}
//end;

//0054D210
procedure sub_0054D210;
begin
{*
 0054D210    push       ebp
 0054D211    mov        ebp,esp
 0054D213    push       0
 0054D215    push       0
 0054D217    push       0
 0054D219    push       ebx
 0054D21A    push       esi
 0054D21B    push       edi
 0054D21C    mov        ebx,eax
 0054D21E    xor        eax,eax
 0054D220    push       ebp
 0054D221    push       54D2AB
 0054D226    push       dword ptr fs:[eax]
 0054D229    mov        dword ptr fs:[eax],esp
 0054D22C    cmp        byte ptr [ebx+2B],0; TZOracleConnection.?f2B:byte
>0054D230    jne        0054D290
 0054D232    mov        esi,54D2BC; 'COMMIT'
 0054D237    push       0
 0054D239    mov        ecx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D23C    mov        edx,dword ptr [ebx+40]; TZOracleConnection.?f40:dword
 0054D23F    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D242    mov        edi,dword ptr [eax]
 0054D244    call       dword ptr [edi+74]
 0054D247    mov        edi,eax
 0054D249    push       3
 0054D24B    lea        eax,[ebp-4]
 0054D24E    mov        edx,esi
 0054D250    call       @LStrFromPChar
 0054D255    mov        eax,dword ptr [ebp-4]
 0054D258    push       eax
 0054D259    mov        ecx,edi
 0054D25B    mov        edx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D25E    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D261    call       00547B30
 0054D266    lea        eax,[ebp-8]
 0054D269    mov        edx,esi
 0054D26B    call       @LStrFromPChar
 0054D270    mov        eax,dword ptr [ebp-8]
 0054D273    push       eax
 0054D274    lea        edx,[ebp-0C]
 0054D277    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D27A    mov        ecx,dword ptr [eax]
 0054D27C    call       dword ptr [ecx+0C]
 0054D27F    mov        ecx,dword ptr [ebp-0C]
 0054D282    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054D287    mov        eax,dword ptr [eax]
 0054D289    mov        dl,3
 0054D28B    mov        ebx,dword ptr [eax]
 0054D28D    call       dword ptr [ebx+3C]
 0054D290    xor        eax,eax
 0054D292    pop        edx
 0054D293    pop        ecx
 0054D294    pop        ecx
 0054D295    mov        dword ptr fs:[eax],edx
 0054D298    push       54D2B2
 0054D29D    lea        eax,[ebp-0C]
 0054D2A0    mov        edx,3
 0054D2A5    call       @LStrArrayClr
 0054D2AA    ret
<0054D2AB    jmp        @HandleFinally
<0054D2B0    jmp        0054D29D
 0054D2B2    pop        edi
 0054D2B3    pop        esi
 0054D2B4    pop        ebx
 0054D2B5    mov        esp,ebp
 0054D2B7    pop        ebp
 0054D2B8    ret
*}
end;

//0054D2C4
procedure sub_0054D2C4;
begin
{*
 0054D2C4    push       ebp
 0054D2C5    mov        ebp,esp
 0054D2C7    push       0
 0054D2C9    push       0
 0054D2CB    push       0
 0054D2CD    push       ebx
 0054D2CE    push       esi
 0054D2CF    push       edi
 0054D2D0    mov        ebx,eax
 0054D2D2    xor        eax,eax
 0054D2D4    push       ebp
 0054D2D5    push       54D35F
 0054D2DA    push       dword ptr fs:[eax]
 0054D2DD    mov        dword ptr fs:[eax],esp
 0054D2E0    cmp        byte ptr [ebx+2B],0; TZOracleConnection.?f2B:byte
>0054D2E4    jne        0054D344
 0054D2E6    mov        esi,54D370; 'ROLLBACK'
 0054D2EB    push       0
 0054D2ED    mov        ecx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D2F0    mov        edx,dword ptr [ebx+40]; TZOracleConnection.?f40:dword
 0054D2F3    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D2F6    mov        edi,dword ptr [eax]
 0054D2F8    call       dword ptr [edi+70]
 0054D2FB    mov        edi,eax
 0054D2FD    push       3
 0054D2FF    lea        eax,[ebp-4]
 0054D302    mov        edx,esi
 0054D304    call       @LStrFromPChar
 0054D309    mov        eax,dword ptr [ebp-4]
 0054D30C    push       eax
 0054D30D    mov        ecx,edi
 0054D30F    mov        edx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D312    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D315    call       00547B30
 0054D31A    lea        eax,[ebp-8]
 0054D31D    mov        edx,esi
 0054D31F    call       @LStrFromPChar
 0054D324    mov        eax,dword ptr [ebp-8]
 0054D327    push       eax
 0054D328    lea        edx,[ebp-0C]
 0054D32B    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D32E    mov        ecx,dword ptr [eax]
 0054D330    call       dword ptr [ecx+0C]
 0054D333    mov        ecx,dword ptr [ebp-0C]
 0054D336    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054D33B    mov        eax,dword ptr [eax]
 0054D33D    mov        dl,3
 0054D33F    mov        ebx,dword ptr [eax]
 0054D341    call       dword ptr [ebx+3C]
 0054D344    xor        eax,eax
 0054D346    pop        edx
 0054D347    pop        ecx
 0054D348    pop        ecx
 0054D349    mov        dword ptr fs:[eax],edx
 0054D34C    push       54D366
 0054D351    lea        eax,[ebp-0C]
 0054D354    mov        edx,3
 0054D359    call       @LStrArrayClr
 0054D35E    ret
<0054D35F    jmp        @HandleFinally
<0054D364    jmp        0054D351
 0054D366    pop        edi
 0054D367    pop        esi
 0054D368    pop        ebx
 0054D369    mov        esp,ebp
 0054D36B    pop        ebp
 0054D36C    ret
*}
end;

//0054D37C
procedure sub_0054D37C;
begin
{*
 0054D37C    push       ebp
 0054D37D    mov        ebp,esp
 0054D37F    add        esp,0FFFFFFF0
 0054D382    push       ebx
 0054D383    push       esi
 0054D384    xor        edx,edx
 0054D386    mov        dword ptr [ebp-10],edx
 0054D389    mov        dword ptr [ebp-4],edx
 0054D38C    mov        ebx,eax
 0054D38E    xor        eax,eax
 0054D390    push       ebp
 0054D391    push       54D4DE
 0054D396    push       dword ptr fs:[eax]
 0054D399    mov        dword ptr fs:[eax],esp
 0054D39C    cmp        byte ptr [ebx+2B],0; TZOracleConnection.?f2B:byte
>0054D3A0    jne        0054D4B9
 0054D3A6    lea        eax,[ebp-4]
 0054D3A9    push       eax
 0054D3AA    mov        eax,dword ptr [ebx+18]; TZOracleConnection.?f18:String
 0054D3AD    mov        dword ptr [ebp-0C],eax
 0054D3B0    mov        byte ptr [ebp-8],0B
 0054D3B4    lea        edx,[ebp-0C]
 0054D3B7    xor        ecx,ecx
 0054D3B9    mov        eax,54D4F4; 'DISCONNECT FROM \"%s\"'
 0054D3BE    call       Format
 0054D3C3    push       0
 0054D3C5    mov        ecx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D3C8    mov        edx,dword ptr [ebx+40]; TZOracleConnection.?f40:dword
 0054D3CB    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D3CE    mov        esi,dword ptr [eax]
 0054D3D0    call       dword ptr [esi+70]
 0054D3D3    push       1
 0054D3D5    mov        edx,dword ptr [ebp-4]
 0054D3D8    push       edx
 0054D3D9    mov        ecx,eax
 0054D3DB    mov        edx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D3DE    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D3E1    call       00547B30
 0054D3E6    mov        ecx,0A
 0054D3EB    mov        edx,dword ptr [ebx+50]; TZOracleConnection.?f50:dword
 0054D3EE    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D3F1    mov        esi,dword ptr [eax]
 0054D3F3    call       dword ptr [esi+3C]
 0054D3F6    xor        eax,eax
 0054D3F8    mov        dword ptr [ebx+50],eax; TZOracleConnection.?f50:dword
 0054D3FB    mov        eax,dword ptr [ebx+4C]; TZOracleConnection.?f4C:dword
 0054D3FE    push       eax
 0054D3FF    push       0
 0054D401    mov        ecx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D404    mov        edx,dword ptr [ebx+40]; TZOracleConnection.?f40:dword
 0054D407    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D40A    mov        esi,dword ptr [eax]
 0054D40C    call       dword ptr [esi+34]
 0054D40F    push       1
 0054D411    mov        edx,dword ptr [ebp-4]
 0054D414    push       edx
 0054D415    mov        ecx,eax
 0054D417    mov        edx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D41A    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D41D    call       00547B30
 0054D422    push       0
 0054D424    mov        ecx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D427    mov        edx,dword ptr [ebx+48]; TZOracleConnection.?f48:dword
 0054D42A    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D42D    mov        esi,dword ptr [eax]
 0054D42F    call       dword ptr [esi+38]
 0054D432    push       1
 0054D434    mov        edx,dword ptr [ebp-4]
 0054D437    push       edx
 0054D438    mov        ecx,eax
 0054D43A    mov        edx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D43D    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D440    call       00547B30
 0054D445    mov        ecx,9
 0054D44A    mov        edx,dword ptr [ebx+4C]; TZOracleConnection.?f4C:dword
 0054D44D    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D450    mov        esi,dword ptr [eax]
 0054D452    call       dword ptr [esi+3C]
 0054D455    xor        eax,eax
 0054D457    mov        dword ptr [ebx+4C],eax; TZOracleConnection.?f4C:dword
 0054D45A    mov        ecx,3
 0054D45F    mov        edx,dword ptr [ebx+40]; TZOracleConnection.?f40:dword
 0054D462    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D465    mov        esi,dword ptr [eax]
 0054D467    call       dword ptr [esi+3C]
 0054D46A    xor        eax,eax
 0054D46C    mov        dword ptr [ebx+40],eax; TZOracleConnection.?f40:dword
 0054D46F    mov        ecx,8
 0054D474    mov        edx,dword ptr [ebx+48]; TZOracleConnection.?f48:dword
 0054D477    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D47A    mov        esi,dword ptr [eax]
 0054D47C    call       dword ptr [esi+3C]
 0054D47F    xor        eax,eax
 0054D481    mov        dword ptr [ebx+48],eax; TZOracleConnection.?f48:dword
 0054D484    mov        ecx,2
 0054D489    mov        edx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D48C    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D48F    mov        esi,dword ptr [eax]
 0054D491    call       dword ptr [esi+3C]
 0054D494    xor        eax,eax
 0054D496    mov        dword ptr [ebx+44],eax; TZOracleConnection.?f44:dword
 0054D499    mov        eax,dword ptr [ebp-4]
 0054D49C    push       eax
 0054D49D    lea        edx,[ebp-10]
 0054D4A0    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D4A3    mov        ecx,dword ptr [eax]
 0054D4A5    call       dword ptr [ecx+0C]
 0054D4A8    mov        ecx,dword ptr [ebp-10]
 0054D4AB    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054D4B0    mov        eax,dword ptr [eax]
 0054D4B2    mov        dl,1
 0054D4B4    mov        esi,dword ptr [eax]
 0054D4B6    call       dword ptr [esi+3C]
 0054D4B9    mov        eax,ebx
 0054D4BB    call       004DE1A4
 0054D4C0    xor        eax,eax
 0054D4C2    pop        edx
 0054D4C3    pop        ecx
 0054D4C4    pop        ecx
 0054D4C5    mov        dword ptr fs:[eax],edx
 0054D4C8    push       54D4E5
 0054D4CD    lea        eax,[ebp-10]
 0054D4D0    call       @LStrClr
 0054D4D5    lea        eax,[ebp-4]
 0054D4D8    call       @LStrClr
 0054D4DD    ret
<0054D4DE    jmp        @HandleFinally
<0054D4E3    jmp        0054D4CD
 0054D4E5    pop        esi
 0054D4E6    pop        ebx
 0054D4E7    mov        esp,ebp
 0054D4E9    pop        ebp
 0054D4EA    ret
*}
end;

//0054D50C
//procedure sub_0054D50C(?:?);
//begin
{*
 0054D50C    push       ebp
 0054D50D    mov        ebp,esp
 0054D50F    push       ebx
 0054D510    push       esi
 0054D511    mov        esi,edx
 0054D513    mov        ebx,eax
 0054D515    mov        eax,esi
 0054D517    mov        edx,dword ptr [ebx+34]; TZOracleConnection.?f34:String
 0054D51A    call       @LStrAsg
 0054D51F    pop        esi
 0054D520    pop        ebx
 0054D521    pop        ebp
 0054D522    ret
*}
//end;

//0054D524
//procedure sub_0054D524(?:?);
//begin
{*
 0054D524    push       ebp
 0054D525    mov        ebp,esp
 0054D527    push       ebx
 0054D528    push       esi
 0054D529    mov        esi,edx
 0054D52B    mov        ebx,eax
 0054D52D    lea        eax,[ebx+34]; TZOracleConnection.?f34:String
 0054D530    mov        edx,esi
 0054D532    call       @LStrAsg
 0054D537    pop        esi
 0054D538    pop        ebx
 0054D539    pop        ebp
 0054D53A    ret
*}
//end;

//0054D53C
//procedure sub_0054D53C(?:?);
//begin
{*
 0054D53C    push       ebp
 0054D53D    mov        ebp,esp
 0054D53F    push       0
 0054D541    push       0
 0054D543    push       0
 0054D545    push       ebx
 0054D546    push       esi
 0054D547    push       edi
 0054D548    mov        ebx,eax
 0054D54A    xor        eax,eax
 0054D54C    push       ebp
 0054D54D    push       54D603
 0054D552    push       dword ptr fs:[eax]
 0054D555    mov        dword ptr fs:[eax],esp
 0054D558    cmp        dl,byte ptr [ebx+2A]; TZOracleConnection.?f2A:byte
>0054D55B    je         0054D5E8
 0054D561    mov        eax,ebx
 0054D563    call       004DE224
 0054D568    cmp        byte ptr [ebx+2B],0; TZOracleConnection.?f2B:byte
>0054D56C    jne        0054D5E8
 0054D56E    mov        esi,54D614; 'END TRANSACTION'
 0054D573    push       0
 0054D575    mov        ecx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D578    mov        edx,dword ptr [ebx+40]; TZOracleConnection.?f40:dword
 0054D57B    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D57E    mov        edi,dword ptr [eax]
 0054D580    call       dword ptr [edi+70]
 0054D583    mov        edi,eax
 0054D585    push       3
 0054D587    lea        eax,[ebp-4]
 0054D58A    mov        edx,esi
 0054D58C    call       @LStrFromPChar
 0054D591    mov        eax,dword ptr [ebp-4]
 0054D594    push       eax
 0054D595    mov        ecx,edi
 0054D597    mov        edx,dword ptr [ebx+44]; TZOracleConnection.?f44:dword
 0054D59A    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D59D    call       00547B30
 0054D5A2    mov        ecx,0A
 0054D5A7    mov        edx,dword ptr [ebx+50]; TZOracleConnection.?f50:dword
 0054D5AA    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D5AD    mov        edi,dword ptr [eax]
 0054D5AF    call       dword ptr [edi+3C]
 0054D5B2    xor        eax,eax
 0054D5B4    mov        dword ptr [ebx+50],eax; TZOracleConnection.?f50:dword
 0054D5B7    lea        eax,[ebp-8]
 0054D5BA    mov        edx,esi
 0054D5BC    call       @LStrFromPChar
 0054D5C1    mov        eax,dword ptr [ebp-8]
 0054D5C4    push       eax
 0054D5C5    lea        edx,[ebp-0C]
 0054D5C8    mov        eax,dword ptr [ebx+38]; TZOracleConnection.?f38:IZOraclePlainDriver
 0054D5CB    mov        ecx,dword ptr [eax]
 0054D5CD    call       dword ptr [ecx+0C]
 0054D5D0    mov        ecx,dword ptr [ebp-0C]
 0054D5D3    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054D5D8    mov        eax,dword ptr [eax]
 0054D5DA    mov        dl,3
 0054D5DC    mov        esi,dword ptr [eax]
 0054D5DE    call       dword ptr [esi+3C]
 0054D5E1    mov        eax,ebx
 0054D5E3    call       0054CFA8
 0054D5E8    xor        eax,eax
 0054D5EA    pop        edx
 0054D5EB    pop        ecx
 0054D5EC    pop        ecx
 0054D5ED    mov        dword ptr fs:[eax],edx
 0054D5F0    push       54D60A
 0054D5F5    lea        eax,[ebp-0C]
 0054D5F8    mov        edx,3
 0054D5FD    call       @LStrArrayClr
 0054D602    ret
<0054D603    jmp        @HandleFinally
<0054D608    jmp        0054D5F5
 0054D60A    pop        edi
 0054D60B    pop        esi
 0054D60C    pop        ebx
 0054D60D    mov        esp,ebp
 0054D60F    pop        ebp
 0054D610    ret
*}
//end;

//0054D624
//procedure sub_0054D624(?:?; ?:?; ?:?);
//begin
{*
 0054D624    push       ebp
 0054D625    mov        ebp,esp
 0054D627    push       ebx
 0054D628    push       esi
 0054D629    push       edi
 0054D62A    mov        edi,ecx
 0054D62C    mov        esi,edx
 0054D62E    mov        ebx,eax
 0054D630    push       esi
 0054D631    push       edi
 0054D632    mov        ecx,ebx
 0054D634    test       ecx,ecx
>0054D636    je         0054D63B
 0054D638    sub        ecx,0FFFFFFD0
 0054D63B    mov        dl,1
 0054D63D    mov        eax,[0054C690]; TZOracleSequence
 0054D642    call       TZPostgreSQLSequence.Create; TZOracleSequence.Create
 0054D647    mov        edx,eax
 0054D649    test       edx,edx
>0054D64B    je         0054D650
 0054D64D    sub        edx,0FFFFFFE8
 0054D650    mov        eax,dword ptr [ebp+8]
 0054D653    call       @IntfCopy
 0054D658    pop        edi
 0054D659    pop        esi
 0054D65A    pop        ebx
 0054D65B    pop        ebp
 0054D65C    ret        4
*}
//end;

//0054D690
procedure sub_0054D690;
begin
{*
 0054D690    push       ebp
 0054D691    mov        ebp,esp
 0054D693    add        esp,0FFFFFFE0
 0054D696    push       ebx
 0054D697    push       esi
 0054D698    xor        edx,edx
 0054D69A    mov        dword ptr [ebp-14],edx
 0054D69D    mov        dword ptr [ebp-20],edx
 0054D6A0    mov        dword ptr [ebp-0C],edx
 0054D6A3    mov        dword ptr [ebp-10],edx
 0054D6A6    mov        ebx,eax
 0054D6A8    xor        eax,eax
 0054D6AA    push       ebp
 0054D6AB    push       54D761
 0054D6B0    push       dword ptr fs:[eax]
 0054D6B3    mov        dword ptr fs:[eax],esp
 0054D6B6    lea        edx,[ebp-0C]
 0054D6B9    mov        eax,dword ptr [ebx+14]; TZOracleSequence.?f14:IZConnection
 0054D6BC    mov        ecx,dword ptr [eax]
 0054D6BE    call       dword ptr [ecx+0C]
 0054D6C1    lea        eax,[ebp-14]
 0054D6C4    push       eax
 0054D6C5    lea        edx,[ebp-20]
 0054D6C8    mov        eax,ebx
 0054D6CA    mov        ecx,dword ptr [eax]
 0054D6CC    call       dword ptr [ecx]; TZOracleSequence.sub_004DE2E4
 0054D6CE    mov        eax,dword ptr [ebp-20]
 0054D6D1    mov        dword ptr [ebp-1C],eax
 0054D6D4    mov        byte ptr [ebp-18],0B
 0054D6D8    lea        edx,[ebp-1C]
 0054D6DB    xor        ecx,ecx
 0054D6DD    mov        eax,54D77C; 'SELECT %s.CURRVAL FROM DUAL'
 0054D6E2    call       Format
 0054D6E7    mov        edx,dword ptr [ebp-14]
 0054D6EA    lea        ecx,[ebp-10]
 0054D6ED    mov        eax,dword ptr [ebp-0C]
 0054D6F0    mov        esi,dword ptr [eax]
 0054D6F2    call       dword ptr [esi+0C]
 0054D6F5    mov        eax,dword ptr [ebp-10]
 0054D6F8    mov        edx,dword ptr [eax]
 0054D6FA    call       dword ptr [edx+0C]
 0054D6FD    test       al,al
>0054D6FF    je         0054D716
 0054D701    mov        edx,1
 0054D706    mov        eax,dword ptr [ebp-10]
 0054D709    mov        ecx,dword ptr [eax]
 0054D70B    call       dword ptr [ecx+38]
 0054D70E    mov        dword ptr [ebp-8],eax
 0054D711    mov        dword ptr [ebp-4],edx
>0054D714    jmp        0054D723
 0054D716    mov        eax,ebx
 0054D718    call       004DE300
 0054D71D    mov        dword ptr [ebp-8],eax
 0054D720    mov        dword ptr [ebp-4],edx
 0054D723    mov        eax,dword ptr [ebp-10]
 0054D726    mov        edx,dword ptr [eax]
 0054D728    call       dword ptr [edx+10]
 0054D72B    mov        eax,dword ptr [ebp-0C]
 0054D72E    mov        edx,dword ptr [eax]
 0054D730    call       dword ptr [edx+14]
 0054D733    xor        eax,eax
 0054D735    pop        edx
 0054D736    pop        ecx
 0054D737    pop        ecx
 0054D738    mov        dword ptr fs:[eax],edx
 0054D73B    push       54D768
 0054D740    lea        eax,[ebp-20]
 0054D743    call       @LStrClr
 0054D748    lea        eax,[ebp-14]
 0054D74B    call       @LStrClr
 0054D750    lea        eax,[ebp-10]
 0054D753    call       @IntfClear
 0054D758    lea        eax,[ebp-0C]
 0054D75B    call       @IntfClear
 0054D760    ret
<0054D761    jmp        @HandleFinally
<0054D766    jmp        0054D740
 0054D768    mov        eax,dword ptr [ebp-8]
 0054D76B    mov        edx,dword ptr [ebp-4]
 0054D76E    pop        esi
 0054D76F    pop        ebx
 0054D770    mov        esp,ebp
 0054D772    pop        ebp
 0054D773    ret
*}
end;

//0054D798
//procedure sub_0054D798(?:?);
//begin
{*
 0054D798    push       ebp
 0054D799    mov        ebp,esp
 0054D79B    add        esp,0FFFFFFF4
 0054D79E    push       ebx
 0054D79F    push       esi
 0054D7A0    xor        ecx,ecx
 0054D7A2    mov        dword ptr [ebp-0C],ecx
 0054D7A5    mov        esi,edx
 0054D7A7    mov        ebx,eax
 0054D7A9    xor        eax,eax
 0054D7AB    push       ebp
 0054D7AC    push       54D7F0
 0054D7B1    push       dword ptr fs:[eax]
 0054D7B4    mov        dword ptr fs:[eax],esp
 0054D7B7    push       esi
 0054D7B8    lea        edx,[ebp-0C]
 0054D7BB    mov        eax,ebx
 0054D7BD    mov        ecx,dword ptr [eax]
 0054D7BF    call       dword ptr [ecx]; TZOracleSequence.sub_004DE2E4
 0054D7C1    mov        eax,dword ptr [ebp-0C]
 0054D7C4    mov        dword ptr [ebp-8],eax
 0054D7C7    mov        byte ptr [ebp-4],0B
 0054D7CB    lea        edx,[ebp-8]
 0054D7CE    xor        ecx,ecx
 0054D7D0    mov        eax,54D808; 'SELECT %s.CURRVAL FROM DUAL'
 0054D7D5    call       Format
 0054D7DA    xor        eax,eax
 0054D7DC    pop        edx
 0054D7DD    pop        ecx
 0054D7DE    pop        ecx
 0054D7DF    mov        dword ptr fs:[eax],edx
 0054D7E2    push       54D7F7
 0054D7E7    lea        eax,[ebp-0C]
 0054D7EA    call       @LStrClr
 0054D7EF    ret
<0054D7F0    jmp        @HandleFinally
<0054D7F5    jmp        0054D7E7
 0054D7F7    pop        esi
 0054D7F8    pop        ebx
 0054D7F9    mov        esp,ebp
 0054D7FB    pop        ebp
 0054D7FC    ret
*}
//end;

//0054D824
procedure sub_0054D824;
begin
{*
 0054D824    push       ebp
 0054D825    mov        ebp,esp
 0054D827    add        esp,0FFFFFFE0
 0054D82A    push       ebx
 0054D82B    push       esi
 0054D82C    xor        edx,edx
 0054D82E    mov        dword ptr [ebp-14],edx
 0054D831    mov        dword ptr [ebp-20],edx
 0054D834    mov        dword ptr [ebp-0C],edx
 0054D837    mov        dword ptr [ebp-10],edx
 0054D83A    mov        ebx,eax
 0054D83C    xor        eax,eax
 0054D83E    push       ebp
 0054D83F    push       54D8F5
 0054D844    push       dword ptr fs:[eax]
 0054D847    mov        dword ptr fs:[eax],esp
 0054D84A    lea        edx,[ebp-0C]
 0054D84D    mov        eax,dword ptr [ebx+14]; TZOracleSequence.?f14:IZConnection
 0054D850    mov        ecx,dword ptr [eax]
 0054D852    call       dword ptr [ecx+0C]
 0054D855    lea        eax,[ebp-14]
 0054D858    push       eax
 0054D859    lea        edx,[ebp-20]
 0054D85C    mov        eax,ebx
 0054D85E    mov        ecx,dword ptr [eax]
 0054D860    call       dword ptr [ecx]; TZOracleSequence.sub_004DE2E4
 0054D862    mov        eax,dword ptr [ebp-20]
 0054D865    mov        dword ptr [ebp-1C],eax
 0054D868    mov        byte ptr [ebp-18],0B
 0054D86C    lea        edx,[ebp-1C]
 0054D86F    xor        ecx,ecx
 0054D871    mov        eax,54D910; 'SELECT %s.NEXTVAL FROM DUAL'
 0054D876    call       Format
 0054D87B    mov        edx,dword ptr [ebp-14]
 0054D87E    lea        ecx,[ebp-10]
 0054D881    mov        eax,dword ptr [ebp-0C]
 0054D884    mov        esi,dword ptr [eax]
 0054D886    call       dword ptr [esi+0C]
 0054D889    mov        eax,dword ptr [ebp-10]
 0054D88C    mov        edx,dword ptr [eax]
 0054D88E    call       dword ptr [edx+0C]
 0054D891    test       al,al
>0054D893    je         0054D8AA
 0054D895    mov        edx,1
 0054D89A    mov        eax,dword ptr [ebp-10]
 0054D89D    mov        ecx,dword ptr [eax]
 0054D89F    call       dword ptr [ecx+38]
 0054D8A2    mov        dword ptr [ebp-8],eax
 0054D8A5    mov        dword ptr [ebp-4],edx
>0054D8A8    jmp        0054D8B7
 0054D8AA    mov        eax,ebx
 0054D8AC    call       004DE31C
 0054D8B1    mov        dword ptr [ebp-8],eax
 0054D8B4    mov        dword ptr [ebp-4],edx
 0054D8B7    mov        eax,dword ptr [ebp-10]
 0054D8BA    mov        edx,dword ptr [eax]
 0054D8BC    call       dword ptr [edx+10]
 0054D8BF    mov        eax,dword ptr [ebp-0C]
 0054D8C2    mov        edx,dword ptr [eax]
 0054D8C4    call       dword ptr [edx+14]
 0054D8C7    xor        eax,eax
 0054D8C9    pop        edx
 0054D8CA    pop        ecx
 0054D8CB    pop        ecx
 0054D8CC    mov        dword ptr fs:[eax],edx
 0054D8CF    push       54D8FC
 0054D8D4    lea        eax,[ebp-20]
 0054D8D7    call       @LStrClr
 0054D8DC    lea        eax,[ebp-14]
 0054D8DF    call       @LStrClr
 0054D8E4    lea        eax,[ebp-10]
 0054D8E7    call       @IntfClear
 0054D8EC    lea        eax,[ebp-0C]
 0054D8EF    call       @IntfClear
 0054D8F4    ret
<0054D8F5    jmp        @HandleFinally
<0054D8FA    jmp        0054D8D4
 0054D8FC    mov        eax,dword ptr [ebp-8]
 0054D8FF    mov        edx,dword ptr [ebp-4]
 0054D902    pop        esi
 0054D903    pop        ebx
 0054D904    mov        esp,ebp
 0054D906    pop        ebp
 0054D907    ret
*}
end;

//0054D92C
//procedure sub_0054D92C(?:?);
//begin
{*
 0054D92C    push       ebp
 0054D92D    mov        ebp,esp
 0054D92F    add        esp,0FFFFFFF4
 0054D932    push       ebx
 0054D933    push       esi
 0054D934    xor        ecx,ecx
 0054D936    mov        dword ptr [ebp-0C],ecx
 0054D939    mov        esi,edx
 0054D93B    mov        ebx,eax
 0054D93D    xor        eax,eax
 0054D93F    push       ebp
 0054D940    push       54D984
 0054D945    push       dword ptr fs:[eax]
 0054D948    mov        dword ptr fs:[eax],esp
 0054D94B    push       esi
 0054D94C    lea        edx,[ebp-0C]
 0054D94F    mov        eax,ebx
 0054D951    mov        ecx,dword ptr [eax]
 0054D953    call       dword ptr [ecx]; TZOracleSequence.sub_004DE2E4
 0054D955    mov        eax,dword ptr [ebp-0C]
 0054D958    mov        dword ptr [ebp-8],eax
 0054D95B    mov        byte ptr [ebp-4],0B
 0054D95F    lea        edx,[ebp-8]
 0054D962    xor        ecx,ecx
 0054D964    mov        eax,54D99C; 'SELECT %s.NEXTVAL FROM DUAL'
 0054D969    call       Format
 0054D96E    xor        eax,eax
 0054D970    pop        edx
 0054D971    pop        ecx
 0054D972    pop        ecx
 0054D973    mov        dword ptr fs:[eax],edx
 0054D976    push       54D98B
 0054D97B    lea        eax,[ebp-0C]
 0054D97E    call       @LStrClr
 0054D983    ret
<0054D984    jmp        @HandleFinally
<0054D989    jmp        0054D97B
 0054D98B    pop        esi
 0054D98C    pop        ebx
 0054D98D    mov        esp,ebp
 0054D98F    pop        ebp
 0054D990    ret
*}
//end;

//0054D9B8
//procedure sub_0054D9B8(?:?; ?:?);
//begin
{*
 0054D9B8    push       ebp
 0054D9B9    mov        ebp,esp
 0054D9BB    push       0
 0054D9BD    push       0
 0054D9BF    push       ebx
 0054D9C0    push       esi
 0054D9C1    push       edi
 0054D9C2    mov        ebx,ecx
 0054D9C4    mov        edi,edx
 0054D9C6    mov        esi,eax
 0054D9C8    xor        eax,eax
 0054D9CA    push       ebp
 0054D9CB    push       54DA57
 0054D9D0    push       dword ptr fs:[eax]
 0054D9D3    mov        dword ptr fs:[eax],esp
 0054D9D6    mov        ecx,ebx
 0054D9D8    mov        edx,edi
 0054D9DA    mov        eax,esi
 0054D9DC    call       004CF1FC
 0054D9E1    cmp        dword ptr [ebx],0
>0054D9E4    je         0054DA3C
 0054D9E6    lea        edx,[ebp-4]
 0054D9E9    mov        eax,dword ptr [ebx]
 0054D9EB    call       UpperCase
 0054D9F0    mov        edx,dword ptr [ebp-4]
 0054D9F3    mov        eax,54DA70; 'FROM'
 0054D9F8    call       @LStrPos
 0054D9FD    mov        esi,eax
 0054D9FF    test       esi,esi
>0054DA01    jle        0054DA30
 0054DA03    lea        eax,[ebp-8]
 0054DA06    push       eax
 0054DA07    mov        ecx,esi
 0054DA09    add        ecx,3
>0054DA0C    jno        0054DA13
 0054DA0E    call       @IntOver
 0054DA13    mov        eax,dword ptr [ebx]
 0054DA15    mov        edx,1
 0054DA1A    call       @LStrCopy
 0054DA1F    mov        edx,dword ptr [ebp-8]
 0054DA22    mov        eax,ebx
 0054DA24    mov        ecx,54DA80; ' DUAL'
 0054DA29    call       @LStrCat3
>0054DA2E    jmp        0054DA3C
 0054DA30    mov        eax,ebx
 0054DA32    mov        edx,54DA90; ' FROM DUAL'
 0054DA37    call       @LStrCat
 0054DA3C    xor        eax,eax
 0054DA3E    pop        edx
 0054DA3F    pop        ecx
 0054DA40    pop        ecx
 0054DA41    mov        dword ptr fs:[eax],edx
 0054DA44    push       54DA5E
 0054DA49    lea        eax,[ebp-8]
 0054DA4C    mov        edx,2
 0054DA51    call       @LStrArrayClr
 0054DA56    ret
<0054DA57    jmp        @HandleFinally
<0054DA5C    jmp        0054DA49
 0054DA5E    pop        edi
 0054DA5F    pop        esi
 0054DA60    pop        ebx
 0054DA61    pop        ecx
 0054DA62    pop        ecx
 0054DA63    pop        ebp
 0054DA64    ret
*}
//end;

Initialization
//0054DAFC
{*
 0054DAFC    push       ebp
 0054DAFD    mov        ebp,esp
 0054DAFF    xor        eax,eax
 0054DB01    push       ebp
 0054DB02    push       54DB55
 0054DB07    push       dword ptr fs:[eax]
 0054DB0A    mov        dword ptr fs:[eax],esp
 0054DB0D    sub        dword ptr ds:[61ED1C],1
>0054DB14    jae        0054DB47
 0054DB16    mov        dl,1
 0054DB18    mov        eax,[0054C250]; TZOracleDriver
 0054DB1D    call       TZOracleDriver.Create; TZOracleDriver.Create
 0054DB22    mov        edx,eax
 0054DB24    test       edx,edx
>0054DB26    je         0054DB2B
 0054DB28    sub        edx,0FFFFFFEC
 0054DB2B    mov        eax,61ED18; gvar_0061ED18:IInterface
 0054DB30    call       @IntfCopy
 0054DB35    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054DB3A    mov        eax,dword ptr [eax]
 0054DB3C    mov        edx,dword ptr ds:[61ED18]; gvar_0061ED18:IInterface
 0054DB42    mov        ecx,dword ptr [eax]
 0054DB44    call       dword ptr [ecx+20]
 0054DB47    xor        eax,eax
 0054DB49    pop        edx
 0054DB4A    pop        ecx
 0054DB4B    pop        ecx
 0054DB4C    mov        dword ptr fs:[eax],edx
 0054DB4F    push       54DB5C
 0054DB54    ret
<0054DB55    jmp        @HandleFinally
<0054DB5A    jmp        0054DB54
 0054DB5C    pop        ebp
 0054DB5D    ret
*}
Finalization
//0054DA9C
{*
 0054DA9C    push       ebp
 0054DA9D    mov        ebp,esp
 0054DA9F    xor        eax,eax
 0054DAA1    push       ebp
 0054DAA2    push       54DAF3
 0054DAA7    push       dword ptr fs:[eax]
 0054DAAA    mov        dword ptr fs:[eax],esp
 0054DAAD    inc        dword ptr ds:[61ED1C]
>0054DAB3    jne        0054DAE5
 0054DAB5    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054DABA    cmp        dword ptr [eax],0
>0054DABD    je         0054DAD1
 0054DABF    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0054DAC4    mov        eax,dword ptr [eax]
 0054DAC6    mov        edx,dword ptr ds:[61ED18]; gvar_0061ED18:IInterface
 0054DACC    mov        ecx,dword ptr [eax]
 0054DACE    call       dword ptr [ecx+24]
 0054DAD1    mov        eax,61ED18; gvar_0061ED18:IInterface
 0054DAD6    call       @IntfClear
 0054DADB    mov        eax,61ED18; gvar_0061ED18:IInterface
 0054DAE0    call       @IntfClear
 0054DAE5    xor        eax,eax
 0054DAE7    pop        edx
 0054DAE8    pop        ecx
 0054DAE9    pop        ecx
 0054DAEA    mov        dword ptr fs:[eax],edx
 0054DAED    push       54DAFA
 0054DAF2    ret
<0054DAF3    jmp        @HandleFinally
<0054DAF8    jmp        0054DAF2
 0054DAFA    pop        ebp
 0054DAFB    ret
*}
end.