{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit228;

interface

uses
  Classes, Windows, Graphics, _Unit147, ZPlainDriver, ZPlainAdo;

type
  TZAdoDriver = class(TZAbstractDriver)
  public
    f18:IZPlainDriver;//f18
    //procedure sub_004EAAF8(?:?); virtual;
    //procedure sub_004EAB74(?:?; ?:?; ?:?); virtual;
    //function sub_004EACD0():?; virtual;
    //function sub_004EACD8():?; virtual;
    //constructor Create(?:TZAdoDriver; _Dv__:Boolean);
  end;
  TZAdoConnection = class(TZAbstractConnection)
  public
    f34:Connection15;//f34
    f38:IZPlainDriver;//f38
    destructor Destroy; virtual;
    //procedure sub_004EB170(?:?; ?:?); virtual;
    //procedure sub_004EB1C0(?:?; ?:?; ?:?); virtual;
    //procedure sub_004EB214(?:?; ?:?; ?:?); virtual;
    //procedure sub_004EB268(?:?; ?:?); virtual;
    //procedure sub_004EB280(?:?); virtual;
    procedure sub_004EB530; virtual;
    procedure sub_004EB630; virtual;
    procedure sub_004EAF64; virtual;
    procedure sub_004EB734; virtual;
    procedure sub_004EB8A0(); virtual;
    //procedure sub_004EB8AC(?:?); virtual;
    //procedure sub_004EB9E8(?:?); virtual;
    //procedure sub_004EB350(?:?); virtual;
    //function sub_004EBA44():?; virtual;
    procedure sub_004EBA48(); virtual;
    //procedure sub_004EAE00(?:?); virtual;
    //procedure sub_004EAE18(?:?); virtual;
    procedure sub_004EAF38(); virtual;
    procedure sub_004EB420; virtual;
    //constructor Create(?:TZAdoConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//004EAAA8
//constructor TZAdoDriver.Create(?:TZAdoDriver; _Dv__:Boolean);
//begin
{*
 004EAAA8    push       ebp
 004EAAA9    mov        ebp,esp
 004EAAAB    push       ebx
 004EAAAC    push       esi
 004EAAAD    test       dl,dl
>004EAAAF    je         004EAAB9
 004EAAB1    add        esp,0FFFFFFF0
 004EAAB4    call       @ClassCreate
 004EAAB9    mov        ebx,edx
 004EAABB    mov        esi,eax
 004EAABD    mov        dl,1
 004EAABF    mov        eax,[004DE470]; TZAdoPlainDriver
 004EAAC4    call       TZAdoPlainDriver.Create; TZAdoPlainDriver.Create
 004EAAC9    mov        edx,eax
 004EAACB    test       edx,edx
>004EAACD    je         004EAAD2
 004EAACF    sub        edx,0FFFFFFF0
 004EAAD2    lea        eax,[esi+18]; TZAdoDriver.?f18:IZPlainDriver
 004EAAD5    call       @IntfCopy
 004EAADA    mov        eax,esi
 004EAADC    test       bl,bl
>004EAADE    je         004EAAEF
 004EAAE0    call       @AfterConstruction
 004EAAE5    pop        dword ptr fs:[0]
 004EAAEC    add        esp,0C
 004EAAEF    mov        eax,esi
 004EAAF1    pop        esi
 004EAAF2    pop        ebx
 004EAAF3    pop        ebp
 004EAAF4    ret
*}
//end;

//004EAAF8
//procedure sub_004EAAF8(?:?);
//begin
{*
 004EAAF8    push       ebp
 004EAAF9    mov        ebp,esp
 004EAAFB    push       0
 004EAAFD    push       ebx
 004EAAFE    push       esi
 004EAAFF    mov        esi,edx
 004EAB01    mov        ebx,eax
 004EAB03    xor        eax,eax
 004EAB05    push       ebp
 004EAB06    push       4EAB66
 004EAB0B    push       dword ptr fs:[eax]
 004EAB0E    mov        dword ptr fs:[eax],esp
 004EAB11    push       1
 004EAB13    mov        eax,esi
 004EAB15    mov        ecx,1
 004EAB1A    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 004EAB20    call       @DynArraySetLength
 004EAB25    add        esp,4
 004EAB28    lea        edx,[ebp-4]
 004EAB2B    mov        eax,dword ptr [ebx+18]; TZAdoDriver.?f18:IZPlainDriver
 004EAB2E    mov        ecx,dword ptr [eax]
 004EAB30    call       dword ptr [ecx+0C]
 004EAB33    mov        edx,dword ptr [ebp-4]
 004EAB36    xor        eax,eax
 004EAB38    mov        ecx,dword ptr [esi]
 004EAB3A    test       ecx,ecx
>004EAB3C    je         004EAB43
 004EAB3E    cmp        eax,dword ptr [ecx-4]
>004EAB41    jb         004EAB48
 004EAB43    call       @BoundErr
 004EAB48    lea        eax,[ecx+eax*4]
 004EAB4B    call       @LStrAsg
 004EAB50    xor        eax,eax
 004EAB52    pop        edx
 004EAB53    pop        ecx
 004EAB54    pop        ecx
 004EAB55    mov        dword ptr fs:[eax],edx
 004EAB58    push       4EAB6D
 004EAB5D    lea        eax,[ebp-4]
 004EAB60    call       @LStrClr
 004EAB65    ret
<004EAB66    jmp        @HandleFinally
<004EAB6B    jmp        004EAB5D
 004EAB6D    pop        esi
 004EAB6E    pop        ebx
 004EAB6F    pop        ecx
 004EAB70    pop        ebp
 004EAB71    ret
*}
//end;

//004EAB74
//procedure sub_004EAB74(?:?; ?:?; ?:?);
//begin
{*
 004EAB74    push       ebp
 004EAB75    mov        ebp,esp
 004EAB77    push       ecx
 004EAB78    mov        ecx,4
 004EAB7D    push       0
 004EAB7F    push       0
 004EAB81    dec        ecx
<004EAB82    jne        004EAB7D
 004EAB84    push       ecx
 004EAB85    xchg       ecx,dword ptr [ebp-4]
 004EAB88    push       ebx
 004EAB89    push       esi
 004EAB8A    push       edi
 004EAB8B    mov        edi,ecx
 004EAB8D    mov        esi,edx
 004EAB8F    mov        ebx,eax
 004EAB91    xor        eax,eax
 004EAB93    push       ebp
 004EAB94    push       4EACBE
 004EAB99    push       dword ptr fs:[eax]
 004EAB9C    mov        dword ptr fs:[eax],esp
 004EAB9F    mov        dl,1
 004EABA1    mov        eax,[0041C8E4]; TStringList
 004EABA6    call       TObject.Create; TStringList.Create
 004EABAB    mov        dword ptr [ebp-4],eax
 004EABAE    xor        eax,eax
 004EABB0    push       ebp
 004EABB1    push       4EAC76
 004EABB6    push       dword ptr fs:[eax]
 004EABB9    mov        dword ptr fs:[eax],esp
 004EABBC    lea        eax,[ebp-18]
 004EABBF    push       eax
 004EABC0    lea        eax,[ebp-0C]
 004EABC3    push       eax
 004EABC4    lea        eax,[ebp-10]
 004EABC7    push       eax
 004EABC8    lea        eax,[ebp-14]
 004EABCB    push       eax
 004EABCC    mov        eax,dword ptr [ebp-4]
 004EABCF    push       eax
 004EABD0    lea        ecx,[ebp-8]
 004EABD3    mov        edx,edi
 004EABD5    mov        eax,esi
 004EABD7    call       004D28A4
 004EABDC    lea        edx,[ebp-24]
 004EABDF    mov        eax,ebx
 004EABE1    mov        ecx,dword ptr [eax]
 004EABE3    call       dword ptr [ecx]; TZAdoDriver.sub_004EAAF8
 004EABE5    mov        edx,dword ptr [ebp-24]
 004EABE8    lea        ecx,[ebp-1C]
 004EABEB    mov        eax,esi
 004EABED    call       004D263C
 004EABF2    lea        edx,[ebp-28]
 004EABF5    mov        eax,dword ptr [ebx+18]; TZAdoDriver.?f18:IZPlainDriver
 004EABF8    mov        ecx,dword ptr [eax]
 004EABFA    call       dword ptr [ecx+0C]
 004EABFD    mov        edx,dword ptr [ebp-28]
 004EAC00    mov        eax,dword ptr [ebp-1C]
 004EAC03    call       @LStrCmp
>004EAC08    jne        004EAC15
 004EAC0A    lea        eax,[ebp-20]
 004EAC0D    mov        edx,dword ptr [ebx+18]; TZAdoDriver.?f18:IZPlainDriver
 004EAC10    call       @IntfCopy
 004EAC15    mov        eax,dword ptr [ebp-20]
 004EAC18    mov        edx,dword ptr [eax]
 004EAC1A    call       dword ptr [edx+14]
 004EAC1D    push       esi
 004EAC1E    mov        eax,dword ptr [ebp-20]
 004EAC21    push       eax
 004EAC22    mov        eax,dword ptr [ebp-8]
 004EAC25    push       eax
 004EAC26    mov        eax,dword ptr [ebp-18]
 004EAC29    push       eax
 004EAC2A    mov        eax,dword ptr [ebp-0C]
 004EAC2D    push       eax
 004EAC2E    mov        eax,dword ptr [ebp-10]
 004EAC31    push       eax
 004EAC32    mov        eax,dword ptr [ebp-14]
 004EAC35    push       eax
 004EAC36    mov        eax,dword ptr [ebp-4]
 004EAC39    push       eax
 004EAC3A    mov        ecx,ebx
 004EAC3C    test       ecx,ecx
>004EAC3E    je         004EAC43
 004EAC40    sub        ecx,0FFFFFFEC
 004EAC43    mov        dl,1
 004EAC45    mov        eax,[004EA9B0]; TZAdoConnection
 004EAC4A    call       TZAdoConnection.Create; TZAdoConnection.Create
 004EAC4F    mov        edx,eax
 004EAC51    test       edx,edx
>004EAC53    je         004EAC58
 004EAC55    sub        edx,0FFFFFFD0
 004EAC58    mov        eax,dword ptr [ebp+8]
 004EAC5B    call       @IntfCopy
 004EAC60    xor        eax,eax
 004EAC62    pop        edx
 004EAC63    pop        ecx
 004EAC64    pop        ecx
 004EAC65    mov        dword ptr fs:[eax],edx
 004EAC68    push       4EAC7D
 004EAC6D    mov        eax,dword ptr [ebp-4]
 004EAC70    call       TObject.Free
 004EAC75    ret
<004EAC76    jmp        @HandleFinally
<004EAC7B    jmp        004EAC6D
 004EAC7D    xor        eax,eax
 004EAC7F    pop        edx
 004EAC80    pop        ecx
 004EAC81    pop        ecx
 004EAC82    mov        dword ptr fs:[eax],edx
 004EAC85    push       4EACC5
 004EAC8A    lea        eax,[ebp-28]
 004EAC8D    call       @LStrClr
 004EAC92    lea        eax,[ebp-24]
 004EAC95    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 004EAC9B    call       @DynArrayClear
 004EACA0    lea        eax,[ebp-20]
 004EACA3    call       @IntfClear
 004EACA8    lea        eax,[ebp-1C]
 004EACAB    call       @LStrClr
 004EACB0    lea        eax,[ebp-14]
 004EACB3    mov        edx,4
 004EACB8    call       @LStrArrayClr
 004EACBD    ret
<004EACBE    jmp        @HandleFinally
<004EACC3    jmp        004EAC8A
 004EACC5    pop        edi
 004EACC6    pop        esi
 004EACC7    pop        ebx
 004EACC8    mov        esp,ebp
 004EACCA    pop        ebp
 004EACCB    ret        4
*}
//end;

//004EACD0
//function sub_004EACD0():?;
//begin
{*
 004EACD0    mov        eax,1
 004EACD5    ret
*}
//end;

//004EACD8
//function sub_004EACD8():?;
//begin
{*
 004EACD8    xor        eax,eax
 004EACDA    ret
*}
//end;

//004EACDC
//constructor TZAdoConnection.Create(?:TZAdoConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004EACDC    push       ebp
 004EACDD    mov        ebp,esp
 004EACDF    add        esp,0FFFFFFF4
 004EACE2    push       ebx
 004EACE3    push       esi
 004EACE4    push       edi
 004EACE5    xor        ebx,ebx
 004EACE7    mov        dword ptr [ebp-0C],ebx
 004EACEA    test       dl,dl
>004EACEC    je         004EACF6
 004EACEE    add        esp,0FFFFFFF0
 004EACF1    call       @ClassCreate
 004EACF6    mov        dword ptr [ebp-8],ecx
 004EACF9    mov        byte ptr [ebp-1],dl
 004EACFC    mov        ebx,eax
 004EACFE    mov        edi,dword ptr [ebp+8]
 004EAD01    mov        esi,dword ptr [ebp+24]
 004EAD04    mov        eax,dword ptr [ebp-8]
 004EAD07    call       @IntfAddRef
 004EAD0C    mov        eax,dword ptr [ebp+20]
 004EAD0F    call       @IntfAddRef
 004EAD14    xor        eax,eax
 004EAD16    push       ebp
 004EAD17    push       4EAD9E
 004EAD1C    push       dword ptr fs:[eax]
 004EAD1F    mov        dword ptr fs:[eax],esp
 004EAD22    lea        edx,[ebp-0C]
 004EAD25    mov        eax,[004DE6D4]; CoConnection
 004EAD2A    call       004DE7E0
 004EAD2F    mov        edx,dword ptr [ebp-0C]
 004EAD32    lea        eax,[ebx+34]; TZAdoConnection.?f34:Connection15
 004EAD35    call       @IntfCopy
 004EAD3A    lea        eax,[ebx+38]; TZAdoConnection.?f38:IZPlainDriver
 004EAD3D    mov        edx,dword ptr [ebp+20]
 004EAD40    call       @IntfCopy
 004EAD45    push       esi
 004EAD46    mov        eax,dword ptr [ebp+1C]
 004EAD49    push       eax
 004EAD4A    mov        eax,dword ptr [ebp+18]
 004EAD4D    push       eax
 004EAD4E    mov        eax,dword ptr [ebp+14]
 004EAD51    push       eax
 004EAD52    mov        eax,dword ptr [ebp+10]
 004EAD55    push       eax
 004EAD56    mov        eax,dword ptr [ebp+0C]
 004EAD59    push       eax
 004EAD5A    push       edi
 004EAD5B    push       esi
 004EAD5C    push       edi
 004EAD5D    mov        ecx,ebx
 004EAD5F    mov        dl,1
 004EAD61    mov        eax,[004E687C]; TZAdoDatabaseMetadata
 004EAD66    call       TZAdoDatabaseMetadata.Create; TZAdoDatabaseMetadata.Create
 004EAD6B    push       eax
 004EAD6C    mov        ecx,dword ptr [ebp-8]
 004EAD6F    xor        edx,edx
 004EAD71    mov        eax,ebx
 004EAD73    call       004DDD88
 004EAD78    xor        eax,eax
 004EAD7A    pop        edx
 004EAD7B    pop        ecx
 004EAD7C    pop        ecx
 004EAD7D    mov        dword ptr fs:[eax],edx
 004EAD80    push       4EADA5
 004EAD85    lea        eax,[ebp-0C]
 004EAD88    call       @IntfClear
 004EAD8D    lea        eax,[ebp-8]
 004EAD90    call       @IntfClear
 004EAD95    lea        eax,[ebp+20]
 004EAD98    call       @IntfClear
 004EAD9D    ret
<004EAD9E    jmp        @HandleFinally
<004EADA3    jmp        004EAD85
 004EADA5    mov        eax,ebx
 004EADA7    cmp        byte ptr [ebp-1],0
>004EADAB    je         004EADBC
 004EADAD    call       @AfterConstruction
 004EADB2    pop        dword ptr fs:[0]
 004EADB9    add        esp,0C
 004EADBC    mov        eax,ebx
 004EADBE    pop        edi
 004EADBF    pop        esi
 004EADC0    pop        ebx
 004EADC1    mov        esp,ebp
 004EADC3    pop        ebp
 004EADC4    ret        20
*}
//end;

//004EADC8
destructor TZAdoConnection.Destroy;
begin
{*
 004EADC8    push       ebp
 004EADC9    mov        ebp,esp
 004EADCB    push       ebx
 004EADCC    push       esi
 004EADCD    call       @BeforeDestruction
 004EADD2    mov        ebx,edx
 004EADD4    mov        esi,eax
 004EADD6    mov        eax,esi
 004EADD8    mov        edx,dword ptr [eax]
 004EADDA    call       dword ptr [edx+40]; TZAdoConnection.sub_004EB734
 004EADDD    lea        eax,[esi+34]; TZAdoConnection.?f34:Connection15
 004EADE0    call       @IntfClear
 004EADE5    mov        edx,ebx
 004EADE7    and        dl,0FC
 004EADEA    mov        eax,esi
 004EADEC    call       TZAbstractConnection.Destroy
 004EADF1    test       bl,bl
>004EADF3    jle        004EADFC
 004EADF5    mov        eax,esi
 004EADF7    call       @ClassDestroy
 004EADFC    pop        esi
 004EADFD    pop        ebx
 004EADFE    pop        ebp
 004EADFF    ret
*}
end;

//004EAE00
//procedure sub_004EAE00(?:?);
//begin
{*
 004EAE00    push       ebp
 004EAE01    mov        ebp,esp
 004EAE03    push       ebx
 004EAE04    push       esi
 004EAE05    mov        esi,edx
 004EAE07    mov        ebx,eax
 004EAE09    mov        eax,esi
 004EAE0B    mov        edx,dword ptr [ebx+34]; TZAdoConnection.?f34:Connection15
 004EAE0E    call       @IntfCopy
 004EAE13    pop        esi
 004EAE14    pop        ebx
 004EAE15    pop        ebp
 004EAE16    ret
*}
//end;

//004EAE18
//procedure sub_004EAE18(?:?);
//begin
{*
 004EAE18    push       ebp
 004EAE19    mov        ebp,esp
 004EAE1B    mov        ecx,5
 004EAE20    push       0
 004EAE22    push       0
 004EAE24    dec        ecx
<004EAE25    jne        004EAE20
 004EAE27    push       ebx
 004EAE28    push       esi
 004EAE29    push       edi
 004EAE2A    mov        dword ptr [ebp-8],edx
 004EAE2D    mov        dword ptr [ebp-4],eax
 004EAE30    xor        eax,eax
 004EAE32    push       ebp
 004EAE33    push       4EAF29
 004EAE38    push       dword ptr fs:[eax]
 004EAE3B    mov        dword ptr fs:[eax],esp
 004EAE3E    xor        eax,eax
 004EAE40    push       ebp
 004EAE41    push       4EAEB0
 004EAE46    push       dword ptr fs:[eax]
 004EAE49    mov        dword ptr fs:[eax],esp
 004EAE4C    lea        eax,[ebp-1C]
 004EAE4F    call       @IntfClear
 004EAE54    push       eax
 004EAE55    push       80
 004EAE5A    lea        eax,[ebp-18]
 004EAE5D    call       @VarClr
 004EAE62    push       eax
 004EAE63    lea        eax,[ebp-20]
 004EAE66    mov        edx,dword ptr [ebp-8]
 004EAE69    call       @WStrFromLStr
 004EAE6E    mov        eax,dword ptr [ebp-20]
 004EAE71    push       eax
 004EAE72    mov        eax,dword ptr [ebp-4]
 004EAE75    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EAE78    push       eax
 004EAE79    mov        eax,dword ptr [eax]
 004EAE7B    call       dword ptr [eax+40]
 004EAE7E    call       @CheckAutoResult
 004EAE83    mov        eax,dword ptr [ebp-8]
 004EAE86    push       eax
 004EAE87    lea        edx,[ebp-24]
 004EAE8A    mov        eax,dword ptr [ebp-4]
 004EAE8D    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EAE90    mov        ecx,dword ptr [eax]
 004EAE92    call       dword ptr [ecx+0C]
 004EAE95    mov        ecx,dword ptr [ebp-24]
 004EAE98    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EAE9D    mov        eax,dword ptr [eax]
 004EAE9F    mov        dl,3
 004EAEA1    mov        ebx,dword ptr [eax]
 004EAEA3    call       dword ptr [ebx+3C]
 004EAEA6    xor        eax,eax
 004EAEA8    pop        edx
 004EAEA9    pop        ecx
 004EAEAA    pop        ecx
 004EAEAB    mov        dword ptr fs:[eax],edx
>004EAEAE    jmp        004EAEF6
<004EAEB0    jmp        @HandleOnException
 004EAEB5    dd        1
 004EAEB9    dd        4087B0;Exception
 004EAEBD    dd        4EAEC1
 004EAEC1    mov        ebx,eax
 004EAEC3    mov        eax,dword ptr [ebp-8]
 004EAEC6    push       eax
 004EAEC7    push       0
 004EAEC9    mov        eax,dword ptr [ebx+4]; Exception.?f4:String
 004EAECC    push       eax
 004EAECD    lea        edx,[ebp-28]
 004EAED0    mov        eax,dword ptr [ebp-4]
 004EAED3    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EAED6    mov        ecx,dword ptr [eax]
 004EAED8    call       dword ptr [ecx+0C]
 004EAEDB    mov        ecx,dword ptr [ebp-28]
 004EAEDE    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EAEE3    mov        eax,dword ptr [eax]
 004EAEE5    mov        dl,3
 004EAEE7    mov        ebx,dword ptr [eax]
 004EAEE9    call       dword ptr [ebx+40]
 004EAEEC    call       @RaiseAgain
 004EAEF1    call       @DoneExcept
 004EAEF6    xor        eax,eax
 004EAEF8    pop        edx
 004EAEF9    pop        ecx
 004EAEFA    pop        ecx
 004EAEFB    mov        dword ptr fs:[eax],edx
 004EAEFE    push       4EAF30
 004EAF03    lea        eax,[ebp-28]
 004EAF06    mov        edx,2
 004EAF0B    call       @LStrArrayClr
 004EAF10    lea        eax,[ebp-20]
 004EAF13    call       @WStrClr
 004EAF18    lea        eax,[ebp-1C]
 004EAF1B    call       @IntfClear
 004EAF20    lea        eax,[ebp-18]
 004EAF23    call       @VarClr
 004EAF28    ret
<004EAF29    jmp        @HandleFinally
<004EAF2E    jmp        004EAF03
 004EAF30    pop        edi
 004EAF31    pop        esi
 004EAF32    pop        ebx
 004EAF33    mov        esp,ebp
 004EAF35    pop        ebp
 004EAF36    ret
*}
//end;

//004EAF38
procedure sub_004EAF38();
begin
{*
 004EAF38    ret
*}
end;

//004EAF3C
//procedure sub_004EAF3C(?:TZAdoConnection);
//begin
{*
 004EAF3C    push       ebp
 004EAF3D    mov        ebp,esp
 004EAF3F    push       ebx
 004EAF40    mov        ebx,eax
 004EAF42    cmp        byte ptr [ebx+2B],0; TZAdoConnection.?f2B:byte
>004EAF46    jne        004EAF60
 004EAF48    cmp        byte ptr [ebx+28],0; TZAdoConnection.?f28:byte
>004EAF4C    jne        004EAF60
 004EAF4E    mov        eax,ebx
 004EAF50    mov        edx,dword ptr [eax]
 004EAF52    call       dword ptr [edx+64]; TZAdoConnection.sub_004DE228
 004EAF55    test       al,al
>004EAF57    je         004EAF60
 004EAF59    mov        eax,ebx
 004EAF5B    mov        edx,dword ptr [eax]
 004EAF5D    call       dword ptr [edx+7C]; TZAdoConnection.sub_004EB420
 004EAF60    pop        ebx
 004EAF61    pop        ebp
 004EAF62    ret
*}
//end;

//004EAF64
procedure sub_004EAF64;
begin
{*
 004EAF64    push       ebp
 004EAF65    mov        ebp,esp
 004EAF67    mov        ecx,5
 004EAF6C    push       0
 004EAF6E    push       0
 004EAF70    dec        ecx
<004EAF71    jne        004EAF6C
 004EAF73    push       ecx
 004EAF74    push       ebx
 004EAF75    push       esi
 004EAF76    push       edi
 004EAF77    mov        dword ptr [ebp-4],eax
 004EAF7A    xor        eax,eax
 004EAF7C    push       ebp
 004EAF7D    push       4EB137
 004EAF82    push       dword ptr fs:[eax]
 004EAF85    mov        dword ptr fs:[eax],esp
 004EAF88    mov        eax,dword ptr [ebp-4]
 004EAF8B    cmp        byte ptr [eax+2B],0; TZAdoConnection.?f2B:byte
>004EAF8F    je         004EB107
 004EAF95    lea        eax,[ebp-8]
 004EAF98    push       eax
 004EAF99    mov        eax,dword ptr [ebp-4]
 004EAF9C    mov        eax,dword ptr [eax+18]; TZAdoConnection.?f18:String
 004EAF9F    mov        dword ptr [ebp-18],eax
 004EAFA2    mov        byte ptr [ebp-14],0B
 004EAFA6    mov        eax,dword ptr [ebp-4]
 004EAFA9    mov        eax,dword ptr [eax+1C]; TZAdoConnection.?f1C:String
 004EAFAC    mov        dword ptr [ebp-10],eax
 004EAFAF    mov        byte ptr [ebp-0C],0B
 004EAFB3    lea        edx,[ebp-18]
 004EAFB6    mov        ecx,1
 004EAFBB    mov        eax,4EB150; 'CONNECT TO \"%s\" AS USER \"%s\"'
 004EAFC0    call       Format
 004EAFC5    xor        eax,eax
 004EAFC7    push       ebp
 004EAFC8    push       4EB08D
 004EAFCD    push       dword ptr fs:[eax]
 004EAFD0    mov        dword ptr fs:[eax],esp
 004EAFD3    mov        eax,dword ptr [ebp-4]
 004EAFD6    cmp        byte ptr [eax+29],0; TZAdoConnection.?f29:byte
>004EAFDA    je         004EAFF1
 004EAFDC    push       1
 004EAFDE    mov        eax,dword ptr [ebp-4]
 004EAFE1    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EAFE4    push       eax
 004EAFE5    mov        eax,dword ptr [eax]
 004EAFE7    call       dword ptr [eax+7C]
 004EAFEA    call       @CheckAutoResult
>004EAFEF    jmp        004EB004
 004EAFF1    push       0
 004EAFF3    mov        eax,dword ptr [ebp-4]
 004EAFF6    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EAFF9    push       eax
 004EAFFA    mov        eax,dword ptr [eax]
 004EAFFC    call       dword ptr [eax+7C]
 004EAFFF    call       @CheckAutoResult
 004EB004    push       0FF
 004EB006    lea        eax,[ebp-1C]
 004EB009    mov        edx,dword ptr [ebp-4]
 004EB00C    mov        edx,dword ptr [edx+20]; TZAdoConnection.?f20:String
 004EB00F    call       @WStrFromLStr
 004EB014    mov        eax,dword ptr [ebp-1C]
 004EB017    push       eax
 004EB018    lea        eax,[ebp-20]
 004EB01B    mov        edx,dword ptr [ebp-4]
 004EB01E    mov        edx,dword ptr [edx+1C]; TZAdoConnection.?f1C:String
 004EB021    call       @WStrFromLStr
 004EB026    mov        eax,dword ptr [ebp-20]
 004EB029    push       eax
 004EB02A    lea        eax,[ebp-24]
 004EB02D    mov        edx,dword ptr [ebp-4]
 004EB030    mov        edx,dword ptr [edx+18]; TZAdoConnection.?f18:String
 004EB033    call       @WStrFromLStr
 004EB038    mov        eax,dword ptr [ebp-24]
 004EB03B    push       eax
 004EB03C    mov        eax,dword ptr [ebp-4]
 004EB03F    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EB042    push       eax
 004EB043    mov        eax,dword ptr [eax]
 004EB045    call       dword ptr [eax+50]
 004EB048    call       @CheckAutoResult
 004EB04D    push       3
 004EB04F    mov        eax,dword ptr [ebp-4]
 004EB052    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EB055    push       eax
 004EB056    mov        eax,dword ptr [eax]
 004EB058    call       dword ptr [eax+74]
 004EB05B    call       @CheckAutoResult
 004EB060    mov        eax,dword ptr [ebp-8]
 004EB063    push       eax
 004EB064    lea        edx,[ebp-28]
 004EB067    mov        eax,dword ptr [ebp-4]
 004EB06A    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB06D    mov        ecx,dword ptr [eax]
 004EB06F    call       dword ptr [ecx+0C]
 004EB072    mov        ecx,dword ptr [ebp-28]
 004EB075    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB07A    mov        eax,dword ptr [eax]
 004EB07C    xor        edx,edx
 004EB07E    mov        ebx,dword ptr [eax]
 004EB080    call       dword ptr [ebx+3C]
 004EB083    xor        eax,eax
 004EB085    pop        edx
 004EB086    pop        ecx
 004EB087    pop        ecx
 004EB088    mov        dword ptr fs:[eax],edx
>004EB08B    jmp        004EB0D3
<004EB08D    jmp        @HandleOnException
 004EB092    dd        1
 004EB096    dd        4087B0;Exception
 004EB09A    dd        4EB09E
 004EB09E    mov        ebx,eax
 004EB0A0    mov        eax,dword ptr [ebp-8]
 004EB0A3    push       eax
 004EB0A4    push       0
 004EB0A6    mov        eax,dword ptr [ebx+4]; Exception.?f4:String
 004EB0A9    push       eax
 004EB0AA    lea        edx,[ebp-2C]
 004EB0AD    mov        eax,dword ptr [ebp-4]
 004EB0B0    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB0B3    mov        ecx,dword ptr [eax]
 004EB0B5    call       dword ptr [ecx+0C]
 004EB0B8    mov        ecx,dword ptr [ebp-2C]
 004EB0BB    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB0C0    mov        eax,dword ptr [eax]
 004EB0C2    xor        edx,edx
 004EB0C4    mov        ebx,dword ptr [eax]
 004EB0C6    call       dword ptr [ebx+40]
 004EB0C9    call       @RaiseAgain
 004EB0CE    call       @DoneExcept
 004EB0D3    mov        eax,dword ptr [ebp-4]
 004EB0D6    call       004DDF38
 004EB0DB    mov        eax,dword ptr [ebp-4]
 004EB0DE    mov        edx,dword ptr [eax]
 004EB0E0    call       dword ptr [edx+64]; TZAdoConnection.sub_004DE228
 004EB0E3    and        eax,7F
 004EB0E6    mov        eax,dword ptr [eax*4+615FF4]
 004EB0ED    push       eax
 004EB0EE    mov        eax,dword ptr [ebp-4]
 004EB0F1    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EB0F4    push       eax
 004EB0F5    mov        eax,dword ptr [eax]
 004EB0F7    call       dword ptr [eax+64]
 004EB0FA    call       @CheckAutoResult
 004EB0FF    mov        eax,dword ptr [ebp-4]
 004EB102    call       004EAF3C
 004EB107    xor        eax,eax
 004EB109    pop        edx
 004EB10A    pop        ecx
 004EB10B    pop        ecx
 004EB10C    mov        dword ptr fs:[eax],edx
 004EB10F    push       4EB13E
 004EB114    lea        eax,[ebp-2C]
 004EB117    mov        edx,2
 004EB11C    call       @LStrArrayClr
 004EB121    lea        eax,[ebp-24]
 004EB124    mov        edx,3
 004EB129    call       @WStrArrayClr
 004EB12E    lea        eax,[ebp-8]
 004EB131    call       @LStrClr
 004EB136    ret
<004EB137    jmp        @HandleFinally
<004EB13C    jmp        004EB114
 004EB13E    pop        edi
 004EB13F    pop        esi
 004EB140    pop        ebx
 004EB141    mov        esp,ebp
 004EB143    pop        ebp
 004EB144    ret
*}
end;

//004EB170
//procedure sub_004EB170(?:?; ?:?);
//begin
{*
 004EB170    push       ebp
 004EB171    mov        ebp,esp
 004EB173    push       ebx
 004EB174    push       esi
 004EB175    push       edi
 004EB176    mov        edi,ecx
 004EB178    mov        esi,edx
 004EB17A    mov        ebx,eax
 004EB17C    mov        eax,ebx
 004EB17E    mov        edx,dword ptr [eax]
 004EB180    call       dword ptr [edx+44]; TZAdoConnection.sub_004DE1AC
 004EB183    test       al,al
>004EB185    je         004EB18E
 004EB187    mov        eax,ebx
 004EB189    mov        edx,dword ptr [eax]
 004EB18B    call       dword ptr [edx+3C]; TZAdoConnection.sub_004EAF64
 004EB18E    mov        eax,ebx
 004EB190    test       eax,eax
>004EB192    je         004EB197
 004EB194    sub        eax,0FFFFFFD0
 004EB197    push       eax
 004EB198    push       0
 004EB19A    push       esi
 004EB19B    mov        ecx,dword ptr [ebx+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB19E    mov        dl,1
 004EB1A0    mov        eax,[004E4C5C]; TZAdoStatement
 004EB1A5    call       TZAdoStatement.Create; TZAdoStatement.Create
 004EB1AA    mov        edx,eax
 004EB1AC    test       edx,edx
>004EB1AE    je         004EB1B3
 004EB1B0    sub        edx,0FFFFFFBC
 004EB1B3    mov        eax,edi
 004EB1B5    call       @IntfCopy
 004EB1BA    pop        edi
 004EB1BB    pop        esi
 004EB1BC    pop        ebx
 004EB1BD    pop        ebp
 004EB1BE    ret
*}
//end;

//004EB1C0
//procedure sub_004EB1C0(?:?; ?:?; ?:?);
//begin
{*
 004EB1C0    push       ebp
 004EB1C1    mov        ebp,esp
 004EB1C3    push       ebx
 004EB1C4    push       esi
 004EB1C5    push       edi
 004EB1C6    mov        edi,ecx
 004EB1C8    mov        esi,edx
 004EB1CA    mov        ebx,eax
 004EB1CC    mov        eax,ebx
 004EB1CE    mov        edx,dword ptr [eax]
 004EB1D0    call       dword ptr [edx+44]; TZAdoConnection.sub_004DE1AC
 004EB1D3    test       al,al
>004EB1D5    je         004EB1DE
 004EB1D7    mov        eax,ebx
 004EB1D9    mov        edx,dword ptr [eax]
 004EB1DB    call       dword ptr [edx+3C]; TZAdoConnection.sub_004EAF64
 004EB1DE    mov        eax,ebx
 004EB1E0    test       eax,eax
>004EB1E2    je         004EB1E7
 004EB1E4    sub        eax,0FFFFFFD0
 004EB1E7    push       eax
 004EB1E8    push       esi
 004EB1E9    push       edi
 004EB1EA    mov        ecx,dword ptr [ebx+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB1ED    mov        dl,1
 004EB1EF    mov        eax,[004E4E18]; TZAdoPreparedStatement
 004EB1F4    call       TZAdoPreparedStatement.Create; TZAdoPreparedStatement.Create
 004EB1F9    mov        edx,eax
 004EB1FB    test       edx,edx
>004EB1FD    je         004EB202
 004EB1FF    sub        edx,0FFFFFFA4
 004EB202    mov        eax,dword ptr [ebp+8]
 004EB205    call       @IntfCopy
 004EB20A    pop        edi
 004EB20B    pop        esi
 004EB20C    pop        ebx
 004EB20D    pop        ebp
 004EB20E    ret        4
*}
//end;

//004EB214
//procedure sub_004EB214(?:?; ?:?; ?:?);
//begin
{*
 004EB214    push       ebp
 004EB215    mov        ebp,esp
 004EB217    push       ebx
 004EB218    push       esi
 004EB219    push       edi
 004EB21A    mov        edi,ecx
 004EB21C    mov        esi,edx
 004EB21E    mov        ebx,eax
 004EB220    mov        eax,ebx
 004EB222    mov        edx,dword ptr [eax]
 004EB224    call       dword ptr [edx+44]; TZAdoConnection.sub_004DE1AC
 004EB227    test       al,al
>004EB229    je         004EB232
 004EB22B    mov        eax,ebx
 004EB22D    mov        edx,dword ptr [eax]
 004EB22F    call       dword ptr [edx+3C]; TZAdoConnection.sub_004EAF64
 004EB232    mov        eax,ebx
 004EB234    test       eax,eax
>004EB236    je         004EB23B
 004EB238    sub        eax,0FFFFFFD0
 004EB23B    push       eax
 004EB23C    push       esi
 004EB23D    push       edi
 004EB23E    mov        ecx,dword ptr [ebx+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB241    mov        dl,1
 004EB243    mov        eax,[004E4FD4]; TZAdoCallableStatement
 004EB248    call       TZAdoCallableStatement.Create; TZAdoCallableStatement.Create
 004EB24D    mov        edx,eax
 004EB24F    test       edx,edx
>004EB251    je         004EB256
 004EB253    sub        edx,0FFFFFF8C
 004EB256    mov        eax,dword ptr [ebp+8]
 004EB259    call       @IntfCopy
 004EB25E    pop        edi
 004EB25F    pop        esi
 004EB260    pop        ebx
 004EB261    pop        ebp
 004EB262    ret        4
*}
//end;

//004EB268
//procedure sub_004EB268(?:?; ?:?);
//begin
{*
 004EB268    push       ebp
 004EB269    mov        ebp,esp
 004EB26B    push       ebx
 004EB26C    push       esi
 004EB26D    mov        esi,ecx
 004EB26F    mov        ebx,edx
 004EB271    mov        eax,esi
 004EB273    mov        edx,ebx
 004EB275    call       @LStrAsg
 004EB27A    pop        esi
 004EB27B    pop        ebx
 004EB27C    pop        ebp
 004EB27D    ret
*}
//end;

//004EB280
//procedure sub_004EB280(?:?);
//begin
{*
 004EB280    push       ebp
 004EB281    mov        ebp,esp
 004EB283    add        esp,0FFFFFFF8
 004EB286    push       ebx
 004EB287    push       esi
 004EB288    push       edi
 004EB289    xor        ecx,ecx
 004EB28B    mov        dword ptr [ebp-8],ecx
 004EB28E    mov        ebx,edx
 004EB290    mov        esi,eax
 004EB292    xor        eax,eax
 004EB294    push       ebp
 004EB295    push       4EB32F
 004EB29A    push       dword ptr fs:[eax]
 004EB29D    mov        dword ptr fs:[eax],esp
 004EB2A0    mov        eax,esi
 004EB2A2    mov        edx,dword ptr [eax]
 004EB2A4    call       dword ptr [edx+1C]; TZAdoConnection.sub_004DE110
 004EB2A7    cmp        bl,al
>004EB2A9    je         004EB319
 004EB2AB    mov        al,byte ptr [esi+2B]; TZAdoConnection.?f2B:byte
 004EB2AE    xor        al,1
 004EB2B0    test       al,bl
>004EB2B2    je         004EB309
 004EB2B4    lea        eax,[ebp-4]
 004EB2B7    push       eax
 004EB2B8    mov        eax,dword ptr [esi+34]; TZAdoConnection.?f34:Connection15
 004EB2BB    push       eax
 004EB2BC    mov        eax,dword ptr [eax]
 004EB2BE    call       dword ptr [eax+88]
 004EB2C4    call       @CheckAutoResult
 004EB2C9    cmp        dword ptr [ebp-4],1
>004EB2CD    jne        004EB309
 004EB2CF    mov        eax,esi
 004EB2D1    mov        edx,dword ptr [eax]
 004EB2D3    call       dword ptr [edx+64]; TZAdoConnection.sub_004DE228
 004EB2D6    test       al,al
>004EB2D8    je         004EB309
 004EB2DA    mov        eax,dword ptr [esi+34]; TZAdoConnection.?f34:Connection15
 004EB2DD    push       eax
 004EB2DE    mov        eax,dword ptr [eax]
 004EB2E0    call       dword ptr [eax+48]
 004EB2E3    call       @CheckAutoResult
 004EB2E8    push       4EB348; 'COMMIT'
 004EB2ED    lea        edx,[ebp-8]
 004EB2F0    mov        eax,dword ptr [esi+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB2F3    mov        ecx,dword ptr [eax]
 004EB2F5    call       dword ptr [ecx+0C]
 004EB2F8    mov        ecx,dword ptr [ebp-8]
 004EB2FB    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB300    mov        eax,dword ptr [eax]
 004EB302    mov        dl,3
 004EB304    mov        edi,dword ptr [eax]
 004EB306    call       dword ptr [edi+3C]
 004EB309    mov        edx,ebx
 004EB30B    mov        eax,esi
 004EB30D    call       004DE10C
 004EB312    mov        eax,esi
 004EB314    call       004EAF3C
 004EB319    xor        eax,eax
 004EB31B    pop        edx
 004EB31C    pop        ecx
 004EB31D    pop        ecx
 004EB31E    mov        dword ptr fs:[eax],edx
 004EB321    push       4EB336
 004EB326    lea        eax,[ebp-8]
 004EB329    call       @LStrClr
 004EB32E    ret
<004EB32F    jmp        @HandleFinally
<004EB334    jmp        004EB326
 004EB336    pop        edi
 004EB337    pop        esi
 004EB338    pop        ebx
 004EB339    pop        ecx
 004EB33A    pop        ecx
 004EB33B    pop        ebp
 004EB33C    ret
*}
//end;

//004EB350
//procedure sub_004EB350(?:?);
//begin
{*
 004EB350    push       ebp
 004EB351    mov        ebp,esp
 004EB353    push       0
 004EB355    push       ebx
 004EB356    push       esi
 004EB357    push       edi
 004EB358    mov        ebx,edx
 004EB35A    mov        esi,eax
 004EB35C    xor        eax,eax
 004EB35E    push       ebp
 004EB35F    push       4EB401
 004EB364    push       dword ptr fs:[eax]
 004EB367    mov        dword ptr fs:[eax],esp
 004EB36A    mov        eax,esi
 004EB36C    mov        edx,dword ptr [eax]
 004EB36E    call       dword ptr [edx+64]; TZAdoConnection.sub_004DE228
 004EB371    cmp        bl,al
>004EB373    je         004EB3EB
 004EB375    cmp        byte ptr [esi+2B],0; TZAdoConnection.?f2B:byte
>004EB379    jne        004EB3BB
 004EB37B    cmp        byte ptr [esi+28],0; TZAdoConnection.?f28:byte
>004EB37F    jne        004EB3BB
 004EB381    mov        eax,esi
 004EB383    mov        edx,dword ptr [eax]
 004EB385    call       dword ptr [edx+64]; TZAdoConnection.sub_004DE228
 004EB388    test       al,al
>004EB38A    je         004EB3BB
 004EB38C    mov        eax,dword ptr [esi+34]; TZAdoConnection.?f34:Connection15
 004EB38F    push       eax
 004EB390    mov        eax,dword ptr [eax]
 004EB392    call       dword ptr [eax+48]
 004EB395    call       @CheckAutoResult
 004EB39A    push       4EB418; 'COMMIT'
 004EB39F    lea        edx,[ebp-4]
 004EB3A2    mov        eax,dword ptr [esi+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB3A5    mov        ecx,dword ptr [eax]
 004EB3A7    call       dword ptr [ecx+0C]
 004EB3AA    mov        ecx,dword ptr [ebp-4]
 004EB3AD    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB3B2    mov        eax,dword ptr [eax]
 004EB3B4    mov        dl,3
 004EB3B6    mov        edi,dword ptr [eax]
 004EB3B8    call       dword ptr [edi+3C]
 004EB3BB    mov        edx,ebx
 004EB3BD    mov        eax,esi
 004EB3BF    call       004DE224
 004EB3C4    cmp        byte ptr [esi+2B],0; TZAdoConnection.?f2B:byte
>004EB3C8    jne        004EB3E4
 004EB3CA    xor        eax,eax
 004EB3CC    mov        al,bl
 004EB3CE    mov        eax,dword ptr [eax*4+615FF4]
 004EB3D5    push       eax
 004EB3D6    mov        eax,dword ptr [esi+34]; TZAdoConnection.?f34:Connection15
 004EB3D9    push       eax
 004EB3DA    mov        eax,dword ptr [eax]
 004EB3DC    call       dword ptr [eax+64]
 004EB3DF    call       @CheckAutoResult
 004EB3E4    mov        eax,esi
 004EB3E6    call       004EAF3C
 004EB3EB    xor        eax,eax
 004EB3ED    pop        edx
 004EB3EE    pop        ecx
 004EB3EF    pop        ecx
 004EB3F0    mov        dword ptr fs:[eax],edx
 004EB3F3    push       4EB408
 004EB3F8    lea        eax,[ebp-4]
 004EB3FB    call       @LStrClr
 004EB400    ret
<004EB401    jmp        @HandleFinally
<004EB406    jmp        004EB3F8
 004EB408    pop        edi
 004EB409    pop        esi
 004EB40A    pop        ebx
 004EB40B    pop        ecx
 004EB40C    pop        ebp
 004EB40D    ret
*}
//end;

//004EB420
procedure sub_004EB420;
begin
{*
 004EB420    push       ebp
 004EB421    mov        ebp,esp
 004EB423    xor        ecx,ecx
 004EB425    push       ecx
 004EB426    push       ecx
 004EB427    push       ecx
 004EB428    push       ecx
 004EB429    push       ecx
 004EB42A    push       ebx
 004EB42B    push       esi
 004EB42C    push       edi
 004EB42D    mov        dword ptr [ebp-4],eax
 004EB430    xor        eax,eax
 004EB432    push       ebp
 004EB433    push       4EB504
 004EB438    push       dword ptr fs:[eax]
 004EB43B    mov        dword ptr fs:[eax],esp
 004EB43E    lea        eax,[ebp-8]
 004EB441    mov        edx,4EB51C; 'BEGIN TRANSACTION'
 004EB446    call       @LStrLAsg
 004EB44B    xor        eax,eax
 004EB44D    push       ebp
 004EB44E    push       4EB49B
 004EB453    push       dword ptr fs:[eax]
 004EB456    mov        dword ptr fs:[eax],esp
 004EB459    lea        eax,[ebp-0C]
 004EB45C    push       eax
 004EB45D    mov        eax,dword ptr [ebp-4]
 004EB460    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EB463    push       eax
 004EB464    mov        eax,dword ptr [eax]
 004EB466    call       dword ptr [eax+44]
 004EB469    call       @CheckAutoResult
 004EB46E    mov        eax,dword ptr [ebp-8]
 004EB471    push       eax
 004EB472    lea        edx,[ebp-10]
 004EB475    mov        eax,dword ptr [ebp-4]
 004EB478    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB47B    mov        ecx,dword ptr [eax]
 004EB47D    call       dword ptr [ecx+0C]
 004EB480    mov        ecx,dword ptr [ebp-10]
 004EB483    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB488    mov        eax,dword ptr [eax]
 004EB48A    mov        dl,3
 004EB48C    mov        ebx,dword ptr [eax]
 004EB48E    call       dword ptr [ebx+3C]
 004EB491    xor        eax,eax
 004EB493    pop        edx
 004EB494    pop        ecx
 004EB495    pop        ecx
 004EB496    mov        dword ptr fs:[eax],edx
>004EB499    jmp        004EB4E1
<004EB49B    jmp        @HandleOnException
 004EB4A0    dd        1
 004EB4A4    dd        4087B0;Exception
 004EB4A8    dd        4EB4AC
 004EB4AC    mov        ebx,eax
 004EB4AE    mov        eax,dword ptr [ebp-8]
 004EB4B1    push       eax
 004EB4B2    push       0
 004EB4B4    mov        eax,dword ptr [ebx+4]; Exception.?f4:String
 004EB4B7    push       eax
 004EB4B8    lea        edx,[ebp-14]
 004EB4BB    mov        eax,dword ptr [ebp-4]
 004EB4BE    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB4C1    mov        ecx,dword ptr [eax]
 004EB4C3    call       dword ptr [ecx+0C]
 004EB4C6    mov        ecx,dword ptr [ebp-14]
 004EB4C9    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB4CE    mov        eax,dword ptr [eax]
 004EB4D0    mov        dl,3
 004EB4D2    mov        ebx,dword ptr [eax]
 004EB4D4    call       dword ptr [ebx+40]
 004EB4D7    call       @RaiseAgain
 004EB4DC    call       @DoneExcept
 004EB4E1    xor        eax,eax
 004EB4E3    pop        edx
 004EB4E4    pop        ecx
 004EB4E5    pop        ecx
 004EB4E6    mov        dword ptr fs:[eax],edx
 004EB4E9    push       4EB50B
 004EB4EE    lea        eax,[ebp-14]
 004EB4F1    mov        edx,2
 004EB4F6    call       @LStrArrayClr
 004EB4FB    lea        eax,[ebp-8]
 004EB4FE    call       @LStrClr
 004EB503    ret
<004EB504    jmp        @HandleFinally
<004EB509    jmp        004EB4EE
 004EB50B    pop        edi
 004EB50C    pop        esi
 004EB50D    pop        ebx
 004EB50E    mov        esp,ebp
 004EB510    pop        ebp
 004EB511    ret
*}
end;

//004EB530
procedure sub_004EB530;
begin
{*
 004EB530    push       ebp
 004EB531    mov        ebp,esp
 004EB533    xor        ecx,ecx
 004EB535    push       ecx
 004EB536    push       ecx
 004EB537    push       ecx
 004EB538    push       ecx
 004EB539    push       ebx
 004EB53A    push       esi
 004EB53B    push       edi
 004EB53C    mov        dword ptr [ebp-4],eax
 004EB53F    xor        eax,eax
 004EB541    push       ebp
 004EB542    push       4EB60F
 004EB547    push       dword ptr fs:[eax]
 004EB54A    mov        dword ptr fs:[eax],esp
 004EB54D    lea        eax,[ebp-8]
 004EB550    mov        edx,4EB628; 'COMMIT'
 004EB555    call       @LStrLAsg
 004EB55A    xor        eax,eax
 004EB55C    push       ebp
 004EB55D    push       4EB5AE
 004EB562    push       dword ptr fs:[eax]
 004EB565    mov        dword ptr fs:[eax],esp
 004EB568    mov        eax,dword ptr [ebp-4]
 004EB56B    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EB56E    push       eax
 004EB56F    mov        eax,dword ptr [eax]
 004EB571    call       dword ptr [eax+48]
 004EB574    call       @CheckAutoResult
 004EB579    mov        eax,dword ptr [ebp-8]
 004EB57C    push       eax
 004EB57D    lea        edx,[ebp-0C]
 004EB580    mov        eax,dword ptr [ebp-4]
 004EB583    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB586    mov        ecx,dword ptr [eax]
 004EB588    call       dword ptr [ecx+0C]
 004EB58B    mov        ecx,dword ptr [ebp-0C]
 004EB58E    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB593    mov        eax,dword ptr [eax]
 004EB595    mov        dl,3
 004EB597    mov        ebx,dword ptr [eax]
 004EB599    call       dword ptr [ebx+3C]
 004EB59C    mov        eax,dword ptr [ebp-4]
 004EB59F    mov        edx,dword ptr [eax]
 004EB5A1    call       dword ptr [edx+7C]; TZAdoConnection.sub_004EB420
 004EB5A4    xor        eax,eax
 004EB5A6    pop        edx
 004EB5A7    pop        ecx
 004EB5A8    pop        ecx
 004EB5A9    mov        dword ptr fs:[eax],edx
>004EB5AC    jmp        004EB5F4
<004EB5AE    jmp        @HandleOnException
 004EB5B3    dd        1
 004EB5B7    dd        4087B0;Exception
 004EB5BB    dd        4EB5BF
 004EB5BF    mov        ebx,eax
 004EB5C1    mov        eax,dword ptr [ebp-8]
 004EB5C4    push       eax
 004EB5C5    push       0
 004EB5C7    mov        eax,dword ptr [ebx+4]; Exception.?f4:String
 004EB5CA    push       eax
 004EB5CB    lea        edx,[ebp-10]
 004EB5CE    mov        eax,dword ptr [ebp-4]
 004EB5D1    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB5D4    mov        ecx,dword ptr [eax]
 004EB5D6    call       dword ptr [ecx+0C]
 004EB5D9    mov        ecx,dword ptr [ebp-10]
 004EB5DC    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB5E1    mov        eax,dword ptr [eax]
 004EB5E3    mov        dl,3
 004EB5E5    mov        ebx,dword ptr [eax]
 004EB5E7    call       dword ptr [ebx+40]
 004EB5EA    call       @RaiseAgain
 004EB5EF    call       @DoneExcept
 004EB5F4    xor        eax,eax
 004EB5F6    pop        edx
 004EB5F7    pop        ecx
 004EB5F8    pop        ecx
 004EB5F9    mov        dword ptr fs:[eax],edx
 004EB5FC    push       4EB616
 004EB601    lea        eax,[ebp-10]
 004EB604    mov        edx,3
 004EB609    call       @LStrArrayClr
 004EB60E    ret
<004EB60F    jmp        @HandleFinally
<004EB614    jmp        004EB601
 004EB616    pop        edi
 004EB617    pop        esi
 004EB618    pop        ebx
 004EB619    mov        esp,ebp
 004EB61B    pop        ebp
 004EB61C    ret
*}
end;

//004EB630
procedure sub_004EB630;
begin
{*
 004EB630    push       ebp
 004EB631    mov        ebp,esp
 004EB633    xor        ecx,ecx
 004EB635    push       ecx
 004EB636    push       ecx
 004EB637    push       ecx
 004EB638    push       ecx
 004EB639    push       ebx
 004EB63A    push       esi
 004EB63B    push       edi
 004EB63C    mov        dword ptr [ebp-4],eax
 004EB63F    xor        eax,eax
 004EB641    push       ebp
 004EB642    push       4EB70F
 004EB647    push       dword ptr fs:[eax]
 004EB64A    mov        dword ptr fs:[eax],esp
 004EB64D    lea        eax,[ebp-8]
 004EB650    mov        edx,4EB728; 'ROLLBACK'
 004EB655    call       @LStrLAsg
 004EB65A    xor        eax,eax
 004EB65C    push       ebp
 004EB65D    push       4EB6AE
 004EB662    push       dword ptr fs:[eax]
 004EB665    mov        dword ptr fs:[eax],esp
 004EB668    mov        eax,dword ptr [ebp-4]
 004EB66B    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EB66E    push       eax
 004EB66F    mov        eax,dword ptr [eax]
 004EB671    call       dword ptr [eax+4C]
 004EB674    call       @CheckAutoResult
 004EB679    mov        eax,dword ptr [ebp-8]
 004EB67C    push       eax
 004EB67D    lea        edx,[ebp-0C]
 004EB680    mov        eax,dword ptr [ebp-4]
 004EB683    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB686    mov        ecx,dword ptr [eax]
 004EB688    call       dword ptr [ecx+0C]
 004EB68B    mov        ecx,dword ptr [ebp-0C]
 004EB68E    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB693    mov        eax,dword ptr [eax]
 004EB695    mov        dl,3
 004EB697    mov        ebx,dword ptr [eax]
 004EB699    call       dword ptr [ebx+3C]
 004EB69C    mov        eax,dword ptr [ebp-4]
 004EB69F    mov        edx,dword ptr [eax]
 004EB6A1    call       dword ptr [edx+7C]; TZAdoConnection.sub_004EB420
 004EB6A4    xor        eax,eax
 004EB6A6    pop        edx
 004EB6A7    pop        ecx
 004EB6A8    pop        ecx
 004EB6A9    mov        dword ptr fs:[eax],edx
>004EB6AC    jmp        004EB6F4
<004EB6AE    jmp        @HandleOnException
 004EB6B3    dd        1
 004EB6B7    dd        4087B0;Exception
 004EB6BB    dd        4EB6BF
 004EB6BF    mov        ebx,eax
 004EB6C1    mov        eax,dword ptr [ebp-8]
 004EB6C4    push       eax
 004EB6C5    push       0
 004EB6C7    mov        eax,dword ptr [ebx+4]; Exception.?f4:String
 004EB6CA    push       eax
 004EB6CB    lea        edx,[ebp-10]
 004EB6CE    mov        eax,dword ptr [ebp-4]
 004EB6D1    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB6D4    mov        ecx,dword ptr [eax]
 004EB6D6    call       dword ptr [ecx+0C]
 004EB6D9    mov        ecx,dword ptr [ebp-10]
 004EB6DC    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB6E1    mov        eax,dword ptr [eax]
 004EB6E3    mov        dl,3
 004EB6E5    mov        ebx,dword ptr [eax]
 004EB6E7    call       dword ptr [ebx+40]
 004EB6EA    call       @RaiseAgain
 004EB6EF    call       @DoneExcept
 004EB6F4    xor        eax,eax
 004EB6F6    pop        edx
 004EB6F7    pop        ecx
 004EB6F8    pop        ecx
 004EB6F9    mov        dword ptr fs:[eax],edx
 004EB6FC    push       4EB716
 004EB701    lea        eax,[ebp-10]
 004EB704    mov        edx,3
 004EB709    call       @LStrArrayClr
 004EB70E    ret
<004EB70F    jmp        @HandleFinally
<004EB714    jmp        004EB701
 004EB716    pop        edi
 004EB717    pop        esi
 004EB718    pop        ebx
 004EB719    mov        esp,ebp
 004EB71B    pop        ebp
 004EB71C    ret
*}
end;

//004EB734
procedure sub_004EB734;
begin
{*
 004EB734    push       ebp
 004EB735    mov        ebp,esp
 004EB737    add        esp,0FFFFFFE4
 004EB73A    push       ebx
 004EB73B    push       esi
 004EB73C    push       edi
 004EB73D    xor        edx,edx
 004EB73F    mov        dword ptr [ebp-1C],edx
 004EB742    mov        dword ptr [ebp-18],edx
 004EB745    mov        dword ptr [ebp-8],edx
 004EB748    mov        dword ptr [ebp-4],eax
 004EB74B    xor        eax,eax
 004EB74D    push       ebp
 004EB74E    push       4EB86B
 004EB753    push       dword ptr fs:[eax]
 004EB756    mov        dword ptr fs:[eax],esp
 004EB759    mov        eax,dword ptr [ebp-4]
 004EB75C    cmp        byte ptr [eax+2B],0; TZAdoConnection.?f2B:byte
>004EB760    jne        004EB848
 004EB766    mov        dl,1
 004EB768    mov        eax,dword ptr [ebp-4]
 004EB76B    mov        ecx,dword ptr [eax]
 004EB76D    call       dword ptr [ecx+18]; TZAdoConnection.sub_004EB280
 004EB770    lea        eax,[ebp-8]
 004EB773    push       eax
 004EB774    mov        eax,dword ptr [ebp-4]
 004EB777    mov        eax,dword ptr [eax+18]; TZAdoConnection.?f18:String
 004EB77A    mov        dword ptr [ebp-10],eax
 004EB77D    mov        byte ptr [ebp-0C],0B
 004EB781    lea        edx,[ebp-10]
 004EB784    xor        ecx,ecx
 004EB786    mov        eax,4EB884; 'CLOSE CONNECTION TO \"%s\"'
 004EB78B    call       Format
 004EB790    xor        eax,eax
 004EB792    push       ebp
 004EB793    push       4EB7FA
 004EB798    push       dword ptr fs:[eax]
 004EB79B    mov        dword ptr fs:[eax],esp
 004EB79E    lea        eax,[ebp-14]
 004EB7A1    push       eax
 004EB7A2    mov        eax,dword ptr [ebp-4]
 004EB7A5    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EB7A8    push       eax
 004EB7A9    mov        eax,dword ptr [eax]
 004EB7AB    call       dword ptr [eax+88]
 004EB7B1    call       @CheckAutoResult
 004EB7B6    cmp        dword ptr [ebp-14],1
>004EB7BA    jne        004EB7CD
 004EB7BC    mov        eax,dword ptr [ebp-4]
 004EB7BF    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EB7C2    push       eax
 004EB7C3    mov        eax,dword ptr [eax]
 004EB7C5    call       dword ptr [eax+3C]
 004EB7C8    call       @CheckAutoResult
 004EB7CD    mov        eax,dword ptr [ebp-8]
 004EB7D0    push       eax
 004EB7D1    lea        edx,[ebp-18]
 004EB7D4    mov        eax,dword ptr [ebp-4]
 004EB7D7    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB7DA    mov        ecx,dword ptr [eax]
 004EB7DC    call       dword ptr [ecx+0C]
 004EB7DF    mov        ecx,dword ptr [ebp-18]
 004EB7E2    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB7E7    mov        eax,dword ptr [eax]
 004EB7E9    mov        dl,3
 004EB7EB    mov        ebx,dword ptr [eax]
 004EB7ED    call       dword ptr [ebx+3C]
 004EB7F0    xor        eax,eax
 004EB7F2    pop        edx
 004EB7F3    pop        ecx
 004EB7F4    pop        ecx
 004EB7F5    mov        dword ptr fs:[eax],edx
>004EB7F8    jmp        004EB840
<004EB7FA    jmp        @HandleOnException
 004EB7FF    dd        1
 004EB803    dd        4087B0;Exception
 004EB807    dd        4EB80B
 004EB80B    mov        ebx,eax
 004EB80D    mov        eax,dword ptr [ebp-8]
 004EB810    push       eax
 004EB811    push       0
 004EB813    mov        eax,dword ptr [ebx+4]; Exception.?f4:String
 004EB816    push       eax
 004EB817    lea        edx,[ebp-1C]
 004EB81A    mov        eax,dword ptr [ebp-4]
 004EB81D    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB820    mov        ecx,dword ptr [eax]
 004EB822    call       dword ptr [ecx+0C]
 004EB825    mov        ecx,dword ptr [ebp-1C]
 004EB828    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB82D    mov        eax,dword ptr [eax]
 004EB82F    mov        dl,3
 004EB831    mov        ebx,dword ptr [eax]
 004EB833    call       dword ptr [ebx+40]
 004EB836    call       @RaiseAgain
 004EB83B    call       @DoneExcept
 004EB840    mov        eax,dword ptr [ebp-4]
 004EB843    call       004DE1A4
 004EB848    xor        eax,eax
 004EB84A    pop        edx
 004EB84B    pop        ecx
 004EB84C    pop        ecx
 004EB84D    mov        dword ptr fs:[eax],edx
 004EB850    push       4EB872
 004EB855    lea        eax,[ebp-1C]
 004EB858    mov        edx,2
 004EB85D    call       @LStrArrayClr
 004EB862    lea        eax,[ebp-8]
 004EB865    call       @LStrClr
 004EB86A    ret
<004EB86B    jmp        @HandleFinally
<004EB870    jmp        004EB855
 004EB872    pop        edi
 004EB873    pop        esi
 004EB874    pop        ebx
 004EB875    mov        esp,ebp
 004EB877    pop        ebp
 004EB878    ret
*}
end;

//004EB8A0
procedure sub_004EB8A0();
begin
{*
 004EB8A0    push       ebp
 004EB8A1    mov        ebp,esp
 004EB8A3    call       004DE208
 004EB8A8    pop        ebp
 004EB8A9    ret
*}
end;

//004EB8AC
//procedure sub_004EB8AC(?:?);
//begin
{*
 004EB8AC    push       ebp
 004EB8AD    mov        ebp,esp
 004EB8AF    xor        ecx,ecx
 004EB8B1    push       ecx
 004EB8B2    push       ecx
 004EB8B3    push       ecx
 004EB8B4    push       ecx
 004EB8B5    push       ecx
 004EB8B6    push       ecx
 004EB8B7    push       ecx
 004EB8B8    push       ebx
 004EB8B9    push       esi
 004EB8BA    push       edi
 004EB8BB    mov        ebx,edx
 004EB8BD    mov        dword ptr [ebp-4],eax
 004EB8C0    xor        eax,eax
 004EB8C2    push       ebp
 004EB8C3    push       4EB9C0
 004EB8C8    push       dword ptr fs:[eax]
 004EB8CB    mov        dword ptr fs:[eax],esp
 004EB8CE    mov        eax,dword ptr [ebp-4]
 004EB8D1    cmp        byte ptr [eax+2B],0; TZAdoConnection.?f2B:byte
>004EB8D5    jne        004EB995
 004EB8DB    lea        eax,[ebp-8]
 004EB8DE    push       eax
 004EB8DF    mov        dword ptr [ebp-10],ebx
 004EB8E2    mov        byte ptr [ebp-0C],0B
 004EB8E6    lea        edx,[ebp-10]
 004EB8E9    xor        ecx,ecx
 004EB8EB    mov        eax,4EB9D8; 'SET CATALOG %s'
 004EB8F0    call       Format
 004EB8F5    xor        eax,eax
 004EB8F7    push       ebp
 004EB8F8    push       4EB94F
 004EB8FD    push       dword ptr fs:[eax]
 004EB900    mov        dword ptr fs:[eax],esp
 004EB903    lea        eax,[ebp-14]
 004EB906    mov        edx,ebx
 004EB908    call       @WStrFromLStr
 004EB90D    mov        eax,dword ptr [ebp-14]
 004EB910    push       eax
 004EB911    mov        eax,dword ptr [ebp-4]
 004EB914    mov        eax,dword ptr [eax+34]; TZAdoConnection.?f34:Connection15
 004EB917    push       eax
 004EB918    mov        eax,dword ptr [eax]
 004EB91A    call       dword ptr [eax+5C]
 004EB91D    call       @CheckAutoResult
 004EB922    mov        eax,dword ptr [ebp-8]
 004EB925    push       eax
 004EB926    lea        edx,[ebp-18]
 004EB929    mov        eax,dword ptr [ebp-4]
 004EB92C    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB92F    mov        ecx,dword ptr [eax]
 004EB931    call       dword ptr [ecx+0C]
 004EB934    mov        ecx,dword ptr [ebp-18]
 004EB937    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB93C    mov        eax,dword ptr [eax]
 004EB93E    mov        dl,3
 004EB940    mov        ebx,dword ptr [eax]
 004EB942    call       dword ptr [ebx+3C]
 004EB945    xor        eax,eax
 004EB947    pop        edx
 004EB948    pop        ecx
 004EB949    pop        ecx
 004EB94A    mov        dword ptr fs:[eax],edx
>004EB94D    jmp        004EB995
<004EB94F    jmp        @HandleOnException
 004EB954    dd        1
 004EB958    dd        4087B0;Exception
 004EB95C    dd        4EB960
 004EB960    mov        ebx,eax
 004EB962    mov        eax,dword ptr [ebp-8]
 004EB965    push       eax
 004EB966    push       0
 004EB968    mov        eax,dword ptr [ebx+4]; Exception.?f4:String
 004EB96B    push       eax
 004EB96C    lea        edx,[ebp-1C]
 004EB96F    mov        eax,dword ptr [ebp-4]
 004EB972    mov        eax,dword ptr [eax+38]; TZAdoConnection.?f38:IZPlainDriver
 004EB975    mov        ecx,dword ptr [eax]
 004EB977    call       dword ptr [ecx+0C]
 004EB97A    mov        ecx,dword ptr [ebp-1C]
 004EB97D    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EB982    mov        eax,dword ptr [eax]
 004EB984    mov        dl,3
 004EB986    mov        ebx,dword ptr [eax]
 004EB988    call       dword ptr [ebx+40]
 004EB98B    call       @RaiseAgain
 004EB990    call       @DoneExcept
 004EB995    xor        eax,eax
 004EB997    pop        edx
 004EB998    pop        ecx
 004EB999    pop        ecx
 004EB99A    mov        dword ptr fs:[eax],edx
 004EB99D    push       4EB9C7
 004EB9A2    lea        eax,[ebp-1C]
 004EB9A5    mov        edx,2
 004EB9AA    call       @LStrArrayClr
 004EB9AF    lea        eax,[ebp-14]
 004EB9B2    call       @WStrClr
 004EB9B7    lea        eax,[ebp-8]
 004EB9BA    call       @LStrClr
 004EB9BF    ret
<004EB9C0    jmp        @HandleFinally
<004EB9C5    jmp        004EB9A2
 004EB9C7    pop        edi
 004EB9C8    pop        esi
 004EB9C9    pop        ebx
 004EB9CA    mov        esp,ebp
 004EB9CC    pop        ebp
 004EB9CD    ret
*}
//end;

//004EB9E8
//procedure sub_004EB9E8(?:?);
//begin
{*
 004EB9E8    push       ebp
 004EB9E9    mov        ebp,esp
 004EB9EB    push       0
 004EB9ED    push       ebx
 004EB9EE    push       esi
 004EB9EF    mov        esi,edx
 004EB9F1    mov        ebx,eax
 004EB9F3    xor        eax,eax
 004EB9F5    push       ebp
 004EB9F6    push       4EBA38
 004EB9FB    push       dword ptr fs:[eax]
 004EB9FE    mov        dword ptr fs:[eax],esp
 004EBA01    lea        eax,[ebp-4]
 004EBA04    call       @WStrClr
 004EBA09    push       eax
 004EBA0A    mov        eax,dword ptr [ebx+34]; TZAdoConnection.?f34:Connection15
 004EBA0D    push       eax
 004EBA0E    mov        eax,dword ptr [eax]
 004EBA10    call       dword ptr [eax+58]
 004EBA13    call       @CheckAutoResult
 004EBA18    mov        edx,dword ptr [ebp-4]
 004EBA1B    mov        eax,esi
 004EBA1D    call       @LStrFromWStr
 004EBA22    xor        eax,eax
 004EBA24    pop        edx
 004EBA25    pop        ecx
 004EBA26    pop        ecx
 004EBA27    mov        dword ptr fs:[eax],edx
 004EBA2A    push       4EBA3F
 004EBA2F    lea        eax,[ebp-4]
 004EBA32    call       @WStrClr
 004EBA37    ret
<004EBA38    jmp        @HandleFinally
<004EBA3D    jmp        004EBA2F
 004EBA3F    pop        esi
 004EBA40    pop        ebx
 004EBA41    pop        ecx
 004EBA42    pop        ebp
 004EBA43    ret
*}
//end;

//004EBA44
//function sub_004EBA44():?;
//begin
{*
 004EBA44    xor        eax,eax
 004EBA46    ret
*}
//end;

//004EBA48
procedure sub_004EBA48();
begin
{*
 004EBA48    ret
*}
end;

Initialization
//004EBAAC
{*
 004EBAAC    push       ebp
 004EBAAD    mov        ebp,esp
 004EBAAF    xor        eax,eax
 004EBAB1    push       ebp
 004EBAB2    push       4EBB05
 004EBAB7    push       dword ptr fs:[eax]
 004EBABA    mov        dword ptr fs:[eax],esp
 004EBABD    sub        dword ptr ds:[61DDB8],1
>004EBAC4    jae        004EBAF7
 004EBAC6    mov        dl,1
 004EBAC8    mov        eax,[004EA688]; TZAdoDriver
 004EBACD    call       TZAdoDriver.Create; TZAdoDriver.Create
 004EBAD2    mov        edx,eax
 004EBAD4    test       edx,edx
>004EBAD6    je         004EBADB
 004EBAD8    sub        edx,0FFFFFFEC
 004EBADB    mov        eax,61DDB4; gvar_0061DDB4:IInterface
 004EBAE0    call       @IntfCopy
 004EBAE5    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EBAEA    mov        eax,dword ptr [eax]
 004EBAEC    mov        edx,dword ptr ds:[61DDB4]; gvar_0061DDB4:IInterface
 004EBAF2    mov        ecx,dword ptr [eax]
 004EBAF4    call       dword ptr [ecx+20]
 004EBAF7    xor        eax,eax
 004EBAF9    pop        edx
 004EBAFA    pop        ecx
 004EBAFB    pop        ecx
 004EBAFC    mov        dword ptr fs:[eax],edx
 004EBAFF    push       4EBB0C
 004EBB04    ret
<004EBB05    jmp        @HandleFinally
<004EBB0A    jmp        004EBB04
 004EBB0C    pop        ebp
 004EBB0D    ret
*}
Finalization
//004EBA4C
{*
 004EBA4C    push       ebp
 004EBA4D    mov        ebp,esp
 004EBA4F    xor        eax,eax
 004EBA51    push       ebp
 004EBA52    push       4EBAA3
 004EBA57    push       dword ptr fs:[eax]
 004EBA5A    mov        dword ptr fs:[eax],esp
 004EBA5D    inc        dword ptr ds:[61DDB8]
>004EBA63    jne        004EBA95
 004EBA65    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EBA6A    cmp        dword ptr [eax],0
>004EBA6D    je         004EBA81
 004EBA6F    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004EBA74    mov        eax,dword ptr [eax]
 004EBA76    mov        edx,dword ptr ds:[61DDB4]; gvar_0061DDB4:IInterface
 004EBA7C    mov        ecx,dword ptr [eax]
 004EBA7E    call       dword ptr [ecx+24]
 004EBA81    mov        eax,61DDB4; gvar_0061DDB4:IInterface
 004EBA86    call       @IntfClear
 004EBA8B    mov        eax,61DDB4; gvar_0061DDB4:IInterface
 004EBA90    call       @IntfClear
 004EBA95    xor        eax,eax
 004EBA97    pop        edx
 004EBA98    pop        ecx
 004EBA99    pop        ecx
 004EBA9A    mov        dword ptr fs:[eax],edx
 004EBA9D    push       4EBAAA
 004EBAA2    ret
<004EBAA3    jmp        @HandleFinally
<004EBAA8    jmp        004EBAA2
 004EBAAA    pop        ebp
 004EBAAB    ret
*}
end.