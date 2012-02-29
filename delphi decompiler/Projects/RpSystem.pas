{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpSystem;

interface

uses
  Classes, Windows, Graphics, RpDefine, Forms, SysUtils, RpBase, RpFiler;

type
  TOverrideMode = (omCreate, omShow, omWait, omFree);
  TRvSystemEvent = procedure(ReportSystem:TRvSystem; OverrideMode:TOverrideMode; var OverrideForm:TForm) of object;
  TSystemPrinter = class(TPersistent)
  public
    Copies:Integer;//f4
    FirstPage:Integer;//f8
    LastPage:Integer;//fC
    LineHeightMethod:TLineHeightMethod;//f10
    LinesPerInch:Integer;//f14
    MarginBottom:Double;//f18
    f1C:dword;//f1C
    MarginLeft:Double;//f20
    f24:dword;//f24
    MarginRight:Double;//f28
    f2C:dword;//f2C
    MarginTop:Double;//f30
    f34:dword;//f34
    Orientation:TOrientation;//f38
    ScaleX:Double;//f40
    f44:dword;//f44
    ScaleY:Double;//f48
    f4C:dword;//f4C
    f50:String;//f50
    StatusText:TStrings;//f54
    TabShade:Integer;//f58
    TextBKMode:TBKMode;//f5C
    f60:String;//f60
    Units:TPrintUnits;//f64
    UnitsFactor:Double;//f68
    f6C:dword;//f6C
    f70:byte;//f70
    f71:byte;//f71
    destructor Destroy; virtual;
    //constructor Create(?:TSystemPrinter; _Dv__:Boolean);
  end;
  TSystemPreview = class(TPersistent)
  public
    GridHoriz:Double;//f8
    fC:dword;//fC
    GridPen:TPen;//f10
    GridVert:Double;//f18
    f1C:dword;//f1C
    MarginMethod:TMarginMethod;//f20
    MarginPercent:Double;//f28
    f2C:dword;//f2C
    Monochrome:Boolean;//f30
    PagesWide:Integer;//f34
    PagesHigh:Integer;//f38
    PageInc:Integer;//f3C
    RulerType:TRulerType;//f40
    ShadowDepth:Integer;//f44
    ZoomFactor:Double;//f48
    f4C:dword;//f4C
    ZoomInc:Integer;//f50
    FormWidth:Integer;//f54
    FormHeight:Integer;//f58
    FormState:TWindowState;//f5C
    destructor Destroy; virtual;
    //constructor Create(?:TSystemPreview; _Dv__:Boolean);
  end;
  TSystemFiler = class(TPersistent)
  public
    AccuracyMethod:TAccuracyMethod;//f4
    f8:TFileName;//f8
    fC:String;//fC
    StatusText:TStrings;//f10
    StreamMode:TStreamMode;//f14
    f18:TMemoryStream;//f18
    f1C:byte;//f1C
    destructor Destroy; virtual;
    //constructor Create(?:TSystemFiler; _Dv__:Boolean);
  end;
  TRvSystem = class(TRPBaseComponent)
  public
    f34:dword;//f34
    f35:byte;//f35
    f38:TRvNDRWriter;//f38
    f3C:dword;//f3C
    DefaultDest:TReportDest;//f40
    f41:TReportDest;//f41
    f44:TFileName;//f44
    f48:byte;//f48
    SystemSetups:TSystemSetups;//f49
    SystemOptions:TSystemOptions;//f4B
    SystemFiler:TSystemFiler;//f4C
    SystemPreview:TSystemPreview;//f50
    SystemPrinter:TSystemPrinter;//f54
    f58:String;//f58
    f5C:String;//f5C
    f60:String;//f60
    f64:TStringList;//f64
    f68:dword;//f68
    OnPrint:TNotifyEvent;//f80
    f84:dword;//f84
    OnPrintPage:TPrintPageEvent;//f88
    OnBeforePrint:TNotifyEvent;//f90
    f94:dword;//f94
    OnAfterPrint:TNotifyEvent;//f98
    f9C:dword;//f9C
    OnNewPage:TNotifyEvent;//fA0
    OnNewColumn:TNotifyEvent;//fA8
    OnPrintHeader:TNotifyEvent;//fB0
    OnPrintFooter:TNotifyEvent;//fB8
    OnEndOfSection:TNotifyEvent;//fC0
    OnDecodeImage:TDecodeImageEvent;//fC8
    OnPreviewSetup:TNotifyEvent;//fD0
    fD2:word;//fD2
    fD4:dword;//fD4
    OnPreviewShow:TNotifyEvent;//fD8
    OverrideSetup:TRvSystemEvent;//fE0
    fE2:word;//fE2
    fE4:TRvSystem;//fE4
    OverrideStatus:TRvSystemEvent;//fE8
    fEA:word;//fEA
    fEC:TRvSystem;//fEC
    OverridePreview:TRvSystemEvent;//fF0
    fF2:word;//fF2
    fF4:TRvSystem;//fF4
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_00597FA8(?:?; ?:?; ?:?); virtual;
    //procedure sub_00598038(?:?; ?:?; ?:?); virtual;
    //procedure sub_005981BC(?:?; ?:?; ?:?); virtual;
  end;

implementation

{$R *.DFM}

//00597C60
constructor TRvSystem.Create(AOwner:TComponent);
begin
{*
 00597C60    push       ebp
 00597C61    mov        ebp,esp
 00597C63    push       0
 00597C65    push       0
 00597C67    push       0
 00597C69    push       0
 00597C6B    push       ebx
 00597C6C    push       esi
 00597C6D    test       dl,dl
>00597C6F    je         00597C79
 00597C71    add        esp,0FFFFFFF0
 00597C74    call       @ClassCreate
 00597C79    mov        esi,ecx
 00597C7B    mov        byte ptr [ebp-1],dl
 00597C7E    mov        ebx,eax
 00597C80    xor        eax,eax
 00597C82    push       ebp
 00597C83    push       597D83
 00597C88    push       dword ptr fs:[eax]
 00597C8B    mov        dword ptr fs:[eax],esp
 00597C8E    mov        ecx,esi
 00597C90    xor        edx,edx
 00597C92    mov        eax,ebx
 00597C94    call       TRpComponent.Create
 00597C99    test       esi,esi
>00597C9B    je         00597D00
 00597C9D    test       byte ptr [ebx+1C],10; TRvSystem.FComponentState:TComponentState
>00597CA1    je         00597D00
 00597CA3    test       byte ptr [esi+1C],2; TComponent.FComponentState:TComponentState
>00597CA7    jne        00597D00
 00597CA9    mov        esi,dword ptr ds:[61B830]
 00597CAF    mov        esi,dword ptr [esi]
 00597CB1    lea        edx,[ebp-8]
 00597CB4    mov        eax,597DB4; 'Output Options'
 00597CB9    call       esi
 00597CBB    mov        edx,dword ptr [ebp-8]
 00597CBE    lea        eax,[ebx+58]; TRvSystem.?f58:String
 00597CC1    call       @LStrAsg
 00597CC6    mov        esi,dword ptr ds:[61B830]
 00597CCC    mov        esi,dword ptr [esi]
 00597CCE    lea        edx,[ebp-0C]
 00597CD1    mov        eax,597DCC; 'Report Status'
 00597CD6    call       esi
 00597CD8    mov        edx,dword ptr [ebp-0C]
 00597CDB    lea        eax,[ebx+5C]; TRvSystem.?f5C:String
 00597CDE    call       @LStrAsg
 00597CE3    mov        esi,dword ptr ds:[61B830]
 00597CE9    mov        esi,dword ptr [esi]
 00597CEB    lea        edx,[ebp-10]
 00597CEE    mov        eax,597DE4; 'Report Preview'
 00597CF3    call       esi
 00597CF5    mov        edx,dword ptr [ebp-10]
 00597CF8    lea        eax,[ebx+60]; TRvSystem.?f60:String
 00597CFB    call       @LStrAsg
 00597D00    mov        ax,[00597DF4]; 0x1FF
 00597D06    mov        word ptr [ebx+49],ax; TRvSystem.SystemSetups:TSystemSetups
 00597D0A    mov        al,[00597DF8]; 0x1C
 00597D0F    mov        byte ptr [ebx+4B],al; TRvSystem.SystemOptions:TSystemOptions
 00597D12    mov        byte ptr [ebx+40],0; TRvSystem.DefaultDest:TReportDest
 00597D16    xor        eax,eax
 00597D18    mov        dword ptr [ebx+38],eax; TRvSystem.?f38:TRvNDRWriter
 00597D1B    mov        dl,1
 00597D1D    mov        eax,[00597670]; TSystemFiler
 00597D22    call       TSystemFiler.Create; TSystemFiler.Create
 00597D27    mov        dword ptr [ebx+4C],eax; TRvSystem.SystemFiler:TSystemFiler
 00597D2A    mov        dl,1
 00597D2C    mov        eax,[00597398]; TSystemPreview
 00597D31    call       TSystemPreview.Create; TSystemPreview.Create
 00597D36    mov        dword ptr [ebx+50],eax; TRvSystem.SystemPreview:TSystemPreview
 00597D39    mov        dl,1
 00597D3B    mov        eax,[00597038]; TSystemPrinter
 00597D40    call       TSystemPrinter.Create; TSystemPrinter.Create
 00597D45    mov        dword ptr [ebx+54],eax; TRvSystem.SystemPrinter:TSystemPrinter
 00597D48    mov        dl,1
 00597D4A    mov        eax,[0041C8E4]; TStringList
 00597D4F    call       TObject.Create; TStringList.Create
 00597D54    mov        dword ptr [ebx+64],eax; TRvSystem.?f64:TStringList
 00597D57    lea        eax,[ebx+44]; TRvSystem.?f44:TFileName
 00597D5A    call       @LStrClr
 00597D5F    xor        eax,eax
 00597D61    mov        dword ptr [ebx+68],eax; TRvSystem.?f68:dword
 00597D64    mov        byte ptr [ebx+34],1; TRvSystem.?f34:dword
 00597D68    xor        eax,eax
 00597D6A    pop        edx
 00597D6B    pop        ecx
 00597D6C    pop        ecx
 00597D6D    mov        dword ptr fs:[eax],edx
 00597D70    push       597D8A
 00597D75    lea        eax,[ebp-10]
 00597D78    mov        edx,3
 00597D7D    call       @LStrArrayClr
 00597D82    ret
<00597D83    jmp        @HandleFinally
<00597D88    jmp        00597D75
 00597D8A    mov        eax,ebx
 00597D8C    cmp        byte ptr [ebp-1],0
>00597D90    je         00597DA1
 00597D92    call       @AfterConstruction
 00597D97    pop        dword ptr fs:[0]
 00597D9E    add        esp,0C
 00597DA1    mov        eax,ebx
 00597DA3    pop        esi
 00597DA4    pop        ebx
 00597DA5    mov        esp,ebp
 00597DA7    pop        ebp
 00597DA8    ret
*}
end;

//00597DFC
destructor TRvSystem.Destroy;
begin
{*
 00597DFC    push       ebx
 00597DFD    push       esi
 00597DFE    call       @BeforeDestruction
 00597E03    mov        ebx,edx
 00597E05    mov        esi,eax
 00597E07    lea        eax,[esi+54]; TRvSystem.SystemPrinter:TSystemPrinter
 00597E0A    call       FreeAndNil
 00597E0F    lea        eax,[esi+50]; TRvSystem.SystemPreview:TSystemPreview
 00597E12    call       FreeAndNil
 00597E17    lea        eax,[esi+4C]; TRvSystem.SystemFiler:TSystemFiler
 00597E1A    call       FreeAndNil
 00597E1F    lea        eax,[esi+64]; TRvSystem.?f64:TStringList
 00597E22    call       FreeAndNil
 00597E27    mov        edx,ebx
 00597E29    and        dl,0FC
 00597E2C    mov        eax,esi
 00597E2E    call       TComponent.Destroy
 00597E33    test       bl,bl
>00597E35    jle        00597E3E
 00597E37    mov        eax,esi
 00597E39    call       @ClassDestroy
 00597E3E    pop        esi
 00597E3F    pop        ebx
 00597E40    ret
*}
end;

//00597E44
//procedure sub_00597E44(?:TRvSystem; ?:TRvNDRWriter);
//begin
{*
 00597E44    push       ebx
 00597E45    push       esi
 00597E46    mov        esi,edx
 00597E48    mov        ebx,eax
 00597E4A    mov        eax,dword ptr [ebx+80]
 00597E50    mov        dword ptr [esi+9C0],eax
 00597E56    mov        eax,dword ptr [ebx+84]
 00597E5C    mov        dword ptr [esi+9C4],eax
 00597E62    mov        eax,dword ptr [ebx+88]
 00597E68    mov        dword ptr [esi+9C8],eax
 00597E6E    mov        eax,dword ptr [ebx+8C]
 00597E74    mov        dword ptr [esi+9CC],eax
 00597E7A    mov        eax,dword ptr [ebx+90]
 00597E80    mov        dword ptr [esi+9D0],eax
 00597E86    mov        eax,dword ptr [ebx+94]
 00597E8C    mov        dword ptr [esi+9D4],eax
 00597E92    mov        eax,dword ptr [ebx+98]
 00597E98    mov        dword ptr [esi+9D8],eax
 00597E9E    mov        eax,dword ptr [ebx+9C]
 00597EA4    mov        dword ptr [esi+9DC],eax
 00597EAA    mov        eax,dword ptr [ebx+0A0]
 00597EB0    mov        dword ptr [esi+9E0],eax
 00597EB6    mov        eax,dword ptr [ebx+0A4]
 00597EBC    mov        dword ptr [esi+9E4],eax
 00597EC2    mov        eax,dword ptr [ebx+0A8]
 00597EC8    mov        dword ptr [esi+9E8],eax
 00597ECE    mov        eax,dword ptr [ebx+0AC]
 00597ED4    mov        dword ptr [esi+9EC],eax
 00597EDA    mov        eax,dword ptr [ebx+0B0]
 00597EE0    mov        dword ptr [esi+9F0],eax
 00597EE6    mov        eax,dword ptr [ebx+0B4]
 00597EEC    mov        dword ptr [esi+9F4],eax
 00597EF2    mov        eax,dword ptr [ebx+0B8]
 00597EF8    mov        dword ptr [esi+9F8],eax
 00597EFE    mov        eax,dword ptr [ebx+0BC]
 00597F04    mov        dword ptr [esi+9FC],eax
 00597F0A    mov        eax,dword ptr [ebx+0C0]
 00597F10    mov        dword ptr [esi+0A00],eax
 00597F16    mov        eax,dword ptr [ebx+0C4]
 00597F1C    mov        dword ptr [esi+0A04],eax
 00597F22    mov        eax,dword ptr [ebx+0C8]
 00597F28    mov        dword ptr [esi+0A08],eax
 00597F2E    mov        eax,dword ptr [ebx+0CC]
 00597F34    mov        dword ptr [esi+0A0C],eax
 00597F3A    mov        eax,esi
 00597F3C    mov        edx,dword ptr ds:[588AFC]; TRvNDRWriter
 00597F42    call       @IsClass
 00597F47    test       al,al
>00597F49    je         00597F71
 00597F4B    mov        eax,esi
 00597F4D    mov        edx,dword ptr [ebx+70]
 00597F50    mov        dword ptr [eax+0B30],edx
 00597F56    mov        edx,dword ptr [ebx+74]
 00597F59    mov        dword ptr [eax+0B34],edx
 00597F5F    mov        edx,dword ptr [ebx+78]
 00597F62    mov        dword ptr [eax+0B38],edx
 00597F68    mov        edx,dword ptr [ebx+7C]
 00597F6B    mov        dword ptr [eax+0B3C],edx
 00597F71    pop        esi
 00597F72    pop        ebx
 00597F73    ret
*}
//end;

//00597F74
//procedure sub_00597F74(?:dword);
//begin
{*
 00597F74    push       ebx
 00597F75    cmp        word ptr [eax+0DA],0
>00597F7D    je         00597F8D
 00597F7F    mov        ebx,eax
 00597F81    mov        eax,dword ptr [ebx+0DC]
 00597F87    call       dword ptr [ebx+0D8]
 00597F8D    pop        ebx
 00597F8E    ret
*}
//end;

//00597F90
//procedure sub_00597F90(?:TRvSystem; ?:TMemoryStream);
//begin
{*
 00597F90    mov        eax,dword ptr [eax+4C]; TRvSystem.SystemFiler:TSystemFiler
 00597F93    mov        dword ptr [eax+18],edx; TSystemFiler.?f18:TMemoryStream
 00597F96    ret
*}
//end;

//00597F98
//procedure sub_00597F98(?:TRvSystem);
//begin
{*
 00597F98    push       esi
 00597F99    mov        esi,eax
 00597F9B    mov        eax,dword ptr [esi+64]
 00597F9E    mov        ecx,dword ptr [eax]
 00597FA0    call       dword ptr [ecx+8]
 00597FA3    pop        esi
 00597FA4    ret
*}
//end;

//00597FA8
//procedure sub_00597FA8(?:?; ?:?; ?:?);
//begin
{*
 00597FA8    push       ebp
 00597FA9    mov        ebp,esp
 00597FAB    push       ecx
 00597FAC    push       ebx
 00597FAD    push       esi
 00597FAE    mov        dword ptr [ebp-4],edx
 00597FB1    mov        ebx,eax
 00597FB3    mov        esi,dword ptr [ebp+8]
 00597FB6    sub        cl,1
>00597FB9    jb         00597FC4
>00597FBB    je         00597FF6
 00597FBD    sub        cl,2
>00597FC0    je         00598027
>00597FC2    jmp        0059802E
 00597FC4    mov        ecx,ebx
 00597FC6    mov        dl,1
 00597FC8    mov        eax,[00593994]; TRPSetupForm
 00597FCD    call       TCustomForm.Create; TRPSetupForm.Create
 00597FD2    mov        dword ptr [esi],eax
 00597FD4    mov        eax,dword ptr [esi]
 00597FD6    mov        edx,dword ptr [ebx+58]; TRvSystem.?f58:String
 00597FD9    call       TControl.SetText
 00597FDE    mov        eax,dword ptr [esi]
 00597FE0    mov        edx,dword ptr ds:[593994]; TRPSetupForm
 00597FE6    call       @AsClass
 00597FEB    mov        edx,dword ptr [ebp-4]
 00597FEE    mov        dword ptr [eax+378],edx; TRPSetupForm.?f378:dword
>00597FF4    jmp        0059802E
 00597FF6    mov        eax,dword ptr [esi]
 00597FF8    mov        edx,dword ptr ds:[593994]; TRPSetupForm
 00597FFE    call       @AsClass
 00598003    mov        ebx,eax
 00598005    mov        esi,dword ptr [ebx+378]; TRPSetupForm.?f378:dword
 0059800B    mov        byte ptr [ebx+380],0; TRPSetupForm.?f380:byte
 00598012    mov        eax,ebx
 00598014    mov        edx,dword ptr [eax]
 00598016    call       dword ptr [edx+0EC]; TCustomForm.ShowModal
 0059801C    cmp        eax,2
 0059801F    sete       al
 00598022    mov        byte ptr [esi+35],al
>00598025    jmp        0059802E
 00598027    mov        eax,esi
 00598029    call       FreeAndNil
 0059802E    pop        esi
 0059802F    pop        ebx
 00598030    pop        ecx
 00598031    pop        ebp
 00598032    ret        4
*}
//end;

//00598038
//procedure sub_00598038(?:?; ?:?; ?:?);
//begin
{*
 00598038    push       ebp
 00598039    mov        ebp,esp
 0059803B    push       0
 0059803D    push       0
 0059803F    push       0
 00598041    push       ebx
 00598042    push       esi
 00598043    push       edi
 00598044    mov        byte ptr [ebp-1],cl
 00598047    mov        edi,edx
 00598049    mov        ebx,eax
 0059804B    mov        esi,dword ptr [ebp+8]
 0059804E    xor        eax,eax
 00598050    push       ebp
 00598051    push       59818D
 00598056    push       dword ptr fs:[eax]
 00598059    mov        dword ptr fs:[eax],esp
 0059805C    test       byte ptr [edi+4B],4
>00598060    je         00598172
 00598066    mov        al,byte ptr [ebp-1]
 00598069    sub        al,1
>0059806B    jb         00598084
>0059806D    je         005980B6
 0059806F    dec        al
>00598071    je         00598102
 00598077    dec        al
>00598079    je         0059816B
>0059807F    jmp        00598172
 00598084    mov        ecx,ebx
 00598086    mov        dl,1
 00598088    mov        eax,[00596D48]; TRpStatusForm
 0059808D    call       TCustomForm.Create; TRpStatusForm.Create
 00598092    mov        dword ptr [esi],eax
 00598094    mov        eax,dword ptr [esi]
 00598096    mov        edx,dword ptr [ebx+5C]; TRvSystem.?f5C:String
 00598099    call       TControl.SetText
 0059809E    mov        eax,dword ptr [esi]
 005980A0    mov        edx,dword ptr ds:[596D48]; TRpStatusForm
 005980A6    call       @AsClass
 005980AB    mov        dword ptr [eax+300],edi; TRpStatusForm.?f300:dword
>005980B1    jmp        00598172
 005980B6    mov        eax,dword ptr [esi]
 005980B8    mov        edx,dword ptr ds:[596D48]; TRpStatusForm
 005980BE    call       @AsClass
 005980C3    mov        ebx,eax
 005980C5    mov        eax,dword ptr [ebx+300]; TRpStatusForm.?f300:dword
 005980CB    mov        edx,dword ptr [ebx+2FC]; TRpStatusForm.StatusLabel:TLabel
 005980D1    mov        eax,dword ptr [eax+38]
 005980D4    call       TRvNDRWriter.SetStatusLabel
 005980D9    mov        esi,dword ptr ds:[61B830]
 005980DF    mov        esi,dword ptr [esi]
 005980E1    lea        edx,[ebp-8]
 005980E4    mov        eax,5981A8; 'Cancel'
 005980E9    call       esi
 005980EB    mov        edx,dword ptr [ebp-8]
 005980EE    mov        eax,dword ptr [ebx+2F8]; TRpStatusForm.CancelButton:TButton
 005980F4    call       TControl.SetText
 005980F9    mov        eax,ebx
 005980FB    call       TCustomForm.Show
>00598100    jmp        00598172
 00598102    mov        eax,dword ptr [esi]
 00598104    mov        edx,dword ptr ds:[596D48]; TRpStatusForm
 0059810A    call       @AsClass
 0059810F    mov        ebx,eax
 00598111    mov        eax,dword ptr [ebx+300]; TRpStatusForm.?f300:dword
 00598117    test       byte ptr [eax+4B],2
>0059811B    je         00598172
 0059811D    mov        esi,dword ptr ds:[61B830]
 00598123    mov        esi,dword ptr [esi]
 00598125    lea        edx,[ebp-0C]
 00598128    mov        eax,5981B8; 'Ok'
 0059812D    call       esi
 0059812F    mov        edx,dword ptr [ebp-0C]
 00598132    mov        eax,dword ptr [ebx+2F8]; TRpStatusForm.CancelButton:TButton
 00598138    call       TControl.SetText
 0059813D    mov        eax,dword ptr [ebx+2F8]; TRpStatusForm.CancelButton:TButton
 00598143    mov        dword ptr [eax+214],1; TButton.ModalResult:TModalResult
 0059814D    mov        byte ptr [ebx+304],0; TRpStatusForm.?f304:byte
 00598154    mov        eax,[0061BD04]; ^Application:TApplication
 00598159    mov        eax,dword ptr [eax]
 0059815B    call       TApplication.ProcessMessages
 00598160    cmp        byte ptr [ebx+304],0; TRpStatusForm.?f304:byte
<00598167    je         00598154
>00598169    jmp        00598172
 0059816B    mov        eax,esi
 0059816D    call       FreeAndNil
 00598172    xor        eax,eax
 00598174    pop        edx
 00598175    pop        ecx
 00598176    pop        ecx
 00598177    mov        dword ptr fs:[eax],edx
 0059817A    push       598194
 0059817F    lea        eax,[ebp-0C]
 00598182    mov        edx,2
 00598187    call       @LStrArrayClr
 0059818C    ret
<0059818D    jmp        @HandleFinally
<00598192    jmp        0059817F
 00598194    pop        edi
 00598195    pop        esi
 00598196    pop        ebx
 00598197    mov        esp,ebp
 00598199    pop        ebp
 0059819A    ret        4
*}
//end;

//005981BC
//procedure sub_005981BC(?:?; ?:?; ?:?);
//begin
{*
 005981BC    push       ebp
 005981BD    mov        ebp,esp
 005981BF    push       ecx
 005981C0    push       ebx
 005981C1    push       esi
 005981C2    push       edi
 005981C3    mov        byte ptr [ebp-1],cl
 005981C6    mov        edi,edx
 005981C8    mov        esi,eax
 005981CA    mov        ebx,dword ptr [ebp+8]
 005981CD    mov        al,byte ptr [ebp-1]
 005981D0    sub        al,1
>005981D2    jb         005981EB
>005981D4    je         00598244
 005981D6    dec        al
>005981D8    je         0059832C
 005981DE    dec        al
>005981E0    je         00598348
>005981E6    jmp        0059834F
 005981EB    mov        ecx,esi
 005981ED    mov        dl,1
 005981EF    mov        eax,[00594F58]; TRavePreviewForm
 005981F4    call       TCustomForm.Create; TRavePreviewForm.Create
 005981F9    mov        dword ptr [ebx],eax
 005981FB    mov        edx,dword ptr [edi+60]
 005981FE    mov        eax,dword ptr [ebx]
 00598200    call       TControl.SetText
 00598205    mov        eax,dword ptr [edi+50]
 00598208    mov        edx,dword ptr [eax+54]
 0059820B    mov        eax,dword ptr [ebx]
 0059820D    call       TControl.SetWidth
 00598212    mov        eax,dword ptr [edi+50]
 00598215    mov        edx,dword ptr [eax+58]
 00598218    mov        eax,dword ptr [ebx]
 0059821A    call       TControl.SetHeight
 0059821F    mov        eax,dword ptr [edi+50]
 00598222    mov        dl,byte ptr [eax+5C]
 00598225    mov        eax,dword ptr [ebx]
 00598227    call       TCustomForm.SetWindowState
 0059822C    mov        eax,dword ptr [ebx]
 0059822E    mov        edx,dword ptr ds:[594F58]; TRavePreviewForm
 00598234    call       @AsClass
 00598239    mov        dword ptr [eax+410],edi; TRavePreviewForm.?f410:dword
>0059823F    jmp        0059834F
 00598244    mov        eax,dword ptr [ebx]
 00598246    mov        edx,dword ptr ds:[594F58]; TRavePreviewForm
 0059824C    call       @AsClass
 00598251    mov        edx,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00598257    mov        eax,dword ptr [esi+50]; TRvSystem.SystemPreview:TSystemPreview
 0059825A    call       00599114
 0059825F    cmp        word ptr [esi+0D2],0; TRvSystem.?fD2:word
>00598267    je         00598288
 00598269    mov        eax,dword ptr [ebx]
 0059826B    mov        edx,dword ptr ds:[594F58]; TRavePreviewForm
 00598271    call       @AsClass
 00598276    mov        edx,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059827C    mov        eax,dword ptr [esi+0D4]; TRvSystem.?fD4:dword
 00598282    call       dword ptr [esi+0D0]; TRvSystem.OnPreviewSetup
 00598288    mov        eax,dword ptr [ebx]
 0059828A    mov        edx,dword ptr ds:[594F58]; TRavePreviewForm
 00598290    call       @AsClass
 00598295    add        eax,408; TRavePreviewForm.?f408:String
 0059829A    mov        edx,dword ptr [esi+4C]; TRvSystem.SystemFiler:TSystemFiler
 0059829D    mov        edx,dword ptr [edx+8]; TSystemFiler.?f8:TFileName
 005982A0    call       @LStrAsg
 005982A5    mov        eax,dword ptr [ebx]
 005982A7    mov        edx,dword ptr ds:[594F58]; TRavePreviewForm
 005982AD    call       @AsClass
 005982B2    mov        edx,dword ptr [esi+4C]; TRvSystem.SystemFiler:TSystemFiler
 005982B5    mov        edx,dword ptr [edx+18]; TSystemFiler.?f18:TMemoryStream
 005982B8    mov        dword ptr [eax+40C],edx; TRavePreviewForm.?f40C:TMemoryStream
 005982BE    mov        eax,dword ptr [ebx]
 005982C0    mov        edx,dword ptr ds:[594F58]; TRavePreviewForm
 005982C6    call       @AsClass
 005982CB    call       005968E4
 005982D0    test       byte ptr [edi+4B],10
>005982D4    je         005982E2
 005982D6    mov        eax,dword ptr [ebx]
 005982D8    mov        edx,dword ptr [eax]
 005982DA    call       dword ptr [edx+0EC]
>005982E0    jmp        005982E9
 005982E2    mov        eax,dword ptr [ebx]
 005982E4    call       TCustomForm.Show
 005982E9    mov        eax,dword ptr [esi+4C]; TRvSystem.SystemFiler:TSystemFiler
 005982EC    mov        al,byte ptr [eax+14]; TSystemFiler.StreamMode:TStreamMode
 005982EF    sub        al,1
>005982F1    je         005982F7
 005982F3    sub        al,2
>005982F5    jne        0059834F
 005982F7    mov        eax,dword ptr [ebx]
 005982F9    mov        edx,dword ptr ds:[594F58]; TRavePreviewForm
 005982FF    call       @AsClass
 00598304    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059830A    mov        eax,dword ptr [eax+6C]; TRvRenderPreview.?f6C:TFileStream
 0059830D    call       TObject.Free
 00598312    mov        eax,dword ptr [ebx]
 00598314    mov        edx,dword ptr ds:[594F58]; TRavePreviewForm
 0059831A    call       @AsClass
 0059831F    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00598325    xor        edx,edx
 00598327    mov        dword ptr [eax+6C],edx; TRvRenderPreview.?f6C:TFileStream
>0059832A    jmp        0059834F
 0059832C    test       byte ptr [edi+4B],10
>00598330    jne        0059834F
 00598332    mov        eax,[0061BD04]; ^Application:TApplication
 00598337    mov        eax,dword ptr [eax]
 00598339    call       TApplication.ProcessMessages
 0059833E    mov        eax,dword ptr [ebx]
 00598340    cmp        byte ptr [eax+57],0
<00598344    jne        00598332
>00598346    jmp        0059834F
 00598348    mov        eax,ebx
 0059834A    call       FreeAndNil
 0059834F    pop        edi
 00598350    pop        esi
 00598351    pop        ebx
 00598352    pop        ecx
 00598353    pop        ebp
 00598354    ret        4
*}
//end;

//00598358
//procedure sub_00598358(?:TRvSystem; ?:?);
//begin
{*
 00598358    push       ebp
 00598359    mov        ebp,esp
 0059835B    add        esp,0FFFFFFF8
 0059835E    push       ebx
 0059835F    mov        dword ptr [ebp-8],edx
 00598362    mov        dword ptr [ebp-4],eax
 00598365    mov        eax,dword ptr [ebp-4]
 00598368    mov        al,byte ptr [eax+40]; TRvSystem.DefaultDest:TReportDest
 0059836B    mov        edx,dword ptr [ebp-4]
 0059836E    mov        byte ptr [edx+41],al; TRvSystem.?f41:TReportDest
 00598371    mov        eax,dword ptr [ebp-4]
 00598374    mov        byte ptr [eax+35],0; TRvSystem.?f35:byte
 00598378    mov        eax,dword ptr [ebp-4]
 0059837B    test       byte ptr [eax+49],1; TRvSystem.SystemSetups:TSystemSetups
>0059837F    je         0059842C
 00598385    mov        eax,dword ptr [ebp-4]
 00598388    cmp        word ptr [eax+0E2],0; TRvSystem.?fE2:word
>00598390    jne        005983A9
 00598392    mov        eax,dword ptr [ebp-4]
 00598395    mov        edx,dword ptr [ebp-4]
 00598398    mov        dword ptr [eax+0E4],edx; TRvSystem.?fE4:TRvSystem
 0059839E    mov        edx,dword ptr [edx]
 005983A0    mov        edx,dword ptr [edx+30]; TRvSystem.?f30:String
 005983A3    mov        dword ptr [eax+0E0],edx; TRvSystem.OverrideSetup:TRvSystemEvent
 005983A9    mov        eax,dword ptr [ebp-8]
 005983AC    push       eax
 005983AD    mov        ebx,dword ptr [ebp-4]
 005983B0    xor        ecx,ecx
 005983B2    mov        edx,dword ptr [ebp-4]
 005983B5    mov        eax,dword ptr [ebx+0E4]; TRvSystem.?fE4:TRvSystem
 005983BB    call       dword ptr [ebx+0E0]; TRvSystem.OverrideSetup
 005983C1    xor        eax,eax
 005983C3    push       ebp
 005983C4    push       598425
 005983C9    push       dword ptr fs:[eax]
 005983CC    mov        dword ptr fs:[eax],esp
 005983CF    mov        eax,dword ptr [ebp-8]
 005983D2    push       eax
 005983D3    mov        ebx,dword ptr [ebp-4]
 005983D6    mov        cl,1
 005983D8    mov        edx,dword ptr [ebp-4]
 005983DB    mov        eax,dword ptr [ebx+0E4]; TRvSystem.?fE4:TRvSystem
 005983E1    call       dword ptr [ebx+0E0]; TRvSystem.OverrideSetup
 005983E7    mov        eax,dword ptr [ebp-8]
 005983EA    push       eax
 005983EB    mov        ebx,dword ptr [ebp-4]
 005983EE    mov        cl,2
 005983F0    mov        edx,dword ptr [ebp-4]
 005983F3    mov        eax,dword ptr [ebx+0E4]; TRvSystem.?fE4:TRvSystem
 005983F9    call       dword ptr [ebx+0E0]; TRvSystem.OverrideSetup
 005983FF    xor        eax,eax
 00598401    pop        edx
 00598402    pop        ecx
 00598403    pop        ecx
 00598404    mov        dword ptr fs:[eax],edx
 00598407    push       59842C
 0059840C    mov        eax,dword ptr [ebp-8]
 0059840F    push       eax
 00598410    mov        ebx,dword ptr [ebp-4]
 00598413    mov        cl,3
 00598415    mov        edx,dword ptr [ebp-4]
 00598418    mov        eax,dword ptr [ebx+0E4]; TRvSystem.?fE4:TRvSystem
 0059841E    call       dword ptr [ebx+0E0]; TRvSystem.OverrideSetup
 00598424    ret
<00598425    jmp        @HandleFinally
<0059842A    jmp        0059840C
 0059842C    pop        ebx
 0059842D    pop        ecx
 0059842E    pop        ecx
 0059842F    pop        ebp
 00598430    ret
*}
//end;

//00598434
//procedure sub_00598434(?:TRvSystem; ?:?);
//begin
{*
 00598434    push       ebp
 00598435    mov        ebp,esp
 00598437    add        esp,0FFFFFFF8
 0059843A    push       ebx
 0059843B    mov        dword ptr [ebp-8],edx
 0059843E    mov        dword ptr [ebp-4],eax
 00598441    mov        eax,dword ptr [ebp-4]
 00598444    test       byte ptr [eax+4B],20; TRvSystem.SystemOptions:TSystemOptions
>00598448    jne        00598600
 0059844E    mov        eax,dword ptr [ebp-4]
 00598451    mov        byte ptr [eax+35],1; TRvSystem.?f35:byte
 00598455    mov        eax,dword ptr [ebp-4]
 00598458    cmp        word ptr [eax+0EA],0; TRvSystem.?fEA:word
>00598460    jne        00598479
 00598462    mov        eax,dword ptr [ebp-4]
 00598465    mov        edx,dword ptr [ebp-4]
 00598468    mov        dword ptr [eax+0EC],edx; TRvSystem.?fEC:TRvSystem
 0059846E    mov        edx,dword ptr [edx]
 00598470    mov        edx,dword ptr [edx+34]; TRvSystem.?f34:dword
 00598473    mov        dword ptr [eax+0E8],edx; TRvSystem.OverrideStatus:TRvSystemEvent
 00598479    mov        eax,dword ptr [ebp-8]
 0059847C    push       eax
 0059847D    mov        ebx,dword ptr [ebp-4]
 00598480    xor        ecx,ecx
 00598482    mov        edx,dword ptr [ebp-4]
 00598485    mov        eax,dword ptr [ebx+0EC]; TRvSystem.?fEC:TRvSystem
 0059848B    call       dword ptr [ebx+0E8]; TRvSystem.OverrideStatus
 00598491    mov        eax,dword ptr [ebp-4]
 00598494    xor        edx,edx
 00598496    mov        dword ptr [eax+38],edx; TRvSystem.?f38:TRvNDRWriter
 00598499    xor        edx,edx
 0059849B    push       ebp
 0059849C    push       5985F9
 005984A1    push       dword ptr fs:[edx]
 005984A4    mov        dword ptr fs:[edx],esp
 005984A7    mov        eax,dword ptr [ebp-4]
 005984AA    mov        ecx,dword ptr [eax+4]; TRvSystem.FOwner:TComponent
 005984AD    mov        dl,1
 005984AF    mov        eax,[00588AFC]; TRvNDRWriter
 005984B4    call       TRvNDRWriter.Create; TRvNDRWriter.Create
 005984B9    mov        ebx,eax
 005984BB    mov        eax,dword ptr [ebp-4]
 005984BE    mov        dword ptr [eax+38],ebx; TRvSystem.?f38:TRvNDRWriter
 005984C1    mov        edx,ebx
 005984C3    mov        eax,dword ptr [ebp-4]
 005984C6    mov        eax,dword ptr [eax+54]; TRvSystem.SystemPrinter:TSystemPrinter
 005984C9    call       00598DD4
 005984CE    mov        eax,dword ptr [ebp-4]
 005984D1    mov        edx,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 005984D4    mov        eax,dword ptr [ebp-4]
 005984D7    mov        eax,dword ptr [eax+4C]; TRvSystem.SystemFiler:TSystemFiler
 005984DA    call       005992B8
 005984DF    mov        eax,dword ptr [ebp-4]
 005984E2    cmp        byte ptr [eax+41],2; TRvSystem.?f41:TReportDest
>005984E6    jne        0059852B
 005984E8    mov        eax,dword ptr [ebp-4]
 005984EB    cmp        dword ptr [eax+68],0; TRvSystem.?f68:dword
>005984EF    jne        0059852B
 005984F1    mov        eax,dword ptr [ebp-4]
 005984F4    cmp        byte ptr [eax+34],0; TRvSystem.?f34:dword
>005984F8    je         0059850D
 005984FA    mov        eax,dword ptr [ebp-4]
 005984FD    mov        edx,dword ptr [eax+44]; TRvSystem.?f44:TFileName
 00598500    mov        eax,dword ptr [ebp-4]
 00598503    mov        eax,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 00598506    call       0058491C
>0059850B    jmp        0059852B
 0059850D    mov        eax,dword ptr [ebp-4]
 00598510    mov        ebx,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 00598513    mov        byte ptr [ebx+0B14],1; TRvNDRWriter.StreamMode:TStreamMode
 0059851A    lea        eax,[ebx+0B10]; TRvNDRWriter.?fB10:TFileName
 00598520    mov        edx,dword ptr [ebp-4]
 00598523    mov        edx,dword ptr [edx+44]; TRvSystem.?f44:TFileName
 00598526    call       @LStrAsg
 0059852B    mov        eax,dword ptr [ebp-4]
 0059852E    mov        edx,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 00598531    mov        eax,dword ptr [ebp-4]
 00598534    call       00597E44
 00598539    mov        eax,dword ptr [ebp-8]
 0059853C    push       eax
 0059853D    mov        ebx,dword ptr [ebp-4]
 00598540    mov        cl,1
 00598542    mov        edx,dword ptr [ebp-4]
 00598545    mov        eax,dword ptr [ebx+0EC]; TRvSystem.?fEC:TRvSystem
 0059854B    call       dword ptr [ebx+0E8]; TRvSystem.OverrideStatus
 00598551    mov        eax,dword ptr [ebp-4]
 00598554    mov        eax,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 00598557    mov        edx,dword ptr [eax]
 00598559    call       dword ptr [edx+118]; TRvNDRWriter.sub_00584DF4
 0059855F    mov        eax,dword ptr [ebp-4]
 00598562    mov        eax,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 00598565    mov        edx,dword ptr [eax+794]; TRvNDRWriter.?f794:TStringList
 0059856B    mov        eax,dword ptr [ebp-4]
 0059856E    call       00597F98
 00598573    mov        eax,dword ptr [ebp-4]
 00598576    mov        eax,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 00598579    mov        al,byte ptr [eax+8FC]; TRvNDRWriter.?f8FC:byte
 0059857F    mov        edx,dword ptr [ebp-4]
 00598582    mov        byte ptr [edx+35],al; TRvSystem.?f35:byte
 00598585    xor        eax,eax
 00598587    pop        edx
 00598588    pop        ecx
 00598589    pop        ecx
 0059858A    mov        dword ptr fs:[eax],edx
 0059858D    push       598600
 00598592    mov        eax,dword ptr [ebp-4]
 00598595    mov        eax,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 00598598    test       eax,eax
>0059859A    je         005985E0
 0059859C    mov        eax,dword ptr [eax+91C]; TRvNDRWriter.?f91C:dword
 005985A2    mov        edx,dword ptr [ebp-4]
 005985A5    mov        dword ptr [edx+3C],eax; TRvSystem.?f3C:dword
 005985A8    mov        eax,dword ptr [ebp-4]
 005985AB    mov        eax,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 005985AE    mov        edx,dword ptr ds:[588AFC]; TRvNDRWriter
 005985B4    call       @AsClass
 005985B9    mov        edx,dword ptr [eax+0B10]; TRvNDRWriter.?fB10:TFileName
 005985BF    mov        eax,dword ptr [ebp-4]
 005985C2    mov        eax,dword ptr [eax+4C]; TRvSystem.SystemFiler:TSystemFiler
 005985C5    add        eax,8; TSystemFiler.?f8:TFileName
 005985C8    call       @LStrAsg
 005985CD    mov        eax,dword ptr [ebp-4]
 005985D0    mov        eax,dword ptr [eax+38]; TRvSystem.?f38:TRvNDRWriter
 005985D3    call       TObject.Free
 005985D8    mov        eax,dword ptr [ebp-4]
 005985DB    xor        edx,edx
 005985DD    mov        dword ptr [eax+38],edx; TRvSystem.?f38:TRvNDRWriter
 005985E0    mov        eax,dword ptr [ebp-8]
 005985E3    push       eax
 005985E4    mov        ebx,dword ptr [ebp-4]
 005985E7    mov        cl,3
 005985E9    mov        edx,dword ptr [ebp-4]
 005985EC    mov        eax,dword ptr [ebx+0EC]; TRvSystem.?fEC:TRvSystem
 005985F2    call       dword ptr [ebx+0E8]; TRvSystem.OverrideStatus
 005985F8    ret
<005985F9    jmp        @HandleFinally
<005985FE    jmp        00598592
 00598600    pop        ebx
 00598601    pop        ecx
 00598602    pop        ecx
 00598603    pop        ebp
 00598604    ret
*}
//end;

//00598608
//procedure sub_00598608(?:TRvSystem);
//begin
{*
 00598608    push       ebp
 00598609    mov        ebp,esp
 0059860B    push       ecx
 0059860C    push       ebx
 0059860D    push       esi
 0059860E    mov        ebx,eax
 00598610    mov        ecx,ebx
 00598612    mov        dl,1
 00598614    mov        eax,[0059165C]; TRvRenderPrinter
 00598619    call       TRvRenderPrinter.Create; TRvRenderPrinter.Create
 0059861E    mov        dword ptr [ebp-4],eax
 00598621    xor        eax,eax
 00598623    push       ebp
 00598624    push       59866C
 00598629    push       dword ptr fs:[eax]
 0059862C    mov        dword ptr fs:[eax],esp
 0059862F    mov        esi,dword ptr [ebx+4C]; TRvSystem.SystemFiler:TSystemFiler
 00598632    cmp        dword ptr [esi+8],0; TSystemFiler.?f8:TFileName
>00598636    je         00598648
 00598638    mov        eax,dword ptr [ebx+4C]; TRvSystem.SystemFiler:TSystemFiler
 0059863B    mov        edx,dword ptr [eax+8]; TSystemFiler.?f8:TFileName
 0059863E    mov        eax,dword ptr [ebp-4]
 00598641    call       0058FEF0
>00598646    jmp        00598656
 00598648    mov        edx,dword ptr [esi+18]; TSystemFiler.?f18:TMemoryStream
 0059864B    mov        eax,dword ptr [ebp-4]
 0059864E    mov        ecx,dword ptr [eax]
 00598650    call       dword ptr [ecx+0A8]; TRvRenderPrinter.sub_0058FE64
 00598656    xor        eax,eax
 00598658    pop        edx
 00598659    pop        ecx
 0059865A    pop        ecx
 0059865B    mov        dword ptr fs:[eax],edx
 0059865E    push       598673
 00598663    lea        eax,[ebp-4]
 00598666    call       FreeAndNil
 0059866B    ret
<0059866C    jmp        @HandleFinally
<00598671    jmp        00598663
 00598673    pop        esi
 00598674    pop        ebx
 00598675    pop        ecx
 00598676    pop        ebp
 00598677    ret
*}
//end;

//00598678
//procedure sub_00598678(?:TRvSystem; ?:?);
//begin
{*
 00598678    push       ebp
 00598679    mov        ebp,esp
 0059867B    add        esp,0FFFFFFF8
 0059867E    push       ebx
 0059867F    mov        dword ptr [ebp-8],edx
 00598682    mov        dword ptr [ebp-4],eax
 00598685    mov        eax,dword ptr [ebp-4]
 00598688    cmp        word ptr [eax+0F2],0; TRvSystem.?fF2:word
>00598690    jne        005986A9
 00598692    mov        eax,dword ptr [ebp-4]
 00598695    mov        edx,dword ptr [ebp-4]
 00598698    mov        dword ptr [eax+0F4],edx; TRvSystem.?fF4:TRvSystem
 0059869E    mov        edx,dword ptr [edx]
 005986A0    mov        edx,dword ptr [edx+38]; TRvSystem.?f38:TRvNDRWriter
 005986A3    mov        dword ptr [eax+0F0],edx; TRvSystem.OverridePreview:TRvSystemEvent
 005986A9    mov        eax,dword ptr [ebp-8]
 005986AC    push       eax
 005986AD    mov        ebx,dword ptr [ebp-4]
 005986B0    xor        ecx,ecx
 005986B2    mov        edx,dword ptr [ebp-4]
 005986B5    mov        eax,dword ptr [ebx+0F4]; TRvSystem.?fF4:TRvSystem
 005986BB    call       dword ptr [ebx+0F0]; TRvSystem.OverridePreview
 005986C1    xor        eax,eax
 005986C3    push       ebp
 005986C4    push       598725
 005986C9    push       dword ptr fs:[eax]
 005986CC    mov        dword ptr fs:[eax],esp
 005986CF    mov        eax,dword ptr [ebp-8]
 005986D2    push       eax
 005986D3    mov        ebx,dword ptr [ebp-4]
 005986D6    mov        cl,1
 005986D8    mov        edx,dword ptr [ebp-4]
 005986DB    mov        eax,dword ptr [ebx+0F4]; TRvSystem.?fF4:TRvSystem
 005986E1    call       dword ptr [ebx+0F0]; TRvSystem.OverridePreview
 005986E7    mov        eax,dword ptr [ebp-8]
 005986EA    push       eax
 005986EB    mov        ebx,dword ptr [ebp-4]
 005986EE    mov        cl,2
 005986F0    mov        edx,dword ptr [ebp-4]
 005986F3    mov        eax,dword ptr [ebx+0F4]; TRvSystem.?fF4:TRvSystem
 005986F9    call       dword ptr [ebx+0F0]; TRvSystem.OverridePreview
 005986FF    xor        eax,eax
 00598701    pop        edx
 00598702    pop        ecx
 00598703    pop        ecx
 00598704    mov        dword ptr fs:[eax],edx
 00598707    push       59872C
 0059870C    mov        eax,dword ptr [ebp-8]
 0059870F    push       eax
 00598710    mov        ebx,dword ptr [ebp-4]
 00598713    mov        cl,3
 00598715    mov        edx,dword ptr [ebp-4]
 00598718    mov        eax,dword ptr [ebx+0F4]; TRvSystem.?fF4:TRvSystem
 0059871E    call       dword ptr [ebx+0F0]; TRvSystem.OverridePreview
 00598724    ret
<00598725    jmp        @HandleFinally
<0059872A    jmp        0059870C
 0059872C    pop        ebx
 0059872D    pop        ecx
 0059872E    pop        ecx
 0059872F    pop        ebp
 00598730    ret
*}
//end;

//00598734
//function sub_00598734(?:?):?;
//begin
{*
 00598734    push       ebp
 00598735    mov        ebp,esp
 00598737    mov        eax,dword ptr [ebp+8]
 0059873A    mov        eax,dword ptr [eax-4]
 0059873D    test       byte ptr [eax+4B],1
>00598741    jne        00598777
 00598743    mov        eax,dword ptr [ebp+8]
 00598746    mov        eax,dword ptr [eax-4]
 00598749    cmp        byte ptr [eax+48],0
>0059874D    jne        00598777
 0059874F    mov        eax,dword ptr [ebp+8]
 00598752    mov        eax,dword ptr [eax-4]
 00598755    cmp        byte ptr [eax+41],2
>00598759    jne        00598773
 0059875B    mov        eax,dword ptr [ebp+8]
 0059875E    mov        eax,dword ptr [eax-4]
 00598761    cmp        byte ptr [eax+34],0
>00598765    jne        00598773
 00598767    mov        eax,dword ptr [ebp+8]
 0059876A    mov        eax,dword ptr [eax-4]
 0059876D    test       byte ptr [eax+4B],20
>00598771    je         00598777
 00598773    xor        eax,eax
 00598775    pop        ebp
 00598776    ret
 00598777    mov        al,1
 00598779    pop        ebp
 0059877A    ret
*}
//end;

//0059877C
//procedure sub_0059877C(?:TRvSystem);
//begin
{*
 0059877C    push       ebp
 0059877D    mov        ebp,esp
 0059877F    add        esp,0FFFFFEA0
 00598785    push       ebx
 00598786    push       esi
 00598787    push       edi
 00598788    mov        dword ptr [ebp-4],eax
 0059878B    xor        eax,eax
 0059878D    mov        dword ptr [ebp-0C],eax
 00598790    xor        eax,eax
 00598792    mov        dword ptr [ebp-10],eax
 00598795    xor        eax,eax
 00598797    mov        dword ptr [ebp-14],eax
 0059879A    lea        edx,[ebp-0C]
 0059879D    mov        eax,dword ptr [ebp-4]
 005987A0    call       00598358
 005987A5    mov        eax,dword ptr [ebp-4]
 005987A8    cmp        byte ptr [eax+35],0; TRvSystem.?f35:byte
>005987AC    jne        0059893D
 005987B2    call       005807BC
 005987B7    mov        edx,dword ptr [eax]
 005987B9    call       dword ptr [edx+28]
 005987BC    dec        eax
>005987BD    jg         005987CB
 005987BF    mov        eax,dword ptr [ebp-4]
 005987C2    mov        eax,dword ptr [eax+54]; TRvSystem.SystemPrinter:TSystemPrinter
 005987C5    cmp        dword ptr [eax+4],1; TSystemPrinter.Copies:Integer
>005987C9    jg         005987CF
 005987CB    xor        eax,eax
>005987CD    jmp        005987D1
 005987CF    mov        al,1
 005987D1    mov        edx,dword ptr [ebp-4]
 005987D4    mov        byte ptr [edx+48],al; TRvSystem.?f48:byte
 005987D7    push       ebp
 005987D8    call       00598734
 005987DD    pop        ecx
 005987DE    test       al,al
>005987E0    je         0059880A
 005987E2    mov        eax,dword ptr [ebp-4]
 005987E5    mov        eax,dword ptr [eax+4C]; TRvSystem.SystemFiler:TSystemFiler
 005987E8    cmp        byte ptr [eax+14],0; TSystemFiler.StreamMode:TStreamMode
>005987EC    jne        0059880A
 005987EE    mov        dl,1
 005987F0    mov        eax,[0041CBF8]; TMemoryStream
 005987F5    call       TObject.Create; TMemoryStream.Create
 005987FA    mov        dword ptr [ebp-8],eax
 005987FD    mov        edx,dword ptr [ebp-8]
 00598800    mov        eax,dword ptr [ebp-4]
 00598803    call       00597F90
>00598808    jmp        0059880F
 0059880A    xor        eax,eax
 0059880C    mov        dword ptr [ebp-8],eax
 0059880F    xor        edx,edx
 00598811    push       ebp
 00598812    push       598933
 00598817    push       dword ptr fs:[edx]
 0059881A    mov        dword ptr fs:[edx],esp
 0059881D    lea        edx,[ebp-10]
 00598820    mov        eax,dword ptr [ebp-4]
 00598823    call       00598434
 00598828    mov        eax,dword ptr [ebp-4]
 0059882B    cmp        byte ptr [eax+35],0; TRvSystem.?f35:byte
>0059882F    jne        005988AA
 00598831    mov        eax,dword ptr [ebp-4]
 00598834    mov        al,byte ptr [eax+41]; TRvSystem.?f41:TReportDest
 00598837    mov        edx,eax
 00598839    dec        edx
 0059883A    sub        dl,2
>0059883D    jae        0059889B
 0059883F    mov        eax,dword ptr [ebp-4]
 00598842    cmp        byte ptr [eax+41],1; TRvSystem.?f41:TReportDest
>00598846    je         00598851
 00598848    mov        eax,dword ptr [ebp-4]
 0059884B    cmp        byte ptr [eax+34],0; TRvSystem.?f34:dword
>0059884F    je         0059885E
 00598851    lea        edx,[ebp-10]
 00598854    mov        eax,dword ptr [ebp-4]
 00598857    call       00598608
>0059885C    jmp        005988AA
 0059885E    mov        eax,dword ptr [ebp-4]
 00598861    cmp        dword ptr [eax+68],0; TRvSystem.?f68:dword
>00598865    je         00598874
 00598867    lea        edx,[ebp-10]
 0059886A    mov        eax,dword ptr [ebp-4]
 0059886D    call       00598A5C
>00598872    jmp        005988AA
 00598874    mov        eax,dword ptr [ebp-4]
 00598877    cmp        word ptr [eax+0EA],0; TRvSystem.?fEA:word
>0059887F    je         005988AA
 00598881    lea        eax,[ebp-10]
 00598884    push       eax
 00598885    mov        ebx,dword ptr [ebp-4]
 00598888    mov        cl,3
 0059888A    mov        edx,dword ptr [ebp-4]
 0059888D    mov        eax,dword ptr [ebx+0EC]; TRvSystem.?fEC:TRvSystem
 00598893    call       dword ptr [ebx+0E8]; TRvSystem.OverrideStatus
>00598899    jmp        005988AA
 0059889B    test       al,al
>0059889D    jne        005988AA
 0059889F    lea        edx,[ebp-14]
 005988A2    mov        eax,dword ptr [ebp-4]
 005988A5    call       00598678
 005988AA    xor        eax,eax
 005988AC    pop        edx
 005988AD    pop        ecx
 005988AE    pop        ecx
 005988AF    mov        dword ptr fs:[eax],edx
 005988B2    push       59893D
 005988B7    cmp        dword ptr [ebp-8],0
>005988BB    je         005988C5
 005988BD    mov        eax,dword ptr [ebp-8]
 005988C0    call       TObject.Free
 005988C5    mov        eax,dword ptr [ebp-4]
 005988C8    cmp        byte ptr [eax+41],0; TRvSystem.?f41:TReportDest
>005988CC    je         005988E0
 005988CE    mov        eax,dword ptr [ebp-4]
 005988D1    test       byte ptr [eax+4B],1; TRvSystem.SystemOptions:TSystemOptions
>005988D5    jne        005988E0
 005988D7    mov        eax,dword ptr [ebp-4]
 005988DA    cmp        byte ptr [eax+48],0; TRvSystem.?f48:byte
>005988DE    je         00598932
 005988E0    mov        eax,dword ptr [ebp-4]
 005988E3    mov        eax,dword ptr [eax+4C]; TRvSystem.SystemFiler:TSystemFiler
 005988E6    cmp        byte ptr [eax+14],3; TSystemFiler.StreamMode:TStreamMode
>005988EA    jne        00598932
 005988EC    mov        eax,dword ptr [ebp-4]
 005988EF    mov        eax,dword ptr [eax+4C]; TRvSystem.SystemFiler:TSystemFiler
 005988F2    mov        edx,dword ptr [eax+8]; TSystemFiler.?f8:TFileName
 005988F5    lea        eax,[ebp-160]
 005988FB    call       @Assign
 00598900    xor        eax,eax
 00598902    push       ebp
 00598903    push       598928
 00598908    push       dword ptr fs:[eax]
 0059890B    mov        dword ptr fs:[eax],esp
 0059890E    lea        eax,[ebp-160]
 00598914    call       @Erase
 00598919    call       @_IOTest
 0059891E    xor        eax,eax
 00598920    pop        edx
 00598921    pop        ecx
 00598922    pop        ecx
 00598923    mov        dword ptr fs:[eax],edx
>00598926    jmp        00598932
<00598928    jmp        @HandleAnyException
 0059892D    call       @DoneExcept
 00598932    ret
<00598933    jmp        @HandleFinally
<00598938    jmp        005988B7
 0059893D    pop        edi
 0059893E    pop        esi
 0059893F    pop        ebx
 00598940    mov        esp,ebp
 00598942    pop        ebp
 00598943    ret
*}
//end;

//00598944
//procedure sub_00598944(?:dword; ?:TObject);
//begin
{*
 00598944    mov        dword ptr [eax+68],edx
 00598947    ret
*}
//end;

//00598948
//procedure sub_00598948(?:TRvSystem; ?:void);
//begin
{*
 00598948    push       ebp
 00598949    mov        ebp,esp
 0059894B    push       0
 0059894D    push       ebx
 0059894E    push       esi
 0059894F    push       edi
 00598950    mov        esi,edx
 00598952    mov        ebx,eax
 00598954    xor        eax,eax
 00598956    push       ebp
 00598957    push       598A1F
 0059895C    push       dword ptr fs:[eax]
 0059895F    mov        dword ptr fs:[eax],esp
 00598962    mov        edi,dword ptr [ebx+4C]; TRvSystem.SystemFiler:TSystemFiler
 00598965    mov        al,byte ptr [edi+14]; TSystemFiler.StreamMode:TStreamMode
 00598968    sub        al,1
>0059896A    jb         0059897B
>0059896C    je         005989B6
 0059896E    dec        al
>00598970    je         005989CB
 00598972    dec        al
>00598974    je         005989B6
>00598976    jmp        005989FE
 0059897B    mov        dl,1
 0059897D    mov        eax,[0041CBF8]; TMemoryStream
 00598982    call       TObject.Create; TMemoryStream.Create
 00598987    mov        dword ptr [esi],eax
 00598989    mov        eax,dword ptr [esi]
 0059898B    mov        edx,dword ptr ds:[41CBF8]; TMemoryStream
 00598991    call       @AsClass
 00598996    mov        edi,eax
 00598998    push       0
 0059899A    push       0
 0059899C    mov        eax,dword ptr [ebx+4C]; TRvSystem.SystemFiler:TSystemFiler
 0059899F    mov        eax,dword ptr [eax+18]; TSystemFiler.?f18:TMemoryStream
 005989A2    call       TStream.SetPosition
 005989A7    mov        eax,dword ptr [ebx+4C]; TRvSystem.SystemFiler:TSystemFiler
 005989AA    mov        edx,dword ptr [eax+18]; TSystemFiler.?f18:TMemoryStream
 005989AD    mov        eax,edi
 005989AF    call       TMemoryStream.LoadFromStream
>005989B4    jmp        005989FE
 005989B6    push       20
 005989B8    mov        ecx,dword ptr [edi+8]; TSystemFiler.?f8:TFileName
 005989BB    mov        dl,1
 005989BD    mov        eax,[0041CB08]; TFileStream
 005989C2    call       TFileStream.Create; TFileStream.Create
 005989C7    mov        dword ptr [esi],eax
>005989C9    jmp        005989FE
 005989CB    cmp        dword ptr [edi+18],0; TSystemFiler.?f18:TMemoryStream
>005989CF    jne        005989EB
 005989D1    mov        edi,dword ptr ds:[61B830]
 005989D7    mov        edi,dword ptr [edi]
 005989D9    lea        edx,[ebp-4]
 005989DC    mov        eax,598A34; 'StreamMode is smUser but Stream is nil'
 005989E1    call       edi
 005989E3    mov        eax,dword ptr [ebp-4]
 005989E6    call       00579798
 005989EB    mov        eax,dword ptr [ebx+4C]; TRvSystem.SystemFiler:TSystemFiler
 005989EE    mov        eax,dword ptr [eax+18]; TSystemFiler.?f18:TMemoryStream
 005989F1    mov        dword ptr [esi],eax
 005989F3    push       0
 005989F5    push       0
 005989F7    mov        eax,dword ptr [esi]
 005989F9    call       TStream.SetPosition
 005989FE    push       0
 00598A00    push       0
 00598A02    mov        eax,dword ptr [esi]
 00598A04    call       TStream.SetPosition
 00598A09    xor        eax,eax
 00598A0B    pop        edx
 00598A0C    pop        ecx
 00598A0D    pop        ecx
 00598A0E    mov        dword ptr fs:[eax],edx
 00598A11    push       598A26
 00598A16    lea        eax,[ebp-4]
 00598A19    call       @LStrClr
 00598A1E    ret
<00598A1F    jmp        @HandleFinally
<00598A24    jmp        00598A16
 00598A26    pop        edi
 00598A27    pop        esi
 00598A28    pop        ebx
 00598A29    pop        ecx
 00598A2A    pop        ebp
 00598A2B    ret
*}
//end;

//00598A5C
//procedure sub_00598A5C(?:TRvSystem; ?:?);
//begin
{*
 00598A5C    push       ebp
 00598A5D    mov        ebp,esp
 00598A5F    add        esp,0FFFFFFF8
 00598A62    push       ebx
 00598A63    mov        dword ptr [ebp-4],eax
 00598A66    mov        eax,dword ptr [ebp-4]
 00598A69    cmp        word ptr [eax+0EA],0; TRvSystem.?fEA:word
>00598A71    je         00598A8D
 00598A73    cmp        dword ptr [edx],0
>00598A76    je         00598A8D
 00598A78    push       edx
 00598A79    mov        ebx,dword ptr [ebp-4]
 00598A7C    mov        cl,3
 00598A7E    mov        edx,dword ptr [ebp-4]
 00598A81    mov        eax,dword ptr [ebx+0EC]; TRvSystem.?fEC:TRvSystem
 00598A87    call       dword ptr [ebx+0E8]; TRvSystem.OverrideStatus
 00598A8D    xor        eax,eax
 00598A8F    mov        dword ptr [ebp-8],eax
 00598A92    xor        eax,eax
 00598A94    push       ebp
 00598A95    push       598AF2
 00598A9A    push       dword ptr fs:[eax]
 00598A9D    mov        dword ptr fs:[eax],esp
 00598AA0    lea        edx,[ebp-8]
 00598AA3    mov        eax,dword ptr [ebp-4]
 00598AA6    call       00598948
 00598AAB    mov        eax,dword ptr [ebp-4]
 00598AAE    mov        eax,dword ptr [eax+68]; TRvSystem.?f68:dword
 00598AB1    add        eax,60
 00598AB4    mov        edx,dword ptr [ebp-4]
 00598AB7    mov        edx,dword ptr [edx+44]; TRvSystem.?f44:TFileName
 00598ABA    call       @LStrAsg
 00598ABF    mov        eax,dword ptr [ebp-4]
 00598AC2    mov        eax,dword ptr [eax+68]; TRvSystem.?f68:dword
 00598AC5    mov        edx,dword ptr [ebp-8]
 00598AC8    mov        ecx,dword ptr [eax]
 00598ACA    call       dword ptr [ecx+0A8]
 00598AD0    xor        eax,eax
 00598AD2    pop        edx
 00598AD3    pop        ecx
 00598AD4    pop        ecx
 00598AD5    mov        dword ptr fs:[eax],edx
 00598AD8    push       598AF9
 00598ADD    mov        eax,dword ptr [ebp-4]
 00598AE0    mov        eax,dword ptr [eax+4C]; TRvSystem.SystemFiler:TSystemFiler
 00598AE3    cmp        byte ptr [eax+14],2; TSystemFiler.StreamMode:TStreamMode
>00598AE7    je         00598AF1
 00598AE9    lea        eax,[ebp-8]
 00598AEC    call       FreeAndNil
 00598AF1    ret
<00598AF2    jmp        @HandleFinally
<00598AF7    jmp        00598ADD
 00598AF9    pop        ebx
 00598AFA    pop        ecx
 00598AFB    pop        ecx
 00598AFC    pop        ebp
 00598AFD    ret
*}
//end;

//00598B00
//constructor TSystemPrinter.Create(?:TSystemPrinter; _Dv__:Boolean);
//begin
{*
 00598B00    push       ebp
 00598B01    mov        ebp,esp
 00598B03    push       0
 00598B05    push       0
 00598B07    push       ebx
 00598B08    push       esi
 00598B09    push       edi
 00598B0A    test       dl,dl
>00598B0C    je         00598B16
 00598B0E    add        esp,0FFFFFFF0
 00598B11    call       @ClassCreate
 00598B16    mov        ebx,edx
 00598B18    mov        esi,eax
 00598B1A    xor        eax,eax
 00598B1C    push       ebp
 00598B1D    push       598C1B
 00598B22    push       dword ptr fs:[eax]
 00598B25    mov        dword ptr fs:[eax],esp
 00598B28    xor        edx,edx
 00598B2A    mov        eax,esi
 00598B2C    call       TObject.Create
 00598B31    mov        dword ptr [esi+4],1; TSystemPrinter.Copies:Integer
 00598B38    mov        dword ptr [esi+8],1; TSystemPrinter.FirstPage:Integer
 00598B3F    mov        dword ptr [esi+0C],270F; TSystemPrinter.LastPage:Integer
 00598B46    mov        byte ptr [esi+10],1; TSystemPrinter.LineHeightMethod:TLineHeightMethod
 00598B4A    mov        dword ptr [esi+14],6; TSystemPrinter.LinesPerInch:Integer
 00598B51    xor        eax,eax
 00598B53    mov        dword ptr [esi+18],eax; TSystemPrinter.MarginBottom:Double
 00598B56    mov        dword ptr [esi+1C],eax; TSystemPrinter.?f1C:dword
 00598B59    xor        eax,eax
 00598B5B    mov        dword ptr [esi+20],eax; TSystemPrinter.MarginLeft:Double
 00598B5E    mov        dword ptr [esi+24],eax; TSystemPrinter.?f24:dword
 00598B61    xor        eax,eax
 00598B63    mov        dword ptr [esi+28],eax; TSystemPrinter.MarginRight:Double
 00598B66    mov        dword ptr [esi+2C],eax; TSystemPrinter.?f2C:dword
 00598B69    xor        eax,eax
 00598B6B    mov        dword ptr [esi+30],eax; TSystemPrinter.MarginTop:Double
 00598B6E    mov        dword ptr [esi+34],eax; TSystemPrinter.?f34:dword
 00598B71    mov        byte ptr [esi+38],0; TSystemPrinter.Orientation:TOrientation
 00598B75    xor        eax,eax
 00598B77    mov        dword ptr [esi+40],eax; TSystemPrinter.ScaleX:Double
 00598B7A    mov        dword ptr [esi+44],40590000; TSystemPrinter.?f44:dword
 00598B81    xor        eax,eax
 00598B83    mov        dword ptr [esi+48],eax; TSystemPrinter.ScaleY:Double
 00598B86    mov        dword ptr [esi+4C],40590000; TSystemPrinter.?f4C:dword
 00598B8D    mov        edi,dword ptr ds:[61B830]
 00598B93    mov        edi,dword ptr [edi]
 00598B95    lea        edx,[ebp-4]
 00598B98    mov        eax,598C48; 'Printing page %p'
 00598B9D    call       edi
 00598B9F    mov        edx,dword ptr [ebp-4]
 00598BA2    lea        eax,[esi+50]; TSystemPrinter.?f50:String
 00598BA5    call       @LStrAsg
 00598BAA    mov        dl,1
 00598BAC    mov        eax,[0041C8E4]; TStringList
 00598BB1    call       TObject.Create; TStringList.Create
 00598BB6    mov        dword ptr [esi+54],eax; TSystemPrinter.StatusText:TStrings
 00598BB9    xor        eax,eax
 00598BBB    mov        dword ptr [esi+58],eax; TSystemPrinter.TabShade:Integer
 00598BBE    mov        byte ptr [esi+5C],0; TSystemPrinter.TextBKMode:TBKMode
 00598BC2    mov        edi,dword ptr ds:[61B830]
 00598BC8    mov        edi,dword ptr [edi]
 00598BCA    lea        edx,[ebp-8]
 00598BCD    mov        eax,598C64; 'ReportPrinter Report'
 00598BD2    call       edi
 00598BD4    mov        edx,dword ptr [ebp-8]
 00598BD7    lea        eax,[esi+60]; TSystemPrinter.?f60:String
 00598BDA    call       @LStrAsg
 00598BDF    mov        byte ptr [esi+64],0; TSystemPrinter.Units:TPrintUnits
 00598BE3    xor        eax,eax
 00598BE5    mov        dword ptr [esi+68],eax; TSystemPrinter.UnitsFactor:Double
 00598BE8    mov        dword ptr [esi+6C],3FF00000; TSystemPrinter.?f6C:dword
 00598BEF    mov        byte ptr [esi+70],0; TSystemPrinter.?f70:byte
 00598BF3    call       005807BC
 00598BF8    mov        edx,dword ptr [eax]
 00598BFA    call       dword ptr [edx+38]
 00598BFD    mov        byte ptr [esi+71],al; TSystemPrinter.?f71:byte
 00598C00    xor        eax,eax
 00598C02    pop        edx
 00598C03    pop        ecx
 00598C04    pop        ecx
 00598C05    mov        dword ptr fs:[eax],edx
 00598C08    push       598C22
 00598C0D    lea        eax,[ebp-8]
 00598C10    mov        edx,2
 00598C15    call       @LStrArrayClr
 00598C1A    ret
<00598C1B    jmp        @HandleFinally
<00598C20    jmp        00598C0D
 00598C22    mov        eax,esi
 00598C24    test       bl,bl
>00598C26    je         00598C37
 00598C28    call       @AfterConstruction
 00598C2D    pop        dword ptr fs:[0]
 00598C34    add        esp,0C
 00598C37    mov        eax,esi
 00598C39    pop        edi
 00598C3A    pop        esi
 00598C3B    pop        ebx
 00598C3C    pop        ecx
 00598C3D    pop        ecx
 00598C3E    pop        ebp
 00598C3F    ret
*}
//end;

//00598C7C
destructor TSystemPrinter.Destroy;
begin
{*
 00598C7C    push       ebx
 00598C7D    push       esi
 00598C7E    call       @BeforeDestruction
 00598C83    mov        ebx,edx
 00598C85    mov        esi,eax
 00598C87    lea        eax,[esi+54]; TSystemPrinter.StatusText:TStrings
 00598C8A    call       FreeAndNil
 00598C8F    mov        edx,ebx
 00598C91    and        dl,0FC
 00598C94    mov        eax,esi
 00598C96    call       TPersistent.Destroy
 00598C9B    test       bl,bl
>00598C9D    jle        00598CA6
 00598C9F    mov        eax,esi
 00598CA1    call       @ClassDestroy
 00598CA6    pop        esi
 00598CA7    pop        ebx
 00598CA8    ret
*}
end;

//00598CAC
procedure TSystemPrinter.SetStatusText(Self:TSystemPrinter);
begin
{*
 00598CAC    push       esi
 00598CAD    mov        esi,eax
 00598CAF    mov        eax,dword ptr [esi+54]; TSystemPrinter.StatusText:TStrings
 00598CB2    mov        ecx,dword ptr [eax]
 00598CB4    call       dword ptr [ecx+8]; TStrings.Assign
 00598CB7    pop        esi
 00598CB8    ret
*}
end;

//00598CBC
//procedure TSystemPrinter.SetTabShade(Self:TSystemPrinter; ?:?);
//begin
{*
 00598CBC    cmp        edx,64
>00598CBF    jl         00598CC9
 00598CC1    mov        dword ptr [eax+58],64; TSystemPrinter.TabShade:Integer
 00598CC8    ret
 00598CC9    test       edx,edx
>00598CCB    jg         00598CD4
 00598CCD    xor        edx,edx
 00598CCF    mov        dword ptr [eax+58],edx; TSystemPrinter.TabShade:Integer
>00598CD2    jmp        00598CD7
 00598CD4    mov        dword ptr [eax+58],edx; TSystemPrinter.TabShade:Integer
 00598CD7    ret
*}
//end;

//00598CD8
//procedure TSystemPrinter.SetUnits(Self:TSystemPrinter; ?:?);
//begin
{*
 00598CD8    mov        ecx,edx
 00598CDA    mov        byte ptr [eax+64],cl; TSystemPrinter.Units:TPrintUnits
 00598CDD    sub        cl,1
>00598CE0    jb         00598CEE
>00598CE2    je         00598CFB
 00598CE4    dec        cl
>00598CE6    je         00598D0A
 00598CE8    dec        cl
>00598CEA    je         00598D19
>00598CEC    jmp        00598D26
 00598CEE    xor        edx,edx
 00598CF0    mov        dword ptr [eax+68],edx; TSystemPrinter.UnitsFactor:Double
 00598CF3    mov        dword ptr [eax+6C],3FF00000; TSystemPrinter.?f6C:dword
 00598CFA    ret
 00598CFB    mov        dword ptr [eax+68],66666666; TSystemPrinter.UnitsFactor:Double
 00598D02    mov        dword ptr [eax+6C],40396666; TSystemPrinter.?f6C:dword
 00598D09    ret
 00598D0A    mov        dword ptr [eax+68],851EB852; TSystemPrinter.UnitsFactor:Double
 00598D11    mov        dword ptr [eax+6C],400451EB; TSystemPrinter.?f6C:dword
 00598D18    ret
 00598D19    xor        edx,edx
 00598D1B    mov        dword ptr [eax+68],edx; TSystemPrinter.UnitsFactor:Double
 00598D1E    mov        dword ptr [eax+6C],40520000; TSystemPrinter.?f6C:dword
 00598D25    ret
 00598D26    ret
*}
//end;

//00598D28
//procedure TSystemPrinter.SetUnitsFactor(Self:TSystemPrinter; ?:?; ?:?);
//begin
{*
 00598D28    push       ebp
 00598D29    mov        ebp,esp
 00598D2B    add        esp,0FFFFFFE0
 00598D2E    mov        edx,eax
 00598D30    fld        qword ptr [ebp+8]
 00598D33    fcomp      dword ptr ds:[598DD0]; 0:Single
 00598D39    fnstsw     al
 00598D3B    sahf
>00598D3C    jbe        00598DCA
 00598D42    mov        eax,dword ptr [ebp+8]
 00598D45    mov        dword ptr [edx+68],eax; TSystemPrinter.UnitsFactor:Double
 00598D48    mov        eax,dword ptr [ebp+0C]
 00598D4B    mov        dword ptr [edx+6C],eax; TSystemPrinter.?f6C:dword
 00598D4E    xor        eax,eax
 00598D50    mov        dword ptr [ebp-20],eax
 00598D53    mov        dword ptr [ebp-1C],3FF00000
 00598D5A    mov        dword ptr [ebp-18],66666666
 00598D61    mov        dword ptr [ebp-14],40396666
 00598D68    mov        dword ptr [ebp-10],851EB852
 00598D6F    mov        dword ptr [ebp-0C],400451EB
 00598D76    xor        eax,eax
 00598D78    mov        dword ptr [ebp-8],eax
 00598D7B    mov        dword ptr [ebp-4],40520000
 00598D82    fld        qword ptr [edx+68]; TSystemPrinter.UnitsFactor:Double
 00598D85    fcomp      qword ptr [ebp-20]
 00598D88    fnstsw     al
 00598D8A    sahf
>00598D8B    jne        00598D93
 00598D8D    mov        byte ptr [edx+64],0; TSystemPrinter.Units:TPrintUnits
>00598D91    jmp        00598DCA
 00598D93    fld        qword ptr [edx+68]; TSystemPrinter.UnitsFactor:Double
 00598D96    fcomp      qword ptr [ebp-18]
 00598D99    fnstsw     al
 00598D9B    sahf
>00598D9C    jne        00598DA4
 00598D9E    mov        byte ptr [edx+64],1; TSystemPrinter.Units:TPrintUnits
>00598DA2    jmp        00598DCA
 00598DA4    fld        qword ptr [edx+68]; TSystemPrinter.UnitsFactor:Double
 00598DA7    fcomp      qword ptr [ebp-10]
 00598DAA    fnstsw     al
 00598DAC    sahf
>00598DAD    jne        00598DB5
 00598DAF    mov        byte ptr [edx+64],2; TSystemPrinter.Units:TPrintUnits
>00598DB3    jmp        00598DCA
 00598DB5    fld        qword ptr [edx+68]; TSystemPrinter.UnitsFactor:Double
 00598DB8    fcomp      qword ptr [ebp-8]
 00598DBB    fnstsw     al
 00598DBD    sahf
>00598DBE    jne        00598DC6
 00598DC0    mov        byte ptr [edx+64],3; TSystemPrinter.Units:TPrintUnits
>00598DC4    jmp        00598DCA
 00598DC6    mov        byte ptr [edx+64],4; TSystemPrinter.Units:TPrintUnits
 00598DCA    mov        esp,ebp
 00598DCC    pop        ebp
 00598DCD    ret        8
*}
//end;

//00598DD4
//procedure sub_00598DD4(?:TSystemPrinter; ?:TRvNDRWriter);
//begin
{*
 00598DD4    push       ebx
 00598DD5    push       esi
 00598DD6    mov        esi,edx
 00598DD8    mov        ebx,eax
 00598DDA    mov        edx,dword ptr [ebx+4]; TSystemPrinter.Copies:Integer
 00598DDD    mov        eax,esi
 00598DDF    call       TRvNDRWriter.SetCopies
 00598DE4    mov        eax,dword ptr [ebx+8]; TSystemPrinter.FirstPage:Integer
 00598DE7    mov        dword ptr [esi+910],eax; TRvNDRWriter.?f910:Integer
 00598DED    mov        eax,dword ptr [ebx+0C]; TSystemPrinter.LastPage:Integer
 00598DF0    mov        dword ptr [esi+914],eax; TRvNDRWriter.?f914:Integer
 00598DF6    mov        al,byte ptr [ebx+10]; TSystemPrinter.LineHeightMethod:TLineHeightMethod
 00598DF9    mov        byte ptr [esi+928],al; TRvNDRWriter.?f928:TLineHeightMethod
 00598DFF    mov        edx,dword ptr [ebx+14]; TSystemPrinter.LinesPerInch:Integer
 00598E02    mov        eax,esi
 00598E04    call       TRvNDRWriter.SetLinesPerInch
 00598E09    push       dword ptr [ebx+1C]; TSystemPrinter.?f1C:dword
 00598E0C    push       dword ptr [ebx+18]; TSystemPrinter.MarginBottom:Double
 00598E0F    mov        eax,esi
 00598E11    call       TRvNDRWriter.SetMarginBottom
 00598E16    push       dword ptr [ebx+24]; TSystemPrinter.?f24:dword
 00598E19    push       dword ptr [ebx+20]; TSystemPrinter.MarginLeft:Double
 00598E1C    mov        eax,esi
 00598E1E    call       TRvNDRWriter.SetMarginLeft
 00598E23    push       dword ptr [ebx+2C]; TSystemPrinter.?f2C:dword
 00598E26    push       dword ptr [ebx+28]; TSystemPrinter.MarginRight:Double
 00598E29    mov        eax,esi
 00598E2B    call       TRvNDRWriter.SetMarginRight
 00598E30    push       dword ptr [ebx+34]; TSystemPrinter.?f34:dword
 00598E33    push       dword ptr [ebx+30]; TSystemPrinter.MarginTop:Double
 00598E36    mov        eax,esi
 00598E38    call       TRvNDRWriter.SetMarginTop
 00598E3D    mov        dl,byte ptr [ebx+38]; TSystemPrinter.Orientation:TOrientation
 00598E40    mov        eax,esi
 00598E42    mov        ecx,dword ptr [eax]
 00598E44    call       dword ptr [ecx+8C]; TRvNDRWriter.SetOrientation
 00598E4A    push       dword ptr [ebx+44]; TSystemPrinter.?f44:dword
 00598E4D    push       dword ptr [ebx+40]; TSystemPrinter.ScaleX:Double
 00598E50    mov        eax,esi
 00598E52    mov        edx,dword ptr [eax]
 00598E54    call       dword ptr [edx+80]; TRvNDRWriter.SetScaleX
 00598E5A    push       dword ptr [ebx+4C]; TSystemPrinter.?f4C:dword
 00598E5D    push       dword ptr [ebx+48]; TSystemPrinter.ScaleY:Double
 00598E60    mov        eax,esi
 00598E62    mov        edx,dword ptr [eax]
 00598E64    call       dword ptr [edx+84]; TRvNDRWriter.SetScaleY
 00598E6A    lea        eax,[esi+920]; TRvNDRWriter.?f920:String
 00598E70    mov        edx,dword ptr [ebx+50]; TSystemPrinter.?f50:String
 00598E73    call       @LStrAsg
 00598E78    mov        edx,dword ptr [ebx+54]; TSystemPrinter.StatusText:TStrings
 00598E7B    mov        eax,esi
 00598E7D    call       TRvNDRWriter.SetStatusText
 00598E82    mov        edx,dword ptr [ebx+58]; TSystemPrinter.TabShade:Integer
 00598E85    mov        eax,esi
 00598E87    call       TRvNDRWriter.SetTabShade
 00598E8C    mov        dl,byte ptr [ebx+5C]; TSystemPrinter.TextBKMode:TBKMode
 00598E8F    mov        eax,esi
 00598E91    mov        ecx,dword ptr [eax]
 00598E93    call       dword ptr [ecx+88]; TRvNDRWriter.SetTextBKMode
 00598E99    lea        eax,[esi+96C]; TRvNDRWriter.?f96C:String
 00598E9F    mov        edx,dword ptr [ebx+60]; TSystemPrinter.?f60:String
 00598EA2    call       @LStrAsg
 00598EA7    mov        dl,byte ptr [ebx+64]; TSystemPrinter.Units:TPrintUnits
 00598EAA    mov        eax,esi
 00598EAC    call       TRvNDRWriter.SetUnits
 00598EB1    cmp        byte ptr [ebx+64],4; TSystemPrinter.Units:TPrintUnits
>00598EB5    jne        00598EC4
 00598EB7    push       dword ptr [ebx+6C]; TSystemPrinter.?f6C:dword
 00598EBA    push       dword ptr [ebx+68]; TSystemPrinter.UnitsFactor:Double
 00598EBD    mov        eax,esi
 00598EBF    call       TRvNDRWriter.SetUnitsFactor
 00598EC4    call       005807DC
 00598EC9    test       eax,eax
>00598ECB    je         00598EDB
 00598ECD    call       005807DC
 00598ED2    call       0058068C
 00598ED7    test       al,al
>00598ED9    jne        00598EEF
 00598EDB    mov        dl,byte ptr [ebx+70]; TSystemPrinter.?f70:byte
 00598EDE    mov        eax,esi
 00598EE0    call       00585F10
 00598EE5    mov        dl,byte ptr [ebx+71]; TSystemPrinter.?f71:byte
 00598EE8    mov        eax,esi
 00598EEA    call       00585EE4
 00598EEF    pop        esi
 00598EF0    pop        ebx
 00598EF1    ret
*}
//end;

//00598EF4
//constructor TSystemPreview.Create(?:TSystemPreview; _Dv__:Boolean);
//begin
{*
 00598EF4    push       ebx
 00598EF5    push       esi
 00598EF6    test       dl,dl
>00598EF8    je         00598F02
 00598EFA    add        esp,0FFFFFFF0
 00598EFD    call       @ClassCreate
 00598F02    mov        ebx,edx
 00598F04    mov        esi,eax
 00598F06    xor        edx,edx
 00598F08    mov        eax,esi
 00598F0A    call       TObject.Create
 00598F0F    mov        dword ptr [esi+54],267; TSystemPreview.FormWidth:Integer
 00598F16    mov        dword ptr [esi+58],1C2; TSystemPreview.FormHeight:Integer
 00598F1D    mov        byte ptr [esi+5C],0; TSystemPreview.FormState:TWindowState
 00598F21    xor        eax,eax
 00598F23    mov        dword ptr [esi+8],eax; TSystemPreview.GridHoriz:Double
 00598F26    mov        dword ptr [esi+0C],eax; TSystemPreview.?fC:dword
 00598F29    mov        dl,1
 00598F2B    mov        eax,[00429C9C]; TPen
 00598F30    call       TPen.Create; TPen.Create
 00598F35    mov        dword ptr [esi+10],eax; TSystemPreview.GridPen:TPen
 00598F38    xor        eax,eax
 00598F3A    mov        dword ptr [esi+18],eax; TSystemPreview.GridVert:Double
 00598F3D    mov        dword ptr [esi+1C],eax; TSystemPreview.?f1C:dword
 00598F40    mov        byte ptr [esi+20],1; TSystemPreview.MarginMethod:TMarginMethod
 00598F44    xor        eax,eax
 00598F46    mov        dword ptr [esi+28],eax; TSystemPreview.MarginPercent:Double
 00598F49    mov        dword ptr [esi+2C],eax; TSystemPreview.?f2C:dword
 00598F4C    mov        byte ptr [esi+30],0; TSystemPreview.Monochrome:Boolean
 00598F50    mov        byte ptr [esi+40],0; TSystemPreview.RulerType:TRulerType
 00598F54    xor        eax,eax
 00598F56    mov        dword ptr [esi+44],eax; TSystemPreview.ShadowDepth:Integer
 00598F59    xor        eax,eax
 00598F5B    mov        dword ptr [esi+48],eax; TSystemPreview.ZoomFactor:Double
 00598F5E    mov        dword ptr [esi+4C],40590000; TSystemPreview.?f4C:dword
 00598F65    mov        dword ptr [esi+50],0A; TSystemPreview.ZoomInc:Integer
 00598F6C    mov        dword ptr [esi+34],1; TSystemPreview.PagesWide:Integer
 00598F73    mov        dword ptr [esi+38],1; TSystemPreview.PagesHigh:Integer
 00598F7A    mov        dword ptr [esi+3C],1; TSystemPreview.PageInc:Integer
 00598F81    mov        eax,esi
 00598F83    test       bl,bl
>00598F85    je         00598F96
 00598F87    call       @AfterConstruction
 00598F8C    pop        dword ptr fs:[0]
 00598F93    add        esp,0C
 00598F96    mov        eax,esi
 00598F98    pop        esi
 00598F99    pop        ebx
 00598F9A    ret
*}
//end;

//00598F9C
destructor TSystemPreview.Destroy;
begin
{*
 00598F9C    push       ebx
 00598F9D    push       esi
 00598F9E    call       @BeforeDestruction
 00598FA3    mov        ebx,edx
 00598FA5    mov        esi,eax
 00598FA7    lea        eax,[esi+10]; TSystemPreview.GridPen:TPen
 00598FAA    call       FreeAndNil
 00598FAF    mov        edx,ebx
 00598FB1    and        dl,0FC
 00598FB4    mov        eax,esi
 00598FB6    call       TPersistent.Destroy
 00598FBB    test       bl,bl
>00598FBD    jle        00598FC6
 00598FBF    mov        eax,esi
 00598FC1    call       @ClassDestroy
 00598FC6    pop        esi
 00598FC7    pop        ebx
 00598FC8    ret
*}
end;

//00598FCC
//procedure TSystemPreview.SetMonochrome(Self:TSystemPreview; ?:?);
//begin
{*
 00598FCC    cmp        dword ptr [eax+44],0; TSystemPreview.ShadowDepth:Integer
 00598FD0    setg       cl
 00598FD3    test       cl,dl
>00598FD5    je         00598FE2
 00598FD7    mov        eax,598FF0; 'Monochrome not allowed while shadows are in effect.\rChange ShadowDepth to 0 first'
 00598FDC    call       ShowMessage
 00598FE1    ret
 00598FE2    mov        byte ptr [eax+30],dl; TSystemPreview.Monochrome:Boolean
 00598FE5    ret
*}
//end;

//00599044
//procedure TSystemPreview.SetShadowDepth(Self:TSystemPreview; ?:?);
//begin
{*
 00599044    test       edx,edx
>00599046    jle        00599059
 00599048    cmp        byte ptr [eax+30],0; TSystemPreview.Monochrome:Boolean
>0059904C    je         00599059
 0059904E    mov        eax,599068; 'Shadows not allowed while monochrome in effect.\rChange Monochrome to false first'
 00599053    call       ShowMessage
 00599058    ret
 00599059    mov        dword ptr [eax+44],edx; TSystemPreview.ShadowDepth:Integer
 0059905C    ret
*}
//end;

//005990BC
//procedure TSystemPreview.SetZoomFactor(Self:TSystemPreview; ?:?; ?:?);
//begin
{*
 005990BC    push       ebp
 005990BD    mov        ebp,esp
 005990BF    mov        edx,eax
 005990C1    fld        qword ptr [ebp+8]
 005990C4    fcomp      dword ptr ds:[59910C]; 10:Single
 005990CA    fnstsw     al
 005990CC    sahf
>005990CD    jae        005990DD
 005990CF    xor        eax,eax
 005990D1    mov        dword ptr [edx+48],eax; TSystemPreview.ZoomFactor:Double
 005990D4    mov        dword ptr [edx+4C],40240000; TSystemPreview.?f4C:dword
>005990DB    jmp        00599105
 005990DD    fld        qword ptr [ebp+8]
 005990E0    fcomp      dword ptr ds:[599110]; 200:Single
 005990E6    fnstsw     al
 005990E8    sahf
>005990E9    jbe        005990F9
 005990EB    xor        eax,eax
 005990ED    mov        dword ptr [edx+48],eax; TSystemPreview.ZoomFactor:Double
 005990F0    mov        dword ptr [edx+4C],40690000; TSystemPreview.?f4C:dword
>005990F7    jmp        00599105
 005990F9    mov        eax,dword ptr [ebp+8]
 005990FC    mov        dword ptr [edx+48],eax; TSystemPreview.ZoomFactor:Double
 005990FF    mov        eax,dword ptr [ebp+0C]
 00599102    mov        dword ptr [edx+4C],eax; TSystemPreview.?f4C:dword
 00599105    pop        ebp
 00599106    ret        8
*}
//end;

//00599114
//procedure sub_00599114(?:TSystemPreview; ?:TRvRenderPreview);
//begin
{*
 00599114    push       ebx
 00599115    push       esi
 00599116    mov        esi,edx
 00599118    mov        ebx,eax
 0059911A    mov        eax,dword ptr [ebx+8]; TSystemPreview.GridHoriz:Double
 0059911D    mov        dword ptr [esi+0D0],eax; TRvRenderPreview.GridHoriz:Double
 00599123    mov        eax,dword ptr [ebx+0C]; TSystemPreview.?fC:dword
 00599126    mov        dword ptr [esi+0D4],eax; TRvRenderPreview.?fD4:dword
 0059912C    mov        edx,dword ptr [ebx+10]; TSystemPreview.GridPen:TPen
 0059912F    mov        eax,esi
 00599131    call       TRvRenderPreview.SetGridPen
 00599136    mov        eax,dword ptr [ebx+18]; TSystemPreview.GridVert:Double
 00599139    mov        dword ptr [esi+0D8],eax; TRvRenderPreview.GridVert:Double
 0059913F    mov        eax,dword ptr [ebx+1C]; TSystemPreview.?f1C:dword
 00599142    mov        dword ptr [esi+0DC],eax; TRvRenderPreview.?fDC:dword
 00599148    mov        al,byte ptr [ebx+20]; TSystemPreview.MarginMethod:TMarginMethod
 0059914B    mov        byte ptr [esi+0AD],al; TRvRenderPreview.MarginMethod:TMarginMethod
 00599151    mov        eax,dword ptr [ebx+28]; TSystemPreview.MarginPercent:Double
 00599154    mov        dword ptr [esi+0B0],eax; TRvRenderPreview.MarginPercent:Double
 0059915A    mov        eax,dword ptr [ebx+2C]; TSystemPreview.?f2C:dword
 0059915D    mov        dword ptr [esi+0B4],eax; TRvRenderPreview.?fB4:dword
 00599163    mov        edx,dword ptr [ebx+44]; TSystemPreview.ShadowDepth:Integer
 00599166    mov        eax,esi
 00599168    call       TRvRenderPreview.SetShadowDepth
 0059916D    mov        dl,byte ptr [ebx+30]; TSystemPreview.Monochrome:Boolean
 00599170    mov        eax,esi
 00599172    call       TRvRenderPreview.SetMonochrome
 00599177    mov        eax,dword ptr [ebx+34]; TSystemPreview.PagesWide:Integer
 0059917A    mov        dword ptr [ebx+34],eax; TSystemPreview.PagesWide:Integer
 0059917D    mov        eax,dword ptr [ebx+38]; TSystemPreview.PagesHigh:Integer
 00599180    mov        dword ptr [ebx+38],eax; TSystemPreview.PagesHigh:Integer
 00599183    mov        eax,dword ptr [ebx+3C]; TSystemPreview.PageInc:Integer
 00599186    mov        dword ptr [esi+0F0],eax; TRvRenderPreview.PageInc:Integer
 0059918C    mov        al,byte ptr [ebx+40]; TSystemPreview.RulerType:TRulerType
 0059918F    mov        byte ptr [esi+0E4],al; TRvRenderPreview.RulerType:TRulerType
 00599195    push       dword ptr [ebx+4C]; TSystemPreview.?f4C:dword
 00599198    push       dword ptr [ebx+48]; TSystemPreview.ZoomFactor:Double
 0059919B    mov        eax,esi
 0059919D    call       TRvRenderPreview.SetZoomFactor
 005991A2    mov        edx,dword ptr [ebx+50]; TSystemPreview.ZoomInc:Integer
 005991A5    mov        eax,esi
 005991A7    call       TRvRenderPreview.SetZoomInc
 005991AC    pop        esi
 005991AD    pop        ebx
 005991AE    ret
*}
//end;

//005991B0
//constructor TSystemFiler.Create(?:TSystemFiler; _Dv__:Boolean);
//begin
{*
 005991B0    push       ebp
 005991B1    mov        ebp,esp
 005991B3    push       0
 005991B5    push       ebx
 005991B6    push       esi
 005991B7    push       edi
 005991B8    test       dl,dl
>005991BA    je         005991C4
 005991BC    add        esp,0FFFFFFF0
 005991BF    call       @ClassCreate
 005991C4    mov        ebx,edx
 005991C6    mov        esi,eax
 005991C8    xor        eax,eax
 005991CA    push       ebp
 005991CB    push       599236
 005991D0    push       dword ptr fs:[eax]
 005991D3    mov        dword ptr fs:[eax],esp
 005991D6    xor        edx,edx
 005991D8    mov        eax,esi
 005991DA    call       TObject.Create
 005991DF    mov        byte ptr [esi+4],0; TSystemFiler.AccuracyMethod:TAccuracyMethod
 005991E3    lea        eax,[esi+8]; TSystemFiler.?f8:TFileName
 005991E6    call       @LStrClr
 005991EB    mov        edi,dword ptr ds:[61B830]
 005991F1    mov        edi,dword ptr [edi]
 005991F3    lea        edx,[ebp-4]
 005991F6    mov        eax,599264; 'Generating page %p'
 005991FB    call       edi
 005991FD    mov        edx,dword ptr [ebp-4]
 00599200    lea        eax,[esi+0C]; TSystemFiler.?fC:String
 00599203    call       @LStrAsg
 00599208    mov        dl,1
 0059920A    mov        eax,[0041C8E4]; TStringList
 0059920F    call       TObject.Create; TStringList.Create
 00599214    mov        dword ptr [esi+10],eax; TSystemFiler.StatusText:TStrings
 00599217    mov        byte ptr [esi+14],0; TSystemFiler.StreamMode:TStreamMode
 0059921B    xor        eax,eax
 0059921D    mov        dword ptr [esi+18],eax; TSystemFiler.?f18:TMemoryStream
 00599220    xor        eax,eax
 00599222    pop        edx
 00599223    pop        ecx
 00599224    pop        ecx
 00599225    mov        dword ptr fs:[eax],edx
 00599228    push       59923D
 0059922D    lea        eax,[ebp-4]
 00599230    call       @LStrClr
 00599235    ret
<00599236    jmp        @HandleFinally
<0059923B    jmp        0059922D
 0059923D    mov        eax,esi
 0059923F    test       bl,bl
>00599241    je         00599252
 00599243    call       @AfterConstruction
 00599248    pop        dword ptr fs:[0]
 0059924F    add        esp,0C
 00599252    mov        eax,esi
 00599254    pop        edi
 00599255    pop        esi
 00599256    pop        ebx
 00599257    pop        ecx
 00599258    pop        ebp
 00599259    ret
*}
//end;

//00599278
destructor TSystemFiler.Destroy;
begin
{*
 00599278    push       ebx
 00599279    push       esi
 0059927A    call       @BeforeDestruction
 0059927F    mov        ebx,edx
 00599281    mov        esi,eax
 00599283    lea        eax,[esi+10]; TSystemFiler.StatusText:TStrings
 00599286    call       FreeAndNil
 0059928B    mov        edx,ebx
 0059928D    and        dl,0FC
 00599290    mov        eax,esi
 00599292    call       TPersistent.Destroy
 00599297    test       bl,bl
>00599299    jle        005992A2
 0059929B    mov        eax,esi
 0059929D    call       @ClassDestroy
 005992A2    pop        esi
 005992A3    pop        ebx
 005992A4    ret
*}
end;

//005992A8
procedure TSystemFiler.SetStatusText(Self:TSystemFiler);
begin
{*
 005992A8    push       esi
 005992A9    mov        esi,eax
 005992AB    mov        eax,dword ptr [esi+10]; TSystemFiler.StatusText:TStrings
 005992AE    mov        ecx,dword ptr [eax]
 005992B0    call       dword ptr [ecx+8]; TStrings.Assign
 005992B3    pop        esi
 005992B4    ret
*}
end;

//005992B8
//procedure sub_005992B8(?:TSystemFiler; ?:TRvNDRWriter);
//begin
{*
 005992B8    push       ebx
 005992B9    push       esi
 005992BA    mov        esi,edx
 005992BC    mov        ebx,eax
 005992BE    mov        al,byte ptr [ebx+1C]; TSystemFiler.?f1C:byte
 005992C1    mov        byte ptr [esi+9A1],al; TRvNDRWriter.?f9A1:byte
 005992C7    mov        eax,esi
 005992C9    mov        edx,dword ptr ds:[588AFC]; TRvNDRWriter
 005992CF    call       @IsClass
 005992D4    test       al,al
>005992D6    je         00599344
 005992D8    mov        eax,esi
 005992DA    mov        edx,dword ptr ds:[588AFC]; TRvNDRWriter
 005992E0    call       @AsClass
 005992E5    mov        esi,eax
 005992E7    mov        al,byte ptr [ebx+4]; TSystemFiler.AccuracyMethod:TAccuracyMethod
 005992EA    mov        byte ptr [esi+0B15],al; TRvNDRWriter.AccuracyMethod:TAccuracyMethod
 005992F0    lea        eax,[esi+0B10]; TRvNDRWriter.?fB10:TFileName
 005992F6    mov        edx,dword ptr [ebx+8]; TSystemFiler.?f8:TFileName
 005992F9    call       @LStrAsg
 005992FE    lea        eax,[esi+920]; TRvNDRWriter.?f920:String
 00599304    mov        edx,dword ptr [ebx+0C]; TSystemFiler.?fC:String
 00599307    call       @LStrAsg
 0059930C    mov        edx,dword ptr [ebx+10]; TSystemFiler.StatusText:TStrings
 0059930F    mov        eax,esi
 00599311    call       TRvNDRWriter.SetStatusText
 00599316    mov        al,byte ptr [ebx+14]; TSystemFiler.StreamMode:TStreamMode
 00599319    test       al,al
>0059931B    jne        00599335
 0059931D    mov        byte ptr [esi+0B14],2; TRvNDRWriter.StreamMode:TStreamMode
 00599324    mov        dl,1
 00599326    mov        eax,[0041CBF8]; TMemoryStream
 0059932B    call       TObject.Create; TMemoryStream.Create
 00599330    mov        dword ptr [ebx+18],eax; TSystemFiler.?f18:TMemoryStream
>00599333    jmp        0059933B
 00599335    mov        byte ptr [esi+0B14],al; TRvNDRWriter.StreamMode:TStreamMode
 0059933B    mov        eax,dword ptr [ebx+18]; TSystemFiler.?f18:TMemoryStream
 0059933E    mov        dword ptr [esi+0B0C],eax; TRvNDRWriter.?fB0C:TMemoryStream
 00599344    pop        esi
 00599345    pop        ebx
 00599346    ret
*}
//end;

end.