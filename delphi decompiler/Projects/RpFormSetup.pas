{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpFormSetup;

interface

uses
  Classes, Windows, Graphics, Forms, StdCtrls, Buttons, Dialogs, ComCtrls, RpRenderPrinter;

type
  TRPSetupForm = class(TForm)
    DestGB:TGroupBox;//f2F8
    PrinterRB:TRadioButton;//f2FC
    PreviewRB:TRadioButton;//f300
    FileRB:TRadioButton;//f304
    editFileName:TEdit;//f308
    bbtnOK:TButton;//f30C
    CancelBB:TButton;//f310
    SetupBB:TButton;//f314
    RangeGB:TGroupBox;//f318
    FileNameSB:TSpeedButton;//f31C
    dlogSave:TSaveDialog;//f320
    AllRB:TRadioButton;//f324
    SelectionRB:TRadioButton;//f328
    PagesRB:TRadioButton;//f32C
    FromLabel:TLabel;//f330
    FromED:TEdit;//f334
    ToLabel:TLabel;//f338
    ToED:TEdit;//f33C
    SelectionLabel:TLabel;//f340
    SelectionED:TEdit;//f344
    GroupBox1:TGroupBox;//f348
    PrinterLabel:TLabel;//f34C
    GroupBox2:TGroupBox;//f350
    CopiesED:TEdit;//f354
    CopiesLabel:TLabel;//f358
    CollateCK:TCheckBox;//f35C
    DuplexCK:TCheckBox;//f360
    PageControl1:TPageControl;//f364
    TabSheet1:TTabSheet;//f368
    TabSheet2:TTabSheet;//f36C
    cboxFormat:TComboBox;//f370
    Label1:TLabel;//f374
    procedure SetupBBClick;
    procedure FileNameSBClick;
    procedure FormCreate;
    //procedure PagesRBClick(?:?);
    //procedure SelectionRBClick(?:?);
    procedure AllRBClick;
    //procedure PrinterRBClick(?:?);
    procedure FileRBClick;
    procedure FormShow;
    procedure bbtnOKClick;
    procedure editFileNameChange;
    //procedure FormKeyPress(?:?; ?:?);
    //procedure SelectionEDKeyPress(?:?; ?:?);
    //procedure cboxFormatChange(?:?);
  public
    f378:dword;//f378
    f37C:TRvRenderPrinter;//f37C
    f380:byte;//f380
  end;

implementation

{$R *.DFM}

//00593E50
//procedure sub_00593E50(?:TRPSetupForm);
//begin
{*
 00593E50    push       ebp
 00593E51    mov        ebp,esp
 00593E53    mov        ecx,5
 00593E58    push       0
 00593E5A    push       0
 00593E5C    dec        ecx
<00593E5D    jne        00593E58
 00593E5F    push       ecx
 00593E60    push       ebx
 00593E61    push       esi
 00593E62    mov        ebx,eax
 00593E64    xor        eax,eax
 00593E66    push       ebp
 00593E67    push       593F79
 00593E6C    push       dword ptr fs:[eax]
 00593E6F    mov        dword ptr fs:[eax],esp
 00593E72    call       005807DC
 00593E77    test       eax,eax
>00593E79    je         00593E8E
 00593E7B    call       005807DC
 00593E80    mov        edx,dword ptr [eax]
 00593E82    call       dword ptr [edx+1C]
 00593E85    mov        edx,dword ptr [eax]
 00593E87    call       dword ptr [edx+14]
 00593E8A    test       eax,eax
>00593E8C    jne        00593EB3
 00593E8E    mov        esi,dword ptr ds:[61B830]
 00593E94    mov        esi,dword ptr [esi]
 00593E96    lea        edx,[ebp-4]
 00593E99    mov        eax,593F90; 'No printers installed!'
 00593E9E    call       esi
 00593EA0    mov        edx,dword ptr [ebp-4]
 00593EA3    mov        eax,dword ptr [ebx+34C]; TRPSetupForm.PrinterLabel:TLabel
 00593EA9    call       TControl.SetText
>00593EAE    jmp        00593F51
 00593EB3    call       005807DC
 00593EB8    mov        dl,1
 00593EBA    call       0057EDB4
 00593EBF    call       005807DC
 00593EC4    lea        edx,[ebp-8]
 00593EC7    call       0057EFC4
 00593ECC    cmp        dword ptr [ebp-8],0
>00593ED0    jne        00593EEF
 00593ED2    call       005807DC
 00593ED7    lea        edx,[ebp-0C]
 00593EDA    call       0057EFE8
 00593EDF    mov        edx,dword ptr [ebp-0C]
 00593EE2    mov        eax,dword ptr [ebx+34C]; TRPSetupForm.PrinterLabel:TLabel
 00593EE8    call       TControl.SetText
>00593EED    jmp        00593F51
 00593EEF    lea        eax,[ebp-14]
 00593EF2    push       eax
 00593EF3    call       005807DC
 00593EF8    lea        edx,[ebp-28]
 00593EFB    call       0057EFE8
 00593F00    mov        eax,dword ptr [ebp-28]
 00593F03    mov        dword ptr [ebp-24],eax
 00593F06    mov        byte ptr [ebp-20],0B
 00593F0A    call       005807DC
 00593F0F    lea        edx,[ebp-2C]
 00593F12    call       0057EFC4
 00593F17    mov        eax,dword ptr [ebp-2C]
 00593F1A    mov        dword ptr [ebp-1C],eax
 00593F1D    mov        byte ptr [ebp-18],0B
 00593F21    lea        edx,[ebp-24]
 00593F24    mov        ecx,1
 00593F29    mov        eax,593FB0; '%s on %s'
 00593F2E    call       Format
 00593F33    mov        eax,dword ptr [ebp-14]
 00593F36    mov        esi,dword ptr ds:[61B830]
 00593F3C    mov        esi,dword ptr [esi]
 00593F3E    lea        edx,[ebp-10]
 00593F41    call       esi
 00593F43    mov        edx,dword ptr [ebp-10]
 00593F46    mov        eax,dword ptr [ebx+34C]; TRPSetupForm.PrinterLabel:TLabel
 00593F4C    call       TControl.SetText
 00593F51    xor        eax,eax
 00593F53    pop        edx
 00593F54    pop        ecx
 00593F55    pop        ecx
 00593F56    mov        dword ptr fs:[eax],edx
 00593F59    push       593F80
 00593F5E    lea        eax,[ebp-2C]
 00593F61    mov        edx,2
 00593F66    call       @LStrArrayClr
 00593F6B    lea        eax,[ebp-14]
 00593F6E    mov        edx,5
 00593F73    call       @LStrArrayClr
 00593F78    ret
<00593F79    jmp        @HandleFinally
<00593F7E    jmp        00593F5E
 00593F80    pop        esi
 00593F81    pop        ebx
 00593F82    mov        esp,ebp
 00593F84    pop        ebp
 00593F85    ret
*}
//end;

//00593FBC
procedure TRPSetupForm.SetupBBClick;
begin
{*
 00593FBC    push       ebx
 00593FBD    mov        ebx,eax
 00593FBF    call       005807DC
 00593FC4    test       eax,eax
>00593FC6    je         00593FD9
 00593FC8    call       005807DC
 00593FCD    call       0057E978
 00593FD2    mov        eax,ebx
 00593FD4    call       00593E50
 00593FD9    pop        ebx
 00593FDA    ret
*}
end;

//00593FDC
procedure TRPSetupForm.FileNameSBClick;
begin
{*
 00593FDC    push       ebp
 00593FDD    mov        ebp,esp
 00593FDF    push       0
 00593FE1    push       ebx
 00593FE2    mov        ebx,eax
 00593FE4    xor        eax,eax
 00593FE6    push       ebp
 00593FE7    push       59404F
 00593FEC    push       dword ptr fs:[eax]
 00593FEF    mov        dword ptr fs:[eax],esp
 00593FF2    mov        eax,dword ptr [ebx+320]; TRPSetupForm.dlogSave:TSaveDialog
 00593FF8    mov        edx,dword ptr [eax]
 00593FFA    call       dword ptr [edx+3C]; TSaveDialog.Execute
 00593FFD    test       al,al
>00593FFF    je         00594039
 00594001    lea        edx,[ebp-4]
 00594004    mov        eax,dword ptr [ebx+320]; TRPSetupForm.dlogSave:TSaveDialog
 0059400A    call       TOpenDialog.GetFileName
 0059400F    mov        edx,dword ptr [ebp-4]
 00594012    mov        eax,dword ptr [ebx+308]; TRPSetupForm.editFileName:TEdit
 00594018    call       TControl.SetText
 0059401D    mov        eax,dword ptr [ebx+320]; TRPSetupForm.dlogSave:TSaveDialog
 00594023    call       TOpenDialog.GetFilterIndex
 00594028    mov        edx,eax
 0059402A    dec        edx
 0059402B    mov        eax,dword ptr [ebx+370]; TRPSetupForm.cboxFormat:TComboBox
 00594031    mov        ecx,dword ptr [eax]
 00594033    call       dword ptr [ecx+0D0]; TCustomCombo.SetItemIndex
 00594039    xor        eax,eax
 0059403B    pop        edx
 0059403C    pop        ecx
 0059403D    pop        ecx
 0059403E    mov        dword ptr fs:[eax],edx
 00594041    push       594056
 00594046    lea        eax,[ebp-4]
 00594049    call       @LStrClr
 0059404E    ret
<0059404F    jmp        @HandleFinally
<00594054    jmp        00594046
 00594056    pop        ebx
 00594057    pop        ecx
 00594058    pop        ebp
 00594059    ret
*}
end;

//0059405C
procedure TRPSetupForm.FormCreate;
begin
{*
 0059405C    push       ebx
 0059405D    mov        ebx,eax
 0059405F    mov        eax,dword ptr [ebx+330]; TRPSetupForm.FromLabel:TLabel
 00594065    call       TControl.Hide
 0059406A    mov        eax,dword ptr [ebx+334]; TRPSetupForm.FromED:TEdit
 00594070    call       TControl.Hide
 00594075    mov        eax,dword ptr [ebx+338]; TRPSetupForm.ToLabel:TLabel
 0059407B    call       TControl.Hide
 00594080    mov        eax,dword ptr [ebx+33C]; TRPSetupForm.ToED:TEdit
 00594086    call       TControl.Hide
 0059408B    xor        edx,edx
 0059408D    mov        eax,dword ptr [ebx+364]; TRPSetupForm.PageControl1:TPageControl
 00594093    call       TPageControl.SetActivePage
 00594098    xor        edx,edx
 0059409A    mov        eax,dword ptr [ebx+340]; TRPSetupForm.SelectionLabel:TLabel
 005940A0    mov        ecx,dword ptr [eax]
 005940A2    call       dword ptr [ecx+64]; TControl.SetEnabled
 005940A5    xor        edx,edx
 005940A7    mov        eax,dword ptr [ebx+344]; TRPSetupForm.SelectionED:TEdit
 005940AD    mov        ecx,dword ptr [eax]
 005940AF    call       dword ptr [ecx+64]; TControl.SetEnabled
 005940B2    xor        edx,edx
 005940B4    mov        eax,dword ptr [ebx+308]; TRPSetupForm.editFileName:TEdit
 005940BA    mov        ecx,dword ptr [eax]
 005940BC    call       dword ptr [ecx+64]; TControl.SetEnabled
 005940BF    xor        edx,edx
 005940C1    mov        eax,dword ptr [ebx+31C]; TRPSetupForm.FileNameSB:TSpeedButton
 005940C7    mov        ecx,dword ptr [eax]
 005940C9    call       dword ptr [ecx+64]; TControl.SetEnabled
 005940CC    pop        ebx
 005940CD    ret
*}
end;

//005940D0
//procedure TRPSetupForm.PagesRBClick(?:?);
//begin
{*
 005940D0    push       ebx
 005940D1    push       esi
 005940D2    mov        esi,edx
 005940D4    mov        ebx,eax
 005940D6    mov        eax,esi
 005940D8    mov        edx,dword ptr ds:[453500]; TRadioButton
 005940DE    call       @AsClass
 005940E3    mov        esi,eax
 005940E5    mov        eax,esi
 005940E7    mov        edx,dword ptr [eax]
 005940E9    call       dword ptr [edx+0C8]; TRadioButton.GetChecked
 005940EF    test       al,al
>005940F1    je         00594169
 005940F3    mov        eax,dword ptr [ebx+340]; TRPSetupForm.SelectionLabel:TLabel
 005940F9    call       TControl.Hide
 005940FE    mov        eax,dword ptr [ebx+344]; TRPSetupForm.SelectionED:TEdit
 00594104    call       TControl.Hide
 00594109    mov        dl,1
 0059410B    mov        eax,dword ptr [ebx+330]; TRPSetupForm.FromLabel:TLabel
 00594111    mov        ecx,dword ptr [eax]
 00594113    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594116    mov        eax,dword ptr [ebx+330]; TRPSetupForm.FromLabel:TLabel
 0059411C    call       TControl.Show
 00594121    mov        dl,1
 00594123    mov        eax,dword ptr [ebx+334]; TRPSetupForm.FromED:TEdit
 00594129    mov        ecx,dword ptr [eax]
 0059412B    call       dword ptr [ecx+64]; TControl.SetEnabled
 0059412E    mov        eax,dword ptr [ebx+334]; TRPSetupForm.FromED:TEdit
 00594134    call       TControl.Show
 00594139    mov        dl,1
 0059413B    mov        eax,dword ptr [ebx+338]; TRPSetupForm.ToLabel:TLabel
 00594141    mov        ecx,dword ptr [eax]
 00594143    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594146    mov        eax,dword ptr [ebx+338]; TRPSetupForm.ToLabel:TLabel
 0059414C    call       TControl.Show
 00594151    mov        dl,1
 00594153    mov        eax,dword ptr [ebx+33C]; TRPSetupForm.ToED:TEdit
 00594159    mov        ecx,dword ptr [eax]
 0059415B    call       dword ptr [ecx+64]; TControl.SetEnabled
 0059415E    mov        eax,dword ptr [ebx+33C]; TRPSetupForm.ToED:TEdit
 00594164    call       TControl.Show
 00594169    pop        esi
 0059416A    pop        ebx
 0059416B    ret
*}
//end;

//0059416C
//procedure TRPSetupForm.SelectionRBClick(?:?);
//begin
{*
 0059416C    push       ebx
 0059416D    push       esi
 0059416E    mov        esi,edx
 00594170    mov        ebx,eax
 00594172    mov        eax,esi
 00594174    mov        edx,dword ptr ds:[453500]; TRadioButton
 0059417A    call       @AsClass
 0059417F    mov        esi,eax
 00594181    mov        eax,esi
 00594183    mov        edx,dword ptr [eax]
 00594185    call       dword ptr [edx+0C8]; TRadioButton.GetChecked
 0059418B    test       al,al
>0059418D    je         005941EB
 0059418F    mov        eax,dword ptr [ebx+330]; TRPSetupForm.FromLabel:TLabel
 00594195    call       TControl.Hide
 0059419A    mov        eax,dword ptr [ebx+334]; TRPSetupForm.FromED:TEdit
 005941A0    call       TControl.Hide
 005941A5    mov        eax,dword ptr [ebx+338]; TRPSetupForm.ToLabel:TLabel
 005941AB    call       TControl.Hide
 005941B0    mov        eax,dword ptr [ebx+33C]; TRPSetupForm.ToED:TEdit
 005941B6    call       TControl.Hide
 005941BB    mov        dl,1
 005941BD    mov        eax,dword ptr [ebx+340]; TRPSetupForm.SelectionLabel:TLabel
 005941C3    mov        ecx,dword ptr [eax]
 005941C5    call       dword ptr [ecx+64]; TControl.SetEnabled
 005941C8    mov        eax,dword ptr [ebx+340]; TRPSetupForm.SelectionLabel:TLabel
 005941CE    call       TControl.Show
 005941D3    mov        dl,1
 005941D5    mov        eax,dword ptr [ebx+344]; TRPSetupForm.SelectionED:TEdit
 005941DB    mov        ecx,dword ptr [eax]
 005941DD    call       dword ptr [ecx+64]; TControl.SetEnabled
 005941E0    mov        eax,dword ptr [ebx+344]; TRPSetupForm.SelectionED:TEdit
 005941E6    call       TControl.Show
 005941EB    pop        esi
 005941EC    pop        ebx
 005941ED    ret
*}
//end;

//005941F0
procedure TRPSetupForm.AllRBClick;
begin
{*
 005941F0    push       ebx
 005941F1    mov        ebx,eax
 005941F3    xor        edx,edx
 005941F5    mov        eax,dword ptr [ebx+340]; TRPSetupForm.SelectionLabel:TLabel
 005941FB    mov        ecx,dword ptr [eax]
 005941FD    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594200    xor        edx,edx
 00594202    mov        eax,dword ptr [ebx+344]; TRPSetupForm.SelectionED:TEdit
 00594208    mov        ecx,dword ptr [eax]
 0059420A    call       dword ptr [ecx+64]; TControl.SetEnabled
 0059420D    xor        edx,edx
 0059420F    mov        eax,dword ptr [ebx+330]; TRPSetupForm.FromLabel:TLabel
 00594215    mov        ecx,dword ptr [eax]
 00594217    call       dword ptr [ecx+64]; TControl.SetEnabled
 0059421A    xor        edx,edx
 0059421C    mov        eax,dword ptr [ebx+334]; TRPSetupForm.FromED:TEdit
 00594222    mov        ecx,dword ptr [eax]
 00594224    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594227    xor        edx,edx
 00594229    mov        eax,dword ptr [ebx+338]; TRPSetupForm.ToLabel:TLabel
 0059422F    mov        ecx,dword ptr [eax]
 00594231    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594234    xor        edx,edx
 00594236    mov        eax,dword ptr [ebx+33C]; TRPSetupForm.ToED:TEdit
 0059423C    mov        ecx,dword ptr [eax]
 0059423E    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594241    pop        ebx
 00594242    ret
*}
end;

//00594244
//procedure TRPSetupForm.PrinterRBClick(?:?);
//begin
{*
 00594244    push       ebx
 00594245    push       esi
 00594246    mov        esi,edx
 00594248    mov        ebx,eax
 0059424A    xor        edx,edx
 0059424C    mov        eax,dword ptr [ebx+308]; TRPSetupForm.editFileName:TEdit
 00594252    mov        ecx,dword ptr [eax]
 00594254    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594257    xor        edx,edx
 00594259    mov        eax,dword ptr [ebx+31C]; TRPSetupForm.FileNameSB:TSpeedButton
 0059425F    mov        ecx,dword ptr [eax]
 00594261    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594264    xor        edx,edx
 00594266    mov        eax,dword ptr [ebx+370]; TRPSetupForm.cboxFormat:TComboBox
 0059426C    mov        ecx,dword ptr [eax]
 0059426E    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594271    mov        dl,1
 00594273    mov        eax,dword ptr [ebx+30C]; TRPSetupForm.bbtnOK:TButton
 00594279    mov        ecx,dword ptr [eax]
 0059427B    call       dword ptr [ecx+64]; TControl.SetEnabled
 0059427E    mov        dl,1
 00594280    mov        eax,dword ptr [ebx+314]; TRPSetupForm.SetupBB:TButton
 00594286    mov        ecx,dword ptr [eax]
 00594288    call       dword ptr [ecx+64]; TControl.SetEnabled
 0059428B    cmp        esi,dword ptr [ebx+2FC]; TRPSetupForm.PrinterRB:TRadioButton
 00594291    sete       dl
 00594294    mov        eax,dword ptr [ebx+354]; TRPSetupForm.CopiesED:TEdit
 0059429A    mov        ecx,dword ptr [eax]
 0059429C    call       dword ptr [ecx+64]; TControl.SetEnabled
 0059429F    cmp        esi,dword ptr [ebx+2FC]; TRPSetupForm.PrinterRB:TRadioButton
 005942A5    sete       dl
 005942A8    mov        eax,dword ptr [ebx+35C]; TRPSetupForm.CollateCK:TCheckBox
 005942AE    mov        ecx,dword ptr [eax]
 005942B0    call       dword ptr [ecx+64]; TControl.SetEnabled
 005942B3    cmp        esi,dword ptr [ebx+2FC]; TRPSetupForm.PrinterRB:TRadioButton
 005942B9    sete       dl
 005942BC    mov        eax,dword ptr [ebx+360]; TRPSetupForm.DuplexCK:TCheckBox
 005942C2    mov        ecx,dword ptr [eax]
 005942C4    call       dword ptr [ecx+64]; TControl.SetEnabled
 005942C7    pop        esi
 005942C8    pop        ebx
 005942C9    ret
*}
//end;

//005942CC
procedure TRPSetupForm.FileRBClick;
begin
{*
 005942CC    push       ebp
 005942CD    mov        ebp,esp
 005942CF    push       0
 005942D1    push       0
 005942D3    push       ebx
 005942D4    mov        ebx,eax
 005942D6    xor        eax,eax
 005942D8    push       ebp
 005942D9    push       594361
 005942DE    push       dword ptr fs:[eax]
 005942E1    mov        dword ptr fs:[eax],esp
 005942E4    mov        dl,1
 005942E6    mov        eax,dword ptr [ebx+308]; TRPSetupForm.editFileName:TEdit
 005942EC    mov        ecx,dword ptr [eax]
 005942EE    call       dword ptr [ecx+64]; TControl.SetEnabled
 005942F1    mov        dl,1
 005942F3    mov        eax,dword ptr [ebx+31C]; TRPSetupForm.FileNameSB:TSpeedButton
 005942F9    mov        ecx,dword ptr [eax]
 005942FB    call       dword ptr [ecx+64]; TControl.SetEnabled
 005942FE    mov        dl,1
 00594300    mov        eax,dword ptr [ebx+370]; TRPSetupForm.cboxFormat:TComboBox
 00594306    mov        ecx,dword ptr [eax]
 00594308    call       dword ptr [ecx+64]; TControl.SetEnabled
 0059430B    xor        edx,edx
 0059430D    mov        eax,dword ptr [ebx+314]; TRPSetupForm.SetupBB:TButton
 00594313    mov        ecx,dword ptr [eax]
 00594315    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594318    lea        edx,[ebp-8]
 0059431B    mov        eax,dword ptr [ebx+308]; TRPSetupForm.editFileName:TEdit
 00594321    call       TControl.GetText
 00594326    mov        eax,dword ptr [ebp-8]
 00594329    lea        edx,[ebp-4]
 0059432C    call       Trim
 00594331    cmp        dword ptr [ebp-4],0
 00594335    setne      dl
 00594338    mov        eax,dword ptr [ebx+30C]; TRPSetupForm.bbtnOK:TButton
 0059433E    mov        ecx,dword ptr [eax]
 00594340    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594343    xor        eax,eax
 00594345    pop        edx
 00594346    pop        ecx
 00594347    pop        ecx
 00594348    mov        dword ptr fs:[eax],edx
 0059434B    push       594368
 00594350    lea        eax,[ebp-8]
 00594353    call       @LStrClr
 00594358    lea        eax,[ebp-4]
 0059435B    call       @LStrClr
 00594360    ret
<00594361    jmp        @HandleFinally
<00594366    jmp        00594350
 00594368    pop        ebx
 00594369    pop        ecx
 0059436A    pop        ecx
 0059436B    pop        ebp
 0059436C    ret
*}
end;

//00594370
procedure TRPSetupForm.FormShow;
begin
{*
 00594370    push       ebp
 00594371    mov        ebp,esp
 00594373    xor        ecx,ecx
 00594375    push       ecx
 00594376    push       ecx
 00594377    push       ecx
 00594378    push       ecx
 00594379    push       ecx
 0059437A    push       ebx
 0059437B    push       esi
 0059437C    mov        ebx,eax
 0059437E    xor        eax,eax
 00594380    push       ebp
 00594381    push       594631
 00594386    push       dword ptr fs:[eax]
 00594389    mov        dword ptr fs:[eax],esp
 0059438C    mov        eax,ebx
 0059438E    call       00594A24
 00594393    mov        esi,dword ptr [ebx+378]; TRPSetupForm.?f378:dword
 00594399    mov        eax,ebx
 0059439B    call       00593E50
 005943A0    cmp        byte ptr [ebx+380],0; TRPSetupForm.?f380:byte
>005943A7    je         00594421
 005943A9    mov        edx,dword ptr [ebx+36C]; TRPSetupForm.TabSheet2:TTabSheet
 005943AF    mov        eax,dword ptr [ebx+364]; TRPSetupForm.PageControl1:TPageControl
 005943B5    call       TPageControl.SetActivePage
 005943BA    mov        edx,594648; '1'
 005943BF    mov        eax,dword ptr [ebx+334]; TRPSetupForm.FromED:TEdit
 005943C5    call       TControl.SetText
 005943CA    mov        eax,dword ptr [ebx+37C]; TRPSetupForm.?f37C:TRvRenderPrinter
 005943D0    call       0059187C
 005943D5    lea        edx,[ebp-4]
 005943D8    call       IntToStr
 005943DD    mov        edx,dword ptr [ebp-4]
 005943E0    mov        eax,dword ptr [ebx+33C]; TRPSetupForm.ToED:TEdit
 005943E6    call       TControl.SetText
 005943EB    mov        eax,dword ptr [ebx+37C]; TRPSetupForm.?f37C:TRvRenderPrinter
 005943F1    call       0059187C
 005943F6    lea        edx,[ebp-0C]
 005943F9    call       IntToStr
 005943FE    mov        ecx,dword ptr [ebp-0C]
 00594401    lea        eax,[ebp-8]
 00594404    mov        edx,594654; '1-'
 00594409    call       @LStrCat3
 0059440E    mov        edx,dword ptr [ebp-8]
 00594411    mov        eax,dword ptr [ebx+344]; TRPSetupForm.SelectionED:TEdit
 00594417    call       TControl.SetText
>0059441C    jmp        0059452B
 00594421    mov        edx,dword ptr [ebx+368]; TRPSetupForm.TabSheet1:TTabSheet
 00594427    mov        eax,dword ptr [ebx+364]; TRPSetupForm.PageControl1:TPageControl
 0059442D    call       TPageControl.SetActivePage
 00594432    mov        eax,dword ptr [ebx+370]; TRPSetupForm.cboxFormat:TComboBox
 00594438    mov        edx,dword ptr [eax]
 0059443A    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 00594440    test       eax,eax
>00594442    jge        00594454
 00594444    xor        edx,edx
 00594446    mov        eax,dword ptr [ebx+370]; TRPSetupForm.cboxFormat:TComboBox
 0059444C    mov        ecx,dword ptr [eax]
 0059444E    call       dword ptr [ecx+0D0]; TCustomCombo.SetItemIndex
 00594454    call       005807DC
 00594459    test       eax,eax
>0059445B    je         0059446B
 0059445D    call       005807DC
 00594462    call       0058068C
 00594467    test       al,al
>00594469    je         005944AF
 0059446B    xor        edx,edx
 0059446D    mov        eax,dword ptr [ebx+2FC]; TRPSetupForm.PrinterRB:TRadioButton
 00594473    mov        ecx,dword ptr [eax]
 00594475    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594478    xor        edx,edx
 0059447A    mov        eax,dword ptr [ebx+304]; TRPSetupForm.FileRB:TRadioButton
 00594480    mov        ecx,dword ptr [eax]
 00594482    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594485    test       byte ptr [esi+49],10
>00594489    jne        0059449D
 0059448B    xor        edx,edx
 0059448D    mov        eax,dword ptr [ebx+300]; TRPSetupForm.PreviewRB:TRadioButton
 00594493    mov        ecx,dword ptr [eax]
 00594495    call       dword ptr [ecx+64]; TControl.SetEnabled
>00594498    jmp        0059452B
 0059449D    mov        dl,1
 0059449F    mov        eax,dword ptr [ebx+300]; TRPSetupForm.PreviewRB:TRadioButton
 005944A5    mov        ecx,dword ptr [eax]
 005944A7    call       dword ptr [ecx+0CC]; TRadioButton.SetChecked
>005944AD    jmp        0059452B
 005944AF    test       byte ptr [esi+49],20
>005944B3    jne        005944C2
 005944B5    xor        edx,edx
 005944B7    mov        eax,dword ptr [ebx+2FC]; TRPSetupForm.PrinterRB:TRadioButton
 005944BD    mov        ecx,dword ptr [eax]
 005944BF    call       dword ptr [ecx+64]; TControl.SetEnabled
 005944C2    test       byte ptr [esi+49],10
>005944C6    jne        005944D5
 005944C8    xor        edx,edx
 005944CA    mov        eax,dword ptr [ebx+300]; TRPSetupForm.PreviewRB:TRadioButton
 005944D0    mov        ecx,dword ptr [eax]
 005944D2    call       dword ptr [ecx+64]; TControl.SetEnabled
 005944D5    test       byte ptr [esi+49],40
>005944D9    jne        005944E8
 005944DB    xor        edx,edx
 005944DD    mov        eax,dword ptr [ebx+304]; TRPSetupForm.FileRB:TRadioButton
 005944E3    mov        ecx,dword ptr [eax]
 005944E5    call       dword ptr [ecx+64]; TControl.SetEnabled
 005944E8    mov        al,byte ptr [esi+40]
 005944EB    sub        al,1
>005944ED    jb         00594509
>005944EF    je         005944F7
 005944F1    dec        al
>005944F3    je         0059451B
>005944F5    jmp        0059452B
 005944F7    mov        dl,1
 005944F9    mov        eax,dword ptr [ebx+2FC]; TRPSetupForm.PrinterRB:TRadioButton
 005944FF    mov        ecx,dword ptr [eax]
 00594501    call       dword ptr [ecx+0CC]; TRadioButton.SetChecked
>00594507    jmp        0059452B
 00594509    mov        dl,1
 0059450B    mov        eax,dword ptr [ebx+300]; TRPSetupForm.PreviewRB:TRadioButton
 00594511    mov        ecx,dword ptr [eax]
 00594513    call       dword ptr [ecx+0CC]; TRadioButton.SetChecked
>00594519    jmp        0059452B
 0059451B    mov        dl,1
 0059451D    mov        eax,dword ptr [ebx+304]; TRPSetupForm.FileRB:TRadioButton
 00594523    mov        ecx,dword ptr [eax]
 00594525    call       dword ptr [ecx+0CC]; TRadioButton.SetChecked
 0059452B    call       005807DC
 00594530    test       eax,eax
>00594532    je         00594542
 00594534    call       005807DC
 00594539    call       0058068C
 0059453E    test       al,al
>00594540    je         005945A1
 00594542    xor        edx,edx
 00594544    mov        eax,dword ptr [ebx+35C]; TRPSetupForm.CollateCK:TCheckBox
 0059454A    mov        ecx,dword ptr [eax]
 0059454C    call       dword ptr [ecx+64]; TControl.SetEnabled
 0059454F    xor        edx,edx
 00594551    mov        eax,dword ptr [ebx+354]; TRPSetupForm.CopiesED:TEdit
 00594557    mov        ecx,dword ptr [eax]
 00594559    call       dword ptr [ecx+64]; TControl.SetEnabled
 0059455C    xor        edx,edx
 0059455E    mov        eax,dword ptr [ebx+358]; TRPSetupForm.CopiesLabel:TLabel
 00594564    mov        ecx,dword ptr [eax]
 00594566    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594569    lea        edx,[ebp-10]
 0059456C    mov        eax,dword ptr [esi+54]
 0059456F    mov        eax,dword ptr [eax+4]
 00594572    call       IntToStr
 00594577    mov        edx,dword ptr [ebp-10]
 0059457A    mov        eax,dword ptr [ebx+354]; TRPSetupForm.CopiesED:TEdit
 00594580    call       TControl.SetText
 00594585    xor        edx,edx
 00594587    mov        eax,dword ptr [ebx+360]; TRPSetupForm.DuplexCK:TCheckBox
 0059458D    mov        ecx,dword ptr [eax]
 0059458F    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594592    xor        edx,edx
 00594594    mov        eax,dword ptr [ebx+314]; TRPSetupForm.SetupBB:TButton
 0059459A    mov        ecx,dword ptr [eax]
 0059459C    call       dword ptr [ecx+64]; TControl.SetEnabled
>0059459F    jmp        00594616
 005945A1    test       byte ptr [esi+49],4
>005945A5    jne        005945B4
 005945A7    xor        edx,edx
 005945A9    mov        eax,dword ptr [ebx+35C]; TRPSetupForm.CollateCK:TCheckBox
 005945AF    mov        ecx,dword ptr [eax]
 005945B1    call       dword ptr [ecx+64]; TControl.SetEnabled
 005945B4    test       byte ptr [esi+49],2
>005945B8    jne        005945D4
 005945BA    xor        edx,edx
 005945BC    mov        eax,dword ptr [ebx+354]; TRPSetupForm.CopiesED:TEdit
 005945C2    mov        ecx,dword ptr [eax]
 005945C4    call       dword ptr [ecx+64]; TControl.SetEnabled
 005945C7    xor        edx,edx
 005945C9    mov        eax,dword ptr [ebx+358]; TRPSetupForm.CopiesLabel:TLabel
 005945CF    mov        ecx,dword ptr [eax]
 005945D1    call       dword ptr [ecx+64]; TControl.SetEnabled
 005945D4    lea        edx,[ebp-14]
 005945D7    mov        eax,dword ptr [esi+54]
 005945DA    mov        eax,dword ptr [eax+4]
 005945DD    call       IntToStr
 005945E2    mov        edx,dword ptr [ebp-14]
 005945E5    mov        eax,dword ptr [ebx+354]; TRPSetupForm.CopiesED:TEdit
 005945EB    call       TControl.SetText
 005945F0    test       byte ptr [esi+49],8
>005945F4    jne        00594603
 005945F6    xor        edx,edx
 005945F8    mov        eax,dword ptr [ebx+360]; TRPSetupForm.DuplexCK:TCheckBox
 005945FE    mov        ecx,dword ptr [eax]
 00594600    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594603    test       byte ptr [esi+49],80
>00594607    jne        00594616
 00594609    xor        edx,edx
 0059460B    mov        eax,dword ptr [ebx+314]; TRPSetupForm.SetupBB:TButton
 00594611    mov        ecx,dword ptr [eax]
 00594613    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594616    xor        eax,eax
 00594618    pop        edx
 00594619    pop        ecx
 0059461A    pop        ecx
 0059461B    mov        dword ptr fs:[eax],edx
 0059461E    push       594638
 00594623    lea        eax,[ebp-14]
 00594626    mov        edx,5
 0059462B    call       @LStrArrayClr
 00594630    ret
<00594631    jmp        @HandleFinally
<00594636    jmp        00594623
 00594638    pop        esi
 00594639    pop        ebx
 0059463A    mov        esp,ebp
 0059463C    pop        ebp
 0059463D    ret
*}
end;

//00594658
procedure TRPSetupForm.bbtnOKClick;
begin
{*
 00594658    push       ebp
 00594659    mov        ebp,esp
 0059465B    xor        ecx,ecx
 0059465D    push       ecx
 0059465E    push       ecx
 0059465F    push       ecx
 00594660    push       ecx
 00594661    push       ecx
 00594662    push       ecx
 00594663    push       ecx
 00594664    push       ecx
 00594665    push       ebx
 00594666    push       esi
 00594667    push       edi
 00594668    mov        ebx,eax
 0059466A    xor        eax,eax
 0059466C    push       ebp
 0059466D    push       5949A1
 00594672    push       dword ptr fs:[eax]
 00594675    mov        dword ptr fs:[eax],esp
 00594678    mov        esi,dword ptr [ebx+378]; TRPSetupForm.?f378:dword
 0059467E    cmp        byte ptr [ebx+380],0; TRPSetupForm.?f380:byte
>00594685    je         005947D9
 0059468B    mov        edi,dword ptr [ebx+37C]; TRPSetupForm.?f37C:TRvRenderPrinter
 00594691    mov        dword ptr [edi+90],1; TRvRenderPrinter.?f90:Integer
 0059469B    mov        dword ptr [edi+94],270F; TRvRenderPrinter.?f94:Integer
 005946A5    lea        eax,[edi+98]; TRvRenderPrinter.?f98:String
 005946AB    call       @LStrClr
 005946B0    mov        eax,dword ptr [ebx+328]; TRPSetupForm.SelectionRB:TRadioButton
 005946B6    mov        edx,dword ptr [eax]
 005946B8    call       dword ptr [edx+0C8]; TRadioButton.GetChecked
 005946BE    test       al,al
>005946C0    je         005946E5
 005946C2    lea        edx,[ebp-8]
 005946C5    mov        eax,dword ptr [ebx+344]; TRPSetupForm.SelectionED:TEdit
 005946CB    call       TControl.GetText
 005946D0    mov        edx,dword ptr [ebp-8]
 005946D3    mov        eax,dword ptr [ebx+37C]; TRPSetupForm.?f37C:TRvRenderPrinter
 005946D9    add        eax,98; TRvRenderPrinter.?f98:String
 005946DE    call       @LStrAsg
>005946E3    jmp        0059473B
 005946E5    mov        eax,dword ptr [ebx+32C]; TRPSetupForm.PagesRB:TRadioButton
 005946EB    mov        edx,dword ptr [eax]
 005946ED    call       dword ptr [edx+0C8]; TRadioButton.GetChecked
 005946F3    test       al,al
>005946F5    je         0059473B
 005946F7    lea        edx,[ebp-0C]
 005946FA    mov        eax,dword ptr [ebx+334]; TRPSetupForm.FromED:TEdit
 00594700    call       TControl.GetText
 00594705    mov        eax,dword ptr [ebp-0C]
 00594708    call       StrToInt
 0059470D    mov        edx,dword ptr [ebx+37C]; TRPSetupForm.?f37C:TRvRenderPrinter
 00594713    mov        dword ptr [edx+90],eax; TRvRenderPrinter.?f90:Integer
 00594719    lea        edx,[ebp-10]
 0059471C    mov        eax,dword ptr [ebx+33C]; TRPSetupForm.ToED:TEdit
 00594722    call       TControl.GetText
 00594727    mov        eax,dword ptr [ebp-10]
 0059472A    call       StrToInt
 0059472F    mov        edx,dword ptr [ebx+37C]; TRPSetupForm.?f37C:TRvRenderPrinter
 00594735    mov        dword ptr [edx+94],eax; TRvRenderPrinter.?f94:Integer
 0059473B    test       byte ptr [esi+49],2
>0059473F    je         0059476C
 00594741    lea        edx,[ebp-14]
 00594744    mov        eax,dword ptr [ebx+354]; TRPSetupForm.CopiesED:TEdit
 0059474A    call       TControl.GetText
 0059474F    mov        eax,dword ptr [ebp-14]
 00594752    lea        edx,[ebp-4]
 00594755    call       @ValLong
 0059475A    cmp        dword ptr [ebp-4],0
>0059475E    jne        0059476C
 00594760    mov        edx,dword ptr [ebx+37C]; TRPSetupForm.?f37C:TRvRenderPrinter
 00594766    mov        dword ptr [edx+9C],eax; TRvRenderPrinter.?f9C:Longint
 0059476C    test       byte ptr [esi+49],4
>00594770    je         0059478C
 00594772    mov        eax,dword ptr [ebx+35C]; TRPSetupForm.CollateCK:TCheckBox
 00594778    mov        edx,dword ptr [eax]
 0059477A    call       dword ptr [edx+0C8]; TCustomCheckBox.GetChecked
 00594780    mov        edx,dword ptr [ebx+37C]; TRPSetupForm.?f37C:TRvRenderPrinter
 00594786    mov        byte ptr [edx+0A0],al; TRvRenderPrinter.?fA0:Boolean
 0059478C    test       byte ptr [esi+49],8
>00594790    je         005948FE
 00594796    mov        eax,dword ptr [ebx+360]; TRPSetupForm.DuplexCK:TCheckBox
 0059479C    mov        edx,dword ptr [eax]
 0059479E    call       dword ptr [edx+0C8]; TCustomCheckBox.GetChecked
 005947A4    test       al,al
>005947A6    je         005947C7
 005947A8    mov        eax,dword ptr [ebx+37C]; TRPSetupForm.?f37C:TRvRenderPrinter
 005947AE    cmp        byte ptr [eax+0A1],0; TRvRenderPrinter.?fA1:byte
>005947B5    jne        005948FE
 005947BB    mov        byte ptr [eax+0A1],1; TRvRenderPrinter.?fA1:byte
>005947C2    jmp        005948FE
 005947C7    mov        eax,dword ptr [ebx+37C]; TRPSetupForm.?f37C:TRvRenderPrinter
 005947CD    mov        byte ptr [eax+0A1],0; TRvRenderPrinter.?fA1:byte
>005947D4    jmp        005948FE
 005947D9    mov        eax,dword ptr [ebx+2FC]; TRPSetupForm.PrinterRB:TRadioButton
 005947DF    mov        edx,dword ptr [eax]
 005947E1    call       dword ptr [edx+0C8]; TRadioButton.GetChecked
 005947E7    test       al,al
>005947E9    je         005947FC
 005947EB    mov        byte ptr [esi+41],1
 005947EF    lea        eax,[esi+44]
 005947F2    call       @LStrClr
>005947F7    jmp        005948FE
 005947FC    mov        eax,dword ptr [ebx+300]; TRPSetupForm.PreviewRB:TRadioButton
 00594802    mov        edx,dword ptr [eax]
 00594804    call       dword ptr [edx+0C8]; TRadioButton.GetChecked
 0059480A    test       al,al
>0059480C    je         0059481F
 0059480E    mov        byte ptr [esi+41],0
 00594812    lea        eax,[esi+44]
 00594815    call       @LStrClr
>0059481A    jmp        005948FE
 0059481F    mov        byte ptr [esi+41],2
 00594823    lea        edx,[ebp-1C]
 00594826    mov        eax,dword ptr [ebx+308]; TRPSetupForm.editFileName:TEdit
 0059482C    call       TControl.GetText
 00594831    mov        eax,dword ptr [ebp-1C]
 00594834    lea        edx,[ebp-18]
 00594837    call       Trim
 0059483C    mov        edx,dword ptr [ebp-18]
 0059483F    lea        eax,[esi+44]
 00594842    call       @LStrAsg
 00594847    mov        eax,dword ptr [ebx+370]; TRPSetupForm.cboxFormat:TComboBox
 0059484D    mov        edx,dword ptr [eax]
 0059484F    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 00594855    test       eax,eax
>00594857    jne        00594889
 00594859    mov        edx,dword ptr [esi+44]
 0059485C    mov        eax,5949B8; '.'
 00594861    call       @LStrPos
 00594866    dec        eax
>00594867    jge        00594876
 00594869    lea        eax,[esi+44]
 0059486C    mov        edx,5949C4; '.ndr'
 00594871    call       @LStrCat
 00594876    mov        eax,dword ptr [ebx+378]; TRPSetupForm.?f378:dword
 0059487C    mov        byte ptr [eax+34],0
 00594880    xor        edx,edx
 00594882    call       00598944
>00594887    jmp        005948FE
 00594889    mov        eax,dword ptr [ebx+370]; TRPSetupForm.cboxFormat:TComboBox
 0059488F    mov        edx,dword ptr [eax]
 00594891    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 00594897    dec        eax
>00594898    jne        005948CA
 0059489A    mov        edx,dword ptr [esi+44]
 0059489D    mov        eax,5949B8; '.'
 005948A2    call       @LStrPos
 005948A7    dec        eax
>005948A8    jge        005948B7
 005948AA    lea        eax,[esi+44]
 005948AD    mov        edx,5949D4; '.prn'
 005948B2    call       @LStrCat
 005948B7    mov        eax,dword ptr [ebx+378]; TRPSetupForm.?f378:dword
 005948BD    mov        byte ptr [eax+34],1
 005948C1    xor        edx,edx
 005948C3    call       00598944
>005948C8    jmp        005948FE
 005948CA    mov        edi,dword ptr [ebx+378]; TRPSetupForm.?f378:dword
 005948D0    mov        byte ptr [edi+34],0
 005948D4    mov        eax,dword ptr [ebx+370]; TRPSetupForm.cboxFormat:TComboBox
 005948DA    mov        edx,dword ptr [eax]
 005948DC    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 005948E2    mov        edx,eax
 005948E4    mov        eax,dword ptr [ebx+370]; TRPSetupForm.cboxFormat:TComboBox
 005948EA    mov        eax,dword ptr [eax+23C]; TComboBox.FItems:TStrings
 005948F0    mov        ecx,dword ptr [eax]
 005948F2    call       dword ptr [ecx+18]; TStrings.GetObject
 005948F5    mov        edx,eax
 005948F7    mov        eax,edi
 005948F9    call       00598944
 005948FE    test       byte ptr [esi+49],2
>00594902    je         00594929
 00594904    lea        edx,[ebp-20]
 00594907    mov        eax,dword ptr [ebx+354]; TRPSetupForm.CopiesED:TEdit
 0059490D    call       TControl.GetText
 00594912    mov        eax,dword ptr [ebp-20]
 00594915    lea        edx,[ebp-4]
 00594918    call       @ValLong
 0059491D    cmp        dword ptr [ebp-4],0
>00594921    jne        00594929
 00594923    mov        edx,dword ptr [esi+54]
 00594926    mov        dword ptr [edx+4],eax
 00594929    test       byte ptr [esi+49],4
>0059492D    je         00594943
 0059492F    mov        eax,dword ptr [ebx+35C]; TRPSetupForm.CollateCK:TCheckBox
 00594935    mov        edx,dword ptr [eax]
 00594937    call       dword ptr [edx+0C8]; TCustomCheckBox.GetChecked
 0059493D    mov        edx,dword ptr [esi+54]
 00594940    mov        byte ptr [edx+70],al
 00594943    test       byte ptr [esi+49],8
>00594947    je         00594971
 00594949    mov        eax,dword ptr [ebx+360]; TRPSetupForm.DuplexCK:TCheckBox
 0059494F    mov        edx,dword ptr [eax]
 00594951    call       dword ptr [edx+0C8]; TCustomCheckBox.GetChecked
 00594957    test       al,al
>00594959    je         0059496A
 0059495B    mov        eax,dword ptr [esi+54]
 0059495E    cmp        byte ptr [eax+71],0
>00594962    jne        00594971
 00594964    mov        byte ptr [eax+71],1
>00594968    jmp        00594971
 0059496A    mov        eax,dword ptr [esi+54]
 0059496D    mov        byte ptr [eax+71],0
 00594971    xor        eax,eax
 00594973    pop        edx
 00594974    pop        ecx
 00594975    pop        ecx
 00594976    mov        dword ptr fs:[eax],edx
 00594979    push       5949A8
 0059497E    lea        eax,[ebp-20]
 00594981    mov        edx,2
 00594986    call       @LStrArrayClr
 0059498B    lea        eax,[ebp-18]
 0059498E    call       @LStrClr
 00594993    lea        eax,[ebp-14]
 00594996    mov        edx,4
 0059499B    call       @LStrArrayClr
 005949A0    ret
<005949A1    jmp        @HandleFinally
<005949A6    jmp        0059497E
 005949A8    pop        edi
 005949A9    pop        esi
 005949AA    pop        ebx
 005949AB    mov        esp,ebp
 005949AD    pop        ebp
 005949AE    ret
*}
end;

//00594A24
//procedure sub_00594A24(?:TRPSetupForm);
//begin
{*
 00594A24    push       ebp
 00594A25    mov        ebp,esp
 00594A27    xor        ecx,ecx
 00594A29    push       ecx
 00594A2A    push       ecx
 00594A2B    push       ecx
 00594A2C    push       ecx
 00594A2D    push       ebx
 00594A2E    push       esi
 00594A2F    mov        esi,eax
 00594A31    xor        eax,eax
 00594A33    push       ebp
 00594A34    push       594B3C
 00594A39    push       dword ptr fs:[eax]
 00594A3C    mov        dword ptr fs:[eax],esp
 00594A3F    mov        eax,dword ptr [esi+370]; TRPSetupForm.cboxFormat:TComboBox
 00594A45    mov        eax,dword ptr [eax+23C]; TComboBox.FItems:TStrings
 00594A4B    mov        edx,dword ptr [eax]
 00594A4D    call       dword ptr [edx+44]; TStrings.Clear
 00594A50    mov        eax,[0061C0F4]; ^gvar_00616FFC:TStringList
 00594A55    cmp        dword ptr [eax],0
>00594A58    je         00594A6B
 00594A5A    mov        eax,dword ptr [esi+370]; TRPSetupForm.cboxFormat:TComboBox
 00594A60    mov        eax,dword ptr [eax+23C]; TComboBox.FItems:TStrings
 00594A66    call       0058C880
 00594A6B    mov        ebx,dword ptr ds:[61B830]
 00594A71    mov        ebx,dword ptr [ebx]
 00594A73    lea        edx,[ebp-4]
 00594A76    mov        eax,[00617000]; gvar_00617000:array[2] of String
 00594A7B    call       ebx
 00594A7D    mov        ecx,dword ptr [ebp-4]
 00594A80    mov        eax,dword ptr [esi+370]; TRPSetupForm.cboxFormat:TComboBox
 00594A86    mov        eax,dword ptr [eax+23C]; TComboBox.FItems:TStrings
 00594A8C    xor        edx,edx
 00594A8E    mov        ebx,dword ptr [eax]
 00594A90    call       dword ptr [ebx+60]; TStrings.Insert
 00594A93    mov        ebx,dword ptr ds:[61B830]
 00594A99    mov        ebx,dword ptr [ebx]
 00594A9B    lea        edx,[ebp-8]
 00594A9E    mov        eax,[00617004]; ^'Native Printer Output (PRN)'
 00594AA3    call       ebx
 00594AA5    mov        ecx,dword ptr [ebp-8]
 00594AA8    mov        eax,dword ptr [esi+370]; TRPSetupForm.cboxFormat:TComboBox
 00594AAE    mov        eax,dword ptr [eax+23C]; TComboBox.FItems:TStrings
 00594AB4    mov        edx,1
 00594AB9    mov        ebx,dword ptr [eax]
 00594ABB    call       dword ptr [ebx+60]; TStrings.Insert
 00594ABE    push       dword ptr ds:[617000]; gvar_00617000:array[2] of String
 00594AC4    push       594B54; '|*.NDR|'
 00594AC9    push       dword ptr ds:[617004]; ^'Native Printer Output (PRN)'
 00594ACF    push       594B64; '|*.PRN'
 00594AD4    mov        eax,dword ptr [esi+320]; TRPSetupForm.dlogSave:TSaveDialog
 00594ADA    add        eax,60; TSaveDialog.?f60:String
 00594ADD    mov        edx,4
 00594AE2    call       @LStrCatN
 00594AE7    lea        eax,[ebp-0C]
 00594AEA    call       0058C8D4
 00594AEF    cmp        dword ptr [ebp-0C],0
>00594AF3    je         00594B21
 00594AF5    mov        eax,dword ptr [esi+320]; TRPSetupForm.dlogSave:TSaveDialog
 00594AFB    push       dword ptr [eax+60]; TSaveDialog.?f60:String
 00594AFE    push       594B74; '|'
 00594B03    lea        eax,[ebp-10]
 00594B06    call       0058C8D4
 00594B0B    push       dword ptr [ebp-10]
 00594B0E    mov        eax,dword ptr [esi+320]; TRPSetupForm.dlogSave:TSaveDialog
 00594B14    add        eax,60; TSaveDialog.?f60:String
 00594B17    mov        edx,3
 00594B1C    call       @LStrCatN
 00594B21    xor        eax,eax
 00594B23    pop        edx
 00594B24    pop        ecx
 00594B25    pop        ecx
 00594B26    mov        dword ptr fs:[eax],edx
 00594B29    push       594B43
 00594B2E    lea        eax,[ebp-10]
 00594B31    mov        edx,4
 00594B36    call       @LStrArrayClr
 00594B3B    ret
<00594B3C    jmp        @HandleFinally
<00594B41    jmp        00594B2E
 00594B43    pop        esi
 00594B44    pop        ebx
 00594B45    mov        esp,ebp
 00594B47    pop        ebp
 00594B48    ret
*}
//end;

//00594B78
procedure TRPSetupForm.editFileNameChange;
begin
{*
 00594B78    push       ebp
 00594B79    mov        ebp,esp
 00594B7B    push       0
 00594B7D    push       0
 00594B7F    push       ebx
 00594B80    mov        ebx,eax
 00594B82    xor        eax,eax
 00594B84    push       ebp
 00594B85    push       594BD9
 00594B8A    push       dword ptr fs:[eax]
 00594B8D    mov        dword ptr fs:[eax],esp
 00594B90    lea        edx,[ebp-8]
 00594B93    mov        eax,dword ptr [ebx+308]; TRPSetupForm.editFileName:TEdit
 00594B99    call       TControl.GetText
 00594B9E    mov        eax,dword ptr [ebp-8]
 00594BA1    lea        edx,[ebp-4]
 00594BA4    call       Trim
 00594BA9    cmp        dword ptr [ebp-4],0
 00594BAD    setne      dl
 00594BB0    mov        eax,dword ptr [ebx+30C]; TRPSetupForm.bbtnOK:TButton
 00594BB6    mov        ecx,dword ptr [eax]
 00594BB8    call       dword ptr [ecx+64]; TControl.SetEnabled
 00594BBB    xor        eax,eax
 00594BBD    pop        edx
 00594BBE    pop        ecx
 00594BBF    pop        ecx
 00594BC0    mov        dword ptr fs:[eax],edx
 00594BC3    push       594BE0
 00594BC8    lea        eax,[ebp-8]
 00594BCB    call       @LStrClr
 00594BD0    lea        eax,[ebp-4]
 00594BD3    call       @LStrClr
 00594BD8    ret
<00594BD9    jmp        @HandleFinally
<00594BDE    jmp        00594BC8
 00594BE0    pop        ebx
 00594BE1    pop        ecx
 00594BE2    pop        ecx
 00594BE3    pop        ebp
 00594BE4    ret
*}
end;

//00594BE8
//procedure TRPSetupForm.FormKeyPress(?:?; ?:?);
//begin
{*
 00594BE8    push       ebp
 00594BE9    mov        ebp,esp
 00594BEB    push       0
 00594BED    push       0
 00594BEF    push       ebx
 00594BF0    push       esi
 00594BF1    push       edi
 00594BF2    mov        esi,ecx
 00594BF4    mov        edi,edx
 00594BF6    mov        ebx,eax
 00594BF8    xor        eax,eax
 00594BFA    push       ebp
 00594BFB    push       594C52
 00594C00    push       dword ptr fs:[eax]
 00594C03    mov        dword ptr fs:[eax],esp
 00594C06    lea        eax,[ebp-4]
 00594C09    mov        edx,594C68; '0123456789'
 00594C0E    call       @LStrLAsg
 00594C13    cmp        edi,dword ptr [ebx+308]; TRPSetupForm.editFileName:TEdit
>00594C19    je         00594C37
 00594C1B    lea        eax,[ebp-8]
 00594C1E    mov        dl,byte ptr [esi]
 00594C20    call       @LStrFromChar
 00594C25    mov        eax,dword ptr [ebp-8]
 00594C28    mov        edx,dword ptr [ebp-4]
 00594C2B    call       @LStrPos
 00594C30    test       eax,eax
>00594C32    jg         00594C37
 00594C34    mov        byte ptr [esi],0
 00594C37    xor        eax,eax
 00594C39    pop        edx
 00594C3A    pop        ecx
 00594C3B    pop        ecx
 00594C3C    mov        dword ptr fs:[eax],edx
 00594C3F    push       594C59
 00594C44    lea        eax,[ebp-8]
 00594C47    mov        edx,2
 00594C4C    call       @LStrArrayClr
 00594C51    ret
<00594C52    jmp        @HandleFinally
<00594C57    jmp        00594C44
 00594C59    pop        edi
 00594C5A    pop        esi
 00594C5B    pop        ebx
 00594C5C    pop        ecx
 00594C5D    pop        ecx
 00594C5E    pop        ebp
 00594C5F    ret
*}
//end;

//00594C74
//procedure TRPSetupForm.SelectionEDKeyPress(?:?; ?:?);
//begin
{*
 00594C74    push       ebp
 00594C75    mov        ebp,esp
 00594C77    push       0
 00594C79    push       0
 00594C7B    push       ebx
 00594C7C    push       esi
 00594C7D    push       edi
 00594C7E    mov        esi,ecx
 00594C80    mov        edi,edx
 00594C82    mov        ebx,eax
 00594C84    xor        eax,eax
 00594C86    push       ebp
 00594C87    push       594CDE
 00594C8C    push       dword ptr fs:[eax]
 00594C8F    mov        dword ptr fs:[eax],esp
 00594C92    lea        eax,[ebp-4]
 00594C95    mov        edx,594CF4; '0123456789-,'
 00594C9A    call       @LStrLAsg
 00594C9F    cmp        edi,dword ptr [ebx+308]; TRPSetupForm.editFileName:TEdit
>00594CA5    je         00594CC3
 00594CA7    lea        eax,[ebp-8]
 00594CAA    mov        dl,byte ptr [esi]
 00594CAC    call       @LStrFromChar
 00594CB1    mov        eax,dword ptr [ebp-8]
 00594CB4    mov        edx,dword ptr [ebp-4]
 00594CB7    call       @LStrPos
 00594CBC    test       eax,eax
>00594CBE    jg         00594CC3
 00594CC0    mov        byte ptr [esi],0
 00594CC3    xor        eax,eax
 00594CC5    pop        edx
 00594CC6    pop        ecx
 00594CC7    pop        ecx
 00594CC8    mov        dword ptr fs:[eax],edx
 00594CCB    push       594CE5
 00594CD0    lea        eax,[ebp-8]
 00594CD3    mov        edx,2
 00594CD8    call       @LStrArrayClr
 00594CDD    ret
<00594CDE    jmp        @HandleFinally
<00594CE3    jmp        00594CD0
 00594CE5    pop        edi
 00594CE6    pop        esi
 00594CE7    pop        ebx
 00594CE8    pop        ecx
 00594CE9    pop        ecx
 00594CEA    pop        ebp
 00594CEB    ret
*}
//end;

//00594D04
//procedure TRPSetupForm.cboxFormatChange(?:?);
//begin
{*
 00594D04    push       ebx
 00594D05    push       esi
 00594D06    mov        esi,edx
 00594D08    mov        ebx,eax
 00594D0A    mov        eax,esi
 00594D0C    mov        edx,dword ptr ds:[4518E0]; TComboBox
 00594D12    call       @AsClass
 00594D17    mov        edx,dword ptr [eax]
 00594D19    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 00594D1F    inc        eax
 00594D20    mov        edx,dword ptr [ebx+320]; TRPSetupForm.dlogSave:TSaveDialog
 00594D26    mov        dword ptr [edx+64],eax; TSaveDialog.FilterIndex:Integer
 00594D29    pop        esi
 00594D2A    pop        ebx
 00594D2B    ret
*}
//end;

Initialization
Finalization
//00594D2C
{*
 00594D2C    push       ebp
 00594D2D    mov        ebp,esp
 00594D2F    xor        eax,eax
 00594D31    push       ebp
 00594D32    push       594D68
 00594D37    push       dword ptr fs:[eax]
 00594D3A    mov        dword ptr fs:[eax],esp
 00594D3D    inc        dword ptr ds:[61EFF4]
>00594D43    jne        00594D5A
 00594D45    mov        eax,617000; gvar_00617000:array[2] of String
 00594D4A    mov        ecx,2
 00594D4F    mov        edx,dword ptr ds:[4010F8]; String
 00594D55    call       @FinalizeArray
 00594D5A    xor        eax,eax
 00594D5C    pop        edx
 00594D5D    pop        ecx
 00594D5E    pop        ecx
 00594D5F    mov        dword ptr fs:[eax],edx
 00594D62    push       594D6F
 00594D67    ret
<00594D68    jmp        @HandleFinally
<00594D6D    jmp        00594D67
 00594D6F    pop        ebp
 00594D70    ret
*}
end.