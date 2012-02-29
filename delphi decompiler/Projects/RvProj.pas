{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvProj;

interface

uses
  Classes, Windows, Graphics, RvClass, RvDefine, RvSecurity, RpDefine;

type
  TRaveReport = class(TRaveProjectItem)
  public
    f7C:String;//f7C
    f80:String;//f80
    fA0:TList;//fA0
    fA4:TStringList;//fA4
    FirstPage:TRavePage;//fA8
    Copies:Integer;//fAC
    PageList:TRaveComponentList;//fB0
    AlwaysGenerate:Boolean;//fB4
    Collate:TRavePrinterCollate;//fB5
    Duplex:TRavePrinterDuplex;//fB6
    fB8:String;//fB8
    Resolution:TRavePrinterResolution;//fBC
    MaxPages:Integer;//fC0
    SecurityControl:TRaveBaseSecurity;//fC4
    fC8:dword;//fC8
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005A1B04(?:?; ?:?); virtual;
    //procedure sub_005A1BC0(?:?); virtual;
    //procedure sub_005A1CF8(?:?); virtual;
    procedure sub_005A211C; virtual;
    procedure sub_005A219C; virtual;
    procedure sub_005A21DC; virtual;
  end;
  TRaveModuleManager = class(TObject)
  public
    f4:TList;//f4
    f8:dword;//f8
    destructor Destroy; virtual;
    //constructor Create(?:TRaveModuleManager; _Dv__:Boolean);
  end;
  TRaveProjectManager = class(TRaveProjectItem)
  public
    f84:String;//f84
    f88:TList;//f88
    f8C:TList;//f8C
    f90:TList;//f90
    f94:TRaveReport;//f94
    f98:byte;//f98
    f9C:String;//f9C
    fA0:String;//fA0
    fA4:byte;//fA4
    fA8:dword;//fA8
    fAC:byte;//fAC
    fAD:byte;//fAD
    //fB0:?;//fB0
    fB2:word;//fB2
    fB4:dword;//fB4
    //fB8:?;//fB8
    Categories:TStrings;//fBC
    fC0:TStringList;//fC0
    Units:TPrintUnits;//fC4
    UnitsFactor:Double;//fC8
    fCC:dword;//fCC
    fD0:byte;//fD0
    fD1:byte;//fD1
    fD4:dword;//fD4
    SecurityControl:TRaveBaseSecurity;//fDC
    fE0:String;//fE0
    fE4:dword;//fE4
    fE8:TRaveModuleManager;//fE8
    destructor Destroy; virtual;
    procedure DefineProperties(Filer:TFiler); virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005A46D4(?:?; ?:?); virtual;
    //procedure sub_005A4698(?:?; ?:?); virtual;
    //procedure sub_005A4518(?:?); virtual;
    //procedure sub_005A3EDC(?:?); virtual;
    procedure sub_005A5114; virtual;
  end;
  TRaveForwardRef = class(TObject)
  public
    f4:dword;//f4
    f8:dword;//f8
    fC:dword;//fC
    //constructor Create(?:TRaveForwardRef; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//005A1738
//constructor TRaveForwardRef.Create(?:TRaveForwardRef; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 005A1738    push       ebp
 005A1739    mov        ebp,esp
 005A173B    test       dl,dl
>005A173D    je         005A1747
 005A173F    add        esp,0FFFFFFF0
 005A1742    call       @ClassCreate
 005A1747    mov        dword ptr [eax+8],ecx; TRaveForwardRef.?f8:dword
 005A174A    mov        ecx,dword ptr [ebp+0C]
 005A174D    mov        dword ptr [eax+0C],ecx; TRaveForwardRef.?fC:dword
 005A1750    mov        ecx,dword ptr [ebp+8]
 005A1753    mov        dword ptr [eax+4],ecx; TRaveForwardRef.?f4:dword
 005A1756    test       dl,dl
>005A1758    je         005A1769
 005A175A    call       @AfterConstruction
 005A175F    pop        dword ptr fs:[0]
 005A1766    add        esp,0C
 005A1769    pop        ebp
 005A176A    ret        8
*}
//end;

//005A1770
//procedure sub_005A1770(?:void; ?:AnsiString; ?:TRaveComponent; ?:?; ?:?; ?:?);
//begin
{*
 005A1770    push       ebp
 005A1771    mov        ebp,esp
 005A1773    push       ecx
 005A1774    push       ebx
 005A1775    push       esi
 005A1776    push       edi
 005A1777    mov        edi,ecx
 005A1779    mov        dword ptr [ebp-4],edx
 005A177C    mov        ebx,eax
 005A177E    mov        eax,dword ptr [ebp-4]
 005A1781    call       @LStrAddRef
 005A1786    xor        eax,eax
 005A1788    push       ebp
 005A1789    push       5A181E
 005A178E    push       dword ptr fs:[eax]
 005A1791    mov        dword ptr fs:[eax],esp
 005A1794    cmp        dword ptr [ebx+7C],0
>005A1798    jne        005A17BB
 005A179A    mov        dl,1
 005A179C    mov        eax,[0041C8E4]; TStringList
 005A17A1    call       TObject.Create; TStringList.Create
 005A17A6    mov        esi,eax
 005A17A8    mov        dword ptr [ebx+7C],esi
 005A17AB    mov        dl,1
 005A17AD    mov        eax,esi
 005A17AF    call       TStringList.SetSorted
 005A17B4    mov        eax,dword ptr [ebx+7C]
 005A17B7    mov        byte ptr [eax+1D],1
 005A17BB    mov        edx,dword ptr [ebp-4]
 005A17BE    mov        eax,5A1838; '.'
 005A17C3    call       @LStrPos
 005A17C8    test       eax,eax
>005A17CA    jne        005A17E4
 005A17CC    push       dword ptr [edi+8]; TRaveComponent.?f8:TComponentName
 005A17CF    push       5A1838; '.'
 005A17D4    push       dword ptr [ebp-4]
 005A17D7    lea        eax,[ebp-4]
 005A17DA    mov        edx,3
 005A17DF    call       @LStrCatN
 005A17E4    mov        eax,dword ptr [ebp+0C]
 005A17E7    push       eax
 005A17E8    mov        eax,dword ptr [ebp+8]
 005A17EB    push       eax
 005A17EC    mov        ecx,dword ptr [ebp+10]
 005A17EF    mov        dl,1
 005A17F1    mov        eax,[005A16DC]; TRaveForwardRef
 005A17F6    call       TRaveForwardRef.Create; TRaveForwardRef.Create
 005A17FB    mov        ecx,eax
 005A17FD    mov        edx,dword ptr [ebp-4]
 005A1800    mov        eax,dword ptr [ebx+7C]
 005A1803    mov        ebx,dword ptr [eax]
 005A1805    call       dword ptr [ebx+3C]
 005A1808    xor        eax,eax
 005A180A    pop        edx
 005A180B    pop        ecx
 005A180C    pop        ecx
 005A180D    mov        dword ptr fs:[eax],edx
 005A1810    push       5A1825
 005A1815    lea        eax,[ebp-4]
 005A1818    call       @LStrClr
 005A181D    ret
<005A181E    jmp        @HandleFinally
<005A1823    jmp        005A1815
 005A1825    pop        edi
 005A1826    pop        esi
 005A1827    pop        ebx
 005A1828    pop        ecx
 005A1829    pop        ebp
 005A182A    ret        0C
*}
//end;

//005A183C
//procedure sub_005A183C(?:TRaveComponent; ?:AnsiString; ?:void);
//begin
{*
 005A183C    push       ebp
 005A183D    mov        ebp,esp
 005A183F    add        esp,0FFFFFFF8
 005A1842    push       ebx
 005A1843    push       esi
 005A1844    push       edi
 005A1845    xor        ebx,ebx
 005A1847    mov        dword ptr [ebp-8],ebx
 005A184A    mov        esi,ecx
 005A184C    mov        dword ptr [ebp-4],edx
 005A184F    mov        ebx,eax
 005A1851    mov        eax,dword ptr [ebp-4]
 005A1854    call       @LStrAddRef
 005A1859    xor        eax,eax
 005A185B    push       ebp
 005A185C    push       5A18E0
 005A1861    push       dword ptr fs:[eax]
 005A1864    mov        dword ptr fs:[eax],esp
 005A1867    cmp        dword ptr [ebx+80],0
>005A186E    jne        005A1897
 005A1870    mov        dl,1
 005A1872    mov        eax,[0041C8E4]; TStringList
 005A1877    call       TObject.Create; TStringList.Create
 005A187C    mov        edi,eax
 005A187E    mov        dword ptr [ebx+80],edi
 005A1884    mov        dl,1
 005A1886    mov        eax,edi
 005A1888    call       TStringList.SetSorted
 005A188D    mov        eax,dword ptr [ebx+80]
 005A1893    mov        byte ptr [eax+1D],0
 005A1897    mov        eax,dword ptr [esi+4]
 005A189A    push       dword ptr [eax+8]
 005A189D    push       5A18F8; '.'
 005A18A2    push       dword ptr [ebp-4]
 005A18A5    lea        eax,[ebp-8]
 005A18A8    mov        edx,3
 005A18AD    call       @LStrCatN
 005A18B2    mov        edx,dword ptr [ebp-8]
 005A18B5    mov        ecx,esi
 005A18B7    mov        eax,dword ptr [ebx+80]
 005A18BD    mov        ebx,dword ptr [eax]
 005A18BF    call       dword ptr [ebx+3C]
 005A18C2    xor        eax,eax
 005A18C4    pop        edx
 005A18C5    pop        ecx
 005A18C6    pop        ecx
 005A18C7    mov        dword ptr fs:[eax],edx
 005A18CA    push       5A18E7
 005A18CF    lea        eax,[ebp-8]
 005A18D2    call       @LStrClr
 005A18D7    lea        eax,[ebp-4]
 005A18DA    call       @LStrClr
 005A18DF    ret
<005A18E0    jmp        @HandleFinally
<005A18E5    jmp        005A18CF
 005A18E7    pop        edi
 005A18E8    pop        esi
 005A18E9    pop        ebx
 005A18EA    pop        ecx
 005A18EB    pop        ecx
 005A18EC    pop        ebp
 005A18ED    ret
*}
//end;

//005A18FC
//procedure sub_005A18FC(?:TRaveComponent; ?:void);
//begin
{*
 005A18FC    push       ebp
 005A18FD    mov        ebp,esp
 005A18FF    add        esp,0FFFFFFF0
 005A1902    push       ebx
 005A1903    push       esi
 005A1904    xor        ecx,ecx
 005A1906    mov        dword ptr [ebp-10],ecx
 005A1909    mov        dword ptr [ebp-8],ecx
 005A190C    mov        dword ptr [ebp-4],edx
 005A190F    mov        ebx,eax
 005A1911    xor        eax,eax
 005A1913    push       ebp
 005A1914    push       5A19F1
 005A1919    push       dword ptr fs:[eax]
 005A191C    mov        dword ptr fs:[eax],esp
 005A191F    mov        eax,dword ptr [ebp-4]
 005A1922    mov        eax,dword ptr [eax+4]
 005A1925    push       dword ptr [eax+8]
 005A1928    push       5A1A08; '.'
 005A192D    mov        eax,dword ptr [ebp-4]
 005A1930    push       dword ptr [eax+8]
 005A1933    lea        eax,[ebp-8]
 005A1936    mov        edx,3
 005A193B    call       @LStrCatN
 005A1940    mov        esi,dword ptr [ebx+7C]
 005A1943    test       esi,esi
>005A1945    je         005A19D3
 005A194B    lea        ecx,[ebp-0C]
 005A194E    mov        edx,dword ptr [ebp-8]
 005A1951    mov        eax,esi
 005A1953    mov        esi,dword ptr [eax]
 005A1955    call       dword ptr [esi+8C]
 005A195B    test       al,al
>005A195D    je         005A19D3
 005A195F    mov        edx,dword ptr [ebp-0C]
 005A1962    mov        eax,dword ptr [ebx+7C]
 005A1965    mov        ecx,dword ptr [eax]
 005A1967    call       dword ptr [ecx+18]
 005A196A    mov        edx,dword ptr [eax+0C]
 005A196D    test       edx,edx
>005A196F    jne        005A1981
 005A1971    mov        ecx,dword ptr [ebp-4]
 005A1974    mov        edx,dword ptr [eax+4]
 005A1977    mov        eax,dword ptr [eax+8]
 005A197A    call       TList.Put
>005A197F    jmp        005A198E
 005A1981    mov        ecx,dword ptr [ebp-4]
 005A1984    mov        esi,dword ptr [eax+8]
 005A1987    mov        eax,esi
 005A1989    call       SetOrdProp
 005A198E    mov        edx,dword ptr [ebp-0C]
 005A1991    mov        eax,dword ptr [ebx+7C]
 005A1994    mov        ecx,dword ptr [eax]
 005A1996    call       dword ptr [ecx+18]
 005A1999    call       TObject.Free
 005A199E    mov        edx,dword ptr [ebp-0C]
 005A19A1    mov        eax,dword ptr [ebx+7C]
 005A19A4    mov        ecx,dword ptr [eax]
 005A19A6    call       dword ptr [ecx+48]
 005A19A9    mov        eax,dword ptr [ebx+7C]
 005A19AC    mov        edx,dword ptr [eax]
 005A19AE    call       dword ptr [edx+14]
 005A19B1    cmp        eax,dword ptr [ebp-0C]
>005A19B4    jle        005A19D3
 005A19B6    lea        ecx,[ebp-10]
 005A19B9    mov        edx,dword ptr [ebp-0C]
 005A19BC    mov        eax,dword ptr [ebx+7C]
 005A19BF    mov        esi,dword ptr [eax]
 005A19C1    call       dword ptr [esi+0C]
 005A19C4    mov        eax,dword ptr [ebp-10]
 005A19C7    mov        edx,dword ptr [ebp-8]
 005A19CA    call       AnsiCompareText
 005A19CF    test       eax,eax
<005A19D1    je         005A195F
 005A19D3    xor        eax,eax
 005A19D5    pop        edx
 005A19D6    pop        ecx
 005A19D7    pop        ecx
 005A19D8    mov        dword ptr fs:[eax],edx
 005A19DB    push       5A19F8
 005A19E0    lea        eax,[ebp-10]
 005A19E3    call       @LStrClr
 005A19E8    lea        eax,[ebp-8]
 005A19EB    call       @LStrClr
 005A19F0    ret
<005A19F1    jmp        @HandleFinally
<005A19F6    jmp        005A19E0
 005A19F8    pop        esi
 005A19F9    pop        ebx
 005A19FA    mov        esp,ebp
 005A19FC    pop        ebp
 005A19FD    ret
*}
//end;

//005A1A64
constructor TRaveReport.Create(AOwner:TComponent);
begin
{*
 005A1A64    push       ebx
 005A1A65    push       esi
 005A1A66    test       dl,dl
>005A1A68    je         005A1A72
 005A1A6A    add        esp,0FFFFFFF0
 005A1A6D    call       @ClassCreate
 005A1A72    mov        ebx,edx
 005A1A74    mov        esi,eax
 005A1A76    xor        edx,edx
 005A1A78    mov        eax,esi
 005A1A7A    call       TRaveProjectItem.Create
 005A1A7F    mov        dl,1
 005A1A81    mov        eax,[0041C260]; TList
 005A1A86    call       TObject.Create; TList.Create
 005A1A8B    mov        dword ptr [esi+0A0],eax; TRaveReport.?fA0:TList
 005A1A91    xor        eax,eax
 005A1A93    mov        dword ptr [esi+0AC],eax; TRaveReport.Copies:Integer
 005A1A99    mov        byte ptr [esi+0BC],4; TRaveReport.Resolution:TRavePrinterResolution
 005A1AA0    mov        byte ptr [esi+0B5],2; TRaveReport.Collate:TRavePrinterCollate
 005A1AA7    mov        byte ptr [esi+0B6],3; TRaveReport.Duplex:TRavePrinterDuplex
 005A1AAE    mov        eax,esi
 005A1AB0    test       bl,bl
>005A1AB2    je         005A1AC3
 005A1AB4    call       @AfterConstruction
 005A1AB9    pop        dword ptr fs:[0]
 005A1AC0    add        esp,0C
 005A1AC3    mov        eax,esi
 005A1AC5    pop        esi
 005A1AC6    pop        ebx
 005A1AC7    ret
*}
end;

//005A1AC8
destructor TRaveReport.Destroy;
begin
{*
 005A1AC8    push       ebx
 005A1AC9    push       esi
 005A1ACA    call       @BeforeDestruction
 005A1ACF    mov        ebx,edx
 005A1AD1    mov        esi,eax
 005A1AD3    lea        eax,[esi+0A0]; TRaveReport.?fA0:TList
 005A1AD9    call       FreeAndNil
 005A1ADE    lea        eax,[esi+0B0]; TRaveReport.PageList:TRaveComponentList
 005A1AE4    call       FreeAndNil
 005A1AE9    mov        edx,ebx
 005A1AEB    and        dl,0FC
 005A1AEE    mov        eax,esi
 005A1AF0    call       TRaveProjectItem.Destroy
 005A1AF5    test       bl,bl
>005A1AF7    jle        005A1B00
 005A1AF9    mov        eax,esi
 005A1AFB    call       @ClassDestroy
 005A1B00    pop        esi
 005A1B01    pop        ebx
 005A1B02    ret
*}
end;

//005A1B04
//procedure sub_005A1B04(?:?; ?:?);
//begin
{*
 005A1B04    push       ebx
 005A1B05    push       esi
 005A1B06    push       edi
 005A1B07    push       ebp
 005A1B08    mov        ebp,ecx
 005A1B0A    mov        edi,edx
 005A1B0C    mov        ebx,eax
 005A1B0E    mov        ecx,ebp
 005A1B10    mov        edx,edi
 005A1B12    mov        eax,ebx
 005A1B14    call       005AB60C
 005A1B19    mov        eax,dword ptr [ebx+0A8]; TRaveReport.FirstPage:TRavePage
 005A1B1F    test       eax,eax
>005A1B21    je         005A1B3A
 005A1B23    cmp        edi,eax
>005A1B25    jne        005A1B3A
 005A1B27    mov        eax,ebp
 005A1B29    mov        edx,dword ptr ds:[5A7428]; TRavePage
 005A1B2F    call       @AsClass
 005A1B34    mov        dword ptr [ebx+0A8],eax; TRaveReport.FirstPage:TRavePage
 005A1B3A    mov        eax,dword ptr [ebx+0C4]; TRaveReport.SecurityControl:TRaveBaseSecurity
 005A1B40    test       eax,eax
>005A1B42    je         005A1B5B
 005A1B44    cmp        eax,edi
>005A1B46    jne        005A1B5B
 005A1B48    mov        eax,ebp
 005A1B4A    mov        edx,dword ptr ds:[59A38C]; TRaveBaseSecurity
 005A1B50    call       @AsClass
 005A1B55    mov        dword ptr [ebx+0C4],eax; TRaveReport.SecurityControl:TRaveBaseSecurity
 005A1B5B    cmp        dword ptr [ebx+0B0],0; TRaveReport.PageList:TRaveComponentList
>005A1B62    je         005A1BB9
 005A1B64    xor        esi,esi
>005A1B66    jmp        005A1BAE
 005A1B68    mov        edx,esi
 005A1B6A    mov        eax,dword ptr [ebx+0B0]; TRaveReport.PageList:TRaveComponentList
 005A1B70    call       TList.Get
 005A1B75    test       eax,eax
>005A1B77    je         005A1BAD
 005A1B79    mov        edx,esi
 005A1B7B    mov        eax,dword ptr [ebx+0B0]; TRaveReport.PageList:TRaveComponentList
 005A1B81    call       TList.Get
 005A1B86    cmp        edi,eax
>005A1B88    jne        005A1BAD
 005A1B8A    test       ebp,ebp
>005A1B8C    je         005A1B9F
 005A1B8E    mov        ecx,ebp
 005A1B90    mov        edx,esi
 005A1B92    mov        eax,dword ptr [ebx+0B0]; TRaveReport.PageList:TRaveComponentList
 005A1B98    call       TList.Put
>005A1B9D    jmp        005A1BAD
 005A1B9F    mov        edx,esi
 005A1BA1    mov        eax,dword ptr [ebx+0B0]; TRaveReport.PageList:TRaveComponentList
 005A1BA7    call       TList.Delete
 005A1BAC    dec        esi
 005A1BAD    inc        esi
 005A1BAE    mov        eax,dword ptr [ebx+0B0]; TRaveReport.PageList:TRaveComponentList
 005A1BB4    cmp        esi,dword ptr [eax+8]; TRaveComponentList.FCount:Integer
<005A1BB7    jl         005A1B68
 005A1BB9    pop        ebp
 005A1BBA    pop        edi
 005A1BBB    pop        esi
 005A1BBC    pop        ebx
 005A1BBD    ret
*}
//end;

//005A1BC0
//procedure sub_005A1BC0(?:?);
//begin
{*
 005A1BC0    push       ebp
 005A1BC1    mov        ebp,esp
 005A1BC3    add        esp,0FFFFFFF4
 005A1BC6    push       ebx
 005A1BC7    push       esi
 005A1BC8    mov        dword ptr [ebp-8],edx
 005A1BCB    mov        dword ptr [ebp-4],eax
 005A1BCE    mov        eax,dword ptr [ebp-4]
 005A1BD1    mov        edx,dword ptr [eax+80]; TRaveReport.?f80:String
 005A1BD7    mov        eax,dword ptr [ebp-8]
 005A1BDA    call       005A6054
 005A1BDF    mov        eax,dword ptr [ebp-4]
 005A1BE2    mov        edx,dword ptr [eax]
 005A1BE4    call       dword ptr [edx+54]; TRaveReport.sub_005AB0D4
 005A1BE7    mov        edx,eax
 005A1BE9    mov        eax,dword ptr [ebp-8]
 005A1BEC    call       005A60C8
 005A1BF1    mov        eax,dword ptr [ebp-4]
 005A1BF4    mov        edx,dword ptr [eax]
 005A1BF6    call       dword ptr [edx+54]; TRaveReport.sub_005AB0D4
 005A1BF9    mov        ebx,eax
 005A1BFB    dec        ebx
 005A1BFC    test       ebx,ebx
>005A1BFE    jl         005A1C26
 005A1C00    inc        ebx
 005A1C01    xor        esi,esi
 005A1C03    xor        edx,edx
 005A1C05    mov        eax,dword ptr [ebp-8]
 005A1C08    call       005A6040
 005A1C0D    mov        edx,esi
 005A1C0F    mov        eax,dword ptr [ebp-4]
 005A1C12    mov        ecx,dword ptr [eax]
 005A1C14    call       dword ptr [ecx+50]; TRaveReport.sub_005AB0E4
 005A1C17    mov        edx,dword ptr [eax+8]
 005A1C1A    mov        eax,dword ptr [ebp-8]
 005A1C1D    call       005A6054
 005A1C22    inc        esi
 005A1C23    dec        ebx
<005A1C24    jne        005A1C03
 005A1C26    mov        eax,dword ptr [ebp-4]
 005A1C29    mov        eax,dword ptr [eax+0A0]; TRaveReport.?fA0:TList
 005A1C2F    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 005A1C32    mov        eax,dword ptr [ebp-8]
 005A1C35    call       005A60C8
 005A1C3A    mov        eax,dword ptr [ebp-4]
 005A1C3D    mov        eax,dword ptr [eax+0A0]; TRaveReport.?fA0:TList
 005A1C43    mov        ebx,dword ptr [eax+8]; TList.FCount:Integer
 005A1C46    dec        ebx
 005A1C47    test       ebx,ebx
>005A1C49    jl         005A1C6D
 005A1C4B    inc        ebx
 005A1C4C    xor        esi,esi
 005A1C4E    mov        eax,dword ptr [ebp-4]
 005A1C51    mov        eax,dword ptr [eax+0A0]; TRaveReport.?fA0:TList
 005A1C57    mov        edx,esi
 005A1C59    call       TList.Get
 005A1C5E    mov        edx,dword ptr [eax+8]
 005A1C61    mov        eax,dword ptr [ebp-8]
 005A1C64    call       005A6054
 005A1C69    inc        esi
 005A1C6A    dec        ebx
<005A1C6B    jne        005A1C4E
 005A1C6D    mov        ecx,dword ptr [ebp-8]
 005A1C70    mov        dl,1
 005A1C72    mov        eax,[005A77D8]; TRaveWriter
 005A1C77    call       TRaveWriter.Create; TRaveWriter.Create
 005A1C7C    mov        dword ptr [ebp-0C],eax
 005A1C7F    xor        eax,eax
 005A1C81    push       ebp
 005A1C82    push       5A1CB0
 005A1C87    push       dword ptr fs:[eax]
 005A1C8A    mov        dword ptr fs:[eax],esp
 005A1C8D    xor        ecx,ecx
 005A1C8F    mov        edx,dword ptr [ebp-4]
 005A1C92    mov        eax,dword ptr [ebp-0C]
 005A1C95    call       005AC534
 005A1C9A    xor        eax,eax
 005A1C9C    pop        edx
 005A1C9D    pop        ecx
 005A1C9E    pop        ecx
 005A1C9F    mov        dword ptr fs:[eax],edx
 005A1CA2    push       5A1CB7
 005A1CA7    mov        eax,dword ptr [ebp-0C]
 005A1CAA    call       TObject.Free
 005A1CAF    ret
<005A1CB0    jmp        @HandleFinally
<005A1CB5    jmp        005A1CA7
 005A1CB7    mov        eax,dword ptr [ebp-4]
 005A1CBA    mov        edx,dword ptr [eax]
 005A1CBC    call       dword ptr [edx+54]; TRaveReport.sub_005AB0D4
 005A1CBF    mov        ebx,eax
 005A1CC1    dec        ebx
 005A1CC2    test       ebx,ebx
>005A1CC4    jl         005A1CF2
 005A1CC6    inc        ebx
 005A1CC7    xor        esi,esi
 005A1CC9    mov        eax,dword ptr [ebp-8]
 005A1CCC    call       005A6324
 005A1CD1    mov        edx,esi
 005A1CD3    mov        eax,dword ptr [ebp-4]
 005A1CD6    mov        ecx,dword ptr [eax]
 005A1CD8    call       dword ptr [ecx+50]; TRaveReport.sub_005AB0E4
 005A1CDB    mov        edx,dword ptr [ebp-8]
 005A1CDE    mov        ecx,dword ptr [eax]
 005A1CE0    call       dword ptr [ecx+0D4]
 005A1CE6    mov        eax,dword ptr [ebp-8]
 005A1CE9    call       005A6340
 005A1CEE    inc        esi
 005A1CEF    dec        ebx
<005A1CF0    jne        005A1CC9
 005A1CF2    pop        esi
 005A1CF3    pop        ebx
 005A1CF4    mov        esp,ebp
 005A1CF6    pop        ebp
 005A1CF7    ret
*}
//end;

//005A1CF8
//procedure sub_005A1CF8(?:?);
//begin
{*
 005A1CF8    push       ebp
 005A1CF9    mov        ebp,esp
 005A1CFB    add        esp,0FFFFFFD0
 005A1CFE    push       ebx
 005A1CFF    push       esi
 005A1D00    push       edi
 005A1D01    xor        ecx,ecx
 005A1D03    mov        dword ptr [ebp-30],ecx
 005A1D06    mov        dword ptr [ebp-2C],ecx
 005A1D09    mov        dword ptr [ebp-28],ecx
 005A1D0C    mov        dword ptr [ebp-24],ecx
 005A1D0F    mov        dword ptr [ebp-20],ecx
 005A1D12    mov        dword ptr [ebp-8],edx
 005A1D15    mov        dword ptr [ebp-4],eax
 005A1D18    xor        eax,eax
 005A1D1A    push       ebp
 005A1D1B    push       5A1F62
 005A1D20    push       dword ptr fs:[eax]
 005A1D23    mov        dword ptr fs:[eax],esp
 005A1D26    mov        eax,dword ptr [ebp-4]
 005A1D29    mov        eax,dword ptr [eax+48]; TRaveReport.?f48:TRaveComponent
 005A1D2C    cmp        dword ptr [eax+0B8],7534
>005A1D36    jl         005A1D53
 005A1D38    lea        edx,[ebp-20]
 005A1D3B    mov        eax,dword ptr [ebp-8]
 005A1D3E    call       005A61AC
 005A1D43    mov        edx,dword ptr [ebp-20]
 005A1D46    mov        eax,dword ptr [ebp-4]
 005A1D49    add        eax,80; TRaveReport.?f80:String
 005A1D4E    call       @LStrAsg
 005A1D53    mov        dl,1
 005A1D55    mov        eax,[0041C8E4]; TStringList
 005A1D5A    call       TObject.Create; TStringList.Create
 005A1D5F    mov        edx,dword ptr [ebp-4]
 005A1D62    mov        dword ptr [edx+0A4],eax; TRaveReport.?fA4:TStringList
 005A1D68    mov        eax,dword ptr [ebp-8]
 005A1D6B    call       005A61E0
 005A1D70    mov        ebx,eax
 005A1D72    test       ebx,ebx
>005A1D74    jle        005A1DDD
 005A1D76    mov        eax,dword ptr [ebp-8]
 005A1D79    call       005A6198
 005A1D7E    sub        al,1
>005A1D80    jae        005A1D95
 005A1D82    mov        ecx,dword ptr [ebp-4]
 005A1D85    mov        dl,1
 005A1D87    mov        eax,[005A7428]; TRavePage
 005A1D8C    call       TRavePage.Create; TRavePage.Create
 005A1D91    mov        esi,eax
>005A1D93    jmp        005A1DBB
 005A1D95    mov        ebx,dword ptr ds:[61B830]
 005A1D9B    mov        ebx,dword ptr [ebx]
 005A1D9D    lea        edx,[ebp-24]
 005A1DA0    mov        eax,5A1F78; 'TRaveProjectItem class not found'
 005A1DA5    call       ebx
 005A1DA7    mov        ecx,dword ptr [ebp-24]
 005A1DAA    mov        dl,1
 005A1DAC    mov        eax,[0041BF80]; EClassNotFound
 005A1DB1    call       Exception.Create; EClassNotFound.Create
 005A1DB6    call       @RaiseExcept
 005A1DBB    mov        edx,dword ptr [ebp-4]
 005A1DBE    mov        eax,esi
 005A1DC0    mov        ecx,dword ptr [eax]
 005A1DC2    call       dword ptr [ecx+44]; TRavePage.sub_005A89FC
 005A1DC5    lea        edx,[ebp-28]
 005A1DC8    mov        eax,dword ptr [ebp-8]
 005A1DCB    call       005A61AC
 005A1DD0    mov        edx,dword ptr [ebp-28]
 005A1DD3    mov        eax,esi
 005A1DD5    mov        ecx,dword ptr [eax]
 005A1DD7    call       dword ptr [ecx+18]; TRaveProjectItem.SetName
 005A1DDA    dec        ebx
<005A1DDB    jne        005A1D76
 005A1DDD    mov        eax,dword ptr [ebp-8]
 005A1DE0    call       005A61E0
 005A1DE5    mov        ebx,eax
 005A1DE7    test       ebx,ebx
>005A1DE9    jle        005A1E0A
 005A1DEB    lea        edx,[ebp-2C]
 005A1DEE    mov        eax,dword ptr [ebp-8]
 005A1DF1    call       005A61AC
 005A1DF6    mov        edx,dword ptr [ebp-2C]
 005A1DF9    mov        eax,dword ptr [ebp-4]
 005A1DFC    mov        eax,dword ptr [eax+0A4]; TRaveReport.?fA4:TStringList
 005A1E02    mov        ecx,dword ptr [eax]
 005A1E04    call       dword ptr [ecx+38]; TStringList.Add
 005A1E07    dec        ebx
<005A1E08    jne        005A1DEB
 005A1E0A    mov        eax,dword ptr [ebp-4]
 005A1E0D    mov        edx,dword ptr [eax]
 005A1E0F    call       dword ptr [edx+54]; TRaveReport.sub_005AB0D4
 005A1E12    mov        ebx,eax
 005A1E14    dec        ebx
 005A1E15    test       ebx,ebx
>005A1E17    jl         005A1EAA
 005A1E1D    inc        ebx
 005A1E1E    mov        dword ptr [ebp-0C],0
 005A1E25    mov        edx,dword ptr [ebp-0C]
 005A1E28    mov        eax,dword ptr [ebp-4]
 005A1E2B    mov        ecx,dword ptr [eax]
 005A1E2D    call       dword ptr [ecx+50]; TRaveReport.sub_005AB0E4
 005A1E30    mov        dword ptr [ebp-18],eax
 005A1E33    mov        byte ptr [ebp-11],0
 005A1E37    mov        eax,dword ptr [ebp-4]
 005A1E3A    mov        eax,dword ptr [eax+0A4]; TRaveReport.?fA4:TStringList
 005A1E40    mov        edx,dword ptr [eax]
 005A1E42    call       dword ptr [edx+14]; TStringList.GetCount
 005A1E45    mov        esi,eax
 005A1E47    dec        esi
 005A1E48    test       esi,esi
>005A1E4A    jl         005A1E86
 005A1E4C    inc        esi
 005A1E4D    mov        dword ptr [ebp-10],0
 005A1E54    lea        ecx,[ebp-30]
 005A1E57    mov        eax,dword ptr [ebp-4]
 005A1E5A    mov        eax,dword ptr [eax+0A4]; TRaveReport.?fA4:TStringList
 005A1E60    mov        edx,dword ptr [ebp-10]
 005A1E63    mov        edi,dword ptr [eax]
 005A1E65    call       dword ptr [edi+0C]; TStringList.Get
 005A1E68    mov        edx,dword ptr [ebp-30]
 005A1E6B    mov        eax,dword ptr [ebp-18]
 005A1E6E    mov        eax,dword ptr [eax+8]
 005A1E71    call       AnsiCompareText
 005A1E76    test       eax,eax
>005A1E78    jne        005A1E80
 005A1E7A    mov        byte ptr [ebp-11],1
>005A1E7E    jmp        005A1E86
 005A1E80    inc        dword ptr [ebp-10]
 005A1E83    dec        esi
<005A1E84    jne        005A1E54
 005A1E86    cmp        byte ptr [ebp-11],0
>005A1E8A    jne        005A1EA0
 005A1E8C    mov        eax,dword ptr [ebp-18]
 005A1E8F    mov        edx,dword ptr [eax+8]
 005A1E92    mov        eax,dword ptr [ebp-4]
 005A1E95    mov        eax,dword ptr [eax+0A4]; TRaveReport.?fA4:TStringList
 005A1E9B    mov        ecx,dword ptr [eax]
 005A1E9D    call       dword ptr [ecx+38]; TStringList.Add
 005A1EA0    inc        dword ptr [ebp-0C]
 005A1EA3    dec        ebx
<005A1EA4    jne        005A1E25
 005A1EAA    mov        ecx,dword ptr [ebp-8]
 005A1EAD    mov        dl,1
 005A1EAF    mov        eax,[005A7840]; TRaveReader
 005A1EB4    call       TRaveReader.Create; TRaveReader.Create
 005A1EB9    mov        dword ptr [ebp-1C],eax
 005A1EBC    xor        eax,eax
 005A1EBE    push       ebp
 005A1EBF    push       5A1EFD
 005A1EC4    push       dword ptr fs:[eax]
 005A1EC7    mov        dword ptr fs:[eax],esp
 005A1ECA    mov        eax,dword ptr [ebp-4]
 005A1ECD    mov        eax,dword ptr [eax+48]; TRaveReport.?f48:TRaveComponent
 005A1ED0    mov        eax,dword ptr [eax+0D4]
 005A1ED6    mov        edx,dword ptr [ebp-1C]
 005A1ED9    mov        dword ptr [edx+50],eax; TRaveReader.?f50:dword
 005A1EDC    mov        edx,dword ptr [ebp-4]
 005A1EDF    mov        eax,dword ptr [ebp-1C]
 005A1EE2    call       005AD584
 005A1EE7    xor        eax,eax
 005A1EE9    pop        edx
 005A1EEA    pop        ecx
 005A1EEB    pop        ecx
 005A1EEC    mov        dword ptr fs:[eax],edx
 005A1EEF    push       5A1F04
 005A1EF4    mov        eax,dword ptr [ebp-1C]
 005A1EF7    call       TObject.Free
 005A1EFC    ret
<005A1EFD    jmp        @HandleFinally
<005A1F02    jmp        005A1EF4
 005A1F04    mov        eax,dword ptr [ebp-4]
 005A1F07    mov        edx,dword ptr [eax]
 005A1F09    call       dword ptr [edx+54]; TRaveReport.sub_005AB0D4
 005A1F0C    mov        ebx,eax
 005A1F0E    dec        ebx
 005A1F0F    test       ebx,ebx
>005A1F11    jl         005A1F47
 005A1F13    inc        ebx
 005A1F14    mov        dword ptr [ebp-0C],0
 005A1F1B    mov        eax,dword ptr [ebp-8]
 005A1F1E    call       005A6390
 005A1F23    mov        edx,dword ptr [ebp-0C]
 005A1F26    mov        eax,dword ptr [ebp-4]
 005A1F29    mov        ecx,dword ptr [eax]
 005A1F2B    call       dword ptr [ecx+50]; TRaveReport.sub_005AB0E4
 005A1F2E    mov        edx,dword ptr [ebp-8]
 005A1F31    mov        ecx,dword ptr [eax]
 005A1F33    call       dword ptr [ecx+0D8]
 005A1F39    mov        eax,dword ptr [ebp-8]
 005A1F3C    call       005A6420
 005A1F41    inc        dword ptr [ebp-0C]
 005A1F44    dec        ebx
<005A1F45    jne        005A1F1B
 005A1F47    xor        eax,eax
 005A1F49    pop        edx
 005A1F4A    pop        ecx
 005A1F4B    pop        ecx
 005A1F4C    mov        dword ptr fs:[eax],edx
 005A1F4F    push       5A1F69
 005A1F54    lea        eax,[ebp-30]
 005A1F57    mov        edx,5
 005A1F5C    call       @LStrArrayClr
 005A1F61    ret
<005A1F62    jmp        @HandleFinally
<005A1F67    jmp        005A1F54
 005A1F69    pop        edi
 005A1F6A    pop        esi
 005A1F6B    pop        ebx
 005A1F6C    mov        esp,ebp
 005A1F6E    pop        ebp
 005A1F6F    ret
*}
//end;

//005A1F9C
//procedure sub_005A1F9C(?:Pointer);
//begin
{*
 005A1F9C    push       ebp
 005A1F9D    mov        ebp,esp
 005A1F9F    add        esp,0FFFFFFF4
 005A1FA2    push       ebx
 005A1FA3    push       esi
 005A1FA4    xor        edx,edx
 005A1FA6    mov        dword ptr [ebp-0C],edx
 005A1FA9    mov        ebx,eax
 005A1FAB    xor        eax,eax
 005A1FAD    push       ebp
 005A1FAE    push       5A204D
 005A1FB3    push       dword ptr fs:[eax]
 005A1FB6    mov        dword ptr fs:[eax],esp
 005A1FB9    mov        esi,dword ptr [ebx+0A4]
 005A1FBF    test       esi,esi
>005A1FC1    je         005A2037
 005A1FC3    mov        eax,esi
 005A1FC5    mov        edx,dword ptr [eax]
 005A1FC7    call       dword ptr [edx+14]
 005A1FCA    dec        eax
 005A1FCB    test       eax,eax
>005A1FCD    jl         005A2024
 005A1FCF    inc        eax
 005A1FD0    mov        dword ptr [ebp-8],eax
 005A1FD3    mov        dword ptr [ebp-4],0
 005A1FDA    lea        ecx,[ebp-0C]
 005A1FDD    mov        edx,dword ptr [ebp-4]
 005A1FE0    mov        eax,dword ptr [ebx+0A4]
 005A1FE6    mov        esi,dword ptr [eax]
 005A1FE8    call       dword ptr [esi+0C]
 005A1FEB    mov        edx,dword ptr [ebp-0C]
 005A1FEE    mov        ecx,ebx
 005A1FF0    mov        eax,dword ptr [ebx+48]
 005A1FF3    call       005A4790
 005A1FF8    mov        esi,eax
 005A1FFA    test       esi,esi
>005A1FFC    je         005A201C
 005A1FFE    mov        eax,esi
 005A2000    mov        edx,dword ptr ds:[5A7428]; TRavePage
 005A2006    call       @IsClass
 005A200B    test       al,al
>005A200D    je         005A201C
 005A200F    mov        edx,esi
 005A2011    mov        eax,dword ptr [ebx+0A0]
 005A2017    call       TList.Add
 005A201C    inc        dword ptr [ebp-4]
 005A201F    dec        dword ptr [ebp-8]
<005A2022    jne        005A1FDA
 005A2024    mov        eax,dword ptr [ebx+0A4]
 005A202A    call       TObject.Free
 005A202F    xor        eax,eax
 005A2031    mov        dword ptr [ebx+0A4],eax
 005A2037    xor        eax,eax
 005A2039    pop        edx
 005A203A    pop        ecx
 005A203B    pop        ecx
 005A203C    mov        dword ptr fs:[eax],edx
 005A203F    push       5A2054
 005A2044    lea        eax,[ebp-0C]
 005A2047    call       @LStrClr
 005A204C    ret
<005A204D    jmp        @HandleFinally
<005A2052    jmp        005A2044
 005A2054    pop        esi
 005A2055    pop        ebx
 005A2056    mov        esp,ebp
 005A2058    pop        ebp
 005A2059    ret
*}
//end;

//005A205C
//procedure TRaveReport.SetPageList(Self:TRaveReport; ?:?);
//begin
{*
 005A205C    push       ebx
 005A205D    push       esi
 005A205E    mov        esi,edx
 005A2060    mov        ebx,eax
 005A2062    test       esi,esi
>005A2064    je         005A2097
 005A2066    cmp        dword ptr [esi+8],0
>005A206A    jle        005A2097
 005A206C    cmp        dword ptr [ebx+0B0],0; TRaveReport.PageList:TRaveComponentList
>005A2073    jne        005A2087
 005A2075    mov        dl,1
 005A2077    mov        eax,[005A677C]; TRaveComponentList
 005A207C    call       TObject.Create; TRaveComponentList.Create
 005A2081    mov        dword ptr [ebx+0B0],eax; TRaveReport.PageList:TRaveComponentList
 005A2087    mov        edx,dword ptr [ebx+0B0]; TRaveReport.PageList:TRaveComponentList
 005A208D    mov        eax,esi
 005A208F    call       005A54B4
 005A2094    pop        esi
 005A2095    pop        ebx
 005A2096    ret
 005A2097    mov        eax,dword ptr [ebx+0B0]; TRaveReport.PageList:TRaveComponentList
 005A209D    test       eax,eax
>005A209F    je         005A20AE
 005A20A1    call       TObject.Free
 005A20A6    xor        eax,eax
 005A20A8    mov        dword ptr [ebx+0B0],eax; TRaveReport.PageList:TRaveComponentList
 005A20AE    pop        esi
 005A20AF    pop        ebx
 005A20B0    ret
*}
//end;

//005A20B4
//procedure sub_005A20B4(?:TRaveReport; ?:TRavePage);
//begin
{*
 005A20B4    push       ebx
 005A20B5    push       esi
 005A20B6    mov        esi,edx
 005A20B8    mov        ebx,eax
 005A20BA    mov        edx,esi
 005A20BC    mov        eax,dword ptr [ebx+0A0]; TRaveReport.?fA0:TList
 005A20C2    call       TList.Add
 005A20C7    mov        eax,esi
 005A20C9    mov        edx,dword ptr [eax]
 005A20CB    call       dword ptr [edx+0DC]; TRavePage.sub_005AB4A8
 005A20D1    mov        eax,[0061B3E8]
 005A20D6    cmp        byte ptr [eax],0
>005A20D9    je         005A20E5
 005A20DB    mov        dl,1
 005A20DD    mov        eax,dword ptr [ebx+48]; TRaveReport.?f48:TRaveComponent
 005A20E0    call       005A4FF0
 005A20E5    pop        esi
 005A20E6    pop        ebx
 005A20E7    ret
*}
//end;

//005A20E8
//procedure sub_005A20E8(?:TRaveReport; ?:TRaveProjectItem);
//begin
{*
 005A20E8    push       ebx
 005A20E9    push       esi
 005A20EA    mov        esi,edx
 005A20EC    mov        ebx,eax
 005A20EE    mov        eax,esi
 005A20F0    mov        edx,dword ptr [eax]
 005A20F2    call       dword ptr [edx+0E0]; TRaveProjectItem.sub_005AB4BC
 005A20F8    mov        edx,esi
 005A20FA    mov        eax,dword ptr [ebx+0A0]; TRaveReport.?fA0:TList
 005A2100    call       TList.Remove
 005A2105    mov        eax,[0061B3E8]
 005A210A    cmp        byte ptr [eax],0
>005A210D    je         005A2119
 005A210F    mov        dl,1
 005A2111    mov        eax,dword ptr [ebx+48]; TRaveReport.?f48:TRaveComponent
 005A2114    call       005A4FF0
 005A2119    pop        esi
 005A211A    pop        ebx
 005A211B    ret
*}
//end;

//005A211C
procedure sub_005A211C;
begin
{*
 005A211C    push       ebx
 005A211D    push       esi
 005A211E    push       edi
 005A211F    push       ebp
 005A2120    mov        esi,eax
 005A2122    cmp        byte ptr [esi+60],0; TRaveReport.?f60:byte
>005A2126    jne        005A218C
 005A2128    mov        eax,esi
 005A212A    call       005AB4A8
 005A212F    mov        eax,esi
 005A2131    mov        edx,dword ptr [eax]
 005A2133    call       dword ptr [edx+54]; TRaveReport.sub_005AB0D4
 005A2136    mov        ebx,eax
 005A2138    dec        ebx
 005A2139    test       ebx,ebx
>005A213B    jl         005A2155
 005A213D    inc        ebx
 005A213E    xor        edi,edi
 005A2140    mov        edx,edi
 005A2142    mov        eax,esi
 005A2144    mov        ecx,dword ptr [eax]
 005A2146    call       dword ptr [ecx+50]; TRaveReport.sub_005AB0E4
 005A2149    mov        edx,dword ptr [eax]
 005A214B    call       dword ptr [edx+0DC]
 005A2151    inc        edi
 005A2152    dec        ebx
<005A2153    jne        005A2140
 005A2155    mov        eax,dword ptr [esi+0A0]; TRaveReport.?fA0:TList
 005A215B    mov        ebx,dword ptr [eax+8]; TList.FCount:Integer
 005A215E    dec        ebx
 005A215F    test       ebx,ebx
>005A2161    jl         005A218C
 005A2163    inc        ebx
 005A2164    xor        edi,edi
 005A2166    mov        edx,edi
 005A2168    mov        eax,dword ptr [esi+0A0]; TRaveReport.?fA0:TList
 005A216E    call       TList.Get
 005A2173    mov        ebp,eax
 005A2175    cmp        byte ptr [ebp+80],0
>005A217C    je         005A2188
 005A217E    mov        eax,ebp
 005A2180    mov        edx,dword ptr [eax]
 005A2182    call       dword ptr [edx+0DC]
 005A2188    inc        edi
 005A2189    dec        ebx
<005A218A    jne        005A2166
 005A218C    mov        eax,dword ptr [esi+48]; TRaveReport.?f48:TRaveComponent
 005A218F    call       005A524C
 005A2194    pop        ebp
 005A2195    pop        edi
 005A2196    pop        esi
 005A2197    pop        ebx
 005A2198    ret
*}
end;

//005A219C
procedure sub_005A219C;
begin
{*
 005A219C    push       ebx
 005A219D    push       esi
 005A219E    push       edi
 005A219F    mov        esi,eax
 005A21A1    cmp        byte ptr [esi+60],0; TRaveReport.?f60:byte
>005A21A5    je         005A21D8
 005A21A7    mov        eax,esi
 005A21A9    call       005AB4BC
 005A21AE    mov        eax,dword ptr [esi+0A0]; TRaveReport.?fA0:TList
 005A21B4    mov        ebx,dword ptr [eax+8]; TList.FCount:Integer
 005A21B7    dec        ebx
 005A21B8    test       ebx,ebx
>005A21BA    jl         005A21D8
 005A21BC    inc        ebx
 005A21BD    xor        edi,edi
 005A21BF    mov        edx,edi
 005A21C1    mov        eax,dword ptr [esi+0A0]; TRaveReport.?fA0:TList
 005A21C7    call       TList.Get
 005A21CC    mov        edx,dword ptr [eax]
 005A21CE    call       dword ptr [edx+0E0]
 005A21D4    inc        edi
 005A21D5    dec        ebx
<005A21D6    jne        005A21BF
 005A21D8    pop        edi
 005A21D9    pop        esi
 005A21DA    pop        ebx
 005A21DB    ret
*}
end;

//005A21DC
procedure sub_005A21DC;
begin
{*
 005A21DC    push       ebx
 005A21DD    push       esi
 005A21DE    push       edi
 005A21DF    mov        edi,eax
 005A21E1    mov        eax,edi
 005A21E3    call       005AB520
 005A21E8    mov        eax,edi
 005A21EA    mov        edx,dword ptr [eax]
 005A21EC    call       dword ptr [edx+54]; TRaveReport.sub_005AB0D4
 005A21EF    mov        esi,eax
 005A21F1    dec        esi
 005A21F2    test       esi,esi
>005A21F4    jl         005A2226
 005A21F6    inc        esi
 005A21F7    xor        ebx,ebx
 005A21F9    mov        edx,ebx
 005A21FB    mov        eax,edi
 005A21FD    mov        ecx,dword ptr [eax]
 005A21FF    call       dword ptr [ecx+50]; TRaveReport.sub_005AB0E4
 005A2202    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005A2208    call       @IsClass
 005A220D    test       al,al
>005A220F    je         005A2222
 005A2211    mov        edx,ebx
 005A2213    mov        eax,edi
 005A2215    mov        ecx,dword ptr [eax]
 005A2217    call       dword ptr [ecx+50]; TRaveReport.sub_005AB0E4
 005A221A    mov        edx,dword ptr [eax]
 005A221C    call       dword ptr [edx+0E4]
 005A2222    inc        ebx
 005A2223    dec        esi
<005A2224    jne        005A21F9
 005A2226    pop        edi
 005A2227    pop        esi
 005A2228    pop        ebx
 005A2229    ret
*}
end;

//005A222C
//function sub_005A222C(?:TRaveReport):?;
//begin
{*
 005A222C    push       ebp
 005A222D    mov        ebp,esp
 005A222F    push       0
 005A2231    push       ebx
 005A2232    push       esi
 005A2233    mov        ebx,eax
 005A2235    xor        eax,eax
 005A2237    push       ebp
 005A2238    push       5A22A4
 005A223D    push       dword ptr fs:[eax]
 005A2240    mov        dword ptr fs:[eax],esp
 005A2243    mov        ecx,ebx
 005A2245    mov        dl,1
 005A2247    mov        eax,[005A7428]; TRavePage
 005A224C    call       TRavePage.Create; TRavePage.Create
 005A2251    mov        esi,eax
 005A2253    mov        edx,ebx
 005A2255    mov        eax,esi
 005A2257    mov        ecx,dword ptr [eax]
 005A2259    call       dword ptr [ecx+44]; TRavePage.sub_005A89FC
 005A225C    push       0
 005A225E    lea        eax,[ebp-4]
 005A2261    push       eax
 005A2262    mov        ecx,ebx
 005A2264    mov        edx,5A22BC; 'Page'
 005A2269    mov        eax,dword ptr [ebx+48]; TRaveReport.?f48:TRaveComponent
 005A226C    call       005A492C
 005A2271    mov        edx,dword ptr [ebp-4]
 005A2274    mov        eax,esi
 005A2276    mov        ecx,dword ptr [eax]
 005A2278    call       dword ptr [ecx+18]; TRaveProjectItem.SetName
 005A227B    mov        edx,esi
 005A227D    mov        eax,ebx
 005A227F    call       005A20B4
 005A2284    mov        dl,1
 005A2286    mov        eax,dword ptr [ebx+48]; TRaveReport.?f48:TRaveComponent
 005A2289    call       005A4FF0
 005A228E    xor        eax,eax
 005A2290    pop        edx
 005A2291    pop        ecx
 005A2292    pop        ecx
 005A2293    mov        dword ptr fs:[eax],edx
 005A2296    push       5A22AB
 005A229B    lea        eax,[ebp-4]
 005A229E    call       @LStrClr
 005A22A3    ret
<005A22A4    jmp        @HandleFinally
<005A22A9    jmp        005A229B
 005A22AB    mov        eax,esi
 005A22AD    pop        esi
 005A22AE    pop        ebx
 005A22AF    pop        ecx
 005A22B0    pop        ebp
 005A22B1    ret
*}
//end;

//005A22C4
//procedure sub_005A22C4(?:?; ?:dword);
//begin
{*
 005A22C4    push       ebp
 005A22C5    mov        ebp,esp
 005A22C7    add        esp,0FFFFFFE0
 005A22CA    push       ebx
 005A22CB    push       esi
 005A22CC    push       edi
 005A22CD    xor        ecx,ecx
 005A22CF    mov        dword ptr [ebp-20],ecx
 005A22D2    mov        esi,edx
 005A22D4    mov        dword ptr [ebp-4],eax
 005A22D7    xor        eax,eax
 005A22D9    push       ebp
 005A22DA    push       5A2546
 005A22DF    push       dword ptr fs:[eax]
 005A22E2    mov        dword ptr fs:[eax],esp
 005A22E5    mov        eax,esi
 005A22E7    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A22ED    call       @AsClass
 005A22F2    mov        byte ptr [eax+7E0],1; TBaseReport.?f7E0:byte
 005A22F9    mov        eax,dword ptr [ebp-4]
 005A22FC    mov        eax,dword ptr [eax+0C0]
 005A2302    mov        dword ptr [ebp-18],eax
 005A2305    xor        eax,eax
 005A2307    mov        dword ptr [ebp-10],eax
 005A230A    mov        eax,dword ptr [ebp-4]
 005A230D    mov        eax,dword ptr [eax+0B0]
 005A2313    test       eax,eax
>005A2315    je         005A2321
 005A2317    cmp        dword ptr [eax+8],0
>005A231B    jle        005A2321
 005A231D    xor        ebx,ebx
>005A231F    jmp        005A232A
 005A2321    mov        eax,dword ptr [ebp-4]
 005A2324    mov        ebx,dword ptr [eax+0A8]
 005A232A    mov        byte ptr [ebp-5],1
 005A232E    mov        dl,1
 005A2330    mov        eax,[005A53E8]; TRaveStackList
 005A2335    call       TObject.Create; TRaveStackList.Create
 005A233A    mov        dword ptr [ebp-0C],eax
 005A233D    xor        edx,edx
 005A233F    push       ebp
 005A2340    push       5A2529
 005A2345    push       dword ptr fs:[edx]
 005A2348    mov        dword ptr fs:[edx],esp
 005A234B    test       ebx,ebx
>005A234D    jne        005A2394
 005A234F    mov        eax,dword ptr [ebp-0C]
 005A2352    call       005A5EF4
 005A2357    test       al,al
>005A2359    je         005A238A
 005A235B    inc        dword ptr [ebp-10]
 005A235E    mov        eax,dword ptr [ebp-4]
 005A2361    mov        ebx,dword ptr [eax+0B0]
 005A2367    test       ebx,ebx
>005A2369    je         005A2513
 005A236F    mov        eax,dword ptr [ebx+8]
 005A2372    cmp        eax,dword ptr [ebp-10]
>005A2375    jl         005A2513
 005A237B    mov        edx,dword ptr [ebp-10]
 005A237E    dec        edx
 005A237F    mov        eax,ebx
 005A2381    call       TList.Get
 005A2386    mov        ebx,eax
>005A2388    jmp        005A2394
 005A238A    mov        eax,dword ptr [ebp-0C]
 005A238D    call       005A5F18
 005A2392    mov        ebx,eax
 005A2394    cmp        byte ptr [ebp-5],0
>005A2398    jne        005A2484
 005A239E    cmp        byte ptr [ebx+0B4],2
>005A23A5    je         005A23C2
 005A23A7    mov        eax,esi
 005A23A9    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A23AF    call       @AsClass
 005A23B4    mov        dl,byte ptr [ebx+0B4]
 005A23BA    mov        ecx,dword ptr [eax]
 005A23BC    call       dword ptr [ecx+8C]; TBaseReport.sub_00584754
 005A23C2    cmp        dword ptr [ebx+0BC],0
>005A23C9    je         005A23EB
 005A23CB    mov        eax,esi
 005A23CD    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A23D3    call       @AsClass
 005A23D8    mov        edx,dword ptr [ebx+0BC]
 005A23DE    mov        ecx,dword ptr [eax]
 005A23E0    call       dword ptr [ecx+128]; TBaseReport.sub_00585DF8
>005A23E6    jmp        005A246D
 005A23EB    cmp        dword ptr [ebx+0B8],0FFFFFFFF
>005A23F2    je         005A246D
 005A23F4    call       005807DC
 005A23F9    test       eax,eax
>005A23FB    je         005A246D
 005A23FD    call       005807DC
 005A2402    mov        edx,dword ptr [eax]
 005A2404    call       dword ptr [edx+10]
 005A2407    mov        edx,dword ptr [eax]
 005A2409    call       dword ptr [edx+14]
 005A240C    dec        eax
 005A240D    test       eax,eax
>005A240F    jl         005A246D
 005A2411    inc        eax
 005A2412    mov        dword ptr [ebp-1C],eax
 005A2415    mov        dword ptr [ebp-14],0
 005A241C    call       005807DC
 005A2421    mov        edx,dword ptr [eax]
 005A2423    call       dword ptr [edx+10]
 005A2426    mov        edx,dword ptr [ebp-14]
 005A2429    mov        ecx,dword ptr [eax]
 005A242B    call       dword ptr [ecx+18]
 005A242E    cmp        eax,dword ptr [ebx+0B8]
>005A2434    jne        005A2465
 005A2436    call       005807DC
 005A243B    mov        edx,dword ptr [eax]
 005A243D    call       dword ptr [edx+10]
 005A2440    lea        ecx,[ebp-20]
 005A2443    mov        edx,dword ptr [ebp-14]
 005A2446    mov        edi,dword ptr [eax]
 005A2448    call       dword ptr [edi+0C]
 005A244B    mov        eax,dword ptr [ebp-20]
 005A244E    push       eax
 005A244F    mov        eax,esi
 005A2451    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A2457    call       @AsClass
 005A245C    pop        edx
 005A245D    mov        ecx,dword ptr [eax]
 005A245F    call       dword ptr [ecx+128]; TBaseReport.sub_00585DF8
 005A2465    inc        dword ptr [ebp-14]
 005A2468    dec        dword ptr [ebp-1C]
<005A246B    jne        005A241C
 005A246D    mov        eax,esi
 005A246F    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A2475    call       @AsClass
 005A247A    mov        edx,dword ptr [eax]
 005A247C    call       dword ptr [edx+11C]; TBaseReport.sub_005850F8
>005A2482    jmp        005A2488
 005A2484    mov        byte ptr [ebp-5],0
 005A2488    mov        eax,esi
 005A248A    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A2490    call       @AsClass
 005A2495    mov        edx,eax
 005A2497    mov        eax,ebx
 005A2499    mov        ecx,dword ptr [eax]
 005A249B    call       dword ptr [ecx+0BC]
 005A24A1    mov        eax,ebx
 005A24A3    mov        edx,dword ptr [eax]
 005A24A5    call       dword ptr [edx+70]
 005A24A8    mov        dl,byte ptr [ebx+9C]
 005A24AE    sub        dl,1
>005A24B1    jb         005A24BB
>005A24B3    je         005A24C7
 005A24B5    dec        dl
>005A24B7    je         005A24D7
>005A24B9    jmp        005A24FC
 005A24BB    test       al,al
>005A24BD    je         005A24FC
 005A24BF    mov        ebx,dword ptr [ebx+0A0]
>005A24C5    jmp        005A24FC
 005A24C7    test       al,al
>005A24C9    jne        005A24D3
 005A24CB    mov        ebx,dword ptr [ebx+0A0]
>005A24D1    jmp        005A24FC
 005A24D3    xor        ebx,ebx
>005A24D5    jmp        005A24FC
 005A24D7    cmp        dword ptr [ebx+0A0],0
>005A24DE    je         005A24F6
 005A24E0    test       al,al
>005A24E2    jne        005A24EE
 005A24E4    mov        edx,ebx
 005A24E6    mov        eax,dword ptr [ebp-0C]
 005A24E9    call       005A5F10
 005A24EE    mov        ebx,dword ptr [ebx+0A0]
>005A24F4    jmp        005A24FC
 005A24F6    test       al,al
>005A24F8    je         005A24FC
 005A24FA    xor        ebx,ebx
 005A24FC    cmp        dword ptr [ebp-18],0
<005A2500    jle        005A234B
 005A2506    dec        dword ptr [ebp-18]
 005A2509    cmp        dword ptr [ebp-18],0
<005A250D    jne        005A234B
 005A2513    xor        eax,eax
 005A2515    pop        edx
 005A2516    pop        ecx
 005A2517    pop        ecx
 005A2518    mov        dword ptr fs:[eax],edx
 005A251B    push       5A2530
 005A2520    mov        eax,dword ptr [ebp-0C]
 005A2523    call       TObject.Free
 005A2528    ret
<005A2529    jmp        @HandleFinally
<005A252E    jmp        005A2520
 005A2530    xor        eax,eax
 005A2532    pop        edx
 005A2533    pop        ecx
 005A2534    pop        ecx
 005A2535    mov        dword ptr fs:[eax],edx
 005A2538    push       5A254D
 005A253D    lea        eax,[ebp-20]
 005A2540    call       @LStrClr
 005A2545    ret
<005A2546    jmp        @HandleFinally
<005A254B    jmp        005A253D
 005A254D    pop        edi
 005A254E    pop        esi
 005A254F    pop        ebx
 005A2550    mov        esp,ebp
 005A2552    pop        ebp
 005A2553    ret
*}
//end;

//005A2554
//procedure sub_005A2554(?:?; ?:?);
//begin
{*
 005A2554    push       ebp
 005A2555    mov        ebp,esp
 005A2557    add        esp,0FFFFFFF0
 005A255A    push       ebx
 005A255B    push       esi
 005A255C    push       edi
 005A255D    xor        ecx,ecx
 005A255F    mov        dword ptr [ebp-10],ecx
 005A2562    mov        esi,edx
 005A2564    mov        ebx,eax
 005A2566    xor        eax,eax
 005A2568    push       ebp
 005A2569    push       5A2800
 005A256E    push       dword ptr fs:[eax]
 005A2571    mov        dword ptr fs:[eax],esp
 005A2574    mov        eax,esi
 005A2576    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A257C    call       @AsClass
 005A2581    mov        edi,eax
 005A2583    mov        eax,dword ptr [ebx+48]
 005A2586    mov        dword ptr [eax+0E4],edi
 005A258C    cmp        dword ptr [ebx+0B8],0
>005A2593    je         005A25AF
 005A2595    mov        eax,esi
 005A2597    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A259D    call       @AsClass
 005A25A2    mov        eax,edi
 005A25A4    mov        edx,dword ptr [ebx+0B8]
 005A25AA    call       00585E50
 005A25AF    cmp        byte ptr [ebx+0B5],2
>005A25B6    je         005A25D2
 005A25B8    mov        eax,esi
 005A25BA    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A25C0    call       @AsClass
 005A25C5    mov        eax,edi
 005A25C7    mov        dl,byte ptr [ebx+0B5]
 005A25CD    call       00585F10
 005A25D2    cmp        byte ptr [ebx+0B6],3
>005A25D9    je         005A25F5
 005A25DB    mov        eax,esi
 005A25DD    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A25E3    call       @AsClass
 005A25E8    mov        eax,edi
 005A25EA    mov        dl,byte ptr [ebx+0B6]
 005A25F0    call       00585EE4
 005A25F5    cmp        byte ptr [ebx+0BC],4
>005A25FC    je         005A263C
 005A25FE    mov        eax,esi
 005A2600    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A2606    call       @AsClass
 005A260B    call       00584844
 005A2610    test       eax,eax
>005A2612    je         005A263C
 005A2614    mov        eax,esi
 005A2616    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A261C    call       @AsClass
 005A2621    call       00584844
 005A2626    xor        edx,edx
 005A2628    mov        dl,byte ptr [ebx+0BC]
 005A262E    mov        ecx,dword ptr ds:[61C5BC]
 005A2634    mov        dx,word ptr [ecx+edx*4]
 005A2638    mov        word ptr [eax+3A],dx
 005A263C    mov        edi,dword ptr [ebx+0AC]
 005A2642    test       edi,edi
>005A2644    jle        005A265A
 005A2646    mov        eax,esi
 005A2648    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A264E    call       @AsClass
 005A2653    mov        edx,edi
 005A2655    call       TRvNDRWriter.SetCopies
 005A265A    mov        edi,dword ptr [ebx+0B0]
 005A2660    test       edi,edi
>005A2662    je         005A2678
 005A2664    cmp        dword ptr [edi+8],0
>005A2668    jle        005A2678
 005A266A    xor        edx,edx
 005A266C    mov        eax,edi
 005A266E    call       TList.Get
 005A2673    mov        dword ptr [ebp-4],eax
>005A2676    jmp        005A2681
 005A2678    mov        eax,dword ptr [ebx+0A8]
 005A267E    mov        dword ptr [ebp-4],eax
 005A2681    cmp        dword ptr [ebp-4],0
>005A2685    je         005A27D2
 005A268B    mov        eax,dword ptr [ebp-4]
 005A268E    mov        edi,dword ptr [eax+84]
 005A2694    cmp        edi,100
>005A269A    jne        005A26D0
 005A269C    mov        eax,dword ptr [ebp-4]
 005A269F    push       dword ptr [eax+8C]
 005A26A5    push       dword ptr [eax+88]
 005A26AB    mov        eax,dword ptr [ebp-4]
 005A26AE    push       dword ptr [eax+94]
 005A26B4    push       dword ptr [eax+90]
 005A26BA    mov        eax,esi
 005A26BC    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A26C2    call       @AsClass
 005A26C7    xor        edx,edx
 005A26C9    call       0058485C
>005A26CE    jmp        005A26F1
 005A26D0    cmp        edi,0FFFFFFFF
>005A26D3    je         005A26F1
 005A26D5    push       0
 005A26D7    push       0
 005A26D9    push       0
 005A26DB    push       0
 005A26DD    mov        eax,esi
 005A26DF    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A26E5    call       @AsClass
 005A26EA    mov        edx,edi
 005A26EC    call       0058485C
 005A26F1    mov        eax,dword ptr [ebp-4]
 005A26F4    cmp        byte ptr [eax+0B4],2
>005A26FB    je         005A271B
 005A26FD    mov        eax,esi
 005A26FF    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A2705    call       @AsClass
 005A270A    mov        edx,dword ptr [ebp-4]
 005A270D    mov        dl,byte ptr [edx+0B4]
 005A2713    mov        ecx,dword ptr [eax]
 005A2715    call       dword ptr [ecx+8C]; TBaseReport.sub_00584754
 005A271B    mov        eax,dword ptr [ebp-4]
 005A271E    cmp        dword ptr [eax+0BC],0
>005A2725    je         005A274A
 005A2727    mov        eax,esi
 005A2729    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A272F    call       @AsClass
 005A2734    mov        edx,dword ptr [ebp-4]
 005A2737    mov        edx,dword ptr [edx+0BC]
 005A273D    mov        ecx,dword ptr [eax]
 005A273F    call       dword ptr [ecx+128]; TBaseReport.sub_00585DF8
>005A2745    jmp        005A27D2
 005A274A    mov        eax,dword ptr [ebp-4]
 005A274D    cmp        dword ptr [eax+0B8],0FFFFFFFF
>005A2754    je         005A27D2
 005A2756    call       005807DC
 005A275B    test       eax,eax
>005A275D    je         005A27D2
 005A275F    call       005807DC
 005A2764    mov        edx,dword ptr [eax]
 005A2766    call       dword ptr [edx+10]
 005A2769    mov        edx,dword ptr [eax]
 005A276B    call       dword ptr [edx+14]
 005A276E    dec        eax
 005A276F    test       eax,eax
>005A2771    jl         005A27D2
 005A2773    inc        eax
 005A2774    mov        dword ptr [ebp-0C],eax
 005A2777    mov        dword ptr [ebp-8],0
 005A277E    call       005807DC
 005A2783    mov        edx,dword ptr [eax]
 005A2785    call       dword ptr [edx+10]
 005A2788    mov        edx,dword ptr [ebp-8]
 005A278B    mov        ecx,dword ptr [eax]
 005A278D    call       dword ptr [ecx+18]
 005A2790    mov        edx,dword ptr [ebp-4]
 005A2793    cmp        eax,dword ptr [edx+0B8]
>005A2799    jne        005A27CA
 005A279B    call       005807DC
 005A27A0    mov        edx,dword ptr [eax]
 005A27A2    call       dword ptr [edx+10]
 005A27A5    lea        ecx,[ebp-10]
 005A27A8    mov        edx,dword ptr [ebp-8]
 005A27AB    mov        edi,dword ptr [eax]
 005A27AD    call       dword ptr [edi+0C]
 005A27B0    mov        eax,dword ptr [ebp-10]
 005A27B3    push       eax
 005A27B4    mov        eax,esi
 005A27B6    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A27BC    call       @AsClass
 005A27C1    pop        edx
 005A27C2    mov        ecx,dword ptr [eax]
 005A27C4    call       dword ptr [ecx+128]; TBaseReport.sub_00585DF8
 005A27CA    inc        dword ptr [ebp-8]
 005A27CD    dec        dword ptr [ebp-0C]
<005A27D0    jne        005A277E
 005A27D2    cmp        word ptr [ebx+92],0
>005A27DA    je         005A27EA
 005A27DC    mov        edx,esi
 005A27DE    mov        eax,dword ptr [ebx+94]
 005A27E4    call       dword ptr [ebx+90]
 005A27EA    xor        eax,eax
 005A27EC    pop        edx
 005A27ED    pop        ecx
 005A27EE    pop        ecx
 005A27EF    mov        dword ptr fs:[eax],edx
 005A27F2    push       5A2807
 005A27F7    lea        eax,[ebp-10]
 005A27FA    call       @LStrClr
 005A27FF    ret
<005A2800    jmp        @HandleFinally
<005A2805    jmp        005A27F7
 005A2807    pop        edi
 005A2808    pop        esi
 005A2809    pop        ebx
 005A280A    mov        esp,ebp
 005A280C    pop        ebp
 005A280D    ret
*}
//end;

//005A2810
//procedure sub_005A2810(?:?);
//begin
{*
 005A2810    push       ebx
 005A2811    mov        ecx,dword ptr ds:[61B710]
 005A2817    mov        ecx,dword ptr [ecx]
 005A2819    mov        ebx,dword ptr [eax+48]
 005A281C    mov        dword ptr [ebx+0E4],ecx
 005A2822    cmp        word ptr [eax+9A],0
>005A282A    je         005A283A
 005A282C    mov        ebx,eax
 005A282E    mov        eax,dword ptr [ebx+9C]
 005A2834    call       dword ptr [ebx+98]
 005A283A    pop        ebx
 005A283B    ret
*}
//end;

//005A283C
//procedure sub_005A283C(?:?; ?:TRpComponent);
//begin
{*
 005A283C    push       ebp
 005A283D    mov        ebp,esp
 005A283F    add        esp,0FFFFFFD8
 005A2842    push       ebx
 005A2843    push       esi
 005A2844    push       edi
 005A2845    xor        ecx,ecx
 005A2847    mov        dword ptr [ebp-28],ecx
 005A284A    mov        dword ptr [ebp-24],ecx
 005A284D    mov        dword ptr [ebp-20],ecx
 005A2850    mov        edi,edx
 005A2852    mov        dword ptr [ebp-4],eax
 005A2855    xor        eax,eax
 005A2857    push       ebp
 005A2858    push       5A303C
 005A285D    push       dword ptr fs:[eax]
 005A2860    mov        dword ptr fs:[eax],esp
 005A2863    mov        eax,dword ptr [ebp-4]
 005A2866    mov        eax,dword ptr [eax+48]
 005A2869    mov        edx,dword ptr [eax]
 005A286B    call       dword ptr [edx+0E8]
 005A2871    mov        eax,[0061B9A0]; ^gvar_006171E4
 005A2876    cmp        dword ptr [eax],0
>005A2879    je         005A288A
 005A287B    mov        eax,[0061B9A0]; ^gvar_006171E4
 005A2880    mov        eax,dword ptr [eax]
 005A2882    mov        edx,dword ptr [eax]
 005A2884    call       dword ptr [edx+104]
 005A288A    mov        eax,dword ptr [ebp-4]
 005A288D    mov        edx,dword ptr [eax]
 005A288F    call       dword ptr [edx+98]
 005A2895    mov        eax,dword ptr [ebp-4]
 005A2898    mov        eax,dword ptr [eax+48]
 005A289B    mov        eax,dword ptr [eax+8C]
 005A28A1    mov        ebx,dword ptr [eax+8]
 005A28A4    dec        ebx
 005A28A5    test       ebx,ebx
>005A28A7    jl         005A28CB
 005A28A9    inc        ebx
 005A28AA    xor        esi,esi
 005A28AC    mov        eax,dword ptr [ebp-4]
 005A28AF    mov        eax,dword ptr [eax+48]
 005A28B2    mov        eax,dword ptr [eax+8C]
 005A28B8    mov        edx,esi
 005A28BA    call       TList.Get
 005A28BF    mov        edx,dword ptr [eax]
 005A28C1    call       dword ptr [edx+98]
 005A28C7    inc        esi
 005A28C8    dec        ebx
<005A28C9    jne        005A28AC
 005A28CB    mov        eax,[0061B838]; ^gvar_00617148:TRaveDataSystem
 005A28D0    cmp        dword ptr [eax],0
>005A28D3    je         005A28E0
 005A28D5    mov        eax,[0061B838]; ^gvar_00617148:TRaveDataSystem
 005A28DA    mov        eax,dword ptr [eax]
 005A28DC    mov        byte ptr [eax+58],1; TRaveDataSystem.?f58:byte
 005A28E0    mov        eax,dword ptr [ebp-4]
 005A28E3    mov        eax,dword ptr [eax+48]
 005A28E6    mov        edx,dword ptr [eax]
 005A28E8    call       dword ptr [edx+74]
 005A28EB    mov        eax,dword ptr [ebp-4]
 005A28EE    mov        eax,dword ptr [eax+48]
 005A28F1    mov        byte ptr [eax+0A5],1
 005A28F8    mov        al,1
 005A28FA    mov        edx,dword ptr ds:[61B838]; ^gvar_00617148:TRaveDataSystem
 005A2900    cmp        dword ptr [edx],0
>005A2903    je         005A2911
 005A2905    mov        eax,[0061B838]; ^gvar_00617148:TRaveDataSystem
 005A290A    mov        eax,dword ptr [eax]
 005A290C    call       0059B258
 005A2911    test       al,al
>005A2913    je         005A3021
 005A2919    xor        edx,edx
 005A291B    push       ebp
 005A291C    push       5A301A
 005A2921    push       dword ptr fs:[edx]
 005A2924    mov        dword ptr fs:[edx],esp
 005A2927    test       edi,edi
>005A2929    je         005A2CEF
 005A292F    mov        eax,edi
 005A2931    mov        edx,dword ptr ds:[5977D4]; TRvSystem
 005A2937    call       @IsClass
 005A293C    test       al,al
>005A293E    je         005A2B1A
 005A2944    mov        eax,edi
 005A2946    mov        edx,dword ptr ds:[5977D4]; TRvSystem
 005A294C    call       @AsClass
 005A2951    mov        dword ptr [ebp-14],eax
 005A2954    mov        eax,dword ptr [ebp-14]
 005A2957    mov        eax,dword ptr [eax+54]; TRvSystem.SystemPrinter:TSystemPrinter
 005A295A    mov        edx,dword ptr [eax+68]; TSystemPrinter.UnitsFactor:Double
 005A295D    mov        dword ptr [ebp-10],edx
 005A2960    mov        edx,dword ptr [eax+6C]; TSystemPrinter.?f6C:dword
 005A2963    mov        dword ptr [ebp-0C],edx
 005A2966    push       3FF00000
 005A296B    push       0
 005A296D    call       TSystemPrinter.SetUnitsFactor
 005A2972    mov        eax,dword ptr [ebp-14]
 005A2975    mov        eax,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 005A2978    test       eax,eax
>005A297A    je         005A29CA
 005A297C    xor        edx,edx
 005A297E    push       ebp
 005A297F    push       5A29C3
 005A2984    push       dword ptr fs:[edx]
 005A2987    mov        dword ptr fs:[edx],esp
 005A298A    mov        edx,dword ptr [ebp-4]
 005A298D    mov        edx,dword ptr [edx+48]
 005A2990    mov        dword ptr [edx+0E4],eax
 005A2996    mov        eax,dword ptr [ebp-14]
 005A2999    mov        edx,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 005A299C    mov        eax,dword ptr [ebp-4]
 005A299F    call       005A22C4
 005A29A4    xor        eax,eax
 005A29A6    pop        edx
 005A29A7    pop        ecx
 005A29A8    pop        ecx
 005A29A9    mov        dword ptr fs:[eax],edx
 005A29AC    push       5A2FC8
 005A29B1    push       dword ptr [ebp-0C]
 005A29B4    push       dword ptr [ebp-10]
 005A29B7    mov        eax,dword ptr [ebp-14]
 005A29BA    mov        eax,dword ptr [eax+54]; TRvSystem.SystemPrinter:TSystemPrinter
 005A29BD    call       TSystemPrinter.SetUnitsFactor
 005A29C2    ret
<005A29C3    jmp        @HandleFinally
<005A29C8    jmp        005A29B1
 005A29CA    mov        eax,dword ptr [ebp-4]
 005A29CD    mov        edx,dword ptr [ebp-14]
 005A29D0    mov        ecx,dword ptr [edx+80]; TRvSystem.OnPrint:TNotifyEvent
 005A29D6    mov        dword ptr [eax+88],ecx
 005A29DC    mov        ecx,dword ptr [edx+84]; TRvSystem.?f84:dword
 005A29E2    mov        dword ptr [eax+8C],ecx
 005A29E8    mov        eax,dword ptr [ebp-14]
 005A29EB    mov        edx,dword ptr [ebp-4]
 005A29EE    mov        dword ptr [eax+84],edx; TRvSystem.?f84:dword
 005A29F4    mov        dword ptr [eax+80],5A22C4; TRvSystem.OnPrint:TNotifyEvent sub_005A22C4
 005A29FE    mov        eax,dword ptr [ebp-4]
 005A2A01    mov        edx,dword ptr [ebp-14]
 005A2A04    mov        ecx,dword ptr [edx+90]; TRvSystem.OnBeforePrint:TNotifyEvent
 005A2A0A    mov        dword ptr [eax+90],ecx
 005A2A10    mov        ecx,dword ptr [edx+94]; TRvSystem.?f94:dword
 005A2A16    mov        dword ptr [eax+94],ecx
 005A2A1C    mov        eax,dword ptr [ebp-14]
 005A2A1F    mov        edx,dword ptr [ebp-4]
 005A2A22    mov        dword ptr [eax+94],edx; TRvSystem.?f94:dword
 005A2A28    mov        dword ptr [eax+90],5A2554; TRvSystem.OnBeforePrint:TNotifyEvent sub_005A2554
 005A2A32    mov        eax,dword ptr [ebp-4]
 005A2A35    mov        edx,dword ptr [ebp-14]
 005A2A38    mov        ecx,dword ptr [edx+98]; TRvSystem.OnAfterPrint:TNotifyEvent
 005A2A3E    mov        dword ptr [eax+98],ecx
 005A2A44    mov        ecx,dword ptr [edx+9C]; TRvSystem.?f9C:dword
 005A2A4A    mov        dword ptr [eax+9C],ecx
 005A2A50    mov        eax,dword ptr [ebp-14]
 005A2A53    mov        edx,dword ptr [ebp-4]
 005A2A56    mov        dword ptr [eax+9C],edx; TRvSystem.?f9C:dword
 005A2A5C    mov        dword ptr [eax+98],5A2810; TRvSystem.OnAfterPrint:TNotifyEvent sub_005A2810
 005A2A66    mov        eax,dword ptr [ebp-4]
 005A2A69    cmp        byte ptr [eax+0B4],0
>005A2A70    je         005A2A84
 005A2A72    mov        eax,dword ptr [ebp-14]
 005A2A75    mov        al,byte ptr [eax+4B]; TRvSystem.SystemOptions:TSystemOptions
 005A2A78    or         al,byte ptr ds:[5A304C]; 0x1
 005A2A7E    mov        edx,dword ptr [ebp-14]
 005A2A81    mov        byte ptr [edx+4B],al; TRvSystem.SystemOptions:TSystemOptions
 005A2A84    xor        eax,eax
 005A2A86    push       ebp
 005A2A87    push       5A2B13
 005A2A8C    push       dword ptr fs:[eax]
 005A2A8F    mov        dword ptr fs:[eax],esp
 005A2A92    mov        eax,dword ptr [ebp-14]
 005A2A95    call       0059877C
 005A2A9A    xor        eax,eax
 005A2A9C    pop        edx
 005A2A9D    pop        ecx
 005A2A9E    pop        ecx
 005A2A9F    mov        dword ptr fs:[eax],edx
 005A2AA2    push       5A2FC8
 005A2AA7    mov        eax,dword ptr [ebp-14]
 005A2AAA    mov        edx,dword ptr [ebp-4]
 005A2AAD    mov        ecx,dword ptr [edx+88]
 005A2AB3    mov        dword ptr [eax+80],ecx; TRvSystem.OnPrint:TNotifyEvent
 005A2AB9    mov        ecx,dword ptr [edx+8C]
 005A2ABF    mov        dword ptr [eax+84],ecx; TRvSystem.?f84:dword
 005A2AC5    mov        eax,dword ptr [ebp-14]
 005A2AC8    mov        edx,dword ptr [ebp-4]
 005A2ACB    mov        ecx,dword ptr [edx+90]
 005A2AD1    mov        dword ptr [eax+90],ecx; TRvSystem.OnBeforePrint:TNotifyEvent
 005A2AD7    mov        ecx,dword ptr [edx+94]
 005A2ADD    mov        dword ptr [eax+94],ecx; TRvSystem.?f94:dword
 005A2AE3    mov        eax,dword ptr [ebp-14]
 005A2AE6    mov        edx,dword ptr [ebp-4]
 005A2AE9    mov        ecx,dword ptr [edx+98]
 005A2AEF    mov        dword ptr [eax+98],ecx; TRvSystem.OnAfterPrint:TNotifyEvent
 005A2AF5    mov        ecx,dword ptr [edx+9C]
 005A2AFB    mov        dword ptr [eax+9C],ecx; TRvSystem.?f9C:dword
 005A2B01    push       dword ptr [ebp-0C]
 005A2B04    push       dword ptr [ebp-10]
 005A2B07    mov        eax,dword ptr [ebp-14]
 005A2B0A    mov        eax,dword ptr [eax+54]; TRvSystem.SystemPrinter:TSystemPrinter
 005A2B0D    call       TSystemPrinter.SetUnitsFactor
 005A2B12    ret
<005A2B13    jmp        @HandleFinally
<005A2B18    jmp        005A2AA7
 005A2B1A    mov        eax,edi
 005A2B1C    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A2B22    call       @AsClass
 005A2B27    mov        ebx,eax
 005A2B29    mov        dword ptr [ebp-18],ebx
 005A2B2C    mov        eax,dword ptr [ebp-18]
 005A2B2F    mov        edx,dword ptr [eax+938]; TBaseReport.?f938:?Double
 005A2B35    mov        dword ptr [ebp-10],edx
 005A2B38    mov        edx,dword ptr [eax+93C]; TBaseReport.?f93C:dword
 005A2B3E    mov        dword ptr [ebp-0C],edx
 005A2B41    push       3FF00000
 005A2B46    push       0
 005A2B48    mov        eax,dword ptr [ebp-18]
 005A2B4B    call       TRvNDRWriter.SetUnitsFactor
 005A2B50    mov        eax,dword ptr [ebp-18]
 005A2B53    cmp        byte ptr [eax+8FD],0; TBaseReport.?f8FD:byte
>005A2B5A    je         005A2BBD
 005A2B5C    xor        eax,eax
 005A2B5E    push       ebp
 005A2B5F    push       5A2BB6
 005A2B64    push       dword ptr fs:[eax]
 005A2B67    mov        dword ptr fs:[eax],esp
 005A2B6A    mov        eax,edi
 005A2B6C    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A2B72    call       @AsClass
 005A2B77    mov        eax,dword ptr [ebp-4]
 005A2B7A    mov        eax,dword ptr [eax+48]
 005A2B7D    mov        dword ptr [eax+0E4],ebx
 005A2B83    mov        eax,edi
 005A2B85    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005A2B8B    call       @AsClass
 005A2B90    mov        edx,ebx
 005A2B92    mov        eax,dword ptr [ebp-4]
 005A2B95    call       005A22C4
 005A2B9A    xor        eax,eax
 005A2B9C    pop        edx
 005A2B9D    pop        ecx
 005A2B9E    pop        ecx
 005A2B9F    mov        dword ptr fs:[eax],edx
 005A2BA2    push       5A2FC8
 005A2BA7    push       dword ptr [ebp-0C]
 005A2BAA    push       dword ptr [ebp-10]
 005A2BAD    mov        eax,dword ptr [ebp-18]
 005A2BB0    call       TRvNDRWriter.SetUnitsFactor
 005A2BB5    ret
<005A2BB6    jmp        @HandleFinally
<005A2BBB    jmp        005A2BA7
 005A2BBD    mov        eax,dword ptr [ebp-4]
 005A2BC0    mov        edx,dword ptr [ebp-18]
 005A2BC3    mov        ecx,dword ptr [edx+9C0]; TBaseReport.?f9C0:dword
 005A2BC9    mov        dword ptr [eax+88],ecx
 005A2BCF    mov        ecx,dword ptr [edx+9C4]; TBaseReport.?f9C4:dword
 005A2BD5    mov        dword ptr [eax+8C],ecx
 005A2BDB    mov        eax,dword ptr [ebp-18]
 005A2BDE    mov        edx,dword ptr [ebp-4]
 005A2BE1    mov        dword ptr [eax+9C4],edx; TBaseReport.?f9C4:dword
 005A2BE7    mov        dword ptr [eax+9C0],5A22C4; TBaseReport.?f9C0:dword sub_005A22C4
 005A2BF1    mov        eax,dword ptr [ebp-4]
 005A2BF4    mov        edx,dword ptr [ebp-18]
 005A2BF7    mov        ecx,dword ptr [edx+9D0]; TBaseReport.?f9D0:dword
 005A2BFD    mov        dword ptr [eax+90],ecx
 005A2C03    mov        ecx,dword ptr [edx+9D4]; TBaseReport.?f9D4:dword
 005A2C09    mov        dword ptr [eax+94],ecx
 005A2C0F    mov        eax,dword ptr [ebp-18]
 005A2C12    mov        edx,dword ptr [ebp-4]
 005A2C15    mov        dword ptr [eax+9D4],edx; TBaseReport.?f9D4:dword
 005A2C1B    mov        dword ptr [eax+9D0],5A2554; TBaseReport.?f9D0:dword sub_005A2554
 005A2C25    mov        eax,dword ptr [ebp-4]
 005A2C28    mov        edx,dword ptr [ebp-18]
 005A2C2B    mov        ecx,dword ptr [edx+9D8]; TBaseReport.?f9D8:dword
 005A2C31    mov        dword ptr [eax+98],ecx
 005A2C37    mov        ecx,dword ptr [edx+9DC]; TBaseReport.?f9DC:dword
 005A2C3D    mov        dword ptr [eax+9C],ecx
 005A2C43    mov        eax,dword ptr [ebp-18]
 005A2C46    mov        edx,dword ptr [ebp-4]
 005A2C49    mov        dword ptr [eax+9DC],edx; TBaseReport.?f9DC:dword
 005A2C4F    mov        dword ptr [eax+9D8],5A2810; TBaseReport.?f9D8:dword sub_005A2810
 005A2C59    xor        eax,eax
 005A2C5B    push       ebp
 005A2C5C    push       5A2CE8
 005A2C61    push       dword ptr fs:[eax]
 005A2C64    mov        dword ptr fs:[eax],esp
 005A2C67    mov        eax,dword ptr [ebp-18]
 005A2C6A    mov        edx,dword ptr [eax]
 005A2C6C    call       dword ptr [edx+118]; TBaseReport.sub_00584DF4
 005A2C72    xor        eax,eax
 005A2C74    pop        edx
 005A2C75    pop        ecx
 005A2C76    pop        ecx
 005A2C77    mov        dword ptr fs:[eax],edx
 005A2C7A    push       5A2FC8
 005A2C7F    mov        eax,dword ptr [ebp-18]
 005A2C82    mov        edx,dword ptr [ebp-4]
 005A2C85    mov        ecx,dword ptr [edx+88]
 005A2C8B    mov        dword ptr [eax+9C0],ecx; TBaseReport.?f9C0:dword
 005A2C91    mov        ecx,dword ptr [edx+8C]
 005A2C97    mov        dword ptr [eax+9C4],ecx; TBaseReport.?f9C4:dword
 005A2C9D    mov        eax,dword ptr [ebp-18]
 005A2CA0    mov        edx,dword ptr [ebp-4]
 005A2CA3    mov        ecx,dword ptr [edx+90]
 005A2CA9    mov        dword ptr [eax+9D0],ecx; TBaseReport.?f9D0:dword
 005A2CAF    mov        ecx,dword ptr [edx+94]
 005A2CB5    mov        dword ptr [eax+9D4],ecx; TBaseReport.?f9D4:dword
 005A2CBB    mov        eax,dword ptr [ebp-18]
 005A2CBE    mov        edx,dword ptr [ebp-4]
 005A2CC1    mov        ecx,dword ptr [edx+98]
 005A2CC7    mov        dword ptr [eax+9D8],ecx; TBaseReport.?f9D8:dword
 005A2CCD    mov        ecx,dword ptr [edx+9C]
 005A2CD3    mov        dword ptr [eax+9DC],ecx; TBaseReport.?f9DC:dword
 005A2CD9    push       dword ptr [ebp-0C]
 005A2CDC    push       dword ptr [ebp-10]
 005A2CDF    mov        eax,dword ptr [ebp-18]
 005A2CE2    call       TRvNDRWriter.SetUnitsFactor
 005A2CE7    ret
<005A2CE8    jmp        @HandleFinally
<005A2CED    jmp        005A2C7F
 005A2CEF    mov        eax,[0061BD04]; ^Application:TApplication
 005A2CF4    mov        eax,dword ptr [eax]
 005A2CF6    mov        ecx,dword ptr [eax+44]; TApplication.FMainForm:TForm
 005A2CF9    mov        dl,1
 005A2CFB    mov        eax,[005977D4]; TRvSystem
 005A2D00    call       TRvSystem.Create; TRvSystem.Create
 005A2D05    mov        dword ptr [ebp-1C],eax
 005A2D08    xor        edx,edx
 005A2D0A    push       ebp
 005A2D0B    push       5A2FC1
 005A2D10    push       dword ptr fs:[edx]
 005A2D13    mov        dword ptr fs:[edx],esp
 005A2D16    mov        eax,[0061C2A4]
 005A2D1B    mov        al,byte ptr [eax]
 005A2D1D    mov        edx,dword ptr [ebp-1C]
 005A2D20    mov        byte ptr [edx+40],al; TRvSystem.DefaultDest:TReportDest
 005A2D23    mov        ebx,dword ptr ds:[61B830]
 005A2D29    mov        ebx,dword ptr [ebx]
 005A2D2B    lea        edx,[ebp-20]
 005A2D2E    mov        eax,5A3058; 'Output Options'
 005A2D33    call       ebx
 005A2D35    mov        edx,dword ptr [ebp-20]
 005A2D38    mov        eax,dword ptr [ebp-1C]
 005A2D3B    add        eax,58; TRvSystem.?f58:String
 005A2D3E    call       @LStrAsg
 005A2D43    mov        ebx,dword ptr ds:[61B830]
 005A2D49    mov        ebx,dword ptr [ebx]
 005A2D4B    lea        edx,[ebp-24]
 005A2D4E    mov        eax,5A3070; 'Report Status'
 005A2D53    call       ebx
 005A2D55    mov        edx,dword ptr [ebp-24]
 005A2D58    mov        eax,dword ptr [ebp-1C]
 005A2D5B    add        eax,5C; TRvSystem.?f5C:String
 005A2D5E    call       @LStrAsg
 005A2D63    mov        ebx,dword ptr ds:[61B830]
 005A2D69    mov        ebx,dword ptr [ebx]
 005A2D6B    lea        edx,[ebp-28]
 005A2D6E    mov        eax,5A3088; 'Report Preview'
 005A2D73    call       ebx
 005A2D75    mov        edx,dword ptr [ebp-28]
 005A2D78    mov        eax,dword ptr [ebp-1C]
 005A2D7B    add        eax,60; TRvSystem.?f60:String
 005A2D7E    call       @LStrAsg
 005A2D83    mov        eax,[0061C11C]
 005A2D88    cmp        byte ptr [eax],0
>005A2D8B    je         005A2DA4
 005A2D8D    mov        eax,dword ptr [ebp-1C]
 005A2D90    mov        ax,word ptr [eax+49]; TRvSystem.SystemSetups:TSystemSetups
 005A2D94    or         ax,word ptr ds:[5A304C]; 0x1
 005A2D9B    mov        edx,dword ptr [ebp-1C]
 005A2D9E    mov        word ptr [edx+49],ax; TRvSystem.SystemSetups:TSystemSetups
>005A2DA2    jmp        005A2DBB
 005A2DA4    mov        eax,dword ptr [ebp-1C]
 005A2DA7    mov        dx,word ptr ds:[5A304C]; 0x1
 005A2DAE    not        edx
 005A2DB0    and        dx,word ptr [eax+49]; TRvSystem.SystemSetups:TSystemSetups
 005A2DB4    mov        eax,dword ptr [ebp-1C]
 005A2DB7    mov        word ptr [eax+49],dx; TRvSystem.SystemSetups:TSystemSetups
 005A2DBB    mov        eax,dword ptr [ebp-1C]
 005A2DBE    mov        eax,dword ptr [eax+50]; TRvSystem.SystemPreview:TSystemPreview
 005A2DC1    mov        edx,dword ptr ds:[61C410]
 005A2DC7    mov        ecx,dword ptr [edx]
 005A2DC9    mov        dword ptr [eax+8],ecx; TSystemPreview.GridHoriz:Double
 005A2DCC    mov        ecx,dword ptr [edx+4]
 005A2DCF    mov        dword ptr [eax+0C],ecx; TSystemPreview.?fC:dword
 005A2DD2    mov        edx,dword ptr ds:[61C0C4]
 005A2DD8    mov        ecx,dword ptr [edx]
 005A2DDA    mov        dword ptr [eax+18],ecx; TSystemPreview.GridVert:Double
 005A2DDD    mov        ecx,dword ptr [edx+4]
 005A2DE0    mov        dword ptr [eax+1C],ecx; TSystemPreview.?f1C:dword
 005A2DE3    mov        edx,dword ptr ds:[61B798]
 005A2DE9    mov        edx,dword ptr [edx]
 005A2DEB    mov        eax,dword ptr [eax+10]; TSystemPreview.GridPen:TPen
 005A2DEE    call       TPen.SetColor
 005A2DF3    mov        edx,dword ptr ds:[61B2B8]
 005A2DF9    mov        dl,byte ptr [edx]
 005A2DFB    mov        eax,dword ptr [ebp-1C]
 005A2DFE    mov        eax,dword ptr [eax+50]; TRvSystem.SystemPreview:TSystemPreview
 005A2E01    mov        eax,dword ptr [eax+10]; TSystemPreview.GridPen:TPen
 005A2E04    call       TPen.SetStyle
 005A2E09    mov        edx,dword ptr ds:[61C0A8]
 005A2E0F    mov        dl,byte ptr [edx]
 005A2E11    mov        eax,dword ptr [ebp-1C]
 005A2E14    mov        eax,dword ptr [eax+50]; TRvSystem.SystemPreview:TSystemPreview
 005A2E17    mov        byte ptr [eax+40],dl; TSystemPreview.RulerType:TRulerType
 005A2E1A    xor        edx,edx
 005A2E1C    mov        dword ptr [eax+28],edx; TSystemPreview.MarginPercent:Double
 005A2E1F    mov        dword ptr [eax+2C],40040000; TSystemPreview.?f2C:dword
 005A2E26    mov        edx,dword ptr ds:[61B6B4]
 005A2E2C    mov        edx,dword ptr [edx]
 005A2E2E    call       TSystemPreview.SetShadowDepth
 005A2E33    mov        edx,dword ptr ds:[61B8A4]
 005A2E39    mov        edx,dword ptr [edx]
 005A2E3B    mov        eax,dword ptr [ebp-1C]
 005A2E3E    mov        eax,dword ptr [eax+50]; TRvSystem.SystemPreview:TSystemPreview
 005A2E41    mov        dword ptr [eax+50],edx; TSystemPreview.ZoomInc:Integer
 005A2E44    mov        edx,dword ptr ds:[61B1EC]
 005A2E4A    push       dword ptr [edx+4]
 005A2E4D    push       dword ptr [edx]
 005A2E4F    call       TSystemPreview.SetZoomFactor
 005A2E54    mov        edx,dword ptr ds:[61BA30]
 005A2E5A    mov        dl,byte ptr [edx]
 005A2E5C    mov        eax,dword ptr [ebp-1C]
 005A2E5F    mov        eax,dword ptr [eax+50]; TRvSystem.SystemPreview:TSystemPreview
 005A2E62    mov        byte ptr [eax+5C],dl; TSystemPreview.FormState:TWindowState
 005A2E65    mov        edx,dword ptr ds:[61B808]
 005A2E6B    mov        dl,byte ptr [edx]
 005A2E6D    call       TSystemPreview.SetMonochrome
 005A2E72    mov        eax,dword ptr [ebp-1C]
 005A2E75    mov        eax,dword ptr [eax+4C]; TRvSystem.SystemFiler:TSystemFiler
 005A2E78    mov        byte ptr [eax+4],1; TSystemFiler.AccuracyMethod:TAccuracyMethod
 005A2E7C    mov        eax,dword ptr [ebp-4]
 005A2E7F    cmp        byte ptr [eax+0B4],0
>005A2E86    je         005A2E9A
 005A2E88    mov        eax,dword ptr [ebp-1C]
 005A2E8B    mov        al,byte ptr [eax+4B]; TRvSystem.SystemOptions:TSystemOptions
 005A2E8E    or         al,byte ptr ds:[5A304C]; 0x1
 005A2E94    mov        edx,dword ptr [ebp-1C]
 005A2E97    mov        byte ptr [edx+4B],al; TRvSystem.SystemOptions:TSystemOptions
 005A2E9A    mov        eax,dword ptr [ebp-4]
 005A2E9D    mov        edx,dword ptr [ebp-1C]
 005A2EA0    mov        ecx,dword ptr [edx+80]; TRvSystem.OnPrint:TNotifyEvent
 005A2EA6    mov        dword ptr [eax+88],ecx
 005A2EAC    mov        ecx,dword ptr [edx+84]; TRvSystem.?f84:dword
 005A2EB2    mov        dword ptr [eax+8C],ecx
 005A2EB8    mov        eax,dword ptr [ebp-1C]
 005A2EBB    mov        edx,dword ptr [ebp-4]
 005A2EBE    mov        dword ptr [eax+84],edx; TRvSystem.?f84:dword
 005A2EC4    mov        dword ptr [eax+80],5A22C4; TRvSystem.OnPrint:TNotifyEvent sub_005A22C4
 005A2ECE    mov        eax,dword ptr [ebp-4]
 005A2ED1    xor        edx,edx
 005A2ED3    mov        dword ptr [eax+90],edx
 005A2ED9    mov        dword ptr [eax+94],edx
 005A2EDF    mov        eax,dword ptr [ebp-1C]
 005A2EE2    mov        edx,dword ptr [ebp-4]
 005A2EE5    mov        dword ptr [eax+94],edx; TRvSystem.?f94:dword
 005A2EEB    mov        dword ptr [eax+90],5A2554; TRvSystem.OnBeforePrint:TNotifyEvent sub_005A2554
 005A2EF5    mov        eax,dword ptr [ebp-4]
 005A2EF8    xor        edx,edx
 005A2EFA    mov        dword ptr [eax+98],edx
 005A2F00    mov        dword ptr [eax+9C],edx
 005A2F06    mov        eax,dword ptr [ebp-1C]
 005A2F09    mov        edx,dword ptr [ebp-4]
 005A2F0C    mov        dword ptr [eax+9C],edx; TRvSystem.?f9C:dword
 005A2F12    mov        dword ptr [eax+98],5A2810; TRvSystem.OnAfterPrint:TNotifyEvent sub_005A2810
 005A2F1C    mov        eax,dword ptr [ebp-1C]
 005A2F1F    mov        eax,dword ptr [eax+4C]; TRvSystem.SystemFiler:TSystemFiler
 005A2F22    mov        byte ptr [eax+14],3; TSystemFiler.StreamMode:TStreamMode
 005A2F26    xor        eax,eax
 005A2F28    push       ebp
 005A2F29    push       5A2FA4
 005A2F2E    push       dword ptr fs:[eax]
 005A2F31    mov        dword ptr fs:[eax],esp
 005A2F34    mov        eax,dword ptr [ebp-1C]
 005A2F37    call       0059877C
 005A2F3C    xor        eax,eax
 005A2F3E    pop        edx
 005A2F3F    pop        ecx
 005A2F40    pop        ecx
 005A2F41    mov        dword ptr fs:[eax],edx
 005A2F44    push       5A2FAB
 005A2F49    mov        eax,dword ptr [ebp-1C]
 005A2F4C    mov        edx,dword ptr [ebp-4]
 005A2F4F    mov        ecx,dword ptr [edx+88]
 005A2F55    mov        dword ptr [eax+80],ecx; TRvSystem.OnPrint:TNotifyEvent
 005A2F5B    mov        ecx,dword ptr [edx+8C]
 005A2F61    mov        dword ptr [eax+84],ecx; TRvSystem.?f84:dword
 005A2F67    mov        eax,dword ptr [ebp-1C]
 005A2F6A    mov        edx,dword ptr [ebp-4]
 005A2F6D    mov        ecx,dword ptr [edx+90]
 005A2F73    mov        dword ptr [eax+90],ecx; TRvSystem.OnBeforePrint:TNotifyEvent
 005A2F79    mov        ecx,dword ptr [edx+94]
 005A2F7F    mov        dword ptr [eax+94],ecx; TRvSystem.?f94:dword
 005A2F85    mov        eax,dword ptr [ebp-1C]
 005A2F88    mov        edx,dword ptr [ebp-4]
 005A2F8B    mov        ecx,dword ptr [edx+98]
 005A2F91    mov        dword ptr [eax+98],ecx; TRvSystem.OnAfterPrint:TNotifyEvent
 005A2F97    mov        ecx,dword ptr [edx+9C]
 005A2F9D    mov        dword ptr [eax+9C],ecx; TRvSystem.?f9C:dword
 005A2FA3    ret
<005A2FA4    jmp        @HandleFinally
<005A2FA9    jmp        005A2F49
 005A2FAB    xor        eax,eax
 005A2FAD    pop        edx
 005A2FAE    pop        ecx
 005A2FAF    pop        ecx
 005A2FB0    mov        dword ptr fs:[eax],edx
 005A2FB3    push       5A2FC8
 005A2FB8    mov        eax,dword ptr [ebp-1C]
 005A2FBB    call       TObject.Free
 005A2FC0    ret
<005A2FC1    jmp        @HandleFinally
<005A2FC6    jmp        005A2FB8
 005A2FC8    xor        eax,eax
 005A2FCA    pop        edx
 005A2FCB    pop        ecx
 005A2FCC    pop        ecx
 005A2FCD    mov        dword ptr fs:[eax],edx
 005A2FD0    push       5A3021
 005A2FD5    mov        eax,[0061B838]; ^gvar_00617148:TRaveDataSystem
 005A2FDA    cmp        dword ptr [eax],0
>005A2FDD    je         005A2FEB
 005A2FDF    mov        eax,[0061B838]; ^gvar_00617148:TRaveDataSystem
 005A2FE4    mov        eax,dword ptr [eax]
 005A2FE6    call       0059B338
 005A2FEB    mov        eax,dword ptr [ebp-4]
 005A2FEE    mov        eax,dword ptr [eax+48]
 005A2FF1    mov        edx,dword ptr [eax]
 005A2FF3    call       dword ptr [edx+78]
 005A2FF6    mov        eax,[0061B9A0]; ^gvar_006171E4
 005A2FFB    cmp        dword ptr [eax],0
>005A2FFE    je         005A300C
 005A3000    mov        eax,[0061B9A0]; ^gvar_006171E4
 005A3005    mov        eax,dword ptr [eax]
 005A3007    mov        edx,dword ptr [eax]
 005A3009    call       dword ptr [edx+7C]
 005A300C    mov        eax,dword ptr [ebp-4]
 005A300F    mov        eax,dword ptr [eax+48]
 005A3012    mov        byte ptr [eax+0A5],0
 005A3019    ret
<005A301A    jmp        @HandleFinally
<005A301F    jmp        005A2FD5
 005A3021    xor        eax,eax
 005A3023    pop        edx
 005A3024    pop        ecx
 005A3025    pop        ecx
 005A3026    mov        dword ptr fs:[eax],edx
 005A3029    push       5A3043
 005A302E    lea        eax,[ebp-28]
 005A3031    mov        edx,3
 005A3036    call       @LStrArrayClr
 005A303B    ret
<005A303C    jmp        @HandleFinally
<005A3041    jmp        005A302E
 005A3043    pop        edi
 005A3044    pop        esi
 005A3045    pop        ebx
 005A3046    mov        esp,ebp
 005A3048    pop        ebp
 005A3049    ret
*}
//end;

//005A3098
//procedure sub_005A3098(?:?; ?:TRpComponent);
//begin
{*
 005A3098    push       ebp
 005A3099    mov        ebp,esp
 005A309B    add        esp,0FFFFFFF0
 005A309E    push       ebx
 005A309F    mov        dword ptr [ebp-8],edx
 005A30A2    mov        dword ptr [ebp-4],eax
 005A30A5    mov        eax,[0061B634]
 005A30AA    mov        byte ptr [eax],1
 005A30AD    mov        dl,1
 005A30AF    mov        eax,[0041CBF8]; TMemoryStream
 005A30B4    call       TObject.Create; TMemoryStream.Create
 005A30B9    mov        dword ptr [ebp-10],eax
 005A30BC    xor        edx,edx
 005A30BE    push       ebp
 005A30BF    push       5A321A
 005A30C4    push       dword ptr fs:[edx]
 005A30C7    mov        dword ptr fs:[edx],esp
 005A30CA    mov        eax,dword ptr [ebp-4]
 005A30CD    mov        eax,dword ptr [eax+48]
 005A30D0    mov        ecx,dword ptr [ebp-10]
 005A30D3    mov        edx,dword ptr [ebp-4]
 005A30D6    call       005A3BC4
 005A30DB    xor        ecx,ecx
 005A30DD    mov        dl,1
 005A30DF    mov        eax,[005A6D38]; TRaveContainerControl
 005A30E4    call       TRaveContainerControl.Create; TRaveContainerControl.Create
 005A30E9    mov        dword ptr [ebp-0C],eax
 005A30EC    xor        edx,edx
 005A30EE    push       ebp
 005A30EF    push       5A31F5
 005A30F4    push       dword ptr fs:[edx]
 005A30F7    mov        dword ptr fs:[edx],esp
 005A30FA    mov        ecx,dword ptr [ebp-0C]
 005A30FD    mov        dl,1
 005A30FF    mov        eax,[005A1434]; TRaveProjectManager
 005A3104    call       TRaveProjectManager.Create; TRaveProjectManager.Create
 005A3109    mov        ebx,eax
 005A310B    mov        eax,dword ptr [ebp-4]
 005A310E    mov        dword ptr [eax+0C8],ebx
 005A3114    xor        edx,edx
 005A3116    push       ebp
 005A3117    push       5A31D8
 005A311C    push       dword ptr fs:[edx]
 005A311F    mov        dword ptr fs:[edx],esp
 005A3122    mov        eax,dword ptr [ebp-4]
 005A3125    mov        eax,dword ptr [eax+48]
 005A3128    mov        dword ptr [ebx+0D4],eax; TRaveProjectManager.?fD4:dword
 005A312E    xor        edx,edx
 005A3130    push       ebp
 005A3131    push       5A319F
 005A3136    push       dword ptr fs:[edx]
 005A3139    mov        dword ptr fs:[edx],esp
 005A313C    push       0
 005A313E    push       0
 005A3140    mov        eax,dword ptr [ebp-10]
 005A3143    call       TStream.SetPosition
 005A3148    mov        eax,dword ptr [ebp-4]
 005A314B    mov        eax,dword ptr [eax+0C8]
 005A3151    mov        byte ptr [eax+0D8],1
 005A3158    mov        edx,dword ptr [ebp-10]
 005A315B    call       005A4634
 005A3160    mov        eax,dword ptr [ebp-4]
 005A3163    mov        eax,dword ptr [eax+48]
 005A3166    mov        edx,dword ptr [eax+0C0]
 005A316C    mov        eax,dword ptr [ebp-4]
 005A316F    mov        eax,dword ptr [eax+0C8]
 005A3175    mov        eax,dword ptr [eax+0C0]
 005A317B    mov        ecx,dword ptr [eax]
 005A317D    call       dword ptr [ecx+8]
 005A3180    xor        eax,eax
 005A3182    pop        edx
 005A3183    pop        ecx
 005A3184    pop        ecx
 005A3185    mov        dword ptr fs:[eax],edx
 005A3188    push       5A31A6
 005A318D    mov        eax,dword ptr [ebp-4]
 005A3190    mov        ebx,dword ptr [eax+0C8]
 005A3196    xor        eax,eax
 005A3198    mov        dword ptr [ebx+0D4],eax
 005A319E    ret
<005A319F    jmp        @HandleFinally
<005A31A4    jmp        005A318D
 005A31A6    mov        eax,dword ptr [ebp-4]
 005A31A9    mov        edx,dword ptr [eax+68]
 005A31AC    mov        eax,ebx
 005A31AE    mov        cl,1
 005A31B0    call       005A51D4
 005A31B5    mov        edx,dword ptr [ebp-8]
 005A31B8    call       005A283C
 005A31BD    xor        eax,eax
 005A31BF    pop        edx
 005A31C0    pop        ecx
 005A31C1    pop        ecx
 005A31C2    mov        dword ptr fs:[eax],edx
 005A31C5    push       5A31DF
 005A31CA    mov        eax,dword ptr [ebp-4]
 005A31CD    add        eax,0C8
 005A31D2    call       FreeAndNil
 005A31D7    ret
<005A31D8    jmp        @HandleFinally
<005A31DD    jmp        005A31CA
 005A31DF    xor        eax,eax
 005A31E1    pop        edx
 005A31E2    pop        ecx
 005A31E3    pop        ecx
 005A31E4    mov        dword ptr fs:[eax],edx
 005A31E7    push       5A31FC
 005A31EC    lea        eax,[ebp-0C]
 005A31EF    call       FreeAndNil
 005A31F4    ret
<005A31F5    jmp        @HandleFinally
<005A31FA    jmp        005A31EC
 005A31FC    xor        eax,eax
 005A31FE    pop        edx
 005A31FF    pop        ecx
 005A3200    pop        ecx
 005A3201    mov        dword ptr fs:[eax],edx
 005A3204    push       5A3221
 005A3209    mov        eax,[0061B634]
 005A320E    mov        byte ptr [eax],0
 005A3211    lea        eax,[ebp-10]
 005A3214    call       FreeAndNil
 005A3219    ret
<005A321A    jmp        @HandleFinally
<005A321F    jmp        005A3209
 005A3221    pop        ebx
 005A3222    mov        esp,ebp
 005A3224    pop        ebp
 005A3225    ret
*}
//end;

//005A3228
//constructor TRaveModuleManager.Create(?:TRaveModuleManager; _Dv__:Boolean);
//begin
{*
 005A3228    push       ebx
 005A3229    push       esi
 005A322A    push       edi
 005A322B    test       dl,dl
>005A322D    je         005A3237
 005A322F    add        esp,0FFFFFFF0
 005A3232    call       @ClassCreate
 005A3237    mov        esi,ecx
 005A3239    mov        ebx,edx
 005A323B    mov        edi,eax
 005A323D    xor        edx,edx
 005A323F    mov        eax,edi
 005A3241    call       TObject.Create
 005A3246    mov        dl,1
 005A3248    mov        eax,[0041C260]; TList
 005A324D    call       TObject.Create; TList.Create
 005A3252    mov        dword ptr [edi+4],eax; TRaveModuleManager.?f4:TList
 005A3255    mov        dword ptr [edi+8],esi; TRaveModuleManager.?f8:dword
 005A3258    mov        eax,edi
 005A325A    test       bl,bl
>005A325C    je         005A326D
 005A325E    call       @AfterConstruction
 005A3263    pop        dword ptr fs:[0]
 005A326A    add        esp,0C
 005A326D    mov        eax,edi
 005A326F    pop        edi
 005A3270    pop        esi
 005A3271    pop        ebx
 005A3272    ret
*}
//end;

//005A3274
destructor TRaveModuleManager.Destroy;
begin
{*
 005A3274    push       ebx
 005A3275    push       esi
 005A3276    push       edi
 005A3277    push       ebp
 005A3278    call       @BeforeDestruction
 005A327D    mov        ebx,edx
 005A327F    mov        esi,eax
 005A3281    mov        eax,dword ptr [esi+4]; TRaveModuleManager.?f4:TList
 005A3284    mov        ebp,dword ptr [eax+8]; TList.FCount:Integer
 005A3287    dec        ebp
 005A3288    test       ebp,ebp
>005A328A    jl         005A32A2
 005A328C    inc        ebp
 005A328D    xor        edi,edi
 005A328F    mov        eax,dword ptr [esi+4]; TRaveModuleManager.?f4:TList
 005A3292    mov        edx,edi
 005A3294    call       TList.Get
 005A3299    call       TObject.Free
 005A329E    inc        edi
 005A329F    dec        ebp
<005A32A0    jne        005A328F
 005A32A2    lea        eax,[esi+4]; TRaveModuleManager.?f4:TList
 005A32A5    call       FreeAndNil
 005A32AA    mov        edx,ebx
 005A32AC    and        dl,0FC
 005A32AF    mov        eax,esi
 005A32B1    call       TObject.Destroy
 005A32B6    test       bl,bl
>005A32B8    jle        005A32C1
 005A32BA    mov        eax,esi
 005A32BC    call       @ClassDestroy
 005A32C1    pop        ebp
 005A32C2    pop        edi
 005A32C3    pop        esi
 005A32C4    pop        ebx
 005A32C5    ret
*}
end;

//005A32C8
//function sub_005A32C8(?:TRaveModuleManager; ?:AnsiString):?;
//begin
{*
 005A32C8    push       ebp
 005A32C9    mov        ebp,esp
 005A32CB    push       ecx
 005A32CC    push       ebx
 005A32CD    push       esi
 005A32CE    push       edi
 005A32CF    mov        dword ptr [ebp-4],edx
 005A32D2    mov        edi,eax
 005A32D4    mov        eax,dword ptr [ebp-4]
 005A32D7    call       @LStrAddRef
 005A32DC    xor        eax,eax
 005A32DE    push       ebp
 005A32DF    push       5A332E
 005A32E4    push       dword ptr fs:[eax]
 005A32E7    mov        dword ptr fs:[eax],esp
 005A32EA    mov        eax,dword ptr [edi+4]; TRaveModuleManager.?f4:TList
 005A32ED    mov        esi,dword ptr [eax+8]; TList.FCount:Integer
 005A32F0    dec        esi
 005A32F1    test       esi,esi
>005A32F3    jl         005A3315
 005A32F5    inc        esi
 005A32F6    xor        ebx,ebx
 005A32F8    mov        eax,dword ptr [edi+4]; TRaveModuleManager.?f4:TList
 005A32FB    mov        edx,ebx
 005A32FD    call       TList.Get
 005A3302    mov        eax,dword ptr [eax+4]
 005A3305    mov        edx,dword ptr [ebp-4]
 005A3308    call       005A5948
 005A330D    test       al,al
>005A330F    jne        005A3318
 005A3311    inc        ebx
 005A3312    dec        esi
<005A3313    jne        005A32F8
 005A3315    or         ebx,0FFFFFFFF
 005A3318    xor        eax,eax
 005A331A    pop        edx
 005A331B    pop        ecx
 005A331C    pop        ecx
 005A331D    mov        dword ptr fs:[eax],edx
 005A3320    push       5A3335
 005A3325    lea        eax,[ebp-4]
 005A3328    call       @LStrClr
 005A332D    ret
<005A332E    jmp        @HandleFinally
<005A3333    jmp        005A3325
 005A3335    mov        eax,ebx
 005A3337    pop        edi
 005A3338    pop        esi
 005A3339    pop        ebx
 005A333A    pop        ecx
 005A333B    pop        ebp
 005A333C    ret
*}
//end;

//005A3340
//procedure sub_005A3340(?:AnsiString; ?:AnsiString);
//begin
{*
 005A3340    push       ebx
 005A3341    push       esi
 005A3342    mov        ebx,edx
 005A3344    mov        esi,eax
 005A3346    mov        eax,ebx
 005A3348    mov        edx,esi
 005A334A    call       @LStrAsg
 005A334F    mov        eax,dword ptr [ebx]
 005A3351    call       @LStrLen
 005A3356    mov        edx,eax
 005A3358    mov        eax,dword ptr [ebx]
 005A335A    call       IsPathDelimiter
 005A335F    test       al,al
>005A3361    jne        005A336F
 005A3363    mov        eax,ebx
 005A3365    mov        edx,5A337C; '\\'
 005A336A    call       @LStrCat
 005A336F    pop        esi
 005A3370    pop        ebx
 005A3371    ret
*}
//end;

//005A3380
//function sub_005A3380(?:?; ?:AnsiString):?;
//begin
{*
 005A3380    push       ebp
 005A3381    mov        ebp,esp
 005A3383    add        esp,0FFFFFFE0
 005A3386    push       ebx
 005A3387    xor        ecx,ecx
 005A3389    mov        dword ptr [ebp-14],ecx
 005A338C    mov        dword ptr [ebp-18],ecx
 005A338F    mov        dword ptr [ebp-1C],ecx
 005A3392    mov        dword ptr [ebp-20],ecx
 005A3395    mov        dword ptr [ebp-8],edx
 005A3398    mov        dword ptr [ebp-4],eax
 005A339B    mov        eax,dword ptr [ebp-8]
 005A339E    call       @LStrAddRef
 005A33A3    xor        eax,eax
 005A33A5    push       ebp
 005A33A6    push       5A3481
 005A33AB    push       dword ptr fs:[eax]
 005A33AE    mov        dword ptr fs:[eax],esp
 005A33B1    mov        dl,1
 005A33B3    mov        eax,[0041CBF8]; TMemoryStream
 005A33B8    call       TObject.Create; TMemoryStream.Create
 005A33BD    mov        dword ptr [ebp-10],eax
 005A33C0    xor        eax,eax
 005A33C2    push       ebp
 005A33C3    push       5A343F
 005A33C8    push       dword ptr fs:[eax]
 005A33CB    mov        dword ptr fs:[eax],esp
 005A33CE    lea        edx,[ebp-20]
 005A33D1    mov        eax,[0061BD04]; ^Application:TApplication
 005A33D6    mov        eax,dword ptr [eax]
 005A33D8    call       TApplication.GetExeName
 005A33DD    mov        eax,dword ptr [ebp-20]
 005A33E0    lea        edx,[ebp-1C]
 005A33E3    call       ExtractFilePath
 005A33E8    mov        eax,dword ptr [ebp-1C]
 005A33EB    lea        edx,[ebp-18]
 005A33EE    call       005A3340
 005A33F3    push       dword ptr [ebp-18]
 005A33F6    push       dword ptr [ebp-8]
 005A33F9    push       5A3498; '.RVC'
 005A33FE    lea        eax,[ebp-14]
 005A3401    mov        edx,3
 005A3406    call       @LStrCatN
 005A340B    mov        edx,dword ptr [ebp-14]
 005A340E    mov        eax,dword ptr [ebp-10]
 005A3411    call       TMemoryStream.LoadFromFile
 005A3416    mov        eax,dword ptr [ebp-4]
 005A3419    mov        edx,dword ptr [eax+8]
 005A341C    xor        ecx,ecx
 005A341E    mov        eax,dword ptr [ebp-10]
 005A3421    call       005A8020
 005A3426    mov        dword ptr [ebp-0C],eax
 005A3429    xor        eax,eax
 005A342B    pop        edx
 005A342C    pop        ecx
 005A342D    pop        ecx
 005A342E    mov        dword ptr fs:[eax],edx
 005A3431    push       5A3446
 005A3436    mov        eax,dword ptr [ebp-10]
 005A3439    call       TObject.Free
 005A343E    ret
<005A343F    jmp        @HandleFinally
<005A3444    jmp        005A3436
 005A3446    mov        eax,dword ptr [ebp-4]
 005A3449    mov        eax,dword ptr [eax+4]
 005A344C    mov        edx,dword ptr [ebp-0C]
 005A344F    call       TList.Add
 005A3454    mov        ebx,eax
 005A3456    mov        eax,dword ptr [ebp-0C]
 005A3459    call       005A8034
 005A345E    xor        eax,eax
 005A3460    pop        edx
 005A3461    pop        ecx
 005A3462    pop        ecx
 005A3463    mov        dword ptr fs:[eax],edx
 005A3466    push       5A3488
 005A346B    lea        eax,[ebp-20]
 005A346E    mov        edx,4
 005A3473    call       @LStrArrayClr
 005A3478    lea        eax,[ebp-8]
 005A347B    call       @LStrClr
 005A3480    ret
<005A3481    jmp        @HandleFinally
<005A3486    jmp        005A346B
 005A3488    mov        eax,ebx
 005A348A    pop        ebx
 005A348B    mov        esp,ebp
 005A348D    pop        ebp
 005A348E    ret
*}
//end;

//005A34A0
//function sub_005A34A0(?:?; ?:AnsiString):?;
//begin
{*
 005A34A0    push       ebp
 005A34A1    mov        ebp,esp
 005A34A3    add        esp,0FFFFFFEC
 005A34A6    push       ebx
 005A34A7    push       esi
 005A34A8    push       edi
 005A34A9    xor        ecx,ecx
 005A34AB    mov        dword ptr [ebp-8],ecx
 005A34AE    mov        dword ptr [ebp-0C],ecx
 005A34B1    mov        dword ptr [ebp-4],edx
 005A34B4    mov        esi,eax
 005A34B6    mov        eax,dword ptr [ebp-4]
 005A34B9    call       @LStrAddRef
 005A34BE    xor        eax,eax
 005A34C0    push       ebp
 005A34C1    push       5A3548
 005A34C6    push       dword ptr fs:[eax]
 005A34C9    mov        dword ptr fs:[eax],esp
 005A34CC    mov        edx,dword ptr [ebp-4]
 005A34CF    mov        eax,esi
 005A34D1    call       005A32C8
 005A34D6    mov        ebx,eax
 005A34D8    test       ebx,ebx
>005A34DA    jge        005A3521
 005A34DC    mov        edx,dword ptr [ebp-4]
 005A34DF    mov        eax,esi
 005A34E1    call       005A3380
 005A34E6    mov        ebx,eax
 005A34E8    test       ebx,ebx
>005A34EA    jge        005A3521
 005A34EC    lea        eax,[ebp-0C]
 005A34EF    push       eax
 005A34F0    mov        eax,dword ptr [ebp-4]
 005A34F3    mov        dword ptr [ebp-14],eax
 005A34F6    mov        byte ptr [ebp-10],0B
 005A34FA    lea        edx,[ebp-14]
 005A34FD    xor        ecx,ecx
 005A34FF    mov        eax,5A3560; 'Could not load module [%s]'
 005A3504    call       Format
 005A3509    mov        eax,dword ptr [ebp-0C]
 005A350C    mov        edi,dword ptr ds:[61B830]
 005A3512    mov        edi,dword ptr [edi]
 005A3514    lea        edx,[ebp-8]
 005A3517    call       edi
 005A3519    mov        eax,dword ptr [ebp-8]
 005A351C    call       00579798
 005A3521    mov        edx,ebx
 005A3523    mov        eax,dword ptr [esi+4]
 005A3526    call       TList.Get
 005A352B    mov        ebx,eax
 005A352D    xor        eax,eax
 005A352F    pop        edx
 005A3530    pop        ecx
 005A3531    pop        ecx
 005A3532    mov        dword ptr fs:[eax],edx
 005A3535    push       5A354F
 005A353A    lea        eax,[ebp-0C]
 005A353D    mov        edx,3
 005A3542    call       @LStrArrayClr
 005A3547    ret
<005A3548    jmp        @HandleFinally
<005A354D    jmp        005A353A
 005A354F    mov        eax,ebx
 005A3551    pop        edi
 005A3552    pop        esi
 005A3553    pop        ebx
 005A3554    mov        esp,ebp
 005A3556    pop        ebp
 005A3557    ret
*}
//end;

//005A357C
//procedure sub_005A357C(?:TRaveModuleManager; ?:?);
//begin
{*
 005A357C    push       ebp
 005A357D    mov        ebp,esp
 005A357F    add        esp,0FFFFFFF0
 005A3582    push       ebx
 005A3583    push       esi
 005A3584    push       edi
 005A3585    xor        ecx,ecx
 005A3587    mov        dword ptr [ebp-10],ecx
 005A358A    mov        ebx,edx
 005A358C    mov        edi,eax
 005A358E    xor        eax,eax
 005A3590    push       ebp
 005A3591    push       5A3635
 005A3596    push       dword ptr fs:[eax]
 005A3599    mov        dword ptr fs:[eax],esp
 005A359C    mov        eax,ebx
 005A359E    call       005A61E0
 005A35A3    test       eax,eax
>005A35A5    jle        005A361F
 005A35A7    mov        dword ptr [ebp-0C],eax
 005A35AA    lea        edx,[ebp-10]
 005A35AD    mov        eax,ebx
 005A35AF    call       005A61AC
 005A35B4    mov        eax,ebx
 005A35B6    call       005A6390
 005A35BB    mov        edx,dword ptr [edi+8]; TRaveModuleManager.?f8:dword
 005A35BE    xor        ecx,ecx
 005A35C0    mov        eax,dword ptr [ebx+4]
 005A35C3    call       005A8020
 005A35C8    mov        esi,eax
 005A35CA    mov        edx,dword ptr [esi+4]
 005A35CD    mov        eax,edi
 005A35CF    call       005A32C8
 005A35D4    mov        dword ptr [ebp-4],eax
 005A35D7    cmp        dword ptr [ebp-4],0
>005A35DB    jl         005A3602
 005A35DD    mov        eax,dword ptr [edi+4]; TRaveModuleManager.?f4:TList
 005A35E0    mov        edx,dword ptr [ebp-4]
 005A35E3    call       TList.Get
 005A35E8    mov        dword ptr [ebp-8],eax
 005A35EB    mov        eax,dword ptr [edi+4]; TRaveModuleManager.?f4:TList
 005A35EE    mov        ecx,esi
 005A35F0    mov        edx,dword ptr [ebp-4]
 005A35F3    call       TList.Put
 005A35F8    lea        eax,[ebp-8]
 005A35FB    call       FreeAndNil
>005A3600    jmp        005A360C
 005A3602    mov        eax,dword ptr [edi+4]; TRaveModuleManager.?f4:TList
 005A3605    mov        edx,esi
 005A3607    call       TList.Add
 005A360C    mov        eax,esi
 005A360E    call       005A8034
 005A3613    mov        eax,ebx
 005A3615    call       005A6420
 005A361A    dec        dword ptr [ebp-0C]
<005A361D    jne        005A35AA
 005A361F    xor        eax,eax
 005A3621    pop        edx
 005A3622    pop        ecx
 005A3623    pop        ecx
 005A3624    mov        dword ptr fs:[eax],edx
 005A3627    push       5A363C
 005A362C    lea        eax,[ebp-10]
 005A362F    call       @LStrClr
 005A3634    ret
<005A3635    jmp        @HandleFinally
<005A363A    jmp        005A362C
 005A363C    pop        edi
 005A363D    pop        esi
 005A363E    pop        ebx
 005A363F    mov        esp,ebp
 005A3641    pop        ebp
 005A3642    ret
*}
//end;

//005A3644
//procedure sub_005A3644(?:TRaveModuleManager; ?:?);
//begin
{*
 005A3644    push       ebx
 005A3645    push       esi
 005A3646    push       edi
 005A3647    push       ebp
 005A3648    mov        ebx,edx
 005A364A    mov        edi,eax
 005A364C    mov        eax,dword ptr [edi+4]; TRaveModuleManager.?f4:TList
 005A364F    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 005A3652    mov        eax,ebx
 005A3654    call       005A60C8
 005A3659    mov        eax,dword ptr [edi+4]; TRaveModuleManager.?f4:TList
 005A365C    mov        ebp,dword ptr [eax+8]; TList.FCount:Integer
 005A365F    dec        ebp
 005A3660    test       ebp,ebp
>005A3662    jl         005A369F
 005A3664    inc        ebp
 005A3665    xor        esi,esi
 005A3667    mov        eax,dword ptr [edi+4]; TRaveModuleManager.?f4:TList
 005A366A    mov        edx,esi
 005A366C    call       TList.Get
 005A3671    mov        edx,dword ptr [eax+4]
 005A3674    mov        eax,ebx
 005A3676    call       005A6054
 005A367B    mov        eax,ebx
 005A367D    call       005A6324
 005A3682    mov        eax,dword ptr [edi+4]; TRaveModuleManager.?f4:TList
 005A3685    mov        edx,esi
 005A3687    call       TList.Get
 005A368C    mov        edx,dword ptr [ebx+4]
 005A368F    mov        ecx,dword ptr [eax]
 005A3691    call       dword ptr [ecx+0C]
 005A3694    mov        eax,ebx
 005A3696    call       005A6340
 005A369B    inc        esi
 005A369C    dec        ebp
<005A369D    jne        005A3667
 005A369F    pop        ebp
 005A36A0    pop        edi
 005A36A1    pop        esi
 005A36A2    pop        ebx
 005A36A3    ret
*}
//end;

//005A36A4
//procedure sub_005A36A4(?:TComponent; ?:?);
//begin
{*
 005A36A4    push       ebp
 005A36A5    mov        ebp,esp
 005A36A7    push       ecx
 005A36A8    push       ebx
 005A36A9    push       esi
 005A36AA    mov        dword ptr [ebp-4],eax
 005A36AD    mov        eax,dword ptr [ebp-4]
 005A36B0    mov        eax,dword ptr [eax+74]
 005A36B3    test       eax,eax
>005A36B5    je         005A36C4
 005A36B7    mov        edx,dword ptr [ebp+8]
 005A36BA    mov        edx,dword ptr [edx-4]
 005A36BD    xor        ecx,ecx
 005A36BF    mov        ebx,dword ptr [eax]
 005A36C1    call       dword ptr [ebx+2C]
 005A36C4    mov        eax,dword ptr [ebp-4]
 005A36C7    call       TComponent.GetComponentCount
 005A36CC    mov        esi,eax
 005A36CE    dec        esi
 005A36CF    test       esi,esi
>005A36D1    jl         005A3707
 005A36D3    inc        esi
 005A36D4    xor        ebx,ebx
 005A36D6    mov        edx,ebx
 005A36D8    mov        eax,dword ptr [ebp-4]
 005A36DB    call       TComponent.GetComponent
 005A36E0    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005A36E6    call       @IsClass
 005A36EB    test       al,al
>005A36ED    je         005A3703
 005A36EF    mov        eax,dword ptr [ebp+8]
 005A36F2    push       eax
 005A36F3    mov        edx,ebx
 005A36F5    mov        eax,dword ptr [ebp-4]
 005A36F8    call       TComponent.GetComponent
 005A36FD    call       005A36A4
 005A3702    pop        ecx
 005A3703    inc        ebx
 005A3704    dec        esi
<005A3705    jne        005A36D6
 005A3707    pop        esi
 005A3708    pop        ebx
 005A3709    pop        ecx
 005A370A    pop        ebp
 005A370B    ret
*}
//end;

//005A370C
//procedure sub_005A370C(?:?; ?:TRCPUModule);
//begin
{*
 005A370C    push       ebp
 005A370D    mov        ebp,esp
 005A370F    add        esp,0FFFFFFF8
 005A3712    push       ebx
 005A3713    push       esi
 005A3714    push       edi
 005A3715    mov        dword ptr [ebp-4],edx
 005A3718    mov        dword ptr [ebp-8],eax
 005A371B    cmp        dword ptr [ebp-4],0
>005A371F    je         005A375A
 005A3721    mov        eax,dword ptr [ebp-8]
 005A3724    mov        eax,dword ptr [eax+4]
 005A3727    mov        ebx,dword ptr [eax+8]
 005A372A    dec        ebx
 005A372B    test       ebx,ebx
>005A372D    jl         005A374D
 005A372F    inc        ebx
 005A3730    xor        esi,esi
 005A3732    mov        eax,dword ptr [ebp-8]
 005A3735    mov        eax,dword ptr [eax+4]
 005A3738    mov        edx,esi
 005A373A    call       TList.Get
 005A373F    xor        ecx,ecx
 005A3741    mov        edx,dword ptr [ebp-4]
 005A3744    mov        edi,dword ptr [eax]
 005A3746    call       dword ptr [edi+2C]
 005A3749    inc        esi
 005A374A    dec        ebx
<005A374B    jne        005A3732
 005A374D    push       ebp
 005A374E    mov        eax,dword ptr [ebp-8]
 005A3751    mov        eax,dword ptr [eax+8]
 005A3754    call       005A36A4
 005A3759    pop        ecx
 005A375A    pop        edi
 005A375B    pop        esi
 005A375C    pop        ebx
 005A375D    pop        ecx
 005A375E    pop        ecx
 005A375F    pop        ebp
 005A3760    ret
*}
//end;

//005A3764
constructor TRaveProjectManager.Create(AOwner:TComponent);
begin
{*
 005A3764    push       ebx
 005A3765    push       esi
 005A3766    test       dl,dl
>005A3768    je         005A3772
 005A376A    add        esp,0FFFFFFF0
 005A376D    call       @ClassCreate
 005A3772    mov        ebx,edx
 005A3774    mov        esi,eax
 005A3776    xor        edx,edx
 005A3778    mov        eax,esi
 005A377A    call       TRaveProjectItem.Create
 005A377F    mov        dl,1
 005A3781    mov        eax,[0041C260]; TList
 005A3786    call       TObject.Create; TList.Create
 005A378B    mov        dword ptr [esi+88],eax; TRaveProjectManager.?f88:TList
 005A3791    mov        dl,1
 005A3793    mov        eax,[0041C260]; TList
 005A3798    call       TObject.Create; TList.Create
 005A379D    mov        dword ptr [esi+8C],eax; TRaveProjectManager.?f8C:TList
 005A37A3    mov        dl,1
 005A37A5    mov        eax,[0041C260]; TList
 005A37AA    call       TObject.Create; TList.Create
 005A37AF    mov        dword ptr [esi+90],eax; TRaveProjectManager.?f90:TList
 005A37B5    mov        dl,1
 005A37B7    mov        eax,[0041C8E4]; TStringList
 005A37BC    call       TObject.Create; TStringList.Create
 005A37C1    mov        dword ptr [esi+0BC],eax; TRaveProjectManager.Categories:TStrings
 005A37C7    mov        dl,1
 005A37C9    mov        eax,[0041C8E4]; TStringList
 005A37CE    call       TObject.Create; TStringList.Create
 005A37D3    mov        dword ptr [esi+0C0],eax; TRaveProjectManager.?fC0:TStringList
 005A37D9    mov        eax,[0061B710]
 005A37DE    mov        eax,dword ptr [eax]
 005A37E0    mov        dword ptr [esi+0E4],eax; TRaveProjectManager.?fE4:dword
 005A37E6    mov        ecx,esi
 005A37E8    mov        dl,1
 005A37EA    mov        eax,[005A13D4]; TRaveModuleManager
 005A37EF    call       TRaveModuleManager.Create; TRaveModuleManager.Create
 005A37F4    mov        dword ptr [esi+0E8],eax; TRaveProjectManager.?fE8:TRaveModuleManager
 005A37FA    lea        eax,[esi+0A0]; TRaveProjectManager.?fA0:String
 005A3800    mov        edx,5A3840; 'RAV'
 005A3805    call       @LStrAsg
 005A380A    mov        eax,[0061BF10]
 005A380F    push       dword ptr [eax+4]
 005A3812    push       dword ptr [eax]
 005A3814    mov        eax,esi
 005A3816    call       TRaveProjectManager.SetUnitsFactor
 005A381B    mov        eax,esi
 005A381D    test       bl,bl
>005A381F    je         005A3830
 005A3821    call       @AfterConstruction
 005A3826    pop        dword ptr fs:[0]
 005A382D    add        esp,0C
 005A3830    mov        eax,esi
 005A3832    pop        esi
 005A3833    pop        ebx
 005A3834    ret
*}
end;

//005A3848
destructor TRaveProjectManager.Destroy;
begin
{*
 005A3848    push       ebx
 005A3849    push       esi
 005A384A    call       @BeforeDestruction
 005A384F    mov        ebx,edx
 005A3851    mov        esi,eax
 005A3853    mov        eax,esi
 005A3855    call       005A3CC0
 005A385A    lea        eax,[esi+0E8]; TRaveProjectManager.?fE8:TRaveModuleManager
 005A3860    call       FreeAndNil
 005A3865    lea        eax,[esi+0C0]; TRaveProjectManager.?fC0:TStringList
 005A386B    call       FreeAndNil
 005A3870    lea        eax,[esi+0BC]; TRaveProjectManager.Categories:TStrings
 005A3876    call       FreeAndNil
 005A387B    lea        eax,[esi+88]; TRaveProjectManager.?f88:TList
 005A3881    call       FreeAndNil
 005A3886    lea        eax,[esi+8C]; TRaveProjectManager.?f8C:TList
 005A388C    call       FreeAndNil
 005A3891    lea        eax,[esi+90]; TRaveProjectManager.?f90:TList
 005A3897    call       FreeAndNil
 005A389C    mov        edx,ebx
 005A389E    and        dl,0FC
 005A38A1    mov        eax,esi
 005A38A3    call       TRaveProjectItem.Destroy
 005A38A8    test       bl,bl
>005A38AA    jle        005A38B3
 005A38AC    mov        eax,esi
 005A38AE    call       @ClassDestroy
 005A38B3    pop        esi
 005A38B4    pop        ebx
 005A38B5    ret
*}
end;

//005A38B8
//procedure sub_005A38B8(?:TComponent; ?:?);
//begin
{*
 005A38B8    push       ebp
 005A38B9    mov        ebp,esp
 005A38BB    push       ebx
 005A38BC    push       esi
 005A38BD    push       edi
 005A38BE    mov        edi,eax
 005A38C0    mov        byte ptr [edi+79],0
 005A38C4    mov        eax,edi
 005A38C6    call       TComponent.GetComponentCount
 005A38CB    mov        esi,eax
 005A38CD    dec        esi
 005A38CE    test       esi,esi
>005A38D0    jl         005A3904
 005A38D2    inc        esi
 005A38D3    xor        ebx,ebx
 005A38D5    mov        edx,ebx
 005A38D7    mov        eax,edi
 005A38D9    call       TComponent.GetComponent
 005A38DE    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005A38E4    call       @IsClass
 005A38E9    test       al,al
>005A38EB    je         005A3900
 005A38ED    mov        eax,dword ptr [ebp+8]
 005A38F0    push       eax
 005A38F1    mov        edx,ebx
 005A38F3    mov        eax,edi
 005A38F5    call       TComponent.GetComponent
 005A38FA    call       005A38B8
 005A38FF    pop        ecx
 005A3900    inc        ebx
 005A3901    dec        esi
<005A3902    jne        005A38D5
 005A3904    pop        edi
 005A3905    pop        esi
 005A3906    pop        ebx
 005A3907    pop        ebp
 005A3908    ret
*}
//end;

//005A390C
//procedure sub_005A390C(?:?; ?:?);
//begin
{*
 005A390C    push       ebp
 005A390D    mov        ebp,esp
 005A390F    push       ebx
 005A3910    push       esi
 005A3911    push       edi
 005A3912    mov        edi,eax
 005A3914    mov        ebx,dword ptr [edi+8]
 005A3917    dec        ebx
 005A3918    test       ebx,ebx
>005A391A    jl         005A3936
 005A391C    inc        ebx
 005A391D    xor        esi,esi
 005A391F    mov        eax,dword ptr [ebp+8]
 005A3922    push       eax
 005A3923    mov        edx,esi
 005A3925    mov        eax,edi
 005A3927    call       TList.Get
 005A392C    call       005A38B8
 005A3931    pop        ecx
 005A3932    inc        esi
 005A3933    dec        ebx
<005A3934    jne        005A391F
 005A3936    pop        edi
 005A3937    pop        esi
 005A3938    pop        ebx
 005A3939    pop        ebp
 005A393A    ret
*}
//end;

//005A393C
//procedure sub_005A393C(?:?; ?:?);
//begin
{*
 005A393C    push       ebp
 005A393D    mov        ebp,esp
 005A393F    push       ebx
 005A3940    push       esi
 005A3941    push       edi
 005A3942    mov        edi,eax
 005A3944    mov        esi,dword ptr [edi+8]
 005A3947    dec        esi
 005A3948    test       esi,esi
>005A394A    jl         005A397E
 005A394C    inc        esi
 005A394D    xor        ebx,ebx
 005A394F    mov        edx,ebx
 005A3951    mov        eax,edi
 005A3953    call       TList.Get
 005A3958    cmp        byte ptr [eax+79],0
>005A395C    je         005A397A
 005A395E    mov        edx,ebx
 005A3960    mov        eax,edi
 005A3962    call       TList.Get
 005A3967    mov        edx,eax
 005A3969    mov        eax,dword ptr [ebp+8]
 005A396C    mov        eax,dword ptr [eax-4]
 005A396F    mov        eax,dword ptr [eax+0A8]
 005A3975    call       TList.Add
 005A397A    inc        ebx
 005A397B    dec        esi
<005A397C    jne        005A394F
 005A397E    pop        edi
 005A397F    pop        esi
 005A3980    pop        ebx
 005A3981    pop        ebp
 005A3982    ret
*}
//end;

//005A3984
//procedure sub_005A3984(?:Longint; ?:?);
//begin
{*
 005A3984    push       ebp
 005A3985    mov        ebp,esp
 005A3987    push       ebx
 005A3988    push       esi
 005A3989    mov        ebx,eax
 005A398B    test       ebx,ebx
>005A398D    je         005A39C6
 005A398F    mov        eax,ebx
 005A3991    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005A3997    call       @IsClass
 005A399C    test       al,al
>005A399E    je         005A39C6
 005A39A0    mov        esi,ebx
 005A39A2    mov        eax,dword ptr [esi]
 005A39A4    call       dword ptr [eax+30]
 005A39A7    test       al,al
>005A39A9    jne        005A39C6
 005A39AB    cmp        byte ptr [esi+79],0
>005A39AF    jne        005A39C6
 005A39B1    mov        byte ptr [esi+79],1
 005A39B5    mov        eax,dword ptr [ebp+8]
 005A39B8    mov        eax,dword ptr [eax+8]
 005A39BB    push       eax
 005A39BC    mov        dl,1
 005A39BE    mov        eax,esi
 005A39C0    call       005A39CC
 005A39C5    pop        ecx
 005A39C6    pop        esi
 005A39C7    pop        ebx
 005A39C8    pop        ebp
 005A39C9    ret
*}
//end;

//005A39CC
//procedure sub_005A39CC(?:Longint; ?:?; ?:?);
//begin
{*
 005A39CC    push       ebp
 005A39CD    mov        ebp,esp
 005A39CF    add        esp,0FFFFFFE8
 005A39D2    push       ebx
 005A39D3    push       esi
 005A39D4    push       edi
 005A39D5    mov        byte ptr [ebp-5],dl
 005A39D8    mov        dword ptr [ebp-4],eax
 005A39DB    cmp        dword ptr [ebp-4],0
>005A39DF    je         005A3BBA
 005A39E5    mov        eax,dword ptr [ebp-4]
 005A39E8    mov        eax,dword ptr [eax]
 005A39EA    call       TObject.ClassType
 005A39EF    call       GetTypeData
 005A39F4    movsx      eax,word ptr [eax+8]
 005A39F8    mov        dword ptr [ebp-0C],eax
 005A39FB    cmp        dword ptr [ebp-0C],0
>005A39FF    jle        005A3B76
 005A3A05    mov        eax,dword ptr [ebp-0C]
 005A3A08    shl        eax,2
 005A3A0B    call       @GetMem
 005A3A10    mov        dword ptr [ebp-10],eax
 005A3A13    xor        eax,eax
 005A3A15    push       ebp
 005A3A16    push       5A3B6F
 005A3A1B    push       dword ptr fs:[eax]
 005A3A1E    mov        dword ptr fs:[eax],esp
 005A3A21    mov        eax,dword ptr [ebp-4]
 005A3A24    mov        eax,dword ptr [eax]
 005A3A26    call       TObject.ClassType
 005A3A2B    mov        edx,dword ptr [ebp-10]
 005A3A2E    call       GetPropInfos
 005A3A33    mov        ebx,dword ptr [ebp-0C]
 005A3A36    dec        ebx
 005A3A37    test       ebx,ebx
>005A3A39    jl         005A3B53
 005A3A3F    inc        ebx
 005A3A40    xor        esi,esi
 005A3A42    mov        eax,dword ptr [ebp-10]
 005A3A45    mov        edi,dword ptr [eax+esi*4]
 005A3A48    mov        eax,dword ptr [edi]
 005A3A4A    mov        eax,dword ptr [eax]
 005A3A4C    cmp        byte ptr [eax],7
>005A3A4F    jne        005A3B4B
 005A3A55    mov        edx,edi
 005A3A57    mov        eax,dword ptr [ebp-4]
 005A3A5A    call       GetOrdProp
 005A3A5F    mov        edi,eax
 005A3A61    test       edi,edi
>005A3A63    je         005A3B4B
 005A3A69    mov        eax,edi
 005A3A6B    mov        edx,dword ptr ds:[41D280]; TComponent
 005A3A71    call       @IsClass
 005A3A76    test       al,al
>005A3A78    je         005A3A92
 005A3A7A    push       ebp
 005A3A7B    mov        eax,dword ptr [edi+4]
 005A3A7E    call       005A3984
 005A3A83    pop        ecx
 005A3A84    push       ebp
 005A3A85    mov        eax,edi
 005A3A87    call       005A3984
 005A3A8C    pop        ecx
>005A3A8D    jmp        005A3B4B
 005A3A92    mov        eax,edi
 005A3A94    mov        edx,dword ptr ds:[41C390]; TPersistent
 005A3A9A    call       @IsClass
 005A3A9F    test       al,al
>005A3AA1    je         005A3AB6
 005A3AA3    mov        eax,dword ptr [ebp+8]
 005A3AA6    push       eax
 005A3AA7    xor        edx,edx
 005A3AA9    mov        eax,edi
 005A3AAB    call       005A39CC
 005A3AB0    pop        ecx
>005A3AB1    jmp        005A3B4B
 005A3AB6    mov        eax,edi
 005A3AB8    mov        edx,dword ptr ds:[5A677C]; TRaveComponentList
 005A3ABE    call       @IsClass
 005A3AC3    test       al,al
>005A3AC5    je         005A3B09
 005A3AC7    mov        eax,dword ptr [edi+8]
 005A3ACA    dec        eax
 005A3ACB    test       eax,eax
>005A3ACD    jl         005A3B4B
 005A3ACF    inc        eax
 005A3AD0    mov        dword ptr [ebp-18],eax
 005A3AD3    mov        dword ptr [ebp-14],0
 005A3ADA    push       ebp
 005A3ADB    mov        edx,dword ptr [ebp-14]
 005A3ADE    mov        eax,edi
 005A3AE0    call       TList.Get
 005A3AE5    mov        eax,dword ptr [eax+4]
 005A3AE8    call       005A3984
 005A3AED    pop        ecx
 005A3AEE    push       ebp
 005A3AEF    mov        edx,dword ptr [ebp-14]
 005A3AF2    mov        eax,edi
 005A3AF4    call       TList.Get
 005A3AF9    call       005A3984
 005A3AFE    pop        ecx
 005A3AFF    inc        dword ptr [ebp-14]
 005A3B02    dec        dword ptr [ebp-18]
<005A3B05    jne        005A3ADA
>005A3B07    jmp        005A3B4B
 005A3B09    mov        eax,edi
 005A3B0B    mov        edx,dword ptr ds:[5A66D8]; TRavePersistentList
 005A3B11    call       @IsClass
 005A3B16    test       al,al
>005A3B18    je         005A3B4B
 005A3B1A    mov        eax,dword ptr [edi+8]
 005A3B1D    dec        eax
 005A3B1E    test       eax,eax
>005A3B20    jl         005A3B4B
 005A3B22    inc        eax
 005A3B23    mov        dword ptr [ebp-18],eax
 005A3B26    mov        dword ptr [ebp-14],0
 005A3B2D    mov        eax,dword ptr [ebp+8]
 005A3B30    push       eax
 005A3B31    mov        edx,dword ptr [ebp-14]
 005A3B34    mov        eax,edi
 005A3B36    call       TList.Get
 005A3B3B    xor        edx,edx
 005A3B3D    call       005A39CC
 005A3B42    pop        ecx
 005A3B43    inc        dword ptr [ebp-14]
 005A3B46    dec        dword ptr [ebp-18]
<005A3B49    jne        005A3B2D
 005A3B4B    inc        esi
 005A3B4C    dec        ebx
<005A3B4D    jne        005A3A42
 005A3B53    xor        eax,eax
 005A3B55    pop        edx
 005A3B56    pop        ecx
 005A3B57    pop        ecx
 005A3B58    mov        dword ptr fs:[eax],edx
 005A3B5B    push       5A3B76
 005A3B60    mov        edx,dword ptr [ebp-0C]
 005A3B63    shl        edx,2
 005A3B66    mov        eax,dword ptr [ebp-10]
 005A3B69    call       @FreeMem
 005A3B6E    ret
<005A3B6F    jmp        @HandleFinally
<005A3B74    jmp        005A3B60
 005A3B76    cmp        byte ptr [ebp-5],0
>005A3B7A    je         005A3BBA
 005A3B7C    mov        eax,dword ptr [ebp-4]
 005A3B7F    mov        edx,dword ptr ds:[41D280]; TComponent
 005A3B85    call       @IsClass
 005A3B8A    test       al,al
>005A3B8C    je         005A3BBA
 005A3B8E    mov        eax,dword ptr [ebp-4]
 005A3B91    call       TComponent.GetComponentCount
 005A3B96    mov        ebx,eax
 005A3B98    dec        ebx
 005A3B99    test       ebx,ebx
>005A3B9B    jl         005A3BBA
 005A3B9D    inc        ebx
 005A3B9E    xor        esi,esi
 005A3BA0    mov        eax,dword ptr [ebp+8]
 005A3BA3    push       eax
 005A3BA4    mov        edx,esi
 005A3BA6    mov        eax,dword ptr [ebp-4]
 005A3BA9    call       TComponent.GetComponent
 005A3BAE    mov        dl,1
 005A3BB0    call       005A39CC
 005A3BB5    pop        ecx
 005A3BB6    inc        esi
 005A3BB7    dec        ebx
<005A3BB8    jne        005A3BA0
 005A3BBA    pop        edi
 005A3BBB    pop        esi
 005A3BBC    pop        ebx
 005A3BBD    mov        esp,ebp
 005A3BBF    pop        ebp
 005A3BC0    ret
*}
//end;

//005A3BC4
//procedure sub_005A3BC4(?:?; ?:?; ?:TMemoryStream);
//begin
{*
 005A3BC4    push       ebp
 005A3BC5    mov        ebp,esp
 005A3BC7    add        esp,0FFFFFFF8
 005A3BCA    push       ebx
 005A3BCB    push       esi
 005A3BCC    push       edi
 005A3BCD    mov        edi,ecx
 005A3BCF    mov        ebx,edx
 005A3BD1    mov        dword ptr [ebp-4],eax
 005A3BD4    push       ebp
 005A3BD5    mov        eax,dword ptr [ebp-4]
 005A3BD8    mov        eax,dword ptr [eax+88]
 005A3BDE    call       005A390C
 005A3BE3    pop        ecx
 005A3BE4    push       ebp
 005A3BE5    mov        eax,dword ptr [ebp-4]
 005A3BE8    mov        eax,dword ptr [eax+8C]
 005A3BEE    call       005A390C
 005A3BF3    pop        ecx
 005A3BF4    push       ebp
 005A3BF5    mov        eax,dword ptr [ebp-4]
 005A3BF8    mov        eax,dword ptr [eax+90]
 005A3BFE    call       005A390C
 005A3C03    pop        ecx
 005A3C04    mov        eax,dword ptr [ebp-4]
 005A3C07    mov        byte ptr [eax+79],1
 005A3C0B    mov        byte ptr [ebx+79],1
 005A3C0F    push       ebp
 005A3C10    xor        edx,edx
 005A3C12    mov        eax,ebx
 005A3C14    call       005A39CC
 005A3C19    pop        ecx
 005A3C1A    mov        dl,1
 005A3C1C    mov        eax,[0041C260]; TList
 005A3C21    call       TObject.Create; TList.Create
 005A3C26    mov        esi,eax
 005A3C28    mov        eax,dword ptr [ebp-4]
 005A3C2B    mov        dword ptr [eax+0A8],esi
 005A3C31    mov        eax,esi
 005A3C33    mov        edx,ebx
 005A3C35    call       TList.Add
 005A3C3A    push       ebp
 005A3C3B    mov        eax,dword ptr [ebp-4]
 005A3C3E    mov        eax,dword ptr [eax+8C]
 005A3C44    call       005A393C
 005A3C49    pop        ecx
 005A3C4A    push       ebp
 005A3C4B    mov        eax,dword ptr [ebp-4]
 005A3C4E    mov        eax,dword ptr [eax+90]
 005A3C54    call       005A393C
 005A3C59    pop        ecx
 005A3C5A    mov        ecx,edi
 005A3C5C    mov        dl,1
 005A3C5E    mov        eax,[005A5454]; TStreamHelper
 005A3C63    call       TStreamHelper.Create; TStreamHelper.Create
 005A3C68    mov        dword ptr [ebp-8],eax
 005A3C6B    xor        eax,eax
 005A3C6D    push       ebp
 005A3C6E    push       5A3CA4
 005A3C73    push       dword ptr fs:[eax]
 005A3C76    mov        dword ptr fs:[eax],esp
 005A3C79    mov        eax,dword ptr [ebp-8]
 005A3C7C    mov        byte ptr [eax+8],0; TStreamHelper.?f8:byte
 005A3C80    mov        edx,dword ptr [ebp-8]
 005A3C83    mov        eax,dword ptr [ebp-4]
 005A3C86    mov        ecx,dword ptr [eax]
 005A3C88    call       dword ptr [ecx+0D4]
 005A3C8E    xor        eax,eax
 005A3C90    pop        edx
 005A3C91    pop        ecx
 005A3C92    pop        ecx
 005A3C93    mov        dword ptr fs:[eax],edx
 005A3C96    push       5A3CAB
 005A3C9B    mov        eax,dword ptr [ebp-8]
 005A3C9E    call       TObject.Free
 005A3CA3    ret
<005A3CA4    jmp        @HandleFinally
<005A3CA9    jmp        005A3C9B
 005A3CAB    mov        eax,dword ptr [ebp-4]
 005A3CAE    add        eax,0A8
 005A3CB3    call       FreeAndNil
 005A3CB8    pop        edi
 005A3CB9    pop        esi
 005A3CBA    pop        ebx
 005A3CBB    pop        ecx
 005A3CBC    pop        ecx
 005A3CBD    pop        ebp
 005A3CBE    ret
*}
//end;

//005A3CC0
//procedure sub_005A3CC0(?:TRaveProjectManager);
//begin
{*
 005A3CC0    push       ebx
 005A3CC1    mov        ebx,eax
 005A3CC3    mov        eax,dword ptr [ebx+88]; TRaveProjectManager.?f88:TList
 005A3CC9    call       005A58C4
 005A3CCE    mov        eax,dword ptr [ebx+8C]; TRaveProjectManager.?f8C:TList
 005A3CD4    call       005A58C4
 005A3CD9    mov        eax,dword ptr [ebx+90]; TRaveProjectManager.?f90:TList
 005A3CDF    call       005A58C4
 005A3CE4    pop        ebx
 005A3CE5    ret
*}
//end;

//005A3CE8
procedure TRaveProjectManager.DefineProperties(Filer:TFiler);
begin
{*
 005A3CE8    push       ebx
 005A3CE9    push       esi
 005A3CEA    mov        esi,edx
 005A3CEC    mov        ebx,eax
 005A3CEE    mov        edx,esi
 005A3CF0    mov        eax,ebx
 005A3CF2    call       TRaveProjectItem.DefineProperties
 005A3CF7    push       ebx
 005A3CF8    push       5A3D40; sub_005A3D40
 005A3CFD    push       ebx
 005A3CFE    push       5A3DE0; sub_005A3DE0
 005A3D03    cmp        byte ptr [ebx+0D0],0; TRaveProjectManager.?fD0:byte
>005A3D0A    je         005A3D1B
 005A3D0C    mov        eax,dword ptr [ebx+0C0]; TRaveProjectManager.?fC0:TStringList
 005A3D12    mov        edx,dword ptr [eax]
 005A3D14    call       dword ptr [edx+14]; TStringList.GetCount
 005A3D17    test       eax,eax
>005A3D19    jg         005A3D1F
 005A3D1B    xor        ecx,ecx
>005A3D1D    jmp        005A3D21
 005A3D1F    mov        cl,1
 005A3D21    mov        edx,5A3D38; 'Params'
 005A3D26    mov        eax,esi
 005A3D28    mov        ebx,dword ptr [eax]
 005A3D2A    call       dword ptr [ebx+4]; TFiler.DefineProperty
 005A3D2D    pop        esi
 005A3D2E    pop        ebx
 005A3D2F    ret
*}
end;

//005A3D40
//procedure sub_005A3D40(?:?; ?:?);
//begin
{*
 005A3D40    push       ebp
 005A3D41    mov        ebp,esp
 005A3D43    xor        ecx,ecx
 005A3D45    push       ecx
 005A3D46    push       ecx
 005A3D47    push       ecx
 005A3D48    push       ecx
 005A3D49    push       ebx
 005A3D4A    push       esi
 005A3D4B    mov        esi,edx
 005A3D4D    mov        ebx,eax
 005A3D4F    xor        eax,eax
 005A3D51    push       ebp
 005A3D52    push       5A3DD2
 005A3D57    push       dword ptr fs:[eax]
 005A3D5A    mov        dword ptr fs:[eax],esp
 005A3D5D    lea        edx,[ebp-4]
 005A3D60    mov        eax,esi
 005A3D62    call       TReader.ReadString
 005A3D67    cmp        dword ptr [ebp-4],0
>005A3D6B    je         005A3DAF
 005A3D6D    lea        eax,[ebp-4]
 005A3D70    call       @UniqueStringA
 005A3D75    mov        dword ptr [ebp-8],eax
>005A3D78    jmp        005A3DA7
 005A3D7A    lea        ecx,[ebp-0C]
 005A3D7D    lea        eax,[ebp-8]
 005A3D80    mov        dl,22
 005A3D82    call       AnsiExtractQuotedStr
 005A3D87    inc        dword ptr [ebp-8]
 005A3D8A    lea        ecx,[ebp-10]
 005A3D8D    lea        eax,[ebp-8]
 005A3D90    mov        dl,22
 005A3D92    call       AnsiExtractQuotedStr
 005A3D97    mov        ecx,dword ptr [ebp-10]
 005A3D9A    mov        edx,dword ptr [ebp-0C]
 005A3D9D    mov        eax,ebx
 005A3D9F    call       005A4DB8
 005A3DA4    inc        dword ptr [ebp-8]
 005A3DA7    mov        eax,dword ptr [ebp-8]
 005A3DAA    cmp        byte ptr [eax],0
<005A3DAD    jne        005A3D7A
 005A3DAF    xor        eax,eax
 005A3DB1    pop        edx
 005A3DB2    pop        ecx
 005A3DB3    pop        ecx
 005A3DB4    mov        dword ptr fs:[eax],edx
 005A3DB7    push       5A3DD9
 005A3DBC    lea        eax,[ebp-10]
 005A3DBF    mov        edx,2
 005A3DC4    call       @LStrArrayClr
 005A3DC9    lea        eax,[ebp-4]
 005A3DCC    call       @LStrClr
 005A3DD1    ret
<005A3DD2    jmp        @HandleFinally
<005A3DD7    jmp        005A3DBC
 005A3DD9    pop        esi
 005A3DDA    pop        ebx
 005A3DDB    mov        esp,ebp
 005A3DDD    pop        ebp
 005A3DDE    ret
*}
//end;

//005A3DE0
//procedure sub_005A3DE0(?:?; ?:?);
//begin
{*
 005A3DE0    push       ebp
 005A3DE1    mov        ebp,esp
 005A3DE3    xor        ecx,ecx
 005A3DE5    push       ecx
 005A3DE6    push       ecx
 005A3DE7    push       ecx
 005A3DE8    push       ecx
 005A3DE9    push       ecx
 005A3DEA    push       ecx
 005A3DEB    push       ecx
 005A3DEC    push       ebx
 005A3DED    push       esi
 005A3DEE    push       edi
 005A3DEF    mov        dword ptr [ebp-4],edx
 005A3DF2    mov        ebx,eax
 005A3DF4    xor        eax,eax
 005A3DF6    push       ebp
 005A3DF7    push       5A3EB4
 005A3DFC    push       dword ptr fs:[eax]
 005A3DFF    mov        dword ptr fs:[eax],esp
 005A3E02    lea        eax,[ebp-8]
 005A3E05    call       @LStrClr
 005A3E0A    mov        eax,dword ptr [ebx+0C0]
 005A3E10    mov        edx,dword ptr [eax]
 005A3E12    call       dword ptr [edx+14]
 005A3E15    mov        edi,eax
 005A3E17    dec        edi
 005A3E18    test       edi,edi
>005A3E1A    jl         005A3E8E
 005A3E1C    inc        edi
 005A3E1D    xor        esi,esi
 005A3E1F    push       dword ptr [ebp-8]
 005A3E22    lea        ecx,[ebp-10]
 005A3E25    mov        edx,esi
 005A3E27    mov        eax,dword ptr [ebx+0C0]
 005A3E2D    call       TStrings.GetName
 005A3E32    mov        eax,dword ptr [ebp-10]
 005A3E35    lea        ecx,[ebp-0C]
 005A3E38    mov        dl,22
 005A3E3A    call       AnsiQuotedStr
 005A3E3F    push       dword ptr [ebp-0C]
 005A3E42    push       5A3ECC; ','
 005A3E47    lea        ecx,[ebp-1C]
 005A3E4A    mov        edx,esi
 005A3E4C    mov        eax,dword ptr [ebx+0C0]
 005A3E52    call       TStrings.GetName
 005A3E57    mov        edx,dword ptr [ebp-1C]
 005A3E5A    lea        ecx,[ebp-18]
 005A3E5D    mov        eax,dword ptr [ebx+0C0]
 005A3E63    call       TStrings.GetValue
 005A3E68    mov        eax,dword ptr [ebp-18]
 005A3E6B    lea        ecx,[ebp-14]
 005A3E6E    mov        dl,22
 005A3E70    call       AnsiQuotedStr
 005A3E75    push       dword ptr [ebp-14]
 005A3E78    push       5A3ED8; ';'
 005A3E7D    lea        eax,[ebp-8]
 005A3E80    mov        edx,5
 005A3E85    call       @LStrCatN
 005A3E8A    inc        esi
 005A3E8B    dec        edi
<005A3E8C    jne        005A3E1F
 005A3E8E    mov        edx,dword ptr [ebp-8]
 005A3E91    mov        eax,dword ptr [ebp-4]
 005A3E94    call       TWriter.WriteString
 005A3E99    xor        eax,eax
 005A3E9B    pop        edx
 005A3E9C    pop        ecx
 005A3E9D    pop        ecx
 005A3E9E    mov        dword ptr fs:[eax],edx
 005A3EA1    push       5A3EBB
 005A3EA6    lea        eax,[ebp-1C]
 005A3EA9    mov        edx,6
 005A3EAE    call       @LStrArrayClr
 005A3EB3    ret
<005A3EB4    jmp        @HandleFinally
<005A3EB9    jmp        005A3EA6
 005A3EBB    pop        edi
 005A3EBC    pop        esi
 005A3EBD    pop        ebx
 005A3EBE    mov        esp,ebp
 005A3EC0    pop        ebp
 005A3EC1    ret
*}
//end;

//005A3EDC
//procedure sub_005A3EDC(?:?);
//begin
{*
 005A3EDC    push       ebp
 005A3EDD    mov        ebp,esp
 005A3EDF    mov        ecx,6
 005A3EE4    push       0
 005A3EE6    push       0
 005A3EE8    dec        ecx
<005A3EE9    jne        005A3EE4
 005A3EEB    push       ebx
 005A3EEC    push       esi
 005A3EED    push       edi
 005A3EEE    mov        dword ptr [ebp-8],edx
 005A3EF1    mov        dword ptr [ebp-4],eax
 005A3EF4    xor        eax,eax
 005A3EF6    push       ebp
 005A3EF7    push       5A43AA
 005A3EFC    push       dword ptr fs:[eax]
 005A3EFF    mov        dword ptr fs:[eax],esp
 005A3F02    lea        eax,[ebp-10]
 005A3F05    mov        edx,4
 005A3F0A    call       @LStrSetLength
 005A3F0F    lea        eax,[ebp-10]
 005A3F12    call       @UniqueStringA
 005A3F17    mov        edx,eax
 005A3F19    mov        eax,dword ptr [ebp-8]
 005A3F1C    mov        eax,dword ptr [eax+4]
 005A3F1F    mov        ecx,4
 005A3F24    mov        ebx,dword ptr [eax]
 005A3F26    call       dword ptr [ebx+0C]
 005A3F29    mov        eax,dword ptr [ebp-10]
 005A3F2C    mov        edx,dword ptr [ebp-4]
 005A3F2F    mov        edx,dword ptr [edx+0A0]; TRaveProjectManager.?fA0:String
 005A3F35    call       @LStrCmp
>005A3F3A    je         005A3F5B
 005A3F3C    mov        ebx,dword ptr ds:[61B830]
 005A3F42    mov        ebx,dword ptr [ebx]
 005A3F44    lea        edx,[ebp-1C]
 005A3F47    mov        eax,5A43C0; 'Invalid Project Format'
 005A3F4C    call       ebx
 005A3F4E    mov        eax,dword ptr [ebp-1C]
 005A3F51    call       005998CC
>005A3F56    jmp        005A4382
 005A3F5B    mov        eax,dword ptr [ebp-4]
 005A3F5E    lea        edx,[eax+0B8]; TRaveProjectManager.?fB8:?
 005A3F64    mov        eax,dword ptr [ebp-8]
 005A3F67    mov        eax,dword ptr [eax+4]
 005A3F6A    mov        ecx,4
 005A3F6F    mov        ebx,dword ptr [eax]
 005A3F71    call       dword ptr [ebx+0C]
 005A3F74    mov        eax,dword ptr [ebp-8]
 005A3F77    call       005A6198
 005A3F7C    mov        ebx,eax
 005A3F7E    test       bl,bl
>005A3F80    je         005A3FA1
 005A3F82    mov        ebx,dword ptr ds:[61B830]
 005A3F88    mov        ebx,dword ptr [ebx]
 005A3F8A    lea        edx,[ebp-20]
 005A3F8D    mov        eax,5A43E0; 'Invalid Project Header Code'
 005A3F92    call       ebx
 005A3F94    mov        eax,dword ptr [ebp-20]
 005A3F97    call       005998CC
>005A3F9C    jmp        005A4382
 005A3FA1    mov        eax,dword ptr [ebp-4]
 005A3FA4    cmp        dword ptr [eax+0B8],9C45; TRaveProjectManager.?fB8:?
>005A3FAE    jl         005A3FC1
 005A3FB0    mov        eax,dword ptr [ebp-4]
 005A3FB3    mov        eax,dword ptr [eax+0E8]; TRaveProjectManager.?fE8:TRaveModuleManager
 005A3FB9    mov        edx,dword ptr [ebp-8]
 005A3FBC    call       005A357C
 005A3FC1    mov        eax,dword ptr [ebp-4]
 005A3FC4    cmp        byte ptr [eax+0AC],0; TRaveProjectManager.?fAC:byte
>005A3FCB    je         005A4037
 005A3FCD    lea        edx,[ebp-24]
 005A3FD0    mov        eax,dword ptr [ebp-8]
 005A3FD3    call       005A61AC
 005A3FD8    mov        ecx,dword ptr [ebp-8]
 005A3FDB    mov        dl,1
 005A3FDD    mov        eax,[005A7840]; TRaveReader
 005A3FE2    call       TRaveReader.Create; TRaveReader.Create
 005A3FE7    mov        dword ptr [ebp-14],eax
 005A3FEA    xor        eax,eax
 005A3FEC    push       ebp
 005A3FED    push       5A4030
 005A3FF2    push       dword ptr fs:[eax]
 005A3FF5    mov        dword ptr fs:[eax],esp
 005A3FF8    mov        eax,dword ptr [ebp-4]
 005A3FFB    mov        eax,dword ptr [eax+0D4]; TRaveProjectManager.?fD4:dword
 005A4001    mov        edx,dword ptr [ebp-14]
 005A4004    mov        dword ptr [edx+50],eax; TRaveReader.?f50:dword
 005A4007    mov        ecx,dword ptr [ebp-4]
 005A400A    mov        edx,dword ptr [ebp-4]
 005A400D    mov        eax,dword ptr [ebp-14]
 005A4010    call       005AD0C0
 005A4015    call       TObject.Free
 005A401A    xor        eax,eax
 005A401C    pop        edx
 005A401D    pop        ecx
 005A401E    pop        ecx
 005A401F    mov        dword ptr fs:[eax],edx
 005A4022    push       5A40A9
 005A4027    mov        eax,dword ptr [ebp-14]
 005A402A    call       TObject.Free
 005A402F    ret
<005A4030    jmp        @HandleFinally
<005A4035    jmp        005A4027
 005A4037    lea        edx,[ebp-28]
 005A403A    mov        eax,dword ptr [ebp-8]
 005A403D    call       005A61AC
 005A4042    mov        edx,dword ptr [ebp-28]
 005A4045    mov        eax,dword ptr [ebp-4]
 005A4048    add        eax,84; TRaveProjectManager.?f84:String
 005A404D    call       @LStrAsg
 005A4052    mov        ecx,dword ptr [ebp-8]
 005A4055    mov        dl,1
 005A4057    mov        eax,[005A7840]; TRaveReader
 005A405C    call       TRaveReader.Create; TRaveReader.Create
 005A4061    mov        dword ptr [ebp-18],eax
 005A4064    xor        eax,eax
 005A4066    push       ebp
 005A4067    push       5A40A2
 005A406C    push       dword ptr fs:[eax]
 005A406F    mov        dword ptr fs:[eax],esp
 005A4072    mov        eax,dword ptr [ebp-4]
 005A4075    mov        eax,dword ptr [eax+0D4]; TRaveProjectManager.?fD4:dword
 005A407B    mov        edx,dword ptr [ebp-18]
 005A407E    mov        dword ptr [edx+50],eax; TRaveReader.?f50:dword
 005A4081    mov        edx,dword ptr [ebp-4]
 005A4084    mov        eax,dword ptr [ebp-18]
 005A4087    call       005AD584
 005A408C    xor        eax,eax
 005A408E    pop        edx
 005A408F    pop        ecx
 005A4090    pop        ecx
 005A4091    mov        dword ptr fs:[eax],edx
 005A4094    push       5A40A9
 005A4099    mov        eax,dword ptr [ebp-18]
 005A409C    call       TObject.Free
 005A40A1    ret
<005A40A2    jmp        @HandleFinally
<005A40A7    jmp        005A4099
 005A40A9    mov        eax,dword ptr [ebp-8]
 005A40AC    call       005A6198
 005A40B1    mov        ebx,eax
 005A40B3    lea        edx,[ebp-0C]
 005A40B6    mov        eax,dword ptr [ebp-8]
 005A40B9    call       005A61AC
 005A40BE    mov        eax,dword ptr [ebp-4]
 005A40C1    cmp        byte ptr [eax+0AC],0; TRaveProjectManager.?fAC:byte
>005A40C8    je         005A414F
 005A40CE    mov        eax,dword ptr [ebp-4]
 005A40D1    mov        ecx,dword ptr [eax+48]; TRaveProjectManager.?f48:TRaveComponent
 005A40D4    mov        edx,dword ptr [ebp-0C]
 005A40D7    mov        eax,dword ptr [ebp-4]
 005A40DA    call       005A4790
 005A40DF    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005A40E5    call       @AsClass
 005A40EA    mov        esi,eax
 005A40EC    test       esi,esi
>005A40EE    je         005A414F
 005A40F0    mov        eax,dword ptr [ebp-4]
 005A40F3    cmp        word ptr [eax+0B2],0; TRaveProjectManager.?fB2:word
>005A40FB    je         005A4113
 005A40FD    lea        ecx,[ebp-0C]
 005A4100    mov        edi,dword ptr [ebp-4]
 005A4103    mov        edx,esi
 005A4105    mov        eax,dword ptr [edi+0B4]; TRaveProjectManager.?fB4:dword
 005A410B    call       dword ptr [edi+0B0]
>005A4111    jmp        005A414F
 005A4113    mov        eax,dword ptr [ebp-4]
 005A4116    cmp        byte ptr [eax+0AD],0; TRaveProjectManager.?fAD:byte
>005A411D    je         005A412D
 005A411F    xor        ecx,ecx
 005A4121    mov        edx,esi
 005A4123    mov        eax,dword ptr [ebp-4]
 005A4126    call       005A4CB8
>005A412B    jmp        005A414F
 005A412D    push       0
 005A412F    lea        eax,[ebp-2C]
 005A4132    push       eax
 005A4133    mov        eax,dword ptr [ebp-4]
 005A4136    mov        ecx,dword ptr [eax+48]; TRaveProjectManager.?f48:TRaveComponent
 005A4139    mov        edx,dword ptr [ebp-0C]
 005A413C    mov        eax,dword ptr [ebp-4]
 005A413F    call       005A492C
 005A4144    mov        edx,dword ptr [ebp-2C]
 005A4147    lea        eax,[ebp-0C]
 005A414A    call       @LStrLAsg
 005A414F    mov        eax,ebx
 005A4151    sub        al,2
>005A4153    je         005A415F
 005A4155    dec        al
>005A4157    je         005A41B4
 005A4159    sub        al,3
>005A415B    je         005A4185
>005A415D    jmp        005A41D7
 005A415F    mov        ecx,dword ptr [ebp-4]
 005A4162    mov        dl,1
 005A4164    mov        eax,[0059AD00]; TRaveDataView
 005A4169    call       TRaveDataView.Create; TRaveDataView.Create
 005A416E    mov        esi,eax
 005A4170    mov        eax,dword ptr [ebp-4]
 005A4173    mov        eax,dword ptr [eax+90]; TRaveProjectManager.?f90:TList
 005A4179    mov        edx,esi
 005A417B    call       TList.Add
>005A4180    jmp        005A420E
 005A4185    lea        edx,[ebp-30]
 005A4188    mov        eax,dword ptr [ebp-8]
 005A418B    call       005A61AC
 005A4190    mov        eax,dword ptr [ebp-30]
 005A4193    call       FindClass
 005A4198    mov        ecx,dword ptr [ebp-4]
 005A419B    mov        dl,1
 005A419D    call       dword ptr [eax+2C]
 005A41A0    mov        esi,eax
 005A41A2    mov        eax,dword ptr [ebp-4]
 005A41A5    mov        eax,dword ptr [eax+90]; TRaveProjectManager.?f90:TList
 005A41AB    mov        edx,esi
 005A41AD    call       TList.Add
>005A41B2    jmp        005A420E
 005A41B4    mov        ecx,dword ptr [ebp-4]
 005A41B7    mov        dl,1
 005A41B9    mov        eax,[005A7428]; TRavePage
 005A41BE    call       TRavePage.Create; TRavePage.Create
 005A41C3    mov        esi,eax
 005A41C5    mov        eax,dword ptr [ebp-4]
 005A41C8    mov        eax,dword ptr [eax+8C]; TRaveProjectManager.?f8C:TList
 005A41CE    mov        edx,esi
 005A41D0    call       TList.Add
>005A41D5    jmp        005A420E
 005A41D7    mov        ecx,dword ptr [ebp-4]
 005A41DA    mov        dl,1
 005A41DC    mov        eax,[005A1074]; TRaveReport
 005A41E1    call       TRaveReport.Create; TRaveReport.Create
 005A41E6    mov        esi,eax
 005A41E8    mov        eax,dword ptr [ebp-4]
 005A41EB    mov        eax,dword ptr [eax+88]; TRaveProjectManager.?f88:TList
 005A41F1    mov        edx,esi
 005A41F3    call       TList.Add
 005A41F8    mov        eax,esi
 005A41FA    mov        edx,dword ptr ds:[5A1074]; TRaveReport
 005A4200    call       @AsClass
 005A4205    mov        edx,dword ptr [ebp-4]
 005A4208    mov        dword ptr [edx+94],eax; TRaveProjectManager.?f94:TRaveReport
 005A420E    mov        edx,dword ptr [ebp-4]
 005A4211    mov        eax,esi
 005A4213    mov        ecx,dword ptr [eax]
 005A4215    call       dword ptr [ecx+44]; TRaveDataView.sub_005A89FC
 005A4218    cmp        dword ptr [ebp-0C],0
>005A421C    je         005A422F
 005A421E    mov        edx,dword ptr [ebp-0C]
 005A4221    mov        eax,esi
 005A4223    mov        ecx,dword ptr [eax]
 005A4225    call       dword ptr [ecx+18]; TRaveBaseDataView.SetName
 005A4228    mov        eax,esi
 005A422A    call       005A8004
 005A422F    mov        eax,dword ptr [ebp-8]
 005A4232    call       005A6390
 005A4237    mov        edx,dword ptr [ebp-8]
 005A423A    mov        eax,esi
 005A423C    mov        ecx,dword ptr [eax]
 005A423E    call       dword ptr [ecx+0D8]; TRaveDataView.sub_005AB6A8
 005A4244    mov        eax,dword ptr [ebp-8]
 005A4247    call       005A6420
 005A424C    mov        eax,dword ptr [ebp-4]
 005A424F    xor        edx,edx
 005A4251    mov        dword ptr [eax+94],edx; TRaveProjectManager.?f94:TRaveReport
 005A4257    cmp        dword ptr [ebp-0C],0
>005A425B    jne        005A42A6
 005A425D    sub        bl,2
>005A4260    je         005A426B
 005A4262    dec        bl
>005A4264    je         005A427D
 005A4266    sub        bl,3
>005A4269    jne        005A428F
 005A426B    mov        eax,dword ptr [ebp-4]
 005A426E    mov        eax,dword ptr [eax+90]; TRaveProjectManager.?f90:TList
 005A4274    mov        edx,esi
 005A4276    call       TList.Remove
>005A427B    jmp        005A429F
 005A427D    mov        eax,dword ptr [ebp-4]
 005A4280    mov        eax,dword ptr [eax+8C]; TRaveProjectManager.?f8C:TList
 005A4286    mov        edx,esi
 005A4288    call       TList.Remove
>005A428D    jmp        005A429F
 005A428F    mov        eax,dword ptr [ebp-4]
 005A4292    mov        eax,dword ptr [eax+88]; TRaveProjectManager.?f88:TList
 005A4298    mov        edx,esi
 005A429A    call       TList.Remove
 005A429F    mov        eax,esi
 005A42A1    call       TObject.Free
 005A42A6    mov        eax,dword ptr [ebp-8]
 005A42A9    call       005A642C
 005A42AE    test       al,al
<005A42B0    je         005A40A9
 005A42B6    mov        eax,dword ptr [ebp-4]
 005A42B9    call       005A524C
 005A42BE    xor        edi,edi
 005A42C0    mov        eax,dword ptr [ebp-4]
 005A42C3    mov        eax,dword ptr [eax+88]; TRaveProjectManager.?f88:TList
 005A42C9    mov        esi,dword ptr [eax+8]; TList.FCount:Integer
 005A42CC    dec        esi
 005A42CD    test       esi,esi
>005A42CF    jl         005A432E
 005A42D1    inc        esi
 005A42D2    xor        ebx,ebx
 005A42D4    mov        eax,dword ptr [ebp-4]
 005A42D7    mov        eax,dword ptr [eax+88]; TRaveProjectManager.?f88:TList
 005A42DD    mov        edx,ebx
 005A42DF    call       TList.Get
 005A42E4    call       005A1F9C
 005A42E9    mov        eax,dword ptr [ebp-4]
 005A42EC    cmp        dword ptr [eax+84],0; TRaveProjectManager.?f84:String
>005A42F3    je         005A432A
 005A42F5    mov        eax,dword ptr [ebp-4]
 005A42F8    mov        eax,dword ptr [eax+88]; TRaveProjectManager.?f88:TList
 005A42FE    mov        edx,ebx
 005A4300    call       TList.Get
 005A4305    mov        eax,dword ptr [eax+8]
 005A4308    mov        edx,dword ptr [ebp-4]
 005A430B    mov        edx,dword ptr [edx+84]; TRaveProjectManager.?f84:String
 005A4311    call       @LStrCmp
>005A4316    jne        005A432A
 005A4318    mov        eax,dword ptr [ebp-4]
 005A431B    mov        eax,dword ptr [eax+88]; TRaveProjectManager.?f88:TList
 005A4321    mov        edx,ebx
 005A4323    call       TList.Get
 005A4328    mov        edi,eax
 005A432A    inc        ebx
 005A432B    dec        esi
<005A432C    jne        005A42D4
 005A432E    test       edi,edi
>005A4330    je         005A433E
 005A4332    mov        edx,edi
 005A4334    mov        eax,dword ptr [ebp-4]
 005A4337    call       005A4A2C
>005A433C    jmp        005A4360
 005A433E    mov        eax,dword ptr [ebp-4]
 005A4341    mov        ebx,dword ptr [eax+88]; TRaveProjectManager.?f88:TList
 005A4347    cmp        dword ptr [ebx+8],0; TList.FCount:Integer
>005A434B    jle        005A4360
 005A434D    mov        eax,ebx
 005A434F    xor        edx,edx
 005A4351    call       TList.Get
 005A4356    mov        edx,eax
 005A4358    mov        eax,dword ptr [ebp-4]
 005A435B    call       005A4A2C
 005A4360    mov        eax,dword ptr [ebp-4]
 005A4363    call       005A524C
 005A4368    mov        eax,dword ptr [ebp-4]
 005A436B    mov        edx,dword ptr [eax]
 005A436D    call       dword ptr [edx+40]; TRaveProjectManager.sub_005AB5F4
 005A4370    mov        eax,dword ptr [ebp-4]
 005A4373    call       005A510C
 005A4378    mov        eax,dword ptr [ebp-4]
 005A437B    mov        byte ptr [eax+98],1; TRaveProjectManager.?f98:byte
 005A4382    xor        eax,eax
 005A4384    pop        edx
 005A4385    pop        ecx
 005A4386    pop        ecx
 005A4387    mov        dword ptr fs:[eax],edx
 005A438A    push       5A43B1
 005A438F    lea        eax,[ebp-30]
 005A4392    mov        edx,6
 005A4397    call       @LStrArrayClr
 005A439C    lea        eax,[ebp-10]
 005A439F    mov        edx,2
 005A43A4    call       @LStrArrayClr
 005A43A9    ret
<005A43AA    jmp        @HandleFinally
<005A43AF    jmp        005A438F
 005A43B1    pop        edi
 005A43B2    pop        esi
 005A43B3    pop        ebx
 005A43B4    mov        esp,ebp
 005A43B6    pop        ebp
 005A43B7    ret
*}
//end;

//005A43FC
//procedure sub_005A43FC(?:TList; ?:?; ?:?);
//begin
{*
 005A43FC    push       ebp
 005A43FD    mov        ebp,esp
 005A43FF    add        esp,0FFFFFEF8
 005A4405    push       ebx
 005A4406    push       esi
 005A4407    push       edi
 005A4408    xor        ecx,ecx
 005A440A    mov        dword ptr [ebp-8],ecx
 005A440D    mov        byte ptr [ebp-1],dl
 005A4410    mov        esi,eax
 005A4412    xor        eax,eax
 005A4414    push       ebp
 005A4415    push       5A450A
 005A441A    push       dword ptr fs:[eax]
 005A441D    mov        dword ptr fs:[eax],esp
 005A4420    mov        edi,dword ptr [esi+8]; TList.FCount:Integer
 005A4423    dec        edi
 005A4424    test       edi,edi
>005A4426    jl         005A44F4
 005A442C    inc        edi
 005A442D    xor        ebx,ebx
 005A442F    mov        eax,dword ptr [ebp+8]
 005A4432    mov        eax,dword ptr [eax-4]
 005A4435    cmp        dword ptr [eax+0A8],0
>005A443C    je         005A4462
 005A443E    mov        edx,ebx
 005A4440    mov        eax,esi
 005A4442    call       TList.Get
 005A4447    mov        edx,eax
 005A4449    mov        eax,dword ptr [ebp+8]
 005A444C    mov        eax,dword ptr [eax-4]
 005A444F    mov        eax,dword ptr [eax+0A8]
 005A4455    call       TList.IndexOf
 005A445A    test       eax,eax
>005A445C    jl         005A44EC
 005A4462    mov        dl,byte ptr [ebp-1]
 005A4465    mov        eax,dword ptr [ebp+8]
 005A4468    mov        eax,dword ptr [eax-8]
 005A446B    call       005A6040
 005A4470    mov        edx,ebx
 005A4472    mov        eax,esi
 005A4474    call       TList.Get
 005A4479    mov        edx,dword ptr [eax+8]
 005A447C    mov        eax,dword ptr [ebp+8]
 005A447F    mov        eax,dword ptr [eax-8]
 005A4482    call       005A6054
 005A4487    cmp        byte ptr [ebp-1],6
>005A448B    jne        005A44BF
 005A448D    mov        edx,ebx
 005A448F    mov        eax,esi
 005A4491    call       TList.Get
 005A4496    mov        eax,dword ptr [eax]
 005A4498    lea        edx,[ebp-108]
 005A449E    call       TObject.ClassName
 005A44A3    lea        edx,[ebp-108]
 005A44A9    lea        eax,[ebp-8]
 005A44AC    call       @LStrFromString
 005A44B1    mov        edx,dword ptr [ebp-8]
 005A44B4    mov        eax,dword ptr [ebp+8]
 005A44B7    mov        eax,dword ptr [eax-8]
 005A44BA    call       005A6054
 005A44BF    mov        eax,dword ptr [ebp+8]
 005A44C2    mov        eax,dword ptr [eax-8]
 005A44C5    call       005A6324
 005A44CA    mov        edx,ebx
 005A44CC    mov        eax,esi
 005A44CE    call       TList.Get
 005A44D3    mov        edx,dword ptr [ebp+8]
 005A44D6    mov        edx,dword ptr [edx-8]
 005A44D9    mov        ecx,dword ptr [eax]
 005A44DB    call       dword ptr [ecx+0D4]
 005A44E1    mov        eax,dword ptr [ebp+8]
 005A44E4    mov        eax,dword ptr [eax-8]
 005A44E7    call       005A6340
 005A44EC    inc        ebx
 005A44ED    dec        edi
<005A44EE    jne        005A442F
 005A44F4    xor        eax,eax
 005A44F6    pop        edx
 005A44F7    pop        ecx
 005A44F8    pop        ecx
 005A44F9    mov        dword ptr fs:[eax],edx
 005A44FC    push       5A4511
 005A4501    lea        eax,[ebp-8]
 005A4504    call       @LStrClr
 005A4509    ret
<005A450A    jmp        @HandleFinally
<005A450F    jmp        005A4501
 005A4511    pop        edi
 005A4512    pop        esi
 005A4513    pop        ebx
 005A4514    mov        esp,ebp
 005A4516    pop        ebp
 005A4517    ret
*}
//end;

//005A4518
//procedure sub_005A4518(?:?);
//begin
{*
 005A4518    push       ebp
 005A4519    mov        ebp,esp
 005A451B    add        esp,0FFFFFFF4
 005A451E    mov        dword ptr [ebp-8],edx
 005A4521    mov        dword ptr [ebp-4],eax
 005A4524    mov        eax,dword ptr [ebp-4]
 005A4527    add        eax,0A0; TRaveProjectManager.?fA0:String
 005A452C    call       @UniqueStringA
 005A4531    mov        edx,eax
 005A4533    mov        ecx,4
 005A4538    mov        eax,dword ptr [ebp-8]
 005A453B    call       005A618C
 005A4540    mov        eax,dword ptr [ebp-4]
 005A4543    mov        dword ptr [eax+0B8],9C45; TRaveProjectManager.?fB8:?
 005A454D    mov        eax,dword ptr [ebp-4]
 005A4550    lea        edx,[eax+0B8]; TRaveProjectManager.?fB8:?
 005A4556    mov        ecx,4
 005A455B    mov        eax,dword ptr [ebp-8]
 005A455E    call       005A618C
 005A4563    xor        edx,edx
 005A4565    mov        eax,dword ptr [ebp-8]
 005A4568    call       005A6040
 005A456D    mov        eax,dword ptr [ebp-4]
 005A4570    mov        eax,dword ptr [eax+0E8]; TRaveProjectManager.?fE8:TRaveModuleManager
 005A4576    mov        edx,dword ptr [ebp-8]
 005A4579    call       005A3644
 005A457E    mov        eax,dword ptr [ebp-4]
 005A4581    mov        edx,dword ptr [eax+84]; TRaveProjectManager.?f84:String
 005A4587    mov        eax,dword ptr [ebp-8]
 005A458A    call       005A6054
 005A458F    mov        ecx,dword ptr [ebp-8]
 005A4592    mov        dl,1
 005A4594    mov        eax,[005A77D8]; TRaveWriter
 005A4599    call       TRaveWriter.Create; TRaveWriter.Create
 005A459E    mov        dword ptr [ebp-0C],eax
 005A45A1    xor        eax,eax
 005A45A3    push       ebp
 005A45A4    push       5A45D2
 005A45A9    push       dword ptr fs:[eax]
 005A45AC    mov        dword ptr fs:[eax],esp
 005A45AF    xor        ecx,ecx
 005A45B1    mov        edx,dword ptr [ebp-4]
 005A45B4    mov        eax,dword ptr [ebp-0C]
 005A45B7    call       005AC534
 005A45BC    xor        eax,eax
 005A45BE    pop        edx
 005A45BF    pop        ecx
 005A45C0    pop        ecx
 005A45C1    mov        dword ptr fs:[eax],edx
 005A45C4    push       5A45D9
 005A45C9    mov        eax,dword ptr [ebp-0C]
 005A45CC    call       TObject.Free
 005A45D1    ret
<005A45D2    jmp        @HandleFinally
<005A45D7    jmp        005A45C9
 005A45D9    push       ebp
 005A45DA    mov        eax,dword ptr [ebp-4]
 005A45DD    mov        eax,dword ptr [eax+90]; TRaveProjectManager.?f90:TList
 005A45E3    mov        dl,6
 005A45E5    call       005A43FC
 005A45EA    pop        ecx
 005A45EB    push       ebp
 005A45EC    mov        eax,dword ptr [ebp-4]
 005A45EF    mov        eax,dword ptr [eax+8C]; TRaveProjectManager.?f8C:TList
 005A45F5    mov        dl,3
 005A45F7    call       005A43FC
 005A45FC    pop        ecx
 005A45FD    push       ebp
 005A45FE    mov        eax,dword ptr [ebp-4]
 005A4601    mov        eax,dword ptr [eax+88]; TRaveProjectManager.?f88:TList
 005A4607    mov        dl,4
 005A4609    call       005A43FC
 005A460E    pop        ecx
 005A460F    mov        eax,dword ptr [ebp-4]
 005A4612    cmp        dword ptr [eax+0A8],0; TRaveProjectManager.?fA8:dword
>005A4619    jne        005A462D
 005A461B    mov        eax,dword ptr [ebp-4]
 005A461E    call       005A510C
 005A4623    mov        eax,dword ptr [ebp-4]
 005A4626    mov        byte ptr [eax+98],1; TRaveProjectManager.?f98:byte
 005A462D    mov        esp,ebp
 005A462F    pop        ebp
 005A4630    ret
*}
//end;

//005A4634
//procedure sub_005A4634(?:?; ?:TStream);
//begin
{*
 005A4634    push       ebp
 005A4635    mov        ebp,esp
 005A4637    push       ecx
 005A4638    push       esi
 005A4639    mov        esi,eax
 005A463B    mov        ecx,edx
 005A463D    mov        eax,[005A5454]; TStreamHelper
 005A4642    mov        dl,1
 005A4644    call       TStreamHelper.Create; TStreamHelper.Create
 005A4649    mov        dword ptr [ebp-4],eax
 005A464C    xor        eax,eax
 005A464E    push       ebp
 005A464F    push       5A467D
 005A4654    push       dword ptr fs:[eax]
 005A4657    mov        dword ptr fs:[eax],esp
 005A465A    mov        edx,dword ptr [ebp-4]
 005A465D    mov        eax,esi
 005A465F    mov        ecx,dword ptr [eax]
 005A4661    call       dword ptr [ecx+0D8]
 005A4667    xor        eax,eax
 005A4669    pop        edx
 005A466A    pop        ecx
 005A466B    pop        ecx
 005A466C    mov        dword ptr fs:[eax],edx
 005A466F    push       5A4684
 005A4674    mov        eax,dword ptr [ebp-4]
 005A4677    call       TObject.Free
 005A467C    ret
<005A467D    jmp        @HandleFinally
<005A4682    jmp        005A4674
 005A4684    pop        esi
 005A4685    pop        ecx
 005A4686    pop        ebp
 005A4687    ret
*}
//end;

//005A4688
procedure TRaveProjectManager.SetCategories(Self:TRaveProjectManager);
begin
{*
 005A4688    push       esi
 005A4689    mov        esi,eax
 005A468B    mov        eax,dword ptr [esi+0BC]; TRaveProjectManager.Categories:TStrings
 005A4691    mov        ecx,dword ptr [eax]
 005A4693    call       dword ptr [ecx+8]; TStrings.Assign
 005A4696    pop        esi
 005A4697    ret
*}
end;

//005A4698
//procedure sub_005A4698(?:?; ?:?);
//begin
{*
 005A4698    push       ebx
 005A4699    push       esi
 005A469A    push       edi
 005A469B    mov        edi,ecx
 005A469D    mov        esi,edx
 005A469F    mov        ebx,eax
 005A46A1    mov        ecx,edi
 005A46A3    mov        edx,esi
 005A46A5    mov        eax,ebx
 005A46A7    call       005AB60C
 005A46AC    mov        eax,dword ptr [ebx+0DC]; TRaveProjectManager.SecurityControl:TRaveBaseSecurity
 005A46B2    test       eax,eax
>005A46B4    je         005A46CD
 005A46B6    cmp        eax,esi
>005A46B8    jne        005A46CD
 005A46BA    mov        eax,edi
 005A46BC    mov        edx,dword ptr ds:[59A38C]; TRaveBaseSecurity
 005A46C2    call       @AsClass
 005A46C7    mov        dword ptr [ebx+0DC],eax; TRaveProjectManager.SecurityControl:TRaveBaseSecurity
 005A46CD    pop        edi
 005A46CE    pop        esi
 005A46CF    pop        ebx
 005A46D0    ret
*}
//end;

//005A46D4
//procedure sub_005A46D4(?:?; ?:?);
//begin
{*
 005A46D4    push       ebx
 005A46D5    push       esi
 005A46D6    push       edi
 005A46D7    mov        ebx,ecx
 005A46D9    mov        edi,edx
 005A46DB    mov        esi,eax
 005A46DD    mov        eax,edi
 005A46DF    mov        edx,dword ptr ds:[5A1074]; TRaveReport
 005A46E5    call       @IsClass
 005A46EA    test       al,al
>005A46EC    je         005A46F6
 005A46EE    mov        esi,dword ptr [esi+88]; TRaveProjectManager.?f88:TList
>005A46F4    jmp        005A4726
 005A46F6    mov        eax,edi
 005A46F8    mov        edx,dword ptr ds:[5A7428]; TRavePage
 005A46FE    call       @IsClass
 005A4703    test       al,al
>005A4705    je         005A470F
 005A4707    mov        esi,dword ptr [esi+8C]; TRaveProjectManager.?f8C:TList
>005A470D    jmp        005A4726
 005A470F    mov        eax,edi
 005A4711    mov        edx,dword ptr ds:[5A72B4]; TRaveDataObject
 005A4717    call       @IsClass
 005A471C    test       al,al
>005A471E    je         005A4789
 005A4720    mov        esi,dword ptr [esi+90]; TRaveProjectManager.?f90:TList
 005A4726    mov        edx,edi
 005A4728    mov        eax,esi
 005A472A    call       TList.IndexOf
 005A472F    dec        ebx
>005A4730    je         005A473A
 005A4732    dec        ebx
>005A4733    je         005A473E
 005A4735    dec        ebx
>005A4736    je         005A4743
>005A4738    jmp        005A4748
 005A473A    xor        ebx,ebx
>005A473C    jmp        005A474C
 005A473E    mov        ebx,eax
 005A4740    dec        ebx
>005A4741    jmp        005A474C
 005A4743    lea        ebx,[eax+1]
>005A4746    jmp        005A474C
 005A4748    mov        ebx,dword ptr [esi+8]; TList.FCount:Integer
 005A474B    dec        ebx
 005A474C    test       eax,eax
>005A474E    jl         005A4789
 005A4750    test       ebx,ebx
>005A4752    jl         005A4789
 005A4754    cmp        ebx,dword ptr [esi+8]; TList.FCount:Integer
>005A4757    jge        005A4789
 005A4759    cmp        ebx,eax
>005A475B    je         005A4789
 005A475D    mov        edx,eax
 005A475F    mov        eax,esi
 005A4761    call       TList.Delete
 005A4766    mov        ecx,edi
 005A4768    mov        edx,ebx
 005A476A    mov        eax,esi
 005A476C    call       TList.Insert
 005A4771    mov        eax,edi
 005A4773    mov        edx,dword ptr ds:[5A6AD4]; TRaveControl
 005A4779    call       @IsClass
 005A477E    test       al,al
>005A4780    je         005A4789
 005A4782    mov        eax,edi
 005A4784    call       005A8540
 005A4789    pop        edi
 005A478A    pop        esi
 005A478B    pop        ebx
 005A478C    ret
*}
//end;

//005A4790
//function sub_005A4790(?:TRaveComponent; ?:AnsiString; ?:dword):?;
//begin
{*
 005A4790    push       ebp
 005A4791    mov        ebp,esp
 005A4793    add        esp,0FFFFFFE4
 005A4796    push       ebx
 005A4797    push       esi
 005A4798    push       edi
 005A4799    xor        ebx,ebx
 005A479B    mov        dword ptr [ebp-18],ebx
 005A479E    mov        ebx,ecx
 005A47A0    mov        dword ptr [ebp-8],edx
 005A47A3    mov        dword ptr [ebp-4],eax
 005A47A6    mov        eax,dword ptr [ebp-8]
 005A47A9    call       @LStrAddRef
 005A47AE    xor        eax,eax
 005A47B0    push       ebp
 005A47B1    push       5A4910
 005A47B6    push       dword ptr fs:[eax]
 005A47B9    mov        dword ptr fs:[eax],esp
 005A47BC    mov        edx,dword ptr [ebp-8]
 005A47BF    mov        eax,5A4928; '.'
 005A47C4    call       AnsiPos
 005A47C9    mov        dword ptr [ebp-0C],eax
 005A47CC    cmp        dword ptr [ebp-0C],0
>005A47D0    jle        005A48B1
 005A47D6    lea        eax,[ebp-18]
 005A47D9    push       eax
 005A47DA    mov        ecx,dword ptr [ebp-0C]
 005A47DD    dec        ecx
 005A47DE    mov        edx,1
 005A47E3    mov        eax,dword ptr [ebp-8]
 005A47E6    call       00590374
 005A47EB    xor        edi,edi
 005A47ED    mov        eax,dword ptr [ebp-4]
 005A47F0    mov        eax,dword ptr [eax+94]; TRaveProjectManager.?f94:TRaveReport
 005A47F6    test       eax,eax
>005A47F8    je         005A4850
 005A47FA    mov        dword ptr [ebp-1C],eax
 005A47FD    mov        eax,dword ptr [ebp-1C]
 005A4800    mov        edx,dword ptr [eax]
 005A4802    call       dword ptr [edx+54]; TRaveReport.sub_005AB0D4
 005A4805    mov        ebx,eax
 005A4807    dec        ebx
 005A4808    test       ebx,ebx
>005A480A    jl         005A4850
 005A480C    inc        ebx
 005A480D    xor        esi,esi
 005A480F    mov        edx,esi
 005A4811    mov        eax,dword ptr [ebp-1C]
 005A4814    mov        ecx,dword ptr [eax]
 005A4816    call       dword ptr [ecx+50]; TRaveReport.sub_005AB0E4
 005A4819    mov        edx,dword ptr ds:[5A7428]; TRavePage
 005A481F    call       @IsClass
 005A4824    test       al,al
>005A4826    je         005A484C
 005A4828    mov        edx,esi
 005A482A    mov        eax,dword ptr [ebp-1C]
 005A482D    mov        ecx,dword ptr [eax]
 005A482F    call       dword ptr [ecx+50]; TRaveReport.sub_005AB0E4
 005A4832    mov        dword ptr [ebp-10],eax
 005A4835    mov        eax,dword ptr [ebp-10]
 005A4838    mov        eax,dword ptr [eax+8]
 005A483B    mov        edx,dword ptr [ebp-18]
 005A483E    call       AnsiCompareText
 005A4843    test       eax,eax
>005A4845    jne        005A484C
 005A4847    mov        edi,dword ptr [ebp-10]
>005A484A    jmp        005A4850
 005A484C    inc        esi
 005A484D    dec        ebx
<005A484E    jne        005A480F
 005A4850    test       edi,edi
>005A4852    jne        005A488E
 005A4854    mov        eax,dword ptr [ebp-4]
 005A4857    mov        edx,dword ptr [eax]
 005A4859    call       dword ptr [edx+54]; TRaveProjectManager.sub_005AB0D4
 005A485C    mov        ebx,eax
 005A485E    dec        ebx
 005A485F    test       ebx,ebx
>005A4861    jl         005A488E
 005A4863    inc        ebx
 005A4864    xor        esi,esi
 005A4866    mov        edx,esi
 005A4868    mov        eax,dword ptr [ebp-4]
 005A486B    mov        ecx,dword ptr [eax]
 005A486D    call       dword ptr [ecx+50]; TRaveProjectManager.sub_005AB0E4
 005A4870    mov        dword ptr [ebp-14],eax
 005A4873    mov        eax,dword ptr [ebp-14]
 005A4876    mov        eax,dword ptr [eax+8]
 005A4879    mov        edx,dword ptr [ebp-18]
 005A487C    call       AnsiCompareText
 005A4881    test       eax,eax
>005A4883    jne        005A488A
 005A4885    mov        edi,dword ptr [ebp-14]
>005A4888    jmp        005A488E
 005A488A    inc        esi
 005A488B    dec        ebx
<005A488C    jne        005A4866
 005A488E    test       edi,edi
>005A4890    je         005A48CA
 005A4892    lea        eax,[ebp-18]
 005A4895    push       eax
 005A4896    mov        eax,dword ptr [ebp-8]
 005A4899    call       @LStrLen
 005A489E    mov        ecx,eax
 005A48A0    sub        ecx,dword ptr [ebp-0C]
 005A48A3    mov        edx,dword ptr [ebp-0C]
 005A48A6    inc        edx
 005A48A7    mov        eax,dword ptr [ebp-8]
 005A48AA    call       00590374
>005A48AF    jmp        005A48CA
 005A48B1    test       ebx,ebx
>005A48B3    je         005A48B9
 005A48B5    mov        edi,ebx
>005A48B7    jmp        005A48BF
 005A48B9    mov        eax,dword ptr [ebp-4]
 005A48BC    mov        edi,dword ptr [eax+48]; TRaveProjectManager.?f48:TRaveComponent
 005A48BF    lea        eax,[ebp-18]
 005A48C2    mov        edx,dword ptr [ebp-8]
 005A48C5    call       @LStrLAsg
 005A48CA    test       edi,edi
>005A48CC    jne        005A48D2
 005A48CE    xor        ebx,ebx
>005A48D0    jmp        005A48F2
 005A48D2    mov        edx,dword ptr [ebp-18]
 005A48D5    mov        eax,edi
 005A48D7    call       TComponent.FindComponent
 005A48DC    mov        ebx,eax
 005A48DE    test       ebx,ebx
>005A48E0    jne        005A48F2
 005A48E2    mov        eax,dword ptr [ebp-4]
 005A48E5    mov        eax,dword ptr [eax+48]; TRaveProjectManager.?f48:TRaveComponent
 005A48E8    mov        edx,dword ptr [ebp-18]
 005A48EB    call       TComponent.FindComponent
 005A48F0    mov        ebx,eax
 005A48F2    xor        eax,eax
 005A48F4    pop        edx
 005A48F5    pop        ecx
 005A48F6    pop        ecx
 005A48F7    mov        dword ptr fs:[eax],edx
 005A48FA    push       5A4917
 005A48FF    lea        eax,[ebp-18]
 005A4902    call       @LStrClr
 005A4907    lea        eax,[ebp-8]
 005A490A    call       @LStrClr
 005A490F    ret
<005A4910    jmp        @HandleFinally
<005A4915    jmp        005A48FF
 005A4917    mov        eax,ebx
 005A4919    pop        edi
 005A491A    pop        esi
 005A491B    pop        ebx
 005A491C    mov        esp,ebp
 005A491E    pop        ebp
 005A491F    ret
*}
//end;

//005A492C
//procedure sub_005A492C(?:TRaveComponent; ?:AnsiString; ?:dword; ?:?; ?:?);
//begin
{*
 005A492C    push       ebp
 005A492D    mov        ebp,esp
 005A492F    add        esp,0FFFFFFF0
 005A4932    push       ebx
 005A4933    push       esi
 005A4934    push       edi
 005A4935    xor        ebx,ebx
 005A4937    mov        dword ptr [ebp-10],ebx
 005A493A    mov        dword ptr [ebp-8],ebx
 005A493D    mov        edi,ecx
 005A493F    mov        dword ptr [ebp-4],edx
 005A4942    mov        esi,dword ptr [ebp+8]
 005A4945    mov        eax,dword ptr [ebp-4]
 005A4948    call       @LStrAddRef
 005A494D    xor        eax,eax
 005A494F    push       ebp
 005A4950    push       5A49E1
 005A4955    push       dword ptr fs:[eax]
 005A4958    mov        dword ptr fs:[eax],esp
 005A495B    cmp        byte ptr [ebp+0C],0
>005A495F    je         005A498C
 005A4961    lea        eax,[ebp-8]
 005A4964    push       eax
 005A4965    lea        edx,[ebp-9]
 005A4968    lea        eax,[ebp-4]
 005A496B    mov        ecx,5A49FC; '|'
 005A4970    call       005A5510
 005A4975    mov        eax,esi
 005A4977    mov        edx,dword ptr [ebp-8]
 005A497A    call       @LStrAsg
 005A497F    mov        edx,dword ptr [esi]
 005A4981    mov        eax,edi
 005A4983    call       TComponent.FindComponent
 005A4988    test       eax,eax
>005A498A    je         005A49BE
 005A498C    mov        ebx,1
 005A4991    lea        edx,[ebp-10]
 005A4994    mov        eax,ebx
 005A4996    call       IntToStr
 005A499B    mov        ecx,dword ptr [ebp-10]
 005A499E    mov        eax,esi
 005A49A0    mov        edx,dword ptr [ebp-4]
 005A49A3    call       @LStrCat3
 005A49A8    mov        edx,dword ptr [esi]
 005A49AA    mov        eax,edi
 005A49AC    call       TComponent.FindComponent
 005A49B1    test       eax,eax
>005A49B3    je         005A49BE
 005A49B5    inc        ebx
 005A49B6    cmp        ebx,2710
<005A49BC    jne        005A4991
 005A49BE    xor        eax,eax
 005A49C0    pop        edx
 005A49C1    pop        ecx
 005A49C2    pop        ecx
 005A49C3    mov        dword ptr fs:[eax],edx
 005A49C6    push       5A49E8
 005A49CB    lea        eax,[ebp-10]
 005A49CE    call       @LStrClr
 005A49D3    lea        eax,[ebp-8]
 005A49D6    mov        edx,2
 005A49DB    call       @LStrArrayClr
 005A49E0    ret
<005A49E1    jmp        @HandleFinally
<005A49E6    jmp        005A49CB
 005A49E8    pop        edi
 005A49E9    pop        esi
 005A49EA    pop        ebx
 005A49EB    mov        esp,ebp
 005A49ED    pop        ebp
 005A49EE    ret        8
*}
//end;

//005A4A00
//procedure sub_005A4A00(?:TRaveProjectManager);
//begin
{*
 005A4A00    push       ebx
 005A4A01    push       esi
 005A4A02    mov        ebx,eax
 005A4A04    mov        esi,dword ptr [ebx+94]; TRaveProjectManager.?f94:TRaveReport
 005A4A0A    test       esi,esi
>005A4A0C    je         005A4A29
 005A4A0E    mov        eax,esi
 005A4A10    mov        edx,dword ptr [eax]
 005A4A12    call       dword ptr [edx+0E0]; TRaveReport.sub_005A219C
 005A4A18    xor        eax,eax
 005A4A1A    mov        dword ptr [ebx+94],eax; TRaveProjectManager.?f94:TRaveReport
 005A4A20    mov        eax,[0061B9A0]; ^gvar_006171E4
 005A4A25    xor        edx,edx
 005A4A27    mov        dword ptr [eax],edx
 005A4A29    pop        esi
 005A4A2A    pop        ebx
 005A4A2B    ret
*}
//end;

//005A4A2C
//procedure sub_005A4A2C(?:TRaveProjectManager; ?:Pointer);
//begin
{*
 005A4A2C    push       ebx
 005A4A2D    push       esi
 005A4A2E    push       edi
 005A4A2F    mov        edi,edx
 005A4A31    mov        ebx,eax
 005A4A33    mov        eax,ebx
 005A4A35    call       005A4A00
 005A4A3A    mov        esi,edi
 005A4A3C    mov        dword ptr [ebx+94],esi; TRaveProjectManager.?f94:TRaveReport
 005A4A42    mov        eax,esi
 005A4A44    mov        edx,dword ptr [eax]
 005A4A46    call       dword ptr [edx+0DC]
 005A4A4C    lea        eax,[ebx+84]; TRaveProjectManager.?f84:String
 005A4A52    mov        edx,dword ptr [ebx+94]; TRaveProjectManager.?f94:TRaveReport
 005A4A58    mov        edx,dword ptr [edx+8]; TRaveReport.?f8:TComponentName
 005A4A5B    call       @LStrAsg
 005A4A60    mov        eax,[0061B3E8]
 005A4A65    cmp        byte ptr [eax],0
>005A4A68    je         005A4A73
 005A4A6A    mov        dl,1
 005A4A6C    mov        eax,ebx
 005A4A6E    call       005A4FF0
 005A4A73    pop        edi
 005A4A74    pop        esi
 005A4A75    pop        ebx
 005A4A76    ret
*}
//end;

//005A4A78
//procedure sub_005A4A78(?:?);
//begin
{*
 005A4A78    push       ebp
 005A4A79    mov        ebp,esp
 005A4A7B    add        esp,0FFFFFFF8
 005A4A7E    mov        dword ptr [ebp-4],eax
 005A4A81    mov        eax,dword ptr [ebp-4]
 005A4A84    mov        byte ptr [eax+0D1],1
 005A4A8B    xor        eax,eax
 005A4A8D    push       ebp
 005A4A8E    push       5A4B42
 005A4A93    push       dword ptr fs:[eax]
 005A4A96    mov        dword ptr fs:[eax],esp
 005A4A99    mov        eax,dword ptr [ebp-4]
 005A4A9C    mov        eax,dword ptr [eax+9C]
 005A4AA2    call       FileExists
 005A4AA7    test       al,al
>005A4AA9    je         005A4B22
 005A4AAB    push       0
 005A4AAD    mov        eax,dword ptr [ebp-4]
 005A4AB0    mov        ecx,dword ptr [eax+9C]
 005A4AB6    mov        dl,1
 005A4AB8    mov        eax,[0041CB08]; TFileStream
 005A4ABD    call       TFileStream.Create; TFileStream.Create
 005A4AC2    mov        dword ptr [ebp-8],eax
 005A4AC5    mov        eax,dword ptr [ebp-8]
 005A4AC8    mov        edx,dword ptr [eax]
 005A4ACA    call       dword ptr [edx]; TStream.GetSize
 005A4ACC    cmp        edx,0
>005A4ACF    jne        005A4AD8
 005A4AD1    cmp        eax,0
>005A4AD4    jbe        005A4B10
>005A4AD6    jmp        005A4ADA
>005A4AD8    jle        005A4B10
 005A4ADA    xor        eax,eax
 005A4ADC    push       ebp
 005A4ADD    push       5A4B09
 005A4AE2    push       dword ptr fs:[eax]
 005A4AE5    mov        dword ptr fs:[eax],esp
 005A4AE8    mov        edx,dword ptr [ebp-8]
 005A4AEB    mov        eax,dword ptr [ebp-4]
 005A4AEE    call       005A4634
 005A4AF3    xor        eax,eax
 005A4AF5    pop        edx
 005A4AF6    pop        ecx
 005A4AF7    pop        ecx
 005A4AF8    mov        dword ptr fs:[eax],edx
 005A4AFB    push       5A4B2A
 005A4B00    mov        eax,dword ptr [ebp-8]
 005A4B03    call       TObject.Free
 005A4B08    ret
<005A4B09    jmp        @HandleFinally
<005A4B0E    jmp        005A4B00
 005A4B10    mov        eax,dword ptr [ebp-8]
 005A4B13    call       TObject.Free
 005A4B18    mov        eax,dword ptr [ebp-4]
 005A4B1B    call       005A4B50
>005A4B20    jmp        005A4B2A
 005A4B22    mov        eax,dword ptr [ebp-4]
 005A4B25    call       005A4B50
 005A4B2A    xor        eax,eax
 005A4B2C    pop        edx
 005A4B2D    pop        ecx
 005A4B2E    pop        ecx
 005A4B2F    mov        dword ptr fs:[eax],edx
 005A4B32    push       5A4B49
 005A4B37    mov        eax,dword ptr [ebp-4]
 005A4B3A    mov        byte ptr [eax+0D1],0
 005A4B41    ret
<005A4B42    jmp        @HandleFinally
<005A4B47    jmp        005A4B37
 005A4B49    pop        ecx
 005A4B4A    pop        ecx
 005A4B4B    pop        ebp
 005A4B4C    ret
*}
//end;

//005A4B50
//procedure sub_005A4B50(?:?);
//begin
{*
 005A4B50    push       ebp
 005A4B51    mov        ebp,esp
 005A4B53    push       ecx
 005A4B54    mov        dword ptr [ebp-4],eax
 005A4B57    xor        eax,eax
 005A4B59    push       ebp
 005A4B5A    push       5A4BB3
 005A4B5F    push       dword ptr fs:[eax]
 005A4B62    mov        dword ptr fs:[eax],esp
 005A4B65    mov        eax,dword ptr [ebp-4]
 005A4B68    mov        byte ptr [eax+0D1],1
 005A4B6F    mov        eax,dword ptr [ebp-4]
 005A4B72    add        eax,9C
 005A4B77    mov        edx,5A4BC8; 'Project1.rav'
 005A4B7C    call       @LStrAsg
 005A4B81    mov        eax,dword ptr [ebp-4]
 005A4B84    call       005A4BEC
 005A4B89    mov        eax,dword ptr [ebp-4]
 005A4B8C    call       005A510C
 005A4B91    mov        eax,dword ptr [ebp-4]
 005A4B94    mov        byte ptr [eax+98],0
 005A4B9B    xor        eax,eax
 005A4B9D    pop        edx
 005A4B9E    pop        ecx
 005A4B9F    pop        ecx
 005A4BA0    mov        dword ptr fs:[eax],edx
 005A4BA3    push       5A4BBA
 005A4BA8    mov        eax,dword ptr [ebp-4]
 005A4BAB    mov        byte ptr [eax+0D1],0
 005A4BB2    ret
<005A4BB3    jmp        @HandleFinally
<005A4BB8    jmp        005A4BA8
 005A4BBA    pop        ecx
 005A4BBB    pop        ebp
 005A4BBC    ret
*}
//end;

//005A4BD8
//procedure sub_005A4BD8(?:?);
//begin
{*
 005A4BD8    push       ebx
 005A4BD9    mov        ebx,eax
 005A4BDB    mov        eax,ebx
 005A4BDD    call       005A4A00
 005A4BE2    mov        eax,ebx
 005A4BE4    call       005A3CC0
 005A4BE9    pop        ebx
 005A4BEA    ret
*}
//end;

//005A4BEC
//function sub_005A4BEC(?:TRaveProjectManager):?;
//begin
{*
 005A4BEC    push       ebp
 005A4BED    mov        ebp,esp
 005A4BEF    push       0
 005A4BF1    push       ebx
 005A4BF2    push       esi
 005A4BF3    mov        esi,eax
 005A4BF5    xor        eax,eax
 005A4BF7    push       ebp
 005A4BF8    push       5A4C98
 005A4BFD    push       dword ptr fs:[eax]
 005A4C00    mov        dword ptr fs:[eax],esp
 005A4C03    mov        ecx,esi
 005A4C05    mov        dl,1
 005A4C07    mov        eax,[005A1074]; TRaveReport
 005A4C0C    call       TRaveReport.Create; TRaveReport.Create
 005A4C11    mov        ebx,eax
 005A4C13    mov        edx,esi
 005A4C15    mov        eax,ebx
 005A4C17    mov        ecx,dword ptr [eax]
 005A4C19    call       dword ptr [ecx+44]; TRaveReport.sub_005A89FC
 005A4C1C    push       0
 005A4C1E    lea        eax,[ebp-4]
 005A4C21    push       eax
 005A4C22    mov        ecx,dword ptr [esi+48]; TRaveProjectManager.?f48:TRaveComponent
 005A4C25    mov        edx,5A4CB0; 'Report'
 005A4C2A    mov        eax,esi
 005A4C2C    call       005A492C
 005A4C31    mov        edx,dword ptr [ebp-4]
 005A4C34    mov        eax,ebx
 005A4C36    mov        ecx,dword ptr [eax]
 005A4C38    call       dword ptr [ecx+18]; TRaveProjectItem.SetName
 005A4C3B    mov        eax,ebx
 005A4C3D    call       005A8004
 005A4C42    mov        edx,ebx
 005A4C44    mov        eax,dword ptr [esi+88]; TRaveProjectManager.?f88:TList
 005A4C4A    call       TList.Add
 005A4C4F    mov        edx,ebx
 005A4C51    mov        eax,esi
 005A4C53    call       005A4A2C
 005A4C58    mov        eax,ebx
 005A4C5A    call       005A222C
 005A4C5F    xor        edx,edx
 005A4C61    mov        eax,ebx
 005A4C63    mov        ecx,dword ptr [eax]
 005A4C65    call       dword ptr [ecx+50]; TRaveReport.sub_005AB0E4
 005A4C68    mov        edx,dword ptr ds:[5A7428]; TRavePage
 005A4C6E    call       @AsClass
 005A4C73    mov        dword ptr [ebx+0A8],eax; TRaveReport.FirstPage:TRavePage
 005A4C79    mov        dl,1
 005A4C7B    mov        eax,esi
 005A4C7D    call       005A4FF0
 005A4C82    xor        eax,eax
 005A4C84    pop        edx
 005A4C85    pop        ecx
 005A4C86    pop        ecx
 005A4C87    mov        dword ptr fs:[eax],edx
 005A4C8A    push       5A4C9F
 005A4C8F    lea        eax,[ebp-4]
 005A4C92    call       @LStrClr
 005A4C97    ret
<005A4C98    jmp        @HandleFinally
<005A4C9D    jmp        005A4C8F
 005A4C9F    mov        eax,ebx
 005A4CA1    pop        esi
 005A4CA2    pop        ebx
 005A4CA3    pop        ecx
 005A4CA4    pop        ebp
 005A4CA5    ret
*}
//end;

//005A4CB8
//procedure sub_005A4CB8(?:TRaveProjectManager; ?:TRaveProjectItem);
//begin
{*
 005A4CB8    push       ebx
 005A4CB9    push       esi
 005A4CBA    push       edi
 005A4CBB    push       ebp
 005A4CBC    mov        edi,edx
 005A4CBE    mov        esi,eax
 005A4CC0    xor        ebx,ebx
 005A4CC2    mov        eax,edi
 005A4CC4    mov        edx,dword ptr ds:[5A1074]; TRaveReport
 005A4CCA    call       @IsClass
 005A4CCF    test       al,al
>005A4CD1    je         005A4D2A
 005A4CD3    mov        eax,dword ptr [esi+88]; TRaveProjectManager.?f88:TList
 005A4CD9    cmp        dword ptr [eax+8],1; TList.FCount:Integer
>005A4CDD    jne        005A4CE8
 005A4CDF    mov        eax,esi
 005A4CE1    call       005A4BEC
>005A4CE6    jmp        005A4D1B
 005A4CE8    cmp        edi,dword ptr [esi+94]; TRaveProjectManager.?f94:TRaveReport
>005A4CEE    jne        005A4D1B
 005A4CF0    mov        edx,edi
 005A4CF2    call       TList.IndexOf
 005A4CF7    mov        ebp,eax
 005A4CF9    test       ebp,ebp
>005A4CFB    jne        005A4D04
 005A4CFD    mov        ebp,1
>005A4D02    jmp        005A4D05
 005A4D04    dec        ebp
 005A4D05    mov        edx,ebp
 005A4D07    mov        eax,dword ptr [esi+88]; TRaveProjectManager.?f88:TList
 005A4D0D    call       TList.Get
 005A4D12    mov        edx,eax
 005A4D14    mov        eax,esi
 005A4D16    call       005A4A2C
 005A4D1B    mov        edx,edi
 005A4D1D    mov        eax,dword ptr [esi+88]; TRaveProjectManager.?f88:TList
 005A4D23    call       TList.Remove
>005A4D28    jmp        005A4D84
 005A4D2A    mov        eax,edi
 005A4D2C    mov        edx,dword ptr ds:[5A7428]; TRavePage
 005A4D32    call       @IsClass
 005A4D37    test       al,al
>005A4D39    je         005A4D66
 005A4D3B    mov        ebp,edi
 005A4D3D    mov        edx,ebp
 005A4D3F    mov        eax,dword ptr [esi+94]; TRaveProjectManager.?f94:TRaveReport
 005A4D45    call       005A20E8
 005A4D4A    cmp        byte ptr [ebp+80],0
>005A4D51    je         005A4D62
 005A4D53    mov        edx,edi
 005A4D55    mov        eax,dword ptr [esi+8C]; TRaveProjectManager.?f8C:TList
 005A4D5B    call       TList.Remove
>005A4D60    jmp        005A4D84
 005A4D62    mov        bl,1
>005A4D64    jmp        005A4D84
 005A4D66    mov        eax,edi
 005A4D68    mov        edx,dword ptr ds:[5A72B4]; TRaveDataObject
 005A4D6E    call       @IsClass
 005A4D73    test       al,al
>005A4D75    je         005A4D84
 005A4D77    mov        edx,edi
 005A4D79    mov        eax,dword ptr [esi+90]; TRaveProjectManager.?f90:TList
 005A4D7F    call       TList.Remove
 005A4D84    mov        eax,edi
 005A4D86    call       005A8044
 005A4D8B    mov        eax,edi
 005A4D8D    call       TObject.Free
 005A4D92    test       bl,bl
>005A4D94    je         005A4DB0
 005A4D96    mov        eax,dword ptr [esi+94]; TRaveProjectManager.?f94:TRaveReport
 005A4D9C    mov        edx,dword ptr [eax]
 005A4D9E    call       dword ptr [edx+54]; TRaveReport.sub_005AB0D4
 005A4DA1    test       eax,eax
>005A4DA3    jne        005A4DB0
 005A4DA5    mov        eax,dword ptr [esi+94]; TRaveProjectManager.?f94:TRaveReport
 005A4DAB    call       005A222C
 005A4DB0    pop        ebp
 005A4DB1    pop        edi
 005A4DB2    pop        esi
 005A4DB3    pop        ebx
 005A4DB4    ret
*}
//end;

//005A4DB8
//procedure sub_005A4DB8(?:TRaveComponent; ?:AnsiString; ?:AnsiString);
//begin
{*
 005A4DB8    push       ebp
 005A4DB9    mov        ebp,esp
 005A4DBB    add        esp,0FFFFFFF8
 005A4DBE    push       ebx
 005A4DBF    mov        dword ptr [ebp-8],ecx
 005A4DC2    mov        dword ptr [ebp-4],edx
 005A4DC5    mov        ebx,eax
 005A4DC7    mov        eax,dword ptr [ebp-4]
 005A4DCA    call       @LStrAddRef
 005A4DCF    mov        eax,dword ptr [ebp-8]
 005A4DD2    call       @LStrAddRef
 005A4DD7    xor        eax,eax
 005A4DD9    push       ebp
 005A4DDA    push       5A4E11
 005A4DDF    push       dword ptr fs:[eax]
 005A4DE2    mov        dword ptr fs:[eax],esp
 005A4DE5    mov        ecx,dword ptr [ebp-8]
 005A4DE8    mov        edx,dword ptr [ebp-4]
 005A4DEB    mov        eax,dword ptr [ebx+0C0]
 005A4DF1    call       TStrings.SetValue
 005A4DF6    xor        eax,eax
 005A4DF8    pop        edx
 005A4DF9    pop        ecx
 005A4DFA    pop        ecx
 005A4DFB    mov        dword ptr fs:[eax],edx
 005A4DFE    push       5A4E18
 005A4E03    lea        eax,[ebp-8]
 005A4E06    mov        edx,2
 005A4E0B    call       @LStrArrayClr
 005A4E10    ret
<005A4E11    jmp        @HandleFinally
<005A4E16    jmp        005A4E03
 005A4E18    pop        ebx
 005A4E19    pop        ecx
 005A4E1A    pop        ecx
 005A4E1B    pop        ebp
 005A4E1C    ret
*}
//end;

//005A4E20
//procedure sub_005A4E20(?:TRaveComponent; ?:AnsiString; ?:AnsiString);
//begin
{*
 005A4E20    push       ebp
 005A4E21    mov        ebp,esp
 005A4E23    push       ecx
 005A4E24    push       ebx
 005A4E25    push       esi
 005A4E26    mov        esi,ecx
 005A4E28    mov        dword ptr [ebp-4],edx
 005A4E2B    mov        ebx,eax
 005A4E2D    mov        eax,dword ptr [ebp-4]
 005A4E30    call       @LStrAddRef
 005A4E35    xor        eax,eax
 005A4E37    push       ebp
 005A4E38    push       5A4E69
 005A4E3D    push       dword ptr fs:[eax]
 005A4E40    mov        dword ptr fs:[eax],esp
 005A4E43    mov        ecx,esi
 005A4E45    mov        edx,dword ptr [ebp-4]
 005A4E48    mov        eax,dword ptr [ebx+0C0]
 005A4E4E    call       TStrings.GetValue
 005A4E53    xor        eax,eax
 005A4E55    pop        edx
 005A4E56    pop        ecx
 005A4E57    pop        ecx
 005A4E58    mov        dword ptr fs:[eax],edx
 005A4E5B    push       5A4E70
 005A4E60    lea        eax,[ebp-4]
 005A4E63    call       @LStrClr
 005A4E68    ret
<005A4E69    jmp        @HandleFinally
<005A4E6E    jmp        005A4E60
 005A4E70    pop        esi
 005A4E71    pop        ebx
 005A4E72    pop        ecx
 005A4E73    pop        ebp
 005A4E74    ret
*}
//end;

//005A4E78
//procedure TRaveProjectManager.SetUnits(Self:TRaveProjectManager; ?:?);
//begin
{*
 005A4E78    mov        ecx,edx
 005A4E7A    mov        byte ptr [eax+0C4],cl; TRaveProjectManager.Units:TPrintUnits
 005A4E80    sub        cl,1
>005A4E83    jb         005A4E91
>005A4E85    je         005A4EA5
 005A4E87    dec        cl
>005A4E89    je         005A4EBB
 005A4E8B    dec        cl
>005A4E8D    je         005A4ED1
>005A4E8F    jmp        005A4EE3
 005A4E91    xor        edx,edx
 005A4E93    mov        dword ptr [eax+0C8],edx; TRaveProjectManager.UnitsFactor:Double
 005A4E99    mov        dword ptr [eax+0CC],3FF00000; TRaveProjectManager.?fCC:dword
>005A4EA3    jmp        005A4EE3
 005A4EA5    mov        dword ptr [eax+0C8],66666666; TRaveProjectManager.UnitsFactor:Double
 005A4EAF    mov        dword ptr [eax+0CC],40396666; TRaveProjectManager.?fCC:dword
>005A4EB9    jmp        005A4EE3
 005A4EBB    mov        dword ptr [eax+0C8],851EB852; TRaveProjectManager.UnitsFactor:Double
 005A4EC5    mov        dword ptr [eax+0CC],400451EB; TRaveProjectManager.?fCC:dword
>005A4ECF    jmp        005A4EE3
 005A4ED1    xor        edx,edx
 005A4ED3    mov        dword ptr [eax+0C8],edx; TRaveProjectManager.UnitsFactor:Double
 005A4ED9    mov        dword ptr [eax+0CC],40520000; TRaveProjectManager.?fCC:dword
 005A4EE3    mov        eax,[0061B9A0]; ^gvar_006171E4
 005A4EE8    cmp        dword ptr [eax],0
>005A4EEB    je         005A4EFC
 005A4EED    mov        eax,[0061B9A0]; ^gvar_006171E4
 005A4EF2    mov        eax,dword ptr [eax]
 005A4EF4    mov        edx,dword ptr [eax]
 005A4EF6    call       dword ptr [edx+0FC]
 005A4EFC    ret
*}
//end;

//005A4F00
//procedure TRaveProjectManager.SetUnitsFactor(Self:TRaveProjectManager; ?:?; ?:?);
//begin
{*
 005A4F00    push       ebp
 005A4F01    mov        ebp,esp
 005A4F03    push       ebx
 005A4F04    mov        ebx,eax
 005A4F06    fld        qword ptr [ebp+8]
 005A4F09    fcomp      dword ptr ds:[5A4FEC]; 0:Single
 005A4F0F    fnstsw     al
 005A4F11    sahf
>005A4F12    jbe        005A4FCB
 005A4F18    mov        eax,dword ptr [ebp+8]
 005A4F1B    mov        dword ptr [ebx+0C8],eax; TRaveProjectManager.UnitsFactor:Double
 005A4F21    mov        eax,dword ptr [ebp+0C]
 005A4F24    mov        dword ptr [ebx+0CC],eax; TRaveProjectManager.?fCC:dword
 005A4F2A    push       dword ptr [ebx+0CC]; TRaveProjectManager.?fCC:dword
 005A4F30    push       dword ptr [ebx+0C8]; TRaveProjectManager.UnitsFactor:Double
 005A4F36    push       3FF00000
 005A4F3B    push       0
 005A4F3D    call       005A5AEC
 005A4F42    test       al,al
>005A4F44    je         005A4F4F
 005A4F46    mov        byte ptr [ebx+0C4],0; TRaveProjectManager.Units:TPrintUnits
>005A4F4D    jmp        005A4FCB
 005A4F4F    push       dword ptr [ebx+0CC]; TRaveProjectManager.?fCC:dword
 005A4F55    push       dword ptr [ebx+0C8]; TRaveProjectManager.UnitsFactor:Double
 005A4F5B    push       40396666
 005A4F60    push       66666666
 005A4F65    call       005A5AEC
 005A4F6A    test       al,al
>005A4F6C    je         005A4F77
 005A4F6E    mov        byte ptr [ebx+0C4],1; TRaveProjectManager.Units:TPrintUnits
>005A4F75    jmp        005A4FCB
 005A4F77    push       dword ptr [ebx+0CC]; TRaveProjectManager.?fCC:dword
 005A4F7D    push       dword ptr [ebx+0C8]; TRaveProjectManager.UnitsFactor:Double
 005A4F83    push       400451EB
 005A4F88    push       851EB852
 005A4F8D    call       005A5AEC
 005A4F92    test       al,al
>005A4F94    je         005A4F9F
 005A4F96    mov        byte ptr [ebx+0C4],2; TRaveProjectManager.Units:TPrintUnits
>005A4F9D    jmp        005A4FCB
 005A4F9F    push       dword ptr [ebx+0CC]; TRaveProjectManager.?fCC:dword
 005A4FA5    push       dword ptr [ebx+0C8]; TRaveProjectManager.UnitsFactor:Double
 005A4FAB    push       40520000
 005A4FB0    push       0
 005A4FB2    call       005A5AEC
 005A4FB7    test       al,al
>005A4FB9    je         005A4FC4
 005A4FBB    mov        byte ptr [ebx+0C4],3; TRaveProjectManager.Units:TPrintUnits
>005A4FC2    jmp        005A4FCB
 005A4FC4    mov        byte ptr [ebx+0C4],4; TRaveProjectManager.Units:TPrintUnits
 005A4FCB    mov        eax,[0061B9A0]; ^gvar_006171E4
 005A4FD0    cmp        dword ptr [eax],0
>005A4FD3    je         005A4FE4
 005A4FD5    mov        eax,[0061B9A0]; ^gvar_006171E4
 005A4FDA    mov        eax,dword ptr [eax]
 005A4FDC    mov        edx,dword ptr [eax]
 005A4FDE    call       dword ptr [edx+0FC]
 005A4FE4    pop        ebx
 005A4FE5    pop        ebp
 005A4FE6    ret        8
*}
//end;

//005A4FF0
//procedure sub_005A4FF0(?:TRaveComponent; ?:?);
//begin
{*
 005A4FF0    push       ebp
 005A4FF1    mov        ebp,esp
 005A4FF3    push       0
 005A4FF5    push       ebx
 005A4FF6    push       esi
 005A4FF7    mov        ebx,eax
 005A4FF9    xor        eax,eax
 005A4FFB    push       ebp
 005A4FFC    push       5A507F
 005A5001    push       dword ptr fs:[eax]
 005A5004    mov        dword ptr fs:[eax],esp
 005A5007    test       dl,dl
>005A5009    je         005A5069
 005A500B    cmp        byte ptr [ebx+0A4],0; TRaveProjectManager.?fA4:byte
>005A5012    jne        005A5062
 005A5014    cmp        byte ptr [ebx+0D1],0; TRaveProjectManager.?fD1:byte
>005A501B    jne        005A5062
 005A501D    cmp        byte ptr [ebx+98],0; TRaveProjectManager.?f98:byte
>005A5024    je         005A5062
 005A5026    mov        eax,dword ptr [ebx+9C]; TRaveProjectManager.?f9C:String
 005A502C    call       FileExists
 005A5031    test       al,al
>005A5033    jne        005A5039
 005A5035    xor        eax,eax
>005A5037    jmp        005A5044
 005A5039    mov        eax,dword ptr [ebx+9C]; TRaveProjectManager.?f9C:String
 005A503F    call       FileIsReadOnly
 005A5044    test       al,al
>005A5046    je         005A5062
 005A5048    mov        esi,dword ptr ds:[61B830]
 005A504E    mov        esi,dword ptr [esi]
 005A5050    lea        edx,[ebp-4]
 005A5053    mov        eax,5A5094; 'The report project file you are modifying is marked read only.  You will be prompted for another file name when saving.'
 005A5058    call       esi
 005A505A    mov        eax,dword ptr [ebp-4]
 005A505D    call       ShowMessage
 005A5062    mov        byte ptr [ebx+0A4],1; TRaveProjectManager.?fA4:byte
 005A5069    xor        eax,eax
 005A506B    pop        edx
 005A506C    pop        ecx
 005A506D    pop        ecx
 005A506E    mov        dword ptr fs:[eax],edx
 005A5071    push       5A5086
 005A5076    lea        eax,[ebp-4]
 005A5079    call       @LStrClr
 005A507E    ret
<005A507F    jmp        @HandleFinally
<005A5084    jmp        005A5076
 005A5086    pop        esi
 005A5087    pop        ebx
 005A5088    pop        ecx
 005A5089    pop        ebp
 005A508A    ret
*}
//end;

//005A510C
//procedure sub_005A510C(?:TRaveProjectManager);
//begin
{*
 005A510C    mov        byte ptr [eax+0A4],0; TRaveProjectManager.?fA4:byte
 005A5113    ret
*}
//end;

//005A5114
procedure sub_005A5114;
begin
{*
 005A5114    push       ebx
 005A5115    push       esi
 005A5116    push       edi
 005A5117    push       ebp
 005A5118    mov        edi,eax
 005A511A    mov        eax,[0061BA28]
 005A511F    mov        byte ptr [eax],1
 005A5122    mov        ebp,2
 005A5127    mov        eax,edi
 005A5129    call       005AB520
 005A512E    mov        eax,dword ptr [edi+48]; TRaveProjectManager.?f48:TRaveComponent
 005A5131    mov        eax,dword ptr [eax+90]
 005A5137    mov        ebx,dword ptr [eax+8]
 005A513A    dec        ebx
 005A513B    test       ebx,ebx
>005A513D    jl         005A515E
 005A513F    inc        ebx
 005A5140    xor        esi,esi
 005A5142    mov        eax,dword ptr [edi+48]; TRaveProjectManager.?f48:TRaveComponent
 005A5145    mov        eax,dword ptr [eax+90]
 005A514B    mov        edx,esi
 005A514D    call       TList.Get
 005A5152    mov        edx,dword ptr [eax]
 005A5154    call       dword ptr [edx+0E4]
 005A515A    inc        esi
 005A515B    dec        ebx
<005A515C    jne        005A5142
 005A515E    mov        eax,dword ptr [edi+48]; TRaveProjectManager.?f48:TRaveComponent
 005A5161    mov        eax,dword ptr [eax+8C]
 005A5167    mov        ebx,dword ptr [eax+8]
 005A516A    dec        ebx
 005A516B    test       ebx,ebx
>005A516D    jl         005A518E
 005A516F    inc        ebx
 005A5170    xor        esi,esi
 005A5172    mov        eax,dword ptr [edi+48]; TRaveProjectManager.?f48:TRaveComponent
 005A5175    mov        eax,dword ptr [eax+8C]
 005A517B    mov        edx,esi
 005A517D    call       TList.Get
 005A5182    mov        edx,dword ptr [eax]
 005A5184    call       dword ptr [edx+0E4]
 005A518A    inc        esi
 005A518B    dec        ebx
<005A518C    jne        005A5172
 005A518E    mov        eax,dword ptr [edi+48]; TRaveProjectManager.?f48:TRaveComponent
 005A5191    mov        eax,dword ptr [eax+88]
 005A5197    mov        ebx,dword ptr [eax+8]
 005A519A    dec        ebx
 005A519B    test       ebx,ebx
>005A519D    jl         005A51BE
 005A519F    inc        ebx
 005A51A0    xor        esi,esi
 005A51A2    mov        eax,dword ptr [edi+48]; TRaveProjectManager.?f48:TRaveComponent
 005A51A5    mov        eax,dword ptr [eax+88]
 005A51AB    mov        edx,esi
 005A51AD    call       TList.Get
 005A51B2    mov        edx,dword ptr [eax]
 005A51B4    call       dword ptr [edx+0E4]
 005A51BA    inc        esi
 005A51BB    dec        ebx
<005A51BC    jne        005A51A2
 005A51BE    mov        eax,[0061BA28]
 005A51C3    mov        byte ptr [eax],0
 005A51C6    dec        ebp
<005A51C7    jne        005A5127
 005A51CD    pop        ebp
 005A51CE    pop        edi
 005A51CF    pop        esi
 005A51D0    pop        ebx
 005A51D1    ret
*}
end;

//005A51D4
//function sub_005A51D4(?:?; ?:AnsiString; ?:?):?;
//begin
{*
 005A51D4    push       ebx
 005A51D5    push       esi
 005A51D6    push       edi
 005A51D7    push       ebp
 005A51D8    add        esp,0FFFFFFF4
 005A51DB    mov        byte ptr [esp+4],cl
 005A51DF    mov        edi,edx
 005A51E1    mov        dword ptr [esp],eax
 005A51E4    xor        eax,eax
 005A51E6    mov        dword ptr [esp+8],eax
 005A51EA    mov        eax,dword ptr [esp]
 005A51ED    mov        eax,dword ptr [eax+88]
 005A51F3    mov        esi,dword ptr [eax+8]
 005A51F6    dec        esi
 005A51F7    test       esi,esi
>005A51F9    jl         005A523D
 005A51FB    inc        esi
 005A51FC    xor        ebp,ebp
 005A51FE    mov        eax,dword ptr [esp]
 005A5201    mov        eax,dword ptr [eax+88]
 005A5207    mov        edx,ebp
 005A5209    call       TList.Get
 005A520E    mov        ebx,eax
 005A5210    cmp        byte ptr [esp+4],0
>005A5215    je         005A5225
 005A5217    mov        edx,edi
 005A5219    mov        eax,dword ptr [ebx+68]
 005A521C    call       AnsiCompareText
 005A5221    test       eax,eax
>005A5223    je         005A5233
 005A5225    mov        edx,edi
 005A5227    mov        eax,dword ptr [ebx+8]
 005A522A    call       AnsiCompareText
 005A522F    test       eax,eax
>005A5231    jne        005A5239
 005A5233    mov        dword ptr [esp+8],ebx
>005A5237    jmp        005A523D
 005A5239    inc        ebp
 005A523A    dec        esi
<005A523B    jne        005A51FE
 005A523D    mov        eax,dword ptr [esp+8]
 005A5241    add        esp,0C
 005A5244    pop        ebp
 005A5245    pop        edi
 005A5246    pop        esi
 005A5247    pop        ebx
 005A5248    ret
*}
//end;

//005A524C
//procedure sub_005A524C(?:dword);
//begin
{*
 005A524C    push       ebp
 005A524D    mov        ebp,esp
 005A524F    add        esp,0FFFFFFEC
 005A5252    push       ebx
 005A5253    push       esi
 005A5254    push       edi
 005A5255    xor        edx,edx
 005A5257    mov        dword ptr [ebp-14],edx
 005A525A    mov        dword ptr [ebp-10],edx
 005A525D    mov        ebx,eax
 005A525F    xor        eax,eax
 005A5261    push       ebp
 005A5262    push       5A537D
 005A5267    push       dword ptr fs:[eax]
 005A526A    mov        dword ptr fs:[eax],esp
 005A526D    mov        esi,dword ptr [ebx+7C]
 005A5270    test       esi,esi
>005A5272    je         005A5362
 005A5278    mov        eax,esi
 005A527A    mov        edx,dword ptr [eax]
 005A527C    call       dword ptr [edx+14]
 005A527F    dec        eax
 005A5280    test       eax,eax
>005A5282    jl         005A533A
 005A5288    inc        eax
 005A5289    mov        dword ptr [ebp-0C],eax
 005A528C    mov        dword ptr [ebp-4],0
 005A5293    mov        edx,dword ptr [ebp-4]
 005A5296    mov        eax,dword ptr [ebx+7C]
 005A5299    mov        ecx,dword ptr [eax]
 005A529B    call       dword ptr [ecx+18]
 005A529E    mov        esi,eax
 005A52A0    cmp        dword ptr [ebx+80],0
>005A52A7    je         005A52DF
 005A52A9    lea        ecx,[ebp-10]
 005A52AC    mov        edx,dword ptr [ebp-4]
 005A52AF    mov        eax,dword ptr [ebx+7C]
 005A52B2    mov        edi,dword ptr [eax]
 005A52B4    call       dword ptr [edi+0C]
 005A52B7    mov        edx,dword ptr [ebp-10]
 005A52BA    lea        ecx,[ebp-8]
 005A52BD    mov        eax,dword ptr [ebx+80]
 005A52C3    mov        edi,dword ptr [eax]
 005A52C5    call       dword ptr [edi+8C]
 005A52CB    test       al,al
>005A52CD    je         005A52DF
 005A52CF    mov        edx,dword ptr [ebp-8]
 005A52D2    mov        eax,dword ptr [ebx+80]
 005A52D8    mov        ecx,dword ptr [eax]
 005A52DA    call       dword ptr [ecx+18]
>005A52DD    jmp        005A530E
 005A52DF    lea        ecx,[ebp-14]
 005A52E2    mov        edx,dword ptr [ebp-4]
 005A52E5    mov        eax,dword ptr [ebx+7C]
 005A52E8    mov        edi,dword ptr [eax]
 005A52EA    call       dword ptr [edi+0C]
 005A52ED    mov        eax,dword ptr [ebp-14]
 005A52F0    push       eax
 005A52F1    mov        edx,dword ptr [ebp-4]
 005A52F4    mov        eax,dword ptr [ebx+7C]
 005A52F7    mov        ecx,dword ptr [eax]
 005A52F9    call       dword ptr [ecx+18]
 005A52FC    mov        eax,dword ptr [eax+8]
 005A52FF    mov        ecx,dword ptr [eax+38]
 005A5302    mov        eax,ebx
 005A5304    pop        edx
 005A5305    call       005A4790
 005A530A    test       eax,eax
>005A530C    je         005A532E
 005A530E    mov        edx,dword ptr [esi+0C]
 005A5311    test       edx,edx
>005A5313    jne        005A5324
 005A5315    mov        ecx,eax
 005A5317    mov        edx,dword ptr [esi+4]
 005A531A    mov        eax,dword ptr [esi+8]
 005A531D    call       TList.Put
>005A5322    jmp        005A532E
 005A5324    mov        ecx,eax
 005A5326    mov        eax,dword ptr [esi+8]
 005A5329    call       SetOrdProp
 005A532E    inc        dword ptr [ebp-4]
 005A5331    dec        dword ptr [ebp-0C]
<005A5334    jne        005A5293
 005A533A    mov        eax,dword ptr [ebx+7C]
 005A533D    call       005A5904
 005A5342    mov        eax,dword ptr [ebx+7C]
 005A5345    call       TObject.Free
 005A534A    xor        eax,eax
 005A534C    mov        dword ptr [ebx+7C],eax
 005A534F    mov        eax,dword ptr [ebx+80]
 005A5355    call       TObject.Free
 005A535A    xor        eax,eax
 005A535C    mov        dword ptr [ebx+80],eax
 005A5362    xor        eax,eax
 005A5364    pop        edx
 005A5365    pop        ecx
 005A5366    pop        ecx
 005A5367    mov        dword ptr fs:[eax],edx
 005A536A    push       5A5384
 005A536F    lea        eax,[ebp-14]
 005A5372    mov        edx,2
 005A5377    call       @LStrArrayClr
 005A537C    ret
<005A537D    jmp        @HandleFinally
<005A5382    jmp        005A536F
 005A5384    pop        edi
 005A5385    pop        esi
 005A5386    pop        ebx
 005A5387    mov        esp,ebp
 005A5389    pop        ebp
 005A538A    ret
*}
//end;

Initialization
//005A53BC
{*
 005A53BC    sub        dword ptr ds:[61F874],1
>005A53C3    jae        005A53D4
 005A53C5    mov        edx,5A1A0C
 005A53CA    mov        eax,5A53E0; 'RVCL'
 005A53CF    call       005A7E10
 005A53D4    ret
*}
Finalization
end.