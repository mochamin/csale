{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpFormPreview;

interface

uses
  Classes, Windows, Graphics, Forms, ActnList, Menus, ComCtrls, Controls, Dialogs, StdCtrls, ExtCtrls, RpRenderPrinter, RpRenderPreview;

type
  TRavePreviewForm = class(TForm)
    ScrollBox1:TScrollBox;//f2F8
    ActionList1:TActionList;//f2FC
    MainMenu1:TMainMenu;//f300
    PopupMenu1:TPopupMenu;//f304
    actnFile_Print:TAction;//f308
    actnFile_Save:TAction;//f30C
    actnFile_Exit:TAction;//f310
    actnFile_Open:TAction;//f314
    sbarMain:TStatusBar;//f318
    actnPage_First:TAction;//f31C
    actnPage_Next:TAction;//f320
    actnPage_Previous:TAction;//f324
    actnPage_Last:TAction;//f328
    actnZoom_In:TAction;//f32C
    actnZoom_Out:TAction;//f330
    actnZoom_PageWidth:TAction;//f334
    actnZoom_Page:TAction;//f338
    Page1:TMenuItem;//f33C
    Zoom1:TMenuItem;//f340
    First1:TMenuItem;//f344
    Next1:TMenuItem;//f348
    Previous1:TMenuItem;//f34C
    Last1:TMenuItem;//f350
    N2:TMenuItem;//f354
    GotoPage1:TMenuItem;//f358
    In1:TMenuItem;//f35C
    Out1:TMenuItem;//f360
    N3:TMenuItem;//f364
    Page2:TMenuItem;//f368
    PageWidth1:TMenuItem;//f36C
    In2:TMenuItem;//f370
    Out2:TMenuItem;//f374
    ilstActions:TImageList;//f378
    ToolBar1:TToolBar;//f37C
    ToolButton1:TToolButton;//f380
    ToolButton2:TToolButton;//f384
    ToolButton3:TToolButton;//f388
    ToolButton4:TToolButton;//f38C
    ToolButton5:TToolButton;//f390
    ToolButton6:TToolButton;//f394
    ToolButton7:TToolButton;//f398
    ToolButton8:TToolButton;//f39C
    ToolButton10:TToolButton;//f3A0
    ToolButton11:TToolButton;//f3A4
    ToolButton12:TToolButton;//f3A8
    ToolButton13:TToolButton;//f3AC
    ToolButton14:TToolButton;//f3B0
    dlogOpen:TOpenDialog;//f3B4
    dlogSave:TSaveDialog;//f3B8
    File1:TMenuItem;//f3BC
    Open1:TMenuItem;//f3C0
    SaveAs1:TMenuItem;//f3C4
    Print1:TMenuItem;//f3C8
    N1:TMenuItem;//f3CC
    Exit1:TMenuItem;//f3D0
    ZoomEdit:TEdit;//f3D4
    PageEdit:TEdit;//f3D8
    PageLabel:TPanel;//f3DC
    Panel1:TPanel;//f3E0
    Panel2:TPanel;//f3E4
    ToolButton9:TToolButton;//f3E8
    ToolButton15:TToolButton;//f3EC
    Panel3:TPanel;//f3F0
    PreviewTimer:TTimer;//f3F4
    procedure FormClose;
    procedure NDRPreviewPageChange;
    procedure NDRPreviewZoomChange;
    //procedure FormKeyDown(?:?; ?:?; ?:?);
    //procedure FormKeyPress(?:?; ?:?);
    procedure actnFile_ExitExecute;
    procedure actnPage_GotoPageExecute;
    procedure actnZoom_InExecute;
    procedure actnZoom_OutExecute;
    procedure actnPage_PreviousExecute;
    procedure actnPage_NextExecute;
    procedure actnZoom_PageWidthExecute;
    procedure actnZoom_PageExecute;
    procedure actnFile_PrintExecute;
    procedure actnPage_FirstExecute;
    procedure actnPage_LastExecute;
    procedure actnPage_FirstUpdate;
    procedure actnPage_PreviousUpdate;
    procedure actnPage_NextUpdate;
    procedure actnPage_LastUpdate;
    procedure FormCreate;
    procedure actnFile_SaveExecute;
    procedure actnFile_OpenExecute;
    procedure actnFile_PrintUpdate;
    procedure actnFile_SaveUpdate;
    procedure actnZoom_InUpdate;
    procedure actnZoom_OutUpdate;
    procedure actnZoom_PageWidthUpdate;
    procedure actnZoom_PageUpdate;
    //procedure ZoomEditKeyPress(?:?; ?:?);
    procedure ZoomEditExit;
    procedure PageEditExit;
    //procedure PageEditKeyPress(?:?; ?:?);
    procedure PreviewTimerTimer;
  public
    f3F8:dword;//f3F8
    f408:String;//f408
    f40C:TMemoryStream;//f40C
    f410:dword;//f410
    f414:byte;//f414
    f418:TRvRenderPrinter;//f418
    f41C:TRvRenderPreview;//f41C
  end;

implementation

{$R *.DFM}

//00595894
procedure TRavePreviewForm.FormClose;
begin
{*
 00595894    mov        byte ptr [eax+414],1; TRavePreviewForm.?f414:byte
 0059589B    ret
*}
end;

//0059589C
procedure TRavePreviewForm.NDRPreviewPageChange;
begin
{*
 0059589C    push       ebp
 0059589D    mov        ebp,esp
 0059589F    mov        ecx,5
 005958A4    push       0
 005958A6    push       0
 005958A8    dec        ecx
<005958A9    jne        005958A4
 005958AB    push       ebx
 005958AC    push       esi
 005958AD    push       edi
 005958AE    mov        ebx,eax
 005958B0    xor        eax,eax
 005958B2    push       ebp
 005958B3    push       5959FD
 005958B8    push       dword ptr fs:[eax]
 005958BB    mov        dword ptr fs:[eax],esp
 005958BE    mov        esi,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 005958C4    lea        edx,[ebp-4]
 005958C7    mov        eax,dword ptr [esi+108]; TRvRenderPreview.?f108:dword
 005958CD    call       IntToStr
 005958D2    mov        edx,dword ptr [ebp-4]
 005958D5    mov        eax,dword ptr [ebx+3D8]; TRavePreviewForm.PageEdit:TEdit
 005958DB    call       TControl.SetText
 005958E0    mov        edi,dword ptr ds:[61B830]
 005958E6    mov        edi,dword ptr [edi]
 005958E8    lea        edx,[ebp-0C]
 005958EB    mov        eax,595A14; 'of'
 005958F0    call       edi
 005958F2    push       dword ptr [ebp-0C]
 005958F5    push       595A20; ' '
 005958FA    mov        eax,esi
 005958FC    call       005937B8
 00595901    lea        edx,[ebp-10]
 00595904    call       IntToStr
 00595909    push       dword ptr [ebp-10]
 0059590C    lea        eax,[ebp-8]
 0059590F    mov        edx,3
 00595914    call       @LStrCatN
 00595919    mov        edx,dword ptr [ebp-8]
 0059591C    mov        eax,dword ptr [ebx+3DC]; TRavePreviewForm.PageLabel:TPanel
 00595922    call       TControl.SetText
 00595927    lea        edx,[ebp-14]
 0059592A    mov        eax,dword ptr [ebx+3DC]; TRavePreviewForm.PageLabel:TPanel
 00595930    call       TControl.GetText
 00595935    mov        eax,dword ptr [ebp-14]
 00595938    push       eax
 00595939    mov        eax,ebx
 0059593B    call       TCustomForm.GetCanvas
 00595940    pop        edx
 00595941    call       TCanvas.TextWidth
 00595946    mov        edx,eax
 00595948    add        edx,8
 0059594B    mov        eax,dword ptr [ebx+3DC]; TRavePreviewForm.PageLabel:TPanel
 00595951    call       TControl.SetWidth
 00595956    mov        edi,dword ptr ds:[61B830]
 0059595C    mov        edi,dword ptr [edi]
 0059595E    lea        edx,[ebp-1C]
 00595961    mov        eax,595A2C; 'Page'
 00595966    call       edi
 00595968    push       dword ptr [ebp-1C]
 0059596B    push       595A20; ' '
 00595970    lea        edx,[ebp-20]
 00595973    mov        eax,dword ptr [esi+108]; TRvRenderPreview.?f108:dword
 00595979    call       IntToStr
 0059597E    push       dword ptr [ebp-20]
 00595981    push       595A20; ' '
 00595986    mov        edi,dword ptr ds:[61B830]
 0059598C    mov        edi,dword ptr [edi]
 0059598E    lea        edx,[ebp-24]
 00595991    mov        eax,595A14; 'of'
 00595996    call       edi
 00595998    push       dword ptr [ebp-24]
 0059599B    push       595A20; ' '
 005959A0    mov        eax,esi
 005959A2    call       005937B8
 005959A7    lea        edx,[ebp-28]
 005959AA    call       IntToStr
 005959AF    push       dword ptr [ebp-28]
 005959B2    lea        eax,[ebp-18]
 005959B5    mov        edx,7
 005959BA    call       @LStrCatN
 005959BF    mov        edx,dword ptr [ebp-18]
 005959C2    mov        eax,dword ptr [ebx+318]; TRavePreviewForm.sbarMain:TStatusBar
 005959C8    call       TCustomStatusBar.SetSimpleText
 005959CD    xor        eax,eax
 005959CF    pop        edx
 005959D0    pop        ecx
 005959D1    pop        ecx
 005959D2    mov        dword ptr fs:[eax],edx
 005959D5    push       595A04
 005959DA    lea        eax,[ebp-28]
 005959DD    mov        edx,5
 005959E2    call       @LStrArrayClr
 005959E7    lea        eax,[ebp-14]
 005959EA    call       @LStrClr
 005959EF    lea        eax,[ebp-10]
 005959F2    mov        edx,4
 005959F7    call       @LStrArrayClr
 005959FC    ret
<005959FD    jmp        @HandleFinally
<00595A02    jmp        005959DA
 00595A04    pop        edi
 00595A05    pop        esi
 00595A06    pop        ebx
 00595A07    mov        esp,ebp
 00595A09    pop        ebp
 00595A0A    ret
*}
end;

//00595A34
procedure TRavePreviewForm.NDRPreviewZoomChange;
begin
{*
 00595A34    push       ebp
 00595A35    mov        ebp,esp
 00595A37    add        esp,0FFFFFEF0
 00595A3D    push       ebx
 00595A3E    xor        ecx,ecx
 00595A40    mov        dword ptr [ebp-110],ecx
 00595A46    mov        ebx,eax
 00595A48    xor        eax,eax
 00595A4A    push       ebp
 00595A4B    push       595AD9
 00595A50    push       dword ptr fs:[eax]
 00595A53    mov        dword ptr fs:[eax],esp
 00595A56    mov        eax,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595A5C    call       TRvRenderPreview.GetZoomFactor
 00595A61    add        esp,0FFFFFFF4
 00595A64    fstp       tbyte ptr [esp]
 00595A67    wait
 00595A68    lea        ecx,[ebp-10C]
 00595A6E    mov        edx,1
 00595A73    mov        eax,1
 00595A78    call       @Str2Ext
 00595A7D    lea        edx,[ebp-10C]
 00595A83    lea        eax,[ebp-0B]
 00595A86    mov        cl,0A
 00595A88    call       @PStrNCpy
 00595A8D    lea        eax,[ebp-110]
 00595A93    lea        edx,[ebp-0B]
 00595A96    call       @LStrFromString
 00595A9B    mov        edx,dword ptr [ebp-110]
 00595AA1    mov        eax,dword ptr [ebx+3D4]; TRavePreviewForm.ZoomEdit:TEdit
 00595AA7    call       TControl.SetText
 00595AAC    mov        eax,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595AB2    cmp        dword ptr [eax+0A0],0; TRvRenderPreview.?fA0:TImage
>00595AB9    je         00595AC0
 00595ABB    call       005937D0
 00595AC0    xor        eax,eax
 00595AC2    pop        edx
 00595AC3    pop        ecx
 00595AC4    pop        ecx
 00595AC5    mov        dword ptr fs:[eax],edx
 00595AC8    push       595AE0
 00595ACD    lea        eax,[ebp-110]
 00595AD3    call       @LStrClr
 00595AD8    ret
<00595AD9    jmp        @HandleFinally
<00595ADE    jmp        00595ACD
 00595AE0    pop        ebx
 00595AE1    mov        esp,ebp
 00595AE3    pop        ebp
 00595AE4    ret
*}
end;

//00595AE8
//procedure TRavePreviewForm.FormKeyDown(?:?; ?:?; ?:?);
//begin
{*
 00595AE8    push       ebp
 00595AE9    mov        ebp,esp
 00595AEB    add        esp,0FFFFFFF0
 00595AEE    push       ebx
 00595AEF    push       esi
 00595AF0    push       edi
 00595AF1    mov        edi,ecx
 00595AF3    mov        esi,eax
 00595AF5    mov        ebx,dword ptr [ebp+8]
 00595AF8    movzx      eax,word ptr [edi]
 00595AFB    add        eax,0FFFFFFDF
 00595AFE    cmp        eax,7
>00595B01    ja         00595DFA
 00595B07    jmp        dword ptr [eax*4+595B0E]
 00595B07    dd         595C8B
 00595B07    dd         595CCA
 00595B07    dd         595C56
 00595B07    dd         595C23
 00595B07    dd         595D0D
 00595B07    dd         595B2E
 00595B07    dd         595D81
 00595B07    dd         595B98
 00595B2E    mov        al,[00595E04]; 0x0
 00595B33    cmp        al,bl
>00595B35    je         00595B44
 00595B37    mov        al,[00595E08]; 0x4
 00595B3C    cmp        al,bl
>00595B3E    jne        00595DFA
 00595B44    mov        eax,dword ptr [esi+2F8]; TRavePreviewForm.ScrollBox1:TScrollBox
 00595B4A    mov        eax,dword ptr [eax+20C]; TScrollBox.VertScrollBar:TControlScrollBar
 00595B50    mov        dword ptr [ebp-4],eax
 00595B53    mov        eax,dword ptr [ebp-4]
 00595B56    mov        ebx,dword ptr [eax+0C]; TControlScrollBar.Position:Integer
 00595B59    mov        eax,dword ptr [ebp-4]
 00595B5C    movzx      eax,word ptr [eax+8]; TControlScrollBar.Increment:TScrollBarInc
 00595B60    sub        ebx,eax
 00595B62    test       ebx,ebx
>00595B64    jge        00595B84
 00595B66    mov        eax,dword ptr [esi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595B6C    cmp        dword ptr [eax+108],1; TRvRenderPreview.?f108:dword
>00595B73    jle        00595B82
 00595B75    call       00593834
 00595B7A    mov        eax,dword ptr [ebp-4]
 00595B7D    mov        ebx,dword ptr [eax+10]; TControlScrollBar.Range:Integer
>00595B80    jmp        00595B84
 00595B82    xor        ebx,ebx
 00595B84    mov        edx,ebx
 00595B86    mov        eax,dword ptr [ebp-4]
 00595B89    call       TControlScrollBar.SetPosition
 00595B8E    mov        word ptr [edi],0
>00595B93    jmp        00595DFA
 00595B98    mov        al,[00595E04]; 0x0
 00595B9D    cmp        al,bl
>00595B9F    je         00595BAE
 00595BA1    mov        al,[00595E08]; 0x4
 00595BA6    cmp        al,bl
>00595BA8    jne        00595DFA
 00595BAE    mov        eax,dword ptr [esi+2F8]; TRavePreviewForm.ScrollBox1:TScrollBox
 00595BB4    mov        eax,dword ptr [eax+20C]; TScrollBox.VertScrollBar:TControlScrollBar
 00595BBA    mov        dword ptr [ebp-8],eax
 00595BBD    mov        eax,dword ptr [ebp-8]
 00595BC0    mov        ebx,dword ptr [eax+0C]; TControlScrollBar.Position:Integer
 00595BC3    mov        eax,dword ptr [ebp-8]
 00595BC6    movzx      eax,word ptr [eax+8]; TControlScrollBar.Increment:TScrollBarInc
 00595BCA    add        ebx,eax
 00595BCC    mov        eax,dword ptr [ebp-8]
 00595BCF    mov        eax,dword ptr [eax+10]; TControlScrollBar.Range:Integer
 00595BD2    cmp        ebx,eax
>00595BD4    jl         00595BD9
 00595BD6    mov        ebx,eax
 00595BD8    dec        ebx
 00595BD9    mov        edx,ebx
 00595BDB    mov        eax,dword ptr [ebp-8]
 00595BDE    call       TControlScrollBar.SetPosition
 00595BE3    mov        eax,dword ptr [ebp-8]
 00595BE6    cmp        ebx,dword ptr [eax+0C]; TControlScrollBar.Position:Integer
>00595BE9    jle        00595C19
 00595BEB    mov        eax,dword ptr [esi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595BF1    call       005937B8
 00595BF6    mov        edx,dword ptr [esi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595BFC    cmp        eax,dword ptr [edx+108]; TRvRenderPreview.?f108:dword
>00595C02    jle        00595C19
 00595C04    mov        eax,dword ptr [esi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595C0A    call       005937E8
 00595C0F    xor        edx,edx
 00595C11    mov        eax,dword ptr [ebp-8]
 00595C14    call       TControlScrollBar.SetPosition
 00595C19    mov        word ptr [edi],0
>00595C1E    jmp        00595DFA
 00595C23    mov        al,[00595E04]; 0x0
 00595C28    cmp        al,bl
>00595C2A    je         00595C39
 00595C2C    mov        al,[00595E08]; 0x4
 00595C31    cmp        al,bl
>00595C33    jne        00595DFA
 00595C39    mov        eax,dword ptr [esi+2F8]; TRavePreviewForm.ScrollBox1:TScrollBox
 00595C3F    mov        eax,dword ptr [eax+20C]; TScrollBox.VertScrollBar:TControlScrollBar
 00595C45    xor        edx,edx
 00595C47    call       TControlScrollBar.SetPosition
 00595C4C    mov        word ptr [edi],0
>00595C51    jmp        00595DFA
 00595C56    mov        al,[00595E04]; 0x0
 00595C5B    cmp        al,bl
>00595C5D    je         00595C6C
 00595C5F    mov        al,[00595E08]; 0x4
 00595C64    cmp        al,bl
>00595C66    jne        00595DFA
 00595C6C    mov        eax,dword ptr [esi+2F8]; TRavePreviewForm.ScrollBox1:TScrollBox
 00595C72    mov        eax,dword ptr [eax+20C]; TScrollBox.VertScrollBar:TControlScrollBar
 00595C78    mov        edx,dword ptr [eax+10]; TControlScrollBar.Range:Integer
 00595C7B    dec        edx
 00595C7C    call       TControlScrollBar.SetPosition
 00595C81    mov        word ptr [edi],0
>00595C86    jmp        00595DFA
 00595C8B    mov        al,[00595E04]; 0x0
 00595C90    cmp        al,bl
>00595C92    je         00595CA1
 00595C94    mov        al,[00595E08]; 0x4
 00595C99    cmp        al,bl
>00595C9B    jne        00595DFA
 00595CA1    mov        edx,dword ptr [esi+2F8]; TRavePreviewForm.ScrollBox1:TScrollBox
 00595CA7    mov        eax,dword ptr [edx+20C]; TScrollBox.VertScrollBar:TControlScrollBar
 00595CAD    mov        ebx,dword ptr [eax+0C]; TControlScrollBar.Position:Integer
 00595CB0    sub        ebx,dword ptr [edx+4C]
 00595CB3    test       ebx,ebx
>00595CB5    jge        00595CB9
 00595CB7    xor        ebx,ebx
 00595CB9    mov        edx,ebx
 00595CBB    call       TControlScrollBar.SetPosition
 00595CC0    mov        word ptr [edi],0
>00595CC5    jmp        00595DFA
 00595CCA    mov        al,[00595E04]; 0x0
 00595CCF    cmp        al,bl
>00595CD1    je         00595CE0
 00595CD3    mov        al,[00595E08]; 0x4
 00595CD8    cmp        al,bl
>00595CDA    jne        00595DFA
 00595CE0    mov        edx,dword ptr [esi+2F8]; TRavePreviewForm.ScrollBox1:TScrollBox
 00595CE6    mov        eax,dword ptr [edx+20C]; TScrollBox.VertScrollBar:TControlScrollBar
 00595CEC    mov        ebx,dword ptr [eax+0C]; TControlScrollBar.Position:Integer
 00595CEF    add        ebx,dword ptr [edx+4C]; TScrollBox.Height:Integer
 00595CF2    mov        edx,dword ptr [eax+10]; TControlScrollBar.Range:Integer
 00595CF5    cmp        ebx,edx
>00595CF7    jl         00595CFC
 00595CF9    mov        ebx,edx
 00595CFB    dec        ebx
 00595CFC    mov        edx,ebx
 00595CFE    call       TControlScrollBar.SetPosition
 00595D03    mov        word ptr [edi],0
>00595D08    jmp        00595DFA
 00595D0D    mov        eax,dword ptr [esi+2F8]; TRavePreviewForm.ScrollBox1:TScrollBox
 00595D13    mov        eax,dword ptr [eax+208]; TScrollBox.HorzScrollBar:TControlScrollBar
 00595D19    mov        dword ptr [ebp-0C],eax
 00595D1C    mov        al,[00595E08]; 0x4
 00595D21    cmp        al,bl
>00595D23    jne        00595D4E
 00595D25    mov        eax,dword ptr [ebp-0C]
 00595D28    mov        ebx,dword ptr [eax+0C]; TControlScrollBar.Position:Integer
 00595D2B    mov        eax,dword ptr [ebp-0C]
 00595D2E    movzx      eax,word ptr [eax+8]; TControlScrollBar.Increment:TScrollBarInc
 00595D32    sub        ebx,eax
 00595D34    test       ebx,ebx
>00595D36    jge        00595D3A
 00595D38    xor        ebx,ebx
 00595D3A    mov        edx,ebx
 00595D3C    mov        eax,dword ptr [ebp-0C]
 00595D3F    call       TControlScrollBar.SetPosition
 00595D44    mov        word ptr [edi],0
>00595D49    jmp        00595DFA
 00595D4E    mov        al,[00595E0C]; 0x5
 00595D53    cmp        al,bl
>00595D55    jne        00595DFA
 00595D5B    mov        eax,dword ptr [ebp-0C]
 00595D5E    mov        ebx,dword ptr [eax+0C]; TControlScrollBar.Position:Integer
 00595D61    mov        eax,dword ptr [esi+2F8]; TRavePreviewForm.ScrollBox1:TScrollBox
 00595D67    sub        ebx,dword ptr [eax+48]
 00595D6A    test       ebx,ebx
>00595D6C    jge        00595D70
 00595D6E    xor        ebx,ebx
 00595D70    mov        edx,ebx
 00595D72    mov        eax,dword ptr [ebp-0C]
 00595D75    call       TControlScrollBar.SetPosition
 00595D7A    mov        word ptr [edi],0
>00595D7F    jmp        00595DFA
 00595D81    mov        eax,dword ptr [esi+2F8]; TRavePreviewForm.ScrollBox1:TScrollBox
 00595D87    mov        eax,dword ptr [eax+208]; TScrollBox.HorzScrollBar:TControlScrollBar
 00595D8D    mov        dword ptr [ebp-10],eax
 00595D90    mov        al,[00595E08]; 0x4
 00595D95    cmp        al,bl
>00595D97    jne        00595DC6
 00595D99    mov        eax,dword ptr [ebp-10]
 00595D9C    mov        ebx,dword ptr [eax+0C]; TControlScrollBar.Position:Integer
 00595D9F    mov        eax,dword ptr [ebp-10]
 00595DA2    movzx      eax,word ptr [eax+8]; TControlScrollBar.Increment:TScrollBarInc
 00595DA6    add        ebx,eax
 00595DA8    mov        eax,dword ptr [ebp-10]
 00595DAB    mov        eax,dword ptr [eax+10]; TControlScrollBar.Range:Integer
 00595DAE    cmp        ebx,eax
>00595DB0    jl         00595DB5
 00595DB2    mov        ebx,eax
 00595DB4    dec        ebx
 00595DB5    mov        edx,ebx
 00595DB7    mov        eax,dword ptr [ebp-10]
 00595DBA    call       TControlScrollBar.SetPosition
 00595DBF    mov        word ptr [edi],0
>00595DC4    jmp        00595DFA
 00595DC6    mov        al,[00595E0C]; 0x5
 00595DCB    cmp        al,bl
>00595DCD    jne        00595DFA
 00595DCF    mov        eax,dword ptr [ebp-10]
 00595DD2    mov        ebx,dword ptr [eax+0C]; TControlScrollBar.Position:Integer
 00595DD5    mov        eax,dword ptr [esi+2F8]; TRavePreviewForm.ScrollBox1:TScrollBox
 00595DDB    add        ebx,dword ptr [eax+48]; TScrollBox.Width:Integer
 00595DDE    mov        eax,dword ptr [ebp-10]
 00595DE1    mov        eax,dword ptr [eax+10]; TControlScrollBar.Range:Integer
 00595DE4    cmp        ebx,eax
>00595DE6    jl         00595DEB
 00595DE8    mov        ebx,eax
 00595DEA    dec        ebx
 00595DEB    mov        edx,ebx
 00595DED    mov        eax,dword ptr [ebp-10]
 00595DF0    call       TControlScrollBar.SetPosition
 00595DF5    mov        word ptr [edi],0
 00595DFA    pop        edi
 00595DFB    pop        esi
 00595DFC    pop        ebx
 00595DFD    mov        esp,ebp
 00595DFF    pop        ebp
 00595E00    ret        4
*}
//end;

//00595E10
//procedure TRavePreviewForm.FormKeyPress(?:?; ?:?);
//begin
{*
 00595E10    push       ebp
 00595E11    mov        ebp,esp
 00595E13    push       0
 00595E15    push       0
 00595E17    push       0
 00595E19    push       0
 00595E1B    push       0
 00595E1D    push       ebx
 00595E1E    push       esi
 00595E1F    push       edi
 00595E20    mov        dword ptr [ebp-4],ecx
 00595E23    mov        edi,eax
 00595E25    xor        eax,eax
 00595E27    push       ebp
 00595E28    push       5960C6
 00595E2D    push       dword ptr fs:[eax]
 00595E30    mov        dword ptr fs:[eax],esp
 00595E33    mov        eax,dword ptr [ebp-4]
 00595E36    cmp        byte ptr [eax],1B
>00595E39    je         00595E43
 00595E3B    mov        eax,dword ptr [ebp-4]
 00595E3E    cmp        byte ptr [eax],78
>00595E41    jne        00595E5D
 00595E43    mov        eax,dword ptr [edi+310]; TRavePreviewForm.actnFile_Exit:TAction
 00595E49    mov        si,0FFEF
 00595E4D    call       @CallDynaInst; TCustomAction.Execute
 00595E52    mov        eax,dword ptr [ebp-4]
 00595E55    mov        byte ptr [eax],0
>00595E58    jmp        0059602E
 00595E5D    lea        eax,[ebp-8]
 00595E60    mov        edx,5960DC; 'eEbBwWfFnNpP+-01234567890.\r'
 00595E65    call       @LStrLAsg
 00595E6A    lea        eax,[ebp-0C]
 00595E6D    mov        edx,dword ptr [ebp-4]
 00595E70    mov        dl,byte ptr [edx]
 00595E72    call       @LStrFromChar
 00595E77    mov        eax,dword ptr [ebp-0C]
 00595E7A    mov        edx,dword ptr [ebp-8]
 00595E7D    call       @LStrPos
 00595E82    test       eax,eax
>00595E84    jle        00596028
 00595E8A    mov        eax,dword ptr [ebp-4]
 00595E8D    movzx      eax,byte ptr [eax]
 00595E90    cmp        eax,57
>00595E93    jg         00595EE6
>00595E95    je         00595FBC
 00595E9B    cmp        eax,45
>00595E9E    jg         00595EC6
>00595EA0    je         00595F6F
 00595EA6    sub        eax,2B
>00595EA9    je         00595FA9
 00595EAF    sub        eax,2
>00595EB2    je         00595F93
 00595EB8    sub        eax,15
>00595EBB    je         00595F51
>00595EC1    jmp        0059602E
 00595EC6    sub        eax,46
>00595EC9    je         00595FDF
 00595ECF    sub        eax,8
>00595ED2    je         00596002
 00595ED8    sub        eax,2
>00595EDB    je         00596015
>00595EE1    jmp        0059602E
 00595EE6    add        eax,0FFFFFF9E
 00595EE9    cmp        eax,15
>00595EEC    ja         0059602E
 00595EF2    jmp        dword ptr [eax*4+595EF9]
 00595EF2    dd         595F51
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         595F6F
 00595EF2    dd         595FDF
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         596002
 00595EF2    dd         59602E
 00595EF2    dd         596015
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         59602E
 00595EF2    dd         595FBC
 00595F51    mov        edx,1
 00595F56    mov        eax,dword ptr [edi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595F5C    mov        ecx,dword ptr [eax]
 00595F5E    call       dword ptr [ecx+0AC]; TRvRenderPreview.sub_0059387C
 00595F64    mov        eax,dword ptr [ebp-4]
 00595F67    mov        byte ptr [eax],0
>00595F6A    jmp        0059602E
 00595F6F    mov        esi,dword ptr [edi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595F75    mov        eax,esi
 00595F77    call       005937B8
 00595F7C    mov        edx,eax
 00595F7E    mov        eax,esi
 00595F80    mov        ecx,dword ptr [eax]
 00595F82    call       dword ptr [ecx+0AC]; TRvRenderPreview.sub_0059387C
 00595F88    mov        eax,dword ptr [ebp-4]
 00595F8B    mov        byte ptr [eax],0
>00595F8E    jmp        0059602E
 00595F93    mov        eax,dword ptr [edi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595F99    call       00593768
 00595F9E    mov        eax,dword ptr [ebp-4]
 00595FA1    mov        byte ptr [eax],0
>00595FA4    jmp        0059602E
 00595FA9    mov        eax,dword ptr [edi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595FAF    call       00593744
 00595FB4    mov        eax,dword ptr [ebp-4]
 00595FB7    mov        byte ptr [eax],0
>00595FBA    jmp        0059602E
 00595FBC    mov        ebx,dword ptr [edi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595FC2    mov        eax,ebx
 00595FC4    call       00591FBC
 00595FC9    add        esp,0FFFFFFF8
 00595FCC    fstp       qword ptr [esp]
 00595FCF    wait
 00595FD0    mov        eax,ebx
 00595FD2    call       TRvRenderPreview.SetZoomFactor
 00595FD7    mov        eax,dword ptr [ebp-4]
 00595FDA    mov        byte ptr [eax],0
>00595FDD    jmp        0059602E
 00595FDF    mov        ebx,dword ptr [edi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00595FE5    mov        eax,ebx
 00595FE7    call       00591E10
 00595FEC    add        esp,0FFFFFFF8
 00595FEF    fstp       qword ptr [esp]
 00595FF2    wait
 00595FF3    mov        eax,ebx
 00595FF5    call       TRvRenderPreview.SetZoomFactor
 00595FFA    mov        eax,dword ptr [ebp-4]
 00595FFD    mov        byte ptr [eax],0
>00596000    jmp        0059602E
 00596002    mov        eax,dword ptr [edi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596008    call       005937E8
 0059600D    mov        eax,dword ptr [ebp-4]
 00596010    mov        byte ptr [eax],0
>00596013    jmp        0059602E
 00596015    mov        eax,dword ptr [edi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059601B    call       00593834
 00596020    mov        eax,dword ptr [ebp-4]
 00596023    mov        byte ptr [eax],0
>00596026    jmp        0059602E
 00596028    mov        eax,dword ptr [ebp-4]
 0059602B    mov        byte ptr [eax],0
 0059602E    mov        eax,dword ptr [ebp-4]
 00596031    cmp        byte ptr [eax],0
>00596034    jne        0059609E
 00596036    xor        edx,edx
 00596038    mov        eax,dword ptr [edi+3D8]; TRavePreviewForm.PageEdit:TEdit
 0059603E    mov        ecx,dword ptr [eax]
 00596040    call       dword ptr [ecx+0DC]; TCustomEdit.SetSelStart
 00596046    lea        edx,[ebp-10]
 00596049    mov        ebx,dword ptr [edi+3D8]; TRavePreviewForm.PageEdit:TEdit
 0059604F    mov        eax,ebx
 00596051    call       TControl.GetText
 00596056    mov        eax,dword ptr [ebp-10]
 00596059    call       @LStrLen
 0059605E    mov        edx,eax
 00596060    mov        eax,ebx
 00596062    mov        ecx,dword ptr [eax]
 00596064    call       dword ptr [ecx+0D8]; TCustomEdit.SetSelLength
 0059606A    xor        edx,edx
 0059606C    mov        eax,dword ptr [edi+3D4]; TRavePreviewForm.ZoomEdit:TEdit
 00596072    mov        ecx,dword ptr [eax]
 00596074    call       dword ptr [ecx+0DC]; TCustomEdit.SetSelStart
 0059607A    lea        edx,[ebp-14]
 0059607D    mov        ebx,dword ptr [edi+3D4]; TRavePreviewForm.ZoomEdit:TEdit
 00596083    mov        eax,ebx
 00596085    call       TControl.GetText
 0059608A    mov        eax,dword ptr [ebp-14]
 0059608D    call       @LStrLen
 00596092    mov        edx,eax
 00596094    mov        eax,ebx
 00596096    mov        ecx,dword ptr [eax]
 00596098    call       dword ptr [ecx+0D8]; TCustomEdit.SetSelLength
 0059609E    xor        eax,eax
 005960A0    pop        edx
 005960A1    pop        ecx
 005960A2    pop        ecx
 005960A3    mov        dword ptr fs:[eax],edx
 005960A6    push       5960CD
 005960AB    lea        eax,[ebp-14]
 005960AE    mov        edx,2
 005960B3    call       @LStrArrayClr
 005960B8    lea        eax,[ebp-0C]
 005960BB    mov        edx,2
 005960C0    call       @LStrArrayClr
 005960C5    ret
<005960C6    jmp        @HandleFinally
<005960CB    jmp        005960AB
 005960CD    pop        edi
 005960CE    pop        esi
 005960CF    pop        ebx
 005960D0    mov        esp,ebp
 005960D2    pop        ebp
 005960D3    ret
*}
//end;

//005960FC
procedure TRavePreviewForm.actnFile_ExitExecute;
begin
{*
 005960FC    call       TCustomForm.Close
 00596101    ret
*}
end;

//00596104
procedure TRavePreviewForm.actnPage_GotoPageExecute;
begin
{*
 00596104    push       ebp
 00596105    mov        ebp,esp
 00596107    xor        ecx,ecx
 00596109    push       ecx
 0059610A    push       ecx
 0059610B    push       ecx
 0059610C    push       ecx
 0059610D    push       ebx
 0059610E    push       esi
 0059610F    push       edi
 00596110    mov        esi,eax
 00596112    xor        eax,eax
 00596114    push       ebp
 00596115    push       5961B9
 0059611A    push       dword ptr fs:[eax]
 0059611D    mov        dword ptr fs:[eax],esp
 00596120    lea        eax,[ebp-4]
 00596123    push       eax
 00596124    mov        ebx,dword ptr ds:[61B830]
 0059612A    mov        ebx,dword ptr [ebx]
 0059612C    lea        edx,[ebp-8]
 0059612F    mov        eax,5961D0; 'Enter page to move to:'
 00596134    call       ebx
 00596136    mov        eax,dword ptr [ebp-8]
 00596139    push       eax
 0059613A    mov        ebx,dword ptr ds:[61B830]
 00596140    mov        ebx,dword ptr [ebx]
 00596142    lea        edx,[ebp-0C]
 00596145    mov        eax,5961F0; 'Go to Page'
 0059614A    call       ebx
 0059614C    mov        eax,dword ptr [ebp-0C]
 0059614F    push       eax
 00596150    lea        edx,[ebp-10]
 00596153    mov        eax,dword ptr [esi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596159    mov        eax,dword ptr [eax+108]; TRvRenderPreview.?f108:dword
 0059615F    call       IntToStr
 00596164    mov        ecx,dword ptr [ebp-10]
 00596167    pop        eax
 00596168    pop        edx
 00596169    call       InputBox
 0059616E    mov        eax,dword ptr [ebp-4]
 00596171    or         edx,0FFFFFFFF
 00596174    call       StrToIntDef
 00596179    mov        edi,eax
 0059617B    cmp        edi,0FFFFFFFF
>0059617E    jle        0059619E
 00596180    mov        eax,dword ptr [esi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596186    cmp        edi,dword ptr [eax+108]; TRvRenderPreview.?f108:dword
>0059618C    je         0059619E
 0059618E    mov        edx,edi
 00596190    mov        eax,dword ptr [esi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596196    mov        ecx,dword ptr [eax]
 00596198    call       dword ptr [ecx+0AC]; TRvRenderPreview.sub_0059387C
 0059619E    xor        eax,eax
 005961A0    pop        edx
 005961A1    pop        ecx
 005961A2    pop        ecx
 005961A3    mov        dword ptr fs:[eax],edx
 005961A6    push       5961C0
 005961AB    lea        eax,[ebp-10]
 005961AE    mov        edx,4
 005961B3    call       @LStrArrayClr
 005961B8    ret
<005961B9    jmp        @HandleFinally
<005961BE    jmp        005961AB
 005961C0    pop        edi
 005961C1    pop        esi
 005961C2    pop        ebx
 005961C3    mov        esp,ebp
 005961C5    pop        ebp
 005961C6    ret
*}
end;

//005961FC
procedure TRavePreviewForm.actnZoom_InExecute;
begin
{*
 005961FC    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596202    call       00593744
 00596207    ret
*}
end;

//00596208
procedure TRavePreviewForm.actnZoom_OutExecute;
begin
{*
 00596208    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059620E    call       00593768
 00596213    ret
*}
end;

//00596214
procedure TRavePreviewForm.actnPage_PreviousExecute;
begin
{*
 00596214    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059621A    call       00593834
 0059621F    ret
*}
end;

//00596220
procedure TRavePreviewForm.actnPage_NextExecute;
begin
{*
 00596220    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596226    call       005937E8
 0059622B    ret
*}
end;

//0059622C
procedure TRavePreviewForm.actnZoom_PageWidthExecute;
begin
{*
 0059622C    push       ebx
 0059622D    push       esi
 0059622E    mov        ebx,eax
 00596230    mov        esi,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596236    mov        eax,esi
 00596238    call       00591FBC
 0059623D    add        esp,0FFFFFFF8
 00596240    fstp       qword ptr [esp]
 00596243    wait
 00596244    mov        eax,esi
 00596246    call       TRvRenderPreview.SetZoomFactor
 0059624B    pop        esi
 0059624C    pop        ebx
 0059624D    ret
*}
end;

//00596250
procedure TRavePreviewForm.actnZoom_PageExecute;
begin
{*
 00596250    push       ebx
 00596251    push       esi
 00596252    mov        ebx,eax
 00596254    mov        esi,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059625A    mov        eax,esi
 0059625C    call       00591E10
 00596261    add        esp,0FFFFFFF8
 00596264    fstp       qword ptr [esp]
 00596267    wait
 00596268    mov        eax,esi
 0059626A    call       TRvRenderPreview.SetZoomFactor
 0059626F    pop        esi
 00596270    pop        ebx
 00596271    ret
*}
end;

//00596274
procedure TRavePreviewForm.actnFile_PrintExecute;
begin
{*
 00596274    push       ebp
 00596275    mov        ebp,esp
 00596277    add        esp,0FFFFFFF4
 0059627A    push       ebx
 0059627B    mov        dword ptr [ebp-4],eax
 0059627E    mov        eax,dword ptr [ebp-4]
 00596281    mov        eax,dword ptr [eax+410]; TRavePreviewForm.?f410:dword
 00596287    test       byte ptr [eax+4B],8
>0059628B    je         005963D4
 00596291    mov        eax,dword ptr [ebp-4]
 00596294    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059629A    mov        eax,dword ptr [eax+6C]; TRvRenderPreview.?f6C:TFileStream
 0059629D    mov        edx,dword ptr [ebp-4]
 005962A0    mov        edx,dword ptr [edx+418]; TRavePreviewForm.?f418:TRvRenderPrinter
 005962A6    mov        dword ptr [edx+6C],eax; TRvRenderPrinter.?f6C:TFileStream
 005962A9    mov        eax,dword ptr [ebp-4]
 005962AC    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 005962B2    call       005937B8
 005962B7    mov        edx,dword ptr [ebp-4]
 005962BA    mov        edx,dword ptr [edx+418]; TRavePreviewForm.?f418:TRvRenderPrinter
 005962C0    mov        dword ptr [edx+0A4],eax; TRvRenderPrinter.?fA4:dword
 005962C6    mov        eax,dword ptr [ebp-4]
 005962C9    mov        eax,dword ptr [eax+410]; TRavePreviewForm.?f410:dword
 005962CF    test       byte ptr [eax+4A],1
>005962D3    je         00596364
 005962D9    mov        ecx,dword ptr [ebp-4]
 005962DC    mov        dl,1
 005962DE    mov        eax,[00593994]; TRPSetupForm
 005962E3    call       TCustomForm.Create; TRPSetupForm.Create
 005962E8    mov        dword ptr [ebp-0C],eax
 005962EB    xor        eax,eax
 005962ED    push       ebp
 005962EE    push       59635D
 005962F3    push       dword ptr fs:[eax]
 005962F6    mov        dword ptr fs:[eax],esp
 005962F9    mov        eax,dword ptr [ebp-0C]
 005962FC    mov        byte ptr [eax+380],1; TRPSetupForm.?f380:byte
 00596303    mov        eax,dword ptr [ebp-4]
 00596306    mov        eax,dword ptr [eax+410]; TRavePreviewForm.?f410:dword
 0059630C    mov        edx,dword ptr [ebp-0C]
 0059630F    mov        dword ptr [edx+378],eax; TRPSetupForm.?f378:dword
 00596315    mov        eax,dword ptr [ebp-4]
 00596318    mov        eax,dword ptr [eax+418]; TRavePreviewForm.?f418:TRvRenderPrinter
 0059631E    mov        edx,dword ptr [ebp-0C]
 00596321    mov        dword ptr [edx+37C],eax; TRPSetupForm.?f37C:TRvRenderPrinter
 00596327    mov        eax,dword ptr [ebp-0C]
 0059632A    mov        edx,dword ptr [eax]
 0059632C    call       dword ptr [edx+0EC]; TCustomForm.ShowModal
 00596332    dec        eax
 00596333    sete       byte ptr [ebp-5]
 00596337    mov        eax,dword ptr [ebp-4]
 0059633A    mov        eax,dword ptr [eax+418]; TRavePreviewForm.?f418:TRvRenderPrinter
 00596340    mov        byte ptr [eax+0A2],1; TRvRenderPrinter.?fA2:byte
 00596347    xor        eax,eax
 00596349    pop        edx
 0059634A    pop        ecx
 0059634B    pop        ecx
 0059634C    mov        dword ptr fs:[eax],edx
 0059634F    push       596368
 00596354    mov        eax,dword ptr [ebp-0C]
 00596357    call       TObject.Free
 0059635C    ret
<0059635D    jmp        @HandleFinally
<00596362    jmp        00596354
 00596364    mov        byte ptr [ebp-5],1
 00596368    cmp        byte ptr [ebp-5],0
>0059636C    je         005963D4
 0059636E    mov        eax,dword ptr [ebp-4]
 00596371    mov        eax,dword ptr [eax+418]; TRavePreviewForm.?f418:TRvRenderPrinter
 00596377    call       005918A8
 0059637C    dec        eax
>0059637D    jg         005963AC
 0059637F    mov        eax,dword ptr [ebp-4]
 00596382    mov        eax,dword ptr [eax+418]; TRavePreviewForm.?f418:TRvRenderPrinter
 00596388    cmp        dword ptr [eax+9C],1; TRvRenderPrinter.?f9C:Longint
>0059638F    jle        005963AC
 00596391    mov        eax,dword ptr [ebp-4]
 00596394    mov        edx,dword ptr [eax+418]; TRavePreviewForm.?f418:TRvRenderPrinter
 0059639A    mov        eax,dword ptr [edx+9C]; TRvRenderPrinter.?f9C:Longint
 005963A0    mov        dword ptr [edx+9C],1; TRvRenderPrinter.?f9C:Longint
>005963AA    jmp        005963B1
 005963AC    mov        eax,1
 005963B1    mov        ebx,eax
 005963B3    test       ebx,ebx
>005963B5    jle        005963D4
 005963B7    mov        eax,dword ptr [ebp-4]
 005963BA    mov        edx,dword ptr [eax+40C]; TRavePreviewForm.?f40C:TMemoryStream
 005963C0    mov        eax,dword ptr [ebp-4]
 005963C3    mov        eax,dword ptr [eax+418]; TRavePreviewForm.?f418:TRvRenderPrinter
 005963C9    mov        ecx,dword ptr [eax]
 005963CB    call       dword ptr [ecx+0A8]; TRvRenderPrinter.sub_0058FE64
 005963D1    dec        ebx
<005963D2    jne        005963B7
 005963D4    pop        ebx
 005963D5    mov        esp,ebp
 005963D7    pop        ebp
 005963D8    ret
*}
end;

//005963DC
procedure TRavePreviewForm.actnPage_FirstExecute;
begin
{*
 005963DC    push       esi
 005963DD    mov        esi,eax
 005963DF    mov        edx,1
 005963E4    mov        eax,dword ptr [esi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 005963EA    mov        ecx,dword ptr [eax]
 005963EC    call       dword ptr [ecx+0AC]; TRvRenderPreview.sub_0059387C
 005963F2    pop        esi
 005963F3    ret
*}
end;

//005963F4
procedure TRavePreviewForm.actnPage_LastExecute;
begin
{*
 005963F4    push       esi
 005963F5    push       edi
 005963F6    mov        esi,eax
 005963F8    mov        edi,dword ptr [esi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 005963FE    mov        eax,edi
 00596400    call       005937B8
 00596405    mov        edx,eax
 00596407    mov        eax,edi
 00596409    mov        ecx,dword ptr [eax]
 0059640B    call       dword ptr [ecx+0AC]; TRvRenderPreview.sub_0059387C
 00596411    pop        edi
 00596412    pop        esi
 00596413    ret
*}
end;

//00596414
procedure TRavePreviewForm.actnPage_FirstUpdate;
begin
{*
 00596414    mov        edx,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059641A    cmp        dword ptr [edx+108],1; TRvRenderPreview.?f108:dword
 00596421    setg       dl
 00596424    mov        eax,dword ptr [eax+31C]; TRavePreviewForm.actnPage_First:TAction
 0059642A    call       TCustomAction.SetEnabled
 0059642F    ret
*}
end;

//00596430
procedure TRavePreviewForm.actnPage_PreviousUpdate;
begin
{*
 00596430    mov        edx,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596436    cmp        dword ptr [edx+108],1; TRvRenderPreview.?f108:dword
 0059643D    setg       dl
 00596440    mov        eax,dword ptr [eax+324]; TRavePreviewForm.actnPage_Previous:TAction
 00596446    call       TCustomAction.SetEnabled
 0059644B    ret
*}
end;

//0059644C
procedure TRavePreviewForm.actnPage_NextUpdate;
begin
{*
 0059644C    push       ebx
 0059644D    push       esi
 0059644E    mov        ebx,eax
 00596450    mov        esi,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596456    mov        eax,esi
 00596458    call       005937B8
 0059645D    cmp        eax,dword ptr [esi+108]; TRvRenderPreview.?f108:dword
 00596463    setg       dl
 00596466    mov        eax,dword ptr [ebx+320]; TRavePreviewForm.actnPage_Next:TAction
 0059646C    call       TCustomAction.SetEnabled
 00596471    pop        esi
 00596472    pop        ebx
 00596473    ret
*}
end;

//00596474
procedure TRavePreviewForm.actnPage_LastUpdate;
begin
{*
 00596474    push       ebx
 00596475    push       esi
 00596476    mov        ebx,eax
 00596478    mov        esi,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059647E    mov        eax,esi
 00596480    call       005937B8
 00596485    cmp        eax,dword ptr [esi+108]; TRvRenderPreview.?f108:dword
 0059648B    setg       dl
 0059648E    mov        eax,dword ptr [ebx+328]; TRavePreviewForm.actnPage_Last:TAction
 00596494    call       TCustomAction.SetEnabled
 00596499    pop        esi
 0059649A    pop        ebx
 0059649B    ret
*}
end;

//0059649C
procedure TRavePreviewForm.FormCreate;
begin
{*
 0059649C    push       ebx
 0059649D    push       esi
 0059649E    mov        ebx,eax
 005964A0    mov        dword ptr [ebx+3F8],1; TRavePreviewForm.?f3F8:dword
 005964AA    mov        ecx,ebx
 005964AC    mov        dl,1
 005964AE    mov        eax,[00591904]; TRvRenderPreview
 005964B3    call       TRvRenderPreview.Create; TRvRenderPreview.Create
 005964B8    mov        esi,eax
 005964BA    mov        dword ptr [ebx+41C],esi; TRavePreviewForm.?f41C:TRvRenderPreview
 005964C0    mov        dword ptr [esi+104],ebx; TRvRenderPreview.?f104:TRavePreviewForm
 005964C6    mov        dword ptr [esi+100],595A34; TRvRenderPreview.OnZoomChange:TNotifyEvent TRavePreviewForm.NDRPreviewZoomChange
 005964D0    mov        dword ptr [esi+0FC],ebx; TRvRenderPreview.?fFC:TRavePreviewForm
 005964D6    mov        dword ptr [esi+0F8],59589C; TRvRenderPreview.OnPageChange:TNotifyEvent TRavePreviewForm.NDRPreviewPageChange
 005964E0    mov        edx,2
 005964E5    mov        eax,esi
 005964E7    call       TRvRenderPreview.SetShadowDepth
 005964EC    xor        eax,eax
 005964EE    mov        dword ptr [esi+0B0],eax; TRvRenderPreview.MarginPercent:Double
 005964F4    mov        dword ptr [esi+0B4],40140000; TRvRenderPreview.?fB4:dword
 005964FE    push       40590000
 00596503    push       0
 00596505    mov        eax,esi
 00596507    call       TRvRenderPreview.SetZoomFactor
 0059650C    mov        edx,dword ptr [ebx+2F8]; TRavePreviewForm.ScrollBox1:TScrollBox
 00596512    mov        eax,esi
 00596514    call       TRvRenderPreview.SetScrollBox
 00596519    mov        ecx,ebx
 0059651B    mov        dl,1
 0059651D    mov        eax,[0059165C]; TRvRenderPrinter
 00596522    call       TRvRenderPrinter.Create; TRvRenderPrinter.Create
 00596527    mov        esi,eax
 00596529    mov        dword ptr [ebx+418],esi; TRavePreviewForm.?f418:TRvRenderPrinter
 0059652F    pop        esi
 00596530    pop        ebx
 00596531    ret
*}
end;

//00596534
//procedure sub_00596534(?:TRavePreviewForm; ?:AnsiString);
//begin
{*
 00596534    push       ebp
 00596535    mov        ebp,esp
 00596537    push       0
 00596539    push       0
 0059653B    push       0
 0059653D    push       ebx
 0059653E    push       esi
 0059653F    mov        esi,edx
 00596541    mov        ebx,eax
 00596543    xor        eax,eax
 00596545    push       ebp
 00596546    push       5965D4
 0059654B    push       dword ptr fs:[eax]
 0059654E    mov        dword ptr fs:[eax],esp
 00596551    lea        eax,[ebx+408]; TRavePreviewForm.?f408:String
 00596557    mov        edx,esi
 00596559    call       @LStrAsg
 0059655E    mov        esi,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596564    mov        eax,ebx
 00596566    call       TCustomForm.Close
 0059656B    mov        edx,dword ptr [esi+64]; TRvRenderPreview.?f64:TFileName
 0059656E    mov        eax,esi
 00596570    call       0058FEF0
 00596575    lea        edx,[ebp-8]
 00596578    mov        eax,[0061BD04]; ^Application:TApplication
 0059657D    mov        eax,dword ptr [eax]
 0059657F    call       TApplication.GetTitle
 00596584    push       dword ptr [ebp-8]
 00596587    push       5965EC; ' - [ '
 0059658C    lea        edx,[ebp-0C]
 0059658F    mov        eax,dword ptr [ebx+408]; TRavePreviewForm.?f408:String
 00596595    call       ExtractFileName
 0059659A    push       dword ptr [ebp-0C]
 0059659D    push       5965FC; ' ]'
 005965A2    lea        eax,[ebp-4]
 005965A5    mov        edx,4
 005965AA    call       @LStrCatN
 005965AF    mov        edx,dword ptr [ebp-4]
 005965B2    mov        eax,ebx
 005965B4    call       TControl.SetText
 005965B9    xor        eax,eax
 005965BB    pop        edx
 005965BC    pop        ecx
 005965BD    pop        ecx
 005965BE    mov        dword ptr fs:[eax],edx
 005965C1    push       5965DB
 005965C6    lea        eax,[ebp-0C]
 005965C9    mov        edx,3
 005965CE    call       @LStrArrayClr
 005965D3    ret
<005965D4    jmp        @HandleFinally
<005965D9    jmp        005965C6
 005965DB    pop        esi
 005965DC    pop        ebx
 005965DD    mov        esp,ebp
 005965DF    pop        ebp
 005965E0    ret
*}
//end;

//00596600
procedure TRavePreviewForm.actnFile_SaveExecute;
begin
{*
 00596600    push       ebp
 00596601    mov        ebp,esp
 00596603    add        esp,0FFFFFFE8
 00596606    push       ebx
 00596607    xor        ecx,ecx
 00596609    mov        dword ptr [ebp-18],ecx
 0059660C    mov        dword ptr [ebp-14],ecx
 0059660F    mov        dword ptr [ebp-4],eax
 00596612    xor        eax,eax
 00596614    push       ebp
 00596615    push       596817
 0059661A    push       dword ptr fs:[eax]
 0059661D    mov        dword ptr fs:[eax],esp
 00596620    mov        eax,dword ptr [ebp-4]
 00596623    mov        edx,dword ptr [eax+3B8]; TRavePreviewForm.dlogSave:TSaveDialog
 00596629    mov        eax,dword ptr [ebp-4]
 0059662C    call       00596C28
 00596631    mov        eax,dword ptr [ebp-4]
 00596634    mov        eax,dword ptr [eax+3B8]; TRavePreviewForm.dlogSave:TSaveDialog
 0059663A    mov        edx,dword ptr [eax]
 0059663C    call       dword ptr [edx+3C]; TSaveDialog.Execute
 0059663F    test       al,al
>00596641    je         005967FC
 00596647    mov        eax,[0061C374]; ^gvar_0061EFFC:TRPCursor
 0059664C    mov        eax,dword ptr [eax]
 0059664E    call       00594E10
 00596653    xor        eax,eax
 00596655    push       ebp
 00596656    push       5967F5
 0059665B    push       dword ptr fs:[eax]
 0059665E    mov        dword ptr fs:[eax],esp
 00596661    mov        eax,dword ptr [ebp-4]
 00596664    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059666A    mov        eax,dword ptr [eax+6C]; TRvRenderPreview.?f6C:TFileStream
 0059666D    call       TStream.GetPosition
 00596672    mov        dword ptr [ebp-0C],eax
 00596675    xor        eax,eax
 00596677    push       ebp
 00596678    push       5967D4
 0059667D    push       dword ptr fs:[eax]
 00596680    mov        dword ptr fs:[eax],esp
 00596683    push       0
 00596685    push       0
 00596687    mov        eax,dword ptr [ebp-4]
 0059668A    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596690    mov        eax,dword ptr [eax+6C]; TRvRenderPreview.?f6C:TFileStream
 00596693    call       TStream.SetPosition
 00596698    mov        eax,dword ptr [ebp-4]
 0059669B    mov        eax,dword ptr [eax+3B8]; TRavePreviewForm.dlogSave:TSaveDialog
 005966A1    call       TOpenDialog.GetFilterIndex
 005966A6    dec        eax
>005966A7    jle        0059673E
 005966AD    mov        dl,1
 005966AF    mov        eax,[0041C8E4]; TStringList
 005966B4    call       TObject.Create; TStringList.Create
 005966B9    mov        dword ptr [ebp-10],eax
 005966BC    xor        eax,eax
 005966BE    push       ebp
 005966BF    push       596737
 005966C4    push       dword ptr fs:[eax]
 005966C7    mov        dword ptr fs:[eax],esp
 005966CA    mov        eax,dword ptr [ebp-10]
 005966CD    call       0058C880
 005966D2    mov        eax,dword ptr [ebp-4]
 005966D5    mov        eax,dword ptr [eax+3B8]; TRavePreviewForm.dlogSave:TSaveDialog
 005966DB    call       TOpenDialog.GetFilterIndex
 005966E0    mov        edx,eax
 005966E2    sub        edx,2
 005966E5    mov        eax,dword ptr [ebp-10]
 005966E8    mov        ecx,dword ptr [eax]
 005966EA    call       dword ptr [ecx+18]; TStringList.GetObject
 005966ED    mov        ebx,eax
 005966EF    lea        edx,[ebp-14]
 005966F2    mov        eax,dword ptr [ebp-4]
 005966F5    mov        eax,dword ptr [eax+3B8]; TRavePreviewForm.dlogSave:TSaveDialog
 005966FB    call       TOpenDialog.GetFileName
 00596700    mov        edx,dword ptr [ebp-14]
 00596703    lea        eax,[ebx+60]
 00596706    call       @LStrAsg
 0059670B    mov        eax,dword ptr [ebp-4]
 0059670E    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596714    mov        edx,dword ptr [eax+6C]; TRvRenderPreview.?f6C:TFileStream
 00596717    mov        eax,ebx
 00596719    mov        ecx,dword ptr [eax]
 0059671B    call       dword ptr [ecx+0A8]
 00596721    xor        eax,eax
 00596723    pop        edx
 00596724    pop        ecx
 00596725    pop        ecx
 00596726    mov        dword ptr fs:[eax],edx
 00596729    push       5967AF
 0059672E    mov        eax,dword ptr [ebp-10]
 00596731    call       TObject.Free
 00596736    ret
<00596737    jmp        @HandleFinally
<0059673C    jmp        0059672E
 0059673E    push       0FFFF
 00596743    lea        edx,[ebp-18]
 00596746    mov        eax,dword ptr [ebp-4]
 00596749    mov        eax,dword ptr [eax+3B8]; TRavePreviewForm.dlogSave:TSaveDialog
 0059674F    call       TOpenDialog.GetFileName
 00596754    mov        ecx,dword ptr [ebp-18]
 00596757    mov        dl,1
 00596759    mov        eax,[0041CB08]; TFileStream
 0059675E    call       TFileStream.Create; TFileStream.Create
 00596763    mov        dword ptr [ebp-8],eax
 00596766    xor        eax,eax
 00596768    push       ebp
 00596769    push       5967A8
 0059676E    push       dword ptr fs:[eax]
 00596771    mov        dword ptr fs:[eax],esp
 00596774    mov        eax,dword ptr [ebp-4]
 00596777    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059677D    mov        ebx,dword ptr [eax+6C]; TRvRenderPreview.?f6C:TFileStream
 00596780    mov        eax,ebx
 00596782    mov        edx,dword ptr [eax]
 00596784    call       dword ptr [edx]; TStream.GetSize
 00596786    push       edx
 00596787    push       eax
 00596788    mov        edx,ebx
 0059678A    mov        eax,dword ptr [ebp-8]
 0059678D    call       TStream.CopyFrom
 00596792    xor        eax,eax
 00596794    pop        edx
 00596795    pop        ecx
 00596796    pop        ecx
 00596797    mov        dword ptr fs:[eax],edx
 0059679A    push       5967AF
 0059679F    lea        eax,[ebp-8]
 005967A2    call       FreeAndNil
 005967A7    ret
<005967A8    jmp        @HandleFinally
<005967AD    jmp        0059679F
 005967AF    xor        eax,eax
 005967B1    pop        edx
 005967B2    pop        ecx
 005967B3    pop        ecx
 005967B4    mov        dword ptr fs:[eax],edx
 005967B7    push       5967DB
 005967BC    mov        eax,dword ptr [ebp-0C]
 005967BF    cdq
 005967C0    push       edx
 005967C1    push       eax
 005967C2    mov        eax,dword ptr [ebp-4]
 005967C5    mov        eax,dword ptr [eax+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 005967CB    mov        eax,dword ptr [eax+6C]; TRvRenderPreview.?f6C:TFileStream
 005967CE    call       TStream.SetPosition
 005967D3    ret
<005967D4    jmp        @HandleFinally
<005967D9    jmp        005967BC
 005967DB    xor        eax,eax
 005967DD    pop        edx
 005967DE    pop        ecx
 005967DF    pop        ecx
 005967E0    mov        dword ptr fs:[eax],edx
 005967E3    push       5967FC
 005967E8    mov        eax,[0061C374]; ^gvar_0061EFFC:TRPCursor
 005967ED    mov        eax,dword ptr [eax]
 005967EF    call       00594E94
 005967F4    ret
<005967F5    jmp        @HandleFinally
<005967FA    jmp        005967E8
 005967FC    xor        eax,eax
 005967FE    pop        edx
 005967FF    pop        ecx
 00596800    pop        ecx
 00596801    mov        dword ptr fs:[eax],edx
 00596804    push       59681E
 00596809    lea        eax,[ebp-18]
 0059680C    mov        edx,2
 00596811    call       @LStrArrayClr
 00596816    ret
<00596817    jmp        @HandleFinally
<0059681C    jmp        00596809
 0059681E    pop        ebx
 0059681F    mov        esp,ebp
 00596821    pop        ebp
 00596822    ret
*}
end;

//00596824
procedure TRavePreviewForm.actnFile_OpenExecute;
begin
{*
 00596824    push       ebp
 00596825    mov        ebp,esp
 00596827    push       0
 00596829    push       ebx
 0059682A    mov        ebx,eax
 0059682C    xor        eax,eax
 0059682E    push       ebp
 0059682F    push       596877
 00596834    push       dword ptr fs:[eax]
 00596837    mov        dword ptr fs:[eax],esp
 0059683A    mov        eax,dword ptr [ebx+3B4]; TRavePreviewForm.dlogOpen:TOpenDialog
 00596840    mov        edx,dword ptr [eax]
 00596842    call       dword ptr [edx+3C]; TOpenDialog.Execute
 00596845    test       al,al
>00596847    je         00596861
 00596849    lea        edx,[ebp-4]
 0059684C    mov        eax,dword ptr [ebx+3B4]; TRavePreviewForm.dlogOpen:TOpenDialog
 00596852    call       TOpenDialog.GetFileName
 00596857    mov        edx,dword ptr [ebp-4]
 0059685A    mov        eax,ebx
 0059685C    call       00596534
 00596861    xor        eax,eax
 00596863    pop        edx
 00596864    pop        ecx
 00596865    pop        ecx
 00596866    mov        dword ptr fs:[eax],edx
 00596869    push       59687E
 0059686E    lea        eax,[ebp-4]
 00596871    call       @LStrClr
 00596876    ret
<00596877    jmp        @HandleFinally
<0059687C    jmp        0059686E
 0059687E    pop        ebx
 0059687F    pop        ecx
 00596880    pop        ebp
 00596881    ret
*}
end;

//00596884
procedure TRavePreviewForm.actnFile_PrintUpdate;
begin
{*
 00596884    mov        dl,1
 00596886    mov        eax,dword ptr [eax+308]; TRavePreviewForm.actnFile_Print:TAction
 0059688C    call       TCustomAction.SetEnabled
 00596891    ret
*}
end;

//00596894
procedure TRavePreviewForm.actnFile_SaveUpdate;
begin
{*
 00596894    mov        dl,1
 00596896    mov        eax,dword ptr [eax+30C]; TRavePreviewForm.actnFile_Save:TAction
 0059689C    call       TCustomAction.SetEnabled
 005968A1    ret
*}
end;

//005968A4
procedure TRavePreviewForm.actnZoom_InUpdate;
begin
{*
 005968A4    mov        dl,1
 005968A6    mov        eax,dword ptr [eax+32C]; TRavePreviewForm.actnZoom_In:TAction
 005968AC    call       TCustomAction.SetEnabled
 005968B1    ret
*}
end;

//005968B4
procedure TRavePreviewForm.actnZoom_OutUpdate;
begin
{*
 005968B4    mov        dl,1
 005968B6    mov        eax,dword ptr [eax+330]; TRavePreviewForm.actnZoom_Out:TAction
 005968BC    call       TCustomAction.SetEnabled
 005968C1    ret
*}
end;

//005968C4
procedure TRavePreviewForm.actnZoom_PageWidthUpdate;
begin
{*
 005968C4    mov        dl,1
 005968C6    mov        eax,dword ptr [eax+334]; TRavePreviewForm.actnZoom_PageWidth:TAction
 005968CC    call       TCustomAction.SetEnabled
 005968D1    ret
*}
end;

//005968D4
procedure TRavePreviewForm.actnZoom_PageUpdate;
begin
{*
 005968D4    mov        dl,1
 005968D6    mov        eax,dword ptr [eax+338]; TRavePreviewForm.actnZoom_Page:TAction
 005968DC    call       TCustomAction.SetEnabled
 005968E1    ret
*}
end;

//005968E4
//procedure sub_005968E4(?:TRavePreviewForm);
//begin
{*
 005968E4    push       ebx
 005968E5    mov        ebx,eax
 005968E7    cmp        dword ptr [ebx+408],0; TRavePreviewForm.?f408:String
>005968EE    je         0059690F
 005968F0    push       20
 005968F2    mov        ecx,dword ptr [ebx+408]; TRavePreviewForm.?f408:String
 005968F8    mov        dl,1
 005968FA    mov        eax,[0041CB08]; TFileStream
 005968FF    call       TFileStream.Create; TFileStream.Create
 00596904    mov        edx,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 0059690A    mov        dword ptr [edx+6C],eax; TRvRenderPreview.?f6C:TFileStream
>0059690D    jmp        0059691E
 0059690F    mov        eax,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596915    mov        edx,dword ptr [ebx+40C]; TRavePreviewForm.?f40C:TMemoryStream
 0059691B    mov        dword ptr [eax+6C],edx; TRvRenderPreview.?f6C:TFileStream
 0059691E    xor        edx,edx
 00596920    mov        eax,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596926    mov        ecx,dword ptr [eax]
 00596928    call       dword ptr [ecx+0A8]; TRvRenderPreview.sub_0058FE64
 0059692E    mov        edx,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596934    mov        eax,dword ptr [ebx+410]; TRavePreviewForm.?f410:dword
 0059693A    call       00597F74
 0059693F    pop        ebx
 00596940    ret
*}
//end;

//00596944
//procedure TRavePreviewForm.ZoomEditKeyPress(?:?; ?:?);
//begin
{*
 00596944    push       ebp
 00596945    mov        ebp,esp
 00596947    push       0
 00596949    push       0
 0059694B    push       0
 0059694D    push       0
 0059694F    push       0
 00596951    push       ebx
 00596952    push       esi
 00596953    push       edi
 00596954    mov        esi,ecx
 00596956    mov        edi,edx
 00596958    mov        ebx,eax
 0059695A    xor        eax,eax
 0059695C    push       ebp
 0059695D    push       596A60
 00596962    push       dword ptr fs:[eax]
 00596965    mov        dword ptr fs:[eax],esp
 00596968    lea        eax,[ebp-4]
 0059696B    mov        dl,byte ptr [esi]
 0059696D    call       @LStrFromChar
 00596972    mov        eax,dword ptr [ebp-4]
 00596975    mov        edx,596A78; '01234567890'
 0059697A    call       @LStrPos
 0059697F    test       eax,eax
>00596981    jle        005969F3
 00596983    mov        eax,edi
 00596985    mov        edx,dword ptr ds:[4507E8]; TEdit
 0059698B    call       @AsClass
 00596990    mov        ebx,eax
 00596992    mov        eax,ebx
 00596994    mov        edx,dword ptr [eax]
 00596996    call       dword ptr [edx+0CC]; TCustomEdit.GetSelLength
 0059699C    test       eax,eax
>0059699E    jne        00596A3D
 005969A4    lea        edx,[ebp-8]
 005969A7    mov        eax,ebx
 005969A9    call       TControl.GetText
 005969AE    mov        edx,dword ptr [ebp-8]
 005969B1    mov        eax,596A8C; '.'
 005969B6    call       @LStrPos
 005969BB    test       eax,eax
>005969BD    jle        00596A3D
 005969BF    lea        edx,[ebp-0C]
 005969C2    mov        eax,ebx
 005969C4    call       TControl.GetText
 005969C9    mov        eax,dword ptr [ebp-0C]
 005969CC    call       @LStrLen
 005969D1    mov        edi,eax
 005969D3    lea        edx,[ebp-10]
 005969D6    mov        eax,ebx
 005969D8    call       TControl.GetText
 005969DD    mov        edx,dword ptr [ebp-10]
 005969E0    mov        eax,596A8C; '.'
 005969E5    call       @LStrPos
 005969EA    cmp        edi,eax
>005969EC    jle        00596A3D
 005969EE    mov        byte ptr [esi],0
>005969F1    jmp        00596A3D
 005969F3    cmp        byte ptr [esi],0D
>005969F6    jne        00596A3D
 005969F8    mov        edx,edi
 005969FA    mov        eax,ebx
 005969FC    call       TRavePreviewForm.ZoomEditExit
 00596A01    mov        eax,edi
 00596A03    mov        edx,dword ptr ds:[4507E8]; TEdit
 00596A09    call       @AsClass
 00596A0E    mov        ebx,eax
 00596A10    xor        edx,edx
 00596A12    mov        eax,ebx
 00596A14    mov        ecx,dword ptr [eax]
 00596A16    call       dword ptr [ecx+0DC]; TCustomEdit.SetSelStart
 00596A1C    lea        edx,[ebp-14]
 00596A1F    mov        eax,ebx
 00596A21    call       TControl.GetText
 00596A26    mov        eax,dword ptr [ebp-14]
 00596A29    call       @LStrLen
 00596A2E    mov        edx,eax
 00596A30    mov        eax,ebx
 00596A32    mov        ecx,dword ptr [eax]
 00596A34    call       dword ptr [ecx+0D8]; TCustomEdit.SetSelLength
 00596A3A    mov        byte ptr [esi],0
 00596A3D    xor        eax,eax
 00596A3F    pop        edx
 00596A40    pop        ecx
 00596A41    pop        ecx
 00596A42    mov        dword ptr fs:[eax],edx
 00596A45    push       596A67
 00596A4A    lea        eax,[ebp-14]
 00596A4D    mov        edx,4
 00596A52    call       @LStrArrayClr
 00596A57    lea        eax,[ebp-4]
 00596A5A    call       @LStrClr
 00596A5F    ret
<00596A60    jmp        @HandleFinally
<00596A65    jmp        00596A4A
 00596A67    pop        edi
 00596A68    pop        esi
 00596A69    pop        ebx
 00596A6A    mov        esp,ebp
 00596A6C    pop        ebp
 00596A6D    ret
*}
//end;

//00596A90
procedure TRavePreviewForm.ZoomEditExit;
begin
{*
 00596A90    push       ebp
 00596A91    mov        ebp,esp
 00596A93    add        esp,0FFFFFFF0
 00596A96    push       ebx
 00596A97    xor        ecx,ecx
 00596A99    mov        dword ptr [ebp-10],ecx
 00596A9C    mov        ebx,eax
 00596A9E    xor        eax,eax
 00596AA0    push       ebp
 00596AA1    push       596B09
 00596AA6    push       dword ptr fs:[eax]
 00596AA9    mov        dword ptr fs:[eax],esp
 00596AAC    lea        edx,[ebp-10]
 00596AAF    mov        eax,dword ptr [ebx+3D4]; TRavePreviewForm.ZoomEdit:TEdit
 00596AB5    call       TControl.GetText
 00596ABA    mov        eax,dword ptr [ebp-10]
 00596ABD    lea        edx,[ebp-0C]
 00596AC0    call       @ValExt
 00596AC5    fstp       qword ptr [ebp-8]
 00596AC8    wait
 00596AC9    cmp        dword ptr [ebp-0C],0
>00596ACD    jne        00596AF3
 00596ACF    mov        eax,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596AD5    call       TRvRenderPreview.GetZoomFactor
 00596ADA    fcomp      qword ptr [ebp-8]
 00596ADD    fnstsw     al
 00596ADF    sahf
>00596AE0    je         00596AF3
 00596AE2    push       dword ptr [ebp-4]
 00596AE5    push       dword ptr [ebp-8]
 00596AE8    mov        eax,dword ptr [ebx+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596AEE    call       TRvRenderPreview.SetZoomFactor
 00596AF3    xor        eax,eax
 00596AF5    pop        edx
 00596AF6    pop        ecx
 00596AF7    pop        ecx
 00596AF8    mov        dword ptr fs:[eax],edx
 00596AFB    push       596B10
 00596B00    lea        eax,[ebp-10]
 00596B03    call       @LStrClr
 00596B08    ret
<00596B09    jmp        @HandleFinally
<00596B0E    jmp        00596B00
 00596B10    pop        ebx
 00596B11    mov        esp,ebp
 00596B13    pop        ebp
 00596B14    ret
*}
end;

//00596B18
procedure TRavePreviewForm.PageEditExit;
begin
{*
 00596B18    push       ebp
 00596B19    mov        ebp,esp
 00596B1B    add        esp,0FFFFFFF8
 00596B1E    push       esi
 00596B1F    push       edi
 00596B20    xor        ecx,ecx
 00596B22    mov        dword ptr [ebp-8],ecx
 00596B25    mov        esi,eax
 00596B27    xor        eax,eax
 00596B29    push       ebp
 00596B2A    push       596B8A
 00596B2F    push       dword ptr fs:[eax]
 00596B32    mov        dword ptr fs:[eax],esp
 00596B35    lea        edx,[ebp-8]
 00596B38    mov        eax,dword ptr [esi+3D8]; TRavePreviewForm.PageEdit:TEdit
 00596B3E    call       TControl.GetText
 00596B43    mov        eax,dword ptr [ebp-8]
 00596B46    lea        edx,[ebp-4]
 00596B49    call       @ValLong
 00596B4E    mov        edi,eax
 00596B50    cmp        dword ptr [ebp-4],0
>00596B54    jne        00596B74
 00596B56    mov        eax,dword ptr [esi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596B5C    cmp        edi,dword ptr [eax+108]; TRvRenderPreview.?f108:dword
>00596B62    je         00596B74
 00596B64    mov        edx,edi
 00596B66    mov        eax,dword ptr [esi+41C]; TRavePreviewForm.?f41C:TRvRenderPreview
 00596B6C    mov        ecx,dword ptr [eax]
 00596B6E    call       dword ptr [ecx+0AC]; TRvRenderPreview.sub_0059387C
 00596B74    xor        eax,eax
 00596B76    pop        edx
 00596B77    pop        ecx
 00596B78    pop        ecx
 00596B79    mov        dword ptr fs:[eax],edx
 00596B7C    push       596B91
 00596B81    lea        eax,[ebp-8]
 00596B84    call       @LStrClr
 00596B89    ret
<00596B8A    jmp        @HandleFinally
<00596B8F    jmp        00596B81
 00596B91    pop        edi
 00596B92    pop        esi
 00596B93    pop        ecx
 00596B94    pop        ecx
 00596B95    pop        ebp
 00596B96    ret
*}
end;

//00596B98
//procedure TRavePreviewForm.PageEditKeyPress(?:?; ?:?);
//begin
{*
 00596B98    push       ebp
 00596B99    mov        ebp,esp
 00596B9B    push       0
 00596B9D    push       ebx
 00596B9E    push       esi
 00596B9F    mov        esi,ecx
 00596BA1    mov        ebx,edx
 00596BA3    xor        edx,edx
 00596BA5    push       ebp
 00596BA6    push       596C19
 00596BAB    push       dword ptr fs:[edx]
 00596BAE    mov        dword ptr fs:[edx],esp
 00596BB1    cmp        byte ptr [esi],2E
>00596BB4    jne        00596BBB
 00596BB6    mov        byte ptr [esi],0
>00596BB9    jmp        00596C03
 00596BBB    cmp        byte ptr [esi],0D
>00596BBE    jne        00596C03
 00596BC0    mov        edx,ebx
 00596BC2    call       TRavePreviewForm.PageEditExit
 00596BC7    mov        eax,ebx
 00596BC9    mov        edx,dword ptr ds:[4507E8]; TEdit
 00596BCF    call       @AsClass
 00596BD4    mov        ebx,eax
 00596BD6    xor        edx,edx
 00596BD8    mov        eax,ebx
 00596BDA    mov        ecx,dword ptr [eax]
 00596BDC    call       dword ptr [ecx+0DC]; TCustomEdit.SetSelStart
 00596BE2    lea        edx,[ebp-4]
 00596BE5    mov        eax,ebx
 00596BE7    call       TControl.GetText
 00596BEC    mov        eax,dword ptr [ebp-4]
 00596BEF    call       @LStrLen
 00596BF4    mov        edx,eax
 00596BF6    mov        eax,ebx
 00596BF8    mov        ecx,dword ptr [eax]
 00596BFA    call       dword ptr [ecx+0D8]; TCustomEdit.SetSelLength
 00596C00    mov        byte ptr [esi],0
 00596C03    xor        eax,eax
 00596C05    pop        edx
 00596C06    pop        ecx
 00596C07    pop        ecx
 00596C08    mov        dword ptr fs:[eax],edx
 00596C0B    push       596C20
 00596C10    lea        eax,[ebp-4]
 00596C13    call       @LStrClr
 00596C18    ret
<00596C19    jmp        @HandleFinally
<00596C1E    jmp        00596C10
 00596C20    pop        esi
 00596C21    pop        ebx
 00596C22    pop        ecx
 00596C23    pop        ebp
 00596C24    ret
*}
//end;

//00596C28
//procedure sub_00596C28(?:TRavePreviewForm);
//begin
{*
 00596C28    push       ebp
 00596C29    mov        ebp,esp
 00596C2B    push       0
 00596C2D    push       0
 00596C2F    push       0
 00596C31    push       ebx
 00596C32    push       esi
 00596C33    mov        ebx,eax
 00596C35    xor        eax,eax
 00596C37    push       ebp
 00596C38    push       596CBB
 00596C3D    push       dword ptr fs:[eax]
 00596C40    mov        dword ptr fs:[eax],esp
 00596C43    mov        esi,dword ptr ds:[61B830]
 00596C49    mov        esi,dword ptr [esi]
 00596C4B    lea        edx,[ebp-4]
 00596C4E    mov        eax,596CD0; 'Rave Snapshot Files (*.ndr)|*.ndr'
 00596C53    call       esi
 00596C55    mov        edx,dword ptr [ebp-4]
 00596C58    mov        eax,dword ptr [ebx+3B8]; TRavePreviewForm.dlogSave:TSaveDialog
 00596C5E    add        eax,60; TSaveDialog.?f60:String
 00596C61    call       @LStrAsg
 00596C66    lea        eax,[ebp-8]
 00596C69    call       0058C8D4
 00596C6E    cmp        dword ptr [ebp-8],0
>00596C72    je         00596CA0
 00596C74    mov        eax,dword ptr [ebx+3B8]; TRavePreviewForm.dlogSave:TSaveDialog
 00596C7A    push       dword ptr [eax+60]; TSaveDialog.?f60:String
 00596C7D    push       596CFC; '|'
 00596C82    lea        eax,[ebp-0C]
 00596C85    call       0058C8D4
 00596C8A    push       dword ptr [ebp-0C]
 00596C8D    mov        eax,dword ptr [ebx+3B8]; TRavePreviewForm.dlogSave:TSaveDialog
 00596C93    add        eax,60; TSaveDialog.?f60:String
 00596C96    mov        edx,3
 00596C9B    call       @LStrCatN
 00596CA0    xor        eax,eax
 00596CA2    pop        edx
 00596CA3    pop        ecx
 00596CA4    pop        ecx
 00596CA5    mov        dword ptr fs:[eax],edx
 00596CA8    push       596CC2
 00596CAD    lea        eax,[ebp-0C]
 00596CB0    mov        edx,3
 00596CB5    call       @LStrArrayClr
 00596CBA    ret
<00596CBB    jmp        @HandleFinally
<00596CC0    jmp        00596CAD
 00596CC2    pop        esi
 00596CC3    pop        ebx
 00596CC4    mov        esp,ebp
 00596CC6    pop        ebp
 00596CC7    ret
*}
//end;

//00596D00
procedure TRavePreviewForm.PreviewTimerTimer;
begin
{*
 00596D00    xor        edx,edx
 00596D02    mov        eax,dword ptr [eax+3F4]; TRavePreviewForm.PreviewTimer:TTimer
 00596D08    call       TTimer.SetEnabled
 00596D0D    ret
*}
end;

end.