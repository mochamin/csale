{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvDriverDataView;

interface

uses
  Classes, Windows, Graphics, RvData, RvDatabase, _Unit94;

type
  TRaveDriverDataView = class(TRaveBaseDataView)
  public
    fA4:byte;//fA4
    Database:TRaveDatabase;//fA8
    fAC:dword;//fAC
    fB0:TDataResultSet;//fB0
    fB4:String;//fB4
    fB8:String;//fB8
    destructor Destroy; virtual;
    //procedure sub_005C19F8(?:?; ?:?); virtual;
    procedure sub_005C1B94; virtual;
    procedure sub_005C185C; virtual;
    //procedure sub_005C1A34(?:?); virtual;
    //procedure sub_005C18B0(?:?); virtual;
    procedure sub_005C1E14; virtual;
    procedure sub_005C1E30(); virtual;
  end;

implementation

{$R *.DFM}

//005C17A8
procedure sub_005C17A8;
begin
{*
 005C17A8    push       ebp
 005C17A9    mov        ebp,esp
 005C17AB    add        esp,0FFFFFFF8
 005C17AE    push       ebx
 005C17AF    xor        eax,eax
 005C17B1    mov        dword ptr [ebp-8],eax
 005C17B4    xor        eax,eax
 005C17B6    push       ebp
 005C17B7    push       5C1823
 005C17BC    push       dword ptr fs:[eax]
 005C17BF    mov        dword ptr fs:[eax],esp
 005C17C2    mov        eax,[005C1568]; TRaveDriverDataView
 005C17C7    mov        dword ptr [ebp-4],eax
 005C17CA    lea        edx,[ebp-4]
 005C17CD    xor        ecx,ecx
 005C17CF    xor        eax,eax
 005C17D1    call       005A7F48
 005C17D6    mov        eax,[005C1568]; TRaveDriverDataView
 005C17DB    mov        dword ptr [ebp-4],eax
 005C17DE    lea        edx,[ebp-4]
 005C17E1    xor        ecx,ecx
 005C17E3    mov        eax,5C1838; 'RvData'
 005C17E8    call       005A7FBC
 005C17ED    mov        ebx,dword ptr ds:[61B830]
 005C17F3    mov        ebx,dword ptr [ebx]
 005C17F5    lea        edx,[ebp-8]
 005C17F8    mov        eax,5C1848; 'Driver Data View'
 005C17FD    call       ebx
 005C17FF    mov        eax,dword ptr [ebp-8]
 005C1802    mov        edx,dword ptr ds:[5C1568]; TRaveDriverDataView
 005C1808    call       005A80C0
 005C180D    xor        eax,eax
 005C180F    pop        edx
 005C1810    pop        ecx
 005C1811    pop        ecx
 005C1812    mov        dword ptr fs:[eax],edx
 005C1815    push       5C182A
 005C181A    lea        eax,[ebp-8]
 005C181D    call       @LStrClr
 005C1822    ret
<005C1823    jmp        @HandleFinally
<005C1828    jmp        005C181A
 005C182A    pop        ebx
 005C182B    pop        ecx
 005C182C    pop        ecx
 005C182D    pop        ebp
 005C182E    ret
*}
end;

//005C185C
procedure sub_005C185C;
begin
{*
 005C185C    push       ebx
 005C185D    mov        ebx,eax
 005C185F    cmp        byte ptr [ebx+0A4],0; TRaveDriverDataView.?fA4:byte
>005C1866    je         005C18AD
 005C1868    mov        eax,dword ptr [ebx+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C186E    call       TObject.Free
 005C1873    mov        edx,dword ptr [ebx+0AC]; TRaveDriverDataView.?fAC:dword
 005C1879    mov        eax,dword ptr [ebx+0A8]; TRaveDriverDataView.Database:TRaveDatabase
 005C187F    call       005C13D4
 005C1884    mov        eax,dword ptr [ebx+0A8]; TRaveDriverDataView.Database:TRaveDatabase
 005C188A    mov        edx,dword ptr [eax]
 005C188C    call       dword ptr [edx+0E0]; TRaveDatabase.sub_005AB4BC
 005C1892    xor        eax,eax
 005C1894    mov        dword ptr [ebx+0B0],eax; TRaveDriverDataView.?fB0:TDataResultSet
 005C189A    xor        eax,eax
 005C189C    mov        dword ptr [ebx+0AC],eax; TRaveDriverDataView.?fAC:dword
 005C18A2    mov        byte ptr [ebx+7C],0; TRaveDriverDataView.?f7C:byte
 005C18A6    mov        byte ptr [ebx+0A4],0; TRaveDriverDataView.?fA4:byte
 005C18AD    pop        ebx
 005C18AE    ret
*}
end;

//005C18B0
//procedure sub_005C18B0(?:?);
//begin
{*
 005C18B0    push       ebp
 005C18B1    mov        ebp,esp
 005C18B3    add        esp,0FFFFFFF8
 005C18B6    push       ebx
 005C18B7    push       esi
 005C18B8    push       edi
 005C18B9    mov        dword ptr [ebp-8],edx
 005C18BC    mov        dword ptr [ebp-4],eax
 005C18BF    mov        eax,dword ptr [ebp-4]
 005C18C2    mov        edx,dword ptr [eax]
 005C18C4    call       dword ptr [edx+0DC]; TRaveDriverDataView.sub_005C1B94
 005C18CA    xor        eax,eax
 005C18CC    push       ebp
 005C18CD    push       5C19B9
 005C18D2    push       dword ptr fs:[eax]
 005C18D5    mov        dword ptr fs:[eax],esp
 005C18D8    mov        eax,dword ptr [ebp-4]
 005C18DB    mov        eax,dword ptr [eax+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C18E1    call       005BFB70
 005C18E6    mov        edi,eax
 005C18E8    dec        edi
 005C18E9    test       edi,edi
>005C18EB    jl         005C19A0
 005C18F1    inc        edi
 005C18F2    xor        esi,esi
 005C18F4    mov        dl,1
 005C18F6    mov        eax,[0059FBA8]; TRaveDataFieldInfo
 005C18FB    call       TObject.Create; TRaveDataFieldInfo.Create
 005C1900    mov        ebx,eax
 005C1902    mov        eax,dword ptr [ebp-4]
 005C1905    mov        eax,dword ptr [eax+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C190B    mov        eax,dword ptr [eax+10]; TDataResultSet.?f10:TResultSetFieldList
 005C190E    mov        edx,esi
 005C1910    call       005BFA68
 005C1915    mov        edx,dword ptr [eax+4]
 005C1918    lea        eax,[ebx+4]; TRaveDataFieldInfo.?f4:String
 005C191B    call       @LStrAsg
 005C1920    mov        eax,dword ptr [ebp-4]
 005C1923    mov        eax,dword ptr [eax+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C1929    mov        eax,dword ptr [eax+10]; TDataResultSet.?f10:TResultSetFieldList
 005C192C    mov        edx,esi
 005C192E    call       005BFA68
 005C1933    mov        al,byte ptr [eax+8]
 005C1936    mov        byte ptr [ebx+8],al; TRaveDataFieldInfo.?f8:byte
 005C1939    mov        eax,dword ptr [ebp-4]
 005C193C    mov        eax,dword ptr [eax+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C1942    mov        eax,dword ptr [eax+10]; TDataResultSet.?f10:TResultSetFieldList
 005C1945    mov        edx,esi
 005C1947    call       005BFA68
 005C194C    mov        eax,dword ptr [eax+0C]
 005C194F    mov        dword ptr [ebx+0C],eax; TRaveDataFieldInfo.?fC:dword
 005C1952    mov        eax,dword ptr [ebp-4]
 005C1955    mov        eax,dword ptr [eax+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C195B    mov        eax,dword ptr [eax+10]; TDataResultSet.?f10:TResultSetFieldList
 005C195E    mov        edx,esi
 005C1960    call       005BFA68
 005C1965    mov        edx,dword ptr [eax+10]
 005C1968    lea        eax,[ebx+10]; TRaveDataFieldInfo.?f10:String
 005C196B    call       @LStrAsg
 005C1970    mov        eax,dword ptr [ebp-4]
 005C1973    mov        eax,dword ptr [eax+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C1979    mov        eax,dword ptr [eax+10]; TDataResultSet.?f10:TResultSetFieldList
 005C197C    mov        edx,esi
 005C197E    call       005BFA68
 005C1983    mov        edx,dword ptr [eax+14]
 005C1986    lea        eax,[ebx+14]; TRaveDataFieldInfo.?f14:String
 005C1989    call       @LStrAsg
 005C198E    mov        edx,ebx
 005C1990    mov        eax,dword ptr [ebp-8]
 005C1993    call       TList.Add
 005C1998    inc        esi
 005C1999    dec        edi
<005C199A    jne        005C18F4
 005C19A0    xor        eax,eax
 005C19A2    pop        edx
 005C19A3    pop        ecx
 005C19A4    pop        ecx
 005C19A5    mov        dword ptr fs:[eax],edx
 005C19A8    push       5C19C0
 005C19AD    mov        eax,dword ptr [ebp-4]
 005C19B0    mov        edx,dword ptr [eax]
 005C19B2    call       dword ptr [edx+0E0]; TRaveDriverDataView.sub_005C185C
 005C19B8    ret
<005C19B9    jmp        @HandleFinally
<005C19BE    jmp        005C19AD
 005C19C0    pop        edi
 005C19C1    pop        esi
 005C19C2    pop        ebx
 005C19C3    pop        ecx
 005C19C4    pop        ecx
 005C19C5    pop        ebp
 005C19C6    ret
*}
//end;

//005C19C8
destructor TRaveDriverDataView.Destroy;
begin
{*
 005C19C8    push       ebx
 005C19C9    push       esi
 005C19CA    call       @BeforeDestruction
 005C19CF    mov        ebx,edx
 005C19D1    mov        esi,eax
 005C19D3    mov        eax,esi
 005C19D5    mov        edx,dword ptr [eax]
 005C19D7    call       dword ptr [edx+0E0]; TRaveDriverDataView.sub_005C185C
 005C19DD    mov        edx,ebx
 005C19DF    and        dl,0FC
 005C19E2    mov        eax,esi
 005C19E4    call       TRaveBaseDataView.Destroy
 005C19E9    test       bl,bl
>005C19EB    jle        005C19F4
 005C19ED    mov        eax,esi
 005C19EF    call       @ClassDestroy
 005C19F4    pop        esi
 005C19F5    pop        ebx
 005C19F6    ret
*}
end;

//005C19F8
//procedure sub_005C19F8(?:?; ?:?);
//begin
{*
 005C19F8    push       ebx
 005C19F9    push       esi
 005C19FA    push       edi
 005C19FB    mov        edi,ecx
 005C19FD    mov        esi,edx
 005C19FF    mov        ebx,eax
 005C1A01    mov        ecx,edi
 005C1A03    mov        edx,esi
 005C1A05    mov        eax,ebx
 005C1A07    call       005AB60C
 005C1A0C    mov        eax,dword ptr [ebx+0A8]; TRaveDriverDataView.Database:TRaveDatabase
 005C1A12    test       eax,eax
>005C1A14    je         005C1A2D
 005C1A16    cmp        eax,esi
>005C1A18    jne        005C1A2D
 005C1A1A    mov        eax,edi
 005C1A1C    mov        edx,dword ptr ds:[5C0CB4]; TRaveDatabase
 005C1A22    call       @AsClass
 005C1A27    mov        dword ptr [ebx+0A8],eax; TRaveDriverDataView.Database:TRaveDatabase
 005C1A2D    pop        edi
 005C1A2E    pop        esi
 005C1A2F    pop        ebx
 005C1A30    ret
*}
//end;

//005C1A34
//procedure sub_005C1A34(?:?);
//begin
{*
 005C1A34    push       ebx
 005C1A35    push       esi
 005C1A36    push       edi
 005C1A37    add        esp,0FFFFFFF8
 005C1A3A    mov        edi,edx
 005C1A3C    mov        esi,eax
 005C1A3E    cmp        byte ptr [esi+7C],0; TRaveDriverDataView.?f7C:byte
>005C1A42    je         005C1B00
 005C1A48    mov        eax,edi
 005C1A4A    dec        eax
>005C1A4B    je         005C1A52
 005C1A4D    dec        eax
>005C1A4E    je         005C1A5F
>005C1A50    jmp        005C1A6A
 005C1A52    mov        eax,dword ptr [esi+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C1A58    call       005BFB58
>005C1A5D    jmp        005C1A6A
 005C1A5F    mov        eax,dword ptr [esi+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C1A65    call       005BFBB0
 005C1A6A    mov        eax,dword ptr [esi+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C1A70    call       005BFB30
 005C1A75    mov        ebx,eax
 005C1A77    mov        byte ptr [esi+85],bl; TRaveDriverDataView.?f85:byte
 005C1A7D    test       bl,bl
>005C1A7F    je         005C1AA8
 005C1A81    cmp        byte ptr [esi+84],0; TRaveDriverDataView.?f84:byte
>005C1A88    je         005C1B0E
 005C1A8E    dec        edi
>005C1A8F    jne        005C1A9C
 005C1A91    mov        byte ptr [esi+7D],1; TRaveDriverDataView.?f7D:byte
 005C1A95    mov        eax,esi
 005C1A97    call       005A09E8
 005C1A9C    mov        eax,dword ptr [esi+90]; TRaveDriverDataView.?f90:TRaveDataRow
 005C1AA2    mov        byte ptr [eax+0C],2; TRaveDataRow.?fC:byte
>005C1AA6    jmp        005C1B0E
 005C1AA8    lea        ecx,[esp+4]
 005C1AAC    mov        edx,esp
 005C1AAE    mov        eax,dword ptr [esi+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C1AB4    call       005BFB7C
 005C1AB9    cmp        byte ptr [esi+84],0; TRaveDriverDataView.?f84:byte
>005C1AC0    je         005C1ADE
 005C1AC2    mov        eax,esi
 005C1AC4    call       005A09E8
 005C1AC9    dec        edi
>005C1ACA    jne        005C1AD6
 005C1ACC    mov        eax,dword ptr [esi+90]; TRaveDriverDataView.?f90:TRaveDataRow
 005C1AD2    mov        byte ptr [eax+0C],0; TRaveDataRow.?fC:byte
 005C1AD6    mov        ebx,dword ptr [esi+90]; TRaveDriverDataView.?f90:TRaveDataRow
>005C1ADC    jmp        005C1AE4
 005C1ADE    mov        ebx,dword ptr [esi+88]; TRaveDriverDataView.?f88:TRaveDataRow
 005C1AE4    mov        edx,dword ptr [esp+4]
 005C1AE8    mov        eax,ebx
 005C1AEA    call       0059EA08
 005C1AEF    mov        edx,dword ptr [ebx+4]; TRaveDataRow.?f4:dword
 005C1AF2    mov        eax,dword ptr [esp]
 005C1AF5    mov        ecx,dword ptr [esp+4]
 005C1AF9    call       Move
>005C1AFE    jmp        005C1B0E
 005C1B00    mov        byte ptr [esi+85],1; TRaveDriverDataView.?f85:byte
 005C1B07    mov        eax,esi
 005C1B09    call       005A54D8
 005C1B0E    pop        ecx
 005C1B0F    pop        edx
 005C1B10    pop        edi
 005C1B11    pop        esi
 005C1B12    pop        ebx
 005C1B13    ret
*}
//end;

//005C1B14
//function sub_005C1B14(?:TRaveDriverDataView; ?:AnsiString):?;
//begin
{*
 005C1B14    push       ebp
 005C1B15    mov        ebp,esp
 005C1B17    add        esp,0FFFFFFF8
 005C1B1A    push       ebx
 005C1B1B    push       esi
 005C1B1C    push       edi
 005C1B1D    mov        dword ptr [ebp-8],edx
 005C1B20    mov        dword ptr [ebp-4],eax
 005C1B23    mov        eax,dword ptr [ebp-8]
 005C1B26    call       @LStrAddRef
 005C1B2B    xor        eax,eax
 005C1B2D    push       ebp
 005C1B2E    push       5C1B82
 005C1B33    push       dword ptr fs:[eax]
 005C1B36    mov        dword ptr fs:[eax],esp
 005C1B39    mov        eax,dword ptr [ebp-4]
 005C1B3C    mov        edx,dword ptr [eax]
 005C1B3E    call       dword ptr [edx+54]; TRaveDriverDataView.sub_005AB0D4
 005C1B41    mov        ebx,eax
 005C1B43    dec        ebx
 005C1B44    test       ebx,ebx
>005C1B46    jl         005C1B6A
 005C1B48    inc        ebx
 005C1B49    xor        edi,edi
 005C1B4B    mov        edx,edi
 005C1B4D    mov        eax,dword ptr [ebp-4]
 005C1B50    mov        ecx,dword ptr [eax]
 005C1B52    call       dword ptr [ecx+50]; TRaveDriverDataView.sub_005AB0E4
 005C1B55    mov        esi,eax
 005C1B57    mov        eax,dword ptr [esi+64]
 005C1B5A    mov        edx,dword ptr [ebp-8]
 005C1B5D    call       CompareText
 005C1B62    test       eax,eax
>005C1B64    je         005C1B6C
 005C1B66    inc        edi
 005C1B67    dec        ebx
<005C1B68    jne        005C1B4B
 005C1B6A    xor        esi,esi
 005C1B6C    xor        eax,eax
 005C1B6E    pop        edx
 005C1B6F    pop        ecx
 005C1B70    pop        ecx
 005C1B71    mov        dword ptr fs:[eax],edx
 005C1B74    push       5C1B89
 005C1B79    lea        eax,[ebp-8]
 005C1B7C    call       @LStrClr
 005C1B81    ret
<005C1B82    jmp        @HandleFinally
<005C1B87    jmp        005C1B79
 005C1B89    mov        eax,esi
 005C1B8B    pop        edi
 005C1B8C    pop        esi
 005C1B8D    pop        ebx
 005C1B8E    pop        ecx
 005C1B8F    pop        ecx
 005C1B90    pop        ebp
 005C1B91    ret
*}
//end;

//005C1B94
procedure sub_005C1B94;
begin
{*
 005C1B94    push       ebp
 005C1B95    mov        ebp,esp
 005C1B97    add        esp,0FFFFFFBC
 005C1B9A    push       ebx
 005C1B9B    push       esi
 005C1B9C    push       edi
 005C1B9D    xor        edx,edx
 005C1B9F    mov        dword ptr [ebp-44],edx
 005C1BA2    mov        dword ptr [ebp-14],edx
 005C1BA5    mov        dword ptr [ebp-18],edx
 005C1BA8    mov        dword ptr [ebp-3C],edx
 005C1BAB    mov        dword ptr [ebp-40],edx
 005C1BAE    mov        dword ptr [ebp-10],edx
 005C1BB1    mov        ebx,eax
 005C1BB3    xor        eax,eax
 005C1BB5    push       ebp
 005C1BB6    push       5C1DA1
 005C1BBB    push       dword ptr fs:[eax]
 005C1BBE    mov        dword ptr fs:[eax],esp
 005C1BC1    cmp        byte ptr [ebx+0A4],0; TRaveDriverDataView.?fA4:byte
>005C1BC8    jne        005C1D79
 005C1BCE    cmp        dword ptr [ebx+0A8],0; TRaveDriverDataView.Database:TRaveDatabase
>005C1BD5    jne        005C1BED
 005C1BD7    mov        ecx,5C1DB8; 'Database is nil.'
 005C1BDC    mov        dl,1
 005C1BDE    mov        eax,[004087B0]; Exception
 005C1BE3    call       Exception.Create; Exception.Create
 005C1BE8    call       @RaiseExcept
 005C1BED    mov        eax,dword ptr [ebx+0A8]; TRaveDriverDataView.Database:TRaveDatabase
 005C1BF3    mov        edx,dword ptr [eax]
 005C1BF5    call       dword ptr [edx+0DC]; TRaveDatabase.sub_005AB4A8
 005C1BFB    mov        eax,dword ptr [ebx+0A8]; TRaveDriverDataView.Database:TRaveDatabase
 005C1C01    call       005C12E8
 005C1C06    mov        esi,eax
 005C1C08    mov        dword ptr [ebx+0AC],esi; TRaveDriverDataView.?fAC:dword
 005C1C0E    mov        ecx,esi
 005C1C10    mov        dl,1
 005C1C12    mov        eax,[005BF7B0]; TDataResultSet
 005C1C17    call       TDataResultSet.Create; TDataResultSet.Create
 005C1C1C    mov        edi,eax
 005C1C1E    mov        dword ptr [ebx+0B0],edi; TRaveDriverDataView.?fB0:TDataResultSet
 005C1C24    lea        eax,[edi+8]; TDataResultSet.?f8:String
 005C1C27    mov        edx,dword ptr [ebx+0B4]; TRaveDriverDataView.?fB4:String
 005C1C2D    call       @LStrAsg
 005C1C32    mov        eax,dword ptr [ebx+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C1C38    call       005BFBC8
 005C1C3D    mov        eax,dword ptr [ebx+80]; TRaveDriverDataView.?f80:TStringList
 005C1C43    mov        edx,dword ptr [eax]
 005C1C45    call       dword ptr [edx+44]; TStringList.Clear
 005C1C48    mov        eax,dword ptr [ebx+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C1C4E    call       005BFB70
 005C1C53    dec        eax
 005C1C54    test       eax,eax
>005C1C56    jl         005C1D6E
 005C1C5C    inc        eax
 005C1C5D    mov        dword ptr [ebp-0C],eax
 005C1C60    mov        dword ptr [ebp-8],0
 005C1C67    mov        eax,dword ptr [ebx+0B0]; TRaveDriverDataView.?fB0:TDataResultSet
 005C1C6D    mov        eax,dword ptr [eax+10]; TDataResultSet.?f10:TResultSetFieldList
 005C1C70    mov        edx,dword ptr [ebp-8]
 005C1C73    call       005BFA68
 005C1C78    mov        dword ptr [ebp-4],eax
 005C1C7B    lea        edx,[ebp-10]
 005C1C7E    mov        eax,dword ptr [ebp-4]
 005C1C81    mov        eax,dword ptr [eax+4]
 005C1C84    call       005A5700
 005C1C89    mov        edx,dword ptr [ebp-10]
 005C1C8C    mov        eax,ebx
 005C1C8E    call       005C1B14
 005C1C93    mov        esi,eax
 005C1C95    cmp        dword ptr [ebp-8],0
 005C1C99    test       esi,esi
>005C1C9B    je         005C1D44
 005C1CA1    mov        eax,esi
 005C1CA3    mov        edx,dword ptr [eax]
 005C1CA5    call       dword ptr [edx+0D4]
 005C1CAB    mov        edx,dword ptr [ebp-4]
 005C1CAE    cmp        al,byte ptr [edx+8]
>005C1CB1    jne        005C1CBE
 005C1CB3    mov        eax,dword ptr [ebp-8]
 005C1CB6    mov        dword ptr [esi+5C],eax
>005C1CB9    jmp        005C1D44
 005C1CBE    lea        eax,[ebp-18]
 005C1CC1    push       eax
 005C1CC2    mov        eax,dword ptr [ebx+8]; TRaveDriverDataView.?f8:TComponentName
 005C1CC5    mov        dword ptr [ebp-38],eax
 005C1CC8    mov        byte ptr [ebp-34],0B
 005C1CCC    mov        eax,dword ptr [esi+64]
 005C1CCF    mov        dword ptr [ebp-30],eax
 005C1CD2    mov        byte ptr [ebp-2C],0B
 005C1CD6    mov        eax,esi
 005C1CD8    mov        edx,dword ptr [eax]
 005C1CDA    call       dword ptr [edx+0D4]
 005C1CE0    xor        edx,edx
 005C1CE2    mov        dl,al
 005C1CE4    lea        ecx,[ebp-3C]
 005C1CE7    mov        eax,[00579448]; TRPDataType
 005C1CEC    call       GetEnumName
 005C1CF1    mov        eax,dword ptr [ebp-3C]
 005C1CF4    mov        dword ptr [ebp-28],eax
 005C1CF7    mov        byte ptr [ebp-24],0B
 005C1CFB    lea        ecx,[ebp-40]
 005C1CFE    mov        eax,dword ptr [ebp-4]
 005C1D01    xor        edx,edx
 005C1D03    mov        dl,byte ptr [eax+8]
 005C1D06    mov        eax,[00579448]; TRPDataType
 005C1D0B    call       GetEnumName
 005C1D10    mov        eax,dword ptr [ebp-40]
 005C1D13    mov        dword ptr [ebp-20],eax
 005C1D16    mov        byte ptr [ebp-1C],0B
 005C1D1A    lea        edx,[ebp-38]
 005C1D1D    mov        ecx,3
 005C1D22    mov        eax,5C1DD4; 'Field %0:s:%1:s.  Datatype expected: %2:s  Datatype found: %3:s'
 005C1D27    call       Format
 005C1D2C    mov        eax,dword ptr [ebp-18]
 005C1D2F    mov        edi,dword ptr ds:[61B830]
 005C1D35    mov        edi,dword ptr [edi]
 005C1D37    lea        edx,[ebp-14]
 005C1D3A    call       edi
 005C1D3C    mov        eax,dword ptr [ebp-14]
 005C1D3F    call       005998CC
 005C1D44    lea        edx,[ebp-44]
 005C1D47    mov        eax,dword ptr [ebp-4]
 005C1D4A    mov        eax,dword ptr [eax+4]
 005C1D4D    call       005A564C
 005C1D52    mov        edx,dword ptr [ebp-44]
 005C1D55    mov        ecx,esi
 005C1D57    mov        eax,dword ptr [ebx+80]; TRaveDriverDataView.?f80:TStringList
 005C1D5D    mov        esi,dword ptr [eax]
 005C1D5F    call       dword ptr [esi+3C]; TStringList.AddObject
 005C1D62    inc        dword ptr [ebp-8]
 005C1D65    dec        dword ptr [ebp-0C]
<005C1D68    jne        005C1C67
 005C1D6E    mov        byte ptr [ebx+7C],1; TRaveDriverDataView.?f7C:byte
 005C1D72    mov        byte ptr [ebx+0A4],1; TRaveDriverDataView.?fA4:byte
 005C1D79    xor        eax,eax
 005C1D7B    pop        edx
 005C1D7C    pop        ecx
 005C1D7D    pop        ecx
 005C1D7E    mov        dword ptr fs:[eax],edx
 005C1D81    push       5C1DA8
 005C1D86    lea        eax,[ebp-44]
 005C1D89    mov        edx,3
 005C1D8E    call       @LStrArrayClr
 005C1D93    lea        eax,[ebp-18]
 005C1D96    mov        edx,3
 005C1D9B    call       @LStrArrayClr
 005C1DA0    ret
<005C1DA1    jmp        @HandleFinally
<005C1DA6    jmp        005C1D86
 005C1DA8    pop        edi
 005C1DA9    pop        esi
 005C1DAA    pop        ebx
 005C1DAB    mov        esp,ebp
 005C1DAD    pop        ebp
 005C1DAE    ret
*}
end;

//005C1E14
procedure sub_005C1E14;
begin
{*
 005C1E14    push       ebx
 005C1E15    mov        ebx,eax
 005C1E17    mov        eax,ebx
 005C1E19    mov        edx,dword ptr [eax]
 005C1E1B    call       dword ptr [edx+0E0]; TRaveDriverDataView.sub_005C185C
 005C1E21    mov        eax,ebx
 005C1E23    mov        edx,dword ptr [eax]
 005C1E25    call       dword ptr [edx+0DC]; TRaveDriverDataView.sub_005C1B94
 005C1E2B    pop        ebx
 005C1E2C    ret
*}
end;

//005C1E30
procedure sub_005C1E30();
begin
{*
 005C1E30    mov        ecx,5C1E50; 'SetRemoteSort not supported.'
 005C1E35    mov        dl,1
 005C1E37    mov        eax,[004087B0]; Exception
 005C1E3C    call       Exception.Create; Exception.Create
 005C1E41    call       @RaiseExcept
 005C1E46    ret
*}
end;

Initialization
//005C1EA0
{*
 005C1EA0    sub        dword ptr ds:[61F8B0],1
>005C1EA7    jae        005C1EB8
 005C1EA9    mov        edx,5C17A8; sub_005C17A8
 005C1EAE    mov        eax,5C1EC4; 'RVCL'
 005C1EB3    call       005A7E10
 005C1EB8    ret
*}
Finalization
end.