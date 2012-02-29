{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit deliveryun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBCtrls, DBGrids;

type
  Tdeliveryfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    Label2:TLabel;//f30C
    Label3:TLabel;//f310
    SpeedButton6:TSpeedButton;//f314
    Label4:TLabel;//f318
    SpeedButton3:TSpeedButton;//f31C
    Label5:TLabel;//f320
    SpeedButton1:TSpeedButton;//f324
    Label8:TLabel;//f328
    po:TDBEdit;//f32C
    lookcust:TDBLookupComboBox;//f330
    lookpic:TDBLookupComboBox;//f334
    dbtgl:TDBEdit;//f338
    DBEdit1:TDBEdit;//f33C
    Panel3:TPanel;//f340
    btntambah:TSpeedButton;//f344
    btnsimpan:TSpeedButton;//f348
    btnbatal:TSpeedButton;//f34C
    DBGrid1:TDBGrid;//f350
    SpeedButton2:TSpeedButton;//f354
    //procedure DBEdit1KeyDown(?:?; ?:?);
    procedure FormClose;
    procedure btntambahClick;
    procedure btnsimpanClick;
    procedure btnbatalClick;
    procedure SpeedButton2Click;
    procedure FormCreate;
  end;

implementation

{$R *.DFM}

//005EAE68
//procedure sub_005EAE68(?:Tdeliveryfrm);
//begin
{*
 005EAE68    push       ebp
 005EAE69    mov        ebp,esp
 005EAE6B    mov        ecx,0D
 005EAE70    push       0
 005EAE72    push       0
 005EAE74    dec        ecx
<005EAE75    jne        005EAE70
 005EAE77    push       ebx
 005EAE78    push       esi
 005EAE79    push       edi
 005EAE7A    mov        edi,eax
 005EAE7C    xor        eax,eax
 005EAE7E    push       ebp
 005EAE7F    push       5EB13F
 005EAE84    push       dword ptr fs:[eax]
 005EAE87    mov        dword ptr fs:[eax],esp
 005EAE8A    lea        eax,[ebp-20]
 005EAE8D    push       eax
 005EAE8E    call       Date
 005EAE93    add        esp,0FFFFFFF8
 005EAE96    fstp       qword ptr [esp]
 005EAE99    wait
 005EAE9A    lea        eax,[ebp-24]
 005EAE9D    call       DateToStr
 005EAEA2    mov        eax,dword ptr [ebp-24]
 005EAEA5    mov        ecx,2
 005EAEAA    mov        edx,4
 005EAEAF    call       AnsiMidStr
 005EAEB4    mov        eax,dword ptr [ebp-20]
 005EAEB7    call       StrToInt
 005EAEBC    mov        esi,eax
 005EAEBE    call       Date
 005EAEC3    add        esp,0FFFFFFF8
 005EAEC6    fstp       qword ptr [esp]
 005EAEC9    wait
 005EAECA    lea        eax,[ebp-28]
 005EAECD    call       DateToStr
 005EAED2    mov        eax,dword ptr [ebp-28]
 005EAED5    lea        ecx,[ebp-14]
 005EAED8    mov        edx,4
 005EAEDD    call       RightStr
 005EAEE2    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EAEE7    mov        eax,dword ptr [eax]
 005EAEE9    mov        ebx,dword ptr [eax+250]; Tdm.delivery:TZQuery
 005EAEEF    mov        eax,ebx
 005EAEF1    call       TZReadOnlyQuery.GetSQL
 005EAEF6    mov        edx,5EB158; 'SELECT * FROM do ORDER BY do_id DESC LIMIT 1'
 005EAEFB    mov        ecx,dword ptr [eax]
 005EAEFD    call       dword ptr [ecx+2C]
 005EAF00    mov        eax,ebx
 005EAF02    call       TDataSet.Open
 005EAF07    mov        edx,5EB190; 'do_kode'
 005EAF0C    mov        eax,ebx
 005EAF0E    call       TDataSet.FieldByName
 005EAF13    lea        edx,[ebp-38]
 005EAF16    mov        ecx,dword ptr [eax]
 005EAF18    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EAF1B    lea        edx,[ebp-38]
 005EAF1E    lea        eax,[ebp-4]
 005EAF21    call       @VarToLStr
 005EAF26    lea        eax,[ebp-3C]
 005EAF29    push       eax
 005EAF2A    mov        edx,5EB190; 'do_kode'
 005EAF2F    mov        eax,ebx
 005EAF31    call       TDataSet.FieldByName
 005EAF36    lea        edx,[ebp-50]
 005EAF39    mov        ecx,dword ptr [eax]
 005EAF3B    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EAF3E    lea        edx,[ebp-50]
 005EAF41    lea        eax,[ebp-40]
 005EAF44    call       @VarToLStr
 005EAF49    mov        eax,dword ptr [ebp-40]
 005EAF4C    mov        ecx,2
 005EAF51    mov        edx,0B
 005EAF56    call       AnsiMidStr
 005EAF5B    mov        eax,dword ptr [ebp-3C]
 005EAF5E    call       StrToInt
 005EAF63    mov        dword ptr [ebp-8],eax
 005EAF66    lea        ecx,[ebp-18]
 005EAF69    mov        edx,4
 005EAF6E    mov        eax,dword ptr [ebp-4]
 005EAF71    call       RightStr
 005EAF76    lea        ecx,[ebp-54]
 005EAF79    mov        edx,3
 005EAF7E    mov        eax,dword ptr [ebp-4]
 005EAF81    call       LeftStr
 005EAF86    mov        eax,dword ptr [ebp-54]
 005EAF89    call       StrToInt
 005EAF8E    mov        ebx,eax
 005EAF90    inc        ebx
 005EAF91    lea        edx,[ebp-58]
 005EAF94    mov        eax,ebx
 005EAF96    call       IntToStr
 005EAF9B    mov        eax,dword ptr [ebp-58]
 005EAF9E    call       @LStrLen
 005EAFA3    dec        eax
>005EAFA4    je         005EAFAE
 005EAFA6    dec        eax
>005EAFA7    je         005EAFBD
 005EAFA9    dec        eax
>005EAFAA    je         005EAFCC
>005EAFAC    jmp        005EAFD4
 005EAFAE    lea        eax,[ebp-10]
 005EAFB1    mov        edx,5EB1A0; '00'
 005EAFB6    call       @LStrLAsg
>005EAFBB    jmp        005EAFD4
 005EAFBD    lea        eax,[ebp-10]
 005EAFC0    mov        edx,5EB1AC; '0'
 005EAFC5    call       @LStrLAsg
>005EAFCA    jmp        005EAFD4
 005EAFCC    lea        eax,[ebp-10]
 005EAFCF    call       @LStrClr
 005EAFD4    lea        edx,[ebp-5C]
 005EAFD7    mov        eax,esi
 005EAFD9    call       IntToStr
 005EAFDE    mov        eax,dword ptr [ebp-5C]
 005EAFE1    call       @LStrLen
 005EAFE6    dec        eax
>005EAFE7    jne        005EB005
 005EAFE9    lea        edx,[ebp-60]
 005EAFEC    mov        eax,esi
 005EAFEE    call       IntToStr
 005EAFF3    mov        ecx,dword ptr [ebp-60]
 005EAFF6    lea        eax,[ebp-1C]
 005EAFF9    mov        edx,5EB1AC; '0'
 005EAFFE    call       @LStrCat3
>005EB003    jmp        005EB00F
 005EB005    lea        edx,[ebp-1C]
 005EB008    mov        eax,esi
 005EB00A    call       IntToStr
 005EB00F    mov        eax,dword ptr [ebp-14]
 005EB012    mov        edx,dword ptr [ebp-18]
 005EB015    call       @LStrCmp
>005EB01A    je         005EB02E
 005EB01C    lea        eax,[ebp-0C]
 005EB01F    mov        ecx,dword ptr [ebp-14]
 005EB022    mov        edx,5EB1B8; '001/SV/DO/01/'
 005EB027    call       @LStrCat3
>005EB02C    jmp        005EB089
 005EB02E    cmp        esi,dword ptr [ebp-8]
>005EB031    je         005EB052
 005EB033    push       5EB1D0; '001/SV/DO/'
 005EB038    push       dword ptr [ebp-1C]
 005EB03B    push       5EB1E4; '/'
 005EB040    push       dword ptr [ebp-14]
 005EB043    lea        eax,[ebp-0C]
 005EB046    mov        edx,4
 005EB04B    call       @LStrCatN
>005EB050    jmp        005EB089
 005EB052    cmp        esi,dword ptr [ebp-8]
>005EB055    jne        005EB089
 005EB057    push       dword ptr [ebp-10]
 005EB05A    lea        edx,[ebp-64]
 005EB05D    mov        eax,ebx
 005EB05F    call       IntToStr
 005EB064    push       dword ptr [ebp-64]
 005EB067    push       5EB1E4; '/'
 005EB06C    push       5EB1F0; 'SV/DO/'
 005EB071    push       dword ptr [ebp-1C]
 005EB074    push       5EB1E4; '/'
 005EB079    push       dword ptr [ebp-14]
 005EB07C    lea        eax,[ebp-0C]
 005EB07F    mov        edx,7
 005EB084    call       @LStrCatN
 005EB089    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB08E    mov        eax,dword ptr [eax]
 005EB090    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 005EB096    call       TDataSet.Append
 005EB09B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB0A0    mov        eax,dword ptr [eax]
 005EB0A2    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 005EB0A8    call       TDataSet.Append
 005EB0AD    call       Date
 005EB0B2    add        esp,0FFFFFFF8
 005EB0B5    fstp       qword ptr [esp]
 005EB0B8    wait
 005EB0B9    lea        eax,[ebp-68]
 005EB0BC    call       DateToStr
 005EB0C1    mov        edx,dword ptr [ebp-68]
 005EB0C4    mov        eax,dword ptr [edi+338]; Tdeliveryfrm.dbtgl:TDBEdit
 005EB0CA    call       TCustomMaskEdit.SetText
 005EB0CF    mov        eax,dword ptr [edi+32C]; Tdeliveryfrm.po:TDBEdit
 005EB0D5    mov        edx,dword ptr [ebp-0C]
 005EB0D8    call       TCustomMaskEdit.SetText
 005EB0DD    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB0E2    mov        eax,dword ptr [eax]
 005EB0E4    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 005EB0EA    mov        edx,dword ptr [eax]
 005EB0EC    call       dword ptr [edx+24C]; TDataSet.Post
 005EB0F2    xor        eax,eax
 005EB0F4    pop        edx
 005EB0F5    pop        ecx
 005EB0F6    pop        ecx
 005EB0F7    mov        dword ptr fs:[eax],edx
 005EB0FA    push       5EB146
 005EB0FF    lea        eax,[ebp-68]
 005EB102    mov        edx,6
 005EB107    call       @LStrArrayClr
 005EB10C    lea        eax,[ebp-50]
 005EB10F    call       @VarClr
 005EB114    lea        eax,[ebp-40]
 005EB117    mov        edx,2
 005EB11C    call       @LStrArrayClr
 005EB121    lea        eax,[ebp-38]
 005EB124    call       @VarClr
 005EB129    lea        eax,[ebp-28]
 005EB12C    mov        edx,8
 005EB131    call       @LStrArrayClr
 005EB136    lea        eax,[ebp-4]
 005EB139    call       @LStrClr
 005EB13E    ret
<005EB13F    jmp        @HandleFinally
<005EB144    jmp        005EB0FF
 005EB146    pop        edi
 005EB147    pop        esi
 005EB148    pop        ebx
 005EB149    mov        esp,ebp
 005EB14B    pop        ebp
 005EB14C    ret
*}
//end;

//005EB1F8
//procedure Tdeliveryfrm.DBEdit1KeyDown(?:?; ?:?);
//begin
{*
 005EB1F8    push       ebp
 005EB1F9    mov        ebp,esp
 005EB1FB    cmp        word ptr [ecx],0D
>005EB1FF    jne        005EB21E
 005EB201    mov        eax,[0061AF74]; ^gvar_0061F8E8
 005EB206    mov        dword ptr [eax],1
 005EB20C    mov        eax,[0061BC7C]
 005EB211    mov        eax,dword ptr [eax]
 005EB213    mov        edx,dword ptr ds:[5E99DC]; Tinvoicelistfrm
 005EB219    call       005D859C
 005EB21E    pop        ebp
 005EB21F    ret        4
*}
//end;

//005EB224
procedure Tdeliveryfrm.FormClose;
begin
{*
 005EB224    mov        eax,[0061AF74]; ^gvar_0061F8E8
 005EB229    xor        edx,edx
 005EB22B    mov        dword ptr [eax],edx
 005EB22D    ret
*}
end;

//005EB230
procedure Tdeliveryfrm.btntambahClick;
begin
{*
 005EB230    push       ebx
 005EB231    mov        ebx,eax
 005EB233    mov        eax,ebx
 005EB235    call       005EAE68
 005EB23A    mov        dl,1
 005EB23C    mov        eax,dword ptr [ebx+348]; Tdeliveryfrm.btnsimpan:TSpeedButton
 005EB242    call       TControl.SetVisible
 005EB247    mov        dl,1
 005EB249    mov        eax,dword ptr [ebx+34C]; Tdeliveryfrm.btnbatal:TSpeedButton
 005EB24F    call       TControl.SetVisible
 005EB254    pop        ebx
 005EB255    ret
*}
end;

//005EB258
procedure Tdeliveryfrm.btnsimpanClick;
begin
{*
 005EB258    push       ebx
 005EB259    mov        ebx,eax
 005EB25B    push       0
 005EB25D    mov        cx,word ptr ds:[5EB2B8]; 0x3
 005EB264    mov        dl,3
 005EB266    mov        eax,5EB2C4; 'Simpan Transaksi?'
 005EB26B    call       MessageDlg
 005EB270    cmp        eax,6
>005EB273    jne        005EB2B3
 005EB275    xor        edx,edx
 005EB277    mov        eax,dword ptr [ebx+348]; Tdeliveryfrm.btnsimpan:TSpeedButton
 005EB27D    call       TControl.SetVisible
 005EB282    xor        edx,edx
 005EB284    mov        eax,dword ptr [ebx+34C]; Tdeliveryfrm.btnbatal:TSpeedButton
 005EB28A    call       TControl.SetVisible
 005EB28F    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB294    mov        eax,dword ptr [eax]
 005EB296    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 005EB29C    call       0056F648
 005EB2A1    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB2A6    mov        eax,dword ptr [eax]
 005EB2A8    mov        eax,dword ptr [eax+254]; Tdm.deliverydetail:TZQuery
 005EB2AE    call       0056F648
 005EB2B3    pop        ebx
 005EB2B4    ret
*}
end;

//005EB2D8
procedure Tdeliveryfrm.btnbatalClick;
begin
{*
 005EB2D8    push       ebx
 005EB2D9    mov        ebx,eax
 005EB2DB    push       0
 005EB2DD    mov        cx,word ptr ds:[5EB338]; 0x3
 005EB2E4    mov        dl,3
 005EB2E6    mov        eax,5EB344; 'Batalkan Transaksi?'
 005EB2EB    call       MessageDlg
 005EB2F0    cmp        eax,6
>005EB2F3    jne        005EB333
 005EB2F5    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB2FA    mov        eax,dword ptr [eax]
 005EB2FC    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 005EB302    call       0056F70C
 005EB307    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB30C    mov        eax,dword ptr [eax]
 005EB30E    mov        eax,dword ptr [eax+254]; Tdm.deliverydetail:TZQuery
 005EB314    call       0056F70C
 005EB319    xor        edx,edx
 005EB31B    mov        eax,dword ptr [ebx+348]; Tdeliveryfrm.btnsimpan:TSpeedButton
 005EB321    call       TControl.SetVisible
 005EB326    xor        edx,edx
 005EB328    mov        eax,dword ptr [ebx+34C]; Tdeliveryfrm.btnbatal:TSpeedButton
 005EB32E    call       TControl.SetVisible
 005EB333    pop        ebx
 005EB334    ret
*}
end;

//005EB358
procedure Tdeliveryfrm.SpeedButton2Click;
begin
{*
 005EB358    mov        eax,[0061AF74]; ^gvar_0061F8E8
 005EB35D    mov        dword ptr [eax],1
 005EB363    mov        eax,[0061BC7C]
 005EB368    mov        eax,dword ptr [eax]
 005EB36A    mov        edx,dword ptr ds:[5E99DC]; Tinvoicelistfrm
 005EB370    call       005D859C
 005EB375    ret
*}
end;

//005EB378
procedure Tdeliveryfrm.FormCreate;
begin
{*
 005EB378    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB37D    mov        eax,dword ptr [eax]
 005EB37F    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 005EB385    call       005D8634
 005EB38A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB38F    mov        eax,dword ptr [eax]
 005EB391    mov        eax,dword ptr [eax+254]; Tdm.deliverydetail:TZQuery
 005EB397    call       005D8634
 005EB39C    ret
*}
end;

end.