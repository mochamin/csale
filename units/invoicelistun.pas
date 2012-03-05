unit invoicelistun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Menus, RpCon,
  RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  Tinvoicelistfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    cari: TEdit;
    gridinv: TDBGrid;
    popinv: TPopupMenu;
    RefreshData1: TMenuItem;
    rpInvoice: TRvProject;
    RvSystem1: TRvSystem;
    rdinvoice: TRvDataSetConnection;
    rdincust: TRvDataSetConnection;
    rdinvoicedetail: TRvDataSetConnection;
    N1: TMenuItem;
    cetakinv: TMenuItem;
    N2: TMenuItem;
    InputData1: TMenuItem;
    rddeliveryrpt: TRvDataSetConnection;
    rdbarangrpt: TRvDataSetConnection;
    HapusInvoice1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    FakturPajak1: TMenuItem;
    rpPajak: TRvProject;
    rdpajak: TRvDataSetConnection;
    rspajak: TRvSystem;
    rdpajakdetail: TRvDataSetConnection;
    rdwp: TRvDataSetConnection;
    rdbarangpajak: TRvDataSetConnection;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure popinvPopup(Sender: TObject);
    procedure cetakinvClick(Sender: TObject);
    procedure InputData1Click(Sender: TObject);
    procedure HapusInvoice1Click(Sender: TObject);
    procedure FakturPajak1Click(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure cariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridinvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure insertToDelivery;
    procedure cetakInvoice;
    procedure cetakFakturPajak;
   // procedure generatePO;
  public
    { Public declarations }
  end;

var
  invoicelistfrm: Tinvoicelistfrm;

implementation

uses dmun,fungsi_merp,db,strUtils;

{$R *.dfm}

procedure TInvoicelistfrm.cetakFakturPajak;
var kodefaktur : string;
begin
  with dm.fakturpajakrpt do
  begin
    sql.Text := 'select * from fakturpajak where fp_ref = (:ref) ';
    params.ParamByName('ref').Value := dm.invoice.fieldbyname('ju_kode').Value;
    open;
    kodefaktur := fieldbyname('fp_kode').Value;
  end;

  with dm.fakturpajakdetailrpt do
  begin
    sql.Text := 'select * from fakturpajakdetail where fd_kode = (:fk) ';
    params.ParamByName('fk').Value := kodefaktur;
    open;
  end;

  rpPajak.ProjectFile := 'fakturpajak.rav';
  rpPajak.SelectReport('fakturpajak.rav',true);
  rpPajak.Execute;
end;

procedure TInvoicelistfrm.cetakInvoice;
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
   with dm.tagihan do
   begin
      sql.Text := 'SELECT * FROM invoice ORDER BY in_id DESC LIMIT 1';
      open;
      dbpo       := fieldbyname('in_kode').Value;
      getMonthdb := StrToInt(AnsiMidStr(fieldbyname('in_kode').Value,11,2));  //ambil digit bulan dari database untuk ditampilkan
      getyeardb  := rightStr(dbpo,4);
      getNo      := StrToInt(LeftStr(dbpo,3))+1;


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

   //input ke database invoice
    if locate('in_kode_jual',dm.invoice.fieldbyname('ju_kode').Value,[loCaseInsensitive])=true then
    begin
       messagedlg('Invoice sudah pernah dicetak/dikirimkan! Lihat pada daftar Invoice terkirim.'+#13+
       'Hapus invoice bersangkutan jika ingin membuat invoice baru! ',mtWarning,[mbOK],0);
       abort;
    end;

     append;           
     fieldbyname('in_kode').Value      := noPO;
     fieldbyname('in_kode_jual').Value := dm.invoice.fieldbyname('ju_kode').Value;
     fieldbyname('in_date').Value      := date;
     post;
   end; // end of with   dm.tagihan
   showmessage('Invoice sudah digenerate...');

 {  with dm.deliveryrpt do
  begin
    sql.Text := 'select * from do where do_invoice = (:inv) '+
    'order by do_id desc limit 1 ';
    params.ParamByName('inv').Value := dm.invoice.fieldbyname('ju_kode').Value;
    open;
  end;

  rpinvoice.ProjectFile := 'invoice.rav';
  rpInvoice.SelectReport('inovice.rav',true);
  rpInvoice.Execute;   }
   
end;


procedure Tinvoicelistfrm.FormCreate(Sender: TObject);
begin
 aktifkandata(dm.invoice);
end;

procedure Tinvoicelistfrm.insertToDelivery;
begin
 // input ke delivery data customer
   if dm.invoice.FieldByName('ju_barang_sent').Value = 1 then
   begin
      messagedlg('Barang Sudah Dikirim! Mohon cek ulang Daftar Pengiriman Barang',mtError,[mbOk],0);
      abort;
   end;

   dm.delivery.Edit;
   dm.delivery.FieldByName('do_ju_trans').Value   :=  dm.invoice.fieldbyname('ju_kode').Value;
   dm.delivery.FieldByName('do_cust_id').Value    :=  dm.invoice.fieldbyname('ju_cust_id').Value;
   dm.delivery.FieldByName('do_cust_pic').Value   :=  dm.invoice.fieldbyname('ju_cust_pic').Value;

  // input ke deliverydetail data barang-barang
   with dm.barangdeliver do
   begin
     sql.Text := 'select * from jualdetail where jd_kode = (:jdkd) '+
     'order by jd_id desc ';
     params.ParamByName('jdkd').Value :=  dm.invoice.fieldbyname('ju_kode').Value;
     open;

     first;
     while not eof do
     begin
      
      dm.deliverydetail.Append;
      dm.deliverydetail.FieldByName('dd_kd_barang').Value   := fieldbyname('jd_kd_barang').Value;
      dm.deliverydetail.FieldByName('dd_nama_barang').Value := fieldbyname('jd_nama_barang').Value;
      //dm.deliverydetail.FieldByName('dd_type').Value        := fieldbyname('').Value;
      dm.deliverydetail.FieldByName('dd_qty').Value         := fieldbyname('jd_qty').Value;
      dm.deliverydetail.Post;
      next;
     end;
   end;

   close;

end;

procedure Tinvoicelistfrm.RefreshData1Click(Sender: TObject);
begin
 dm.invoice.Refresh;
end;

procedure Tinvoicelistfrm.popinvPopup(Sender: TObject);
begin
 if isDelivery =1 then
 begin
   inputData1.Visible := true;
 end else
 begin
   inputData1.Visible := false;
 end;
end;

procedure Tinvoicelistfrm.cetakinvClick(Sender: TObject);
begin
 cetakInvoice;
end;

procedure Tinvoicelistfrm.InputData1Click(Sender: TObject);
begin
  insertToDelivery;
end;

procedure Tinvoicelistfrm.HapusInvoice1Click(Sender: TObject);
begin
 //semangaaaaaaaatttttt......

 if messagedlg('Anda Yakin akan menghapus data ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
    //hapus transaksi di tabel general ledger
    aktifkandata(dm.gl_hapus);
    if dm.gl_hapus.Locate('gl_ref',dm.invoice.fieldbyname('ju_kode').Value,[loCaseInsensitive])=true then
    begin
      //showmessage('tabel General_ledger : gl ref ditemukan dan dihapus...');
       with dm.gl_hapus do
       begin
         close;
         open;
         sql.Text := 'delete  from general_ledger where gl_ref = (:ref) ';
         params.ParamByName('ref').Value := dm.invoice.fieldbyname('ju_kode').Value;
         execSQL;
       end; // end with dm gl}


        with dm.jualdetailhapus do
        begin
          sql.Text := 'select * from jualdetail where jd_kode = (:kd) ';
          params.ParamByName('kd').Value := dm.invoice.fieldbyname('ju_kode').Value;
          open;

          last;
          //showmessage('tabel jualdetail opened');
          while not bof do
          begin
           //showmessage('tabel jualdetail: '+intToStr(fieldbyname('jd_kd_barang').Value)+' dihapus ');
           aktifkandata(dm.inventoryref);
           if dm.inventoryref.Locate('in_kd_barang',fieldbyname('jd_kd_barang').Value,[loCaseInsensitive])= true then
           begin
             //showmessage('tabel INVOICE: '+intToStr(dm.inventory.fieldbyname('in_kd_barang').Value)+' dikembalikan stock');
             dm.inventoryref.Edit;
             dm.inventoryref.FieldByName('in_stock').Value := dm.inventoryref.FieldByName('in_stock').Value+fieldbyname('jd_qty').Value;
             dm.inventoryref.Post;
           end; // end if
           delete;
           previous;
          end; // end of while not eof
       // post;
        applyupdates; 
        end; // end of jualdetail hapus

         dm.invoice.Delete;
         dm.invoice.ApplyUpdates;

        
     end;
    end;
end;

procedure Tinvoicelistfrm.FakturPajak1Click(Sender: TObject);
begin
 cetakFakturPajak;
end;

procedure Tinvoicelistfrm.cariChange(Sender: TObject);
begin
  with dm.invoice do
  begin
    sql.Text := 'select * from jual where ju_kode like (:kd) '+
    'or ju_po like (:kd) ';
    params.ParamByName('kd').Value := '%'+cari.Text+'%';
    open;
  end;
end;

procedure Tinvoicelistfrm.cariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then insertToDelivery;
end;

procedure Tinvoicelistfrm.gridinvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_return then insertToDelivery;
end;

end.
