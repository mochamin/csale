{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit219;

interface

uses
  Classes, Windows, Graphics, ZDbcStatement, ZDbcDbLib, ZPlainDbLibDriver, ZClasses, ZDbcIntfs;

type
  TZDBLibStatement = class(TZAbstractStatement)
  public
    f48:String;//f48
    f4C:IZDBLibConnection;//f4C
    f50:IZDBLibPlainDriver;//f50
    f54:dword;//f54
    f58:IZCollection;//f58
    f5C:IZResultSet;//f5C
    f60:dword;//f60
    destructor Destroy; virtual;
    //procedure sub_004F208C(?:?; ?:?); virtual;
    //function sub_004F2118(?:?):?; virtual;
    //function sub_004F2154(?:?):?; virtual;
    //function sub_004F1C60:?; virtual;
    //procedure sub_004F1A7C(?:?); virtual;
    procedure sub_004F1DB0; virtual;
    //constructor Create(?:TZDBLibStatement; _Dv__:Boolean; ?:?);
  end;
  TZDBLibPreparedStatementEmulated = class(TZEmulatedPreparedStatement)
  public
    //procedure sub_004F2294(?:?); virtual;
    //procedure sub_004F22A4(?:?); virtual;
    //procedure sub_004F2234(?:?; ?:?); virtual;
    //constructor Create(?:TZDBLibPreparedStatementEmulated; _Dv__:Boolean; ?:?; ?:?);
  end;
  TZDBLibCallableStatement = class(TZAbstractCallableStatement)
  public
    f78:String;//f78
    f7C:IZDBLibConnection;//f7C
    f80:IZDBLibPlainDriver;//f80
    f84:dword;//f84
    f88:IZCollection;//f88
    f8C:dword;//f8C
    f90:IZResultSet;//f90
    f94:dword;//f94
    //function sub_004F26EC:?; virtual;
    //procedure sub_004F35F8(?:?); virtual;
    //procedure sub_004F2858(?:?); virtual;
    //function sub_004F28A0:?; virtual;
    //function sub_004F2930:?; virtual;
    //procedure sub_004F28E0(?:?; ?:?); virtual;
    procedure sub_004F23F0; virtual;
    procedure sub_004F2588; virtual;
    //constructor Create(?:TZDBLibCallableStatement; _Dv__:Boolean; ?:?; ?:?);
  end;
  TZUpdateCount = class(TInterfacedObject)
  public
    fC:dword;//fC
    //procedure sub_004F1940(?:?); virtual;
    //function sub_004F1944:?; virtual;
    //constructor Create(?:TZUpdateCount; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//004F1900
//constructor TZUpdateCount.Create(?:TZUpdateCount; _Dv__:Boolean);
//begin
{*
 004F1900    push       ebp
 004F1901    mov        ebp,esp
 004F1903    push       ebx
 004F1904    push       esi
 004F1905    push       edi
 004F1906    test       dl,dl
>004F1908    je         004F1912
 004F190A    add        esp,0FFFFFFF0
 004F190D    call       @ClassCreate
 004F1912    mov        esi,ecx
 004F1914    mov        ebx,edx
 004F1916    mov        edi,eax
 004F1918    xor        edx,edx
 004F191A    mov        eax,edi
 004F191C    call       TObject.Create
 004F1921    mov        dword ptr [edi+0C],esi; TZUpdateCount.?fC:dword
 004F1924    mov        eax,edi
 004F1926    test       bl,bl
>004F1928    je         004F1939
 004F192A    call       @AfterConstruction
 004F192F    pop        dword ptr fs:[0]
 004F1936    add        esp,0C
 004F1939    mov        eax,edi
 004F193B    pop        edi
 004F193C    pop        esi
 004F193D    pop        ebx
 004F193E    pop        ebp
 004F193F    ret
*}
//end;

//004F1940
//procedure sub_004F1940(?:?);
//begin
{*
 004F1940    mov        dword ptr [eax+0C],edx; TZUpdateCount.?fC:dword
 004F1943    ret
*}
//end;

//004F1944
//function sub_004F1944:?;
//begin
{*
 004F1944    mov        eax,dword ptr [eax+0C]; TZUpdateCount.?fC:dword
 004F1947    ret
*}
//end;

//004F1948
//constructor TZDBLibStatement.Create(?:TZDBLibStatement; _Dv__:Boolean; ?:?);
//begin
{*
 004F1948    push       ebp
 004F1949    mov        ebp,esp
 004F194B    add        esp,0FFFFFFF8
 004F194E    push       ebx
 004F194F    push       esi
 004F1950    xor        ebx,ebx
 004F1952    mov        dword ptr [ebp-8],ebx
 004F1955    test       dl,dl
>004F1957    je         004F1961
 004F1959    add        esp,0FFFFFFF0
 004F195C    call       @ClassCreate
 004F1961    mov        dword ptr [ebp-4],ecx
 004F1964    mov        ebx,edx
 004F1966    mov        esi,eax
 004F1968    mov        eax,dword ptr [ebp-4]
 004F196B    call       @IntfAddRef
 004F1970    xor        eax,eax
 004F1972    push       ebp
 004F1973    push       4F1A10
 004F1978    push       dword ptr fs:[eax]
 004F197B    mov        dword ptr fs:[eax],esp
 004F197E    mov        eax,dword ptr [ebp+8]
 004F1981    push       eax
 004F1982    mov        ecx,dword ptr [ebp-4]
 004F1985    xor        edx,edx
 004F1987    mov        eax,esi
 004F1989    call       004DFC94
 004F198E    lea        eax,[esi+4C]; TZDBLibStatement.?f4C:IZDBLibConnection
 004F1991    call       @IntfClear
 004F1996    push       eax
 004F1997    push       4F1A38
 004F199C    mov        eax,dword ptr [ebp-4]
 004F199F    push       eax
 004F19A0    mov        eax,dword ptr [eax]
 004F19A2    call       dword ptr [eax]
 004F19A4    cmp        dword ptr [esi+4C],0; TZDBLibStatement.?f4C:IZDBLibConnection
>004F19A8    je         004F19C3
 004F19AA    lea        edx,[ebp-8]
 004F19AD    mov        eax,dword ptr [esi+4C]; TZDBLibStatement.?f4C:IZDBLibConnection
 004F19B0    mov        ecx,dword ptr [eax]
 004F19B2    call       dword ptr [ecx+94]
 004F19B8    mov        edx,dword ptr [ebp-8]
 004F19BB    lea        eax,[esi+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F19BE    call       @IntfCopy
 004F19C3    mov        eax,dword ptr [esi+4C]; TZDBLibStatement.?f4C:IZDBLibConnection
 004F19C6    mov        edx,dword ptr [eax]
 004F19C8    call       dword ptr [edx+98]
 004F19CE    mov        dword ptr [esi+54],eax; TZDBLibStatement.?f54:dword
 004F19D1    mov        byte ptr [esi+2D],1; TZDBLibStatement.?f2D:byte
 004F19D5    mov        dl,1
 004F19D7    mov        eax,[004BCEAC]; TZCollection
 004F19DC    call       TZCollection.Create; TZCollection.Create
 004F19E1    mov        edx,eax
 004F19E3    test       edx,edx
>004F19E5    je         004F19EA
 004F19E7    sub        edx,0FFFFFFE4
 004F19EA    lea        eax,[esi+58]; TZDBLibStatement.?f58:IZCollection
 004F19ED    call       @IntfCopy
 004F19F2    xor        eax,eax
 004F19F4    pop        edx
 004F19F5    pop        ecx
 004F19F6    pop        ecx
 004F19F7    mov        dword ptr fs:[eax],edx
 004F19FA    push       4F1A17
 004F19FF    lea        eax,[ebp-8]
 004F1A02    call       @IntfClear
 004F1A07    lea        eax,[ebp-4]
 004F1A0A    call       @IntfClear
 004F1A0F    ret
<004F1A10    jmp        @HandleFinally
<004F1A15    jmp        004F19FF
 004F1A17    mov        eax,esi
 004F1A19    test       bl,bl
>004F1A1B    je         004F1A2C
 004F1A1D    call       @AfterConstruction
 004F1A22    pop        dword ptr fs:[0]
 004F1A29    add        esp,0C
 004F1A2C    mov        eax,esi
 004F1A2E    pop        esi
 004F1A2F    pop        ebx
 004F1A30    pop        ecx
 004F1A31    pop        ecx
 004F1A32    pop        ebp
 004F1A33    ret        4
*}
//end;

//004F1A48
destructor TZDBLibStatement.Destroy;
begin
{*
 004F1A48    push       ebp
 004F1A49    mov        ebp,esp
 004F1A4B    push       ebx
 004F1A4C    push       esi
 004F1A4D    call       @BeforeDestruction
 004F1A52    mov        ebx,edx
 004F1A54    mov        esi,eax
 004F1A56    mov        eax,dword ptr [esi+58]; TZDBLibStatement.?f58:IZCollection
 004F1A59    mov        edx,dword ptr [eax]
 004F1A5B    call       dword ptr [edx+50]
 004F1A5E    mov        edx,ebx
 004F1A60    and        dl,0FC
 004F1A63    mov        eax,esi
 004F1A65    call       TZAbstractStatement.Destroy
 004F1A6A    test       bl,bl
>004F1A6C    jle        004F1A75
 004F1A6E    mov        eax,esi
 004F1A70    call       @ClassDestroy
 004F1A75    pop        esi
 004F1A76    pop        ebx
 004F1A77    pop        ebp
 004F1A78    ret
*}
end;

//004F1A7C
//procedure sub_004F1A7C(?:?);
//begin
{*
 004F1A7C    push       ebp
 004F1A7D    mov        ebp,esp
 004F1A7F    xor        ecx,ecx
 004F1A81    push       ecx
 004F1A82    push       ecx
 004F1A83    push       ecx
 004F1A84    push       ecx
 004F1A85    push       ecx
 004F1A86    push       ecx
 004F1A87    push       ecx
 004F1A88    push       ebx
 004F1A89    push       esi
 004F1A8A    mov        dword ptr [ebp-4],edx
 004F1A8D    mov        ebx,eax
 004F1A8F    mov        eax,dword ptr [ebp-4]
 004F1A92    call       @LStrAddRef
 004F1A97    xor        eax,eax
 004F1A99    push       ebp
 004F1A9A    push       4F1BFA
 004F1A9F    push       dword ptr fs:[eax]
 004F1AA2    mov        dword ptr fs:[eax],esp
 004F1AA5    mov        eax,dword ptr [ebx+4C]; TZDBLibStatement.?f4C:IZDBLibConnection
 004F1AA8    mov        edx,dword ptr [eax]
 004F1AAA    call       dword ptr [edx+98]
 004F1AB0    mov        dword ptr [ebx+54],eax; TZDBLibStatement.?f54:dword
 004F1AB3    lea        edx,[ebp-8]
 004F1AB6    mov        eax,dword ptr [ebx+4C]; TZDBLibStatement.?f4C:IZDBLibConnection
 004F1AB9    mov        ecx,dword ptr [eax]
 004F1ABB    call       dword ptr [ecx+94]
 004F1AC1    mov        edx,dword ptr [ebp-8]
 004F1AC4    lea        eax,[ebx+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1AC7    call       @IntfCopy
 004F1ACC    mov        edx,dword ptr [ebx+54]; TZDBLibStatement.?f54:dword
 004F1ACF    mov        eax,dword ptr [ebx+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1AD2    mov        ecx,dword ptr [eax]
 004F1AD4    call       dword ptr [ecx+54]
 004F1AD7    dec        eax
>004F1AD8    je         004F1AEA
 004F1ADA    mov        ecx,dword ptr [ebp-4]
 004F1ADD    mov        dl,3
 004F1ADF    mov        eax,dword ptr [ebx+4C]; TZDBLibStatement.?f4C:IZDBLibConnection
 004F1AE2    mov        esi,dword ptr [eax]
 004F1AE4    call       dword ptr [esi+0A0]
 004F1AEA    lea        edx,[ebp-0C]
 004F1AED    mov        eax,dword ptr [ebx+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1AF0    mov        ecx,dword ptr [eax]
 004F1AF2    call       dword ptr [ecx+0C]
 004F1AF5    mov        eax,dword ptr [ebp-0C]
 004F1AF8    mov        edx,4F1C10; 'mssql'
 004F1AFD    call       @LStrCmp
>004F1B02    jne        004F1B2B
 004F1B04    mov        al,[004F1C18]; 0x1
 004F1B09    push       eax
 004F1B0A    lea        eax,[ebp-10]
 004F1B0D    push       eax
 004F1B0E    mov        ecx,4F1C24; '\\\\\r'
 004F1B13    mov        edx,4F1C30; '\\\r'
 004F1B18    mov        eax,dword ptr [ebp-4]
 004F1B1B    call       StringReplace
 004F1B20    mov        edx,dword ptr [ebp-10]
 004F1B23    lea        eax,[ebp-4]
 004F1B26    call       @LStrLAsg
 004F1B2B    lea        edx,[ebp-14]
 004F1B2E    mov        eax,dword ptr [ebx+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1B31    mov        ecx,dword ptr [eax]
 004F1B33    call       dword ptr [ecx+0C]
 004F1B36    mov        eax,dword ptr [ebp-14]
 004F1B39    mov        edx,4F1C3C; 'sybase'
 004F1B3E    call       @LStrCmp
>004F1B43    jne        004F1B69
 004F1B45    mov        al,[004F1C18]; 0x1
 004F1B4A    push       eax
 004F1B4B    lea        eax,[ebp-18]
 004F1B4E    push       eax
 004F1B4F    xor        ecx,ecx
 004F1B51    mov        edx,4F1C4C; ' AND NULL IS NULL'
 004F1B56    mov        eax,dword ptr [ebp-4]
 004F1B59    call       StringReplace
 004F1B5E    mov        edx,dword ptr [ebp-18]
 004F1B61    lea        eax,[ebp-4]
 004F1B64    call       @LStrLAsg
 004F1B69    mov        eax,dword ptr [ebp-4]
 004F1B6C    call       @LStrToPChar
 004F1B71    mov        ecx,eax
 004F1B73    mov        edx,dword ptr [ebx+54]; TZDBLibStatement.?f54:dword
 004F1B76    mov        eax,dword ptr [ebx+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1B79    mov        esi,dword ptr [eax]
 004F1B7B    call       dword ptr [esi+58]
 004F1B7E    dec        eax
>004F1B7F    je         004F1B91
 004F1B81    mov        ecx,dword ptr [ebp-4]
 004F1B84    mov        dl,3
 004F1B86    mov        eax,dword ptr [ebx+4C]; TZDBLibStatement.?f4C:IZDBLibConnection
 004F1B89    mov        esi,dword ptr [eax]
 004F1B8B    call       dword ptr [esi+0A0]
 004F1B91    mov        edx,dword ptr [ebx+54]; TZDBLibStatement.?f54:dword
 004F1B94    mov        eax,dword ptr [ebx+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1B97    mov        ecx,dword ptr [eax]
 004F1B99    call       dword ptr [ecx+5C]
 004F1B9C    dec        eax
>004F1B9D    je         004F1BAF
 004F1B9F    mov        ecx,dword ptr [ebp-4]
 004F1BA2    mov        dl,3
 004F1BA4    mov        eax,dword ptr [ebx+4C]; TZDBLibStatement.?f4C:IZDBLibConnection
 004F1BA7    mov        esi,dword ptr [eax]
 004F1BA9    call       dword ptr [esi+0A0]
 004F1BAF    mov        eax,dword ptr [ebp-4]
 004F1BB2    push       eax
 004F1BB3    lea        edx,[ebp-1C]
 004F1BB6    mov        eax,dword ptr [ebx+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1BB9    mov        ecx,dword ptr [eax]
 004F1BBB    call       dword ptr [ecx+0C]
 004F1BBE    mov        ecx,dword ptr [ebp-1C]
 004F1BC1    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004F1BC6    mov        eax,dword ptr [eax]
 004F1BC8    mov        dl,3
 004F1BCA    mov        ebx,dword ptr [eax]
 004F1BCC    call       dword ptr [ebx+3C]
 004F1BCF    xor        eax,eax
 004F1BD1    pop        edx
 004F1BD2    pop        ecx
 004F1BD3    pop        ecx
 004F1BD4    mov        dword ptr fs:[eax],edx
 004F1BD7    push       4F1C01
 004F1BDC    lea        eax,[ebp-1C]
 004F1BDF    mov        edx,5
 004F1BE4    call       @LStrArrayClr
 004F1BE9    lea        eax,[ebp-8]
 004F1BEC    call       @IntfClear
 004F1BF1    lea        eax,[ebp-4]
 004F1BF4    call       @LStrClr
 004F1BF9    ret
<004F1BFA    jmp        @HandleFinally
<004F1BFF    jmp        004F1BDC
 004F1C01    pop        esi
 004F1C02    pop        ebx
 004F1C03    mov        esp,ebp
 004F1C05    pop        ebp
 004F1C06    ret
*}
//end;

//004F1C60
//function sub_004F1C60:?;
//begin
{*
 004F1C60    push       ebp
 004F1C61    mov        ebp,esp
 004F1C63    xor        ecx,ecx
 004F1C65    push       ecx
 004F1C66    push       ecx
 004F1C67    push       ecx
 004F1C68    push       ecx
 004F1C69    push       ecx
 004F1C6A    push       ebx
 004F1C6B    push       esi
 004F1C6C    mov        ebx,eax
 004F1C6E    xor        eax,eax
 004F1C70    push       ebp
 004F1C71    push       4F1D80
 004F1C76    push       dword ptr fs:[eax]
 004F1C79    mov        dword ptr fs:[eax],esp
 004F1C7C    mov        byte ptr [ebp-1],0
 004F1C80    lea        eax,[ebx+5C]; TZDBLibStatement.?f5C:IZResultSet
 004F1C83    call       @IntfClear
 004F1C88    mov        dword ptr [ebx+60],0FFFFFFFF; TZDBLibStatement.?f60:dword
 004F1C8F    mov        eax,dword ptr [ebx+58]; TZDBLibStatement.?f58:IZCollection
 004F1C92    mov        edx,dword ptr [eax]
 004F1C94    call       dword ptr [edx+2C]
 004F1C97    test       eax,eax
>004F1C99    jle        004F1D4F
 004F1C9F    xor        eax,eax
 004F1CA1    push       ebp
 004F1CA2    push       4F1D48
 004F1CA7    push       dword ptr fs:[eax]
 004F1CAA    mov        dword ptr fs:[eax],esp
 004F1CAD    lea        eax,[ebp-8]
 004F1CB0    call       @IntfClear
 004F1CB5    push       eax
 004F1CB6    push       4F1D90
 004F1CBB    lea        ecx,[ebp-10]
 004F1CBE    mov        eax,dword ptr [ebx+58]; TZDBLibStatement.?f58:IZCollection
 004F1CC1    xor        edx,edx
 004F1CC3    mov        esi,dword ptr [eax]
 004F1CC5    call       dword ptr [esi+20]
 004F1CC8    mov        eax,dword ptr [ebp-10]
 004F1CCB    push       eax
 004F1CCC    mov        eax,dword ptr [eax]
 004F1CCE    call       dword ptr [eax]
 004F1CD0    test       eax,eax
 004F1CD2    sete       byte ptr [ebp-1]
 004F1CD6    cmp        byte ptr [ebp-1],0
>004F1CDA    je         004F1CEE
 004F1CDC    lea        eax,[ebx+5C]; TZDBLibStatement.?f5C:IZResultSet
 004F1CDF    mov        edx,dword ptr [ebp-8]
 004F1CE2    call       @IntfCopy
 004F1CE7    xor        eax,eax
 004F1CE9    mov        dword ptr [ebx+60],eax; TZDBLibStatement.?f60:dword
>004F1CEC    jmp        004F1D20
 004F1CEE    lea        eax,[ebp-0C]
 004F1CF1    call       @IntfClear
 004F1CF6    push       eax
 004F1CF7    push       4F1DA0
 004F1CFC    lea        ecx,[ebp-14]
 004F1CFF    mov        eax,dword ptr [ebx+58]; TZDBLibStatement.?f58:IZCollection
 004F1D02    xor        edx,edx
 004F1D04    mov        esi,dword ptr [eax]
 004F1D06    call       dword ptr [esi+20]
 004F1D09    mov        eax,dword ptr [ebp-14]
 004F1D0C    push       eax
 004F1D0D    mov        eax,dword ptr [eax]
 004F1D0F    call       dword ptr [eax]
 004F1D11    test       eax,eax
>004F1D13    jne        004F1D20
 004F1D15    mov        eax,dword ptr [ebp-0C]
 004F1D18    mov        edx,dword ptr [eax]
 004F1D1A    call       dword ptr [edx+10]
 004F1D1D    mov        dword ptr [ebx+60],eax; TZDBLibStatement.?f60:dword
 004F1D20    mov        eax,dword ptr [ebx+58]; TZDBLibStatement.?f58:IZCollection
 004F1D23    xor        edx,edx
 004F1D25    mov        ecx,dword ptr [eax]
 004F1D27    call       dword ptr [ecx+4C]
 004F1D2A    xor        eax,eax
 004F1D2C    pop        edx
 004F1D2D    pop        ecx
 004F1D2E    pop        ecx
 004F1D2F    mov        dword ptr fs:[eax],edx
 004F1D32    push       4F1D4F
 004F1D37    lea        eax,[ebp-8]
 004F1D3A    call       @IntfClear
 004F1D3F    lea        eax,[ebp-0C]
 004F1D42    call       @IntfClear
 004F1D47    ret
<004F1D48    jmp        @HandleFinally
<004F1D4D    jmp        004F1D37
 004F1D4F    xor        eax,eax
 004F1D51    pop        edx
 004F1D52    pop        ecx
 004F1D53    pop        ecx
 004F1D54    mov        dword ptr fs:[eax],edx
 004F1D57    push       4F1D87
 004F1D5C    lea        eax,[ebp-14]
 004F1D5F    mov        edx,dword ptr ds:[4011A8]; IInterface
 004F1D65    mov        ecx,2
 004F1D6A    call       @FinalizeArray
 004F1D6F    lea        eax,[ebp-0C]
 004F1D72    call       @IntfClear
 004F1D77    lea        eax,[ebp-8]
 004F1D7A    call       @IntfClear
 004F1D7F    ret
<004F1D80    jmp        @HandleFinally
<004F1D85    jmp        004F1D5C
 004F1D87    mov        al,byte ptr [ebp-1]
 004F1D8A    pop        esi
 004F1D8B    pop        ebx
 004F1D8C    mov        esp,ebp
 004F1D8E    pop        ebp
 004F1D8F    ret
*}
//end;

//004F1DB0
procedure sub_004F1DB0;
begin
{*
 004F1DB0    push       ebp
 004F1DB1    mov        ebp,esp
 004F1DB3    add        esp,0FFFFFFF0
 004F1DB6    push       ebx
 004F1DB7    xor        edx,edx
 004F1DB9    mov        dword ptr [ebp-10],edx
 004F1DBC    mov        dword ptr [ebp-4],eax
 004F1DBF    xor        eax,eax
 004F1DC1    push       ebp
 004F1DC2    push       4F204C
 004F1DC7    push       dword ptr fs:[eax]
 004F1DCA    mov        dword ptr fs:[eax],esp
 004F1DCD    mov        eax,dword ptr [ebp-4]
 004F1DD0    mov        eax,dword ptr [eax+58]; TZDBLibStatement.?f58:IZCollection
 004F1DD3    mov        edx,dword ptr [eax]
 004F1DD5    call       dword ptr [edx+50]
 004F1DD8    mov        dword ptr [ebp-0C],0FFFFFFFE
>004F1DDF    jmp        004F1F0A
 004F1DE4    mov        eax,dword ptr [ebp-4]
 004F1DE7    mov        edx,dword ptr [eax+54]; TZDBLibStatement.?f54:dword
 004F1DEA    mov        eax,dword ptr [ebp-4]
 004F1DED    mov        eax,dword ptr [eax+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1DF0    mov        ecx,dword ptr [eax]
 004F1DF2    call       dword ptr [ecx+7C]
 004F1DF5    dec        eax
>004F1DF6    jne        004F1EB9
 004F1DFC    mov        eax,dword ptr [ebp-4]
 004F1DFF    mov        eax,dword ptr [eax+48]; TZDBLibStatement.?f48:String
 004F1E02    push       eax
 004F1E03    mov        ecx,dword ptr [ebp-4]
 004F1E06    test       ecx,ecx
>004F1E08    je         004F1E0D
 004F1E0A    sub        ecx,0FFFFFFBC
 004F1E0D    mov        dl,1
 004F1E0F    mov        eax,[004F0070]; TZDBLibResultSet
 004F1E14    call       TZDBLibResultSet.Create; TZDBLibResultSet.Create
 004F1E19    mov        dword ptr [ebp-8],eax
 004F1E1C    xor        edx,edx
 004F1E1E    mov        eax,dword ptr [ebp-8]
 004F1E21    call       004D4578
 004F1E26    mov        eax,dword ptr [ebp-4]
 004F1E29    mov        eax,dword ptr [eax+48]; TZDBLibStatement.?f48:String
 004F1E2C    push       eax
 004F1E2D    lea        edx,[ebp-10]
 004F1E30    mov        eax,dword ptr [ebp-8]
 004F1E33    mov        ecx,dword ptr [eax]
 004F1E35    call       dword ptr [ecx+0C4]; TZDBLibResultSet.sub_004D4E80
 004F1E3B    mov        eax,dword ptr [ebp-10]
 004F1E3E    push       eax
 004F1E3F    mov        ecx,dword ptr [ebp-4]
 004F1E42    test       ecx,ecx
>004F1E44    je         004F1E49
 004F1E46    sub        ecx,0FFFFFFBC
 004F1E49    mov        dl,1
 004F1E4B    mov        eax,[004F0358]; TZDBLibCachedResolver
 004F1E50    call       TZDBLibCachedResolver.Create; TZDBLibCachedResolver.Create
 004F1E55    test       eax,eax
>004F1E57    je         004F1E5C
 004F1E59    sub        eax,0FFFFFFCC
 004F1E5C    push       eax
 004F1E5D    mov        ecx,dword ptr [ebp-8]
 004F1E60    test       ecx,ecx
>004F1E62    je         004F1E67
 004F1E64    sub        ecx,0FFFFFFC8
 004F1E67    mov        dl,1
 004F1E69    mov        eax,[004D060C]; TZCachedResultSet
 004F1E6E    call       TZCachedResultSet.Create; TZCachedResultSet.Create
 004F1E73    mov        ebx,eax
 004F1E75    mov        dl,1
 004F1E77    mov        eax,ebx
 004F1E79    call       004D457C
 004F1E7E    mov        eax,ebx
 004F1E80    mov        edx,dword ptr [eax]
 004F1E82    call       dword ptr [edx+0E8]; TZCachedResultSet.sub_004D2584
 004F1E88    mov        eax,ebx
 004F1E8A    mov        edx,dword ptr [eax]
 004F1E8C    call       dword ptr [edx+0DC]; TZCachedResultSet.sub_004D5044
 004F1E92    mov        eax,dword ptr [ebp-4]
 004F1E95    mov        edx,dword ptr [eax]
 004F1E97    call       dword ptr [edx+58]; TZDBLibStatement.sub_004DFF74
 004F1E9A    mov        edx,eax
 004F1E9C    mov        eax,ebx
 004F1E9E    call       004D4578
 004F1EA3    mov        edx,ebx
 004F1EA5    test       edx,edx
>004F1EA7    je         004F1EAC
 004F1EA9    sub        edx,0FFFFFFF8
 004F1EAC    mov        eax,dword ptr [ebp-4]
 004F1EAF    mov        eax,dword ptr [eax+58]; TZDBLibStatement.?f58:IZCollection
 004F1EB2    mov        ecx,dword ptr [eax]
 004F1EB4    call       dword ptr [ecx+3C]
>004F1EB7    jmp        004F1EF9
 004F1EB9    mov        eax,dword ptr [ebp-4]
 004F1EBC    mov        edx,dword ptr [eax+54]; TZDBLibStatement.?f54:dword
 004F1EBF    mov        eax,dword ptr [ebp-4]
 004F1EC2    mov        eax,dword ptr [eax+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1EC5    mov        ecx,dword ptr [eax]
 004F1EC7    call       dword ptr [ecx+0A4]
 004F1ECD    mov        dword ptr [ebp-0C],eax
 004F1ED0    cmp        dword ptr [ebp-0C],0FFFFFFFF
>004F1ED4    jle        004F1EF9
 004F1ED6    mov        ecx,dword ptr [ebp-0C]
 004F1ED9    mov        dl,1
 004F1EDB    mov        eax,[004F189C]; TZUpdateCount
 004F1EE0    call       TZUpdateCount.Create; TZUpdateCount.Create
 004F1EE5    mov        edx,eax
 004F1EE7    test       edx,edx
>004F1EE9    je         004F1EEE
 004F1EEB    sub        edx,0FFFFFFF8
 004F1EEE    mov        eax,dword ptr [ebp-4]
 004F1EF1    mov        eax,dword ptr [eax+58]; TZDBLibStatement.?f58:IZCollection
 004F1EF4    mov        ecx,dword ptr [eax]
 004F1EF6    call       dword ptr [ecx+3C]
 004F1EF9    mov        eax,dword ptr [ebp-4]
 004F1EFC    mov        edx,dword ptr [eax+54]; TZDBLibStatement.?f54:dword
 004F1EFF    mov        eax,dword ptr [ebp-4]
 004F1F02    mov        eax,dword ptr [eax+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1F05    mov        ecx,dword ptr [eax]
 004F1F07    call       dword ptr [ecx+64]
 004F1F0A    mov        eax,dword ptr [ebp-4]
 004F1F0D    mov        edx,dword ptr [eax+54]; TZDBLibStatement.?f54:dword
 004F1F10    mov        eax,dword ptr [ebp-4]
 004F1F13    mov        eax,dword ptr [eax+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1F16    mov        ecx,dword ptr [eax]
 004F1F18    call       dword ptr [ecx+60]
 004F1F1B    dec        eax
<004F1F1C    je         004F1DE4
 004F1F22    mov        eax,dword ptr [ebp-4]
 004F1F25    mov        eax,dword ptr [eax+4C]; TZDBLibStatement.?f4C:IZDBLibConnection
 004F1F28    mov        ecx,4F2060; 'FETCHRESULTS'
 004F1F2D    mov        dl,4
 004F1F2F    mov        ebx,dword ptr [eax]
 004F1F31    call       dword ptr [ebx+0A0]
 004F1F37    cmp        dword ptr [ebp-0C],0FFFFFFFF
>004F1F3B    jne        004F2036
 004F1F41    mov        eax,dword ptr [ebp-4]
 004F1F44    mov        eax,dword ptr [eax+4C]; TZDBLibStatement.?f4C:IZDBLibConnection
 004F1F47    mov        edx,4F2078; 'select @@rowcount'
 004F1F4C    mov        ecx,dword ptr [eax]
 004F1F4E    call       dword ptr [ecx+9C]
 004F1F54    xor        eax,eax
 004F1F56    push       ebp
 004F1F57    push       4F201A
 004F1F5C    push       dword ptr fs:[eax]
 004F1F5F    mov        dword ptr fs:[eax],esp
 004F1F62    mov        eax,dword ptr [ebp-4]
 004F1F65    mov        edx,dword ptr [eax+54]; TZDBLibStatement.?f54:dword
 004F1F68    mov        eax,dword ptr [ebp-4]
 004F1F6B    mov        eax,dword ptr [eax+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F1F6E    mov        ecx,dword ptr [eax]
 004F1F70    call       dword ptr [ecx+60]
 004F1F73    push       4F2078; 'select @@rowcount'
 004F1F78    mov        ecx,dword ptr [ebp-4]
 004F1F7B    test       ecx,ecx
>004F1F7D    je         004F1F82
 004F1F7F    sub        ecx,0FFFFFFBC
 004F1F82    mov        dl,1
 004F1F84    mov        eax,[004F0070]; TZDBLibResultSet
 004F1F89    call       TZDBLibResultSet.Create; TZDBLibResultSet.Create
 004F1F8E    mov        dword ptr [ebp-8],eax
 004F1F91    xor        eax,eax
 004F1F93    push       ebp
 004F1F94    push       4F1FD1
 004F1F99    push       dword ptr fs:[eax]
 004F1F9C    mov        dword ptr fs:[eax],esp
 004F1F9F    mov        eax,dword ptr [ebp-8]
 004F1FA2    mov        edx,dword ptr [eax]
 004F1FA4    call       dword ptr [edx+4]; TZDBLibResultSet.sub_004F10E4
 004F1FA7    test       al,al
>004F1FA9    je         004F1FBB
 004F1FAB    mov        edx,1
 004F1FB0    mov        eax,dword ptr [ebp-8]
 004F1FB3    mov        ecx,dword ptr [eax]
 004F1FB5    call       dword ptr [ecx+2C]; TZDBLibResultSet.sub_004F0BB8
 004F1FB8    mov        dword ptr [ebp-0C],eax
 004F1FBB    xor        eax,eax
 004F1FBD    pop        edx
 004F1FBE    pop        ecx
 004F1FBF    pop        ecx
 004F1FC0    mov        dword ptr fs:[eax],edx
 004F1FC3    push       4F1FD8
 004F1FC8    mov        eax,dword ptr [ebp-8]
 004F1FCB    mov        edx,dword ptr [eax]
 004F1FCD    call       dword ptr [edx+8]; TZDBLibResultSet.sub_004F06E4
 004F1FD0    ret
<004F1FD1    jmp        @HandleFinally
<004F1FD6    jmp        004F1FC8
 004F1FD8    mov        ecx,dword ptr [ebp-0C]
 004F1FDB    mov        dl,1
 004F1FDD    mov        eax,[004F189C]; TZUpdateCount
 004F1FE2    call       TZUpdateCount.Create; TZUpdateCount.Create
 004F1FE7    mov        edx,eax
 004F1FE9    test       edx,edx
>004F1FEB    je         004F1FF0
 004F1FED    sub        edx,0FFFFFFF8
 004F1FF0    mov        eax,dword ptr [ebp-4]
 004F1FF3    mov        eax,dword ptr [eax+58]; TZDBLibStatement.?f58:IZCollection
 004F1FF6    mov        ecx,dword ptr [eax]
 004F1FF8    call       dword ptr [ecx+3C]
 004F1FFB    xor        eax,eax
 004F1FFD    pop        edx
 004F1FFE    pop        ecx
 004F1FFF    pop        ecx
 004F2000    mov        dword ptr fs:[eax],edx
 004F2003    push       4F2021
 004F2008    mov        eax,dword ptr [ebp-4]
 004F200B    mov        edx,dword ptr [eax+54]; TZDBLibStatement.?f54:dword
 004F200E    mov        eax,dword ptr [ebp-4]
 004F2011    mov        eax,dword ptr [eax+50]; TZDBLibStatement.?f50:IZDBLibPlainDriver
 004F2014    mov        ecx,dword ptr [eax]
 004F2016    call       dword ptr [ecx+54]
 004F2019    ret
<004F201A    jmp        @HandleFinally
<004F201F    jmp        004F2008
 004F2021    mov        eax,dword ptr [ebp-4]
 004F2024    mov        eax,dword ptr [eax+4C]; TZDBLibStatement.?f4C:IZDBLibConnection
 004F2027    mov        ecx,4F2060; 'FETCHRESULTS'
 004F202C    mov        dl,4
 004F202E    mov        ebx,dword ptr [eax]
 004F2030    call       dword ptr [ebx+0A0]
 004F2036    xor        eax,eax
 004F2038    pop        edx
 004F2039    pop        ecx
 004F203A    pop        ecx
 004F203B    mov        dword ptr fs:[eax],edx
 004F203E    push       4F2053
 004F2043    lea        eax,[ebp-10]
 004F2046    call       @IntfClear
 004F204B    ret
<004F204C    jmp        @HandleFinally
<004F2051    jmp        004F2043
 004F2053    pop        ebx
 004F2054    mov        esp,ebp
 004F2056    pop        ebp
 004F2057    ret
*}
end;

//004F208C
//procedure sub_004F208C(?:?; ?:?);
//begin
{*
 004F208C    push       ebp
 004F208D    mov        ebp,esp
 004F208F    push       ecx
 004F2090    push       ebx
 004F2091    push       esi
 004F2092    mov        ebx,ecx
 004F2094    mov        esi,edx
 004F2096    mov        dword ptr [ebp-4],eax
 004F2099    mov        eax,ebx
 004F209B    call       @IntfClear
 004F20A0    mov        eax,dword ptr [ebp-4]
 004F20A3    add        eax,48; TZDBLibStatement.?f48:String
 004F20A6    mov        edx,esi
 004F20A8    call       @LStrAsg
 004F20AD    xor        eax,eax
 004F20AF    push       ebp
 004F20B0    push       4F210A
 004F20B5    push       dword ptr fs:[eax]
 004F20B8    mov        dword ptr fs:[eax],esp
 004F20BB    mov        edx,esi
 004F20BD    mov        eax,dword ptr [ebp-4]
 004F20C0    mov        ecx,dword ptr [eax]
 004F20C2    call       dword ptr [ecx+78]; TZDBLibStatement.sub_004F1A7C
 004F20C5    mov        eax,dword ptr [ebp-4]
 004F20C8    mov        edx,dword ptr [eax]
 004F20CA    call       dword ptr [edx+7C]; TZDBLibStatement.sub_004F1DB0
 004F20CD    mov        eax,dword ptr [ebp-4]
 004F20D0    mov        edx,dword ptr [eax]
 004F20D2    call       dword ptr [edx+40]; TZDBLibStatement.sub_004F1C60
 004F20D5    test       al,al
>004F20D7    je         004F20E8
 004F20D9    mov        eax,ebx
 004F20DB    mov        edx,dword ptr [ebp-4]
 004F20DE    mov        edx,dword ptr [edx+5C]; TZDBLibStatement.?f5C:IZResultSet
 004F20E1    call       @IntfCopy
<004F20E6    jmp        004F20CD
 004F20E8    mov        eax,dword ptr [ebp-4]
 004F20EB    cmp        dword ptr [eax+60],0FFFFFFFF; TZDBLibStatement.?f60:dword
<004F20EF    jne        004F20CD
 004F20F1    xor        eax,eax
 004F20F3    pop        edx
 004F20F4    pop        ecx
 004F20F5    pop        ecx
 004F20F6    mov        dword ptr fs:[eax],edx
 004F20F9    push       4F2111
 004F20FE    mov        eax,dword ptr [ebp-4]
 004F2101    add        eax,5C; TZDBLibStatement.?f5C:IZResultSet
 004F2104    call       @IntfClear
 004F2109    ret
<004F210A    jmp        @HandleFinally
<004F210F    jmp        004F20FE
 004F2111    pop        esi
 004F2112    pop        ebx
 004F2113    pop        ecx
 004F2114    pop        ebp
 004F2115    ret
*}
//end;

//004F2118
//function sub_004F2118(?:?):?;
//begin
{*
 004F2118    push       ebp
 004F2119    mov        ebp,esp
 004F211B    push       ebx
 004F211C    push       esi
 004F211D    mov        esi,edx
 004F211F    mov        ebx,eax
 004F2121    lea        eax,[ebx+48]; TZDBLibStatement.?f48:String
 004F2124    mov        edx,esi
 004F2126    call       @LStrAsg
 004F212B    mov        edx,esi
 004F212D    mov        eax,ebx
 004F212F    mov        ecx,dword ptr [eax]
 004F2131    call       dword ptr [ecx+78]; TZDBLibStatement.sub_004F1A7C
 004F2134    mov        eax,ebx
 004F2136    mov        edx,dword ptr [eax]
 004F2138    call       dword ptr [edx+7C]; TZDBLibStatement.sub_004F1DB0
 004F213B    mov        eax,ebx
 004F213D    mov        edx,dword ptr [eax]
 004F213F    call       dword ptr [edx+40]; TZDBLibStatement.sub_004F1C60
 004F2142    mov        esi,dword ptr [ebx+60]; TZDBLibStatement.?f60:dword
 004F2145    lea        eax,[ebx+5C]; TZDBLibStatement.?f5C:IZResultSet
 004F2148    call       @IntfClear
 004F214D    mov        eax,esi
 004F214F    pop        esi
 004F2150    pop        ebx
 004F2151    pop        ebp
 004F2152    ret
*}
//end;

//004F2154
//function sub_004F2154(?:?):?;
//begin
{*
 004F2154    push       ebp
 004F2155    mov        ebp,esp
 004F2157    push       ebx
 004F2158    push       esi
 004F2159    push       edi
 004F215A    mov        esi,edx
 004F215C    mov        edi,eax
 004F215E    lea        eax,[edi+48]; TZDBLibStatement.?f48:String
 004F2161    mov        edx,esi
 004F2163    call       @LStrAsg
 004F2168    mov        edx,esi
 004F216A    mov        eax,edi
 004F216C    mov        ecx,dword ptr [eax]
 004F216E    call       dword ptr [ecx+78]; TZDBLibStatement.sub_004F1A7C
 004F2171    mov        eax,edi
 004F2173    mov        edx,dword ptr [eax]
 004F2175    call       dword ptr [edx+7C]; TZDBLibStatement.sub_004F1DB0
 004F2178    mov        eax,edi
 004F217A    mov        edx,dword ptr [eax]
 004F217C    call       dword ptr [edx+40]; TZDBLibStatement.sub_004F1C60
 004F217F    mov        ebx,eax
 004F2181    mov        edx,dword ptr [edi+5C]; TZDBLibStatement.?f5C:IZResultSet
 004F2184    mov        eax,edi
 004F2186    mov        ecx,dword ptr [eax]
 004F2188    call       dword ptr [ecx]; TZDBLibStatement.sub_004DFE2C
 004F218A    mov        eax,dword ptr [edi+60]; TZDBLibStatement.?f60:dword
 004F218D    mov        dword ptr [edi+1C],eax; TZDBLibStatement.?f1C:Integer
 004F2190    lea        eax,[edi+5C]; TZDBLibStatement.?f5C:IZResultSet
 004F2193    call       @IntfClear
 004F2198    mov        eax,ebx
 004F219A    pop        edi
 004F219B    pop        esi
 004F219C    pop        ebx
 004F219D    pop        ebp
 004F219E    ret
*}
//end;

//004F21A0
//constructor TZDBLibPreparedStatementEmulated.Create(?:TZDBLibPreparedStatementEmulated; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004F21A0    push       ebp
 004F21A1    mov        ebp,esp
 004F21A3    push       ecx
 004F21A4    push       ebx
 004F21A5    push       esi
 004F21A6    test       dl,dl
>004F21A8    je         004F21B2
 004F21AA    add        esp,0FFFFFFF0
 004F21AD    call       @ClassCreate
 004F21B2    mov        dword ptr [ebp-4],ecx
 004F21B5    mov        ebx,edx
 004F21B7    mov        esi,eax
 004F21B9    mov        eax,dword ptr [ebp-4]
 004F21BC    call       @IntfAddRef
 004F21C1    mov        eax,dword ptr [ebp+0C]
 004F21C4    call       @LStrAddRef
 004F21C9    xor        eax,eax
 004F21CB    push       ebp
 004F21CC    push       4F220D
 004F21D1    push       dword ptr fs:[eax]
 004F21D4    mov        dword ptr fs:[eax],esp
 004F21D7    mov        eax,dword ptr [ebp+0C]
 004F21DA    push       eax
 004F21DB    mov        eax,dword ptr [ebp+8]
 004F21DE    push       eax
 004F21DF    mov        ecx,dword ptr [ebp-4]
 004F21E2    xor        edx,edx
 004F21E4    mov        eax,esi
 004F21E6    call       004E0088
 004F21EB    mov        byte ptr [esi+2D],1; TZDBLibPreparedStatementEmulated.?f2D:byte
 004F21EF    xor        eax,eax
 004F21F1    pop        edx
 004F21F2    pop        ecx
 004F21F3    pop        ecx
 004F21F4    mov        dword ptr fs:[eax],edx
 004F21F7    push       4F2214
 004F21FC    lea        eax,[ebp-4]
 004F21FF    call       @IntfClear
 004F2204    lea        eax,[ebp+0C]
 004F2207    call       @LStrClr
 004F220C    ret
<004F220D    jmp        @HandleFinally
<004F2212    jmp        004F21FC
 004F2214    mov        eax,esi
 004F2216    test       bl,bl
>004F2218    je         004F2229
 004F221A    call       @AfterConstruction
 004F221F    pop        dword ptr fs:[0]
 004F2226    add        esp,0C
 004F2229    mov        eax,esi
 004F222B    pop        esi
 004F222C    pop        ebx
 004F222D    pop        ecx
 004F222E    pop        ebp
 004F222F    ret        8
*}
//end;

//004F2234
//procedure sub_004F2234(?:?; ?:?);
//begin
{*
 004F2234    push       ebp
 004F2235    mov        ebp,esp
 004F2237    push       ebx
 004F2238    push       esi
 004F2239    push       edi
 004F223A    mov        edi,ecx
 004F223C    mov        esi,edx
 004F223E    mov        ebx,eax
 004F2240    cmp        esi,dword ptr [ebx+58]; TZDBLibPreparedStatementEmulated.?f58:dword
>004F2243    jl         004F2253
 004F2245    mov        eax,edi
 004F2247    mov        edx,4F228C; 'NULL'
 004F224C    call       @LStrAsg
>004F2251    jmp        004F227E
 004F2253    mov        eax,dword ptr [ebx+50]; TZDBLibPreparedStatementEmulated.?f50:TZSQLTypeArray
 004F2256    test       eax,eax
>004F2258    je         004F225F
 004F225A    cmp        esi,dword ptr [eax-4]
>004F225D    jb         004F2264
 004F225F    call       @BoundErr
 004F2264    mov        dl,byte ptr [eax+esi]
 004F2267    imul       eax,esi,0B
>004F226A    jno        004F2271
 004F226C    call       @IntOver
 004F2271    mov        ecx,dword ptr [ebx+4C]; TZDBLibPreparedStatementEmulated.?f4C:TZVariantDynArray
 004F2274    lea        eax,[ecx+eax*4]
 004F2277    mov        ecx,edi
 004F2279    call       004EFB7C
 004F227E    pop        edi
 004F227F    pop        esi
 004F2280    pop        ebx
 004F2281    pop        ebp
 004F2282    ret
*}
//end;

//004F2294
//procedure sub_004F2294(?:?);
//begin
{*
 004F2294    push       ebp
 004F2295    mov        ebp,esp
 004F2297    push       ebx
 004F2298    mov        ebx,edx
 004F229A    mov        eax,ebx
 004F229C    call       @IntfClear
 004F22A1    pop        ebx
 004F22A2    pop        ebp
 004F22A3    ret
*}
//end;

//004F22A4
//procedure sub_004F22A4(?:?);
//begin
{*
 004F22A4    push       ebp
 004F22A5    mov        ebp,esp
 004F22A7    push       ebx
 004F22A8    push       esi
 004F22A9    mov        esi,edx
 004F22AB    mov        ebx,eax
 004F22AD    mov        eax,dword ptr [ebx+3C]; TZDBLibPreparedStatementEmulated.?f3C:dword
 004F22B0    push       eax
 004F22B1    mov        ecx,dword ptr [ebx+38]; TZDBLibPreparedStatementEmulated.?f38:IZConnection
 004F22B4    mov        dl,1
 004F22B6    mov        eax,[004F13D4]; TZDBLibStatement
 004F22BB    call       TZDBLibStatement.Create; TZDBLibStatement.Create
 004F22C0    mov        edx,eax
 004F22C2    test       edx,edx
>004F22C4    je         004F22C9
 004F22C6    sub        edx,0FFFFFFBC
 004F22C9    mov        eax,esi
 004F22CB    call       @IntfCopy
 004F22D0    pop        esi
 004F22D1    pop        ebx
 004F22D2    pop        ebp
 004F22D3    ret
*}
//end;

//004F22D4
//constructor TZDBLibCallableStatement.Create(?:TZDBLibCallableStatement; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004F22D4    push       ebp
 004F22D5    mov        ebp,esp
 004F22D7    add        esp,0FFFFFFF8
 004F22DA    push       ebx
 004F22DB    push       esi
 004F22DC    xor        ebx,ebx
 004F22DE    mov        dword ptr [ebp-8],ebx
 004F22E1    test       dl,dl
>004F22E3    je         004F22ED
 004F22E5    add        esp,0FFFFFFF0
 004F22E8    call       @ClassCreate
 004F22ED    mov        dword ptr [ebp-4],ecx
 004F22F0    mov        ebx,edx
 004F22F2    mov        esi,eax
 004F22F4    mov        eax,dword ptr [ebp-4]
 004F22F7    call       @IntfAddRef
 004F22FC    mov        eax,dword ptr [ebp+0C]
 004F22FF    call       @LStrAddRef
 004F2304    xor        eax,eax
 004F2306    push       ebp
 004F2307    push       4F23B9
 004F230C    push       dword ptr fs:[eax]
 004F230F    mov        dword ptr fs:[eax],esp
 004F2312    mov        eax,dword ptr [ebp+0C]
 004F2315    push       eax
 004F2316    mov        eax,dword ptr [ebp+8]
 004F2319    push       eax
 004F231A    mov        ecx,dword ptr [ebp-4]
 004F231D    xor        edx,edx
 004F231F    mov        eax,esi
 004F2321    call       004E0C98
 004F2326    lea        eax,[esi+7C]; TZDBLibCallableStatement.?f7C:IZDBLibConnection
 004F2329    call       @IntfClear
 004F232E    push       eax
 004F232F    push       4F23E0
 004F2334    mov        eax,dword ptr [ebp-4]
 004F2337    push       eax
 004F2338    mov        eax,dword ptr [eax]
 004F233A    call       dword ptr [eax]
 004F233C    cmp        dword ptr [esi+7C],0; TZDBLibCallableStatement.?f7C:IZDBLibConnection
>004F2340    je         004F235E
 004F2342    lea        edx,[ebp-8]
 004F2345    mov        eax,dword ptr [esi+7C]; TZDBLibCallableStatement.?f7C:IZDBLibConnection
 004F2348    mov        ecx,dword ptr [eax]
 004F234A    call       dword ptr [ecx+94]
 004F2350    mov        edx,dword ptr [ebp-8]
 004F2353    lea        eax,[esi+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2359    call       @IntfCopy
 004F235E    mov        eax,dword ptr [esi+7C]; TZDBLibCallableStatement.?f7C:IZDBLibConnection
 004F2361    mov        edx,dword ptr [eax]
 004F2363    call       dword ptr [edx+98]
 004F2369    mov        dword ptr [esi+84],eax; TZDBLibCallableStatement.?f84:dword
 004F236F    mov        byte ptr [esi+2D],1; TZDBLibCallableStatement.?f2D:byte
 004F2373    mov        dl,1
 004F2375    mov        eax,[004BCEAC]; TZCollection
 004F237A    call       TZCollection.Create; TZCollection.Create
 004F237F    mov        edx,eax
 004F2381    test       edx,edx
>004F2383    je         004F2388
 004F2385    sub        edx,0FFFFFFE4
 004F2388    lea        eax,[esi+88]; TZDBLibCallableStatement.?f88:IZCollection
 004F238E    call       @IntfCopy
 004F2393    xor        eax,eax
 004F2395    pop        edx
 004F2396    pop        ecx
 004F2397    pop        ecx
 004F2398    mov        dword ptr fs:[eax],edx
 004F239B    push       4F23C0
 004F23A0    lea        eax,[ebp-8]
 004F23A3    call       @IntfClear
 004F23A8    lea        eax,[ebp-4]
 004F23AB    call       @IntfClear
 004F23B0    lea        eax,[ebp+0C]
 004F23B3    call       @LStrClr
 004F23B8    ret
<004F23B9    jmp        @HandleFinally
<004F23BE    jmp        004F23A0
 004F23C0    mov        eax,esi
 004F23C2    test       bl,bl
>004F23C4    je         004F23D5
 004F23C6    call       @AfterConstruction
 004F23CB    pop        dword ptr fs:[0]
 004F23D2    add        esp,0C
 004F23D5    mov        eax,esi
 004F23D7    pop        esi
 004F23D8    pop        ebx
 004F23D9    pop        ecx
 004F23DA    pop        ecx
 004F23DB    pop        ebp
 004F23DC    ret        8
*}
//end;

//004F23F0
procedure sub_004F23F0;
begin
{*
 004F23F0    push       ebp
 004F23F1    mov        ebp,esp
 004F23F3    push       0
 004F23F5    push       ebx
 004F23F6    push       esi
 004F23F7    mov        ebx,eax
 004F23F9    xor        eax,eax
 004F23FB    push       ebp
 004F23FC    push       4F2561
 004F2401    push       dword ptr fs:[eax]
 004F2404    mov        dword ptr fs:[eax],esp
 004F2407    mov        dword ptr [ebx+8C],0FFFFFFFE; TZDBLibCallableStatement.?f8C:dword
>004F2411    jmp        004F2521
 004F2416    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F241C    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2422    mov        ecx,dword ptr [eax]
 004F2424    call       dword ptr [ecx+7C]
 004F2427    dec        eax
>004F2428    jne        004F24DE
 004F242E    mov        eax,dword ptr [ebx+78]; TZDBLibCallableStatement.?f78:String
 004F2431    push       eax
 004F2432    mov        ecx,ebx
 004F2434    test       ecx,ecx
>004F2436    je         004F243B
 004F2438    sub        ecx,0FFFFFFBC
 004F243B    mov        dl,1
 004F243D    mov        eax,[004F0070]; TZDBLibResultSet
 004F2442    call       TZDBLibResultSet.Create; TZDBLibResultSet.Create
 004F2447    mov        esi,eax
 004F2449    xor        edx,edx
 004F244B    mov        eax,esi
 004F244D    call       004D4578
 004F2452    mov        eax,dword ptr [ebx+78]; TZDBLibCallableStatement.?f78:String
 004F2455    push       eax
 004F2456    lea        edx,[ebp-4]
 004F2459    mov        eax,esi
 004F245B    mov        ecx,dword ptr [eax]
 004F245D    call       dword ptr [ecx+0C4]; TZDBLibResultSet.sub_004D4E80
 004F2463    mov        eax,dword ptr [ebp-4]
 004F2466    push       eax
 004F2467    mov        ecx,ebx
 004F2469    test       ecx,ecx
>004F246B    je         004F2470
 004F246D    sub        ecx,0FFFFFFBC
 004F2470    mov        dl,1
 004F2472    mov        eax,[004F0358]; TZDBLibCachedResolver
 004F2477    call       TZDBLibCachedResolver.Create; TZDBLibCachedResolver.Create
 004F247C    test       eax,eax
>004F247E    je         004F2483
 004F2480    sub        eax,0FFFFFFCC
 004F2483    push       eax
 004F2484    mov        ecx,esi
 004F2486    test       ecx,ecx
>004F2488    je         004F248D
 004F248A    sub        ecx,0FFFFFFC8
 004F248D    mov        dl,1
 004F248F    mov        eax,[004D060C]; TZCachedResultSet
 004F2494    call       TZCachedResultSet.Create; TZCachedResultSet.Create
 004F2499    mov        esi,eax
 004F249B    mov        dl,1
 004F249D    mov        eax,esi
 004F249F    call       004D457C
 004F24A4    mov        eax,esi
 004F24A6    mov        edx,dword ptr [eax]
 004F24A8    call       dword ptr [edx+0E8]; TZCachedResultSet.sub_004D2584
 004F24AE    mov        eax,esi
 004F24B0    mov        edx,dword ptr [eax]
 004F24B2    call       dword ptr [edx+0DC]; TZCachedResultSet.sub_004D5044
 004F24B8    mov        eax,ebx
 004F24BA    mov        edx,dword ptr [eax]
 004F24BC    call       dword ptr [edx+58]; TZDBLibCallableStatement.sub_004DFF74
 004F24BF    mov        edx,eax
 004F24C1    mov        eax,esi
 004F24C3    call       004D4578
 004F24C8    mov        edx,esi
 004F24CA    test       edx,edx
>004F24CC    je         004F24D1
 004F24CE    sub        edx,0FFFFFFF8
 004F24D1    mov        eax,dword ptr [ebx+88]; TZDBLibCallableStatement.?f88:IZCollection
 004F24D7    mov        ecx,dword ptr [eax]
 004F24D9    call       dword ptr [ecx+3C]
>004F24DC    jmp        004F2521
 004F24DE    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F24E4    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F24EA    mov        ecx,dword ptr [eax]
 004F24EC    call       dword ptr [ecx+0A4]
 004F24F2    mov        esi,eax
 004F24F4    mov        dword ptr [ebx+8C],esi; TZDBLibCallableStatement.?f8C:dword
 004F24FA    cmp        esi,0FFFFFFFF
>004F24FD    jle        004F2521
 004F24FF    mov        ecx,esi
 004F2501    mov        dl,1
 004F2503    mov        eax,[004F189C]; TZUpdateCount
 004F2508    call       TZUpdateCount.Create; TZUpdateCount.Create
 004F250D    mov        edx,eax
 004F250F    test       edx,edx
>004F2511    je         004F2516
 004F2513    sub        edx,0FFFFFFF8
 004F2516    mov        eax,dword ptr [ebx+88]; TZDBLibCallableStatement.?f88:IZCollection
 004F251C    mov        ecx,dword ptr [eax]
 004F251E    call       dword ptr [ecx+3C]
 004F2521    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2527    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F252D    mov        ecx,dword ptr [eax]
 004F252F    call       dword ptr [ecx+60]
 004F2532    dec        eax
<004F2533    je         004F2416
 004F2539    mov        ecx,4F2578; 'FETCHRESULTS'
 004F253E    mov        dl,4
 004F2540    mov        eax,dword ptr [ebx+7C]; TZDBLibCallableStatement.?f7C:IZDBLibConnection
 004F2543    mov        ebx,dword ptr [eax]
 004F2545    call       dword ptr [ebx+0A0]
 004F254B    xor        eax,eax
 004F254D    pop        edx
 004F254E    pop        ecx
 004F254F    pop        ecx
 004F2550    mov        dword ptr fs:[eax],edx
 004F2553    push       4F2568
 004F2558    lea        eax,[ebp-4]
 004F255B    call       @IntfClear
 004F2560    ret
<004F2561    jmp        @HandleFinally
<004F2566    jmp        004F2558
 004F2568    pop        esi
 004F2569    pop        ebx
 004F256A    pop        ecx
 004F256B    pop        ebp
 004F256C    ret
*}
end;

//004F2588
procedure sub_004F2588;
begin
{*
 004F2588    push       ebp
 004F2589    mov        ebp,esp
 004F258B    add        esp,0FFFFFFF8
 004F258E    push       ebx
 004F258F    mov        dword ptr [ebp-4],eax
 004F2592    mov        eax,dword ptr [ebp-4]
 004F2595    cmp        dword ptr [eax+8C],0FFFFFFFF; TZDBLibCallableStatement.?f8C:dword
>004F259C    jne        004F26B2
 004F25A2    mov        eax,dword ptr [ebp-4]
 004F25A5    mov        eax,dword ptr [eax+7C]; TZDBLibCallableStatement.?f7C:IZDBLibConnection
 004F25A8    mov        edx,4F26C0; 'select @@rowcount'
 004F25AD    mov        ecx,dword ptr [eax]
 004F25AF    call       dword ptr [ecx+9C]
 004F25B5    xor        eax,eax
 004F25B7    push       ebp
 004F25B8    push       4F2696
 004F25BD    push       dword ptr fs:[eax]
 004F25C0    mov        dword ptr fs:[eax],esp
 004F25C3    mov        eax,dword ptr [ebp-4]
 004F25C6    mov        edx,dword ptr [eax+84]; TZDBLibCallableStatement.?f84:dword
 004F25CC    mov        eax,dword ptr [ebp-4]
 004F25CF    mov        eax,dword ptr [eax+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F25D5    mov        ecx,dword ptr [eax]
 004F25D7    call       dword ptr [ecx+60]
 004F25DA    push       4F26C0; 'select @@rowcount'
 004F25DF    mov        ecx,dword ptr [ebp-4]
 004F25E2    test       ecx,ecx
>004F25E4    je         004F25E9
 004F25E6    sub        ecx,0FFFFFFBC
 004F25E9    mov        dl,1
 004F25EB    mov        eax,[004F0070]; TZDBLibResultSet
 004F25F0    call       TZDBLibResultSet.Create; TZDBLibResultSet.Create
 004F25F5    mov        dword ptr [ebp-8],eax
 004F25F8    xor        eax,eax
 004F25FA    push       ebp
 004F25FB    push       4F263E
 004F2600    push       dword ptr fs:[eax]
 004F2603    mov        dword ptr fs:[eax],esp
 004F2606    mov        eax,dword ptr [ebp-8]
 004F2609    mov        edx,dword ptr [eax]
 004F260B    call       dword ptr [edx+4]; TZDBLibResultSet.sub_004F10E4
 004F260E    test       al,al
>004F2610    je         004F2628
 004F2612    mov        edx,1
 004F2617    mov        eax,dword ptr [ebp-8]
 004F261A    mov        ecx,dword ptr [eax]
 004F261C    call       dword ptr [ecx+2C]; TZDBLibResultSet.sub_004F0BB8
 004F261F    mov        edx,dword ptr [ebp-4]
 004F2622    mov        dword ptr [edx+8C],eax; TZDBLibCallableStatement.?f8C:dword
 004F2628    xor        eax,eax
 004F262A    pop        edx
 004F262B    pop        ecx
 004F262C    pop        ecx
 004F262D    mov        dword ptr fs:[eax],edx
 004F2630    push       4F2645
 004F2635    mov        eax,dword ptr [ebp-8]
 004F2638    mov        edx,dword ptr [eax]
 004F263A    call       dword ptr [edx+8]; TZDBLibResultSet.sub_004F06E4
 004F263D    ret
<004F263E    jmp        @HandleFinally
<004F2643    jmp        004F2635
 004F2645    mov        eax,dword ptr [ebp-4]
 004F2648    mov        ecx,dword ptr [eax+8C]; TZDBLibCallableStatement.?f8C:dword
 004F264E    mov        dl,1
 004F2650    mov        eax,[004F189C]; TZUpdateCount
 004F2655    call       TZUpdateCount.Create; TZUpdateCount.Create
 004F265A    mov        edx,eax
 004F265C    test       edx,edx
>004F265E    je         004F2663
 004F2660    sub        edx,0FFFFFFF8
 004F2663    mov        eax,dword ptr [ebp-4]
 004F2666    mov        eax,dword ptr [eax+88]; TZDBLibCallableStatement.?f88:IZCollection
 004F266C    mov        ecx,dword ptr [eax]
 004F266E    call       dword ptr [ecx+3C]
 004F2671    xor        eax,eax
 004F2673    pop        edx
 004F2674    pop        ecx
 004F2675    pop        ecx
 004F2676    mov        dword ptr fs:[eax],edx
 004F2679    push       4F269D
 004F267E    mov        eax,dword ptr [ebp-4]
 004F2681    mov        edx,dword ptr [eax+84]; TZDBLibCallableStatement.?f84:dword
 004F2687    mov        eax,dword ptr [ebp-4]
 004F268A    mov        eax,dword ptr [eax+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2690    mov        ecx,dword ptr [eax]
 004F2692    call       dword ptr [ecx+54]
 004F2695    ret
<004F2696    jmp        @HandleFinally
<004F269B    jmp        004F267E
 004F269D    mov        eax,dword ptr [ebp-4]
 004F26A0    mov        eax,dword ptr [eax+7C]; TZDBLibCallableStatement.?f7C:IZDBLibConnection
 004F26A3    mov        ecx,4F26DC; 'FETCHRESULTS'
 004F26A8    mov        dl,4
 004F26AA    mov        ebx,dword ptr [eax]
 004F26AC    call       dword ptr [ebx+0A0]
 004F26B2    pop        ebx
 004F26B3    pop        ecx
 004F26B4    pop        ecx
 004F26B5    pop        ebp
 004F26B6    ret
*}
end;

//004F26EC
//function sub_004F26EC:?;
//begin
{*
 004F26EC    push       ebp
 004F26ED    mov        ebp,esp
 004F26EF    xor        ecx,ecx
 004F26F1    push       ecx
 004F26F2    push       ecx
 004F26F3    push       ecx
 004F26F4    push       ecx
 004F26F5    push       ecx
 004F26F6    push       ebx
 004F26F7    push       esi
 004F26F8    mov        ebx,eax
 004F26FA    xor        eax,eax
 004F26FC    push       ebp
 004F26FD    push       4F2827
 004F2702    push       dword ptr fs:[eax]
 004F2705    mov        dword ptr fs:[eax],esp
 004F2708    mov        byte ptr [ebp-1],0
 004F270C    lea        eax,[ebx+90]; TZDBLibCallableStatement.?f90:IZResultSet
 004F2712    call       @IntfClear
 004F2717    mov        dword ptr [ebx+94],0FFFFFFFF; TZDBLibCallableStatement.?f94:dword
 004F2721    mov        eax,dword ptr [ebx+88]; TZDBLibCallableStatement.?f88:IZCollection
 004F2727    mov        edx,dword ptr [eax]
 004F2729    call       dword ptr [edx+2C]
 004F272C    test       eax,eax
>004F272E    jle        004F27F6
 004F2734    xor        eax,eax
 004F2736    push       ebp
 004F2737    push       4F27EF
 004F273C    push       dword ptr fs:[eax]
 004F273F    mov        dword ptr fs:[eax],esp
 004F2742    lea        eax,[ebp-8]
 004F2745    call       @IntfClear
 004F274A    push       eax
 004F274B    push       4F2838
 004F2750    lea        ecx,[ebp-10]
 004F2753    mov        eax,dword ptr [ebx+88]; TZDBLibCallableStatement.?f88:IZCollection
 004F2759    xor        edx,edx
 004F275B    mov        esi,dword ptr [eax]
 004F275D    call       dword ptr [esi+20]
 004F2760    mov        eax,dword ptr [ebp-10]
 004F2763    push       eax
 004F2764    mov        eax,dword ptr [eax]
 004F2766    call       dword ptr [eax]
 004F2768    test       eax,eax
 004F276A    sete       byte ptr [ebp-1]
 004F276E    cmp        byte ptr [ebp-1],0
>004F2772    je         004F278C
 004F2774    lea        eax,[ebx+90]; TZDBLibCallableStatement.?f90:IZResultSet
 004F277A    mov        edx,dword ptr [ebp-8]
 004F277D    call       @IntfCopy
 004F2782    xor        eax,eax
 004F2784    mov        dword ptr [ebx+94],eax; TZDBLibCallableStatement.?f94:dword
>004F278A    jmp        004F27C4
 004F278C    lea        eax,[ebp-0C]
 004F278F    call       @IntfClear
 004F2794    push       eax
 004F2795    push       4F2848
 004F279A    lea        ecx,[ebp-14]
 004F279D    mov        eax,dword ptr [ebx+88]; TZDBLibCallableStatement.?f88:IZCollection
 004F27A3    xor        edx,edx
 004F27A5    mov        esi,dword ptr [eax]
 004F27A7    call       dword ptr [esi+20]
 004F27AA    mov        eax,dword ptr [ebp-14]
 004F27AD    push       eax
 004F27AE    mov        eax,dword ptr [eax]
 004F27B0    call       dword ptr [eax]
 004F27B2    test       eax,eax
>004F27B4    jne        004F27C4
 004F27B6    mov        eax,dword ptr [ebp-0C]
 004F27B9    mov        edx,dword ptr [eax]
 004F27BB    call       dword ptr [edx+10]
 004F27BE    mov        dword ptr [ebx+94],eax; TZDBLibCallableStatement.?f94:dword
 004F27C4    mov        eax,dword ptr [ebx+88]; TZDBLibCallableStatement.?f88:IZCollection
 004F27CA    xor        edx,edx
 004F27CC    mov        ecx,dword ptr [eax]
 004F27CE    call       dword ptr [ecx+4C]
 004F27D1    xor        eax,eax
 004F27D3    pop        edx
 004F27D4    pop        ecx
 004F27D5    pop        ecx
 004F27D6    mov        dword ptr fs:[eax],edx
 004F27D9    push       4F27F6
 004F27DE    lea        eax,[ebp-8]
 004F27E1    call       @IntfClear
 004F27E6    lea        eax,[ebp-0C]
 004F27E9    call       @IntfClear
 004F27EE    ret
<004F27EF    jmp        @HandleFinally
<004F27F4    jmp        004F27DE
 004F27F6    xor        eax,eax
 004F27F8    pop        edx
 004F27F9    pop        ecx
 004F27FA    pop        ecx
 004F27FB    mov        dword ptr fs:[eax],edx
 004F27FE    push       4F282E
 004F2803    lea        eax,[ebp-14]
 004F2806    mov        edx,dword ptr ds:[4011A8]; IInterface
 004F280C    mov        ecx,2
 004F2811    call       @FinalizeArray
 004F2816    lea        eax,[ebp-0C]
 004F2819    call       @IntfClear
 004F281E    lea        eax,[ebp-8]
 004F2821    call       @IntfClear
 004F2826    ret
<004F2827    jmp        @HandleFinally
<004F282C    jmp        004F2803
 004F282E    mov        al,byte ptr [ebp-1]
 004F2831    pop        esi
 004F2832    pop        ebx
 004F2833    mov        esp,ebp
 004F2835    pop        ebp
 004F2836    ret
*}
//end;

//004F2858
//procedure sub_004F2858(?:?);
//begin
{*
 004F2858    push       ebp
 004F2859    mov        ebp,esp
 004F285B    push       ebx
 004F285C    push       esi
 004F285D    mov        esi,edx
 004F285F    mov        ebx,eax
 004F2861    mov        eax,ebx
 004F2863    mov        edx,dword ptr [eax]
 004F2865    call       dword ptr [edx+88]; TZDBLibCallableStatement.sub_004F2930
 004F286B    test       al,al
>004F286D    jne        004F2883
 004F286F    mov        eax,ebx
 004F2871    mov        edx,dword ptr [eax]
 004F2873    call       dword ptr [edx+40]; TZDBLibCallableStatement.sub_004F26EC
 004F2876    test       al,al
>004F2878    jne        004F2883
 004F287A    cmp        dword ptr [ebx+94],0FFFFFFFF; TZDBLibCallableStatement.?f94:dword
<004F2881    jne        004F286F
 004F2883    mov        eax,esi
 004F2885    mov        edx,dword ptr [ebx+90]; TZDBLibCallableStatement.?f90:IZResultSet
 004F288B    call       @IntfCopy
 004F2890    lea        eax,[ebx+90]; TZDBLibCallableStatement.?f90:IZResultSet
 004F2896    call       @IntfClear
 004F289B    pop        esi
 004F289C    pop        ebx
 004F289D    pop        ebp
 004F289E    ret
*}
//end;

//004F28A0
//function sub_004F28A0:?;
//begin
{*
 004F28A0    push       ebp
 004F28A1    mov        ebp,esp
 004F28A3    push       ebx
 004F28A4    push       esi
 004F28A5    mov        ebx,eax
 004F28A7    mov        eax,ebx
 004F28A9    mov        edx,dword ptr [eax]
 004F28AB    call       dword ptr [edx+88]; TZDBLibCallableStatement.sub_004F2930
 004F28B1    test       al,al
>004F28B3    je         004F28C9
 004F28B5    mov        eax,ebx
 004F28B7    mov        edx,dword ptr [eax]
 004F28B9    call       dword ptr [edx+40]; TZDBLibCallableStatement.sub_004F26EC
 004F28BC    test       al,al
>004F28BE    je         004F28C9
 004F28C0    cmp        dword ptr [ebx+94],0FFFFFFFF; TZDBLibCallableStatement.?f94:dword
<004F28C7    je         004F28B5
 004F28C9    mov        esi,dword ptr [ebx+94]; TZDBLibCallableStatement.?f94:dword
 004F28CF    lea        eax,[ebx+90]; TZDBLibCallableStatement.?f90:IZResultSet
 004F28D5    call       @IntfClear
 004F28DA    mov        eax,esi
 004F28DC    pop        esi
 004F28DD    pop        ebx
 004F28DE    pop        ebp
 004F28DF    ret
*}
//end;

//004F28E0
//procedure sub_004F28E0(?:?; ?:?);
//begin
{*
 004F28E0    push       ebp
 004F28E1    mov        ebp,esp
 004F28E3    push       ebx
 004F28E4    push       esi
 004F28E5    push       edi
 004F28E6    mov        edi,ecx
 004F28E8    mov        esi,edx
 004F28EA    mov        ebx,eax
 004F28EC    mov        edx,esi
 004F28EE    mov        eax,ebx
 004F28F0    mov        ecx,dword ptr [eax]
 004F28F2    call       dword ptr [ecx+0EC]; TZDBLibCallableStatement.sub_004E0D3C
 004F28F8    mov        eax,esi
 004F28FA    sub        eax,1
>004F28FD    jno        004F2904
 004F28FF    call       @IntOver
 004F2904    mov        edx,dword ptr [ebx+64]; TZDBLibCallableStatement.?f64:TZSQLTypeArray
 004F2907    test       edx,edx
>004F2909    je         004F2910
 004F290B    cmp        eax,dword ptr [edx-4]
>004F290E    jb         004F2915
 004F2910    call       @BoundErr
 004F2915    mov        ecx,edi
 004F2917    mov        byte ptr [edx+eax],cl
 004F291A    cmp        esi,dword ptr [ebx+58]; TZDBLibCallableStatement.?f58:dword
>004F291D    jle        004F2928
 004F291F    mov        edx,esi
 004F2921    mov        eax,ebx
 004F2923    mov        ecx,dword ptr [eax]
 004F2925    call       dword ptr [ecx+78]; TZDBLibCallableStatement.sub_004F35F8
 004F2928    pop        edi
 004F2929    pop        esi
 004F292A    pop        ebx
 004F292B    pop        ebp
 004F292C    ret
*}
//end;

//004F2930
//function sub_004F2930:?;
//begin
{*
 004F2930    push       ebp
 004F2931    mov        ebp,esp
 004F2933    add        esp,0FFFFFF70
 004F2939    push       ebx
 004F293A    push       esi
 004F293B    push       edi
 004F293C    xor        edx,edx
 004F293E    mov        dword ptr [ebp-8C],edx
 004F2944    mov        dword ptr [ebp-90],edx
 004F294A    mov        dword ptr [ebp-7C],edx
 004F294D    mov        dword ptr [ebp-8],edx
 004F2950    mov        dword ptr [ebp-2C],edx
 004F2953    mov        dword ptr [ebp-44],edx
 004F2956    mov        ebx,eax
 004F2958    lea        eax,[ebp-78]
 004F295B    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004F2961    call       @InitializeRecord
 004F2966    xor        eax,eax
 004F2968    push       ebp
 004F2969    push       4F3530
 004F296E    push       dword ptr fs:[eax]
 004F2971    mov        dword ptr fs:[eax],esp
 004F2974    mov        eax,dword ptr [ebx+7C]; TZDBLibCallableStatement.?f7C:IZDBLibConnection
 004F2977    mov        edx,dword ptr [eax]
 004F2979    call       dword ptr [edx+98]
 004F297F    mov        dword ptr [ebx+84],eax; TZDBLibCallableStatement.?f84:dword
 004F2985    lea        edx,[ebp-8]
 004F2988    mov        eax,dword ptr [ebx+48]; TZDBLibCallableStatement.?f48:String
 004F298B    call       Trim
 004F2990    push       0
 004F2992    mov        eax,dword ptr [ebp-8]
 004F2995    call       @LStrToPChar
 004F299A    mov        ecx,eax
 004F299C    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F29A2    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F29A8    mov        esi,dword ptr [eax]
 004F29AA    call       dword ptr [esi+0A8]
 004F29B0    dec        eax
>004F29B1    je         004F29C5
 004F29B3    mov        ecx,4F354C; 'EXECUTEPREPARED:dbRPCInit'
 004F29B8    mov        dl,4
 004F29BA    mov        eax,dword ptr [ebx+7C]; TZDBLibCallableStatement.?f7C:IZDBLibConnection
 004F29BD    mov        esi,dword ptr [eax]
 004F29BF    call       dword ptr [esi+0A0]
 004F29C5    mov        eax,dword ptr [ebx+58]; TZDBLibCallableStatement.?f58:dword
 004F29C8    sub        eax,1
>004F29CB    jno        004F29D2
 004F29CD    call       @IntOver
 004F29D2    test       eax,eax
>004F29D4    jle        004F2E74
 004F29DA    mov        dword ptr [ebp-4C],eax
 004F29DD    mov        esi,1
 004F29E2    mov        byte ptr [ebp-0D],0
 004F29E6    mov        eax,dword ptr [ebx+64]; TZDBLibCallableStatement.?f64:TZSQLTypeArray
 004F29E9    test       eax,eax
>004F29EB    je         004F29F2
 004F29ED    cmp        esi,dword ptr [eax-4]
>004F29F0    jb         004F29F7
 004F29F2    call       @BoundErr
 004F29F7    cmp        byte ptr [eax+esi],0
>004F29FB    je         004F2A01
 004F29FD    mov        byte ptr [ebp-0D],1
 004F2A01    mov        eax,dword ptr [ebx+50]; TZDBLibCallableStatement.?f50:TZSQLTypeArray
 004F2A04    test       eax,eax
>004F2A06    je         004F2A0D
 004F2A08    cmp        esi,dword ptr [eax-4]
>004F2A0B    jb         004F2A12
 004F2A0D    call       @BoundErr
 004F2A12    mov        al,byte ptr [eax+esi]
 004F2A15    mov        byte ptr [ebp-45],al
 004F2A18    cmp        byte ptr [ebp-45],0
>004F2A1C    jne        004F2A35
 004F2A1E    mov        eax,dword ptr [ebx+64]; TZDBLibCallableStatement.?f64:TZSQLTypeArray
 004F2A21    test       eax,eax
>004F2A23    je         004F2A2A
 004F2A25    cmp        esi,dword ptr [eax-4]
>004F2A28    jb         004F2A2F
 004F2A2A    call       @BoundErr
 004F2A2F    mov        al,byte ptr [eax+esi]
 004F2A32    mov        byte ptr [ebp-45],al
 004F2A35    imul       eax,esi,0B
>004F2A38    jno        004F2A3F
 004F2A3A    call       @IntOver
 004F2A3F    mov        edx,dword ptr [ebx+4C]; TZDBLibCallableStatement.?f4C:TZVariantDynArray
 004F2A42    lea        edx,[edx+eax*4]
 004F2A45    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F2A4A    mov        eax,dword ptr [eax]
 004F2A4C    mov        ecx,dword ptr [eax]
 004F2A4E    call       dword ptr [ecx+0C]
 004F2A51    test       al,al
>004F2A53    je         004F2AAB
 004F2A55    mov        eax,dword ptr [ebx+50]; TZDBLibCallableStatement.?f50:TZSQLTypeArray
 004F2A58    test       eax,eax
>004F2A5A    je         004F2A61
 004F2A5C    cmp        esi,dword ptr [eax-4]
>004F2A5F    jb         004F2A66
 004F2A61    call       @BoundErr
 004F2A66    cmp        byte ptr [eax+esi],0
>004F2A6A    je         004F2AAB
 004F2A6C    mov        al,byte ptr [ebp-0D]
 004F2A6F    push       eax
 004F2A70    mov        eax,dword ptr [ebx+50]; TZDBLibCallableStatement.?f50:TZSQLTypeArray
 004F2A73    test       eax,eax
>004F2A75    je         004F2A7C
 004F2A77    cmp        esi,dword ptr [eax-4]
>004F2A7A    jb         004F2A81
 004F2A7C    call       @BoundErr
 004F2A81    mov        al,byte ptr [eax+esi]
 004F2A84    call       004EFA9C
 004F2A89    push       eax
 004F2A8A    push       0FF
 004F2A8C    push       0
 004F2A8E    push       0
 004F2A90    xor        ecx,ecx
 004F2A92    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2A98    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2A9E    mov        edi,dword ptr [eax]
 004F2AA0    call       dword ptr [edi+0AC]
>004F2AA6    jmp        004F2E6A
 004F2AAB    xor        eax,eax
 004F2AAD    mov        al,byte ptr [ebp-45]
 004F2AB0    cmp        eax,0E
>004F2AB3    ja         004F2E4A
 004F2AB9    jmp        dword ptr [eax*4+4F2AC0]
 004F2AB9    dd         4F2E4A
 004F2AB9    dd         4F2AFC
 004F2AB9    dd         4F2B44
 004F2AB9    dd         4F2B8C
 004F2AB9    dd         4F2BD5
 004F2AB9    dd         4F2BD5
 004F2AB9    dd         4F2C1D
 004F2AB9    dd         4F2C66
 004F2AB9    dd         4F2C66
 004F2AB9    dd         4F2CAF
 004F2AB9    dd         4F2E4A
 004F2AB9    dd         4F2E4A
 004F2AB9    dd         4F2D15
 004F2AB9    dd         4F2D7D
 004F2AB9    dd         4F2DE5
 004F2AFC    imul       eax,esi,0B
>004F2AFF    jno        004F2B06
 004F2B01    call       @IntOver
 004F2B06    mov        edx,dword ptr [ebx+4C]; TZDBLibCallableStatement.?f4C:TZVariantDynArray
 004F2B09    lea        edx,[edx+eax*4]
 004F2B0C    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004F2B11    mov        eax,dword ptr [eax]
 004F2B13    mov        ecx,dword ptr [eax]
 004F2B15    call       dword ptr [ecx+24]
 004F2B18    mov        byte ptr [ebp-0E],al
 004F2B1B    mov        al,byte ptr [ebp-0D]
 004F2B1E    push       eax
 004F2B1F    push       30
 004F2B21    push       0FF
 004F2B23    push       0FF
 004F2B25    lea        eax,[ebp-0E]
 004F2B28    push       eax
 004F2B29    xor        ecx,ecx
 004F2B2B    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2B31    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2B37    mov        edi,dword ptr [eax]
 004F2B39    call       dword ptr [edi+0AC]
>004F2B3F    jmp        004F2E6A
 004F2B44    imul       eax,esi,0B
>004F2B47    jno        004F2B4E
 004F2B49    call       @IntOver
 004F2B4E    mov        edx,dword ptr [ebx+4C]; TZDBLibCallableStatement.?f4C:TZVariantDynArray
 004F2B51    lea        edx,[edx+eax*4]
 004F2B54    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004F2B59    mov        eax,dword ptr [eax]
 004F2B5B    mov        ecx,dword ptr [eax]
 004F2B5D    call       dword ptr [ecx+28]
 004F2B60    mov        byte ptr [ebp-0F],al
 004F2B63    mov        al,byte ptr [ebp-0D]
 004F2B66    push       eax
 004F2B67    push       30
 004F2B69    push       0FF
 004F2B6B    push       0FF
 004F2B6D    lea        eax,[ebp-0F]
 004F2B70    push       eax
 004F2B71    xor        ecx,ecx
 004F2B73    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2B79    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2B7F    mov        edi,dword ptr [eax]
 004F2B81    call       dword ptr [edi+0AC]
>004F2B87    jmp        004F2E6A
 004F2B8C    imul       eax,esi,0B
>004F2B8F    jno        004F2B96
 004F2B91    call       @IntOver
 004F2B96    mov        edx,dword ptr [ebx+4C]; TZDBLibCallableStatement.?f4C:TZVariantDynArray
 004F2B99    lea        edx,[edx+eax*4]
 004F2B9C    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004F2BA1    mov        eax,dword ptr [eax]
 004F2BA3    mov        ecx,dword ptr [eax]
 004F2BA5    call       dword ptr [ecx+28]
 004F2BA8    mov        word ptr [ebp-12],ax
 004F2BAC    mov        al,byte ptr [ebp-0D]
 004F2BAF    push       eax
 004F2BB0    push       34
 004F2BB2    push       0FF
 004F2BB4    push       0FF
 004F2BB6    lea        eax,[ebp-12]
 004F2BB9    push       eax
 004F2BBA    xor        ecx,ecx
 004F2BBC    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2BC2    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2BC8    mov        edi,dword ptr [eax]
 004F2BCA    call       dword ptr [edi+0AC]
>004F2BD0    jmp        004F2E6A
 004F2BD5    imul       eax,esi,0B
>004F2BD8    jno        004F2BDF
 004F2BDA    call       @IntOver
 004F2BDF    mov        edx,dword ptr [ebx+4C]; TZDBLibCallableStatement.?f4C:TZVariantDynArray
 004F2BE2    lea        edx,[edx+eax*4]
 004F2BE5    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004F2BEA    mov        eax,dword ptr [eax]
 004F2BEC    mov        ecx,dword ptr [eax]
 004F2BEE    call       dword ptr [ecx+28]
 004F2BF1    mov        dword ptr [ebp-18],eax
 004F2BF4    mov        al,byte ptr [ebp-0D]
 004F2BF7    push       eax
 004F2BF8    push       38
 004F2BFA    push       0FF
 004F2BFC    push       0FF
 004F2BFE    lea        eax,[ebp-18]
 004F2C01    push       eax
 004F2C02    xor        ecx,ecx
 004F2C04    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2C0A    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2C10    mov        edi,dword ptr [eax]
 004F2C12    call       dword ptr [edi+0AC]
>004F2C18    jmp        004F2E6A
 004F2C1D    imul       eax,esi,0B
>004F2C20    jno        004F2C27
 004F2C22    call       @IntOver
 004F2C27    mov        edx,dword ptr [ebx+4C]; TZDBLibCallableStatement.?f4C:TZVariantDynArray
 004F2C2A    lea        edx,[edx+eax*4]
 004F2C2D    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004F2C32    mov        eax,dword ptr [eax]
 004F2C34    mov        ecx,dword ptr [eax]
 004F2C36    call       dword ptr [ecx+2C]
 004F2C39    fstp       dword ptr [ebp-1C]
 004F2C3C    wait
 004F2C3D    mov        al,byte ptr [ebp-0D]
 004F2C40    push       eax
 004F2C41    push       3B
 004F2C43    push       0FF
 004F2C45    push       0FF
 004F2C47    lea        eax,[ebp-1C]
 004F2C4A    push       eax
 004F2C4B    xor        ecx,ecx
 004F2C4D    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2C53    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2C59    mov        edi,dword ptr [eax]
 004F2C5B    call       dword ptr [edi+0AC]
>004F2C61    jmp        004F2E6A
 004F2C66    imul       eax,esi,0B
>004F2C69    jno        004F2C70
 004F2C6B    call       @IntOver
 004F2C70    mov        edx,dword ptr [ebx+4C]; TZDBLibCallableStatement.?f4C:TZVariantDynArray
 004F2C73    lea        edx,[edx+eax*4]
 004F2C76    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004F2C7B    mov        eax,dword ptr [eax]
 004F2C7D    mov        ecx,dword ptr [eax]
 004F2C7F    call       dword ptr [ecx+2C]
 004F2C82    fstp       qword ptr [ebp-28]
 004F2C85    wait
 004F2C86    mov        al,byte ptr [ebp-0D]
 004F2C89    push       eax
 004F2C8A    push       3E
 004F2C8C    push       0FF
 004F2C8E    push       0FF
 004F2C90    lea        eax,[ebp-28]
 004F2C93    push       eax
 004F2C94    xor        ecx,ecx
 004F2C96    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2C9C    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2CA2    mov        edi,dword ptr [eax]
 004F2CA4    call       dword ptr [edi+0AC]
>004F2CAA    jmp        004F2E6A
 004F2CAF    imul       eax,esi,0B
>004F2CB2    jno        004F2CB9
 004F2CB4    call       @IntOver
 004F2CB9    mov        edx,dword ptr [ebx+4C]; TZDBLibCallableStatement.?f4C:TZVariantDynArray
 004F2CBC    lea        edx,[edx+eax*4]
 004F2CBF    lea        ecx,[ebp-2C]
 004F2CC2    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004F2CC7    mov        eax,dword ptr [eax]
 004F2CC9    mov        edi,dword ptr [eax]
 004F2CCB    call       dword ptr [edi+30]
 004F2CCE    cmp        dword ptr [ebp-2C],0
>004F2CD2    jne        004F2CDB
 004F2CD4    mov        edi,1
>004F2CD9    jmp        004F2CE5
 004F2CDB    mov        eax,dword ptr [ebp-2C]
 004F2CDE    call       @LStrLen
 004F2CE3    mov        edi,eax
 004F2CE5    mov        al,byte ptr [ebp-0D]
 004F2CE8    push       eax
 004F2CE9    push       2F
 004F2CEB    push       7FFFFFFF
 004F2CF0    push       edi
 004F2CF1    mov        eax,dword ptr [ebp-2C]
 004F2CF4    call       @LStrToPChar
 004F2CF9    push       eax
 004F2CFA    xor        ecx,ecx
 004F2CFC    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2D02    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2D08    mov        edi,dword ptr [eax]
 004F2D0A    call       dword ptr [edi+0AC]
>004F2D10    jmp        004F2E6A
 004F2D15    imul       eax,esi,0B
>004F2D18    jno        004F2D1F
 004F2D1A    call       @IntOver
 004F2D1F    mov        edx,dword ptr [ebx+4C]; TZDBLibCallableStatement.?f4C:TZVariantDynArray
 004F2D22    lea        edx,[edx+eax*4]
 004F2D25    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004F2D2A    mov        eax,dword ptr [eax]
 004F2D2C    mov        ecx,dword ptr [eax]
 004F2D2E    call       dword ptr [ecx+38]
 004F2D31    add        esp,0FFFFFFF8
 004F2D34    fstp       qword ptr [esp]
 004F2D37    wait
 004F2D38    lea        edx,[ebp-2C]
 004F2D3B    mov        eax,4F3570; 'yyyymmdd'
 004F2D40    call       FormatDateTime
 004F2D45    mov        al,byte ptr [ebp-0D]
 004F2D48    push       eax
 004F2D49    push       2F
 004F2D4B    push       7FFFFFFF
 004F2D50    mov        eax,dword ptr [ebp-2C]
 004F2D53    call       @LStrLen
 004F2D58    push       eax
 004F2D59    mov        eax,dword ptr [ebp-2C]
 004F2D5C    call       @LStrToPChar
 004F2D61    push       eax
 004F2D62    xor        ecx,ecx
 004F2D64    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2D6A    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2D70    mov        edi,dword ptr [eax]
 004F2D72    call       dword ptr [edi+0AC]
>004F2D78    jmp        004F2E6A
 004F2D7D    imul       eax,esi,0B
>004F2D80    jno        004F2D87
 004F2D82    call       @IntOver
 004F2D87    mov        edx,dword ptr [ebx+4C]; TZDBLibCallableStatement.?f4C:TZVariantDynArray
 004F2D8A    lea        edx,[edx+eax*4]
 004F2D8D    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004F2D92    mov        eax,dword ptr [eax]
 004F2D94    mov        ecx,dword ptr [eax]
 004F2D96    call       dword ptr [ecx+38]
 004F2D99    add        esp,0FFFFFFF8
 004F2D9C    fstp       qword ptr [esp]
 004F2D9F    wait
 004F2DA0    lea        edx,[ebp-2C]
 004F2DA3    mov        eax,4F3584; 'hh\":\"mm\":\"ss\":\"zzz'
 004F2DA8    call       FormatDateTime
 004F2DAD    mov        al,byte ptr [ebp-0D]
 004F2DB0    push       eax
 004F2DB1    push       2F
 004F2DB3    push       7FFFFFFF
 004F2DB8    mov        eax,dword ptr [ebp-2C]
 004F2DBB    call       @LStrLen
 004F2DC0    push       eax
 004F2DC1    mov        eax,dword ptr [ebp-2C]
 004F2DC4    call       @LStrToPChar
 004F2DC9    push       eax
 004F2DCA    xor        ecx,ecx
 004F2DCC    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2DD2    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2DD8    mov        edi,dword ptr [eax]
 004F2DDA    call       dword ptr [edi+0AC]
>004F2DE0    jmp        004F2E6A
 004F2DE5    imul       eax,esi,0B
>004F2DE8    jno        004F2DEF
 004F2DEA    call       @IntOver
 004F2DEF    mov        edx,dword ptr [ebx+4C]; TZDBLibCallableStatement.?f4C:TZVariantDynArray
 004F2DF2    lea        edx,[edx+eax*4]
 004F2DF5    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004F2DFA    mov        eax,dword ptr [eax]
 004F2DFC    mov        ecx,dword ptr [eax]
 004F2DFE    call       dword ptr [ecx+38]
 004F2E01    add        esp,0FFFFFFF8
 004F2E04    fstp       qword ptr [esp]
 004F2E07    wait
 004F2E08    lea        edx,[ebp-2C]
 004F2E0B    mov        eax,4F35A0; 'yyyymmdd hh\":\"mm\":\"ss\":\"zzz'
 004F2E10    call       FormatDateTime
 004F2E15    mov        al,byte ptr [ebp-0D]
 004F2E18    push       eax
 004F2E19    push       2F
 004F2E1B    push       7FFFFFFF
 004F2E20    mov        eax,dword ptr [ebp-2C]
 004F2E23    call       @LStrLen
 004F2E28    push       eax
 004F2E29    mov        eax,dword ptr [ebp-2C]
 004F2E2C    call       @LStrToPChar
 004F2E31    push       eax
 004F2E32    xor        ecx,ecx
 004F2E34    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2E3A    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2E40    mov        edi,dword ptr [eax]
 004F2E42    call       dword ptr [edi+0AC]
>004F2E48    jmp        004F2E6A
 004F2E4A    push       0
 004F2E4C    push       2F
 004F2E4E    push       0
 004F2E50    push       0
 004F2E52    push       0
 004F2E54    xor        ecx,ecx
 004F2E56    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2E5C    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2E62    mov        edi,dword ptr [eax]
 004F2E64    call       dword ptr [edi+0AC]
 004F2E6A    inc        esi
 004F2E6B    dec        dword ptr [ebp-4C]
<004F2E6E    jne        004F29E2
 004F2E74    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2E7A    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2E80    mov        ecx,dword ptr [eax]
 004F2E82    call       dword ptr [ecx+0B4]
 004F2E88    dec        eax
>004F2E89    je         004F2E9D
 004F2E8B    mov        ecx,4F35C4; 'EXECUTEPREPARED:dbRPCExec'
 004F2E90    mov        dl,4
 004F2E92    mov        eax,dword ptr [ebx+7C]; TZDBLibCallableStatement.?f7C:IZDBLibConnection
 004F2E95    mov        esi,dword ptr [eax]
 004F2E97    call       dword ptr [esi+0A0]
 004F2E9D    mov        eax,ebx
 004F2E9F    mov        edx,dword ptr [eax]
 004F2EA1    call       dword ptr [edx+140]; TZDBLibCallableStatement.sub_004F23F0
 004F2EA7    mov        eax,ebx
 004F2EA9    mov        edx,dword ptr [eax]
 004F2EAB    call       dword ptr [edx+40]; TZDBLibCallableStatement.sub_004F26EC
 004F2EAE    mov        byte ptr [ebp-1],al
 004F2EB1    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2EB7    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2EBD    mov        ecx,dword ptr [eax]
 004F2EBF    call       dword ptr [ecx+0BC]
 004F2EC5    test       al,al
>004F2EC7    je         004F2EF1
 004F2EC9    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2ECF    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2ED5    mov        ecx,dword ptr [eax]
 004F2ED7    call       dword ptr [ecx+0B8]
 004F2EDD    cdq
 004F2EDE    push       edx
 004F2EDF    push       eax
 004F2EE0    lea        edx,[ebp-78]
 004F2EE3    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F2EE8    mov        eax,dword ptr [eax]
 004F2EEA    mov        ecx,dword ptr [eax]
 004F2EEC    call       dword ptr [ecx+48]
>004F2EEF    jmp        004F2F05
 004F2EF1    lea        eax,[ebp-78]
 004F2EF4    mov        edx,dword ptr ds:[61BF44]; ^gvar_0061DCE0:TZVariant
 004F2EFA    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004F2F00    call       @CopyRecord
 004F2F05    xor        eax,eax
 004F2F07    imul       eax,eax,0B
>004F2F0A    jno        004F2F11
 004F2F0C    call       @IntOver
 004F2F11    mov        edx,dword ptr [ebx+60]; TZDBLibCallableStatement.?f60:TZVariantDynArray
 004F2F14    lea        eax,[edx+eax*4]
 004F2F17    lea        edx,[ebp-78]
 004F2F1A    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004F2F20    call       @CopyRecord
 004F2F25    mov        dword ptr [ebp-0C],1
 004F2F2C    mov        eax,dword ptr [ebx+68]; TZDBLibCallableStatement.?f68:dword
 004F2F2F    sub        eax,1
>004F2F32    jno        004F2F39
 004F2F34    call       @IntOver
 004F2F39    test       eax,eax
>004F2F3B    jle        004F347F
 004F2F41    mov        dword ptr [ebp-4C],eax
 004F2F44    mov        esi,1
 004F2F49    mov        eax,dword ptr [ebx+64]; TZDBLibCallableStatement.?f64:TZSQLTypeArray
 004F2F4C    test       eax,eax
>004F2F4E    je         004F2F55
 004F2F50    cmp        esi,dword ptr [eax-4]
>004F2F53    jb         004F2F5A
 004F2F55    call       @BoundErr
 004F2F5A    cmp        byte ptr [eax+esi],0
>004F2F5E    je         004F3475
 004F2F64    mov        ecx,dword ptr [ebp-0C]
 004F2F67    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2F6D    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2F73    mov        edi,dword ptr [eax]
 004F2F75    call       dword ptr [edi+0C4]
 004F2F7B    test       eax,eax
>004F2F7D    jne        004F2F98
 004F2F7F    lea        eax,[ebp-78]
 004F2F82    mov        edx,dword ptr ds:[61BF44]; ^gvar_0061DCE0:TZVariant
 004F2F88    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004F2F8E    call       @CopyRecord
>004F2F93    jmp        004F344C
 004F2F98    mov        ecx,dword ptr [ebp-0C]
 004F2F9B    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F2FA1    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F2FA7    mov        edi,dword ptr [eax]
 004F2FA9    call       dword ptr [edi+0CC]
 004F2FAF    cmp        eax,3B
>004F2FB2    jg         004F3005
>004F2FB4    je         004F3165
 004F2FBA    add        eax,0FFFFFFD3
 004F2FBD    cmp        eax,0D
>004F2FC0    ja         004F3438
 004F2FC6    jmp        dword ptr [eax*4+4F2FCD]
 004F2FC6    dd         4F3043
 004F2FC6    dd         4F3438
 004F2FC6    dd         4F3043
 004F2FC6    dd         4F30D2
 004F2FC6    dd         4F3438
 004F2FC6    dd         4F3438
 004F2FC6    dd         4F3438
 004F2FC6    dd         4F3104
 004F2FC6    dd         4F3438
 004F2FC6    dd         4F3438
 004F2FC6    dd         4F3438
 004F2FC6    dd         4F3135
 004F2FC6    dd         4F3438
 004F2FC6    dd         4F3344
 004F3005    cmp        eax,6A
>004F3008    jg         004F302C
>004F300A    je         004F3266
 004F3010    sub        eax,3C
>004F3013    je         004F322C
 004F3019    dec        eax
>004F301A    je         004F33CC
 004F3020    dec        eax
>004F3021    je         004F3199
>004F3027    jmp        004F3438
 004F302C    sub        eax,6C
>004F302F    je         004F32D5
 004F3035    sub        eax,0E
>004F3038    je         004F31CD
>004F303E    jmp        004F3438
 004F3043    mov        ecx,dword ptr [ebp-0C]
 004F3046    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F304C    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F3052    mov        edi,dword ptr [eax]
 004F3054    call       dword ptr [edi+0C8]
 004F305A    mov        edi,eax
 004F305C    push       edi
 004F305D    lea        eax,[ebp-44]
 004F3060    mov        ecx,1
 004F3065    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004F306B    call       @DynArraySetLength
 004F3070    add        esp,4
 004F3073    mov        ecx,dword ptr [ebp-0C]
 004F3076    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F307C    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F3082    mov        edi,dword ptr [eax]
 004F3084    call       dword ptr [edi+0C4]
 004F308A    push       eax
 004F308B    mov        eax,dword ptr [ebp-44]
 004F308E    call       @DynArrayLength
 004F3093    mov        ecx,eax
 004F3095    xor        eax,eax
 004F3097    mov        edx,dword ptr [ebp-44]
 004F309A    test       edx,edx
>004F309C    je         004F30A3
 004F309E    cmp        eax,dword ptr [edx-4]
>004F30A1    jb         004F30A8
 004F30A3    call       @BoundErr
 004F30A8    add        edx,eax
 004F30AA    pop        eax
 004F30AB    call       Move
 004F30B0    lea        edx,[ebp-7C]
 004F30B3    mov        eax,dword ptr [ebp-44]
 004F30B6    call       004BF648
 004F30BB    mov        ecx,dword ptr [ebp-7C]
 004F30BE    lea        edx,[ebp-78]
 004F30C1    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F30C6    mov        eax,dword ptr [eax]
 004F30C8    mov        edi,dword ptr [eax]
 004F30CA    call       dword ptr [edi+50]
>004F30CD    jmp        004F344C
 004F30D2    mov        ecx,dword ptr [ebp-0C]
 004F30D5    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F30DB    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F30E1    mov        edi,dword ptr [eax]
 004F30E3    call       dword ptr [edi+0C4]
 004F30E9    movzx      eax,byte ptr [eax]
 004F30EC    xor        edx,edx
 004F30EE    push       edx
 004F30EF    push       eax
 004F30F0    lea        edx,[ebp-78]
 004F30F3    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F30F8    mov        eax,dword ptr [eax]
 004F30FA    mov        ecx,dword ptr [eax]
 004F30FC    call       dword ptr [ecx+48]
>004F30FF    jmp        004F344C
 004F3104    mov        ecx,dword ptr [ebp-0C]
 004F3107    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F310D    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F3113    mov        edi,dword ptr [eax]
 004F3115    call       dword ptr [edi+0C4]
 004F311B    movsx      eax,word ptr [eax]
 004F311E    cdq
 004F311F    push       edx
 004F3120    push       eax
 004F3121    lea        edx,[ebp-78]
 004F3124    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F3129    mov        eax,dword ptr [eax]
 004F312B    mov        ecx,dword ptr [eax]
 004F312D    call       dword ptr [ecx+48]
>004F3130    jmp        004F344C
 004F3135    mov        ecx,dword ptr [ebp-0C]
 004F3138    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F313E    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F3144    mov        edi,dword ptr [eax]
 004F3146    call       dword ptr [edi+0C4]
 004F314C    mov        eax,dword ptr [eax]
 004F314E    cdq
 004F314F    push       edx
 004F3150    push       eax
 004F3151    lea        edx,[ebp-78]
 004F3154    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F3159    mov        eax,dword ptr [eax]
 004F315B    mov        ecx,dword ptr [eax]
 004F315D    call       dword ptr [ecx+48]
>004F3160    jmp        004F344C
 004F3165    mov        ecx,dword ptr [ebp-0C]
 004F3168    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F316E    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F3174    mov        edi,dword ptr [eax]
 004F3176    call       dword ptr [edi+0C4]
 004F317C    fld        dword ptr [eax]
 004F317E    add        esp,0FFFFFFF4
 004F3181    fstp       tbyte ptr [esp]
 004F3184    wait
 004F3185    lea        edx,[ebp-78]
 004F3188    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F318D    mov        eax,dword ptr [eax]
 004F318F    mov        ecx,dword ptr [eax]
 004F3191    call       dword ptr [ecx+4C]
>004F3194    jmp        004F344C
 004F3199    mov        ecx,dword ptr [ebp-0C]
 004F319C    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F31A2    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F31A8    mov        edi,dword ptr [eax]
 004F31AA    call       dword ptr [edi+0C4]
 004F31B0    fld        qword ptr [eax]
 004F31B2    add        esp,0FFFFFFF4
 004F31B5    fstp       tbyte ptr [esp]
 004F31B8    wait
 004F31B9    lea        edx,[ebp-78]
 004F31BC    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F31C1    mov        eax,dword ptr [eax]
 004F31C3    mov        ecx,dword ptr [eax]
 004F31C5    call       dword ptr [ecx+4C]
>004F31C8    jmp        004F344C
 004F31CD    mov        ecx,dword ptr [ebp-0C]
 004F31D0    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F31D6    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F31DC    mov        edi,dword ptr [eax]
 004F31DE    call       dword ptr [edi+0C4]
 004F31E4    push       eax
 004F31E5    push       4
 004F31E7    push       3C
 004F31E9    lea        eax,[ebp-38]
 004F31EC    push       eax
 004F31ED    push       8
 004F31EF    mov        ecx,7A
 004F31F4    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F31FA    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F3200    mov        edi,dword ptr [eax]
 004F3202    call       dword ptr [edi+98]
 004F3208    fild       qword ptr [ebp-38]
 004F320B    fdiv       dword ptr ds:[4F35E0]; 10000:Single
 004F3211    add        esp,0FFFFFFF4
 004F3214    fstp       tbyte ptr [esp]
 004F3217    wait
 004F3218    lea        edx,[ebp-78]
 004F321B    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F3220    mov        eax,dword ptr [eax]
 004F3222    mov        ecx,dword ptr [eax]
 004F3224    call       dword ptr [ecx+4C]
>004F3227    jmp        004F344C
 004F322C    mov        ecx,dword ptr [ebp-0C]
 004F322F    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F3235    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F323B    mov        edi,dword ptr [eax]
 004F323D    call       dword ptr [edi+0C4]
 004F3243    fild       qword ptr [eax]
 004F3245    fdiv       dword ptr ds:[4F35E0]; 10000:Single
 004F324B    add        esp,0FFFFFFF4
 004F324E    fstp       tbyte ptr [esp]
 004F3251    wait
 004F3252    lea        edx,[ebp-78]
 004F3255    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F325A    mov        eax,dword ptr [eax]
 004F325C    mov        ecx,dword ptr [eax]
 004F325E    call       dword ptr [ecx+4C]
>004F3261    jmp        004F344C
 004F3266    mov        ecx,dword ptr [ebp-0C]
 004F3269    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F326F    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F3275    mov        edi,dword ptr [eax]
 004F3277    call       dword ptr [edi+0C4]
 004F327D    push       eax
 004F327E    mov        ecx,dword ptr [ebp-0C]
 004F3281    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F3287    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F328D    mov        edi,dword ptr [eax]
 004F328F    call       dword ptr [edi+0C8]
 004F3295    push       eax
 004F3296    push       3E
 004F3298    lea        eax,[ebp-28]
 004F329B    push       eax
 004F329C    push       8
 004F329E    mov        ecx,6A
 004F32A3    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F32A9    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F32AF    mov        edi,dword ptr [eax]
 004F32B1    call       dword ptr [edi+98]
 004F32B7    fld        qword ptr [ebp-28]
 004F32BA    add        esp,0FFFFFFF4
 004F32BD    fstp       tbyte ptr [esp]
 004F32C0    wait
 004F32C1    lea        edx,[ebp-78]
 004F32C4    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F32C9    mov        eax,dword ptr [eax]
 004F32CB    mov        ecx,dword ptr [eax]
 004F32CD    call       dword ptr [ecx+4C]
>004F32D0    jmp        004F344C
 004F32D5    mov        ecx,dword ptr [ebp-0C]
 004F32D8    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F32DE    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F32E4    mov        edi,dword ptr [eax]
 004F32E6    call       dword ptr [edi+0C4]
 004F32EC    push       eax
 004F32ED    mov        ecx,dword ptr [ebp-0C]
 004F32F0    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F32F6    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F32FC    mov        edi,dword ptr [eax]
 004F32FE    call       dword ptr [edi+0C8]
 004F3304    push       eax
 004F3305    push       3E
 004F3307    lea        eax,[ebp-28]
 004F330A    push       eax
 004F330B    push       8
 004F330D    mov        ecx,6C
 004F3312    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F3318    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F331E    mov        edi,dword ptr [eax]
 004F3320    call       dword ptr [edi+98]
 004F3326    fld        qword ptr [ebp-28]
 004F3329    add        esp,0FFFFFFF4
 004F332C    fstp       tbyte ptr [esp]
 004F332F    wait
 004F3330    lea        edx,[ebp-78]
 004F3333    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F3338    mov        eax,dword ptr [eax]
 004F333A    mov        ecx,dword ptr [eax]
 004F333C    call       dword ptr [ecx+4C]
>004F333F    jmp        004F344C
 004F3344    mov        ecx,dword ptr [ebp-0C]
 004F3347    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F334D    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F3353    mov        edi,dword ptr [eax]
 004F3355    call       dword ptr [edi+0C4]
 004F335B    push       eax
 004F335C    push       4
 004F335E    push       3D
 004F3360    lea        eax,[ebp-40]
 004F3363    push       eax
 004F3364    push       8
 004F3366    mov        ecx,3A
 004F336B    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F3371    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F3377    mov        edi,dword ptr [eax]
 004F3379    call       dword ptr [edi+98]
 004F337F    mov        eax,dword ptr [ebp-40]
 004F3382    add        eax,2
>004F3385    jno        004F338C
 004F3387    call       @IntOver
 004F338C    mov        dword ptr [ebp-80],eax
 004F338F    fild       dword ptr [ebp-80]
 004F3392    mov        eax,dword ptr [ebp-3C]
 004F3395    mov        dword ptr [ebp-88],eax
 004F339B    xor        eax,eax
 004F339D    mov        dword ptr [ebp-84],eax
 004F33A3    fild       qword ptr [ebp-88]
 004F33A9    fdiv       dword ptr ds:[4F35E4]; 25920000:Single
 004F33AF    faddp      st(1),st
 004F33B1    add        esp,0FFFFFFF8
 004F33B4    fstp       qword ptr [esp]
 004F33B7    wait
 004F33B8    lea        edx,[ebp-78]
 004F33BB    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F33C0    mov        eax,dword ptr [eax]
 004F33C2    mov        ecx,dword ptr [eax]
 004F33C4    call       dword ptr [ecx+58]
>004F33C7    jmp        004F344C
 004F33CC    mov        ecx,dword ptr [ebp-0C]
 004F33CF    mov        edx,dword ptr [ebx+84]; TZDBLibCallableStatement.?f84:dword
 004F33D5    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F33DB    mov        edi,dword ptr [eax]
 004F33DD    call       dword ptr [edi+0C4]
 004F33E3    mov        edx,dword ptr [eax]
 004F33E5    mov        dword ptr [ebp-40],edx
 004F33E8    mov        edx,dword ptr [eax+4]
 004F33EB    mov        dword ptr [ebp-3C],edx
 004F33EE    mov        eax,dword ptr [ebp-40]
 004F33F1    add        eax,2
>004F33F4    jno        004F33FB
 004F33F6    call       @IntOver
 004F33FB    mov        dword ptr [ebp-80],eax
 004F33FE    fild       dword ptr [ebp-80]
 004F3401    mov        eax,dword ptr [ebp-3C]
 004F3404    mov        dword ptr [ebp-88],eax
 004F340A    xor        eax,eax
 004F340C    mov        dword ptr [ebp-84],eax
 004F3412    fild       qword ptr [ebp-88]
 004F3418    fdiv       dword ptr ds:[4F35E4]; 25920000:Single
 004F341E    faddp      st(1),st
 004F3420    add        esp,0FFFFFFF8
 004F3423    fstp       qword ptr [esp]
 004F3426    wait
 004F3427    lea        edx,[ebp-78]
 004F342A    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004F342F    mov        eax,dword ptr [eax]
 004F3431    mov        ecx,dword ptr [eax]
 004F3433    call       dword ptr [ecx+58]
>004F3436    jmp        004F344C
 004F3438    lea        eax,[ebp-78]
 004F343B    mov        edx,dword ptr ds:[61BF44]; ^gvar_0061DCE0:TZVariant
 004F3441    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004F3447    call       @CopyRecord
 004F344C    imul       eax,esi,0B
>004F344F    jno        004F3456
 004F3451    call       @IntOver
 004F3456    mov        edx,dword ptr [ebx+60]; TZDBLibCallableStatement.?f60:TZVariantDynArray
 004F3459    lea        eax,[edx+eax*4]
 004F345C    lea        edx,[ebp-78]
 004F345F    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004F3465    call       @CopyRecord
 004F346A    add        dword ptr [ebp-0C],1
>004F346E    jno        004F3475
 004F3470    call       @IntOver
 004F3475    inc        esi
 004F3476    dec        dword ptr [ebp-4C]
<004F3479    jne        004F2F49
 004F347F    mov        eax,ebx
 004F3481    mov        edx,dword ptr [eax]
 004F3483    call       dword ptr [edx+144]; TZDBLibCallableStatement.sub_004F2588
 004F3489    lea        eax,[ebp-8C]
 004F348F    push       eax
 004F3490    mov        eax,dword ptr [ebx+48]; TZDBLibCallableStatement.?f48:String
 004F3493    mov        dword ptr [ebp-88],eax
 004F3499    mov        byte ptr [ebp-84],0B
 004F34A0    lea        edx,[ebp-88]
 004F34A6    xor        ecx,ecx
 004F34A8    mov        eax,4F35F0; 'EXEC %s'
 004F34AD    call       Format
 004F34B2    mov        eax,dword ptr [ebp-8C]
 004F34B8    push       eax
 004F34B9    lea        edx,[ebp-90]
 004F34BF    mov        eax,dword ptr [ebx+80]; TZDBLibCallableStatement.?f80:IZDBLibPlainDriver
 004F34C5    mov        ecx,dword ptr [eax]
 004F34C7    call       dword ptr [ecx+0C]
 004F34CA    mov        ecx,dword ptr [ebp-90]
 004F34D0    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004F34D5    mov        eax,dword ptr [eax]
 004F34D7    mov        dl,3
 004F34D9    mov        ebx,dword ptr [eax]
 004F34DB    call       dword ptr [ebx+3C]
 004F34DE    xor        eax,eax
 004F34E0    pop        edx
 004F34E1    pop        ecx
 004F34E2    pop        ecx
 004F34E3    mov        dword ptr fs:[eax],edx
 004F34E6    push       4F3537
 004F34EB    lea        eax,[ebp-90]
 004F34F1    mov        edx,2
 004F34F6    call       @LStrArrayClr
 004F34FB    lea        eax,[ebp-7C]
 004F34FE    call       @LStrClr
 004F3503    lea        eax,[ebp-78]
 004F3506    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004F350C    call       @FinalizeRecord
 004F3511    lea        eax,[ebp-44]
 004F3514    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004F351A    call       @DynArrayClear
 004F351F    lea        eax,[ebp-2C]
 004F3522    call       @LStrClr
 004F3527    lea        eax,[ebp-8]
 004F352A    call       @LStrClr
 004F352F    ret
<004F3530    jmp        @HandleFinally
<004F3535    jmp        004F34EB
 004F3537    mov        al,byte ptr [ebp-1]
 004F353A    pop        edi
 004F353B    pop        esi
 004F353C    pop        ebx
 004F353D    mov        esp,ebp
 004F353F    pop        ebp
 004F3540    ret
*}
//end;

//004F35F8
//procedure sub_004F35F8(?:?);
//begin
{*
 004F35F8    push       ebp
 004F35F9    mov        ebp,esp
 004F35FB    push       ebx
 004F35FC    push       esi
 004F35FD    mov        esi,edx
 004F35FF    mov        ebx,eax
 004F3601    mov        edx,esi
 004F3603    mov        eax,ebx
 004F3605    call       004E0150
 004F360A    cmp        esi,dword ptr [ebx+68]; TZDBLibCallableStatement.?f68:dword
>004F360D    jle        004F361B
 004F360F    mov        edx,esi
 004F3611    mov        eax,ebx
 004F3613    mov        ecx,dword ptr [eax]
 004F3615    call       dword ptr [ecx+0EC]; TZDBLibCallableStatement.sub_004E0D3C
 004F361B    pop        esi
 004F361C    pop        ebx
 004F361D    pop        ebp
 004F361E    ret
*}
//end;

end.