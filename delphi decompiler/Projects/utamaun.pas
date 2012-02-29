{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit utamaun;

interface

uses
  Classes, Windows, Graphics, Forms, Menus, ExtCtrls, ComCtrls, StdCtrls;

type
  Tutamafrm = class(TForm)
    utamamn:TMainMenu;//f2F8
    File1:TMenuItem;//f2FC
    UserSettings1:TMenuItem;//f300
    GantiPassword1:TMenuItem;//f304
    Exit1:TMenuItem;//f308
    Panel1:TPanel;//f30C
    Panel2:TPanel;//f310
    Panel3:TPanel;//f314
    StatusBar1:TStatusBar;//f318
    Master2:TMenuItem;//f31C
    Barang2:TMenuItem;//f320
    Supplier2:TMenuItem;//f324
    Kategori1:TMenuItem;//f328
    Label1:TLabel;//f32C
    Customer1:TMenuItem;//f330
    Pembelian1:TMenuItem;//f334
    Vendor1:TMenuItem;//f338
    N1:TMenuItem;//f33C
    Langsung1:TMenuItem;//f340
    Penjualan1:TMenuItem;//f344
    Ritel1:TMenuItem;//f348
    N2:TMenuItem;//f34C
    Gudang1:TMenuItem;//f350
    N3:TMenuItem;//f354
    N4:TMenuItem;//f358
    Inventory1:TMenuItem;//f35C
    StockBarang1:TMenuItem;//f360
    ListInvoice1:TMenuItem;//f364
    N6:TMenuItem;//f368
    PengirimanBarang1:TMenuItem;//f36C
    N7:TMenuItem;//f370
    BarangMasuk1:TMenuItem;//f374
    Keuangan1:TMenuItem;//f378
    DaftarAkun1:TMenuItem;//f37C
    Neraca1:TMenuItem;//f380
    N5:TMenuItem;//f384
    Langsung2:TMenuItem;//f388
    N8:TMenuItem;//f38C
    Penawaran1:TMenuItem;//f390
    N9:TMenuItem;//f394
    Project1:TMenuItem;//f398
    N10:TMenuItem;//f39C
    FootnoteQuotation1:TMenuItem;//f3A0
    LabaRugi1:TMenuItem;//f3A4
    GeneralLedgerBukuBesar1:TMenuItem;//f3A8
    Payroll1:TMenuItem;//f3AC
    MasterKaryawan1:TMenuItem;//f3B0
    MasterPekerjaan1:TMenuItem;//f3B4
    N11:TMenuItem;//f3B8
    InputPenggajian1:TMenuItem;//f3BC
    MasterLevelGaji1:TMenuItem;//f3C0
    MasterPTKP1:TMenuItem;//f3C4
    MasterDepartemen1:TMenuItem;//f3C8
    MasterBank1:TMenuItem;//f3CC
    arifPph211:TMenuItem;//f3D0
    N12:TMenuItem;//f3D4
    N13:TMenuItem;//f3D8
    N14:TMenuItem;//f3DC
    MasterPenambahGaji1:TMenuItem;//f3E0
    MasterPengurangGaji1:TMenuItem;//f3E4
    LaporanPenggajian1:TMenuItem;//f3E8
    N15:TMenuItem;//f3EC
    N16:TMenuItem;//f3F0
    EntryJurnalUmum1:TMenuItem;//f3F4
    N17:TMenuItem;//f3F8
    ListDeliveryOrder1:TMenuItem;//f3FC
    procedure Exit1Click;
    procedure GroupSettings1Click;
    procedure UserSettings1Click;
    procedure GantiPassword1Click;
    procedure Barang2Click;
    procedure Kategori1Click;
    procedure Supplier2Click;
    procedure Customer1Click;
    procedure Vendor1Click;
    procedure Langsung1Click;
    procedure Ritel1Click;
    procedure Gudang1Click;
    procedure StockBarang1Click;
    procedure ListInvoice1Click;
    procedure BarangMasuk1Click;
    procedure PengirimanBarang1Click;
    procedure DaftarAkun1Click;
    procedure Neraca1Click;
    procedure Langsung2Click;
    procedure Project1Click;
    procedure Penawaran1Click;
    procedure FootnoteQuotation1Click;
    procedure LabaRugi1Click;
    procedure GeneralLedgerBukuBesar1Click;
    procedure MasterKaryawan1Click;
    procedure MasterPekerjaan1Click;
    procedure MasterLevelGaji1Click;
    procedure MasterPTKP1Click;
    procedure MasterDepartemen1Click;
    procedure MasterBank1Click;
    procedure arifPph211Click;
    procedure FormClose;
    procedure InputPenggajian1Click;
    procedure MasterPenambahGaji1Click;
    procedure MasterPengurangGaji1Click;
    procedure LaporanPenggajian1Click;
    procedure EntryJurnalUmum1Click;
    procedure ListDeliveryOrder1Click;
  end;

implementation

{$R *.DFM}

//00612448
procedure Tutamafrm.Exit1Click;
begin
{*
 00612448    push       0
 0061244A    mov        cx,word ptr ds:[612470]; 0x3
 00612451    mov        dl,3
 00612453    mov        eax,61247C; 'Keluar dari mERP?'
 00612458    call       MessageDlg
 0061245D    cmp        eax,6
>00612460    jne        0061246E
 00612462    mov        eax,[0061BD04]; ^Application:TApplication
 00612467    mov        eax,dword ptr [eax]
 00612469    call       TApplication.Terminate
 0061246E    ret
*}
end;

//00612490
procedure Tutamafrm.GroupSettings1Click;
begin
{*
 00612490    mov        eax,[0061C400]; ^gvar_0061DCA8:Tgroupfrm
 00612495    cmp        dword ptr [eax],0
>00612498    jne        006124BF
 0061249A    mov        ecx,dword ptr ds:[61C400]; ^gvar_0061DCA8:Tgroupfrm
 006124A0    mov        eax,[0061BD04]; ^Application:TApplication
 006124A5    mov        eax,dword ptr [eax]
 006124A7    mov        edx,dword ptr ds:[4BC264]; Tgroupfrm
 006124AD    call       TApplication.CreateForm
 006124B2    mov        eax,[0061C400]; ^gvar_0061DCA8:Tgroupfrm
 006124B7    mov        eax,dword ptr [eax]
 006124B9    call       TCustomForm.Show
 006124BE    ret
 006124BF    mov        eax,[0061C400]; ^gvar_0061DCA8:Tgroupfrm
 006124C4    mov        eax,dword ptr [eax]
 006124C6    call       TCustomForm.Show
 006124CB    ret
*}
end;

//006124CC
procedure Tutamafrm.UserSettings1Click;
begin
{*
 006124CC    mov        eax,[0061B648]; ^gvar_0061F988:Tuserlistfrm
 006124D1    cmp        dword ptr [eax],0
>006124D4    jne        006124FB
 006124D6    mov        ecx,dword ptr ds:[61B648]; ^gvar_0061F988:Tuserlistfrm
 006124DC    mov        eax,[0061BD04]; ^Application:TApplication
 006124E1    mov        eax,dword ptr [eax]
 006124E3    mov        edx,dword ptr ds:[5E23A4]; Tuserlistfrm
 006124E9    call       TApplication.CreateForm
 006124EE    mov        eax,[0061B648]; ^gvar_0061F988:Tuserlistfrm
 006124F3    mov        eax,dword ptr [eax]
 006124F5    call       TCustomForm.Show
 006124FA    ret
 006124FB    mov        eax,[0061B648]; ^gvar_0061F988:Tuserlistfrm
 00612500    mov        eax,dword ptr [eax]
 00612502    call       TCustomForm.Show
 00612507    ret
*}
end;

//00612508
procedure Tutamafrm.GantiPassword1Click;
begin
{*
 00612508    mov        eax,[0061B6BC]; ^gvar_0061F990:Tpasschangefrm
 0061250D    cmp        dword ptr [eax],0
>00612510    jne        0061253A
 00612512    mov        ecx,dword ptr ds:[61B6BC]; ^gvar_0061F990:Tpasschangefrm
 00612518    mov        eax,[0061BD04]; ^Application:TApplication
 0061251D    mov        eax,dword ptr [eax]
 0061251F    mov        edx,dword ptr ds:[5E28F8]; Tpasschangefrm
 00612525    call       TApplication.CreateForm
 0061252A    mov        eax,[0061B6BC]; ^gvar_0061F990:Tpasschangefrm
 0061252F    mov        eax,dword ptr [eax]
 00612531    mov        edx,dword ptr [eax]
 00612533    call       dword ptr [edx+0EC]; TCustomForm.ShowModal
 00612539    ret
 0061253A    mov        eax,[0061B6BC]; ^gvar_0061F990:Tpasschangefrm
 0061253F    mov        eax,dword ptr [eax]
 00612541    mov        edx,dword ptr [eax]
 00612543    call       dword ptr [edx+0EC]; TCustomForm.ShowModal
 00612549    ret
*}
end;

//0061254C
procedure Tutamafrm.Barang2Click;
begin
{*
 0061254C    mov        eax,[0061BB10]; ^gvar_0061F9B0:Tbarangmstrfrm
 00612551    cmp        dword ptr [eax],0
>00612554    jne        0061257E
 00612556    mov        ecx,dword ptr ds:[61BB10]; ^gvar_0061F9B0:Tbarangmstrfrm
 0061255C    mov        eax,[0061BD04]; ^Application:TApplication
 00612561    mov        eax,dword ptr [eax]
 00612563    mov        edx,dword ptr ds:[5E3BA4]; Tbarangmstrfrm
 00612569    call       TApplication.CreateForm
 0061256E    mov        eax,[0061BB10]; ^gvar_0061F9B0:Tbarangmstrfrm
 00612573    mov        eax,dword ptr [eax]
 00612575    mov        edx,dword ptr [eax]
 00612577    call       dword ptr [edx+0EC]; TCustomForm.ShowModal
 0061257D    ret
 0061257E    mov        eax,[0061BB10]; ^gvar_0061F9B0:Tbarangmstrfrm
 00612583    mov        eax,dword ptr [eax]
 00612585    mov        edx,dword ptr [eax]
 00612587    call       dword ptr [edx+0EC]; TCustomForm.ShowModal
 0061258D    ret
*}
end;

//00612590
procedure Tutamafrm.Kategori1Click;
begin
{*
 00612590    mov        eax,[0061B468]
 00612595    mov        eax,dword ptr [eax]
 00612597    mov        edx,dword ptr ds:[5E31C8]; Tkategorifrm
 0061259D    call       005D859C
 006125A2    ret
*}
end;

//006125A4
procedure Tutamafrm.Supplier2Click;
begin
{*
 006125A4    mov        eax,[0061B6B8]
 006125A9    mov        eax,dword ptr [eax]
 006125AB    mov        edx,dword ptr ds:[5D98F8]; Tsupplierfrm
 006125B1    call       005D859C
 006125B6    ret
*}
end;

//006125B8
procedure Tutamafrm.Customer1Click;
begin
{*
 006125B8    mov        eax,[0061BB7C]
 006125BD    mov        eax,dword ptr [eax]
 006125BF    mov        edx,dword ptr ds:[5E4B20]; Tcustomerfrm
 006125C5    call       005D859C
 006125CA    ret
*}
end;

//006125CC
procedure Tutamafrm.Vendor1Click;
begin
{*
 006125CC    mov        eax,[0061BF04]; ^gvar_0061F8EC
 006125D1    xor        edx,edx
 006125D3    mov        dword ptr [eax],edx
 006125D5    mov        eax,[0061B348]
 006125DA    mov        eax,dword ptr [eax]
 006125DC    mov        edx,dword ptr ds:[5DB808]; Tbelisupfrm
 006125E2    call       005D859C
 006125E7    ret
*}
end;

//006125E8
procedure Tutamafrm.Langsung1Click;
begin
{*
 006125E8    mov        eax,[0061BF30]
 006125ED    mov        eax,dword ptr [eax]
 006125EF    mov        edx,dword ptr ds:[5E5CE8]; Tpolistfrm
 006125F5    call       005D859C
 006125FA    ret
*}
end;

//006125FC
procedure Tutamafrm.Ritel1Click;
begin
{*
 006125FC    mov        eax,[0061AF24]
 00612601    mov        eax,dword ptr [eax]
 00612603    mov        edx,dword ptr ds:[5E71F8]; Tjualfrm
 00612609    call       005D859C
 0061260E    ret
*}
end;

//00612610
procedure Tutamafrm.Gudang1Click;
begin
{*
 00612610    mov        eax,[0061C2AC]
 00612615    mov        eax,dword ptr [eax]
 00612617    mov        edx,dword ptr ds:[5E9204]; Tgudangfrm
 0061261D    call       005D859C
 00612622    ret
*}
end;

//00612624
procedure Tutamafrm.StockBarang1Click;
begin
{*
 00612624    mov        eax,[0061BEE0]
 00612629    mov        eax,dword ptr [eax]
 0061262B    mov        edx,dword ptr ds:[5E94E4]; Tinventoryfrm
 00612631    call       005D859C
 00612636    ret
*}
end;

//00612638
procedure Tutamafrm.ListInvoice1Click;
begin
{*
 00612638    mov        eax,[0061BC7C]
 0061263D    mov        eax,dword ptr [eax]
 0061263F    mov        edx,dword ptr ds:[5E99DC]; Tinvoicelistfrm
 00612645    call       005D859C
 0061264A    ret
*}
end;

//0061264C
procedure Tutamafrm.BarangMasuk1Click;
begin
{*
 0061264C    mov        eax,[0061B41C]; ^gvar_0061F8E4
 00612651    mov        dword ptr [eax],1
 00612657    mov        eax,[0061BF30]
 0061265C    mov        eax,dword ptr [eax]
 0061265E    mov        edx,dword ptr ds:[5E5CE8]; Tpolistfrm
 00612664    call       005D859C
 00612669    ret
*}
end;

//0061266C
procedure Tutamafrm.PengirimanBarang1Click;
begin
{*
 0061266C    mov        eax,[0061B960]
 00612671    mov        eax,dword ptr [eax]
 00612673    mov        edx,dword ptr ds:[5EAAE8]; Tdeliveryfrm
 00612679    call       005D859C
 0061267E    ret
*}
end;

//00612680
procedure Tutamafrm.DaftarAkun1Click;
begin
{*
 00612680    mov        eax,[0061C0A4]
 00612685    mov        eax,dword ptr [eax]
 00612687    mov        edx,dword ptr ds:[5EB3D8]; Takunfrm
 0061268D    call       005D859C
 00612692    ret
*}
end;

//00612694
procedure Tutamafrm.Neraca1Click;
begin
{*
 00612694    mov        eax,[0061B504]
 00612699    mov        eax,dword ptr [eax]
 0061269B    mov        edx,dword ptr ds:[607438]; Tneracafrm
 006126A1    call       005D859C
 006126A6    ret
*}
end;

//006126A8
procedure Tutamafrm.Langsung2Click;
begin
{*
 006126A8    mov        eax,[0061BF04]; ^gvar_0061F8EC
 006126AD    mov        dword ptr [eax],1
 006126B3    mov        eax,[0061B348]
 006126B8    mov        eax,dword ptr [eax]
 006126BA    mov        edx,dword ptr ds:[5DB808]; Tbelisupfrm
 006126C0    call       005D859C
 006126C5    ret
*}
end;

//006126C8
procedure Tutamafrm.Project1Click;
begin
{*
 006126C8    mov        eax,[0061BF34]
 006126CD    mov        eax,dword ptr [eax]
 006126CF    mov        edx,dword ptr ds:[5DB4D8]; Tprojectfrm
 006126D5    call       005D859C
 006126DA    ret
*}
end;

//006126DC
procedure Tutamafrm.Penawaran1Click;
begin
{*
 006126DC    mov        eax,[0061BCD8]; ^gvar_0061F8F4
 006126E1    mov        dword ptr [eax],1
 006126E7    mov        eax,[0061AFB0]
 006126EC    mov        eax,dword ptr [eax]
 006126EE    mov        edx,dword ptr ds:[607F7C]; Tpenawaranfrm
 006126F4    call       005D859C
 006126F9    ret
*}
end;

//006126FC
procedure Tutamafrm.FootnoteQuotation1Click;
begin
{*
 006126FC    mov        eax,[0061B0C0]
 00612701    mov        eax,dword ptr [eax]
 00612703    mov        edx,dword ptr ds:[608A60]; Tfootnote_globalfrm
 00612709    call       005D859C
 0061270E    ret
*}
end;

//00612710
procedure Tutamafrm.LabaRugi1Click;
begin
{*
 00612710    mov        eax,[0061C468]
 00612715    mov        eax,dword ptr [eax]
 00612717    mov        edx,dword ptr ds:[608CA0]; Tlabarugifrm
 0061271D    call       005D859C
 00612722    ret
*}
end;

//00612724
procedure Tutamafrm.GeneralLedgerBukuBesar1Click;
begin
{*
 00612724    mov        eax,[0061BAF0]
 00612729    mov        eax,dword ptr [eax]
 0061272B    mov        edx,dword ptr ds:[60906C]; Tglfrm
 00612731    call       005D859C
 00612736    ret
*}
end;

//00612738
procedure Tutamafrm.MasterKaryawan1Click;
begin
{*
 00612738    mov        eax,[0061B154]
 0061273D    mov        eax,dword ptr [eax]
 0061273F    mov        edx,dword ptr ds:[60D504]; Tkaryawanfrm
 00612745    call       005D859C
 0061274A    ret
*}
end;

//0061274C
procedure Tutamafrm.MasterPekerjaan1Click;
begin
{*
 0061274C    mov        eax,[0061B35C]
 00612751    mov        eax,dword ptr [eax]
 00612753    mov        edx,dword ptr ds:[609718]; Tjobdesfrm
 00612759    call       005D859C
 0061275E    ret
*}
end;

//00612760
procedure Tutamafrm.MasterLevelGaji1Click;
begin
{*
 00612760    mov        eax,[0061B53C]
 00612765    mov        eax,dword ptr [eax]
 00612767    mov        edx,dword ptr ds:[60B22C]; Tsalarylevelfrm
 0061276D    call       005D859C
 00612772    ret
*}
end;

//00612774
procedure Tutamafrm.MasterPTKP1Click;
begin
{*
 00612774    mov        eax,[0061C118]
 00612779    mov        eax,dword ptr [eax]
 0061277B    mov        edx,dword ptr ds:[60C150]; Tptkpfrm
 00612781    call       005D859C
 00612786    ret
*}
end;

//00612788
procedure Tutamafrm.MasterDepartemen1Click;
begin
{*
 00612788    mov        eax,[0061B320]
 0061278D    mov        eax,dword ptr [eax]
 0061278F    mov        edx,dword ptr ds:[60C798]; Tdeptfrm
 00612795    call       005D859C
 0061279A    ret
*}
end;

//0061279C
procedure Tutamafrm.MasterBank1Click;
begin
{*
 0061279C    mov        eax,[0061BEAC]
 006127A1    mov        eax,dword ptr [eax]
 006127A3    mov        edx,dword ptr ds:[60BAA8]; Tbankfrm
 006127A9    call       005D859C
 006127AE    ret
*}
end;

//006127B0
procedure Tutamafrm.arifPph211Click;
begin
{*
 006127B0    mov        eax,[0061B918]
 006127B5    mov        eax,dword ptr [eax]
 006127B7    mov        edx,dword ptr ds:[60DDD4]; Tpphfrm
 006127BD    call       005D859C
 006127C2    ret
*}
end;

//006127C4
procedure Tutamafrm.FormClose;
begin
{*
 006127C4    push       0
 006127C6    mov        cx,word ptr ds:[6127F4]; 0x3
 006127CD    mov        dl,3
 006127CF    mov        eax,612800; 'Yakin keluar dari mERP ?'
 006127D4    call       MessageDlg
 006127D9    cmp        eax,6
>006127DC    jne        006127EB
 006127DE    mov        eax,[0061BD04]; ^Application:TApplication
 006127E3    mov        eax,dword ptr [eax]
 006127E5    call       TApplication.Terminate
 006127EA    ret
 006127EB    call       Abort
 006127F0    ret
*}
end;

//0061281C
procedure Tutamafrm.InputPenggajian1Click;
begin
{*
 0061281C    mov        eax,[0061B7E0]
 00612821    mov        eax,dword ptr [eax]
 00612823    mov        edx,dword ptr ds:[60F7A4]; Tsalaryinputfrm
 00612829    call       005D859C
 0061282E    ret
*}
end;

//00612830
procedure Tutamafrm.MasterPenambahGaji1Click;
begin
{*
 00612830    mov        eax,[0061C458]
 00612835    mov        eax,dword ptr [eax]
 00612837    mov        edx,dword ptr ds:[609ED4]; Tsalaryleveltambahfrm
 0061283D    call       005D859C
 00612842    ret
*}
end;

//00612844
procedure Tutamafrm.MasterPengurangGaji1Click;
begin
{*
 00612844    mov        eax,[0061BCBC]
 00612849    mov        eax,dword ptr [eax]
 0061284B    mov        edx,dword ptr ds:[60A73C]; Tpenguranggajifrm
 00612851    call       005D859C
 00612856    ret
*}
end;

//00612858
procedure Tutamafrm.LaporanPenggajian1Click;
begin
{*
 00612858    mov        eax,[0061B834]
 0061285D    mov        eax,dword ptr [eax]
 0061285F    mov        edx,dword ptr ds:[60FFE4]; Tsalaryrptfrm
 00612865    call       005D859C
 0061286A    ret
*}
end;

//0061286C
procedure Tutamafrm.EntryJurnalUmum1Click;
begin
{*
 0061286C    mov        eax,[0061BB78]
 00612871    mov        eax,dword ptr [eax]
 00612873    mov        edx,dword ptr ds:[610AB0]; Tjurnalumumfrm
 00612879    call       005D859C
 0061287E    ret
*}
end;

//00612880
procedure Tutamafrm.ListDeliveryOrder1Click;
begin
{*
 00612880    mov        eax,[0061C038]; ^gvar_0061FB98:Tdolistfrm
 00612885    mov        eax,dword ptr [eax]
 00612887    mov        edx,dword ptr ds:[6113F0]; Tdolistfrm
 0061288D    call       005D859C
 00612892    ret
*}
end;

end.