{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit201;

interface

uses
  Classes, Windows, Graphics, _Unit147, ZPlainPostgreSqlDriver;

type
  TZPostgreSQLDriver = class(TZAbstractDriver)
  public
    f18:IZPostgreSQLPlainDriver;//f18
    f1C:IZPostgreSQLPlainDriver;//f1C
    //procedure sub_0051DF98(?:?); virtual;
    //procedure sub_0051DE08(?:?; ?:?; ?:?); virtual;
    //function sub_0051DF0C():?; virtual;
    //function sub_0051DF14():?; virtual;
    //procedure sub_0051DF1C(?:?); virtual;
    //procedure sub_0051DF5C(?:?); virtual;
    //constructor Create(?:TZPostgreSQLDriver; _Dv__:Boolean);
  end;
  TZPostgreSQLConnection = class(TZAbstractConnection)
  public
    f34:dword;//f34
    f38:byte;//f38
    f3C:dword;//f3C
    f40:IZPostgreSQLPlainDriver;//f40
    f44:byte;//f44
    f48:String;//f48
    f4C:byte;//f4C
    f50:Integer;//f50
    f54:dword;//f54
    f58:dword;//f58
    f5C:dword;//f5C
    destructor Destroy; virtual;
    //procedure sub_0051EC60(?:?; ?:?); virtual;
    //procedure sub_0051ECB4(?:?; ?:?; ?:?); virtual;
    //procedure sub_0051F954(?:?; ?:?; ?:?); virtual;
    procedure sub_0051ED0C; virtual;
    procedure sub_0051EF00; virtual;
    //procedure sub_0051EB34(?:?); virtual;
    //procedure sub_0051EDD8(?:?); virtual;
    //procedure sub_0051EFD0(?:?); virtual;
    //function sub_0051F870:?; virtual;
    procedure sub_0051E938; virtual;
    procedure sub_0051F0F8; virtual;
    //function sub_0051F5BC:?; virtual;
    //procedure sub_0051F1C0(?:?); virtual;
    //constructor Create(?:TZPostgreSQLConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;
  TZPostgreSQLSequence = class(TZAbstractSequence)
  public
    procedure sub_0051F994; virtual;
    procedure sub_0051FB18; virtual;
    //procedure sub_0051FA98(?:?); virtual;
    //procedure sub_0051FC1C(?:?); virtual;
  end;

implementation

{$R *.DFM}

//0051DD2C
//procedure sub_0051DD2C(?:?);
//begin
{*
 0051DD2C    push       ebp
 0051DD2D    mov        ebp,esp
 0051DD2F    push       0
 0051DD31    push       ebx
 0051DD32    xor        eax,eax
 0051DD34    push       ebp
 0051DD35    push       51DD78
 0051DD3A    push       dword ptr fs:[eax]
 0051DD3D    mov        dword ptr fs:[eax],esp
 0051DD40    lea        eax,[ebp-4]
 0051DD43    mov        edx,dword ptr [ebp+0C]
 0051DD46    call       @LStrFromPChar
 0051DD4B    mov        eax,dword ptr [ebp-4]
 0051DD4E    push       eax
 0051DD4F    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051DD54    mov        eax,dword ptr [eax]
 0051DD56    mov        ecx,51DD8C; 'Postgres NOTICE'
 0051DD5B    mov        dl,4
 0051DD5D    mov        ebx,dword ptr [eax]
 0051DD5F    call       dword ptr [ebx+3C]
 0051DD62    xor        eax,eax
 0051DD64    pop        edx
 0051DD65    pop        ecx
 0051DD66    pop        ecx
 0051DD67    mov        dword ptr fs:[eax],edx
 0051DD6A    push       51DD7F
 0051DD6F    lea        eax,[ebp-4]
 0051DD72    call       @LStrClr
 0051DD77    ret
<0051DD78    jmp        @HandleFinally
<0051DD7D    jmp        0051DD6F
 0051DD7F    pop        ebx
 0051DD80    pop        ecx
 0051DD81    pop        ebp
 0051DD82    ret
*}
//end;

//0051DD9C
//constructor TZPostgreSQLDriver.Create(?:TZPostgreSQLDriver; _Dv__:Boolean);
//begin
{*
 0051DD9C    push       ebp
 0051DD9D    mov        ebp,esp
 0051DD9F    push       ebx
 0051DDA0    push       esi
 0051DDA1    test       dl,dl
>0051DDA3    je         0051DDAD
 0051DDA5    add        esp,0FFFFFFF0
 0051DDA8    call       @ClassCreate
 0051DDAD    mov        ebx,edx
 0051DDAF    mov        esi,eax
 0051DDB1    mov        dl,1
 0051DDB3    mov        eax,[0050FAEC]; TZPostgreSQL7PlainDriver
 0051DDB8    call       TZPostgreSQL7PlainDriver.Create; TZPostgreSQL7PlainDriver.Create
 0051DDBD    mov        edx,eax
 0051DDBF    test       edx,edx
>0051DDC1    je         0051DDC6
 0051DDC3    sub        edx,0FFFFFFF0
 0051DDC6    lea        eax,[esi+18]; TZPostgreSQLDriver.?f18:IZPostgreSQLPlainDriver
 0051DDC9    call       @IntfCopy
 0051DDCE    mov        dl,1
 0051DDD0    mov        eax,[0050FEFC]; TZPostgreSQL8PlainDriver
 0051DDD5    call       TZPostgreSQL8PlainDriver.Create; TZPostgreSQL8PlainDriver.Create
 0051DDDA    mov        edx,eax
 0051DDDC    test       edx,edx
>0051DDDE    je         0051DDE3
 0051DDE0    sub        edx,0FFFFFFF0
 0051DDE3    lea        eax,[esi+1C]; TZPostgreSQLDriver.?f1C:IZPostgreSQLPlainDriver
 0051DDE6    call       @IntfCopy
 0051DDEB    mov        eax,esi
 0051DDED    test       bl,bl
>0051DDEF    je         0051DE00
 0051DDF1    call       @AfterConstruction
 0051DDF6    pop        dword ptr fs:[0]
 0051DDFD    add        esp,0C
 0051DE00    mov        eax,esi
 0051DE02    pop        esi
 0051DE03    pop        ebx
 0051DE04    pop        ebp
 0051DE05    ret
*}
//end;

//0051DE08
//procedure sub_0051DE08(?:?; ?:?; ?:?);
//begin
{*
 0051DE08    push       ebp
 0051DE09    mov        ebp,esp
 0051DE0B    push       0
 0051DE0D    push       0
 0051DE0F    push       0
 0051DE11    push       0
 0051DE13    push       0
 0051DE15    push       0
 0051DE17    push       0
 0051DE19    push       ebx
 0051DE1A    push       esi
 0051DE1B    push       edi
 0051DE1C    mov        edi,ecx
 0051DE1E    mov        esi,edx
 0051DE20    mov        ebx,eax
 0051DE22    xor        eax,eax
 0051DE24    push       ebp
 0051DE25    push       51DEFC
 0051DE2A    push       dword ptr fs:[eax]
 0051DE2D    mov        dword ptr fs:[eax],esp
 0051DE30    mov        dl,1
 0051DE32    mov        eax,[0041C8E4]; TStringList
 0051DE37    call       TObject.Create; TStringList.Create
 0051DE3C    mov        dword ptr [ebp-4],eax
 0051DE3F    xor        eax,eax
 0051DE41    push       ebp
 0051DE42    push       51DED2
 0051DE47    push       dword ptr fs:[eax]
 0051DE4A    mov        dword ptr fs:[eax],esp
 0051DE4D    lea        ecx,[ebp-1C]
 0051DE50    mov        edx,esi
 0051DE52    mov        eax,ebx
 0051DE54    call       0051E07C
 0051DE59    lea        eax,[ebp-18]
 0051DE5C    push       eax
 0051DE5D    lea        eax,[ebp-0C]
 0051DE60    push       eax
 0051DE61    lea        eax,[ebp-10]
 0051DE64    push       eax
 0051DE65    lea        eax,[ebp-14]
 0051DE68    push       eax
 0051DE69    mov        eax,dword ptr [ebp-4]
 0051DE6C    push       eax
 0051DE6D    lea        ecx,[ebp-8]
 0051DE70    mov        edx,edi
 0051DE72    mov        eax,esi
 0051DE74    call       004D28A4
 0051DE79    push       esi
 0051DE7A    mov        eax,dword ptr [ebp-1C]
 0051DE7D    push       eax
 0051DE7E    mov        eax,dword ptr [ebp-8]
 0051DE81    push       eax
 0051DE82    mov        eax,dword ptr [ebp-18]
 0051DE85    push       eax
 0051DE86    mov        eax,dword ptr [ebp-0C]
 0051DE89    push       eax
 0051DE8A    mov        eax,dword ptr [ebp-10]
 0051DE8D    push       eax
 0051DE8E    mov        eax,dword ptr [ebp-14]
 0051DE91    push       eax
 0051DE92    mov        eax,dword ptr [ebp-4]
 0051DE95    push       eax
 0051DE96    mov        ecx,ebx
 0051DE98    test       ecx,ecx
>0051DE9A    je         0051DE9F
 0051DE9C    sub        ecx,0FFFFFFEC
 0051DE9F    mov        dl,1
 0051DEA1    mov        eax,[0051DBB4]; TZPostgreSQLConnection
 0051DEA6    call       TZPostgreSQLConnection.Create; TZPostgreSQLConnection.Create
 0051DEAB    mov        edx,eax
 0051DEAD    test       edx,edx
>0051DEAF    je         0051DEB4
 0051DEB1    sub        edx,0FFFFFFD0
 0051DEB4    mov        eax,dword ptr [ebp+8]
 0051DEB7    call       @IntfCopy
 0051DEBC    xor        eax,eax
 0051DEBE    pop        edx
 0051DEBF    pop        ecx
 0051DEC0    pop        ecx
 0051DEC1    mov        dword ptr fs:[eax],edx
 0051DEC4    push       51DED9
 0051DEC9    mov        eax,dword ptr [ebp-4]
 0051DECC    call       TObject.Free
 0051DED1    ret
<0051DED2    jmp        @HandleFinally
<0051DED7    jmp        0051DEC9
 0051DED9    xor        eax,eax
 0051DEDB    pop        edx
 0051DEDC    pop        ecx
 0051DEDD    pop        ecx
 0051DEDE    mov        dword ptr fs:[eax],edx
 0051DEE1    push       51DF03
 0051DEE6    lea        eax,[ebp-1C]
 0051DEE9    call       @IntfClear
 0051DEEE    lea        eax,[ebp-14]
 0051DEF1    mov        edx,4
 0051DEF6    call       @LStrArrayClr
 0051DEFB    ret
<0051DEFC    jmp        @HandleFinally
<0051DF01    jmp        0051DEE6
 0051DF03    pop        edi
 0051DF04    pop        esi
 0051DF05    pop        ebx
 0051DF06    mov        esp,ebp
 0051DF08    pop        ebp
 0051DF09    ret        4
*}
//end;

//0051DF0C
//function sub_0051DF0C():?;
//begin
{*
 0051DF0C    mov        eax,1
 0051DF11    ret
*}
//end;

//0051DF14
//function sub_0051DF14():?;
//begin
{*
 0051DF14    mov        eax,3
 0051DF19    ret
*}
//end;

//0051DF1C
//procedure sub_0051DF1C(?:?);
//begin
{*
 0051DF1C    push       ebp
 0051DF1D    mov        ebp,esp
 0051DF1F    push       ebx
 0051DF20    push       esi
 0051DF21    mov        esi,edx
 0051DF23    mov        ebx,eax
 0051DF25    cmp        dword ptr [ebx+0C],0; TZPostgreSQLDriver.?fC:IZTokenizer
>0051DF29    jne        0051DF4B
 0051DF2B    mov        dl,1
 0051DF2D    mov        eax,[0051CE04]; TZPostgreSQLTokenizer
 0051DF32    call       TZPostgreSQLTokenizer.Create; TZPostgreSQLTokenizer.Create
 0051DF37    mov        edx,eax
 0051DF39    test       edx,edx
>0051DF3B    je         0051DF43
 0051DF3D    sub        edx,0FFFFFBD8
 0051DF43    lea        eax,[ebx+0C]; TZPostgreSQLDriver.?fC:IZTokenizer
 0051DF46    call       @IntfCopy
 0051DF4B    mov        eax,esi
 0051DF4D    mov        edx,dword ptr [ebx+0C]; TZPostgreSQLDriver.?fC:IZTokenizer
 0051DF50    call       @IntfCopy
 0051DF55    pop        esi
 0051DF56    pop        ebx
 0051DF57    pop        ebp
 0051DF58    ret
*}
//end;

//0051DF5C
//procedure sub_0051DF5C(?:?);
//begin
{*
 0051DF5C    push       ebp
 0051DF5D    mov        ebp,esp
 0051DF5F    push       ebx
 0051DF60    push       esi
 0051DF61    mov        esi,edx
 0051DF63    mov        ebx,eax
 0051DF65    cmp        dword ptr [ebx+10],0; TZPostgreSQLDriver.?f10:IZStatementAnalyser
>0051DF69    jne        0051DF88
 0051DF6B    mov        dl,1
 0051DF6D    mov        eax,[0051D53C]; TZPostgreSQLStatementAnalyser
 0051DF72    call       TZPostgreSQLStatementAnalyser.Create; TZPostgreSQLStatementAnalyser.Create
 0051DF77    mov        edx,eax
 0051DF79    test       edx,edx
>0051DF7B    je         0051DF80
 0051DF7D    sub        edx,0FFFFFFE0
 0051DF80    lea        eax,[ebx+10]; TZPostgreSQLDriver.?f10:IZStatementAnalyser
 0051DF83    call       @IntfCopy
 0051DF88    mov        eax,esi
 0051DF8A    mov        edx,dword ptr [ebx+10]; TZPostgreSQLDriver.?f10:IZStatementAnalyser
 0051DF8D    call       @IntfCopy
 0051DF92    pop        esi
 0051DF93    pop        ebx
 0051DF94    pop        ebp
 0051DF95    ret
*}
//end;

//0051DF98
//procedure sub_0051DF98(?:?);
//begin
{*
 0051DF98    push       ebp
 0051DF99    mov        ebp,esp
 0051DF9B    push       0
 0051DF9D    push       0
 0051DF9F    push       ebx
 0051DFA0    push       esi
 0051DFA1    mov        ebx,edx
 0051DFA3    mov        esi,eax
 0051DFA5    xor        eax,eax
 0051DFA7    push       ebp
 0051DFA8    push       51E05A
 0051DFAD    push       dword ptr fs:[eax]
 0051DFB0    mov        dword ptr fs:[eax],esp
 0051DFB3    push       3
 0051DFB5    mov        eax,ebx
 0051DFB7    mov        ecx,1
 0051DFBC    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 0051DFC2    call       @DynArraySetLength
 0051DFC7    add        esp,4
 0051DFCA    xor        eax,eax
 0051DFCC    mov        edx,dword ptr [ebx]
 0051DFCE    test       edx,edx
>0051DFD0    je         0051DFD7
 0051DFD2    cmp        eax,dword ptr [edx-4]
>0051DFD5    jb         0051DFDC
 0051DFD7    call       @BoundErr
 0051DFDC    lea        eax,[edx+eax*4]
 0051DFDF    mov        edx,51E070; 'postgresql'
 0051DFE4    call       @LStrAsg
 0051DFE9    lea        edx,[ebp-4]
 0051DFEC    mov        eax,dword ptr [esi+18]; TZPostgreSQLDriver.?f18:IZPostgreSQLPlainDriver
 0051DFEF    mov        ecx,dword ptr [eax]
 0051DFF1    call       dword ptr [ecx+0C]
 0051DFF4    mov        edx,dword ptr [ebp-4]
 0051DFF7    mov        eax,1
 0051DFFC    mov        ecx,dword ptr [ebx]
 0051DFFE    test       ecx,ecx
>0051E000    je         0051E007
 0051E002    cmp        eax,dword ptr [ecx-4]
>0051E005    jb         0051E00C
 0051E007    call       @BoundErr
 0051E00C    lea        eax,[ecx+eax*4]
 0051E00F    call       @LStrAsg
 0051E014    lea        edx,[ebp-8]
 0051E017    mov        eax,dword ptr [esi+1C]; TZPostgreSQLDriver.?f1C:IZPostgreSQLPlainDriver
 0051E01A    mov        ecx,dword ptr [eax]
 0051E01C    call       dword ptr [ecx+0C]
 0051E01F    mov        edx,dword ptr [ebp-8]
 0051E022    mov        eax,2
 0051E027    mov        ecx,dword ptr [ebx]
 0051E029    test       ecx,ecx
>0051E02B    je         0051E032
 0051E02D    cmp        eax,dword ptr [ecx-4]
>0051E030    jb         0051E037
 0051E032    call       @BoundErr
 0051E037    lea        eax,[ecx+eax*4]
 0051E03A    call       @LStrAsg
 0051E03F    xor        eax,eax
 0051E041    pop        edx
 0051E042    pop        ecx
 0051E043    pop        ecx
 0051E044    mov        dword ptr fs:[eax],edx
 0051E047    push       51E061
 0051E04C    lea        eax,[ebp-8]
 0051E04F    mov        edx,2
 0051E054    call       @LStrArrayClr
 0051E059    ret
<0051E05A    jmp        @HandleFinally
<0051E05F    jmp        0051E04C
 0051E061    pop        esi
 0051E062    pop        ebx
 0051E063    pop        ecx
 0051E064    pop        ecx
 0051E065    pop        ebp
 0051E066    ret
*}
//end;

//0051E07C
//procedure sub_0051E07C(?:TZPostgreSQLDriver; ?:?; ?:?);
//begin
{*
 0051E07C    push       ebp
 0051E07D    mov        ebp,esp
 0051E07F    push       0
 0051E081    push       0
 0051E083    push       0
 0051E085    push       0
 0051E087    push       ebx
 0051E088    push       esi
 0051E089    push       edi
 0051E08A    mov        esi,ecx
 0051E08C    mov        edi,edx
 0051E08E    mov        ebx,eax
 0051E090    xor        eax,eax
 0051E092    push       ebp
 0051E093    push       51E13E
 0051E098    push       dword ptr fs:[eax]
 0051E09B    mov        dword ptr fs:[eax],esp
 0051E09E    lea        edx,[ebp-8]
 0051E0A1    mov        eax,ebx
 0051E0A3    mov        ecx,dword ptr [eax]
 0051E0A5    call       dword ptr [ecx]; TZPostgreSQLDriver.sub_0051DF98
 0051E0A7    mov        edx,dword ptr [ebp-8]
 0051E0AA    lea        ecx,[ebp-4]
 0051E0AD    mov        eax,edi
 0051E0AF    call       004D263C
 0051E0B4    lea        edx,[ebp-0C]
 0051E0B7    mov        eax,dword ptr [ebx+18]; TZPostgreSQLDriver.?f18:IZPostgreSQLPlainDriver
 0051E0BA    mov        ecx,dword ptr [eax]
 0051E0BC    call       dword ptr [ecx+0C]
 0051E0BF    mov        edx,dword ptr [ebp-0C]
 0051E0C2    mov        eax,dword ptr [ebp-4]
 0051E0C5    call       @LStrCmp
>0051E0CA    jne        0051E0D8
 0051E0CC    mov        eax,esi
 0051E0CE    mov        edx,dword ptr [ebx+18]; TZPostgreSQLDriver.?f18:IZPostgreSQLPlainDriver
 0051E0D1    call       @IntfCopy
>0051E0D6    jmp        0051E106
 0051E0D8    lea        edx,[ebp-10]
 0051E0DB    mov        eax,dword ptr [ebx+1C]; TZPostgreSQLDriver.?f1C:IZPostgreSQLPlainDriver
 0051E0DE    mov        ecx,dword ptr [eax]
 0051E0E0    call       dword ptr [ecx+0C]
 0051E0E3    mov        edx,dword ptr [ebp-10]
 0051E0E6    mov        eax,dword ptr [ebp-4]
 0051E0E9    call       @LStrCmp
>0051E0EE    jne        0051E0FC
 0051E0F0    mov        eax,esi
 0051E0F2    mov        edx,dword ptr [ebx+1C]; TZPostgreSQLDriver.?f1C:IZPostgreSQLPlainDriver
 0051E0F5    call       @IntfCopy
>0051E0FA    jmp        0051E106
 0051E0FC    mov        eax,esi
 0051E0FE    mov        edx,dword ptr [ebx+1C]; TZPostgreSQLDriver.?f1C:IZPostgreSQLPlainDriver
 0051E101    call       @IntfCopy
 0051E106    mov        eax,dword ptr [esi]
 0051E108    mov        edx,dword ptr [eax]
 0051E10A    call       dword ptr [edx+14]
 0051E10D    xor        eax,eax
 0051E10F    pop        edx
 0051E110    pop        ecx
 0051E111    pop        ecx
 0051E112    mov        dword ptr fs:[eax],edx
 0051E115    push       51E145
 0051E11A    lea        eax,[ebp-10]
 0051E11D    mov        edx,2
 0051E122    call       @LStrArrayClr
 0051E127    lea        eax,[ebp-8]
 0051E12A    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 0051E130    call       @DynArrayClear
 0051E135    lea        eax,[ebp-4]
 0051E138    call       @LStrClr
 0051E13D    ret
<0051E13E    jmp        @HandleFinally
<0051E143    jmp        0051E11A
 0051E145    pop        edi
 0051E146    pop        esi
 0051E147    pop        ebx
 0051E148    mov        esp,ebp
 0051E14A    pop        ebp
 0051E14B    ret
*}
//end;

//0051E14C
//constructor TZPostgreSQLConnection.Create(?:TZPostgreSQLConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0051E14C    push       ebp
 0051E14D    mov        ebp,esp
 0051E14F    push       0
 0051E151    push       0
 0051E153    push       0
 0051E155    push       0
 0051E157    push       0
 0051E159    push       0
 0051E15B    push       0
 0051E15D    push       0
 0051E15F    push       ebx
 0051E160    push       esi
 0051E161    push       edi
 0051E162    test       dl,dl
>0051E164    je         0051E16E
 0051E166    add        esp,0FFFFFFF0
 0051E169    call       @ClassCreate
 0051E16E    mov        dword ptr [ebp-8],ecx
 0051E171    mov        byte ptr [ebp-1],dl
 0051E174    mov        ebx,eax
 0051E176    mov        esi,dword ptr [ebp+8]
 0051E179    mov        edi,dword ptr [ebp+24]
 0051E17C    mov        eax,dword ptr [ebp-8]
 0051E17F    call       @IntfAddRef
 0051E184    mov        eax,dword ptr [ebp+20]
 0051E187    call       @IntfAddRef
 0051E18C    xor        eax,eax
 0051E18E    push       ebp
 0051E18F    push       51E2B5
 0051E194    push       dword ptr fs:[eax]
 0051E197    mov        dword ptr fs:[eax],esp
 0051E19A    push       edi
 0051E19B    mov        eax,dword ptr [ebp+1C]
 0051E19E    push       eax
 0051E19F    mov        eax,dword ptr [ebp+18]
 0051E1A2    push       eax
 0051E1A3    mov        eax,dword ptr [ebp+14]
 0051E1A6    push       eax
 0051E1A7    mov        eax,dword ptr [ebp+10]
 0051E1AA    push       eax
 0051E1AB    mov        eax,dword ptr [ebp+0C]
 0051E1AE    push       eax
 0051E1AF    push       esi
 0051E1B0    push       edi
 0051E1B1    push       esi
 0051E1B2    mov        ecx,ebx
 0051E1B4    mov        dl,1
 0051E1B6    mov        eax,[00514BDC]; TZPostgreSQLDatabaseMetadata
 0051E1BB    call       TZPostgreSQLDatabaseMetadata.Create; TZPostgreSQLDatabaseMetadata.Create
 0051E1C0    push       eax
 0051E1C1    mov        ecx,dword ptr [ebp-8]
 0051E1C4    xor        edx,edx
 0051E1C6    mov        eax,ebx
 0051E1C8    call       004DDD88
 0051E1CD    cmp        dword ptr [ebx+14],0; TZPostgreSQLConnection.?f14:dword
>0051E1D1    jne        0051E1DA
 0051E1D3    mov        dword ptr [ebx+14],1538; TZPostgreSQLConnection.?f14:dword
 0051E1DA    lea        ecx,[ebp-0C]
 0051E1DD    mov        edx,51E2E8; 'beginreq'
 0051E1E2    mov        eax,esi
 0051E1E4    call       TStrings.GetValue
 0051E1E9    cmp        dword ptr [ebp-0C],0
>0051E1ED    je         0051E20B
 0051E1EF    lea        ecx,[ebp-10]
 0051E1F2    mov        edx,51E2E8; 'beginreq'
 0051E1F7    mov        eax,esi
 0051E1F9    call       TStrings.GetValue
 0051E1FE    mov        eax,dword ptr [ebp-10]
 0051E201    call       004BEFC0
 0051E206    mov        byte ptr [ebx+38],al; TZPostgreSQLConnection.?f38:byte
>0051E209    jmp        0051E20F
 0051E20B    mov        byte ptr [ebx+38],1; TZPostgreSQLConnection.?f38:byte
 0051E20F    lea        eax,[ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E212    mov        edx,dword ptr [ebp+20]
 0051E215    call       @IntfCopy
 0051E21A    mov        byte ptr [ebx+2A],0; TZPostgreSQLConnection.?f2A:byte
 0051E21E    lea        ecx,[ebp-14]
 0051E221    mov        edx,51E2FC; 'oidasblob'
 0051E226    mov        eax,esi
 0051E228    call       TStrings.GetValue
 0051E22D    cmp        dword ptr [ebp-14],0
>0051E231    je         0051E24F
 0051E233    lea        ecx,[ebp-18]
 0051E236    mov        edx,51E2FC; 'oidasblob'
 0051E23B    mov        eax,esi
 0051E23D    call       TStrings.GetValue
 0051E242    mov        eax,dword ptr [ebp-18]
 0051E245    call       004BEFC0
 0051E24A    mov        byte ptr [ebx+44],al; TZPostgreSQLConnection.?f44:byte
>0051E24D    jmp        0051E253
 0051E24F    mov        byte ptr [ebx+44],0; TZPostgreSQLConnection.?f44:byte
 0051E253    lea        ecx,[ebp-20]
 0051E256    mov        edx,51E310; 'codepage'
 0051E25B    mov        eax,esi
 0051E25D    call       TStrings.GetValue
 0051E262    mov        eax,dword ptr [ebp-20]
 0051E265    lea        edx,[ebp-1C]
 0051E268    call       Trim
 0051E26D    mov        edx,dword ptr [ebp-1C]
 0051E270    lea        eax,[ebx+48]; TZPostgreSQLConnection.?f48:String
 0051E273    call       @LStrAsg
 0051E278    mov        eax,dword ptr [ebx+48]; TZPostgreSQLConnection.?f48:String
 0051E27B    call       00511848
 0051E280    mov        byte ptr [ebx+4C],al; TZPostgreSQLConnection.?f4C:byte
 0051E283    mov        dword ptr [ebx+5C],51DD2C; TZPostgreSQLConnection.?f5C:dword sub_0051DD2C
 0051E28A    xor        eax,eax
 0051E28C    pop        edx
 0051E28D    pop        ecx
 0051E28E    pop        ecx
 0051E28F    mov        dword ptr fs:[eax],edx
 0051E292    push       51E2BC
 0051E297    lea        eax,[ebp-20]
 0051E29A    mov        edx,6
 0051E29F    call       @LStrArrayClr
 0051E2A4    lea        eax,[ebp-8]
 0051E2A7    call       @IntfClear
 0051E2AC    lea        eax,[ebp+20]
 0051E2AF    call       @IntfClear
 0051E2B4    ret
<0051E2B5    jmp        @HandleFinally
<0051E2BA    jmp        0051E297
 0051E2BC    mov        eax,ebx
 0051E2BE    cmp        byte ptr [ebp-1],0
>0051E2C2    je         0051E2D3
 0051E2C4    call       @AfterConstruction
 0051E2C9    pop        dword ptr fs:[0]
 0051E2D0    add        esp,0C
 0051E2D3    mov        eax,ebx
 0051E2D5    pop        edi
 0051E2D6    pop        esi
 0051E2D7    pop        ebx
 0051E2D8    mov        esp,ebp
 0051E2DA    pop        ebp
 0051E2DB    ret        20
*}
//end;

//0051E31C
destructor TZPostgreSQLConnection.Destroy;
begin
{*
 0051E31C    push       ebp
 0051E31D    mov        ebp,esp
 0051E31F    push       ebx
 0051E320    push       esi
 0051E321    call       @BeforeDestruction
 0051E326    mov        ebx,edx
 0051E328    mov        esi,eax
 0051E32A    mov        eax,dword ptr [esi+3C]; TZPostgreSQLConnection.?f3C:dword
 0051E32D    test       eax,eax
>0051E32F    je         0051E336
 0051E331    call       TObject.Free
 0051E336    mov        edx,ebx
 0051E338    and        dl,0FC
 0051E33B    mov        eax,esi
 0051E33D    call       TZAbstractConnection.Destroy
 0051E342    test       bl,bl
>0051E344    jle        0051E34D
 0051E346    mov        eax,esi
 0051E348    call       @ClassDestroy
 0051E34D    pop        esi
 0051E34E    pop        ebx
 0051E34F    pop        ebp
 0051E350    ret
*}
end;

//0051E354
//procedure sub_0051E354(?:AnsiString; ?:AnsiString);
//begin
{*
 0051E354    push       ebp
 0051E355    mov        ebp,esp
 0051E357    add        esp,0FFFFFFF8
 0051E35A    push       ebx
 0051E35B    xor        ecx,ecx
 0051E35D    mov        dword ptr [ebp-8],ecx
 0051E360    mov        ebx,edx
 0051E362    mov        dword ptr [ebp-4],eax
 0051E365    mov        eax,dword ptr [ebp-4]
 0051E368    call       @LStrAddRef
 0051E36D    xor        eax,eax
 0051E36F    push       ebp
 0051E370    push       51E3D4
 0051E375    push       dword ptr fs:[eax]
 0051E378    mov        dword ptr fs:[eax],esp
 0051E37B    mov        al,[0051E3E0]; 0x1
 0051E380    push       eax
 0051E381    push       ebx
 0051E382    mov        ecx,51E3EC; '\\\\'
 0051E387    mov        edx,51E3F8; '\\'
 0051E38C    mov        eax,dword ptr [ebp-4]
 0051E38F    call       StringReplace
 0051E394    mov        al,[0051E3E0]; 0x1
 0051E399    push       eax
 0051E39A    lea        eax,[ebp-8]
 0051E39D    push       eax
 0051E39E    mov        eax,dword ptr [ebx]
 0051E3A0    mov        ecx,51E404; '\\''
 0051E3A5    mov        edx,51E410; '''
 0051E3AA    call       StringReplace
 0051E3AF    mov        edx,dword ptr [ebp-8]
 0051E3B2    mov        eax,ebx
 0051E3B4    call       @LStrAsg
 0051E3B9    xor        eax,eax
 0051E3BB    pop        edx
 0051E3BC    pop        ecx
 0051E3BD    pop        ecx
 0051E3BE    mov        dword ptr fs:[eax],edx
 0051E3C1    push       51E3DB
 0051E3C6    lea        eax,[ebp-8]
 0051E3C9    mov        edx,2
 0051E3CE    call       @LStrArrayClr
 0051E3D3    ret
<0051E3D4    jmp        @HandleFinally
<0051E3D9    jmp        0051E3C6
 0051E3DB    pop        ebx
 0051E3DC    pop        ecx
 0051E3DD    pop        ecx
 0051E3DE    pop        ebp
 0051E3DF    ret
*}
//end;

//0051E414
//procedure sub_0051E414(?:AnsiString; ?:AnsiString; ?:?);
//begin
{*
 0051E414    push       ebp
 0051E415    mov        ebp,esp
 0051E417    add        esp,0FFFFFFF0
 0051E41A    xor        ecx,ecx
 0051E41C    mov        dword ptr [ebp-0C],ecx
 0051E41F    mov        dword ptr [ebp-10],ecx
 0051E422    mov        dword ptr [ebp-8],edx
 0051E425    mov        dword ptr [ebp-4],eax
 0051E428    mov        eax,dword ptr [ebp-4]
 0051E42B    call       @LStrAddRef
 0051E430    mov        eax,dword ptr [ebp-8]
 0051E433    call       @LStrAddRef
 0051E438    xor        eax,eax
 0051E43A    push       ebp
 0051E43B    push       51E4BB
 0051E440    push       dword ptr fs:[eax]
 0051E443    mov        dword ptr fs:[eax],esp
 0051E446    mov        eax,dword ptr [ebp+8]
 0051E449    mov        eax,dword ptr [eax-4]
 0051E44C    cmp        dword ptr [eax],0
>0051E44F    je         0051E467
 0051E451    mov        eax,dword ptr [ebp+8]
 0051E454    mov        eax,dword ptr [eax-4]
 0051E457    mov        edx,51E4D0; ' '
 0051E45C    call       @LStrCat
 0051E461    mov        eax,dword ptr [ebp+8]
 0051E464    mov        eax,dword ptr [eax-4]
 0051E467    mov        eax,dword ptr [ebp+8]
 0051E46A    mov        eax,dword ptr [eax-4]
 0051E46D    push       dword ptr [eax]
 0051E46F    push       dword ptr [ebp-4]
 0051E472    push       51E4DC; '='
 0051E477    lea        edx,[ebp-10]
 0051E47A    mov        eax,dword ptr [ebp-8]
 0051E47D    call       0051E354
 0051E482    mov        eax,dword ptr [ebp-10]
 0051E485    lea        edx,[ebp-0C]
 0051E488    call       QuotedStr
 0051E48D    push       dword ptr [ebp-0C]
 0051E490    mov        eax,dword ptr [ebp+8]
 0051E493    mov        eax,dword ptr [eax-4]
 0051E496    mov        edx,4
 0051E49B    call       @LStrCatN
 0051E4A0    xor        eax,eax
 0051E4A2    pop        edx
 0051E4A3    pop        ecx
 0051E4A4    pop        ecx
 0051E4A5    mov        dword ptr fs:[eax],edx
 0051E4A8    push       51E4C2
 0051E4AD    lea        eax,[ebp-10]
 0051E4B0    mov        edx,4
 0051E4B5    call       @LStrArrayClr
 0051E4BA    ret
<0051E4BB    jmp        @HandleFinally
<0051E4C0    jmp        0051E4AD
 0051E4C2    mov        esp,ebp
 0051E4C4    pop        ebp
 0051E4C5    ret
*}
//end;

//0051E4E0
//procedure sub_0051E4E0(?:TZPostgreSQLConnection; ?:AnsiString);
//begin
{*
 0051E4E0    push       ebp
 0051E4E1    mov        ebp,esp
 0051E4E3    xor        ecx,ecx
 0051E4E5    push       ecx
 0051E4E6    push       ecx
 0051E4E7    push       ecx
 0051E4E8    push       ecx
 0051E4E9    push       ecx
 0051E4EA    push       ecx
 0051E4EB    push       ecx
 0051E4EC    push       ecx
 0051E4ED    push       ebx
 0051E4EE    mov        dword ptr [ebp-4],edx
 0051E4F1    mov        ebx,eax
 0051E4F3    xor        eax,eax
 0051E4F5    push       ebp
 0051E4F6    push       51E63D
 0051E4FB    push       dword ptr fs:[eax]
 0051E4FE    mov        dword ptr fs:[eax],esp
 0051E501    mov        eax,dword ptr [ebp-4]
 0051E504    call       @LStrClr
 0051E509    mov        eax,dword ptr [ebx+10]; TZPostgreSQLConnection.?f10:String
 0051E50C    call       004BF0F0
 0051E511    test       al,al
>0051E513    je         0051E526
 0051E515    push       ebp
 0051E516    mov        edx,dword ptr [ebx+10]; TZPostgreSQLConnection.?f10:String
 0051E519    mov        eax,51E654; 'hostaddr'
 0051E51E    call       0051E414
 0051E523    pop        ecx
>0051E524    jmp        0051E535
 0051E526    push       ebp
 0051E527    mov        edx,dword ptr [ebx+10]; TZPostgreSQLConnection.?f10:String
 0051E52A    mov        eax,51E668; 'host'
 0051E52F    call       0051E414
 0051E534    pop        ecx
 0051E535    push       ebp
 0051E536    lea        edx,[ebp-8]
 0051E539    mov        eax,dword ptr [ebx+14]; TZPostgreSQLConnection.?f14:dword
 0051E53C    call       IntToStr
 0051E541    mov        edx,dword ptr [ebp-8]
 0051E544    mov        eax,51E678; 'port'
 0051E549    call       0051E414
 0051E54E    pop        ecx
 0051E54F    push       ebp
 0051E550    mov        edx,dword ptr [ebx+18]; TZPostgreSQLConnection.?f18:String
 0051E553    mov        eax,51E688; 'dbname'
 0051E558    call       0051E414
 0051E55D    pop        ecx
 0051E55E    push       ebp
 0051E55F    mov        edx,dword ptr [ebx+1C]; TZPostgreSQLConnection.?f1C:String
 0051E562    mov        eax,51E698; 'user'
 0051E567    call       0051E414
 0051E56C    pop        ecx
 0051E56D    push       ebp
 0051E56E    mov        edx,dword ptr [ebx+20]; TZPostgreSQLConnection.?f20:String
 0051E571    mov        eax,51E6A8; 'password'
 0051E576    call       0051E414
 0051E57B    pop        ecx
 0051E57C    lea        ecx,[ebp-0C]
 0051E57F    mov        edx,51E6BC; 'sslmode'
 0051E584    mov        eax,dword ptr [ebx+24]; TZPostgreSQLConnection.?f24:dword
 0051E587    call       TStrings.GetValue
 0051E58C    cmp        dword ptr [ebp-0C],0
>0051E590    je         0051E5B3
 0051E592    push       ebp
 0051E593    lea        ecx,[ebp-10]
 0051E596    mov        edx,51E6BC; 'sslmode'
 0051E59B    mov        eax,dword ptr [ebx+24]; TZPostgreSQLConnection.?f24:dword
 0051E59E    call       TStrings.GetValue
 0051E5A3    mov        edx,dword ptr [ebp-10]
 0051E5A6    mov        eax,51E6BC; 'sslmode'
 0051E5AB    call       0051E414
 0051E5B0    pop        ecx
>0051E5B1    jmp        0051E5E8
 0051E5B3    lea        ecx,[ebp-14]
 0051E5B6    mov        edx,51E6CC; 'requiressl'
 0051E5BB    mov        eax,dword ptr [ebx+24]; TZPostgreSQLConnection.?f24:dword
 0051E5BE    call       TStrings.GetValue
 0051E5C3    cmp        dword ptr [ebp-14],0
>0051E5C7    je         0051E5E8
 0051E5C9    push       ebp
 0051E5CA    lea        ecx,[ebp-18]
 0051E5CD    mov        edx,51E6CC; 'requiressl'
 0051E5D2    mov        eax,dword ptr [ebx+24]; TZPostgreSQLConnection.?f24:dword
 0051E5D5    call       TStrings.GetValue
 0051E5DA    mov        edx,dword ptr [ebp-18]
 0051E5DD    mov        eax,51E6CC; 'requiressl'
 0051E5E2    call       0051E414
 0051E5E7    pop        ecx
 0051E5E8    lea        ecx,[ebp-1C]
 0051E5EB    mov        edx,51E6E0; 'timeout'
 0051E5F0    mov        eax,dword ptr [ebx+24]; TZPostgreSQLConnection.?f24:dword
 0051E5F3    call       TStrings.GetValue
 0051E5F8    mov        eax,dword ptr [ebp-1C]
 0051E5FB    or         edx,0FFFFFFFF
 0051E5FE    call       StrToIntDef
 0051E603    mov        ebx,eax
 0051E605    test       ebx,ebx
>0051E607    jl         0051E622
 0051E609    push       ebp
 0051E60A    lea        edx,[ebp-20]
 0051E60D    mov        eax,ebx
 0051E60F    call       IntToStr
 0051E614    mov        edx,dword ptr [ebp-20]
 0051E617    mov        eax,51E6F0; 'connect_timeout'
 0051E61C    call       0051E414
 0051E621    pop        ecx
 0051E622    xor        eax,eax
 0051E624    pop        edx
 0051E625    pop        ecx
 0051E626    pop        ecx
 0051E627    mov        dword ptr fs:[eax],edx
 0051E62A    push       51E644
 0051E62F    lea        eax,[ebp-20]
 0051E632    mov        edx,7
 0051E637    call       @LStrArrayClr
 0051E63C    ret
<0051E63D    jmp        @HandleFinally
<0051E642    jmp        0051E62F
 0051E644    pop        ebx
 0051E645    mov        esp,ebp
 0051E647    pop        ebp
 0051E648    ret
*}
//end;

//0051E704
//procedure sub_0051E704(?:TZPostgreSQLConnection);
//begin
{*
 0051E704    push       ebp
 0051E705    mov        ebp,esp
 0051E707    mov        ecx,5
 0051E70C    push       0
 0051E70E    push       0
 0051E710    dec        ecx
<0051E711    jne        0051E70C
 0051E713    push       ebx
 0051E714    push       esi
 0051E715    push       edi
 0051E716    mov        esi,eax
 0051E718    xor        eax,eax
 0051E71A    push       ebp
 0051E71B    push       51E8BF
 0051E720    push       dword ptr fs:[eax]
 0051E723    mov        dword ptr fs:[eax],esp
 0051E726    cmp        byte ptr [esi+2A],0; TZPostgreSQLConnection.?f2A:byte
>0051E72A    je         0051E8A4
 0051E730    cmp        byte ptr [esi+38],0; TZPostgreSQLConnection.?f38:byte
>0051E734    je         0051E79F
 0051E736    mov        edi,51E8D0; 'BEGIN'
 0051E73B    mov        ecx,edi
 0051E73D    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051E740    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E743    mov        ebx,dword ptr [eax]
 0051E745    call       dword ptr [ebx+70]
 0051E748    mov        ebx,eax
 0051E74A    push       3
 0051E74C    lea        eax,[ebp-4]
 0051E74F    mov        edx,edi
 0051E751    call       @LStrFromPChar
 0051E756    mov        eax,dword ptr [ebp-4]
 0051E759    push       eax
 0051E75A    push       ebx
 0051E75B    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051E75E    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E761    xor        eax,eax
 0051E763    call       00511EF0
 0051E768    mov        edx,ebx
 0051E76A    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E76D    mov        ecx,dword ptr [eax]
 0051E76F    call       dword ptr [ecx+0EC]
 0051E775    lea        eax,[ebp-8]
 0051E778    mov        edx,edi
 0051E77A    call       @LStrFromPChar
 0051E77F    mov        eax,dword ptr [ebp-8]
 0051E782    push       eax
 0051E783    lea        edx,[ebp-0C]
 0051E786    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E789    mov        ecx,dword ptr [eax]
 0051E78B    call       dword ptr [ecx+0C]
 0051E78E    mov        ecx,dword ptr [ebp-0C]
 0051E791    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051E796    mov        eax,dword ptr [eax]
 0051E798    mov        dl,3
 0051E79A    mov        ebx,dword ptr [eax]
 0051E79C    call       dword ptr [ebx+3C]
 0051E79F    mov        al,byte ptr [esi+2A]; TZPostgreSQLConnection.?f2A:byte
 0051E7A2    cmp        al,2
>0051E7A4    jne        0051E814
 0051E7A6    mov        edi,51E8D8; 'SET TRANSACTION ISOLATION LEVEL READ COMMITTED'
 0051E7AB    mov        ecx,edi
 0051E7AD    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051E7B0    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E7B3    mov        ebx,dword ptr [eax]
 0051E7B5    call       dword ptr [ebx+70]
 0051E7B8    mov        ebx,eax
 0051E7BA    push       3
 0051E7BC    lea        eax,[ebp-10]
 0051E7BF    mov        edx,edi
 0051E7C1    call       @LStrFromPChar
 0051E7C6    mov        eax,dword ptr [ebp-10]
 0051E7C9    push       eax
 0051E7CA    push       ebx
 0051E7CB    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051E7CE    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E7D1    xor        eax,eax
 0051E7D3    call       00511EF0
 0051E7D8    mov        edx,ebx
 0051E7DA    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E7DD    mov        ecx,dword ptr [eax]
 0051E7DF    call       dword ptr [ecx+0EC]
 0051E7E5    lea        eax,[ebp-14]
 0051E7E8    mov        edx,edi
 0051E7EA    call       @LStrFromPChar
 0051E7EF    mov        eax,dword ptr [ebp-14]
 0051E7F2    push       eax
 0051E7F3    lea        edx,[ebp-18]
 0051E7F6    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E7F9    mov        ecx,dword ptr [eax]
 0051E7FB    call       dword ptr [ecx+0C]
 0051E7FE    mov        ecx,dword ptr [ebp-18]
 0051E801    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051E806    mov        eax,dword ptr [eax]
 0051E808    mov        dl,3
 0051E80A    mov        ebx,dword ptr [eax]
 0051E80C    call       dword ptr [ebx+3C]
>0051E80F    jmp        0051E8A4
 0051E814    cmp        al,4
>0051E816    jne        0051E883
 0051E818    mov        edi,51E908; 'SET TRANSACTION ISOLATION LEVEL SERIALIZABLE'
 0051E81D    mov        ecx,edi
 0051E81F    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051E822    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E825    mov        ebx,dword ptr [eax]
 0051E827    call       dword ptr [ebx+70]
 0051E82A    mov        ebx,eax
 0051E82C    push       3
 0051E82E    lea        eax,[ebp-1C]
 0051E831    mov        edx,edi
 0051E833    call       @LStrFromPChar
 0051E838    mov        eax,dword ptr [ebp-1C]
 0051E83B    push       eax
 0051E83C    push       ebx
 0051E83D    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051E840    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E843    xor        eax,eax
 0051E845    call       00511EF0
 0051E84A    mov        edx,ebx
 0051E84C    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E84F    mov        ecx,dword ptr [eax]
 0051E851    call       dword ptr [ecx+0EC]
 0051E857    lea        eax,[ebp-20]
 0051E85A    mov        edx,edi
 0051E85C    call       @LStrFromPChar
 0051E861    mov        eax,dword ptr [ebp-20]
 0051E864    push       eax
 0051E865    lea        edx,[ebp-24]
 0051E868    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E86B    mov        ecx,dword ptr [eax]
 0051E86D    call       dword ptr [ecx+0C]
 0051E870    mov        ecx,dword ptr [ebp-24]
 0051E873    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051E878    mov        eax,dword ptr [eax]
 0051E87A    mov        dl,3
 0051E87C    mov        ebx,dword ptr [eax]
 0051E87E    call       dword ptr [ebx+3C]
>0051E881    jmp        0051E8A4
 0051E883    lea        edx,[ebp-28]
 0051E886    mov        eax,[0061BD50]; ^#122.sResString48:TResStringRec
 0051E88B    call       LoadResString
 0051E890    mov        ecx,dword ptr [ebp-28]
 0051E893    mov        dl,1
 0051E895    mov        eax,[004C6D20]; EZSQLException
 0051E89A    call       EZSQLException.Create; EZSQLException.Create
 0051E89F    call       @RaiseExcept
 0051E8A4    xor        eax,eax
 0051E8A6    pop        edx
 0051E8A7    pop        ecx
 0051E8A8    pop        ecx
 0051E8A9    mov        dword ptr fs:[eax],edx
 0051E8AC    push       51E8C6
 0051E8B1    lea        eax,[ebp-28]
 0051E8B4    mov        edx,0A
 0051E8B9    call       @LStrArrayClr
 0051E8BE    ret
<0051E8BF    jmp        @HandleFinally
<0051E8C4    jmp        0051E8B1
 0051E8C6    pop        edi
 0051E8C7    pop        esi
 0051E8C8    pop        ebx
 0051E8C9    mov        esp,ebp
 0051E8CB    pop        ebp
 0051E8CC    ret
*}
//end;

//0051E938
procedure sub_0051E938;
begin
{*
 0051E938    push       ebp
 0051E939    mov        ebp,esp
 0051E93B    mov        ecx,6
 0051E940    push       0
 0051E942    push       0
 0051E944    dec        ecx
<0051E945    jne        0051E940
 0051E947    push       ecx
 0051E948    push       ebx
 0051E949    push       esi
 0051E94A    push       edi
 0051E94B    mov        esi,eax
 0051E94D    xor        eax,eax
 0051E94F    push       ebp
 0051E950    push       51EAD8
 0051E955    push       dword ptr fs:[eax]
 0051E958    mov        dword ptr fs:[eax],esp
 0051E95B    cmp        byte ptr [esi+2B],0; TZPostgreSQLConnection.?f2B:byte
>0051E95F    je         0051EAA8
 0051E965    lea        eax,[ebp-4]
 0051E968    push       eax
 0051E969    mov        eax,dword ptr [esi+18]; TZPostgreSQLConnection.?f18:String
 0051E96C    mov        dword ptr [ebp-14],eax
 0051E96F    mov        byte ptr [ebp-10],0B
 0051E973    mov        eax,dword ptr [esi+1C]; TZPostgreSQLConnection.?f1C:String
 0051E976    mov        dword ptr [ebp-0C],eax
 0051E979    mov        byte ptr [ebp-8],0B
 0051E97D    lea        edx,[ebp-14]
 0051E980    mov        ecx,1
 0051E985    mov        eax,51EAF0; 'CONNECT TO \"%s\" AS USER \"%s\"'
 0051E98A    call       Format
 0051E98F    lea        edx,[ebp-18]
 0051E992    mov        eax,esi
 0051E994    call       0051E4E0
 0051E999    mov        eax,dword ptr [ebp-18]
 0051E99C    call       @LStrToPChar
 0051E9A1    mov        edx,eax
 0051E9A3    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E9A6    mov        ecx,dword ptr [eax]
 0051E9A8    call       dword ptr [ecx+20]
 0051E9AB    mov        ebx,eax
 0051E9AD    mov        dword ptr [esi+34],ebx; TZPostgreSQLConnection.?f34:dword
 0051E9B0    mov        edx,ebx
 0051E9B2    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E9B5    mov        ecx,dword ptr [eax]
 0051E9B7    call       dword ptr [ecx+54]
 0051E9BA    cmp        al,1
>0051E9BC    jne        0051E9D5
 0051E9BE    push       0
 0051E9C0    mov        eax,dword ptr [ebp-4]
 0051E9C3    push       eax
 0051E9C4    push       0
 0051E9C6    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051E9C9    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E9CC    xor        eax,eax
 0051E9CE    call       00511EF0
>0051E9D3    jmp        0051E9F5
 0051E9D5    mov        eax,dword ptr [ebp-4]
 0051E9D8    push       eax
 0051E9D9    lea        edx,[ebp-1C]
 0051E9DC    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051E9DF    mov        ecx,dword ptr [eax]
 0051E9E1    call       dword ptr [ecx+0C]
 0051E9E4    mov        ecx,dword ptr [ebp-1C]
 0051E9E7    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051E9EC    mov        eax,dword ptr [eax]
 0051E9EE    xor        edx,edx
 0051E9F0    mov        ebx,dword ptr [eax]
 0051E9F2    call       dword ptr [ebx+3C]
 0051E9F5    push       0
 0051E9F7    mov        ecx,dword ptr [esi+5C]; TZPostgreSQLConnection.?f5C:dword
 0051E9FA    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051E9FD    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EA00    mov        ebx,dword ptr [eax]
 0051EA02    call       dword ptr [ebx+6C]
 0051EA05    cmp        dword ptr [esi+48],0; TZPostgreSQLConnection.?f48:String
>0051EA09    je         0051EA9A
 0051EA0F    lea        eax,[ebp-20]
 0051EA12    push       eax
 0051EA13    mov        eax,dword ptr [esi+48]; TZPostgreSQLConnection.?f48:String
 0051EA16    mov        dword ptr [ebp-28],eax
 0051EA19    mov        byte ptr [ebp-24],0B
 0051EA1D    lea        edx,[ebp-28]
 0051EA20    xor        ecx,ecx
 0051EA22    mov        eax,51EB18; 'SET CLIENT_ENCODING TO '%s''
 0051EA27    call       Format
 0051EA2C    mov        eax,dword ptr [ebp-20]
 0051EA2F    call       @LStrToPChar
 0051EA34    mov        edi,eax
 0051EA36    mov        ecx,edi
 0051EA38    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051EA3B    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EA3E    mov        ebx,dword ptr [eax]
 0051EA40    call       dword ptr [ebx+70]
 0051EA43    mov        ebx,eax
 0051EA45    push       3
 0051EA47    lea        eax,[ebp-2C]
 0051EA4A    mov        edx,edi
 0051EA4C    call       @LStrFromPChar
 0051EA51    mov        eax,dword ptr [ebp-2C]
 0051EA54    push       eax
 0051EA55    push       ebx
 0051EA56    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051EA59    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EA5C    xor        eax,eax
 0051EA5E    call       00511EF0
 0051EA63    mov        edx,ebx
 0051EA65    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EA68    mov        ecx,dword ptr [eax]
 0051EA6A    call       dword ptr [ecx+0EC]
 0051EA70    lea        eax,[ebp-30]
 0051EA73    mov        edx,edi
 0051EA75    call       @LStrFromPChar
 0051EA7A    mov        eax,dword ptr [ebp-30]
 0051EA7D    push       eax
 0051EA7E    lea        edx,[ebp-34]
 0051EA81    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EA84    mov        ecx,dword ptr [eax]
 0051EA86    call       dword ptr [ecx+0C]
 0051EA89    mov        ecx,dword ptr [ebp-34]
 0051EA8C    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051EA91    mov        eax,dword ptr [eax]
 0051EA93    mov        dl,3
 0051EA95    mov        ebx,dword ptr [eax]
 0051EA97    call       dword ptr [ebx+3C]
 0051EA9A    mov        eax,esi
 0051EA9C    call       0051E704
 0051EAA1    mov        eax,esi
 0051EAA3    call       004DDF38
 0051EAA8    xor        eax,eax
 0051EAAA    pop        edx
 0051EAAB    pop        ecx
 0051EAAC    pop        ecx
 0051EAAD    mov        dword ptr fs:[eax],edx
 0051EAB0    push       51EADF
 0051EAB5    lea        eax,[ebp-34]
 0051EAB8    mov        edx,3
 0051EABD    call       @LStrArrayClr
 0051EAC2    lea        eax,[ebp-20]
 0051EAC5    mov        edx,3
 0051EACA    call       @LStrArrayClr
 0051EACF    lea        eax,[ebp-4]
 0051EAD2    call       @LStrClr
 0051EAD7    ret
<0051EAD8    jmp        @HandleFinally
<0051EADD    jmp        0051EAB5
 0051EADF    pop        edi
 0051EAE0    pop        esi
 0051EAE1    pop        ebx
 0051EAE2    mov        esp,ebp
 0051EAE4    pop        ebp
 0051EAE5    ret
*}
end;

//0051EB34
//procedure sub_0051EB34(?:?);
//begin
{*
 0051EB34    push       ebp
 0051EB35    mov        ebp,esp
 0051EB37    xor        ecx,ecx
 0051EB39    push       ecx
 0051EB3A    push       ecx
 0051EB3B    push       ecx
 0051EB3C    push       ecx
 0051EB3D    push       ecx
 0051EB3E    push       ebx
 0051EB3F    push       esi
 0051EB40    push       edi
 0051EB41    mov        ebx,edx
 0051EB43    mov        esi,eax
 0051EB45    xor        eax,eax
 0051EB47    push       ebp
 0051EB48    push       51EC26
 0051EB4D    push       dword ptr fs:[eax]
 0051EB50    mov        dword ptr fs:[eax],esp
 0051EB53    cmp        byte ptr [esi+2A],0; TZPostgreSQLConnection.?f2A:byte
>0051EB57    je         0051EC0B
 0051EB5D    cmp        byte ptr [esi+2B],0; TZPostgreSQLConnection.?f2B:byte
>0051EB61    jne        0051EC0B
 0051EB67    push       51EC3C; 'PREPARE TRANSACTION ''
 0051EB6C    lea        eax,[ebp-8]
 0051EB6F    push       eax
 0051EB70    mov        ecx,0C8
 0051EB75    mov        edx,1
 0051EB7A    mov        eax,ebx
 0051EB7C    call       @LStrCopy
 0051EB81    push       dword ptr [ebp-8]
 0051EB84    push       51EC5C; '''
 0051EB89    lea        eax,[ebp-4]
 0051EB8C    mov        edx,3
 0051EB91    call       @LStrCatN
 0051EB96    mov        eax,dword ptr [ebp-4]
 0051EB99    call       @LStrToPChar
 0051EB9E    mov        edi,eax
 0051EBA0    mov        ecx,edi
 0051EBA2    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051EBA5    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EBA8    mov        ebx,dword ptr [eax]
 0051EBAA    call       dword ptr [ebx+70]
 0051EBAD    mov        ebx,eax
 0051EBAF    push       3
 0051EBB1    lea        eax,[ebp-0C]
 0051EBB4    mov        edx,edi
 0051EBB6    call       @LStrFromPChar
 0051EBBB    mov        eax,dword ptr [ebp-0C]
 0051EBBE    push       eax
 0051EBBF    push       ebx
 0051EBC0    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051EBC3    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EBC6    xor        eax,eax
 0051EBC8    call       00511EF0
 0051EBCD    mov        edx,ebx
 0051EBCF    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EBD2    mov        ecx,dword ptr [eax]
 0051EBD4    call       dword ptr [ecx+0EC]
 0051EBDA    lea        eax,[ebp-10]
 0051EBDD    mov        edx,edi
 0051EBDF    call       @LStrFromPChar
 0051EBE4    mov        eax,dword ptr [ebp-10]
 0051EBE7    push       eax
 0051EBE8    lea        edx,[ebp-14]
 0051EBEB    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EBEE    mov        ecx,dword ptr [eax]
 0051EBF0    call       dword ptr [ecx+0C]
 0051EBF3    mov        ecx,dword ptr [ebp-14]
 0051EBF6    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051EBFB    mov        eax,dword ptr [eax]
 0051EBFD    mov        dl,3
 0051EBFF    mov        ebx,dword ptr [eax]
 0051EC01    call       dword ptr [ebx+3C]
 0051EC04    mov        eax,esi
 0051EC06    call       0051E704
 0051EC0B    xor        eax,eax
 0051EC0D    pop        edx
 0051EC0E    pop        ecx
 0051EC0F    pop        ecx
 0051EC10    mov        dword ptr fs:[eax],edx
 0051EC13    push       51EC2D
 0051EC18    lea        eax,[ebp-14]
 0051EC1B    mov        edx,5
 0051EC20    call       @LStrArrayClr
 0051EC25    ret
<0051EC26    jmp        @HandleFinally
<0051EC2B    jmp        0051EC18
 0051EC2D    pop        edi
 0051EC2E    pop        esi
 0051EC2F    pop        ebx
 0051EC30    mov        esp,ebp
 0051EC32    pop        ebp
 0051EC33    ret
*}
//end;

//0051EC60
//procedure sub_0051EC60(?:?; ?:?);
//begin
{*
 0051EC60    push       ebp
 0051EC61    mov        ebp,esp
 0051EC63    push       ebx
 0051EC64    push       esi
 0051EC65    push       edi
 0051EC66    mov        edi,ecx
 0051EC68    mov        esi,edx
 0051EC6A    mov        ebx,eax
 0051EC6C    mov        eax,ebx
 0051EC6E    mov        edx,dword ptr [eax]
 0051EC70    call       dword ptr [edx+44]; TZPostgreSQLConnection.sub_004DE1AC
 0051EC73    test       al,al
>0051EC75    je         0051EC7E
 0051EC77    mov        eax,ebx
 0051EC79    mov        edx,dword ptr [eax]
 0051EC7B    call       dword ptr [edx+3C]; TZPostgreSQLConnection.sub_0051E938
 0051EC7E    mov        eax,ebx
 0051EC80    test       eax,eax
>0051EC82    je         0051EC87
 0051EC84    sub        eax,0FFFFFFD0
 0051EC87    push       eax
 0051EC88    push       esi
 0051EC89    mov        eax,dword ptr [ebx+34]; TZPostgreSQLConnection.?f34:dword
 0051EC8C    push       eax
 0051EC8D    mov        ecx,dword ptr [ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EC90    mov        dl,1
 0051EC92    mov        eax,[00513BF8]; TZPostgreSQLStatement
 0051EC97    call       TZPostgreSQLStatement.Create; TZPostgreSQLStatement.Create
 0051EC9C    mov        edx,eax
 0051EC9E    test       edx,edx
>0051ECA0    je         0051ECA5
 0051ECA2    sub        edx,0FFFFFFBC
 0051ECA5    mov        eax,edi
 0051ECA7    call       @IntfCopy
 0051ECAC    pop        edi
 0051ECAD    pop        esi
 0051ECAE    pop        ebx
 0051ECAF    pop        ebp
 0051ECB0    ret
*}
//end;

//0051ECB4
//procedure sub_0051ECB4(?:?; ?:?; ?:?);
//begin
{*
 0051ECB4    push       ebp
 0051ECB5    mov        ebp,esp
 0051ECB7    push       ebx
 0051ECB8    push       esi
 0051ECB9    push       edi
 0051ECBA    mov        edi,ecx
 0051ECBC    mov        esi,edx
 0051ECBE    mov        ebx,eax
 0051ECC0    mov        eax,ebx
 0051ECC2    mov        edx,dword ptr [eax]
 0051ECC4    call       dword ptr [edx+44]; TZPostgreSQLConnection.sub_004DE1AC
 0051ECC7    test       al,al
>0051ECC9    je         0051ECD2
 0051ECCB    mov        eax,ebx
 0051ECCD    mov        edx,dword ptr [eax]
 0051ECCF    call       dword ptr [edx+3C]; TZPostgreSQLConnection.sub_0051E938
 0051ECD2    mov        eax,ebx
 0051ECD4    test       eax,eax
>0051ECD6    je         0051ECDB
 0051ECD8    sub        eax,0FFFFFFD0
 0051ECDB    push       eax
 0051ECDC    push       esi
 0051ECDD    push       edi
 0051ECDE    mov        eax,dword ptr [ebx+34]; TZPostgreSQLConnection.?f34:dword
 0051ECE1    push       eax
 0051ECE2    mov        ecx,dword ptr [ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051ECE5    mov        dl,1
 0051ECE7    mov        eax,[00513CE4]; TZPostgreSQLPreparedStatement
 0051ECEC    call       TZPostgreSQLPreparedStatement.Create; TZPostgreSQLPreparedStatement.Create
 0051ECF1    mov        edx,eax
 0051ECF3    test       edx,edx
>0051ECF5    je         0051ECFA
 0051ECF7    sub        edx,0FFFFFFA4
 0051ECFA    mov        eax,dword ptr [ebp+8]
 0051ECFD    call       @IntfCopy
 0051ED02    pop        edi
 0051ED03    pop        esi
 0051ED04    pop        ebx
 0051ED05    pop        ebp
 0051ED06    ret        4
*}
//end;

//0051ED0C
procedure sub_0051ED0C;
begin
{*
 0051ED0C    push       ebp
 0051ED0D    mov        ebp,esp
 0051ED0F    push       0
 0051ED11    push       0
 0051ED13    push       0
 0051ED15    push       ebx
 0051ED16    push       esi
 0051ED17    push       edi
 0051ED18    mov        esi,eax
 0051ED1A    xor        eax,eax
 0051ED1C    push       ebp
 0051ED1D    push       51EDBF
 0051ED22    push       dword ptr fs:[eax]
 0051ED25    mov        dword ptr fs:[eax],esp
 0051ED28    cmp        byte ptr [esi+2A],0; TZPostgreSQLConnection.?f2A:byte
>0051ED2C    je         0051EDA4
 0051ED2E    cmp        byte ptr [esi+2B],0; TZPostgreSQLConnection.?f2B:byte
>0051ED32    jne        0051EDA4
 0051ED34    mov        edi,51EDD0; 'COMMIT'
 0051ED39    mov        ecx,edi
 0051ED3B    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051ED3E    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051ED41    mov        ebx,dword ptr [eax]
 0051ED43    call       dword ptr [ebx+70]
 0051ED46    mov        ebx,eax
 0051ED48    push       3
 0051ED4A    lea        eax,[ebp-4]
 0051ED4D    mov        edx,edi
 0051ED4F    call       @LStrFromPChar
 0051ED54    mov        eax,dword ptr [ebp-4]
 0051ED57    push       eax
 0051ED58    push       ebx
 0051ED59    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051ED5C    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051ED5F    xor        eax,eax
 0051ED61    call       00511EF0
 0051ED66    mov        edx,ebx
 0051ED68    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051ED6B    mov        ecx,dword ptr [eax]
 0051ED6D    call       dword ptr [ecx+0EC]
 0051ED73    lea        eax,[ebp-8]
 0051ED76    mov        edx,edi
 0051ED78    call       @LStrFromPChar
 0051ED7D    mov        eax,dword ptr [ebp-8]
 0051ED80    push       eax
 0051ED81    lea        edx,[ebp-0C]
 0051ED84    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051ED87    mov        ecx,dword ptr [eax]
 0051ED89    call       dword ptr [ecx+0C]
 0051ED8C    mov        ecx,dword ptr [ebp-0C]
 0051ED8F    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051ED94    mov        eax,dword ptr [eax]
 0051ED96    mov        dl,3
 0051ED98    mov        ebx,dword ptr [eax]
 0051ED9A    call       dword ptr [ebx+3C]
 0051ED9D    mov        eax,esi
 0051ED9F    call       0051E704
 0051EDA4    xor        eax,eax
 0051EDA6    pop        edx
 0051EDA7    pop        ecx
 0051EDA8    pop        ecx
 0051EDA9    mov        dword ptr fs:[eax],edx
 0051EDAC    push       51EDC6
 0051EDB1    lea        eax,[ebp-0C]
 0051EDB4    mov        edx,3
 0051EDB9    call       @LStrArrayClr
 0051EDBE    ret
<0051EDBF    jmp        @HandleFinally
<0051EDC4    jmp        0051EDB1
 0051EDC6    pop        edi
 0051EDC7    pop        esi
 0051EDC8    pop        ebx
 0051EDC9    mov        esp,ebp
 0051EDCB    pop        ebp
 0051EDCC    ret
*}
end;

//0051EDD8
//procedure sub_0051EDD8(?:?);
//begin
{*
 0051EDD8    push       ebp
 0051EDD9    mov        ebp,esp
 0051EDDB    xor        ecx,ecx
 0051EDDD    push       ecx
 0051EDDE    push       ecx
 0051EDDF    push       ecx
 0051EDE0    push       ecx
 0051EDE1    push       ecx
 0051EDE2    push       ebx
 0051EDE3    push       esi
 0051EDE4    push       edi
 0051EDE5    mov        ebx,edx
 0051EDE7    mov        esi,eax
 0051EDE9    xor        eax,eax
 0051EDEB    push       ebp
 0051EDEC    push       51EECA
 0051EDF1    push       dword ptr fs:[eax]
 0051EDF4    mov        dword ptr fs:[eax],esp
 0051EDF7    cmp        byte ptr [esi+2A],0; TZPostgreSQLConnection.?f2A:byte
>0051EDFB    jne        0051EEAF
 0051EE01    cmp        byte ptr [esi+2B],0; TZPostgreSQLConnection.?f2B:byte
>0051EE05    jne        0051EEAF
 0051EE0B    push       51EEE0; 'COMMIT PREPARED ''
 0051EE10    lea        eax,[ebp-8]
 0051EE13    push       eax
 0051EE14    mov        ecx,0C8
 0051EE19    mov        edx,1
 0051EE1E    mov        eax,ebx
 0051EE20    call       @LStrCopy
 0051EE25    push       dword ptr [ebp-8]
 0051EE28    push       51EEFC; '''
 0051EE2D    lea        eax,[ebp-4]
 0051EE30    mov        edx,3
 0051EE35    call       @LStrCatN
 0051EE3A    mov        eax,dword ptr [ebp-4]
 0051EE3D    call       @LStrToPChar
 0051EE42    mov        edi,eax
 0051EE44    mov        ecx,edi
 0051EE46    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051EE49    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EE4C    mov        ebx,dword ptr [eax]
 0051EE4E    call       dword ptr [ebx+70]
 0051EE51    mov        ebx,eax
 0051EE53    push       3
 0051EE55    lea        eax,[ebp-0C]
 0051EE58    mov        edx,edi
 0051EE5A    call       @LStrFromPChar
 0051EE5F    mov        eax,dword ptr [ebp-0C]
 0051EE62    push       eax
 0051EE63    push       ebx
 0051EE64    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051EE67    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EE6A    xor        eax,eax
 0051EE6C    call       00511EF0
 0051EE71    mov        edx,ebx
 0051EE73    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EE76    mov        ecx,dword ptr [eax]
 0051EE78    call       dword ptr [ecx+0EC]
 0051EE7E    lea        eax,[ebp-10]
 0051EE81    mov        edx,edi
 0051EE83    call       @LStrFromPChar
 0051EE88    mov        eax,dword ptr [ebp-10]
 0051EE8B    push       eax
 0051EE8C    lea        edx,[ebp-14]
 0051EE8F    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EE92    mov        ecx,dword ptr [eax]
 0051EE94    call       dword ptr [ecx+0C]
 0051EE97    mov        ecx,dword ptr [ebp-14]
 0051EE9A    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051EE9F    mov        eax,dword ptr [eax]
 0051EEA1    mov        dl,3
 0051EEA3    mov        ebx,dword ptr [eax]
 0051EEA5    call       dword ptr [ebx+3C]
 0051EEA8    mov        eax,esi
 0051EEAA    call       0051E704
 0051EEAF    xor        eax,eax
 0051EEB1    pop        edx
 0051EEB2    pop        ecx
 0051EEB3    pop        ecx
 0051EEB4    mov        dword ptr fs:[eax],edx
 0051EEB7    push       51EED1
 0051EEBC    lea        eax,[ebp-14]
 0051EEBF    mov        edx,5
 0051EEC4    call       @LStrArrayClr
 0051EEC9    ret
<0051EECA    jmp        @HandleFinally
<0051EECF    jmp        0051EEBC
 0051EED1    pop        edi
 0051EED2    pop        esi
 0051EED3    pop        ebx
 0051EED4    mov        esp,ebp
 0051EED6    pop        ebp
 0051EED7    ret
*}
//end;

//0051EF00
procedure sub_0051EF00;
begin
{*
 0051EF00    push       ebp
 0051EF01    mov        ebp,esp
 0051EF03    push       0
 0051EF05    push       0
 0051EF07    push       0
 0051EF09    push       ebx
 0051EF0A    push       esi
 0051EF0B    push       edi
 0051EF0C    mov        esi,eax
 0051EF0E    xor        eax,eax
 0051EF10    push       ebp
 0051EF11    push       51EFB3
 0051EF16    push       dword ptr fs:[eax]
 0051EF19    mov        dword ptr fs:[eax],esp
 0051EF1C    cmp        byte ptr [esi+2A],0; TZPostgreSQLConnection.?f2A:byte
>0051EF20    je         0051EF98
 0051EF22    cmp        byte ptr [esi+2B],0; TZPostgreSQLConnection.?f2B:byte
>0051EF26    jne        0051EF98
 0051EF28    mov        edi,51EFC4; 'ROLLBACK'
 0051EF2D    mov        ecx,edi
 0051EF2F    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051EF32    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EF35    mov        ebx,dword ptr [eax]
 0051EF37    call       dword ptr [ebx+70]
 0051EF3A    mov        ebx,eax
 0051EF3C    push       3
 0051EF3E    lea        eax,[ebp-4]
 0051EF41    mov        edx,edi
 0051EF43    call       @LStrFromPChar
 0051EF48    mov        eax,dword ptr [ebp-4]
 0051EF4B    push       eax
 0051EF4C    push       ebx
 0051EF4D    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051EF50    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EF53    xor        eax,eax
 0051EF55    call       00511EF0
 0051EF5A    mov        edx,ebx
 0051EF5C    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EF5F    mov        ecx,dword ptr [eax]
 0051EF61    call       dword ptr [ecx+0EC]
 0051EF67    lea        eax,[ebp-8]
 0051EF6A    mov        edx,edi
 0051EF6C    call       @LStrFromPChar
 0051EF71    mov        eax,dword ptr [ebp-8]
 0051EF74    push       eax
 0051EF75    lea        edx,[ebp-0C]
 0051EF78    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051EF7B    mov        ecx,dword ptr [eax]
 0051EF7D    call       dword ptr [ecx+0C]
 0051EF80    mov        ecx,dword ptr [ebp-0C]
 0051EF83    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051EF88    mov        eax,dword ptr [eax]
 0051EF8A    mov        dl,3
 0051EF8C    mov        ebx,dword ptr [eax]
 0051EF8E    call       dword ptr [ebx+3C]
 0051EF91    mov        eax,esi
 0051EF93    call       0051E704
 0051EF98    xor        eax,eax
 0051EF9A    pop        edx
 0051EF9B    pop        ecx
 0051EF9C    pop        ecx
 0051EF9D    mov        dword ptr fs:[eax],edx
 0051EFA0    push       51EFBA
 0051EFA5    lea        eax,[ebp-0C]
 0051EFA8    mov        edx,3
 0051EFAD    call       @LStrArrayClr
 0051EFB2    ret
<0051EFB3    jmp        @HandleFinally
<0051EFB8    jmp        0051EFA5
 0051EFBA    pop        edi
 0051EFBB    pop        esi
 0051EFBC    pop        ebx
 0051EFBD    mov        esp,ebp
 0051EFBF    pop        ebp
 0051EFC0    ret
*}
end;

//0051EFD0
//procedure sub_0051EFD0(?:?);
//begin
{*
 0051EFD0    push       ebp
 0051EFD1    mov        ebp,esp
 0051EFD3    xor        ecx,ecx
 0051EFD5    push       ecx
 0051EFD6    push       ecx
 0051EFD7    push       ecx
 0051EFD8    push       ecx
 0051EFD9    push       ecx
 0051EFDA    push       ebx
 0051EFDB    push       esi
 0051EFDC    push       edi
 0051EFDD    mov        ebx,edx
 0051EFDF    mov        esi,eax
 0051EFE1    xor        eax,eax
 0051EFE3    push       ebp
 0051EFE4    push       51F0C2
 0051EFE9    push       dword ptr fs:[eax]
 0051EFEC    mov        dword ptr fs:[eax],esp
 0051EFEF    cmp        byte ptr [esi+2A],0; TZPostgreSQLConnection.?f2A:byte
>0051EFF3    jne        0051F0A7
 0051EFF9    cmp        byte ptr [esi+2B],0; TZPostgreSQLConnection.?f2B:byte
>0051EFFD    jne        0051F0A7
 0051F003    push       51F0D8; 'ROLLBACK PREPARED ''
 0051F008    lea        eax,[ebp-8]
 0051F00B    push       eax
 0051F00C    mov        ecx,0C8
 0051F011    mov        edx,1
 0051F016    mov        eax,ebx
 0051F018    call       @LStrCopy
 0051F01D    push       dword ptr [ebp-8]
 0051F020    push       51F0F4; '''
 0051F025    lea        eax,[ebp-4]
 0051F028    mov        edx,3
 0051F02D    call       @LStrCatN
 0051F032    mov        eax,dword ptr [ebp-4]
 0051F035    call       @LStrToPChar
 0051F03A    mov        edi,eax
 0051F03C    mov        ecx,edi
 0051F03E    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051F041    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F044    mov        ebx,dword ptr [eax]
 0051F046    call       dword ptr [ebx+70]
 0051F049    mov        ebx,eax
 0051F04B    push       3
 0051F04D    lea        eax,[ebp-0C]
 0051F050    mov        edx,edi
 0051F052    call       @LStrFromPChar
 0051F057    mov        eax,dword ptr [ebp-0C]
 0051F05A    push       eax
 0051F05B    push       ebx
 0051F05C    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051F05F    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F062    xor        eax,eax
 0051F064    call       00511EF0
 0051F069    mov        edx,ebx
 0051F06B    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F06E    mov        ecx,dword ptr [eax]
 0051F070    call       dword ptr [ecx+0EC]
 0051F076    lea        eax,[ebp-10]
 0051F079    mov        edx,edi
 0051F07B    call       @LStrFromPChar
 0051F080    mov        eax,dword ptr [ebp-10]
 0051F083    push       eax
 0051F084    lea        edx,[ebp-14]
 0051F087    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F08A    mov        ecx,dword ptr [eax]
 0051F08C    call       dword ptr [ecx+0C]
 0051F08F    mov        ecx,dword ptr [ebp-14]
 0051F092    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051F097    mov        eax,dword ptr [eax]
 0051F099    mov        dl,3
 0051F09B    mov        ebx,dword ptr [eax]
 0051F09D    call       dword ptr [ebx+3C]
 0051F0A0    mov        eax,esi
 0051F0A2    call       0051E704
 0051F0A7    xor        eax,eax
 0051F0A9    pop        edx
 0051F0AA    pop        ecx
 0051F0AB    pop        ecx
 0051F0AC    mov        dword ptr fs:[eax],edx
 0051F0AF    push       51F0C9
 0051F0B4    lea        eax,[ebp-14]
 0051F0B7    mov        edx,5
 0051F0BC    call       @LStrArrayClr
 0051F0C1    ret
<0051F0C2    jmp        @HandleFinally
<0051F0C7    jmp        0051F0B4
 0051F0C9    pop        edi
 0051F0CA    pop        esi
 0051F0CB    pop        ebx
 0051F0CC    mov        esp,ebp
 0051F0CE    pop        ebp
 0051F0CF    ret
*}
//end;

//0051F0F8
procedure sub_0051F0F8;
begin
{*
 0051F0F8    push       ebp
 0051F0F9    mov        ebp,esp
 0051F0FB    add        esp,0FFFFFFF0
 0051F0FE    push       ebx
 0051F0FF    push       esi
 0051F100    xor        edx,edx
 0051F102    mov        dword ptr [ebp-10],edx
 0051F105    mov        dword ptr [ebp-4],edx
 0051F108    mov        ebx,eax
 0051F10A    xor        eax,eax
 0051F10C    push       ebp
 0051F10D    push       51F190
 0051F112    push       dword ptr fs:[eax]
 0051F115    mov        dword ptr fs:[eax],esp
 0051F118    cmp        byte ptr [ebx+2B],0; TZPostgreSQLConnection.?f2B:byte
>0051F11C    jne        0051F16B
 0051F11E    mov        edx,dword ptr [ebx+34]; TZPostgreSQLConnection.?f34:dword
 0051F121    mov        eax,dword ptr [ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F124    mov        ecx,dword ptr [eax]
 0051F126    call       dword ptr [ecx+2C]
 0051F129    xor        eax,eax
 0051F12B    mov        dword ptr [ebx+34],eax; TZPostgreSQLConnection.?f34:dword
 0051F12E    lea        eax,[ebp-4]
 0051F131    push       eax
 0051F132    mov        eax,dword ptr [ebx+18]; TZPostgreSQLConnection.?f18:String
 0051F135    mov        dword ptr [ebp-0C],eax
 0051F138    mov        byte ptr [ebp-8],0B
 0051F13C    lea        edx,[ebp-0C]
 0051F13F    xor        ecx,ecx
 0051F141    mov        eax,51F1A8; 'DISCONNECT FROM \"%s\"'
 0051F146    call       Format
 0051F14B    mov        eax,dword ptr [ebp-4]
 0051F14E    push       eax
 0051F14F    lea        edx,[ebp-10]
 0051F152    mov        eax,dword ptr [ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F155    mov        ecx,dword ptr [eax]
 0051F157    call       dword ptr [ecx+0C]
 0051F15A    mov        ecx,dword ptr [ebp-10]
 0051F15D    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051F162    mov        eax,dword ptr [eax]
 0051F164    mov        dl,1
 0051F166    mov        esi,dword ptr [eax]
 0051F168    call       dword ptr [esi+3C]
 0051F16B    mov        eax,ebx
 0051F16D    call       004DE1A4
 0051F172    xor        eax,eax
 0051F174    pop        edx
 0051F175    pop        ecx
 0051F176    pop        ecx
 0051F177    mov        dword ptr fs:[eax],edx
 0051F17A    push       51F197
 0051F17F    lea        eax,[ebp-10]
 0051F182    call       @LStrClr
 0051F187    lea        eax,[ebp-4]
 0051F18A    call       @LStrClr
 0051F18F    ret
<0051F190    jmp        @HandleFinally
<0051F195    jmp        0051F17F
 0051F197    pop        esi
 0051F198    pop        ebx
 0051F199    mov        esp,ebp
 0051F19B    pop        ebp
 0051F19C    ret
*}
end;

//0051F1C0
//procedure sub_0051F1C0(?:?);
//begin
{*
 0051F1C0    push       ebp
 0051F1C1    mov        ebp,esp
 0051F1C3    xor        ecx,ecx
 0051F1C5    push       ecx
 0051F1C6    push       ecx
 0051F1C7    push       ecx
 0051F1C8    push       ecx
 0051F1C9    push       ecx
 0051F1CA    push       ebx
 0051F1CB    push       esi
 0051F1CC    push       edi
 0051F1CD    mov        byte ptr [ebp-1],dl
 0051F1D0    mov        esi,eax
 0051F1D2    xor        eax,eax
 0051F1D4    push       ebp
 0051F1D5    push       51F2B7
 0051F1DA    push       dword ptr fs:[eax]
 0051F1DD    mov        dword ptr fs:[eax],esp
 0051F1E0    mov        al,byte ptr [ebp-1]
 0051F1E3    test       al,al
>0051F1E5    je         0051F210
 0051F1E7    sub        al,2
>0051F1E9    je         0051F210
 0051F1EB    sub        al,2
>0051F1ED    je         0051F210
 0051F1EF    lea        edx,[ebp-8]
 0051F1F2    mov        eax,[0061BD50]; ^#122.sResString48:TResStringRec
 0051F1F7    call       LoadResString
 0051F1FC    mov        ecx,dword ptr [ebp-8]
 0051F1FF    mov        dl,1
 0051F201    mov        eax,[004C6D20]; EZSQLException
 0051F206    call       EZSQLException.Create; EZSQLException.Create
 0051F20B    call       @RaiseExcept
 0051F210    cmp        byte ptr [esi+2A],0; TZPostgreSQLConnection.?f2A:byte
>0051F214    je         0051F285
 0051F216    cmp        byte ptr [esi+2B],0; TZPostgreSQLConnection.?f2B:byte
>0051F21A    jne        0051F285
 0051F21C    mov        edi,51F2C8; 'END'
 0051F221    mov        ecx,edi
 0051F223    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051F226    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F229    mov        ebx,dword ptr [eax]
 0051F22B    call       dword ptr [ebx+70]
 0051F22E    mov        ebx,eax
 0051F230    push       3
 0051F232    lea        eax,[ebp-0C]
 0051F235    mov        edx,edi
 0051F237    call       @LStrFromPChar
 0051F23C    mov        eax,dword ptr [ebp-0C]
 0051F23F    push       eax
 0051F240    push       ebx
 0051F241    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051F244    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F247    xor        eax,eax
 0051F249    call       00511EF0
 0051F24E    mov        edx,ebx
 0051F250    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F253    mov        ecx,dword ptr [eax]
 0051F255    call       dword ptr [ecx+0EC]
 0051F25B    lea        eax,[ebp-10]
 0051F25E    mov        edx,edi
 0051F260    call       @LStrFromPChar
 0051F265    mov        eax,dword ptr [ebp-10]
 0051F268    push       eax
 0051F269    lea        edx,[ebp-14]
 0051F26C    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F26F    mov        ecx,dword ptr [eax]
 0051F271    call       dword ptr [ecx+0C]
 0051F274    mov        ecx,dword ptr [ebp-14]
 0051F277    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051F27C    mov        eax,dword ptr [eax]
 0051F27E    mov        dl,3
 0051F280    mov        ebx,dword ptr [eax]
 0051F282    call       dword ptr [ebx+3C]
 0051F285    mov        dl,byte ptr [ebp-1]
 0051F288    mov        eax,esi
 0051F28A    call       004DE224
 0051F28F    cmp        byte ptr [esi+2B],0; TZPostgreSQLConnection.?f2B:byte
>0051F293    jne        0051F29C
 0051F295    mov        eax,esi
 0051F297    call       0051E704
 0051F29C    xor        eax,eax
 0051F29E    pop        edx
 0051F29F    pop        ecx
 0051F2A0    pop        ecx
 0051F2A1    mov        dword ptr fs:[eax],edx
 0051F2A4    push       51F2BE
 0051F2A9    lea        eax,[ebp-14]
 0051F2AC    mov        edx,4
 0051F2B1    call       @LStrArrayClr
 0051F2B6    ret
<0051F2B7    jmp        @HandleFinally
<0051F2BC    jmp        0051F2A9
 0051F2BE    pop        edi
 0051F2BF    pop        esi
 0051F2C0    pop        ebx
 0051F2C1    mov        esp,ebp
 0051F2C3    pop        ebp
 0051F2C4    ret
*}
//end;

//0051F5BC
//function sub_0051F5BC:?;
//begin
{*
 0051F5BC    push       ebp
 0051F5BD    mov        ebp,esp
 0051F5BF    push       ebx
 0051F5C0    push       esi
 0051F5C1    mov        ebx,eax
 0051F5C3    mov        eax,ebx
 0051F5C5    call       0051F60C
 0051F5CA    imul       esi,eax,0F4240
>0051F5D0    jno        0051F5D7
 0051F5D2    call       @IntOver
 0051F5D7    mov        eax,ebx
 0051F5D9    call       0051F62C
 0051F5DE    imul       eax,eax,3E8
>0051F5E4    jno        0051F5EB
 0051F5E6    call       @IntOver
 0051F5EB    add        esi,eax
>0051F5ED    jno        0051F5F4
 0051F5EF    call       @IntOver
 0051F5F4    mov        eax,ebx
 0051F5F6    call       0051F64C
 0051F5FB    add        esi,eax
>0051F5FD    jno        0051F604
 0051F5FF    call       @IntOver
 0051F604    mov        eax,esi
 0051F606    pop        esi
 0051F607    pop        ebx
 0051F608    pop        ebp
 0051F609    ret
*}
//end;

//0051F60C
//function sub_0051F60C(?:TZPostgreSQLConnection):?;
//begin
{*
 0051F60C    push       ebp
 0051F60D    mov        ebp,esp
 0051F60F    push       ebx
 0051F610    mov        ebx,eax
 0051F612    cmp        dword ptr [ebx+50],0; TZPostgreSQLConnection.?f50:Integer
>0051F616    jne        0051F625
 0051F618    cmp        dword ptr [ebx+54],0; TZPostgreSQLConnection.?f54:dword
>0051F61C    jne        0051F625
 0051F61E    mov        eax,ebx
 0051F620    call       0051F66C
 0051F625    mov        eax,dword ptr [ebx+50]; TZPostgreSQLConnection.?f50:Integer
 0051F628    pop        ebx
 0051F629    pop        ebp
 0051F62A    ret
*}
//end;

//0051F62C
//function sub_0051F62C(?:TZPostgreSQLConnection):?;
//begin
{*
 0051F62C    push       ebp
 0051F62D    mov        ebp,esp
 0051F62F    push       ebx
 0051F630    mov        ebx,eax
 0051F632    cmp        dword ptr [ebx+50],0; TZPostgreSQLConnection.?f50:Integer
>0051F636    jne        0051F645
 0051F638    cmp        dword ptr [ebx+54],0; TZPostgreSQLConnection.?f54:dword
>0051F63C    jne        0051F645
 0051F63E    mov        eax,ebx
 0051F640    call       0051F66C
 0051F645    mov        eax,dword ptr [ebx+54]; TZPostgreSQLConnection.?f54:dword
 0051F648    pop        ebx
 0051F649    pop        ebp
 0051F64A    ret
*}
//end;

//0051F64C
//function sub_0051F64C(?:TZPostgreSQLConnection):?;
//begin
{*
 0051F64C    push       ebp
 0051F64D    mov        ebp,esp
 0051F64F    push       ebx
 0051F650    mov        ebx,eax
 0051F652    cmp        dword ptr [ebx+50],0; TZPostgreSQLConnection.?f50:Integer
>0051F656    jne        0051F665
 0051F658    cmp        dword ptr [ebx+54],0; TZPostgreSQLConnection.?f54:dword
>0051F65C    jne        0051F665
 0051F65E    mov        eax,ebx
 0051F660    call       0051F66C
 0051F665    mov        eax,dword ptr [ebx+58]; TZPostgreSQLConnection.?f58:dword
 0051F668    pop        ebx
 0051F669    pop        ebp
 0051F66A    ret
*}
//end;

//0051F66C
//procedure sub_0051F66C(?:TZPostgreSQLConnection);
//begin
{*
 0051F66C    push       ebp
 0051F66D    mov        ebp,esp
 0051F66F    mov        ecx,4
 0051F674    push       0
 0051F676    push       0
 0051F678    dec        ecx
<0051F679    jne        0051F674
 0051F67B    push       ecx
 0051F67C    push       ebx
 0051F67D    push       esi
 0051F67E    push       edi
 0051F67F    mov        esi,eax
 0051F681    xor        eax,eax
 0051F683    push       ebp
 0051F684    push       51F836
 0051F689    push       dword ptr fs:[eax]
 0051F68C    mov        dword ptr fs:[eax],esp
 0051F68F    cmp        byte ptr [esi+2B],0; TZPostgreSQLConnection.?f2B:byte
>0051F693    je         0051F69C
 0051F695    mov        eax,esi
 0051F697    mov        edx,dword ptr [eax]
 0051F699    call       dword ptr [edx+3C]; TZPostgreSQLConnection.sub_0051E938
 0051F69C    mov        eax,51F844
 0051F6A1    mov        dword ptr [ebp-0C],eax
 0051F6A4    mov        edx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051F6A7    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F6AA    mov        ecx,dword ptr [ebp-0C]
 0051F6AD    mov        ebx,dword ptr [eax]
 0051F6AF    call       dword ptr [ebx+70]
 0051F6B2    mov        edi,eax
 0051F6B4    push       3
 0051F6B6    lea        eax,[ebp-10]
 0051F6B9    mov        edx,dword ptr [ebp-0C]
 0051F6BC    call       @LStrFromPChar
 0051F6C1    mov        eax,dword ptr [ebp-10]
 0051F6C4    push       eax
 0051F6C5    push       edi
 0051F6C6    mov        ecx,dword ptr [esi+34]; TZPostgreSQLConnection.?f34:dword
 0051F6C9    mov        edx,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F6CC    mov        eax,esi
 0051F6CE    test       eax,eax
>0051F6D0    je         0051F6D5
 0051F6D2    sub        eax,0FFFFFFD0
 0051F6D5    call       00511EF0
 0051F6DA    lea        eax,[ebp-14]
 0051F6DD    mov        edx,dword ptr [ebp-0C]
 0051F6E0    call       @LStrFromPChar
 0051F6E5    mov        eax,dword ptr [ebp-14]
 0051F6E8    push       eax
 0051F6E9    lea        edx,[ebp-18]
 0051F6EC    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F6EF    mov        ecx,dword ptr [eax]
 0051F6F1    call       dword ptr [ecx+0C]
 0051F6F4    mov        ecx,dword ptr [ebp-18]
 0051F6F7    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051F6FC    mov        eax,dword ptr [eax]
 0051F6FE    mov        dl,3
 0051F700    mov        ebx,dword ptr [eax]
 0051F702    call       dword ptr [ebx+3C]
 0051F705    push       0
 0051F707    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F70A    xor        ecx,ecx
 0051F70C    mov        edx,edi
 0051F70E    mov        ebx,dword ptr [eax]
 0051F710    call       dword ptr [ebx+0E0]
 0051F716    mov        edx,eax
 0051F718    lea        eax,[ebp-4]
 0051F71B    call       @LStrFromPChar
 0051F720    mov        eax,dword ptr [esi+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F723    mov        edx,edi
 0051F725    mov        ecx,dword ptr [eax]
 0051F727    call       dword ptr [ecx+0EC]
 0051F72D    mov        dl,1
 0051F72F    mov        eax,[0041C8E4]; TStringList
 0051F734    call       TObject.Create; TStringList.Create
 0051F739    mov        dword ptr [ebp-8],eax
 0051F73C    xor        eax,eax
 0051F73E    push       ebp
 0051F73F    push       51F80C
 0051F744    push       dword ptr fs:[eax]
 0051F747    mov        dword ptr fs:[eax],esp
 0051F74A    mov        ecx,51F860; ' '
 0051F74F    mov        edx,dword ptr [ebp-4]
 0051F752    mov        eax,dword ptr [ebp-8]
 0051F755    call       004BF370
 0051F75A    lea        ecx,[ebp-4]
 0051F75D    mov        edx,1
 0051F762    mov        eax,dword ptr [ebp-8]
 0051F765    mov        ebx,dword ptr [eax]
 0051F767    call       dword ptr [ebx+0C]; TStringList.Get
 0051F76A    mov        ecx,51F86C; '.'
 0051F76F    mov        edx,dword ptr [ebp-4]
 0051F772    mov        eax,dword ptr [ebp-8]
 0051F775    call       004BF370
 0051F77A    lea        ecx,[ebp-1C]
 0051F77D    xor        edx,edx
 0051F77F    mov        eax,dword ptr [ebp-8]
 0051F782    mov        ebx,dword ptr [eax]
 0051F784    call       dword ptr [ebx+0C]; TStringList.Get
 0051F787    mov        eax,dword ptr [ebp-1C]
 0051F78A    xor        edx,edx
 0051F78C    call       StrToIntDef
 0051F791    mov        dword ptr [esi+50],eax; TZPostgreSQLConnection.?f50:Integer
 0051F794    mov        eax,dword ptr [ebp-8]
 0051F797    mov        edx,dword ptr [eax]
 0051F799    call       dword ptr [edx+14]; TStringList.GetCount
 0051F79C    dec        eax
>0051F79D    jle        0051F7BF
 0051F79F    lea        ecx,[ebp-20]
 0051F7A2    mov        edx,1
 0051F7A7    mov        eax,dword ptr [ebp-8]
 0051F7AA    mov        ebx,dword ptr [eax]
 0051F7AC    call       dword ptr [ebx+0C]; TStringList.Get
 0051F7AF    mov        eax,dword ptr [ebp-20]
 0051F7B2    call       00512094
 0051F7B7    movzx      eax,ax
 0051F7BA    mov        dword ptr [esi+54],eax; TZPostgreSQLConnection.?f54:dword
>0051F7BD    jmp        0051F7C4
 0051F7BF    xor        eax,eax
 0051F7C1    mov        dword ptr [esi+54],eax; TZPostgreSQLConnection.?f54:dword
 0051F7C4    mov        eax,dword ptr [ebp-8]
 0051F7C7    mov        edx,dword ptr [eax]
 0051F7C9    call       dword ptr [edx+14]; TStringList.GetCount
 0051F7CC    cmp        eax,2
>0051F7CF    jle        0051F7F1
 0051F7D1    lea        ecx,[ebp-24]
 0051F7D4    mov        edx,2
 0051F7D9    mov        eax,dword ptr [ebp-8]
 0051F7DC    mov        ebx,dword ptr [eax]
 0051F7DE    call       dword ptr [ebx+0C]; TStringList.Get
 0051F7E1    mov        eax,dword ptr [ebp-24]
 0051F7E4    call       00512094
 0051F7E9    movzx      eax,ax
 0051F7EC    mov        dword ptr [esi+58],eax; TZPostgreSQLConnection.?f58:dword
>0051F7EF    jmp        0051F7F6
 0051F7F1    xor        eax,eax
 0051F7F3    mov        dword ptr [esi+58],eax; TZPostgreSQLConnection.?f58:dword
 0051F7F6    xor        eax,eax
 0051F7F8    pop        edx
 0051F7F9    pop        ecx
 0051F7FA    pop        ecx
 0051F7FB    mov        dword ptr fs:[eax],edx
 0051F7FE    push       51F813
 0051F803    mov        eax,dword ptr [ebp-8]
 0051F806    call       TObject.Free
 0051F80B    ret
<0051F80C    jmp        @HandleFinally
<0051F811    jmp        0051F803
 0051F813    xor        eax,eax
 0051F815    pop        edx
 0051F816    pop        ecx
 0051F817    pop        ecx
 0051F818    mov        dword ptr fs:[eax],edx
 0051F81B    push       51F83D
 0051F820    lea        eax,[ebp-24]
 0051F823    mov        edx,6
 0051F828    call       @LStrArrayClr
 0051F82D    lea        eax,[ebp-4]
 0051F830    call       @LStrClr
 0051F835    ret
<0051F836    jmp        @HandleFinally
<0051F83B    jmp        0051F820
 0051F83D    pop        edi
 0051F83E    pop        esi
 0051F83F    pop        ebx
 0051F840    mov        esp,ebp
 0051F842    pop        ebp
 0051F843    ret
*}
//end;

//0051F870
//function sub_0051F870:?;
//begin
{*
 0051F870    push       ebp
 0051F871    mov        ebp,esp
 0051F873    add        esp,0FFFFFFF8
 0051F876    push       ebx
 0051F877    push       esi
 0051F878    push       edi
 0051F879    mov        ebx,eax
 0051F87B    mov        dword ptr [ebp-4],0FFFFFFFF
 0051F882    mov        edx,dword ptr [ebx+34]; TZPostgreSQLConnection.?f34:dword
 0051F885    test       edx,edx
 0051F887    sete       al
 0051F88A    or         al,byte ptr [ebx+2B]; TZPostgreSQLConnection.?f2B:byte
>0051F88D    jne        0051F944
 0051F893    mov        ecx,51F950
 0051F898    mov        eax,dword ptr [ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F89B    mov        esi,dword ptr [eax]
 0051F89D    call       dword ptr [esi+70]
 0051F8A0    mov        esi,eax
 0051F8A2    test       esi,esi
 0051F8A4    setne      byte ptr [ebp-5]
 0051F8A8    mov        eax,dword ptr [ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F8AB    mov        edx,esi
 0051F8AD    mov        ecx,dword ptr [eax]
 0051F8AF    call       dword ptr [ecx+0EC]
 0051F8B5    cmp        byte ptr [ebp-5],0
>0051F8B9    je         0051F8D1
 0051F8BB    mov        edx,dword ptr [ebx+34]; TZPostgreSQLConnection.?f34:dword
 0051F8BE    mov        eax,dword ptr [ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F8C1    mov        ecx,dword ptr [eax]
 0051F8C3    call       dword ptr [ecx+54]
 0051F8C6    test       al,al
>0051F8C8    jne        0051F8D1
 0051F8CA    xor        eax,eax
 0051F8CC    mov        dword ptr [ebp-4],eax
>0051F8CF    jmp        0051F944
 0051F8D1    xor        eax,eax
 0051F8D3    push       ebp
 0051F8D4    push       51F933
 0051F8D9    push       dword ptr fs:[eax]
 0051F8DC    mov        dword ptr fs:[eax],esp
 0051F8DF    mov        edx,dword ptr [ebx+34]; TZPostgreSQLConnection.?f34:dword
 0051F8E2    mov        eax,dword ptr [ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F8E5    mov        ecx,dword ptr [eax]
 0051F8E7    call       dword ptr [ecx+30]
 0051F8EA    mov        ecx,51F950
 0051F8EF    mov        edx,dword ptr [ebx+34]; TZPostgreSQLConnection.?f34:dword
 0051F8F2    mov        eax,dword ptr [ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F8F5    mov        esi,dword ptr [eax]
 0051F8F7    call       dword ptr [esi+70]
 0051F8FA    mov        esi,eax
 0051F8FC    test       esi,esi
 0051F8FE    setne      byte ptr [ebp-5]
 0051F902    mov        eax,dword ptr [ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F905    mov        edx,esi
 0051F907    mov        ecx,dword ptr [eax]
 0051F909    call       dword ptr [ecx+0EC]
 0051F90F    cmp        byte ptr [ebp-5],0
>0051F913    je         0051F929
 0051F915    mov        edx,dword ptr [ebx+34]; TZPostgreSQLConnection.?f34:dword
 0051F918    mov        eax,dword ptr [ebx+40]; TZPostgreSQLConnection.?f40:IZPostgreSQLPlainDriver
 0051F91B    mov        ecx,dword ptr [eax]
 0051F91D    call       dword ptr [ecx+54]
 0051F920    test       al,al
>0051F922    jne        0051F929
 0051F924    xor        eax,eax
 0051F926    mov        dword ptr [ebp-4],eax
 0051F929    xor        eax,eax
 0051F92B    pop        edx
 0051F92C    pop        ecx
 0051F92D    pop        ecx
 0051F92E    mov        dword ptr fs:[eax],edx
>0051F931    jmp        0051F944
<0051F933    jmp        @HandleAnyException
 0051F938    mov        dword ptr [ebp-4],1
 0051F93F    call       @DoneExcept
 0051F944    mov        eax,dword ptr [ebp-4]
 0051F947    pop        edi
 0051F948    pop        esi
 0051F949    pop        ebx
 0051F94A    pop        ecx
 0051F94B    pop        ecx
 0051F94C    pop        ebp
 0051F94D    ret
*}
//end;

//0051F954
//procedure sub_0051F954(?:?; ?:?; ?:?);
//begin
{*
 0051F954    push       ebp
 0051F955    mov        ebp,esp
 0051F957    push       ebx
 0051F958    push       esi
 0051F959    push       edi
 0051F95A    mov        edi,ecx
 0051F95C    mov        esi,edx
 0051F95E    mov        ebx,eax
 0051F960    push       esi
 0051F961    push       edi
 0051F962    mov        ecx,ebx
 0051F964    test       ecx,ecx
>0051F966    je         0051F96B
 0051F968    sub        ecx,0FFFFFFD0
 0051F96B    mov        dl,1
 0051F96D    mov        eax,[0051DCA4]; TZPostgreSQLSequence
 0051F972    call       TZPostgreSQLSequence.Create; TZPostgreSQLSequence.Create
 0051F977    mov        edx,eax
 0051F979    test       edx,edx
>0051F97B    je         0051F980
 0051F97D    sub        edx,0FFFFFFE8
 0051F980    mov        eax,dword ptr [ebp+8]
 0051F983    call       @IntfCopy
 0051F988    pop        edi
 0051F989    pop        esi
 0051F98A    pop        ebx
 0051F98B    pop        ebp
 0051F98C    ret        4
*}
//end;

//0051F994
procedure sub_0051F994;
begin
{*
 0051F994    push       ebp
 0051F995    mov        ebp,esp
 0051F997    add        esp,0FFFFFFE0
 0051F99A    push       ebx
 0051F99B    push       esi
 0051F99C    xor        edx,edx
 0051F99E    mov        dword ptr [ebp-14],edx
 0051F9A1    mov        dword ptr [ebp-20],edx
 0051F9A4    mov        dword ptr [ebp-0C],edx
 0051F9A7    mov        dword ptr [ebp-10],edx
 0051F9AA    mov        ebx,eax
 0051F9AC    xor        eax,eax
 0051F9AE    push       ebp
 0051F9AF    push       51FA65
 0051F9B4    push       dword ptr fs:[eax]
 0051F9B7    mov        dword ptr fs:[eax],esp
 0051F9BA    lea        edx,[ebp-0C]
 0051F9BD    mov        eax,dword ptr [ebx+14]; TZPostgreSQLSequence.?f14:IZConnection
 0051F9C0    mov        ecx,dword ptr [eax]
 0051F9C2    call       dword ptr [ecx+0C]
 0051F9C5    lea        eax,[ebp-14]
 0051F9C8    push       eax
 0051F9C9    lea        edx,[ebp-20]
 0051F9CC    mov        eax,ebx
 0051F9CE    mov        ecx,dword ptr [eax]
 0051F9D0    call       dword ptr [ecx]; TZPostgreSQLSequence.sub_004DE2E4
 0051F9D2    mov        eax,dword ptr [ebp-20]
 0051F9D5    mov        dword ptr [ebp-1C],eax
 0051F9D8    mov        byte ptr [ebp-18],0B
 0051F9DC    lea        edx,[ebp-1C]
 0051F9DF    xor        ecx,ecx
 0051F9E1    mov        eax,51FA80; 'SELECT CURRVAL('%s')'
 0051F9E6    call       Format
 0051F9EB    mov        edx,dword ptr [ebp-14]
 0051F9EE    lea        ecx,[ebp-10]
 0051F9F1    mov        eax,dword ptr [ebp-0C]
 0051F9F4    mov        esi,dword ptr [eax]
 0051F9F6    call       dword ptr [esi+0C]
 0051F9F9    mov        eax,dword ptr [ebp-10]
 0051F9FC    mov        edx,dword ptr [eax]
 0051F9FE    call       dword ptr [edx+0C]
 0051FA01    test       al,al
>0051FA03    je         0051FA1A
 0051FA05    mov        edx,1
 0051FA0A    mov        eax,dword ptr [ebp-10]
 0051FA0D    mov        ecx,dword ptr [eax]
 0051FA0F    call       dword ptr [ecx+38]
 0051FA12    mov        dword ptr [ebp-8],eax
 0051FA15    mov        dword ptr [ebp-4],edx
>0051FA18    jmp        0051FA27
 0051FA1A    mov        eax,ebx
 0051FA1C    call       004DE300
 0051FA21    mov        dword ptr [ebp-8],eax
 0051FA24    mov        dword ptr [ebp-4],edx
 0051FA27    mov        eax,dword ptr [ebp-10]
 0051FA2A    mov        edx,dword ptr [eax]
 0051FA2C    call       dword ptr [edx+10]
 0051FA2F    mov        eax,dword ptr [ebp-0C]
 0051FA32    mov        edx,dword ptr [eax]
 0051FA34    call       dword ptr [edx+14]
 0051FA37    xor        eax,eax
 0051FA39    pop        edx
 0051FA3A    pop        ecx
 0051FA3B    pop        ecx
 0051FA3C    mov        dword ptr fs:[eax],edx
 0051FA3F    push       51FA6C
 0051FA44    lea        eax,[ebp-20]
 0051FA47    call       @LStrClr
 0051FA4C    lea        eax,[ebp-14]
 0051FA4F    call       @LStrClr
 0051FA54    lea        eax,[ebp-10]
 0051FA57    call       @IntfClear
 0051FA5C    lea        eax,[ebp-0C]
 0051FA5F    call       @IntfClear
 0051FA64    ret
<0051FA65    jmp        @HandleFinally
<0051FA6A    jmp        0051FA44
 0051FA6C    mov        eax,dword ptr [ebp-8]
 0051FA6F    mov        edx,dword ptr [ebp-4]
 0051FA72    pop        esi
 0051FA73    pop        ebx
 0051FA74    mov        esp,ebp
 0051FA76    pop        ebp
 0051FA77    ret
*}
end;

//0051FA98
//procedure sub_0051FA98(?:?);
//begin
{*
 0051FA98    push       ebp
 0051FA99    mov        ebp,esp
 0051FA9B    add        esp,0FFFFFFF4
 0051FA9E    push       ebx
 0051FA9F    push       esi
 0051FAA0    xor        ecx,ecx
 0051FAA2    mov        dword ptr [ebp-0C],ecx
 0051FAA5    mov        esi,edx
 0051FAA7    mov        ebx,eax
 0051FAA9    xor        eax,eax
 0051FAAB    push       ebp
 0051FAAC    push       51FAF0
 0051FAB1    push       dword ptr fs:[eax]
 0051FAB4    mov        dword ptr fs:[eax],esp
 0051FAB7    push       esi
 0051FAB8    lea        edx,[ebp-0C]
 0051FABB    mov        eax,ebx
 0051FABD    mov        ecx,dword ptr [eax]
 0051FABF    call       dword ptr [ecx]; TZPostgreSQLSequence.sub_004DE2E4
 0051FAC1    mov        eax,dword ptr [ebp-0C]
 0051FAC4    mov        dword ptr [ebp-8],eax
 0051FAC7    mov        byte ptr [ebp-4],0B
 0051FACB    lea        edx,[ebp-8]
 0051FACE    xor        ecx,ecx
 0051FAD0    mov        eax,51FB08; ' CURRVAL('%s') '
 0051FAD5    call       Format
 0051FADA    xor        eax,eax
 0051FADC    pop        edx
 0051FADD    pop        ecx
 0051FADE    pop        ecx
 0051FADF    mov        dword ptr fs:[eax],edx
 0051FAE2    push       51FAF7
 0051FAE7    lea        eax,[ebp-0C]
 0051FAEA    call       @LStrClr
 0051FAEF    ret
<0051FAF0    jmp        @HandleFinally
<0051FAF5    jmp        0051FAE7
 0051FAF7    pop        esi
 0051FAF8    pop        ebx
 0051FAF9    mov        esp,ebp
 0051FAFB    pop        ebp
 0051FAFC    ret
*}
//end;

//0051FB18
procedure sub_0051FB18;
begin
{*
 0051FB18    push       ebp
 0051FB19    mov        ebp,esp
 0051FB1B    add        esp,0FFFFFFE0
 0051FB1E    push       ebx
 0051FB1F    push       esi
 0051FB20    xor        edx,edx
 0051FB22    mov        dword ptr [ebp-14],edx
 0051FB25    mov        dword ptr [ebp-20],edx
 0051FB28    mov        dword ptr [ebp-0C],edx
 0051FB2B    mov        dword ptr [ebp-10],edx
 0051FB2E    mov        ebx,eax
 0051FB30    xor        eax,eax
 0051FB32    push       ebp
 0051FB33    push       51FBE9
 0051FB38    push       dword ptr fs:[eax]
 0051FB3B    mov        dword ptr fs:[eax],esp
 0051FB3E    lea        edx,[ebp-0C]
 0051FB41    mov        eax,dword ptr [ebx+14]; TZPostgreSQLSequence.?f14:IZConnection
 0051FB44    mov        ecx,dword ptr [eax]
 0051FB46    call       dword ptr [ecx+0C]
 0051FB49    lea        eax,[ebp-14]
 0051FB4C    push       eax
 0051FB4D    lea        edx,[ebp-20]
 0051FB50    mov        eax,ebx
 0051FB52    mov        ecx,dword ptr [eax]
 0051FB54    call       dword ptr [ecx]; TZPostgreSQLSequence.sub_004DE2E4
 0051FB56    mov        eax,dword ptr [ebp-20]
 0051FB59    mov        dword ptr [ebp-1C],eax
 0051FB5C    mov        byte ptr [ebp-18],0B
 0051FB60    lea        edx,[ebp-1C]
 0051FB63    xor        ecx,ecx
 0051FB65    mov        eax,51FC04; 'SELECT NEXTVAL('%s')'
 0051FB6A    call       Format
 0051FB6F    mov        edx,dword ptr [ebp-14]
 0051FB72    lea        ecx,[ebp-10]
 0051FB75    mov        eax,dword ptr [ebp-0C]
 0051FB78    mov        esi,dword ptr [eax]
 0051FB7A    call       dword ptr [esi+0C]
 0051FB7D    mov        eax,dword ptr [ebp-10]
 0051FB80    mov        edx,dword ptr [eax]
 0051FB82    call       dword ptr [edx+0C]
 0051FB85    test       al,al
>0051FB87    je         0051FB9E
 0051FB89    mov        edx,1
 0051FB8E    mov        eax,dword ptr [ebp-10]
 0051FB91    mov        ecx,dword ptr [eax]
 0051FB93    call       dword ptr [ecx+38]
 0051FB96    mov        dword ptr [ebp-8],eax
 0051FB99    mov        dword ptr [ebp-4],edx
>0051FB9C    jmp        0051FBAB
 0051FB9E    mov        eax,ebx
 0051FBA0    call       004DE31C
 0051FBA5    mov        dword ptr [ebp-8],eax
 0051FBA8    mov        dword ptr [ebp-4],edx
 0051FBAB    mov        eax,dword ptr [ebp-10]
 0051FBAE    mov        edx,dword ptr [eax]
 0051FBB0    call       dword ptr [edx+10]
 0051FBB3    mov        eax,dword ptr [ebp-0C]
 0051FBB6    mov        edx,dword ptr [eax]
 0051FBB8    call       dword ptr [edx+14]
 0051FBBB    xor        eax,eax
 0051FBBD    pop        edx
 0051FBBE    pop        ecx
 0051FBBF    pop        ecx
 0051FBC0    mov        dword ptr fs:[eax],edx
 0051FBC3    push       51FBF0
 0051FBC8    lea        eax,[ebp-20]
 0051FBCB    call       @LStrClr
 0051FBD0    lea        eax,[ebp-14]
 0051FBD3    call       @LStrClr
 0051FBD8    lea        eax,[ebp-10]
 0051FBDB    call       @IntfClear
 0051FBE0    lea        eax,[ebp-0C]
 0051FBE3    call       @IntfClear
 0051FBE8    ret
<0051FBE9    jmp        @HandleFinally
<0051FBEE    jmp        0051FBC8
 0051FBF0    mov        eax,dword ptr [ebp-8]
 0051FBF3    mov        edx,dword ptr [ebp-4]
 0051FBF6    pop        esi
 0051FBF7    pop        ebx
 0051FBF8    mov        esp,ebp
 0051FBFA    pop        ebp
 0051FBFB    ret
*}
end;

//0051FC1C
//procedure sub_0051FC1C(?:?);
//begin
{*
 0051FC1C    push       ebp
 0051FC1D    mov        ebp,esp
 0051FC1F    add        esp,0FFFFFFF4
 0051FC22    push       ebx
 0051FC23    push       esi
 0051FC24    xor        ecx,ecx
 0051FC26    mov        dword ptr [ebp-0C],ecx
 0051FC29    mov        esi,edx
 0051FC2B    mov        ebx,eax
 0051FC2D    xor        eax,eax
 0051FC2F    push       ebp
 0051FC30    push       51FC74
 0051FC35    push       dword ptr fs:[eax]
 0051FC38    mov        dword ptr fs:[eax],esp
 0051FC3B    push       esi
 0051FC3C    lea        edx,[ebp-0C]
 0051FC3F    mov        eax,ebx
 0051FC41    mov        ecx,dword ptr [eax]
 0051FC43    call       dword ptr [ecx]; TZPostgreSQLSequence.sub_004DE2E4
 0051FC45    mov        eax,dword ptr [ebp-0C]
 0051FC48    mov        dword ptr [ebp-8],eax
 0051FC4B    mov        byte ptr [ebp-4],0B
 0051FC4F    lea        edx,[ebp-8]
 0051FC52    xor        ecx,ecx
 0051FC54    mov        eax,51FC8C; ' NEXTVAL('%s') '
 0051FC59    call       Format
 0051FC5E    xor        eax,eax
 0051FC60    pop        edx
 0051FC61    pop        ecx
 0051FC62    pop        ecx
 0051FC63    mov        dword ptr fs:[eax],edx
 0051FC66    push       51FC7B
 0051FC6B    lea        eax,[ebp-0C]
 0051FC6E    call       @LStrClr
 0051FC73    ret
<0051FC74    jmp        @HandleFinally
<0051FC79    jmp        0051FC6B
 0051FC7B    pop        esi
 0051FC7C    pop        ebx
 0051FC7D    mov        esp,ebp
 0051FC7F    pop        ebp
 0051FC80    ret
*}
//end;

Initialization
//0051FCFC
{*
 0051FCFC    push       ebp
 0051FCFD    mov        ebp,esp
 0051FCFF    xor        eax,eax
 0051FD01    push       ebp
 0051FD02    push       51FD55
 0051FD07    push       dword ptr fs:[eax]
 0051FD0A    mov        dword ptr fs:[eax],esp
 0051FD0D    sub        dword ptr ds:[61E52C],1
>0051FD14    jae        0051FD47
 0051FD16    mov        dl,1
 0051FD18    mov        eax,[0051D858]; TZPostgreSQLDriver
 0051FD1D    call       TZPostgreSQLDriver.Create; TZPostgreSQLDriver.Create
 0051FD22    mov        edx,eax
 0051FD24    test       edx,edx
>0051FD26    je         0051FD2B
 0051FD28    sub        edx,0FFFFFFEC
 0051FD2B    mov        eax,61E528; gvar_0061E528:IInterface
 0051FD30    call       @IntfCopy
 0051FD35    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051FD3A    mov        eax,dword ptr [eax]
 0051FD3C    mov        edx,dword ptr ds:[61E528]; gvar_0061E528:IInterface
 0051FD42    mov        ecx,dword ptr [eax]
 0051FD44    call       dword ptr [ecx+20]
 0051FD47    xor        eax,eax
 0051FD49    pop        edx
 0051FD4A    pop        ecx
 0051FD4B    pop        ecx
 0051FD4C    mov        dword ptr fs:[eax],edx
 0051FD4F    push       51FD5C
 0051FD54    ret
<0051FD55    jmp        @HandleFinally
<0051FD5A    jmp        0051FD54
 0051FD5C    pop        ebp
 0051FD5D    ret
*}
Finalization
//0051FC9C
{*
 0051FC9C    push       ebp
 0051FC9D    mov        ebp,esp
 0051FC9F    xor        eax,eax
 0051FCA1    push       ebp
 0051FCA2    push       51FCF3
 0051FCA7    push       dword ptr fs:[eax]
 0051FCAA    mov        dword ptr fs:[eax],esp
 0051FCAD    inc        dword ptr ds:[61E52C]
>0051FCB3    jne        0051FCE5
 0051FCB5    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051FCBA    cmp        dword ptr [eax],0
>0051FCBD    je         0051FCD1
 0051FCBF    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051FCC4    mov        eax,dword ptr [eax]
 0051FCC6    mov        edx,dword ptr ds:[61E528]; gvar_0061E528:IInterface
 0051FCCC    mov        ecx,dword ptr [eax]
 0051FCCE    call       dword ptr [ecx+24]
 0051FCD1    mov        eax,61E528; gvar_0061E528:IInterface
 0051FCD6    call       @IntfClear
 0051FCDB    mov        eax,61E528; gvar_0061E528:IInterface
 0051FCE0    call       @IntfClear
 0051FCE5    xor        eax,eax
 0051FCE7    pop        edx
 0051FCE8    pop        ecx
 0051FCE9    pop        ecx
 0051FCEA    mov        dword ptr fs:[eax],edx
 0051FCED    push       51FCFA
 0051FCF2    ret
<0051FCF3    jmp        @HandleFinally
<0051FCF8    jmp        0051FCF2
 0051FCFA    pop        ebp
 0051FCFB    ret
*}
end.