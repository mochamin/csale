{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit147;

interface

uses
  Classes, Windows, Graphics, ZTokenizer, ZGenericSqlAnalyser, ZDbcIntfs;

type
  TZAbstractDriver = class(TInterfacedObject)
  public
    fC:IZTokenizer;//fC
    f10:IZStatementAnalyser;//f10
    destructor Destroy; virtual;
    procedure @AbstractError(); virtual;
    procedure sub_004DDC18; virtual;
    //function sub_004DDC28(?:?):?; virtual;
    //function sub_004DDCF4():?; virtual;
    //function sub_004DDCF8():?; virtual;
    //function sub_004DDD00():?; virtual;
    //function sub_004DDD04():?; virtual;
    //procedure sub_004DDD44(?:?); virtual;
    //procedure sub_004DDD08(?:?); virtual;
    //function sub_004DDD84():?; virtual;
  end;
  TZAbstractConnection = class(TInterfacedObject)
  public
    fC:IZDriver;//fC
    f10:String;//f10
    f14:dword;//f14
    f18:String;//f18
    f1C:String;//f1C
    f20:String;//f20
    f24:dword;//f24
    f28:byte;//f28
    f29:byte;//f29
    f2A:byte;//f2A
    f2B:byte;//f2B
    f2C:dword;//f2C
    destructor Destroy; virtual;
    //procedure sub_004DDFCC(?:?; ?:?); virtual;
    //procedure sub_004DE03C(?:?); virtual;
    //procedure sub_004DE0A0(?:?); virtual;
    //procedure sub_004DE0BC(?:?; ?:?); virtual;
    //procedure sub_004DE0D8(?:?); virtual;
    //procedure sub_004DE0F4(?:?; ?:?); virtual;
    //procedure sub_004DE10C(?:?); virtual;
    //function sub_004DE110:?; virtual;
    procedure sub_004DE114(); virtual;
    procedure sub_004DE12C(); virtual;
    procedure sub_004DE030(); virtual;
    procedure sub_004DE120(); virtual;
    procedure sub_004DE138(); virtual;
    //function sub_004DE144():?; virtual;
    //procedure sub_004DE158(?:?; ?:?); virtual;
    procedure sub_004DDF38; virtual;
    procedure sub_004DE1A4; virtual;
    //function sub_004DE1AC:?; virtual;
    //function sub_004DE200():?; virtual;
    //function sub_004DE204():?; virtual;
    //procedure sub_004DE208(?:?); virtual;
    //function sub_004DE20C:?; virtual;
    procedure sub_004DE210(); virtual;
    //procedure sub_004DE214(?:?); virtual;
    //procedure sub_004DE224(?:?); virtual;
    //function sub_004DE228:?; virtual;
    //function sub_004DE22C():?; virtual;
    procedure sub_004DE230(); virtual;
  end;
  TZAbstractSequence = class(TInterfacedObject)
  public
    fC:String;//fC
    f10:dword;//f10
    f14:IZConnection;//f14
    //procedure sub_004DE2E4(?:?); virtual;
    //function sub_004DE2FC:?; virtual;
    //procedure sub_004DE33C(?:?); virtual;
    //procedure sub_004DE338(?:?); virtual;
    //function sub_004DE300():?; virtual;
    //function sub_004DE31C():?; virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    //procedure sub_004DE2CC(?:?); virtual;
  end;

implementation

{$R *.DFM}

//004DDBEC
destructor TZAbstractDriver.Destroy;
begin
{*
 004DDBEC    push       ebp
 004DDBED    mov        ebp,esp
 004DDBEF    push       ebx
 004DDBF0    push       esi
 004DDBF1    call       @BeforeDestruction
 004DDBF6    mov        ebx,edx
 004DDBF8    mov        esi,eax
 004DDBFA    mov        edx,ebx
 004DDBFC    and        dl,0FC
 004DDBFF    mov        eax,esi
 004DDC01    call       TObject.Destroy
 004DDC06    test       bl,bl
>004DDC08    jle        004DDC11
 004DDC0A    mov        eax,esi
 004DDC0C    call       @ClassDestroy
 004DDC11    pop        esi
 004DDC12    pop        ebx
 004DDC13    pop        ebp
 004DDC14    ret
*}
end;

//004DDC18
procedure sub_004DDC18;
begin
{*
 004DDC18    push       ebp
 004DDC19    mov        ebp,esp
 004DDC1B    mov        eax,dword ptr [ebp+8]
 004DDC1E    call       @IntfClear
 004DDC23    pop        ebp
 004DDC24    ret        4
*}
end;

//004DDC28
//function sub_004DDC28(?:?):?;
//begin
{*
 004DDC28    push       ebp
 004DDC29    mov        ebp,esp
 004DDC2B    add        esp,0FFFFFFEC
 004DDC2E    push       ebx
 004DDC2F    push       esi
 004DDC30    push       edi
 004DDC31    xor        ecx,ecx
 004DDC33    mov        dword ptr [ebp-0C],ecx
 004DDC36    mov        dword ptr [ebp-8],ecx
 004DDC39    mov        dword ptr [ebp-4],edx
 004DDC3C    mov        esi,eax
 004DDC3E    xor        eax,eax
 004DDC40    push       ebp
 004DDC41    push       4DDCCF
 004DDC46    push       dword ptr fs:[eax]
 004DDC49    mov        dword ptr fs:[eax],esp
 004DDC4C    xor        ebx,ebx
 004DDC4E    lea        edx,[ebp-8]
 004DDC51    mov        eax,esi
 004DDC53    mov        ecx,dword ptr [eax]
 004DDC55    call       dword ptr [ecx]; TZASADriver.sub_00560EA8
 004DDC57    mov        eax,dword ptr [ebp-8]
 004DDC5A    call       @DynArrayHigh
 004DDC5F    mov        esi,eax
 004DDC61    test       esi,esi
>004DDC63    jl         004DDCAB
 004DDC65    inc        esi
 004DDC66    xor        edi,edi
 004DDC68    lea        eax,[ebp-0C]
 004DDC6B    push       eax
 004DDC6C    mov        eax,dword ptr [ebp-8]
 004DDC6F    test       eax,eax
>004DDC71    je         004DDC78
 004DDC73    cmp        edi,dword ptr [eax-4]
>004DDC76    jb         004DDC7D
 004DDC78    call       @BoundErr
 004DDC7D    mov        eax,dword ptr [eax+edi*4]
 004DDC80    mov        dword ptr [ebp-14],eax
 004DDC83    mov        byte ptr [ebp-10],0B
 004DDC87    lea        edx,[ebp-14]
 004DDC8A    xor        ecx,ecx
 004DDC8C    mov        eax,4DDCE8; 'zdbc:%s:'
 004DDC91    call       Format
 004DDC96    mov        edx,dword ptr [ebp-0C]
 004DDC99    mov        eax,dword ptr [ebp-4]
 004DDC9C    call       004BEDE8
 004DDCA1    mov        ebx,eax
 004DDCA3    test       bl,bl
>004DDCA5    jne        004DDCAB
 004DDCA7    inc        edi
 004DDCA8    dec        esi
<004DDCA9    jne        004DDC68
 004DDCAB    xor        eax,eax
 004DDCAD    pop        edx
 004DDCAE    pop        ecx
 004DDCAF    pop        ecx
 004DDCB0    mov        dword ptr fs:[eax],edx
 004DDCB3    push       4DDCD6
 004DDCB8    lea        eax,[ebp-0C]
 004DDCBB    call       @LStrClr
 004DDCC0    lea        eax,[ebp-8]
 004DDCC3    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 004DDCC9    call       @DynArrayClear
 004DDCCE    ret
<004DDCCF    jmp        @HandleFinally
<004DDCD4    jmp        004DDCB8
 004DDCD6    mov        eax,ebx
 004DDCD8    pop        edi
 004DDCD9    pop        esi
 004DDCDA    pop        ebx
 004DDCDB    mov        esp,ebp
 004DDCDD    pop        ebp
 004DDCDE    ret
*}
//end;

//004DDCF4
//function sub_004DDCF4():?;
//begin
{*
 004DDCF4    xor        eax,eax
 004DDCF6    ret
*}
//end;

//004DDCF8
//function sub_004DDCF8():?;
//begin
{*
 004DDCF8    mov        eax,1
 004DDCFD    ret
*}
//end;

//004DDD00
//function sub_004DDD00():?;
//begin
{*
 004DDD00    xor        eax,eax
 004DDD02    ret
*}
//end;

//004DDD04
//function sub_004DDD04():?;
//begin
{*
 004DDD04    xor        eax,eax
 004DDD06    ret
*}
//end;

//004DDD08
//procedure sub_004DDD08(?:?);
//begin
{*
 004DDD08    push       ebp
 004DDD09    mov        ebp,esp
 004DDD0B    push       ebx
 004DDD0C    push       esi
 004DDD0D    mov        esi,edx
 004DDD0F    mov        ebx,eax
 004DDD11    cmp        dword ptr [ebx+10],0; TZAdoDriver.?f10:IZStatementAnalyser
>004DDD15    jne        004DDD34
 004DDD17    mov        dl,1
 004DDD19    mov        eax,[004C2CA0]; TZGenericStatementAnalyser
 004DDD1E    call       TZGenericStatementAnalyser.Create; TZGenericStatementAnalyser.Create
 004DDD23    mov        edx,eax
 004DDD25    test       edx,edx
>004DDD27    je         004DDD2C
 004DDD29    sub        edx,0FFFFFFE0
 004DDD2C    lea        eax,[ebx+10]; TZAdoDriver.?f10:IZStatementAnalyser
 004DDD2F    call       @IntfCopy
 004DDD34    mov        eax,esi
 004DDD36    mov        edx,dword ptr [ebx+10]; TZAdoDriver.?f10:IZStatementAnalyser
 004DDD39    call       @IntfCopy
 004DDD3E    pop        esi
 004DDD3F    pop        ebx
 004DDD40    pop        ebp
 004DDD41    ret
*}
//end;

//004DDD44
//procedure sub_004DDD44(?:?);
//begin
{*
 004DDD44    push       ebp
 004DDD45    mov        ebp,esp
 004DDD47    push       ebx
 004DDD48    push       esi
 004DDD49    mov        esi,edx
 004DDD4B    mov        ebx,eax
 004DDD4D    cmp        dword ptr [ebx+0C],0; TZAdoDriver.?fC:IZTokenizer
>004DDD51    jne        004DDD73
 004DDD53    mov        dl,1
 004DDD55    mov        eax,[004C7BC0]; TZGenericSQLTokenizer
 004DDD5A    call       TZGenericSQLTokenizer.Create; TZGenericSQLTokenizer.Create
 004DDD5F    mov        edx,eax
 004DDD61    test       edx,edx
>004DDD63    je         004DDD6B
 004DDD65    sub        edx,0FFFFFBD8
 004DDD6B    lea        eax,[ebx+0C]; TZAdoDriver.?fC:IZTokenizer
 004DDD6E    call       @IntfCopy
 004DDD73    mov        eax,esi
 004DDD75    mov        edx,dword ptr [ebx+0C]; TZAdoDriver.?fC:IZTokenizer
 004DDD78    call       @IntfCopy
 004DDD7D    pop        esi
 004DDD7E    pop        ebx
 004DDD7F    pop        ebp
 004DDD80    ret
*}
//end;

//004DDD84
//function sub_004DDD84():?;
//begin
{*
 004DDD84    xor        eax,eax
 004DDD86    ret
*}
//end;

//004DDD88
//constructor sub_004DDD88(?:?; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004DDD88    push       ebp
 004DDD89    mov        ebp,esp
 004DDD8B    add        esp,0FFFFFFF0
 004DDD8E    push       ebx
 004DDD8F    push       esi
 004DDD90    push       edi
 004DDD91    xor        ebx,ebx
 004DDD93    mov        dword ptr [ebp-10],ebx
 004DDD96    mov        dword ptr [ebp-0C],ebx
 004DDD99    test       dl,dl
>004DDD9B    je         004DDDA5
 004DDD9D    add        esp,0FFFFFFF0
 004DDDA0    call       @ClassCreate
 004DDDA5    mov        dword ptr [ebp-8],ecx
 004DDDA8    mov        byte ptr [ebp-1],dl
 004DDDAB    mov        ebx,eax
 004DDDAD    mov        edi,dword ptr [ebp+10]
 004DDDB0    mov        esi,dword ptr [ebp+14]
 004DDDB3    mov        eax,dword ptr [ebp-8]
 004DDDB6    call       @IntfAddRef
 004DDDBB    xor        eax,eax
 004DDDBD    push       ebp
 004DDDBE    push       4DDE9F
 004DDDC3    push       dword ptr fs:[eax]
 004DDDC6    mov        dword ptr fs:[eax],esp
 004DDDC9    lea        eax,[ebx+0C]
 004DDDCC    mov        edx,dword ptr [ebp-8]
 004DDDCF    call       @IntfCopy
 004DDDD4    lea        eax,[ebx+10]
 004DDDD7    mov        edx,dword ptr [ebp+20]
 004DDDDA    call       @LStrAsg
 004DDDDF    mov        eax,dword ptr [ebp+1C]
 004DDDE2    mov        dword ptr [ebx+14],eax
 004DDDE5    lea        eax,[ebx+18]
 004DDDE8    mov        edx,dword ptr [ebp+18]
 004DDDEB    call       @LStrAsg
 004DDDF0    mov        eax,dword ptr [ebp+8]
 004DDDF3    mov        dword ptr [ebx+2C],eax
 004DDDF6    mov        dl,1
 004DDDF8    mov        eax,[0041C8E4]; TStringList
 004DDDFD    call       TObject.Create; TStringList.Create
 004DDE02    mov        dword ptr [ebx+24],eax
 004DDE05    cmp        dword ptr [ebp+0C],0
>004DDE09    je         004DDE16
 004DDE0B    mov        eax,dword ptr [ebx+24]
 004DDE0E    mov        edx,dword ptr [ebp+0C]
 004DDE11    mov        ecx,dword ptr [eax]
 004DDE13    call       dword ptr [ecx+40]
 004DDE16    test       esi,esi
>004DDE18    je         004DDE26
 004DDE1A    lea        eax,[ebx+1C]
 004DDE1D    mov        edx,esi
 004DDE1F    call       @LStrAsg
>004DDE24    jmp        004DDE41
 004DDE26    lea        ecx,[ebp-0C]
 004DDE29    mov        eax,dword ptr [ebx+24]
 004DDE2C    mov        edx,4DDED0; 'username'
 004DDE31    call       TStrings.GetValue
 004DDE36    mov        edx,dword ptr [ebp-0C]
 004DDE39    lea        eax,[ebx+1C]
 004DDE3C    call       @LStrAsg
 004DDE41    test       edi,edi
>004DDE43    je         004DDE51
 004DDE45    lea        eax,[ebx+20]
 004DDE48    mov        edx,edi
 004DDE4A    call       @LStrAsg
>004DDE4F    jmp        004DDE6C
 004DDE51    lea        ecx,[ebp-10]
 004DDE54    mov        eax,dword ptr [ebx+24]
 004DDE57    mov        edx,4DDEE4; 'password'
 004DDE5C    call       TStrings.GetValue
 004DDE61    mov        edx,dword ptr [ebp-10]
 004DDE64    lea        eax,[ebx+20]
 004DDE67    call       @LStrAsg
 004DDE6C    mov        byte ptr [ebx+28],1
 004DDE70    mov        byte ptr [ebx+2B],1
 004DDE74    mov        byte ptr [ebx+29],1
 004DDE78    mov        byte ptr [ebx+2A],0
 004DDE7C    xor        eax,eax
 004DDE7E    pop        edx
 004DDE7F    pop        ecx
 004DDE80    pop        ecx
 004DDE81    mov        dword ptr fs:[eax],edx
 004DDE84    push       4DDEA6
 004DDE89    lea        eax,[ebp-10]
 004DDE8C    mov        edx,2
 004DDE91    call       @LStrArrayClr
 004DDE96    lea        eax,[ebp-8]
 004DDE99    call       @IntfClear
 004DDE9E    ret
<004DDE9F    jmp        @HandleFinally
<004DDEA4    jmp        004DDE89
 004DDEA6    mov        eax,ebx
 004DDEA8    cmp        byte ptr [ebp-1],0
>004DDEAC    je         004DDEBD
 004DDEAE    call       @AfterConstruction
 004DDEB3    pop        dword ptr fs:[0]
 004DDEBA    add        esp,0C
 004DDEBD    mov        eax,ebx
 004DDEBF    pop        edi
 004DDEC0    pop        esi
 004DDEC1    pop        ebx
 004DDEC2    mov        esp,ebp
 004DDEC4    pop        ebp
 004DDEC5    ret        20
*}
//end;

//004DDEF0
destructor TZAbstractConnection.Destroy;
begin
{*
 004DDEF0    push       ebp
 004DDEF1    mov        ebp,esp
 004DDEF3    push       ebx
 004DDEF4    push       esi
 004DDEF5    call       @BeforeDestruction
 004DDEFA    mov        ebx,edx
 004DDEFC    mov        esi,eax
 004DDEFE    cmp        byte ptr [esi+2B],0; TZAbstractConnection.?f2B:byte
>004DDF02    jne        004DDF0B
 004DDF04    mov        eax,esi
 004DDF06    mov        edx,dword ptr [eax]
 004DDF08    call       dword ptr [edx+40]; TZAbstractConnection.sub_004DE1A4
 004DDF0B    mov        eax,dword ptr [esi+24]; TZAbstractConnection.?f24:dword
 004DDF0E    call       TObject.Free
 004DDF13    mov        eax,dword ptr [esi+2C]; TZAbstractConnection.?f2C:dword
 004DDF16    call       TObject.Free
 004DDF1B    mov        edx,ebx
 004DDF1D    and        dl,0FC
 004DDF20    mov        eax,esi
 004DDF22    call       TObject.Destroy
 004DDF27    test       bl,bl
>004DDF29    jle        004DDF32
 004DDF2B    mov        eax,esi
 004DDF2D    call       @ClassDestroy
 004DDF32    pop        esi
 004DDF33    pop        ebx
 004DDF34    pop        ebp
 004DDF35    ret
*}
end;

//004DDF38
procedure sub_004DDF38;
begin
{*
 004DDF38    mov        byte ptr [eax+2B],0; TZAbstractConnection.?f2B:byte
 004DDF3C    ret
*}
end;

//004DDF40
procedure sub_004DDF40;
begin
{*
 004DDF40    push       ebp
 004DDF41    mov        ebp,esp
 004DDF43    push       0
 004DDF45    xor        eax,eax
 004DDF47    push       ebp
 004DDF48    push       4DDF8A
 004DDF4D    push       dword ptr fs:[eax]
 004DDF50    mov        dword ptr fs:[eax],esp
 004DDF53    lea        edx,[ebp-4]
 004DDF56    mov        eax,[0061B75C]; ^#122.sResString20:TResStringRec
 004DDF5B    call       LoadResString
 004DDF60    mov        ecx,dword ptr [ebp-4]
 004DDF63    mov        dl,1
 004DDF65    mov        eax,[004C6D20]; EZSQLException
 004DDF6A    call       EZSQLException.Create; EZSQLException.Create
 004DDF6F    call       @RaiseExcept
 004DDF74    xor        eax,eax
 004DDF76    pop        edx
 004DDF77    pop        ecx
 004DDF78    pop        ecx
 004DDF79    mov        dword ptr fs:[eax],edx
 004DDF7C    push       4DDF91
 004DDF81    lea        eax,[ebp-4]
 004DDF84    call       @LStrClr
 004DDF89    ret
<004DDF8A    jmp        @HandleFinally
<004DDF8F    jmp        004DDF81
 004DDF91    pop        ecx
 004DDF92    pop        ebp
 004DDF93    ret
*}
end;

//004DDFCC
//procedure sub_004DDFCC(?:?; ?:?);
//begin
{*
 004DDFCC    push       ebp
 004DDFCD    mov        ebp,esp
 004DDFCF    push       ebx
 004DDFD0    push       esi
 004DDFD1    mov        esi,ecx
 004DDFD3    mov        ebx,eax
 004DDFD5    mov        eax,esi
 004DDFD7    call       @IntfClear
 004DDFDC    mov        eax,ebx
 004DDFDE    call       004DDF40
 004DDFE3    pop        esi
 004DDFE4    pop        ebx
 004DDFE5    pop        ebp
 004DDFE6    ret
*}
//end;

//004DE030
procedure sub_004DE030();
begin
{*
 004DE030    push       ebp
 004DE031    mov        ebp,esp
 004DE033    call       004DDF40
 004DE038    pop        ebp
 004DE039    ret
*}
end;

//004DE03C
//procedure sub_004DE03C(?:?);
//begin
{*
 004DE03C    push       ebp
 004DE03D    mov        ebp,esp
 004DE03F    push       ebx
 004DE040    mov        ebx,eax
 004DE042    mov        eax,dword ptr [ebp+8]
 004DE045    call       @IntfClear
 004DE04A    mov        eax,ebx
 004DE04C    call       004DDF40
 004DE051    pop        ebx
 004DE052    pop        ebp
 004DE053    ret        4
*}
//end;

//004DE0A0
//procedure sub_004DE0A0(?:?);
//begin
{*
 004DE0A0    push       ebp
 004DE0A1    mov        ebp,esp
 004DE0A3    push       ebx
 004DE0A4    mov        ebx,eax
 004DE0A6    mov        eax,dword ptr [ebp+8]
 004DE0A9    call       @IntfClear
 004DE0AE    mov        eax,ebx
 004DE0B0    call       004DDF40
 004DE0B5    pop        ebx
 004DE0B6    pop        ebp
 004DE0B7    ret        4
*}
//end;

//004DE0BC
//procedure sub_004DE0BC(?:?; ?:?);
//begin
{*
 004DE0BC    push       ebp
 004DE0BD    mov        ebp,esp
 004DE0BF    push       ebx
 004DE0C0    push       esi
 004DE0C1    mov        esi,ecx
 004DE0C3    mov        ebx,eax
 004DE0C5    mov        eax,esi
 004DE0C7    call       @IntfClear
 004DE0CC    mov        eax,ebx
 004DE0CE    call       004DDF40
 004DE0D3    pop        esi
 004DE0D4    pop        ebx
 004DE0D5    pop        ebp
 004DE0D6    ret
*}
//end;

//004DE0D8
//procedure sub_004DE0D8(?:?);
//begin
{*
 004DE0D8    push       ebp
 004DE0D9    mov        ebp,esp
 004DE0DB    push       ebx
 004DE0DC    mov        ebx,eax
 004DE0DE    mov        eax,dword ptr [ebp+8]
 004DE0E1    call       @IntfClear
 004DE0E6    mov        eax,ebx
 004DE0E8    call       004DDF40
 004DE0ED    pop        ebx
 004DE0EE    pop        ebp
 004DE0EF    ret        4
*}
//end;

//004DE0F4
//procedure sub_004DE0F4(?:?; ?:?);
//begin
{*
 004DE0F4    push       ebp
 004DE0F5    mov        ebp,esp
 004DE0F7    push       ebx
 004DE0F8    push       esi
 004DE0F9    mov        esi,ecx
 004DE0FB    mov        ebx,edx
 004DE0FD    mov        eax,esi
 004DE0FF    mov        edx,ebx
 004DE101    call       @LStrAsg
 004DE106    pop        esi
 004DE107    pop        ebx
 004DE108    pop        ebp
 004DE109    ret
*}
//end;

//004DE10C
//procedure sub_004DE10C(?:?);
//begin
{*
 004DE10C    mov        byte ptr [eax+28],dl; TZAbstractConnection.?f28:byte
 004DE10F    ret
*}
//end;

//004DE110
//function sub_004DE110:?;
//begin
{*
 004DE110    mov        al,byte ptr [eax+28]; TZASAConnection.?f28:byte
 004DE113    ret
*}
//end;

//004DE114
procedure sub_004DE114();
begin
{*
 004DE114    push       ebp
 004DE115    mov        ebp,esp
 004DE117    call       004DDF40
 004DE11C    pop        ebp
 004DE11D    ret
*}
end;

//004DE120
procedure sub_004DE120();
begin
{*
 004DE120    push       ebp
 004DE121    mov        ebp,esp
 004DE123    call       004DDF40
 004DE128    pop        ebp
 004DE129    ret
*}
end;

//004DE12C
procedure sub_004DE12C();
begin
{*
 004DE12C    push       ebp
 004DE12D    mov        ebp,esp
 004DE12F    call       004DDF40
 004DE134    pop        ebp
 004DE135    ret
*}
end;

//004DE138
procedure sub_004DE138();
begin
{*
 004DE138    push       ebp
 004DE139    mov        ebp,esp
 004DE13B    call       004DDF40
 004DE140    pop        ebp
 004DE141    ret
*}
end;

//004DE144
//function sub_004DE144():?;
//begin
{*
 004DE144    push       ebp
 004DE145    mov        ebp,esp
 004DE147    push       ebx
 004DE148    mov        ebx,1
 004DE14D    call       004DDF40
 004DE152    mov        eax,ebx
 004DE154    pop        ebx
 004DE155    pop        ebp
 004DE156    ret
*}
//end;

//004DE158
//procedure sub_004DE158(?:?; ?:?);
//begin
{*
 004DE158    push       ebp
 004DE159    mov        ebp,esp
 004DE15B    push       ecx
 004DE15C    push       ebx
 004DE15D    mov        ebx,ecx
 004DE15F    mov        dword ptr [ebp-4],edx
 004DE162    mov        eax,dword ptr [ebp-4]
 004DE165    call       @LStrAddRef
 004DE16A    xor        eax,eax
 004DE16C    push       ebp
 004DE16D    push       4DE198
 004DE172    push       dword ptr fs:[eax]
 004DE175    mov        dword ptr fs:[eax],esp
 004DE178    mov        edx,ebx
 004DE17A    mov        eax,dword ptr [ebp-4]
 004DE17D    call       004BFF38
 004DE182    xor        eax,eax
 004DE184    pop        edx
 004DE185    pop        ecx
 004DE186    pop        ecx
 004DE187    mov        dword ptr fs:[eax],edx
 004DE18A    push       4DE19F
 004DE18F    lea        eax,[ebp-4]
 004DE192    call       @LStrClr
 004DE197    ret
<004DE198    jmp        @HandleFinally
<004DE19D    jmp        004DE18F
 004DE19F    pop        ebx
 004DE1A0    pop        ecx
 004DE1A1    pop        ebp
 004DE1A2    ret
*}
//end;

//004DE1A4
procedure sub_004DE1A4;
begin
{*
 004DE1A4    mov        byte ptr [eax+2B],1; TZAbstractConnection.?f2B:byte
 004DE1A8    ret
*}
end;

//004DE1AC
//function sub_004DE1AC:?;
//begin
{*
 004DE1AC    mov        al,byte ptr [eax+2B]; TZASAConnection.?f2B:byte
 004DE1AF    ret
*}
//end;

//004DE200
//function sub_004DE200():?;
//begin
{*
 004DE200    xor        eax,eax
 004DE202    ret
*}
//end;

//004DE204
//function sub_004DE204():?;
//begin
{*
 004DE204    xor        eax,eax
 004DE206    ret
*}
//end;

//004DE208
//procedure sub_004DE208(?:?);
//begin
{*
 004DE208    mov        byte ptr [eax+29],dl; TZASAConnection.?f29:byte
 004DE20B    ret
*}
//end;

//004DE20C
//function sub_004DE20C:?;
//begin
{*
 004DE20C    mov        al,byte ptr [eax+29]; TZASAConnection.?f29:byte
 004DE20F    ret
*}
//end;

//004DE210
procedure sub_004DE210();
begin
{*
 004DE210    ret
*}
end;

//004DE214
//procedure sub_004DE214(?:?);
//begin
{*
 004DE214    push       ebp
 004DE215    mov        ebp,esp
 004DE217    push       ebx
 004DE218    mov        ebx,edx
 004DE21A    mov        eax,ebx
 004DE21C    call       @LStrClr
 004DE221    pop        ebx
 004DE222    pop        ebp
 004DE223    ret
*}
//end;

//004DE224
//procedure sub_004DE224(?:?);
//begin
{*
 004DE224    mov        byte ptr [eax+2A],dl; TZAbstractConnection.?f2A:byte
 004DE227    ret
*}
//end;

//004DE228
//function sub_004DE228:?;
//begin
{*
 004DE228    mov        al,byte ptr [eax+2A]; TZASAConnection.?f2A:byte
 004DE22B    ret
*}
//end;

//004DE22C
//function sub_004DE22C():?;
//begin
{*
 004DE22C    xor        eax,eax
 004DE22E    ret
*}
//end;

//004DE230
procedure sub_004DE230();
begin
{*
 004DE230    ret
*}
end;

//004DE234
//constructor TZPostgreSQLSequence.Create(?:TZAbstractSequence; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004DE234    push       ebp
 004DE235    mov        ebp,esp
 004DE237    push       ecx
 004DE238    push       ebx
 004DE239    push       esi
 004DE23A    test       dl,dl
>004DE23C    je         004DE246
 004DE23E    add        esp,0FFFFFFF0
 004DE241    call       @ClassCreate
 004DE246    mov        dword ptr [ebp-4],ecx
 004DE249    mov        ebx,edx
 004DE24B    mov        esi,eax
 004DE24D    mov        eax,dword ptr [ebp-4]
 004DE250    call       @IntfAddRef
 004DE255    mov        eax,dword ptr [ebp+0C]
 004DE258    call       @LStrAddRef
 004DE25D    xor        eax,eax
 004DE25F    push       ebp
 004DE260    push       4DE2A5
 004DE265    push       dword ptr fs:[eax]
 004DE268    mov        dword ptr fs:[eax],esp
 004DE26B    lea        eax,[esi+14]; TZPostgreSQLSequence.?f14:IZConnection
 004DE26E    mov        edx,dword ptr [ebp-4]
 004DE271    call       @IntfCopy
 004DE276    lea        eax,[esi+0C]; TZPostgreSQLSequence.?fC:String
 004DE279    mov        edx,dword ptr [ebp+0C]
 004DE27C    call       @LStrAsg
 004DE281    mov        eax,dword ptr [ebp+8]
 004DE284    mov        dword ptr [esi+10],eax; TZPostgreSQLSequence.?f10:dword
 004DE287    xor        eax,eax
 004DE289    pop        edx
 004DE28A    pop        ecx
 004DE28B    pop        ecx
 004DE28C    mov        dword ptr fs:[eax],edx
 004DE28F    push       4DE2AC
 004DE294    lea        eax,[ebp-4]
 004DE297    call       @IntfClear
 004DE29C    lea        eax,[ebp+0C]
 004DE29F    call       @LStrClr
 004DE2A4    ret
<004DE2A5    jmp        @HandleFinally
<004DE2AA    jmp        004DE294
 004DE2AC    mov        eax,esi
 004DE2AE    test       bl,bl
>004DE2B0    je         004DE2C1
 004DE2B2    call       @AfterConstruction
 004DE2B7    pop        dword ptr fs:[0]
 004DE2BE    add        esp,0C
 004DE2C1    mov        eax,esi
 004DE2C3    pop        esi
 004DE2C4    pop        ebx
 004DE2C5    pop        ecx
 004DE2C6    pop        ebp
 004DE2C7    ret        8
*}
//end;

//004DE2CC
//procedure sub_004DE2CC(?:?);
//begin
{*
 004DE2CC    push       ebp
 004DE2CD    mov        ebp,esp
 004DE2CF    push       ebx
 004DE2D0    push       esi
 004DE2D1    mov        esi,edx
 004DE2D3    mov        ebx,eax
 004DE2D5    mov        eax,esi
 004DE2D7    mov        edx,dword ptr [ebx+14]; TZOracleSequence.?f14:IZConnection
 004DE2DA    call       @IntfCopy
 004DE2DF    pop        esi
 004DE2E0    pop        ebx
 004DE2E1    pop        ebp
 004DE2E2    ret
*}
//end;

//004DE2E4
//procedure sub_004DE2E4(?:?);
//begin
{*
 004DE2E4    push       ebp
 004DE2E5    mov        ebp,esp
 004DE2E7    push       ebx
 004DE2E8    push       esi
 004DE2E9    mov        esi,edx
 004DE2EB    mov        ebx,eax
 004DE2ED    mov        eax,esi
 004DE2EF    mov        edx,dword ptr [ebx+0C]; TZOracleSequence.?fC:String
 004DE2F2    call       @LStrAsg
 004DE2F7    pop        esi
 004DE2F8    pop        ebx
 004DE2F9    pop        ebp
 004DE2FA    ret
*}
//end;

//004DE2FC
//function sub_004DE2FC:?;
//begin
{*
 004DE2FC    mov        eax,dword ptr [eax+10]; TZOracleSequence.?f10:dword
 004DE2FF    ret
*}
//end;

//004DE300
//function sub_004DE300():?;
//begin
{*
 004DE300    add        esp,0FFFFFFF8
 004DE303    mov        dword ptr [esp],0
 004DE30A    mov        dword ptr [esp+4],0
 004DE312    mov        eax,dword ptr [esp]
 004DE315    mov        edx,dword ptr [esp+4]
 004DE319    pop        ecx
 004DE31A    pop        edx
 004DE31B    ret
*}
//end;

//004DE31C
//function sub_004DE31C():?;
//begin
{*
 004DE31C    add        esp,0FFFFFFF8
 004DE31F    mov        dword ptr [esp],0
 004DE326    mov        dword ptr [esp+4],0
 004DE32E    mov        eax,dword ptr [esp]
 004DE331    mov        edx,dword ptr [esp+4]
 004DE335    pop        ecx
 004DE336    pop        edx
 004DE337    ret
*}
//end;

//004DE338
//procedure sub_004DE338(?:?);
//begin
{*
 004DE338    mov        dword ptr [eax+10],edx; TZOracleSequence.?f10:dword
 004DE33B    ret
*}
//end;

//004DE33C
//procedure sub_004DE33C(?:?);
//begin
{*
 004DE33C    push       ebp
 004DE33D    mov        ebp,esp
 004DE33F    push       ebx
 004DE340    push       esi
 004DE341    mov        esi,edx
 004DE343    mov        ebx,eax
 004DE345    lea        eax,[ebx+0C]; TZOracleSequence.?fC:String
 004DE348    mov        edx,esi
 004DE34A    call       @LStrAsg
 004DE34F    pop        esi
 004DE350    pop        ebx
 004DE351    pop        ebp
 004DE352    ret
*}
//end;

end.