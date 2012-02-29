{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDbcCachedResultSet;

interface

uses
  Classes, Windows, Graphics, _Unit134, ZDbcCache, ZDbcIntfs;

type
  TZAbstractCachedResultSet = class(TZAbstractResultSet)
  public
    f3C:byte;//f3C
    f40:TList;//f40
    f44:TList;//f44
    f48:TList;//f48
    f4C:Pointer;//f4C
    f50:dword;//f50
    f54:dword;//f54
    f58:TZRowAccessor;//f58
    f5C:TZRowAccessor;//f5C
    f60:TZRowAccessor;//f60
    f64:dword;//f64
    f68:IZCachedResolver;//f68
    f6C:IZCachedResolver;//f6C
    destructor Destroy; virtual;
    procedure sub_004D0EC4; virtual;
    procedure sub_004D1014; virtual;
    //procedure sub_004D1104(?:?); virtual;
    //procedure sub_004D1124(?:?); virtual;
    //procedure sub_004D1148(?:?; ?:?); virtual;
    //procedure sub_004D1170(?:?; ?:?); virtual;
    //procedure sub_004D1198(?:?); virtual;
    //procedure sub_004D11BC(?:?); virtual;
    //procedure sub_004D11E0(?:?); virtual;
    //procedure sub_004D1204(?:?); virtual;
    //procedure sub_004D1228(?:?); virtual;
    //procedure sub_004D125C(?:?); virtual;
    //procedure sub_004D1288(?:?); virtual;
    //procedure sub_004D12B8(?:?); virtual;
    //procedure sub_004D12E8(?:?; ?:?); virtual;
    //procedure sub_004D1310(?:?); virtual;
    //procedure sub_004D1340(?:?); virtual;
    //procedure sub_004D1370(?:?); virtual;
    //procedure sub_004D13A0(?:?; ?:?); virtual;
    //function sub_004D1724(?:?):?; virtual;
    //function sub_004D17A8:?; virtual;
    //function sub_004D17E0:?; virtual;
    //function sub_004D1818:?; virtual;
    //procedure sub_004D13C8(?:?); virtual;
    //procedure sub_004D13F0(?:?; ?:?); virtual;
    //procedure sub_004D141C(?:?; ?:?); virtual;
    //procedure sub_004D1448(?:?; ?:?); virtual;
    //procedure sub_004D1474(?:?; ?:?); virtual;
    //procedure sub_004D14A0(?:?; ?:?; ?:?); virtual;
    //procedure sub_004D14D0(?:?; ?:?); virtual;
    //procedure sub_004D14FC(?:?; ?:?; ?:?); virtual;
    //procedure sub_004D152C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004D1560(?:?; ?:?); virtual;
    //procedure sub_004D158C(?:?; ?:?); virtual;
    //procedure sub_004D15B8(?:?; ?:?); virtual;
    //procedure sub_004D15E4(?:?; ?:?); virtual;
    //procedure sub_004D1610(?:?; ?:?; ?:?); virtual;
    //procedure sub_004D1640(?:?; ?:?; ?:?); virtual;
    //procedure sub_004D1670(?:?; ?:?; ?:?); virtual;
    //procedure sub_004D16A0(?:?; ?:?); virtual;
    //procedure sub_004D16F8(?:?; ?:?); virtual;
    //procedure sub_004D16CC(?:?; ?:?); virtual;
    procedure sub_004D1850; virtual;
    procedure sub_004D19C4; virtual;
    procedure sub_004D1C24; virtual;
    procedure sub_004D1E30; virtual;
    procedure sub_004D1E40; virtual;
    procedure sub_004D1E5C; virtual;
    //procedure sub_004D1E90(?:?; ?:?; ?:?; ?:?); virtual;
    procedure sub_004D0ADC; virtual;
    procedure sub_004D0B4C; virtual;
    function sub_004D0C7C:Boolean; virtual;
    procedure sub_004D0CE4; virtual;
    procedure sub_004D0DA0; virtual;
    procedure sub_004D0E20; virtual;
    procedure sub_004D0C88; virtual;
  end;
  TZCachedResultSet = class(TZAbstractCachedResultSet)
  public
    f74:IZResultSet;//f74
    destructor Destroy; virtual;
    procedure sub_004D23DC; virtual;
    procedure sub_004D24F4; virtual;
    //procedure sub_004D2514(?:?); virtual;
    procedure sub_004D2530; virtual;
    procedure sub_004D2568; virtual;
    procedure sub_004D254C; virtual;
    procedure sub_004D2584; virtual;
    //procedure sub_004D25A0(?:?); virtual;
    //function sub_004D2000:?; virtual;
    procedure sub_004D23C4; virtual;
    //constructor Create(?:TZCachedResultSet; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//004D0884
//constructor sub_004D0884(?:?; _Dv__:Boolean; ?:?);
//begin
{*
 004D0884    push       ebp
 004D0885    mov        ebp,esp
 004D0887    push       ebx
 004D0888    push       esi
 004D0889    push       edi
 004D088A    test       dl,dl
>004D088C    je         004D0896
 004D088E    add        esp,0FFFFFFF0
 004D0891    call       @ClassCreate
 004D0896    mov        esi,ecx
 004D0898    mov        ebx,edx
 004D089A    mov        edi,eax
 004D089C    mov        eax,dword ptr [ebp+8]
 004D089F    call       @LStrAddRef
 004D08A4    xor        eax,eax
 004D08A6    push       ebp
 004D08A7    push       4D08ED
 004D08AC    push       dword ptr fs:[eax]
 004D08AF    mov        dword ptr fs:[eax],esp
 004D08B2    mov        eax,dword ptr [ebp+8]
 004D08B5    push       eax
 004D08B6    push       0
 004D08B8    xor        ecx,ecx
 004D08BA    xor        edx,edx
 004D08BC    mov        eax,edi
 004D08BE    call       004D3FC8
 004D08C3    mov        edx,dword ptr [edi+28]
 004D08C6    mov        eax,esi
 004D08C8    call       004D2FE8
 004D08CD    mov        byte ptr [edi+3C],0
 004D08D1    mov        eax,edi
 004D08D3    mov        edx,dword ptr [eax]
 004D08D5    call       dword ptr [edx]
 004D08D7    xor        eax,eax
 004D08D9    pop        edx
 004D08DA    pop        ecx
 004D08DB    pop        ecx
 004D08DC    mov        dword ptr fs:[eax],edx
 004D08DF    push       4D08F4
 004D08E4    lea        eax,[ebp+8]
 004D08E7    call       @LStrClr
 004D08EC    ret
<004D08ED    jmp        @HandleFinally
<004D08F2    jmp        004D08E4
 004D08F4    mov        eax,edi
 004D08F6    test       bl,bl
>004D08F8    je         004D0909
 004D08FA    call       @AfterConstruction
 004D08FF    pop        dword ptr fs:[0]
 004D0906    add        esp,0C
 004D0909    mov        eax,edi
 004D090B    pop        edi
 004D090C    pop        esi
 004D090D    pop        ebx
 004D090E    pop        ebp
 004D090F    ret        4
*}
//end;

//004D0914
destructor TZAbstractCachedResultSet.Destroy;
begin
{*
 004D0914    push       ebp
 004D0915    mov        ebp,esp
 004D0917    push       ebx
 004D0918    push       esi
 004D0919    call       @BeforeDestruction
 004D091E    mov        ebx,edx
 004D0920    mov        esi,eax
 004D0922    lea        eax,[esi+68]; TZAbstractCachedResultSet.?f68:IZCachedResolver
 004D0925    call       @IntfClear
 004D092A    lea        eax,[esi+6C]; TZAbstractCachedResultSet.?f6C:IZCachedResolver
 004D092D    call       @IntfClear
 004D0932    mov        edx,ebx
 004D0934    and        dl,0FC
 004D0937    mov        eax,esi
 004D0939    call       TZAbstractResultSet.Destroy
 004D093E    test       bl,bl
>004D0940    jle        004D0949
 004D0942    mov        eax,esi
 004D0944    call       @ClassDestroy
 004D0949    pop        esi
 004D094A    pop        ebx
 004D094B    pop        ebp
 004D094C    ret
*}
end;

//004D0950
//procedure sub_004D0950(?:TZVirtualResultSet);
//begin
{*
 004D0950    push       ebp
 004D0951    mov        ebp,esp
 004D0953    push       0
 004D0955    push       ebx
 004D0956    mov        ebx,eax
 004D0958    xor        eax,eax
 004D095A    push       ebp
 004D095B    push       4D09B1
 004D0960    push       dword ptr fs:[eax]
 004D0963    mov        dword ptr fs:[eax],esp
 004D0966    mov        eax,ebx
 004D0968    call       004D42AC
 004D096D    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0970    test       eax,eax
>004D0972    je         004D097A
 004D0974    cmp        dword ptr [eax+24],0; TZRowAccessor.?f24:Pointer
>004D0978    jne        004D099B
 004D097A    lea        edx,[ebp-4]
 004D097D    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 004D0982    call       LoadResString
 004D0987    mov        ecx,dword ptr [ebp-4]
 004D098A    mov        dl,1
 004D098C    mov        eax,[004C6D20]; EZSQLException
 004D0991    call       EZSQLException.Create; EZSQLException.Create
 004D0996    call       @RaiseExcept
 004D099B    xor        eax,eax
 004D099D    pop        edx
 004D099E    pop        ecx
 004D099F    pop        ecx
 004D09A0    mov        dword ptr fs:[eax],edx
 004D09A3    push       4D09B8
 004D09A8    lea        eax,[ebp-4]
 004D09AB    call       @LStrClr
 004D09B0    ret
<004D09B1    jmp        @HandleFinally
<004D09B6    jmp        004D09A8
 004D09B8    pop        ebx
 004D09B9    pop        ecx
 004D09BA    pop        ebp
 004D09BB    ret
*}
//end;

//004D09BC
//procedure sub_004D09BC(?:TZVirtualResultSet);
//begin
{*
 004D09BC    push       ebp
 004D09BD    mov        ebp,esp
 004D09BF    push       ebx
 004D09C0    mov        ebx,eax
 004D09C2    mov        eax,ebx
 004D09C4    call       004D0950
 004D09C9    cmp        byte ptr [ebx+25],1; TZVirtualResultSet.?f25:byte
>004D09CD    je         004D09D6
 004D09CF    mov        eax,ebx
 004D09D1    call       004D4258
 004D09D6    pop        ebx
 004D09D7    pop        ebp
 004D09D8    ret
*}
//end;

//004D09DC
//function sub_004D09DC(?:TZAbstractCachedResultSet):?;
//begin
{*
 004D09DC    mov        edx,dword ptr [eax+64]; TZAbstractCachedResultSet.?f64:dword
 004D09DF    add        dword ptr [eax+64],1; TZAbstractCachedResultSet.?f64:dword
>004D09E3    jno        004D09EA
 004D09E5    call       @IntOver
 004D09EA    mov        eax,edx
 004D09EC    ret
*}
//end;

//004D09F0
//function sub_004D09F0(?:TZVirtualResultSet; ?:dword; ?:dword):?;
//begin
{*
 004D09F0    push       ebp
 004D09F1    mov        ebp,esp
 004D09F3    add        esp,0FFFFFFF8
 004D09F6    push       ebx
 004D09F7    push       esi
 004D09F8    push       edi
 004D09F9    mov        dword ptr [ebp-4],ecx
 004D09FC    mov        edi,edx
 004D09FE    mov        dword ptr [ebp-8],0FFFFFFFF
 004D0A05    mov        esi,dword ptr [edi+8]
 004D0A08    sub        esi,1
>004D0A0B    jno        004D0A12
 004D0A0D    call       @IntOver
 004D0A12    test       esi,esi
>004D0A14    jl         004D0A32
 004D0A16    inc        esi
 004D0A17    xor        ebx,ebx
 004D0A19    mov        edx,ebx
 004D0A1B    mov        eax,edi
 004D0A1D    call       TList.Get
 004D0A22    mov        eax,dword ptr [eax]
 004D0A24    cmp        eax,dword ptr [ebp-4]
>004D0A27    jne        004D0A2E
 004D0A29    mov        dword ptr [ebp-8],ebx
>004D0A2C    jmp        004D0A32
 004D0A2E    inc        ebx
 004D0A2F    dec        esi
<004D0A30    jne        004D0A19
 004D0A32    mov        eax,dword ptr [ebp-8]
 004D0A35    pop        edi
 004D0A36    pop        esi
 004D0A37    pop        ebx
 004D0A38    pop        ecx
 004D0A39    pop        ecx
 004D0A3A    pop        ebp
 004D0A3B    ret
*}
//end;

//004D0A3C
//function sub_004D0A3C(?:TZVirtualResultSet; ?:Pointer):?;
//begin
{*
 004D0A3C    push       ebp
 004D0A3D    mov        ebp,esp
 004D0A3F    push       ecx
 004D0A40    push       ebx
 004D0A41    push       esi
 004D0A42    mov        esi,edx
 004D0A44    mov        ebx,eax
 004D0A46    mov        ecx,dword ptr [esi]
 004D0A48    mov        edx,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0A4B    mov        eax,ebx
 004D0A4D    call       004D09F0
 004D0A52    test       eax,eax
>004D0A54    jge        004D0A85
 004D0A56    lea        edx,[ebp-4]
 004D0A59    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0A5C    call       004C8998
 004D0A61    mov        ecx,dword ptr [ebp-4]
 004D0A64    mov        edx,esi
 004D0A66    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0A69    call       004C8A00
 004D0A6E    mov        edx,dword ptr [ebp-4]
 004D0A71    mov        eax,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0A74    call       TList.Add
 004D0A79    mov        edx,esi
 004D0A7B    mov        eax,dword ptr [ebx+48]; TZVirtualResultSet.?f48:TList
 004D0A7E    call       TList.Add
>004D0A83    jmp        004D0A8A
 004D0A85    xor        eax,eax
 004D0A87    mov        dword ptr [ebp-4],eax
 004D0A8A    mov        eax,dword ptr [ebp-4]
 004D0A8D    pop        esi
 004D0A8E    pop        ebx
 004D0A8F    pop        ecx
 004D0A90    pop        ebp
 004D0A91    ret
*}
//end;

//004D0A94
//procedure sub_004D0A94(?:TZVirtualResultSet);
//begin
{*
 004D0A94    push       ebp
 004D0A95    mov        ebp,esp
 004D0A97    push       ebx
 004D0A98    push       esi
 004D0A99    mov        ebx,eax
 004D0A9B    mov        edx,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0A9E    mov        edx,dword ptr [edx+24]; TZRowAccessor.?f24:Pointer
 004D0AA1    mov        eax,dword ptr [ebx+4C]; TZVirtualResultSet.?f4C:Pointer
 004D0AA4    cmp        edx,eax
>004D0AA6    jne        004D0AD7
 004D0AA8    cmp        eax,dword ptr [ebx+50]; TZVirtualResultSet.?f50:dword
>004D0AAB    je         004D0AD7
 004D0AAD    mov        eax,dword ptr [ebx+50]; TZVirtualResultSet.?f50:dword
 004D0AB0    mov        dword ptr [ebx+4C],eax; TZVirtualResultSet.?f4C:Pointer
 004D0AB3    mov        esi,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0AB6    mov        dword ptr [esi+24],eax; TZRowAccessor.?f24:Pointer
 004D0AB9    mov        edx,dword ptr [ebx+10]; TZVirtualResultSet.?f10:dword
 004D0ABC    sub        edx,1
>004D0ABF    jno        004D0AC6
 004D0AC1    call       @IntOver
 004D0AC6    mov        eax,dword ptr [ebx+40]; TZVirtualResultSet.?f40:TList
 004D0AC9    call       TList.Get
 004D0ACE    mov        edx,eax
 004D0AD0    mov        eax,esi
 004D0AD2    call       004C9554
 004D0AD7    pop        esi
 004D0AD8    pop        ebx
 004D0AD9    pop        ebp
 004D0ADA    ret
*}
//end;

//004D0ADC
procedure sub_004D0ADC;
begin
{*
 004D0ADC    push       ebp
 004D0ADD    mov        ebp,esp
 004D0ADF    push       0
 004D0AE1    push       ebx
 004D0AE2    xor        ecx,ecx
 004D0AE4    push       ebp
 004D0AE5    push       4D0B40
 004D0AEA    push       dword ptr fs:[ecx]
 004D0AED    mov        dword ptr fs:[ecx],esp
 004D0AF0    cmp        dword ptr [eax+68],0; TZCachedResultSet.?f68:IZCachedResolver
>004D0AF4    jne        004D0B17
 004D0AF6    lea        edx,[ebp-4]
 004D0AF9    mov        eax,[0061B9C8]; ^#122.sResString34:TResStringRec
 004D0AFE    call       LoadResString
 004D0B03    mov        ecx,dword ptr [ebp-4]
 004D0B06    mov        dl,1
 004D0B08    mov        eax,[004C6D20]; EZSQLException
 004D0B0D    call       EZSQLException.Create; EZSQLException.Create
 004D0B12    call       @RaiseExcept
 004D0B17    mov        ecx,eax
 004D0B19    test       ecx,ecx
>004D0B1B    je         004D0B20
 004D0B1D    sub        ecx,0FFFFFF90
 004D0B20    mov        eax,dword ptr [eax+68]; TZCachedResultSet.?f68:IZCachedResolver
 004D0B23    xchg       ecx,edx
 004D0B25    mov        ebx,dword ptr [eax]
 004D0B27    call       dword ptr [ebx+0C]
 004D0B2A    xor        eax,eax
 004D0B2C    pop        edx
 004D0B2D    pop        ecx
 004D0B2E    pop        ecx
 004D0B2F    mov        dword ptr fs:[eax],edx
 004D0B32    push       4D0B47
 004D0B37    lea        eax,[ebp-4]
 004D0B3A    call       @LStrClr
 004D0B3F    ret
<004D0B40    jmp        @HandleFinally
<004D0B45    jmp        004D0B37
 004D0B47    pop        ebx
 004D0B48    pop        ecx
 004D0B49    pop        ebp
 004D0B4A    ret
*}
end;

//004D0B4C
procedure sub_004D0B4C;
begin
{*
 004D0B4C    push       ebp
 004D0B4D    mov        ebp,esp
 004D0B4F    push       0
 004D0B51    push       ebx
 004D0B52    xor        ebx,ebx
 004D0B54    push       ebp
 004D0B55    push       4D0BB6
 004D0B5A    push       dword ptr fs:[ebx]
 004D0B5D    mov        dword ptr fs:[ebx],esp
 004D0B60    cmp        dword ptr [eax+68],0; TZCachedResultSet.?f68:IZCachedResolver
>004D0B64    jne        004D0B87
 004D0B66    lea        edx,[ebp-4]
 004D0B69    mov        eax,[0061B9C8]; ^#122.sResString34:TResStringRec
 004D0B6E    call       LoadResString
 004D0B73    mov        ecx,dword ptr [ebp-4]
 004D0B76    mov        dl,1
 004D0B78    mov        eax,[004C6D20]; EZSQLException
 004D0B7D    call       EZSQLException.Create; EZSQLException.Create
 004D0B82    call       @RaiseExcept
 004D0B87    push       edx
 004D0B88    push       ecx
 004D0B89    mov        edx,eax
 004D0B8B    test       edx,edx
>004D0B8D    je         004D0B92
 004D0B8F    sub        edx,0FFFFFF90
 004D0B92    mov        ecx,dword ptr [ecx+24]
 004D0B95    mov        cl,byte ptr [ecx+4]
 004D0B98    mov        eax,dword ptr [eax+68]; TZCachedResultSet.?f68:IZCachedResolver
 004D0B9B    mov        ebx,dword ptr [eax]
 004D0B9D    call       dword ptr [ebx+10]
 004D0BA0    xor        eax,eax
 004D0BA2    pop        edx
 004D0BA3    pop        ecx
 004D0BA4    pop        ecx
 004D0BA5    mov        dword ptr fs:[eax],edx
 004D0BA8    push       4D0BBD
 004D0BAD    lea        eax,[ebp-4]
 004D0BB0    call       @LStrClr
 004D0BB5    ret
<004D0BB6    jmp        @HandleFinally
<004D0BBB    jmp        004D0BAD
 004D0BBD    pop        ebx
 004D0BBE    pop        ecx
 004D0BBF    pop        ebp
 004D0BC0    ret
*}
end;

//004D0BDC
//procedure sub_004D0BDC(?:TZCachedResultSet; ?:TZGenericCachedResolver);
//begin
{*
 004D0BDC    push       ebp
 004D0BDD    mov        ebp,esp
 004D0BDF    push       ecx
 004D0BE0    push       ebx
 004D0BE1    mov        dword ptr [ebp-4],edx
 004D0BE4    mov        ebx,eax
 004D0BE6    mov        eax,dword ptr [ebp-4]
 004D0BE9    call       @IntfAddRef
 004D0BEE    xor        eax,eax
 004D0BF0    push       ebp
 004D0BF1    push       4D0C2E
 004D0BF6    push       dword ptr fs:[eax]
 004D0BF9    mov        dword ptr fs:[eax],esp
 004D0BFC    lea        eax,[ebx+68]; TZCachedResultSet.?f68:IZCachedResolver
 004D0BFF    mov        edx,dword ptr [ebp-4]
 004D0C02    call       @IntfCopy
 004D0C07    cmp        dword ptr [ebx+6C],0; TZCachedResultSet.?f6C:IZCachedResolver
>004D0C0B    jne        004D0C18
 004D0C0D    lea        eax,[ebx+6C]; TZCachedResultSet.?f6C:IZCachedResolver
 004D0C10    mov        edx,dword ptr [ebp-4]
 004D0C13    call       @IntfCopy
 004D0C18    xor        eax,eax
 004D0C1A    pop        edx
 004D0C1B    pop        ecx
 004D0C1C    pop        ecx
 004D0C1D    mov        dword ptr fs:[eax],edx
 004D0C20    push       4D0C35
 004D0C25    lea        eax,[ebp-4]
 004D0C28    call       @IntfClear
 004D0C2D    ret
<004D0C2E    jmp        @HandleFinally
<004D0C33    jmp        004D0C25
 004D0C35    pop        ebx
 004D0C36    pop        ecx
 004D0C37    pop        ebp
 004D0C38    ret
*}
//end;

//004D0C7C
function sub_004D0C7C:Boolean;
begin
{*
 004D0C7C    mov        eax,dword ptr [eax+44]; TZVirtualResultSet.?f44:TList
 004D0C7F    cmp        dword ptr [eax+8],0; TList.FCount:Integer
 004D0C83    setg       al
 004D0C86    ret
*}
end;

//004D0C88
procedure sub_004D0C88;
begin
{*
 004D0C88    push       ebp
 004D0C89    mov        ebp,esp
 004D0C8B    push       ebx
 004D0C8C    push       esi
 004D0C8D    push       edi
 004D0C8E    mov        ebx,eax
 004D0C90    mov        eax,ebx
 004D0C92    call       004D42AC
 004D0C97    mov        eax,dword ptr [ebx+10]; TZVirtualResultSet.?f10:dword
 004D0C9A    cmp        eax,1
>004D0C9D    jl         004D0CD6
 004D0C9F    cmp        eax,dword ptr [ebx+14]; TZVirtualResultSet.?f14:Integer
>004D0CA2    jg         004D0CD6
 004D0CA4    cmp        dword ptr [ebx+4C],0; TZVirtualResultSet.?f4C:Pointer
>004D0CA8    je         004D0CD6
 004D0CAA    mov        eax,dword ptr [ebx+4C]; TZVirtualResultSet.?f4C:Pointer
 004D0CAD    mov        ecx,dword ptr [eax]
 004D0CAF    mov        edx,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0CB2    mov        eax,ebx
 004D0CB4    call       004D09F0
 004D0CB9    mov        esi,eax
 004D0CBB    test       esi,esi
>004D0CBD    jl         004D0CDE
 004D0CBF    mov        edx,esi
 004D0CC1    mov        eax,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0CC4    call       TList.Get
 004D0CC9    mov        edi,eax
 004D0CCB    mov        dword ptr [ebx+4C],edi; TZVirtualResultSet.?f4C:Pointer
 004D0CCE    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0CD1    mov        dword ptr [eax+24],edi; TZRowAccessor.?f24:Pointer
>004D0CD4    jmp        004D0CDE
 004D0CD6    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0CD9    xor        edx,edx
 004D0CDB    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 004D0CDE    pop        edi
 004D0CDF    pop        esi
 004D0CE0    pop        ebx
 004D0CE1    pop        ebp
 004D0CE2    ret
*}
end;

//004D0CE4
procedure sub_004D0CE4;
begin
{*
 004D0CE4    push       ebp
 004D0CE5    mov        ebp,esp
 004D0CE7    push       ebx
 004D0CE8    push       esi
 004D0CE9    push       edi
 004D0CEA    mov        ebx,eax
 004D0CEC    mov        eax,ebx
 004D0CEE    call       004D42AC
 004D0CF3    mov        eax,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0CF6    cmp        dword ptr [eax+8],0; TList.FCount:Integer
>004D0CFA    jle        004D0D98
>004D0D00    jmp        004D0D8B
 004D0D05    xor        edx,edx
 004D0D07    mov        eax,esi
 004D0D09    call       TList.Get
 004D0D0E    mov        edx,dword ptr [ebx+60]; TZVirtualResultSet.?f60:TZRowAccessor
 004D0D11    mov        dword ptr [edx+24],eax; TZRowAccessor.?f24:Pointer
 004D0D14    xor        edx,edx
 004D0D16    mov        eax,dword ptr [ebx+48]; TZVirtualResultSet.?f48:TList
 004D0D19    call       TList.Get
 004D0D1E    mov        esi,eax
 004D0D20    mov        edi,dword ptr [ebx+5C]; TZVirtualResultSet.?f5C:TZRowAccessor
 004D0D23    mov        dword ptr [edi+24],esi; TZRowAccessor.?f24:Pointer
 004D0D26    cmp        byte ptr [esi+4],2
>004D0D2A    jne        004D0D38
 004D0D2C    mov        edx,edi
 004D0D2E    mov        eax,ebx
 004D0D30    mov        ecx,dword ptr [eax]
 004D0D32    call       dword ptr [ecx+1E4]; TZVirtualResultSet.sub_004DB714
 004D0D38    mov        ecx,dword ptr [ebx+5C]; TZVirtualResultSet.?f5C:TZRowAccessor
 004D0D3B    mov        edx,dword ptr [ebx+60]; TZVirtualResultSet.?f60:TZRowAccessor
 004D0D3E    mov        eax,ebx
 004D0D40    mov        esi,dword ptr [eax]
 004D0D42    call       dword ptr [esi+1E8]; TZVirtualResultSet.sub_004DB718
 004D0D48    mov        eax,dword ptr [ebx+5C]; TZVirtualResultSet.?f5C:TZRowAccessor
 004D0D4B    mov        eax,dword ptr [eax+24]; TZRowAccessor.?f24:Pointer
 004D0D4E    cmp        byte ptr [eax+4],3
>004D0D52    je         004D0D6F
 004D0D54    mov        byte ptr [eax+4],0
 004D0D58    mov        eax,dword ptr [ebx+4C]; TZVirtualResultSet.?f4C:Pointer
 004D0D5B    test       eax,eax
>004D0D5D    je         004D0D6F
 004D0D5F    mov        edx,dword ptr [eax]
 004D0D61    mov        ecx,dword ptr [ebx+5C]; TZVirtualResultSet.?f5C:TZRowAccessor
 004D0D64    mov        ecx,dword ptr [ecx+24]; TZRowAccessor.?f24:Pointer
 004D0D67    cmp        edx,dword ptr [ecx]
>004D0D69    jne        004D0D6F
 004D0D6B    mov        byte ptr [eax+4],0
 004D0D6F    mov        eax,dword ptr [ebx+60]; TZVirtualResultSet.?f60:TZRowAccessor
 004D0D72    call       004C952C
 004D0D77    xor        edx,edx
 004D0D79    mov        eax,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0D7C    call       TList.Delete
 004D0D81    xor        edx,edx
 004D0D83    mov        eax,dword ptr [ebx+48]; TZVirtualResultSet.?f48:TList
 004D0D86    call       TList.Delete
 004D0D8B    mov        esi,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0D8E    cmp        dword ptr [esi+8],0; TList.FCount:Integer
<004D0D92    jg         004D0D05
 004D0D98    pop        edi
 004D0D99    pop        esi
 004D0D9A    pop        ebx
 004D0D9B    pop        ebp
 004D0D9C    ret
*}
end;

//004D0DA0
procedure sub_004D0DA0;
begin
{*
 004D0DA0    push       ebp
 004D0DA1    mov        ebp,esp
 004D0DA3    push       ebx
 004D0DA4    push       esi
 004D0DA5    mov        ebx,eax
 004D0DA7    mov        eax,ebx
 004D0DA9    call       004D42AC
>004D0DAE    jmp        004D0E13
 004D0DB0    xor        edx,edx
 004D0DB2    mov        eax,esi
 004D0DB4    call       TList.Get
 004D0DB9    mov        esi,eax
 004D0DBB    xor        edx,edx
 004D0DBD    mov        eax,dword ptr [ebx+48]; TZVirtualResultSet.?f48:TList
 004D0DC0    call       TList.Get
 004D0DC5    cmp        byte ptr [eax+4],2
>004D0DC9    jne        004D0DCF
 004D0DCB    mov        byte ptr [esi+4],3
 004D0DCF    mov        ecx,eax
 004D0DD1    mov        edx,esi
 004D0DD3    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0DD6    call       004C8A00
 004D0DDB    mov        eax,dword ptr [ebx+4C]; TZVirtualResultSet.?f4C:Pointer
 004D0DDE    cmp        eax,dword ptr [ebx+50]; TZVirtualResultSet.?f50:dword
>004D0DE1    jne        004D0DF5
 004D0DE3    mov        edx,dword ptr [eax]
 004D0DE5    cmp        edx,dword ptr [esi]
>004D0DE7    jne        004D0DF5
 004D0DE9    mov        ecx,eax
 004D0DEB    mov        edx,esi
 004D0DED    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0DF0    call       004C8A00
 004D0DF5    mov        edx,esi
 004D0DF7    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0DFA    call       004C89BC
 004D0DFF    xor        edx,edx
 004D0E01    mov        eax,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0E04    call       TList.Delete
 004D0E09    xor        edx,edx
 004D0E0B    mov        eax,dword ptr [ebx+48]; TZVirtualResultSet.?f48:TList
 004D0E0E    call       TList.Delete
 004D0E13    mov        esi,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0E16    cmp        dword ptr [esi+8],0; TList.FCount:Integer
<004D0E1A    jg         004D0DB0
 004D0E1C    pop        esi
 004D0E1D    pop        ebx
 004D0E1E    pop        ebp
 004D0E1F    ret
*}
end;

//004D0E20
procedure sub_004D0E20;
begin
{*
 004D0E20    push       ebp
 004D0E21    mov        ebp,esp
 004D0E23    push       ebx
 004D0E24    push       esi
 004D0E25    push       edi
 004D0E26    mov        ebx,eax
 004D0E28    mov        eax,ebx
 004D0E2A    call       004D42AC
 004D0E2F    mov        eax,dword ptr [ebx+10]; TZVirtualResultSet.?f10:dword
 004D0E32    cmp        eax,1
>004D0E35    jl         004D0EBE
 004D0E3B    cmp        eax,dword ptr [ebx+14]; TZVirtualResultSet.?f14:Integer
>004D0E3E    jg         004D0EBE
 004D0E40    mov        eax,dword ptr [ebx+4C]; TZVirtualResultSet.?f4C:Pointer
 004D0E43    mov        ecx,dword ptr [eax]
 004D0E45    mov        edx,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0E48    mov        eax,ebx
 004D0E4A    call       004D09F0
 004D0E4F    mov        esi,eax
 004D0E51    test       esi,esi
>004D0E53    jl         004D0EBE
 004D0E55    mov        edx,esi
 004D0E57    mov        eax,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0E5A    call       TList.Get
 004D0E5F    mov        edi,eax
 004D0E61    mov        edx,dword ptr [ebx+10]; TZVirtualResultSet.?f10:dword
 004D0E64    sub        edx,1
>004D0E67    jno        004D0E6E
 004D0E69    call       @IntOver
 004D0E6E    mov        eax,dword ptr [ebx+40]; TZVirtualResultSet.?f40:TList
 004D0E71    call       TList.Get
 004D0E76    cmp        byte ptr [eax+4],2
>004D0E7A    jne        004D0E80
 004D0E7C    mov        byte ptr [edi+4],3
 004D0E80    mov        ecx,eax
 004D0E82    mov        edx,edi
 004D0E84    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0E87    call       004C8A00
 004D0E8C    mov        eax,dword ptr [ebx+4C]; TZVirtualResultSet.?f4C:Pointer
 004D0E8F    cmp        eax,dword ptr [ebx+50]; TZVirtualResultSet.?f50:dword
>004D0E92    jne        004D0EA0
 004D0E94    mov        ecx,eax
 004D0E96    mov        edx,edi
 004D0E98    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0E9B    call       004C8A00
 004D0EA0    mov        edx,edi
 004D0EA2    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D0EA5    call       004C89BC
 004D0EAA    mov        edx,esi
 004D0EAC    mov        eax,dword ptr [ebx+44]; TZVirtualResultSet.?f44:TList
 004D0EAF    call       TList.Delete
 004D0EB4    mov        edx,esi
 004D0EB6    mov        eax,dword ptr [ebx+48]; TZVirtualResultSet.?f48:TList
 004D0EB9    call       TList.Delete
 004D0EBE    pop        edi
 004D0EBF    pop        esi
 004D0EC0    pop        ebx
 004D0EC1    pop        ebp
 004D0EC2    ret
*}
end;

//004D0EC4
procedure sub_004D0EC4;
begin
{*
 004D0EC4    push       ebp
 004D0EC5    mov        ebp,esp
 004D0EC7    push       0
 004D0EC9    push       0
 004D0ECB    push       0
 004D0ECD    push       ebx
 004D0ECE    mov        ebx,eax
 004D0ED0    xor        eax,eax
 004D0ED2    push       ebp
 004D0ED3    push       4D1007
 004D0ED8    push       dword ptr fs:[eax]
 004D0EDB    mov        dword ptr fs:[eax],esp
 004D0EDE    cmp        byte ptr [ebx+1C],0; TZAbstractCachedResultSet.?f1C:byte
>004D0EE2    jne        004D0F05
 004D0EE4    lea        edx,[ebp-4]
 004D0EE7    mov        eax,[0061B89C]; ^#122.sResString35:TResStringRec
 004D0EEC    call       LoadResString
 004D0EF1    mov        ecx,dword ptr [ebp-4]
 004D0EF4    mov        dl,1
 004D0EF6    mov        eax,[004C6D20]; EZSQLException
 004D0EFB    call       EZSQLException.Create; EZSQLException.Create
 004D0F00    call       @RaiseExcept
 004D0F05    mov        dl,1
 004D0F07    mov        eax,[0041C260]; TList
 004D0F0C    call       TObject.Create; TList.Create
 004D0F11    mov        dword ptr [ebx+40],eax; TZAbstractCachedResultSet.?f40:TList
 004D0F14    mov        dl,1
 004D0F16    mov        eax,[0041C260]; TList
 004D0F1B    call       TObject.Create; TList.Create
 004D0F20    mov        dword ptr [ebx+44],eax; TZAbstractCachedResultSet.?f44:TList
 004D0F23    mov        dl,1
 004D0F25    mov        eax,[0041C260]; TList
 004D0F2A    call       TObject.Create; TList.Create
 004D0F2F    mov        dword ptr [ebx+48],eax; TZAbstractCachedResultSet.?f48:TList
 004D0F32    mov        ecx,dword ptr [ebx+28]; TZAbstractCachedResultSet.?f28:dword
 004D0F35    mov        dl,1
 004D0F37    mov        eax,[004C8284]; TZRowAccessor
 004D0F3C    call       TZRowAccessor.Create; TZRowAccessor.Create
 004D0F41    mov        dword ptr [ebx+58],eax; TZAbstractCachedResultSet.?f58:TZRowAccessor
 004D0F44    mov        ecx,dword ptr [ebx+28]; TZAbstractCachedResultSet.?f28:dword
 004D0F47    mov        dl,1
 004D0F49    mov        eax,[004C8284]; TZRowAccessor
 004D0F4E    call       TZRowAccessor.Create; TZRowAccessor.Create
 004D0F53    mov        dword ptr [ebx+60],eax; TZAbstractCachedResultSet.?f60:TZRowAccessor
 004D0F56    mov        ecx,dword ptr [ebx+28]; TZAbstractCachedResultSet.?f28:dword
 004D0F59    mov        dl,1
 004D0F5B    mov        eax,[004C8284]; TZRowAccessor
 004D0F60    call       TZRowAccessor.Create; TZRowAccessor.Create
 004D0F65    mov        dword ptr [ebx+5C],eax; TZAbstractCachedResultSet.?f5C:TZRowAccessor
 004D0F68    lea        edx,[ebx+50]; TZAbstractCachedResultSet.?f50:dword
 004D0F6B    mov        eax,dword ptr [ebx+58]; TZAbstractCachedResultSet.?f58:TZRowAccessor
 004D0F6E    call       004C8998
 004D0F73    lea        edx,[ebx+54]; TZAbstractCachedResultSet.?f54:dword
 004D0F76    mov        eax,dword ptr [ebx+58]; TZAbstractCachedResultSet.?f58:TZRowAccessor
 004D0F79    call       004C8998
 004D0F7E    xor        eax,eax
 004D0F80    mov        dword ptr [ebx+4C],eax; TZAbstractCachedResultSet.?f4C:Pointer
 004D0F83    xor        eax,eax
 004D0F85    mov        dword ptr [ebx+64],eax; TZAbstractCachedResultSet.?f64:dword
 004D0F88    cmp        dword ptr [ebx+68],0; TZAbstractCachedResultSet.?f68:IZCachedResolver
>004D0F8C    jne        004D0FDA
 004D0F8E    mov        eax,ebx
 004D0F90    mov        edx,dword ptr [eax]
 004D0F92    call       dword ptr [edx+110]; TZAbstractCachedResultSet.sub_004D5118
 004D0F98    cmp        al,1
>004D0F9A    jne        004D0FDA
 004D0F9C    lea        edx,[ebp-8]
 004D0F9F    mov        eax,ebx
 004D0FA1    mov        ecx,dword ptr [eax]
 004D0FA3    call       dword ptr [ecx+0C4]; TZAbstractCachedResultSet.sub_004D4E80
 004D0FA9    mov        eax,dword ptr [ebp-8]
 004D0FAC    push       eax
 004D0FAD    lea        edx,[ebp-0C]
 004D0FB0    mov        eax,ebx
 004D0FB2    mov        ecx,dword ptr [eax]
 004D0FB4    call       dword ptr [ecx+1E0]; TZAbstractCachedResultSet.sub_004D5990
 004D0FBA    mov        ecx,dword ptr [ebp-0C]
 004D0FBD    mov        dl,1
 004D0FBF    mov        eax,[004CDA64]; TZGenericCachedResolver
 004D0FC4    call       TZGenericCachedResolver.Create; TZGenericCachedResolver.Create
 004D0FC9    mov        edx,eax
 004D0FCB    test       edx,edx
>004D0FCD    je         004D0FD2
 004D0FCF    sub        edx,0FFFFFFD4
 004D0FD2    lea        eax,[ebx+68]; TZAbstractCachedResultSet.?f68:IZCachedResolver
 004D0FD5    call       @IntfCopy
 004D0FDA    mov        eax,ebx
 004D0FDC    call       004D4580
 004D0FE1    xor        eax,eax
 004D0FE3    pop        edx
 004D0FE4    pop        ecx
 004D0FE5    pop        ecx
 004D0FE6    mov        dword ptr fs:[eax],edx
 004D0FE9    push       4D100E
 004D0FEE    lea        eax,[ebp-0C]
 004D0FF1    call       @IntfClear
 004D0FF6    lea        eax,[ebp-8]
 004D0FF9    call       @IntfClear
 004D0FFE    lea        eax,[ebp-4]
 004D1001    call       @LStrClr
 004D1006    ret
<004D1007    jmp        @HandleFinally
<004D100C    jmp        004D0FEE
 004D100E    pop        ebx
 004D100F    mov        esp,ebp
 004D1011    pop        ebp
 004D1012    ret
*}
end;

//004D1014
procedure sub_004D1014;
begin
{*
 004D1014    push       ebp
 004D1015    mov        ebp,esp
 004D1017    push       ebx
 004D1018    push       esi
 004D1019    push       edi
 004D101A    mov        ebx,eax
 004D101C    mov        eax,ebx
 004D101E    call       004D4588
 004D1023    cmp        dword ptr [ebx+58],0; TZAbstractCachedResultSet.?f58:TZRowAccessor
>004D1027    je         004D10FE
 004D102D    mov        eax,dword ptr [ebx+40]; TZAbstractCachedResultSet.?f40:TList
 004D1030    mov        esi,dword ptr [eax+8]; TList.FCount:Integer
 004D1033    sub        esi,1
>004D1036    jno        004D103D
 004D1038    call       @IntOver
 004D103D    test       esi,esi
>004D103F    jl         004D105C
 004D1041    inc        esi
 004D1042    xor        edi,edi
 004D1044    mov        edx,edi
 004D1046    mov        eax,dword ptr [ebx+40]; TZAbstractCachedResultSet.?f40:TList
 004D1049    call       TList.Get
 004D104E    mov        edx,eax
 004D1050    mov        eax,dword ptr [ebx+58]; TZAbstractCachedResultSet.?f58:TZRowAccessor
 004D1053    call       004C89BC
 004D1058    inc        edi
 004D1059    dec        esi
<004D105A    jne        004D1044
 004D105C    mov        eax,dword ptr [ebx+44]; TZAbstractCachedResultSet.?f44:TList
 004D105F    mov        esi,dword ptr [eax+8]; TList.FCount:Integer
 004D1062    sub        esi,1
>004D1065    jno        004D106C
 004D1067    call       @IntOver
 004D106C    test       esi,esi
>004D106E    jl         004D108B
 004D1070    inc        esi
 004D1071    xor        edi,edi
 004D1073    mov        edx,edi
 004D1075    mov        eax,dword ptr [ebx+44]; TZAbstractCachedResultSet.?f44:TList
 004D1078    call       TList.Get
 004D107D    mov        edx,eax
 004D107F    mov        eax,dword ptr [ebx+58]; TZAbstractCachedResultSet.?f58:TZRowAccessor
 004D1082    call       004C89BC
 004D1087    inc        edi
 004D1088    dec        esi
<004D1089    jne        004D1073
 004D108B    mov        edx,dword ptr [ebx+50]; TZAbstractCachedResultSet.?f50:dword
 004D108E    mov        eax,dword ptr [ebx+58]; TZAbstractCachedResultSet.?f58:TZRowAccessor
 004D1091    call       004C89BC
 004D1096    xor        eax,eax
 004D1098    mov        dword ptr [ebx+50],eax; TZAbstractCachedResultSet.?f50:dword
 004D109B    mov        edx,dword ptr [ebx+54]; TZAbstractCachedResultSet.?f54:dword
 004D109E    mov        eax,dword ptr [ebx+58]; TZAbstractCachedResultSet.?f58:TZRowAccessor
 004D10A1    call       004C89BC
 004D10A6    xor        eax,eax
 004D10A8    mov        dword ptr [ebx+54],eax; TZAbstractCachedResultSet.?f54:dword
 004D10AB    xor        eax,eax
 004D10AD    mov        dword ptr [ebx+4C],eax; TZAbstractCachedResultSet.?f4C:Pointer
 004D10B0    mov        eax,dword ptr [ebx+40]; TZAbstractCachedResultSet.?f40:TList
 004D10B3    call       TObject.Free
 004D10B8    xor        eax,eax
 004D10BA    mov        dword ptr [ebx+40],eax; TZAbstractCachedResultSet.?f40:TList
 004D10BD    mov        eax,dword ptr [ebx+44]; TZAbstractCachedResultSet.?f44:TList
 004D10C0    call       TObject.Free
 004D10C5    xor        eax,eax
 004D10C7    mov        dword ptr [ebx+44],eax; TZAbstractCachedResultSet.?f44:TList
 004D10CA    mov        eax,dword ptr [ebx+48]; TZAbstractCachedResultSet.?f48:TList
 004D10CD    call       TObject.Free
 004D10D2    xor        eax,eax
 004D10D4    mov        dword ptr [ebx+48],eax; TZAbstractCachedResultSet.?f48:TList
 004D10D7    mov        eax,dword ptr [ebx+58]; TZAbstractCachedResultSet.?f58:TZRowAccessor
 004D10DA    call       TObject.Free
 004D10DF    xor        eax,eax
 004D10E1    mov        dword ptr [ebx+58],eax; TZAbstractCachedResultSet.?f58:TZRowAccessor
 004D10E4    mov        eax,dword ptr [ebx+60]; TZAbstractCachedResultSet.?f60:TZRowAccessor
 004D10E7    call       TObject.Free
 004D10EC    xor        eax,eax
 004D10EE    mov        dword ptr [ebx+60],eax; TZAbstractCachedResultSet.?f60:TZRowAccessor
 004D10F1    mov        eax,dword ptr [ebx+5C]; TZAbstractCachedResultSet.?f5C:TZRowAccessor
 004D10F4    call       TObject.Free
 004D10F9    xor        eax,eax
 004D10FB    mov        dword ptr [ebx+5C],eax; TZAbstractCachedResultSet.?f5C:TZRowAccessor
 004D10FE    pop        edi
 004D10FF    pop        esi
 004D1100    pop        ebx
 004D1101    pop        ebp
 004D1102    ret
*}
end;

//004D1104
//procedure sub_004D1104(?:?);
//begin
{*
 004D1104    push       ebp
 004D1105    mov        ebp,esp
 004D1107    push       ebx
 004D1108    push       esi
 004D1109    mov        esi,edx
 004D110B    mov        ebx,eax
 004D110D    mov        eax,ebx
 004D110F    call       004D0950
 004D1114    mov        edx,esi
 004D1116    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1119    call       004C9638
 004D111E    pop        esi
 004D111F    pop        ebx
 004D1120    pop        ebp
 004D1121    ret
*}
//end;

//004D1124
//procedure sub_004D1124(?:?);
//begin
{*
 004D1124    push       ebp
 004D1125    mov        ebp,esp
 004D1127    push       ebx
 004D1128    push       esi
 004D1129    mov        esi,edx
 004D112B    mov        ebx,eax
 004D112D    mov        eax,ebx
 004D112F    call       004D0950
 004D1134    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D1137    mov        edx,esi
 004D1139    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D113C    call       004C970C
 004D1141    pop        esi
 004D1142    pop        ebx
 004D1143    pop        ebp
 004D1144    ret
*}
//end;

//004D1148
//procedure sub_004D1148(?:?; ?:?);
//begin
{*
 004D1148    push       ebp
 004D1149    mov        ebp,esp
 004D114B    push       ebx
 004D114C    push       esi
 004D114D    push       edi
 004D114E    mov        edi,ecx
 004D1150    mov        esi,edx
 004D1152    mov        ebx,eax
 004D1154    mov        eax,ebx
 004D1156    call       004D0950
 004D115B    push       edi
 004D115C    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D115F    mov        edx,esi
 004D1161    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1164    call       004C9818
 004D1169    pop        edi
 004D116A    pop        esi
 004D116B    pop        ebx
 004D116C    pop        ebp
 004D116D    ret
*}
//end;

//004D1170
//procedure sub_004D1170(?:?; ?:?);
//begin
{*
 004D1170    push       ebp
 004D1171    mov        ebp,esp
 004D1173    push       ebx
 004D1174    push       esi
 004D1175    push       edi
 004D1176    mov        edi,ecx
 004D1178    mov        esi,edx
 004D117A    mov        ebx,eax
 004D117C    mov        eax,ebx
 004D117E    call       004D0950
 004D1183    push       edi
 004D1184    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D1187    mov        edx,esi
 004D1189    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D118C    call       004C9BDC
 004D1191    pop        edi
 004D1192    pop        esi
 004D1193    pop        ebx
 004D1194    pop        ebp
 004D1195    ret
*}
//end;

//004D1198
//procedure sub_004D1198(?:?);
//begin
{*
 004D1198    push       ebp
 004D1199    mov        ebp,esp
 004D119B    push       ebx
 004D119C    push       esi
 004D119D    mov        esi,edx
 004D119F    mov        ebx,eax
 004D11A1    mov        eax,ebx
 004D11A3    call       004D0950
 004D11A8    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D11AB    mov        edx,esi
 004D11AD    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D11B0    call       004C9D40
 004D11B5    pop        esi
 004D11B6    pop        ebx
 004D11B7    pop        ebp
 004D11B8    ret
*}
//end;

//004D11BC
//procedure sub_004D11BC(?:?);
//begin
{*
 004D11BC    push       ebp
 004D11BD    mov        ebp,esp
 004D11BF    push       ebx
 004D11C0    push       esi
 004D11C1    mov        esi,edx
 004D11C3    mov        ebx,eax
 004D11C5    mov        eax,ebx
 004D11C7    call       004D0950
 004D11CC    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D11CF    mov        edx,esi
 004D11D1    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D11D4    call       004C9FB8
 004D11D9    pop        esi
 004D11DA    pop        ebx
 004D11DB    pop        ebp
 004D11DC    ret
*}
//end;

//004D11E0
//procedure sub_004D11E0(?:?);
//begin
{*
 004D11E0    push       ebp
 004D11E1    mov        ebp,esp
 004D11E3    push       ebx
 004D11E4    push       esi
 004D11E5    mov        esi,edx
 004D11E7    mov        ebx,eax
 004D11E9    mov        eax,ebx
 004D11EB    call       004D0950
 004D11F0    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D11F3    mov        edx,esi
 004D11F5    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D11F8    call       004CA254
 004D11FD    pop        esi
 004D11FE    pop        ebx
 004D11FF    pop        ebp
 004D1200    ret
*}
//end;

//004D1204
//procedure sub_004D1204(?:?);
//begin
{*
 004D1204    push       ebp
 004D1205    mov        ebp,esp
 004D1207    push       ebx
 004D1208    push       esi
 004D1209    mov        esi,edx
 004D120B    mov        ebx,eax
 004D120D    mov        eax,ebx
 004D120F    call       004D0950
 004D1214    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D1217    mov        edx,esi
 004D1219    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D121C    call       004CA4EC
 004D1221    pop        esi
 004D1222    pop        ebx
 004D1223    pop        ebp
 004D1224    ret
*}
//end;

//004D1228
//procedure sub_004D1228(?:?);
//begin
{*
 004D1228    push       ebp
 004D1229    mov        ebp,esp
 004D122B    add        esp,0FFFFFFF8
 004D122E    push       ebx
 004D122F    push       esi
 004D1230    mov        esi,edx
 004D1232    mov        ebx,eax
 004D1234    mov        eax,ebx
 004D1236    call       004D0950
 004D123B    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D123E    mov        edx,esi
 004D1240    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1243    call       004CA704
 004D1248    mov        dword ptr [ebp-8],eax
 004D124B    mov        dword ptr [ebp-4],edx
 004D124E    mov        eax,dword ptr [ebp-8]
 004D1251    mov        edx,dword ptr [ebp-4]
 004D1254    pop        esi
 004D1255    pop        ebx
 004D1256    pop        ecx
 004D1257    pop        ecx
 004D1258    pop        ebp
 004D1259    ret
*}
//end;

//004D125C
//procedure sub_004D125C(?:?);
//begin
{*
 004D125C    push       ebp
 004D125D    mov        ebp,esp
 004D125F    push       ecx
 004D1260    push       ebx
 004D1261    push       esi
 004D1262    mov        esi,edx
 004D1264    mov        ebx,eax
 004D1266    mov        eax,ebx
 004D1268    call       004D0950
 004D126D    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D1270    mov        edx,esi
 004D1272    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1275    call       004CA924
 004D127A    fstp       dword ptr [ebp-4]
 004D127D    wait
 004D127E    fld        dword ptr [ebp-4]
 004D1281    pop        esi
 004D1282    pop        ebx
 004D1283    pop        ecx
 004D1284    pop        ebp
 004D1285    ret
*}
//end;

//004D1288
//procedure sub_004D1288(?:?);
//begin
{*
 004D1288    push       ebp
 004D1289    mov        ebp,esp
 004D128B    add        esp,0FFFFFFF8
 004D128E    push       ebx
 004D128F    push       esi
 004D1290    mov        esi,edx
 004D1292    mov        ebx,eax
 004D1294    mov        eax,ebx
 004D1296    call       004D0950
 004D129B    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D129E    mov        edx,esi
 004D12A0    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D12A3    call       004CAB20
 004D12A8    fstp       qword ptr [ebp-8]
 004D12AB    wait
 004D12AC    fld        qword ptr [ebp-8]
 004D12AF    pop        esi
 004D12B0    pop        ebx
 004D12B1    pop        ecx
 004D12B2    pop        ecx
 004D12B3    pop        ebp
 004D12B4    ret
*}
//end;

//004D12B8
//procedure sub_004D12B8(?:?);
//begin
{*
 004D12B8    push       ebp
 004D12B9    mov        ebp,esp
 004D12BB    add        esp,0FFFFFFF0
 004D12BE    push       ebx
 004D12BF    push       esi
 004D12C0    mov        esi,edx
 004D12C2    mov        ebx,eax
 004D12C4    mov        eax,ebx
 004D12C6    call       004D0950
 004D12CB    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D12CE    mov        edx,esi
 004D12D0    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D12D3    call       004CAD30
 004D12D8    fstp       tbyte ptr [ebp-10]
 004D12DB    wait
 004D12DC    fld        tbyte ptr [ebp-10]
 004D12DF    pop        esi
 004D12E0    pop        ebx
 004D12E1    mov        esp,ebp
 004D12E3    pop        ebp
 004D12E4    ret
*}
//end;

//004D12E8
//procedure sub_004D12E8(?:?; ?:?);
//begin
{*
 004D12E8    push       ebp
 004D12E9    mov        ebp,esp
 004D12EB    push       ebx
 004D12EC    push       esi
 004D12ED    push       edi
 004D12EE    mov        edi,ecx
 004D12F0    mov        esi,edx
 004D12F2    mov        ebx,eax
 004D12F4    mov        eax,ebx
 004D12F6    call       004D0950
 004D12FB    push       edi
 004D12FC    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D12FF    mov        edx,esi
 004D1301    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1304    call       004CAF54
 004D1309    pop        edi
 004D130A    pop        esi
 004D130B    pop        ebx
 004D130C    pop        ebp
 004D130D    ret
*}
//end;

//004D1310
//procedure sub_004D1310(?:?);
//begin
{*
 004D1310    push       ebp
 004D1311    mov        ebp,esp
 004D1313    add        esp,0FFFFFFF8
 004D1316    push       ebx
 004D1317    push       esi
 004D1318    mov        esi,edx
 004D131A    mov        ebx,eax
 004D131C    mov        eax,ebx
 004D131E    call       004D0950
 004D1323    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D1326    mov        edx,esi
 004D1328    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D132B    call       004CB110
 004D1330    fstp       qword ptr [ebp-8]
 004D1333    wait
 004D1334    fld        qword ptr [ebp-8]
 004D1337    pop        esi
 004D1338    pop        ebx
 004D1339    pop        ecx
 004D133A    pop        ecx
 004D133B    pop        ebp
 004D133C    ret
*}
//end;

//004D1340
//procedure sub_004D1340(?:?);
//begin
{*
 004D1340    push       ebp
 004D1341    mov        ebp,esp
 004D1343    add        esp,0FFFFFFF8
 004D1346    push       ebx
 004D1347    push       esi
 004D1348    mov        esi,edx
 004D134A    mov        ebx,eax
 004D134C    mov        eax,ebx
 004D134E    call       004D0950
 004D1353    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D1356    mov        edx,esi
 004D1358    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D135B    call       004CB24C
 004D1360    fstp       qword ptr [ebp-8]
 004D1363    wait
 004D1364    fld        qword ptr [ebp-8]
 004D1367    pop        esi
 004D1368    pop        ebx
 004D1369    pop        ecx
 004D136A    pop        ecx
 004D136B    pop        ebp
 004D136C    ret
*}
//end;

//004D1370
//procedure sub_004D1370(?:?);
//begin
{*
 004D1370    push       ebp
 004D1371    mov        ebp,esp
 004D1373    add        esp,0FFFFFFF8
 004D1376    push       ebx
 004D1377    push       esi
 004D1378    mov        esi,edx
 004D137A    mov        ebx,eax
 004D137C    mov        eax,ebx
 004D137E    call       004D0950
 004D1383    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D1386    mov        edx,esi
 004D1388    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D138B    call       004CB380
 004D1390    fstp       qword ptr [ebp-8]
 004D1393    wait
 004D1394    fld        qword ptr [ebp-8]
 004D1397    pop        esi
 004D1398    pop        ebx
 004D1399    pop        ecx
 004D139A    pop        ecx
 004D139B    pop        ebp
 004D139C    ret
*}
//end;

//004D13A0
//procedure sub_004D13A0(?:?; ?:?);
//begin
{*
 004D13A0    push       ebp
 004D13A1    mov        ebp,esp
 004D13A3    push       ebx
 004D13A4    push       esi
 004D13A5    push       edi
 004D13A6    mov        edi,ecx
 004D13A8    mov        esi,edx
 004D13AA    mov        ebx,eax
 004D13AC    mov        eax,ebx
 004D13AE    call       004D0950
 004D13B3    push       edi
 004D13B4    lea        ecx,[ebx+34]; TZVirtualResultSet.?f34:byte
 004D13B7    mov        edx,esi
 004D13B9    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D13BC    call       004CB5A4
 004D13C1    pop        edi
 004D13C2    pop        esi
 004D13C3    pop        ebx
 004D13C4    pop        ebp
 004D13C5    ret
*}
//end;

//004D13C8
//procedure sub_004D13C8(?:?);
//begin
{*
 004D13C8    push       ebp
 004D13C9    mov        ebp,esp
 004D13CB    push       ebx
 004D13CC    push       esi
 004D13CD    mov        esi,edx
 004D13CF    mov        ebx,eax
 004D13D1    mov        eax,ebx
 004D13D3    call       004D09BC
 004D13D8    mov        eax,ebx
 004D13DA    call       004D0A94
 004D13DF    mov        edx,esi
 004D13E1    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D13E4    call       004CB9E4
 004D13E9    pop        esi
 004D13EA    pop        ebx
 004D13EB    pop        ebp
 004D13EC    ret
*}
//end;

//004D13F0
//procedure sub_004D13F0(?:?; ?:?);
//begin
{*
 004D13F0    push       ebp
 004D13F1    mov        ebp,esp
 004D13F3    push       ebx
 004D13F4    push       esi
 004D13F5    push       edi
 004D13F6    mov        ebx,ecx
 004D13F8    mov        esi,edx
 004D13FA    mov        edi,eax
 004D13FC    mov        eax,edi
 004D13FE    call       004D09BC
 004D1403    mov        eax,edi
 004D1405    call       004D0A94
 004D140A    mov        ecx,ebx
 004D140C    mov        edx,esi
 004D140E    mov        eax,dword ptr [edi+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1411    call       004CBA88
 004D1416    pop        edi
 004D1417    pop        esi
 004D1418    pop        ebx
 004D1419    pop        ebp
 004D141A    ret
*}
//end;

//004D141C
//procedure sub_004D141C(?:?; ?:?);
//begin
{*
 004D141C    push       ebp
 004D141D    mov        ebp,esp
 004D141F    push       ebx
 004D1420    push       esi
 004D1421    push       edi
 004D1422    mov        ebx,ecx
 004D1424    mov        esi,edx
 004D1426    mov        edi,eax
 004D1428    mov        eax,edi
 004D142A    call       004D09BC
 004D142F    mov        eax,edi
 004D1431    call       004D0A94
 004D1436    mov        ecx,ebx
 004D1438    mov        edx,esi
 004D143A    mov        eax,dword ptr [edi+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D143D    call       004CBC70
 004D1442    pop        edi
 004D1443    pop        esi
 004D1444    pop        ebx
 004D1445    pop        ebp
 004D1446    ret
*}
//end;

//004D1448
//procedure sub_004D1448(?:?; ?:?);
//begin
{*
 004D1448    push       ebp
 004D1449    mov        ebp,esp
 004D144B    push       ebx
 004D144C    push       esi
 004D144D    push       edi
 004D144E    mov        edi,ecx
 004D1450    mov        esi,edx
 004D1452    mov        ebx,eax
 004D1454    mov        eax,ebx
 004D1456    call       004D09BC
 004D145B    mov        eax,ebx
 004D145D    call       004D0A94
 004D1462    mov        ecx,edi
 004D1464    mov        edx,esi
 004D1466    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1469    call       004CBE2C
 004D146E    pop        edi
 004D146F    pop        esi
 004D1470    pop        ebx
 004D1471    pop        ebp
 004D1472    ret
*}
//end;

//004D1474
//procedure sub_004D1474(?:?; ?:?);
//begin
{*
 004D1474    push       ebp
 004D1475    mov        ebp,esp
 004D1477    push       ebx
 004D1478    push       esi
 004D1479    push       edi
 004D147A    mov        edi,ecx
 004D147C    mov        esi,edx
 004D147E    mov        ebx,eax
 004D1480    mov        eax,ebx
 004D1482    call       004D09BC
 004D1487    mov        eax,ebx
 004D1489    call       004D0A94
 004D148E    mov        ecx,edi
 004D1490    mov        edx,esi
 004D1492    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1495    call       004CBFF8
 004D149A    pop        edi
 004D149B    pop        esi
 004D149C    pop        ebx
 004D149D    pop        ebp
 004D149E    ret
*}
//end;

//004D14A0
//procedure sub_004D14A0(?:?; ?:?; ?:?);
//begin
{*
 004D14A0    push       ebp
 004D14A1    mov        ebp,esp
 004D14A3    push       ebx
 004D14A4    push       esi
 004D14A5    mov        esi,edx
 004D14A7    mov        ebx,eax
 004D14A9    mov        eax,ebx
 004D14AB    call       004D09BC
 004D14B0    mov        eax,ebx
 004D14B2    call       004D0A94
 004D14B7    push       dword ptr [ebp+0C]
 004D14BA    push       dword ptr [ebp+8]
 004D14BD    mov        edx,esi
 004D14BF    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D14C2    call       004CC1D4
 004D14C7    pop        esi
 004D14C8    pop        ebx
 004D14C9    pop        ebp
 004D14CA    ret        8
*}
//end;

//004D14D0
//procedure sub_004D14D0(?:?; ?:?);
//begin
{*
 004D14D0    push       ebp
 004D14D1    mov        ebp,esp
 004D14D3    push       ebx
 004D14D4    push       esi
 004D14D5    mov        esi,edx
 004D14D7    mov        ebx,eax
 004D14D9    mov        eax,ebx
 004D14DB    call       004D09BC
 004D14E0    mov        eax,ebx
 004D14E2    call       004D0A94
 004D14E7    push       dword ptr [ebp+8]
 004D14EA    mov        edx,esi
 004D14EC    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D14EF    call       004CC3E4
 004D14F4    pop        esi
 004D14F5    pop        ebx
 004D14F6    pop        ebp
 004D14F7    ret        4
*}
//end;

//004D14FC
//procedure sub_004D14FC(?:?; ?:?; ?:?);
//begin
{*
 004D14FC    push       ebp
 004D14FD    mov        ebp,esp
 004D14FF    push       ebx
 004D1500    push       esi
 004D1501    mov        esi,edx
 004D1503    mov        ebx,eax
 004D1505    mov        eax,ebx
 004D1507    call       004D09BC
 004D150C    mov        eax,ebx
 004D150E    call       004D0A94
 004D1513    push       dword ptr [ebp+0C]
 004D1516    push       dword ptr [ebp+8]
 004D1519    mov        edx,esi
 004D151B    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D151E    call       004CC604
 004D1523    pop        esi
 004D1524    pop        ebx
 004D1525    pop        ebp
 004D1526    ret        8
*}
//end;

//004D152C
//procedure sub_004D152C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004D152C    push       ebp
 004D152D    mov        ebp,esp
 004D152F    push       ebx
 004D1530    push       esi
 004D1531    mov        esi,edx
 004D1533    mov        ebx,eax
 004D1535    mov        eax,ebx
 004D1537    call       004D09BC
 004D153C    mov        eax,ebx
 004D153E    call       004D0A94
 004D1543    mov        ax,word ptr [ebp+10]
 004D1547    push       eax
 004D1548    push       dword ptr [ebp+0C]
 004D154B    push       dword ptr [ebp+8]
 004D154E    mov        edx,esi
 004D1550    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1553    call       004CC82C
 004D1558    pop        esi
 004D1559    pop        ebx
 004D155A    pop        ebp
 004D155B    ret        0C
*}
//end;

//004D1560
//procedure sub_004D1560(?:?; ?:?);
//begin
{*
 004D1560    push       ebp
 004D1561    mov        ebp,esp
 004D1563    push       ebx
 004D1564    push       esi
 004D1565    push       edi
 004D1566    mov        edi,ecx
 004D1568    mov        esi,edx
 004D156A    mov        ebx,eax
 004D156C    mov        eax,ebx
 004D156E    call       004D09BC
 004D1573    mov        eax,ebx
 004D1575    call       004D0A94
 004D157A    mov        ecx,edi
 004D157C    mov        edx,esi
 004D157E    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1581    call       004CCA60
 004D1586    pop        edi
 004D1587    pop        esi
 004D1588    pop        ebx
 004D1589    pop        ebp
 004D158A    ret
*}
//end;

//004D158C
//procedure sub_004D158C(?:?; ?:?);
//begin
{*
 004D158C    push       ebp
 004D158D    mov        ebp,esp
 004D158F    push       ebx
 004D1590    push       esi
 004D1591    push       edi
 004D1592    mov        edi,ecx
 004D1594    mov        esi,edx
 004D1596    mov        ebx,eax
 004D1598    mov        eax,ebx
 004D159A    call       004D09BC
 004D159F    mov        eax,ebx
 004D15A1    call       004D0A94
 004D15A6    mov        ecx,edi
 004D15A8    mov        edx,esi
 004D15AA    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D15AD    call       004CCBB0
 004D15B2    pop        edi
 004D15B3    pop        esi
 004D15B4    pop        ebx
 004D15B5    pop        ebp
 004D15B6    ret
*}
//end;

//004D15B8
//procedure sub_004D15B8(?:?; ?:?);
//begin
{*
 004D15B8    push       ebp
 004D15B9    mov        ebp,esp
 004D15BB    push       ebx
 004D15BC    push       esi
 004D15BD    push       edi
 004D15BE    mov        edi,ecx
 004D15C0    mov        esi,edx
 004D15C2    mov        ebx,eax
 004D15C4    mov        eax,ebx
 004D15C6    call       004D09BC
 004D15CB    mov        eax,ebx
 004D15CD    call       004D0A94
 004D15D2    mov        ecx,edi
 004D15D4    mov        edx,esi
 004D15D6    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D15D9    call       004CCF68
 004D15DE    pop        edi
 004D15DF    pop        esi
 004D15E0    pop        ebx
 004D15E1    pop        ebp
 004D15E2    ret
*}
//end;

//004D15E4
//procedure sub_004D15E4(?:?; ?:?);
//begin
{*
 004D15E4    push       ebp
 004D15E5    mov        ebp,esp
 004D15E7    push       ebx
 004D15E8    push       esi
 004D15E9    push       edi
 004D15EA    mov        edi,ecx
 004D15EC    mov        esi,edx
 004D15EE    mov        ebx,eax
 004D15F0    mov        eax,ebx
 004D15F2    call       004D09BC
 004D15F7    mov        eax,ebx
 004D15F9    call       004D0A94
 004D15FE    mov        ecx,edi
 004D1600    mov        edx,esi
 004D1602    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1605    call       004CD104
 004D160A    pop        edi
 004D160B    pop        esi
 004D160C    pop        ebx
 004D160D    pop        ebp
 004D160E    ret
*}
//end;

//004D1610
//procedure sub_004D1610(?:?; ?:?; ?:?);
//begin
{*
 004D1610    push       ebp
 004D1611    mov        ebp,esp
 004D1613    push       ebx
 004D1614    push       esi
 004D1615    mov        esi,edx
 004D1617    mov        ebx,eax
 004D1619    mov        eax,ebx
 004D161B    call       004D09BC
 004D1620    mov        eax,ebx
 004D1622    call       004D0A94
 004D1627    push       dword ptr [ebp+0C]
 004D162A    push       dword ptr [ebp+8]
 004D162D    mov        edx,esi
 004D162F    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1632    call       004CD300
 004D1637    pop        esi
 004D1638    pop        ebx
 004D1639    pop        ebp
 004D163A    ret        8
*}
//end;

//004D1640
//procedure sub_004D1640(?:?; ?:?; ?:?);
//begin
{*
 004D1640    push       ebp
 004D1641    mov        ebp,esp
 004D1643    push       ebx
 004D1644    push       esi
 004D1645    mov        esi,edx
 004D1647    mov        ebx,eax
 004D1649    mov        eax,ebx
 004D164B    call       004D09BC
 004D1650    mov        eax,ebx
 004D1652    call       004D0A94
 004D1657    push       dword ptr [ebp+0C]
 004D165A    push       dword ptr [ebp+8]
 004D165D    mov        edx,esi
 004D165F    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1662    call       004CD450
 004D1667    pop        esi
 004D1668    pop        ebx
 004D1669    pop        ebp
 004D166A    ret        8
*}
//end;

//004D1670
//procedure sub_004D1670(?:?; ?:?; ?:?);
//begin
{*
 004D1670    push       ebp
 004D1671    mov        ebp,esp
 004D1673    push       ebx
 004D1674    push       esi
 004D1675    mov        esi,edx
 004D1677    mov        ebx,eax
 004D1679    mov        eax,ebx
 004D167B    call       004D09BC
 004D1680    mov        eax,ebx
 004D1682    call       004D0A94
 004D1687    push       dword ptr [ebp+0C]
 004D168A    push       dword ptr [ebp+8]
 004D168D    mov        edx,esi
 004D168F    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1692    call       004CD584
 004D1697    pop        esi
 004D1698    pop        ebx
 004D1699    pop        ebp
 004D169A    ret        8
*}
//end;

//004D16A0
//procedure sub_004D16A0(?:?; ?:?);
//begin
{*
 004D16A0    push       ebp
 004D16A1    mov        ebp,esp
 004D16A3    push       ebx
 004D16A4    push       esi
 004D16A5    push       edi
 004D16A6    mov        edi,ecx
 004D16A8    mov        esi,edx
 004D16AA    mov        ebx,eax
 004D16AC    mov        eax,ebx
 004D16AE    call       004D09BC
 004D16B3    mov        eax,ebx
 004D16B5    call       004D0A94
 004D16BA    mov        ecx,edi
 004D16BC    mov        edx,esi
 004D16BE    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D16C1    call       004CD6D4
 004D16C6    pop        edi
 004D16C7    pop        esi
 004D16C8    pop        ebx
 004D16C9    pop        ebp
 004D16CA    ret
*}
//end;

//004D16CC
//procedure sub_004D16CC(?:?; ?:?);
//begin
{*
 004D16CC    push       ebp
 004D16CD    mov        ebp,esp
 004D16CF    push       ebx
 004D16D0    push       esi
 004D16D1    push       edi
 004D16D2    mov        edi,ecx
 004D16D4    mov        esi,edx
 004D16D6    mov        ebx,eax
 004D16D8    mov        eax,ebx
 004D16DA    call       004D09BC
 004D16DF    mov        eax,ebx
 004D16E1    call       004D0A94
 004D16E6    mov        ecx,edi
 004D16E8    mov        edx,esi
 004D16EA    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D16ED    call       004CD744
 004D16F2    pop        edi
 004D16F3    pop        esi
 004D16F4    pop        ebx
 004D16F5    pop        ebp
 004D16F6    ret
*}
//end;

//004D16F8
//procedure sub_004D16F8(?:?; ?:?);
//begin
{*
 004D16F8    push       ebp
 004D16F9    mov        ebp,esp
 004D16FB    push       ebx
 004D16FC    push       esi
 004D16FD    push       edi
 004D16FE    mov        edi,ecx
 004D1700    mov        esi,edx
 004D1702    mov        ebx,eax
 004D1704    mov        eax,ebx
 004D1706    call       004D09BC
 004D170B    mov        eax,ebx
 004D170D    call       004D0A94
 004D1712    mov        ecx,edi
 004D1714    mov        edx,esi
 004D1716    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1719    call       004CD7B4
 004D171E    pop        edi
 004D171F    pop        esi
 004D1720    pop        ebx
 004D1721    pop        ebp
 004D1722    ret
*}
//end;

//004D1724
//function sub_004D1724(?:?):?;
//begin
{*
 004D1724    push       ebp
 004D1725    mov        ebp,esp
 004D1727    push       ebx
 004D1728    push       esi
 004D1729    push       edi
 004D172A    mov        esi,edx
 004D172C    mov        edi,eax
 004D172E    mov        eax,edi
 004D1730    call       004D42AC
 004D1735    cmp        byte ptr [edi+24],0; TZAbstractCachedResultSet.?f24:byte
>004D1739    jne        004D1747
 004D173B    cmp        esi,dword ptr [edi+10]; TZAbstractCachedResultSet.?f10:dword
>004D173E    jge        004D1747
 004D1740    mov        eax,edi
 004D1742    call       004D4204
 004D1747    test       esi,esi
>004D1749    jl         004D179C
 004D174B    mov        eax,dword ptr [edi+14]; TZAbstractCachedResultSet.?f14:Integer
 004D174E    add        eax,1
>004D1751    jno        004D1758
 004D1753    call       @IntOver
 004D1758    cmp        esi,eax
>004D175A    jg         004D179C
 004D175C    mov        dword ptr [edi+10],esi; TZAbstractCachedResultSet.?f10:dword
 004D175F    cmp        esi,1
>004D1762    jl         004D178D
 004D1764    cmp        esi,dword ptr [edi+14]; TZAbstractCachedResultSet.?f14:Integer
>004D1767    jg         004D178D
 004D1769    mov        bl,1
 004D176B    mov        edx,esi
 004D176D    sub        edx,1
>004D1770    jno        004D1777
 004D1772    call       @IntOver
 004D1777    mov        eax,dword ptr [edi+40]; TZAbstractCachedResultSet.?f40:TList
 004D177A    call       TList.Get
 004D177F    mov        dword ptr [edi+4C],eax; TZAbstractCachedResultSet.?f4C:Pointer
 004D1782    mov        eax,dword ptr [edi+58]; TZAbstractCachedResultSet.?f58:TZRowAccessor
 004D1785    mov        edx,dword ptr [edi+4C]; TZAbstractCachedResultSet.?f4C:Pointer
 004D1788    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
>004D178B    jmp        004D179E
 004D178D    xor        ebx,ebx
 004D178F    xor        eax,eax
 004D1791    mov        dword ptr [edi+4C],eax; TZAbstractCachedResultSet.?f4C:Pointer
 004D1794    mov        edx,dword ptr [edi+58]; TZAbstractCachedResultSet.?f58:TZRowAccessor
 004D1797    mov        dword ptr [edx+24],eax; TZRowAccessor.?f24:Pointer
>004D179A    jmp        004D179E
 004D179C    xor        ebx,ebx
 004D179E    mov        eax,ebx
 004D17A0    pop        edi
 004D17A1    pop        esi
 004D17A2    pop        ebx
 004D17A3    pop        ebp
 004D17A4    ret
*}
//end;

//004D17A8
//function sub_004D17A8:?;
//begin
{*
 004D17A8    push       ebp
 004D17A9    mov        ebp,esp
 004D17AB    push       ebx
 004D17AC    push       esi
 004D17AD    mov        ebx,eax
 004D17AF    mov        esi,dword ptr [ebx+10]; TZVirtualResultSet.?f10:dword
 004D17B2    cmp        esi,1
>004D17B5    jl         004D17D9
 004D17B7    cmp        esi,dword ptr [ebx+14]; TZVirtualResultSet.?f14:Integer
>004D17BA    jg         004D17D9
 004D17BC    mov        edx,esi
 004D17BE    sub        edx,1
>004D17C1    jno        004D17C8
 004D17C3    call       @IntOver
 004D17C8    mov        eax,dword ptr [ebx+40]; TZVirtualResultSet.?f40:TList
 004D17CB    call       TList.Get
 004D17D0    cmp        byte ptr [eax+4],1
 004D17D4    sete       al
>004D17D7    jmp        004D17DB
 004D17D9    xor        eax,eax
 004D17DB    pop        esi
 004D17DC    pop        ebx
 004D17DD    pop        ebp
 004D17DE    ret
*}
//end;

//004D17E0
//function sub_004D17E0:?;
//begin
{*
 004D17E0    push       ebp
 004D17E1    mov        ebp,esp
 004D17E3    push       ebx
 004D17E4    push       esi
 004D17E5    mov        ebx,eax
 004D17E7    mov        esi,dword ptr [ebx+10]; TZVirtualResultSet.?f10:dword
 004D17EA    cmp        esi,1
>004D17ED    jl         004D1811
 004D17EF    cmp        esi,dword ptr [ebx+14]; TZVirtualResultSet.?f14:Integer
>004D17F2    jg         004D1811
 004D17F4    mov        edx,esi
 004D17F6    sub        edx,1
>004D17F9    jno        004D1800
 004D17FB    call       @IntOver
 004D1800    mov        eax,dword ptr [ebx+40]; TZVirtualResultSet.?f40:TList
 004D1803    call       TList.Get
 004D1808    cmp        byte ptr [eax+4],2
 004D180C    sete       al
>004D180F    jmp        004D1813
 004D1811    xor        eax,eax
 004D1813    pop        esi
 004D1814    pop        ebx
 004D1815    pop        ebp
 004D1816    ret
*}
//end;

//004D1818
//function sub_004D1818:?;
//begin
{*
 004D1818    push       ebp
 004D1819    mov        ebp,esp
 004D181B    push       ebx
 004D181C    push       esi
 004D181D    mov        ebx,eax
 004D181F    mov        esi,dword ptr [ebx+10]; TZVirtualResultSet.?f10:dword
 004D1822    cmp        esi,1
>004D1825    jl         004D184A
 004D1827    cmp        esi,dword ptr [ebx+14]; TZVirtualResultSet.?f14:Integer
>004D182A    jg         004D184A
 004D182C    mov        edx,esi
 004D182E    sub        edx,1
>004D1831    jno        004D1838
 004D1833    call       @IntOver
 004D1838    mov        eax,dword ptr [ebx+40]; TZVirtualResultSet.?f40:TList
 004D183B    call       TList.Get
 004D1840    mov        al,byte ptr [eax+4]
 004D1843    cmp        al,3
 004D1845    sete       al
>004D1848    jmp        004D184C
 004D184A    xor        eax,eax
 004D184C    pop        esi
 004D184D    pop        ebx
 004D184E    pop        ebp
 004D184F    ret
*}
//end;

//004D1850
procedure sub_004D1850;
begin
{*
 004D1850    push       ebp
 004D1851    mov        ebp,esp
 004D1853    add        esp,0FFFFFFF8
 004D1856    push       ebx
 004D1857    push       esi
 004D1858    push       edi
 004D1859    mov        dword ptr [ebp-4],eax
 004D185C    mov        eax,dword ptr [ebp-4]
 004D185F    call       004D42AC
 004D1864    mov        eax,dword ptr [ebp-4]
 004D1867    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D186A    mov        edx,dword ptr [eax+24]; TZRowAccessor.?f24:Pointer
 004D186D    mov        dword ptr [ebp-8],edx
 004D1870    call       004C951C
 004D1875    mov        eax,dword ptr [ebp-4]
 004D1878    mov        edx,dword ptr [eax+54]; TZVirtualResultSet.?f54:dword
 004D187B    mov        eax,dword ptr [ebp-4]
 004D187E    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1881    call       004C9544
 004D1886    mov        eax,dword ptr [ebp-4]
 004D1889    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D188C    mov        eax,dword ptr [eax+24]; TZRowAccessor.?f24:Pointer
 004D188F    mov        byte ptr [eax+4],2
 004D1893    mov        eax,dword ptr [ebp-4]
 004D1896    call       004D09DC
 004D189B    mov        edx,dword ptr [ebp-4]
 004D189E    mov        edx,dword ptr [edx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D18A1    mov        ebx,dword ptr [edx+24]; TZRowAccessor.?f24:Pointer
 004D18A4    mov        dword ptr [ebx],eax
 004D18A6    mov        edx,ebx
 004D18A8    mov        eax,dword ptr [ebp-4]
 004D18AB    call       004D0A3C
 004D18B0    mov        eax,dword ptr [ebp-4]
 004D18B3    cmp        byte ptr [eax+3C],0; TZVirtualResultSet.?f3C:byte
>004D18B7    jne        004D198C
 004D18BD    xor        edx,edx
 004D18BF    push       ebp
 004D18C0    push       4D18E3
 004D18C5    push       dword ptr fs:[edx]
 004D18C8    mov        dword ptr fs:[edx],esp
 004D18CB    mov        eax,dword ptr [ebp-4]
 004D18CE    mov        edx,dword ptr [eax]
 004D18D0    call       dword ptr [edx+1F0]; TZVirtualResultSet.sub_004D0CE4
 004D18D6    xor        eax,eax
 004D18D8    pop        edx
 004D18D9    pop        ecx
 004D18DA    pop        ecx
 004D18DB    mov        dword ptr fs:[eax],edx
>004D18DE    jmp        004D198C
<004D18E3    jmp        @HandleOnException
 004D18E8    dd        1
 004D18EC    dd        4087B0;Exception
 004D18F0    dd        4D18F4
 004D18F4    mov        ebx,eax
 004D18F6    mov        eax,dword ptr [ebp-4]
 004D18F9    mov        esi,dword ptr [eax+44]; TZVirtualResultSet.?f44:TList
 004D18FC    mov        edx,dword ptr [esi+8]; TList.FCount:Integer
 004D18FF    sub        edx,1
>004D1902    jno        004D1909
 004D1904    call       @IntOver
 004D1909    mov        eax,esi
 004D190B    call       TList.Get
 004D1910    mov        edx,eax
 004D1912    mov        eax,dword ptr [ebp-4]
 004D1915    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1918    call       004C89BC
 004D191D    mov        eax,dword ptr [ebp-4]
 004D1920    mov        eax,dword ptr [eax+44]; TZVirtualResultSet.?f44:TList
 004D1923    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 004D1926    sub        edx,1
>004D1929    jno        004D1930
 004D192B    call       @IntOver
 004D1930    call       TList.Delete
 004D1935    mov        eax,dword ptr [ebp-4]
 004D1938    mov        esi,dword ptr [eax+48]; TZVirtualResultSet.?f48:TList
 004D193B    mov        edx,dword ptr [esi+8]; TList.FCount:Integer
 004D193E    sub        edx,1
>004D1941    jno        004D1948
 004D1943    call       @IntOver
 004D1948    mov        eax,esi
 004D194A    call       TList.Get
 004D194F    mov        edx,eax
 004D1951    mov        eax,dword ptr [ebp-4]
 004D1954    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1957    call       004C89BC
 004D195C    mov        eax,dword ptr [ebp-4]
 004D195F    mov        eax,dword ptr [eax+48]; TZVirtualResultSet.?f48:TList
 004D1962    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 004D1965    sub        edx,1
>004D1968    jno        004D196F
 004D196A    call       @IntOver
 004D196F    call       TList.Delete
 004D1974    mov        eax,dword ptr [ebp-4]
 004D1977    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D197A    mov        edx,dword ptr [ebp-8]
 004D197D    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 004D1980    mov        eax,ebx
 004D1982    call       004D2FA4
 004D1987    call       @DoneExcept
 004D198C    mov        eax,dword ptr [ebp-4]
 004D198F    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1992    mov        edx,dword ptr [eax+24]; TZRowAccessor.?f24:Pointer
 004D1995    mov        eax,dword ptr [ebp-4]
 004D1998    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D199B    call       TList.Add
 004D19A0    mov        eax,dword ptr [ebp-4]
 004D19A3    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D19A6    mov        eax,dword ptr [eax+8]; TList.FCount:Integer
 004D19A9    mov        edx,dword ptr [ebp-4]
 004D19AC    mov        dword ptr [edx+14],eax; TZVirtualResultSet.?f14:Integer
 004D19AF    mov        edx,eax
 004D19B1    mov        eax,dword ptr [ebp-4]
 004D19B4    mov        ecx,dword ptr [eax]
 004D19B6    call       dword ptr [ecx+0F0]; TZVirtualResultSet.sub_004D1724
 004D19BC    pop        edi
 004D19BD    pop        esi
 004D19BE    pop        ebx
 004D19BF    pop        ecx
 004D19C0    pop        ecx
 004D19C1    pop        ebp
 004D19C2    ret
*}
end;

//004D19C4
procedure sub_004D19C4;
begin
{*
 004D19C4    push       ebp
 004D19C5    mov        ebp,esp
 004D19C7    push       0
 004D19C9    push       0
 004D19CB    push       0
 004D19CD    push       ebx
 004D19CE    push       esi
 004D19CF    push       edi
 004D19D0    mov        dword ptr [ebp-4],eax
 004D19D3    xor        eax,eax
 004D19D5    push       ebp
 004D19D6    push       4D1C13
 004D19DB    push       dword ptr fs:[eax]
 004D19DE    mov        dword ptr fs:[eax],esp
 004D19E1    mov        eax,dword ptr [ebp-4]
 004D19E4    call       004D09BC
 004D19E9    mov        eax,dword ptr [ebp-4]
 004D19EC    mov        eax,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D19EF    cmp        eax,1
>004D19F2    jl         004D19FC
 004D19F4    mov        edx,dword ptr [ebp-4]
 004D19F7    cmp        eax,dword ptr [edx+14]; TZVirtualResultSet.?f14:Integer
>004D19FA    jle        004D1A1D
 004D19FC    lea        edx,[ebp-8]
 004D19FF    mov        eax,[0061AFC0]; ^#122.sResString36:TResStringRec
 004D1A04    call       LoadResString
 004D1A09    mov        ecx,dword ptr [ebp-8]
 004D1A0C    mov        dl,1
 004D1A0E    mov        eax,[004C6D20]; EZSQLException
 004D1A13    call       EZSQLException.Create; EZSQLException.Create
 004D1A18    call       @RaiseExcept
 004D1A1D    mov        eax,dword ptr [ebp-4]
 004D1A20    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1A23    sub        edx,1
>004D1A26    jno        004D1A2D
 004D1A28    call       @IntOver
 004D1A2D    mov        eax,dword ptr [ebp-4]
 004D1A30    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D1A33    call       TList.Get
 004D1A38    cmp        byte ptr [eax+4],3
>004D1A3C    jne        004D1A5F
 004D1A3E    lea        edx,[ebp-0C]
 004D1A41    mov        eax,[0061AEA0]; ^#122.sResString37:TResStringRec
 004D1A46    call       LoadResString
 004D1A4B    mov        ecx,dword ptr [ebp-0C]
 004D1A4E    mov        dl,1
 004D1A50    mov        eax,[004C6D20]; EZSQLException
 004D1A55    call       EZSQLException.Create; EZSQLException.Create
 004D1A5A    call       @RaiseExcept
 004D1A5F    mov        eax,dword ptr [ebp-4]
 004D1A62    mov        eax,dword ptr [eax+4C]; TZVirtualResultSet.?f4C:Pointer
 004D1A65    mov        edx,dword ptr [ebp-4]
 004D1A68    cmp        eax,dword ptr [edx+50]; TZVirtualResultSet.?f50:dword
>004D1A6B    jne        004D1BF8
 004D1A71    mov        eax,dword ptr [ebp-4]
 004D1A74    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1A77    sub        edx,1
>004D1A7A    jno        004D1A81
 004D1A7C    call       @IntOver
 004D1A81    mov        eax,dword ptr [ebp-4]
 004D1A84    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D1A87    call       TList.Get
 004D1A8C    mov        edx,eax
 004D1A8E    mov        eax,dword ptr [ebp-4]
 004D1A91    call       004D0A3C
 004D1A96    mov        eax,dword ptr [ebp-4]
 004D1A99    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1A9C    sub        edx,1
>004D1A9F    jno        004D1AA6
 004D1AA1    call       @IntOver
 004D1AA6    mov        eax,dword ptr [ebp-4]
 004D1AA9    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D1AAC    call       TList.Get
 004D1AB1    mov        ebx,eax
 004D1AB3    mov        eax,dword ptr [ebp-4]
 004D1AB6    mov        dword ptr [eax+4C],ebx; TZVirtualResultSet.?f4C:Pointer
 004D1AB9    mov        ecx,ebx
 004D1ABB    mov        eax,dword ptr [ebp-4]
 004D1ABE    mov        edx,dword ptr [eax+50]; TZVirtualResultSet.?f50:dword
 004D1AC1    mov        eax,dword ptr [ebp-4]
 004D1AC4    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1AC7    call       004C8A00
 004D1ACC    mov        eax,dword ptr [ebp-4]
 004D1ACF    mov        eax,dword ptr [eax+4C]; TZVirtualResultSet.?f4C:Pointer
 004D1AD2    mov        edx,dword ptr [ebp-4]
 004D1AD5    mov        edx,dword ptr [edx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1AD8    mov        dword ptr [edx+24],eax; TZRowAccessor.?f24:Pointer
 004D1ADB    mov        eax,dword ptr [ebp-4]
 004D1ADE    mov        eax,dword ptr [eax+4C]; TZVirtualResultSet.?f4C:Pointer
 004D1AE1    cmp        byte ptr [eax+4],0
>004D1AE5    jne        004D1AEB
 004D1AE7    mov        byte ptr [eax+4],1
 004D1AEB    mov        eax,dword ptr [ebp-4]
 004D1AEE    cmp        byte ptr [eax+3C],0; TZVirtualResultSet.?f3C:byte
>004D1AF2    jne        004D1BF8
 004D1AF8    xor        edx,edx
 004D1AFA    push       ebp
 004D1AFB    push       4D1B1E
 004D1B00    push       dword ptr fs:[edx]
 004D1B03    mov        dword ptr fs:[edx],esp
 004D1B06    mov        eax,dword ptr [ebp-4]
 004D1B09    mov        edx,dword ptr [eax]
 004D1B0B    call       dword ptr [edx+1F0]; TZVirtualResultSet.sub_004D0CE4
 004D1B11    xor        eax,eax
 004D1B13    pop        edx
 004D1B14    pop        ecx
 004D1B15    pop        ecx
 004D1B16    mov        dword ptr fs:[eax],edx
>004D1B19    jmp        004D1BF8
<004D1B1E    jmp        @HandleOnException
 004D1B23    dd        1
 004D1B27    dd        4087B0;Exception
 004D1B2B    dd        4D1B2F
 004D1B2F    mov        ebx,eax
 004D1B31    mov        eax,dword ptr [ebp-4]
 004D1B34    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1B37    sub        edx,1
>004D1B3A    jno        004D1B41
 004D1B3C    call       @IntOver
 004D1B41    mov        eax,dword ptr [ebp-4]
 004D1B44    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D1B47    call       TList.Get
 004D1B4C    mov        edx,eax
 004D1B4E    mov        eax,dword ptr [ebp-4]
 004D1B51    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1B54    call       004C89BC
 004D1B59    mov        eax,dword ptr [ebp-4]
 004D1B5C    mov        esi,dword ptr [eax+44]; TZVirtualResultSet.?f44:TList
 004D1B5F    mov        edx,dword ptr [esi+8]; TList.FCount:Integer
 004D1B62    sub        edx,1
>004D1B65    jno        004D1B6C
 004D1B67    call       @IntOver
 004D1B6C    mov        eax,esi
 004D1B6E    call       TList.Get
 004D1B73    mov        ecx,eax
 004D1B75    mov        eax,dword ptr [ebp-4]
 004D1B78    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1B7B    sub        edx,1
>004D1B7E    jno        004D1B85
 004D1B80    call       @IntOver
 004D1B85    mov        eax,dword ptr [ebp-4]
 004D1B88    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D1B8B    call       TList.Put
 004D1B90    mov        eax,dword ptr [ebp-4]
 004D1B93    mov        eax,dword ptr [eax+44]; TZVirtualResultSet.?f44:TList
 004D1B96    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 004D1B99    sub        edx,1
>004D1B9C    jno        004D1BA3
 004D1B9E    call       @IntOver
 004D1BA3    call       TList.Delete
 004D1BA8    mov        eax,dword ptr [ebp-4]
 004D1BAB    mov        eax,dword ptr [eax+48]; TZVirtualResultSet.?f48:TList
 004D1BAE    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 004D1BB1    sub        edx,1
>004D1BB4    jno        004D1BBB
 004D1BB6    call       @IntOver
 004D1BBB    call       TList.Delete
 004D1BC0    mov        eax,dword ptr [ebp-4]
 004D1BC3    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1BC6    sub        edx,1
>004D1BC9    jno        004D1BD0
 004D1BCB    call       @IntOver
 004D1BD0    mov        eax,dword ptr [ebp-4]
 004D1BD3    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D1BD6    call       TList.Get
 004D1BDB    mov        esi,eax
 004D1BDD    mov        eax,dword ptr [ebp-4]
 004D1BE0    mov        dword ptr [eax+4C],esi; TZVirtualResultSet.?f4C:Pointer
 004D1BE3    mov        eax,dword ptr [ebp-4]
 004D1BE6    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1BE9    mov        dword ptr [eax+24],esi; TZRowAccessor.?f24:Pointer
 004D1BEC    mov        eax,ebx
 004D1BEE    call       004D2FA4
 004D1BF3    call       @DoneExcept
 004D1BF8    xor        eax,eax
 004D1BFA    pop        edx
 004D1BFB    pop        ecx
 004D1BFC    pop        ecx
 004D1BFD    mov        dword ptr fs:[eax],edx
 004D1C00    push       4D1C1A
 004D1C05    lea        eax,[ebp-0C]
 004D1C08    mov        edx,2
 004D1C0D    call       @LStrArrayClr
 004D1C12    ret
<004D1C13    jmp        @HandleFinally
<004D1C18    jmp        004D1C05
 004D1C1A    pop        edi
 004D1C1B    pop        esi
 004D1C1C    pop        ebx
 004D1C1D    mov        esp,ebp
 004D1C1F    pop        ebp
 004D1C20    ret
*}
end;

//004D1C24
procedure sub_004D1C24;
begin
{*
 004D1C24    push       ebp
 004D1C25    mov        ebp,esp
 004D1C27    add        esp,0FFFFFFF8
 004D1C2A    push       ebx
 004D1C2B    push       esi
 004D1C2C    push       edi
 004D1C2D    xor        edx,edx
 004D1C2F    mov        dword ptr [ebp-8],edx
 004D1C32    mov        dword ptr [ebp-4],eax
 004D1C35    xor        eax,eax
 004D1C37    push       ebp
 004D1C38    push       4D1E1F
 004D1C3D    push       dword ptr fs:[eax]
 004D1C40    mov        dword ptr fs:[eax],esp
 004D1C43    mov        eax,dword ptr [ebp-4]
 004D1C46    call       004D09BC
 004D1C4B    mov        eax,dword ptr [ebp-4]
 004D1C4E    mov        eax,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1C51    cmp        eax,1
>004D1C54    jl         004D1C67
 004D1C56    mov        edx,dword ptr [ebp-4]
 004D1C59    cmp        eax,dword ptr [edx+14]; TZVirtualResultSet.?f14:Integer
>004D1C5C    jg         004D1C67
 004D1C5E    mov        eax,dword ptr [ebp-4]
 004D1C61    cmp        dword ptr [eax+4C],0; TZVirtualResultSet.?f4C:Pointer
>004D1C65    jne        004D1C88
 004D1C67    lea        edx,[ebp-8]
 004D1C6A    mov        eax,[0061AE88]; ^#122.sResString38:TResStringRec
 004D1C6F    call       LoadResString
 004D1C74    mov        ecx,dword ptr [ebp-8]
 004D1C77    mov        dl,1
 004D1C79    mov        eax,[004C6D20]; EZSQLException
 004D1C7E    call       EZSQLException.Create; EZSQLException.Create
 004D1C83    call       @RaiseExcept
 004D1C88    mov        eax,dword ptr [ebp-4]
 004D1C8B    mov        eax,dword ptr [eax+4C]; TZVirtualResultSet.?f4C:Pointer
 004D1C8E    cmp        byte ptr [eax+4],2
>004D1C92    jne        004D1CA4
 004D1C94    mov        eax,dword ptr [ebp-4]
 004D1C97    mov        edx,dword ptr [eax]
 004D1C99    call       dword ptr [edx+1F8]; TZVirtualResultSet.sub_004D0E20
>004D1C9F    jmp        004D1E09
 004D1CA4    mov        eax,dword ptr [ebp-4]
 004D1CA7    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1CAA    sub        edx,1
>004D1CAD    jno        004D1CB4
 004D1CAF    call       @IntOver
 004D1CB4    mov        eax,dword ptr [ebp-4]
 004D1CB7    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D1CBA    call       TList.Get
 004D1CBF    mov        edx,eax
 004D1CC1    mov        eax,dword ptr [ebp-4]
 004D1CC4    call       004D0A3C
 004D1CC9    mov        eax,dword ptr [ebp-4]
 004D1CCC    mov        eax,dword ptr [eax+4C]; TZVirtualResultSet.?f4C:Pointer
 004D1CCF    mov        byte ptr [eax+4],3
 004D1CD3    mov        edx,dword ptr [ebp-4]
 004D1CD6    mov        ebx,dword ptr [edx+50]; TZVirtualResultSet.?f50:dword
 004D1CD9    cmp        eax,ebx
>004D1CDB    jne        004D1D07
 004D1CDD    mov        eax,dword ptr [ebp-4]
 004D1CE0    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1CE3    sub        edx,1
>004D1CE6    jno        004D1CED
 004D1CE8    call       @IntOver
 004D1CED    mov        eax,dword ptr [ebp-4]
 004D1CF0    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D1CF3    call       TList.Get
 004D1CF8    mov        ecx,eax
 004D1CFA    mov        edx,ebx
 004D1CFC    mov        eax,dword ptr [ebp-4]
 004D1CFF    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1D02    call       004C8A00
 004D1D07    mov        eax,dword ptr [ebp-4]
 004D1D0A    cmp        byte ptr [eax+3C],0; TZVirtualResultSet.?f3C:byte
>004D1D0E    jne        004D1E09
 004D1D14    xor        edx,edx
 004D1D16    push       ebp
 004D1D17    push       4D1D3A
 004D1D1C    push       dword ptr fs:[edx]
 004D1D1F    mov        dword ptr fs:[edx],esp
 004D1D22    mov        eax,dword ptr [ebp-4]
 004D1D25    mov        edx,dword ptr [eax]
 004D1D27    call       dword ptr [edx+1F0]; TZVirtualResultSet.sub_004D0CE4
 004D1D2D    xor        eax,eax
 004D1D2F    pop        edx
 004D1D30    pop        ecx
 004D1D31    pop        ecx
 004D1D32    mov        dword ptr fs:[eax],edx
>004D1D35    jmp        004D1E09
<004D1D3A    jmp        @HandleOnException
 004D1D3F    dd        1
 004D1D43    dd        4087B0;Exception
 004D1D47    dd        4D1D4B
 004D1D4B    mov        ebx,eax
 004D1D4D    mov        eax,dword ptr [ebp-4]
 004D1D50    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1D53    sub        edx,1
>004D1D56    jno        004D1D5D
 004D1D58    call       @IntOver
 004D1D5D    mov        eax,dword ptr [ebp-4]
 004D1D60    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D1D63    call       TList.Get
 004D1D68    mov        edx,eax
 004D1D6A    mov        eax,dword ptr [ebp-4]
 004D1D6D    mov        eax,dword ptr [eax+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1D70    call       004C89BC
 004D1D75    mov        eax,dword ptr [ebp-4]
 004D1D78    mov        esi,dword ptr [eax+44]; TZVirtualResultSet.?f44:TList
 004D1D7B    mov        edx,dword ptr [esi+8]; TList.FCount:Integer
 004D1D7E    sub        edx,1
>004D1D81    jno        004D1D88
 004D1D83    call       @IntOver
 004D1D88    mov        eax,esi
 004D1D8A    call       TList.Get
 004D1D8F    mov        ecx,eax
 004D1D91    mov        eax,dword ptr [ebp-4]
 004D1D94    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1D97    sub        edx,1
>004D1D9A    jno        004D1DA1
 004D1D9C    call       @IntOver
 004D1DA1    mov        eax,dword ptr [ebp-4]
 004D1DA4    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D1DA7    call       TList.Put
 004D1DAC    mov        eax,dword ptr [ebp-4]
 004D1DAF    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1DB2    sub        edx,1
>004D1DB5    jno        004D1DBC
 004D1DB7    call       @IntOver
 004D1DBC    mov        eax,dword ptr [ebp-4]
 004D1DBF    mov        eax,dword ptr [eax+40]; TZVirtualResultSet.?f40:TList
 004D1DC2    call       TList.Get
 004D1DC7    mov        edx,dword ptr [ebp-4]
 004D1DCA    mov        dword ptr [edx+4C],eax; TZVirtualResultSet.?f4C:Pointer
 004D1DCD    mov        eax,dword ptr [ebp-4]
 004D1DD0    mov        eax,dword ptr [eax+44]; TZVirtualResultSet.?f44:TList
 004D1DD3    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 004D1DD6    sub        edx,1
>004D1DD9    jno        004D1DE0
 004D1DDB    call       @IntOver
 004D1DE0    call       TList.Delete
 004D1DE5    mov        eax,dword ptr [ebp-4]
 004D1DE8    mov        eax,dword ptr [eax+48]; TZVirtualResultSet.?f48:TList
 004D1DEB    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 004D1DEE    sub        edx,1
>004D1DF1    jno        004D1DF8
 004D1DF3    call       @IntOver
 004D1DF8    call       TList.Delete
 004D1DFD    mov        eax,ebx
 004D1DFF    call       004D2FA4
 004D1E04    call       @DoneExcept
 004D1E09    xor        eax,eax
 004D1E0B    pop        edx
 004D1E0C    pop        ecx
 004D1E0D    pop        ecx
 004D1E0E    mov        dword ptr fs:[eax],edx
 004D1E11    push       4D1E26
 004D1E16    lea        eax,[ebp-8]
 004D1E19    call       @LStrClr
 004D1E1E    ret
<004D1E1F    jmp        @HandleFinally
<004D1E24    jmp        004D1E16
 004D1E26    pop        edi
 004D1E27    pop        esi
 004D1E28    pop        ebx
 004D1E29    pop        ecx
 004D1E2A    pop        ecx
 004D1E2B    pop        ebp
 004D1E2C    ret
*}
end;

//004D1E30
procedure sub_004D1E30;
begin
{*
 004D1E30    push       ebp
 004D1E31    mov        ebp,esp
 004D1E33    mov        edx,dword ptr [eax+10]; TZVirtualResultSet.?f10:dword
 004D1E36    mov        ecx,dword ptr [eax]
 004D1E38    call       dword ptr [ecx+0F0]; TZVirtualResultSet.sub_004D1724
 004D1E3E    pop        ebp
 004D1E3F    ret
*}
end;

//004D1E40
procedure sub_004D1E40;
begin
{*
 004D1E40    push       ebp
 004D1E41    mov        ebp,esp
 004D1E43    push       ebx
 004D1E44    mov        ebx,eax
 004D1E46    mov        eax,ebx
 004D1E48    call       004D42AC
 004D1E4D    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1E50    mov        edx,dword ptr [ebx+54]; TZVirtualResultSet.?f54:dword
 004D1E53    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 004D1E56    pop        ebx
 004D1E57    pop        ebp
 004D1E58    ret
*}
end;

//004D1E5C
procedure sub_004D1E5C;
begin
{*
 004D1E5C    push       ebp
 004D1E5D    mov        ebp,esp
 004D1E5F    push       ebx
 004D1E60    mov        ebx,eax
 004D1E62    mov        eax,ebx
 004D1E64    call       004D42AC
 004D1E69    mov        eax,dword ptr [ebx+10]; TZVirtualResultSet.?f10:dword
 004D1E6C    cmp        eax,1
>004D1E6F    jl         004D1E82
 004D1E71    cmp        eax,dword ptr [ebx+14]; TZVirtualResultSet.?f14:Integer
>004D1E74    jg         004D1E82
 004D1E76    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1E79    mov        edx,dword ptr [ebx+4C]; TZVirtualResultSet.?f4C:Pointer
 004D1E7C    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 004D1E7F    pop        ebx
 004D1E80    pop        ebp
 004D1E81    ret
 004D1E82    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1E85    xor        edx,edx
 004D1E87    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 004D1E8A    pop        ebx
 004D1E8B    pop        ebp
 004D1E8C    ret
*}
end;

//004D1E90
//procedure sub_004D1E90(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004D1E90    push       ebp
 004D1E91    mov        ebp,esp
 004D1E93    push       ebx
 004D1E94    push       esi
 004D1E95    push       edi
 004D1E96    mov        edi,ecx
 004D1E98    mov        esi,edx
 004D1E9A    mov        ebx,eax
 004D1E9C    cmp        byte ptr [ebx+24],0; TZVirtualResultSet.?f24:byte
>004D1EA0    jne        004D1EA9
 004D1EA2    mov        eax,ebx
 004D1EA4    call       004D4204
 004D1EA9    mov        edx,esi
 004D1EAB    sub        edx,1
>004D1EAE    jno        004D1EB5
 004D1EB0    call       @IntOver
 004D1EB5    mov        eax,dword ptr [ebx+40]; TZVirtualResultSet.?f40:TList
 004D1EB8    call       TList.Get
 004D1EBD    mov        esi,eax
 004D1EBF    mov        edx,edi
 004D1EC1    sub        edx,1
>004D1EC4    jno        004D1ECB
 004D1EC6    call       @IntOver
 004D1ECB    mov        eax,dword ptr [ebx+40]; TZVirtualResultSet.?f40:TList
 004D1ECE    call       TList.Get
 004D1ED3    mov        edx,dword ptr [ebp+0C]
 004D1ED6    push       edx
 004D1ED7    mov        edx,dword ptr [ebp+8]
 004D1EDA    push       edx
 004D1EDB    mov        ecx,eax
 004D1EDD    mov        edx,esi
 004D1EDF    mov        eax,dword ptr [ebx+58]; TZVirtualResultSet.?f58:TZRowAccessor
 004D1EE2    call       004C8D8C
 004D1EE7    pop        edi
 004D1EE8    pop        esi
 004D1EE9    pop        ebx
 004D1EEA    pop        ebp
 004D1EEB    ret        8
*}
//end;

//004D1EF0
//constructor TZCachedResultSet.Create(?:TZCachedResultSet; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004D1EF0    push       ebp
 004D1EF1    mov        ebp,esp
 004D1EF3    add        esp,0FFFFFFF8
 004D1EF6    push       ebx
 004D1EF7    push       esi
 004D1EF8    xor        ebx,ebx
 004D1EFA    mov        dword ptr [ebp-8],ebx
 004D1EFD    test       dl,dl
>004D1EFF    je         004D1F09
 004D1F01    add        esp,0FFFFFFF0
 004D1F04    call       @ClassCreate
 004D1F09    mov        dword ptr [ebp-4],ecx
 004D1F0C    mov        ebx,edx
 004D1F0E    mov        esi,eax
 004D1F10    mov        eax,dword ptr [ebp-4]
 004D1F13    call       @IntfAddRef
 004D1F18    mov        eax,dword ptr [ebp+0C]
 004D1F1B    call       @LStrAddRef
 004D1F20    mov        eax,dword ptr [ebp+8]
 004D1F23    call       @IntfAddRef
 004D1F28    xor        eax,eax
 004D1F2A    push       ebp
 004D1F2B    push       4D1FAB
 004D1F30    push       dword ptr fs:[eax]
 004D1F33    mov        dword ptr fs:[eax],esp
 004D1F36    mov        eax,dword ptr [ebp+0C]
 004D1F39    push       eax
 004D1F3A    push       0
 004D1F3C    lea        edx,[ebp-8]
 004D1F3F    mov        eax,dword ptr [ebp-4]
 004D1F42    mov        ecx,dword ptr [eax]
 004D1F44    call       dword ptr [ecx+1F0]
 004D1F4A    mov        ecx,dword ptr [ebp-8]
 004D1F4D    xor        edx,edx
 004D1F4F    mov        eax,esi
 004D1F51    call       004D3FC8
 004D1F56    lea        eax,[esi+74]; TZCachedResultSet.?f74:IZResultSet
 004D1F59    mov        edx,dword ptr [ebp-4]
 004D1F5C    call       @IntfCopy
 004D1F61    lea        eax,[esi+68]; TZCachedResultSet.?f68:IZCachedResolver
 004D1F64    mov        edx,dword ptr [ebp+8]
 004D1F67    call       @IntfCopy
 004D1F6C    lea        eax,[esi+6C]; TZCachedResultSet.?f6C:IZCachedResolver
 004D1F6F    mov        edx,dword ptr [ebp+8]
 004D1F72    call       @IntfCopy
 004D1F77    mov        eax,esi
 004D1F79    mov        edx,dword ptr [eax]
 004D1F7B    call       dword ptr [edx]; TZCachedResultSet.sub_004D23DC
 004D1F7D    xor        eax,eax
 004D1F7F    pop        edx
 004D1F80    pop        ecx
 004D1F81    pop        ecx
 004D1F82    mov        dword ptr fs:[eax],edx
 004D1F85    push       4D1FB2
 004D1F8A    lea        eax,[ebp-8]
 004D1F8D    call       @IntfClear
 004D1F92    lea        eax,[ebp-4]
 004D1F95    call       @IntfClear
 004D1F9A    lea        eax,[ebp+8]
 004D1F9D    call       @IntfClear
 004D1FA2    lea        eax,[ebp+0C]
 004D1FA5    call       @LStrClr
 004D1FAA    ret
<004D1FAB    jmp        @HandleFinally
<004D1FB0    jmp        004D1F8A
 004D1FB2    mov        eax,esi
 004D1FB4    test       bl,bl
>004D1FB6    je         004D1FC7
 004D1FB8    call       @AfterConstruction
 004D1FBD    pop        dword ptr fs:[0]
 004D1FC4    add        esp,0C
 004D1FC7    mov        eax,esi
 004D1FC9    pop        esi
 004D1FCA    pop        ebx
 004D1FCB    pop        ecx
 004D1FCC    pop        ecx
 004D1FCD    pop        ebp
 004D1FCE    ret        8
*}
//end;

//004D1FD4
destructor TZCachedResultSet.Destroy;
begin
{*
 004D1FD4    push       ebp
 004D1FD5    mov        ebp,esp
 004D1FD7    push       ebx
 004D1FD8    push       esi
 004D1FD9    call       @BeforeDestruction
 004D1FDE    mov        ebx,edx
 004D1FE0    mov        esi,eax
 004D1FE2    mov        edx,ebx
 004D1FE4    and        dl,0FC
 004D1FE7    mov        eax,esi
 004D1FE9    call       TZAbstractCachedResultSet.Destroy
 004D1FEE    test       bl,bl
>004D1FF0    jle        004D1FF9
 004D1FF2    mov        eax,esi
 004D1FF4    call       @ClassDestroy
 004D1FF9    pop        esi
 004D1FFA    pop        ebx
 004D1FFB    pop        ebp
 004D1FFC    ret
*}
end;

//004D2000
//function sub_004D2000:?;
//begin
{*
 004D2000    push       ebp
 004D2001    mov        ebp,esp
 004D2003    add        esp,0FFFFFFE8
 004D2006    push       ebx
 004D2007    push       esi
 004D2008    push       edi
 004D2009    xor        edx,edx
 004D200B    mov        dword ptr [ebp-18],edx
 004D200E    mov        dword ptr [ebp-14],edx
 004D2011    mov        dword ptr [ebp-10],edx
 004D2014    mov        dword ptr [ebp-4],eax
 004D2017    xor        eax,eax
 004D2019    push       ebp
 004D201A    push       4D23B1
 004D201F    push       dword ptr fs:[eax]
 004D2022    mov        dword ptr fs:[eax],esp
 004D2025    mov        eax,dword ptr [ebp-4]
 004D2028    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D202B    mov        edx,dword ptr [eax]
 004D202D    call       dword ptr [edx+0C]
 004D2030    mov        byte ptr [ebp-5],al
 004D2033    cmp        byte ptr [ebp-5],0
>004D2037    je         004D2385
 004D203D    mov        eax,dword ptr [ebp-4]
 004D2040    mov        eax,dword ptr [eax+18]; TZCachedResultSet.?f18:dword
 004D2043    test       eax,eax
>004D2045    jle        004D2053
 004D2047    mov        edx,dword ptr [ebp-4]
 004D204A    cmp        eax,dword ptr [edx+14]; TZCachedResultSet.?f14:Integer
>004D204D    jle        004D2385
 004D2053    mov        eax,dword ptr [ebp-4]
 004D2056    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D2059    mov        edx,dword ptr [eax+24]; TZRowAccessor.?f24:Pointer
 004D205C    mov        dword ptr [ebp-0C],edx
 004D205F    xor        edx,edx
 004D2061    push       ebp
 004D2062    push       4D237E
 004D2067    push       dword ptr fs:[edx]
 004D206A    mov        dword ptr fs:[edx],esp
 004D206D    call       004C951C
 004D2072    mov        eax,dword ptr [ebp-4]
 004D2075    call       004D09DC
 004D207A    mov        edx,dword ptr [ebp-4]
 004D207D    mov        edx,dword ptr [edx+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D2080    mov        ebx,dword ptr [edx+24]; TZRowAccessor.?f24:Pointer
 004D2083    mov        dword ptr [ebx],eax
 004D2085    mov        byte ptr [ebx+4],0
 004D2089    mov        eax,dword ptr [ebp-4]
 004D208C    mov        eax,dword ptr [eax+28]; TZCachedResultSet.?f28:dword
 004D208F    mov        esi,dword ptr [eax+8]
 004D2092    test       esi,esi
>004D2094    jle        004D2341
 004D209A    mov        ebx,1
 004D209F    mov        edx,ebx
 004D20A1    sub        edx,1
>004D20A4    jno        004D20AB
 004D20A6    call       @IntOver
 004D20AB    mov        eax,dword ptr [ebp-4]
 004D20AE    mov        eax,dword ptr [eax+28]; TZCachedResultSet.?f28:dword
 004D20B1    call       TObjectList.GetItem
 004D20B6    movzx      eax,byte ptr [eax+2C]
 004D20BA    cmp        eax,11
>004D20BD    ja         004D231D
 004D20C3    jmp        dword ptr [eax*4+4D20CA]
 004D20C3    dd         4D231D
 004D20C3    dd         4D2112
 004D20C3    dd         4D2133
 004D20C3    dd         4D2154
 004D20C3    dd         4D2175
 004D20C3    dd         4D2196
 004D20C3    dd         4D21B7
 004D20C3    dd         4D21DD
 004D20C3    dd         4D2203
 004D20C3    dd         4D2229
 004D20C3    dd         4D224A
 004D20C3    dd         4D226F
 004D20C3    dd         4D2294
 004D20C3    dd         4D22B7
 004D20C3    dd         4D22DA
 004D20C3    dd         4D22FD
 004D20C3    dd         4D22FD
 004D20C3    dd         4D22FD
 004D2112    mov        eax,dword ptr [ebp-4]
 004D2115    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D2118    mov        edx,ebx
 004D211A    mov        ecx,dword ptr [eax]
 004D211C    call       dword ptr [ecx+28]
 004D211F    mov        ecx,eax
 004D2121    mov        eax,dword ptr [ebp-4]
 004D2124    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D2127    mov        edx,ebx
 004D2129    call       004CBA88
>004D212E    jmp        004D231D
 004D2133    mov        eax,dword ptr [ebp-4]
 004D2136    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D2139    mov        edx,ebx
 004D213B    mov        ecx,dword ptr [eax]
 004D213D    call       dword ptr [ecx+2C]
 004D2140    mov        ecx,eax
 004D2142    mov        eax,dword ptr [ebp-4]
 004D2145    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D2148    mov        edx,ebx
 004D214A    call       004CBC70
>004D214F    jmp        004D231D
 004D2154    mov        eax,dword ptr [ebp-4]
 004D2157    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D215A    mov        edx,ebx
 004D215C    mov        ecx,dword ptr [eax]
 004D215E    call       dword ptr [ecx+30]
 004D2161    mov        ecx,eax
 004D2163    mov        eax,dword ptr [ebp-4]
 004D2166    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D2169    mov        edx,ebx
 004D216B    call       004CBE2C
>004D2170    jmp        004D231D
 004D2175    mov        eax,dword ptr [ebp-4]
 004D2178    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D217B    mov        edx,ebx
 004D217D    mov        ecx,dword ptr [eax]
 004D217F    call       dword ptr [ecx+34]
 004D2182    mov        ecx,eax
 004D2184    mov        eax,dword ptr [ebp-4]
 004D2187    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D218A    mov        edx,ebx
 004D218C    call       004CBFF8
>004D2191    jmp        004D231D
 004D2196    mov        eax,dword ptr [ebp-4]
 004D2199    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D219C    mov        edx,ebx
 004D219E    mov        ecx,dword ptr [eax]
 004D21A0    call       dword ptr [ecx+38]
 004D21A3    push       edx
 004D21A4    push       eax
 004D21A5    mov        eax,dword ptr [ebp-4]
 004D21A8    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D21AB    mov        edx,ebx
 004D21AD    call       004CC1D4
>004D21B2    jmp        004D231D
 004D21B7    mov        eax,dword ptr [ebp-4]
 004D21BA    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D21BD    mov        edx,ebx
 004D21BF    mov        ecx,dword ptr [eax]
 004D21C1    call       dword ptr [ecx+3C]
 004D21C4    add        esp,0FFFFFFFC
 004D21C7    fstp       dword ptr [esp]
 004D21CA    wait
 004D21CB    mov        eax,dword ptr [ebp-4]
 004D21CE    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D21D1    mov        edx,ebx
 004D21D3    call       004CC3E4
>004D21D8    jmp        004D231D
 004D21DD    mov        eax,dword ptr [ebp-4]
 004D21E0    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D21E3    mov        edx,ebx
 004D21E5    mov        ecx,dword ptr [eax]
 004D21E7    call       dword ptr [ecx+40]
 004D21EA    add        esp,0FFFFFFF8
 004D21ED    fstp       qword ptr [esp]
 004D21F0    wait
 004D21F1    mov        eax,dword ptr [ebp-4]
 004D21F4    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D21F7    mov        edx,ebx
 004D21F9    call       004CC604
>004D21FE    jmp        004D231D
 004D2203    mov        eax,dword ptr [ebp-4]
 004D2206    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D2209    mov        edx,ebx
 004D220B    mov        ecx,dword ptr [eax]
 004D220D    call       dword ptr [ecx+44]
 004D2210    add        esp,0FFFFFFF4
 004D2213    fstp       tbyte ptr [esp]
 004D2216    wait
 004D2217    mov        eax,dword ptr [ebp-4]
 004D221A    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D221D    mov        edx,ebx
 004D221F    call       004CC82C
>004D2224    jmp        004D231D
 004D2229    mov        eax,dword ptr [ebp-4]
 004D222C    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D222F    mov        edx,ebx
 004D2231    mov        ecx,dword ptr [eax]
 004D2233    call       dword ptr [ecx+1C]
 004D2236    mov        ecx,eax
 004D2238    mov        eax,dword ptr [ebp-4]
 004D223B    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D223E    mov        edx,ebx
 004D2240    call       004CCA60
>004D2245    jmp        004D231D
 004D224A    lea        ecx,[ebp-10]
 004D224D    mov        eax,dword ptr [ebp-4]
 004D2250    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D2253    mov        edx,ebx
 004D2255    mov        edi,dword ptr [eax]
 004D2257    call       dword ptr [edi+24]
 004D225A    mov        ecx,dword ptr [ebp-10]
 004D225D    mov        eax,dword ptr [ebp-4]
 004D2260    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D2263    mov        edx,ebx
 004D2265    call       004CCF68
>004D226A    jmp        004D231D
 004D226F    lea        ecx,[ebp-14]
 004D2272    mov        eax,dword ptr [ebp-4]
 004D2275    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D2278    mov        edx,ebx
 004D227A    mov        edi,dword ptr [eax]
 004D227C    call       dword ptr [edi+48]
 004D227F    mov        ecx,dword ptr [ebp-14]
 004D2282    mov        eax,dword ptr [ebp-4]
 004D2285    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D2288    mov        edx,ebx
 004D228A    call       004CD104
>004D228F    jmp        004D231D
 004D2294    mov        eax,dword ptr [ebp-4]
 004D2297    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D229A    mov        edx,ebx
 004D229C    mov        ecx,dword ptr [eax]
 004D229E    call       dword ptr [ecx+4C]
 004D22A1    add        esp,0FFFFFFF8
 004D22A4    fstp       qword ptr [esp]
 004D22A7    wait
 004D22A8    mov        eax,dword ptr [ebp-4]
 004D22AB    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D22AE    mov        edx,ebx
 004D22B0    call       004CD300
>004D22B5    jmp        004D231D
 004D22B7    mov        eax,dword ptr [ebp-4]
 004D22BA    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D22BD    mov        edx,ebx
 004D22BF    mov        ecx,dword ptr [eax]
 004D22C1    call       dword ptr [ecx+50]
 004D22C4    add        esp,0FFFFFFF8
 004D22C7    fstp       qword ptr [esp]
 004D22CA    wait
 004D22CB    mov        eax,dword ptr [ebp-4]
 004D22CE    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D22D1    mov        edx,ebx
 004D22D3    call       004CD450
>004D22D8    jmp        004D231D
 004D22DA    mov        eax,dword ptr [ebp-4]
 004D22DD    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D22E0    mov        edx,ebx
 004D22E2    mov        ecx,dword ptr [eax]
 004D22E4    call       dword ptr [ecx+54]
 004D22E7    add        esp,0FFFFFFF8
 004D22EA    fstp       qword ptr [esp]
 004D22ED    wait
 004D22EE    mov        eax,dword ptr [ebp-4]
 004D22F1    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D22F4    mov        edx,ebx
 004D22F6    call       004CD584
>004D22FB    jmp        004D231D
 004D22FD    lea        ecx,[ebp-18]
 004D2300    mov        eax,dword ptr [ebp-4]
 004D2303    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D2306    mov        edx,ebx
 004D2308    mov        edi,dword ptr [eax]
 004D230A    call       dword ptr [edi+64]
 004D230D    mov        ecx,dword ptr [ebp-18]
 004D2310    mov        eax,dword ptr [ebp-4]
 004D2313    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D2316    mov        edx,ebx
 004D2318    call       004CD824
 004D231D    mov        eax,dword ptr [ebp-4]
 004D2320    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D2323    mov        edx,dword ptr [eax]
 004D2325    call       dword ptr [edx+14]
 004D2328    test       al,al
>004D232A    je         004D2339
 004D232C    mov        eax,dword ptr [ebp-4]
 004D232F    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D2332    mov        edx,ebx
 004D2334    call       004CB9E4
 004D2339    inc        ebx
 004D233A    dec        esi
<004D233B    jne        004D209F
 004D2341    mov        eax,dword ptr [ebp-4]
 004D2344    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D2347    mov        edx,dword ptr [eax+24]; TZRowAccessor.?f24:Pointer
 004D234A    mov        eax,dword ptr [ebp-4]
 004D234D    mov        eax,dword ptr [eax+40]; TZCachedResultSet.?f40:TList
 004D2350    call       TList.Add
 004D2355    mov        eax,dword ptr [ebp-4]
 004D2358    mov        eax,dword ptr [eax+40]; TZCachedResultSet.?f40:TList
 004D235B    mov        eax,dword ptr [eax+8]; TList.FCount:Integer
 004D235E    mov        edx,dword ptr [ebp-4]
 004D2361    mov        dword ptr [edx+14],eax; TZCachedResultSet.?f14:Integer
 004D2364    xor        eax,eax
 004D2366    pop        edx
 004D2367    pop        ecx
 004D2368    pop        ecx
 004D2369    mov        dword ptr fs:[eax],edx
 004D236C    push       4D2385
 004D2371    mov        eax,dword ptr [ebp-4]
 004D2374    mov        eax,dword ptr [eax+58]; TZCachedResultSet.?f58:TZRowAccessor
 004D2377    mov        edx,dword ptr [ebp-0C]
 004D237A    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 004D237D    ret
<004D237E    jmp        @HandleFinally
<004D2383    jmp        004D2371
 004D2385    xor        eax,eax
 004D2387    pop        edx
 004D2388    pop        ecx
 004D2389    pop        ecx
 004D238A    mov        dword ptr fs:[eax],edx
 004D238D    push       4D23B8
 004D2392    lea        eax,[ebp-18]
 004D2395    call       @IntfClear
 004D239A    lea        eax,[ebp-14]
 004D239D    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004D23A3    call       @DynArrayClear
 004D23A8    lea        eax,[ebp-10]
 004D23AB    call       @WStrClr
 004D23B0    ret
<004D23B1    jmp        @HandleFinally
<004D23B6    jmp        004D2392
 004D23B8    mov        al,byte ptr [ebp-5]
 004D23BB    pop        edi
 004D23BC    pop        esi
 004D23BD    pop        ebx
 004D23BE    mov        esp,ebp
 004D23C0    pop        ebp
 004D23C1    ret
*}
//end;

//004D23C4
procedure sub_004D23C4;
begin
{*
 004D23C4    push       ebp
 004D23C5    mov        ebp,esp
 004D23C7    push       ebx
 004D23C8    mov        ebx,eax
 004D23CA    mov        eax,ebx
 004D23CC    mov        edx,dword ptr [eax]
 004D23CE    call       dword ptr [edx+200]; TZCachedResultSet.sub_004D2000
 004D23D4    test       al,al
<004D23D6    jne        004D23CA
 004D23D8    pop        ebx
 004D23D9    pop        ebp
 004D23DA    ret
*}
end;

//004D23DC
procedure sub_004D23DC;
begin
{*
 004D23DC    push       ebp
 004D23DD    mov        ebp,esp
 004D23DF    add        esp,0FFFFFFF0
 004D23E2    push       ebx
 004D23E3    push       esi
 004D23E4    push       edi
 004D23E5    xor        edx,edx
 004D23E7    mov        dword ptr [ebp-10],edx
 004D23EA    mov        dword ptr [ebp-8],edx
 004D23ED    mov        dword ptr [ebp-4],eax
 004D23F0    xor        eax,eax
 004D23F2    push       ebp
 004D23F3    push       4D24E3
 004D23F8    push       dword ptr fs:[eax]
 004D23FB    mov        dword ptr fs:[eax],esp
 004D23FE    mov        eax,dword ptr [ebp-4]
 004D2401    mov        eax,dword ptr [eax+28]; TZCachedResultSet.?f28:dword
 004D2404    mov        edx,dword ptr [eax]
 004D2406    call       dword ptr [edx+8]
 004D2409    lea        edx,[ebp-8]
 004D240C    mov        eax,dword ptr [ebp-4]
 004D240F    mov        eax,dword ptr [eax+74]; TZCachedResultSet.?f74:IZResultSet
 004D2412    mov        ecx,dword ptr [eax]
 004D2414    call       dword ptr [ecx+0CC]
 004D241A    mov        eax,dword ptr [ebp-8]
 004D241D    mov        edx,dword ptr [eax]
 004D241F    call       dword ptr [edx+0C]
 004D2422    test       eax,eax
>004D2424    jle        004D24BD
 004D242A    mov        dword ptr [ebp-0C],eax
 004D242D    mov        esi,1
 004D2432    mov        dl,1
 004D2434    mov        eax,[004D5F00]; TZColumnInfo
 004D2439    call       TZColumnInfo.Create; TZColumnInfo.Create
 004D243E    mov        ebx,eax
 004D2440    mov        edx,esi
 004D2442    mov        eax,dword ptr [ebp-8]
 004D2445    mov        ecx,dword ptr [eax]
 004D2447    call       dword ptr [ecx+1C]
 004D244A    mov        byte ptr [ebx+7],al; TZColumnInfo.?f7:byte
 004D244D    mov        edx,esi
 004D244F    mov        eax,dword ptr [ebp-8]
 004D2452    mov        ecx,dword ptr [eax]
 004D2454    call       dword ptr [ecx+24]
 004D2457    mov        byte ptr [ebx+9],al; TZColumnInfo.?f9:byte
 004D245A    mov        edx,esi
 004D245C    mov        eax,dword ptr [ebp-8]
 004D245F    mov        ecx,dword ptr [eax]
 004D2461    call       dword ptr [ecx+28]
 004D2464    mov        dword ptr [ebx+0C],eax; TZColumnInfo.?fC:dword
 004D2467    lea        ecx,[ebp-10]
 004D246A    mov        edx,esi
 004D246C    mov        eax,dword ptr [ebp-8]
 004D246F    mov        edi,dword ptr [eax]
 004D2471    call       dword ptr [edi+2C]
 004D2474    mov        edx,dword ptr [ebp-10]
 004D2477    lea        eax,[ebx+10]; TZColumnInfo.?f10:String
 004D247A    call       @LStrAsg
 004D247F    mov        edx,esi
 004D2481    mov        eax,dword ptr [ebp-8]
 004D2484    mov        ecx,dword ptr [eax]
 004D2486    call       dword ptr [ecx+38]
 004D2489    mov        dword ptr [ebx+1C],eax; TZColumnInfo.?f1C:Integer
 004D248C    mov        edx,esi
 004D248E    mov        eax,dword ptr [ebp-8]
 004D2491    mov        ecx,dword ptr [eax]
 004D2493    call       dword ptr [ecx+3C]
 004D2496    mov        dword ptr [ebx+20],eax; TZColumnInfo.?f20:dword
 004D2499    mov        edx,esi
 004D249B    mov        eax,dword ptr [ebp-8]
 004D249E    mov        ecx,dword ptr [eax]
 004D24A0    call       dword ptr [ecx+48]
 004D24A3    mov        byte ptr [ebx+2C],al; TZColumnInfo.?f2C:byte
 004D24A6    mov        eax,dword ptr [ebp-4]
 004D24A9    mov        eax,dword ptr [eax+28]; TZCachedResultSet.?f28:dword
 004D24AC    mov        edx,ebx
 004D24AE    call       00433178
 004D24B3    inc        esi
 004D24B4    dec        dword ptr [ebp-0C]
<004D24B7    jne        004D2432
 004D24BD    mov        eax,dword ptr [ebp-4]
 004D24C0    call       004D0EC4
 004D24C5    xor        eax,eax
 004D24C7    pop        edx
 004D24C8    pop        ecx
 004D24C9    pop        ecx
 004D24CA    mov        dword ptr fs:[eax],edx
 004D24CD    push       4D24EA
 004D24D2    lea        eax,[ebp-10]
 004D24D5    call       @LStrClr
 004D24DA    lea        eax,[ebp-8]
 004D24DD    call       @IntfClear
 004D24E2    ret
<004D24E3    jmp        @HandleFinally
<004D24E8    jmp        004D24D2
 004D24EA    pop        edi
 004D24EB    pop        esi
 004D24EC    pop        ebx
 004D24ED    mov        esp,ebp
 004D24EF    pop        ebp
 004D24F0    ret
*}
end;

//004D24F4
procedure sub_004D24F4;
begin
{*
 004D24F4    push       ebp
 004D24F5    mov        ebp,esp
 004D24F7    push       ebx
 004D24F8    mov        ebx,eax
 004D24FA    mov        eax,ebx
 004D24FC    call       004D1014
 004D2501    mov        eax,dword ptr [ebx+28]; TZCachedResultSet.?f28:dword
 004D2504    mov        edx,dword ptr [eax]
 004D2506    call       dword ptr [edx+8]
 004D2509    lea        eax,[ebx+74]; TZCachedResultSet.?f74:IZResultSet
 004D250C    call       @IntfClear
 004D2511    pop        ebx
 004D2512    pop        ebp
 004D2513    ret
*}
end;

//004D2514
//procedure sub_004D2514(?:?);
//begin
{*
 004D2514    push       ebp
 004D2515    mov        ebp,esp
 004D2517    push       ebx
 004D2518    push       esi
 004D2519    mov        esi,edx
 004D251B    mov        ebx,eax
 004D251D    mov        edx,esi
 004D251F    mov        eax,dword ptr [ebx+74]; TZCachedResultSet.?f74:IZResultSet
 004D2522    mov        ecx,dword ptr [eax]
 004D2524    call       dword ptr [ecx+0CC]
 004D252A    pop        esi
 004D252B    pop        ebx
 004D252C    pop        ebp
 004D252D    ret
*}
//end;

//004D2530
procedure sub_004D2530;
begin
{*
 004D2530    push       ebp
 004D2531    mov        ebp,esp
 004D2533    push       ebx
 004D2534    mov        ebx,eax
 004D2536    mov        eax,ebx
 004D2538    mov        edx,dword ptr [eax]
 004D253A    call       dword ptr [edx+204]; TZCachedResultSet.sub_004D23C4
 004D2540    mov        eax,ebx
 004D2542    call       004D5024
 004D2547    pop        ebx
 004D2548    pop        ebp
 004D2549    ret
*}
end;

//004D254C
procedure sub_004D254C;
begin
{*
 004D254C    push       ebp
 004D254D    mov        ebp,esp
 004D254F    push       ebx
 004D2550    mov        ebx,eax
 004D2552    mov        eax,ebx
 004D2554    mov        edx,dword ptr [eax]
 004D2556    call       dword ptr [edx+204]; TZCachedResultSet.sub_004D23C4
 004D255C    mov        eax,ebx
 004D255E    call       004D5054
 004D2563    pop        ebx
 004D2564    pop        ebp
 004D2565    ret
*}
end;

//004D2568
procedure sub_004D2568;
begin
{*
 004D2568    push       ebp
 004D2569    mov        ebp,esp
 004D256B    push       ebx
 004D256C    mov        ebx,eax
 004D256E    mov        eax,ebx
 004D2570    mov        edx,dword ptr [eax]
 004D2572    call       dword ptr [edx+204]; TZCachedResultSet.sub_004D23C4
 004D2578    mov        eax,ebx
 004D257A    call       004D5038
 004D257F    pop        ebx
 004D2580    pop        ebp
 004D2581    ret
*}
end;

//004D2584
procedure sub_004D2584;
begin
{*
 004D2584    push       ebp
 004D2585    mov        ebp,esp
 004D2587    push       ebx
 004D2588    mov        ebx,eax
 004D258A    mov        eax,ebx
 004D258C    mov        edx,dword ptr [eax]
 004D258E    call       dword ptr [edx+204]; TZCachedResultSet.sub_004D23C4
 004D2594    mov        eax,ebx
 004D2596    call       004D5084
 004D259B    pop        ebx
 004D259C    pop        ebp
 004D259D    ret
*}
end;

//004D25A0
//procedure sub_004D25A0(?:?);
//begin
{*
 004D25A0    push       ebp
 004D25A1    mov        ebp,esp
 004D25A3    push       ebx
 004D25A4    push       esi
 004D25A5    mov        esi,edx
 004D25A7    mov        ebx,eax
 004D25A9    xor        eax,eax
 004D25AB    mov        edx,dword ptr [ebx+18]; TZCachedResultSet.?f18:dword
 004D25AE    test       edx,edx
>004D25B0    jle        004D25B6
 004D25B2    cmp        edx,esi
>004D25B4    jl         004D2600
 004D25B6    test       esi,esi
>004D25B8    jge        004D25E4
 004D25BA    mov        eax,ebx
 004D25BC    mov        edx,dword ptr [eax]
 004D25BE    call       dword ptr [edx+204]; TZCachedResultSet.sub_004D23C4
 004D25C4    mov        eax,dword ptr [ebx+14]; TZCachedResultSet.?f14:Integer
 004D25C7    sub        eax,esi
>004D25C9    jno        004D25D0
 004D25CB    call       @IntOver
 004D25D0    add        eax,1
>004D25D3    jno        004D25DA
 004D25D5    call       @IntOver
 004D25DA    mov        esi,eax
 004D25DC    test       esi,esi
>004D25DE    jge        004D25F7
 004D25E0    xor        esi,esi
>004D25E2    jmp        004D25F7
 004D25E4    cmp        esi,dword ptr [ebx+14]; TZCachedResultSet.?f14:Integer
>004D25E7    jle        004D25F7
 004D25E9    mov        eax,ebx
 004D25EB    mov        edx,dword ptr [eax]
 004D25ED    call       dword ptr [edx+200]; TZCachedResultSet.sub_004D2000
 004D25F3    test       al,al
<004D25F5    jne        004D25E4
 004D25F7    mov        edx,esi
 004D25F9    mov        eax,ebx
 004D25FB    call       004D1724
 004D2600    pop        esi
 004D2601    pop        ebx
 004D2602    pop        ebp
 004D2603    ret
*}
//end;

end.