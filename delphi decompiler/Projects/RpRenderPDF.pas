{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpRenderPDF;

interface

uses
  Classes, Windows, Graphics, jpeg, RpRender, RpDefine;

type
  TPDFFontEncoding = (feMacRomanEncoding, feMacExpertEncoding, feWinAnsiEncoding, fePDFDocEncoding, feStandardEncoding);
  TRPPDFDocInfo = class(TPersistent)
  public
    f4:String;//f4
    f8:String;//f8
    fC:String;//fC
    f10:String;//f10
    f14:String;//f14
    f18:String;//f18
    constructor Create; virtual;
  end;
  TRPPDFObject = class(TObject)
  public
    f4:TRvRenderPDF;//f4
    fC:TMemoryStream;//fC
    destructor Destroy; virtual;
    procedure @AbstractError(); virtual;
    constructor Create; virtual;
  end;
  TRPPDFCatalog = class(TRPPDFObject)
  public
    f10:byte;//f10
    procedure sub_00602A88; virtual;
  end;
  TRPPDFPages = class(TRPPDFObject)
  public
    procedure sub_00602D10; virtual;
  end;
  TRPPDFPageContent = class(TRPPDFObject)
  public
    f10:TMemoryStream;//f10
    destructor Destroy; virtual;
    procedure sub_00602F64; virtual;
    constructor Create; virtual;
  end;
  TRPPDFPage = class(TRPPDFObject)
  public
    f10:TRPPDFPageContent;//f10
    f18:?Double;//f18
    f1C:dword;//f1C
    f20:?Double;//f20
    f24:dword;//f24
    f28:dword;//f28
    f30:byte;//f30
    f34:TColor;//f34
    f38:dword;//f38
    f3C:byte;//f3C
    f40:?Double;//f40
    f44:dword;//f44
    f48:byte;//f48
    f49:TPenStyle;//f49
    f4A:byte;//f4A
    f4C:TColor;//f4C
    f50:dword;//f50
    f54:byte;//f54
    destructor Destroy; virtual;
    procedure sub_00603D04; virtual;
    constructor Create; virtual;
  end;
  TRPPDFOutlines = class(TRPPDFObject)
  public
    procedure sub_006059F4; virtual;
  end;
  TRPPDFProcSet = class(TRPPDFObject)
  public
    procedure sub_00605B20; virtual;
  end;
  TRPPDFFont = class(TRPPDFObject)
  public
    f10:String;//f10
    f14:String;//f14
    f18:String;//f18
    //f1C:?;//f1C
    f5C:word;//f5C
    f21C:String;//f21C
    procedure sub_00606E6C; virtual;
    constructor Create; virtual;
  end;
  TRPPDFFontDescriptor = class(TRPPDFObject)
  public
    f10:String;//f10
    f14:dword;//f14
    f18:dword;//f18
    f1C:dword;//f1C
    f20:dword;//f20
    f24:dword;//f24
    f28:dword;//f28
    f2C:dword;//f2C
    f30:dword;//f30
    f34:dword;//f34
    f38:dword;//f38
    f3C:dword;//f3C
    f40:dword;//f40
    f44:dword;//f44
    f48:dword;//f48
    f4C:dword;//f4C
    f50:dword;//f50
    f54:byte;//f54
    procedure sub_00605D20; virtual;
  end;
  TRPPDFFontFile = class(TRPPDFObject)
  public
    f10:TMemoryStream;//f10
    destructor Destroy; virtual;
    procedure sub_00606290; virtual;
    constructor Create; virtual;
  end;
  TRPPDFFontTrueType = class(TRPPDFFont)
  public
    f220:TRPPDFFontDescriptor;//f220
    f224:dword;//f224
    f228:dword;//f228
    f22C:dword;//f22C
    destructor Destroy; virtual;
    procedure sub_006066C8; virtual;
    constructor Create; virtual;
  end;
  TRPPDFXObject = class(TRPPDFObject)
  public
    f10:TMemoryStream;//f10
    f14:String;//f14
    f18:TJPEGImage;//f18
    destructor Destroy; virtual;
    procedure sub_00607110; virtual;
    constructor Create; virtual;
  end;
  TCompressEvent = procedure(InStream:TStream; OutStream:TStream; var CompressMethod:String) of object;
  TRvRenderPDF = class(TRPRenderStream)
  public
    f88:dword;//f88
    f8C:dword;//f8C
    f90:dword;//f90
    f94:dword;//f94
    f98:dword;//f98
    f9C:dword;//f9C
    fA0:dword;//fA0
    fA4:dword;//fA4
    fA8:dword;//fA8
    fAC:TRPPDFPage;//fAC
    fB0:TRPPDFFont;//fB0
    fB4:dword;//fB4
    fB8:Int64;//fB8
    fBC:String;//fBC
    FontEncoding:TPDFFontEncoding;//fC0
    fC4:Integer;//fC4
    fC8:?Double;//fC8
    fD0:byte;//fD0
    fD1:byte;//fD1
    UseCompression:Boolean;//fD3
    EmbedFonts:Boolean;//fD4
    fD5:byte;//fD5
    fD8:dword;//fD8
    fDC:dword;//fDC
    fF8:dword;//fF8
    fFC:dword;//fFC
    OnDecodeImage:TDecodeImageEvent;//f1D8
    f1DA:word;//f1DA
    f1DC:dword;//f1DC
    OnCompress:TCompressEvent;//f1E0
    f1E2:word;//f1E2
    f1E4:dword;//f1E4
    ImageQuality:TImageQualityRange;//f1E8
    MetafileDPI:Integer;//f1EC
    DocInfo:TRPPDFDocInfo;//f1F0
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_00601E44(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00601F34(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005FF87C(?:?; ?:?; ?:?); virtual;
    //procedure sub_005FFC4C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005FFE7C(?:?); virtual;
    //procedure sub_005FF864(?:?; ?:?; ?:?); virtual;
    //procedure sub_005FF9A4(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005FF98C(?:?; ?:?; ?:?); virtual;
    //procedure sub_0060201C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00602090(?:?; ?:?); virtual;
    //procedure sub_0060211C(?:?; ?:?); virtual;
    //procedure sub_005FF894(?:?; ?:?; ?:?); virtual;
    //procedure sub_00602808(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005FFCA4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005FFD70(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00602408(?:?; ?:?); virtual;
    //procedure sub_006025C4(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005FF8AC(?:?; ?:?; ?:?); virtual;
    //procedure sub_005FF934(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00602354(?:?); virtual;
    //procedure sub_005FF8C4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00601DE0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    procedure sub_005FFAB0(); virtual;
    procedure sub_005FFA30; virtual;
    procedure sub_005FF828; virtual;
    procedure sub_005FF860(); virtual;
    //procedure sub_006028D0(?:?; ?:?); virtual;
    //procedure sub_00601CE0(?:?; ?:?; ?:?); virtual;
    //procedure sub_00601D44(?:?; ?:?; ?:?); virtual;
  end;

implementation

{$R *.DFM}

//005FF6C0
constructor TRPPDFDocInfo.Create;
begin
{*
 005FF6C0    push       ebx
 005FF6C1    push       esi
 005FF6C2    test       dl,dl
>005FF6C4    je         005FF6CE
 005FF6C6    add        esp,0FFFFFFF0
 005FF6C9    call       @ClassCreate
 005FF6CE    mov        ebx,edx
 005FF6D0    mov        esi,eax
 005FF6D2    xor        edx,edx
 005FF6D4    mov        eax,esi
 005FF6D6    call       TObject.Create
 005FF6DB    lea        eax,[esi+14]; TRPPDFDocInfo.?f14:String
 005FF6DE    mov        edx,5FF718; 'Rave (http://www.nevrona.com/rave)'
 005FF6E3    call       @LStrAsg
 005FF6E8    lea        eax,[esi+18]; TRPPDFDocInfo.?f18:String
 005FF6EB    mov        edx,5FF744; 'Nevrona Designs'
 005FF6F0    call       @LStrAsg
 005FF6F5    mov        eax,esi
 005FF6F7    test       bl,bl
>005FF6F9    je         005FF70A
 005FF6FB    call       @AfterConstruction
 005FF700    pop        dword ptr fs:[0]
 005FF707    add        esp,0C
 005FF70A    mov        eax,esi
 005FF70C    pop        esi
 005FF70D    pop        ebx
 005FF70E    ret
*}
end;

//005FF754
constructor TRvRenderPDF.Create(AOwner:TComponent);
begin
{*
 005FF754    push       ebx
 005FF755    push       esi
 005FF756    test       dl,dl
>005FF758    je         005FF762
 005FF75A    add        esp,0FFFFFFF0
 005FF75D    call       @ClassCreate
 005FF762    mov        ebx,edx
 005FF764    mov        esi,eax
 005FF766    xor        edx,edx
 005FF768    mov        eax,esi
 005FF76A    call       TRPRender.Create
 005FF76F    mov        byte ptr [esi+0C0],2; TRvRenderPDF.FontEncoding:TPDFFontEncoding
 005FF776    mov        edx,5FF7D4; 'Adobe Acrobat (PDF)'
 005FF77B    mov        eax,esi
 005FF77D    call       TRPRender.SetDisplayName
 005FF782    lea        eax,[esi+58]; TRvRenderPDF.?f58:String
 005FF785    mov        edx,5FF7F0; '*.pdf'
 005FF78A    call       @LStrAsg
 005FF78F    mov        byte ptr [esi+1E8],5A; TRvRenderPDF.ImageQuality:TImageQualityRange
 005FF796    mov        dword ptr [esi+1EC],12C; TRvRenderPDF.MetafileDPI:Integer
 005FF7A0    mov        dl,1
 005FF7A2    mov        eax,[005FED08]; TRPPDFDocInfo
 005FF7A7    call       TRPPDFDocInfo.Create; TRPPDFDocInfo.Create
 005FF7AC    mov        dword ptr [esi+1F0],eax; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 005FF7B2    mov        eax,esi
 005FF7B4    test       bl,bl
>005FF7B6    je         005FF7C7
 005FF7B8    call       @AfterConstruction
 005FF7BD    pop        dword ptr fs:[0]
 005FF7C4    add        esp,0C
 005FF7C7    mov        eax,esi
 005FF7C9    pop        esi
 005FF7CA    pop        ebx
 005FF7CB    ret
*}
end;

//005FF7F8
destructor TRvRenderPDF.Destroy;
begin
{*
 005FF7F8    push       ebx
 005FF7F9    push       esi
 005FF7FA    call       @BeforeDestruction
 005FF7FF    mov        ebx,edx
 005FF801    mov        esi,eax
 005FF803    mov        edx,ebx
 005FF805    and        dl,0FC
 005FF808    mov        eax,esi
 005FF80A    call       TRPRenderStream.Destroy
 005FF80F    lea        eax,[esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 005FF815    call       FreeAndNil
 005FF81A    test       bl,bl
>005FF81C    jle        005FF825
 005FF81E    mov        eax,esi
 005FF820    call       @ClassDestroy
 005FF825    pop        esi
 005FF826    pop        ebx
 005FF827    ret
*}
end;

//005FF828
procedure sub_005FF828;
begin
{*
 005FF828    push       ebx
 005FF829    mov        ebx,eax
 005FF82B    cmp        byte ptr [ebx+0D5],0; TRvRenderPDF.?fD5:byte
>005FF832    je         005FF83D
 005FF834    mov        byte ptr [ebx+0D5],0; TRvRenderPDF.?fD5:byte
>005FF83B    jmp        005FF844
 005FF83D    mov        eax,ebx
 005FF83F    call       005FFF60
 005FF844    push       dword ptr [ebx+3C]; TRvRenderPDF.?f3C:dword
 005FF847    push       dword ptr [ebx+38]; TRvRenderPDF.?f38:?Double
 005FF84A    mov        eax,ebx
 005FF84C    call       0060005C
 005FF851    push       dword ptr [ebx+44]; TRvRenderPDF.?f44:dword
 005FF854    push       dword ptr [ebx+40]; TRvRenderPDF.?f40:?Double
 005FF857    mov        eax,ebx
 005FF859    call       00600040
 005FF85E    pop        ebx
 005FF85F    ret
*}
end;

//005FF860
procedure sub_005FF860();
begin
{*
 005FF860    ret
*}
end;

//005FF864
//procedure sub_005FF864(?:?; ?:?; ?:?);
//begin
{*
 005FF864    push       ebp
 005FF865    mov        ebp,esp
 005FF867    push       dword ptr [ebp+14]
 005FF86A    push       dword ptr [ebp+10]
 005FF86D    push       dword ptr [ebp+0C]
 005FF870    push       dword ptr [ebp+8]
 005FF873    call       00600078
 005FF878    pop        ebp
 005FF879    ret        10
*}
//end;

//005FF87C
//procedure sub_005FF87C(?:?; ?:?; ?:?);
//begin
{*
 005FF87C    push       ebp
 005FF87D    mov        ebp,esp
 005FF87F    push       dword ptr [ebp+14]
 005FF882    push       dword ptr [ebp+10]
 005FF885    push       dword ptr [ebp+0C]
 005FF888    push       dword ptr [ebp+8]
 005FF88B    call       006000D8
 005FF890    pop        ebp
 005FF891    ret        10
*}
//end;

//005FF894
//procedure sub_005FF894(?:?; ?:?; ?:?);
//begin
{*
 005FF894    push       ebp
 005FF895    mov        ebp,esp
 005FF897    push       dword ptr [ebp+14]
 005FF89A    push       dword ptr [ebp+10]
 005FF89D    push       dword ptr [ebp+0C]
 005FF8A0    push       dword ptr [ebp+8]
 005FF8A3    call       00600138
 005FF8A8    pop        ebp
 005FF8A9    ret        10
*}
//end;

//005FF8AC
//procedure sub_005FF8AC(?:?; ?:?; ?:?);
//begin
{*
 005FF8AC    push       ebp
 005FF8AD    mov        ebp,esp
 005FF8AF    push       dword ptr [ebp+1C]
 005FF8B2    push       dword ptr [ebp+18]
 005FF8B5    push       dword ptr [ebp+14]
 005FF8B8    push       dword ptr [ebp+10]
 005FF8BB    call       00600078
 005FF8C0    pop        ebp
 005FF8C1    ret        18
*}
//end;

//005FF8C4
//procedure sub_005FF8C4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005FF8C4    push       ebp
 005FF8C5    mov        ebp,esp
 005FF8C7    add        esp,0FFFFFFEC
 005FF8CA    push       ebx
 005FF8CB    push       esi
 005FF8CC    push       edi
 005FF8CD    mov        esi,edx
 005FF8CF    lea        edi,[ebp-14]
 005FF8D2    movs       dword ptr [edi],dword ptr [esi]
 005FF8D3    movs       dword ptr [edi],dword ptr [esi]
 005FF8D4    movs       dword ptr [edi],dword ptr [esi]
 005FF8D5    movs       dword ptr [edi],dword ptr [esi]
 005FF8D6    mov        dword ptr [ebp-4],ecx
 005FF8D9    mov        ebx,eax
 005FF8DB    mov        eax,dword ptr [ebp-4]
 005FF8DE    call       @LStrAddRef
 005FF8E3    xor        eax,eax
 005FF8E5    push       ebp
 005FF8E6    push       5FF924
 005FF8EB    push       dword ptr fs:[eax]
 005FF8EE    mov        dword ptr fs:[eax],esp
 005FF8F1    push       dword ptr [ebp+14]
 005FF8F4    push       dword ptr [ebp+10]
 005FF8F7    push       dword ptr [ebp+0C]
 005FF8FA    push       dword ptr [ebp+8]
 005FF8FD    mov        ecx,dword ptr [ebp-4]
 005FF900    lea        edx,[ebp-14]
 005FF903    mov        eax,dword ptr [ebx+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 005FF909    call       006048A0
 005FF90E    xor        eax,eax
 005FF910    pop        edx
 005FF911    pop        ecx
 005FF912    pop        ecx
 005FF913    mov        dword ptr fs:[eax],edx
 005FF916    push       5FF92B
 005FF91B    lea        eax,[ebp-4]
 005FF91E    call       @LStrClr
 005FF923    ret
<005FF924    jmp        @HandleFinally
<005FF929    jmp        005FF91B
 005FF92B    pop        edi
 005FF92C    pop        esi
 005FF92D    pop        ebx
 005FF92E    mov        esp,ebp
 005FF930    pop        ebp
 005FF931    ret        10
*}
//end;

//005FF934
//procedure sub_005FF934(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005FF934    push       ebp
 005FF935    mov        ebp,esp
 005FF937    push       ebx
 005FF938    mov        ebx,eax
 005FF93A    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 005FF93D    mov        eax,dword ptr [eax+180]
 005FF943    call       TPen.GetColor
 005FF948    mov        edx,eax
 005FF94A    mov        eax,ebx
 005FF94C    call       006001A4
 005FF951    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 005FF954    mov        eax,dword ptr [eax+17C]
 005FF95A    call       TBrush.GetColor
 005FF95F    mov        edx,eax
 005FF961    mov        eax,ebx
 005FF963    call       006001BC
 005FF968    push       dword ptr [ebp+24]
 005FF96B    push       dword ptr [ebp+20]
 005FF96E    push       dword ptr [ebp+1C]
 005FF971    push       dword ptr [ebp+18]
 005FF974    push       dword ptr [ebp+14]
 005FF977    push       dword ptr [ebp+10]
 005FF97A    push       dword ptr [ebp+0C]
 005FF97D    push       dword ptr [ebp+8]
 005FF980    mov        eax,ebx
 005FF982    call       006001C8
 005FF987    pop        ebx
 005FF988    pop        ebp
 005FF989    ret        20
*}
//end;

//005FF98C
//procedure sub_005FF98C(?:?; ?:?; ?:?);
//begin
{*
 005FF98C    push       ebp
 005FF98D    mov        ebp,esp
 005FF98F    push       dword ptr [ebp+14]
 005FF992    push       dword ptr [ebp+10]
 005FF995    push       dword ptr [ebp+0C]
 005FF998    push       dword ptr [ebp+8]
 005FF99B    call       006001F4
 005FF9A0    pop        ebp
 005FF9A1    ret        10
*}
//end;

//005FF9A4
//procedure sub_005FF9A4(?:?; ?:?; ?:?; ?:?);
//begin
{*
 005FF9A4    push       ebp
 005FF9A5    mov        ebp,esp
 005FF9A7    push       ebx
 005FF9A8    push       esi
 005FF9A9    push       edi
 005FF9AA    mov        esi,eax
 005FF9AC    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 005FF9AF    mov        eax,dword ptr [eax+180]
 005FF9B5    call       TPen.GetColor
 005FF9BA    mov        edx,eax
 005FF9BC    mov        eax,esi
 005FF9BE    call       006001A4
 005FF9C3    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 005FF9C6    mov        eax,dword ptr [eax+17C]
 005FF9CC    call       TBrush.GetColor
 005FF9D1    mov        edi,eax
 005FF9D3    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 005FF9D6    mov        eax,dword ptr [eax+17C]
 005FF9DC    call       TBrush.GetStyle
 005FF9E1    mov        ebx,eax
 005FF9E3    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 005FF9E6    mov        eax,dword ptr [eax+17C]
 005FF9EC    mov        dl,1
 005FF9EE    call       TBrush.SetStyle
 005FF9F3    push       dword ptr [ebp+14]
 005FF9F6    push       dword ptr [ebp+10]
 005FF9F9    push       dword ptr [ebp+0C]
 005FF9FC    push       dword ptr [ebp+8]
 005FF9FF    mov        dl,1
 005FFA01    mov        eax,esi
 005FFA03    call       00600214
 005FFA08    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 005FFA0B    mov        eax,dword ptr [eax+17C]
 005FFA11    mov        edx,edi
 005FFA13    call       TBrush.SetColor
 005FFA18    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 005FFA1B    mov        eax,dword ptr [eax+17C]
 005FFA21    mov        edx,ebx
 005FFA23    call       TBrush.SetStyle
 005FFA28    pop        edi
 005FFA29    pop        esi
 005FFA2A    pop        ebx
 005FFA2B    pop        ebp
 005FFA2C    ret        10
*}
//end;

//005FFA30
procedure sub_005FFA30;
begin
{*
 005FFA30    push       ebx
 005FFA31    push       esi
 005FFA32    push       edi
 005FFA33    mov        ebx,eax
 005FFA35    mov        eax,ebx
 005FFA37    call       00600234
 005FFA3C    push       0
 005FFA3E    push       0
 005FFA40    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 005FFA46    call       TStream.SetPosition
 005FFA4B    mov        esi,dword ptr [ebx+7C]; TRvRenderPDF.?f7C:TFileStream
 005FFA4E    test       esi,esi
>005FFA50    jne        005FFA8C
 005FFA52    push       0FFFF
 005FFA57    mov        ecx,dword ptr [ebx+60]; TRvRenderPDF.?f60:TFileName
 005FFA5A    mov        dl,1
 005FFA5C    mov        eax,[0041CB08]; TFileStream
 005FFA61    call       TFileStream.Create; TFileStream.Create
 005FFA66    mov        esi,eax
 005FFA68    mov        dword ptr [ebx+7C],esi; TRvRenderPDF.?f7C:TFileStream
 005FFA6B    mov        edi,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 005FFA71    mov        eax,edi
 005FFA73    mov        edx,dword ptr [eax]
 005FFA75    call       dword ptr [edx]
 005FFA77    push       edx
 005FFA78    push       eax
 005FFA79    mov        edx,edi
 005FFA7B    mov        eax,esi
 005FFA7D    call       TStream.CopyFrom
 005FFA82    lea        eax,[ebx+7C]; TRvRenderPDF.?f7C:TFileStream
 005FFA85    call       FreeAndNil
>005FFA8A    jmp        005FFAA3
 005FFA8C    mov        edi,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 005FFA92    mov        eax,edi
 005FFA94    mov        edx,dword ptr [eax]
 005FFA96    call       dword ptr [edx]
 005FFA98    push       edx
 005FFA99    push       eax
 005FFA9A    mov        edx,edi
 005FFA9C    mov        eax,esi
 005FFA9E    call       TStream.CopyFrom
 005FFAA3    mov        eax,ebx
 005FFAA5    call       006027B8
 005FFAAA    pop        edi
 005FFAAB    pop        esi
 005FFAAC    pop        ebx
 005FFAAD    ret
*}
end;

//005FFAB0
procedure sub_005FFAB0();
begin
{*
 005FFAB0    call       00602740
 005FFAB5    ret
*}
end;

//005FFAB8
//procedure sub_005FFAB8(?:TRvRenderPDF; ?:AnsiString; ?:?; ?:?);
//begin
{*
 005FFAB8    push       ebp
 005FFAB9    mov        ebp,esp
 005FFABB    mov        ecx,4
 005FFAC0    push       0
 005FFAC2    push       0
 005FFAC4    dec        ecx
<005FFAC5    jne        005FFAC0
 005FFAC7    push       ecx
 005FFAC8    push       ebx
 005FFAC9    mov        ebx,edx
 005FFACB    xor        eax,eax
 005FFACD    push       ebp
 005FFACE    push       5FFC0A
 005FFAD3    push       dword ptr fs:[eax]
 005FFAD6    mov        dword ptr fs:[eax],esp
 005FFAD9    lea        eax,[ebp-4]
 005FFADC    mov        edx,dword ptr ds:[61B5A4]; ^ShortDateFormat:AnsiString
 005FFAE2    mov        edx,dword ptr [edx]
 005FFAE4    call       @LStrLAsg
 005FFAE9    lea        eax,[ebp-8]
 005FFAEC    mov        edx,dword ptr ds:[61BBE0]; ^LongTimeFormat:AnsiString
 005FFAF2    mov        edx,dword ptr [edx]
 005FFAF4    call       @LStrLAsg
 005FFAF9    mov        eax,[0061B5A4]; ^ShortDateFormat:AnsiString
 005FFAFE    mov        edx,5FFC20; 'yyyy/mm/dd'
 005FFB03    call       @LStrAsg
 005FFB08    mov        eax,[0061BBE0]; ^LongTimeFormat:AnsiString
 005FFB0D    mov        edx,5FFC34; 'hh:mm:ss'
 005FFB12    call       @LStrAsg
 005FFB17    push       dword ptr [ebp+0C]
 005FFB1A    push       dword ptr [ebp+8]
 005FFB1D    lea        eax,[ebp-0C]
 005FFB20    call       DateTimeToStr
 005FFB25    lea        eax,[ebp-10]
 005FFB28    push       eax
 005FFB29    mov        ecx,4
 005FFB2E    mov        edx,1
 005FFB33    mov        eax,dword ptr [ebp-0C]
 005FFB36    call       @LStrCopy
 005FFB3B    push       dword ptr [ebp-10]
 005FFB3E    lea        eax,[ebp-14]
 005FFB41    push       eax
 005FFB42    mov        ecx,2
 005FFB47    mov        edx,6
 005FFB4C    mov        eax,dword ptr [ebp-0C]
 005FFB4F    call       @LStrCopy
 005FFB54    push       dword ptr [ebp-14]
 005FFB57    lea        eax,[ebp-18]
 005FFB5A    push       eax
 005FFB5B    mov        ecx,2
 005FFB60    mov        edx,9
 005FFB65    mov        eax,dword ptr [ebp-0C]
 005FFB68    call       @LStrCopy
 005FFB6D    push       dword ptr [ebp-18]
 005FFB70    mov        eax,ebx
 005FFB72    mov        edx,3
 005FFB77    call       @LStrCatN
 005FFB7C    push       dword ptr [ebx]
 005FFB7E    lea        eax,[ebp-1C]
 005FFB81    push       eax
 005FFB82    mov        ecx,2
 005FFB87    mov        edx,0C
 005FFB8C    mov        eax,dword ptr [ebp-0C]
 005FFB8F    call       @LStrCopy
 005FFB94    push       dword ptr [ebp-1C]
 005FFB97    lea        eax,[ebp-20]
 005FFB9A    push       eax
 005FFB9B    mov        ecx,2
 005FFBA0    mov        edx,0F
 005FFBA5    mov        eax,dword ptr [ebp-0C]
 005FFBA8    call       @LStrCopy
 005FFBAD    push       dword ptr [ebp-20]
 005FFBB0    lea        eax,[ebp-24]
 005FFBB3    push       eax
 005FFBB4    mov        ecx,2
 005FFBB9    mov        edx,12
 005FFBBE    mov        eax,dword ptr [ebp-0C]
 005FFBC1    call       @LStrCopy
 005FFBC6    push       dword ptr [ebp-24]
 005FFBC9    mov        eax,ebx
 005FFBCB    mov        edx,4
 005FFBD0    call       @LStrCatN
 005FFBD5    mov        eax,[0061BBE0]; ^LongTimeFormat:AnsiString
 005FFBDA    mov        edx,dword ptr [ebp-8]
 005FFBDD    call       @LStrAsg
 005FFBE2    mov        eax,[0061B5A4]; ^ShortDateFormat:AnsiString
 005FFBE7    mov        edx,dword ptr [ebp-4]
 005FFBEA    call       @LStrAsg
 005FFBEF    xor        eax,eax
 005FFBF1    pop        edx
 005FFBF2    pop        ecx
 005FFBF3    pop        ecx
 005FFBF4    mov        dword ptr fs:[eax],edx
 005FFBF7    push       5FFC11
 005FFBFC    lea        eax,[ebp-24]
 005FFBFF    mov        edx,9
 005FFC04    call       @LStrArrayClr
 005FFC09    ret
<005FFC0A    jmp        @HandleFinally
<005FFC0F    jmp        005FFBFC
 005FFC11    pop        ebx
 005FFC12    mov        esp,ebp
 005FFC14    pop        ebp
 005FFC15    ret        8
*}
//end;

//005FFC40
//procedure sub_005FFC40(?:TRvRenderPDF; ?:?);
//begin
{*
 005FFC40    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 005FFC46    mov        dword ptr [eax+28],edx; TRPPDFPage.?f28:dword
 005FFC49    ret
*}
//end;

//005FFC4C
//procedure sub_005FFC4C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005FFC4C    push       ebp
 005FFC4D    mov        ebp,esp
 005FFC4F    push       ebx
 005FFC50    mov        ebx,eax
 005FFC52    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 005FFC55    mov        eax,dword ptr [eax+180]
 005FFC5B    call       TPen.GetColor
 005FFC60    mov        edx,eax
 005FFC62    mov        eax,ebx
 005FFC64    call       006001A4
 005FFC69    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 005FFC6C    mov        eax,dword ptr [eax+17C]
 005FFC72    call       TBrush.GetColor
 005FFC77    mov        edx,eax
 005FFC79    mov        eax,ebx
 005FFC7B    call       006001BC
 005FFC80    push       dword ptr [ebp+24]
 005FFC83    push       dword ptr [ebp+20]
 005FFC86    push       dword ptr [ebp+1C]
 005FFC89    push       dword ptr [ebp+18]
 005FFC8C    push       dword ptr [ebp+14]
 005FFC8F    push       dword ptr [ebp+10]
 005FFC92    push       dword ptr [ebp+0C]
 005FFC95    push       dword ptr [ebp+8]
 005FFC98    mov        eax,ebx
 005FFC9A    call       006002A8
 005FFC9F    pop        ebx
 005FFCA0    pop        ebp
 005FFCA1    ret        20
*}
//end;

//005FFCA4
//procedure sub_005FFCA4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005FFCA4    push       ebp
 005FFCA5    mov        ebp,esp
 005FFCA7    add        esp,0FFFFFFF4
 005FFCAA    push       ebx
 005FFCAB    xor        ecx,ecx
 005FFCAD    mov        dword ptr [ebp-0C],ecx
 005FFCB0    mov        ebx,edx
 005FFCB2    mov        dword ptr [ebp-4],eax
 005FFCB5    xor        eax,eax
 005FFCB7    push       ebp
 005FFCB8    push       5FFD5F
 005FFCBD    push       dword ptr fs:[eax]
 005FFCC0    mov        dword ptr fs:[eax],esp
 005FFCC3    mov        dl,1
 005FFCC5    mov        eax,[005EB70C]; TJPEGImage
 005FFCCA    call       TJPEGImage.Create; TJPEGImage.Create
 005FFCCF    mov        dword ptr [ebp-8],eax
 005FFCD2    xor        eax,eax
 005FFCD4    push       ebp
 005FFCD5    push       5FFD1F
 005FFCDA    push       dword ptr fs:[eax]
 005FFCDD    mov        dword ptr fs:[eax],esp
 005FFCE0    mov        eax,dword ptr [ebp-8]
 005FFCE3    mov        byte ptr [eax+3F],64; TJPEGImage.FQuality:TJPEGQualityRange
 005FFCE7    mov        edx,ebx
 005FFCE9    mov        eax,dword ptr [ebp-8]
 005FFCEC    mov        ecx,dword ptr [eax]
 005FFCEE    call       dword ptr [ecx+8]; TJPEGImage.Assign
 005FFCF1    lea        eax,[ebp-0C]
 005FFCF4    push       eax
 005FFCF5    mov        eax,dword ptr [ebp-4]
 005FFCF8    mov        eax,dword ptr [eax+70]; TRvRenderPDF.?f70:dword
 005FFCFB    mov        cl,byte ptr [eax+2C]
 005FFCFE    mov        edx,dword ptr [ebp-8]
 005FFD01    mov        eax,dword ptr [ebp-4]
 005FFD04    call       006002D4
 005FFD09    xor        eax,eax
 005FFD0B    pop        edx
 005FFD0C    pop        ecx
 005FFD0D    pop        ecx
 005FFD0E    mov        dword ptr fs:[eax],edx
 005FFD11    push       5FFD26
 005FFD16    mov        eax,dword ptr [ebp-8]
 005FFD19    call       TObject.Free
 005FFD1E    ret
<005FFD1F    jmp        @HandleFinally
<005FFD24    jmp        005FFD16
 005FFD26    push       dword ptr [ebp+24]
 005FFD29    push       dword ptr [ebp+20]
 005FFD2C    push       dword ptr [ebp+1C]
 005FFD2F    push       dword ptr [ebp+18]
 005FFD32    push       dword ptr [ebp+14]
 005FFD35    push       dword ptr [ebp+10]
 005FFD38    push       dword ptr [ebp+0C]
 005FFD3B    push       dword ptr [ebp+8]
 005FFD3E    mov        edx,dword ptr [ebp-0C]
 005FFD41    mov        eax,dword ptr [ebp-4]
 005FFD44    call       00600364
 005FFD49    xor        eax,eax
 005FFD4B    pop        edx
 005FFD4C    pop        ecx
 005FFD4D    pop        ecx
 005FFD4E    mov        dword ptr fs:[eax],edx
 005FFD51    push       5FFD66
 005FFD56    lea        eax,[ebp-0C]
 005FFD59    call       @LStrClr
 005FFD5E    ret
<005FFD5F    jmp        @HandleFinally
<005FFD64    jmp        005FFD56
 005FFD66    pop        ebx
 005FFD67    mov        esp,ebp
 005FFD69    pop        ebp
 005FFD6A    ret        20
*}
//end;

//005FFD70
//procedure sub_005FFD70(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005FFD70    push       ebp
 005FFD71    mov        ebp,esp
 005FFD73    add        esp,0FFFFFFDC
 005FFD76    xor        ecx,ecx
 005FFD78    mov        dword ptr [ebp-10],ecx
 005FFD7B    mov        dword ptr [ebp-8],edx
 005FFD7E    mov        dword ptr [ebp-4],eax
 005FFD81    xor        eax,eax
 005FFD83    push       ebp
 005FFD84    push       5FFE68
 005FFD89    push       dword ptr fs:[eax]
 005FFD8C    mov        dword ptr fs:[eax],esp
 005FFD8F    mov        dl,1
 005FFD91    mov        eax,[005EB70C]; TJPEGImage
 005FFD96    call       TJPEGImage.Create; TJPEGImage.Create
 005FFD9B    mov        dword ptr [ebp-0C],eax
 005FFD9E    xor        eax,eax
 005FFDA0    push       ebp
 005FFDA1    push       5FFDEC
 005FFDA6    push       dword ptr fs:[eax]
 005FFDA9    mov        dword ptr fs:[eax],esp
 005FFDAC    mov        eax,dword ptr [ebp-0C]
 005FFDAF    mov        byte ptr [eax+3F],64; TJPEGImage.FQuality:TJPEGQualityRange
 005FFDB3    mov        edx,dword ptr [ebp-8]
 005FFDB6    mov        eax,dword ptr [ebp-0C]
 005FFDB9    mov        ecx,dword ptr [eax]
 005FFDBB    call       dword ptr [ecx+8]; TJPEGImage.Assign
 005FFDBE    lea        eax,[ebp-10]
 005FFDC1    push       eax
 005FFDC2    mov        eax,dword ptr [ebp-4]
 005FFDC5    mov        eax,dword ptr [eax+70]; TRvRenderPDF.?f70:dword
 005FFDC8    mov        cl,byte ptr [eax+2C]
 005FFDCB    mov        edx,dword ptr [ebp-0C]
 005FFDCE    mov        eax,dword ptr [ebp-4]
 005FFDD1    call       006002D4
 005FFDD6    xor        eax,eax
 005FFDD8    pop        edx
 005FFDD9    pop        ecx
 005FFDDA    pop        ecx
 005FFDDB    mov        dword ptr fs:[eax],edx
 005FFDDE    push       5FFDF3
 005FFDE3    mov        eax,dword ptr [ebp-0C]
 005FFDE6    call       TObject.Free
 005FFDEB    ret
<005FFDEC    jmp        @HandleFinally
<005FFDF1    jmp        005FFDE3
 005FFDF3    mov        eax,dword ptr [ebp-8]
 005FFDF6    mov        edx,dword ptr [eax]
 005FFDF8    call       dword ptr [edx+2C]
 005FFDFB    mov        dword ptr [ebp-24],eax
 005FFDFE    fild       dword ptr [ebp-24]
 005FFE01    fdiv       dword ptr ds:[5FFE78]; 72:Single
 005FFE07    fmul       qword ptr [ebp+10]
 005FFE0A    fadd       qword ptr [ebp+20]
 005FFE0D    fstp       qword ptr [ebp-18]
 005FFE10    wait
 005FFE11    mov        eax,dword ptr [ebp-8]
 005FFE14    mov        edx,dword ptr [eax]
 005FFE16    call       dword ptr [edx+20]
 005FFE19    mov        dword ptr [ebp-24],eax
 005FFE1C    fild       dword ptr [ebp-24]
 005FFE1F    fdiv       dword ptr ds:[5FFE78]; 72:Single
 005FFE25    fmul       qword ptr [ebp+8]
 005FFE28    fadd       qword ptr [ebp+18]
 005FFE2B    fstp       qword ptr [ebp-20]
 005FFE2E    wait
 005FFE2F    push       dword ptr [ebp+24]
 005FFE32    push       dword ptr [ebp+20]
 005FFE35    push       dword ptr [ebp+1C]
 005FFE38    push       dword ptr [ebp+18]
 005FFE3B    push       dword ptr [ebp-14]
 005FFE3E    push       dword ptr [ebp-18]
 005FFE41    push       dword ptr [ebp-1C]
 005FFE44    push       dword ptr [ebp-20]
 005FFE47    mov        edx,dword ptr [ebp-10]
 005FFE4A    mov        eax,dword ptr [ebp-4]
 005FFE4D    call       00600364
 005FFE52    xor        eax,eax
 005FFE54    pop        edx
 005FFE55    pop        ecx
 005FFE56    pop        ecx
 005FFE57    mov        dword ptr fs:[eax],edx
 005FFE5A    push       5FFE6F
 005FFE5F    lea        eax,[ebp-10]
 005FFE62    call       @LStrClr
 005FFE67    ret
<005FFE68    jmp        @HandleFinally
<005FFE6D    jmp        005FFE5F
 005FFE6F    mov        esp,ebp
 005FFE71    pop        ebp
 005FFE72    ret        20
*}
//end;

//005FFE7C
//procedure sub_005FFE7C(?:?);
//begin
{*
 005FFE7C    push       ebp
 005FFE7D    mov        ebp,esp
 005FFE7F    push       0
 005FFE81    push       0
 005FFE83    push       ebx
 005FFE84    push       esi
 005FFE85    push       edi
 005FFE86    mov        esi,edx
 005FFE88    mov        ebx,eax
 005FFE8A    xor        eax,eax
 005FFE8C    push       ebp
 005FFE8D    push       5FFF51
 005FFE92    push       dword ptr fs:[eax]
 005FFE95    mov        dword ptr fs:[eax],esp
 005FFE98    lea        eax,[ebp-4]
 005FFE9B    push       eax
 005FFE9C    mov        edi,esi
 005FFE9E    mov        eax,edi
 005FFEA0    call       TFont.GetStyle
 005FFEA5    push       eax
 005FFEA6    lea        edx,[ebp-8]
 005FFEA9    mov        eax,edi
 005FFEAB    call       TFont.GetName
 005FFEB0    mov        edx,dword ptr [ebp-8]
 005FFEB3    mov        eax,ebx
 005FFEB5    pop        ecx
 005FFEB6    call       00600C3C
 005FFEBB    mov        eax,dword ptr [ebp-4]
 005FFEBE    push       eax
 005FFEBF    mov        eax,edi
 005FFEC1    call       TFont.GetStyle
 005FFEC6    mov        ecx,eax
 005FFEC8    mov        eax,ebx
 005FFECA    pop        edx
 005FFECB    call       00601038
 005FFED0    mov        dword ptr [ebx+0B0],eax; TRvRenderPDF.?fB0:TRPPDFFont
 005FFED6    mov        eax,edi
 005FFED8    call       TFont.GetStyle
 005FFEDD    test       al,4
>005FFEDF    je         005FFEEA
 005FFEE1    mov        byte ptr [ebx+0D0],1; TRvRenderPDF.?fD0:byte
>005FFEE8    jmp        005FFEF1
 005FFEEA    mov        byte ptr [ebx+0D0],0; TRvRenderPDF.?fD0:byte
 005FFEF1    mov        eax,edi
 005FFEF3    call       TFont.GetStyle
 005FFEF8    test       al,8
>005FFEFA    je         005FFF05
 005FFEFC    mov        byte ptr [ebx+0D1],1; TRvRenderPDF.?fD1:byte
>005FFF03    jmp        005FFF0C
 005FFF05    mov        byte ptr [ebx+0D1],0; TRvRenderPDF.?fD1:byte
 005FFF0C    mov        eax,edi
 005FFF0E    call       TFont.GetSize
 005FFF13    mov        dword ptr [ebx+0C4],eax; TRvRenderPDF.?fC4:Integer
 005FFF19    mov        edx,dword ptr [edi+18]
 005FFF1C    mov        eax,ebx
 005FFF1E    call       005FFC40
 005FFF23    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 005FFF26    fild       word ptr [eax+166]
 005FFF2C    fstp       qword ptr [ebx+0C8]; TRvRenderPDF.?fC8:?Double
 005FFF32    wait
 005FFF33    xor        eax,eax
 005FFF35    pop        edx
 005FFF36    pop        ecx
 005FFF37    pop        ecx
 005FFF38    mov        dword ptr fs:[eax],edx
 005FFF3B    push       5FFF58
 005FFF40    lea        eax,[ebp-8]
 005FFF43    call       @LStrClr
 005FFF48    lea        eax,[ebp-4]
 005FFF4B    call       @LStrClr
 005FFF50    ret
<005FFF51    jmp        @HandleFinally
<005FFF56    jmp        005FFF40
 005FFF58    pop        edi
 005FFF59    pop        esi
 005FFF5A    pop        ebx
 005FFF5B    pop        ecx
 005FFF5C    pop        ecx
 005FFF5D    pop        ebp
 005FFF5E    ret
*}
//end;

//005FFF60
//procedure sub_005FFF60(?:TRvRenderPDF);
//begin
{*
 005FFF60    push       ebp
 005FFF61    mov        ebp,esp
 005FFF63    add        esp,0FFFFFFEC
 005FFF66    push       ebx
 005FFF67    push       esi
 005FFF68    push       edi
 005FFF69    xor        edx,edx
 005FFF6B    mov        dword ptr [ebp-0C],edx
 005FFF6E    mov        ebx,eax
 005FFF70    xor        eax,eax
 005FFF72    push       ebp
 005FFF73    push       600008
 005FFF78    push       dword ptr fs:[eax]
 005FFF7B    mov        dword ptr fs:[eax],esp
 005FFF7E    mov        eax,dword ptr [ebx+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 005FFF84    mov        edx,dword ptr [eax+28]; TRPPDFPage.?f28:dword
 005FFF87    mov        dword ptr [ebp-4],edx
 005FFF8A    mov        edx,dword ptr [eax+34]; TRPPDFPage.?f34:TColor
 005FFF8D    mov        dword ptr [ebp-8],edx
 005FFF90    mov        edi,dword ptr [eax+4C]; TRPPDFPage.?f4C:TColor
 005FFF93    mov        ecx,ebx
 005FFF95    mov        dl,1
 005FFF97    mov        eax,[005FF034]; TRPPDFPage
 005FFF9C    call       TRPPDFPage.Create; TRPPDFPage.Create
 005FFFA1    mov        esi,eax
 005FFFA3    mov        dword ptr [ebx+0AC],esi; TRvRenderPDF.?fAC:TRPPDFPage
 005FFFA9    mov        eax,dword ptr [ebp-4]
 005FFFAC    mov        dword ptr [esi+28],eax; TRPPDFPage.?f28:dword
 005FFFAF    mov        eax,dword ptr [ebp-8]
 005FFFB2    mov        dword ptr [esi+34],eax; TRPPDFPage.?f34:TColor
 005FFFB5    mov        dword ptr [esi+4C],edi; TRPPDFPage.?f4C:TColor
 005FFFB8    push       0
 005FFFBA    lea        eax,[ebp-0C]
 005FFFBD    push       eax
 005FFFBE    mov        esi,dword ptr [ebx+90]; TRvRenderPDF.?f90:dword
 005FFFC4    mov        eax,esi
 005FFFC6    mov        edx,dword ptr [eax]
 005FFFC8    call       dword ptr [edx+14]
 005FFFCB    inc        eax
 005FFFCC    mov        dword ptr [ebp-14],eax
 005FFFCF    mov        byte ptr [ebp-10],0
 005FFFD3    lea        ecx,[ebp-14]
 005FFFD6    mov        edx,600020; 'P%d'
 005FFFDB    mov        eax,ebx
 005FFFDD    call       00601CA8
 005FFFE2    mov        edx,dword ptr [ebp-0C]
 005FFFE5    mov        ecx,dword ptr [ebx+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 005FFFEB    mov        eax,esi
 005FFFED    mov        ebx,dword ptr [eax]
 005FFFEF    call       dword ptr [ebx+3C]
 005FFFF2    xor        eax,eax
 005FFFF4    pop        edx
 005FFFF5    pop        ecx
 005FFFF6    pop        ecx
 005FFFF7    mov        dword ptr fs:[eax],edx
 005FFFFA    push       60000F
 005FFFFF    lea        eax,[ebp-0C]
 00600002    call       @LStrClr
 00600007    ret
<00600008    jmp        @HandleFinally
<0060000D    jmp        005FFFFF
 0060000F    pop        edi
 00600010    pop        esi
 00600011    pop        ebx
 00600012    mov        esp,ebp
 00600014    pop        ebp
 00600015    ret
*}
//end;

//00600024
//procedure sub_00600024(?:TRvRenderPDF);
//begin
{*
 00600024    add        esp,0FFFFFFF8
 00600027    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 0060002D    mov        edx,dword ptr [eax+20]; TRPPDFPage.?f20:?Double
 00600030    mov        dword ptr [esp],edx
 00600033    mov        edx,dword ptr [eax+24]; TRPPDFPage.?f24:dword
 00600036    mov        dword ptr [esp+4],edx
 0060003A    fld        qword ptr [esp]
 0060003D    pop        ecx
 0060003E    pop        edx
 0060003F    ret
*}
//end;

//00600040
//procedure sub_00600040(?:TRvRenderPDF; ?:?; ?:?);
//begin
{*
 00600040    push       ebp
 00600041    mov        ebp,esp
 00600043    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 00600049    mov        edx,dword ptr [ebp+8]
 0060004C    mov        dword ptr [eax+20],edx; TRPPDFPage.?f20:?Double
 0060004F    mov        edx,dword ptr [ebp+0C]
 00600052    mov        dword ptr [eax+24],edx; TRPPDFPage.?f24:dword
 00600055    pop        ebp
 00600056    ret        8
*}
//end;

//0060005C
//procedure sub_0060005C(?:TRvRenderPDF; ?:?; ?:?);
//begin
{*
 0060005C    push       ebp
 0060005D    mov        ebp,esp
 0060005F    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 00600065    mov        edx,dword ptr [ebp+8]
 00600068    mov        dword ptr [eax+18],edx; TRPPDFPage.?f18:?Double
 0060006B    mov        edx,dword ptr [ebp+0C]
 0060006E    mov        dword ptr [eax+1C],edx; TRPPDFPage.?f1C:dword
 00600071    pop        ebp
 00600072    ret        8
*}
//end;

//00600078
//procedure sub_00600078(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00600078    push       ebp
 00600079    mov        ebp,esp
 0060007B    push       ecx
 0060007C    push       ebx
 0060007D    mov        dword ptr [ebp-4],edx
 00600080    mov        ebx,eax
 00600082    mov        eax,dword ptr [ebp-4]
 00600085    call       @LStrAddRef
 0060008A    xor        eax,eax
 0060008C    push       ebp
 0060008D    push       6000C8
 00600092    push       dword ptr fs:[eax]
 00600095    mov        dword ptr fs:[eax],esp
 00600098    push       dword ptr [ebp+14]
 0060009B    push       dword ptr [ebp+10]
 0060009E    push       dword ptr [ebp+0C]
 006000A1    push       dword ptr [ebp+8]
 006000A4    mov        edx,dword ptr [ebp-4]
 006000A7    mov        eax,dword ptr [ebx+0AC]
 006000AD    call       00604B04
 006000B2    xor        eax,eax
 006000B4    pop        edx
 006000B5    pop        ecx
 006000B6    pop        ecx
 006000B7    mov        dword ptr fs:[eax],edx
 006000BA    push       6000CF
 006000BF    lea        eax,[ebp-4]
 006000C2    call       @LStrClr
 006000C7    ret
<006000C8    jmp        @HandleFinally
<006000CD    jmp        006000BF
 006000CF    pop        ebx
 006000D0    pop        ecx
 006000D1    pop        ebp
 006000D2    ret        10
*}
//end;

//006000D8
//procedure sub_006000D8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006000D8    push       ebp
 006000D9    mov        ebp,esp
 006000DB    push       ecx
 006000DC    push       ebx
 006000DD    mov        dword ptr [ebp-4],edx
 006000E0    mov        ebx,eax
 006000E2    mov        eax,dword ptr [ebp-4]
 006000E5    call       @LStrAddRef
 006000EA    xor        eax,eax
 006000EC    push       ebp
 006000ED    push       600128
 006000F2    push       dword ptr fs:[eax]
 006000F5    mov        dword ptr fs:[eax],esp
 006000F8    push       dword ptr [ebp+14]
 006000FB    push       dword ptr [ebp+10]
 006000FE    push       dword ptr [ebp+0C]
 00600101    push       dword ptr [ebp+8]
 00600104    mov        edx,dword ptr [ebp-4]
 00600107    mov        eax,dword ptr [ebx+0AC]
 0060010D    call       006047E4
 00600112    xor        eax,eax
 00600114    pop        edx
 00600115    pop        ecx
 00600116    pop        ecx
 00600117    mov        dword ptr fs:[eax],edx
 0060011A    push       60012F
 0060011F    lea        eax,[ebp-4]
 00600122    call       @LStrClr
 00600127    ret
<00600128    jmp        @HandleFinally
<0060012D    jmp        0060011F
 0060012F    pop        ebx
 00600130    pop        ecx
 00600131    pop        ebp
 00600132    ret        10
*}
//end;

//00600138
//procedure sub_00600138(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00600138    push       ebp
 00600139    mov        ebp,esp
 0060013B    push       ecx
 0060013C    push       ebx
 0060013D    mov        dword ptr [ebp-4],edx
 00600140    mov        ebx,eax
 00600142    mov        eax,dword ptr [ebp-4]
 00600145    call       @LStrAddRef
 0060014A    xor        eax,eax
 0060014C    push       ebp
 0060014D    push       600188
 00600152    push       dword ptr fs:[eax]
 00600155    mov        dword ptr fs:[eax],esp
 00600158    push       dword ptr [ebp+14]
 0060015B    push       dword ptr [ebp+10]
 0060015E    push       dword ptr [ebp+0C]
 00600161    push       dword ptr [ebp+8]
 00600164    mov        edx,dword ptr [ebp-4]
 00600167    mov        eax,dword ptr [ebx+0AC]
 0060016D    call       0060512C
 00600172    xor        eax,eax
 00600174    pop        edx
 00600175    pop        ecx
 00600176    pop        ecx
 00600177    mov        dword ptr fs:[eax],edx
 0060017A    push       60018F
 0060017F    lea        eax,[ebp-4]
 00600182    call       @LStrClr
 00600187    ret
<00600188    jmp        @HandleFinally
<0060018D    jmp        0060017F
 0060018F    pop        ebx
 00600190    pop        ecx
 00600191    pop        ebp
 00600192    ret        10
*}
//end;

//00600198
//function sub_00600198(?:TRvRenderPDF):?;
//begin
{*
 00600198    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 0060019E    mov        eax,dword ptr [eax+34]; TRPPDFPage.?f34:TColor
 006001A1    ret
*}
//end;

//006001A4
//procedure sub_006001A4(?:TRvRenderPDF; ?:TColor);
//begin
{*
 006001A4    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 006001AA    mov        dword ptr [eax+34],edx; TRPPDFPage.?f34:TColor
 006001AD    ret
*}
//end;

//006001B0
//function sub_006001B0(?:TRvRenderPDF):?;
//begin
{*
 006001B0    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 006001B6    mov        eax,dword ptr [eax+4C]; TRPPDFPage.?f4C:TColor
 006001B9    ret
*}
//end;

//006001BC
//procedure sub_006001BC(?:TRvRenderPDF; ?:TColor);
//begin
{*
 006001BC    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 006001C2    mov        dword ptr [eax+4C],edx; TRPPDFPage.?f4C:TColor
 006001C5    ret
*}
//end;

//006001C8
//procedure sub_006001C8(?:TRvRenderPDF; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006001C8    push       ebp
 006001C9    mov        ebp,esp
 006001CB    push       dword ptr [ebp+24]
 006001CE    push       dword ptr [ebp+20]
 006001D1    push       dword ptr [ebp+1C]
 006001D4    push       dword ptr [ebp+18]
 006001D7    push       dword ptr [ebp+14]
 006001DA    push       dword ptr [ebp+10]
 006001DD    push       dword ptr [ebp+0C]
 006001E0    push       dword ptr [ebp+8]
 006001E3    xor        edx,edx
 006001E5    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 006001EB    call       0060547C
 006001F0    pop        ebp
 006001F1    ret        20
*}
//end;

//006001F4
//procedure sub_006001F4(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006001F4    push       ebp
 006001F5    mov        ebp,esp
 006001F7    push       dword ptr [ebp+14]
 006001FA    push       dword ptr [ebp+10]
 006001FD    push       dword ptr [ebp+0C]
 00600200    push       dword ptr [ebp+8]
 00600203    mov        eax,dword ptr [eax+0AC]
 00600209    call       00604370
 0060020E    pop        ebp
 0060020F    ret        10
*}
//end;

//00600214
//procedure sub_00600214(?:TRvRenderPDF; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00600214    push       ebp
 00600215    mov        ebp,esp
 00600217    push       dword ptr [ebp+14]
 0060021A    push       dword ptr [ebp+10]
 0060021D    push       dword ptr [ebp+0C]
 00600220    push       dword ptr [ebp+8]
 00600223    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 00600229    call       006040F8
 0060022E    pop        ebp
 0060022F    ret        10
*}
//end;

//00600234
//procedure sub_00600234(?:TRvRenderPDF);
//begin
{*
 00600234    push       ebx
 00600235    mov        ebx,eax
 00600237    mov        eax,ebx
 00600239    call       00601104
 0060023E    mov        eax,ebx
 00600240    call       00601244
 00600245    mov        eax,ebx
 00600247    call       006015DC
 0060024C    mov        eax,ebx
 0060024E    call       00601614
 00600253    mov        eax,ebx
 00600255    call       0060164C
 0060025A    mov        eax,ebx
 0060025C    call       00601684
 00600261    mov        eax,ebx
 00600263    call       00601704
 00600268    mov        eax,ebx
 0060026A    call       0060173C
 0060026F    mov        eax,ebx
 00600271    call       00601828
 00600276    mov        eax,ebx
 00600278    call       00601290
 0060027D    mov        eax,ebx
 0060027F    call       006018F8
 00600284    mov        eax,ebx
 00600286    call       00601A78
 0060028B    mov        eax,ebx
 0060028D    call       00601BB0
 00600292    mov        eax,ebx
 00600294    call       00601C18
 00600299    pop        ebx
 0060029A    ret
*}
//end;

//0060029C
//function sub_0060029C(?:?):?;
//begin
{*
 0060029C    mov        eax,dword ptr [eax+0AC]
 006002A2    mov        eax,dword ptr [eax+28]
 006002A5    ret
*}
//end;

//006002A8
//procedure sub_006002A8(?:TRvRenderPDF; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006002A8    push       ebp
 006002A9    mov        ebp,esp
 006002AB    push       dword ptr [ebp+24]
 006002AE    push       dword ptr [ebp+20]
 006002B1    push       dword ptr [ebp+1C]
 006002B4    push       dword ptr [ebp+18]
 006002B7    push       dword ptr [ebp+14]
 006002BA    push       dword ptr [ebp+10]
 006002BD    push       dword ptr [ebp+0C]
 006002C0    push       dword ptr [ebp+8]
 006002C3    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 006002C9    call       006036E8
 006002CE    pop        ebp
 006002CF    ret        20
*}
//end;

//006002D4
//procedure sub_006002D4(?:TRvRenderPDF; ?:TJPEGImage; ?:?; ?:?);
//begin
{*
 006002D4    push       ebp
 006002D5    mov        ebp,esp
 006002D7    add        esp,0FFFFFFF0
 006002DA    push       ebx
 006002DB    push       esi
 006002DC    push       edi
 006002DD    mov        byte ptr [ebp-5],cl
 006002E0    mov        dword ptr [ebp-4],edx
 006002E3    mov        esi,eax
 006002E5    mov        edi,dword ptr [ebp+8]
 006002E8    cmp        byte ptr [ebp-5],0
>006002EC    jne        0060034E
 006002EE    mov        ecx,esi
 006002F0    mov        dl,1
 006002F2    mov        eax,[005FF330]; TRPPDFXObject
 006002F7    call       TRPPDFXObject.Create; TRPPDFXObject.Create
 006002FC    mov        ebx,eax
 006002FE    mov        eax,dword ptr [ebx+18]; TRPPDFXObject.?f18:TJPEGImage
 00600301    mov        byte ptr [eax+3F],64; TJPEGImage.FQuality:TJPEGQualityRange
 00600305    mov        edx,dword ptr [ebp-4]
 00600308    mov        eax,dword ptr [ebx+18]; TRPPDFXObject.?f18:TJPEGImage
 0060030B    mov        ecx,dword ptr [eax]
 0060030D    call       dword ptr [ecx+8]; TJPEGImage.Assign
 00600310    push       0
 00600312    push       edi
 00600313    mov        eax,dword ptr [esi+94]; TRvRenderPDF.?f94:dword
 00600319    mov        edx,dword ptr [eax]
 0060031B    call       dword ptr [edx+14]
 0060031E    inc        eax
 0060031F    mov        dword ptr [ebp-10],eax
 00600322    mov        byte ptr [ebp-0C],0
 00600326    lea        ecx,[ebp-10]
 00600329    mov        edx,600360; 'G%d'
 0060032E    mov        eax,esi
 00600330    call       00601CA8
 00600335    lea        eax,[ebx+14]; TRPPDFXObject.?f14:String
 00600338    mov        edx,dword ptr [edi]
 0060033A    call       @LStrAsg
 0060033F    mov        edx,dword ptr [edi]
 00600341    mov        ecx,ebx
 00600343    mov        eax,dword ptr [esi+94]; TRvRenderPDF.?f94:dword
 00600349    mov        ebx,dword ptr [eax]
 0060034B    call       dword ptr [ebx+3C]
 0060034E    pop        edi
 0060034F    pop        esi
 00600350    pop        ebx
 00600351    mov        esp,ebp
 00600353    pop        ebp
 00600354    ret        4
*}
//end;

//00600364
//procedure sub_00600364(?:TRvRenderPDF; ?:AnsiString; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00600364    push       ebp
 00600365    mov        ebp,esp
 00600367    push       ecx
 00600368    push       ebx
 00600369    mov        dword ptr [ebp-4],edx
 0060036C    mov        ebx,eax
 0060036E    mov        eax,dword ptr [ebp-4]
 00600371    call       @LStrAddRef
 00600376    xor        eax,eax
 00600378    push       ebp
 00600379    push       6003C0
 0060037E    push       dword ptr fs:[eax]
 00600381    mov        dword ptr fs:[eax],esp
 00600384    push       dword ptr [ebp+24]
 00600387    push       dword ptr [ebp+20]
 0060038A    push       dword ptr [ebp+1C]
 0060038D    push       dword ptr [ebp+18]
 00600390    push       dword ptr [ebp+14]
 00600393    push       dword ptr [ebp+10]
 00600396    push       dword ptr [ebp+0C]
 00600399    push       dword ptr [ebp+8]
 0060039C    mov        edx,dword ptr [ebp-4]
 0060039F    mov        eax,dword ptr [ebx+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 006003A5    call       006049A4
 006003AA    xor        eax,eax
 006003AC    pop        edx
 006003AD    pop        ecx
 006003AE    pop        ecx
 006003AF    mov        dword ptr fs:[eax],edx
 006003B2    push       6003C7
 006003B7    lea        eax,[ebp-4]
 006003BA    call       @LStrClr
 006003BF    ret
<006003C0    jmp        @HandleFinally
<006003C5    jmp        006003B7
 006003C7    pop        ebx
 006003C8    pop        ecx
 006003C9    pop        ebp
 006003CA    ret        20
*}
//end;

//006003D0
//procedure sub_006003D0(?:TRvRenderPDF; ?:AnsiString; ?:?; ?:?);
//begin
{*
 006003D0    push       ebp
 006003D1    mov        ebp,esp
 006003D3    add        esp,0FFFFFFF0
 006003D6    push       ebx
 006003D7    push       esi
 006003D8    push       edi
 006003D9    xor        ebx,ebx
 006003DB    mov        dword ptr [ebp-10],ebx
 006003DE    mov        dword ptr [ebp-0C],ebx
 006003E1    mov        byte ptr [ebp-5],cl
 006003E4    mov        dword ptr [ebp-4],edx
 006003E7    mov        ebx,eax
 006003E9    mov        esi,dword ptr [ebp+8]
 006003EC    mov        eax,dword ptr [ebp-4]
 006003EF    call       @LStrAddRef
 006003F4    xor        eax,eax
 006003F6    push       ebp
 006003F7    push       600A16
 006003FC    push       dword ptr fs:[eax]
 006003FF    mov        dword ptr fs:[eax],esp
 00600402    mov        eax,esi
 00600404    call       @LStrClr
 00600409    mov        edx,600A30; 'Courier-BoldOblique'
 0060040E    mov        eax,dword ptr [ebp-4]
 00600411    call       CompareText
 00600416    test       eax,eax
>00600418    jne        00600467
 0060041A    mov        ecx,ebx
 0060041C    mov        dl,1
 0060041E    mov        eax,[005FF15C]; TRPPDFFont
 00600423    call       TRPPDFFont.Create; TRPPDFFont.Create
 00600428    mov        edi,eax
 0060042A    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 00600430    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 00600433    mov        edx,dword ptr [ebp-4]
 00600436    call       @LStrAsg
 0060043B    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 00600441    push       esi
 00600442    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 00600445    mov        esi,61983C
 0060044A    mov        ecx,80
 0060044F    rep movs   dword ptr [edi],dword ptr [esi]
 00600451    pop        esi
 00600452    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 00600455    mov        ecx,eax
 00600457    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 0060045D    mov        edi,dword ptr [eax]
 0060045F    call       dword ptr [edi+3C]
>00600462    jmp        006009E3
 00600467    mov        edx,600A4C; 'Courier-Bold'
 0060046C    mov        eax,dword ptr [ebp-4]
 0060046F    call       CompareText
 00600474    test       eax,eax
>00600476    jne        006004C5
 00600478    mov        ecx,ebx
 0060047A    mov        dl,1
 0060047C    mov        eax,[005FF15C]; TRPPDFFont
 00600481    call       TRPPDFFont.Create; TRPPDFFont.Create
 00600486    mov        edi,eax
 00600488    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 0060048E    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 00600491    mov        edx,dword ptr [ebp-4]
 00600494    call       @LStrAsg
 00600499    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 0060049F    push       esi
 006004A0    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 006004A3    mov        esi,61983C
 006004A8    mov        ecx,80
 006004AD    rep movs   dword ptr [edi],dword ptr [esi]
 006004AF    pop        esi
 006004B0    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 006004B3    mov        ecx,eax
 006004B5    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 006004BB    mov        edi,dword ptr [eax]
 006004BD    call       dword ptr [edi+3C]
>006004C0    jmp        006009E3
 006004C5    mov        edx,600A64; 'Courier-Oblique'
 006004CA    mov        eax,dword ptr [ebp-4]
 006004CD    call       CompareText
 006004D2    test       eax,eax
>006004D4    jne        00600523
 006004D6    mov        ecx,ebx
 006004D8    mov        dl,1
 006004DA    mov        eax,[005FF15C]; TRPPDFFont
 006004DF    call       TRPPDFFont.Create; TRPPDFFont.Create
 006004E4    mov        edi,eax
 006004E6    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 006004EC    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 006004EF    mov        edx,dword ptr [ebp-4]
 006004F2    call       @LStrAsg
 006004F7    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 006004FD    push       esi
 006004FE    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 00600501    mov        esi,61983C
 00600506    mov        ecx,80
 0060050B    rep movs   dword ptr [edi],dword ptr [esi]
 0060050D    pop        esi
 0060050E    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 00600511    mov        ecx,eax
 00600513    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 00600519    mov        edi,dword ptr [eax]
 0060051B    call       dword ptr [edi+3C]
>0060051E    jmp        006009E3
 00600523    mov        edx,600A7C; 'Courier'
 00600528    mov        eax,dword ptr [ebp-4]
 0060052B    call       CompareText
 00600530    test       eax,eax
>00600532    jne        00600581
 00600534    mov        ecx,ebx
 00600536    mov        dl,1
 00600538    mov        eax,[005FF15C]; TRPPDFFont
 0060053D    call       TRPPDFFont.Create; TRPPDFFont.Create
 00600542    mov        edi,eax
 00600544    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 0060054A    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 0060054D    mov        edx,dword ptr [ebp-4]
 00600550    call       @LStrAsg
 00600555    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 0060055B    push       esi
 0060055C    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 0060055F    mov        esi,61983C
 00600564    mov        ecx,80
 00600569    rep movs   dword ptr [edi],dword ptr [esi]
 0060056B    pop        esi
 0060056C    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 0060056F    mov        ecx,eax
 00600571    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 00600577    mov        edi,dword ptr [eax]
 00600579    call       dword ptr [edi+3C]
>0060057C    jmp        006009E3
 00600581    mov        edx,600A8C; 'Times-BoldItalic'
 00600586    mov        eax,dword ptr [ebp-4]
 00600589    call       CompareText
 0060058E    test       eax,eax
>00600590    jne        006005DF
 00600592    mov        ecx,ebx
 00600594    mov        dl,1
 00600596    mov        eax,[005FF15C]; TRPPDFFont
 0060059B    call       TRPPDFFont.Create; TRPPDFFont.Create
 006005A0    mov        edi,eax
 006005A2    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 006005A8    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 006005AB    mov        edx,dword ptr [ebp-4]
 006005AE    call       @LStrAsg
 006005B3    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 006005B9    push       esi
 006005BA    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 006005BD    mov        esi,61A83C
 006005C2    mov        ecx,80
 006005C7    rep movs   dword ptr [edi],dword ptr [esi]
 006005C9    pop        esi
 006005CA    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 006005CD    mov        ecx,eax
 006005CF    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 006005D5    mov        edi,dword ptr [eax]
 006005D7    call       dword ptr [edi+3C]
>006005DA    jmp        006009E3
 006005DF    mov        edx,600AA8; 'Times-Bold'
 006005E4    mov        eax,dword ptr [ebp-4]
 006005E7    call       CompareText
 006005EC    test       eax,eax
>006005EE    jne        0060063D
 006005F0    mov        ecx,ebx
 006005F2    mov        dl,1
 006005F4    mov        eax,[005FF15C]; TRPPDFFont
 006005F9    call       TRPPDFFont.Create; TRPPDFFont.Create
 006005FE    mov        edi,eax
 00600600    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 00600606    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 00600609    mov        edx,dword ptr [ebp-4]
 0060060C    call       @LStrAsg
 00600611    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 00600617    push       esi
 00600618    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 0060061B    mov        esi,61A43C
 00600620    mov        ecx,80
 00600625    rep movs   dword ptr [edi],dword ptr [esi]
 00600627    pop        esi
 00600628    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 0060062B    mov        ecx,eax
 0060062D    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 00600633    mov        edi,dword ptr [eax]
 00600635    call       dword ptr [edi+3C]
>00600638    jmp        006009E3
 0060063D    mov        edx,600ABC; 'Times-Italic'
 00600642    mov        eax,dword ptr [ebp-4]
 00600645    call       CompareText
 0060064A    test       eax,eax
>0060064C    jne        0060069B
 0060064E    mov        ecx,ebx
 00600650    mov        dl,1
 00600652    mov        eax,[005FF15C]; TRPPDFFont
 00600657    call       TRPPDFFont.Create; TRPPDFFont.Create
 0060065C    mov        edi,eax
 0060065E    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 00600664    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 00600667    mov        edx,dword ptr [ebp-4]
 0060066A    call       @LStrAsg
 0060066F    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 00600675    push       esi
 00600676    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 00600679    mov        esi,61A63C
 0060067E    mov        ecx,80
 00600683    rep movs   dword ptr [edi],dword ptr [esi]
 00600685    pop        esi
 00600686    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 00600689    mov        ecx,eax
 0060068B    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 00600691    mov        edi,dword ptr [eax]
 00600693    call       dword ptr [edi+3C]
>00600696    jmp        006009E3
 0060069B    mov        edx,600AD4; 'Times-Roman'
 006006A0    mov        eax,dword ptr [ebp-4]
 006006A3    call       CompareText
 006006A8    test       eax,eax
>006006AA    jne        006006F9
 006006AC    mov        ecx,ebx
 006006AE    mov        dl,1
 006006B0    mov        eax,[005FF15C]; TRPPDFFont
 006006B5    call       TRPPDFFont.Create; TRPPDFFont.Create
 006006BA    mov        edi,eax
 006006BC    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 006006C2    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 006006C5    mov        edx,dword ptr [ebp-4]
 006006C8    call       @LStrAsg
 006006CD    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 006006D3    push       esi
 006006D4    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 006006D7    mov        esi,61A23C
 006006DC    mov        ecx,80
 006006E1    rep movs   dword ptr [edi],dword ptr [esi]
 006006E3    pop        esi
 006006E4    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 006006E7    mov        ecx,eax
 006006E9    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 006006EF    mov        edi,dword ptr [eax]
 006006F1    call       dword ptr [edi+3C]
>006006F4    jmp        006009E3
 006006F9    mov        edx,600AE8; 'Helvetica-BoldOblique'
 006006FE    mov        eax,dword ptr [ebp-4]
 00600701    call       CompareText
 00600706    test       eax,eax
>00600708    jne        00600757
 0060070A    mov        ecx,ebx
 0060070C    mov        dl,1
 0060070E    mov        eax,[005FF15C]; TRPPDFFont
 00600713    call       TRPPDFFont.Create; TRPPDFFont.Create
 00600718    mov        edi,eax
 0060071A    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 00600720    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 00600723    mov        edx,dword ptr [ebp-4]
 00600726    call       @LStrAsg
 0060072B    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 00600731    push       esi
 00600732    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 00600735    mov        esi,61A03C
 0060073A    mov        ecx,80
 0060073F    rep movs   dword ptr [edi],dword ptr [esi]
 00600741    pop        esi
 00600742    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 00600745    mov        ecx,eax
 00600747    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 0060074D    mov        edi,dword ptr [eax]
 0060074F    call       dword ptr [edi+3C]
>00600752    jmp        006009E3
 00600757    mov        edx,600B08; 'Helvetica-Bold'
 0060075C    mov        eax,dword ptr [ebp-4]
 0060075F    call       CompareText
 00600764    test       eax,eax
>00600766    jne        006007B5
 00600768    mov        ecx,ebx
 0060076A    mov        dl,1
 0060076C    mov        eax,[005FF15C]; TRPPDFFont
 00600771    call       TRPPDFFont.Create; TRPPDFFont.Create
 00600776    mov        edi,eax
 00600778    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 0060077E    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 00600781    mov        edx,dword ptr [ebp-4]
 00600784    call       @LStrAsg
 00600789    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 0060078F    push       esi
 00600790    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 00600793    mov        esi,619C3C
 00600798    mov        ecx,80
 0060079D    rep movs   dword ptr [edi],dword ptr [esi]
 0060079F    pop        esi
 006007A0    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 006007A3    mov        ecx,eax
 006007A5    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 006007AB    mov        edi,dword ptr [eax]
 006007AD    call       dword ptr [edi+3C]
>006007B0    jmp        006009E3
 006007B5    mov        edx,600B20; 'Helvetica-Oblique'
 006007BA    mov        eax,dword ptr [ebp-4]
 006007BD    call       CompareText
 006007C2    test       eax,eax
>006007C4    jne        00600813
 006007C6    mov        ecx,ebx
 006007C8    mov        dl,1
 006007CA    mov        eax,[005FF15C]; TRPPDFFont
 006007CF    call       TRPPDFFont.Create; TRPPDFFont.Create
 006007D4    mov        edi,eax
 006007D6    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 006007DC    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 006007DF    mov        edx,dword ptr [ebp-4]
 006007E2    call       @LStrAsg
 006007E7    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 006007ED    push       esi
 006007EE    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 006007F1    mov        esi,619E3C
 006007F6    mov        ecx,80
 006007FB    rep movs   dword ptr [edi],dword ptr [esi]
 006007FD    pop        esi
 006007FE    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 00600801    mov        ecx,eax
 00600803    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 00600809    mov        edi,dword ptr [eax]
 0060080B    call       dword ptr [edi+3C]
>0060080E    jmp        006009E3
 00600813    mov        edx,600B3C; 'Helvetica'
 00600818    mov        eax,dword ptr [ebp-4]
 0060081B    call       CompareText
 00600820    test       eax,eax
>00600822    jne        00600871
 00600824    mov        ecx,ebx
 00600826    mov        dl,1
 00600828    mov        eax,[005FF15C]; TRPPDFFont
 0060082D    call       TRPPDFFont.Create; TRPPDFFont.Create
 00600832    mov        edi,eax
 00600834    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 0060083A    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 0060083D    mov        edx,dword ptr [ebp-4]
 00600840    call       @LStrAsg
 00600845    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 0060084B    push       esi
 0060084C    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 0060084F    mov        esi,619A3C
 00600854    mov        ecx,80
 00600859    rep movs   dword ptr [edi],dword ptr [esi]
 0060085B    pop        esi
 0060085C    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 0060085F    mov        ecx,eax
 00600861    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 00600867    mov        edi,dword ptr [eax]
 00600869    call       dword ptr [edi+3C]
>0060086C    jmp        006009E3
 00600871    mov        edx,600B50; 'Symbol'
 00600876    mov        eax,dword ptr [ebp-4]
 00600879    call       CompareText
 0060087E    test       eax,eax
>00600880    jne        006008E0
 00600882    mov        cl,byte ptr [ebp-5]
 00600885    mov        edx,dword ptr [ebp-4]
 00600888    mov        eax,ebx
 0060088A    call       00600F70
 0060088F    test       al,al
>00600891    jne        006008E0
 00600893    mov        ecx,ebx
 00600895    mov        dl,1
 00600897    mov        eax,[005FF15C]; TRPPDFFont
 0060089C    call       TRPPDFFont.Create; TRPPDFFont.Create
 006008A1    mov        edi,eax
 006008A3    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 006008A9    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 006008AC    mov        edx,dword ptr [ebp-4]
 006008AF    call       @LStrAsg
 006008B4    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 006008BA    push       esi
 006008BB    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 006008BE    mov        esi,61AA3C
 006008C3    mov        ecx,80
 006008C8    rep movs   dword ptr [edi],dword ptr [esi]
 006008CA    pop        esi
 006008CB    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 006008CE    mov        ecx,eax
 006008D0    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 006008D6    mov        edi,dword ptr [eax]
 006008D8    call       dword ptr [edi+3C]
>006008DB    jmp        006009E3
 006008E0    mov        edx,600B60; 'ZapfDingbats'
 006008E5    mov        eax,dword ptr [ebp-4]
 006008E8    call       CompareText
 006008ED    test       eax,eax
>006008EF    jne        0060093E
 006008F1    mov        ecx,ebx
 006008F3    mov        dl,1
 006008F5    mov        eax,[005FF15C]; TRPPDFFont
 006008FA    call       TRPPDFFont.Create; TRPPDFFont.Create
 006008FF    mov        edi,eax
 00600901    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 00600907    lea        eax,[edi+18]; TRPPDFFont.?f18:String
 0060090A    mov        edx,dword ptr [ebp-4]
 0060090D    call       @LStrAsg
 00600912    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 00600918    push       esi
 00600919    lea        edi,[eax+1C]; TRPPDFFont.?f1C:?
 0060091C    mov        esi,61AC3C
 00600921    mov        ecx,80
 00600926    rep movs   dword ptr [edi],dword ptr [esi]
 00600928    pop        esi
 00600929    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 0060092C    mov        ecx,eax
 0060092E    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 00600934    mov        edi,dword ptr [eax]
 00600936    call       dword ptr [edi+3C]
>00600939    jmp        006009E3
 0060093E    mov        cl,byte ptr [ebp-5]
 00600941    mov        edx,dword ptr [ebp-4]
 00600944    mov        eax,ebx
 00600946    call       00600F70
 0060094B    test       al,al
>0060094D    je         0060099D
 0060094F    mov        ecx,ebx
 00600951    mov        dl,1
 00600953    mov        eax,[005FF2C8]; TRPPDFFontTrueType
 00600958    call       TRPPDFFontTrueType.Create; TRPPDFFontTrueType.Create
 0060095D    mov        edi,eax
 0060095F    mov        dword ptr [ebx+0B0],edi; TRvRenderPDF.?fB0:TRPPDFFont
 00600965    lea        eax,[edi+18]; TRPPDFFontTrueType.?f18:String
 00600968    mov        edx,dword ptr [ebp-4]
 0060096B    call       @LStrAsg
 00600970    mov        cl,byte ptr [ebp-5]
 00600973    mov        edx,dword ptr [ebp-4]
 00600976    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 0060097C    call       00606A7C
 00600981    mov        eax,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 00600987    mov        edx,dword ptr [eax+18]; TRPPDFFont.?f18:String
 0060098A    mov        ecx,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 00600990    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 00600996    mov        edi,dword ptr [eax]
 00600998    call       dword ptr [edi+3C]
>0060099B    jmp        006009E3
 0060099D    lea        eax,[ebp-0C]
 006009A0    push       eax
 006009A1    mov        cl,byte ptr [ebp-5]
 006009A4    mov        edx,600B3C; 'Helvetica'
 006009A9    mov        eax,ebx
 006009AB    call       00600C3C
 006009B0    mov        edx,dword ptr [ebp-0C]
 006009B3    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 006009B9    mov        ecx,dword ptr [eax]
 006009BB    call       dword ptr [ecx+54]
 006009BE    test       eax,eax
>006009C0    jge        006009E3
 006009C2    push       esi
 006009C3    lea        eax,[ebp-10]
 006009C6    push       eax
 006009C7    mov        cl,byte ptr [ebp-5]
 006009CA    mov        edx,600B3C; 'Helvetica'
 006009CF    mov        eax,ebx
 006009D1    call       00600C3C
 006009D6    mov        edx,dword ptr [ebp-10]
 006009D9    mov        cl,byte ptr [ebp-5]
 006009DC    mov        eax,ebx
 006009DE    call       006003D0
 006009E3    mov        eax,esi
 006009E5    mov        edx,dword ptr [ebx+0B0]; TRvRenderPDF.?fB0:TRPPDFFont
 006009EB    mov        edx,dword ptr [edx+18]; TRPPDFFont.?f18:String
 006009EE    call       @LStrAsg
 006009F3    xor        eax,eax
 006009F5    pop        edx
 006009F6    pop        ecx
 006009F7    pop        ecx
 006009F8    mov        dword ptr fs:[eax],edx
 006009FB    push       600A1D
 00600A00    lea        eax,[ebp-10]
 00600A03    mov        edx,2
 00600A08    call       @LStrArrayClr
 00600A0D    lea        eax,[ebp-4]
 00600A10    call       @LStrClr
 00600A15    ret
<00600A16    jmp        @HandleFinally
<00600A1B    jmp        00600A00
 00600A1D    pop        edi
 00600A1E    pop        esi
 00600A1F    pop        ebx
 00600A20    mov        esp,ebp
 00600A22    pop        ebp
 00600A23    ret        4
*}
//end;

//00600B70
//procedure sub_00600B70(?:AnsiString; ?:?);
//begin
{*
 00600B70    push       ebp
 00600B71    mov        ebp,esp
 00600B73    push       ebx
 00600B74    push       esi
 00600B75    mov        esi,eax
 00600B77    mov        eax,esi
 00600B79    mov        edx,dword ptr [ebp+8]
 00600B7C    mov        edx,dword ptr [edx-4]
 00600B7F    call       @LStrAsg
 00600B84    mov        eax,dword ptr [esi]
 00600B86    call       @LStrLen
 00600B8B    mov        ebx,eax
 00600B8D    cmp        ebx,1
>00600B90    jl         00600BAE
 00600B92    mov        eax,dword ptr [esi]
 00600B94    cmp        byte ptr [eax+ebx-1],20
>00600B99    jne        00600BA9
 00600B9B    mov        eax,esi
 00600B9D    mov        ecx,1
 00600BA2    mov        edx,ebx
 00600BA4    call       @LStrDelete
 00600BA9    dec        ebx
 00600BAA    test       ebx,ebx
<00600BAC    jne        00600B92
 00600BAE    mov        eax,dword ptr [ebp+8]
 00600BB1    test       byte ptr [eax-5],1
 00600BB5    setne      al
 00600BB8    test       al,al
>00600BBA    je         00600BD3
 00600BBC    mov        edx,dword ptr [ebp+8]
 00600BBF    test       byte ptr [edx-5],2
>00600BC3    je         00600BD3
 00600BC5    mov        eax,esi
 00600BC7    mov        edx,600C10; ',BoldItalic'
 00600BCC    call       @LStrCat
>00600BD1    jmp        00600C04
 00600BD3    mov        edx,dword ptr [ebp+8]
 00600BD6    test       byte ptr [edx-5],1
 00600BDA    setne      dl
 00600BDD    test       al,al
>00600BDF    je         00600BEF
 00600BE1    mov        eax,esi
 00600BE3    mov        edx,600C24; ',Bold'
 00600BE8    call       @LStrCat
>00600BED    jmp        00600C04
 00600BEF    mov        eax,dword ptr [ebp+8]
 00600BF2    test       byte ptr [eax-5],2
>00600BF6    je         00600C04
 00600BF8    mov        eax,esi
 00600BFA    mov        edx,600C34; ',Italic'
 00600BFF    call       @LStrCat
 00600C04    pop        esi
 00600C05    pop        ebx
 00600C06    pop        ebp
 00600C07    ret
*}
//end;

//00600C3C
//procedure sub_00600C3C(?:TRvRenderPDF; ?:AnsiString; ?:TFontStyles; ?:?);
//begin
{*
 00600C3C    push       ebp
 00600C3D    mov        ebp,esp
 00600C3F    add        esp,0FFFFFFF4
 00600C42    push       ebx
 00600C43    push       esi
 00600C44    xor        ebx,ebx
 00600C46    mov        dword ptr [ebp-0C],ebx
 00600C49    mov        byte ptr [ebp-5],cl
 00600C4C    mov        dword ptr [ebp-4],edx
 00600C4F    mov        esi,eax
 00600C51    mov        ebx,dword ptr [ebp+8]
 00600C54    mov        eax,dword ptr [ebp-4]
 00600C57    call       @LStrAddRef
 00600C5C    xor        eax,eax
 00600C5E    push       ebp
 00600C5F    push       600E2C
 00600C64    push       dword ptr fs:[eax]
 00600C67    mov        dword ptr fs:[eax],esp
 00600C6A    mov        edx,600E44; 'Courier'
 00600C6F    mov        eax,dword ptr [ebp-4]
 00600C72    call       CompareText
 00600C77    test       eax,eax
>00600C79    je         00600C8C
 00600C7B    mov        edx,600E54; 'Courier New'
 00600C80    mov        eax,dword ptr [ebp-4]
 00600C83    call       CompareText
 00600C88    test       eax,eax
>00600C8A    jne        00600C9D
 00600C8C    mov        eax,ebx
 00600C8E    mov        edx,600E44; 'Courier'
 00600C93    call       @LStrAsg
>00600C98    jmp        00600DC4
 00600C9D    mov        edx,600E68; 'Times New Roman'
 00600CA2    mov        eax,dword ptr [ebp-4]
 00600CA5    call       CompareText
 00600CAA    test       eax,eax
>00600CAC    je         00600CBF
 00600CAE    mov        edx,600E80; 'TimesRoman'
 00600CB3    mov        eax,dword ptr [ebp-4]
 00600CB6    call       CompareText
 00600CBB    test       eax,eax
>00600CBD    jne        00600D31
 00600CBF    mov        eax,ebx
 00600CC1    mov        edx,600E94; 'Times-Roman'
 00600CC6    call       @LStrAsg
 00600CCB    test       byte ptr [ebp-5],1
 00600CCF    setne      al
 00600CD2    test       al,al
>00600CD4    je         00600CED
 00600CD6    test       byte ptr [ebp-5],2
>00600CDA    je         00600CED
 00600CDC    mov        eax,ebx
 00600CDE    mov        edx,600EA8; 'Times-BoldItalic'
 00600CE3    call       @LStrAsg
>00600CE8    jmp        00600E0E
 00600CED    test       byte ptr [ebp-5],1
 00600CF1    setne      dl
 00600CF4    test       al,al
>00600CF6    je         00600D09
 00600CF8    mov        eax,ebx
 00600CFA    mov        edx,600EC4; 'Times-Bold'
 00600CFF    call       @LStrAsg
>00600D04    jmp        00600E0E
 00600D09    test       byte ptr [ebp-5],2
>00600D0D    je         00600D20
 00600D0F    mov        eax,ebx
 00600D11    mov        edx,600ED8; 'Times-Italic'
 00600D16    call       @LStrAsg
>00600D1B    jmp        00600E0E
 00600D20    mov        eax,ebx
 00600D22    mov        edx,600E94; 'Times-Roman'
 00600D27    call       @LStrAsg
>00600D2C    jmp        00600E0E
 00600D31    mov        edx,600EF0; 'Symbol'
 00600D36    mov        eax,dword ptr [ebp-4]
 00600D39    call       CompareText
 00600D3E    test       eax,eax
>00600D40    jne        00600D53
 00600D42    mov        eax,ebx
 00600D44    mov        edx,600EF0; 'Symbol'
 00600D49    call       @LStrAsg
>00600D4E    jmp        00600E0E
 00600D53    mov        edx,600F00; 'Arial'
 00600D58    mov        eax,dword ptr [ebp-4]
 00600D5B    call       CompareText
 00600D60    test       eax,eax
>00600D62    jne        00600D72
 00600D64    mov        eax,ebx
 00600D66    mov        edx,600F10; 'Helvetica'
 00600D6B    call       @LStrAsg
>00600D70    jmp        00600DC4
 00600D72    mov        edx,600F24; 'ZapfDingbats'
 00600D77    mov        eax,dword ptr [ebp-4]
 00600D7A    call       CompareText
 00600D7F    test       eax,eax
>00600D81    jne        00600D91
 00600D83    mov        eax,ebx
 00600D85    mov        edx,600F24; 'ZapfDingbats'
 00600D8A    call       @LStrAsg
>00600D8F    jmp        00600E0E
 00600D91    mov        cl,byte ptr [ebp-5]
 00600D94    mov        edx,dword ptr [ebp-4]
 00600D97    mov        eax,esi
 00600D99    call       00600F70
 00600D9E    test       al,al
>00600DA0    je         00600DB8
 00600DA2    push       ebp
 00600DA3    lea        eax,[ebp-0C]
 00600DA6    call       00600B70
 00600DAB    pop        ecx
 00600DAC    mov        edx,dword ptr [ebp-0C]
 00600DAF    mov        eax,ebx
 00600DB1    call       @LStrAsg
>00600DB6    jmp        00600E0E
 00600DB8    mov        eax,ebx
 00600DBA    mov        edx,600F10; 'Helvetica'
 00600DBF    call       @LStrAsg
 00600DC4    test       byte ptr [ebp-5],1
 00600DC8    setne      al
 00600DCB    test       al,al
>00600DCD    je         00600DE3
 00600DCF    test       byte ptr [ebp-5],2
>00600DD3    je         00600DE3
 00600DD5    mov        eax,ebx
 00600DD7    mov        edx,600F3C; '-BoldOblique'
 00600DDC    call       @LStrCat
>00600DE1    jmp        00600E0E
 00600DE3    test       byte ptr [ebp-5],1
 00600DE7    setne      dl
 00600DEA    test       al,al
>00600DEC    je         00600DFC
 00600DEE    mov        eax,ebx
 00600DF0    mov        edx,600F54; '-Bold'
 00600DF5    call       @LStrCat
>00600DFA    jmp        00600E0E
 00600DFC    test       byte ptr [ebp-5],2
>00600E00    je         00600E0E
 00600E02    mov        eax,ebx
 00600E04    mov        edx,600F64; '-Oblique'
 00600E09    call       @LStrCat
 00600E0E    xor        eax,eax
 00600E10    pop        edx
 00600E11    pop        ecx
 00600E12    pop        ecx
 00600E13    mov        dword ptr fs:[eax],edx
 00600E16    push       600E33
 00600E1B    lea        eax,[ebp-0C]
 00600E1E    call       @LStrClr
 00600E23    lea        eax,[ebp-4]
 00600E26    call       @LStrClr
 00600E2B    ret
<00600E2C    jmp        @HandleFinally
<00600E31    jmp        00600E1B
 00600E33    pop        esi
 00600E34    pop        ebx
 00600E35    mov        esp,ebp
 00600E37    pop        ebp
 00600E38    ret        4
*}
//end;

//00600F70
//function sub_00600F70(?:TRvRenderPDF; ?:AnsiString; ?:?):?;
//begin
{*
 00600F70    push       ebp
 00600F71    mov        ebp,esp
 00600F73    add        esp,0FFFFFFBC
 00600F76    mov        byte ptr [ebp-5],cl
 00600F79    mov        dword ptr [ebp-4],edx
 00600F7C    mov        eax,dword ptr [ebp-4]
 00600F7F    call       @LStrAddRef
 00600F84    xor        eax,eax
 00600F86    push       ebp
 00600F87    push       601027
 00600F8C    push       dword ptr fs:[eax]
 00600F8F    mov        dword ptr fs:[eax],esp
 00600F92    mov        dl,1
 00600F94    mov        eax,[0042A4BC]; TBitmap
 00600F99    call       TBitmap.Create; TBitmap.Create
 00600F9E    mov        dword ptr [ebp-0C],eax
 00600FA1    xor        eax,eax
 00600FA3    push       ebp
 00600FA4    push       60100A
 00600FA9    push       dword ptr fs:[eax]
 00600FAC    mov        dword ptr fs:[eax],esp
 00600FAF    mov        eax,dword ptr [ebp-0C]
 00600FB2    call       TBitmap.GetCanvas
 00600FB7    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 00600FBA    mov        edx,dword ptr [ebp-4]
 00600FBD    call       TFont.SetName
 00600FC2    mov        eax,dword ptr [ebp-0C]
 00600FC5    call       TBitmap.GetCanvas
 00600FCA    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 00600FCD    mov        dl,byte ptr [ebp-5]
 00600FD0    call       TFont.SetStyle
 00600FD5    lea        eax,[ebp-44]
 00600FD8    push       eax
 00600FD9    mov        eax,dword ptr [ebp-0C]
 00600FDC    call       TBitmap.GetCanvas
 00600FE1    call       TCanvas.GetHandle
 00600FE6    push       eax
 00600FE7    call       gdi32.GetTextMetricsA
 00600FEC    test       byte ptr [ebp-11],4
 00600FF0    setne      byte ptr [ebp-6]
 00600FF4    xor        eax,eax
 00600FF6    pop        edx
 00600FF7    pop        ecx
 00600FF8    pop        ecx
 00600FF9    mov        dword ptr fs:[eax],edx
 00600FFC    push       601011
 00601001    mov        eax,dword ptr [ebp-0C]
 00601004    call       TObject.Free
 00601009    ret
<0060100A    jmp        @HandleFinally
<0060100F    jmp        00601001
 00601011    xor        eax,eax
 00601013    pop        edx
 00601014    pop        ecx
 00601015    pop        ecx
 00601016    mov        dword ptr fs:[eax],edx
 00601019    push       60102E
 0060101E    lea        eax,[ebp-4]
 00601021    call       @LStrClr
 00601026    ret
<00601027    jmp        @HandleFinally
<0060102C    jmp        0060101E
 0060102E    mov        al,byte ptr [ebp-6]
 00601031    mov        esp,ebp
 00601033    pop        ebp
 00601034    ret
*}
//end;

//00601038
//function sub_00601038(?:TRvRenderPDF; ?:AnsiString; ?:TFontStyles):?;
//begin
{*
 00601038    push       ebp
 00601039    mov        ebp,esp
 0060103B    push       0
 0060103D    push       0
 0060103F    push       0
 00601041    push       0
 00601043    push       0
 00601045    push       ebx
 00601046    push       esi
 00601047    mov        byte ptr [ebp-5],cl
 0060104A    mov        dword ptr [ebp-4],edx
 0060104D    mov        ebx,eax
 0060104F    mov        eax,dword ptr [ebp-4]
 00601052    call       @LStrAddRef
 00601057    xor        eax,eax
 00601059    push       ebp
 0060105A    push       6010F3
 0060105F    push       dword ptr fs:[eax]
 00601062    mov        dword ptr fs:[eax],esp
 00601065    lea        eax,[ebp-0C]
 00601068    push       eax
 00601069    lea        edx,[ebp-10]
 0060106C    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 0060106F    mov        eax,dword ptr [eax+0E0]
 00601075    call       TFont.GetName
 0060107A    mov        edx,dword ptr [ebp-10]
 0060107D    mov        cl,byte ptr [ebp-5]
 00601080    mov        eax,ebx
 00601082    call       00600C3C
 00601087    mov        edx,dword ptr [ebp-0C]
 0060108A    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 00601090    mov        ecx,dword ptr [eax]
 00601092    call       dword ptr [ecx+54]
 00601095    test       eax,eax
>00601097    jge        006010AA
 00601099    lea        eax,[ebp-14]
 0060109C    push       eax
 0060109D    mov        cl,byte ptr [ebp-5]
 006010A0    mov        edx,dword ptr [ebp-4]
 006010A3    mov        eax,ebx
 006010A5    call       006003D0
 006010AA    mov        edx,dword ptr [ebp-0C]
 006010AD    mov        esi,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 006010B3    mov        eax,esi
 006010B5    mov        ecx,dword ptr [eax]
 006010B7    call       dword ptr [ecx+54]
 006010BA    mov        edx,eax
 006010BC    mov        eax,esi
 006010BE    mov        ecx,dword ptr [eax]
 006010C0    call       dword ptr [ecx+18]
 006010C3    mov        ebx,eax
 006010C5    xor        eax,eax
 006010C7    pop        edx
 006010C8    pop        ecx
 006010C9    pop        ecx
 006010CA    mov        dword ptr fs:[eax],edx
 006010CD    push       6010FA
 006010D2    lea        eax,[ebp-14]
 006010D5    call       @LStrClr
 006010DA    lea        eax,[ebp-10]
 006010DD    call       @LStrClr
 006010E2    lea        eax,[ebp-0C]
 006010E5    call       @LStrClr
 006010EA    lea        eax,[ebp-4]
 006010ED    call       @LStrClr
 006010F2    ret
<006010F3    jmp        @HandleFinally
<006010F8    jmp        006010D2
 006010FA    mov        eax,ebx
 006010FC    pop        esi
 006010FD    pop        ebx
 006010FE    mov        esp,ebp
 00601100    pop        ebp
 00601101    ret
*}
//end;

//00601104
//procedure sub_00601104(?:TRvRenderPDF);
//begin
{*
 00601104    push       ebx
 00601105    push       esi
 00601106    push       edi
 00601107    push       ebp
 00601108    add        esp,0FFFFFFF8
 0060110B    mov        ebp,eax
 0060110D    mov        ebx,1
 00601112    mov        eax,dword ptr [ebp+0A0]; TRvRenderPDF.?fA0:dword
 00601118    mov        edx,ebx
 0060111A    call       00602A84
 0060111F    inc        ebx
 00601120    mov        eax,dword ptr [ebp+0A8]; TRvRenderPDF.?fA8:dword
 00601126    mov        edx,ebx
 00601128    call       00602A84
 0060112D    inc        ebx
 0060112E    mov        eax,dword ptr [ebp+0A4]; TRvRenderPDF.?fA4:dword
 00601134    mov        edx,ebx
 00601136    call       00602A84
 0060113B    mov        eax,dword ptr [ebp+90]; TRvRenderPDF.?f90:dword
 00601141    mov        edx,dword ptr [eax]
 00601143    call       dword ptr [edx+14]
 00601146    mov        esi,eax
 00601148    dec        esi
 00601149    test       esi,esi
>0060114B    jl         0060117D
 0060114D    inc        esi
 0060114E    xor        edi,edi
 00601150    mov        eax,dword ptr [ebp+90]; TRvRenderPDF.?f90:dword
 00601156    mov        edx,edi
 00601158    mov        ecx,dword ptr [eax]
 0060115A    call       dword ptr [ecx+18]
 0060115D    mov        dword ptr [esp],eax
 00601160    inc        ebx
 00601161    mov        edx,ebx
 00601163    mov        eax,dword ptr [esp]
 00601166    call       00602A84
 0060116B    inc        ebx
 0060116C    mov        eax,dword ptr [esp]
 0060116F    mov        eax,dword ptr [eax+10]
 00601172    mov        edx,ebx
 00601174    call       00602A84
 00601179    inc        edi
 0060117A    dec        esi
<0060117B    jne        00601150
 0060117D    inc        ebx
 0060117E    mov        eax,dword ptr [ebp+0B4]; TRvRenderPDF.?fB4:dword
 00601184    mov        edx,ebx
 00601186    call       00602A84
 0060118B    mov        eax,dword ptr [ebp+98]; TRvRenderPDF.?f98:dword
 00601191    mov        edx,dword ptr [eax]
 00601193    call       dword ptr [edx+14]
 00601196    mov        esi,eax
 00601198    dec        esi
 00601199    test       esi,esi
>0060119B    jl         0060120E
 0060119D    inc        esi
 0060119E    xor        edi,edi
 006011A0    mov        eax,dword ptr [ebp+98]; TRvRenderPDF.?f98:dword
 006011A6    mov        edx,edi
 006011A8    mov        ecx,dword ptr [eax]
 006011AA    call       dword ptr [ecx+18]
 006011AD    mov        dword ptr [esp+4],eax
 006011B1    inc        ebx
 006011B2    mov        edx,ebx
 006011B4    mov        eax,dword ptr [esp+4]
 006011B8    call       00602A84
 006011BD    mov        eax,dword ptr [esp+4]
 006011C1    mov        edx,dword ptr ds:[5FF2C8]; TRPPDFFontTrueType
 006011C7    call       @IsClass
 006011CC    test       al,al
>006011CE    je         0060120A
 006011D0    inc        ebx
 006011D1    mov        eax,dword ptr [esp+4]
 006011D5    mov        eax,dword ptr [eax+220]
 006011DB    mov        edx,ebx
 006011DD    call       00602A84
 006011E2    cmp        byte ptr [ebp+0D4],0; TRvRenderPDF.EmbedFonts:Boolean
>006011E9    je         0060120A
 006011EB    mov        eax,dword ptr [esp+4]
 006011EF    cmp        byte ptr [eax+230],0
>006011F6    je         0060120A
 006011F8    inc        ebx
 006011F9    mov        eax,dword ptr [esp+4]
 006011FD    mov        eax,dword ptr [eax+224]
 00601203    mov        edx,ebx
 00601205    call       00602A84
 0060120A    inc        edi
 0060120B    dec        esi
<0060120C    jne        006011A0
 0060120E    mov        eax,dword ptr [ebp+94]; TRvRenderPDF.?f94:dword
 00601214    mov        edx,dword ptr [eax]
 00601216    call       dword ptr [edx+14]
 00601219    mov        esi,eax
 0060121B    dec        esi
 0060121C    test       esi,esi
>0060121E    jl         0060123C
 00601220    inc        esi
 00601221    xor        edi,edi
 00601223    mov        eax,dword ptr [ebp+94]; TRvRenderPDF.?f94:dword
 00601229    mov        edx,edi
 0060122B    mov        ecx,dword ptr [eax]
 0060122D    call       dword ptr [ecx+18]
 00601230    inc        ebx
 00601231    mov        edx,ebx
 00601233    call       00602A84
 00601238    inc        edi
 00601239    dec        esi
<0060123A    jne        00601223
 0060123C    pop        ecx
 0060123D    pop        edx
 0060123E    pop        ebp
 0060123F    pop        edi
 00601240    pop        esi
 00601241    pop        ebx
 00601242    ret
*}
//end;

//00601244
//procedure sub_00601244(?:TRvRenderPDF);
//begin
{*
 00601244    push       ebx
 00601245    mov        ebx,eax
 00601247    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 0060124D    mov        dword ptr [ebx+78],eax; TRvRenderPDF.?f78:TFileStream
 00601250    mov        edx,dword ptr ds:[6197EC]; ^'%PDF-1.3'
 00601256    mov        eax,ebx
 00601258    mov        ecx,dword ptr [eax]
 0060125A    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00601260    mov        edx,601288; '%âãÏÓ'
 00601265    mov        eax,ebx
 00601267    mov        ecx,dword ptr [eax]
 00601269    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060126F    xor        edx,edx
 00601271    mov        eax,ebx
 00601273    mov        ecx,dword ptr [eax]
 00601275    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060127B    pop        ebx
 0060127C    ret
*}
//end;

//00601290
//procedure sub_00601290(?:TRvRenderPDF);
//begin
{*
 00601290    push       ebp
 00601291    mov        ebp,esp
 00601293    mov        ecx,4
 00601298    push       0
 0060129A    push       0
 0060129C    dec        ecx
<0060129D    jne        00601298
 0060129F    push       ecx
 006012A0    push       ebx
 006012A1    push       esi
 006012A2    push       edi
 006012A3    mov        esi,eax
 006012A5    xor        eax,eax
 006012A7    push       ebp
 006012A8    push       6014E5
 006012AD    push       dword ptr fs:[eax]
 006012B0    mov        dword ptr fs:[eax],esp
 006012B3    mov        eax,dword ptr [esi+88]; TRvRenderPDF.?f88:dword
 006012B9    mov        dword ptr [esi+78],eax; TRvRenderPDF.?f78:TFileStream
 006012BC    mov        eax,esi
 006012BE    call       00601C40
 006012C3    push       0
 006012C5    mov        eax,dword ptr [esi+9C]; TRvRenderPDF.?f9C:dword
 006012CB    mov        edx,dword ptr [eax]
 006012CD    call       dword ptr [edx+14]
 006012D0    mov        dword ptr [ebp-8],eax
 006012D3    mov        byte ptr [ebp-4],0
 006012D7    lea        ecx,[ebp-8]
 006012DA    mov        edx,6014FC; '%d 0 obj'
 006012DF    mov        eax,esi
 006012E1    mov        ebx,dword ptr [eax]
 006012E3    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 006012E9    mov        edx,601510; '<<'
 006012EE    mov        eax,esi
 006012F0    mov        ecx,dword ptr [eax]
 006012F2    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006012F8    mov        ebx,dword ptr [esi+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 006012FE    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 00601304    cmp        dword ptr [eax+4],0; TRPPDFDocInfo.?f4:String
>00601308    je         0060133B
 0060130A    push       0
 0060130C    lea        ecx,[ebp-0C]
 0060130F    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 00601315    mov        edx,dword ptr [eax+4]; TRPPDFDocInfo.?f4:String
 00601318    mov        eax,ebx
 0060131A    call       006037F8
 0060131F    mov        eax,dword ptr [ebp-0C]
 00601322    mov        dword ptr [ebp-8],eax
 00601325    mov        byte ptr [ebp-4],0B
 00601329    lea        ecx,[ebp-8]
 0060132C    mov        edx,60151C; '/Title (%s)'
 00601331    mov        eax,esi
 00601333    mov        edi,dword ptr [eax]
 00601335    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 0060133B    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 00601341    cmp        dword ptr [eax+8],0; TRPPDFDocInfo.?f8:String
>00601345    je         00601378
 00601347    push       0
 00601349    lea        ecx,[ebp-10]
 0060134C    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 00601352    mov        edx,dword ptr [eax+8]; TRPPDFDocInfo.?f8:String
 00601355    mov        eax,ebx
 00601357    call       006037F8
 0060135C    mov        eax,dword ptr [ebp-10]
 0060135F    mov        dword ptr [ebp-8],eax
 00601362    mov        byte ptr [ebp-4],0B
 00601366    lea        ecx,[ebp-8]
 00601369    mov        edx,601530; '/Author (%s)'
 0060136E    mov        eax,esi
 00601370    mov        edi,dword ptr [eax]
 00601372    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 00601378    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 0060137E    cmp        dword ptr [eax+0C],0; TRPPDFDocInfo.?fC:String
>00601382    je         006013B5
 00601384    push       0
 00601386    lea        ecx,[ebp-14]
 00601389    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 0060138F    mov        edx,dword ptr [eax+0C]; TRPPDFDocInfo.?fC:String
 00601392    mov        eax,ebx
 00601394    call       006037F8
 00601399    mov        eax,dword ptr [ebp-14]
 0060139C    mov        dword ptr [ebp-8],eax
 0060139F    mov        byte ptr [ebp-4],0B
 006013A3    lea        ecx,[ebp-8]
 006013A6    mov        edx,601548; '/Subject (%s)'
 006013AB    mov        eax,esi
 006013AD    mov        edi,dword ptr [eax]
 006013AF    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 006013B5    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 006013BB    cmp        dword ptr [eax+10],0; TRPPDFDocInfo.?f10:String
>006013BF    je         006013F2
 006013C1    push       0
 006013C3    lea        ecx,[ebp-18]
 006013C6    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 006013CC    mov        edx,dword ptr [eax+10]; TRPPDFDocInfo.?f10:String
 006013CF    mov        eax,ebx
 006013D1    call       006037F8
 006013D6    mov        eax,dword ptr [ebp-18]
 006013D9    mov        dword ptr [ebp-8],eax
 006013DC    mov        byte ptr [ebp-4],0B
 006013E0    lea        ecx,[ebp-8]
 006013E3    mov        edx,601560; '/Keywords (%s)'
 006013E8    mov        eax,esi
 006013EA    mov        edi,dword ptr [eax]
 006013EC    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 006013F2    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 006013F8    cmp        dword ptr [eax+14],0; TRPPDFDocInfo.?f14:String
>006013FC    je         0060142F
 006013FE    push       0
 00601400    lea        ecx,[ebp-1C]
 00601403    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 00601409    mov        edx,dword ptr [eax+14]; TRPPDFDocInfo.?f14:String
 0060140C    mov        eax,ebx
 0060140E    call       006037F8
 00601413    mov        eax,dword ptr [ebp-1C]
 00601416    mov        dword ptr [ebp-8],eax
 00601419    mov        byte ptr [ebp-4],0B
 0060141D    lea        ecx,[ebp-8]
 00601420    mov        edx,601578; '/Creator (%s)'
 00601425    mov        eax,esi
 00601427    mov        edi,dword ptr [eax]
 00601429    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 0060142F    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 00601435    cmp        dword ptr [eax+18],0; TRPPDFDocInfo.?f18:String
>00601439    je         0060146C
 0060143B    push       0
 0060143D    lea        ecx,[ebp-20]
 00601440    mov        eax,dword ptr [esi+1F0]; TRvRenderPDF.DocInfo:TRPPDFDocInfo
 00601446    mov        edx,dword ptr [eax+18]; TRPPDFDocInfo.?f18:String
 00601449    mov        eax,ebx
 0060144B    call       006037F8
 00601450    mov        eax,dword ptr [ebp-20]
 00601453    mov        dword ptr [ebp-8],eax
 00601456    mov        byte ptr [ebp-4],0B
 0060145A    lea        ecx,[ebp-8]
 0060145D    mov        edx,601590; '/Producer (%s)'
 00601462    mov        eax,esi
 00601464    mov        ebx,dword ptr [eax]
 00601466    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 0060146C    push       0
 0060146E    call       Now
 00601473    add        esp,0FFFFFFF8
 00601476    fstp       qword ptr [esp]
 00601479    wait
 0060147A    lea        edx,[ebp-24]
 0060147D    mov        eax,esi
 0060147F    call       005FFAB8
 00601484    mov        eax,dword ptr [ebp-24]
 00601487    mov        dword ptr [ebp-8],eax
 0060148A    mov        byte ptr [ebp-4],0B
 0060148E    lea        ecx,[ebp-8]
 00601491    mov        edx,6015A8; '/CreationDate (D:%s)'
 00601496    mov        eax,esi
 00601498    mov        ebx,dword ptr [eax]
 0060149A    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 006014A0    mov        edx,6015C8; '>>'
 006014A5    mov        eax,esi
 006014A7    mov        ecx,dword ptr [eax]
 006014A9    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006014AF    mov        edx,6015D4; 'endobj'
 006014B4    mov        eax,esi
 006014B6    mov        ecx,dword ptr [eax]
 006014B8    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006014BE    xor        edx,edx
 006014C0    mov        eax,esi
 006014C2    mov        ecx,dword ptr [eax]
 006014C4    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006014CA    xor        eax,eax
 006014CC    pop        edx
 006014CD    pop        ecx
 006014CE    pop        ecx
 006014CF    mov        dword ptr fs:[eax],edx
 006014D2    push       6014EC
 006014D7    lea        eax,[ebp-24]
 006014DA    mov        edx,7
 006014DF    call       @LStrArrayClr
 006014E4    ret
<006014E5    jmp        @HandleFinally
<006014EA    jmp        006014D7
 006014EC    pop        edi
 006014ED    pop        esi
 006014EE    pop        ebx
 006014EF    mov        esp,ebp
 006014F1    pop        ebp
 006014F2    ret
*}
//end;

//006015DC
//procedure sub_006015DC(?:TRvRenderPDF);
//begin
{*
 006015DC    push       ebx
 006015DD    push       esi
 006015DE    mov        ebx,eax
 006015E0    mov        eax,ebx
 006015E2    call       00601C40
 006015E7    mov        eax,dword ptr [ebx+0A0]; TRvRenderPDF.?fA0:dword
 006015ED    mov        edx,dword ptr [eax]
 006015EF    call       dword ptr [edx]
 006015F1    mov        eax,dword ptr [ebx+0A0]; TRvRenderPDF.?fA0:dword
 006015F7    mov        esi,dword ptr [eax+0C]
 006015FA    mov        eax,esi
 006015FC    mov        edx,dword ptr [eax]
 006015FE    call       dword ptr [edx]
 00601600    push       edx
 00601601    push       eax
 00601602    mov        edx,esi
 00601604    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 0060160A    call       TStream.CopyFrom
 0060160F    pop        esi
 00601610    pop        ebx
 00601611    ret
*}
//end;

//00601614
//procedure sub_00601614(?:TRvRenderPDF);
//begin
{*
 00601614    push       ebx
 00601615    push       esi
 00601616    mov        ebx,eax
 00601618    mov        eax,ebx
 0060161A    call       00601C40
 0060161F    mov        eax,dword ptr [ebx+0A8]; TRvRenderPDF.?fA8:dword
 00601625    mov        edx,dword ptr [eax]
 00601627    call       dword ptr [edx]
 00601629    mov        eax,dword ptr [ebx+0A8]; TRvRenderPDF.?fA8:dword
 0060162F    mov        esi,dword ptr [eax+0C]
 00601632    mov        eax,esi
 00601634    mov        edx,dword ptr [eax]
 00601636    call       dword ptr [edx]
 00601638    push       edx
 00601639    push       eax
 0060163A    mov        edx,esi
 0060163C    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 00601642    call       TStream.CopyFrom
 00601647    pop        esi
 00601648    pop        ebx
 00601649    ret
*}
//end;

//0060164C
//procedure sub_0060164C(?:TRvRenderPDF);
//begin
{*
 0060164C    push       ebx
 0060164D    push       esi
 0060164E    mov        ebx,eax
 00601650    mov        eax,ebx
 00601652    call       00601C40
 00601657    mov        eax,dword ptr [ebx+0A4]; TRvRenderPDF.?fA4:dword
 0060165D    mov        edx,dword ptr [eax]
 0060165F    call       dword ptr [edx]
 00601661    mov        eax,dword ptr [ebx+0A4]; TRvRenderPDF.?fA4:dword
 00601667    mov        esi,dword ptr [eax+0C]
 0060166A    mov        eax,esi
 0060166C    mov        edx,dword ptr [eax]
 0060166E    call       dword ptr [edx]
 00601670    push       edx
 00601671    push       eax
 00601672    mov        edx,esi
 00601674    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 0060167A    call       TStream.CopyFrom
 0060167F    pop        esi
 00601680    pop        ebx
 00601681    ret
*}
//end;

//00601684
//procedure sub_00601684(?:TRvRenderPDF);
//begin
{*
 00601684    push       ebx
 00601685    push       esi
 00601686    push       edi
 00601687    push       ebp
 00601688    mov        ebx,eax
 0060168A    mov        eax,dword ptr [ebx+90]; TRvRenderPDF.?f90:dword
 00601690    mov        edx,dword ptr [eax]
 00601692    call       dword ptr [edx+14]
 00601695    mov        edi,eax
 00601697    dec        edi
 00601698    test       edi,edi
>0060169A    jl         006016FD
 0060169C    inc        edi
 0060169D    xor        ebp,ebp
 0060169F    mov        eax,ebx
 006016A1    call       00601C40
 006016A6    mov        edx,ebp
 006016A8    mov        eax,dword ptr [ebx+90]; TRvRenderPDF.?f90:dword
 006016AE    mov        ecx,dword ptr [eax]
 006016B0    call       dword ptr [ecx+18]
 006016B3    mov        esi,eax
 006016B5    mov        eax,esi
 006016B7    mov        edx,dword ptr [eax]
 006016B9    call       dword ptr [edx]
 006016BB    mov        eax,dword ptr [esi+0C]
 006016BE    mov        edx,dword ptr [eax]
 006016C0    call       dword ptr [edx]
 006016C2    push       edx
 006016C3    push       eax
 006016C4    mov        edx,dword ptr [esi+0C]
 006016C7    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 006016CD    call       TStream.CopyFrom
 006016D2    mov        eax,ebx
 006016D4    call       00601C40
 006016D9    mov        esi,dword ptr [esi+10]
 006016DC    mov        eax,esi
 006016DE    mov        edx,dword ptr [eax]
 006016E0    call       dword ptr [edx]
 006016E2    mov        eax,dword ptr [esi+0C]
 006016E5    mov        edx,dword ptr [eax]
 006016E7    call       dword ptr [edx]
 006016E9    push       edx
 006016EA    push       eax
 006016EB    mov        edx,dword ptr [esi+0C]
 006016EE    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 006016F4    call       TStream.CopyFrom
 006016F9    inc        ebp
 006016FA    dec        edi
<006016FB    jne        0060169F
 006016FD    pop        ebp
 006016FE    pop        edi
 006016FF    pop        esi
 00601700    pop        ebx
 00601701    ret
*}
//end;

//00601704
//procedure sub_00601704(?:TRvRenderPDF);
//begin
{*
 00601704    push       ebx
 00601705    push       esi
 00601706    mov        ebx,eax
 00601708    mov        eax,ebx
 0060170A    call       00601C40
 0060170F    mov        eax,dword ptr [ebx+0B4]; TRvRenderPDF.?fB4:dword
 00601715    mov        edx,dword ptr [eax]
 00601717    call       dword ptr [edx]
 00601719    mov        eax,dword ptr [ebx+0B4]; TRvRenderPDF.?fB4:dword
 0060171F    mov        esi,dword ptr [eax+0C]
 00601722    mov        eax,esi
 00601724    mov        edx,dword ptr [eax]
 00601726    call       dword ptr [edx]
 00601728    push       edx
 00601729    push       eax
 0060172A    mov        edx,esi
 0060172C    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 00601732    call       TStream.CopyFrom
 00601737    pop        esi
 00601738    pop        ebx
 00601739    ret
*}
//end;

//0060173C
//procedure sub_0060173C(?:TRvRenderPDF);
//begin
{*
 0060173C    push       ebx
 0060173D    push       esi
 0060173E    push       edi
 0060173F    push       ebp
 00601740    mov        ebx,eax
 00601742    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 00601748    mov        edx,dword ptr [eax]
 0060174A    call       dword ptr [edx+14]
 0060174D    mov        edi,eax
 0060174F    dec        edi
 00601750    test       edi,edi
>00601752    jl         00601821
 00601758    inc        edi
 00601759    xor        ebp,ebp
 0060175B    mov        eax,ebx
 0060175D    call       00601C40
 00601762    mov        edx,ebp
 00601764    mov        eax,dword ptr [ebx+98]; TRvRenderPDF.?f98:dword
 0060176A    mov        ecx,dword ptr [eax]
 0060176C    call       dword ptr [ecx+18]
 0060176F    mov        esi,eax
 00601771    mov        eax,esi
 00601773    mov        edx,dword ptr [eax]
 00601775    call       dword ptr [edx]
 00601777    mov        eax,dword ptr [esi+0C]
 0060177A    mov        edx,dword ptr [eax]
 0060177C    call       dword ptr [edx]
 0060177E    push       edx
 0060177F    push       eax
 00601780    mov        edx,dword ptr [esi+0C]
 00601783    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 00601789    call       TStream.CopyFrom
 0060178E    mov        eax,esi
 00601790    mov        edx,dword ptr ds:[5FF2C8]; TRPPDFFontTrueType
 00601796    call       @IsClass
 0060179B    test       al,al
>0060179D    je         00601819
 0060179F    mov        eax,ebx
 006017A1    call       00601C40
 006017A6    mov        eax,dword ptr [esi+220]
 006017AC    mov        edx,dword ptr [eax]
 006017AE    call       dword ptr [edx]
 006017B0    mov        eax,dword ptr [esi+220]
 006017B6    mov        eax,dword ptr [eax+0C]
 006017B9    mov        edx,dword ptr [eax]
 006017BB    call       dword ptr [edx]
 006017BD    push       edx
 006017BE    push       eax
 006017BF    mov        eax,dword ptr [esi+220]
 006017C5    mov        edx,dword ptr [eax+0C]
 006017C8    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 006017CE    call       TStream.CopyFrom
 006017D3    cmp        byte ptr [ebx+0D4],0; TRvRenderPDF.EmbedFonts:Boolean
>006017DA    je         00601819
 006017DC    cmp        byte ptr [esi+230],0
>006017E3    je         00601819
 006017E5    mov        eax,ebx
 006017E7    call       00601C40
 006017EC    mov        eax,dword ptr [esi+224]
 006017F2    mov        edx,dword ptr [eax]
 006017F4    call       dword ptr [edx]
 006017F6    mov        eax,dword ptr [esi+224]
 006017FC    mov        eax,dword ptr [eax+0C]
 006017FF    mov        edx,dword ptr [eax]
 00601801    call       dword ptr [edx]
 00601803    push       edx
 00601804    push       eax
 00601805    mov        eax,dword ptr [esi+224]
 0060180B    mov        edx,dword ptr [eax+0C]
 0060180E    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 00601814    call       TStream.CopyFrom
 00601819    inc        ebp
 0060181A    dec        edi
<0060181B    jne        0060175B
 00601821    pop        ebp
 00601822    pop        edi
 00601823    pop        esi
 00601824    pop        ebx
 00601825    ret
*}
//end;

//00601828
//procedure sub_00601828(?:TRvRenderPDF);
//begin
{*
 00601828    push       ebx
 00601829    push       esi
 0060182A    push       edi
 0060182B    push       ebp
 0060182C    mov        esi,eax
 0060182E    mov        eax,dword ptr [esi+94]; TRvRenderPDF.?f94:dword
 00601834    mov        edx,dword ptr [eax]
 00601836    call       dword ptr [edx+14]
 00601839    mov        edi,eax
 0060183B    dec        edi
 0060183C    test       edi,edi
>0060183E    jl         0060187A
 00601840    inc        edi
 00601841    xor        ebp,ebp
 00601843    mov        eax,esi
 00601845    call       00601C40
 0060184A    mov        edx,ebp
 0060184C    mov        eax,dword ptr [esi+94]; TRvRenderPDF.?f94:dword
 00601852    mov        ecx,dword ptr [eax]
 00601854    call       dword ptr [ecx+18]
 00601857    mov        ebx,eax
 00601859    mov        eax,ebx
 0060185B    mov        edx,dword ptr [eax]
 0060185D    call       dword ptr [edx]
 0060185F    mov        eax,dword ptr [ebx+0C]
 00601862    mov        edx,dword ptr [eax]
 00601864    call       dword ptr [edx]
 00601866    push       edx
 00601867    push       eax
 00601868    mov        edx,dword ptr [ebx+0C]
 0060186B    mov        eax,dword ptr [esi+88]; TRvRenderPDF.?f88:dword
 00601871    call       TStream.CopyFrom
 00601876    inc        ebp
 00601877    dec        edi
<00601878    jne        00601843
 0060187A    pop        ebp
 0060187B    pop        edi
 0060187C    pop        esi
 0060187D    pop        ebx
 0060187E    ret
*}
//end;

//00601880
//procedure sub_00601880(?:?; ?:AnsiString; ?:?);
//begin
{*
 00601880    push       ebp
 00601881    mov        ebp,esp
 00601883    add        esp,0FFFFFFF8
 00601886    push       ebx
 00601887    push       esi
 00601888    mov        ebx,edx
 0060188A    mov        esi,eax
 0060188C    push       0
 0060188E    push       ebx
 0060188F    mov        dword ptr [ebp-8],esi
 00601892    mov        byte ptr [ebp-4],0
 00601896    lea        ecx,[ebp-8]
 00601899    mov        eax,dword ptr [ebp+8]
 0060189C    mov        eax,dword ptr [eax-4]
 0060189F    mov        edx,6018E4; '%10.0d'
 006018A4    call       00601CA8
>006018A9    jmp        006018C5
 006018AB    mov        edx,dword ptr [ebx]
 006018AD    mov        eax,6018F4; ' '
 006018B2    call       @LStrPos
 006018B7    mov        esi,eax
 006018B9    mov        eax,ebx
 006018BB    call       @UniqueStringA
 006018C0    mov        byte ptr [eax+esi-1],30
 006018C5    mov        edx,dword ptr [ebx]
 006018C7    mov        eax,6018F4; ' '
 006018CC    call       @LStrPos
 006018D1    test       eax,eax
<006018D3    jg         006018AB
 006018D5    pop        esi
 006018D6    pop        ebx
 006018D7    pop        ecx
 006018D8    pop        ecx
 006018D9    pop        ebp
 006018DA    ret
*}
//end;

//006018F8
//procedure sub_006018F8(?:TRvRenderPDF);
//begin
{*
 006018F8    push       ebp
 006018F9    mov        ebp,esp
 006018FB    add        esp,0FFFFFFEC
 006018FE    push       ebx
 006018FF    push       esi
 00601900    push       edi
 00601901    xor        edx,edx
 00601903    mov        dword ptr [ebp-14],edx
 00601906    mov        dword ptr [ebp-8],edx
 00601909    mov        dword ptr [ebp-4],eax
 0060190C    xor        eax,eax
 0060190E    push       ebp
 0060190F    push       601A18
 00601914    push       dword ptr fs:[eax]
 00601917    mov        dword ptr fs:[eax],esp
 0060191A    mov        eax,dword ptr [ebp-4]
 0060191D    mov        eax,dword ptr [eax+88]; TRvRenderPDF.?f88:dword
 00601923    call       TStream.GetPosition
 00601928    mov        edx,dword ptr [ebp-4]
 0060192B    mov        dword ptr [edx+0B8],eax; TRvRenderPDF.?fB8:Int64
 00601931    mov        eax,dword ptr [ebp-4]
 00601934    mov        eax,dword ptr [eax+88]; TRvRenderPDF.?f88:dword
 0060193A    mov        edx,dword ptr [ebp-4]
 0060193D    mov        dword ptr [edx+78],eax; TRvRenderPDF.?f78:TFileStream
 00601940    mov        edx,601A30; 'xref'
 00601945    mov        eax,dword ptr [ebp-4]
 00601948    mov        ecx,dword ptr [eax]
 0060194A    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00601950    push       0
 00601952    mov        eax,dword ptr [ebp-4]
 00601955    mov        eax,dword ptr [eax+9C]; TRvRenderPDF.?f9C:dword
 0060195B    mov        edx,dword ptr [eax]
 0060195D    call       dword ptr [edx+14]
 00601960    inc        eax
 00601961    mov        dword ptr [ebp-10],eax
 00601964    mov        byte ptr [ebp-0C],0
 00601968    lea        ecx,[ebp-10]
 0060196B    mov        edx,601A40; '0 %d'
 00601970    mov        eax,dword ptr [ebp-4]
 00601973    mov        ebx,dword ptr [eax]
 00601975    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 0060197B    mov        edx,601A50; '0000000000 65535 f'
 00601980    mov        eax,dword ptr [ebp-4]
 00601983    mov        ecx,dword ptr [eax]
 00601985    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060198B    mov        eax,dword ptr [ebp-4]
 0060198E    mov        eax,dword ptr [eax+9C]; TRvRenderPDF.?f9C:dword
 00601994    mov        edx,dword ptr [eax]
 00601996    call       dword ptr [edx+14]
 00601999    mov        ebx,eax
 0060199B    test       ebx,ebx
>0060199D    jle        006019ED
 0060199F    mov        esi,1
 006019A4    push       ebp
 006019A5    mov        edx,esi
 006019A7    dec        edx
 006019A8    mov        eax,dword ptr [ebp-4]
 006019AB    mov        eax,dword ptr [eax+9C]; TRvRenderPDF.?f9C:dword
 006019B1    mov        ecx,dword ptr [eax]
 006019B3    call       dword ptr [ecx+18]
 006019B6    lea        edx,[ebp-14]
 006019B9    call       00601880
 006019BE    pop        ecx
 006019BF    mov        edx,dword ptr [ebp-14]
 006019C2    lea        eax,[ebp-8]
 006019C5    call       @LStrLAsg
 006019CA    push       0
 006019CC    mov        eax,dword ptr [ebp-8]
 006019CF    mov        dword ptr [ebp-10],eax
 006019D2    mov        byte ptr [ebp-0C],0B
 006019D6    lea        ecx,[ebp-10]
 006019D9    mov        edx,601A6C; '%s 00000 n'
 006019DE    mov        eax,dword ptr [ebp-4]
 006019E1    mov        edi,dword ptr [eax]
 006019E3    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 006019E9    inc        esi
 006019EA    dec        ebx
<006019EB    jne        006019A4
 006019ED    xor        edx,edx
 006019EF    mov        eax,dword ptr [ebp-4]
 006019F2    mov        ecx,dword ptr [eax]
 006019F4    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006019FA    xor        eax,eax
 006019FC    pop        edx
 006019FD    pop        ecx
 006019FE    pop        ecx
 006019FF    mov        dword ptr fs:[eax],edx
 00601A02    push       601A1F
 00601A07    lea        eax,[ebp-14]
 00601A0A    call       @LStrClr
 00601A0F    lea        eax,[ebp-8]
 00601A12    call       @LStrClr
 00601A17    ret
<00601A18    jmp        @HandleFinally
<00601A1D    jmp        00601A07
 00601A1F    pop        edi
 00601A20    pop        esi
 00601A21    pop        ebx
 00601A22    mov        esp,ebp
 00601A24    pop        ebp
 00601A25    ret
*}
//end;

//00601A78
//procedure sub_00601A78(?:TRvRenderPDF);
//begin
{*
 00601A78    push       ebx
 00601A79    push       esi
 00601A7A    add        esp,0FFFFFFF8
 00601A7D    mov        ebx,eax
 00601A7F    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 00601A85    mov        dword ptr [ebx+78],eax; TRvRenderPDF.?f78:TFileStream
 00601A88    mov        edx,601B4C; 'trailer'
 00601A8D    mov        eax,ebx
 00601A8F    mov        ecx,dword ptr [eax]
 00601A91    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00601A97    mov        edx,601B5C; '<<'
 00601A9C    mov        eax,ebx
 00601A9E    mov        ecx,dword ptr [eax]
 00601AA0    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00601AA6    push       0
 00601AA8    mov        eax,dword ptr [ebx+9C]; TRvRenderPDF.?f9C:dword
 00601AAE    mov        edx,dword ptr [eax]
 00601AB0    call       dword ptr [edx+14]
 00601AB3    inc        eax
 00601AB4    mov        dword ptr [esp+4],eax
 00601AB8    mov        byte ptr [esp+8],0
 00601ABD    lea        ecx,[esp+4]
 00601AC1    mov        edx,601B68; '/Size %d'
 00601AC6    mov        eax,ebx
 00601AC8    mov        esi,dword ptr [eax]
 00601ACA    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00601AD0    push       0
 00601AD2    mov        eax,dword ptr [ebx+0A0]; TRvRenderPDF.?fA0:dword
 00601AD8    call       00602A80
 00601ADD    mov        dword ptr [esp+4],eax
 00601AE1    mov        byte ptr [esp+8],0
 00601AE6    lea        ecx,[esp+4]
 00601AEA    mov        edx,601B7C; '/Root %d 0 R'
 00601AEF    mov        eax,ebx
 00601AF1    mov        esi,dword ptr [eax]
 00601AF3    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00601AF9    push       0
 00601AFB    mov        eax,dword ptr [ebx+9C]; TRvRenderPDF.?f9C:dword
 00601B01    mov        edx,dword ptr [eax]
 00601B03    call       dword ptr [edx+14]
 00601B06    mov        dword ptr [esp+4],eax
 00601B0A    mov        byte ptr [esp+8],0
 00601B0F    lea        ecx,[esp+4]
 00601B13    mov        edx,601B94; '/Info %d 0 R'
 00601B18    mov        eax,ebx
 00601B1A    mov        esi,dword ptr [eax]
 00601B1C    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00601B22    mov        edx,601BAC; '>>'
 00601B27    mov        eax,ebx
 00601B29    mov        ecx,dword ptr [eax]
 00601B2B    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00601B31    xor        edx,edx
 00601B33    mov        eax,ebx
 00601B35    mov        ecx,dword ptr [eax]
 00601B37    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00601B3D    pop        ecx
 00601B3E    pop        edx
 00601B3F    pop        esi
 00601B40    pop        ebx
 00601B41    ret
*}
//end;

//00601BB0
//procedure sub_00601BB0(?:TRvRenderPDF);
//begin
{*
 00601BB0    push       ebx
 00601BB1    add        esp,0FFFFFFF8
 00601BB4    mov        ebx,eax
 00601BB6    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 00601BBC    mov        dword ptr [ebx+78],eax; TRvRenderPDF.?f78:TFileStream
 00601BBF    mov        edx,601C00; 'startxref'
 00601BC4    mov        eax,ebx
 00601BC6    mov        ecx,dword ptr [eax]
 00601BC8    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00601BCE    push       0
 00601BD0    mov        eax,dword ptr [ebx+0B8]; TRvRenderPDF.?fB8:Int64
 00601BD6    mov        dword ptr [esp+4],eax
 00601BDA    mov        byte ptr [esp+8],0
 00601BDF    lea        ecx,[esp+4]
 00601BE3    mov        edx,601C14; '%d'
 00601BE8    mov        eax,ebx
 00601BEA    mov        ebx,dword ptr [eax]
 00601BEC    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 00601BF2    pop        ecx
 00601BF3    pop        edx
 00601BF4    pop        ebx
 00601BF5    ret
*}
//end;

//00601C18
//procedure sub_00601C18(?:TRvRenderPDF);
//begin
{*
 00601C18    mov        edx,dword ptr [eax+88]; TRvRenderPDF.?f88:dword
 00601C1E    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 00601C21    mov        edx,601C38; '%%EOF'
 00601C26    mov        ecx,dword ptr [eax]
 00601C28    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00601C2E    ret
*}
//end;

//00601C40
//procedure sub_00601C40(?:TRvRenderPDF);
//begin
{*
 00601C40    push       ebp
 00601C41    mov        ebp,esp
 00601C43    push       0
 00601C45    push       ebx
 00601C46    push       esi
 00601C47    mov        ebx,eax
 00601C49    xor        eax,eax
 00601C4B    push       ebp
 00601C4C    push       601C9C
 00601C51    push       dword ptr fs:[eax]
 00601C54    mov        dword ptr fs:[eax],esp
 00601C57    mov        esi,dword ptr [ebx+9C]; TRvRenderPDF.?f9C:dword
 00601C5D    mov        eax,esi
 00601C5F    mov        edx,dword ptr [eax]
 00601C61    call       dword ptr [edx+14]
 00601C64    inc        eax
 00601C65    lea        edx,[ebp-4]
 00601C68    call       IntToStr
 00601C6D    mov        eax,dword ptr [ebp-4]
 00601C70    push       eax
 00601C71    mov        eax,dword ptr [ebx+88]; TRvRenderPDF.?f88:dword
 00601C77    call       TStream.GetPosition
 00601C7C    mov        ecx,eax
 00601C7E    mov        eax,esi
 00601C80    pop        edx
 00601C81    mov        ebx,dword ptr [eax]
 00601C83    call       dword ptr [ebx+3C]
 00601C86    xor        eax,eax
 00601C88    pop        edx
 00601C89    pop        ecx
 00601C8A    pop        ecx
 00601C8B    mov        dword ptr fs:[eax],edx
 00601C8E    push       601CA3
 00601C93    lea        eax,[ebp-4]
 00601C96    call       @LStrClr
 00601C9B    ret
<00601C9C    jmp        @HandleFinally
<00601CA1    jmp        00601C93
 00601CA3    pop        esi
 00601CA4    pop        ebx
 00601CA5    pop        ecx
 00601CA6    pop        ebp
 00601CA7    ret
*}
//end;

//00601CA8
//procedure sub_00601CA8(?:TRvRenderPDF; ?:AnsiString; ?:Extended; ?:?; ?:?);
//begin
{*
 00601CA8    push       ebp
 00601CA9    mov        ebp,esp
 00601CAB    push       ebx
 00601CAC    push       esi
 00601CAD    push       edi
 00601CAE    mov        edi,ecx
 00601CB0    mov        esi,edx
 00601CB2    mov        ebx,dword ptr ds:[61C46C]; ^DecimalSeparator:Char
 00601CB8    mov        bl,byte ptr [ebx]
 00601CBA    mov        eax,[0061C46C]; ^DecimalSeparator:Char
 00601CBF    mov        byte ptr [eax],2E
 00601CC2    mov        eax,dword ptr [ebp+8]
 00601CC5    push       eax
 00601CC6    mov        edx,edi
 00601CC8    mov        ecx,dword ptr [ebp+0C]
 00601CCB    mov        eax,esi
 00601CCD    call       Format
 00601CD2    mov        eax,[0061C46C]; ^DecimalSeparator:Char
 00601CD7    mov        byte ptr [eax],bl
 00601CD9    pop        edi
 00601CDA    pop        esi
 00601CDB    pop        ebx
 00601CDC    pop        ebp
 00601CDD    ret        8
*}
//end;

//00601CE0
//procedure sub_00601CE0(?:?; ?:?; ?:?);
//begin
{*
 00601CE0    push       ebp
 00601CE1    mov        ebp,esp
 00601CE3    push       0
 00601CE5    push       ebx
 00601CE6    push       esi
 00601CE7    push       edi
 00601CE8    mov        edi,ecx
 00601CEA    mov        esi,edx
 00601CEC    mov        ebx,eax
 00601CEE    xor        eax,eax
 00601CF0    push       ebp
 00601CF1    push       601D32
 00601CF6    push       dword ptr fs:[eax]
 00601CF9    mov        dword ptr fs:[eax],esp
 00601CFC    mov        eax,dword ptr [ebp+8]
 00601CFF    push       eax
 00601D00    lea        eax,[ebp-4]
 00601D03    push       eax
 00601D04    mov        ecx,edi
 00601D06    mov        edx,esi
 00601D08    mov        eax,ebx
 00601D0A    call       00601CA8
 00601D0F    mov        edx,dword ptr [ebp-4]
 00601D12    mov        eax,ebx
 00601D14    mov        ecx,dword ptr [eax]
 00601D16    call       dword ptr [ecx+0BC]; TRvRenderPDF.sub_005901E8
 00601D1C    xor        eax,eax
 00601D1E    pop        edx
 00601D1F    pop        ecx
 00601D20    pop        ecx
 00601D21    mov        dword ptr fs:[eax],edx
 00601D24    push       601D39
 00601D29    lea        eax,[ebp-4]
 00601D2C    call       @LStrClr
 00601D31    ret
<00601D32    jmp        @HandleFinally
<00601D37    jmp        00601D29
 00601D39    pop        edi
 00601D3A    pop        esi
 00601D3B    pop        ebx
 00601D3C    pop        ecx
 00601D3D    pop        ebp
 00601D3E    ret        4
*}
//end;

//00601D44
//procedure sub_00601D44(?:?; ?:?; ?:?);
//begin
{*
 00601D44    push       ebp
 00601D45    mov        ebp,esp
 00601D47    push       0
 00601D49    push       ebx
 00601D4A    push       esi
 00601D4B    push       edi
 00601D4C    mov        edi,ecx
 00601D4E    mov        esi,edx
 00601D50    mov        ebx,eax
 00601D52    xor        eax,eax
 00601D54    push       ebp
 00601D55    push       601D96
 00601D5A    push       dword ptr fs:[eax]
 00601D5D    mov        dword ptr fs:[eax],esp
 00601D60    mov        eax,dword ptr [ebp+8]
 00601D63    push       eax
 00601D64    lea        eax,[ebp-4]
 00601D67    push       eax
 00601D68    mov        ecx,edi
 00601D6A    mov        edx,esi
 00601D6C    mov        eax,ebx
 00601D6E    call       00601CA8
 00601D73    mov        edx,dword ptr [ebp-4]
 00601D76    mov        eax,ebx
 00601D78    mov        ecx,dword ptr [eax]
 00601D7A    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00601D80    xor        eax,eax
 00601D82    pop        edx
 00601D83    pop        ecx
 00601D84    pop        ecx
 00601D85    mov        dword ptr fs:[eax],edx
 00601D88    push       601D9D
 00601D8D    lea        eax,[ebp-4]
 00601D90    call       @LStrClr
 00601D95    ret
<00601D96    jmp        @HandleFinally
<00601D9B    jmp        00601D8D
 00601D9D    pop        edi
 00601D9E    pop        esi
 00601D9F    pop        ebx
 00601DA0    pop        ecx
 00601DA1    pop        ebp
 00601DA2    ret        4
*}
//end;

//00601DA8
//procedure sub_00601DA8(?:TRvRenderPDF; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00601DA8    push       ebp
 00601DA9    mov        ebp,esp
 00601DAB    push       dword ptr [ebp+34]
 00601DAE    push       dword ptr [ebp+30]
 00601DB1    push       dword ptr [ebp+2C]
 00601DB4    push       dword ptr [ebp+28]
 00601DB7    push       dword ptr [ebp+24]
 00601DBA    push       dword ptr [ebp+20]
 00601DBD    push       dword ptr [ebp+1C]
 00601DC0    push       dword ptr [ebp+18]
 00601DC3    push       dword ptr [ebp+14]
 00601DC6    push       dword ptr [ebp+10]
 00601DC9    push       dword ptr [ebp+0C]
 00601DCC    push       dword ptr [ebp+8]
 00601DCF    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 00601DD5    call       0060560C
 00601DDA    pop        ebp
 00601DDB    ret        30
*}
//end;

//00601DE0
//procedure sub_00601DE0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00601DE0    push       ebp
 00601DE1    mov        ebp,esp
 00601DE3    push       ebx
 00601DE4    mov        ebx,eax
 00601DE6    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 00601DE9    mov        eax,dword ptr [eax+180]
 00601DEF    call       TPen.GetColor
 00601DF4    mov        edx,eax
 00601DF6    mov        eax,ebx
 00601DF8    call       006001A4
 00601DFD    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 00601E00    mov        eax,dword ptr [eax+17C]
 00601E06    call       TBrush.GetColor
 00601E0B    mov        edx,eax
 00601E0D    mov        eax,ebx
 00601E0F    call       006001BC
 00601E14    push       dword ptr [ebp+34]
 00601E17    push       dword ptr [ebp+30]
 00601E1A    push       dword ptr [ebp+2C]
 00601E1D    push       dword ptr [ebp+28]
 00601E20    push       dword ptr [ebp+24]
 00601E23    push       dword ptr [ebp+20]
 00601E26    push       dword ptr [ebp+1C]
 00601E29    push       dword ptr [ebp+18]
 00601E2C    push       dword ptr [ebp+14]
 00601E2F    push       dword ptr [ebp+10]
 00601E32    push       dword ptr [ebp+0C]
 00601E35    push       dword ptr [ebp+8]
 00601E38    mov        eax,ebx
 00601E3A    call       00601DA8
 00601E3F    pop        ebx
 00601E40    pop        ebp
 00601E41    ret        30
*}
//end;

//00601E44
//procedure sub_00601E44(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00601E44    push       ebp
 00601E45    mov        ebp,esp
 00601E47    push       ebx
 00601E48    push       esi
 00601E49    mov        esi,eax
 00601E4B    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 00601E4E    mov        eax,dword ptr [eax+180]
 00601E54    call       TPen.GetColor
 00601E59    mov        edx,eax
 00601E5B    mov        eax,esi
 00601E5D    call       006001A4
 00601E62    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 00601E65    mov        eax,dword ptr [eax+17C]
 00601E6B    call       TBrush.GetColor
 00601E70    mov        edx,eax
 00601E72    mov        eax,esi
 00601E74    call       006001BC
 00601E79    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 00601E7C    mov        eax,dword ptr [eax+17C]
 00601E82    call       TBrush.GetStyle
 00601E87    mov        ebx,eax
 00601E89    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 00601E8C    mov        eax,dword ptr [eax+17C]
 00601E92    mov        dl,1
 00601E94    call       TBrush.SetStyle
 00601E99    push       dword ptr [ebp+44]
 00601E9C    push       dword ptr [ebp+40]
 00601E9F    push       dword ptr [ebp+3C]
 00601EA2    push       dword ptr [ebp+38]
 00601EA5    push       dword ptr [ebp+34]
 00601EA8    push       dword ptr [ebp+30]
 00601EAB    push       dword ptr [ebp+2C]
 00601EAE    push       dword ptr [ebp+28]
 00601EB1    push       dword ptr [ebp+24]
 00601EB4    push       dword ptr [ebp+20]
 00601EB7    push       dword ptr [ebp+1C]
 00601EBA    push       dword ptr [ebp+18]
 00601EBD    push       dword ptr [ebp+14]
 00601EC0    push       dword ptr [ebp+10]
 00601EC3    push       dword ptr [ebp+0C]
 00601EC6    push       dword ptr [ebp+8]
 00601EC9    xor        ecx,ecx
 00601ECB    mov        dl,1
 00601ECD    mov        eax,esi
 00601ECF    call       00601EEC
 00601ED4    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 00601ED7    mov        eax,dword ptr [eax+17C]
 00601EDD    mov        edx,ebx
 00601EDF    call       TBrush.SetStyle
 00601EE4    pop        esi
 00601EE5    pop        ebx
 00601EE6    pop        ebp
 00601EE7    ret        40
*}
//end;

//00601EEC
//procedure sub_00601EEC(?:TRvRenderPDF; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00601EEC    push       ebp
 00601EED    mov        ebp,esp
 00601EEF    push       esi
 00601EF0    mov        esi,eax
 00601EF2    push       dword ptr [ebp+44]
 00601EF5    push       dword ptr [ebp+40]
 00601EF8    push       dword ptr [ebp+3C]
 00601EFB    push       dword ptr [ebp+38]
 00601EFE    push       dword ptr [ebp+34]
 00601F01    push       dword ptr [ebp+30]
 00601F04    push       dword ptr [ebp+2C]
 00601F07    push       dword ptr [ebp+28]
 00601F0A    push       dword ptr [ebp+24]
 00601F0D    push       dword ptr [ebp+20]
 00601F10    push       dword ptr [ebp+1C]
 00601F13    push       dword ptr [ebp+18]
 00601F16    push       dword ptr [ebp+14]
 00601F19    push       dword ptr [ebp+10]
 00601F1C    push       dword ptr [ebp+0C]
 00601F1F    push       dword ptr [ebp+8]
 00601F22    mov        eax,dword ptr [esi+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 00601F28    call       00603348
 00601F2D    pop        esi
 00601F2E    pop        ebp
 00601F2F    ret        40
*}
//end;

//00601F34
//procedure sub_00601F34(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00601F34    push       ebp
 00601F35    mov        ebp,esp
 00601F37    push       ebx
 00601F38    mov        ebx,eax
 00601F3A    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 00601F3D    mov        eax,dword ptr [eax+180]
 00601F43    call       TPen.GetColor
 00601F48    mov        edx,eax
 00601F4A    mov        eax,ebx
 00601F4C    call       006001A4
 00601F51    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 00601F54    mov        eax,dword ptr [eax+17C]
 00601F5A    call       TBrush.GetColor
 00601F5F    mov        edx,eax
 00601F61    mov        eax,ebx
 00601F63    call       006001BC
 00601F68    push       dword ptr [ebp+44]
 00601F6B    push       dword ptr [ebp+40]
 00601F6E    push       dword ptr [ebp+3C]
 00601F71    push       dword ptr [ebp+38]
 00601F74    push       dword ptr [ebp+34]
 00601F77    push       dword ptr [ebp+30]
 00601F7A    push       dword ptr [ebp+2C]
 00601F7D    push       dword ptr [ebp+28]
 00601F80    push       dword ptr [ebp+24]
 00601F83    push       dword ptr [ebp+20]
 00601F86    push       dword ptr [ebp+1C]
 00601F89    push       dword ptr [ebp+18]
 00601F8C    push       dword ptr [ebp+14]
 00601F8F    push       dword ptr [ebp+10]
 00601F92    push       dword ptr [ebp+0C]
 00601F95    push       dword ptr [ebp+8]
 00601F98    mov        cl,1
 00601F9A    mov        dl,1
 00601F9C    mov        eax,ebx
 00601F9E    call       00601EEC
 00601FA3    pop        ebx
 00601FA4    pop        ebp
 00601FA5    ret        40
*}
//end;

//00601FA8
//function sub_00601FA8(?:TRvRenderPDF):Boolean;
//begin
{*
 00601FA8    push       ebx
 00601FA9    mov        ebx,eax
 00601FAB    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 00601FAE    mov        eax,dword ptr [eax+17C]
 00601FB4    call       TBrush.GetStyle
 00601FB9    cmp        al,1
 00601FBB    setne      al
 00601FBE    pop        ebx
 00601FBF    ret
*}
//end;

//00601FC0
//function sub_00601FC0(?:TRvRenderPDF):Boolean;
//begin
{*
 00601FC0    push       ebx
 00601FC1    mov        ebx,eax
 00601FC3    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 00601FC6    mov        eax,dword ptr [eax+180]
 00601FCC    call       TPen.GetStyle
 00601FD1    cmp        al,5
 00601FD3    setne      al
 00601FD6    pop        ebx
 00601FD7    ret
*}
//end;

//00601FD8
//procedure sub_00601FD8(?:TRvRenderPDF; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00601FD8    push       ebp
 00601FD9    mov        ebp,esp
 00601FDB    push       dword ptr [ebp+44]
 00601FDE    push       dword ptr [ebp+40]
 00601FE1    push       dword ptr [ebp+3C]
 00601FE4    push       dword ptr [ebp+38]
 00601FE7    push       dword ptr [ebp+34]
 00601FEA    push       dword ptr [ebp+30]
 00601FED    push       dword ptr [ebp+2C]
 00601FF0    push       dword ptr [ebp+28]
 00601FF3    push       dword ptr [ebp+24]
 00601FF6    push       dword ptr [ebp+20]
 00601FF9    push       dword ptr [ebp+1C]
 00601FFC    push       dword ptr [ebp+18]
 00601FFF    push       dword ptr [ebp+14]
 00602002    push       dword ptr [ebp+10]
 00602005    push       dword ptr [ebp+0C]
 00602008    push       dword ptr [ebp+8]
 0060200B    mov        eax,dword ptr [eax+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 00602011    call       006043F8
 00602016    pop        ebp
 00602017    ret        40
*}
//end;

//0060201C
//procedure sub_0060201C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0060201C    push       ebp
 0060201D    mov        ebp,esp
 0060201F    push       ebx
 00602020    mov        ebx,eax
 00602022    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 00602025    mov        eax,dword ptr [eax+180]
 0060202B    call       TPen.GetColor
 00602030    mov        edx,eax
 00602032    mov        eax,ebx
 00602034    call       006001A4
 00602039    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 0060203C    mov        eax,dword ptr [eax+17C]
 00602042    call       TBrush.GetColor
 00602047    mov        edx,eax
 00602049    mov        eax,ebx
 0060204B    call       006001BC
 00602050    push       dword ptr [ebp+44]
 00602053    push       dword ptr [ebp+40]
 00602056    push       dword ptr [ebp+3C]
 00602059    push       dword ptr [ebp+38]
 0060205C    push       dword ptr [ebp+34]
 0060205F    push       dword ptr [ebp+30]
 00602062    push       dword ptr [ebp+2C]
 00602065    push       dword ptr [ebp+28]
 00602068    push       dword ptr [ebp+24]
 0060206B    push       dword ptr [ebp+20]
 0060206E    push       dword ptr [ebp+1C]
 00602071    push       dword ptr [ebp+18]
 00602074    push       dword ptr [ebp+14]
 00602077    push       dword ptr [ebp+10]
 0060207A    push       dword ptr [ebp+0C]
 0060207D    push       dword ptr [ebp+8]
 00602080    xor        ecx,ecx
 00602082    mov        dl,1
 00602084    mov        eax,ebx
 00602086    call       00601FD8
 0060208B    pop        ebx
 0060208C    pop        ebp
 0060208D    ret        40
*}
//end;

//00602090
//procedure sub_00602090(?:?; ?:?);
//begin
{*
 00602090    push       ebx
 00602091    push       esi
 00602092    push       edi
 00602093    push       ebp
 00602094    push       ecx
 00602095    mov        dword ptr [esp],ecx
 00602098    mov        ebp,edx
 0060209A    mov        esi,eax
 0060209C    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 0060209F    mov        eax,dword ptr [eax+180]
 006020A5    call       TPen.GetColor
 006020AA    mov        edx,eax
 006020AC    mov        eax,esi
 006020AE    call       006001A4
 006020B3    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 006020B6    mov        eax,dword ptr [eax+17C]
 006020BC    call       TBrush.GetColor
 006020C1    mov        edi,eax
 006020C3    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 006020C6    mov        eax,dword ptr [eax+17C]
 006020CC    call       TBrush.GetStyle
 006020D1    mov        ebx,eax
 006020D3    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 006020D6    mov        eax,dword ptr [eax+17C]
 006020DC    mov        dl,1
 006020DE    call       TBrush.SetStyle
 006020E3    mov        edx,ebp
 006020E5    mov        ecx,dword ptr [esp]
 006020E8    mov        eax,dword ptr [esi+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 006020EE    call       00604474
 006020F3    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 006020F6    mov        eax,dword ptr [eax+17C]
 006020FC    mov        edx,edi
 006020FE    call       TBrush.SetColor
 00602103    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 00602106    mov        eax,dword ptr [eax+17C]
 0060210C    mov        edx,ebx
 0060210E    call       TBrush.SetStyle
 00602113    pop        edx
 00602114    pop        ebp
 00602115    pop        edi
 00602116    pop        esi
 00602117    pop        ebx
 00602118    ret
*}
//end;

//0060211C
//procedure sub_0060211C(?:?; ?:?);
//begin
{*
 0060211C    push       ebx
 0060211D    push       esi
 0060211E    push       edi
 0060211F    mov        edi,ecx
 00602121    mov        esi,edx
 00602123    mov        ebx,eax
 00602125    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 00602128    mov        eax,dword ptr [eax+180]
 0060212E    call       TPen.GetColor
 00602133    mov        edx,eax
 00602135    mov        eax,ebx
 00602137    call       006001A4
 0060213C    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 0060213F    mov        eax,dword ptr [eax+17C]
 00602145    call       TBrush.GetColor
 0060214A    mov        edx,eax
 0060214C    mov        eax,ebx
 0060214E    call       006001BC
 00602153    mov        edx,esi
 00602155    mov        ecx,edi
 00602157    mov        eax,dword ptr [ebx+0AC]; TRvRenderPDF.?fAC:TRPPDFPage
 0060215D    call       00604504
 00602162    pop        edi
 00602163    pop        esi
 00602164    pop        ebx
 00602165    ret
*}
//end;

//00602168
//procedure sub_00602168(?:TRvRenderPDF);
//begin
{*
 00602168    push       ebx
 00602169    push       esi
 0060216A    push       edi
 0060216B    mov        esi,eax
 0060216D    lea        eax,[esi+80]; TRvRenderPDF.?f80:TFileStream
 00602173    call       FreeAndNil
 00602178    lea        eax,[esi+0A0]; TRvRenderPDF.?fA0:dword
 0060217E    call       FreeAndNil
 00602183    lea        eax,[esi+0A8]; TRvRenderPDF.?fA8:dword
 00602189    call       FreeAndNil
 0060218E    lea        eax,[esi+0B4]; TRvRenderPDF.?fB4:dword
 00602194    call       FreeAndNil
 00602199    xor        eax,eax
 0060219B    mov        dword ptr [esi+0B0],eax; TRvRenderPDF.?fB0:TRPPDFFont
 006021A1    mov        eax,dword ptr [esi+8C]; TRvRenderPDF.?f8C:dword
 006021A7    mov        edx,dword ptr [eax]
 006021A9    call       dword ptr [edx+14]
 006021AC    mov        ebx,eax
 006021AE    dec        ebx
 006021AF    test       ebx,ebx
>006021B1    jl         006021CC
 006021B3    inc        ebx
 006021B4    xor        edi,edi
 006021B6    mov        edx,edi
 006021B8    mov        eax,dword ptr [esi+8C]; TRvRenderPDF.?f8C:dword
 006021BE    mov        ecx,dword ptr [eax]
 006021C0    call       dword ptr [ecx+18]
 006021C3    call       TObject.Free
 006021C8    inc        edi
 006021C9    dec        ebx
<006021CA    jne        006021B6
 006021CC    mov        eax,dword ptr [esi+8C]; TRvRenderPDF.?f8C:dword
 006021D2    mov        edx,dword ptr [eax]
 006021D4    call       dword ptr [edx+44]
 006021D7    mov        eax,dword ptr [esi+90]; TRvRenderPDF.?f90:dword
 006021DD    mov        edx,dword ptr [eax]
 006021DF    call       dword ptr [edx+14]
 006021E2    mov        ebx,eax
 006021E4    dec        ebx
 006021E5    test       ebx,ebx
>006021E7    jl         00602202
 006021E9    inc        ebx
 006021EA    xor        edi,edi
 006021EC    mov        edx,edi
 006021EE    mov        eax,dword ptr [esi+90]; TRvRenderPDF.?f90:dword
 006021F4    mov        ecx,dword ptr [eax]
 006021F6    call       dword ptr [ecx+18]
 006021F9    call       TObject.Free
 006021FE    inc        edi
 006021FF    dec        ebx
<00602200    jne        006021EC
 00602202    mov        eax,dword ptr [esi+90]; TRvRenderPDF.?f90:dword
 00602208    mov        edx,dword ptr [eax]
 0060220A    call       dword ptr [edx+44]
 0060220D    mov        eax,dword ptr [esi+94]; TRvRenderPDF.?f94:dword
 00602213    mov        edx,dword ptr [eax]
 00602215    call       dword ptr [edx+14]
 00602218    mov        ebx,eax
 0060221A    dec        ebx
 0060221B    test       ebx,ebx
>0060221D    jl         00602238
 0060221F    inc        ebx
 00602220    xor        edi,edi
 00602222    mov        edx,edi
 00602224    mov        eax,dword ptr [esi+94]; TRvRenderPDF.?f94:dword
 0060222A    mov        ecx,dword ptr [eax]
 0060222C    call       dword ptr [ecx+18]
 0060222F    call       TObject.Free
 00602234    inc        edi
 00602235    dec        ebx
<00602236    jne        00602222
 00602238    mov        eax,dword ptr [esi+94]; TRvRenderPDF.?f94:dword
 0060223E    mov        edx,dword ptr [eax]
 00602240    call       dword ptr [edx+44]
 00602243    mov        eax,dword ptr [esi+98]; TRvRenderPDF.?f98:dword
 00602249    mov        edx,dword ptr [eax]
 0060224B    call       dword ptr [edx+14]
 0060224E    mov        ebx,eax
 00602250    dec        ebx
 00602251    test       ebx,ebx
>00602253    jl         0060226E
 00602255    inc        ebx
 00602256    xor        edi,edi
 00602258    mov        edx,edi
 0060225A    mov        eax,dword ptr [esi+98]; TRvRenderPDF.?f98:dword
 00602260    mov        ecx,dword ptr [eax]
 00602262    call       dword ptr [ecx+18]
 00602265    call       TObject.Free
 0060226A    inc        edi
 0060226B    dec        ebx
<0060226C    jne        00602258
 0060226E    mov        eax,dword ptr [esi+98]; TRvRenderPDF.?f98:dword
 00602274    mov        edx,dword ptr [eax]
 00602276    call       dword ptr [edx+44]
 00602279    lea        eax,[esi+0A4]; TRvRenderPDF.?fA4:dword
 0060227F    call       FreeAndNil
 00602284    mov        eax,dword ptr [esi+9C]; TRvRenderPDF.?f9C:dword
 0060228A    mov        edx,dword ptr [eax]
 0060228C    call       dword ptr [edx+44]
 0060228F    pop        edi
 00602290    pop        esi
 00602291    pop        ebx
 00602292    ret
*}
//end;

//00602294
//procedure sub_00602294(?:?);
//begin
{*
 00602294    push       ebx
 00602295    push       esi
 00602296    mov        ebx,eax
 00602298    xor        eax,eax
 0060229A    mov        dword ptr [ebx+0B8],eax
 006022A0    mov        ecx,ebx
 006022A2    mov        dl,1
 006022A4    mov        eax,[005FEF08]; TRPPDFCatalog
 006022A9    call       TRPPDFCatalog.Create; TRPPDFCatalog.Create
 006022AE    mov        dword ptr [ebx+0A0],eax
 006022B4    mov        ecx,ebx
 006022B6    mov        dl,1
 006022B8    mov        eax,[005FEF6C]; TRPPDFPages
 006022BD    call       TRPPDFCatalog.Create; TRPPDFPages.Create
 006022C2    mov        dword ptr [ebx+0A4],eax
 006022C8    mov        ecx,ebx
 006022CA    mov        dl,1
 006022CC    mov        eax,[005FF034]; TRPPDFPage
 006022D1    call       TRPPDFPage.Create; TRPPDFPage.Create
 006022D6    mov        esi,eax
 006022D8    mov        dword ptr [ebx+0AC],esi
 006022DE    mov        ecx,esi
 006022E0    mov        edx,602344; 'P1'
 006022E5    mov        eax,dword ptr [ebx+90]
 006022EB    mov        esi,dword ptr [eax]
 006022ED    call       dword ptr [esi+3C]
 006022F0    mov        ecx,ebx
 006022F2    mov        dl,1
 006022F4    mov        eax,[005FF094]; TRPPDFOutlines
 006022F9    call       TRPPDFCatalog.Create; TRPPDFOutlines.Create
 006022FE    mov        dword ptr [ebx+0A8],eax
 00602304    mov        ecx,ebx
 00602306    mov        dl,1
 00602308    mov        eax,[005FF0F8]; TRPPDFProcSet
 0060230D    call       TRPPDFCatalog.Create; TRPPDFProcSet.Create
 00602312    mov        dword ptr [ebx+0B4],eax
 00602318    lea        eax,[ebx+0BC]
 0060231E    mov        edx,602350; 'Fit'
 00602323    call       @LStrAsg
 00602328    mov        dword ptr [ebx+0C4],0C
 00602332    mov        byte ptr [ebx+0D5],1
 00602339    pop        esi
 0060233A    pop        ebx
 0060233B    ret
*}
//end;

//00602354
//procedure sub_00602354(?:?);
//begin
{*
 00602354    push       ebx
 00602355    push       esi
 00602356    push       edi
 00602357    mov        esi,edx
 00602359    mov        edi,eax
 0060235B    mov        eax,dword ptr [edi+70]; TRvRenderPDF.?f70:dword
 0060235E    mov        eax,dword ptr [eax+180]
 00602364    call       TPen.GetColor
 00602369    mov        edx,eax
 0060236B    mov        eax,edi
 0060236D    call       006001A4
 00602372    mov        eax,dword ptr [edi+70]; TRvRenderPDF.?f70:dword
 00602375    mov        eax,dword ptr [eax+180]
 0060237B    call       TPen.GetStyle
 00602380    mov        ebx,eax
 00602382    mov        eax,dword ptr [edi+70]; TRvRenderPDF.?f70:dword
 00602385    mov        eax,dword ptr [eax+180]
 0060238B    mov        dl,5
 0060238D    call       TPen.SetStyle
 00602392    mov        eax,dword ptr [edi+70]; TRvRenderPDF.?f70:dword
 00602395    mov        eax,dword ptr [eax+17C]
 0060239B    call       TBrush.GetColor
 006023A0    mov        edx,eax
 006023A2    mov        eax,edi
 006023A4    call       006001BC
 006023A9    fild       dword ptr [esi]
 006023AB    fdiv       dword ptr ds:[602404]; 72:Single
 006023B1    add        esp,0FFFFFFF8
 006023B4    fstp       qword ptr [esp]
 006023B7    wait
 006023B8    fild       dword ptr [esi+4]
 006023BB    fdiv       dword ptr ds:[602404]; 72:Single
 006023C1    add        esp,0FFFFFFF8
 006023C4    fstp       qword ptr [esp]
 006023C7    wait
 006023C8    fild       dword ptr [esi+8]
 006023CB    fdiv       dword ptr ds:[602404]; 72:Single
 006023D1    add        esp,0FFFFFFF8
 006023D4    fstp       qword ptr [esp]
 006023D7    wait
 006023D8    fild       dword ptr [esi+0C]
 006023DB    fdiv       dword ptr ds:[602404]; 72:Single
 006023E1    add        esp,0FFFFFFF8
 006023E4    fstp       qword ptr [esp]
 006023E7    wait
 006023E8    mov        eax,edi
 006023EA    call       006001C8
 006023EF    mov        eax,dword ptr [edi+70]; TRvRenderPDF.?f70:dword
 006023F2    mov        eax,dword ptr [eax+180]
 006023F8    mov        edx,ebx
 006023FA    call       TPen.SetStyle
 006023FF    pop        edi
 00602400    pop        esi
 00602401    pop        ebx
 00602402    ret
*}
//end;

//00602408
//procedure sub_00602408(?:?; ?:?);
//begin
{*
 00602408    push       ebp
 00602409    mov        ebp,esp
 0060240B    add        esp,0FFFFFFD8
 0060240E    push       ebx
 0060240F    push       esi
 00602410    push       edi
 00602411    xor        ebx,ebx
 00602413    mov        dword ptr [ebp-10],ebx
 00602416    mov        esi,ecx
 00602418    mov        dword ptr [ebp-8],edx
 0060241B    mov        dword ptr [ebp-4],eax
 0060241E    xor        eax,eax
 00602420    push       ebp
 00602421    push       6025B1
 00602426    push       dword ptr fs:[eax]
 00602429    mov        dword ptr fs:[eax],esp
 0060242C    mov        dl,1
 0060242E    mov        eax,[005EB70C]; TJPEGImage
 00602433    call       TJPEGImage.Create; TJPEGImage.Create
 00602438    mov        dword ptr [ebp-0C],eax
 0060243B    mov        eax,dword ptr [ebp-4]
 0060243E    mov        al,byte ptr [eax+1E8]; TRvRenderPDF.ImageQuality:TImageQualityRange
 00602444    mov        edx,dword ptr [ebp-0C]
 00602447    mov        byte ptr [edx+3F],al; TJPEGImage.FQuality:TJPEGQualityRange
 0060244A    mov        dl,1
 0060244C    mov        eax,[0042A4BC]; TBitmap
 00602451    call       TBitmap.Create; TBitmap.Create
 00602456    mov        dword ptr [ebp-14],eax
 00602459    xor        eax,eax
 0060245B    push       ebp
 0060245C    push       60253E
 00602461    push       dword ptr fs:[eax]
 00602464    mov        dword ptr fs:[eax],esp
 00602467    xor        eax,eax
 00602469    mov        dword ptr [ebp-24],eax
 0060246C    xor        eax,eax
 0060246E    mov        dword ptr [ebp-20],eax
 00602471    mov        ebx,dword ptr [ebp-8]
 00602474    mov        ebx,dword ptr [ebx+8]
 00602477    mov        eax,dword ptr [ebp-8]
 0060247A    sub        ebx,dword ptr [eax]
 0060247C    mov        dword ptr [ebp-1C],ebx
 0060247F    mov        dword ptr [ebp-28],ebx
 00602482    fild       dword ptr [ebp-28]
 00602485    fdiv       dword ptr ds:[6025C0]; 72:Single
 0060248B    mov        eax,dword ptr [ebp-4]
 0060248E    fild       dword ptr [eax+1EC]; TRvRenderPDF.MetafileDPI:Integer
 00602494    fmulp      st(1),st
 00602496    call       @ROUND
 0060249B    mov        dword ptr [ebp-1C],eax
 0060249E    mov        edi,dword ptr [ebp-8]
 006024A1    mov        edi,dword ptr [edi+0C]
 006024A4    mov        eax,dword ptr [ebp-8]
 006024A7    sub        edi,dword ptr [eax+4]
 006024AA    mov        dword ptr [ebp-18],edi
 006024AD    mov        dword ptr [ebp-28],edi
 006024B0    fild       dword ptr [ebp-28]
 006024B3    fdiv       dword ptr ds:[6025C0]; 72:Single
 006024B9    mov        eax,dword ptr [ebp-4]
 006024BC    fild       dword ptr [eax+1EC]; TRvRenderPDF.MetafileDPI:Integer
 006024C2    fmulp      st(1),st
 006024C4    call       @ROUND
 006024C9    mov        ebx,eax
 006024CB    mov        dword ptr [ebp-18],ebx
 006024CE    mov        edx,dword ptr [ebp-1C]
 006024D1    mov        eax,dword ptr [ebp-14]
 006024D4    mov        ecx,dword ptr [eax]
 006024D6    call       dword ptr [ecx+40]; TBitmap.SetWidth
 006024D9    mov        edx,ebx
 006024DB    mov        eax,dword ptr [ebp-14]
 006024DE    mov        ecx,dword ptr [eax]
 006024E0    call       dword ptr [ecx+34]; TBitmap.SetHeight
 006024E3    mov        eax,dword ptr [ebp-14]
 006024E6    call       TBitmap.GetCanvas
 006024EB    lea        edx,[ebp-24]
 006024EE    mov        ecx,esi
 006024F0    call       TCanvas.StretchDraw
 006024F5    mov        edx,dword ptr [ebp-14]
 006024F8    mov        eax,dword ptr [ebp-0C]
 006024FB    mov        ecx,dword ptr [eax]
 006024FD    call       dword ptr [ecx+8]; TJPEGImage.Assign
 00602500    mov        eax,dword ptr [ebp-0C]
 00602503    call       TJPEGImage.Compress
 00602508    lea        eax,[ebp-10]
 0060250B    push       eax
 0060250C    mov        eax,dword ptr [ebp-4]
 0060250F    mov        eax,dword ptr [eax+70]; TRvRenderPDF.?f70:dword
 00602512    mov        cl,byte ptr [eax+2C]
 00602515    mov        edx,dword ptr [ebp-0C]
 00602518    mov        eax,dword ptr [ebp-4]
 0060251B    call       006002D4
 00602520    xor        eax,eax
 00602522    pop        edx
 00602523    pop        ecx
 00602524    pop        ecx
 00602525    mov        dword ptr fs:[eax],edx
 00602528    push       602545
 0060252D    mov        eax,dword ptr [ebp-0C]
 00602530    call       TObject.Free
 00602535    mov        eax,dword ptr [ebp-14]
 00602538    call       TObject.Free
 0060253D    ret
<0060253E    jmp        @HandleFinally
<00602543    jmp        0060252D
 00602545    mov        eax,dword ptr [ebp-8]
 00602548    fild       dword ptr [eax]
 0060254A    fdiv       dword ptr ds:[6025C0]; 72:Single
 00602550    add        esp,0FFFFFFF8
 00602553    fstp       qword ptr [esp]
 00602556    wait
 00602557    mov        eax,dword ptr [ebp-8]
 0060255A    fild       dword ptr [eax+4]
 0060255D    fdiv       dword ptr ds:[6025C0]; 72:Single
 00602563    add        esp,0FFFFFFF8
 00602566    fstp       qword ptr [esp]
 00602569    wait
 0060256A    mov        eax,dword ptr [ebp-8]
 0060256D    fild       dword ptr [eax+8]
 00602570    fdiv       dword ptr ds:[6025C0]; 72:Single
 00602576    add        esp,0FFFFFFF8
 00602579    fstp       qword ptr [esp]
 0060257C    wait
 0060257D    mov        eax,dword ptr [ebp-8]
 00602580    fild       dword ptr [eax+0C]
 00602583    fdiv       dword ptr ds:[6025C0]; 72:Single
 00602589    add        esp,0FFFFFFF8
 0060258C    fstp       qword ptr [esp]
 0060258F    wait
 00602590    mov        edx,dword ptr [ebp-10]
 00602593    mov        eax,dword ptr [ebp-4]
 00602596    call       00600364
 0060259B    xor        eax,eax
 0060259D    pop        edx
 0060259E    pop        ecx
 0060259F    pop        ecx
 006025A0    mov        dword ptr fs:[eax],edx
 006025A3    push       6025B8
 006025A8    lea        eax,[ebp-10]
 006025AB    call       @LStrClr
 006025B0    ret
<006025B1    jmp        @HandleFinally
<006025B6    jmp        006025A8
 006025B8    pop        edi
 006025B9    pop        esi
 006025BA    pop        ebx
 006025BB    mov        esp,ebp
 006025BD    pop        ebp
 006025BE    ret
*}
//end;

//006025C4
//procedure sub_006025C4(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006025C4    push       ebp
 006025C5    mov        ebp,esp
 006025C7    add        esp,0FFFFFFC4
 006025CA    xor        ecx,ecx
 006025CC    mov        dword ptr [ebp-10],ecx
 006025CF    mov        dword ptr [ebp-8],edx
 006025D2    mov        dword ptr [ebp-4],eax
 006025D5    xor        eax,eax
 006025D7    push       ebp
 006025D8    push       60272C
 006025DD    push       dword ptr fs:[eax]
 006025E0    mov        dword ptr fs:[eax],esp
 006025E3    mov        dl,1
 006025E5    mov        eax,[005EB70C]; TJPEGImage
 006025EA    call       TJPEGImage.Create; TJPEGImage.Create
 006025EF    mov        dword ptr [ebp-0C],eax
 006025F2    mov        eax,dword ptr [ebp-4]
 006025F5    mov        al,byte ptr [eax+1E8]; TRvRenderPDF.ImageQuality:TImageQualityRange
 006025FB    mov        edx,dword ptr [ebp-0C]
 006025FE    mov        byte ptr [edx+3F],al; TJPEGImage.FQuality:TJPEGQualityRange
 00602601    mov        dl,1
 00602603    mov        eax,[0042A4BC]; TBitmap
 00602608    call       TBitmap.Create; TBitmap.Create
 0060260D    mov        dword ptr [ebp-14],eax
 00602610    xor        eax,eax
 00602612    push       ebp
 00602613    push       6026B6
 00602618    push       dword ptr fs:[eax]
 0060261B    mov        dword ptr fs:[eax],esp
 0060261E    mov        eax,dword ptr [ebp-8]
 00602621    mov        edx,dword ptr [eax]
 00602623    call       dword ptr [edx+2C]
 00602626    mov        edx,eax
 00602628    mov        eax,dword ptr [ebp-14]
 0060262B    mov        ecx,dword ptr [eax]
 0060262D    call       dword ptr [ecx+40]; TBitmap.SetWidth
 00602630    mov        eax,dword ptr [ebp-8]
 00602633    mov        edx,dword ptr [eax]
 00602635    call       dword ptr [edx+20]
 00602638    mov        edx,eax
 0060263A    mov        eax,dword ptr [ebp-14]
 0060263D    mov        ecx,dword ptr [eax]
 0060263F    call       dword ptr [ecx+34]; TBitmap.SetHeight
 00602642    xor        eax,eax
 00602644    mov        dword ptr [ebp-38],eax
 00602647    xor        eax,eax
 00602649    mov        dword ptr [ebp-34],eax
 0060264C    mov        eax,dword ptr [ebp-14]
 0060264F    mov        edx,dword ptr [eax]
 00602651    call       dword ptr [edx+2C]; TBitmap.GetWidth
 00602654    mov        dword ptr [ebp-30],eax
 00602657    mov        eax,dword ptr [ebp-14]
 0060265A    mov        edx,dword ptr [eax]
 0060265C    call       dword ptr [edx+20]; TBitmap.GetHeight
 0060265F    mov        dword ptr [ebp-2C],eax
 00602662    mov        eax,dword ptr [ebp-14]
 00602665    call       TBitmap.GetCanvas
 0060266A    lea        edx,[ebp-38]
 0060266D    mov        ecx,dword ptr [ebp-8]
 00602670    call       TCanvas.StretchDraw
 00602675    mov        edx,dword ptr [ebp-14]
 00602678    mov        eax,dword ptr [ebp-0C]
 0060267B    mov        ecx,dword ptr [eax]
 0060267D    call       dword ptr [ecx+8]; TJPEGImage.Assign
 00602680    lea        eax,[ebp-10]
 00602683    push       eax
 00602684    mov        eax,dword ptr [ebp-4]
 00602687    mov        eax,dword ptr [eax+70]; TRvRenderPDF.?f70:dword
 0060268A    mov        cl,byte ptr [eax+2C]
 0060268D    mov        edx,dword ptr [ebp-0C]
 00602690    mov        eax,dword ptr [ebp-4]
 00602693    call       006002D4
 00602698    xor        eax,eax
 0060269A    pop        edx
 0060269B    pop        ecx
 0060269C    pop        ecx
 0060269D    mov        dword ptr fs:[eax],edx
 006026A0    push       6026BD
 006026A5    mov        eax,dword ptr [ebp-0C]
 006026A8    call       TObject.Free
 006026AD    mov        eax,dword ptr [ebp-14]
 006026B0    call       TObject.Free
 006026B5    ret
<006026B6    jmp        @HandleFinally
<006026BB    jmp        006026A5
 006026BD    mov        eax,dword ptr [ebp-8]
 006026C0    mov        edx,dword ptr [eax]
 006026C2    call       dword ptr [edx+2C]
 006026C5    mov        dword ptr [ebp-3C],eax
 006026C8    fild       dword ptr [ebp-3C]
 006026CB    fdiv       dword ptr ds:[60273C]; 72:Single
 006026D1    fadd       qword ptr [ebp+10]
 006026D4    fstp       qword ptr [ebp-20]
 006026D7    wait
 006026D8    mov        eax,dword ptr [ebp-8]
 006026DB    mov        edx,dword ptr [eax]
 006026DD    call       dword ptr [edx+20]
 006026E0    mov        dword ptr [ebp-3C],eax
 006026E3    fild       dword ptr [ebp-3C]
 006026E6    fdiv       dword ptr ds:[60273C]; 72:Single
 006026EC    fadd       qword ptr [ebp+8]
 006026EF    fstp       qword ptr [ebp-28]
 006026F2    wait
 006026F3    push       dword ptr [ebp+14]
 006026F6    push       dword ptr [ebp+10]
 006026F9    push       dword ptr [ebp+0C]
 006026FC    push       dword ptr [ebp+8]
 006026FF    push       dword ptr [ebp-1C]
 00602702    push       dword ptr [ebp-20]
 00602705    push       dword ptr [ebp-24]
 00602708    push       dword ptr [ebp-28]
 0060270B    mov        edx,dword ptr [ebp-10]
 0060270E    mov        eax,dword ptr [ebp-4]
 00602711    call       00600364
 00602716    xor        eax,eax
 00602718    pop        edx
 00602719    pop        ecx
 0060271A    pop        ecx
 0060271B    mov        dword ptr fs:[eax],edx
 0060271E    push       602733
 00602723    lea        eax,[ebp-10]
 00602726    call       @LStrClr
 0060272B    ret
<0060272C    jmp        @HandleFinally
<00602731    jmp        00602723
 00602733    mov        esp,ebp
 00602735    pop        ebp
 00602736    ret        10
*}
//end;

//00602740
//procedure sub_00602740(?:?);
//begin
{*
 00602740    push       ebx
 00602741    mov        ebx,eax
 00602743    mov        dl,1
 00602745    mov        eax,[0041CBF8]; TMemoryStream
 0060274A    call       TObject.Create; TMemoryStream.Create
 0060274F    mov        dword ptr [ebx+88],eax
 00602755    mov        dl,1
 00602757    mov        eax,[0041C8E4]; TStringList
 0060275C    call       TObject.Create; TStringList.Create
 00602761    mov        dword ptr [ebx+8C],eax
 00602767    mov        dl,1
 00602769    mov        eax,[0041C8E4]; TStringList
 0060276E    call       TObject.Create; TStringList.Create
 00602773    mov        dword ptr [ebx+90],eax
 00602779    mov        dl,1
 0060277B    mov        eax,[0041C8E4]; TStringList
 00602780    call       TObject.Create; TStringList.Create
 00602785    mov        dword ptr [ebx+94],eax
 0060278B    mov        dl,1
 0060278D    mov        eax,[0041C8E4]; TStringList
 00602792    call       TObject.Create; TStringList.Create
 00602797    mov        dword ptr [ebx+98],eax
 0060279D    mov        dl,1
 0060279F    mov        eax,[0041C8E4]; TStringList
 006027A4    call       TObject.Create; TStringList.Create
 006027A9    mov        dword ptr [ebx+9C],eax
 006027AF    mov        eax,ebx
 006027B1    call       00602294
 006027B6    pop        ebx
 006027B7    ret
*}
//end;

//006027B8
//procedure sub_006027B8(?:TRvRenderPDF);
//begin
{*
 006027B8    push       ebx
 006027B9    mov        ebx,eax
 006027BB    mov        eax,ebx
 006027BD    call       00602168
 006027C2    lea        eax,[ebx+88]; TRvRenderPDF.?f88:dword
 006027C8    call       FreeAndNil
 006027CD    lea        eax,[ebx+8C]; TRvRenderPDF.?f8C:dword
 006027D3    call       FreeAndNil
 006027D8    lea        eax,[ebx+90]; TRvRenderPDF.?f90:dword
 006027DE    call       FreeAndNil
 006027E3    lea        eax,[ebx+94]; TRvRenderPDF.?f94:dword
 006027E9    call       FreeAndNil
 006027EE    lea        eax,[ebx+98]; TRvRenderPDF.?f98:dword
 006027F4    call       FreeAndNil
 006027F9    lea        eax,[ebx+9C]; TRvRenderPDF.?f9C:dword
 006027FF    call       FreeAndNil
 00602804    pop        ebx
 00602805    ret
*}
//end;

//00602808
//procedure sub_00602808(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00602808    push       ebp
 00602809    mov        ebp,esp
 0060280B    add        esp,0FFFFFFF8
 0060280E    push       ebx
 0060280F    push       esi
 00602810    mov        dword ptr [ebp-4],ecx
 00602813    mov        ebx,edx
 00602815    mov        esi,eax
 00602817    mov        eax,dword ptr [ebp-4]
 0060281A    call       @LStrAddRef
 0060281F    xor        eax,eax
 00602821    push       ebp
 00602822    push       6028C1
 00602827    push       dword ptr fs:[eax]
 0060282A    mov        dword ptr fs:[eax],esp
 0060282D    cmp        word ptr [esi+1DA],0; TRvRenderPDF.?f1DA:word
>00602835    je         006028AB
 00602837    mov        dl,1
 00602839    mov        eax,[0042A4BC]; TBitmap
 0060283E    call       TBitmap.Create; TBitmap.Create
 00602843    mov        dword ptr [ebp-8],eax
 00602846    xor        eax,eax
 00602848    push       ebp
 00602849    push       6028A4
 0060284E    push       dword ptr fs:[eax]
 00602851    mov        dword ptr fs:[eax],esp
 00602854    mov        eax,dword ptr [ebp-4]
 00602857    push       eax
 00602858    mov        eax,dword ptr [ebp-8]
 0060285B    push       eax
 0060285C    mov        ecx,ebx
 0060285E    mov        edx,esi
 00602860    mov        eax,dword ptr [esi+1DC]; TRvRenderPDF.?f1DC:dword
 00602866    call       dword ptr [esi+1D8]; TRvRenderPDF.OnDecodeImage
 0060286C    push       dword ptr [ebp+24]
 0060286F    push       dword ptr [ebp+20]
 00602872    push       dword ptr [ebp+1C]
 00602875    push       dword ptr [ebp+18]
 00602878    push       dword ptr [ebp+14]
 0060287B    push       dword ptr [ebp+10]
 0060287E    push       dword ptr [ebp+0C]
 00602881    push       dword ptr [ebp+8]
 00602884    mov        edx,dword ptr [ebp-8]
 00602887    mov        eax,esi
 00602889    mov        ecx,dword ptr [eax]
 0060288B    call       dword ptr [ecx+6C]; TRvRenderPDF.sub_005FFCA4
 0060288E    xor        eax,eax
 00602890    pop        edx
 00602891    pop        ecx
 00602892    pop        ecx
 00602893    mov        dword ptr fs:[eax],edx
 00602896    push       6028AB
 0060289B    mov        eax,dword ptr [ebp-8]
 0060289E    call       TObject.Free
 006028A3    ret
<006028A4    jmp        @HandleFinally
<006028A9    jmp        0060289B
 006028AB    xor        eax,eax
 006028AD    pop        edx
 006028AE    pop        ecx
 006028AF    pop        ecx
 006028B0    mov        dword ptr fs:[eax],edx
 006028B3    push       6028C8
 006028B8    lea        eax,[ebp-4]
 006028BB    call       @LStrClr
 006028C0    ret
<006028C1    jmp        @HandleFinally
<006028C6    jmp        006028B8
 006028C8    pop        esi
 006028C9    pop        ebx
 006028CA    pop        ecx
 006028CB    pop        ecx
 006028CC    pop        ebp
 006028CD    ret        20
*}
//end;

//006028D0
//procedure sub_006028D0(?:?; ?:?);
//begin
{*
 006028D0    push       ebp
 006028D1    mov        ebp,esp
 006028D3    add        esp,0FFFFFFF4
 006028D6    push       ebx
 006028D7    push       esi
 006028D8    xor        ebx,ebx
 006028DA    mov        dword ptr [ebp-8],ebx
 006028DD    mov        dword ptr [ebp-4],ecx
 006028E0    mov        esi,edx
 006028E2    mov        ebx,eax
 006028E4    mov        eax,dword ptr [ebp-4]
 006028E7    call       @LStrAddRef
 006028EC    xor        eax,eax
 006028EE    push       ebp
 006028EF    push       6029DA
 006028F4    push       dword ptr fs:[eax]
 006028F7    mov        dword ptr fs:[eax],esp
 006028FA    mov        edx,dword ptr [ebp-4]
 006028FD    mov        eax,6029F0; '.'
 00602902    call       @LStrPos
 00602907    dec        eax
>00602908    jge        00602969
 0060290A    lea        eax,[ebp-8]
 0060290D    push       eax
 0060290E    mov        edx,dword ptr [ebx+58]; TRvRenderPDF.?f58:String
 00602911    mov        eax,6029F0; '.'
 00602916    call       @LStrPos
 0060291B    push       eax
 0060291C    mov        eax,dword ptr [ebx+58]; TRvRenderPDF.?f58:String
 0060291F    call       @LStrLen
 00602924    mov        ecx,eax
 00602926    mov        eax,dword ptr [ebx+58]; TRvRenderPDF.?f58:String
 00602929    pop        edx
 0060292A    call       @LStrCopy
 0060292F    mov        edx,dword ptr [ebp-8]
 00602932    mov        eax,6029FC; ';'
 00602937    call       @LStrPos
 0060293C    test       eax,eax
>0060293E    jle        0060295E
 00602940    lea        eax,[ebp-8]
 00602943    push       eax
 00602944    mov        edx,dword ptr [ebp-8]
 00602947    mov        eax,6029FC; ';'
 0060294C    call       @LStrPos
 00602951    mov        ecx,eax
 00602953    dec        ecx
 00602954    xor        edx,edx
 00602956    mov        eax,dword ptr [ebp-8]
 00602959    call       @LStrCopy
 0060295E    lea        eax,[ebp-4]
 00602961    mov        edx,dword ptr [ebp-8]
 00602964    call       @LStrCat
 00602969    mov        edx,dword ptr [ebp-4]
 0060296C    mov        eax,ebx
 0060296E    call       00590194
 00602973    push       ebx
 00602974    mov        ecx,esi
 00602976    mov        dl,1
 00602978    mov        eax,[0058C458]; TRPConverter
 0060297D    call       TRPConverter.Create; TRPConverter.Create
 00602982    mov        dword ptr [ebp-0C],eax
 00602985    xor        eax,eax
 00602987    push       ebp
 00602988    push       6029B5
 0060298D    push       dword ptr fs:[eax]
 00602990    mov        dword ptr fs:[eax],esp
 00602993    xor        ecx,ecx
 00602995    xor        edx,edx
 00602997    mov        eax,dword ptr [ebp-0C]
 0060299A    mov        ebx,dword ptr [eax]
 0060299C    call       dword ptr [ebx+18]; TRPConverter.sub_0058DCBC
 0060299F    xor        eax,eax
 006029A1    pop        edx
 006029A2    pop        ecx
 006029A3    pop        ecx
 006029A4    mov        dword ptr fs:[eax],edx
 006029A7    push       6029BC
 006029AC    mov        eax,dword ptr [ebp-0C]
 006029AF    call       TObject.Free
 006029B4    ret
<006029B5    jmp        @HandleFinally
<006029BA    jmp        006029AC
 006029BC    xor        eax,eax
 006029BE    pop        edx
 006029BF    pop        ecx
 006029C0    pop        ecx
 006029C1    mov        dword ptr fs:[eax],edx
 006029C4    push       6029E1
 006029C9    lea        eax,[ebp-8]
 006029CC    call       @LStrClr
 006029D1    lea        eax,[ebp-4]
 006029D4    call       @LStrClr
 006029D9    ret
<006029DA    jmp        @HandleFinally
<006029DF    jmp        006029C9
 006029E1    pop        esi
 006029E2    pop        ebx
 006029E3    mov        esp,ebp
 006029E5    pop        ebp
 006029E6    ret
*}
//end;

//00602A00
constructor TRPPDFCatalog.Create;
begin
{*
 00602A00    push       ebx
 00602A01    push       esi
 00602A02    push       edi
 00602A03    test       dl,dl
>00602A05    je         00602A0F
 00602A07    add        esp,0FFFFFFF0
 00602A0A    call       @ClassCreate
 00602A0F    mov        esi,ecx
 00602A11    mov        ebx,edx
 00602A13    mov        edi,eax
 00602A15    mov        dl,1
 00602A17    mov        eax,[0041CBF8]; TMemoryStream
 00602A1C    call       TObject.Create; TMemoryStream.Create
 00602A21    mov        dword ptr [edi+0C],eax; TRPPDFCatalog.?fC:TMemoryStream
 00602A24    mov        eax,esi
 00602A26    mov        edx,dword ptr ds:[5FF428]; TRvRenderPDF
 00602A2C    call       @AsClass
 00602A31    mov        dword ptr [edi+4],eax; TRPPDFCatalog.?f4:TRvRenderPDF
 00602A34    mov        eax,edi
 00602A36    test       bl,bl
>00602A38    je         00602A49
 00602A3A    call       @AfterConstruction
 00602A3F    pop        dword ptr fs:[0]
 00602A46    add        esp,0C
 00602A49    mov        eax,edi
 00602A4B    pop        edi
 00602A4C    pop        esi
 00602A4D    pop        ebx
 00602A4E    ret
*}
end;

//00602A50
destructor TRPPDFObject.Destroy;
begin
{*
 00602A50    push       ebx
 00602A51    push       esi
 00602A52    call       @BeforeDestruction
 00602A57    mov        ebx,edx
 00602A59    mov        esi,eax
 00602A5B    mov        edx,ebx
 00602A5D    and        dl,0FC
 00602A60    mov        eax,esi
 00602A62    call       TObject.Destroy
 00602A67    lea        eax,[esi+0C]; TRPPDFObject.?fC:TMemoryStream
 00602A6A    call       FreeAndNil
 00602A6F    test       bl,bl
>00602A71    jle        00602A7A
 00602A73    mov        eax,esi
 00602A75    call       @ClassDestroy
 00602A7A    pop        esi
 00602A7B    pop        ebx
 00602A7C    ret
*}
end;

//00602A80
//function sub_00602A80(?:dword):?;
//begin
{*
 00602A80    mov        eax,dword ptr [eax+8]
 00602A83    ret
*}
//end;

//00602A84
//procedure sub_00602A84(?:dword; ?:?);
//begin
{*
 00602A84    mov        dword ptr [eax+8],edx
 00602A87    ret
*}
//end;

//00602A88
procedure sub_00602A88;
begin
{*
 00602A88    push       ebx
 00602A89    push       esi
 00602A8A    push       edi
 00602A8B    add        esp,0FFFFFFF4
 00602A8E    mov        ebx,eax
 00602A90    mov        esi,dword ptr [ebx+4]; TRPPDFCatalog.?f4:TRvRenderPDF
 00602A93    mov        edi,dword ptr [esi+0A8]; TRvRenderPDF.?fA8:dword
 00602A99    mov        eax,dword ptr [esi+0A4]; TRvRenderPDF.?fA4:dword
 00602A9F    mov        dword ptr [esp],eax
 00602AA2    mov        eax,dword ptr [ebx+0C]; TRPPDFCatalog.?fC:TMemoryStream
 00602AA5    mov        dword ptr [esi+78],eax; TRvRenderPDF.?f78:TFileStream
 00602AA8    push       0
 00602AAA    mov        eax,ebx
 00602AAC    call       00602A80
 00602AB1    mov        dword ptr [esp+8],eax
 00602AB5    mov        byte ptr [esp+0C],0
 00602ABA    lea        ecx,[esp+8]
 00602ABE    mov        edx,602B9C; '%d 0 obj'
 00602AC3    mov        eax,esi
 00602AC5    mov        esi,dword ptr [eax]
 00602AC7    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00602ACD    mov        edx,602BB0; '<<'
 00602AD2    mov        eax,dword ptr [ebx+4]; TRPPDFCatalog.?f4:TRvRenderPDF
 00602AD5    mov        ecx,dword ptr [eax]
 00602AD7    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602ADD    mov        edx,602BBC; '/Type /Catalog'
 00602AE2    mov        eax,dword ptr [ebx+4]; TRPPDFCatalog.?f4:TRvRenderPDF
 00602AE5    mov        ecx,dword ptr [eax]
 00602AE7    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602AED    push       0
 00602AEF    mov        eax,edi
 00602AF1    call       00602A80
 00602AF6    mov        dword ptr [esp+8],eax
 00602AFA    mov        byte ptr [esp+0C],0
 00602AFF    lea        ecx,[esp+8]
 00602B03    mov        edx,602BD4; '/Outlines %d 0 R'
 00602B08    mov        eax,dword ptr [ebx+4]; TRPPDFCatalog.?f4:TRvRenderPDF
 00602B0B    mov        esi,dword ptr [eax]
 00602B0D    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00602B13    push       0
 00602B15    mov        eax,dword ptr [esp+4]
 00602B19    call       00602A80
 00602B1E    mov        dword ptr [esp+8],eax
 00602B22    mov        byte ptr [esp+0C],0
 00602B27    lea        ecx,[esp+8]
 00602B2B    mov        edx,602BF0; '/Pages %d 0 R'
 00602B30    mov        eax,dword ptr [ebx+4]; TRPPDFCatalog.?f4:TRvRenderPDF
 00602B33    mov        esi,dword ptr [eax]
 00602B35    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00602B3B    cmp        byte ptr [ebx+10],0; TRPPDFCatalog.?f10:byte
>00602B3F    je         00602B51
 00602B41    mov        edx,602C08; '/PageMode /UseOutlines'
 00602B46    mov        eax,dword ptr [ebx+4]; TRPPDFCatalog.?f4:TRvRenderPDF
 00602B49    mov        ecx,dword ptr [eax]
 00602B4B    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602B51    mov        edx,602C28; '>>'
 00602B56    mov        eax,dword ptr [ebx+4]; TRPPDFCatalog.?f4:TRvRenderPDF
 00602B59    mov        ecx,dword ptr [eax]
 00602B5B    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602B61    mov        edx,602C34; 'endobj'
 00602B66    mov        eax,dword ptr [ebx+4]; TRPPDFCatalog.?f4:TRvRenderPDF
 00602B69    mov        ecx,dword ptr [eax]
 00602B6B    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602B71    xor        edx,edx
 00602B73    mov        eax,dword ptr [ebx+4]; TRPPDFCatalog.?f4:TRvRenderPDF
 00602B76    mov        ecx,dword ptr [eax]
 00602B78    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602B7E    push       0
 00602B80    push       0
 00602B82    mov        eax,dword ptr [ebx+4]; TRPPDFCatalog.?f4:TRvRenderPDF
 00602B85    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 00602B88    call       TStream.SetPosition
 00602B8D    add        esp,0C
 00602B90    pop        edi
 00602B91    pop        esi
 00602B92    pop        ebx
 00602B93    ret
*}
end;

//00602C3C
//procedure sub_00602C3C(?:TRPPDFPages; ?:AnsiString);
//begin
{*
 00602C3C    push       ebp
 00602C3D    mov        ebp,esp
 00602C3F    add        esp,0FFFFFFEC
 00602C42    push       ebx
 00602C43    push       esi
 00602C44    push       edi
 00602C45    xor        ecx,ecx
 00602C47    mov        dword ptr [ebp-0C],ecx
 00602C4A    mov        ebx,edx
 00602C4C    mov        esi,eax
 00602C4E    xor        eax,eax
 00602C50    push       ebp
 00602C51    push       602CEF
 00602C56    push       dword ptr fs:[eax]
 00602C59    mov        dword ptr fs:[eax],esp
 00602C5C    mov        eax,dword ptr [esi+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602C5F    mov        eax,dword ptr [eax+90]; TRvRenderPDF.?f90:dword
 00602C65    mov        edx,dword ptr [eax]
 00602C67    call       dword ptr [edx+14]
 00602C6A    mov        edi,eax
 00602C6C    dec        edi
 00602C6D    test       edi,edi
>00602C6F    jl         00602CC2
 00602C71    inc        edi
 00602C72    mov        dword ptr [ebp-4],0
 00602C79    mov        eax,dword ptr [esi+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602C7C    mov        eax,dword ptr [eax+90]; TRvRenderPDF.?f90:dword
 00602C82    mov        edx,dword ptr [ebp-4]
 00602C85    mov        ecx,dword ptr [eax]
 00602C87    call       dword ptr [ecx+18]
 00602C8A    mov        dword ptr [ebp-8],eax
 00602C8D    push       0
 00602C8F    lea        eax,[ebp-0C]
 00602C92    push       eax
 00602C93    mov        eax,dword ptr [ebp-8]
 00602C96    call       00602A80
 00602C9B    mov        dword ptr [ebp-14],eax
 00602C9E    mov        byte ptr [ebp-10],0
 00602CA2    lea        ecx,[ebp-14]
 00602CA5    mov        edx,602D08; '%d 0 R '
 00602CAA    mov        eax,dword ptr [esi+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602CAD    call       00601CA8
 00602CB2    mov        edx,dword ptr [ebp-0C]
 00602CB5    mov        eax,ebx
 00602CB7    call       @LStrCat
 00602CBC    inc        dword ptr [ebp-4]
 00602CBF    dec        edi
<00602CC0    jne        00602C79
 00602CC2    push       ebx
 00602CC3    mov        eax,dword ptr [ebx]
 00602CC5    call       @LStrLen
 00602CCA    mov        ecx,eax
 00602CCC    dec        ecx
 00602CCD    mov        eax,dword ptr [ebx]
 00602CCF    mov        edx,1
 00602CD4    call       @LStrCopy
 00602CD9    xor        eax,eax
 00602CDB    pop        edx
 00602CDC    pop        ecx
 00602CDD    pop        ecx
 00602CDE    mov        dword ptr fs:[eax],edx
 00602CE1    push       602CF6
 00602CE6    lea        eax,[ebp-0C]
 00602CE9    call       @LStrClr
 00602CEE    ret
<00602CEF    jmp        @HandleFinally
<00602CF4    jmp        00602CE6
 00602CF6    pop        edi
 00602CF7    pop        esi
 00602CF8    pop        ebx
 00602CF9    mov        esp,ebp
 00602CFB    pop        ebp
 00602CFC    ret
*}
//end;

//00602D10
procedure sub_00602D10;
begin
{*
 00602D10    push       ebp
 00602D11    mov        ebp,esp
 00602D13    add        esp,0FFFFFFF4
 00602D16    push       ebx
 00602D17    push       esi
 00602D18    xor        edx,edx
 00602D1A    mov        dword ptr [ebp-0C],edx
 00602D1D    mov        ebx,eax
 00602D1F    xor        eax,eax
 00602D21    push       ebp
 00602D22    push       602E1C
 00602D27    push       dword ptr fs:[eax]
 00602D2A    mov        dword ptr fs:[eax],esp
 00602D2D    mov        esi,dword ptr [ebx+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602D30    mov        eax,dword ptr [ebx+0C]; TRPPDFPages.?fC:TMemoryStream
 00602D33    mov        dword ptr [esi+78],eax; TRvRenderPDF.?f78:TFileStream
 00602D36    push       0
 00602D38    mov        eax,ebx
 00602D3A    call       00602A80
 00602D3F    mov        dword ptr [ebp-8],eax
 00602D42    mov        byte ptr [ebp-4],0
 00602D46    lea        ecx,[ebp-8]
 00602D49    mov        edx,602E34; '%d 0 obj'
 00602D4E    mov        eax,esi
 00602D50    mov        esi,dword ptr [eax]
 00602D52    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00602D58    mov        edx,602E48; '<<'
 00602D5D    mov        eax,dword ptr [ebx+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602D60    mov        ecx,dword ptr [eax]
 00602D62    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602D68    mov        edx,602E54; '/Type /Pages'
 00602D6D    mov        eax,dword ptr [ebx+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602D70    mov        ecx,dword ptr [eax]
 00602D72    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602D78    push       0
 00602D7A    mov        esi,dword ptr [ebx+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602D7D    mov        eax,dword ptr [esi+90]; TRvRenderPDF.?f90:dword
 00602D83    mov        edx,dword ptr [eax]
 00602D85    call       dword ptr [edx+14]
 00602D88    mov        dword ptr [ebp-8],eax
 00602D8B    mov        byte ptr [ebp-4],0
 00602D8F    lea        ecx,[ebp-8]
 00602D92    mov        edx,602E6C; '/Count %d'
 00602D97    mov        eax,esi
 00602D99    mov        esi,dword ptr [eax]
 00602D9B    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00602DA1    push       0
 00602DA3    lea        edx,[ebp-0C]
 00602DA6    mov        eax,ebx
 00602DA8    call       00602C3C
 00602DAD    mov        eax,dword ptr [ebp-0C]
 00602DB0    mov        dword ptr [ebp-8],eax
 00602DB3    mov        byte ptr [ebp-4],0B
 00602DB7    lea        ecx,[ebp-8]
 00602DBA    mov        edx,602E80; '/Kids [ %s ] '
 00602DBF    mov        eax,dword ptr [ebx+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602DC2    mov        esi,dword ptr [eax]
 00602DC4    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00602DCA    mov        edx,602E98; '>>'
 00602DCF    mov        eax,dword ptr [ebx+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602DD2    mov        ecx,dword ptr [eax]
 00602DD4    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602DDA    mov        edx,602EA4; 'endobj'
 00602DDF    mov        eax,dword ptr [ebx+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602DE2    mov        ecx,dword ptr [eax]
 00602DE4    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602DEA    xor        edx,edx
 00602DEC    mov        eax,dword ptr [ebx+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602DEF    mov        ecx,dword ptr [eax]
 00602DF1    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602DF7    push       0
 00602DF9    push       0
 00602DFB    mov        eax,dword ptr [ebx+4]; TRPPDFPages.?f4:TRvRenderPDF
 00602DFE    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 00602E01    call       TStream.SetPosition
 00602E06    xor        eax,eax
 00602E08    pop        edx
 00602E09    pop        ecx
 00602E0A    pop        ecx
 00602E0B    mov        dword ptr fs:[eax],edx
 00602E0E    push       602E23
 00602E13    lea        eax,[ebp-0C]
 00602E16    call       @LStrClr
 00602E1B    ret
<00602E1C    jmp        @HandleFinally
<00602E21    jmp        00602E13
 00602E23    pop        esi
 00602E24    pop        ebx
 00602E25    mov        esp,ebp
 00602E27    pop        ebp
 00602E28    ret
*}
end;

//00602EAC
constructor TRPPDFPageContent.Create;
begin
{*
 00602EAC    push       ebp
 00602EAD    mov        ebp,esp
 00602EAF    push       ecx
 00602EB0    push       ebx
 00602EB1    push       esi
 00602EB2    push       edi
 00602EB3    test       dl,dl
>00602EB5    je         00602EBF
 00602EB7    add        esp,0FFFFFFF0
 00602EBA    call       @ClassCreate
 00602EBF    mov        edi,ecx
 00602EC1    mov        byte ptr [ebp-1],dl
 00602EC4    mov        ebx,eax
 00602EC6    mov        ecx,edi
 00602EC8    xor        edx,edx
 00602ECA    mov        eax,ebx
 00602ECC    call       TRPPDFCatalog.Create
 00602ED1    mov        dl,1
 00602ED3    mov        eax,[0041CBF8]; TMemoryStream
 00602ED8    call       TObject.Create; TMemoryStream.Create
 00602EDD    mov        dword ptr [ebx+10],eax; TRPPDFPageContent.?f10:TMemoryStream
 00602EE0    mov        eax,edi
 00602EE2    mov        edx,dword ptr ds:[5FF428]; TRvRenderPDF
 00602EE8    call       @AsClass
 00602EED    mov        esi,eax
 00602EEF    mov        dword ptr [ebx+4],esi; TRPPDFPageContent.?f4:TRvRenderPDF
 00602EF2    mov        eax,dword ptr [ebx+10]; TRPPDFPageContent.?f10:TMemoryStream
 00602EF5    mov        dword ptr [esi+78],eax; TRvRenderPDF.?f78:TFileStream
 00602EF8    mov        eax,esi
 00602EFA    mov        edx,602F30; '2 J'
 00602EFF    mov        ecx,dword ptr [eax]
 00602F01    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00602F07    mov        eax,ebx
 00602F09    cmp        byte ptr [ebp-1],0
>00602F0D    je         00602F1E
 00602F0F    call       @AfterConstruction
 00602F14    pop        dword ptr fs:[0]
 00602F1B    add        esp,0C
 00602F1E    mov        eax,ebx
 00602F20    pop        edi
 00602F21    pop        esi
 00602F22    pop        ebx
 00602F23    pop        ecx
 00602F24    pop        ebp
 00602F25    ret
*}
end;

//00602F34
destructor TRPPDFPageContent.Destroy;
begin
{*
 00602F34    push       ebx
 00602F35    push       esi
 00602F36    call       @BeforeDestruction
 00602F3B    mov        ebx,edx
 00602F3D    mov        esi,eax
 00602F3F    mov        edx,ebx
 00602F41    and        dl,0FC
 00602F44    mov        eax,esi
 00602F46    call       TRPPDFObject.Destroy
 00602F4B    lea        eax,[esi+10]; TRPPDFPageContent.?f10:TMemoryStream
 00602F4E    call       FreeAndNil
 00602F53    test       bl,bl
>00602F55    jle        00602F5E
 00602F57    mov        eax,esi
 00602F59    call       @ClassDestroy
 00602F5E    pop        esi
 00602F5F    pop        ebx
 00602F60    ret
*}
end;

//00602F64
procedure sub_00602F64;
begin
{*
 00602F64    push       ebp
 00602F65    mov        ebp,esp
 00602F67    add        esp,0FFFFFFE0
 00602F6A    push       ebx
 00602F6B    push       esi
 00602F6C    xor        edx,edx
 00602F6E    mov        dword ptr [ebp-20],edx
 00602F71    mov        dword ptr [ebp-4],edx
 00602F74    mov        ebx,eax
 00602F76    xor        eax,eax
 00602F78    push       ebp
 00602F79    push       6031A1
 00602F7E    push       dword ptr fs:[eax]
 00602F81    mov        dword ptr fs:[eax],esp
 00602F84    mov        edx,dword ptr [ebx+0C]; TRPPDFPageContent.?fC:TMemoryStream
 00602F87    mov        eax,dword ptr [ebx+4]; TRPPDFPageContent.?f4:TRvRenderPDF
 00602F8A    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 00602F8D    mov        dword ptr [ebp-0C],eax
 00602F90    push       0
 00602F92    mov        eax,ebx
 00602F94    call       00602A80
 00602F99    mov        dword ptr [ebp-14],eax
 00602F9C    mov        byte ptr [ebp-10],0
 00602FA0    lea        ecx,[ebp-14]
 00602FA3    mov        edx,6031B8; '%d 0 obj'
 00602FA8    mov        eax,dword ptr [ebp-0C]
 00602FAB    mov        esi,dword ptr [eax]
 00602FAD    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00602FB3    mov        eax,dword ptr [ebp-0C]
 00602FB6    cmp        byte ptr [eax+0D3],0; TRvRenderPDF.UseCompression:Boolean
>00602FBD    je         006030E7
 00602FC3    mov        eax,dword ptr [ebp-0C]
 00602FC6    cmp        word ptr [eax+1E2],0; TRvRenderPDF.?f1E2:word
>00602FCE    je         006030E7
 00602FD4    mov        dl,1
 00602FD6    mov        eax,[0041CBF8]; TMemoryStream
 00602FDB    call       TObject.Create; TMemoryStream.Create
 00602FE0    mov        dword ptr [ebp-8],eax
 00602FE3    xor        eax,eax
 00602FE5    push       ebp
 00602FE6    push       6030E0
 00602FEB    push       dword ptr fs:[eax]
 00602FEE    mov        dword ptr fs:[eax],esp
 00602FF1    lea        eax,[ebp-4]
 00602FF4    mov        edx,6031CC; 'FlateDecode'
 00602FF9    call       @LStrLAsg
 00602FFE    push       0
 00603000    push       0
 00603002    mov        eax,dword ptr [ebx+10]; TRPPDFPageContent.?f10:TMemoryStream
 00603005    call       TStream.SetPosition
 0060300A    lea        eax,[ebp-4]
 0060300D    push       eax
 0060300E    mov        edx,dword ptr [ebx+10]; TRPPDFPageContent.?f10:TMemoryStream
 00603011    mov        ebx,dword ptr [ebp-0C]
 00603014    mov        ecx,dword ptr [ebp-8]
 00603017    mov        eax,dword ptr [ebx+1E4]; TRvRenderPDF.?f1E4:dword
 0060301D    call       dword ptr [ebx+1E0]; TRvRenderPDF.OnCompress
 00603023    mov        edx,6031E0; '<<'
 00603028    mov        eax,dword ptr [ebp-0C]
 0060302B    mov        ecx,dword ptr [eax]
 0060302D    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603033    push       0
 00603035    mov        eax,dword ptr [ebp-8]
 00603038    mov        edx,dword ptr [eax]
 0060303A    call       dword ptr [edx]; TStream.GetSize
 0060303C    mov        dword ptr [ebp-1C],eax
 0060303F    mov        dword ptr [ebp-18],edx
 00603042    lea        eax,[ebp-1C]
 00603045    mov        dword ptr [ebp-14],eax
 00603048    mov        byte ptr [ebp-10],10
 0060304C    lea        ecx,[ebp-14]
 0060304F    mov        edx,6031EC; '/Length %d'
 00603054    mov        eax,dword ptr [ebp-0C]
 00603057    mov        ebx,dword ptr [eax]
 00603059    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 0060305F    push       603200; '/Filter [/'
 00603064    push       dword ptr [ebp-4]
 00603067    push       603214; ']'
 0060306C    lea        eax,[ebp-20]
 0060306F    mov        edx,3
 00603074    call       @LStrCatN
 00603079    mov        edx,dword ptr [ebp-20]
 0060307C    mov        eax,dword ptr [ebp-0C]
 0060307F    mov        ecx,dword ptr [eax]
 00603081    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603087    mov        edx,603220; '>>'
 0060308C    mov        eax,dword ptr [ebp-0C]
 0060308F    mov        ecx,dword ptr [eax]
 00603091    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603097    mov        edx,60322C; 'stream'
 0060309C    mov        eax,dword ptr [ebp-0C]
 0060309F    mov        ecx,dword ptr [eax]
 006030A1    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006030A7    push       0
 006030A9    push       0
 006030AB    mov        eax,dword ptr [ebp-8]
 006030AE    call       TStream.SetPosition
 006030B3    mov        eax,dword ptr [ebp-8]
 006030B6    mov        edx,dword ptr [eax]
 006030B8    call       dword ptr [edx]; TStream.GetSize
 006030BA    push       edx
 006030BB    push       eax
 006030BC    mov        eax,dword ptr [ebp-0C]
 006030BF    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 006030C2    mov        edx,dword ptr [ebp-8]
 006030C5    call       TStream.CopyFrom
 006030CA    xor        eax,eax
 006030CC    pop        edx
 006030CD    pop        ecx
 006030CE    pop        ecx
 006030CF    mov        dword ptr fs:[eax],edx
 006030D2    push       603147
 006030D7    mov        eax,dword ptr [ebp-8]
 006030DA    call       TObject.Free
 006030DF    ret
<006030E0    jmp        @HandleFinally
<006030E5    jmp        006030D7
 006030E7    push       0
 006030E9    mov        eax,dword ptr [ebx+10]; TRPPDFPageContent.?f10:TMemoryStream
 006030EC    mov        edx,dword ptr [eax]
 006030EE    call       dword ptr [edx]; TStream.GetSize
 006030F0    mov        dword ptr [ebp-1C],eax
 006030F3    mov        dword ptr [ebp-18],edx
 006030F6    lea        eax,[ebp-1C]
 006030F9    mov        dword ptr [ebp-14],eax
 006030FC    mov        byte ptr [ebp-10],10
 00603100    lea        ecx,[ebp-14]
 00603103    mov        edx,60323C; '<< /Length %d >>'
 00603108    mov        eax,dword ptr [ebp-0C]
 0060310B    mov        esi,dword ptr [eax]
 0060310D    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00603113    mov        edx,60322C; 'stream'
 00603118    mov        eax,dword ptr [ebp-0C]
 0060311B    mov        ecx,dword ptr [eax]
 0060311D    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603123    push       0
 00603125    push       0
 00603127    mov        eax,dword ptr [ebx+10]; TRPPDFPageContent.?f10:TMemoryStream
 0060312A    call       TStream.SetPosition
 0060312F    mov        esi,dword ptr [ebx+10]; TRPPDFPageContent.?f10:TMemoryStream
 00603132    mov        eax,esi
 00603134    mov        edx,dword ptr [eax]
 00603136    call       dword ptr [edx]; TStream.GetSize
 00603138    push       edx
 00603139    push       eax
 0060313A    mov        edx,esi
 0060313C    mov        eax,dword ptr [ebp-0C]
 0060313F    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 00603142    call       TStream.CopyFrom
 00603147    mov        edx,603258; 'endstream'
 0060314C    mov        eax,dword ptr [ebp-0C]
 0060314F    mov        ecx,dword ptr [eax]
 00603151    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603157    mov        edx,60326C; 'endobj'
 0060315C    mov        eax,dword ptr [ebp-0C]
 0060315F    mov        ecx,dword ptr [eax]
 00603161    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603167    xor        edx,edx
 00603169    mov        eax,dword ptr [ebp-0C]
 0060316C    mov        ecx,dword ptr [eax]
 0060316E    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603174    push       0
 00603176    push       0
 00603178    mov        eax,dword ptr [ebp-0C]
 0060317B    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 0060317E    call       TStream.SetPosition
 00603183    xor        eax,eax
 00603185    pop        edx
 00603186    pop        ecx
 00603187    pop        ecx
 00603188    mov        dword ptr fs:[eax],edx
 0060318B    push       6031A8
 00603190    lea        eax,[ebp-20]
 00603193    call       @LStrClr
 00603198    lea        eax,[ebp-4]
 0060319B    call       @LStrClr
 006031A0    ret
<006031A1    jmp        @HandleFinally
<006031A6    jmp        00603190
 006031A8    pop        esi
 006031A9    pop        ebx
 006031AA    mov        esp,ebp
 006031AC    pop        ebp
 006031AD    ret
*}
end;

//00603274
//function sub_00603274(?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 00603274    push       ebp
 00603275    mov        ebp,esp
 00603277    add        esp,0FFFFFFF8
 0060327A    fld        qword ptr [ebp+10]
 0060327D    fcomp      qword ptr [ebp+20]
 00603280    fnstsw     al
 00603282    sahf
>00603283    jbe        006032CC
 00603285    fld        qword ptr [ebp+8]
 00603288    fsub       qword ptr [ebp+18]
 0060328B    fld        qword ptr [ebp+10]
 0060328E    fsub       qword ptr [ebp+20]
 00603291    fdivp      st(1),st
 00603293    fld1
 00603295    fpatan
 00603297    fmul       dword ptr ds:[603334]; 180:Single
 0060329D    fld        tbyte ptr ds:[603338]; 3,14159265358979:Extended
 006032A3    fdivp      st(1),st
 006032A5    fsubr      dword ptr ds:[603344]; 360:Single
 006032AB    fstp       qword ptr [ebp-8]
 006032AE    wait
 006032AF    fld        qword ptr [ebp-8]
 006032B2    fcomp      dword ptr ds:[603344]; 360:Single
 006032B8    fnstsw     al
 006032BA    sahf
>006032BB    jbe        00603328
 006032BD    fld        qword ptr [ebp-8]
 006032C0    fsub       dword ptr ds:[603344]; 360:Single
 006032C6    fstp       qword ptr [ebp-8]
 006032C9    wait
>006032CA    jmp        00603328
 006032CC    fld        qword ptr [ebp+10]
 006032CF    fcomp      qword ptr [ebp+20]
 006032D2    fnstsw     al
 006032D4    sahf
>006032D5    jae        00603303
 006032D7    fld        qword ptr [ebp+8]
 006032DA    fsub       qword ptr [ebp+18]
 006032DD    fld        qword ptr [ebp+10]
 006032E0    fsub       qword ptr [ebp+20]
 006032E3    fdivp      st(1),st
 006032E5    fld1
 006032E7    fpatan
 006032E9    fmul       dword ptr ds:[603334]; 180:Single
 006032EF    fld        tbyte ptr ds:[603338]; 3,14159265358979:Extended
 006032F5    fdivp      st(1),st
 006032F7    fsubr      dword ptr ds:[603334]; 180:Single
 006032FD    fstp       qword ptr [ebp-8]
 00603300    wait
>00603301    jmp        00603328
 00603303    fld        qword ptr [ebp+8]
 00603306    fcomp      qword ptr [ebp+18]
 00603309    fnstsw     al
 0060330B    sahf
>0060330C    jae        0060331C
 0060330E    xor        eax,eax
 00603310    mov        dword ptr [ebp-8],eax
 00603313    mov        dword ptr [ebp-4],40568000
>0060331A    jmp        00603328
 0060331C    xor        eax,eax
 0060331E    mov        dword ptr [ebp-8],eax
 00603321    mov        dword ptr [ebp-4],4070E000
 00603328    fld        qword ptr [ebp-8]
 0060332B    pop        ecx
 0060332C    pop        ecx
 0060332D    pop        ebp
 0060332E    ret        20
*}
//end;

//00603348
//procedure sub_00603348(?:TRPPDFPage; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00603348    push       ebp
 00603349    mov        ebp,esp
 0060334B    add        esp,0FFFFFFC0
 0060334E    push       ebx
 0060334F    push       esi
 00603350    push       edi
 00603351    mov        byte ptr [ebp-1],cl
 00603354    mov        ebx,edx
 00603356    mov        edi,eax
 00603358    mov        edx,dword ptr [edi+10]; TRPPDFPage.?f10:TRPPDFPageContent
 0060335B    mov        edx,dword ptr [edx+10]; TRPPDFPageContent.?f10:TMemoryStream
 0060335E    mov        eax,dword ptr [edi+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603361    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 00603364    mov        esi,eax
 00603366    mov        eax,edi
 00603368    call       00604194
 0060336D    mov        edx,603468; '% arc code'
 00603372    mov        eax,esi
 00603374    mov        ecx,dword ptr [eax]
 00603376    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060337C    fld        qword ptr [ebp+40]
 0060337F    fadd       qword ptr [ebp+30]
 00603382    fdiv       dword ptr ds:[603474]; 2:Single
 00603388    fstp       qword ptr [ebp-10]
 0060338B    wait
 0060338C    fld        qword ptr [ebp+38]
 0060338F    fadd       qword ptr [ebp+28]
 00603392    fdiv       dword ptr ds:[603474]; 2:Single
 00603398    fstp       qword ptr [ebp-18]
 0060339B    wait
 0060339C    fld        qword ptr [ebp+30]
 0060339F    fsub       qword ptr [ebp+40]
 006033A2    fdiv       dword ptr ds:[603474]; 2:Single
 006033A8    fstp       qword ptr [ebp-40]
 006033AB    wait
 006033AC    fld        qword ptr [ebp+40]
 006033AF    fadd       qword ptr [ebp+30]
 006033B2    fdiv       dword ptr ds:[603474]; 2:Single
 006033B8    fstp       qword ptr [ebp-20]
 006033BB    wait
 006033BC    fld        qword ptr [ebp+38]
 006033BF    fadd       qword ptr [ebp+28]
 006033C2    fdiv       dword ptr ds:[603474]; 2:Single
 006033C8    fstp       qword ptr [ebp-28]
 006033CB    wait
 006033CC    push       dword ptr [ebp-1C]
 006033CF    push       dword ptr [ebp-20]
 006033D2    push       dword ptr [ebp-24]
 006033D5    push       dword ptr [ebp-28]
 006033D8    push       dword ptr [ebp+24]
 006033DB    push       dword ptr [ebp+20]
 006033DE    push       dword ptr [ebp+1C]
 006033E1    push       dword ptr [ebp+18]
 006033E4    call       00603274
 006033E9    fstp       qword ptr [ebp-30]
 006033EC    wait
 006033ED    push       dword ptr [ebp-1C]
 006033F0    push       dword ptr [ebp-20]
 006033F3    push       dword ptr [ebp-24]
 006033F6    push       dword ptr [ebp-28]
 006033F9    push       dword ptr [ebp+14]
 006033FC    push       dword ptr [ebp+10]
 006033FF    push       dword ptr [ebp+0C]
 00603402    push       dword ptr [ebp+8]
 00603405    call       00603274
 0060340A    fstp       qword ptr [ebp-38]
 0060340D    wait
 0060340E    push       dword ptr [ebp-0C]
 00603411    push       dword ptr [ebp-10]
 00603414    push       dword ptr [ebp-14]
 00603417    push       dword ptr [ebp-18]
 0060341A    push       dword ptr [ebp-3C]
 0060341D    push       dword ptr [ebp-40]
 00603420    push       dword ptr [ebp-2C]
 00603423    push       dword ptr [ebp-30]
 00603426    push       dword ptr [ebp-34]
 00603429    push       dword ptr [ebp-38]
 0060342C    mov        eax,edi
 0060342E    call       0060526C
 00603433    test       bl,bl
>00603435    je         00603455
 00603437    cmp        byte ptr [ebp-1],0
>0060343B    je         00603446
 0060343D    mov        eax,edi
 0060343F    call       00603484
>00603444    jmp        00603455
 00603446    mov        edx,603480; 'S'
 0060344B    mov        eax,esi
 0060344D    mov        ecx,dword ptr [eax]
 0060344F    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603455    pop        edi
 00603456    pop        esi
 00603457    pop        ebx
 00603458    mov        esp,ebp
 0060345A    pop        ebp
 0060345B    ret        40
*}
//end;

//00603484
//procedure sub_00603484(?:TRPPDFPage);
//begin
{*
 00603484    push       ebx
 00603485    mov        ebx,dword ptr [eax+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603488    mov        eax,ebx
 0060348A    call       00601FC0
 0060348F    test       al,al
>00603491    je         006034AF
 00603493    mov        eax,ebx
 00603495    call       00601FA8
 0060349A    test       al,al
>0060349C    je         006034AF
 0060349E    mov        edx,6034F0; 'b'
 006034A3    mov        eax,ebx
 006034A5    mov        ecx,dword ptr [eax]
 006034A7    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006034AD    pop        ebx
 006034AE    ret
 006034AF    mov        eax,ebx
 006034B1    call       00601FA8
 006034B6    test       al,al
>006034B8    je         006034CB
 006034BA    mov        edx,6034FC; 'f'
 006034BF    mov        eax,ebx
 006034C1    mov        ecx,dword ptr [eax]
 006034C3    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
>006034C9    jmp        006034E5
 006034CB    mov        eax,ebx
 006034CD    call       00601FC0
 006034D2    test       al,al
>006034D4    je         006034E5
 006034D6    mov        edx,603508; 'S'
 006034DB    mov        eax,ebx
 006034DD    mov        ecx,dword ptr [eax]
 006034DF    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006034E5    pop        ebx
 006034E6    ret
*}
//end;

//0060350C
constructor TRPPDFPage.Create;
begin
{*
 0060350C    push       ebx
 0060350D    push       esi
 0060350E    push       edi
 0060350F    test       dl,dl
>00603511    je         0060351B
 00603513    add        esp,0FFFFFFF0
 00603516    call       @ClassCreate
 0060351B    mov        esi,ecx
 0060351D    mov        ebx,edx
 0060351F    mov        edi,eax
 00603521    mov        ecx,esi
 00603523    xor        edx,edx
 00603525    mov        eax,edi
 00603527    call       TRPPDFCatalog.Create
 0060352C    xor        eax,eax
 0060352E    mov        dword ptr [edi+18],eax; TRPPDFPage.?f18:?Double
 00603531    mov        dword ptr [edi+1C],40210000; TRPPDFPage.?f1C:dword
 00603538    xor        eax,eax
 0060353A    mov        dword ptr [edi+20],eax; TRPPDFPage.?f20:?Double
 0060353D    mov        dword ptr [edi+24],40260000; TRPPDFPage.?f24:dword
 00603544    mov        ecx,esi
 00603546    mov        dl,1
 00603548    mov        eax,[005FEFCC]; TRPPDFPageContent
 0060354D    call       TRPPDFPageContent.Create; TRPPDFPageContent.Create
 00603552    mov        dword ptr [edi+10],eax; TRPPDFPage.?f10:TRPPDFPageContent
 00603555    mov        byte ptr [edi+3C],0; TRPPDFPage.?f3C:byte
 00603559    xor        eax,eax
 0060355B    mov        dword ptr [edi+34],eax; TRPPDFPage.?f34:TColor
 0060355E    mov        byte ptr [edi+54],0; TRPPDFPage.?f54:byte
 00603562    mov        dword ptr [edi+4C],0FFFFFF; TRPPDFPage.?f4C:TColor
 00603569    mov        eax,edi
 0060356B    test       bl,bl
>0060356D    je         0060357E
 0060356F    call       @AfterConstruction
 00603574    pop        dword ptr fs:[0]
 0060357B    add        esp,0C
 0060357E    mov        eax,edi
 00603580    pop        edi
 00603581    pop        esi
 00603582    pop        ebx
 00603583    ret
*}
end;

//00603584
//procedure sub_00603584(?:TRPPDFPage; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00603584    push       ebp
 00603585    mov        ebp,esp
 00603587    add        esp,0FFFFFF88
 0060358A    push       ebx
 0060358B    push       esi
 0060358C    push       edi
 0060358D    mov        esi,eax
 0060358F    mov        edx,dword ptr [esi+10]; TRPPDFPage.?f10:TRPPDFPageContent
 00603592    mov        edx,dword ptr [edx+10]; TRPPDFPageContent.?f10:TMemoryStream
 00603595    mov        eax,dword ptr [esi+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603598    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 0060359B    mov        edi,eax
 0060359D    push       5
 0060359F    push       dword ptr [ebp+34]
 006035A2    push       dword ptr [ebp+30]
 006035A5    mov        eax,esi
 006035A7    call       00603CC0
 006035AC    fstp       tbyte ptr [ebp-3C]
 006035AF    wait
 006035B0    lea        eax,[ebp-3C]
 006035B3    mov        dword ptr [ebp-30],eax
 006035B6    mov        byte ptr [ebp-2C],3
 006035BA    push       dword ptr [ebp+2C]
 006035BD    push       dword ptr [ebp+28]
 006035C0    mov        eax,esi
 006035C2    call       00603CE0
 006035C7    fstp       tbyte ptr [ebp-48]
 006035CA    wait
 006035CB    lea        eax,[ebp-48]
 006035CE    mov        dword ptr [ebp-28],eax
 006035D1    mov        byte ptr [ebp-24],3
 006035D5    push       dword ptr [ebp+24]
 006035D8    push       dword ptr [ebp+20]
 006035DB    mov        eax,esi
 006035DD    call       00603CC0
 006035E2    fstp       tbyte ptr [ebp-54]
 006035E5    wait
 006035E6    lea        eax,[ebp-54]
 006035E9    mov        dword ptr [ebp-20],eax
 006035EC    mov        byte ptr [ebp-1C],3
 006035F0    push       dword ptr [ebp+1C]
 006035F3    push       dword ptr [ebp+18]
 006035F6    mov        eax,esi
 006035F8    call       00603CE0
 006035FD    fstp       tbyte ptr [ebp-60]
 00603600    wait
 00603601    lea        eax,[ebp-60]
 00603604    mov        dword ptr [ebp-18],eax
 00603607    mov        byte ptr [ebp-14],3
 0060360B    push       dword ptr [ebp+14]
 0060360E    push       dword ptr [ebp+10]
 00603611    mov        eax,esi
 00603613    call       00603CC0
 00603618    fstp       tbyte ptr [ebp-6C]
 0060361B    wait
 0060361C    lea        eax,[ebp-6C]
 0060361F    mov        dword ptr [ebp-10],eax
 00603622    mov        byte ptr [ebp-0C],3
 00603626    push       dword ptr [ebp+0C]
 00603629    push       dword ptr [ebp+8]
 0060362C    mov        eax,esi
 0060362E    call       00603CE0
 00603633    fstp       tbyte ptr [ebp-78]
 00603636    wait
 00603637    lea        eax,[ebp-78]
 0060363A    mov        dword ptr [ebp-8],eax
 0060363D    mov        byte ptr [ebp-4],3
 00603641    lea        ecx,[ebp-30]
 00603644    mov        edx,603664; '%.4f %.4f %.4f %.4f %.4f %.4f c'
 00603649    mov        eax,edi
 0060364B    mov        ebx,dword ptr [eax]
 0060364D    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 00603653    pop        edi
 00603654    pop        esi
 00603655    pop        ebx
 00603656    mov        esp,ebp
 00603658    pop        ebp
 00603659    ret        30
*}
//end;

//00603684
//function sub_00603684(?:?):?;
//begin
{*
 00603684    push       ebp
 00603685    mov        ebp,esp
 00603687    add        esp,0FFFFFFF8
 0060368A    fld        tbyte ptr ds:[6036A8]; 3,14159265358979:Extended
 00603690    fmul       qword ptr [ebp+8]
 00603693    fdiv       dword ptr ds:[6036B4]; 180:Single
 00603699    fstp       qword ptr [ebp-8]
 0060369C    wait
 0060369D    fld        qword ptr [ebp-8]
 006036A0    pop        ecx
 006036A1    pop        ecx
 006036A2    pop        ebp
 006036A3    ret        8
*}
//end;

//006036B8
destructor TRPPDFPage.Destroy;
begin
{*
 006036B8    push       ebx
 006036B9    push       esi
 006036BA    call       @BeforeDestruction
 006036BF    mov        ebx,edx
 006036C1    mov        esi,eax
 006036C3    mov        edx,ebx
 006036C5    and        dl,0FC
 006036C8    mov        eax,esi
 006036CA    call       TRPPDFObject.Destroy
 006036CF    lea        eax,[esi+10]; TRPPDFPage.?f10:TRPPDFPageContent
 006036D2    call       FreeAndNil
 006036D7    test       bl,bl
>006036D9    jle        006036E2
 006036DB    mov        eax,esi
 006036DD    call       @ClassDestroy
 006036E2    pop        esi
 006036E3    pop        ebx
 006036E4    ret
*}
end;

//006036E8
//procedure sub_006036E8(?:TRPPDFPage; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006036E8    push       ebp
 006036E9    mov        ebp,esp
 006036EB    add        esp,0FFFFFFA8
 006036EE    push       esi
 006036EF    push       edi
 006036F0    mov        esi,eax
 006036F2    lea        edi,[ebp-58]
 006036F5    mov        edx,dword ptr [esi+10]; TRPPDFPage.?f10:TRPPDFPageContent
 006036F8    mov        edx,dword ptr [edx+10]; TRPPDFPageContent.?f10:TMemoryStream
 006036FB    mov        eax,dword ptr [esi+4]; TRPPDFPage.?f4:TRvRenderPDF
 006036FE    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 00603701    mov        dword ptr [ebp-4],eax
 00603704    mov        eax,esi
 00603706    call       00604194
 0060370B    push       dword ptr [ebp+24]
 0060370E    push       dword ptr [ebp+20]
 00603711    push       dword ptr [ebp+1C]
 00603714    push       dword ptr [ebp+18]
 00603717    push       dword ptr [ebp+14]
 0060371A    push       dword ptr [ebp+10]
 0060371D    push       dword ptr [ebp+0C]
 00603720    push       dword ptr [ebp+8]
 00603723    mov        edx,edi
 00603725    mov        eax,esi
 00603727    call       0060388C
 0060372C    push       dword ptr [edi+14]
 0060372F    push       dword ptr [edi+10]
 00603732    push       dword ptr [edi+2C]
 00603735    push       dword ptr [edi+28]
 00603738    mov        eax,dword ptr [ebp-4]
 0060373B    mov        edx,dword ptr [eax]
 0060373D    call       dword ptr [edx+50]; TRvRenderPDF.sub_005FF98C
 00603740    push       dword ptr [edi+1C]
 00603743    push       dword ptr [edi+18]
 00603746    push       dword ptr [edi+2C]
 00603749    push       dword ptr [edi+28]
 0060374C    push       dword ptr [edi+24]
 0060374F    push       dword ptr [edi+20]
 00603752    push       dword ptr [edi+34]
 00603755    push       dword ptr [edi+30]
 00603758    push       dword ptr [edi+24]
 0060375B    push       dword ptr [edi+20]
 0060375E    push       dword ptr [edi+3C]
 00603761    push       dword ptr [edi+38]
 00603764    mov        eax,esi
 00603766    call       00603584
 0060376B    push       dword ptr [edi+24]
 0060376E    push       dword ptr [edi+20]
 00603771    push       dword ptr [edi+44]
 00603774    push       dword ptr [edi+40]
 00603777    push       dword ptr [edi+1C]
 0060377A    push       dword ptr [edi+18]
 0060377D    push       dword ptr [edi+4C]
 00603780    push       dword ptr [edi+48]
 00603783    push       dword ptr [edi+14]
 00603786    push       dword ptr [edi+10]
 00603789    push       dword ptr [edi+4C]
 0060378C    push       dword ptr [edi+48]
 0060378F    mov        eax,esi
 00603791    call       00603584
 00603796    push       dword ptr [edi+0C]
 00603799    push       dword ptr [edi+8]
 0060379C    push       dword ptr [edi+4C]
 0060379F    push       dword ptr [edi+48]
 006037A2    push       dword ptr [edi+4]
 006037A5    push       dword ptr [edi]
 006037A7    push       dword ptr [edi+44]
 006037AA    push       dword ptr [edi+40]
 006037AD    push       dword ptr [edi+4]
 006037B0    push       dword ptr [edi]
 006037B2    push       dword ptr [edi+3C]
 006037B5    push       dword ptr [edi+38]
 006037B8    mov        eax,esi
 006037BA    call       00603584
 006037BF    push       dword ptr [edi+4]
 006037C2    push       dword ptr [edi]
 006037C4    push       dword ptr [edi+34]
 006037C7    push       dword ptr [edi+30]
 006037CA    push       dword ptr [edi+0C]
 006037CD    push       dword ptr [edi+8]
 006037D0    push       dword ptr [edi+2C]
 006037D3    push       dword ptr [edi+28]
 006037D6    push       dword ptr [edi+14]
 006037D9    push       dword ptr [edi+10]
 006037DC    push       dword ptr [edi+2C]
 006037DF    push       dword ptr [edi+28]
 006037E2    mov        eax,esi
 006037E4    call       00603584
 006037E9    mov        eax,esi
 006037EB    call       00603484
 006037F0    pop        edi
 006037F1    pop        esi
 006037F2    mov        esp,ebp
 006037F4    pop        ebp
 006037F5    ret        20
*}
//end;

//006037F8
//procedure sub_006037F8(?:TRPPDFPage; ?:AnsiString; ?:AnsiString);
//begin
{*
 006037F8    push       ebp
 006037F9    mov        ebp,esp
 006037FB    push       0
 006037FD    push       ebx
 006037FE    push       esi
 006037FF    mov        esi,ecx
 00603801    mov        ebx,edx
 00603803    xor        eax,eax
 00603805    push       ebp
 00603806    push       603871
 0060380B    push       dword ptr fs:[eax]
 0060380E    mov        dword ptr fs:[eax],esp
 00603811    lea        eax,[ebp-4]
 00603814    mov        edx,ebx
 00603816    call       @LStrLAsg
 0060381B    mov        eax,dword ptr [ebp-4]
 0060381E    call       @LStrLen
 00603823    mov        ebx,eax
 00603825    cmp        ebx,1
>00603828    jl         00603851
 0060382A    mov        eax,dword ptr [ebp-4]
 0060382D    mov        al,byte ptr [eax+ebx-1]
 00603831    cmp        al,28
>00603833    je         0060383D
 00603835    cmp        al,29
>00603837    je         0060383D
 00603839    cmp        al,5C
>0060383B    jne        0060384C
 0060383D    lea        edx,[ebp-4]
 00603840    mov        ecx,ebx
 00603842    mov        eax,603888; '\\'
 00603847    call       @LStrInsert
 0060384C    dec        ebx
 0060384D    test       ebx,ebx
<0060384F    jne        0060382A
 00603851    mov        eax,esi
 00603853    mov        edx,dword ptr [ebp-4]
 00603856    call       @LStrAsg
 0060385B    xor        eax,eax
 0060385D    pop        edx
 0060385E    pop        ecx
 0060385F    pop        ecx
 00603860    mov        dword ptr fs:[eax],edx
 00603863    push       603878
 00603868    lea        eax,[ebp-4]
 0060386B    call       @LStrClr
 00603870    ret
<00603871    jmp        @HandleFinally
<00603876    jmp        00603868
 00603878    pop        esi
 00603879    pop        ebx
 0060387A    pop        ecx
 0060387B    pop        ebp
 0060387C    ret
*}
//end;

//0060388C
//procedure sub_0060388C(?:TRPPDFPage; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0060388C    push       ebp
 0060388D    mov        ebp,esp
 0060388F    add        esp,0FFFFFFF0
 00603892    push       ebx
 00603893    mov        ebx,edx
 00603895    mov        edx,dword ptr [eax+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603898    mov        cl,byte ptr [edx+50]; TRvRenderPDF.?f50:byte
 0060389B    sub        cl,1
>0060389E    jb         006038A8
>006038A0    je         006038B7
 006038A2    dec        cl
>006038A4    je         006038C1
>006038A6    jmp        006038D2
 006038A8    fld        qword ptr [edx+48]; TRvRenderPDF.?f48:?Double
 006038AB    fdiv       dword ptr ds:[603A0C]; 2:Single
 006038B1    fstp       qword ptr [ebp-10]
 006038B4    wait
>006038B5    jmp        006038DA
 006038B7    xor        eax,eax
 006038B9    mov        dword ptr [ebp-10],eax
 006038BC    mov        dword ptr [ebp-0C],eax
>006038BF    jmp        006038DA
 006038C1    fld        qword ptr [edx+48]; TRvRenderPDF.?f48:?Double
 006038C4    fdiv       dword ptr ds:[603A0C]; 2:Single
 006038CA    fchs
 006038CC    fstp       qword ptr [ebp-10]
 006038CF    wait
>006038D0    jmp        006038DA
 006038D2    xor        eax,eax
 006038D4    mov        dword ptr [ebp-10],eax
 006038D7    mov        dword ptr [ebp-0C],eax
 006038DA    fld        tbyte ptr ds:[603A10]; 2:Extended
 006038E0    fsqrt
 006038E2    fsub       dword ptr ds:[603A1C]; 1:Single
 006038E8    fld        tbyte ptr ds:[603A20]; 1,33333333333333:Extended
 006038EE    fmulp      st(1),st
 006038F0    fstp       qword ptr [ebp-8]
 006038F3    wait
 006038F4    fld        qword ptr [ebp+20]
 006038F7    fadd       qword ptr [ebp-10]
 006038FA    fld        qword ptr [ebp+10]
 006038FD    fsub       qword ptr [ebp-10]
 00603900    fcompp
 00603902    fnstsw     al
 00603904    sahf
>00603905    jbe        00603912
 00603907    fld        qword ptr [ebp+20]
 0060390A    fadd       qword ptr [ebp-10]
 0060390D    fstp       qword ptr [ebx]
 0060390F    wait
>00603910    jmp        0060391B
 00603912    fld        qword ptr [ebp+10]
 00603915    fsub       qword ptr [ebp-10]
 00603918    fstp       qword ptr [ebx]
 0060391A    wait
 0060391B    fld        qword ptr [ebp+20]
 0060391E    fadd       qword ptr [ebp-10]
 00603921    fld        qword ptr [ebp+10]
 00603924    fsub       qword ptr [ebp-10]
 00603927    faddp      st(1),st
 00603929    fdiv       dword ptr ds:[603A0C]; 2:Single
 0060392F    fstp       qword ptr [ebx+10]
 00603932    wait
 00603933    fld        qword ptr [ebp+20]
 00603936    fadd       qword ptr [ebp-10]
 00603939    fld        qword ptr [ebp+10]
 0060393C    fsub       qword ptr [ebp-10]
 0060393F    fcompp
 00603941    fnstsw     al
 00603943    sahf
>00603944    jae        00603952
 00603946    fld        qword ptr [ebp+20]
 00603949    fadd       qword ptr [ebp-10]
 0060394C    fstp       qword ptr [ebx+20]
 0060394F    wait
>00603950    jmp        0060395C
 00603952    fld        qword ptr [ebp+10]
 00603955    fsub       qword ptr [ebp-10]
 00603958    fstp       qword ptr [ebx+20]
 0060395B    wait
 0060395C    fld        qword ptr [ebx+10]
 0060395F    fsub       qword ptr [ebx]
 00603961    fmul       qword ptr [ebp-8]
 00603964    fsubr      qword ptr [ebx+10]
 00603967    fstp       qword ptr [ebx+8]
 0060396A    wait
 0060396B    fld        qword ptr [ebx+10]
 0060396E    fsub       qword ptr [ebx]
 00603970    fmul       qword ptr [ebp-8]
 00603973    fadd       qword ptr [ebx+10]
 00603976    fstp       qword ptr [ebx+18]
 00603979    wait
 0060397A    fld        qword ptr [ebp+18]
 0060397D    fadd       qword ptr [ebp-10]
 00603980    fld        qword ptr [ebp+8]
 00603983    fsub       qword ptr [ebp-10]
 00603986    fcompp
 00603988    fnstsw     al
 0060398A    sahf
>0060398B    jbe        00603999
 0060398D    fld        qword ptr [ebp+18]
 00603990    fadd       qword ptr [ebp-10]
 00603993    fstp       qword ptr [ebx+28]
 00603996    wait
>00603997    jmp        006039A3
 00603999    fld        qword ptr [ebp+8]
 0060399C    fsub       qword ptr [ebp-10]
 0060399F    fstp       qword ptr [ebx+28]
 006039A2    wait
 006039A3    fld        qword ptr [ebp+18]
 006039A6    fadd       qword ptr [ebp-10]
 006039A9    fld        qword ptr [ebp+8]
 006039AC    fsub       qword ptr [ebp-10]
 006039AF    faddp      st(1),st
 006039B1    fdiv       dword ptr ds:[603A0C]; 2:Single
 006039B7    fstp       qword ptr [ebx+38]
 006039BA    wait
 006039BB    fld        qword ptr [ebp+18]
 006039BE    fadd       qword ptr [ebp-10]
 006039C1    fld        qword ptr [ebp+8]
 006039C4    fsub       qword ptr [ebp-10]
 006039C7    fcompp
 006039C9    fnstsw     al
 006039CB    sahf
>006039CC    jae        006039DA
 006039CE    fld        qword ptr [ebp+18]
 006039D1    fadd       qword ptr [ebp-10]
 006039D4    fstp       qword ptr [ebx+48]
 006039D7    wait
>006039D8    jmp        006039E4
 006039DA    fld        qword ptr [ebp+8]
 006039DD    fsub       qword ptr [ebp-10]
 006039E0    fstp       qword ptr [ebx+48]
 006039E3    wait
 006039E4    fld        qword ptr [ebx+38]
 006039E7    fsub       qword ptr [ebx+28]
 006039EA    fmul       qword ptr [ebp-8]
 006039ED    fsubr      qword ptr [ebx+38]
 006039F0    fstp       qword ptr [ebx+30]
 006039F3    wait
 006039F4    fld        qword ptr [ebx+38]
 006039F7    fsub       qword ptr [ebx+28]
 006039FA    fmul       qword ptr [ebp-8]
 006039FD    fadd       qword ptr [ebx+38]
 00603A00    fstp       qword ptr [ebx+40]
 00603A03    wait
 00603A04    pop        ebx
 00603A05    mov        esp,ebp
 00603A07    pop        ebp
 00603A08    ret        20
*}
//end;

//00603A2C
//procedure sub_00603A2C(?:TRPPDFPage; ?:?; ?:?; ?:?);
//begin
{*
 00603A2C    push       ebp
 00603A2D    mov        ebp,esp
 00603A2F    add        esp,0FFFFFF64
 00603A35    push       ebx
 00603A36    push       esi
 00603A37    push       edi
 00603A38    xor        ebx,ebx
 00603A3A    mov        dword ptr [ebp-8C],ebx
 00603A40    mov        dword ptr [ebp-48],ebx
 00603A43    mov        dword ptr [ebp-4C],ebx
 00603A46    mov        dword ptr [ebp-40],ebx
 00603A49    mov        dword ptr [ebp-44],ebx
 00603A4C    mov        dword ptr [ebp-38],ebx
 00603A4F    mov        dword ptr [ebp-3C],ebx
 00603A52    mov        dword ptr [ebp-2C],ebx
 00603A55    mov        dword ptr [ebp-30],ebx
 00603A58    mov        dword ptr [ebp-4],ebx
 00603A5B    mov        ebx,ecx
 00603A5D    mov        esi,edx
 00603A5F    mov        edi,eax
 00603A61    xor        eax,eax
 00603A63    push       ebp
 00603A64    push       603C75
 00603A69    push       dword ptr fs:[eax]
 00603A6C    mov        dword ptr fs:[eax],esp
 00603A6F    test       esi,esi
>00603A71    jl         00603A84
 00603A73    lea        ecx,[ebp-4]
 00603A76    mov        edx,8
 00603A7B    mov        eax,esi
 00603A7D    call       IntToHex
>00603A82    jmp        00603A93
 00603A84    lea        ecx,[ebp-4]
 00603A87    mov        edx,8
 00603A8C    xor        eax,eax
 00603A8E    call       IntToHex
 00603A93    lea        eax,[ebp-30]
 00603A96    push       eax
 00603A97    mov        ecx,2
 00603A9C    mov        edx,1
 00603AA1    mov        eax,dword ptr [ebp-4]
 00603AA4    call       @LStrCopy
 00603AA9    mov        ecx,dword ptr [ebp-30]
 00603AAC    lea        eax,[ebp-2C]
 00603AAF    mov        edx,603C90; '$'
 00603AB4    call       @LStrCat3
 00603AB9    mov        eax,dword ptr [ebp-2C]
 00603ABC    call       StrToInt
 00603AC1    mov        dword ptr [ebp-34],eax
 00603AC4    fild       dword ptr [ebp-34]
 00603AC7    fdiv       dword ptr ds:[603C94]; 255:Single
 00603ACD    fstp       qword ptr [ebp-28]
 00603AD0    wait
 00603AD1    lea        eax,[ebp-3C]
 00603AD4    push       eax
 00603AD5    mov        ecx,2
 00603ADA    mov        edx,3
 00603ADF    mov        eax,dword ptr [ebp-4]
 00603AE2    call       @LStrCopy
 00603AE7    mov        ecx,dword ptr [ebp-3C]
 00603AEA    lea        eax,[ebp-38]
 00603AED    mov        edx,603C90; '$'
 00603AF2    call       @LStrCat3
 00603AF7    mov        eax,dword ptr [ebp-38]
 00603AFA    call       StrToInt
 00603AFF    mov        dword ptr [ebp-34],eax
 00603B02    fild       dword ptr [ebp-34]
 00603B05    fdiv       dword ptr ds:[603C94]; 255:Single
 00603B0B    fstp       qword ptr [ebp-20]
 00603B0E    wait
 00603B0F    lea        eax,[ebp-44]
 00603B12    push       eax
 00603B13    mov        ecx,2
 00603B18    mov        edx,5
 00603B1D    mov        eax,dword ptr [ebp-4]
 00603B20    call       @LStrCopy
 00603B25    mov        ecx,dword ptr [ebp-44]
 00603B28    lea        eax,[ebp-40]
 00603B2B    mov        edx,603C90; '$'
 00603B30    call       @LStrCat3
 00603B35    mov        eax,dword ptr [ebp-40]
 00603B38    call       StrToInt
 00603B3D    mov        dword ptr [ebp-34],eax
 00603B40    fild       dword ptr [ebp-34]
 00603B43    fdiv       dword ptr ds:[603C94]; 255:Single
 00603B49    fstp       qword ptr [ebp-18]
 00603B4C    wait
 00603B4D    lea        eax,[ebp-4C]
 00603B50    push       eax
 00603B51    mov        ecx,2
 00603B56    mov        edx,7
 00603B5B    mov        eax,dword ptr [ebp-4]
 00603B5E    call       @LStrCopy
 00603B63    mov        ecx,dword ptr [ebp-4C]
 00603B66    lea        eax,[ebp-48]
 00603B69    mov        edx,603C90; '$'
 00603B6E    call       @LStrCat3
 00603B73    mov        eax,dword ptr [ebp-48]
 00603B76    call       StrToInt
 00603B7B    mov        dword ptr [ebp-34],eax
 00603B7E    fild       dword ptr [ebp-34]
 00603B81    fdiv       dword ptr ds:[603C94]; 255:Single
 00603B87    fstp       qword ptr [ebp-10]
 00603B8A    wait
 00603B8B    push       2
 00603B8D    lea        eax,[ebp-4]
 00603B90    push       eax
 00603B91    fld        qword ptr [ebp-10]
 00603B94    fstp       tbyte ptr [ebp-70]
 00603B97    wait
 00603B98    lea        eax,[ebp-70]
 00603B9B    mov        dword ptr [ebp-64],eax
 00603B9E    mov        byte ptr [ebp-60],3
 00603BA2    fld        qword ptr [ebp-18]
 00603BA5    fstp       tbyte ptr [ebp-7C]
 00603BA8    wait
 00603BA9    lea        eax,[ebp-7C]
 00603BAC    mov        dword ptr [ebp-5C],eax
 00603BAF    mov        byte ptr [ebp-58],3
 00603BB3    fld        qword ptr [ebp-20]
 00603BB6    fstp       tbyte ptr [ebp-88]
 00603BBC    wait
 00603BBD    lea        eax,[ebp-88]
 00603BC3    mov        dword ptr [ebp-54],eax
 00603BC6    mov        byte ptr [ebp-50],3
 00603BCA    lea        ecx,[ebp-64]
 00603BCD    mov        edx,603CA0; '%.3g %.3g %.3g'
 00603BD2    mov        eax,dword ptr [edi+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603BD5    call       00601CA8
 00603BDA    test       bl,bl
>00603BDC    je         00603C2F
 00603BDE    push       1
 00603BE0    lea        eax,[ebp-8C]
 00603BE6    push       eax
 00603BE7    mov        eax,dword ptr [ebp-4]
 00603BEA    mov        dword ptr [ebp-9C],eax
 00603BF0    mov        byte ptr [ebp-98],0B
 00603BF7    fld        qword ptr [ebp-28]
 00603BFA    fstp       tbyte ptr [ebp-70]
 00603BFD    wait
 00603BFE    lea        eax,[ebp-70]
 00603C01    mov        dword ptr [ebp-94],eax
 00603C07    mov        byte ptr [ebp-90],3
 00603C0E    lea        ecx,[ebp-9C]
 00603C14    mov        edx,603CB8; '%s %.3g'
 00603C19    mov        eax,dword ptr [edi+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603C1C    call       00601CA8
 00603C21    mov        edx,dword ptr [ebp-8C]
 00603C27    lea        eax,[ebp-4]
 00603C2A    call       @LStrLAsg
 00603C2F    mov        eax,dword ptr [ebp+8]
 00603C32    mov        edx,dword ptr [ebp-4]
 00603C35    call       @LStrAsg
 00603C3A    xor        eax,eax
 00603C3C    pop        edx
 00603C3D    pop        ecx
 00603C3E    pop        ecx
 00603C3F    mov        dword ptr fs:[eax],edx
 00603C42    push       603C7C
 00603C47    lea        eax,[ebp-8C]
 00603C4D    call       @LStrClr
 00603C52    lea        eax,[ebp-4C]
 00603C55    mov        edx,6
 00603C5A    call       @LStrArrayClr
 00603C5F    lea        eax,[ebp-30]
 00603C62    mov        edx,2
 00603C67    call       @LStrArrayClr
 00603C6C    lea        eax,[ebp-4]
 00603C6F    call       @LStrClr
 00603C74    ret
<00603C75    jmp        @HandleFinally
<00603C7A    jmp        00603C47
 00603C7C    pop        edi
 00603C7D    pop        esi
 00603C7E    pop        ebx
 00603C7F    mov        esp,ebp
 00603C81    pop        ebp
 00603C82    ret        4
*}
//end;

//00603CC0
//function sub_00603CC0(?:?):?;
//begin
{*
 00603CC0    push       ebp
 00603CC1    mov        ebp,esp
 00603CC3    add        esp,0FFFFFFF8
 00603CC6    fld        qword ptr [ebp+8]
 00603CC9    fmul       dword ptr ds:[603CDC]; 72:Single
 00603CCF    fstp       qword ptr [ebp-8]
 00603CD2    wait
 00603CD3    fld        qword ptr [ebp-8]
 00603CD6    pop        ecx
 00603CD7    pop        ecx
 00603CD8    pop        ebp
 00603CD9    ret        8
*}
//end;

//00603CE0
//function sub_00603CE0(?:TRPPDFPage; ?:?):?;
//begin
{*
 00603CE0    push       ebp
 00603CE1    mov        ebp,esp
 00603CE3    add        esp,0FFFFFFF8
 00603CE6    fld        qword ptr [eax+20]; TRPPDFPage.?f20:?Double
 00603CE9    fsub       qword ptr [ebp+8]
 00603CEC    fmul       dword ptr ds:[603D00]; 72:Single
 00603CF2    fstp       qword ptr [ebp-8]
 00603CF5    wait
 00603CF6    fld        qword ptr [ebp-8]
 00603CF9    pop        ecx
 00603CFA    pop        ecx
 00603CFB    pop        ebp
 00603CFC    ret        8
*}
//end;

//00603D04
procedure sub_00603D04;
begin
{*
 00603D04    push       ebx
 00603D05    push       esi
 00603D06    push       edi
 00603D07    add        esp,0FFFFFFC8
 00603D0A    mov        ebx,eax
 00603D0C    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603D0F    mov        edx,dword ptr [ebx+0C]; TRPPDFPage.?fC:TMemoryStream
 00603D12    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 00603D15    mov        eax,ebx
 00603D17    call       00602A80
 00603D1C    mov        dword ptr [esp+4],eax
 00603D20    push       0
 00603D22    mov        eax,dword ptr [esp+8]
 00603D26    mov        dword ptr [esp+0C],eax
 00603D2A    mov        byte ptr [esp+10],0
 00603D2F    lea        ecx,[esp+0C]
 00603D33    mov        edx,603FD4; '%d 0 obj'
 00603D38    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603D3B    mov        esi,dword ptr [eax]
 00603D3D    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00603D43    mov        edx,603FE8; '<<'
 00603D48    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603D4B    mov        ecx,dword ptr [eax]
 00603D4D    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603D53    mov        edx,603FF4; '/Type /Page'
 00603D58    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603D5B    mov        ecx,dword ptr [eax]
 00603D5D    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603D63    push       0
 00603D65    mov        esi,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603D68    mov        eax,dword ptr [esi+0A4]; TRvRenderPDF.?fA4:dword
 00603D6E    call       00602A80
 00603D73    mov        dword ptr [esp+0C],eax
 00603D77    mov        byte ptr [esp+10],0
 00603D7C    lea        ecx,[esp+0C]
 00603D80    mov        edx,604008; '/Parent %d 0 R'
 00603D85    mov        eax,esi
 00603D87    mov        esi,dword ptr [eax]
 00603D89    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00603D8F    mov        edx,604020; '/Resources <<'
 00603D94    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603D97    mov        ecx,dword ptr [eax]
 00603D99    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603D9F    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603DA2    mov        eax,dword ptr [eax+98]; TRvRenderPDF.?f98:dword
 00603DA8    mov        edx,dword ptr [eax]
 00603DAA    call       dword ptr [edx+14]
 00603DAD    test       eax,eax
>00603DAF    jle        00603E3D
 00603DB5    mov        edx,604038; '/Font <<'
 00603DBA    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603DBD    mov        ecx,dword ptr [eax]
 00603DBF    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603DC5    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603DC8    mov        eax,dword ptr [eax+98]; TRvRenderPDF.?f98:dword
 00603DCE    mov        edx,dword ptr [eax]
 00603DD0    call       dword ptr [edx+14]
 00603DD3    mov        edi,eax
 00603DD5    dec        edi
 00603DD6    test       edi,edi
>00603DD8    jl         00603E2D
 00603DDA    inc        edi
 00603DDB    mov        dword ptr [esp],0
 00603DE2    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603DE5    mov        eax,dword ptr [eax+98]; TRvRenderPDF.?f98:dword
 00603DEB    mov        edx,dword ptr [esp]
 00603DEE    mov        ecx,dword ptr [eax]
 00603DF0    call       dword ptr [ecx+18]
 00603DF3    mov        esi,eax
 00603DF5    push       1
 00603DF7    mov        eax,dword ptr [esi+14]
 00603DFA    mov        dword ptr [esp+14],eax
 00603DFE    mov        byte ptr [esp+18],0B
 00603E03    mov        eax,esi
 00603E05    call       00602A80
 00603E0A    mov        dword ptr [esp+1C],eax
 00603E0E    mov        byte ptr [esp+20],0
 00603E13    lea        ecx,[esp+14]
 00603E17    mov        edx,60404C; '/%s %d 0 R '
 00603E1C    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603E1F    mov        esi,dword ptr [eax]
 00603E21    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00603E27    inc        dword ptr [esp]
 00603E2A    dec        edi
<00603E2B    jne        00603DE2
 00603E2D    mov        edx,604060; '>>'
 00603E32    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603E35    mov        ecx,dword ptr [eax]
 00603E37    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603E3D    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603E40    mov        eax,dword ptr [eax+94]; TRvRenderPDF.?f94:dword
 00603E46    mov        edx,dword ptr [eax]
 00603E48    call       dword ptr [edx+14]
 00603E4B    test       eax,eax
>00603E4D    jle        00603EDB
 00603E53    mov        edx,60406C; '/XObject <<'
 00603E58    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603E5B    mov        ecx,dword ptr [eax]
 00603E5D    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603E63    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603E66    mov        eax,dword ptr [eax+94]; TRvRenderPDF.?f94:dword
 00603E6C    mov        edx,dword ptr [eax]
 00603E6E    call       dword ptr [edx+14]
 00603E71    mov        edi,eax
 00603E73    dec        edi
 00603E74    test       edi,edi
>00603E76    jl         00603ECB
 00603E78    inc        edi
 00603E79    mov        dword ptr [esp],0
 00603E80    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603E83    mov        eax,dword ptr [eax+94]; TRvRenderPDF.?f94:dword
 00603E89    mov        edx,dword ptr [esp]
 00603E8C    mov        ecx,dword ptr [eax]
 00603E8E    call       dword ptr [ecx+18]
 00603E91    mov        esi,eax
 00603E93    push       1
 00603E95    mov        eax,dword ptr [esi+14]
 00603E98    mov        dword ptr [esp+14],eax
 00603E9C    mov        byte ptr [esp+18],0B
 00603EA1    mov        eax,esi
 00603EA3    call       00602A80
 00603EA8    mov        dword ptr [esp+1C],eax
 00603EAC    mov        byte ptr [esp+20],0
 00603EB1    lea        ecx,[esp+14]
 00603EB5    mov        edx,604080; '/%s %d 0 R'
 00603EBA    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603EBD    mov        esi,dword ptr [eax]
 00603EBF    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00603EC5    inc        dword ptr [esp]
 00603EC8    dec        edi
<00603EC9    jne        00603E80
 00603ECB    mov        edx,604060; '>>'
 00603ED0    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603ED3    mov        ecx,dword ptr [eax]
 00603ED5    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603EDB    push       0
 00603EDD    mov        esi,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603EE0    mov        eax,dword ptr [esi+0B4]; TRvRenderPDF.?fB4:dword
 00603EE6    call       00602A80
 00603EEB    mov        dword ptr [esp+0C],eax
 00603EEF    mov        byte ptr [esp+10],0
 00603EF4    lea        ecx,[esp+0C]
 00603EF8    mov        edx,604094; '/ProcSet %d 0 R'
 00603EFD    mov        eax,esi
 00603EFF    mov        esi,dword ptr [eax]
 00603F01    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00603F07    mov        edx,604060; '>>'
 00603F0C    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603F0F    mov        ecx,dword ptr [eax]
 00603F11    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603F17    push       1
 00603F19    fld        qword ptr [ebx+18]; TRPPDFPage.?f18:?Double
 00603F1C    fmul       dword ptr ds:[6040A4]; 72:Single
 00603F22    fstp       tbyte ptr [esp+24]
 00603F26    wait
 00603F27    lea        eax,[esp+24]
 00603F2B    mov        dword ptr [esp+14],eax
 00603F2F    mov        byte ptr [esp+18],3
 00603F34    fld        qword ptr [ebx+20]; TRPPDFPage.?f20:?Double
 00603F37    fmul       dword ptr ds:[6040A4]; 72:Single
 00603F3D    fstp       tbyte ptr [esp+30]
 00603F41    wait
 00603F42    lea        eax,[esp+30]
 00603F46    mov        dword ptr [esp+1C],eax
 00603F4A    mov        byte ptr [esp+20],3
 00603F4F    lea        ecx,[esp+14]
 00603F53    mov        edx,6040B0; '/MediaBox [0 0 %.4f %.4f]'
 00603F58    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603F5B    mov        esi,dword ptr [eax]
 00603F5D    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00603F63    push       0
 00603F65    mov        eax,dword ptr [esp+8]
 00603F69    inc        eax
 00603F6A    mov        dword ptr [esp+0C],eax
 00603F6E    mov        byte ptr [esp+10],0
 00603F73    lea        ecx,[esp+0C]
 00603F77    mov        edx,6040D4; '/Contents %d 0 R'
 00603F7C    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603F7F    mov        esi,dword ptr [eax]
 00603F81    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00603F87    mov        edx,604060; '>>'
 00603F8C    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603F8F    mov        ecx,dword ptr [eax]
 00603F91    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603F97    mov        edx,6040F0; 'endobj'
 00603F9C    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603F9F    mov        ecx,dword ptr [eax]
 00603FA1    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603FA7    xor        edx,edx
 00603FA9    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603FAC    mov        ecx,dword ptr [eax]
 00603FAE    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00603FB4    push       0
 00603FB6    push       0
 00603FB8    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00603FBB    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 00603FBE    call       TStream.SetPosition
 00603FC3    add        esp,38
 00603FC6    pop        edi
 00603FC7    pop        esi
 00603FC8    pop        ebx
 00603FC9    ret
*}
end;

//006040F8
//procedure sub_006040F8(?:TRPPDFPage; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006040F8    push       ebp
 006040F9    mov        ebp,esp
 006040FB    add        esp,0FFFFFFD4
 006040FE    push       ebx
 006040FF    push       esi
 00604100    push       edi
 00604101    mov        byte ptr [ebp-1],dl
 00604104    mov        esi,eax
 00604106    mov        edx,dword ptr [esi+10]; TRPPDFPage.?f10:TRPPDFPageContent
 00604109    mov        edx,dword ptr [edx+10]; TRPPDFPageContent.?f10:TMemoryStream
 0060410C    mov        eax,dword ptr [esi+4]; TRPPDFPage.?f4:TRvRenderPDF
 0060410F    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 00604112    mov        edi,eax
 00604114    mov        eax,esi
 00604116    call       00604194
 0060411B    push       1
 0060411D    push       dword ptr [ebp+14]
 00604120    push       dword ptr [ebp+10]
 00604123    mov        eax,esi
 00604125    call       00603CC0
 0060412A    fstp       tbyte ptr [ebp-20]
 0060412D    wait
 0060412E    lea        eax,[ebp-20]
 00604131    mov        dword ptr [ebp-14],eax
 00604134    mov        byte ptr [ebp-10],3
 00604138    push       dword ptr [ebp+0C]
 0060413B    push       dword ptr [ebp+8]
 0060413E    mov        eax,esi
 00604140    call       00603CE0
 00604145    fstp       tbyte ptr [ebp-2C]
 00604148    wait
 00604149    lea        eax,[ebp-2C]
 0060414C    mov        dword ptr [ebp-0C],eax
 0060414F    mov        byte ptr [ebp-8],3
 00604153    lea        ecx,[ebp-14]
 00604156    mov        edx,604184; '%.4f %.4f l '
 0060415B    mov        eax,edi
 0060415D    mov        ebx,dword ptr [eax]
 0060415F    call       dword ptr [ebx+0C0]; TRvRenderPDF.sub_00601CE0
 00604165    cmp        byte ptr [ebp-1],0
>00604169    je         00604172
 0060416B    mov        eax,esi
 0060416D    call       00603484
 00604172    pop        edi
 00604173    pop        esi
 00604174    pop        ebx
 00604175    mov        esp,ebp
 00604177    pop        ebp
 00604178    ret        10
*}
//end;

//00604194
//procedure sub_00604194(?:TRPPDFPage);
//begin
{*
 00604194    push       ebx
 00604195    push       esi
 00604196    push       edi
 00604197    add        esp,0FFFFFFEC
 0060419A    mov        ebx,eax
 0060419C    mov        esi,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 0060419F    cmp        byte ptr [ebx+4A],0; TRPPDFPage.?f4A:byte
>006041A3    je         006041BC
 006041A5    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 006041A8    mov        eax,dword ptr [eax+180]
 006041AE    call       TPen.GetStyle
 006041B3    cmp        al,byte ptr [ebx+49]; TRPPDFPage.?f49:TPenStyle
>006041B6    je         00604244
 006041BC    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 006041BF    mov        eax,dword ptr [eax+180]
 006041C5    call       TPen.GetStyle
 006041CA    dec        al
>006041CC    je         006041DC
 006041CE    dec        al
>006041D0    je         006041ED
 006041D2    dec        al
>006041D4    je         006041FE
 006041D6    dec        al
>006041D8    je         0060420F
>006041DA    jmp        00604220
 006041DC    mov        edx,6042FC; '[13 6] 0 d'
 006041E1    mov        eax,esi
 006041E3    mov        ecx,dword ptr [eax]
 006041E5    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
>006041EB    jmp        0060422F
 006041ED    mov        edx,604310; '[2] 0 d'
 006041F2    mov        eax,esi
 006041F4    mov        ecx,dword ptr [eax]
 006041F6    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
>006041FC    jmp        0060422F
 006041FE    mov        edx,604320; '[8 4 1 4] 0 d'
 00604203    mov        eax,esi
 00604205    mov        ecx,dword ptr [eax]
 00604207    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
>0060420D    jmp        0060422F
 0060420F    mov        edx,604338; '[10 3 2 2 2 3] 0 d'
 00604214    mov        eax,esi
 00604216    mov        ecx,dword ptr [eax]
 00604218    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
>0060421E    jmp        0060422F
 00604220    mov        edx,604354; '[] 0 d'
 00604225    mov        eax,esi
 00604227    mov        ecx,dword ptr [eax]
 00604229    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060422F    mov        eax,dword ptr [esi+70]; TRvRenderPDF.?f70:dword
 00604232    mov        eax,dword ptr [eax+180]
 00604238    call       TPen.GetStyle
 0060423D    mov        byte ptr [ebx+49],al; TRPPDFPage.?f49:TPenStyle
 00604240    mov        byte ptr [ebx+4A],1; TRPPDFPage.?f4A:byte
 00604244    cmp        byte ptr [ebx+3C],0; TRPPDFPage.?f3C:byte
>00604248    je         00604256
 0060424A    mov        eax,esi
 0060424C    call       00600198
 00604251    cmp        eax,dword ptr [ebx+38]; TRPPDFPage.?f38:dword
>00604254    je         0060426F
 00604256    mov        eax,ebx
 00604258    call       00605098
 0060425D    mov        eax,esi
 0060425F    call       00600198
 00604264    mov        dword ptr [ebx+38],eax; TRPPDFPage.?f38:dword
 00604267    mov        byte ptr [ebx+3C],1; TRPPDFPage.?f3C:byte
 0060426B    mov        byte ptr [ebx+30],0; TRPPDFPage.?f30:byte
 0060426F    cmp        byte ptr [ebx+54],0; TRPPDFPage.?f54:byte
>00604273    je         00604281
 00604275    mov        eax,esi
 00604277    call       006001B0
 0060427C    cmp        eax,dword ptr [ebx+50]; TRPPDFPage.?f50:dword
>0060427F    je         0060429A
 00604281    mov        eax,ebx
 00604283    call       00604564
 00604288    mov        eax,esi
 0060428A    call       006001B0
 0060428F    mov        dword ptr [ebx+50],eax; TRPPDFPage.?f50:dword
 00604292    mov        byte ptr [ebx+54],1; TRPPDFPage.?f54:byte
 00604296    mov        byte ptr [ebx+30],0; TRPPDFPage.?f30:byte
 0060429A    cmp        byte ptr [ebx+48],0; TRPPDFPage.?f48:byte
>0060429E    je         006042AB
 006042A0    fld        qword ptr [esi+48]; TRvRenderPDF.?f48:?Double
 006042A3    fcomp      qword ptr [ebx+40]; TRPPDFPage.?f40:?Double
 006042A6    fnstsw     al
 006042A8    sahf
>006042A9    je         006042EB
 006042AB    push       0
 006042AD    fld        qword ptr [esi+48]; TRvRenderPDF.?f48:?Double
 006042B0    fmul       dword ptr ds:[60435C]; 72:Single
 006042B6    fstp       tbyte ptr [esp+0C]
 006042BA    wait
 006042BB    lea        eax,[esp+0C]
 006042BF    mov        dword ptr [esp+4],eax
 006042C3    mov        byte ptr [esp+8],3
 006042C8    lea        ecx,[esp+4]
 006042CC    mov        edx,604368; '%.4f w '
 006042D1    mov        eax,esi
 006042D3    mov        edi,dword ptr [eax]
 006042D5    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 006042DB    mov        eax,dword ptr [esi+48]; TRvRenderPDF.?f48:?Double
 006042DE    mov        dword ptr [ebx+40],eax; TRPPDFPage.?f40:?Double
 006042E1    mov        eax,dword ptr [esi+4C]; TRvRenderPDF.?f4C:dword
 006042E4    mov        dword ptr [ebx+44],eax; TRPPDFPage.?f44:dword
 006042E7    mov        byte ptr [ebx+48],1; TRPPDFPage.?f48:byte
 006042EB    add        esp,14
 006042EE    pop        edi
 006042EF    pop        esi
 006042F0    pop        ebx
 006042F1    ret
*}
//end;

//00604370
//procedure sub_00604370(?:dword; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00604370    push       ebp
 00604371    mov        ebp,esp
 00604373    add        esp,0FFFFFFD8
 00604376    push       ebx
 00604377    push       esi
 00604378    push       edi
 00604379    mov        esi,eax
 0060437B    mov        edx,dword ptr [esi+10]
 0060437E    mov        edx,dword ptr [edx+10]
 00604381    mov        eax,dword ptr [esi+4]
 00604384    mov        dword ptr [eax+78],edx
 00604387    mov        edi,eax
 00604389    mov        eax,esi
 0060438B    call       00604194
 00604390    push       1
 00604392    push       dword ptr [ebp+14]
 00604395    push       dword ptr [ebp+10]
 00604398    mov        eax,esi
 0060439A    call       00603CC0
 0060439F    fstp       tbyte ptr [ebp-1C]
 006043A2    wait
 006043A3    lea        eax,[ebp-1C]
 006043A6    mov        dword ptr [ebp-10],eax
 006043A9    mov        byte ptr [ebp-0C],3
 006043AD    push       dword ptr [ebp+0C]
 006043B0    push       dword ptr [ebp+8]
 006043B3    mov        eax,esi
 006043B5    call       00603CE0
 006043BA    fstp       tbyte ptr [ebp-28]
 006043BD    wait
 006043BE    lea        eax,[ebp-28]
 006043C1    mov        dword ptr [ebp-8],eax
 006043C4    mov        byte ptr [ebp-4],3
 006043C8    lea        ecx,[ebp-10]
 006043CB    mov        edx,6043EC; '%.4f %.4f m'
 006043D0    mov        eax,edi
 006043D2    mov        ebx,dword ptr [eax]
 006043D4    call       dword ptr [ebx+0C8]
 006043DA    pop        edi
 006043DB    pop        esi
 006043DC    pop        ebx
 006043DD    mov        esp,ebp
 006043DF    pop        ebp
 006043E0    ret        10
*}
//end;

//006043F8
//procedure sub_006043F8(?:TRPPDFPage; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006043F8    push       ebp
 006043F9    mov        ebp,esp
 006043FB    push       ebx
 006043FC    mov        ebx,eax
 006043FE    push       dword ptr [ebp+44]
 00604401    push       dword ptr [ebp+40]
 00604404    push       dword ptr [ebp+3C]
 00604407    push       dword ptr [ebp+38]
 0060440A    push       dword ptr [ebp+34]
 0060440D    push       dword ptr [ebp+30]
 00604410    push       dword ptr [ebp+2C]
 00604413    push       dword ptr [ebp+28]
 00604416    push       dword ptr [ebp+24]
 00604419    push       dword ptr [ebp+20]
 0060441C    push       dword ptr [ebp+1C]
 0060441F    push       dword ptr [ebp+18]
 00604422    push       dword ptr [ebp+14]
 00604425    push       dword ptr [ebp+10]
 00604428    push       dword ptr [ebp+0C]
 0060442B    push       dword ptr [ebp+8]
 0060442E    mov        cl,1
 00604430    xor        edx,edx
 00604432    mov        eax,ebx
 00604434    call       00603348
 00604439    fld        qword ptr [ebp+40]
 0060443C    fadd       qword ptr [ebp+30]
 0060443F    fdiv       dword ptr ds:[604470]; 2:Single
 00604445    add        esp,0FFFFFFF8
 00604448    fstp       qword ptr [esp]
 0060444B    wait
 0060444C    fld        qword ptr [ebp+38]
 0060444F    fadd       qword ptr [ebp+28]
 00604452    fdiv       dword ptr ds:[604470]; 2:Single
 00604458    add        esp,0FFFFFFF8
 0060445B    fstp       qword ptr [esp]
 0060445E    wait
 0060445F    mov        dl,1
 00604461    mov        eax,ebx
 00604463    call       006040F8
 00604468    pop        ebx
 00604469    pop        ebp
 0060446A    ret        40
*}
//end;

//00604474
//procedure sub_00604474(?:TRPPDFPage; ?:?; ?:?);
//begin
{*
 00604474    push       ebx
 00604475    push       esi
 00604476    push       edi
 00604477    push       ebp
 00604478    add        esp,0FFFFFFE8
 0060447B    mov        dword ptr [esp+4],ecx
 0060447F    mov        dword ptr [esp],edx
 00604482    mov        edi,eax
 00604484    mov        eax,dword ptr [esp+4]
 00604488    inc        eax
 00604489    mov        esi,eax
 0060448B    dec        esi
 0060448C    test       esi,esi
>0060448E    jl         006044F1
 00604490    inc        esi
 00604491    xor        ebp,ebp
 00604493    mov        ebx,dword ptr [esp]
 00604496    fild       dword ptr [ebx]
 00604498    fdiv       dword ptr ds:[604500]; 1248:Single
 0060449E    fstp       qword ptr [esp+8]
 006044A2    wait
 006044A3    fild       dword ptr [ebx+4]
 006044A6    fdiv       dword ptr ds:[604500]; 1248:Single
 006044AC    fstp       qword ptr [esp+10]
 006044B0    wait
 006044B1    push       dword ptr [esp+0C]
 006044B5    push       dword ptr [esp+0C]
 006044B9    push       dword ptr [esp+1C]
 006044BD    push       dword ptr [esp+1C]
 006044C1    xor        edx,edx
 006044C3    mov        eax,edi
 006044C5    call       006040F8
 006044CA    mov        eax,ebp
 006044CC    and        eax,80000003
>006044D1    jns        006044D8
 006044D3    dec        eax
 006044D4    or         eax,0FFFFFFFC
 006044D7    inc        eax
 006044D8    cmp        eax,3
>006044DB    jne        006044EA
 006044DD    mov        eax,dword ptr [edi+4]; TRPPDFPage.?f4:TRvRenderPDF
 006044E0    xor        edx,edx
 006044E2    mov        ecx,dword ptr [eax]
 006044E4    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006044EA    inc        ebp
 006044EB    add        ebx,8
 006044EE    dec        esi
<006044EF    jne        00604496
 006044F1    mov        eax,edi
 006044F3    call       00603484
 006044F8    add        esp,18
 006044FB    pop        ebp
 006044FC    pop        edi
 006044FD    pop        esi
 006044FE    pop        ebx
 006044FF    ret
*}
//end;

//00604504
//procedure sub_00604504(?:TRPPDFPage; ?:?; ?:?);
//begin
{*
 00604504    push       ebx
 00604505    push       esi
 00604506    push       edi
 00604507    add        esp,0FFFFFFF0
 0060450A    mov        edi,eax
 0060450C    lea        eax,[ecx+1]
 0060450F    mov        esi,eax
 00604511    dec        esi
 00604512    test       esi,esi
>00604514    jl         00604552
 00604516    inc        esi
 00604517    mov        ebx,edx
 00604519    fild       dword ptr [ebx]
 0060451B    fdiv       dword ptr ds:[604560]; 1248:Single
 00604521    fstp       qword ptr [esp]
 00604524    wait
 00604525    fild       dword ptr [ebx+4]
 00604528    fdiv       dword ptr ds:[604560]; 1248:Single
 0060452E    fstp       qword ptr [esp+8]
 00604532    wait
 00604533    push       dword ptr [esp+4]
 00604537    push       dword ptr [esp+4]
 0060453B    push       dword ptr [esp+14]
 0060453F    push       dword ptr [esp+14]
 00604543    xor        edx,edx
 00604545    mov        eax,edi
 00604547    call       006040F8
 0060454C    add        ebx,8
 0060454F    dec        esi
<00604550    jne        00604519
 00604552    mov        eax,edi
 00604554    call       00603484
 00604559    add        esp,10
 0060455C    pop        edi
 0060455D    pop        esi
 0060455E    pop        ebx
 0060455F    ret
*}
//end;

//00604564
//procedure sub_00604564(?:TRPPDFPage);
//begin
{*
 00604564    push       ebp
 00604565    mov        ebp,esp
 00604567    add        esp,0FFFFFFF4
 0060456A    push       ebx
 0060456B    push       esi
 0060456C    xor        edx,edx
 0060456E    mov        dword ptr [ebp-0C],edx
 00604571    mov        ebx,eax
 00604573    xor        eax,eax
 00604575    push       ebp
 00604576    push       6045D9
 0060457B    push       dword ptr fs:[eax]
 0060457E    mov        dword ptr fs:[eax],esp
 00604581    mov        edx,dword ptr [ebx+10]; TRPPDFPage.?f10:TRPPDFPageContent
 00604584    mov        edx,dword ptr [edx+10]; TRPPDFPageContent.?f10:TMemoryStream
 00604587    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 0060458A    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 0060458D    mov        esi,eax
 0060458F    push       0
 00604591    lea        eax,[ebp-0C]
 00604594    push       eax
 00604595    mov        eax,esi
 00604597    call       006001B0
 0060459C    mov        edx,eax
 0060459E    xor        ecx,ecx
 006045A0    mov        eax,ebx
 006045A2    call       00603A2C
 006045A7    mov        eax,dword ptr [ebp-0C]
 006045AA    mov        dword ptr [ebp-8],eax
 006045AD    mov        byte ptr [ebp-4],0B
 006045B1    lea        ecx,[ebp-8]
 006045B4    mov        edx,6045F0; '%s rg'
 006045B9    mov        eax,esi
 006045BB    mov        ebx,dword ptr [eax]
 006045BD    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 006045C3    xor        eax,eax
 006045C5    pop        edx
 006045C6    pop        ecx
 006045C7    pop        ecx
 006045C8    mov        dword ptr fs:[eax],edx
 006045CB    push       6045E0
 006045D0    lea        eax,[ebp-0C]
 006045D3    call       @LStrClr
 006045D8    ret
<006045D9    jmp        @HandleFinally
<006045DE    jmp        006045D0
 006045E0    pop        esi
 006045E1    pop        ebx
 006045E2    mov        esp,ebp
 006045E4    pop        ebp
 006045E5    ret
*}
//end;

//006045F8
//procedure sub_006045F8(?:?; ?:?; ?:?; ?:?);
//begin
{*
 006045F8    push       ebp
 006045F9    mov        ebp,esp
 006045FB    add        esp,0FFFFFFF8
 006045FE    push       ebx
 006045FF    push       esi
 00604600    mov        esi,ecx
 00604602    mov        ebx,edx
 00604604    mov        eax,dword ptr [eax+4]
 00604607    mov        edx,dword ptr [eax+0C8]
 0060460D    mov        dword ptr [ebp-8],edx
 00604610    mov        edx,dword ptr [eax+0CC]
 00604616    mov        dword ptr [ebp-4],edx
 00604619    fld        qword ptr [ebp-8]
 0060461C    fcomp      dword ptr ds:[6047C4]; 0:Single
 00604622    fnstsw     al
 00604624    sahf
>00604625    jbe        00604672
 00604627    fld        qword ptr [ebp-8]
 0060462A    fcomp      dword ptr ds:[6047C8]; 90:Single
 00604630    fnstsw     al
 00604632    sahf
>00604633    ja         00604672
 00604635    fld        tbyte ptr ds:[6047CC]; 3,14159265358979:Extended
 0060463B    fmul       qword ptr [ebp-8]
 0060463E    fdiv       dword ptr ds:[6047D8]; 180:Single
 00604644    call       @COS
 00604649    fmul       qword ptr [ebp+8]
 0060464C    fsubr      qword ptr [ebx]
 0060464E    fstp       qword ptr [ebx]
 00604650    wait
 00604651    fld        tbyte ptr ds:[6047CC]; 3,14159265358979:Extended
 00604657    fmul       qword ptr [ebp-8]
 0060465A    fdiv       dword ptr ds:[6047D8]; 180:Single
 00604660    call       @SIN
 00604665    fmul       qword ptr [ebp+8]
 00604668    fadd       qword ptr [esi]
 0060466A    fstp       qword ptr [esi]
 0060466C    wait
>0060466D    jmp        006047B9
 00604672    fld        qword ptr [ebp-8]
 00604675    fcomp      dword ptr ds:[6047C8]; 90:Single
 0060467B    fnstsw     al
 0060467D    sahf
>0060467E    jbe        006046DB
 00604680    fld        qword ptr [ebp-8]
 00604683    fcomp      dword ptr ds:[6047D8]; 180:Single
 00604689    fnstsw     al
 0060468B    sahf
>0060468C    ja         006046DB
 0060468E    fld        dword ptr ds:[6047D8]; 180:Single
 00604694    fsub       qword ptr [ebp-8]
 00604697    fld        tbyte ptr ds:[6047CC]; 3,14159265358979:Extended
 0060469D    fmulp      st(1),st
 0060469F    fdiv       dword ptr ds:[6047D8]; 180:Single
 006046A5    call       @COS
 006046AA    fmul       qword ptr [ebp+8]
 006046AD    fadd       qword ptr [ebx]
 006046AF    fstp       qword ptr [ebx]
 006046B1    wait
 006046B2    fld        dword ptr ds:[6047D8]; 180:Single
 006046B8    fsub       qword ptr [ebp-8]
 006046BB    fld        tbyte ptr ds:[6047CC]; 3,14159265358979:Extended
 006046C1    fmulp      st(1),st
 006046C3    fdiv       dword ptr ds:[6047D8]; 180:Single
 006046C9    call       @SIN
 006046CE    fmul       qword ptr [ebp+8]
 006046D1    fadd       qword ptr [esi]
 006046D3    fstp       qword ptr [esi]
 006046D5    wait
>006046D6    jmp        006047B9
 006046DB    fld        qword ptr [ebp-8]
 006046DE    fcomp      dword ptr ds:[6047D8]; 180:Single
 006046E4    fnstsw     al
 006046E6    sahf
>006046E7    jbe        00604741
 006046E9    fld        qword ptr [ebp-8]
 006046EC    fcomp      dword ptr ds:[6047DC]; 270:Single
 006046F2    fnstsw     al
 006046F4    sahf
>006046F5    ja         00604741
 006046F7    fld        qword ptr [ebp-8]
 006046FA    fsub       dword ptr ds:[6047D8]; 180:Single
 00604700    fld        tbyte ptr ds:[6047CC]; 3,14159265358979:Extended
 00604706    fmulp      st(1),st
 00604708    fdiv       dword ptr ds:[6047D8]; 180:Single
 0060470E    call       @COS
 00604713    fmul       qword ptr [ebp+8]
 00604716    fadd       qword ptr [ebx]
 00604718    fstp       qword ptr [ebx]
 0060471A    wait
 0060471B    fld        qword ptr [ebp-8]
 0060471E    fsub       dword ptr ds:[6047D8]; 180:Single
 00604724    fld        tbyte ptr ds:[6047CC]; 3,14159265358979:Extended
 0060472A    fmulp      st(1),st
 0060472C    fdiv       dword ptr ds:[6047D8]; 180:Single
 00604732    call       @SIN
 00604737    fmul       qword ptr [ebp+8]
 0060473A    fsubr      qword ptr [esi]
 0060473C    fstp       qword ptr [esi]
 0060473E    wait
>0060473F    jmp        006047B9
 00604741    fld        qword ptr [ebp-8]
 00604744    fcomp      dword ptr ds:[6047DC]; 270:Single
 0060474A    fnstsw     al
 0060474C    sahf
>0060474D    jbe        006047A7
 0060474F    fld        qword ptr [ebp-8]
 00604752    fcomp      dword ptr ds:[6047E0]; 360:Single
 00604758    fnstsw     al
 0060475A    sahf
>0060475B    jae        006047A7
 0060475D    fld        dword ptr ds:[6047E0]; 360:Single
 00604763    fsub       qword ptr [ebp-8]
 00604766    fld        tbyte ptr ds:[6047CC]; 3,14159265358979:Extended
 0060476C    fmulp      st(1),st
 0060476E    fdiv       dword ptr ds:[6047D8]; 180:Single
 00604774    call       @COS
 00604779    fmul       qword ptr [ebp+8]
 0060477C    fsubr      qword ptr [ebx]
 0060477E    fstp       qword ptr [ebx]
 00604780    wait
 00604781    fld        dword ptr ds:[6047E0]; 360:Single
 00604787    fsub       qword ptr [ebp-8]
 0060478A    fld        tbyte ptr ds:[6047CC]; 3,14159265358979:Extended
 00604790    fmulp      st(1),st
 00604792    fdiv       dword ptr ds:[6047D8]; 180:Single
 00604798    call       @SIN
 0060479D    fmul       qword ptr [ebp+8]
 006047A0    fsubr      qword ptr [esi]
 006047A2    fstp       qword ptr [esi]
 006047A4    wait
>006047A5    jmp        006047B9
 006047A7    fld        qword ptr [ebx]
 006047A9    fsub       qword ptr [ebp+8]
 006047AC    fstp       qword ptr [ebx]
 006047AE    wait
 006047AF    mov        eax,dword ptr [esi]
 006047B1    mov        dword ptr [esi],eax
 006047B3    mov        eax,dword ptr [esi+4]
 006047B6    mov        dword ptr [esi+4],eax
 006047B9    pop        esi
 006047BA    pop        ebx
 006047BB    pop        ecx
 006047BC    pop        ecx
 006047BD    pop        ebp
 006047BE    ret        8
*}
//end;

//006047E4
//procedure sub_006047E4(?:?; ?:AnsiString; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006047E4    push       ebp
 006047E5    mov        ebp,esp
 006047E7    add        esp,0FFFFFFE0
 006047EA    push       ebx
 006047EB    push       esi
 006047EC    mov        dword ptr [ebp-4],edx
 006047EF    mov        ebx,eax
 006047F1    mov        eax,dword ptr [ebp-4]
 006047F4    call       @LStrAddRef
 006047F9    xor        eax,eax
 006047FB    push       ebp
 006047FC    push       60488A
 00604801    push       dword ptr fs:[eax]
 00604804    mov        dword ptr fs:[eax],esp
 00604807    mov        esi,dword ptr [ebx+4]
 0060480A    mov        eax,dword ptr [esi+0B0]
 00604810    fild       dword ptr [esi+0C4]
 00604816    add        esp,0FFFFFFF8
 00604819    fstp       qword ptr [esp]
 0060481C    wait
 0060481D    mov        edx,dword ptr [ebp-4]
 00604820    call       00606DD4
 00604825    fstp       qword ptr [ebp-10]
 00604828    wait
 00604829    mov        eax,dword ptr [ebp+10]
 0060482C    mov        dword ptr [ebp-18],eax
 0060482F    mov        eax,dword ptr [ebp+14]
 00604832    mov        dword ptr [ebp-14],eax
 00604835    mov        eax,dword ptr [ebp+8]
 00604838    mov        dword ptr [ebp-20],eax
 0060483B    mov        eax,dword ptr [ebp+0C]
 0060483E    mov        dword ptr [ebp-1C],eax
 00604841    fld        qword ptr [ebp-10]
 00604844    fdiv       dword ptr ds:[60489C]; 2:Single
 0060484A    add        esp,0FFFFFFF8
 0060484D    fstp       qword ptr [esp]
 00604850    wait
 00604851    lea        ecx,[ebp-20]
 00604854    lea        edx,[ebp-18]
 00604857    mov        eax,ebx
 00604859    call       006045F8
 0060485E    push       dword ptr [ebp-14]
 00604861    push       dword ptr [ebp-18]
 00604864    push       dword ptr [ebp-1C]
 00604867    push       dword ptr [ebp-20]
 0060486A    mov        edx,dword ptr [ebp-4]
 0060486D    mov        eax,ebx
 0060486F    call       00604B04
 00604874    xor        eax,eax
 00604876    pop        edx
 00604877    pop        ecx
 00604878    pop        ecx
 00604879    mov        dword ptr fs:[eax],edx
 0060487C    push       604891
 00604881    lea        eax,[ebp-4]
 00604884    call       @LStrClr
 00604889    ret
<0060488A    jmp        @HandleFinally
<0060488F    jmp        00604881
 00604891    pop        esi
 00604892    pop        ebx
 00604893    mov        esp,ebp
 00604895    pop        ebp
 00604896    ret        10
*}
//end;

//006048A0
//procedure sub_006048A0(?:dword; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006048A0    push       ebp
 006048A1    mov        ebp,esp
 006048A3    add        esp,0FFFFFFEC
 006048A6    push       ebx
 006048A7    push       esi
 006048A8    push       edi
 006048A9    mov        esi,edx
 006048AB    lea        edi,[ebp-14]
 006048AE    movs       dword ptr [edi],dword ptr [esi]
 006048AF    movs       dword ptr [edi],dword ptr [esi]
 006048B0    movs       dword ptr [edi],dword ptr [esi]
 006048B1    movs       dword ptr [edi],dword ptr [esi]
 006048B2    mov        dword ptr [ebp-4],ecx
 006048B5    mov        ebx,eax
 006048B7    mov        eax,dword ptr [ebp-4]
 006048BA    call       @LStrAddRef
 006048BF    xor        eax,eax
 006048C1    push       ebp
 006048C2    push       604976
 006048C7    push       dword ptr fs:[eax]
 006048CA    mov        dword ptr fs:[eax],esp
 006048CD    mov        edx,dword ptr [ebx+10]
 006048D0    mov        edx,dword ptr [edx+10]
 006048D3    mov        eax,dword ptr [ebx+4]
 006048D6    mov        dword ptr [eax+78],edx
 006048D9    mov        edx,604990; ' q '
 006048DE    mov        ecx,dword ptr [eax]
 006048E0    call       dword ptr [ecx+0C4]
 006048E6    mov        eax,dword ptr [ebx+4]
 006048E9    xor        edx,edx
 006048EB    mov        dword ptr [eax+48],edx
 006048EE    mov        dword ptr [eax+4C],edx
 006048F1    fild       dword ptr [ebp-14]
 006048F4    fdiv       dword ptr ds:[604994]; 72:Single
 006048FA    add        esp,0FFFFFFF8
 006048FD    fstp       qword ptr [esp]
 00604900    wait
 00604901    fild       dword ptr [ebp-10]
 00604904    fdiv       dword ptr ds:[604994]; 72:Single
 0060490A    add        esp,0FFFFFFF8
 0060490D    fstp       qword ptr [esp]
 00604910    wait
 00604911    fild       dword ptr [ebp-0C]
 00604914    fdiv       dword ptr ds:[604994]; 72:Single
 0060491A    add        esp,0FFFFFFF8
 0060491D    fstp       qword ptr [esp]
 00604920    wait
 00604921    fild       dword ptr [ebp-8]
 00604924    fdiv       dword ptr ds:[604994]; 72:Single
 0060492A    add        esp,0FFFFFFF8
 0060492D    fstp       qword ptr [esp]
 00604930    wait
 00604931    mov        dl,1
 00604933    mov        eax,ebx
 00604935    call       0060547C
 0060493A    push       dword ptr [ebp+14]
 0060493D    push       dword ptr [ebp+10]
 00604940    push       dword ptr [ebp+0C]
 00604943    push       dword ptr [ebp+8]
 00604946    mov        edx,dword ptr [ebp-4]
 00604949    mov        eax,ebx
 0060494B    call       00604B04
 00604950    mov        edx,6049A0; ' Q '
 00604955    mov        eax,dword ptr [ebx+4]
 00604958    mov        ecx,dword ptr [eax]
 0060495A    call       dword ptr [ecx+0C4]
 00604960    xor        eax,eax
 00604962    pop        edx
 00604963    pop        ecx
 00604964    pop        ecx
 00604965    mov        dword ptr fs:[eax],edx
 00604968    push       60497D
 0060496D    lea        eax,[ebp-4]
 00604970    call       @LStrClr
 00604975    ret
<00604976    jmp        @HandleFinally
<0060497B    jmp        0060496D
 0060497D    pop        edi
 0060497E    pop        esi
 0060497F    pop        ebx
 00604980    mov        esp,ebp
 00604982    pop        ebp
 00604983    ret        10
*}
//end;

//006049A4
//procedure sub_006049A4(?:TRPPDFPage; ?:AnsiString; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006049A4    push       ebp
 006049A5    mov        ebp,esp
 006049A7    add        esp,0FFFFFFA4
 006049AA    push       ebx
 006049AB    push       esi
 006049AC    mov        dword ptr [ebp-4],edx
 006049AF    mov        ebx,eax
 006049B1    mov        eax,dword ptr [ebp-4]
 006049B4    call       @LStrAddRef
 006049B9    xor        eax,eax
 006049BB    push       ebp
 006049BC    push       604AA4
 006049C1    push       dword ptr fs:[eax]
 006049C4    mov        dword ptr fs:[eax],esp
 006049C7    mov        edx,dword ptr [ebx+10]; TRPPDFPage.?f10:TRPPDFPageContent
 006049CA    mov        edx,dword ptr [edx+10]; TRPPDFPageContent.?f10:TMemoryStream
 006049CD    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 006049D0    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 006049D3    mov        esi,eax
 006049D5    mov        edx,604ABC; 'q'
 006049DA    mov        eax,esi
 006049DC    mov        ecx,dword ptr [eax]
 006049DE    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006049E4    push       3
 006049E6    fld        qword ptr [ebp+10]
 006049E9    fsub       qword ptr [ebp+20]
 006049EC    fmul       dword ptr ds:[604AC0]; 72:Single
 006049F2    fstp       tbyte ptr [ebp-30]
 006049F5    wait
 006049F6    lea        eax,[ebp-30]
 006049F9    mov        dword ptr [ebp-24],eax
 006049FC    mov        byte ptr [ebp-20],3
 00604A00    fld        qword ptr [ebp+8]
 00604A03    fsub       qword ptr [ebp+18]
 00604A06    fmul       dword ptr ds:[604AC0]; 72:Single
 00604A0C    fstp       tbyte ptr [ebp-3C]
 00604A0F    wait
 00604A10    lea        eax,[ebp-3C]
 00604A13    mov        dword ptr [ebp-1C],eax
 00604A16    mov        byte ptr [ebp-18],3
 00604A1A    fld        qword ptr [ebp+20]
 00604A1D    fmul       dword ptr ds:[604AC0]; 72:Single
 00604A23    fstp       tbyte ptr [ebp-48]
 00604A26    wait
 00604A27    lea        eax,[ebp-48]
 00604A2A    mov        dword ptr [ebp-14],eax
 00604A2D    mov        byte ptr [ebp-10],3
 00604A31    mov        eax,esi
 00604A33    call       00600024
 00604A38    fsub       qword ptr [ebp+8]
 00604A3B    fmul       dword ptr ds:[604AC0]; 72:Single
 00604A41    fstp       tbyte ptr [ebp-54]
 00604A44    wait
 00604A45    lea        eax,[ebp-54]
 00604A48    mov        dword ptr [ebp-0C],eax
 00604A4B    mov        byte ptr [ebp-8],3
 00604A4F    lea        ecx,[ebp-24]
 00604A52    mov        edx,604ACC; '%.4f 0 0 %.4f %.4f %.4f cm'
 00604A57    mov        eax,esi
 00604A59    mov        ebx,dword ptr [eax]
 00604A5B    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 00604A61    push       0
 00604A63    mov        eax,dword ptr [ebp-4]
 00604A66    mov        dword ptr [ebp-5C],eax
 00604A69    mov        byte ptr [ebp-58],0B
 00604A6D    lea        ecx,[ebp-5C]
 00604A70    mov        edx,604AF0; '/%s Do'
 00604A75    mov        eax,esi
 00604A77    mov        ebx,dword ptr [eax]
 00604A79    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 00604A7F    mov        edx,604B00; 'Q'
 00604A84    mov        eax,esi
 00604A86    mov        ecx,dword ptr [eax]
 00604A88    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00604A8E    xor        eax,eax
 00604A90    pop        edx
 00604A91    pop        ecx
 00604A92    pop        ecx
 00604A93    mov        dword ptr fs:[eax],edx
 00604A96    push       604AAB
 00604A9B    lea        eax,[ebp-4]
 00604A9E    call       @LStrClr
 00604AA3    ret
<00604AA4    jmp        @HandleFinally
<00604AA9    jmp        00604A9B
 00604AAB    pop        esi
 00604AAC    pop        ebx
 00604AAD    mov        esp,ebp
 00604AAF    pop        ebp
 00604AB0    ret        20
*}
//end;

//00604B04
//procedure sub_00604B04(?:dword; ?:AnsiString; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00604B04    push       ebp
 00604B05    mov        ebp,esp
 00604B07    add        esp,0FFFFFF24
 00604B0D    push       ebx
 00604B0E    push       esi
 00604B0F    push       edi
 00604B10    xor        ecx,ecx
 00604B12    mov        dword ptr [ebp-0D8],ecx
 00604B18    mov        dword ptr [ebp-54],ecx
 00604B1B    mov        dword ptr [ebp-8],ecx
 00604B1E    mov        dword ptr [ebp-4],edx
 00604B21    mov        esi,eax
 00604B23    mov        eax,dword ptr [ebp-4]
 00604B26    call       @LStrAddRef
 00604B2B    xor        eax,eax
 00604B2D    push       ebp
 00604B2E    push       604F8F
 00604B33    push       dword ptr fs:[eax]
 00604B36    mov        dword ptr fs:[eax],esp
 00604B39    mov        edx,dword ptr [esi+10]
 00604B3C    mov        edx,dword ptr [edx+10]
 00604B3F    mov        eax,dword ptr [esi+4]
 00604B42    mov        dword ptr [eax+78],edx
 00604B45    mov        edx,dword ptr [eax+0B0]
 00604B4B    mov        dword ptr [ebp-14],edx
 00604B4E    mov        edi,eax
 00604B50    mov        edx,604FA8; 'BT'
 00604B55    mov        eax,edi
 00604B57    mov        ecx,dword ptr [eax]
 00604B59    call       dword ptr [ecx+0C4]
 00604B5F    cmp        byte ptr [esi+30],0
>00604B63    je         00604B71
 00604B65    mov        eax,edi
 00604B67    call       0060029C
 00604B6C    cmp        eax,dword ptr [esi+2C]
>00604B6F    je         00604B8E
 00604B71    mov        eax,esi
 00604B73    call       006051D8
 00604B78    mov        eax,edi
 00604B7A    call       0060029C
 00604B7F    mov        dword ptr [esi+2C],eax
 00604B82    mov        byte ptr [esi+30],1
 00604B86    mov        byte ptr [esi+3C],0
 00604B8A    mov        byte ptr [esi+54],0
 00604B8E    lea        eax,[ebp-8]
 00604B91    mov        edx,dword ptr [edi+0B0]
 00604B97    mov        edx,dword ptr [edx+14]
 00604B9A    call       @LStrLAsg
 00604B9F    push       1
 00604BA1    mov        eax,dword ptr [ebp-8]
 00604BA4    mov        dword ptr [ebp-50],eax
 00604BA7    mov        byte ptr [ebp-4C],0B
 00604BAB    mov        eax,dword ptr [esi+4]
 00604BAE    mov        eax,dword ptr [eax+0C4]
 00604BB4    mov        dword ptr [ebp-48],eax
 00604BB7    mov        byte ptr [ebp-44],0
 00604BBB    lea        ecx,[ebp-50]
 00604BBE    mov        edx,604FB4; '/%s %.4d Tf'
 00604BC3    mov        eax,edi
 00604BC5    mov        ebx,dword ptr [eax]
 00604BC7    call       dword ptr [ebx+0C8]
 00604BCD    mov        eax,dword ptr [edi+0B0]
 00604BD3    mov        edx,dword ptr [eax+18]
 00604BD6    mov        eax,604FC8; '-'
 00604BDB    call       @LStrPos
 00604BE0    test       eax,eax
>00604BE2    jle        00604C22
 00604BE4    lea        eax,[ebp-54]
 00604BE7    push       eax
 00604BE8    mov        eax,dword ptr [edi+0B0]
 00604BEE    mov        edx,dword ptr [eax+18]
 00604BF1    mov        eax,604FC8; '-'
 00604BF6    call       @LStrPos
 00604BFB    mov        ecx,eax
 00604BFD    dec        ecx
 00604BFE    mov        eax,dword ptr [edi+0B0]
 00604C04    mov        eax,dword ptr [eax+18]
 00604C07    mov        edx,1
 00604C0C    call       @LStrCopy
 00604C11    mov        eax,dword ptr [ebp-54]
 00604C14    mov        edx,604FD4; 'Courier'
 00604C19    call       CompareText
 00604C1E    test       eax,eax
>00604C20    je         00604C39
 00604C22    mov        eax,dword ptr [edi+0B0]
 00604C28    mov        eax,dword ptr [eax+18]
 00604C2B    mov        edx,604FD4; 'Courier'
 00604C30    call       CompareText
 00604C35    test       eax,eax
>00604C37    jne        00604C56
 00604C39    mov        eax,dword ptr [esi+4]
 00604C3C    fild       dword ptr [eax+0C4]
 00604C42    fdiv       dword ptr ds:[604FDC]; 72:Single
 00604C48    fld        tbyte ptr ds:[604FE0]; 0,65:Extended
 00604C4E    fmulp      st(1),st
 00604C50    fstp       qword ptr [ebp-20]
 00604C53    wait
>00604C54    jmp        00604C71
 00604C56    mov        eax,dword ptr [esi+4]
 00604C59    fild       dword ptr [eax+0C4]
 00604C5F    fld        tbyte ptr ds:[604FEC]; 0,275:Extended
 00604C65    fmulp      st(1),st
 00604C67    fdiv       dword ptr ds:[604FDC]; 72:Single
 00604C6D    fstp       qword ptr [ebp-20]
 00604C70    wait
 00604C71    push       1
 00604C73    fld        qword ptr [ebp+10]
 00604C76    fsub       qword ptr [ebp-20]
 00604C79    add        esp,0FFFFFFF8
 00604C7C    fstp       qword ptr [esp]
 00604C7F    wait
 00604C80    mov        eax,esi
 00604C82    call       00603CC0
 00604C87    fstp       tbyte ptr [ebp-60]
 00604C8A    wait
 00604C8B    lea        eax,[ebp-60]
 00604C8E    mov        dword ptr [ebp-50],eax
 00604C91    mov        byte ptr [ebp-4C],3
 00604C95    push       dword ptr [ebp+0C]
 00604C98    push       dword ptr [ebp+8]
 00604C9B    mov        eax,esi
 00604C9D    call       00603CE0
 00604CA2    fstp       tbyte ptr [ebp-6C]
 00604CA5    wait
 00604CA6    lea        eax,[ebp-6C]
 00604CA9    mov        dword ptr [ebp-48],eax
 00604CAC    mov        byte ptr [ebp-44],3
 00604CB0    lea        ecx,[ebp-50]
 00604CB3    mov        edx,605000; '%.4f %.4f Td'
 00604CB8    mov        eax,edi
 00604CBA    mov        ebx,dword ptr [eax]
 00604CBC    call       dword ptr [ebx+0C8]
 00604CC2    fld        qword ptr [edi+0C8]
 00604CC8    fcomp      dword ptr ds:[605010]; 0:Single
 00604CCE    fnstsw     al
 00604CD0    sahf
>00604CD1    je         00604DC1
 00604CD7    fld        tbyte ptr ds:[605014]; 3,14159265358979:Extended
 00604CDD    fmul       qword ptr [edi+0C8]
 00604CE3    fdiv       dword ptr ds:[605020]; 180:Single
 00604CE9    fstp       qword ptr [ebp-10]
 00604CEC    wait
 00604CED    push       5
 00604CEF    fld        qword ptr [ebp-10]
 00604CF2    call       @COS
 00604CF7    fstp       tbyte ptr [ebp-60]
 00604CFA    wait
 00604CFB    lea        eax,[ebp-60]
 00604CFE    mov        dword ptr [ebp-9C],eax
 00604D04    mov        byte ptr [ebp-98],3
 00604D0B    fld        qword ptr [ebp-10]
 00604D0E    call       @SIN
 00604D13    fstp       tbyte ptr [ebp-6C]
 00604D16    wait
 00604D17    lea        eax,[ebp-6C]
 00604D1A    mov        dword ptr [ebp-94],eax
 00604D20    mov        byte ptr [ebp-90],3
 00604D27    fld        qword ptr [ebp-10]
 00604D2A    call       @SIN
 00604D2F    fchs
 00604D31    fstp       tbyte ptr [ebp-0A8]
 00604D37    wait
 00604D38    lea        eax,[ebp-0A8]
 00604D3E    mov        dword ptr [ebp-8C],eax
 00604D44    mov        byte ptr [ebp-88],3
 00604D4B    fld        qword ptr [ebp-10]
 00604D4E    call       @COS
 00604D53    fstp       tbyte ptr [ebp-0B4]
 00604D59    wait
 00604D5A    lea        eax,[ebp-0B4]
 00604D60    mov        dword ptr [ebp-84],eax
 00604D66    mov        byte ptr [ebp-80],3
 00604D6A    push       dword ptr [ebp+14]
 00604D6D    push       dword ptr [ebp+10]
 00604D70    mov        eax,esi
 00604D72    call       00603CC0
 00604D77    fstp       tbyte ptr [ebp-0C0]
 00604D7D    wait
 00604D7E    lea        eax,[ebp-0C0]
 00604D84    mov        dword ptr [ebp-7C],eax
 00604D87    mov        byte ptr [ebp-78],3
 00604D8B    push       dword ptr [ebp+0C]
 00604D8E    push       dword ptr [ebp+8]
 00604D91    mov        eax,esi
 00604D93    call       00603CE0
 00604D98    fstp       tbyte ptr [ebp-0CC]
 00604D9E    wait
 00604D9F    lea        eax,[ebp-0CC]
 00604DA5    mov        dword ptr [ebp-74],eax
 00604DA8    mov        byte ptr [ebp-70],3
 00604DAC    lea        ecx,[ebp-9C]
 00604DB2    mov        edx,60502C; '%.4f %.4f %.4f %.4f %.4f %.4f Tm'
 00604DB7    mov        eax,edi
 00604DB9    mov        ebx,dword ptr [eax]
 00604DBB    call       dword ptr [ebx+0C8]
 00604DC1    push       0
 00604DC3    lea        ecx,[ebp-0D8]
 00604DC9    mov        edx,dword ptr [ebp-4]
 00604DCC    mov        eax,esi
 00604DCE    call       006037F8
 00604DD3    mov        eax,dword ptr [ebp-0D8]
 00604DD9    mov        dword ptr [ebp-0D4],eax
 00604DDF    mov        byte ptr [ebp-0D0],0B
 00604DE6    lea        ecx,[ebp-0D4]
 00604DEC    mov        edx,605058; '( %s ) Tj'
 00604DF1    mov        eax,edi
 00604DF3    mov        ebx,dword ptr [eax]
 00604DF5    call       dword ptr [ebx+0C8]
 00604DFB    mov        edx,60506C; 'ET'
 00604E00    mov        eax,edi
 00604E02    mov        ecx,dword ptr [eax]
 00604E04    call       dword ptr [ecx+0C4]
 00604E0A    mov        eax,dword ptr [esi+4]
 00604E0D    fld        qword ptr [eax+0C8]
 00604E13    fcomp      dword ptr ds:[605010]; 0:Single
 00604E19    fnstsw     al
 00604E1B    sahf
>00604E1C    jne        00604F61
 00604E22    mov        edx,dword ptr [esi+4]
 00604E25    cmp        byte ptr [edx+0D0],0
>00604E2C    jne        00604E3B
 00604E2E    cmp        byte ptr [edx+0D1],0
>00604E35    je         00604F61
 00604E3B    mov        ebx,dword ptr [esi+4]
 00604E3E    mov        eax,dword ptr [ebx+48]
 00604E41    mov        dword ptr [ebp-30],eax
 00604E44    mov        eax,dword ptr [ebx+4C]
 00604E47    mov        dword ptr [ebp-2C],eax
 00604E4A    fild       dword ptr [ebx+0C4]
 00604E50    add        esp,0FFFFFFF8
 00604E53    fstp       qword ptr [esp]
 00604E56    wait
 00604E57    mov        edx,dword ptr [ebp-4]
 00604E5A    mov        eax,dword ptr [ebp-14]
 00604E5D    call       00606DD4
 00604E62    fadd       qword ptr [ebp+10]
 00604E65    fstp       qword ptr [ebp-38]
 00604E68    wait
 00604E69    mov        eax,dword ptr [esi+4]
 00604E6C    cmp        byte ptr [eax+0D0],0
>00604E73    je         00604ED8
 00604E75    mov        edx,dword ptr [eax+0C4]
 00604E7B    inc        edx
 00604E7C    mov        dword ptr [ebp-0DC],edx
 00604E82    fild       dword ptr [ebp-0DC]
 00604E88    fld        tbyte ptr ds:[605070]; 0,0014:Extended
 00604E8E    fmulp      st(1),st
 00604E90    fstp       qword ptr [ebp-28]
 00604E93    wait
 00604E94    mov        edx,dword ptr [ebp-28]
 00604E97    mov        dword ptr [eax+48],edx
 00604E9A    mov        edx,dword ptr [ebp-24]
 00604E9D    mov        dword ptr [eax+4C],edx
 00604EA0    fld        qword ptr [ebp-28]
 00604EA3    fmul       dword ptr ds:[60507C]; 1,5:Single
 00604EA9    fadd       qword ptr [ebp+8]
 00604EAC    fstp       qword ptr [ebp-40]
 00604EAF    wait
 00604EB0    push       dword ptr [ebp+14]
 00604EB3    push       dword ptr [ebp+10]
 00604EB6    push       dword ptr [ebp-3C]
 00604EB9    push       dword ptr [ebp-40]
 00604EBC    mov        eax,esi
 00604EBE    call       00604370
 00604EC3    push       dword ptr [ebp-34]
 00604EC6    push       dword ptr [ebp-38]
 00604EC9    push       dword ptr [ebp-3C]
 00604ECC    push       dword ptr [ebp-40]
 00604ECF    mov        dl,1
 00604ED1    mov        eax,esi
 00604ED3    call       006040F8
 00604ED8    mov        eax,dword ptr [esi+4]
 00604EDB    cmp        byte ptr [eax+0D1],0
>00604EE2    je         00604F52
 00604EE4    mov        edx,dword ptr [eax+0C4]
 00604EEA    inc        edx
 00604EEB    mov        dword ptr [ebp-0DC],edx
 00604EF1    fild       dword ptr [ebp-0DC]
 00604EF7    fld        tbyte ptr ds:[605080]; 0,0006:Extended
 00604EFD    fmulp      st(1),st
 00604EFF    fstp       qword ptr [ebp-28]
 00604F02    wait
 00604F03    mov        edx,dword ptr [ebp-28]
 00604F06    mov        dword ptr [eax+48],edx
 00604F09    mov        edx,dword ptr [ebp-24]
 00604F0C    mov        dword ptr [eax+4C],edx
 00604F0F    fild       dword ptr [eax+0C4]
 00604F15    fdiv       dword ptr ds:[604FDC]; 72:Single
 00604F1B    fld        tbyte ptr ds:[60508C]; 0,22:Extended
 00604F21    fmulp      st(1),st
 00604F23    fsubr      qword ptr [ebp+8]
 00604F26    fstp       qword ptr [ebp-40]
 00604F29    wait
 00604F2A    push       dword ptr [ebp+14]
 00604F2D    push       dword ptr [ebp+10]
 00604F30    push       dword ptr [ebp-3C]
 00604F33    push       dword ptr [ebp-40]
 00604F36    mov        eax,esi
 00604F38    call       00604370
 00604F3D    push       dword ptr [ebp-34]
 00604F40    push       dword ptr [ebp-38]
 00604F43    push       dword ptr [ebp-3C]
 00604F46    push       dword ptr [ebp-40]
 00604F49    mov        dl,1
 00604F4B    mov        eax,esi
 00604F4D    call       006040F8
 00604F52    mov        eax,dword ptr [esi+4]
 00604F55    mov        edx,dword ptr [ebp-30]
 00604F58    mov        dword ptr [eax+48],edx
 00604F5B    mov        edx,dword ptr [ebp-2C]
 00604F5E    mov        dword ptr [eax+4C],edx
 00604F61    xor        eax,eax
 00604F63    pop        edx
 00604F64    pop        ecx
 00604F65    pop        ecx
 00604F66    mov        dword ptr fs:[eax],edx
 00604F69    push       604F96
 00604F6E    lea        eax,[ebp-0D8]
 00604F74    call       @LStrClr
 00604F79    lea        eax,[ebp-54]
 00604F7C    call       @LStrClr
 00604F81    lea        eax,[ebp-8]
 00604F84    mov        edx,2
 00604F89    call       @LStrArrayClr
 00604F8E    ret
<00604F8F    jmp        @HandleFinally
<00604F94    jmp        00604F6E
 00604F96    pop        edi
 00604F97    pop        esi
 00604F98    pop        ebx
 00604F99    mov        esp,ebp
 00604F9B    pop        ebp
 00604F9C    ret        10
*}
//end;

//00605098
//procedure sub_00605098(?:TRPPDFPage);
//begin
{*
 00605098    push       ebp
 00605099    mov        ebp,esp
 0060509B    add        esp,0FFFFFFF4
 0060509E    push       ebx
 0060509F    push       esi
 006050A0    xor        edx,edx
 006050A2    mov        dword ptr [ebp-0C],edx
 006050A5    mov        ebx,eax
 006050A7    xor        eax,eax
 006050A9    push       ebp
 006050AA    push       60510D
 006050AF    push       dword ptr fs:[eax]
 006050B2    mov        dword ptr fs:[eax],esp
 006050B5    mov        edx,dword ptr [ebx+10]; TRPPDFPage.?f10:TRPPDFPageContent
 006050B8    mov        edx,dword ptr [edx+10]; TRPPDFPageContent.?f10:TMemoryStream
 006050BB    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 006050BE    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 006050C1    mov        esi,eax
 006050C3    push       0
 006050C5    lea        eax,[ebp-0C]
 006050C8    push       eax
 006050C9    mov        eax,esi
 006050CB    call       00600198
 006050D0    mov        edx,eax
 006050D2    xor        ecx,ecx
 006050D4    mov        eax,ebx
 006050D6    call       00603A2C
 006050DB    mov        eax,dword ptr [ebp-0C]
 006050DE    mov        dword ptr [ebp-8],eax
 006050E1    mov        byte ptr [ebp-4],0B
 006050E5    lea        ecx,[ebp-8]
 006050E8    mov        edx,605124; '%s RG'
 006050ED    mov        eax,esi
 006050EF    mov        ebx,dword ptr [eax]
 006050F1    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 006050F7    xor        eax,eax
 006050F9    pop        edx
 006050FA    pop        ecx
 006050FB    pop        ecx
 006050FC    mov        dword ptr fs:[eax],edx
 006050FF    push       605114
 00605104    lea        eax,[ebp-0C]
 00605107    call       @LStrClr
 0060510C    ret
<0060510D    jmp        @HandleFinally
<00605112    jmp        00605104
 00605114    pop        esi
 00605115    pop        ebx
 00605116    mov        esp,ebp
 00605118    pop        ebp
 00605119    ret
*}
//end;

//0060512C
//procedure sub_0060512C(?:?; ?:AnsiString; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0060512C    push       ebp
 0060512D    mov        ebp,esp
 0060512F    add        esp,0FFFFFFE0
 00605132    push       ebx
 00605133    push       esi
 00605134    mov        dword ptr [ebp-4],edx
 00605137    mov        ebx,eax
 00605139    mov        eax,dword ptr [ebp-4]
 0060513C    call       @LStrAddRef
 00605141    xor        eax,eax
 00605143    push       ebp
 00605144    push       6051C8
 00605149    push       dword ptr fs:[eax]
 0060514C    mov        dword ptr fs:[eax],esp
 0060514F    mov        esi,dword ptr [ebx+4]
 00605152    mov        eax,dword ptr [esi+0B0]
 00605158    fild       dword ptr [esi+0C4]
 0060515E    add        esp,0FFFFFFF8
 00605161    fstp       qword ptr [esp]
 00605164    wait
 00605165    mov        edx,dword ptr [ebp-4]
 00605168    call       00606DD4
 0060516D    fstp       qword ptr [ebp-10]
 00605170    wait
 00605171    mov        eax,dword ptr [ebp+10]
 00605174    mov        dword ptr [ebp-18],eax
 00605177    mov        eax,dword ptr [ebp+14]
 0060517A    mov        dword ptr [ebp-14],eax
 0060517D    mov        eax,dword ptr [ebp+8]
 00605180    mov        dword ptr [ebp-20],eax
 00605183    mov        eax,dword ptr [ebp+0C]
 00605186    mov        dword ptr [ebp-1C],eax
 00605189    push       dword ptr [ebp-0C]
 0060518C    push       dword ptr [ebp-10]
 0060518F    lea        ecx,[ebp-20]
 00605192    lea        edx,[ebp-18]
 00605195    mov        eax,ebx
 00605197    call       006045F8
 0060519C    push       dword ptr [ebp-14]
 0060519F    push       dword ptr [ebp-18]
 006051A2    push       dword ptr [ebp-1C]
 006051A5    push       dword ptr [ebp-20]
 006051A8    mov        edx,dword ptr [ebp-4]
 006051AB    mov        eax,ebx
 006051AD    call       00604B04
 006051B2    xor        eax,eax
 006051B4    pop        edx
 006051B5    pop        ecx
 006051B6    pop        ecx
 006051B7    mov        dword ptr fs:[eax],edx
 006051BA    push       6051CF
 006051BF    lea        eax,[ebp-4]
 006051C2    call       @LStrClr
 006051C7    ret
<006051C8    jmp        @HandleFinally
<006051CD    jmp        006051BF
 006051CF    pop        esi
 006051D0    pop        ebx
 006051D1    mov        esp,ebp
 006051D3    pop        ebp
 006051D4    ret        10
*}
//end;

//006051D8
//procedure sub_006051D8(?:dword);
//begin
{*
 006051D8    push       ebp
 006051D9    mov        ebp,esp
 006051DB    add        esp,0FFFFFFF4
 006051DE    push       ebx
 006051DF    push       esi
 006051E0    xor        edx,edx
 006051E2    mov        dword ptr [ebp-0C],edx
 006051E5    mov        ebx,eax
 006051E7    xor        eax,eax
 006051E9    push       ebp
 006051EA    push       60524D
 006051EF    push       dword ptr fs:[eax]
 006051F2    mov        dword ptr fs:[eax],esp
 006051F5    mov        edx,dword ptr [ebx+10]
 006051F8    mov        edx,dword ptr [edx+10]
 006051FB    mov        eax,dword ptr [ebx+4]
 006051FE    mov        dword ptr [eax+78],edx
 00605201    mov        esi,eax
 00605203    push       0
 00605205    lea        eax,[ebp-0C]
 00605208    push       eax
 00605209    mov        eax,esi
 0060520B    call       0060029C
 00605210    mov        edx,eax
 00605212    xor        ecx,ecx
 00605214    mov        eax,ebx
 00605216    call       00603A2C
 0060521B    mov        eax,dword ptr [ebp-0C]
 0060521E    mov        dword ptr [ebp-8],eax
 00605221    mov        byte ptr [ebp-4],0B
 00605225    lea        ecx,[ebp-8]
 00605228    mov        edx,605264; '%s rg'
 0060522D    mov        eax,esi
 0060522F    mov        ebx,dword ptr [eax]
 00605231    call       dword ptr [ebx+0C8]
 00605237    xor        eax,eax
 00605239    pop        edx
 0060523A    pop        ecx
 0060523B    pop        ecx
 0060523C    mov        dword ptr fs:[eax],edx
 0060523F    push       605254
 00605244    lea        eax,[ebp-0C]
 00605247    call       @LStrClr
 0060524C    ret
<0060524D    jmp        @HandleFinally
<00605252    jmp        00605244
 00605254    pop        esi
 00605255    pop        ebx
 00605256    mov        esp,ebp
 00605258    pop        ebp
 00605259    ret
*}
//end;

//0060526C
//procedure sub_0060526C(?:TRPPDFPage; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0060526C    push       ebp
 0060526D    mov        ebp,esp
 0060526F    add        esp,0FFFFFFC8
 00605272    push       ebx
 00605273    push       esi
 00605274    push       edi
 00605275    mov        dword ptr [ebp-4],eax
 00605278    fld        qword ptr [ebp+10]
 0060527B    fcomp      qword ptr [ebp+8]
 0060527E    fnstsw     al
 00605280    sahf
>00605281    je         00605460
 00605287    mov        edi,1
 0060528C    xor        eax,eax
 0060528E    mov        dword ptr [ebp-10],eax
 00605291    mov        dword ptr [ebp-0C],3FF00000
 00605298    fld        qword ptr [ebp+8]
 0060529B    fsub       qword ptr [ebp+10]
 0060529E    fstp       qword ptr [ebp-28]
 006052A1    wait
 006052A2    fld        qword ptr [ebp-28]
 006052A5    fcomp      dword ptr ds:[60546C]; 0:Single
 006052AB    fnstsw     al
 006052AD    sahf
>006052AE    jae        006052BD
 006052B0    fld        dword ptr ds:[605470]; 360:Single
 006052B6    fadd       qword ptr [ebp-28]
 006052B9    fstp       qword ptr [ebp-28]
 006052BC    wait
 006052BD    fld        qword ptr [ebp+8]
 006052C0    fcomp      qword ptr [ebp+10]
 006052C3    fnstsw     al
 006052C5    sahf
>006052C6    jae        006052D7
 006052C8    xor        eax,eax
 006052CA    mov        dword ptr [ebp-10],eax
 006052CD    mov        dword ptr [ebp-0C],0BFF00000
>006052D4    jmp        006052D7
 006052D6    inc        edi
 006052D7    fld        qword ptr [ebp-28]
 006052DA    fabs
 006052DC    mov        dword ptr [ebp-38],edi
 006052DF    fild       dword ptr [ebp-38]
 006052E2    fdivp      st(1),st
 006052E4    fcomp      dword ptr ds:[605474]; 90:Single
 006052EA    fnstsw     al
 006052EC    sahf
<006052ED    ja         006052D6
 006052EF    mov        dword ptr [ebp-38],edi
 006052F2    fild       dword ptr [ebp-38]
 006052F5    fdivr      qword ptr [ebp-28]
 006052F8    fstp       qword ptr [ebp-18]
 006052FB    wait
 006052FC    fld        dword ptr ds:[605478]; 0,5:Single
 00605302    fmul       qword ptr [ebp-18]
 00605305    fstp       qword ptr [ebp-20]
 00605308    wait
 00605309    fld        qword ptr [ebp+10]
 0060530C    fadd       qword ptr [ebp-20]
 0060530F    fstp       qword ptr [ebp-30]
 00605312    wait
 00605313    mov        esi,edi
 00605315    test       esi,esi
>00605317    jle        0060535A
 00605319    mov        ebx,1
 0060531E    push       dword ptr [ebp+2C]
 00605321    push       dword ptr [ebp+28]
 00605324    push       dword ptr [ebp+24]
 00605327    push       dword ptr [ebp+20]
 0060532A    push       dword ptr [ebp+1C]
 0060532D    push       dword ptr [ebp+18]
 00605330    push       dword ptr [ebp-2C]
 00605333    push       dword ptr [ebp-30]
 00605336    push       dword ptr [ebp-1C]
 00605339    push       dword ptr [ebp-20]
 0060533C    push       dword ptr [ebp-0C]
 0060533F    push       dword ptr [ebp-10]
 00605342    mov        edx,ebx
 00605344    mov        eax,dword ptr [ebp-4]
 00605347    call       00605808
 0060534C    fld        qword ptr [ebp-30]
 0060534F    fadd       qword ptr [ebp-18]
 00605352    fstp       qword ptr [ebp-30]
 00605355    wait
 00605356    inc        ebx
 00605357    dec        esi
<00605358    jne        0060531E
 0060535A    mov        eax,dword ptr [ebp-4]
 0060535D    mov        eax,dword ptr [eax+4]; TRPPDFPage.?f4:TRvRenderPDF
 00605360    mov        dword ptr [ebp-34],eax
 00605363    fld        qword ptr [ebp+8]
 00605366    fsub       qword ptr [ebp+10]
 00605369    fcomp      dword ptr ds:[60546C]; 0:Single
 0060536F    fnstsw     al
 00605371    sahf
>00605372    jae        006053F0
 00605374    mov        esi,edi
 00605376    shl        esi,3
 00605379    mov        eax,dword ptr [ebp-34]
 0060537C    push       dword ptr [eax+esi*8+9C]
 00605383    push       dword ptr [eax+esi*8+98]
 0060538A    mov        eax,dword ptr [ebp-34]
 0060538D    push       dword ptr [eax+esi*8+0BC]
 00605394    push       dword ptr [eax+esi*8+0B8]
 0060539B    mov        eax,dword ptr [ebp-34]
 0060539E    mov        edx,dword ptr [eax]
 006053A0    call       dword ptr [edx+50]; TRvRenderPDF.sub_005FF98C
 006053A3    mov        ebx,edi
 006053A5    cmp        ebx,1
>006053A8    jl         00605460
 006053AE    mov        eax,ebx
 006053B0    shl        eax,3
 006053B3    mov        edx,dword ptr [ebp-34]
 006053B6    lea        eax,[edx+eax*8+98]
 006053BD    push       dword ptr [eax+0C]
 006053C0    push       dword ptr [eax+8]
 006053C3    push       dword ptr [eax+2C]
 006053C6    push       dword ptr [eax+28]
 006053C9    push       dword ptr [eax+14]
 006053CC    push       dword ptr [eax+10]
 006053CF    push       dword ptr [eax+34]
 006053D2    push       dword ptr [eax+30]
 006053D5    push       dword ptr [eax+1C]
 006053D8    push       dword ptr [eax+18]
 006053DB    push       dword ptr [eax+3C]
 006053DE    push       dword ptr [eax+38]
 006053E1    mov        eax,dword ptr [ebp-4]
 006053E4    call       00603584
 006053E9    dec        ebx
 006053EA    test       ebx,ebx
<006053EC    jne        006053AE
>006053EE    jmp        00605460
 006053F0    mov        eax,dword ptr [ebp-34]
 006053F3    push       dword ptr [eax+0DC]; TRvRenderPDF.?fDC:dword
 006053F9    push       dword ptr [eax+0D8]; TRvRenderPDF.?fD8:dword
 006053FF    mov        eax,dword ptr [ebp-34]
 00605402    push       dword ptr [eax+0FC]; TRvRenderPDF.?fFC:dword
 00605408    push       dword ptr [eax+0F8]; TRvRenderPDF.?fF8:dword
 0060540E    mov        eax,dword ptr [ebp-34]
 00605411    mov        edx,dword ptr [eax]
 00605413    call       dword ptr [edx+50]; TRvRenderPDF.sub_005FF98C
 00605416    mov        esi,edi
 00605418    test       esi,esi
>0060541A    jle        00605460
 0060541C    mov        ebx,1
 00605421    mov        eax,ebx
 00605423    shl        eax,3
 00605426    mov        edx,dword ptr [ebp-34]
 00605429    lea        eax,[edx+eax*8+98]
 00605430    push       dword ptr [eax+0C]
 00605433    push       dword ptr [eax+8]
 00605436    push       dword ptr [eax+2C]
 00605439    push       dword ptr [eax+28]
 0060543C    push       dword ptr [eax+14]
 0060543F    push       dword ptr [eax+10]
 00605442    push       dword ptr [eax+34]
 00605445    push       dword ptr [eax+30]
 00605448    push       dword ptr [eax+1C]
 0060544B    push       dword ptr [eax+18]
 0060544E    push       dword ptr [eax+3C]
 00605451    push       dword ptr [eax+38]
 00605454    mov        eax,dword ptr [ebp-4]
 00605457    call       00603584
 0060545C    inc        ebx
 0060545D    dec        esi
<0060545E    jne        00605421
 00605460    pop        edi
 00605461    pop        esi
 00605462    pop        ebx
 00605463    mov        esp,ebp
 00605465    pop        ebp
 00605466    ret        28
*}
//end;

//0060547C
//procedure sub_0060547C(?:TRPPDFPage; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0060547C    push       ebp
 0060547D    mov        ebp,esp
 0060547F    add        esp,0FFFFFFA4
 00605482    push       ebx
 00605483    push       esi
 00605484    push       edi
 00605485    mov        byte ptr [ebp-1],dl
 00605488    mov        esi,eax
 0060548A    mov        edx,dword ptr [esi+10]; TRPPDFPage.?f10:TRPPDFPageContent
 0060548D    mov        edx,dword ptr [edx+10]; TRPPDFPageContent.?f10:TMemoryStream
 00605490    mov        eax,dword ptr [esi+4]; TRPPDFPage.?f4:TRvRenderPDF
 00605493    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 00605496    mov        edi,eax
 00605498    mov        eax,edi
 0060549A    call       00601FC0
 0060549F    test       al,al
>006054A1    jne        006054B2
 006054A3    mov        eax,edi
 006054A5    call       00601FA8
 006054AA    test       al,al
>006054AC    je         00605570
 006054B2    mov        eax,esi
 006054B4    call       00604194
 006054B9    push       3
 006054BB    push       dword ptr [ebp+24]
 006054BE    push       dword ptr [ebp+20]
 006054C1    mov        eax,esi
 006054C3    call       00603CC0
 006054C8    fstp       tbyte ptr [ebp-30]
 006054CB    wait
 006054CC    lea        eax,[ebp-30]
 006054CF    mov        dword ptr [ebp-24],eax
 006054D2    mov        byte ptr [ebp-20],3
 006054D6    push       dword ptr [ebp+1C]
 006054D9    push       dword ptr [ebp+18]
 006054DC    mov        eax,esi
 006054DE    call       00603CE0
 006054E3    fstp       tbyte ptr [ebp-3C]
 006054E6    wait
 006054E7    lea        eax,[ebp-3C]
 006054EA    mov        dword ptr [ebp-1C],eax
 006054ED    mov        byte ptr [ebp-18],3
 006054F1    fld        qword ptr [ebp+10]
 006054F4    fsub       qword ptr [ebp+20]
 006054F7    add        esp,0FFFFFFF8
 006054FA    fstp       qword ptr [esp]
 006054FD    wait
 006054FE    mov        eax,esi
 00605500    call       00603CC0
 00605505    fstp       tbyte ptr [ebp-48]
 00605508    wait
 00605509    lea        eax,[ebp-48]
 0060550C    mov        dword ptr [ebp-14],eax
 0060550F    mov        byte ptr [ebp-10],3
 00605513    push       dword ptr [ebp+0C]
 00605516    push       dword ptr [ebp+8]
 00605519    mov        eax,esi
 0060551B    call       00603CE0
 00605520    fstp       qword ptr [ebp-50]
 00605523    wait
 00605524    push       dword ptr [ebp+1C]
 00605527    push       dword ptr [ebp+18]
 0060552A    mov        eax,esi
 0060552C    call       00603CE0
 00605531    fsubr      qword ptr [ebp-50]
 00605534    fstp       tbyte ptr [ebp-5C]
 00605537    wait
 00605538    lea        eax,[ebp-5C]
 0060553B    mov        dword ptr [ebp-0C],eax
 0060553E    mov        byte ptr [ebp-8],3
 00605542    lea        ecx,[ebp-24]
 00605545    mov        edx,605584; '%.4f %.4f %.4f %.4f re '
 0060554A    mov        eax,edi
 0060554C    mov        ebx,dword ptr [eax]
 0060554E    call       dword ptr [ebx+0C0]; TRvRenderPDF.sub_00601CE0
 00605554    cmp        byte ptr [ebp-1],0
>00605558    je         00605569
 0060555A    mov        edx,6055A4; 'W n '
 0060555F    mov        eax,edi
 00605561    mov        ecx,dword ptr [eax]
 00605563    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605569    mov        eax,esi
 0060556B    call       00603484
 00605570    pop        edi
 00605571    pop        esi
 00605572    pop        ebx
 00605573    mov        esp,ebp
 00605575    pop        ebp
 00605576    ret        20
*}
//end;

//006055AC
//procedure sub_006055AC(?:TRPPDFPage; ?:?Double; ?:?Double; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 006055AC    push       ebp
 006055AD    mov        ebp,esp
 006055AF    add        esp,0FFFFFFE8
 006055B2    push       ebx
 006055B3    push       esi
 006055B4    mov        esi,ecx
 006055B6    mov        ebx,edx
 006055B8    push       dword ptr [ebp+0C]
 006055BB    push       dword ptr [ebp+8]
 006055BE    call       00603684
 006055C3    fstp       qword ptr [ebp-8]
 006055C6    wait
 006055C7    fld        qword ptr [ebp-8]
 006055CA    call       @COS
 006055CF    fstp       qword ptr [ebp-10]
 006055D2    wait
 006055D3    fld        qword ptr [ebp-8]
 006055D6    call       @SIN
 006055DB    fstp       qword ptr [ebp-18]
 006055DE    wait
 006055DF    fld        qword ptr [ebp-10]
 006055E2    fmul       qword ptr [ebp+18]
 006055E5    fld        qword ptr [ebp-18]
 006055E8    fmul       qword ptr [ebp+10]
 006055EB    fsubp      st(1),st
 006055ED    fstp       qword ptr [ebx]
 006055EF    wait
 006055F0    fld        qword ptr [ebp-18]
 006055F3    fmul       qword ptr [ebp+18]
 006055F6    fld        qword ptr [ebp-10]
 006055F9    fmul       qword ptr [ebp+10]
 006055FC    faddp      st(1),st
 006055FE    fstp       qword ptr [esi]
 00605600    wait
 00605601    pop        esi
 00605602    pop        ebx
 00605603    mov        esp,ebp
 00605605    pop        ebp
 00605606    ret        18
*}
//end;

//0060560C
//procedure sub_0060560C(?:TRPPDFPage; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0060560C    push       ebp
 0060560D    mov        ebp,esp
 0060560F    add        esp,0FFFFFFA0
 00605612    push       ebx
 00605613    push       esi
 00605614    push       edi
 00605615    mov        ebx,eax
 00605617    lea        edi,[ebp-60]
 0060561A    mov        edx,dword ptr [ebx+10]; TRPPDFPage.?f10:TRPPDFPageContent
 0060561D    mov        edx,dword ptr [edx+10]; TRPPDFPageContent.?f10:TMemoryStream
 00605620    mov        eax,dword ptr [ebx+4]; TRPPDFPage.?f4:TRvRenderPDF
 00605623    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 00605626    mov        esi,eax
 00605628    mov        eax,ebx
 0060562A    call       00604194
 0060562F    push       dword ptr [ebp+34]
 00605632    push       dword ptr [ebp+30]
 00605635    push       dword ptr [ebp+2C]
 00605638    push       dword ptr [ebp+28]
 0060563B    fld        qword ptr [ebp+30]
 0060563E    fadd       qword ptr [ebp+10]
 00605641    add        esp,0FFFFFFF8
 00605644    fstp       qword ptr [esp]
 00605647    wait
 00605648    fld        qword ptr [ebp+28]
 0060564B    fadd       qword ptr [ebp+8]
 0060564E    add        esp,0FFFFFFF8
 00605651    fstp       qword ptr [esp]
 00605654    wait
 00605655    mov        edx,edi
 00605657    mov        eax,ebx
 00605659    call       0060388C
 0060565E    fld        qword ptr [ebp+20]
 00605661    fsub       qword ptr [ebp+30]
 00605664    fsub       qword ptr [ebp+10]
 00605667    fstp       qword ptr [ebp-8]
 0060566A    wait
 0060566B    fld        qword ptr [ebp+18]
 0060566E    fsub       qword ptr [ebp+28]
 00605671    fsub       qword ptr [ebp+8]
 00605674    fstp       qword ptr [ebp-10]
 00605677    wait
 00605678    push       dword ptr [edi+14]
 0060567B    push       dword ptr [edi+10]
 0060567E    push       dword ptr [edi+2C]
 00605681    push       dword ptr [edi+28]
 00605684    mov        eax,esi
 00605686    mov        edx,dword ptr [eax]
 00605688    call       dword ptr [edx+50]; TRvRenderPDF.sub_005FF98C
 0060568B    fld        qword ptr [edi+10]
 0060568E    fadd       qword ptr [ebp-8]
 00605691    add        esp,0FFFFFFF8
 00605694    fstp       qword ptr [esp]
 00605697    wait
 00605698    push       dword ptr [edi+2C]
 0060569B    push       dword ptr [edi+28]
 0060569E    xor        edx,edx
 006056A0    mov        eax,esi
 006056A2    call       00600214
 006056A7    fld        qword ptr [edi+18]
 006056AA    fadd       qword ptr [ebp-8]
 006056AD    add        esp,0FFFFFFF8
 006056B0    fstp       qword ptr [esp]
 006056B3    wait
 006056B4    push       dword ptr [edi+2C]
 006056B7    push       dword ptr [edi+28]
 006056BA    fld        qword ptr [edi+20]
 006056BD    fadd       qword ptr [ebp-8]
 006056C0    add        esp,0FFFFFFF8
 006056C3    fstp       qword ptr [esp]
 006056C6    wait
 006056C7    push       dword ptr [edi+34]
 006056CA    push       dword ptr [edi+30]
 006056CD    fld        qword ptr [edi+20]
 006056D0    fadd       qword ptr [ebp-8]
 006056D3    add        esp,0FFFFFFF8
 006056D6    fstp       qword ptr [esp]
 006056D9    wait
 006056DA    push       dword ptr [edi+3C]
 006056DD    push       dword ptr [edi+38]
 006056E0    mov        eax,ebx
 006056E2    call       00603584
 006056E7    fld        qword ptr [edi+20]
 006056EA    fadd       qword ptr [ebp-8]
 006056ED    add        esp,0FFFFFFF8
 006056F0    fstp       qword ptr [esp]
 006056F3    wait
 006056F4    fld        qword ptr [edi+38]
 006056F7    fadd       qword ptr [ebp-10]
 006056FA    add        esp,0FFFFFFF8
 006056FD    fstp       qword ptr [esp]
 00605700    wait
 00605701    xor        edx,edx
 00605703    mov        eax,esi
 00605705    call       00600214
 0060570A    fld        qword ptr [edi+20]
 0060570D    fadd       qword ptr [ebp-8]
 00605710    add        esp,0FFFFFFF8
 00605713    fstp       qword ptr [esp]
 00605716    wait
 00605717    fld        qword ptr [edi+40]
 0060571A    fadd       qword ptr [ebp-10]
 0060571D    add        esp,0FFFFFFF8
 00605720    fstp       qword ptr [esp]
 00605723    wait
 00605724    fld        qword ptr [edi+18]
 00605727    fadd       qword ptr [ebp-8]
 0060572A    add        esp,0FFFFFFF8
 0060572D    fstp       qword ptr [esp]
 00605730    wait
 00605731    fld        qword ptr [edi+48]
 00605734    fadd       qword ptr [ebp-10]
 00605737    add        esp,0FFFFFFF8
 0060573A    fstp       qword ptr [esp]
 0060573D    wait
 0060573E    fld        qword ptr [edi+10]
 00605741    fadd       qword ptr [ebp-8]
 00605744    add        esp,0FFFFFFF8
 00605747    fstp       qword ptr [esp]
 0060574A    wait
 0060574B    fld        qword ptr [edi+48]
 0060574E    fadd       qword ptr [ebp-10]
 00605751    add        esp,0FFFFFFF8
 00605754    fstp       qword ptr [esp]
 00605757    wait
 00605758    mov        eax,ebx
 0060575A    call       00603584
 0060575F    push       dword ptr [edi+14]
 00605762    push       dword ptr [edi+10]
 00605765    fld        qword ptr [edi+48]
 00605768    fadd       qword ptr [ebp-10]
 0060576B    add        esp,0FFFFFFF8
 0060576E    fstp       qword ptr [esp]
 00605771    wait
 00605772    xor        edx,edx
 00605774    mov        eax,esi
 00605776    call       00600214
 0060577B    push       dword ptr [edi+0C]
 0060577E    push       dword ptr [edi+8]
 00605781    fld        qword ptr [edi+48]
 00605784    fadd       qword ptr [ebp-10]
 00605787    add        esp,0FFFFFFF8
 0060578A    fstp       qword ptr [esp]
 0060578D    wait
 0060578E    push       dword ptr [edi+4]
 00605791    push       dword ptr [edi]
 00605793    fld        qword ptr [edi+40]
 00605796    fadd       qword ptr [ebp-10]
 00605799    add        esp,0FFFFFFF8
 0060579C    fstp       qword ptr [esp]
 0060579F    wait
 006057A0    push       dword ptr [edi+4]
 006057A3    push       dword ptr [edi]
 006057A5    fld        qword ptr [edi+38]
 006057A8    fadd       qword ptr [ebp-10]
 006057AB    add        esp,0FFFFFFF8
 006057AE    fstp       qword ptr [esp]
 006057B1    wait
 006057B2    mov        eax,ebx
 006057B4    call       00603584
 006057B9    push       dword ptr [edi+4]
 006057BC    push       dword ptr [edi]
 006057BE    push       dword ptr [edi+3C]
 006057C1    push       dword ptr [edi+38]
 006057C4    xor        edx,edx
 006057C6    mov        eax,esi
 006057C8    call       00600214
 006057CD    push       dword ptr [edi+4]
 006057D0    push       dword ptr [edi]
 006057D2    push       dword ptr [edi+34]
 006057D5    push       dword ptr [edi+30]
 006057D8    push       dword ptr [edi+0C]
 006057DB    push       dword ptr [edi+8]
 006057DE    push       dword ptr [edi+2C]
 006057E1    push       dword ptr [edi+28]
 006057E4    push       dword ptr [edi+14]
 006057E7    push       dword ptr [edi+10]
 006057EA    push       dword ptr [edi+2C]
 006057ED    push       dword ptr [edi+28]
 006057F0    mov        eax,ebx
 006057F2    call       00603584
 006057F7    mov        eax,ebx
 006057F9    call       00603484
 006057FE    pop        edi
 006057FF    pop        esi
 00605800    pop        ebx
 00605801    mov        esp,ebp
 00605803    pop        ebp
 00605804    ret        30
*}
//end;

//00605808
//procedure sub_00605808(?:TRPPDFPage; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00605808    push       ebp
 00605809    mov        ebp,esp
 0060580B    add        esp,0FFFFFFA8
 0060580E    push       ebx
 0060580F    push       esi
 00605810    mov        ebx,edx
 00605812    mov        esi,eax
 00605814    fld        qword ptr [ebp+10]
 00605817    fabs
 00605819    add        esp,0FFFFFFF8
 0060581C    fstp       qword ptr [esp]
 0060581F    wait
 00605820    mov        eax,esi
 00605822    call       00603684
 00605827    fstp       qword ptr [ebp-58]
 0060582A    wait
 0060582B    fld        qword ptr [ebp-58]
 0060582E    call       @COS
 00605833    fstp       qword ptr [ebp-8]
 00605836    wait
 00605837    fld        qword ptr [ebp-58]
 0060583A    call       @SIN
 0060583F    fstp       qword ptr [ebp-10]
 00605842    wait
 00605843    fld        qword ptr [ebp+20]
 00605846    fmul       qword ptr [ebp-8]
 00605849    fstp       qword ptr [ebp-18]
 0060584C    wait
 0060584D    fld        qword ptr [ebp+8]
 00605850    fchs
 00605852    fmul       qword ptr [ebp+20]
 00605855    fmul       qword ptr [ebp-10]
 00605858    fstp       qword ptr [ebp-20]
 0060585B    wait
 0060585C    fld        dword ptr ds:[6059E8]; 4:Single
 00605862    fsub       qword ptr [ebp-8]
 00605865    fmul       qword ptr [ebp+20]
 00605868    fdiv       dword ptr ds:[6059EC]; 3:Single
 0060586E    fstp       qword ptr [ebp-28]
 00605871    wait
 00605872    mov        eax,dword ptr [ebp-28]
 00605875    mov        dword ptr [ebp-38],eax
 00605878    mov        eax,dword ptr [ebp-24]
 0060587B    mov        dword ptr [ebp-34],eax
 0060587E    fld        qword ptr [ebp+20]
 00605881    fmul       qword ptr [ebp+8]
 00605884    fld        dword ptr ds:[6059F0]; 1:Single
 0060588A    fsub       qword ptr [ebp-8]
 0060588D    fmulp      st(1),st
 0060588F    fld        qword ptr [ebp-8]
 00605892    fsub       dword ptr ds:[6059EC]; 3:Single
 00605898    fmulp      st(1),st
 0060589A    fld        dword ptr ds:[6059EC]; 3:Single
 006058A0    fmul       qword ptr [ebp-10]
 006058A3    fdivp      st(1),st
 006058A5    fstp       qword ptr [ebp-30]
 006058A8    wait
 006058A9    fld        qword ptr [ebp-30]
 006058AC    fchs
 006058AE    fstp       qword ptr [ebp-40]
 006058B1    wait
 006058B2    fld        qword ptr [ebp+20]
 006058B5    fmul       qword ptr [ebp-8]
 006058B8    fstp       qword ptr [ebp-48]
 006058BB    wait
 006058BC    fld        qword ptr [ebp+8]
 006058BF    fmul       qword ptr [ebp+20]
 006058C2    fmul       qword ptr [ebp-10]
 006058C5    fstp       qword ptr [ebp-50]
 006058C8    wait
 006058C9    push       dword ptr [ebp-14]
 006058CC    push       dword ptr [ebp-18]
 006058CF    push       dword ptr [ebp-1C]
 006058D2    push       dword ptr [ebp-20]
 006058D5    push       dword ptr [ebp+1C]
 006058D8    push       dword ptr [ebp+18]
 006058DB    lea        ecx,[ebp-20]
 006058DE    lea        edx,[ebp-18]
 006058E1    mov        eax,esi
 006058E3    call       006055AC
 006058E8    push       dword ptr [ebp-24]
 006058EB    push       dword ptr [ebp-28]
 006058EE    push       dword ptr [ebp-2C]
 006058F1    push       dword ptr [ebp-30]
 006058F4    push       dword ptr [ebp+1C]
 006058F7    push       dword ptr [ebp+18]
 006058FA    lea        ecx,[ebp-30]
 006058FD    lea        edx,[ebp-28]
 00605900    mov        eax,esi
 00605902    call       006055AC
 00605907    push       dword ptr [ebp-34]
 0060590A    push       dword ptr [ebp-38]
 0060590D    push       dword ptr [ebp-3C]
 00605910    push       dword ptr [ebp-40]
 00605913    push       dword ptr [ebp+1C]
 00605916    push       dword ptr [ebp+18]
 00605919    lea        ecx,[ebp-40]
 0060591C    lea        edx,[ebp-38]
 0060591F    mov        eax,esi
 00605921    call       006055AC
 00605926    push       dword ptr [ebp-44]
 00605929    push       dword ptr [ebp-48]
 0060592C    push       dword ptr [ebp-4C]
 0060592F    push       dword ptr [ebp-50]
 00605932    push       dword ptr [ebp+1C]
 00605935    push       dword ptr [ebp+18]
 00605938    lea        ecx,[ebp-50]
 0060593B    lea        edx,[ebp-48]
 0060593E    mov        eax,esi
 00605940    call       006055AC
 00605945    mov        eax,dword ptr [esi+4]; TRPPDFPage.?f4:TRvRenderPDF
 00605948    fld        qword ptr [ebp+30]
 0060594B    fadd       qword ptr [ebp-18]
 0060594E    mov        edx,ebx
 00605950    shl        edx,3
 00605953    fstp       qword ptr [eax+edx*8+98]
 0060595A    wait
 0060595B    fld        qword ptr [ebp+28]
 0060595E    fsub       qword ptr [ebp-20]
 00605961    mov        edx,ebx
 00605963    shl        edx,3
 00605966    fstp       qword ptr [eax+edx*8+0B8]
 0060596D    wait
 0060596E    fld        qword ptr [ebp+30]
 00605971    fadd       qword ptr [ebp-28]
 00605974    mov        edx,ebx
 00605976    shl        edx,3
 00605979    fstp       qword ptr [eax+edx*8+0A0]
 00605980    wait
 00605981    fld        qword ptr [ebp+28]
 00605984    fsub       qword ptr [ebp-30]
 00605987    mov        edx,ebx
 00605989    shl        edx,3
 0060598C    fstp       qword ptr [eax+edx*8+0C0]
 00605993    wait
 00605994    fld        qword ptr [ebp+30]
 00605997    fadd       qword ptr [ebp-38]
 0060599A    mov        edx,ebx
 0060599C    shl        edx,3
 0060599F    fstp       qword ptr [eax+edx*8+0A8]
 006059A6    wait
 006059A7    fld        qword ptr [ebp+28]
 006059AA    fsub       qword ptr [ebp-40]
 006059AD    mov        edx,ebx
 006059AF    shl        edx,3
 006059B2    fstp       qword ptr [eax+edx*8+0C8]
 006059B9    wait
 006059BA    fld        qword ptr [ebp+30]
 006059BD    fadd       qword ptr [ebp-48]
 006059C0    mov        edx,ebx
 006059C2    shl        edx,3
 006059C5    fstp       qword ptr [eax+edx*8+0B0]
 006059CC    wait
 006059CD    fld        qword ptr [ebp+28]
 006059D0    fsub       qword ptr [ebp-50]
 006059D3    mov        edx,ebx
 006059D5    shl        edx,3
 006059D8    fstp       qword ptr [eax+edx*8+0D0]
 006059DF    wait
 006059E0    pop        esi
 006059E1    pop        ebx
 006059E2    mov        esp,ebp
 006059E4    pop        ebp
 006059E5    ret        30
*}
//end;

//006059F4
procedure sub_006059F4;
begin
{*
 006059F4    push       ebx
 006059F5    push       esi
 006059F6    push       edi
 006059F7    add        esp,0FFFFFFF8
 006059FA    mov        ebx,eax
 006059FC    mov        esi,dword ptr [ebx+4]; TRPPDFOutlines.?f4:TRvRenderPDF
 006059FF    mov        eax,dword ptr [ebx+0C]; TRPPDFOutlines.?fC:TMemoryStream
 00605A02    mov        dword ptr [esi+78],eax; TRvRenderPDF.?f78:TFileStream
 00605A05    mov        edi,dword ptr [esi+8C]; TRvRenderPDF.?f8C:dword
 00605A0B    push       0
 00605A0D    mov        eax,ebx
 00605A0F    call       00602A80
 00605A14    mov        dword ptr [esp+4],eax
 00605A18    mov        byte ptr [esp+8],0
 00605A1D    lea        ecx,[esp+4]
 00605A21    mov        edx,605AC0; '%d 0 obj'
 00605A26    mov        eax,esi
 00605A28    mov        esi,dword ptr [eax]
 00605A2A    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605A30    mov        edx,605AD4; '<<'
 00605A35    mov        eax,dword ptr [ebx+4]; TRPPDFOutlines.?f4:TRvRenderPDF
 00605A38    mov        ecx,dword ptr [eax]
 00605A3A    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605A40    mov        edx,605AE0; '/Type /Outlines'
 00605A45    mov        eax,dword ptr [ebx+4]; TRPPDFOutlines.?f4:TRvRenderPDF
 00605A48    mov        ecx,dword ptr [eax]
 00605A4A    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605A50    push       0
 00605A52    mov        eax,edi
 00605A54    mov        edx,dword ptr [eax]
 00605A56    call       dword ptr [edx+14]
 00605A59    mov        dword ptr [esp+4],eax
 00605A5D    mov        byte ptr [esp+8],0
 00605A62    lea        ecx,[esp+4]
 00605A66    mov        edx,605AF8; '/Count %d'
 00605A6B    mov        eax,dword ptr [ebx+4]; TRPPDFOutlines.?f4:TRvRenderPDF
 00605A6E    mov        esi,dword ptr [eax]
 00605A70    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605A76    mov        edx,605B0C; '>>'
 00605A7B    mov        eax,dword ptr [ebx+4]; TRPPDFOutlines.?f4:TRvRenderPDF
 00605A7E    mov        ecx,dword ptr [eax]
 00605A80    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605A86    mov        edx,605B18; 'endobj'
 00605A8B    mov        eax,dword ptr [ebx+4]; TRPPDFOutlines.?f4:TRvRenderPDF
 00605A8E    mov        ecx,dword ptr [eax]
 00605A90    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605A96    xor        edx,edx
 00605A98    mov        eax,dword ptr [ebx+4]; TRPPDFOutlines.?f4:TRvRenderPDF
 00605A9B    mov        ecx,dword ptr [eax]
 00605A9D    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605AA3    push       0
 00605AA5    push       0
 00605AA7    mov        eax,dword ptr [ebx+4]; TRPPDFOutlines.?f4:TRvRenderPDF
 00605AAA    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 00605AAD    call       TStream.SetPosition
 00605AB2    pop        ecx
 00605AB3    pop        edx
 00605AB4    pop        edi
 00605AB5    pop        esi
 00605AB6    pop        ebx
 00605AB7    ret
*}
end;

//00605B20
procedure sub_00605B20;
begin
{*
 00605B20    push       ebx
 00605B21    push       esi
 00605B22    add        esp,0FFFFFFF8
 00605B25    mov        ebx,eax
 00605B27    mov        esi,dword ptr [ebx+4]; TRPPDFProcSet.?f4:TRvRenderPDF
 00605B2A    mov        eax,dword ptr [ebx+0C]; TRPPDFProcSet.?fC:TMemoryStream
 00605B2D    mov        dword ptr [esi+78],eax; TRvRenderPDF.?f78:TFileStream
 00605B30    push       0
 00605B32    mov        eax,ebx
 00605B34    call       00602A80
 00605B39    mov        dword ptr [esp+4],eax
 00605B3D    mov        byte ptr [esp+8],0
 00605B42    lea        ecx,[esp+4]
 00605B46    mov        edx,605BC4; '%d 0 obj'
 00605B4B    mov        eax,esi
 00605B4D    mov        esi,dword ptr [eax]
 00605B4F    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605B55    mov        eax,dword ptr [ebx+4]; TRPPDFProcSet.?f4:TRvRenderPDF
 00605B58    mov        eax,dword ptr [eax+94]; TRvRenderPDF.?f94:dword
 00605B5E    mov        edx,dword ptr [eax]
 00605B60    call       dword ptr [edx+14]
 00605B63    test       eax,eax
>00605B65    jle        00605B79
 00605B67    mov        edx,605BD8; '[/PDF /Text /ImageB /ImageC /ImageI]'
 00605B6C    mov        eax,dword ptr [ebx+4]; TRPPDFProcSet.?f4:TRvRenderPDF
 00605B6F    mov        ecx,dword ptr [eax]
 00605B71    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
>00605B77    jmp        00605B89
 00605B79    mov        edx,605C08; '[/PDF /Text]'
 00605B7E    mov        eax,dword ptr [ebx+4]; TRPPDFProcSet.?f4:TRvRenderPDF
 00605B81    mov        ecx,dword ptr [eax]
 00605B83    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605B89    mov        edx,605C20; 'endobj'
 00605B8E    mov        eax,dword ptr [ebx+4]; TRPPDFProcSet.?f4:TRvRenderPDF
 00605B91    mov        ecx,dword ptr [eax]
 00605B93    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605B99    xor        edx,edx
 00605B9B    mov        eax,dword ptr [ebx+4]; TRPPDFProcSet.?f4:TRvRenderPDF
 00605B9E    mov        ecx,dword ptr [eax]
 00605BA0    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605BA6    push       0
 00605BA8    push       0
 00605BAA    mov        eax,dword ptr [ebx+4]; TRPPDFProcSet.?f4:TRvRenderPDF
 00605BAD    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 00605BB0    call       TStream.SetPosition
 00605BB5    pop        ecx
 00605BB6    pop        edx
 00605BB7    pop        esi
 00605BB8    pop        ebx
 00605BB9    ret
*}
end;

//00605C28
//function sub_00605C28(?:?; ?:?):?;
//begin
{*
 00605C28    mov        ecx,edx
 00605C2A    dec        ecx
 00605C2B    mov        edx,1
 00605C30    shl        edx,cl
 00605C32    or         eax,edx
 00605C34    ret
*}
//end;

//00605C38
//procedure sub_00605C38(?:?; ?:Pointer; ?:word);
//begin
{*
 00605C38    push       ebx
 00605C39    push       esi
 00605C3A    push       edi
 00605C3B    push       ebp
 00605C3C    add        esp,0FFFFFFF4
 00605C3F    mov        edi,edx
 00605C41    mov        ebx,eax
 00605C43    mov        dword ptr [ebx+28],ecx
 00605C46    mov        eax,dword ptr [edi+3D]
 00605C49    mov        dword ptr [esp],eax
 00605C4C    mov        eax,dword ptr [edi+41]
 00605C4F    mov        dword ptr [esp+4],eax
 00605C53    mov        ax,word ptr [edi+45]
 00605C57    mov        word ptr [esp+8],ax
 00605C5C    lea        esi,[edi+4]
 00605C5F    xor        ebp,ebp
 00605C61    mov        dword ptr [ebx+14],ebp
 00605C64    mov        edx,6
 00605C69    mov        eax,ebp
 00605C6B    call       00605C28
 00605C70    mov        dword ptr [ebx+14],eax
 00605C73    cmp        byte ptr [esp+3],9
>00605C78    jne        00605C8A
 00605C7A    mov        edx,1
 00605C7F    mov        eax,dword ptr [ebx+14]
 00605C82    call       00605C28
 00605C87    mov        dword ptr [ebx+14],eax
 00605C8A    cmp        byte ptr [esp],3
>00605C8E    jne        00605CA0
 00605C90    mov        edx,4
 00605C95    mov        eax,dword ptr [ebx+14]
 00605C98    call       00605C28
 00605C9D    mov        dword ptr [ebx+14],eax
 00605CA0    cmp        dword ptr [ebx+34],0
>00605CA4    je         00605CB6
 00605CA6    mov        edx,7
 00605CAB    mov        eax,dword ptr [ebx+14]
 00605CAE    call       00605C28
 00605CB3    mov        dword ptr [ebx+14],eax
 00605CB6    push       esi
 00605CB7    push       edi
 00605CB8    lea        esi,[edi+74]
 00605CBB    lea        edi,[ebx+18]
 00605CBE    movs       dword ptr [edi],dword ptr [esi]
 00605CBF    movs       dword ptr [edi],dword ptr [esi]
 00605CC0    movs       dword ptr [edi],dword ptr [esi]
 00605CC1    movs       dword ptr [edi],dword ptr [esi]
 00605CC2    pop        edi
 00605CC3    pop        esi
 00605CC4    mov        dword ptr [ebx+2C],50
 00605CCB    mov        dword ptr [ebx+30],50
 00605CD2    mov        eax,dword ptr [edi+58]
 00605CD5    mov        dword ptr [ebx+34],eax
 00605CD8    mov        eax,dword ptr [esi+4]
 00605CDB    mov        dword ptr [ebx+38],eax
 00605CDE    fild       dword ptr [esi+4]
 00605CE1    fdiv       dword ptr ds:[605D1C]; 2:Single
 00605CE7    call       @ROUND
 00605CEC    mov        dword ptr [ebx+3C],eax
 00605CEF    mov        eax,dword ptr [esi+4]
 00605CF2    mov        dword ptr [ebx+40],eax
 00605CF5    mov        eax,dword ptr [esi+8]
 00605CF8    neg        eax
 00605CFA    mov        dword ptr [ebx+44],eax
 00605CFD    mov        eax,dword ptr [esi+0C]
 00605D00    add        eax,dword ptr [esi+10]
 00605D03    mov        dword ptr [ebx+48],eax
 00605D06    mov        eax,dword ptr [esi+18]
 00605D09    mov        dword ptr [ebx+4C],eax
 00605D0C    mov        eax,dword ptr [esi+14]
 00605D0F    mov        dword ptr [ebx+50],eax
 00605D12    add        esp,0C
 00605D15    pop        ebp
 00605D16    pop        edi
 00605D17    pop        esi
 00605D18    pop        ebx
 00605D19    ret
*}
//end;

//00605D20
procedure sub_00605D20;
begin
{*
 00605D20    push       ebx
 00605D21    push       esi
 00605D22    add        esp,0FFFFFFD8
 00605D25    mov        ebx,eax
 00605D27    mov        esi,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605D2A    mov        eax,dword ptr [ebx+0C]; TRPPDFFontDescriptor.?fC:TMemoryStream
 00605D2D    mov        dword ptr [esi+78],eax; TRvRenderPDF.?f78:TFileStream
 00605D30    push       0
 00605D32    mov        eax,ebx
 00605D34    call       00602A80
 00605D39    mov        dword ptr [esp+4],eax
 00605D3D    mov        byte ptr [esp+8],0
 00605D42    lea        ecx,[esp+4]
 00605D46    mov        edx,605FF8; '%d 0 obj'
 00605D4B    mov        eax,esi
 00605D4D    mov        esi,dword ptr [eax]
 00605D4F    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605D55    mov        edx,60600C; '<<'
 00605D5A    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605D5D    mov        ecx,dword ptr [eax]
 00605D5F    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605D65    mov        edx,606018; '/Type /FontDescriptor'
 00605D6A    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605D6D    mov        ecx,dword ptr [eax]
 00605D6F    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605D75    push       0
 00605D77    mov        eax,dword ptr [ebx+10]; TRPPDFFontDescriptor.?f10:String
 00605D7A    mov        dword ptr [esp+4],eax
 00605D7E    mov        byte ptr [esp+8],0B
 00605D83    lea        ecx,[esp+4]
 00605D87    mov        edx,606038; '/FontName /%s'
 00605D8C    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605D8F    mov        esi,dword ptr [eax]
 00605D91    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605D97    push       0
 00605D99    mov        eax,dword ptr [ebx+14]; TRPPDFFontDescriptor.?f14:dword
 00605D9C    mov        dword ptr [esp+4],eax
 00605DA0    mov        byte ptr [esp+8],0
 00605DA5    lea        ecx,[esp+4]
 00605DA9    mov        edx,606050; '/Flags %d'
 00605DAE    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605DB1    mov        esi,dword ptr [eax]
 00605DB3    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605DB9    push       3
 00605DBB    mov        eax,dword ptr [ebx+18]; TRPPDFFontDescriptor.?f18:dword
 00605DBE    mov        dword ptr [esp+0C],eax
 00605DC2    mov        byte ptr [esp+10],0
 00605DC7    mov        eax,dword ptr [ebx+24]; TRPPDFFontDescriptor.?f24:dword
 00605DCA    mov        dword ptr [esp+14],eax
 00605DCE    mov        byte ptr [esp+18],0
 00605DD3    mov        eax,dword ptr [ebx+20]; TRPPDFFontDescriptor.?f20:dword
 00605DD6    mov        dword ptr [esp+1C],eax
 00605DDA    mov        byte ptr [esp+20],0
 00605DDF    mov        eax,dword ptr [ebx+1C]; TRPPDFFontDescriptor.?f1C:dword
 00605DE2    mov        dword ptr [esp+24],eax
 00605DE6    mov        byte ptr [esp+28],0
 00605DEB    lea        ecx,[esp+0C]
 00605DEF    mov        edx,606064; '/FontBBox [%d %d %d %d]'
 00605DF4    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605DF7    mov        esi,dword ptr [eax]
 00605DF9    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605DFF    push       0
 00605E01    mov        eax,dword ptr [ebx+28]; TRPPDFFontDescriptor.?f28:dword
 00605E04    mov        dword ptr [esp+4],eax
 00605E08    mov        byte ptr [esp+8],0
 00605E0D    lea        ecx,[esp+4]
 00605E11    mov        edx,606084; '/MissingWidth %d'
 00605E16    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605E19    mov        esi,dword ptr [eax]
 00605E1B    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605E21    push       0
 00605E23    mov        eax,dword ptr [ebx+2C]; TRPPDFFontDescriptor.?f2C:dword
 00605E26    mov        dword ptr [esp+4],eax
 00605E2A    mov        byte ptr [esp+8],0
 00605E2F    lea        ecx,[esp+4]
 00605E33    mov        edx,6060A0; '/StemV %d'
 00605E38    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605E3B    mov        esi,dword ptr [eax]
 00605E3D    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605E43    push       0
 00605E45    mov        eax,dword ptr [ebx+30]; TRPPDFFontDescriptor.?f30:dword
 00605E48    mov        dword ptr [esp+4],eax
 00605E4C    mov        byte ptr [esp+8],0
 00605E51    lea        ecx,[esp+4]
 00605E55    mov        edx,6060B4; '/StemH %d'
 00605E5A    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605E5D    mov        esi,dword ptr [eax]
 00605E5F    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605E65    push       0
 00605E67    mov        eax,dword ptr [ebx+34]; TRPPDFFontDescriptor.?f34:dword
 00605E6A    mov        dword ptr [esp+4],eax
 00605E6E    mov        byte ptr [esp+8],0
 00605E73    lea        ecx,[esp+4]
 00605E77    mov        edx,6060C8; '/ItalicAngle %d'
 00605E7C    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605E7F    mov        esi,dword ptr [eax]
 00605E81    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605E87    push       0
 00605E89    mov        eax,dword ptr [ebx+38]; TRPPDFFontDescriptor.?f38:dword
 00605E8C    mov        dword ptr [esp+4],eax
 00605E90    mov        byte ptr [esp+8],0
 00605E95    lea        ecx,[esp+4]
 00605E99    mov        edx,6060E0; '/CapHeight %d'
 00605E9E    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605EA1    mov        esi,dword ptr [eax]
 00605EA3    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605EA9    push       0
 00605EAB    mov        eax,dword ptr [ebx+3C]; TRPPDFFontDescriptor.?f3C:dword
 00605EAE    mov        dword ptr [esp+4],eax
 00605EB2    mov        byte ptr [esp+8],0
 00605EB7    lea        ecx,[esp+4]
 00605EBB    mov        edx,6060F8; '/XHeight %d'
 00605EC0    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605EC3    mov        esi,dword ptr [eax]
 00605EC5    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605ECB    push       0
 00605ECD    mov        eax,dword ptr [ebx+40]; TRPPDFFontDescriptor.?f40:dword
 00605ED0    mov        dword ptr [esp+4],eax
 00605ED4    mov        byte ptr [esp+8],0
 00605ED9    lea        ecx,[esp+4]
 00605EDD    mov        edx,60610C; '/Ascent %d'
 00605EE2    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605EE5    mov        esi,dword ptr [eax]
 00605EE7    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605EED    push       0
 00605EEF    mov        eax,dword ptr [ebx+44]; TRPPDFFontDescriptor.?f44:dword
 00605EF2    mov        dword ptr [esp+4],eax
 00605EF6    mov        byte ptr [esp+8],0
 00605EFB    lea        ecx,[esp+4]
 00605EFF    mov        edx,606120; '/Descent %d'
 00605F04    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605F07    mov        esi,dword ptr [eax]
 00605F09    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605F0F    push       0
 00605F11    mov        eax,dword ptr [ebx+48]; TRPPDFFontDescriptor.?f48:dword
 00605F14    mov        dword ptr [esp+4],eax
 00605F18    mov        byte ptr [esp+8],0
 00605F1D    lea        ecx,[esp+4]
 00605F21    mov        edx,606134; '/Leading %d'
 00605F26    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605F29    mov        esi,dword ptr [eax]
 00605F2B    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605F31    push       0
 00605F33    mov        eax,dword ptr [ebx+4C]; TRPPDFFontDescriptor.?f4C:dword
 00605F36    mov        dword ptr [esp+4],eax
 00605F3A    mov        byte ptr [esp+8],0
 00605F3F    lea        ecx,[esp+4]
 00605F43    mov        edx,606148; '/MaxWidth %d'
 00605F48    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605F4B    mov        esi,dword ptr [eax]
 00605F4D    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605F53    push       0
 00605F55    mov        eax,dword ptr [ebx+50]; TRPPDFFontDescriptor.?f50:dword
 00605F58    mov        dword ptr [esp+4],eax
 00605F5C    mov        byte ptr [esp+8],0
 00605F61    lea        ecx,[esp+4]
 00605F65    mov        edx,606160; '/AvgWidth %d'
 00605F6A    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605F6D    mov        esi,dword ptr [eax]
 00605F6F    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605F75    mov        esi,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605F78    cmp        byte ptr [esi+0D4],0; TRvRenderPDF.EmbedFonts:Boolean
>00605F7F    je         00605FAD
 00605F81    cmp        byte ptr [ebx+54],0; TRPPDFFontDescriptor.?f54:byte
>00605F85    je         00605FAD
 00605F87    push       0
 00605F89    mov        eax,ebx
 00605F8B    call       00602A80
 00605F90    inc        eax
 00605F91    mov        dword ptr [esp+4],eax
 00605F95    mov        byte ptr [esp+8],0
 00605F9A    lea        ecx,[esp+4]
 00605F9E    mov        edx,606178; '/FontFile2 %d 0 R'
 00605FA3    mov        eax,esi
 00605FA5    mov        esi,dword ptr [eax]
 00605FA7    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00605FAD    mov        edx,606194; '>>'
 00605FB2    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605FB5    mov        ecx,dword ptr [eax]
 00605FB7    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605FBD    mov        edx,6061A0; 'endobj'
 00605FC2    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605FC5    mov        ecx,dword ptr [eax]
 00605FC7    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605FCD    xor        edx,edx
 00605FCF    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605FD2    mov        ecx,dword ptr [eax]
 00605FD4    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00605FDA    push       0
 00605FDC    push       0
 00605FDE    mov        eax,dword ptr [ebx+4]; TRPPDFFontDescriptor.?f4:TRvRenderPDF
 00605FE1    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 00605FE4    call       TStream.SetPosition
 00605FE9    add        esp,28
 00605FEC    pop        esi
 00605FED    pop        ebx
 00605FEE    ret
*}
end;

//006061A8
constructor TRPPDFFontFile.Create;
begin
{*
 006061A8    push       ebx
 006061A9    push       esi
 006061AA    test       dl,dl
>006061AC    je         006061B6
 006061AE    add        esp,0FFFFFFF0
 006061B1    call       @ClassCreate
 006061B6    mov        ebx,edx
 006061B8    mov        esi,eax
 006061BA    xor        edx,edx
 006061BC    mov        eax,esi
 006061BE    call       TRPPDFCatalog.Create
 006061C3    mov        dl,1
 006061C5    mov        eax,[0041CBF8]; TMemoryStream
 006061CA    call       TObject.Create; TMemoryStream.Create
 006061CF    mov        dword ptr [esi+10],eax; TRPPDFFontFile.?f10:TMemoryStream
 006061D2    mov        eax,esi
 006061D4    test       bl,bl
>006061D6    je         006061E7
 006061D8    call       @AfterConstruction
 006061DD    pop        dword ptr fs:[0]
 006061E4    add        esp,0C
 006061E7    mov        eax,esi
 006061E9    pop        esi
 006061EA    pop        ebx
 006061EB    ret
*}
end;

//006061EC
destructor TRPPDFFontFile.Destroy;
begin
{*
 006061EC    push       ebx
 006061ED    push       esi
 006061EE    call       @BeforeDestruction
 006061F3    mov        ebx,edx
 006061F5    mov        esi,eax
 006061F7    lea        eax,[esi+10]; TRPPDFFontFile.?f10:TMemoryStream
 006061FA    call       FreeAndNil
 006061FF    test       bl,bl
>00606201    jle        0060620A
 00606203    mov        eax,esi
 00606205    call       @ClassDestroy
 0060620A    pop        esi
 0060620B    pop        ebx
 0060620C    ret
*}
end;

//00606210
//procedure sub_00606210(?:TRPPDFFontFile; ?:HDC);
//begin
{*
 00606210    push       ebp
 00606211    mov        ebp,esp
 00606213    push       ecx
 00606214    push       ebx
 00606215    push       esi
 00606216    push       edi
 00606217    mov        edi,edx
 00606219    mov        esi,eax
 0060621B    push       0
 0060621D    push       0
 0060621F    push       0
 00606221    push       0
 00606223    push       edi
 00606224    call       gdi32.GetFontData
 00606229    mov        ebx,eax
 0060622B    mov        eax,ebx
 0060622D    call       @GetMem
 00606232    mov        dword ptr [ebp-4],eax
 00606235    xor        eax,eax
 00606237    push       ebp
 00606238    push       606283
 0060623D    push       dword ptr fs:[eax]
 00606240    mov        dword ptr fs:[eax],esp
 00606243    push       ebx
 00606244    mov        eax,dword ptr [ebp-4]
 00606247    push       eax
 00606248    push       0
 0060624A    push       0
 0060624C    push       edi
 0060624D    call       gdi32.GetFontData
 00606252    mov        ebx,eax
 00606254    push       0
 00606256    push       0
 00606258    mov        eax,dword ptr [esi+10]; TRPPDFFontFile.?f10:TMemoryStream
 0060625B    call       TStream.SetPosition
 00606260    mov        edx,dword ptr [ebp-4]
 00606263    mov        eax,dword ptr [esi+10]; TRPPDFFontFile.?f10:TMemoryStream
 00606266    mov        ecx,ebx
 00606268    call       TStream.WriteBuffer
 0060626D    xor        eax,eax
 0060626F    pop        edx
 00606270    pop        ecx
 00606271    pop        ecx
 00606272    mov        dword ptr fs:[eax],edx
 00606275    push       60628A
 0060627A    mov        eax,dword ptr [ebp-4]
 0060627D    call       @FreeMem
 00606282    ret
<00606283    jmp        @HandleFinally
<00606288    jmp        0060627A
 0060628A    pop        edi
 0060628B    pop        esi
 0060628C    pop        ebx
 0060628D    pop        ecx
 0060628E    pop        ebp
 0060628F    ret
*}
//end;

//00606290
procedure sub_00606290;
begin
{*
 00606290    push       ebp
 00606291    mov        ebp,esp
 00606293    add        esp,0FFFFFFE0
 00606296    push       ebx
 00606297    push       esi
 00606298    xor        edx,edx
 0060629A    mov        dword ptr [ebp-20],edx
 0060629D    mov        dword ptr [ebp-8],edx
 006062A0    mov        ebx,eax
 006062A2    xor        eax,eax
 006062A4    push       ebp
 006062A5    push       606525
 006062AA    push       dword ptr fs:[eax]
 006062AD    mov        dword ptr fs:[eax],esp
 006062B0    mov        edx,dword ptr [ebx+0C]; TRPPDFFontFile.?fC:TMemoryStream
 006062B3    mov        eax,dword ptr [ebx+4]; TRPPDFFontFile.?f4:TRvRenderPDF
 006062B6    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 006062B9    mov        dword ptr [ebp-0C],eax
 006062BC    push       0
 006062BE    mov        eax,ebx
 006062C0    call       00602A80
 006062C5    mov        dword ptr [ebp-14],eax
 006062C8    mov        byte ptr [ebp-10],0
 006062CC    lea        ecx,[ebp-14]
 006062CF    mov        edx,60653C; '%d 0 obj'
 006062D4    mov        eax,dword ptr [ebp-0C]
 006062D7    mov        esi,dword ptr [eax]
 006062D9    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 006062DF    mov        eax,dword ptr [ebp-0C]
 006062E2    cmp        byte ptr [eax+0D3],0; TRvRenderPDF.UseCompression:Boolean
>006062E9    je         0060643F
 006062EF    mov        eax,dword ptr [ebp-0C]
 006062F2    cmp        word ptr [eax+1E2],0; TRvRenderPDF.?f1E2:word
>006062FA    je         0060643F
 00606300    mov        dl,1
 00606302    mov        eax,[0041CBF8]; TMemoryStream
 00606307    call       TObject.Create; TMemoryStream.Create
 0060630C    mov        dword ptr [ebp-4],eax
 0060630F    xor        eax,eax
 00606311    push       ebp
 00606312    push       606438
 00606317    push       dword ptr fs:[eax]
 0060631A    mov        dword ptr fs:[eax],esp
 0060631D    lea        eax,[ebp-8]
 00606320    mov        edx,606550; 'FlateDecode'
 00606325    call       @LStrLAsg
 0060632A    push       0
 0060632C    push       0
 0060632E    mov        eax,dword ptr [ebx+10]; TRPPDFFontFile.?f10:TMemoryStream
 00606331    call       TStream.SetPosition
 00606336    lea        eax,[ebp-8]
 00606339    push       eax
 0060633A    mov        edx,dword ptr [ebx+10]; TRPPDFFontFile.?f10:TMemoryStream
 0060633D    mov        esi,dword ptr [ebp-0C]
 00606340    mov        ecx,dword ptr [ebp-4]
 00606343    mov        eax,dword ptr [esi+1E4]; TRvRenderPDF.?f1E4:dword
 00606349    call       dword ptr [esi+1E0]; TRvRenderPDF.OnCompress
 0060634F    mov        edx,606564; '<<'
 00606354    mov        eax,dword ptr [ebp-0C]
 00606357    mov        ecx,dword ptr [eax]
 00606359    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060635F    push       0
 00606361    mov        eax,dword ptr [ebx+10]; TRPPDFFontFile.?f10:TMemoryStream
 00606364    mov        edx,dword ptr [eax]
 00606366    call       dword ptr [edx]; TStream.GetSize
 00606368    mov        dword ptr [ebp-1C],eax
 0060636B    mov        dword ptr [ebp-18],edx
 0060636E    lea        eax,[ebp-1C]
 00606371    mov        dword ptr [ebp-14],eax
 00606374    mov        byte ptr [ebp-10],10
 00606378    lea        ecx,[ebp-14]
 0060637B    mov        edx,606570; '/Length %d '
 00606380    mov        eax,dword ptr [ebp-0C]
 00606383    mov        esi,dword ptr [eax]
 00606385    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 0060638B    push       0
 0060638D    mov        eax,dword ptr [ebx+10]; TRPPDFFontFile.?f10:TMemoryStream
 00606390    mov        edx,dword ptr [eax]
 00606392    call       dword ptr [edx]; TStream.GetSize
 00606394    mov        dword ptr [ebp-1C],eax
 00606397    mov        dword ptr [ebp-18],edx
 0060639A    lea        eax,[ebp-1C]
 0060639D    mov        dword ptr [ebp-14],eax
 006063A0    mov        byte ptr [ebp-10],10
 006063A4    lea        ecx,[ebp-14]
 006063A7    mov        edx,606584; '/Length1 %d'
 006063AC    mov        eax,dword ptr [ebp-0C]
 006063AF    mov        ebx,dword ptr [eax]
 006063B1    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 006063B7    push       606598; '/Filter [/'
 006063BC    push       dword ptr [ebp-8]
 006063BF    push       6065AC; ']'
 006063C4    lea        eax,[ebp-20]
 006063C7    mov        edx,3
 006063CC    call       @LStrCatN
 006063D1    mov        edx,dword ptr [ebp-20]
 006063D4    mov        eax,dword ptr [ebp-0C]
 006063D7    mov        ecx,dword ptr [eax]
 006063D9    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006063DF    mov        edx,6065B8; '>>'
 006063E4    mov        eax,dword ptr [ebp-0C]
 006063E7    mov        ecx,dword ptr [eax]
 006063E9    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006063EF    mov        edx,6065C4; 'stream'
 006063F4    mov        eax,dword ptr [ebp-0C]
 006063F7    mov        ecx,dword ptr [eax]
 006063F9    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006063FF    push       0
 00606401    push       0
 00606403    mov        eax,dword ptr [ebp-4]
 00606406    call       TStream.SetPosition
 0060640B    mov        eax,dword ptr [ebp-4]
 0060640E    mov        edx,dword ptr [eax]
 00606410    call       dword ptr [edx]; TStream.GetSize
 00606412    push       edx
 00606413    push       eax
 00606414    mov        eax,dword ptr [ebp-0C]
 00606417    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 0060641A    mov        edx,dword ptr [ebp-4]
 0060641D    call       TStream.CopyFrom
 00606422    xor        eax,eax
 00606424    pop        edx
 00606425    pop        ecx
 00606426    pop        ecx
 00606427    mov        dword ptr fs:[eax],edx
 0060642A    push       6064CB
 0060642F    mov        eax,dword ptr [ebp-4]
 00606432    call       TObject.Free
 00606437    ret
<00606438    jmp        @HandleFinally
<0060643D    jmp        0060642F
 0060643F    push       0
 00606441    mov        eax,dword ptr [ebx+10]; TRPPDFFontFile.?f10:TMemoryStream
 00606444    mov        edx,dword ptr [eax]
 00606446    call       dword ptr [edx]; TStream.GetSize
 00606448    mov        dword ptr [ebp-1C],eax
 0060644B    mov        dword ptr [ebp-18],edx
 0060644E    lea        eax,[ebp-1C]
 00606451    mov        dword ptr [ebp-14],eax
 00606454    mov        byte ptr [ebp-10],10
 00606458    lea        ecx,[ebp-14]
 0060645B    mov        edx,6065D4; '<< /Length %d '
 00606460    mov        eax,dword ptr [ebp-0C]
 00606463    mov        esi,dword ptr [eax]
 00606465    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 0060646B    push       0
 0060646D    mov        eax,dword ptr [ebx+10]; TRPPDFFontFile.?f10:TMemoryStream
 00606470    mov        edx,dword ptr [eax]
 00606472    call       dword ptr [edx]; TStream.GetSize
 00606474    mov        dword ptr [ebp-1C],eax
 00606477    mov        dword ptr [ebp-18],edx
 0060647A    lea        eax,[ebp-1C]
 0060647D    mov        dword ptr [ebp-14],eax
 00606480    mov        byte ptr [ebp-10],10
 00606484    lea        ecx,[ebp-14]
 00606487    mov        edx,6065EC; '/Length1 %d >>'
 0060648C    mov        eax,dword ptr [ebp-0C]
 0060648F    mov        esi,dword ptr [eax]
 00606491    call       dword ptr [esi+0C8]; TRvRenderPDF.sub_00601D44
 00606497    mov        edx,6065C4; 'stream'
 0060649C    mov        eax,dword ptr [ebp-0C]
 0060649F    mov        ecx,dword ptr [eax]
 006064A1    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006064A7    push       0
 006064A9    push       0
 006064AB    mov        eax,dword ptr [ebx+10]; TRPPDFFontFile.?f10:TMemoryStream
 006064AE    call       TStream.SetPosition
 006064B3    mov        esi,dword ptr [ebx+10]; TRPPDFFontFile.?f10:TMemoryStream
 006064B6    mov        eax,esi
 006064B8    mov        edx,dword ptr [eax]
 006064BA    call       dword ptr [edx]; TStream.GetSize
 006064BC    push       edx
 006064BD    push       eax
 006064BE    mov        edx,esi
 006064C0    mov        eax,dword ptr [ebp-0C]
 006064C3    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 006064C6    call       TStream.CopyFrom
 006064CB    mov        edx,606604; 'endstream'
 006064D0    mov        eax,dword ptr [ebp-0C]
 006064D3    mov        ecx,dword ptr [eax]
 006064D5    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006064DB    mov        edx,606618; 'endobj'
 006064E0    mov        eax,dword ptr [ebp-0C]
 006064E3    mov        ecx,dword ptr [eax]
 006064E5    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006064EB    xor        edx,edx
 006064ED    mov        eax,dword ptr [ebp-0C]
 006064F0    mov        ecx,dword ptr [eax]
 006064F2    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006064F8    push       0
 006064FA    push       0
 006064FC    mov        eax,dword ptr [ebp-0C]
 006064FF    mov        eax,dword ptr [eax+78]; TRvRenderPDF.?f78:TFileStream
 00606502    call       TStream.SetPosition
 00606507    xor        eax,eax
 00606509    pop        edx
 0060650A    pop        ecx
 0060650B    pop        ecx
 0060650C    mov        dword ptr fs:[eax],edx
 0060650F    push       60652C
 00606514    lea        eax,[ebp-20]
 00606517    call       @LStrClr
 0060651C    lea        eax,[ebp-8]
 0060651F    call       @LStrClr
 00606524    ret
<00606525    jmp        @HandleFinally
<0060652A    jmp        00606514
 0060652C    pop        esi
 0060652D    pop        ebx
 0060652E    mov        esp,ebp
 00606530    pop        ebp
 00606531    ret
*}
end;

//00606620
constructor TRPPDFFontTrueType.Create;
begin
{*
 00606620    push       ebx
 00606621    push       esi
 00606622    push       edi
 00606623    test       dl,dl
>00606625    je         0060662F
 00606627    add        esp,0FFFFFFF0
 0060662A    call       @ClassCreate
 0060662F    mov        esi,ecx
 00606631    mov        ebx,edx
 00606633    mov        edi,eax
 00606635    mov        ecx,esi
 00606637    xor        edx,edx
 00606639    mov        eax,edi
 0060663B    call       TRPPDFFont.Create
 00606640    lea        eax,[edi+10]; TRPPDFFontTrueType.?f10:String
 00606643    mov        edx,606684; 'TrueType'
 00606648    call       @LStrAsg
 0060664D    mov        ecx,esi
 0060664F    mov        dl,1
 00606651    mov        eax,[005FF1E8]; TRPPDFFontDescriptor
 00606656    call       TRPPDFCatalog.Create; TRPPDFFontDescriptor.Create
 0060665B    mov        dword ptr [edi+220],eax; TRPPDFFontTrueType.?f220:TRPPDFFontDescriptor
 00606661    mov        eax,edi
 00606663    test       bl,bl
>00606665    je         00606676
 00606667    call       @AfterConstruction
 0060666C    pop        dword ptr fs:[0]
 00606673    add        esp,0C
 00606676    mov        eax,edi
 00606678    pop        edi
 00606679    pop        esi
 0060667A    pop        ebx
 0060667B    ret
*}
end;

//00606690
destructor TRPPDFFontTrueType.Destroy;
begin
{*
 00606690    push       ebx
 00606691    push       esi
 00606692    call       @BeforeDestruction
 00606697    mov        ebx,edx
 00606699    mov        esi,eax
 0060669B    lea        eax,[esi+220]; TRPPDFFontTrueType.?f220:TRPPDFFontDescriptor
 006066A1    call       FreeAndNil
 006066A6    cmp        dword ptr [esi+224],0; TRPPDFFontTrueType.?f224:dword
>006066AD    je         006066BA
 006066AF    lea        eax,[esi+224]; TRPPDFFontTrueType.?f224:dword
 006066B5    call       FreeAndNil
 006066BA    test       bl,bl
>006066BC    jle        006066C5
 006066BE    mov        eax,esi
 006066C0    call       @ClassDestroy
 006066C5    pop        esi
 006066C6    pop        ebx
 006066C7    ret
*}
end;

//006066C8
procedure sub_006066C8;
begin
{*
 006066C8    push       ebp
 006066C9    mov        ebp,esp
 006066CB    add        esp,0FFFFFFF0
 006066CE    push       ebx
 006066CF    push       esi
 006066D0    push       edi
 006066D1    xor        edx,edx
 006066D3    mov        dword ptr [ebp-10],edx
 006066D6    mov        dword ptr [ebp-0C],edx
 006066D9    mov        esi,eax
 006066DB    xor        eax,eax
 006066DD    push       ebp
 006066DE    push       6068E6
 006066E3    push       dword ptr fs:[eax]
 006066E6    mov        dword ptr fs:[eax],esp
 006066E9    mov        eax,dword ptr [esi+4]; TRPPDFFontTrueType.?f4:TRvRenderPDF
 006066EC    mov        edx,dword ptr [esi+0C]; TRPPDFFontTrueType.?fC:TMemoryStream
 006066EF    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 006066F2    mov        edi,eax
 006066F4    push       0
 006066F6    mov        eax,esi
 006066F8    call       00602A80
 006066FD    mov        dword ptr [ebp-8],eax
 00606700    mov        byte ptr [ebp-4],0
 00606704    lea        ecx,[ebp-8]
 00606707    mov        edx,6068FC; '%d 0 obj'
 0060670C    mov        eax,edi
 0060670E    mov        ebx,dword ptr [eax]
 00606710    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 00606716    mov        edx,606910; '<<'
 0060671B    mov        eax,edi
 0060671D    mov        ecx,dword ptr [eax]
 0060671F    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00606725    mov        edx,60691C; '/Type /Font'
 0060672A    mov        eax,edi
 0060672C    mov        ecx,dword ptr [eax]
 0060672E    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00606734    push       0
 00606736    mov        eax,dword ptr [esi+10]; TRPPDFFontTrueType.?f10:String
 00606739    mov        dword ptr [ebp-8],eax
 0060673C    mov        byte ptr [ebp-4],0B
 00606740    lea        ecx,[ebp-8]
 00606743    mov        edx,606930; '/Subtype /%s'
 00606748    mov        eax,edi
 0060674A    mov        ebx,dword ptr [eax]
 0060674C    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 00606752    push       0
 00606754    mov        eax,dword ptr [esi+14]; TRPPDFFontTrueType.?f14:String
 00606757    mov        dword ptr [ebp-8],eax
 0060675A    mov        byte ptr [ebp-4],0B
 0060675E    lea        ecx,[ebp-8]
 00606761    mov        edx,606948; '/Name /%s'
 00606766    mov        eax,edi
 00606768    mov        ebx,dword ptr [eax]
 0060676A    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 00606770    push       0
 00606772    mov        eax,dword ptr [esi+18]; TRPPDFFontTrueType.?f18:String
 00606775    mov        dword ptr [ebp-8],eax
 00606778    mov        byte ptr [ebp-4],0B
 0060677C    lea        ecx,[ebp-8]
 0060677F    mov        edx,60695C; '/BaseFont /%s'
 00606784    mov        eax,edi
 00606786    mov        ebx,dword ptr [eax]
 00606788    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 0060678E    xor        eax,eax
 00606790    mov        al,byte ptr [edi+0C0]; TRvRenderPDF.FontEncoding:TPDFFontEncoding
 00606796    mov        ecx,dword ptr [eax*4+619828]; gvar_00619828:array[5] of String
 0060679D    lea        eax,[ebp-0C]
 006067A0    mov        edx,606974; '/Encoding /'
 006067A5    call       @LStrCat3
 006067AA    mov        edx,dword ptr [ebp-0C]
 006067AD    mov        eax,edi
 006067AF    mov        ecx,dword ptr [eax]
 006067B1    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006067B7    push       0
 006067B9    mov        eax,dword ptr [esi+228]; TRPPDFFontTrueType.?f228:dword
 006067BF    mov        dword ptr [ebp-8],eax
 006067C2    mov        byte ptr [ebp-4],0
 006067C6    lea        ecx,[ebp-8]
 006067C9    mov        edx,606988; '/FirstChar %d'
 006067CE    mov        eax,dword ptr [esi+4]; TRPPDFFontTrueType.?f4:TRvRenderPDF
 006067D1    mov        ebx,dword ptr [eax]
 006067D3    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 006067D9    push       0
 006067DB    mov        eax,dword ptr [esi+22C]; TRPPDFFontTrueType.?f22C:dword
 006067E1    mov        dword ptr [ebp-8],eax
 006067E4    mov        byte ptr [ebp-4],0
 006067E8    lea        ecx,[ebp-8]
 006067EB    mov        edx,6069A0; '/LastChar %d'
 006067F0    mov        eax,dword ptr [esi+4]; TRPPDFFontTrueType.?f4:TRvRenderPDF
 006067F3    mov        ebx,dword ptr [eax]
 006067F5    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 006067FB    mov        edx,6069B8; '/Widths ['
 00606800    mov        eax,dword ptr [esi+4]; TRPPDFFontTrueType.?f4:TRvRenderPDF
 00606803    mov        ecx,dword ptr [eax]
 00606805    call       dword ptr [ecx+0BC]; TRvRenderPDF.sub_005901E8
 0060680B    mov        ebx,dword ptr [esi+228]; TRPPDFFontTrueType.?f228:dword
>00606811    jmp        00606856
 00606813    lea        edx,[ebp-10]
 00606816    movsx      eax,word ptr [esi+ebx*2+1C]
 0060681B    call       IntToStr
 00606820    lea        eax,[ebp-10]
 00606823    mov        edx,6069CC; ' '
 00606828    call       @LStrCat
 0060682D    mov        edx,dword ptr [ebp-10]
 00606830    mov        eax,edi
 00606832    mov        ecx,dword ptr [eax]
 00606834    call       dword ptr [ecx+0BC]; TRvRenderPDF.sub_005901E8
 0060683A    mov        eax,ebx
 0060683C    mov        ecx,0A
 00606841    cdq
 00606842    idiv       eax,ecx
 00606844    cmp        edx,9
>00606847    jne        00606855
 00606849    xor        edx,edx
 0060684B    mov        eax,edi
 0060684D    mov        ecx,dword ptr [eax]
 0060684F    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00606855    inc        ebx
 00606856    cmp        ebx,dword ptr [esi+22C]; TRPPDFFontTrueType.?f22C:dword
<0060685C    jle        00606813
 0060685E    mov        edx,6069D8; ']'
 00606863    mov        eax,dword ptr [esi+4]; TRPPDFFontTrueType.?f4:TRvRenderPDF
 00606866    mov        ecx,dword ptr [eax]
 00606868    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060686E    push       0
 00606870    mov        eax,dword ptr [esi+220]; TRPPDFFontTrueType.?f220:TRPPDFFontDescriptor
 00606876    call       00602A80
 0060687B    mov        dword ptr [ebp-8],eax
 0060687E    mov        byte ptr [ebp-4],0
 00606882    lea        ecx,[ebp-8]
 00606885    mov        edx,6069E4; '/FontDescriptor %d 0 R'
 0060688A    mov        eax,dword ptr [esi+4]; TRPPDFFontTrueType.?f4:TRvRenderPDF
 0060688D    mov        ebx,dword ptr [eax]
 0060688F    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 00606895    mov        edx,606A04; '>>'
 0060689A    mov        eax,edi
 0060689C    mov        ecx,dword ptr [eax]
 0060689E    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006068A4    mov        edx,606A10; 'endobj'
 006068A9    mov        eax,edi
 006068AB    mov        ecx,dword ptr [eax]
 006068AD    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006068B3    xor        edx,edx
 006068B5    mov        eax,edi
 006068B7    mov        ecx,dword ptr [eax]
 006068B9    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006068BF    push       0
 006068C1    push       0
 006068C3    mov        eax,dword ptr [edi+78]; TRvRenderPDF.?f78:TFileStream
 006068C6    call       TStream.SetPosition
 006068CB    xor        eax,eax
 006068CD    pop        edx
 006068CE    pop        ecx
 006068CF    pop        ecx
 006068D0    mov        dword ptr fs:[eax],edx
 006068D3    push       6068ED
 006068D8    lea        eax,[ebp-10]
 006068DB    mov        edx,2
 006068E0    call       @LStrArrayClr
 006068E5    ret
<006068E6    jmp        @HandleFinally
<006068EB    jmp        006068D8
 006068ED    pop        edi
 006068EE    pop        esi
 006068EF    pop        ebx
 006068F0    mov        esp,ebp
 006068F2    pop        ebp
 006068F3    ret
*}
end;

//00606A18
//procedure sub_00606A18(?:?);
//begin
{*
 00606A18    push       ebp
 00606A19    mov        ebp,esp
 00606A1B    push       ebx
 00606A1C    push       esi
 00606A1D    xor        eax,eax
>00606A1F    jmp        00606A56
 00606A21    lea        edx,[eax+eax*2]
 00606A24    mov        ebx,dword ptr [ebp+8]
 00606A27    mov        bx,word ptr [ebx+edx*4-0C04]
 00606A2F    mov        esi,dword ptr [ebp+8]
 00606A32    add        bx,word ptr [esi+edx*4-0C00]
 00606A3A    mov        esi,dword ptr [ebp+8]
 00606A3D    add        bx,word ptr [esi+edx*4-0BFC]
 00606A45    mov        edx,dword ptr [ebp+8]
 00606A48    add        ecx,eax
 00606A4A    mov        edx,dword ptr [ebp+8]
 00606A4D    mov        edx,dword ptr [edx-4]
 00606A50    mov        word ptr [edx+ecx*2+1C],bx
 00606A55    inc        eax
 00606A56    mov        edx,dword ptr [ebp+8]
 00606A59    mov        edx,dword ptr [edx-4]
 00606A5C    mov        edx,dword ptr [edx+22C]
 00606A62    mov        ecx,dword ptr [ebp+8]
 00606A65    mov        ecx,dword ptr [ecx-4]
 00606A68    mov        ecx,dword ptr [ecx+228]
 00606A6E    sub        edx,ecx
 00606A70    inc        edx
 00606A71    cmp        eax,edx
<00606A73    jl         00606A21
 00606A75    pop        esi
 00606A76    pop        ebx
 00606A77    pop        ebp
 00606A78    ret
*}
//end;

//00606A7C
//procedure sub_00606A7C(?:TRPPDFFont; ?:AnsiString; ?:?);
//begin
{*
 00606A7C    push       ebp
 00606A7D    mov        ebp,esp
 00606A7F    add        esp,0FFFFF3E8
 00606A85    push       ebx
 00606A86    push       esi
 00606A87    push       edi
 00606A88    mov        byte ptr [ebp-0C09],cl
 00606A8E    mov        dword ptr [ebp-0C08],edx
 00606A94    mov        dword ptr [ebp-4],eax
 00606A97    mov        eax,dword ptr [ebp-0C08]
 00606A9D    call       @LStrAddRef
 00606AA2    lea        edi,[ebp-4]
 00606AA5    xor        eax,eax
 00606AA7    push       ebp
 00606AA8    push       606CF4
 00606AAD    push       dword ptr fs:[eax]
 00606AB0    mov        dword ptr fs:[eax],esp
 00606AB3    mov        dl,1
 00606AB5    mov        eax,[0042A4BC]; TBitmap
 00606ABA    call       TBitmap.Create; TBitmap.Create
 00606ABF    mov        dword ptr [ebp-0C10],eax
 00606AC5    xor        edx,edx
 00606AC7    push       ebp
 00606AC8    push       606CD4
 00606ACD    push       dword ptr fs:[edx]
 00606AD0    mov        dword ptr fs:[edx],esp
 00606AD3    mov        eax,dword ptr [ebp-0C10]
 00606AD9    call       TBitmap.GetCanvas
 00606ADE    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 00606AE1    mov        edx,dword ptr [ebp-0C08]
 00606AE7    call       TFont.SetName
 00606AEC    mov        eax,dword ptr [ebp-0C10]
 00606AF2    call       TBitmap.GetCanvas
 00606AF7    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 00606AFA    mov        dword ptr [eax+1C],1770; TFont.FPixelsPerInch:Integer
 00606B01    mov        eax,dword ptr [ebp-0C10]
 00606B07    call       TBitmap.GetCanvas
 00606B0C    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 00606B0F    mov        edx,0C
 00606B14    call       TFont.SetSize
 00606B19    mov        eax,dword ptr [ebp-0C10]
 00606B1F    call       TBitmap.GetCanvas
 00606B24    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 00606B27    mov        dl,byte ptr [ebp-0C09]
 00606B2D    call       TFont.SetStyle
 00606B32    push       0
 00606B34    push       4
 00606B36    mov        eax,dword ptr [ebp-0C10]
 00606B3C    call       TBitmap.GetCanvas
 00606B41    call       TCanvas.GetHandle
 00606B46    push       eax
 00606B47    call       gdi32.GetOutlineTextMetricsA
 00606B4C    mov        dword ptr [ebp-0C18],eax
 00606B52    mov        eax,dword ptr [ebp-0C18]
 00606B58    call       @GetMem
 00606B5D    mov        dword ptr [ebp-0C14],eax
 00606B63    xor        edx,edx
 00606B65    push       ebp
 00606B66    push       606CB4
 00606B6B    push       dword ptr fs:[edx]
 00606B6E    mov        dword ptr fs:[edx],esp
 00606B71    mov        eax,dword ptr [ebp-0C14]
 00606B77    push       eax
 00606B78    mov        eax,dword ptr [ebp-0C18]
 00606B7E    push       eax
 00606B7F    mov        eax,dword ptr [ebp-0C10]
 00606B85    call       TBitmap.GetCanvas
 00606B8A    call       TCanvas.GetHandle
 00606B8F    push       eax
 00606B90    call       gdi32.GetOutlineTextMetricsA
 00606B95    test       eax,eax
>00606B97    jbe        00606BF7
 00606B99    mov        eax,dword ptr [ebp-0C14]
 00606B9F    movzx      eax,byte ptr [eax+30]
 00606BA3    mov        edx,dword ptr [edi]
 00606BA5    mov        dword ptr [edx+228],eax
 00606BAB    mov        eax,dword ptr [ebp-0C14]
 00606BB1    movzx      eax,byte ptr [eax+31]
 00606BB5    mov        edx,dword ptr [edi]
 00606BB7    mov        dword ptr [edx+22C],eax
 00606BBD    lea        eax,[ebp-0C04]
 00606BC3    push       eax
 00606BC4    mov        eax,dword ptr [edi]
 00606BC6    mov        eax,dword ptr [eax+22C]
 00606BCC    push       eax
 00606BCD    mov        eax,dword ptr [edi]
 00606BCF    mov        eax,dword ptr [eax+228]
 00606BD5    push       eax
 00606BD6    mov        eax,dword ptr [ebp-0C10]
 00606BDC    call       TBitmap.GetCanvas
 00606BE1    call       TCanvas.GetHandle
 00606BE6    push       eax
 00606BE7    call       gdi32.GetCharABCWidthsA
 00606BEC    test       eax,eax
>00606BEE    je         00606BF7
 00606BF0    push       ebp
 00606BF1    call       00606A18
 00606BF6    pop        ecx
 00606BF7    mov        eax,dword ptr [edi]
 00606BF9    mov        eax,dword ptr [eax+220]
 00606BFF    add        eax,10
 00606C02    mov        edx,dword ptr [ebp-0C08]
 00606C08    call       @LStrAsg
 00606C0D    mov        eax,dword ptr [edi]
 00606C0F    movsx      ecx,word ptr [eax+5C]; TRPPDFFont.?f5C:word
 00606C13    mov        eax,dword ptr [edi]
 00606C15    mov        eax,dword ptr [eax+220]
 00606C1B    mov        edx,dword ptr [ebp-0C14]
 00606C21    call       00605C38
 00606C26    mov        eax,dword ptr [ebp-0C14]
 00606C2C    mov        eax,dword ptr [eax+4C]
 00606C2F    and        eax,1
 00606C32    cmp        eax,1
 00606C35    setne      al
 00606C38    mov        edx,dword ptr [edi]
 00606C3A    mov        byte ptr [edx+230],al
 00606C40    mov        edx,dword ptr [edi]
 00606C42    mov        edx,dword ptr [edx+220]
 00606C48    mov        byte ptr [edx+54],al
 00606C4B    mov        eax,dword ptr [edi]
 00606C4D    mov        ebx,dword ptr [eax+4]; TRPPDFFont.?f4:TRvRenderPDF
 00606C50    cmp        byte ptr [ebx+0D4],0; TRvRenderPDF.EmbedFonts:Boolean
>00606C57    je         00606C95
 00606C59    mov        eax,dword ptr [edi]
 00606C5B    cmp        byte ptr [eax+230],0
>00606C62    je         00606C95
 00606C64    mov        ecx,ebx
 00606C66    mov        dl,1
 00606C68    mov        eax,[005FF264]; TRPPDFFontFile
 00606C6D    call       TRPPDFFontFile.Create; TRPPDFFontFile.Create
 00606C72    mov        esi,eax
 00606C74    mov        eax,dword ptr [edi]
 00606C76    mov        dword ptr [eax+224],esi
 00606C7C    mov        eax,dword ptr [ebp-0C10]
 00606C82    call       TBitmap.GetCanvas
 00606C87    call       TCanvas.GetHandle
 00606C8C    mov        edx,eax
 00606C8E    mov        eax,esi
 00606C90    call       00606210
 00606C95    xor        eax,eax
 00606C97    pop        edx
 00606C98    pop        ecx
 00606C99    pop        ecx
 00606C9A    mov        dword ptr fs:[eax],edx
 00606C9D    push       606CBB
 00606CA2    mov        edx,dword ptr [ebp-0C18]
 00606CA8    mov        eax,dword ptr [ebp-0C14]
 00606CAE    call       @FreeMem
 00606CB3    ret
<00606CB4    jmp        @HandleFinally
<00606CB9    jmp        00606CA2
 00606CBB    xor        eax,eax
 00606CBD    pop        edx
 00606CBE    pop        ecx
 00606CBF    pop        ecx
 00606CC0    mov        dword ptr fs:[eax],edx
 00606CC3    push       606CDB
 00606CC8    mov        eax,dword ptr [ebp-0C10]
 00606CCE    call       TObject.Free
 00606CD3    ret
<00606CD4    jmp        @HandleFinally
<00606CD9    jmp        00606CC8
 00606CDB    xor        eax,eax
 00606CDD    pop        edx
 00606CDE    pop        ecx
 00606CDF    pop        ecx
 00606CE0    mov        dword ptr fs:[eax],edx
 00606CE3    push       606CFB
 00606CE8    lea        eax,[ebp-0C08]
 00606CEE    call       @LStrClr
 00606CF3    ret
<00606CF4    jmp        @HandleFinally
<00606CF9    jmp        00606CE8
 00606CFB    pop        edi
 00606CFC    pop        esi
 00606CFD    pop        ebx
 00606CFE    mov        esp,ebp
 00606D00    pop        ebp
 00606D01    ret
*}
//end;

//00606D04
constructor TRPPDFFont.Create;
begin
{*
 00606D04    push       ebp
 00606D05    mov        ebp,esp
 00606D07    add        esp,0FFFFFFF0
 00606D0A    push       ebx
 00606D0B    push       esi
 00606D0C    xor        ebx,ebx
 00606D0E    mov        dword ptr [ebp-8],ebx
 00606D11    test       dl,dl
>00606D13    je         00606D1D
 00606D15    add        esp,0FFFFFFF0
 00606D18    call       @ClassCreate
 00606D1D    mov        byte ptr [ebp-1],dl
 00606D20    mov        ebx,eax
 00606D22    xor        eax,eax
 00606D24    push       ebp
 00606D25    push       606D92
 00606D2A    push       dword ptr fs:[eax]
 00606D2D    mov        dword ptr fs:[eax],esp
 00606D30    xor        edx,edx
 00606D32    mov        eax,ebx
 00606D34    call       TRPPDFCatalog.Create
 00606D39    push       0
 00606D3B    lea        eax,[ebp-8]
 00606D3E    push       eax
 00606D3F    mov        esi,dword ptr [ebx+4]; TRPPDFFont.?f4:TRvRenderPDF
 00606D42    mov        eax,dword ptr [esi+98]; TRvRenderPDF.?f98:dword
 00606D48    mov        edx,dword ptr [eax]
 00606D4A    call       dword ptr [edx+14]
 00606D4D    inc        eax
 00606D4E    mov        dword ptr [ebp-10],eax
 00606D51    mov        byte ptr [ebp-0C],0
 00606D55    lea        ecx,[ebp-10]
 00606D58    mov        eax,esi
 00606D5A    mov        edx,606DC0; 'F%d'
 00606D5F    call       00601CA8
 00606D64    mov        edx,dword ptr [ebp-8]
 00606D67    lea        eax,[ebx+14]; TRPPDFFont.?f14:String
 00606D6A    call       @LStrAsg
 00606D6F    lea        eax,[ebx+10]; TRPPDFFont.?f10:String
 00606D72    mov        edx,606DCC; 'Type1'
 00606D77    call       @LStrAsg
 00606D7C    xor        eax,eax
 00606D7E    pop        edx
 00606D7F    pop        ecx
 00606D80    pop        ecx
 00606D81    mov        dword ptr fs:[eax],edx
 00606D84    push       606D99
 00606D89    lea        eax,[ebp-8]
 00606D8C    call       @LStrClr
 00606D91    ret
<00606D92    jmp        @HandleFinally
<00606D97    jmp        00606D89
 00606D99    mov        eax,ebx
 00606D9B    cmp        byte ptr [ebp-1],0
>00606D9F    je         00606DB0
 00606DA1    call       @AfterConstruction
 00606DA6    pop        dword ptr fs:[0]
 00606DAD    add        esp,0C
 00606DB0    mov        eax,ebx
 00606DB2    pop        esi
 00606DB3    pop        ebx
 00606DB4    mov        esp,ebp
 00606DB6    pop        ebp
 00606DB7    ret
*}
end;

//00606DD4
//function sub_00606DD4(?:?; ?:AnsiString; ?:?):?;
//begin
{*
 00606DD4    push       ebp
 00606DD5    mov        ebp,esp
 00606DD7    add        esp,0FFFFFFF0
 00606DDA    push       ebx
 00606DDB    mov        dword ptr [ebp-4],edx
 00606DDE    mov        ebx,eax
 00606DE0    mov        eax,dword ptr [ebp-4]
 00606DE3    call       @LStrAddRef
 00606DE8    xor        eax,eax
 00606DEA    push       ebp
 00606DEB    push       606E52
 00606DF0    push       dword ptr fs:[eax]
 00606DF3    mov        dword ptr fs:[eax],esp
 00606DF6    xor        eax,eax
 00606DF8    mov        dword ptr [ebp-10],eax
 00606DFB    mov        dword ptr [ebp-0C],eax
 00606DFE    mov        eax,dword ptr [ebp-4]
 00606E01    call       @LStrLen
 00606E06    test       eax,eax
>00606E08    jle        00606E26
 00606E0A    mov        edx,1
 00606E0F    mov        ecx,dword ptr [ebp-4]
 00606E12    movzx      ecx,byte ptr [ecx+edx-1]
 00606E17    fild       word ptr [ebx+ecx*2+1C]
 00606E1B    fadd       qword ptr [ebp-10]
 00606E1E    fstp       qword ptr [ebp-10]
 00606E21    wait
 00606E22    inc        edx
 00606E23    dec        eax
<00606E24    jne        00606E0F
 00606E26    fld        qword ptr [ebp-10]
 00606E29    fdiv       dword ptr ds:[606E64]; 1000:Single
 00606E2F    fmul       qword ptr [ebp+8]
 00606E32    fdiv       dword ptr ds:[606E68]; 72:Single
 00606E38    fstp       qword ptr [ebp-10]
 00606E3B    wait
 00606E3C    xor        eax,eax
 00606E3E    pop        edx
 00606E3F    pop        ecx
 00606E40    pop        ecx
 00606E41    mov        dword ptr fs:[eax],edx
 00606E44    push       606E59
 00606E49    lea        eax,[ebp-4]
 00606E4C    call       @LStrClr
 00606E51    ret
<00606E52    jmp        @HandleFinally
<00606E57    jmp        00606E49
 00606E59    fld        qword ptr [ebp-10]
 00606E5C    pop        ebx
 00606E5D    mov        esp,ebp
 00606E5F    pop        ebp
 00606E60    ret        8
*}
//end;

//00606E6C
procedure sub_00606E6C;
begin
{*
 00606E6C    push       ebp
 00606E6D    mov        ebp,esp
 00606E6F    add        esp,0FFFFFFF4
 00606E72    push       ebx
 00606E73    push       esi
 00606E74    push       edi
 00606E75    xor        edx,edx
 00606E77    mov        dword ptr [ebp-0C],edx
 00606E7A    mov        ebx,eax
 00606E7C    xor        eax,eax
 00606E7E    push       ebp
 00606E7F    push       606FA4
 00606E84    push       dword ptr fs:[eax]
 00606E87    mov        dword ptr fs:[eax],esp
 00606E8A    mov        eax,dword ptr [ebx+4]; TRPPDFFont.?f4:TRvRenderPDF
 00606E8D    mov        edx,dword ptr [ebx+0C]; TRPPDFFont.?fC:TMemoryStream
 00606E90    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 00606E93    mov        esi,eax
 00606E95    push       0
 00606E97    mov        eax,ebx
 00606E99    call       00602A80
 00606E9E    mov        dword ptr [ebp-8],eax
 00606EA1    mov        byte ptr [ebp-4],0
 00606EA5    lea        ecx,[ebp-8]
 00606EA8    mov        edx,606FBC; '%d 0 obj'
 00606EAD    mov        eax,esi
 00606EAF    mov        edi,dword ptr [eax]
 00606EB1    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 00606EB7    mov        edx,606FD0; '<<'
 00606EBC    mov        eax,esi
 00606EBE    mov        ecx,dword ptr [eax]
 00606EC0    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00606EC6    mov        edx,606FDC; '/Type /Font'
 00606ECB    mov        eax,esi
 00606ECD    mov        ecx,dword ptr [eax]
 00606ECF    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00606ED5    push       0
 00606ED7    mov        eax,dword ptr [ebx+10]; TRPPDFFont.?f10:String
 00606EDA    mov        dword ptr [ebp-8],eax
 00606EDD    mov        byte ptr [ebp-4],0B
 00606EE1    lea        ecx,[ebp-8]
 00606EE4    mov        edx,606FF0; '/Subtype /%s'
 00606EE9    mov        eax,esi
 00606EEB    mov        edi,dword ptr [eax]
 00606EED    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 00606EF3    push       0
 00606EF5    mov        eax,dword ptr [ebx+14]; TRPPDFFont.?f14:String
 00606EF8    mov        dword ptr [ebp-8],eax
 00606EFB    mov        byte ptr [ebp-4],0B
 00606EFF    lea        ecx,[ebp-8]
 00606F02    mov        edx,607008; '/Name /%s'
 00606F07    mov        eax,esi
 00606F09    mov        edi,dword ptr [eax]
 00606F0B    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 00606F11    push       0
 00606F13    mov        eax,dword ptr [ebx+18]; TRPPDFFont.?f18:String
 00606F16    mov        dword ptr [ebp-8],eax
 00606F19    mov        byte ptr [ebp-4],0B
 00606F1D    lea        ecx,[ebp-8]
 00606F20    mov        edx,60701C; '/BaseFont /%s'
 00606F25    mov        eax,esi
 00606F27    mov        ebx,dword ptr [eax]
 00606F29    call       dword ptr [ebx+0C8]; TRvRenderPDF.sub_00601D44
 00606F2F    xor        eax,eax
 00606F31    mov        al,byte ptr [esi+0C0]; TRvRenderPDF.FontEncoding:TPDFFontEncoding
 00606F37    mov        ecx,dword ptr [eax*4+619828]; gvar_00619828:array[5] of String
 00606F3E    lea        eax,[ebp-0C]
 00606F41    mov        edx,607034; '/Encoding /'
 00606F46    call       @LStrCat3
 00606F4B    mov        edx,dword ptr [ebp-0C]
 00606F4E    mov        eax,esi
 00606F50    mov        ecx,dword ptr [eax]
 00606F52    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00606F58    mov        edx,607048; '>>'
 00606F5D    mov        eax,esi
 00606F5F    mov        ecx,dword ptr [eax]
 00606F61    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00606F67    mov        edx,607054; 'endobj'
 00606F6C    mov        eax,esi
 00606F6E    mov        ecx,dword ptr [eax]
 00606F70    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00606F76    xor        edx,edx
 00606F78    mov        eax,esi
 00606F7A    mov        ecx,dword ptr [eax]
 00606F7C    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00606F82    push       0
 00606F84    push       0
 00606F86    mov        eax,dword ptr [esi+78]; TRvRenderPDF.?f78:TFileStream
 00606F89    call       TStream.SetPosition
 00606F8E    xor        eax,eax
 00606F90    pop        edx
 00606F91    pop        ecx
 00606F92    pop        ecx
 00606F93    mov        dword ptr fs:[eax],edx
 00606F96    push       606FAB
 00606F9B    lea        eax,[ebp-0C]
 00606F9E    call       @LStrClr
 00606FA3    ret
<00606FA4    jmp        @HandleFinally
<00606FA9    jmp        00606F9B
 00606FAB    pop        edi
 00606FAC    pop        esi
 00606FAD    pop        ebx
 00606FAE    mov        esp,ebp
 00606FB0    pop        ebp
 00606FB1    ret
*}
end;

//0060705C
constructor TRPPDFXObject.Create;
begin
{*
 0060705C    push       ebp
 0060705D    mov        ebp,esp
 0060705F    push       ecx
 00607060    push       ebx
 00607061    push       esi
 00607062    test       dl,dl
>00607064    je         0060706E
 00607066    add        esp,0FFFFFFF0
 00607069    call       @ClassCreate
 0060706E    mov        byte ptr [ebp-1],dl
 00607071    mov        ebx,eax
 00607073    xor        edx,edx
 00607075    mov        eax,ebx
 00607077    call       TRPPDFCatalog.Create
 0060707C    mov        dl,1
 0060707E    mov        eax,[0041CBF8]; TMemoryStream
 00607083    call       TObject.Create; TMemoryStream.Create
 00607088    mov        dword ptr [ebx+10],eax; TRPPDFXObject.?f10:TMemoryStream
 0060708B    mov        dl,1
 0060708D    mov        eax,[005EB70C]; TJPEGImage
 00607092    call       TJPEGImage.Create; TJPEGImage.Create
 00607097    mov        esi,eax
 00607099    mov        dword ptr [ebx+18],esi; TRPPDFXObject.?f18:TJPEGImage
 0060709C    mov        byte ptr [esi+3F],64; TJPEGImage.FQuality:TJPEGQualityRange
 006070A0    mov        eax,ebx
 006070A2    cmp        byte ptr [ebp-1],0
>006070A6    je         006070B7
 006070A8    call       @AfterConstruction
 006070AD    pop        dword ptr fs:[0]
 006070B4    add        esp,0C
 006070B7    mov        eax,ebx
 006070B9    pop        esi
 006070BA    pop        ebx
 006070BB    pop        ecx
 006070BC    pop        ebp
 006070BD    ret
*}
end;

//006070C0
destructor TRPPDFXObject.Destroy;
begin
{*
 006070C0    push       ebx
 006070C1    push       esi
 006070C2    call       @BeforeDestruction
 006070C7    mov        ebx,edx
 006070C9    mov        esi,eax
 006070CB    mov        edx,ebx
 006070CD    and        dl,0FC
 006070D0    mov        eax,esi
 006070D2    call       TRPPDFObject.Destroy
 006070D7    lea        eax,[esi+10]; TRPPDFXObject.?f10:TMemoryStream
 006070DA    call       FreeAndNil
 006070DF    lea        eax,[esi+18]; TRPPDFXObject.?f18:TJPEGImage
 006070E2    call       FreeAndNil
 006070E7    test       bl,bl
>006070E9    jle        006070F2
 006070EB    mov        eax,esi
 006070ED    call       @ClassDestroy
 006070F2    pop        esi
 006070F3    pop        ebx
 006070F4    ret
*}
end;

//006070F8
//function sub_006070F8(?:TRPPDFXObject):?;
//begin
{*
 006070F8    mov        eax,dword ptr [eax+18]; TRPPDFXObject.?f18:TJPEGImage
 006070FB    mov        edx,dword ptr [eax]
 006070FD    call       dword ptr [edx+20]; TJPEGImage.GetHeight
 00607100    ret
*}
//end;

//00607104
//function sub_00607104(?:TRPPDFXObject):?;
//begin
{*
 00607104    mov        eax,dword ptr [eax+18]; TRPPDFXObject.?f18:TJPEGImage
 00607107    mov        edx,dword ptr [eax]
 00607109    call       dword ptr [edx+2C]; TJPEGImage.GetWidth
 0060710C    ret
*}
//end;

//00607110
procedure sub_00607110;
begin
{*
 00607110    push       ebx
 00607111    push       esi
 00607112    push       edi
 00607113    add        esp,0FFFFFFE0
 00607116    mov        esi,eax
 00607118    mov        eax,dword ptr [esi+4]; TRPPDFXObject.?f4:TRvRenderPDF
 0060711B    mov        edx,dword ptr [esi+0C]; TRPPDFXObject.?fC:TMemoryStream
 0060711E    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 00607121    mov        ebx,eax
 00607123    mov        al,byte ptr [eax+1E8]; TRvRenderPDF.ImageQuality:TImageQualityRange
 00607129    mov        edi,dword ptr [esi+18]; TRPPDFXObject.?f18:TJPEGImage
 0060712C    mov        byte ptr [edi+3F],al; TJPEGImage.FQuality:TJPEGQualityRange
 0060712F    mov        edx,dword ptr [esi+10]; TRPPDFXObject.?f10:TMemoryStream
 00607132    mov        eax,edi
 00607134    mov        ecx,dword ptr [eax]
 00607136    call       dword ptr [ecx+58]; TJPEGImage.SaveToStream
 00607139    push       0
 0060713B    push       0
 0060713D    mov        eax,dword ptr [esi+10]; TRPPDFXObject.?f10:TMemoryStream
 00607140    call       TStream.SetPosition
 00607145    push       0
 00607147    mov        eax,esi
 00607149    call       00602A80
 0060714E    mov        dword ptr [esp+4],eax
 00607152    mov        byte ptr [esp+8],0
 00607157    lea        ecx,[esp+4]
 0060715B    mov        edx,6072B4; '%d 0 obj'
 00607160    mov        eax,ebx
 00607162    mov        edi,dword ptr [eax]
 00607164    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 0060716A    mov        edx,6072C8; '<<'
 0060716F    mov        eax,ebx
 00607171    mov        ecx,dword ptr [eax]
 00607173    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00607179    mov        edx,6072D4; '/Type /XObject'
 0060717E    mov        eax,ebx
 00607180    mov        ecx,dword ptr [eax]
 00607182    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00607188    mov        edx,6072EC; '/Subtype /Image'
 0060718D    mov        eax,ebx
 0060718F    mov        ecx,dword ptr [eax]
 00607191    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00607197    push       0
 00607199    mov        eax,dword ptr [esi+14]; TRPPDFXObject.?f14:String
 0060719C    mov        dword ptr [esp+4],eax
 006071A0    mov        byte ptr [esp+8],0B
 006071A5    lea        ecx,[esp+4]
 006071A9    mov        edx,607304; '/Name /%s'
 006071AE    mov        eax,ebx
 006071B0    mov        edi,dword ptr [eax]
 006071B2    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 006071B8    push       1
 006071BA    mov        eax,esi
 006071BC    call       00607104
 006071C1    mov        dword ptr [esp+0C],eax
 006071C5    mov        byte ptr [esp+10],0
 006071CA    mov        eax,esi
 006071CC    call       006070F8
 006071D1    mov        dword ptr [esp+14],eax
 006071D5    mov        byte ptr [esp+18],0
 006071DA    lea        ecx,[esp+0C]
 006071DE    mov        edx,607318; '/Width %d /Height %d '
 006071E3    mov        eax,ebx
 006071E5    mov        edi,dword ptr [eax]
 006071E7    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 006071ED    mov        edx,607338; '/BitsPerComponent 8'
 006071F2    mov        eax,ebx
 006071F4    mov        ecx,dword ptr [eax]
 006071F6    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 006071FC    push       0
 006071FE    mov        eax,dword ptr [esi+10]; TRPPDFXObject.?f10:TMemoryStream
 00607201    mov        edx,dword ptr [eax]
 00607203    call       dword ptr [edx]; TStream.GetSize
 00607205    mov        dword ptr [esp+1C],eax
 00607209    mov        dword ptr [esp+20],edx
 0060720D    lea        eax,[esp+1C]
 00607211    mov        dword ptr [esp+4],eax
 00607215    mov        byte ptr [esp+8],10
 0060721A    lea        ecx,[esp+4]
 0060721E    mov        edx,607354; '/ColorSpace /DeviceRGB /Length %d /Filter [/DCTDecode ]'
 00607223    mov        eax,ebx
 00607225    mov        edi,dword ptr [eax]
 00607227    call       dword ptr [edi+0C8]; TRvRenderPDF.sub_00601D44
 0060722D    mov        edx,607394; '>>'
 00607232    mov        eax,ebx
 00607234    mov        ecx,dword ptr [eax]
 00607236    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060723C    mov        edx,6073A0; 'stream'
 00607241    mov        eax,ebx
 00607243    mov        ecx,dword ptr [eax]
 00607245    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060724B    mov        edi,dword ptr [esi+10]; TRPPDFXObject.?f10:TMemoryStream
 0060724E    mov        eax,edi
 00607250    mov        edx,dword ptr [eax]
 00607252    call       dword ptr [edx]; TStream.GetSize
 00607254    push       edx
 00607255    push       eax
 00607256    mov        edx,edi
 00607258    mov        eax,dword ptr [ebx+78]; TRvRenderPDF.?f78:TFileStream
 0060725B    call       TStream.CopyFrom
 00607260    mov        edx,6073B0; 'endstream'
 00607265    mov        eax,ebx
 00607267    mov        ecx,dword ptr [eax]
 00607269    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060726F    mov        edx,607394; '>>'
 00607274    mov        eax,ebx
 00607276    mov        ecx,dword ptr [eax]
 00607278    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060727E    mov        edx,6073C4; 'endobj'
 00607283    mov        eax,ebx
 00607285    mov        ecx,dword ptr [eax]
 00607287    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 0060728D    xor        edx,edx
 0060728F    mov        eax,ebx
 00607291    mov        ecx,dword ptr [eax]
 00607293    call       dword ptr [ecx+0C4]; TRvRenderPDF.sub_00590270
 00607299    push       0
 0060729B    push       0
 0060729D    mov        eax,dword ptr [ebx+78]; TRvRenderPDF.?f78:TFileStream
 006072A0    call       TStream.SetPosition
 006072A5    add        esp,20
 006072A8    pop        edi
 006072A9    pop        esi
 006072AA    pop        ebx
 006072AB    ret
*}
end;

Initialization
Finalization
//006073CC
{*
 006073CC    push       ebp
 006073CD    mov        ebp,esp
 006073CF    xor        eax,eax
 006073D1    push       ebp
 006073D2    push       607427
 006073D7    push       dword ptr fs:[eax]
 006073DA    mov        dword ptr fs:[eax],esp
 006073DD    inc        dword ptr ds:[61FA64]
>006073E3    jne        00607419
 006073E5    mov        eax,619828; gvar_00619828:array[5] of String
 006073EA    mov        ecx,5
 006073EF    mov        edx,dword ptr ds:[4010F8]; String
 006073F5    call       @FinalizeArray
 006073FA    mov        eax,6197F0; gvar_006197F0:array[14] of String
 006073FF    mov        ecx,0E
 00607404    mov        edx,dword ptr ds:[4010F8]; String
 0060740A    call       @FinalizeArray
 0060740F    mov        eax,6197EC; ^'%PDF-1.3'
 00607414    call       @LStrClr
 00607419    xor        eax,eax
 0060741B    pop        edx
 0060741C    pop        ecx
 0060741D    pop        ecx
 0060741E    mov        dword ptr fs:[eax],edx
 00607421    push       60742E
 00607426    ret
<00607427    jmp        @HandleFinally
<0060742C    jmp        00607426
 0060742E    pop        ebp
 0060742F    ret
*}
end.