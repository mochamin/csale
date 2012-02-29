{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvCsStd;

interface

uses
  Classes, Windows, Graphics, RvClass, RvData, RvDefine, SysUtils, _Unit107;

type
  TRaveFontMaster = class(TRaveComponent)
  public
    Font:TRaveFont;//f5C
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
  end;
  TRavePageNumInit = class(TRaveComponent)
  public
    InitValue:Integer;//f5C
    InitDataView:TRaveBaseDataView;//f60
    f64:TRaveFieldName;//f64
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005B18E8(?:?); virtual;
    //procedure sub_005B18B4(?:?; ?:?); virtual;
  end;
  TRaveCustomText = class(TRaveControl)
  public
    fE8:TRaveFont;//fE8
    fEC:byte;//fEC
    fF0:String;//fF0
    fF4:TRaveFontMaster;//fF4
    fF8:dword;//fF8
    fFC:byte;//fFC
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005B1A4C(?:?; ?:?); virtual;
    //procedure sub_005B1AC4(?:?; ?:?); virtual;
    //function sub_005B1C50:?; virtual;
    //procedure SetText(?:AnsiString); virtual;
    //procedure GetText(?:?); virtual;
    //procedure SetFontJustify(?:?); virtual;
    //function GetFontJustify:?; virtual;
    procedure SetColor; virtual;
    //function GetColor:?; virtual;
  end;
  TRaveText = class(TRaveCustomText)
  public
    Truncate:Boolean;//f100
    Rotation:Integer;//f104
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005B1F38(?:?); virtual;
    procedure sub_005B1DA8; virtual;
    procedure sub_005B1E0C; virtual;
    procedure sub_005B1EA4; virtual;
    procedure sub_005B1F34(); virtual;
  end;
  TRaveSection = class(TRaveContainerControl)
  public
    WasteFit:Boolean;//fF0
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005B20D0(?:?); virtual;
    //procedure sub_005B22B0(?:?); virtual;
  end;
  TMatchSide = (msWidth, msHeight, msBoth, msInside);
  TRaveBaseImage = class(TRaveControl)
  public
    MatchSide:TMatchSide;//fE8
    fEC:TFileName;//fEC
    fF0:TRaveFieldName;//fF0
    DataView:TRaveBaseDataView;//fF4
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005B2910(?:?); virtual;
    //procedure sub_005B249C(?:?; ?:?); virtual;
    //procedure sub_005B25C8(?:?); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    //procedure sub_005B2D3C(?:?); virtual;
    //procedure sub_005B2D64(?:?); virtual;
  end;
  TRaveGraphicImage = class(TRaveBaseImage)
  public
    Image:TGraphic;//fF8
    fFC:dword;//fFC
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005B2E74(?:?); virtual;
    procedure sub_005B2E60; virtual;
    procedure sub_005B2ED0; virtual;
    procedure sub_005B2EE4; virtual;
    //procedure sub_005B2EF8(?:?; ?:?); virtual;
  end;
  TRaveBitmap = class(TRaveGraphicImage)
  public
    //function sub_005B2F68:?; virtual;
    //procedure sub_005B2F9C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005B2FE4(?:?); virtual;
    //procedure sub_005B300C(?:?); virtual;
    procedure sub_005B2F58(); virtual;
  end;
  TRaveMetaFile = class(TRaveGraphicImage)
  public
    //function sub_005B30A8:?; virtual;
    //procedure sub_005B30DC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005B312C(?:?); virtual;
    //procedure sub_005B3158(?:?); virtual;
    procedure sub_005B3098(); virtual;
  end;
  TRaveMailMergeItem = class(TPersistent)
  public
    f4:String;//f4
    f8:String;//f8
    CaseMatters:Boolean;//fC
  end;
  TRaveMemo = class(TRaveCustomText)
  public
    f100:TRaveAnchor;//f100
    ExpandParent:Boolean;//f101
    Truncate:Boolean;//f102
    f103:byte;//f103
    f104:TMemoBuf;//f104
    f108:dword;//f108
    MailMergeItems:TRavePersistentList;//f10C
    f110:byte;//f110
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //function sub_005B362C:?; virtual;
    procedure sub_005B3650; virtual;
    procedure sub_005B368C; virtual;
    //procedure sub_005B3710(?:?); virtual;
    procedure sub_005B37C8(); virtual;
    //procedure sub_005B3408(?:?); virtual;
    procedure sub_005B3468(); virtual;
    procedure sub_005B33E8; virtual;
    procedure sub_005B37D0; virtual;
  end;
  TRaveMailMergeList = class(TRavePersistentList)
  public
    //function sub_005B3264():?; virtual;
  end;

implementation

{$R *.DFM}

//005B16DC
procedure sub_005B16DC;
begin
{*
 005B16DC    push       ebp
 005B16DD    mov        ebp,esp
 005B16DF    add        esp,0FFFFFFE0
 005B16E2    push       ebx
 005B16E3    xor        eax,eax
 005B16E5    mov        dword ptr [ebp-20],eax
 005B16E8    xor        eax,eax
 005B16EA    push       ebp
 005B16EB    push       5B176E
 005B16F0    push       dword ptr fs:[eax]
 005B16F3    mov        dword ptr fs:[eax],esp
 005B16F6    mov        eax,[005B01E8]; TRaveText
 005B16FB    mov        dword ptr [ebp-1C],eax
 005B16FE    mov        eax,[005B1348]; TRaveMemo
 005B1703    mov        dword ptr [ebp-18],eax
 005B1706    mov        eax,[005B0550]; TRaveSection
 005B170B    mov        dword ptr [ebp-14],eax
 005B170E    mov        eax,[005B0DD4]; TRaveBitmap
 005B1713    mov        dword ptr [ebp-10],eax
 005B1716    mov        eax,[005B0FF8]; TRaveMetaFile
 005B171B    mov        dword ptr [ebp-0C],eax
 005B171E    mov        eax,[005AFC74]; TRaveFontMaster
 005B1723    mov        dword ptr [ebp-8],eax
 005B1726    mov        eax,[005AFDEC]; TRavePageNumInit
 005B172B    mov        dword ptr [ebp-4],eax
 005B172E    lea        eax,[ebp-1C]
 005B1731    push       eax
 005B1732    push       6
 005B1734    mov        ebx,dword ptr ds:[61B830]
 005B173A    mov        ebx,dword ptr [ebx]
 005B173C    lea        edx,[ebp-20]
 005B173F    mov        eax,5B1784; 'Standard'
 005B1744    call       ebx
 005B1746    mov        eax,dword ptr [ebp-20]
 005B1749    mov        ecx,5B1798; 'RvCsStd'
 005B174E    mov        edx,5B1784; 'Standard'
 005B1753    call       005A7F78
 005B1758    xor        eax,eax
 005B175A    pop        edx
 005B175B    pop        ecx
 005B175C    pop        ecx
 005B175D    mov        dword ptr fs:[eax],edx
 005B1760    push       5B1775
 005B1765    lea        eax,[ebp-20]
 005B1768    call       @LStrClr
 005B176D    ret
<005B176E    jmp        @HandleFinally
<005B1773    jmp        005B1765
 005B1775    pop        ebx
 005B1776    mov        esp,ebp
 005B1778    pop        ebp
 005B1779    ret
*}
end;

//005B17A0
constructor TRaveFontMaster.Create(AOwner:TComponent);
begin
{*
 005B17A0    push       ebp
 005B17A1    mov        ebp,esp
 005B17A3    push       ecx
 005B17A4    push       ebx
 005B17A5    push       esi
 005B17A6    test       dl,dl
>005B17A8    je         005B17B2
 005B17AA    add        esp,0FFFFFFF0
 005B17AD    call       @ClassCreate
 005B17B2    mov        byte ptr [ebp-1],dl
 005B17B5    mov        ebx,eax
 005B17B7    xor        edx,edx
 005B17B9    mov        eax,ebx
 005B17BB    call       TRaveComponent.Create
 005B17C0    mov        dl,1
 005B17C2    mov        eax,[005A78BC]; TRaveFont
 005B17C7    call       TFont.Create; TRaveFont.Create
 005B17CC    mov        esi,eax
 005B17CE    mov        dword ptr [ebx+5C],esi; TRaveFontMaster.Font:TRaveFont
 005B17D1    mov        eax,esi
 005B17D3    mov        edx,5B1828; 'Arial'
 005B17D8    call       TFont.SetName
 005B17DD    mov        eax,dword ptr [ebx+5C]; TRaveFontMaster.Font:TRaveFont
 005B17E0    mov        edx,0A
 005B17E5    call       TFont.SetSize
 005B17EA    mov        eax,dword ptr [ebx+5C]; TRaveFontMaster.Font:TRaveFont
 005B17ED    mov        dl,byte ptr ds:[5B1830]; 0x0
 005B17F3    call       TFont.SetStyle
 005B17F8    mov        eax,dword ptr [ebx+5C]; TRaveFontMaster.Font:TRaveFont
 005B17FB    xor        edx,edx
 005B17FD    call       TFont.SetColor
 005B1802    mov        eax,ebx
 005B1804    cmp        byte ptr [ebp-1],0
>005B1808    je         005B1819
 005B180A    call       @AfterConstruction
 005B180F    pop        dword ptr fs:[0]
 005B1816    add        esp,0C
 005B1819    mov        eax,ebx
 005B181B    pop        esi
 005B181C    pop        ebx
 005B181D    pop        ecx
 005B181E    pop        ebp
 005B181F    ret
*}
end;

//005B1834
destructor TRaveFontMaster.Destroy;
begin
{*
 005B1834    push       ebx
 005B1835    push       esi
 005B1836    call       @BeforeDestruction
 005B183B    mov        ebx,edx
 005B183D    mov        esi,eax
 005B183F    lea        eax,[esi+5C]; TRaveFontMaster.Font:TRaveFont
 005B1842    call       FreeAndNil
 005B1847    mov        edx,ebx
 005B1849    and        dl,0FC
 005B184C    mov        eax,esi
 005B184E    call       TRaveComponent.Destroy
 005B1853    test       bl,bl
>005B1855    jle        005B185E
 005B1857    mov        eax,esi
 005B1859    call       @ClassDestroy
 005B185E    pop        esi
 005B185F    pop        ebx
 005B1860    ret
*}
end;

//005B1864
procedure TRaveFontMaster.SetFont(Self:TRaveFontMaster);
begin
{*
 005B1864    push       esi
 005B1865    mov        esi,eax
 005B1867    mov        eax,dword ptr [esi+5C]; TRaveFontMaster.Font:TRaveFont
 005B186A    mov        ecx,dword ptr [eax]
 005B186C    call       dword ptr [ecx+8]; TFont.Assign
 005B186F    mov        eax,esi
 005B1871    call       005A8540
 005B1876    pop        esi
 005B1877    ret
*}
end;

//005B1878
constructor TRavePageNumInit.Create(AOwner:TComponent);
begin
{*
 005B1878    push       ebx
 005B1879    push       esi
 005B187A    test       dl,dl
>005B187C    je         005B1886
 005B187E    add        esp,0FFFFFFF0
 005B1881    call       @ClassCreate
 005B1886    mov        ebx,edx
 005B1888    mov        esi,eax
 005B188A    xor        edx,edx
 005B188C    mov        eax,esi
 005B188E    call       TRaveComponent.Create
 005B1893    mov        dword ptr [esi+5C],1; TRavePageNumInit.InitValue:Integer
 005B189A    mov        eax,esi
 005B189C    test       bl,bl
>005B189E    je         005B18AF
 005B18A0    call       @AfterConstruction
 005B18A5    pop        dword ptr fs:[0]
 005B18AC    add        esp,0C
 005B18AF    mov        eax,esi
 005B18B1    pop        esi
 005B18B2    pop        ebx
 005B18B3    ret
*}
end;

//005B18B4
//procedure sub_005B18B4(?:?; ?:?);
//begin
{*
 005B18B4    push       ebx
 005B18B5    push       esi
 005B18B6    push       edi
 005B18B7    mov        edi,ecx
 005B18B9    mov        esi,edx
 005B18BB    mov        ebx,eax
 005B18BD    mov        ecx,edi
 005B18BF    mov        edx,esi
 005B18C1    mov        eax,ebx
 005B18C3    call       005A85B8
 005B18C8    mov        eax,dword ptr [ebx+60]; TRavePageNumInit.InitDataView:TRaveBaseDataView
 005B18CB    test       eax,eax
>005B18CD    je         005B18E3
 005B18CF    cmp        esi,eax
>005B18D1    jne        005B18E3
 005B18D3    mov        eax,edi
 005B18D5    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005B18DB    call       @AsClass
 005B18E0    mov        dword ptr [ebx+60],eax; TRavePageNumInit.InitDataView:TRaveBaseDataView
 005B18E3    pop        edi
 005B18E4    pop        esi
 005B18E5    pop        ebx
 005B18E6    ret
*}
//end;

//005B18E8
//procedure sub_005B18E8(?:?);
//begin
{*
 005B18E8    push       ebp
 005B18E9    mov        ebp,esp
 005B18EB    push       0
 005B18ED    push       0
 005B18EF    push       ebx
 005B18F0    push       esi
 005B18F1    mov        esi,edx
 005B18F3    mov        ebx,eax
 005B18F5    xor        eax,eax
 005B18F7    push       ebp
 005B18F8    push       5B1965
 005B18FD    push       dword ptr fs:[eax]
 005B1900    mov        dword ptr fs:[eax],esp
 005B1903    cmp        dword ptr [ebx+64],0; TRavePageNumInit.?f64:TRaveFieldName
>005B1907    je         005B193B
 005B1909    push       3FF00000
 005B190E    push       0
 005B1910    lea        eax,[ebp-8]
 005B1913    push       eax
 005B1914    mov        ecx,dword ptr [ebx+64]; TRavePageNumInit.?f64:TRaveFieldName
 005B1917    mov        edx,dword ptr [ebx+60]; TRavePageNumInit.InitDataView:TRaveBaseDataView
 005B191A    mov        eax,ebx
 005B191C    call       005A02E4
 005B1921    mov        eax,dword ptr [ebp-8]
 005B1924    lea        edx,[ebp-4]
 005B1927    call       005A5D34
 005B192C    mov        eax,dword ptr [ebp-4]
 005B192F    call       005A5E40
 005B1934    call       @TRUNC
>005B1939    jmp        005B193E
 005B193B    mov        eax,dword ptr [ebx+5C]; TRavePageNumInit.InitValue:Integer
 005B193E    sub        eax,dword ptr [esi+8D4]
 005B1944    mov        dword ptr [esi+9B8],eax
 005B194A    xor        eax,eax
 005B194C    pop        edx
 005B194D    pop        ecx
 005B194E    pop        ecx
 005B194F    mov        dword ptr fs:[eax],edx
 005B1952    push       5B196C
 005B1957    lea        eax,[ebp-8]
 005B195A    mov        edx,2
 005B195F    call       @LStrArrayClr
 005B1964    ret
<005B1965    jmp        @HandleFinally
<005B196A    jmp        005B1957
 005B196C    pop        esi
 005B196D    pop        ebx
 005B196E    pop        ecx
 005B196F    pop        ecx
 005B1970    pop        ebp
 005B1971    ret
*}
//end;

//005B1974
constructor TRaveCustomText.Create(AOwner:TComponent);
begin
{*
 005B1974    push       ebp
 005B1975    mov        ebp,esp
 005B1977    push       ecx
 005B1978    push       ebx
 005B1979    push       esi
 005B197A    test       dl,dl
>005B197C    je         005B1986
 005B197E    add        esp,0FFFFFFF0
 005B1981    call       @ClassCreate
 005B1986    mov        byte ptr [ebp-1],dl
 005B1989    mov        ebx,eax
 005B198B    xor        edx,edx
 005B198D    mov        eax,ebx
 005B198F    call       TRaveControl.Create
 005B1994    mov        dl,1
 005B1996    mov        eax,[005A78BC]; TRaveFont
 005B199B    call       TFont.Create; TRaveFont.Create
 005B19A0    mov        esi,eax
 005B19A2    mov        dword ptr [ebx+0E8],esi; TRaveCustomText.?fE8:TRaveFont
 005B19A8    mov        eax,esi
 005B19AA    mov        edx,5B1A10; 'Arial'
 005B19AF    call       TFont.SetName
 005B19B4    mov        eax,dword ptr [ebx+0E8]; TRaveCustomText.?fE8:TRaveFont
 005B19BA    mov        edx,0A
 005B19BF    call       TFont.SetSize
 005B19C4    mov        eax,dword ptr [ebx+0E8]; TRaveCustomText.?fE8:TRaveFont
 005B19CA    mov        dl,byte ptr ds:[5B1A18]; 0x0
 005B19D0    call       TFont.SetStyle
 005B19D5    mov        eax,dword ptr [ebx+0E8]; TRaveCustomText.?fE8:TRaveFont
 005B19DB    xor        edx,edx
 005B19DD    call       TFont.SetColor
 005B19E2    mov        byte ptr [ebx+0EC],1; TRaveCustomText.?fEC:byte
 005B19E9    mov        eax,ebx
 005B19EB    cmp        byte ptr [ebp-1],0
>005B19EF    je         005B1A00
 005B19F1    call       @AfterConstruction
 005B19F6    pop        dword ptr fs:[0]
 005B19FD    add        esp,0C
 005B1A00    mov        eax,ebx
 005B1A02    pop        esi
 005B1A03    pop        ebx
 005B1A04    pop        ecx
 005B1A05    pop        ebp
 005B1A06    ret
*}
end;

//005B1A1C
destructor TRaveCustomText.Destroy;
begin
{*
 005B1A1C    push       ebx
 005B1A1D    push       esi
 005B1A1E    call       @BeforeDestruction
 005B1A23    mov        ebx,edx
 005B1A25    mov        esi,eax
 005B1A27    lea        eax,[esi+0E8]; TRaveCustomText.?fE8:TRaveFont
 005B1A2D    call       FreeAndNil
 005B1A32    mov        edx,ebx
 005B1A34    and        dl,0FC
 005B1A37    mov        eax,esi
 005B1A39    call       TRaveControl.Destroy
 005B1A3E    test       bl,bl
>005B1A40    jle        005B1A49
 005B1A42    mov        eax,esi
 005B1A44    call       @ClassDestroy
 005B1A49    pop        esi
 005B1A4A    pop        ebx
 005B1A4B    ret
*}
end;

//005B1A4C
//procedure sub_005B1A4C(?:?; ?:?);
//begin
{*
 005B1A4C    push       ebx
 005B1A4D    push       esi
 005B1A4E    push       edi
 005B1A4F    mov        edi,ecx
 005B1A51    mov        esi,edx
 005B1A53    mov        ebx,eax
 005B1A55    mov        ecx,edi
 005B1A57    mov        edx,esi
 005B1A59    mov        eax,ebx
 005B1A5B    call       005A8E1C
 005B1A60    mov        eax,dword ptr [ebx+0F4]; TRaveCustomText.?fF4:TRaveFontMaster
 005B1A66    test       eax,eax
>005B1A68    je         005B1A84
 005B1A6A    cmp        esi,eax
>005B1A6C    jne        005B1A84
 005B1A6E    mov        eax,edi
 005B1A70    mov        edx,dword ptr ds:[5AFC74]; TRaveFontMaster
 005B1A76    call       @AsClass
 005B1A7B    mov        edx,eax
 005B1A7D    mov        eax,ebx
 005B1A7F    call       TRaveText.SetFontMirror
 005B1A84    pop        edi
 005B1A85    pop        esi
 005B1A86    pop        ebx
 005B1A87    ret
*}
//end;

//005B1A88
//procedure sub_005B1A88(?:TRaveText; ?:AnsiString);
//begin
{*
 005B1A88    push       ebx
 005B1A89    push       esi
 005B1A8A    push       edi
 005B1A8B    mov        esi,edx
 005B1A8D    mov        ebx,eax
 005B1A8F    mov        edi,dword ptr [ebx+0F8]; TRaveText.?fF8:dword
 005B1A95    test       edi,edi
>005B1A97    je         005B1ABE
 005B1A99    lea        eax,[edi+1C]
 005B1A9C    mov        edx,dword ptr [esi]
 005B1A9E    call       @LStrAsg
 005B1AA3    mov        eax,dword ptr [ebx+0F8]; TRaveText.?fF8:dword
 005B1AA9    mov        edx,dword ptr [eax]
 005B1AAB    call       dword ptr [edx+0C]
 005B1AAE    mov        eax,esi
 005B1AB0    mov        edx,dword ptr [ebx+0F8]; TRaveText.?fF8:dword
 005B1AB6    mov        edx,dword ptr [edx+1C]
 005B1AB9    call       @LStrAsg
 005B1ABE    pop        edi
 005B1ABF    pop        esi
 005B1AC0    pop        ebx
 005B1AC1    ret
*}
//end;

//005B1AC4
//procedure sub_005B1AC4(?:?; ?:?);
//begin
{*
 005B1AC4    push       ebp
 005B1AC5    mov        ebp,esp
 005B1AC7    push       0
 005B1AC9    push       ebx
 005B1ACA    push       esi
 005B1ACB    push       edi
 005B1ACC    mov        edi,ecx
 005B1ACE    mov        ebx,edx
 005B1AD0    mov        esi,eax
 005B1AD2    xor        eax,eax
 005B1AD4    push       ebp
 005B1AD5    push       5B1C36
 005B1ADA    push       dword ptr fs:[eax]
 005B1ADD    mov        dword ptr fs:[eax],esp
 005B1AE0    mov        eax,ebx
 005B1AE2    sub        al,2
>005B1AE4    jae        005B1AFE
 005B1AE6    lea        edx,[ebp-4]
 005B1AE9    mov        eax,edi
 005B1AEB    call       TFont.GetName
 005B1AF0    mov        edx,dword ptr [ebp-4]
 005B1AF3    mov        eax,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1AF9    call       TFont.SetName
 005B1AFE    mov        eax,ebx
 005B1B00    test       al,al
>005B1B02    je         005B1B08
 005B1B04    sub        al,2
>005B1B06    jne        005B1B1C
 005B1B08    mov        eax,edi
 005B1B0A    call       TFont.GetSize
 005B1B0F    mov        edx,eax
 005B1B11    mov        eax,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1B17    call       TFont.SetSize
 005B1B1C    mov        eax,ebx
 005B1B1E    test       al,al
>005B1B20    je         005B1B26
 005B1B22    sub        al,3
>005B1B24    jne        005B1B71
 005B1B26    mov        eax,edi
 005B1B28    call       TFont.GetStyle
 005B1B2D    test       al,1
>005B1B2F    je         005B1B51
 005B1B31    mov        eax,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1B37    call       TFont.GetStyle
 005B1B3C    mov        edx,eax
 005B1B3E    or         dl,byte ptr ds:[5B1C44]; 0x1
 005B1B44    mov        eax,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1B4A    call       TFont.SetStyle
>005B1B4F    jmp        005B1B71
 005B1B51    mov        eax,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1B57    call       TFont.GetStyle
 005B1B5C    mov        dl,byte ptr ds:[5B1C44]; 0x1
 005B1B62    not        edx
 005B1B64    and        dl,al
 005B1B66    mov        eax,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1B6C    call       TFont.SetStyle
 005B1B71    mov        eax,ebx
 005B1B73    test       al,al
>005B1B75    je         005B1B7B
 005B1B77    sub        al,4
>005B1B79    jne        005B1BC6
 005B1B7B    mov        eax,edi
 005B1B7D    call       TFont.GetStyle
 005B1B82    test       al,2
>005B1B84    je         005B1BA6
 005B1B86    mov        eax,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1B8C    call       TFont.GetStyle
 005B1B91    mov        edx,eax
 005B1B93    or         dl,byte ptr ds:[5B1C48]; 0x2
 005B1B99    mov        eax,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1B9F    call       TFont.SetStyle
>005B1BA4    jmp        005B1BC6
 005B1BA6    mov        eax,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1BAC    call       TFont.GetStyle
 005B1BB1    mov        dl,byte ptr ds:[5B1C48]; 0x2
 005B1BB7    not        edx
 005B1BB9    and        dl,al
 005B1BBB    mov        eax,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1BC1    call       TFont.SetStyle
 005B1BC6    test       bl,bl
>005B1BC8    je         005B1BCF
 005B1BCA    sub        bl,5
>005B1BCD    jne        005B1C16
 005B1BCF    mov        eax,edi
 005B1BD1    call       TFont.GetStyle
 005B1BD6    test       al,4
>005B1BD8    je         005B1BF8
 005B1BDA    mov        ebx,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1BE0    mov        eax,ebx
 005B1BE2    call       TFont.GetStyle
 005B1BE7    mov        edx,eax
 005B1BE9    or         dl,byte ptr ds:[5B1C4C]; 0x4
 005B1BEF    mov        eax,ebx
 005B1BF1    call       TFont.SetStyle
>005B1BF6    jmp        005B1C16
 005B1BF8    mov        ebx,dword ptr [esi+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1BFE    mov        eax,ebx
 005B1C00    call       TFont.GetStyle
 005B1C05    mov        dl,byte ptr ds:[5B1C4C]; 0x4
 005B1C0B    not        edx
 005B1C0D    and        dl,al
 005B1C0F    mov        eax,ebx
 005B1C11    call       TFont.SetStyle
 005B1C16    mov        eax,esi
 005B1C18    mov        edx,dword ptr [eax]
 005B1C1A    call       dword ptr [edx+174]; TRaveCalcText.sub_005AAB94
 005B1C20    xor        eax,eax
 005B1C22    pop        edx
 005B1C23    pop        ecx
 005B1C24    pop        ecx
 005B1C25    mov        dword ptr fs:[eax],edx
 005B1C28    push       5B1C3D
 005B1C2D    lea        eax,[ebp-4]
 005B1C30    call       @LStrClr
 005B1C35    ret
<005B1C36    jmp        @HandleFinally
<005B1C3B    jmp        005B1C2D
 005B1C3D    pop        edi
 005B1C3E    pop        esi
 005B1C3F    pop        ebx
 005B1C40    pop        ecx
 005B1C41    pop        ebp
 005B1C42    ret
*}
//end;

//005B1C50
//function sub_005B1C50:?;
//begin
{*
 005B1C50    cmp        dword ptr [eax+0F4],0; TRaveCalcText.?fF4:TRaveFontMaster
>005B1C57    je         005B1C5C
 005B1C59    xor        eax,eax
 005B1C5B    ret
 005B1C5C    mov        eax,dword ptr [eax+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1C62    ret
*}
//end;

//005B1C64
//procedure TRaveText.SetText(?:AnsiString);
//begin
{*
 005B1C64    push       ebp
 005B1C65    mov        ebp,esp
 005B1C67    push       ecx
 005B1C68    push       ebx
 005B1C69    mov        dword ptr [ebp-4],edx
 005B1C6C    mov        ebx,eax
 005B1C6E    mov        eax,dword ptr [ebp-4]
 005B1C71    call       @LStrAddRef
 005B1C76    xor        eax,eax
 005B1C78    push       ebp
 005B1C79    push       5B1CBF
 005B1C7E    push       dword ptr fs:[eax]
 005B1C81    mov        dword ptr fs:[eax],esp
 005B1C84    mov        eax,dword ptr [ebx+0F0]; TRaveText.?fF0:String
 005B1C8A    mov        edx,dword ptr [ebp-4]
 005B1C8D    call       @LStrCmp
>005B1C92    je         005B1CA9
 005B1C94    lea        eax,[ebx+0F0]; TRaveText.?fF0:String
 005B1C9A    mov        edx,dword ptr [ebp-4]
 005B1C9D    call       @LStrAsg
 005B1CA2    mov        eax,ebx
 005B1CA4    call       005A8540
 005B1CA9    xor        eax,eax
 005B1CAB    pop        edx
 005B1CAC    pop        ecx
 005B1CAD    pop        ecx
 005B1CAE    mov        dword ptr fs:[eax],edx
 005B1CB1    push       5B1CC6
 005B1CB6    lea        eax,[ebp-4]
 005B1CB9    call       @LStrClr
 005B1CBE    ret
<005B1CBF    jmp        @HandleFinally
<005B1CC4    jmp        005B1CB6
 005B1CC6    pop        ebx
 005B1CC7    pop        ecx
 005B1CC8    pop        ebp
 005B1CC9    ret
*}
//end;

//005B1CCC
//procedure TRaveText.GetText(?:?);
//begin
{*
 005B1CCC    push       ebx
 005B1CCD    push       esi
 005B1CCE    mov        esi,edx
 005B1CD0    mov        ebx,eax
 005B1CD2    mov        eax,esi
 005B1CD4    mov        edx,dword ptr [ebx+0F0]; TRaveText.?fF0:String
 005B1CDA    call       @LStrAsg
 005B1CDF    pop        esi
 005B1CE0    pop        ebx
 005B1CE1    ret
*}
//end;

//005B1CE4
procedure TRaveText.SetColor;
begin
{*
 005B1CE4    push       ebx
 005B1CE5    mov        ebx,eax
 005B1CE7    mov        eax,dword ptr [ebx+0E8]; TRaveText.?fE8:TRaveFont
 005B1CED    call       TFont.SetColor
 005B1CF2    mov        eax,ebx
 005B1CF4    call       005A8540
 005B1CF9    pop        ebx
 005B1CFA    ret
*}
end;

//005B1CFC
//function TRaveText.GetColor:?;
//begin
{*
 005B1CFC    cmp        dword ptr [eax+0F4],0; TRaveText.?fF4:TRaveFontMaster
>005B1D03    je         005B1D0B
 005B1D05    mov        eax,1FFFFFFF
 005B1D0A    ret
 005B1D0B    mov        eax,dword ptr [eax+0E8]; TRaveText.?fE8:TRaveFont
 005B1D11    mov        eax,dword ptr [eax+18]; TRaveFont.Color:TColor
 005B1D14    ret
*}
//end;

//005B1D18
//procedure TRaveText.SetFontMirror(Self:TRaveCustomText; ?:TRaveFontMaster);
//begin
{*
 005B1D18    mov        dword ptr [eax+0F4],edx; TRaveText.?fF4:TRaveFontMaster
 005B1D1E    call       005A8540
 005B1D23    ret
*}
//end;

//005B1D24
procedure TRaveText.SetFont(Self:TRaveText);
begin
{*
 005B1D24    push       esi
 005B1D25    mov        esi,eax
 005B1D27    mov        eax,dword ptr [esi+0E8]; TRaveText.?fE8:TRaveFont
 005B1D2D    mov        ecx,dword ptr [eax]
 005B1D2F    call       dword ptr [ecx+8]; TFont.Assign
 005B1D32    mov        eax,esi
 005B1D34    call       005A8540
 005B1D39    pop        esi
 005B1D3A    ret
*}
end;

//005B1D3C
//procedure TRaveText.SetFontJustify(?:?);
//begin
{*
 005B1D3C    cmp        dl,byte ptr [eax+0EC]; TRaveText.?fEC:byte
>005B1D42    je         005B1D4F
 005B1D44    mov        byte ptr [eax+0EC],dl; TRaveText.?fEC:byte
 005B1D4A    call       005A8540
 005B1D4F    ret
*}
//end;

//005B1D50
//function TRaveText.GetFontJustify:?;
//begin
{*
 005B1D50    mov        al,byte ptr [eax+0EC]; TRaveText.?fEC:byte
 005B1D56    ret
*}
//end;

//005B1D58
constructor TRaveText.Create(AOwner:TComponent);
begin
{*
 005B1D58    push       ebx
 005B1D59    push       esi
 005B1D5A    test       dl,dl
>005B1D5C    je         005B1D66
 005B1D5E    add        esp,0FFFFFFF0
 005B1D61    call       @ClassCreate
 005B1D66    mov        ebx,edx
 005B1D68    mov        esi,eax
 005B1D6A    xor        edx,edx
 005B1D6C    mov        eax,esi
 005B1D6E    call       TRaveCustomText.Create
 005B1D73    mov        byte ptr [esi+100],0; TRaveText.Truncate:Boolean
 005B1D7A    push       3FF00000
 005B1D7F    push       0
 005B1D81    mov        eax,esi
 005B1D83    mov        edx,dword ptr [eax]
 005B1D85    call       dword ptr [edx+140]; TRaveText.SetWidth
 005B1D8B    mov        eax,esi
 005B1D8D    test       bl,bl
>005B1D8F    je         005B1DA0
 005B1D91    call       @AfterConstruction
 005B1D96    pop        dword ptr fs:[0]
 005B1D9D    add        esp,0C
 005B1DA0    mov        eax,esi
 005B1DA2    pop        esi
 005B1DA3    pop        ebx
 005B1DA4    ret
*}
end;

//005B1DA8
procedure sub_005B1DA8;
begin
{*
 005B1DA8    push       ebx
 005B1DA9    push       esi
 005B1DAA    add        esp,0FFFFFFF4
 005B1DAD    mov        ebx,eax
 005B1DAF    mov        esi,dword ptr [ebx+0F4]; TRaveCalcText.?fF4:TRaveFontMaster
 005B1DB5    test       esi,esi
>005B1DB7    je         005B1DDA
 005B1DB9    mov        eax,dword ptr [esi+5C]; TRaveFontMaster.Font:TRaveFont
 005B1DBC    call       TFont.GetSize
 005B1DC1    cdq
 005B1DC2    xor        eax,edx
 005B1DC4    sub        eax,edx
 005B1DC6    mov        dword ptr [esp+8],eax
 005B1DCA    fild       dword ptr [esp+8]
 005B1DCE    fdiv       dword ptr ds:[5B1E08]; 60:Single
 005B1DD4    fstp       qword ptr [esp]
 005B1DD7    wait
>005B1DD8    jmp        005B1DFC
 005B1DDA    mov        eax,dword ptr [ebx+0E8]; TRaveCalcText.?fE8:TRaveFont
 005B1DE0    call       TFont.GetSize
 005B1DE5    cdq
 005B1DE6    xor        eax,edx
 005B1DE8    sub        eax,edx
 005B1DEA    mov        dword ptr [esp+8],eax
 005B1DEE    fild       dword ptr [esp+8]
 005B1DF2    fdiv       dword ptr ds:[5B1E08]; 60:Single
 005B1DF8    fstp       qword ptr [esp]
 005B1DFB    wait
 005B1DFC    fld        qword ptr [esp]
 005B1DFF    add        esp,0C
 005B1E02    pop        esi
 005B1E03    pop        ebx
 005B1E04    ret
*}
end;

//005B1E0C
procedure sub_005B1E0C;
begin
{*
 005B1E0C    push       ebx
 005B1E0D    add        esp,0FFFFFFF0
 005B1E10    mov        ebx,eax
 005B1E12    mov        eax,ebx
 005B1E14    mov        edx,dword ptr [eax]
 005B1E16    call       dword ptr [edx+5C]; TRaveCalcText.sub_005A96D4
 005B1E19    fstp       qword ptr [esp]
 005B1E1C    wait
 005B1E1D    mov        eax,ebx
 005B1E1F    mov        edx,dword ptr [eax]
 005B1E21    call       dword ptr [edx+60]; TRaveCalcText.sub_005A970C
 005B1E24    fstp       qword ptr [esp+8]
 005B1E28    wait
 005B1E29    push       0F7
 005B1E2B    push       dword ptr [esp+8]
 005B1E2F    push       dword ptr [esp+8]
 005B1E33    mov        eax,ebx
 005B1E35    mov        edx,dword ptr [eax]
 005B1E37    call       dword ptr [edx+144]; TRaveCalcText.sub_005B1DA8
 005B1E3D    fdiv       dword ptr ds:[5B1EA0]; 2:Single
 005B1E43    fadd       qword ptr [esp+14]
 005B1E47    add        esp,0FFFFFFF8
 005B1E4A    fstp       qword ptr [esp]
 005B1E4D    wait
 005B1E4E    mov        ecx,ebx
 005B1E50    mov        dl,3
 005B1E52    mov        eax,dword ptr [ebx+40]; TRaveCalcText.?f40:TComponent
 005B1E55    call       005ABBD4
 005B1E5A    push       0F7
 005B1E5C    mov        eax,ebx
 005B1E5E    mov        edx,dword ptr [eax]
 005B1E60    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005B1E66    fadd       qword ptr [esp+4]
 005B1E6A    add        esp,0FFFFFFF8
 005B1E6D    fstp       qword ptr [esp]
 005B1E70    wait
 005B1E71    mov        eax,ebx
 005B1E73    mov        edx,dword ptr [eax]
 005B1E75    call       dword ptr [edx+144]; TRaveCalcText.sub_005B1DA8
 005B1E7B    fdiv       dword ptr ds:[5B1EA0]; 2:Single
 005B1E81    fadd       qword ptr [esp+14]
 005B1E85    add        esp,0FFFFFFF8
 005B1E88    fstp       qword ptr [esp]
 005B1E8B    wait
 005B1E8C    mov        ecx,ebx
 005B1E8E    mov        dl,4
 005B1E90    mov        eax,dword ptr [ebx+40]; TRaveCalcText.?f40:TComponent
 005B1E93    call       005ABBD4
 005B1E98    add        esp,10
 005B1E9B    pop        ebx
 005B1E9C    ret
*}
end;

//005B1EA4
procedure sub_005B1EA4;
begin
{*
 005B1EA4    push       ebx
 005B1EA5    add        esp,0FFFFFFF0
 005B1EA8    mov        ebx,eax
 005B1EAA    mov        eax,ebx
 005B1EAC    mov        edx,dword ptr [eax]
 005B1EAE    call       dword ptr [edx+5C]; TRaveCalcText.sub_005A96D4
 005B1EB1    fstp       qword ptr [esp]
 005B1EB4    wait
 005B1EB5    mov        eax,ebx
 005B1EB7    mov        edx,dword ptr [eax]
 005B1EB9    call       dword ptr [edx+60]; TRaveCalcText.sub_005A970C
 005B1EBC    fstp       qword ptr [esp+8]
 005B1EC0    wait
 005B1EC1    push       dword ptr [esp+4]
 005B1EC5    push       dword ptr [esp+4]
 005B1EC9    mov        eax,ebx
 005B1ECB    mov        edx,dword ptr [eax]
 005B1ECD    call       dword ptr [edx+144]; TRaveCalcText.sub_005B1DA8
 005B1ED3    fdiv       dword ptr ds:[5B1F30]; 2:Single
 005B1ED9    fadd       qword ptr [esp+10]
 005B1EDD    add        esp,0FFFFFFF8
 005B1EE0    fstp       qword ptr [esp]
 005B1EE3    wait
 005B1EE4    mov        ecx,ebx
 005B1EE6    mov        dl,3
 005B1EE8    mov        eax,dword ptr [ebx+40]; TRaveCalcText.?f40:TComponent
 005B1EEB    call       005ABC08
 005B1EF0    mov        eax,ebx
 005B1EF2    mov        edx,dword ptr [eax]
 005B1EF4    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005B1EFA    fadd       qword ptr [esp]
 005B1EFD    add        esp,0FFFFFFF8
 005B1F00    fstp       qword ptr [esp]
 005B1F03    wait
 005B1F04    mov        eax,ebx
 005B1F06    mov        edx,dword ptr [eax]
 005B1F08    call       dword ptr [edx+144]; TRaveCalcText.sub_005B1DA8
 005B1F0E    fdiv       dword ptr ds:[5B1F30]; 2:Single
 005B1F14    fadd       qword ptr [esp+10]
 005B1F18    add        esp,0FFFFFFF8
 005B1F1B    fstp       qword ptr [esp]
 005B1F1E    wait
 005B1F1F    mov        ecx,ebx
 005B1F21    mov        dl,4
 005B1F23    mov        eax,dword ptr [ebx+40]; TRaveCalcText.?f40:TComponent
 005B1F26    call       005ABC08
 005B1F2B    add        esp,10
 005B1F2E    pop        ebx
 005B1F2F    ret
*}
end;

//005B1F34
procedure sub_005B1F34();
begin
{*
 005B1F34    ret
*}
end;

//005B1F38
//procedure sub_005B1F38(?:?);
//begin
{*
 005B1F38    push       ebp
 005B1F39    mov        ebp,esp
 005B1F3B    push       0
 005B1F3D    push       0
 005B1F3F    push       ebx
 005B1F40    push       esi
 005B1F41    mov        esi,edx
 005B1F43    mov        ebx,eax
 005B1F45    xor        eax,eax
 005B1F47    push       ebp
 005B1F48    push       5B2058
 005B1F4D    push       dword ptr fs:[eax]
 005B1F50    mov        dword ptr fs:[eax],esp
 005B1F53    mov        eax,ebx
 005B1F55    mov        edx,dword ptr [eax]
 005B1F57    call       dword ptr [edx+0B8]; TRaveText.sub_005AAA88
 005B1F5D    test       al,al
>005B1F5F    je         005B203D
 005B1F65    lea        edx,[ebp-4]
 005B1F68    mov        eax,ebx
 005B1F6A    mov        ecx,dword ptr [eax]
 005B1F6C    call       dword ptr [ecx+0E8]; TRaveText.GetText
 005B1F72    lea        edx,[ebp-4]
 005B1F75    mov        eax,ebx
 005B1F77    call       005B1A88
 005B1F7C    mov        eax,dword ptr [ebx+0F4]; TRaveText.?fF4:TRaveFontMaster
 005B1F82    test       eax,eax
>005B1F84    je         005B1F92
 005B1F86    mov        edx,dword ptr [eax+5C]; TRaveFontMaster.Font:TRaveFont
 005B1F89    mov        eax,esi
 005B1F8B    call       00586F2C
>005B1F90    jmp        005B1F9F
 005B1F92    mov        edx,dword ptr [ebx+0E8]; TRaveText.?fE8:TRaveFont
 005B1F98    mov        eax,esi
 005B1F9A    call       00586F2C
 005B1F9F    mov        edx,dword ptr [ebx+104]; TRaveText.Rotation:Integer
 005B1FA5    mov        eax,esi
 005B1FA7    call       005885EC
 005B1FAC    mov        eax,ebx
 005B1FAE    mov        edx,dword ptr [eax]
 005B1FB0    call       dword ptr [edx+60]; TRaveText.sub_005A970C
 005B1FB3    add        esp,0FFFFFFF8
 005B1FB6    fstp       qword ptr [esp]
 005B1FB9    wait
 005B1FBA    mov        eax,esi
 005B1FBC    call       005889EC
 005B1FC1    cmp        byte ptr [ebx+100],0; TRaveText.Truncate:Boolean
>005B1FC8    je         005B1FF3
 005B1FCA    mov        eax,ebx
 005B1FCC    mov        edx,dword ptr [eax]
 005B1FCE    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005B1FD4    add        esp,0FFFFFFF8
 005B1FD7    fstp       qword ptr [esp]
 005B1FDA    wait
 005B1FDB    lea        ecx,[ebp-8]
 005B1FDE    mov        edx,dword ptr [ebp-4]
 005B1FE1    mov        eax,esi
 005B1FE3    call       0058685C
 005B1FE8    mov        edx,dword ptr [ebp-8]
 005B1FEB    lea        eax,[ebp-4]
 005B1FEE    call       @LStrLAsg
 005B1FF3    mov        eax,ebx
 005B1FF5    mov        edx,dword ptr [eax]
 005B1FF7    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005B1FFD    fstp       qword ptr [esi+9B0]
 005B2003    wait
 005B2004    mov        eax,ebx
 005B2006    mov        edx,dword ptr [eax]
 005B2008    call       dword ptr [edx+5C]; TRaveText.sub_005A96D4
 005B200B    add        esp,0FFFFFFF8
 005B200E    fstp       qword ptr [esp]
 005B2011    wait
 005B2012    push       0
 005B2014    push       0
 005B2016    mov        eax,ebx
 005B2018    mov        edx,dword ptr [eax]
 005B201A    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005B2020    add        esp,0FFFFFFF8
 005B2023    fstp       qword ptr [esp]
 005B2026    wait
 005B2027    mov        eax,ebx
 005B2029    mov        edx,dword ptr [eax]
 005B202B    call       dword ptr [edx+0F0]; TRaveText.GetFontJustify
 005B2031    mov        ecx,eax
 005B2033    mov        edx,dword ptr [ebp-4]
 005B2036    mov        eax,esi
 005B2038    call       005864B0
 005B203D    xor        eax,eax
 005B203F    pop        edx
 005B2040    pop        ecx
 005B2041    pop        ecx
 005B2042    mov        dword ptr fs:[eax],edx
 005B2045    push       5B205F
 005B204A    lea        eax,[ebp-8]
 005B204D    mov        edx,2
 005B2052    call       @LStrArrayClr
 005B2057    ret
<005B2058    jmp        @HandleFinally
<005B205D    jmp        005B204A
 005B205F    pop        esi
 005B2060    pop        ebx
 005B2061    pop        ecx
 005B2062    pop        ecx
 005B2063    pop        ebp
 005B2064    ret
*}
//end;

//005B2068
constructor TRaveSection.Create(AOwner:TComponent);
begin
{*
 005B2068    push       ebx
 005B2069    push       esi
 005B206A    test       dl,dl
>005B206C    je         005B2076
 005B206E    add        esp,0FFFFFFF0
 005B2071    call       @ClassCreate
 005B2076    mov        ebx,edx
 005B2078    mov        esi,eax
 005B207A    xor        edx,edx
 005B207C    mov        eax,esi
 005B207E    call       TRaveContainerControl.Create
 005B2083    mov        al,byte ptr [esi+30]; TRaveSection.?f30:byte
 005B2086    or         al,byte ptr ds:[5B20CC]; 0x1
 005B208C    mov        byte ptr [esi+30],al; TRaveSection.?f30:byte
 005B208F    push       40080000
 005B2094    push       0
 005B2096    mov        eax,esi
 005B2098    mov        edx,dword ptr [eax]
 005B209A    call       dword ptr [edx+148]; TRaveSection.SetHeight
 005B20A0    push       40080000
 005B20A5    push       0
 005B20A7    mov        eax,esi
 005B20A9    mov        edx,dword ptr [eax]
 005B20AB    call       dword ptr [edx+140]; TRaveText.SetWidth
 005B20B1    mov        eax,esi
 005B20B3    test       bl,bl
>005B20B5    je         005B20C6
 005B20B7    call       @AfterConstruction
 005B20BC    pop        dword ptr fs:[0]
 005B20C3    add        esp,0C
 005B20C6    mov        eax,esi
 005B20C8    pop        esi
 005B20C9    pop        ebx
 005B20CA    ret
*}
end;

//005B20D0
//procedure sub_005B20D0(?:?);
//begin
{*
 005B20D0    push       ebx
 005B20D1    push       esi
 005B20D2    add        esp,0FFFFFFB4
 005B20D5    mov        esi,edx
 005B20D7    mov        ebx,eax
 005B20D9    mov        eax,ebx
 005B20DB    mov        edx,dword ptr [eax]
 005B20DD    call       dword ptr [edx+0B8]; TRaveSection.sub_005AAA88
 005B20E3    test       al,al
>005B20E5    je         005B229C
 005B20EB    cmp        byte ptr [ebx+0F0],0; TRaveSection.WasteFit:Boolean
>005B20F2    je         005B2293
 005B20F8    mov        eax,esi
 005B20FA    call       0058443C
 005B20FF    fld        tbyte ptr ds:[5B22A4]; 0,01:Extended
 005B2105    faddp      st(1),st
 005B2107    fstp       qword ptr [esp]
 005B210A    wait
 005B210B    mov        eax,esi
 005B210D    call       0058447C
 005B2112    fld        tbyte ptr ds:[5B22A4]; 0,01:Extended
 005B2118    faddp      st(1),st
 005B211A    fstp       qword ptr [esp+8]
 005B211E    wait
 005B211F    mov        eax,esi
 005B2121    call       0058445C
 005B2126    fld        tbyte ptr ds:[5B22A4]; 0,01:Extended
 005B212C    faddp      st(1),st
 005B212E    fstp       tbyte ptr [esp+20]
 005B2132    wait
 005B2133    mov        eax,esi
 005B2135    call       005846EC
 005B213A    fld        tbyte ptr [esp+20]
 005B213E    fsubp      st(1),st
 005B2140    fstp       qword ptr [esp+10]
 005B2144    wait
 005B2145    mov        eax,esi
 005B2147    call       0058449C
 005B214C    fld        tbyte ptr ds:[5B22A4]; 0,01:Extended
 005B2152    faddp      st(1),st
 005B2154    fstp       tbyte ptr [esp+20]
 005B2158    wait
 005B2159    mov        eax,esi
 005B215B    call       00584684
 005B2160    fld        tbyte ptr [esp+20]
 005B2164    fsubp      st(1),st
 005B2166    fstp       qword ptr [esp+18]
 005B216A    wait
 005B216B    mov        eax,ebx
 005B216D    mov        edx,dword ptr [eax]
 005B216F    call       dword ptr [edx+12C]; TRaveText.GetLeft
 005B2175    add        esp,0FFFFFFF8
 005B2178    fstp       qword ptr [esp]
 005B217B    wait
 005B217C    push       dword ptr [esp+0C]
 005B2180    push       dword ptr [esp+0C]
 005B2184    call       005A5B24
 005B2189    test       al,al
>005B218B    jne        005B21F1
 005B218D    mov        eax,ebx
 005B218F    mov        edx,dword ptr [eax]
 005B2191    call       dword ptr [edx+134]; TRaveText.GetTop
 005B2197    add        esp,0FFFFFFF8
 005B219A    fstp       qword ptr [esp]
 005B219D    wait
 005B219E    push       dword ptr [esp+14]
 005B21A2    push       dword ptr [esp+14]
 005B21A6    call       005A5B24
 005B21AB    test       al,al
>005B21AD    jne        005B21F1
 005B21AF    mov        eax,ebx
 005B21B1    call       005A95B4
 005B21B6    add        esp,0FFFFFFF8
 005B21B9    fstp       qword ptr [esp]
 005B21BC    wait
 005B21BD    push       dword ptr [esp+1C]
 005B21C1    push       dword ptr [esp+1C]
 005B21C5    call       005A5B08
 005B21CA    test       al,al
>005B21CC    jne        005B21F1
 005B21CE    mov        eax,ebx
 005B21D0    call       TRaveBaseBarCode.GetBottom
 005B21D5    add        esp,0FFFFFFF8
 005B21D8    fstp       qword ptr [esp]
 005B21DB    wait
 005B21DC    push       dword ptr [esp+24]
 005B21E0    push       dword ptr [esp+24]
 005B21E4    call       005A5B08
 005B21E9    test       al,al
>005B21EB    je         005B2293
 005B21F1    mov        eax,ebx
 005B21F3    mov        edx,dword ptr [eax]
 005B21F5    call       dword ptr [edx+12C]; TRaveText.GetLeft
 005B21FB    add        esp,0FFFFFFF8
 005B21FE    fstp       qword ptr [esp]
 005B2201    wait
 005B2202    push       dword ptr [esp+0C]
 005B2206    push       dword ptr [esp+0C]
 005B220A    call       005A5AB8
 005B220F    add        esp,0FFFFFFF8
 005B2212    fstp       qword ptr [esp]
 005B2215    wait
 005B2216    mov        eax,ebx
 005B2218    mov        edx,dword ptr [eax]
 005B221A    call       dword ptr [edx+134]; TRaveText.GetTop
 005B2220    add        esp,0FFFFFFF8
 005B2223    fstp       qword ptr [esp]
 005B2226    wait
 005B2227    push       dword ptr [esp+1C]
 005B222B    push       dword ptr [esp+1C]
 005B222F    call       005A5AB8
 005B2234    add        esp,0FFFFFFF8
 005B2237    fstp       qword ptr [esp]
 005B223A    wait
 005B223B    mov        eax,ebx
 005B223D    call       005A95B4
 005B2242    add        esp,0FFFFFFF8
 005B2245    fstp       qword ptr [esp]
 005B2248    wait
 005B2249    push       dword ptr [esp+2C]
 005B224D    push       dword ptr [esp+2C]
 005B2251    call       005A5A84
 005B2256    add        esp,0FFFFFFF8
 005B2259    fstp       qword ptr [esp]
 005B225C    wait
 005B225D    mov        eax,ebx
 005B225F    call       TRaveBaseBarCode.GetBottom
 005B2264    add        esp,0FFFFFFF8
 005B2267    fstp       qword ptr [esp]
 005B226A    wait
 005B226B    push       dword ptr [esp+3C]
 005B226F    push       dword ptr [esp+3C]
 005B2273    call       005A5A84
 005B2278    add        esp,0FFFFFFF8
 005B227B    fstp       qword ptr [esp]
 005B227E    wait
 005B227F    lea        eax,[esp+4C]
 005B2283    call       005A5B94
 005B2288    lea        edx,[esp+2C]
 005B228C    mov        eax,ebx
 005B228E    call       005AA190
 005B2293    mov        edx,esi
 005B2295    mov        eax,ebx
 005B2297    call       005AAAB4
 005B229C    add        esp,4C
 005B229F    pop        esi
 005B22A0    pop        ebx
 005B22A1    ret
*}
//end;

//005B22B0
//procedure sub_005B22B0(?:?);
//begin
{*
 005B22B0    push       ebx
 005B22B1    push       esi
 005B22B2    mov        esi,edx
 005B22B4    mov        ebx,eax
 005B22B6    mov        eax,808080
 005B22BB    call       005A54B0
 005B22C0    mov        edx,eax
 005B22C2    mov        eax,dword ptr [esi+10]
 005B22C5    call       TPen.SetColor
 005B22CA    mov        dl,2
 005B22CC    mov        eax,dword ptr [esi+10]
 005B22CF    call       TPen.SetStyle
 005B22D4    mov        dl,4
 005B22D6    mov        eax,dword ptr [esi+10]
 005B22D9    call       TPen.SetMode
 005B22DE    mov        edx,1
 005B22E3    mov        eax,dword ptr [esi+10]
 005B22E6    call       TPen.SetWidth
 005B22EB    mov        eax,0FFFFFF
 005B22F0    call       005A54B0
 005B22F5    mov        edx,eax
 005B22F7    mov        eax,dword ptr [esi+14]
 005B22FA    call       TBrush.SetColor
 005B22FF    mov        dl,1
 005B2301    mov        eax,dword ptr [esi+14]
 005B2304    call       TBrush.SetStyle
 005B2309    mov        eax,ebx
 005B230B    mov        edx,dword ptr [eax]
 005B230D    call       dword ptr [edx+64]; TRaveSection.sub_005A9744
 005B2310    add        esp,0FFFFFFF8
 005B2313    fstp       qword ptr [esp]
 005B2316    wait
 005B2317    mov        eax,ebx
 005B2319    call       005AAE14
 005B231E    inc        eax
 005B231F    push       eax
 005B2320    mov        eax,ebx
 005B2322    mov        edx,dword ptr [eax]
 005B2324    call       dword ptr [edx+68]; TRaveSection.sub_005A9770
 005B2327    add        esp,0FFFFFFF8
 005B232A    fstp       qword ptr [esp]
 005B232D    wait
 005B232E    mov        eax,ebx
 005B2330    call       005AAE30
 005B2335    inc        eax
 005B2336    push       eax
 005B2337    mov        eax,ebx
 005B2339    mov        edx,dword ptr [eax]
 005B233B    call       dword ptr [edx+60]; TRaveSection.sub_005A970C
 005B233E    add        esp,0FFFFFFF8
 005B2341    fstp       qword ptr [esp]
 005B2344    wait
 005B2345    mov        eax,ebx
 005B2347    call       005AAE30
 005B234C    push       eax
 005B234D    mov        eax,ebx
 005B234F    mov        edx,dword ptr [eax]
 005B2351    call       dword ptr [edx+5C]; TRaveSection.sub_005A96D4
 005B2354    add        esp,0FFFFFFF8
 005B2357    fstp       qword ptr [esp]
 005B235A    wait
 005B235B    mov        eax,ebx
 005B235D    call       005AAE14
 005B2362    mov        edx,eax
 005B2364    mov        eax,esi
 005B2366    pop        ecx
 005B2367    call       TCanvas.Rectangle
 005B236C    pop        esi
 005B236D    pop        ebx
 005B236E    ret
*}
//end;

//005B2370
constructor TRaveBaseImage.Create(AOwner:TComponent);
begin
{*
 005B2370    push       ebx
 005B2371    push       esi
 005B2372    test       dl,dl
>005B2374    je         005B237E
 005B2376    add        esp,0FFFFFFF0
 005B2379    call       @ClassCreate
 005B237E    mov        ebx,edx
 005B2380    mov        esi,eax
 005B2382    xor        edx,edx
 005B2384    mov        eax,esi
 005B2386    call       TRaveControl.Create
 005B238B    push       40080000
 005B2390    push       0
 005B2392    mov        eax,esi
 005B2394    mov        edx,dword ptr [eax]
 005B2396    call       dword ptr [edx+148]; TRaveSection.SetHeight
 005B239C    push       40080000
 005B23A1    push       0
 005B23A3    mov        eax,esi
 005B23A5    mov        edx,dword ptr [eax]
 005B23A7    call       dword ptr [edx+140]; TRaveText.SetWidth
 005B23AD    mov        eax,esi
 005B23AF    test       bl,bl
>005B23B1    je         005B23C2
 005B23B3    call       @AfterConstruction
 005B23B8    pop        dword ptr fs:[0]
 005B23BF    add        esp,0C
 005B23C2    mov        eax,esi
 005B23C4    pop        esi
 005B23C5    pop        ebx
 005B23C6    ret
*}
end;

//005B23C8
destructor TRaveBaseImage.Destroy;
begin
{*
 005B23C8    push       ebx
 005B23C9    push       esi
 005B23CA    call       @BeforeDestruction
 005B23CF    mov        ebx,edx
 005B23D1    mov        esi,eax
 005B23D3    mov        eax,esi
 005B23D5    mov        edx,dword ptr [eax]
 005B23D7    call       dword ptr [edx+184]; @AbstractError
 005B23DD    mov        edx,ebx
 005B23DF    and        dl,0FC
 005B23E2    mov        eax,esi
 005B23E4    call       TRaveControl.Destroy
 005B23E9    test       bl,bl
>005B23EB    jle        005B23F4
 005B23ED    mov        eax,esi
 005B23EF    call       @ClassDestroy
 005B23F4    pop        esi
 005B23F5    pop        ebx
 005B23F6    ret
*}
end;

//005B23F8
//procedure sub_005B23F8(?:TRaveMetaFile; ?:TFileName);
//begin
{*
 005B23F8    push       ebp
 005B23F9    mov        ebp,esp
 005B23FB    add        esp,0FFFFFFF8
 005B23FE    push       ebx
 005B23FF    mov        dword ptr [ebp-4],edx
 005B2402    mov        ebx,eax
 005B2404    mov        eax,dword ptr [ebp-4]
 005B2407    call       @LStrAddRef
 005B240C    xor        eax,eax
 005B240E    push       ebp
 005B240F    push       5B248E
 005B2414    push       dword ptr fs:[eax]
 005B2417    mov        dword ptr fs:[eax],esp
 005B241A    cmp        dword ptr [ebp-4],0
>005B241E    je         005B2478
 005B2420    mov        eax,dword ptr [ebp-4]
 005B2423    call       FileExists
 005B2428    test       al,al
>005B242A    je         005B2478
 005B242C    push       0
 005B242E    mov        ecx,dword ptr [ebp-4]
 005B2431    mov        dl,1
 005B2433    mov        eax,[0041CB08]; TFileStream
 005B2438    call       TFileStream.Create; TFileStream.Create
 005B243D    mov        dword ptr [ebp-8],eax
 005B2440    xor        eax,eax
 005B2442    push       ebp
 005B2443    push       5B2471
 005B2448    push       dword ptr fs:[eax]
 005B244B    mov        dword ptr fs:[eax],esp
 005B244E    mov        edx,dword ptr [ebp-8]
 005B2451    mov        eax,ebx
 005B2453    mov        ecx,dword ptr [eax]
 005B2455    call       dword ptr [ecx+17C]; TRaveMetaFile.sub_005B2E74
 005B245B    xor        eax,eax
 005B245D    pop        edx
 005B245E    pop        ecx
 005B245F    pop        ecx
 005B2460    mov        dword ptr fs:[eax],edx
 005B2463    push       5B2478
 005B2468    mov        eax,dword ptr [ebp-8]
 005B246B    call       TObject.Free
 005B2470    ret
<005B2471    jmp        @HandleFinally
<005B2476    jmp        005B2468
 005B2478    xor        eax,eax
 005B247A    pop        edx
 005B247B    pop        ecx
 005B247C    pop        ecx
 005B247D    mov        dword ptr fs:[eax],edx
 005B2480    push       5B2495
 005B2485    lea        eax,[ebp-4]
 005B2488    call       @LStrClr
 005B248D    ret
<005B248E    jmp        @HandleFinally
<005B2493    jmp        005B2485
 005B2495    pop        ebx
 005B2496    pop        ecx
 005B2497    pop        ecx
 005B2498    pop        ebp
 005B2499    ret
*}
//end;

//005B249C
//procedure sub_005B249C(?:?; ?:?);
//begin
{*
 005B249C    push       ebx
 005B249D    push       esi
 005B249E    push       edi
 005B249F    mov        edi,ecx
 005B24A1    mov        esi,edx
 005B24A3    mov        ebx,eax
 005B24A5    mov        ecx,edi
 005B24A7    mov        edx,esi
 005B24A9    mov        eax,ebx
 005B24AB    call       005A8E1C
 005B24B0    mov        eax,dword ptr [ebx+0F4]; TRaveMetaFile.DataView:TRaveBaseDataView
 005B24B6    test       eax,eax
>005B24B8    je         005B24D1
 005B24BA    cmp        esi,eax
>005B24BC    jne        005B24D1
 005B24BE    mov        eax,edi
 005B24C0    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005B24C6    call       @AsClass
 005B24CB    mov        dword ptr [ebx+0F4],eax; TRaveMetaFile.DataView:TRaveBaseDataView
 005B24D1    pop        edi
 005B24D2    pop        esi
 005B24D3    pop        ebx
 005B24D4    ret
*}
//end;

//005B24D8
//procedure TRaveBaseImage.SetDataField(Self:TRaveBaseImage; ?:?);
//begin
{*
 005B24D8    push       ebp
 005B24D9    mov        ebp,esp
 005B24DB    push       ecx
 005B24DC    push       ebx
 005B24DD    mov        dword ptr [ebp-4],edx
 005B24E0    mov        ebx,eax
 005B24E2    mov        eax,dword ptr [ebp-4]
 005B24E5    call       @LStrAddRef
 005B24EA    xor        eax,eax
 005B24EC    push       ebp
 005B24ED    push       5B2523
 005B24F2    push       dword ptr fs:[eax]
 005B24F5    mov        dword ptr fs:[eax],esp
 005B24F8    lea        eax,[ebx+0F0]; TRaveBaseImage.?fF0:TRaveFieldName
 005B24FE    mov        edx,dword ptr [ebp-4]
 005B2501    call       @LStrAsg
 005B2506    mov        eax,ebx
 005B2508    call       005A8540
 005B250D    xor        eax,eax
 005B250F    pop        edx
 005B2510    pop        ecx
 005B2511    pop        ecx
 005B2512    mov        dword ptr fs:[eax],edx
 005B2515    push       5B252A
 005B251A    lea        eax,[ebp-4]
 005B251D    call       @LStrClr
 005B2522    ret
<005B2523    jmp        @HandleFinally
<005B2528    jmp        005B251A
 005B252A    pop        ebx
 005B252B    pop        ecx
 005B252C    pop        ebp
 005B252D    ret
*}
//end;

//005B2530
//procedure TRaveBaseImage.SetFileLink(Self:TRaveBaseImage; ?:?);
//begin
{*
 005B2530    push       ebp
 005B2531    mov        ebp,esp
 005B2533    add        esp,0FFFFFFF8
 005B2536    push       ebx
 005B2537    xor        ecx,ecx
 005B2539    mov        dword ptr [ebp-8],ecx
 005B253C    mov        dword ptr [ebp-4],edx
 005B253F    mov        ebx,eax
 005B2541    mov        eax,dword ptr [ebp-4]
 005B2544    call       @LStrAddRef
 005B2549    xor        eax,eax
 005B254B    push       ebp
 005B254C    push       5B25B0
 005B2551    push       dword ptr fs:[eax]
 005B2554    mov        dword ptr fs:[eax],esp
 005B2557    lea        edx,[ebp-8]
 005B255A    mov        eax,dword ptr [ebp-4]
 005B255D    call       Trim
 005B2562    mov        edx,dword ptr [ebp-8]
 005B2565    lea        eax,[ebp-4]
 005B2568    call       @LStrLAsg
 005B256D    mov        eax,dword ptr [ebx+0EC]; TRaveBaseImage.?fEC:TFileName
 005B2573    mov        edx,dword ptr [ebp-4]
 005B2576    call       @LStrCmp
>005B257B    je         005B2592
 005B257D    lea        eax,[ebx+0EC]; TRaveBaseImage.?fEC:TFileName
 005B2583    mov        edx,dword ptr [ebp-4]
 005B2586    call       @LStrAsg
 005B258B    mov        eax,ebx
 005B258D    call       005A8540
 005B2592    xor        eax,eax
 005B2594    pop        edx
 005B2595    pop        ecx
 005B2596    pop        ecx
 005B2597    mov        dword ptr fs:[eax],edx
 005B259A    push       5B25B7
 005B259F    lea        eax,[ebp-8]
 005B25A2    call       @LStrClr
 005B25A7    lea        eax,[ebp-4]
 005B25AA    call       @LStrClr
 005B25AF    ret
<005B25B0    jmp        @HandleFinally
<005B25B5    jmp        005B259F
 005B25B7    pop        ebx
 005B25B8    pop        ecx
 005B25B9    pop        ecx
 005B25BA    pop        ebp
 005B25BB    ret
*}
//end;

//005B25BC
//procedure TRaveBaseImage.SetMatchSide(Self:TRaveBaseImage; ?:?);
//begin
{*
 005B25BC    mov        byte ptr [eax+0E8],dl; TRaveBaseImage.MatchSide:TMatchSide
 005B25C2    call       005A8540
 005B25C7    ret
*}
//end;

//005B25C8
//procedure sub_005B25C8(?:?);
//begin
{*
 005B25C8    push       ebp
 005B25C9    mov        ebp,esp
 005B25CB    add        esp,0FFFFFFB0
 005B25CE    push       ebx
 005B25CF    push       esi
 005B25D0    push       edi
 005B25D1    mov        ebx,edx
 005B25D3    mov        dword ptr [ebp-4],eax
 005B25D6    mov        eax,0C0C0C0
 005B25DB    call       005A54B0
 005B25E0    mov        edx,eax
 005B25E2    mov        eax,dword ptr [ebx+10]
 005B25E5    call       TPen.SetColor
 005B25EA    mov        eax,dword ptr [ebx+10]
 005B25ED    mov        dl,4
 005B25EF    call       TPen.SetMode
 005B25F4    mov        eax,dword ptr [ebx+10]
 005B25F7    mov        edx,1
 005B25FC    call       TPen.SetWidth
 005B2601    xor        eax,eax
 005B2603    call       005A54B0
 005B2608    mov        edx,eax
 005B260A    mov        eax,dword ptr [ebx+14]
 005B260D    call       TBrush.SetColor
 005B2612    mov        eax,dword ptr [ebx+14]
 005B2615    mov        dl,1
 005B2617    call       TBrush.SetStyle
 005B261C    xor        eax,eax
 005B261E    push       ebp
 005B261F    push       5B28FB
 005B2624    push       dword ptr fs:[eax]
 005B2627    mov        dword ptr fs:[eax],esp
 005B262A    mov        eax,dword ptr [ebp-4]
 005B262D    mov        edx,dword ptr [eax+0EC]; TRaveMetaFile.?fEC:TFileName
 005B2633    mov        eax,dword ptr [ebp-4]
 005B2636    call       005B23F8
 005B263B    mov        eax,dword ptr [ebp-4]
 005B263E    mov        edx,dword ptr [eax]
 005B2640    call       dword ptr [edx+5C]; TRaveMetaFile.sub_005A96D4
 005B2643    add        esp,0FFFFFFF8
 005B2646    fstp       qword ptr [esp]
 005B2649    wait
 005B264A    mov        eax,dword ptr [ebp-4]
 005B264D    call       005AAE14
 005B2652    mov        esi,eax
 005B2654    mov        eax,dword ptr [ebp-4]
 005B2657    mov        edx,dword ptr [eax]
 005B2659    call       dword ptr [edx+60]; TRaveMetaFile.sub_005A970C
 005B265C    add        esp,0FFFFFFF8
 005B265F    fstp       qword ptr [esp]
 005B2662    wait
 005B2663    mov        eax,dword ptr [ebp-4]
 005B2666    call       005AAE30
 005B266B    mov        edi,eax
 005B266D    mov        eax,dword ptr [ebp-4]
 005B2670    mov        edx,dword ptr [eax]
 005B2672    call       dword ptr [edx+64]; TRaveMetaFile.sub_005A9744
 005B2675    add        esp,0FFFFFFF8
 005B2678    fstp       qword ptr [esp]
 005B267B    wait
 005B267C    mov        eax,dword ptr [ebp-4]
 005B267F    call       005AAE14
 005B2684    mov        dword ptr [ebp-10],eax
 005B2687    mov        eax,dword ptr [ebp-4]
 005B268A    mov        edx,dword ptr [eax]
 005B268C    call       dword ptr [edx+68]; TRaveMetaFile.sub_005A9770
 005B268F    add        esp,0FFFFFFF8
 005B2692    fstp       qword ptr [esp]
 005B2695    wait
 005B2696    mov        eax,dword ptr [ebp-4]
 005B2699    call       005AAE30
 005B269E    mov        dword ptr [ebp-14],eax
 005B26A1    mov        eax,dword ptr [ebp-4]
 005B26A4    mov        edx,dword ptr [eax]
 005B26A6    call       dword ptr [edx+180]; TRaveMetaFile.sub_005B30A8
 005B26AC    test       al,al
>005B26AE    je         005B2889
 005B26B4    mov        eax,dword ptr [ebp-4]
 005B26B7    mov        edx,dword ptr [eax]
 005B26B9    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005B26BF    add        esp,0FFFFFFF8
 005B26C2    fstp       qword ptr [esp]
 005B26C5    wait
 005B26C6    mov        eax,dword ptr [ebp-4]
 005B26C9    call       005AAE14
 005B26CE    push       eax
 005B26CF    push       0
 005B26D1    push       0
 005B26D3    mov        eax,dword ptr [ebp-4]
 005B26D6    call       005AAE14
 005B26DB    pop        edx
 005B26DC    sub        edx,eax
 005B26DE    mov        dword ptr [ebp-8],edx
 005B26E1    mov        eax,dword ptr [ebp-4]
 005B26E4    mov        edx,dword ptr [eax]
 005B26E6    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005B26EC    add        esp,0FFFFFFF8
 005B26EF    fstp       qword ptr [esp]
 005B26F2    wait
 005B26F3    mov        eax,dword ptr [ebp-4]
 005B26F6    call       005AAE30
 005B26FB    push       eax
 005B26FC    push       0
 005B26FE    push       0
 005B2700    mov        eax,dword ptr [ebp-4]
 005B2703    call       005AAE30
 005B2708    pop        edx
 005B2709    sub        edx,eax
 005B270B    mov        dword ptr [ebp-0C],edx
 005B270E    mov        eax,[0061B9A0]; ^gvar_006171E4
 005B2713    mov        eax,dword ptr [eax]
 005B2715    mov        edx,dword ptr [ebp-4]
 005B2718    mov        ecx,dword ptr [eax]
 005B271A    call       dword ptr [ecx+110]
 005B2720    test       al,al
>005B2722    je         005B2743
 005B2724    mov        eax,dword ptr [ebx+10]
 005B2727    xor        edx,edx
 005B2729    call       TPen.SetStyle
 005B272E    mov        eax,dword ptr [ebp-10]
 005B2731    inc        eax
 005B2732    push       eax
 005B2733    mov        eax,dword ptr [ebp-14]
 005B2736    inc        eax
 005B2737    push       eax
 005B2738    mov        ecx,edi
 005B273A    mov        edx,esi
 005B273C    mov        eax,ebx
 005B273E    call       TCanvas.Rectangle
 005B2743    mov        eax,dword ptr [ebp-14]
 005B2746    inc        eax
 005B2747    push       eax
 005B2748    lea        eax,[ebp-24]
 005B274B    push       eax
 005B274C    mov        ecx,dword ptr [ebp-10]
 005B274F    inc        ecx
 005B2750    mov        edx,edi
 005B2752    mov        eax,esi
 005B2754    call       Rect
 005B2759    mov        eax,dword ptr [ebp-4]
 005B275C    mov        al,byte ptr [eax+0E8]; TRaveMetaFile.MatchSide:TMatchSide
 005B2762    sub        al,1
>005B2764    jb         005B2771
>005B2766    je         005B279D
 005B2768    sub        al,2
>005B276A    je         005B27C9
>005B276C    jmp        005B2877
 005B2771    mov        eax,dword ptr [ebp-4]
 005B2774    mov        edx,dword ptr [eax]
 005B2776    call       dword ptr [edx+18C]; TRaveMetaFile.sub_005B2EE4
 005B277C    imul       dword ptr [ebp-8]
 005B277F    push       eax
 005B2780    mov        eax,dword ptr [ebp-4]
 005B2783    mov        edx,dword ptr [eax]
 005B2785    call       dword ptr [edx+188]; TRaveMetaFile.sub_005B2ED0
 005B278B    pop        edx
 005B278C    xchg       eax,edx
 005B278D    mov        ecx,edx
 005B278F    cdq
 005B2790    idiv       eax,ecx
 005B2792    add        eax,dword ptr [ebp-20]
 005B2795    mov        dword ptr [ebp-18],eax
>005B2798    jmp        005B2877
 005B279D    mov        eax,dword ptr [ebp-4]
 005B27A0    mov        edx,dword ptr [eax]
 005B27A2    call       dword ptr [edx+188]; TRaveMetaFile.sub_005B2ED0
 005B27A8    imul       dword ptr [ebp-0C]
 005B27AB    push       eax
 005B27AC    mov        eax,dword ptr [ebp-4]
 005B27AF    mov        edx,dword ptr [eax]
 005B27B1    call       dword ptr [edx+18C]; TRaveMetaFile.sub_005B2EE4
 005B27B7    pop        edx
 005B27B8    xchg       eax,edx
 005B27B9    mov        ecx,edx
 005B27BB    cdq
 005B27BC    idiv       eax,ecx
 005B27BE    add        eax,dword ptr [ebp-24]
 005B27C1    mov        dword ptr [ebp-1C],eax
>005B27C4    jmp        005B2877
 005B27C9    mov        eax,dword ptr [ebp-4]
 005B27CC    mov        edx,dword ptr [eax]
 005B27CE    call       dword ptr [edx+188]; TRaveMetaFile.sub_005B2ED0
 005B27D4    mov        dword ptr [ebp-28],eax
 005B27D7    fild       dword ptr [ebp-28]
 005B27DA    fstp       tbyte ptr [ebp-34]
 005B27DD    wait
 005B27DE    mov        eax,dword ptr [ebp-4]
 005B27E1    mov        edx,dword ptr [eax]
 005B27E3    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005B27E9    fld        tbyte ptr [ebp-34]
 005B27EC    fmulp      st(1),st
 005B27EE    fstp       tbyte ptr [ebp-40]
 005B27F1    wait
 005B27F2    mov        eax,dword ptr [ebp-4]
 005B27F5    mov        edx,dword ptr [eax]
 005B27F7    call       dword ptr [edx+18C]; TRaveMetaFile.sub_005B2EE4
 005B27FD    mov        dword ptr [ebp-44],eax
 005B2800    fild       dword ptr [ebp-44]
 005B2803    fstp       tbyte ptr [ebp-50]
 005B2806    wait
 005B2807    mov        eax,dword ptr [ebp-4]
 005B280A    mov        edx,dword ptr [eax]
 005B280C    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005B2812    fld        tbyte ptr [ebp-50]
 005B2815    fmulp      st(1),st
 005B2817    fld        tbyte ptr [ebp-40]
 005B281A    fdivrp     st(1),st
 005B281C    fcomp      dword ptr ds:[5B290C]; 1:Single
 005B2822    fnstsw     al
 005B2824    sahf
>005B2825    jbe        005B2850
 005B2827    mov        eax,dword ptr [ebp-4]
 005B282A    mov        edx,dword ptr [eax]
 005B282C    call       dword ptr [edx+18C]; TRaveMetaFile.sub_005B2EE4
 005B2832    imul       dword ptr [ebp-8]
 005B2835    push       eax
 005B2836    mov        eax,dword ptr [ebp-4]
 005B2839    mov        edx,dword ptr [eax]
 005B283B    call       dword ptr [edx+188]; TRaveMetaFile.sub_005B2ED0
 005B2841    pop        edx
 005B2842    xchg       eax,edx
 005B2843    mov        ecx,edx
 005B2845    cdq
 005B2846    idiv       eax,ecx
 005B2848    add        eax,dword ptr [ebp-20]
 005B284B    mov        dword ptr [ebp-18],eax
>005B284E    jmp        005B2877
 005B2850    mov        eax,dword ptr [ebp-4]
 005B2853    mov        edx,dword ptr [eax]
 005B2855    call       dword ptr [edx+188]; TRaveMetaFile.sub_005B2ED0
 005B285B    imul       dword ptr [ebp-0C]
 005B285E    push       eax
 005B285F    mov        eax,dword ptr [ebp-4]
 005B2862    mov        edx,dword ptr [eax]
 005B2864    call       dword ptr [edx+18C]; TRaveMetaFile.sub_005B2EE4
 005B286A    pop        edx
 005B286B    xchg       eax,edx
 005B286C    mov        ecx,edx
 005B286E    cdq
 005B286F    idiv       eax,ecx
 005B2871    add        eax,dword ptr [ebp-24]
 005B2874    mov        dword ptr [ebp-1C],eax
 005B2877    lea        ecx,[ebp-24]
 005B287A    mov        edx,ebx
 005B287C    mov        eax,dword ptr [ebp-4]
 005B287F    mov        ebx,dword ptr [eax]
 005B2881    call       dword ptr [ebx+190]; TRaveMetaFile.sub_005B2EF8
>005B2887    jmp        005B28E2
 005B2889    mov        eax,dword ptr [ebx+10]
 005B288C    mov        dl,1
 005B288E    call       TPen.SetStyle
 005B2893    mov        eax,dword ptr [ebp-10]
 005B2896    inc        eax
 005B2897    push       eax
 005B2898    mov        eax,dword ptr [ebp-14]
 005B289B    inc        eax
 005B289C    push       eax
 005B289D    mov        ecx,edi
 005B289F    mov        edx,esi
 005B28A1    mov        eax,ebx
 005B28A3    call       TCanvas.Rectangle
 005B28A8    mov        eax,dword ptr [ebx+10]
 005B28AB    xor        edx,edx
 005B28AD    call       TPen.SetStyle
 005B28B2    mov        ecx,edi
 005B28B4    mov        edx,esi
 005B28B6    mov        eax,ebx
 005B28B8    call       TCanvas.MoveTo
 005B28BD    mov        ecx,dword ptr [ebp-14]
 005B28C0    mov        edx,dword ptr [ebp-10]
 005B28C3    mov        eax,ebx
 005B28C5    call       TCanvas.LineTo
 005B28CA    mov        ecx,dword ptr [ebp-14]
 005B28CD    mov        edx,esi
 005B28CF    mov        eax,ebx
 005B28D1    call       TCanvas.MoveTo
 005B28D6    mov        ecx,edi
 005B28D8    mov        edx,dword ptr [ebp-10]
 005B28DB    mov        eax,ebx
 005B28DD    call       TCanvas.LineTo
 005B28E2    xor        eax,eax
 005B28E4    pop        edx
 005B28E5    pop        ecx
 005B28E6    pop        ecx
 005B28E7    mov        dword ptr fs:[eax],edx
 005B28EA    push       5B2902
 005B28EF    mov        eax,dword ptr [ebp-4]
 005B28F2    mov        edx,dword ptr [eax]
 005B28F4    call       dword ptr [edx+184]; TRaveMetaFile.sub_005B2E60
 005B28FA    ret
<005B28FB    jmp        @HandleFinally
<005B2900    jmp        005B28EF
 005B2902    pop        edi
 005B2903    pop        esi
 005B2904    pop        ebx
 005B2905    mov        esp,ebp
 005B2907    pop        ebp
 005B2908    ret
*}
//end;

//005B2910
//procedure sub_005B2910(?:?);
//begin
{*
 005B2910    push       ebp
 005B2911    mov        ebp,esp
 005B2913    add        esp,0FFFFFFAC
 005B2916    push       ebx
 005B2917    xor        ecx,ecx
 005B2919    mov        dword ptr [ebp-34],ecx
 005B291C    mov        dword ptr [ebp-30],ecx
 005B291F    mov        dword ptr [ebp-8],edx
 005B2922    mov        dword ptr [ebp-4],eax
 005B2925    xor        eax,eax
 005B2927    push       ebp
 005B2928    push       5B2D29
 005B292D    push       dword ptr fs:[eax]
 005B2930    mov        dword ptr fs:[eax],esp
 005B2933    mov        eax,dword ptr [ebp-4]
 005B2936    mov        edx,dword ptr [eax]
 005B2938    call       dword ptr [edx+0B8]; TRaveMetaFile.sub_005AAA88
 005B293E    test       al,al
>005B2940    je         005B2D0E
 005B2946    xor        eax,eax
 005B2948    push       ebp
 005B2949    push       5B2D07
 005B294E    push       dword ptr fs:[eax]
 005B2951    mov        dword ptr fs:[eax],esp
 005B2954    mov        eax,dword ptr [ebp-4]
 005B2957    mov        ebx,dword ptr [eax+0F4]; TRaveMetaFile.DataView:TRaveBaseDataView
 005B295D    test       ebx,ebx
>005B295F    je         005B2A43
 005B2965    mov        eax,dword ptr [ebp-4]
 005B2968    cmp        dword ptr [eax+0F0],0; TRaveMetaFile.?fF0:TRaveFieldName
>005B296F    je         005B2A43
 005B2975    mov        eax,dword ptr [ebp-4]
 005B2978    mov        edx,dword ptr [eax+0F0]; TRaveMetaFile.?fF0:TRaveFieldName
 005B297E    mov        eax,ebx
 005B2980    call       005A0AC8
 005B2985    mov        ebx,eax
 005B2987    mov        eax,ebx
 005B2989    call       0059EFE0
 005B298E    test       al,al
>005B2990    je         005B299C
 005B2992    call       @TryFinallyExit
>005B2997    jmp        005B2D0E
 005B299C    mov        eax,ebx
 005B299E    mov        edx,dword ptr [eax]
 005B29A0    call       dword ptr [edx+0D4]
 005B29A6    test       al,al
>005B29A8    jne        005B29D2
 005B29AA    lea        edx,[ebp-34]
 005B29AD    mov        eax,ebx
 005B29AF    mov        ecx,dword ptr [eax]
 005B29B1    call       dword ptr [ecx+0D8]
 005B29B7    mov        eax,dword ptr [ebp-34]
 005B29BA    lea        edx,[ebp-30]
 005B29BD    call       ExpandFileName
 005B29C2    mov        edx,dword ptr [ebp-30]
 005B29C5    mov        eax,dword ptr [ebp-4]
 005B29C8    call       005B23F8
>005B29CD    jmp        005B2A54
 005B29D2    mov        dl,1
 005B29D4    mov        eax,[0041CBF8]; TMemoryStream
 005B29D9    call       TObject.Create; TMemoryStream.Create
 005B29DE    mov        dword ptr [ebp-2C],eax
 005B29E1    xor        eax,eax
 005B29E3    push       ebp
 005B29E4    push       5B2A3C
 005B29E9    push       dword ptr fs:[eax]
 005B29EC    mov        dword ptr fs:[eax],esp
 005B29EF    mov        eax,ebx
 005B29F1    mov        edx,dword ptr [eax]
 005B29F3    call       dword ptr [edx+0FC]
 005B29F9    push       eax
 005B29FA    mov        eax,ebx
 005B29FC    call       0059EF34
 005B2A01    mov        ecx,eax
 005B2A03    mov        eax,dword ptr [ebp-2C]
 005B2A06    pop        edx
 005B2A07    mov        ebx,dword ptr [eax]
 005B2A09    call       dword ptr [ebx+10]; TMemoryStream.Write
 005B2A0C    push       0
 005B2A0E    push       0
 005B2A10    mov        eax,dword ptr [ebp-2C]
 005B2A13    call       TStream.SetPosition
 005B2A18    mov        edx,dword ptr [ebp-2C]
 005B2A1B    mov        eax,dword ptr [ebp-4]
 005B2A1E    mov        ecx,dword ptr [eax]
 005B2A20    call       dword ptr [ecx+17C]; TRaveMetaFile.sub_005B2E74
 005B2A26    xor        eax,eax
 005B2A28    pop        edx
 005B2A29    pop        ecx
 005B2A2A    pop        ecx
 005B2A2B    mov        dword ptr fs:[eax],edx
 005B2A2E    push       5B2A54
 005B2A33    mov        eax,dword ptr [ebp-2C]
 005B2A36    call       TObject.Free
 005B2A3B    ret
<005B2A3C    jmp        @HandleFinally
<005B2A41    jmp        005B2A33
 005B2A43    mov        eax,dword ptr [ebp-4]
 005B2A46    mov        edx,dword ptr [eax+0EC]; TRaveMetaFile.?fEC:TFileName
 005B2A4C    mov        eax,dword ptr [ebp-4]
 005B2A4F    call       005B23F8
 005B2A54    mov        eax,dword ptr [ebp-4]
 005B2A57    mov        edx,dword ptr [eax]
 005B2A59    call       dword ptr [edx+5C]; TRaveMetaFile.sub_005A96D4
 005B2A5C    fstp       qword ptr [ebp-10]
 005B2A5F    wait
 005B2A60    mov        eax,dword ptr [ebp-4]
 005B2A63    mov        edx,dword ptr [eax]
 005B2A65    call       dword ptr [edx+60]; TRaveMetaFile.sub_005A970C
 005B2A68    fstp       qword ptr [ebp-18]
 005B2A6B    wait
 005B2A6C    mov        eax,dword ptr [ebp-4]
 005B2A6F    mov        edx,dword ptr [eax]
 005B2A71    call       dword ptr [edx+64]; TRaveMetaFile.sub_005A9744
 005B2A74    fstp       qword ptr [ebp-20]
 005B2A77    wait
 005B2A78    mov        eax,dword ptr [ebp-4]
 005B2A7B    mov        edx,dword ptr [eax]
 005B2A7D    call       dword ptr [edx+68]; TRaveMetaFile.sub_005A9770
 005B2A80    fstp       qword ptr [ebp-28]
 005B2A83    wait
 005B2A84    mov        eax,dword ptr [ebp-4]
 005B2A87    mov        edx,dword ptr [eax]
 005B2A89    call       dword ptr [edx+180]; TRaveMetaFile.sub_005B30A8
 005B2A8F    test       al,al
>005B2A91    je         005B2C48
 005B2A97    mov        eax,dword ptr [ebp-4]
 005B2A9A    mov        al,byte ptr [eax+0E8]; TRaveMetaFile.MatchSide:TMatchSide
 005B2AA0    sub        al,1
>005B2AA2    jb         005B2AB3
>005B2AA4    je         005B2AFE
 005B2AA6    sub        al,2
>005B2AA8    je         005B2B49
>005B2AAE    jmp        005B2C1D
 005B2AB3    mov        eax,dword ptr [ebp-4]
 005B2AB6    mov        edx,dword ptr [eax]
 005B2AB8    call       dword ptr [edx+18C]; TRaveMetaFile.sub_005B2EE4
 005B2ABE    mov        dword ptr [ebp-38],eax
 005B2AC1    fild       dword ptr [ebp-38]
 005B2AC4    fstp       tbyte ptr [ebp-44]
 005B2AC7    wait
 005B2AC8    mov        eax,dword ptr [ebp-4]
 005B2ACB    mov        edx,dword ptr [eax]
 005B2ACD    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005B2AD3    fld        tbyte ptr [ebp-44]
 005B2AD6    fmulp      st(1),st
 005B2AD8    fstp       tbyte ptr [ebp-50]
 005B2ADB    wait
 005B2ADC    mov        eax,dword ptr [ebp-4]
 005B2ADF    mov        edx,dword ptr [eax]
 005B2AE1    call       dword ptr [edx+188]; TRaveMetaFile.sub_005B2ED0
 005B2AE7    mov        dword ptr [ebp-54],eax
 005B2AEA    fild       dword ptr [ebp-54]
 005B2AED    fld        tbyte ptr [ebp-50]
 005B2AF0    fdivrp     st(1),st
 005B2AF2    fadd       qword ptr [ebp-18]
 005B2AF5    fstp       qword ptr [ebp-28]
 005B2AF8    wait
>005B2AF9    jmp        005B2C1D
 005B2AFE    mov        eax,dword ptr [ebp-4]
 005B2B01    mov        edx,dword ptr [eax]
 005B2B03    call       dword ptr [edx+188]; TRaveMetaFile.sub_005B2ED0
 005B2B09    mov        dword ptr [ebp-38],eax
 005B2B0C    fild       dword ptr [ebp-38]
 005B2B0F    fstp       tbyte ptr [ebp-44]
 005B2B12    wait
 005B2B13    mov        eax,dword ptr [ebp-4]
 005B2B16    mov        edx,dword ptr [eax]
 005B2B18    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005B2B1E    fld        tbyte ptr [ebp-44]
 005B2B21    fmulp      st(1),st
 005B2B23    fstp       tbyte ptr [ebp-50]
 005B2B26    wait
 005B2B27    mov        eax,dword ptr [ebp-4]
 005B2B2A    mov        edx,dword ptr [eax]
 005B2B2C    call       dword ptr [edx+18C]; TRaveMetaFile.sub_005B2EE4
 005B2B32    mov        dword ptr [ebp-54],eax
 005B2B35    fild       dword ptr [ebp-54]
 005B2B38    fld        tbyte ptr [ebp-50]
 005B2B3B    fdivrp     st(1),st
 005B2B3D    fadd       qword ptr [ebp-10]
 005B2B40    fstp       qword ptr [ebp-20]
 005B2B43    wait
>005B2B44    jmp        005B2C1D
 005B2B49    mov        eax,dword ptr [ebp-4]
 005B2B4C    mov        edx,dword ptr [eax]
 005B2B4E    call       dword ptr [edx+188]; TRaveMetaFile.sub_005B2ED0
 005B2B54    mov        dword ptr [ebp-38],eax
 005B2B57    fild       dword ptr [ebp-38]
 005B2B5A    fld        qword ptr [ebp-28]
 005B2B5D    fsub       qword ptr [ebp-18]
 005B2B60    fmulp      st(1),st
 005B2B62    fstp       tbyte ptr [ebp-44]
 005B2B65    wait
 005B2B66    mov        eax,dword ptr [ebp-4]
 005B2B69    mov        edx,dword ptr [eax]
 005B2B6B    call       dword ptr [edx+18C]; TRaveMetaFile.sub_005B2EE4
 005B2B71    mov        dword ptr [ebp-54],eax
 005B2B74    fild       dword ptr [ebp-54]
 005B2B77    fld        qword ptr [ebp-20]
 005B2B7A    fsub       qword ptr [ebp-10]
 005B2B7D    fmulp      st(1),st
 005B2B7F    fld        tbyte ptr [ebp-44]
 005B2B82    fdivrp     st(1),st
 005B2B84    fcomp      dword ptr ds:[5B2D38]; 1:Single
 005B2B8A    fnstsw     al
 005B2B8C    sahf
>005B2B8D    jbe        005B2BD7
 005B2B8F    mov        eax,dword ptr [ebp-4]
 005B2B92    mov        edx,dword ptr [eax]
 005B2B94    call       dword ptr [edx+18C]; TRaveMetaFile.sub_005B2EE4
 005B2B9A    mov        dword ptr [ebp-38],eax
 005B2B9D    fild       dword ptr [ebp-38]
 005B2BA0    fstp       tbyte ptr [ebp-44]
 005B2BA3    wait
 005B2BA4    mov        eax,dword ptr [ebp-4]
 005B2BA7    mov        edx,dword ptr [eax]
 005B2BA9    call       dword ptr [edx+13C]; TRaveText.GetWidth
 005B2BAF    fld        tbyte ptr [ebp-44]
 005B2BB2    fmulp      st(1),st
 005B2BB4    fstp       tbyte ptr [ebp-50]
 005B2BB7    wait
 005B2BB8    mov        eax,dword ptr [ebp-4]
 005B2BBB    mov        edx,dword ptr [eax]
 005B2BBD    call       dword ptr [edx+188]; TRaveMetaFile.sub_005B2ED0
 005B2BC3    mov        dword ptr [ebp-54],eax
 005B2BC6    fild       dword ptr [ebp-54]
 005B2BC9    fld        tbyte ptr [ebp-50]
 005B2BCC    fdivrp     st(1),st
 005B2BCE    fadd       qword ptr [ebp-18]
 005B2BD1    fstp       qword ptr [ebp-28]
 005B2BD4    wait
>005B2BD5    jmp        005B2C1D
 005B2BD7    mov        eax,dword ptr [ebp-4]
 005B2BDA    mov        edx,dword ptr [eax]
 005B2BDC    call       dword ptr [edx+188]; TRaveMetaFile.sub_005B2ED0
 005B2BE2    mov        dword ptr [ebp-38],eax
 005B2BE5    fild       dword ptr [ebp-38]
 005B2BE8    fstp       tbyte ptr [ebp-44]
 005B2BEB    wait
 005B2BEC    mov        eax,dword ptr [ebp-4]
 005B2BEF    mov        edx,dword ptr [eax]
 005B2BF1    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005B2BF7    fld        tbyte ptr [ebp-44]
 005B2BFA    fmulp      st(1),st
 005B2BFC    fstp       tbyte ptr [ebp-50]
 005B2BFF    wait
 005B2C00    mov        eax,dword ptr [ebp-4]
 005B2C03    mov        edx,dword ptr [eax]
 005B2C05    call       dword ptr [edx+18C]; TRaveMetaFile.sub_005B2EE4
 005B2C0B    mov        dword ptr [ebp-54],eax
 005B2C0E    fild       dword ptr [ebp-54]
 005B2C11    fld        tbyte ptr [ebp-50]
 005B2C14    fdivrp     st(1),st
 005B2C16    fadd       qword ptr [ebp-10]
 005B2C19    fstp       qword ptr [ebp-20]
 005B2C1C    wait
 005B2C1D    push       dword ptr [ebp-0C]
 005B2C20    push       dword ptr [ebp-10]
 005B2C23    push       dword ptr [ebp-14]
 005B2C26    push       dword ptr [ebp-18]
 005B2C29    push       dword ptr [ebp-1C]
 005B2C2C    push       dword ptr [ebp-20]
 005B2C2F    push       dword ptr [ebp-24]
 005B2C32    push       dword ptr [ebp-28]
 005B2C35    mov        edx,dword ptr [ebp-8]
 005B2C38    mov        eax,dword ptr [ebp-4]
 005B2C3B    mov        ecx,dword ptr [eax]
 005B2C3D    call       dword ptr [ecx+194]; TRaveMetaFile.sub_005B30DC
>005B2C43    jmp        005B2CEE
 005B2C48    push       1
 005B2C4A    push       4
 005B2C4C    xor        ecx,ecx
 005B2C4E    mov        edx,808080
 005B2C53    mov        eax,dword ptr [ebp-8]
 005B2C56    mov        ebx,dword ptr [eax]
 005B2C58    call       dword ptr [ebx+154]
 005B2C5E    push       0
 005B2C60    mov        cl,1
 005B2C62    xor        edx,edx
 005B2C64    mov        eax,dword ptr [ebp-8]
 005B2C67    mov        ebx,dword ptr [eax]
 005B2C69    call       dword ptr [ebx+14C]
 005B2C6F    push       dword ptr [ebp-0C]
 005B2C72    push       dword ptr [ebp-10]
 005B2C75    push       dword ptr [ebp-14]
 005B2C78    push       dword ptr [ebp-18]
 005B2C7B    push       dword ptr [ebp-1C]
 005B2C7E    push       dword ptr [ebp-20]
 005B2C81    push       dword ptr [ebp-24]
 005B2C84    push       dword ptr [ebp-28]
 005B2C87    mov        eax,dword ptr [ebp-8]
 005B2C8A    mov        edx,dword ptr [eax]
 005B2C8C    call       dword ptr [edx+0E0]
 005B2C92    push       dword ptr [ebp-0C]
 005B2C95    push       dword ptr [ebp-10]
 005B2C98    push       dword ptr [ebp-14]
 005B2C9B    push       dword ptr [ebp-18]
 005B2C9E    mov        eax,dword ptr [ebp-8]
 005B2CA1    mov        edx,dword ptr [eax]
 005B2CA3    call       dword ptr [edx+0C4]
 005B2CA9    push       dword ptr [ebp-1C]
 005B2CAC    push       dword ptr [ebp-20]
 005B2CAF    push       dword ptr [ebp-24]
 005B2CB2    push       dword ptr [ebp-28]
 005B2CB5    mov        eax,dword ptr [ebp-8]
 005B2CB8    mov        edx,dword ptr [eax]
 005B2CBA    call       dword ptr [edx+0C0]
 005B2CC0    push       dword ptr [ebp-0C]
 005B2CC3    push       dword ptr [ebp-10]
 005B2CC6    push       dword ptr [ebp-24]
 005B2CC9    push       dword ptr [ebp-28]
 005B2CCC    mov        eax,dword ptr [ebp-8]
 005B2CCF    mov        edx,dword ptr [eax]
 005B2CD1    call       dword ptr [edx+0C4]
 005B2CD7    push       dword ptr [ebp-1C]
 005B2CDA    push       dword ptr [ebp-20]
 005B2CDD    push       dword ptr [ebp-14]
 005B2CE0    push       dword ptr [ebp-18]
 005B2CE3    mov        eax,dword ptr [ebp-8]
 005B2CE6    mov        edx,dword ptr [eax]
 005B2CE8    call       dword ptr [edx+0C0]
 005B2CEE    xor        eax,eax
 005B2CF0    pop        edx
 005B2CF1    pop        ecx
 005B2CF2    pop        ecx
 005B2CF3    mov        dword ptr fs:[eax],edx
 005B2CF6    push       5B2D0E
 005B2CFB    mov        eax,dword ptr [ebp-4]
 005B2CFE    mov        edx,dword ptr [eax]
 005B2D00    call       dword ptr [edx+184]; TRaveMetaFile.sub_005B2E60
 005B2D06    ret
<005B2D07    jmp        @HandleFinally
<005B2D0C    jmp        005B2CFB
 005B2D0E    xor        eax,eax
 005B2D10    pop        edx
 005B2D11    pop        ecx
 005B2D12    pop        ecx
 005B2D13    mov        dword ptr fs:[eax],edx
 005B2D16    push       5B2D30
 005B2D1B    lea        eax,[ebp-34]
 005B2D1E    mov        edx,2
 005B2D23    call       @LStrArrayClr
 005B2D28    ret
<005B2D29    jmp        @HandleFinally
<005B2D2E    jmp        005B2D1B
 005B2D30    pop        ebx
 005B2D31    mov        esp,ebp
 005B2D33    pop        ebp
 005B2D34    ret
*}
//end;

//005B2D3C
//procedure sub_005B2D3C(?:?);
//begin
{*
 005B2D3C    push       ebx
 005B2D3D    push       esi
 005B2D3E    mov        ebx,edx
 005B2D40    mov        esi,dword ptr ds:[61B830]
 005B2D46    mov        esi,dword ptr [esi]
 005B2D48    mov        edx,ebx
 005B2D4A    mov        eax,5B2D5C; 'Image'
 005B2D4F    call       esi
 005B2D51    pop        esi
 005B2D52    pop        ebx
 005B2D53    ret
*}
//end;

//005B2D64
//procedure sub_005B2D64(?:?);
//begin
{*
 005B2D64    push       ebp
 005B2D65    mov        ebp,esp
 005B2D67    push       0
 005B2D69    push       ebx
 005B2D6A    push       esi
 005B2D6B    mov        ebx,edx
 005B2D6D    xor        eax,eax
 005B2D6F    push       ebp
 005B2D70    push       5B2DB2
 005B2D75    push       dword ptr fs:[eax]
 005B2D78    mov        dword ptr fs:[eax],esp
 005B2D7B    mov        esi,dword ptr ds:[61B830]
 005B2D81    mov        esi,dword ptr [esi]
 005B2D83    lea        edx,[ebp-4]
 005B2D86    mov        eax,5B2DC8; 'All Files'
 005B2D8B    call       esi
 005B2D8D    mov        edx,dword ptr [ebp-4]
 005B2D90    mov        eax,ebx
 005B2D92    mov        ecx,5B2DDC; ' (*.*)|*.*'
 005B2D97    call       @LStrCat3
 005B2D9C    xor        eax,eax
 005B2D9E    pop        edx
 005B2D9F    pop        ecx
 005B2DA0    pop        ecx
 005B2DA1    mov        dword ptr fs:[eax],edx
 005B2DA4    push       5B2DB9
 005B2DA9    lea        eax,[ebp-4]
 005B2DAC    call       @LStrClr
 005B2DB1    ret
<005B2DB2    jmp        @HandleFinally
<005B2DB7    jmp        005B2DA9
 005B2DB9    pop        esi
 005B2DBA    pop        ebx
 005B2DBB    pop        ecx
 005B2DBC    pop        ebp
 005B2DBD    ret
*}
//end;

//005B2DE8
constructor TRaveGraphicImage.Create(AOwner:TComponent);
begin
{*
 005B2DE8    push       ebx
 005B2DE9    push       esi
 005B2DEA    test       dl,dl
>005B2DEC    je         005B2DF6
 005B2DEE    add        esp,0FFFFFFF0
 005B2DF1    call       @ClassCreate
 005B2DF6    mov        ebx,edx
 005B2DF8    mov        esi,eax
 005B2DFA    xor        edx,edx
 005B2DFC    mov        eax,esi
 005B2DFE    call       TRaveBaseImage.Create
 005B2E03    mov        eax,esi
 005B2E05    mov        edx,dword ptr [eax]
 005B2E07    call       dword ptr [edx+1A0]; @AbstractError
 005B2E0D    mov        dword ptr [esi+0F8],eax; TRaveGraphicImage.Image:TGraphic
 005B2E13    mov        eax,esi
 005B2E15    test       bl,bl
>005B2E17    je         005B2E28
 005B2E19    call       @AfterConstruction
 005B2E1E    pop        dword ptr fs:[0]
 005B2E25    add        esp,0C
 005B2E28    mov        eax,esi
 005B2E2A    pop        esi
 005B2E2B    pop        ebx
 005B2E2C    ret
*}
end;

//005B2E30
destructor TRaveGraphicImage.Destroy;
begin
{*
 005B2E30    push       ebx
 005B2E31    push       esi
 005B2E32    call       @BeforeDestruction
 005B2E37    mov        ebx,edx
 005B2E39    mov        esi,eax
 005B2E3B    lea        eax,[esi+0F8]; TRaveGraphicImage.Image:TGraphic
 005B2E41    call       FreeAndNil
 005B2E46    mov        edx,ebx
 005B2E48    and        dl,0FC
 005B2E4B    mov        eax,esi
 005B2E4D    call       TRaveBaseImage.Destroy
 005B2E52    test       bl,bl
>005B2E54    jle        005B2E5D
 005B2E56    mov        eax,esi
 005B2E58    call       @ClassDestroy
 005B2E5D    pop        esi
 005B2E5E    pop        ebx
 005B2E5F    ret
*}
end;

//005B2E60
procedure sub_005B2E60;
begin
{*
 005B2E60    cmp        dword ptr [eax+0FC],0; TRaveMetaFile.?fFC:dword
>005B2E67    je         005B2E73
 005B2E69    add        eax,0FC; TRaveMetaFile.?fFC:dword
 005B2E6E    call       FreeAndNil
 005B2E73    ret
*}
end;

//005B2E74
//procedure sub_005B2E74(?:?);
//begin
{*
 005B2E74    push       ebx
 005B2E75    push       esi
 005B2E76    push       edi
 005B2E77    mov        edi,edx
 005B2E79    mov        ebx,eax
 005B2E7B    mov        eax,ebx
 005B2E7D    mov        edx,dword ptr [eax]
 005B2E7F    call       dword ptr [edx+184]; TRaveMetaFile.sub_005B2E60
 005B2E85    mov        eax,ebx
 005B2E87    mov        edx,dword ptr [eax]
 005B2E89    call       dword ptr [edx+1A0]; TRaveMetaFile.sub_005B3098
 005B2E8F    mov        esi,eax
 005B2E91    mov        dword ptr [ebx+0FC],esi; TRaveMetaFile.?fFC:dword
 005B2E97    mov        edx,edi
 005B2E99    mov        eax,esi
 005B2E9B    mov        ecx,dword ptr [eax]
 005B2E9D    call       dword ptr [ecx+54]
 005B2EA0    mov        eax,ebx
 005B2EA2    mov        edx,dword ptr [eax]
 005B2EA4    call       dword ptr [edx+180]; TRaveMetaFile.sub_005B30A8
 005B2EAA    test       al,al
>005B2EAC    jne        005B2EB8
 005B2EAE    mov        eax,ebx
 005B2EB0    mov        edx,dword ptr [eax]
 005B2EB2    call       dword ptr [edx+184]; TRaveMetaFile.sub_005B2E60
 005B2EB8    pop        edi
 005B2EB9    pop        esi
 005B2EBA    pop        ebx
 005B2EBB    ret
*}
//end;

//005B2EBC
//function sub_005B2EBC(?:TRaveGraphicImage):?;
//begin
{*
 005B2EBC    mov        edx,dword ptr [eax+0FC]; TRaveGraphicImage.?fFC:dword
 005B2EC2    test       edx,edx
>005B2EC4    je         005B2EC9
 005B2EC6    mov        eax,edx
 005B2EC8    ret
 005B2EC9    mov        eax,dword ptr [eax+0F8]; TRaveGraphicImage.Image:TGraphic
 005B2ECF    ret
*}
//end;

//005B2ED0
procedure sub_005B2ED0;
begin
{*
 005B2ED0    push       ebx
 005B2ED1    mov        ebx,eax
 005B2ED3    mov        eax,ebx
 005B2ED5    call       005B2EBC
 005B2EDA    mov        edx,dword ptr [eax]
 005B2EDC    call       dword ptr [edx+2C]
 005B2EDF    pop        ebx
 005B2EE0    ret
*}
end;

//005B2EE4
procedure sub_005B2EE4;
begin
{*
 005B2EE4    push       ebx
 005B2EE5    mov        ebx,eax
 005B2EE7    mov        eax,ebx
 005B2EE9    call       005B2EBC
 005B2EEE    mov        edx,dword ptr [eax]
 005B2EF0    call       dword ptr [edx+20]
 005B2EF3    pop        ebx
 005B2EF4    ret
*}
end;

//005B2EF8
//procedure sub_005B2EF8(?:?; ?:?);
//begin
{*
 005B2EF8    push       ebx
 005B2EF9    push       esi
 005B2EFA    push       edi
 005B2EFB    add        esp,0FFFFFFF0
 005B2EFE    mov        esi,ecx
 005B2F00    lea        edi,[esp]
 005B2F03    movs       dword ptr [edi],dword ptr [esi]
 005B2F04    movs       dword ptr [edi],dword ptr [esi]
 005B2F05    movs       dword ptr [edi],dword ptr [esi]
 005B2F06    movs       dword ptr [edi],dword ptr [esi]
 005B2F07    mov        esi,edx
 005B2F09    mov        ebx,eax
 005B2F0B    mov        eax,ebx
 005B2F0D    call       005B2EBC
 005B2F12    mov        ecx,eax
 005B2F14    mov        edx,esp
 005B2F16    mov        eax,esi
 005B2F18    call       TCanvas.StretchDraw
 005B2F1D    add        esp,10
 005B2F20    pop        edi
 005B2F21    pop        esi
 005B2F22    pop        ebx
 005B2F23    ret
*}
//end;

//005B2F24
//procedure TRaveGraphicImage.SetImage(Self:TRaveGraphicImage; ?:?);
//begin
{*
 005B2F24    push       ebx
 005B2F25    push       esi
 005B2F26    push       edi
 005B2F27    mov        edi,edx
 005B2F29    mov        ebx,eax
 005B2F2B    mov        eax,dword ptr [ebx+0F8]; TRaveGraphicImage.Image:TGraphic
 005B2F31    call       TObject.Free
 005B2F36    mov        eax,ebx
 005B2F38    mov        edx,dword ptr [eax]
 005B2F3A    call       dword ptr [edx+1A0]; @AbstractError
 005B2F40    mov        esi,eax
 005B2F42    mov        dword ptr [ebx+0F8],esi; TRaveGraphicImage.Image:TGraphic
 005B2F48    mov        edx,edi
 005B2F4A    mov        eax,esi
 005B2F4C    mov        ecx,dword ptr [eax]
 005B2F4E    call       dword ptr [ecx+8]
 005B2F51    pop        edi
 005B2F52    pop        esi
 005B2F53    pop        ebx
 005B2F54    ret
*}
//end;

//005B2F58
procedure sub_005B2F58();
begin
{*
 005B2F58    mov        dl,1
 005B2F5A    mov        eax,[0042A4BC]; TBitmap
 005B2F5F    call       TBitmap.Create; TBitmap.Create
 005B2F64    ret
*}
end;

//005B2F68
//function sub_005B2F68:?;
//begin
{*
 005B2F68    push       ebx
 005B2F69    mov        ebx,eax
 005B2F6B    mov        eax,ebx
 005B2F6D    call       005B2EBC
 005B2F72    test       eax,eax
>005B2F74    je         005B2F91
 005B2F76    mov        eax,ebx
 005B2F78    call       005B2EBC
 005B2F7D    mov        edx,dword ptr ds:[42A4BC]; TBitmap
 005B2F83    call       @AsClass
 005B2F88    mov        edx,dword ptr [eax]
 005B2F8A    call       dword ptr [edx+64]; TBitmap.GetHandle
 005B2F8D    test       eax,eax
>005B2F8F    jne        005B2F95
 005B2F91    xor        eax,eax
 005B2F93    pop        ebx
 005B2F94    ret
 005B2F95    mov        al,1
 005B2F97    pop        ebx
 005B2F98    ret
*}
//end;

//005B2F9C
//procedure sub_005B2F9C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005B2F9C    push       ebp
 005B2F9D    mov        ebp,esp
 005B2F9F    push       ebx
 005B2FA0    push       esi
 005B2FA1    mov        esi,edx
 005B2FA3    mov        ebx,eax
 005B2FA5    push       dword ptr [ebp+24]
 005B2FA8    push       dword ptr [ebp+20]
 005B2FAB    push       dword ptr [ebp+1C]
 005B2FAE    push       dword ptr [ebp+18]
 005B2FB1    push       dword ptr [ebp+14]
 005B2FB4    push       dword ptr [ebp+10]
 005B2FB7    push       dword ptr [ebp+0C]
 005B2FBA    push       dword ptr [ebp+8]
 005B2FBD    mov        eax,ebx
 005B2FBF    call       005B2EBC
 005B2FC4    mov        edx,dword ptr ds:[42A4BC]; TBitmap
 005B2FCA    call       @AsClass
 005B2FCF    mov        edx,eax
 005B2FD1    mov        eax,esi
 005B2FD3    mov        ecx,dword ptr [eax]
 005B2FD5    call       dword ptr [ecx+0D8]
 005B2FDB    pop        esi
 005B2FDC    pop        ebx
 005B2FDD    pop        ebp
 005B2FDE    ret        20
*}
//end;

//005B2FE4
//procedure sub_005B2FE4(?:?);
//begin
{*
 005B2FE4    push       ebx
 005B2FE5    push       esi
 005B2FE6    mov        ebx,edx
 005B2FE8    mov        esi,dword ptr ds:[61B830]
 005B2FEE    mov        esi,dword ptr [esi]
 005B2FF0    mov        edx,ebx
 005B2FF2    mov        eax,5B3004; 'Bitmap'
 005B2FF7    call       esi
 005B2FF9    pop        esi
 005B2FFA    pop        ebx
 005B2FFB    ret
*}
//end;

//005B300C
//procedure sub_005B300C(?:?);
//begin
{*
 005B300C    push       ebp
 005B300D    mov        ebp,esp
 005B300F    push       0
 005B3011    push       ebx
 005B3012    push       esi
 005B3013    mov        ebx,edx
 005B3015    xor        eax,eax
 005B3017    push       ebp
 005B3018    push       5B305A
 005B301D    push       dword ptr fs:[eax]
 005B3020    mov        dword ptr fs:[eax],esp
 005B3023    mov        esi,dword ptr ds:[61B830]
 005B3029    mov        esi,dword ptr [esi]
 005B302B    lea        edx,[ebp-4]
 005B302E    mov        eax,5B3070; 'Bitmap Files'
 005B3033    call       esi
 005B3035    mov        edx,dword ptr [ebp-4]
 005B3038    mov        eax,ebx
 005B303A    mov        ecx,5B3088; ' (*.bmp)|*.bmp'
 005B303F    call       @LStrCat3
 005B3044    xor        eax,eax
 005B3046    pop        edx
 005B3047    pop        ecx
 005B3048    pop        ecx
 005B3049    mov        dword ptr fs:[eax],edx
 005B304C    push       5B3061
 005B3051    lea        eax,[ebp-4]
 005B3054    call       @LStrClr
 005B3059    ret
<005B305A    jmp        @HandleFinally
<005B305F    jmp        005B3051
 005B3061    pop        esi
 005B3062    pop        ebx
 005B3063    pop        ecx
 005B3064    pop        ebp
 005B3065    ret
*}
//end;

//005B3098
procedure sub_005B3098();
begin
{*
 005B3098    mov        dl,1
 005B309A    mov        eax,[0042A37C]; TMetafile
 005B309F    call       TMetafile.Create; TMetafile.Create
 005B30A4    ret
*}
end;

//005B30A8
//function sub_005B30A8:?;
//begin
{*
 005B30A8    push       ebx
 005B30A9    mov        ebx,eax
 005B30AB    mov        eax,ebx
 005B30AD    call       005B2EBC
 005B30B2    test       eax,eax
>005B30B4    je         005B30D1
 005B30B6    mov        eax,ebx
 005B30B8    call       005B2EBC
 005B30BD    mov        edx,dword ptr ds:[42A37C]; TMetafile
 005B30C3    call       @AsClass
 005B30C8    call       TMetafile.GetHandle
 005B30CD    test       eax,eax
>005B30CF    jne        005B30D5
 005B30D1    xor        eax,eax
 005B30D3    pop        ebx
 005B30D4    ret
 005B30D5    mov        al,1
 005B30D7    pop        ebx
 005B30D8    ret
*}
//end;

//005B30DC
//procedure sub_005B30DC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005B30DC    push       ebp
 005B30DD    mov        ebp,esp
 005B30DF    add        esp,0FFFFFFF0
 005B30E2    push       ebx
 005B30E3    push       esi
 005B30E4    push       edi
 005B30E5    mov        edi,edx
 005B30E7    mov        esi,eax
 005B30E9    push       dword ptr [ebp+24]
 005B30EC    push       dword ptr [ebp+20]
 005B30EF    push       dword ptr [ebp+1C]
 005B30F2    push       dword ptr [ebp+18]
 005B30F5    push       dword ptr [ebp+14]
 005B30F8    push       dword ptr [ebp+10]
 005B30FB    push       dword ptr [ebp+0C]
 005B30FE    push       dword ptr [ebp+8]
 005B3101    lea        edx,[ebp-10]
 005B3104    mov        eax,edi
 005B3106    call       00587A6C
 005B310B    mov        eax,esi
 005B310D    call       005B2EBC
 005B3112    mov        ecx,eax
 005B3114    lea        edx,[ebp-10]
 005B3117    mov        eax,edi
 005B3119    mov        ebx,dword ptr [eax]
 005B311B    call       dword ptr [ebx+0E8]
 005B3121    pop        edi
 005B3122    pop        esi
 005B3123    pop        ebx
 005B3124    mov        esp,ebp
 005B3126    pop        ebp
 005B3127    ret        20
*}
//end;

//005B312C
//procedure sub_005B312C(?:?);
//begin
{*
 005B312C    push       ebx
 005B312D    push       esi
 005B312E    mov        ebx,edx
 005B3130    mov        esi,dword ptr ds:[61B830]
 005B3136    mov        esi,dword ptr [esi]
 005B3138    mov        edx,ebx
 005B313A    mov        eax,5B314C; 'MetaFile'
 005B313F    call       esi
 005B3141    pop        esi
 005B3142    pop        ebx
 005B3143    ret
*}
//end;

//005B3158
//procedure sub_005B3158(?:?);
//begin
{*
 005B3158    push       ebp
 005B3159    mov        ebp,esp
 005B315B    push       0
 005B315D    push       ebx
 005B315E    push       esi
 005B315F    mov        ebx,edx
 005B3161    xor        eax,eax
 005B3163    push       ebp
 005B3164    push       5B31A6
 005B3169    push       dword ptr fs:[eax]
 005B316C    mov        dword ptr fs:[eax],esp
 005B316F    mov        esi,dword ptr ds:[61B830]
 005B3175    mov        esi,dword ptr [esi]
 005B3177    lea        edx,[ebp-4]
 005B317A    mov        eax,5B31BC; 'MetaFile Files'
 005B317F    call       esi
 005B3181    mov        edx,dword ptr [ebp-4]
 005B3184    mov        eax,ebx
 005B3186    mov        ecx,5B31D4; '(*.emf;*.wmf)|*.emf;*.wmf'
 005B318B    call       @LStrCat3
 005B3190    xor        eax,eax
 005B3192    pop        edx
 005B3193    pop        ecx
 005B3194    pop        ecx
 005B3195    mov        dword ptr fs:[eax],edx
 005B3198    push       5B31AD
 005B319D    lea        eax,[ebp-4]
 005B31A0    call       @LStrClr
 005B31A5    ret
<005B31A6    jmp        @HandleFinally
<005B31AB    jmp        005B319D
 005B31AD    pop        esi
 005B31AE    pop        ebx
 005B31AF    pop        ecx
 005B31B0    pop        ebp
 005B31B1    ret
*}
//end;

//005B3264
//function sub_005B3264():?;
//begin
{*
 005B3264    push       ebp
 005B3265    mov        ebp,esp
 005B3267    push       ebx
 005B3268    xor        eax,eax
 005B326A    push       ebp
 005B326B    push       5B3292
 005B3270    push       dword ptr fs:[eax]
 005B3273    mov        dword ptr fs:[eax],esp
 005B3276    mov        dl,1
 005B3278    mov        eax,[005B1220]; TRaveMailMergeItem
 005B327D    call       TObject.Create; TRaveMailMergeItem.Create
 005B3282    mov        ebx,eax
 005B3284    xor        eax,eax
 005B3286    pop        edx
 005B3287    pop        ecx
 005B3288    pop        ecx
 005B3289    mov        dword ptr fs:[eax],edx
 005B328C    push       5B3299
 005B3291    ret
<005B3292    jmp        @HandleFinally
<005B3297    jmp        005B3291
 005B3299    mov        eax,ebx
 005B329B    pop        ebx
 005B329C    pop        ebp
 005B329D    ret
*}
//end;

//005B32A0
constructor TRaveMemo.Create(AOwner:TComponent);
begin
{*
 005B32A0    push       ebx
 005B32A1    push       esi
 005B32A2    test       dl,dl
>005B32A4    je         005B32AE
 005B32A6    add        esp,0FFFFFFF0
 005B32A9    call       @ClassCreate
 005B32AE    mov        ebx,edx
 005B32B0    mov        esi,eax
 005B32B2    xor        edx,edx
 005B32B4    mov        eax,esi
 005B32B6    call       TRaveCustomText.Create
 005B32BB    push       40000000
 005B32C0    push       0
 005B32C2    mov        eax,esi
 005B32C4    mov        edx,dword ptr [eax]
 005B32C6    call       dword ptr [edx+148]; TRaveSection.SetHeight
 005B32CC    push       40080000
 005B32D1    push       0
 005B32D3    mov        eax,esi
 005B32D5    mov        edx,dword ptr [eax]
 005B32D7    call       dword ptr [edx+140]; TRaveText.SetWidth
 005B32DD    mov        dl,1
 005B32DF    mov        eax,[005B31F0]; TRaveMailMergeList
 005B32E4    call       TObject.Create; TRaveMailMergeList.Create
 005B32E9    mov        dword ptr [esi+10C],eax; TRaveMemo.MailMergeItems:TRavePersistentList
 005B32EF    mov        byte ptr [esi+101],1; TRaveMemo.ExpandParent:Boolean
 005B32F6    mov        eax,esi
 005B32F8    test       bl,bl
>005B32FA    je         005B330B
 005B32FC    call       @AfterConstruction
 005B3301    pop        dword ptr fs:[0]
 005B3308    add        esp,0C
 005B330B    mov        eax,esi
 005B330D    pop        esi
 005B330E    pop        ebx
 005B330F    ret
*}
end;

//005B3310
destructor TRaveMemo.Destroy;
begin
{*
 005B3310    push       ebx
 005B3311    push       esi
 005B3312    call       @BeforeDestruction
 005B3317    mov        ebx,edx
 005B3319    mov        esi,eax
 005B331B    mov        eax,esi
 005B331D    call       005B360C
 005B3322    mov        eax,dword ptr [esi+10C]; TRaveMemo.MailMergeItems:TRavePersistentList
 005B3328    call       005A58C4
 005B332D    lea        eax,[esi+10C]; TRaveMemo.MailMergeItems:TRavePersistentList
 005B3333    call       FreeAndNil
 005B3338    cmp        dword ptr [esi+108],0; TRaveMemo.?f108:dword
>005B333F    je         005B334C
 005B3341    lea        eax,[esi+108]; TRaveMemo.?f108:dword
 005B3347    call       FreeAndNil
 005B334C    mov        edx,ebx
 005B334E    and        dl,0FC
 005B3351    mov        eax,esi
 005B3353    call       TRaveCustomText.Destroy
 005B3358    test       bl,bl
>005B335A    jle        005B3363
 005B335C    mov        eax,esi
 005B335E    call       @ClassDestroy
 005B3363    pop        esi
 005B3364    pop        ebx
 005B3365    ret
*}
end;

//005B3368
//procedure TRaveMemo.SetMailMergeItems(Self:TRaveMemo; ?:?);
//begin
{*
 005B3368    push       ebx
 005B3369    push       esi
 005B336A    push       edi
 005B336B    push       ebp
 005B336C    add        esp,0FFFFFFF8
 005B336F    mov        dword ptr [esp+4],edx
 005B3373    mov        dword ptr [esp],eax
 005B3376    mov        eax,dword ptr [esp]
 005B3379    mov        eax,dword ptr [eax+10C]
 005B337F    call       005A58C4
 005B3384    mov        eax,dword ptr [esp+4]
 005B3388    mov        edi,dword ptr [eax+8]
 005B338B    dec        edi
 005B338C    test       edi,edi
>005B338E    jl         005B33DE
 005B3390    inc        edi
 005B3391    xor        ebp,ebp
 005B3393    mov        edx,ebp
 005B3395    mov        eax,dword ptr [esp+4]
 005B3399    call       TList.Get
 005B339E    mov        esi,eax
 005B33A0    mov        dl,1
 005B33A2    mov        eax,[005B1220]; TRaveMailMergeItem
 005B33A7    call       TObject.Create; TRaveMailMergeItem.Create
 005B33AC    mov        ebx,eax
 005B33AE    lea        eax,[ebx+4]; TRaveMailMergeItem.?f4:String
 005B33B1    mov        edx,dword ptr [esi+4]
 005B33B4    call       @LStrAsg
 005B33B9    lea        eax,[ebx+8]; TRaveMailMergeItem.?f8:String
 005B33BC    mov        edx,dword ptr [esi+8]
 005B33BF    call       @LStrAsg
 005B33C4    mov        al,byte ptr [esi+0C]
 005B33C7    mov        byte ptr [ebx+0C],al; TRaveMailMergeItem.CaseMatters:Boolean
 005B33CA    mov        eax,dword ptr [esp]
 005B33CD    mov        eax,dword ptr [eax+10C]
 005B33D3    mov        edx,ebx
 005B33D5    call       TList.Add
 005B33DA    inc        ebp
 005B33DB    dec        edi
<005B33DC    jne        005B3393
 005B33DE    pop        ecx
 005B33DF    pop        edx
 005B33E0    pop        ebp
 005B33E1    pop        edi
 005B33E2    pop        esi
 005B33E3    pop        ebx
 005B33E4    ret
*}
//end;

//005B33E8
procedure sub_005B33E8;
begin
{*
 005B33E8    push       ebx
 005B33E9    mov        ebx,eax
 005B33EB    cmp        dword ptr [ebx+108],0; TRaveDataMemo.?f108:dword
>005B33F2    je         005B33FF
 005B33F4    lea        eax,[ebx+108]; TRaveDataMemo.?f108:dword
 005B33FA    call       FreeAndNil
 005B33FF    mov        eax,ebx
 005B3401    call       005AAB94
 005B3406    pop        ebx
 005B3407    ret
*}
end;

//005B3408
//procedure sub_005B3408(?:?);
//begin
{*
 005B3408    push       ebp
 005B3409    mov        ebp,esp
 005B340B    push       ecx
 005B340C    push       ebx
 005B340D    mov        dword ptr [ebp-4],edx
 005B3410    mov        ebx,eax
 005B3412    mov        eax,dword ptr [ebp-4]
 005B3415    call       @LStrAddRef
 005B341A    xor        eax,eax
 005B341C    push       ebp
 005B341D    push       5B345C
 005B3422    push       dword ptr fs:[eax]
 005B3425    mov        dword ptr fs:[eax],esp
 005B3428    cmp        dword ptr [ebx+108],0; TRaveDataMemo.?f108:dword
>005B342F    je         005B343C
 005B3431    lea        eax,[ebx+108]; TRaveDataMemo.?f108:dword
 005B3437    call       FreeAndNil
 005B343C    mov        edx,dword ptr [ebp-4]
 005B343F    mov        eax,ebx
 005B3441    call       TRaveText.SetText
 005B3446    xor        eax,eax
 005B3448    pop        edx
 005B3449    pop        ecx
 005B344A    pop        ecx
 005B344B    mov        dword ptr fs:[eax],edx
 005B344E    push       5B3463
 005B3453    lea        eax,[ebp-4]
 005B3456    call       @LStrClr
 005B345B    ret
<005B345C    jmp        @HandleFinally
<005B3461    jmp        005B3453
 005B3463    pop        ebx
 005B3464    pop        ecx
 005B3465    pop        ebp
 005B3466    ret
*}
//end;

//005B3468
procedure sub_005B3468();
begin
{*
 005B3468    ret
*}
end;

//005B346C
//procedure sub_005B346C(?:TRaveDataMemo);
//begin
{*
 005B346C    push       ebp
 005B346D    mov        ebp,esp
 005B346F    xor        ecx,ecx
 005B3471    push       ecx
 005B3472    push       ecx
 005B3473    push       ecx
 005B3474    push       ecx
 005B3475    push       ecx
 005B3476    push       ecx
 005B3477    push       ecx
 005B3478    push       ebx
 005B3479    push       esi
 005B347A    push       edi
 005B347B    mov        ebx,eax
 005B347D    xor        eax,eax
 005B347F    push       ebp
 005B3480    push       5B35EC
 005B3485    push       dword ptr fs:[eax]
 005B3488    mov        dword ptr fs:[eax],esp
 005B348B    cmp        byte ptr [ebx+103],0; TRaveDataMemo.?f103:byte
>005B3492    jne        005B35BC
 005B3498    mov        dl,1
 005B349A    mov        eax,[005AE03C]; TMemoBuf
 005B349F    call       TMemoBuf.Create; TMemoBuf.Create
 005B34A4    mov        esi,eax
 005B34A6    mov        dword ptr [ebx+104],esi; TRaveDataMemo.?f104:TMemoBuf
 005B34AC    mov        eax,dword ptr [ebx+48]; TRaveDataMemo.?f48:TRaveComponent
 005B34AF    mov        eax,dword ptr [eax+0E4]
 005B34B5    mov        dword ptr [esi+4],eax; TMemoBuf.?f4:dword
 005B34B8    mov        eax,ebx
 005B34BA    mov        edx,dword ptr [eax]
 005B34BC    call       dword ptr [edx+5C]; TRaveDataMemo.sub_005A96D4
 005B34BF    mov        eax,dword ptr [ebx+104]; TRaveDataMemo.?f104:TMemoBuf
 005B34C5    fstp       qword ptr [eax+10]; TMemoBuf.?f10:?Double
 005B34C8    wait
 005B34C9    mov        eax,ebx
 005B34CB    mov        edx,dword ptr [eax]
 005B34CD    call       dword ptr [edx+64]; TRaveDataMemo.sub_005A9744
 005B34D0    mov        eax,dword ptr [ebx+104]; TRaveDataMemo.?f104:TMemoBuf
 005B34D6    fstp       qword ptr [eax+18]; TMemoBuf.?f18:?Double
 005B34D9    wait
 005B34DA    mov        eax,ebx
 005B34DC    mov        edx,dword ptr [eax]
 005B34DE    call       dword ptr [edx+0F0]; TRaveText.GetFontJustify
 005B34E4    mov        edx,dword ptr [ebx+104]; TRaveDataMemo.?f104:TMemoBuf
 005B34EA    mov        byte ptr [edx+9],al; TMemoBuf.?f9:byte
 005B34ED    cmp        byte ptr [ebx+110],0; TRaveDataMemo.?f110:byte
>005B34F4    jne        005B3532
 005B34F6    lea        eax,[ebp-8]
 005B34F9    push       eax
 005B34FA    lea        edx,[ebp-10]
 005B34FD    mov        eax,ebx
 005B34FF    call       TRaveMemo.GetText
 005B3504    mov        eax,dword ptr [ebp-10]
 005B3507    lea        edx,[ebp-0C]
 005B350A    call       Trim
 005B350F    mov        eax,dword ptr [ebp-0C]
 005B3512    mov        ecx,5
 005B3517    mov        edx,1
 005B351C    call       @LStrCopy
 005B3521    mov        eax,dword ptr [ebp-8]
 005B3524    mov        edx,5B3604; '{\\rtf'
 005B3529    call       AnsiCompareText
 005B352E    test       eax,eax
>005B3530    jne        005B354C
 005B3532    lea        edx,[ebp-14]
 005B3535    mov        eax,ebx
 005B3537    call       TRaveMemo.GetText
 005B353C    mov        edx,dword ptr [ebp-14]
 005B353F    mov        eax,dword ptr [ebx+104]; TRaveDataMemo.?f104:TMemoBuf
 005B3545    call       005AEADC
>005B354A    jmp        005B3564
 005B354C    lea        edx,[ebp-18]
 005B354F    mov        eax,ebx
 005B3551    call       TRaveMemo.GetText
 005B3556    mov        edx,dword ptr [ebp-18]
 005B3559    mov        eax,dword ptr [ebx+104]; TRaveDataMemo.?f104:TMemoBuf
 005B355F    call       005AEA70
 005B3564    mov        eax,dword ptr [ebx+10C]; TRaveDataMemo.MailMergeItems:TRavePersistentList
 005B356A    mov        edi,dword ptr [eax+8]; TRavePersistentList.FCount:Integer
 005B356D    dec        edi
 005B356E    test       edi,edi
>005B3570    jl         005B35B5
 005B3572    inc        edi
 005B3573    mov        dword ptr [ebp-4],0
 005B357A    mov        edx,dword ptr [ebp-4]
 005B357D    mov        eax,dword ptr [ebx+10C]; TRaveDataMemo.MailMergeItems:TRavePersistentList
 005B3583    call       TList.Get
 005B3588    mov        esi,eax
 005B358A    mov        al,byte ptr [esi+0C]
 005B358D    push       eax
 005B358E    lea        eax,[ebp-1C]
 005B3591    push       eax
 005B3592    mov        ecx,dword ptr [esi+8]
 005B3595    xor        edx,edx
 005B3597    mov        eax,ebx
 005B3599    call       005A02E4
 005B359E    mov        ecx,dword ptr [ebp-1C]
 005B35A1    mov        edx,dword ptr [esi+4]
 005B35A4    mov        eax,dword ptr [ebx+104]; TRaveDataMemo.?f104:TMemoBuf
 005B35AA    call       005AF23C
 005B35AF    inc        dword ptr [ebp-4]
 005B35B2    dec        edi
<005B35B3    jne        005B357A
 005B35B5    mov        byte ptr [ebx+103],1; TRaveDataMemo.?f103:byte
 005B35BC    xor        eax,eax
 005B35BE    pop        edx
 005B35BF    pop        ecx
 005B35C0    pop        ecx
 005B35C1    mov        dword ptr fs:[eax],edx
 005B35C4    push       5B35F3
 005B35C9    lea        eax,[ebp-1C]
 005B35CC    call       @LStrClr
 005B35D1    lea        eax,[ebp-18]
 005B35D4    mov        edx,3
 005B35D9    call       @LStrArrayClr
 005B35DE    lea        eax,[ebp-0C]
 005B35E1    mov        edx,2
 005B35E6    call       @LStrArrayClr
 005B35EB    ret
<005B35EC    jmp        @HandleFinally
<005B35F1    jmp        005B35C9
 005B35F3    pop        edi
 005B35F4    pop        esi
 005B35F5    pop        ebx
 005B35F6    mov        esp,ebp
 005B35F8    pop        ebp
 005B35F9    ret
*}
//end;

//005B360C
//procedure sub_005B360C(?:TRaveMemo);
//begin
{*
 005B360C    push       ebx
 005B360D    mov        ebx,eax
 005B360F    cmp        byte ptr [ebx+103],0; TRaveMemo.?f103:byte
>005B3616    je         005B362A
 005B3618    lea        eax,[ebx+104]; TRaveMemo.?f104:TMemoBuf
 005B361E    call       FreeAndNil
 005B3623    mov        byte ptr [ebx+103],0; TRaveMemo.?f103:byte
 005B362A    pop        ebx
 005B362B    ret
*}
//end;

//005B362C
//function sub_005B362C:?;
//begin
{*
 005B362C    push       ebx
 005B362D    push       esi
 005B362E    mov        ebx,eax
 005B3630    mov        esi,dword ptr [ebx+104]; TRaveDataMemo.?f104:TMemoBuf
 005B3636    test       esi,esi
>005B3638    je         005B364A
 005B363A    mov        eax,esi
 005B363C    call       005AEE18
 005B3641    test       al,al
>005B3643    jne        005B364A
 005B3645    xor        eax,eax
 005B3647    pop        esi
 005B3648    pop        ebx
 005B3649    ret
 005B364A    mov        al,1
 005B364C    pop        esi
 005B364D    pop        ebx
 005B364E    ret
*}
//end;

//005B3650
procedure sub_005B3650;
begin
{*
 005B3650    push       ebx
 005B3651    mov        ebx,eax
 005B3653    mov        byte ptr [ebx+103],0; TRaveDataMemo.?f103:byte
 005B365A    mov        al,byte ptr [ebx+0E1]; TRaveDataMemo.Anchor:TRaveAnchor
 005B3660    mov        byte ptr [ebx+100],al; TRaveDataMemo.?f100:TRaveAnchor
 005B3666    cmp        byte ptr [ebx+101],0; TRaveDataMemo.ExpandParent:Boolean
>005B366D    je         005B3682
 005B366F    mov        eax,ebx
 005B3671    call       005A9A40
 005B3676    mov        edx,eax
 005B3678    add        dl,30
 005B367B    mov        eax,ebx
 005B367D    call       TRaveControl.SetAnchor
 005B3682    mov        eax,ebx
 005B3684    call       005A8800
 005B3689    pop        ebx
 005B368A    ret
*}
end;

//005B368C
procedure sub_005B368C;
begin
{*
 005B368C    push       ebx
 005B368D    mov        ebx,eax
 005B368F    mov        dl,byte ptr [ebx+100]; TRaveDataMemo.?f100:TRaveAnchor
 005B3695    mov        eax,ebx
 005B3697    call       TRaveControl.SetAnchor
 005B369C    mov        eax,ebx
 005B369E    call       005A8838
 005B36A3    pop        ebx
 005B36A4    ret
*}
end;

//005B36A8
//procedure TRaveMemo.SetText(Self:TRaveMemo; ?:?);
//begin
{*
 005B36A8    push       ebp
 005B36A9    mov        ebp,esp
 005B36AB    push       ecx
 005B36AC    push       ebx
 005B36AD    mov        dword ptr [ebp-4],edx
 005B36B0    mov        ebx,eax
 005B36B2    mov        eax,dword ptr [ebp-4]
 005B36B5    call       @LStrAddRef
 005B36BA    xor        eax,eax
 005B36BC    push       ebp
 005B36BD    push       5B36EB
 005B36C2    push       dword ptr fs:[eax]
 005B36C5    mov        dword ptr fs:[eax],esp
 005B36C8    mov        edx,dword ptr [ebp-4]
 005B36CB    mov        eax,ebx
 005B36CD    mov        ecx,dword ptr [eax]
 005B36CF    call       dword ptr [ecx+0E4]; TRaveMemo.sub_005B3408
 005B36D5    xor        eax,eax
 005B36D7    pop        edx
 005B36D8    pop        ecx
 005B36D9    pop        ecx
 005B36DA    mov        dword ptr fs:[eax],edx
 005B36DD    push       5B36F2
 005B36E2    lea        eax,[ebp-4]
 005B36E5    call       @LStrClr
 005B36EA    ret
<005B36EB    jmp        @HandleFinally
<005B36F0    jmp        005B36E2
 005B36F2    pop        ebx
 005B36F3    pop        ecx
 005B36F4    pop        ebp
 005B36F5    ret
*}
//end;

//005B36F8
//procedure TRaveMemo.GetText(Self:TRaveMemo; ?:AnsiString);
//begin
{*
 005B36F8    push       ebx
 005B36F9    push       esi
 005B36FA    mov        esi,edx
 005B36FC    mov        ebx,eax
 005B36FE    mov        edx,esi
 005B3700    mov        eax,ebx
 005B3702    mov        ecx,dword ptr [eax]
 005B3704    call       dword ptr [ecx+0E8]; TRaveText.GetText
 005B370A    pop        esi
 005B370B    pop        ebx
 005B370C    ret
*}
//end;

//005B3710
//procedure sub_005B3710(?:?);
//begin
{*
 005B3710    push       ebx
 005B3711    push       esi
 005B3712    mov        esi,edx
 005B3714    mov        ebx,eax
 005B3716    mov        eax,ebx
 005B3718    mov        edx,dword ptr [eax]
 005B371A    call       dword ptr [edx+0B8]; TRaveDataMemo.sub_005AAA88
 005B3720    test       al,al
>005B3722    je         005B37C4
 005B3728    mov        eax,ebx
 005B372A    call       005B346C
 005B372F    mov        eax,dword ptr [ebx+0F4]; TRaveDataMemo.?fF4:TRaveFontMaster
 005B3735    test       eax,eax
>005B3737    je         005B3745
 005B3739    mov        edx,dword ptr [eax+5C]; TRaveFontMaster.Font:TRaveFont
 005B373C    mov        eax,esi
 005B373E    call       00586F2C
>005B3743    jmp        005B3752
 005B3745    mov        edx,dword ptr [ebx+0E8]; TRaveDataMemo.?fE8:TRaveFont
 005B374B    mov        eax,esi
 005B374D    call       00586F2C
 005B3752    mov        eax,ebx
 005B3754    mov        edx,dword ptr [eax]
 005B3756    call       dword ptr [edx+60]; TRaveDataMemo.sub_005A970C
 005B3759    add        esp,0FFFFFFF8
 005B375C    fstp       qword ptr [esp]
 005B375F    wait
 005B3760    mov        eax,esi
 005B3762    call       005889EC
 005B3767    mov        eax,ebx
 005B3769    mov        edx,dword ptr [eax]
 005B376B    call       dword ptr [edx+5C]; TRaveDataMemo.sub_005A96D4
 005B376E    mov        eax,dword ptr [ebx+104]; TRaveDataMemo.?f104:TMemoBuf
 005B3774    fstp       qword ptr [eax+10]; TMemoBuf.?f10:?Double
 005B3777    wait
 005B3778    mov        eax,ebx
 005B377A    mov        edx,dword ptr [eax]
 005B377C    call       dword ptr [edx+64]; TRaveDataMemo.sub_005A9744
 005B377F    mov        esi,dword ptr [ebx+104]; TRaveDataMemo.?f104:TMemoBuf
 005B3785    fstp       qword ptr [esi+18]; TMemoBuf.?f18:?Double
 005B3788    wait
 005B3789    mov        eax,ebx
 005B378B    mov        edx,dword ptr [eax]
 005B378D    call       dword ptr [edx+144]; TRaveSection.GetHeight
 005B3793    add        esp,0FFFFFFF8
 005B3796    fstp       qword ptr [esp]
 005B3799    wait
 005B379A    xor        edx,edx
 005B379C    mov        eax,esi
 005B379E    call       005AF968
 005B37A3    fstp       st(0)
 005B37A5    mov        eax,dword ptr [ebx+104]; TRaveDataMemo.?f104:TMemoBuf
 005B37AB    call       005AEE18
 005B37B0    test       al,al
>005B37B2    jne        005B37BD
 005B37B4    cmp        byte ptr [ebx+102],0; TRaveDataMemo.Truncate:Boolean
>005B37BB    je         005B37C4
 005B37BD    mov        eax,ebx
 005B37BF    call       005B360C
 005B37C4    pop        esi
 005B37C5    pop        ebx
 005B37C6    ret
*}
//end;

//005B37C8
procedure sub_005B37C8();
begin
{*
 005B37C8    call       005B346C
 005B37CD    ret
*}
end;

//005B37D0
procedure sub_005B37D0;
begin
{*
 005B37D0    push       ebx
 005B37D1    push       esi
 005B37D2    add        esp,0FFFFFFF8
 005B37D5    mov        ebx,eax
 005B37D7    cmp        dword ptr [ebx+104],0; TRaveDataMemo.?f104:TMemoBuf
>005B37DE    jne        005B37EB
 005B37E0    xor        eax,eax
 005B37E2    mov        dword ptr [esp],eax
 005B37E5    mov        dword ptr [esp+4],eax
>005B37E9    jmp        005B384E
 005B37EB    mov        eax,dword ptr [ebx+48]; TRaveDataMemo.?f48:TRaveComponent
 005B37EE    mov        esi,dword ptr [eax+0E4]
 005B37F4    mov        eax,dword ptr [ebx+0F4]; TRaveDataMemo.?fF4:TRaveFontMaster
 005B37FA    test       eax,eax
>005B37FC    je         005B380A
 005B37FE    mov        edx,dword ptr [eax+5C]; TRaveFontMaster.Font:TRaveFont
 005B3801    mov        eax,esi
 005B3803    call       00586F2C
>005B3808    jmp        005B3817
 005B380A    mov        edx,dword ptr [ebx+0E8]; TRaveDataMemo.?fE8:TRaveFont
 005B3810    mov        eax,esi
 005B3812    call       00586F2C
 005B3817    mov        eax,esi
 005B3819    mov        edx,dword ptr [eax]
 005B381B    call       dword ptr [edx+12C]
 005B3821    cmp        byte ptr [ebx+101],0; TRaveDataMemo.ExpandParent:Boolean
>005B3828    je         005B383B
 005B382A    mov        eax,dword ptr [ebx+104]; TRaveDataMemo.?f104:TMemoBuf
 005B3830    call       005AFA74
 005B3835    fstp       qword ptr [esp]
 005B3838    wait
>005B3839    jmp        005B384E
 005B383B    mov        eax,dword ptr [ebx+0D8]; TRaveDataMemo.?fD8:?Double
 005B3841    mov        dword ptr [esp],eax
 005B3844    mov        eax,dword ptr [ebx+0DC]; TRaveDataMemo.?fDC:dword
 005B384A    mov        dword ptr [esp+4],eax
 005B384E    fld        qword ptr [esp]
 005B3851    pop        ecx
 005B3852    pop        edx
 005B3853    pop        esi
 005B3854    pop        ebx
 005B3855    ret
*}
end;

Initialization
//005B3888
{*
 005B3888    sub        dword ptr ds:[61F890],1
>005B388F    jae        005B38A0
 005B3891    mov        edx,5B16DC; sub_005B16DC
 005B3896    mov        eax,5B38AC; 'RVCL'
 005B389B    call       005A7E10
 005B38A0    ret
*}
Finalization
end.