unit jualun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls,
  ComCtrls;

type
  Tjualfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Panel4: TPanel;
    pnheader: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton6: TSpeedButton;
    Label4: TLabel;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    notrans: TDBEdit;
    lookcust: TDBLookupComboBox;
    lookpic: TDBLookupComboBox;
    dbtgl: TDBEdit;
    Panel3: TPanel;
    btntambah: TSpeedButton;
    btnsimpan: TSpeedButton;
    btnbatal: TSpeedButton;
    gridjual: TDBGrid;
    dbcash: TDBComboBox;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    tgl: TDateTimePicker;
    Label9: TLabel;
    lookproj: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    Label10: TLabel;
    Button1: TButton;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    procedure gridjualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btntambahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lookcustClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure tglChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure generatePO;
    procedure hitungTotal;
    procedure kurangiStock;
    procedure fakturpajak;
    procedure generateTrans;
  public
    { Public declarations }
  end;

var
  jualfrm    : Tjualfrm;
  total      : double;
  hpp        : double;
  totalntax  : double;
  tax        : double;
  nofaktur   : string;

implementation
uses dmun,fungsi_merp,db, inventoryviewun,strutils, projectun;
{$R *.dfm}

procedure Tjualfrm.generateTrans;
var inctrans : integer;
begin
   with dm.jualref do
   begin
      sql.Text := 'SELECT * FROM jual ORDER BY ju_id DESC LIMIT 1';
      open;
      inctrans := strToInt(RightStr(fieldbyname('ju_kode').Value,10))+1;    
   end;

   dm.jual.Append;
   notrans.Text := 'JL'+format('%10.10d',[inctrans]);
   dm.jual.Post;
   dm.jualdetail.Append;
end;

procedure Tjualfrm.fakturpajak;
var fpdb     : string;
    noseri   : integer;


begin
   with dm.fakturpajak do
   begin
      sql.Text := 'select * from fakturpajak order by fp_id desc limit 1 ';
      open;
      fpdb   := fieldbyname('fp_kode').Value;
      noseri := strToInt(RightStr(fpdb,8))+1;



      nofaktur := '010.000-'+formatdatetime('YY',date)+'.'+format('%8.8d',[noseri]) ;
      append;
      fieldbyname('fp_kode').Value    := nofaktur;
      fieldbyname('fp_cust_id').Value := lookcust.KeyValue;
      fieldbyname('fp_ref').Value     := notrans.Text;
      fieldbyname('fp_date').Value    := date;
      post;
      applyupdates;
   end;
 
end;

procedure Tjualfrm.kurangiStock;
begin
   fakturpajak;  // generate faktur pajak
   with dm.jualdetail do
   begin
     first;
     while not eof do
     begin
     // input ke faktur pajak detail utk perhitungan pajak
     dm.fakturpajakdetail.Append;
     dm.fakturpajakdetail.FieldByName('fd_kode').Value             := nofaktur;
     dm.fakturpajakdetail.FieldByName('fd_kd_barang').Value        := fieldbyname('jd_kd_barang').Value;
     dm.fakturpajakdetail.FieldByName('fd_nama_barang').Value      := fieldbyname('jd_nama_barang').Value;
     dm.fakturpajakdetail.FieldByName('fd_qty').Value              := fieldbyname('jd_qty').Value;
     dm.fakturpajakdetail.FieldByName('fd_harga').Value            := fieldbyname('jd_harga_jual').Value;
     dm.fakturpajakdetail.FieldByName('fd_row_total').Value        := fieldbyname('jd_total').Value;
     dm.fakturpajakdetail.Post;
     dm.fakturpajakdetail.ApplyUpdates;
     
     aktifkandata(dm.inventoryref);
     if dm.inventoryref.Locate('in_kd_barang',fieldbyName('jd_kd_barang').Value,[loCaseInsensitive])= true then
     begin
       dm.inventoryref.Edit;
       dm.inventoryref.FieldByName('in_stock').Value := dm.inventoryref.FieldByName('in_stock').Value-fieldbyname('jd_qty').Value;
       dm.inventoryref.Post;
       dm.inventoryref.ApplyUpdates;
     end; // end of if
     next;
     end; //end of while
   end;
end;

procedure Tjualfrm.hitungTotal;

begin
 total:=0;
 tax :=0;
  with dm.jualdetail do
  begin
    first;
    while not eof do
    begin
     total := total+fieldbyname('jd_total').Value;
     hpp   := hpp+fieldbyname('jd_harga_pokok').Value;
    next;
    end;
    tax := (total*10/100);
  end;

  totalntax := total+tax;
  // post ke gl
  with dm.general_ledger do
  begin
  open;
  if dbcash.ItemIndex = 0 THEN
  BEGIN
   //jika penjualan bernilai cash
   append;
   fieldbyname('gl_amount').Value := totalntax;  // posting utk kas
   fieldbyname('gl_debet').Value := totalntax;  // kas bertambah di debet
   fieldbyname('gl_akun').Value  := '110-20';
   fieldbyname('gl_tgl').Value   := date;
   fieldbyname('gl_ref').Value   := notrans.Text;
   fieldbyname('gl_desc').Value := 'Penjualan,'+lookcust.Text;
   post;

  END ELSE
  BEGIN
   //jika penjualan bernilai piutang
    append;
   fieldbyname('gl_amount').Value := totalntax;  // posting utk piutang
   fieldbyname('gl_debet').Value := totalntax;  // piutang bertambah di debet
   fieldbyname('gl_akun').Value  := '130-20';
   fieldbyname('gl_tgl').Value   := date;
   fieldbyname('gl_ref').Value   := notrans.Text;
   fieldbyname('gl_desc').Value := 'Penjualan,'+lookcust.Text;
   post;

 END; // end of dbcashitemindex

   //posting ke persediaan kurangkan nilai persediaan sejumlah barang yang terjual
   append;
   fieldbyname('gl_amount').Value := hpp*-1;  // posting persediaan agar bernilai negatif alias persediaan berkurang
   fieldbyname('gl_kredit').Value := hpp;  // harta berkurang di kredit
   fieldbyname('gl_akun').Value  := '140-10';    // penyesuaian persediaan
   fieldbyname('gl_tgl').Value   := date;
   fieldbyname('gl_ref').Value   := notrans.Text;
   fieldbyname('gl_desc').Value := 'Penyesuaian Persediaan pada '+notrans.Text;
   post;

     // posting ke hutang pajak penjualan
   append;
   fieldbyname('gl_amount').Value := tax;  // posting nilai ke akun hutang pajak penjualan
   fieldbyname('gl_kredit').Value := tax;  // harta berkurang di kredit
   fieldbyname('gl_akun').Value  := '210-80';    // hutang pajak penjualan
   fieldbyname('gl_tgl').Value   := date;
   fieldbyname('gl_ref').Value   := notrans.Text;
   fieldbyname('gl_desc').Value := 'Penjualan,'+lookcust.Text;
   post;

   // posting ke akun penjualan produk
   append;
   fieldbyname('gl_amount').Value := total;  // posting nilai ke akun penjualan produk - tanpa nilai pajak
   fieldbyname('gl_kredit').Value := total;  // pendapatan bertambah di kredit
   fieldbyname('gl_akun').Value  := '410-10';    // akun penjualan produk
   fieldbyname('gl_tgl').Value   := date;
   fieldbyname('gl_ref').Value   := notrans.Text;
   fieldbyname('gl_desc').Value := 'Penjualan,'+lookcust.Text;
   post;

   // posting ke akun biaya
   append;
   fieldbyname('gl_amount').Value := hpp;  // posting nilai ke akun penjualan produk
   fieldbyname('gl_debet').Value := hpp;  // biaya/beban bertambah di debet
   fieldbyname('gl_akun').Value  := '510-10';    // akun biaya
   fieldbyname('gl_tgl').Value   := date;
   fieldbyname('gl_ref').Value   := notrans.Text;
   fieldbyname('gl_desc').Value := 'Penjualan,'+lookcust.Text;
   post;

   applyupdates;
   end; // end of dm general ledger

end;

procedure Tjualfrm.generatePO;
var getNo                 : integer;
    dbpo                  : string;
    getMonth              : integer;
    getMonthdb            : integer;
    noPO                  : string;
    zerofill,getYear      : string;
    getyeardb             : string;
    finalmonth            : string;
begin
   getMonth := strToInt(AnsiMidStr(dateToStr(date),4,2)); //ambil digit bulan dan jadikan integer utk membandingkan bulan saat ini dgn bln pd dbase
   getYear  :=RightStr(DateToStr(date),4);
   with dm.jual do
   begin
      sql.Text := 'SELECT * FROM jual ORDER BY ju_id DESC LIMIT 1';
      open;
      dbpo       := fieldbyname('ju_kode').Value;
      getMonthdb := StrToInt(AnsiMidStr(fieldbyname('ju_kode').Value,11,2));  //ambil digit bulan dari database untuk ditampilkan
      getyeardb  := rightStr(dbpo,4);
      getNo      := StrToInt(LeftStr(dbpo,3))+1;
   end;

    case Length(intToStr(getNo))of
    1 :  zerofill := '00';
    2 :  zerofill := '0';
    3 :  zerofill := '';
    end;

      if length(intToStr(getmonth))=1 then
       begin
          finalmonth := '0'+intToStr(getmonth);
       end else
       begin
          finalmonth := intToStr(getmonth);
       end;

    if (getyear <> getyeardb) then
    begin
      noPO := '001/SV/IN/01/'+getYear;
    end else
    if (getmonth <> getmonthdb)  then   // bandingkan apakah bulan database tidak sama dgn bulan di tanggal system
    begin
       //showmessage('bulan di db tdk sama dgn sistem');

       
       noPO := '001'+'/'+'SV/IN/'+finalmonth+'/'+getYear;     // jika tdk sama maka sistem menganggap bulan baru
    end else if (getmonth = getmonthdb) then
    begin
      noPO := zerofill+intToStr(getNo)+'/'+'SV/IN/'+finalMonth+'/'+getYear;  // jika sama maka
    end;

    dm.jual.Append;
    dm.jualdetail.Append;
    dbtgl.Text   := dateToStr(date);
    notrans.Text      := noPO;
    dm.jual.Post;
end;

procedure Tjualfrm.gridjualKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
   aktifkanform(inventoryviewfrm,TInventoryviewfrm);
 end;
 if key=vk_delete then
 begin
   hapus(dm.jualdetail);
 end;
end;

procedure Tjualfrm.btntambahClick(Sender: TObject);
begin
  pnheader.Enabled := true;
  gridjual.Enabled := true;
   btnsimpan.Visible := true;
  btnbatal.Visible  := true;
  dbtgl.Enabled := false;
  generateTrans;
end;

procedure Tjualfrm.FormCreate(Sender: TObject);
begin
 //ini untuk mengaktifkan database
 aktifkandata(dm.fakturpajak);
 aktifkandata(dm.fakturpajakdetail);
 aktifkandata(dm.jual);
 aktifkandata(dm.jualdetail);
 aktifkandata(dm.customer);
 aktifkandata(dm.custpic);
 aktifkandata(dm.project);
 tgl.Date := date;
end;

procedure Tjualfrm.lookcustClick(Sender: TObject);
begin
  with dm.custpic do
  begin
    sql.Text := 'select * from custpic where cp_custid = (:id ) ';
    params.ParamByName('id').Value := lookcust.KeyValue;
    open;
  end;
end;

procedure Tjualfrm.btnsimpanClick(Sender: TObject);
begin
  if dbcash.ItemIndex = -1 then
  begin
    messagedlg('Cash/Piutang Harap diisi!',mtWarning,[mbOk],0);
    dbcash.SetFocus;
    abort;
  end;
  hitungTotal;
  kurangiStock;
  dm.jual.Edit;
  dm.jual.FieldByName('ju_total').Value := total;
  dm.jual.FieldByName('ju_tax').Value   := tax;
  simpan(dm.jual);
  dm.jualdetail.Edit;
  dm.jualdetail.Post;
  dm.jualdetail.ApplyUpdates;
   dbtgl.Enabled := false;
   btnsimpan.Visible := false;
   btnbatal.Visible := false;
    pnheader.Enabled := false;
  gridjual.Enabled := false;
end;

procedure Tjualfrm.tglChange(Sender: TObject);
begin
 dm.jual.Edit;
  dm.jual.FieldByName('ju_due').Value := tgl.Date;
  dm.jual.Post;
end;

procedure Tjualfrm.SpeedButton1Click(Sender: TObject);
begin
 dbtgl.Enabled := true;
end;

procedure Tjualfrm.btnbatalClick(Sender: TObject);
begin
   batal(dm.jual);
   dm.jualdetail.CancelUpdates;
   btnsimpan.Visible := false;
   btnbatal.Visible := false;
   pnheader.Enabled := false;
  gridjual.Enabled := false;
end;

procedure Tjualfrm.SpeedButton2Click(Sender: TObject);
begin
  aktifkanform(projectfrm,TProjectfrm);
end;

procedure Tjualfrm.Button1Click(Sender: TObject);
begin
  fakturpajak;
end;

end.
