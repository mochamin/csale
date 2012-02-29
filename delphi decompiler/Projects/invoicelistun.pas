{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit invoicelistun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBGrids, Menus, RpRave, RpSystem, RpConDS;

type
  Tinvoicelistfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    SpeedButton1:TSpeedButton;//f30C
    cari:TEdit;//f310
    gridinv:TDBGrid;//f314
    popinv:TPopupMenu;//f318
    RefreshData1:TMenuItem;//f31C
    rpInvoice:TRvProject;//f320
    RvSystem1:TRvSystem;//f324
    rdinvoice:TRvDataSetConnection;//f328
    rdincust:TRvDataSetConnection;//f32C
    rdinvoicedetail:TRvDataSetConnection;//f330
    N1:TMenuItem;//f334
    cetakinv:TMenuItem;//f338
    N2:TMenuItem;//f33C
    InputData1:TMenuItem;//f340
    rddeliveryrpt:TRvDataSetConnection;//f344
    rdbarangrpt:TRvDataSetConnection;//f348
    HapusInvoice1:TMenuItem;//f34C
    N3:TMenuItem;//f350
    N4:TMenuItem;//f354
    FakturPajak1:TMenuItem;//f358
    rpPajak:TRvProject;//f35C
    rdpajak:TRvDataSetConnection;//f360
    rspajak:TRvSystem;//f364
    rdpajakdetail:TRvDataSetConnection;//f368
    rdwp:TRvDataSetConnection;//f36C
    rdbarangpajak:TRvDataSetConnection;//f370
    Label2:TLabel;//f374
    procedure FormCreate;
    procedure RefreshData1Click;
    procedure popinvPopup;
    procedure cetakinvClick;
    procedure InputData1Click;
    procedure HapusInvoice1Click;
    procedure FakturPajak1Click;
    procedure cariChange;
  end;

implementation

{$R *.DFM}

//005E9E14
//procedure sub_005E9E14(?:Tinvoicelistfrm);
//begin
{*
 005E9E14    push       ebp
 005E9E15    mov        ebp,esp
 005E9E17    mov        ecx,6
 005E9E1C    push       0
 005E9E1E    push       0
 005E9E20    dec        ecx
<005E9E21    jne        005E9E1C
 005E9E23    push       ecx
 005E9E24    push       ebx
 005E9E25    push       esi
 005E9E26    mov        esi,eax
 005E9E28    xor        eax,eax
 005E9E2A    push       ebp
 005E9E2B    push       5E9F53
 005E9E30    push       dword ptr fs:[eax]
 005E9E33    mov        dword ptr fs:[eax],esp
 005E9E36    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E9E3B    mov        eax,dword ptr [eax]
 005E9E3D    mov        ebx,dword ptr [eax+7D4]; Tdm.fakturpajakrpt:TZQuery
 005E9E43    mov        eax,ebx
 005E9E45    call       TZReadOnlyQuery.GetSQL
 005E9E4A    mov        edx,5E9F68; 'select * from fakturpajak where fp_ref = (:ref) '
 005E9E4F    mov        ecx,dword ptr [eax]
 005E9E51    call       dword ptr [ecx+2C]
 005E9E54    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E9E59    mov        eax,dword ptr [eax]
 005E9E5B    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005E9E61    mov        edx,5E9FA4; 'ju_kode'
 005E9E66    call       TDataSet.FieldByName
 005E9E6B    lea        edx,[ebp-14]
 005E9E6E    mov        ecx,dword ptr [eax]
 005E9E70    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E9E73    lea        eax,[ebp-14]
 005E9E76    push       eax
 005E9E77    mov        edx,5E9FB4; 'ref'
 005E9E7C    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E9E82    call       TParams.ParamByName
 005E9E87    pop        edx
 005E9E88    call       TParam.SetAsVariant
 005E9E8D    mov        eax,ebx
 005E9E8F    call       TDataSet.Open
 005E9E94    mov        edx,5E9FC0; 'fp_kode'
 005E9E99    mov        eax,ebx
 005E9E9B    call       TDataSet.FieldByName
 005E9EA0    lea        edx,[ebp-24]
 005E9EA3    mov        ecx,dword ptr [eax]
 005E9EA5    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E9EA8    lea        edx,[ebp-24]
 005E9EAB    lea        eax,[ebp-4]
 005E9EAE    call       @VarToLStr
 005E9EB3    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E9EB8    mov        eax,dword ptr [eax]
 005E9EBA    mov        ebx,dword ptr [eax+7D8]; Tdm.fakturpajakdetailrpt:TZQuery
 005E9EC0    mov        eax,ebx
 005E9EC2    call       TZReadOnlyQuery.GetSQL
 005E9EC7    mov        edx,5E9FD0; 'select * from fakturpajakdetail where fd_kode = (:fk) '
 005E9ECC    mov        ecx,dword ptr [eax]
 005E9ECE    call       dword ptr [ecx+2C]
 005E9ED1    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E9ED7    mov        edx,5EA010; 'fk'
 005E9EDC    call       TParams.ParamByName
 005E9EE1    push       eax
 005E9EE2    lea        eax,[ebp-34]
 005E9EE5    mov        edx,dword ptr [ebp-4]
 005E9EE8    call       @VarFromLStr
 005E9EED    lea        edx,[ebp-34]
 005E9EF0    pop        eax
 005E9EF1    call       TParam.SetAsVariant
 005E9EF6    mov        eax,ebx
 005E9EF8    call       TDataSet.Open
 005E9EFD    mov        edx,5EA01C; 'fakturpajak.rav'
 005E9F02    mov        eax,dword ptr [esi+35C]; Tinvoicelistfrm.rpPajak:TRvProject
 005E9F08    call       TRvProject.SetProjectFile
 005E9F0D    mov        cl,1
 005E9F0F    mov        edx,5EA01C; 'fakturpajak.rav'
 005E9F14    mov        eax,dword ptr [esi+35C]; Tinvoicelistfrm.rpPajak:TRvProject
 005E9F1A    call       005D84D0
 005E9F1F    mov        eax,dword ptr [esi+35C]; Tinvoicelistfrm.rpPajak:TRvProject
 005E9F25    call       005D8484
 005E9F2A    xor        eax,eax
 005E9F2C    pop        edx
 005E9F2D    pop        ecx
 005E9F2E    pop        ecx
 005E9F2F    mov        dword ptr fs:[eax],edx
 005E9F32    push       5E9F5A
 005E9F37    lea        eax,[ebp-34]
 005E9F3A    mov        edx,dword ptr ds:[401114]; Variant
 005E9F40    mov        ecx,3
 005E9F45    call       @FinalizeArray
 005E9F4A    lea        eax,[ebp-4]
 005E9F4D    call       @LStrClr
 005E9F52    ret
<005E9F53    jmp        @HandleFinally
<005E9F58    jmp        005E9F37
 005E9F5A    pop        esi
 005E9F5B    pop        ebx
 005E9F5C    mov        esp,ebp
 005E9F5E    pop        ebp
 005E9F5F    ret
*}
//end;

//005EA02C
//procedure sub_005EA02C(?:Tinvoicelistfrm);
//begin
{*
 005EA02C    push       ebp
 005EA02D    mov        ebp,esp
 005EA02F    xor        ecx,ecx
 005EA031    push       ecx
 005EA032    push       ecx
 005EA033    push       ecx
 005EA034    push       ecx
 005EA035    push       ebx
 005EA036    push       esi
 005EA037    mov        ebx,eax
 005EA039    xor        eax,eax
 005EA03B    push       ebp
 005EA03C    push       5EA0E8
 005EA041    push       dword ptr fs:[eax]
 005EA044    mov        dword ptr fs:[eax],esp
 005EA047    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA04C    mov        eax,dword ptr [eax]
 005EA04E    mov        esi,dword ptr [eax+2D8]; Tdm.deliveryrpt:TZQuery
 005EA054    mov        eax,esi
 005EA056    call       TZReadOnlyQuery.GetSQL
 005EA05B    mov        edx,5EA100; 'select * from do where do_invoice = (:inv) order by do_id desc limit 1 '
 005EA060    mov        ecx,dword ptr [eax]
 005EA062    call       dword ptr [ecx+2C]
 005EA065    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA06A    mov        eax,dword ptr [eax]
 005EA06C    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA072    mov        edx,5EA150; 'ju_kode'
 005EA077    call       TDataSet.FieldByName
 005EA07C    lea        edx,[ebp-10]
 005EA07F    mov        ecx,dword ptr [eax]
 005EA081    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA084    lea        eax,[ebp-10]
 005EA087    push       eax
 005EA088    mov        edx,5EA160; 'inv'
 005EA08D    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 005EA093    call       TParams.ParamByName
 005EA098    pop        edx
 005EA099    call       TParam.SetAsVariant
 005EA09E    mov        eax,esi
 005EA0A0    call       TDataSet.Open
 005EA0A5    mov        edx,5EA16C; 'invoice.rav'
 005EA0AA    mov        eax,dword ptr [ebx+320]; Tinvoicelistfrm.rpInvoice:TRvProject
 005EA0B0    call       TRvProject.SetProjectFile
 005EA0B5    mov        cl,1
 005EA0B7    mov        edx,5EA180; 'inovice.rav'
 005EA0BC    mov        eax,dword ptr [ebx+320]; Tinvoicelistfrm.rpInvoice:TRvProject
 005EA0C2    call       005D84D0
 005EA0C7    mov        eax,dword ptr [ebx+320]; Tinvoicelistfrm.rpInvoice:TRvProject
 005EA0CD    call       005D8484
 005EA0D2    xor        eax,eax
 005EA0D4    pop        edx
 005EA0D5    pop        ecx
 005EA0D6    pop        ecx
 005EA0D7    mov        dword ptr fs:[eax],edx
 005EA0DA    push       5EA0EF
 005EA0DF    lea        eax,[ebp-10]
 005EA0E2    call       @VarClr
 005EA0E7    ret
<005EA0E8    jmp        @HandleFinally
<005EA0ED    jmp        005EA0DF
 005EA0EF    pop        esi
 005EA0F0    pop        ebx
 005EA0F1    mov        esp,ebp
 005EA0F3    pop        ebp
 005EA0F4    ret
*}
//end;

//005EA18C
procedure Tinvoicelistfrm.FormCreate;
begin
{*
 005EA18C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA191    mov        eax,dword ptr [eax]
 005EA193    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA199    call       005D8634
 005EA19E    ret
*}
end;

//005EA1A0
//procedure sub_005EA1A0(?:Tinvoicelistfrm);
//begin
{*
 005EA1A0    push       ebp
 005EA1A1    mov        ebp,esp
 005EA1A3    mov        ecx,0E
 005EA1A8    push       0
 005EA1AA    push       0
 005EA1AC    dec        ecx
<005EA1AD    jne        005EA1A8
 005EA1AF    push       ecx
 005EA1B0    push       ebx
 005EA1B1    push       esi
 005EA1B2    mov        dword ptr [ebp-4],eax
 005EA1B5    mov        esi,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 005EA1BB    xor        eax,eax
 005EA1BD    push       ebp
 005EA1BE    push       5EA3D4
 005EA1C3    push       dword ptr fs:[eax]
 005EA1C6    mov        dword ptr fs:[eax],esp
 005EA1C9    mov        eax,dword ptr [esi]
 005EA1CB    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 005EA1D1    call       TDataSet.Edit
 005EA1D6    mov        eax,dword ptr [esi]
 005EA1D8    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA1DE    mov        edx,5EA3EC; 'ju_kode'
 005EA1E3    call       TDataSet.FieldByName
 005EA1E8    lea        edx,[ebp-14]
 005EA1EB    mov        ecx,dword ptr [eax]
 005EA1ED    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA1F0    lea        eax,[ebp-14]
 005EA1F3    push       eax
 005EA1F4    mov        eax,dword ptr [esi]
 005EA1F6    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 005EA1FC    mov        edx,5EA3FC; 'do_invoice'
 005EA201    call       TDataSet.FieldByName
 005EA206    pop        edx
 005EA207    mov        ecx,dword ptr [eax]
 005EA209    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005EA20F    mov        eax,dword ptr [esi]
 005EA211    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA217    mov        edx,5EA410; 'ju_cust_id'
 005EA21C    call       TDataSet.FieldByName
 005EA221    lea        edx,[ebp-24]
 005EA224    mov        ecx,dword ptr [eax]
 005EA226    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA229    lea        eax,[ebp-24]
 005EA22C    push       eax
 005EA22D    mov        eax,dword ptr [esi]
 005EA22F    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 005EA235    mov        edx,5EA424; 'do_cust_id'
 005EA23A    call       TDataSet.FieldByName
 005EA23F    pop        edx
 005EA240    mov        ecx,dword ptr [eax]
 005EA242    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005EA248    mov        eax,dword ptr [esi]
 005EA24A    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA250    mov        edx,5EA438; 'ju_cust_pic'
 005EA255    call       TDataSet.FieldByName
 005EA25A    lea        edx,[ebp-34]
 005EA25D    mov        ecx,dword ptr [eax]
 005EA25F    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA262    lea        eax,[ebp-34]
 005EA265    push       eax
 005EA266    mov        eax,dword ptr [esi]
 005EA268    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 005EA26E    mov        edx,5EA44C; 'do_cust_pic'
 005EA273    call       TDataSet.FieldByName
 005EA278    pop        edx
 005EA279    mov        ecx,dword ptr [eax]
 005EA27B    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005EA281    mov        eax,dword ptr [esi]
 005EA283    mov        ebx,dword ptr [eax+258]; Tdm.barangdeliver:TZReadOnlyQuery
 005EA289    mov        eax,ebx
 005EA28B    call       TZReadOnlyQuery.GetSQL
 005EA290    mov        edx,5EA460; 'select * from jualdetail where jd_kode = (:jdkd) order by jd_id desc '
 005EA295    mov        ecx,dword ptr [eax]
 005EA297    call       dword ptr [ecx+2C]
 005EA29A    mov        eax,dword ptr [esi]
 005EA29C    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA2A2    mov        edx,5EA3EC; 'ju_kode'
 005EA2A7    call       TDataSet.FieldByName
 005EA2AC    lea        edx,[ebp-44]
 005EA2AF    mov        ecx,dword ptr [eax]
 005EA2B1    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA2B4    lea        eax,[ebp-44]
 005EA2B7    push       eax
 005EA2B8    mov        edx,5EA4B0; 'jdkd'
 005EA2BD    mov        eax,dword ptr [ebx+1B4]; TZReadOnlyQuery.?f1B4:TParams
 005EA2C3    call       TParams.ParamByName
 005EA2C8    pop        edx
 005EA2C9    call       TParam.SetAsVariant
 005EA2CE    mov        eax,ebx
 005EA2D0    call       TDataSet.Open
 005EA2D5    mov        eax,ebx
 005EA2D7    call       TDataSet.First
>005EA2DC    jmp        005EA39E
 005EA2E1    mov        eax,dword ptr [esi]
 005EA2E3    mov        eax,dword ptr [eax+254]; Tdm.deliverydetail:TZQuery
 005EA2E9    call       TDataSet.Append
 005EA2EE    mov        edx,5EA4C0; 'jd_kd_barang'
 005EA2F3    mov        eax,ebx
 005EA2F5    call       TDataSet.FieldByName
 005EA2FA    lea        edx,[ebp-54]
 005EA2FD    mov        ecx,dword ptr [eax]
 005EA2FF    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA302    lea        eax,[ebp-54]
 005EA305    push       eax
 005EA306    mov        eax,dword ptr [esi]
 005EA308    mov        eax,dword ptr [eax+254]; Tdm.deliverydetail:TZQuery
 005EA30E    mov        edx,5EA4D8; 'dd_kd_barang'
 005EA313    call       TDataSet.FieldByName
 005EA318    pop        edx
 005EA319    mov        ecx,dword ptr [eax]
 005EA31B    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005EA321    mov        edx,5EA4F0; 'jd_nama_barang'
 005EA326    mov        eax,ebx
 005EA328    call       TDataSet.FieldByName
 005EA32D    lea        edx,[ebp-64]
 005EA330    mov        ecx,dword ptr [eax]
 005EA332    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA335    lea        eax,[ebp-64]
 005EA338    push       eax
 005EA339    mov        eax,dword ptr [esi]
 005EA33B    mov        eax,dword ptr [eax+254]; Tdm.deliverydetail:TZQuery
 005EA341    mov        edx,5EA508; 'dd_nama_barang'
 005EA346    call       TDataSet.FieldByName
 005EA34B    pop        edx
 005EA34C    mov        ecx,dword ptr [eax]
 005EA34E    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005EA354    mov        edx,5EA520; 'jd_qty'
 005EA359    mov        eax,ebx
 005EA35B    call       TDataSet.FieldByName
 005EA360    lea        edx,[ebp-74]
 005EA363    mov        ecx,dword ptr [eax]
 005EA365    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA368    lea        eax,[ebp-74]
 005EA36B    push       eax
 005EA36C    mov        eax,dword ptr [esi]
 005EA36E    mov        eax,dword ptr [eax+254]; Tdm.deliverydetail:TZQuery
 005EA374    mov        edx,5EA530; 'dd_qty'
 005EA379    call       TDataSet.FieldByName
 005EA37E    pop        edx
 005EA37F    mov        ecx,dword ptr [eax]
 005EA381    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005EA387    mov        eax,dword ptr [esi]
 005EA389    mov        eax,dword ptr [eax+254]; Tdm.deliverydetail:TZQuery
 005EA38F    mov        edx,dword ptr [eax]
 005EA391    call       dword ptr [edx+24C]; TDataSet.Post
 005EA397    mov        eax,ebx
 005EA399    call       TDataSet.Next
 005EA39E    cmp        byte ptr [ebx+0A1],0; TZReadOnlyQuery.FEOF:Boolean
<005EA3A5    je         005EA2E1
 005EA3AB    mov        eax,dword ptr [ebp-4]
 005EA3AE    call       TCustomForm.Close
 005EA3B3    xor        eax,eax
 005EA3B5    pop        edx
 005EA3B6    pop        ecx
 005EA3B7    pop        ecx
 005EA3B8    mov        dword ptr fs:[eax],edx
 005EA3BB    push       5EA3DB
 005EA3C0    lea        eax,[ebp-74]
 005EA3C3    mov        edx,dword ptr ds:[401114]; Variant
 005EA3C9    mov        ecx,7
 005EA3CE    call       @FinalizeArray
 005EA3D3    ret
<005EA3D4    jmp        @HandleFinally
<005EA3D9    jmp        005EA3C0
 005EA3DB    pop        esi
 005EA3DC    pop        ebx
 005EA3DD    mov        esp,ebp
 005EA3DF    pop        ebp
 005EA3E0    ret
*}
//end;

//005EA538
procedure Tinvoicelistfrm.RefreshData1Click;
begin
{*
 005EA538    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA53D    mov        eax,dword ptr [eax]
 005EA53F    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA545    call       TDataSet.Refresh
 005EA54A    ret
*}
end;

//005EA54C
procedure Tinvoicelistfrm.popinvPopup;
begin
{*
 005EA54C    mov        edx,dword ptr ds:[61AF74]; ^gvar_0061F8E8
 005EA552    cmp        dword ptr [edx],1
>005EA555    jne        005EA565
 005EA557    mov        dl,1
 005EA559    mov        eax,dword ptr [eax+340]; Tinvoicelistfrm.InputData1:TMenuItem
 005EA55F    call       TMenuItem.SetVisible
 005EA564    ret
 005EA565    xor        edx,edx
 005EA567    mov        eax,dword ptr [eax+340]; Tinvoicelistfrm.InputData1:TMenuItem
 005EA56D    call       TMenuItem.SetVisible
 005EA572    ret
*}
end;

//005EA574
procedure Tinvoicelistfrm.cetakinvClick;
begin
{*
 005EA574    call       005EA02C
 005EA579    ret
*}
end;

//005EA57C
procedure Tinvoicelistfrm.InputData1Click;
begin
{*
 005EA57C    call       005EA1A0
 005EA581    ret
*}
end;

//005EA584
procedure Tinvoicelistfrm.HapusInvoice1Click;
begin
{*
 005EA584    push       ebp
 005EA585    mov        ebp,esp
 005EA587    mov        ecx,0C
 005EA58C    push       0
 005EA58E    push       0
 005EA590    dec        ecx
<005EA591    jne        005EA58C
 005EA593    push       ebx
 005EA594    push       esi
 005EA595    push       edi
 005EA596    mov        esi,eax
 005EA598    xor        eax,eax
 005EA59A    push       ebp
 005EA59B    push       5EA83C
 005EA5A0    push       dword ptr fs:[eax]
 005EA5A3    mov        dword ptr fs:[eax],esp
 005EA5A6    push       0
 005EA5A8    mov        cx,word ptr ds:[5EA84C]; 0x3
 005EA5AF    mov        dl,3
 005EA5B1    mov        eax,5EA858; 'Anda Yakin akan menghapus data ini?'
 005EA5B6    call       MessageDlg
 005EA5BB    cmp        eax,6
>005EA5BE    jne        005EA81B
 005EA5C4    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA5C9    mov        eax,dword ptr [eax]
 005EA5CB    mov        eax,dword ptr [eax+740]; Tdm.gl_hapus:TZQuery
 005EA5D1    call       005D8634
 005EA5D6    mov        al,[005EA87C]; 0x1
 005EA5DB    push       eax
 005EA5DC    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA5E1    mov        eax,dword ptr [eax]
 005EA5E3    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA5E9    mov        edx,5EA888; 'ju_kode'
 005EA5EE    call       TDataSet.FieldByName
 005EA5F3    lea        edx,[ebp-10]
 005EA5F6    mov        ecx,dword ptr [eax]
 005EA5F8    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA5FB    lea        ecx,[ebp-10]
 005EA5FE    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA603    mov        eax,dword ptr [eax]
 005EA605    mov        eax,dword ptr [eax+740]; Tdm.gl_hapus:TZQuery
 005EA60B    mov        edx,5EA898; 'gl_ref'
 005EA610    mov        ebx,dword ptr [eax]
 005EA612    call       dword ptr [ebx+244]; TZAbstractRODataset.Locate
 005EA618    cmp        al,1
>005EA61A    jne        005EA81B
 005EA620    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA625    mov        eax,dword ptr [eax]
 005EA627    mov        ebx,dword ptr [eax+740]; Tdm.gl_hapus:TZQuery
 005EA62D    mov        eax,ebx
 005EA62F    call       TDataSet.Close
 005EA634    mov        eax,ebx
 005EA636    call       TDataSet.Open
 005EA63B    mov        eax,ebx
 005EA63D    call       TZReadOnlyQuery.GetSQL
 005EA642    mov        edx,5EA8A8; 'delete  from general_ledger where gl_ref = (:ref) '
 005EA647    mov        ecx,dword ptr [eax]
 005EA649    call       dword ptr [ecx+2C]
 005EA64C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA651    mov        eax,dword ptr [eax]
 005EA653    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA659    mov        edx,5EA888; 'ju_kode'
 005EA65E    call       TDataSet.FieldByName
 005EA663    lea        edx,[ebp-20]
 005EA666    mov        ecx,dword ptr [eax]
 005EA668    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA66B    lea        eax,[ebp-20]
 005EA66E    push       eax
 005EA66F    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005EA675    mov        edx,5EA8E4; 'ref'
 005EA67A    call       TParams.ParamByName
 005EA67F    pop        edx
 005EA680    call       TParam.SetAsVariant
 005EA685    mov        eax,ebx
 005EA687    mov        edx,dword ptr [eax]
 005EA689    call       dword ptr [edx+274]; TZQuery.sub_00572D6C
 005EA68F    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA694    mov        eax,dword ptr [eax]
 005EA696    mov        ebx,dword ptr [eax+768]; Tdm.jualdetailhapus:TZQuery
 005EA69C    mov        eax,ebx
 005EA69E    call       TZReadOnlyQuery.GetSQL
 005EA6A3    mov        edx,5EA8F0; 'select * from jualdetail where jd_kode = (:kd) '
 005EA6A8    mov        ecx,dword ptr [eax]
 005EA6AA    call       dword ptr [ecx+2C]
 005EA6AD    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA6B2    mov        eax,dword ptr [eax]
 005EA6B4    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA6BA    mov        edx,5EA888; 'ju_kode'
 005EA6BF    call       TDataSet.FieldByName
 005EA6C4    lea        edx,[ebp-30]
 005EA6C7    mov        ecx,dword ptr [eax]
 005EA6C9    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA6CC    lea        eax,[ebp-30]
 005EA6CF    push       eax
 005EA6D0    mov        edx,5EA928; 'kd'
 005EA6D5    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005EA6DB    call       TParams.ParamByName
 005EA6E0    pop        edx
 005EA6E1    call       TParam.SetAsVariant
 005EA6E6    mov        eax,ebx
 005EA6E8    call       TDataSet.Open
 005EA6ED    mov        eax,ebx
 005EA6EF    call       TDataSet.Last
>005EA6F4    jmp        005EA7E3
 005EA6F9    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA6FE    mov        eax,dword ptr [eax]
 005EA700    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005EA706    call       005D8634
 005EA70B    mov        al,[005EA87C]; 0x1
 005EA710    push       eax
 005EA711    mov        edx,5EA934; 'jd_kd_barang'
 005EA716    mov        eax,ebx
 005EA718    call       TDataSet.FieldByName
 005EA71D    lea        edx,[ebp-40]
 005EA720    mov        ecx,dword ptr [eax]
 005EA722    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA725    lea        ecx,[ebp-40]
 005EA728    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA72D    mov        eax,dword ptr [eax]
 005EA72F    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005EA735    mov        edx,5EA94C; 'in_kd_barang'
 005EA73A    mov        edi,dword ptr [eax]
 005EA73C    call       dword ptr [edi+244]; TZAbstractRODataset.Locate
 005EA742    cmp        al,1
>005EA744    jne        005EA7D5
 005EA74A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA74F    mov        eax,dword ptr [eax]
 005EA751    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005EA757    call       TDataSet.Edit
 005EA75C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA761    mov        eax,dword ptr [eax]
 005EA763    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005EA769    mov        edx,5EA964; 'in_stock'
 005EA76E    call       TDataSet.FieldByName
 005EA773    lea        edx,[ebp-50]
 005EA776    mov        ecx,dword ptr [eax]
 005EA778    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA77B    lea        eax,[ebp-50]
 005EA77E    push       eax
 005EA77F    mov        edx,5EA978; 'jd_qty'
 005EA784    mov        eax,ebx
 005EA786    call       TDataSet.FieldByName
 005EA78B    lea        edx,[ebp-60]
 005EA78E    mov        ecx,dword ptr [eax]
 005EA790    call       dword ptr [ecx+64]; TField.GetAsVariant
 005EA793    lea        edx,[ebp-60]
 005EA796    pop        eax
 005EA797    call       @VarAdd
 005EA79C    lea        eax,[ebp-50]
 005EA79F    push       eax
 005EA7A0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA7A5    mov        eax,dword ptr [eax]
 005EA7A7    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005EA7AD    mov        edx,5EA964; 'in_stock'
 005EA7B2    call       TDataSet.FieldByName
 005EA7B7    pop        edx
 005EA7B8    mov        ecx,dword ptr [eax]
 005EA7BA    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005EA7C0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA7C5    mov        eax,dword ptr [eax]
 005EA7C7    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005EA7CD    mov        edx,dword ptr [eax]
 005EA7CF    call       dword ptr [edx+24C]; TDataSet.Post
 005EA7D5    mov        eax,ebx
 005EA7D7    call       TDataSet.Delete
 005EA7DC    mov        eax,esi
 005EA7DE    call       TForm.Previous
 005EA7E3    cmp        byte ptr [ebx+0A0],0; TZQuery.FBOF:Boolean
<005EA7EA    je         005EA6F9
 005EA7F0    mov        eax,ebx
 005EA7F2    call       0056F648
 005EA7F7    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA7FC    mov        eax,dword ptr [eax]
 005EA7FE    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA804    call       TDataSet.Delete
 005EA809    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA80E    mov        eax,dword ptr [eax]
 005EA810    mov        eax,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA816    call       0056F648
 005EA81B    xor        eax,eax
 005EA81D    pop        edx
 005EA81E    pop        ecx
 005EA81F    pop        ecx
 005EA820    mov        dword ptr fs:[eax],edx
 005EA823    push       5EA843
 005EA828    lea        eax,[ebp-60]
 005EA82B    mov        edx,dword ptr ds:[401114]; Variant
 005EA831    mov        ecx,6
 005EA836    call       @FinalizeArray
 005EA83B    ret
<005EA83C    jmp        @HandleFinally
<005EA841    jmp        005EA828
 005EA843    pop        edi
 005EA844    pop        esi
 005EA845    pop        ebx
 005EA846    mov        esp,ebp
 005EA848    pop        ebp
 005EA849    ret
*}
end;

//005EA980
procedure Tinvoicelistfrm.FakturPajak1Click;
begin
{*
 005EA980    call       005E9E14
 005EA985    ret
*}
end;

//005EA988
procedure Tinvoicelistfrm.cariChange;
begin
{*
 005EA988    push       ebp
 005EA989    mov        ebp,esp
 005EA98B    xor        ecx,ecx
 005EA98D    push       ecx
 005EA98E    push       ecx
 005EA98F    push       ecx
 005EA990    push       ecx
 005EA991    push       ecx
 005EA992    push       ecx
 005EA993    push       ebx
 005EA994    push       esi
 005EA995    mov        esi,eax
 005EA997    xor        eax,eax
 005EA999    push       ebp
 005EA99A    push       5EAA3D
 005EA99F    push       dword ptr fs:[eax]
 005EA9A2    mov        dword ptr fs:[eax],esp
 005EA9A5    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EA9AA    mov        eax,dword ptr [eax]
 005EA9AC    mov        ebx,dword ptr [eax+1F8]; Tdm.invoice:TZQuery
 005EA9B2    mov        eax,ebx
 005EA9B4    call       TZReadOnlyQuery.GetSQL
 005EA9B9    mov        edx,5EAA54; 'select * from jual where ju_kode like (:kd) or ju_po like (:kd) '
 005EA9BE    mov        ecx,dword ptr [eax]
 005EA9C0    call       dword ptr [ecx+2C]
 005EA9C3    push       5EAAA0; '%'
 005EA9C8    lea        edx,[ebp-18]
 005EA9CB    mov        eax,dword ptr [esi+310]; Tinvoicelistfrm.cari:TEdit
 005EA9D1    call       TControl.GetText
 005EA9D6    push       dword ptr [ebp-18]
 005EA9D9    push       5EAAA0; '%'
 005EA9DE    lea        eax,[ebp-14]
 005EA9E1    mov        edx,3
 005EA9E6    call       @LStrCatN
 005EA9EB    mov        edx,dword ptr [ebp-14]
 005EA9EE    lea        eax,[ebp-10]
 005EA9F1    call       @VarFromLStr
 005EA9F6    lea        eax,[ebp-10]
 005EA9F9    push       eax
 005EA9FA    mov        edx,5EAAAC; 'kd'
 005EA9FF    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005EAA05    call       TParams.ParamByName
 005EAA0A    pop        edx
 005EAA0B    call       TParam.SetAsVariant
 005EAA10    mov        eax,ebx
 005EAA12    call       TDataSet.Open
 005EAA17    xor        eax,eax
 005EAA19    pop        edx
 005EAA1A    pop        ecx
 005EAA1B    pop        ecx
 005EAA1C    mov        dword ptr fs:[eax],edx
 005EAA1F    push       5EAA44
 005EAA24    lea        eax,[ebp-18]
 005EAA27    call       @LStrClr
 005EAA2C    lea        eax,[ebp-14]
 005EAA2F    call       @LStrClr
 005EAA34    lea        eax,[ebp-10]
 005EAA37    call       @VarClr
 005EAA3C    ret
<005EAA3D    jmp        @HandleFinally
<005EAA42    jmp        005EAA24
 005EAA44    pop        esi
 005EAA45    pop        ebx
 005EAA46    mov        esp,ebp
 005EAA48    pop        ebp
 005EAA49    ret
*}
end;

end.