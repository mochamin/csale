unit tagihanun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Menus, ImgList;

type
  Ttagihanfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    cari: TEdit;
    lookcust: TDBLookupComboBox;
    cbfilter: TCheckBox;
    PopupMenu1: TPopupMenu;
    CetakInvoice1: TMenuItem;
    N1: TMenuItem;
    Pembayaran1: TMenuItem;
    N2: TMenuItem;
    RefreshData1: TMenuItem;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lookcustClick(Sender: TObject);
    procedure CetakInvoice1Click(Sender: TObject);
    procedure RefreshData1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Pembayaran1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tagihanfrm: Ttagihanfrm;

implementation
uses dmun,fungsi_merp, fakturdaninvoiceun, lunaspiutangun;
{$R *.dfm}

procedure Ttagihanfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.tagihanview);
end;

procedure Ttagihanfrm.cariChange(Sender: TObject);
begin
if cbfilter.Checked = true then
begin
   with dm.tagihanview do
   begin
    sql.Text := 'select * from invoice where in_kode like (:kode) and '+
    'in_cust_kode like (:cust) order by in_id desc ';
    params.ParamByName('kode').Value := '%'+cari.Text+'%';
    params.ParamByname('cust').Value := lookcust.KeyValue;
    open;
  end; // end of tagihanview
end else
begin
   with dm.tagihanview do
   begin
     sql.Text := 'select * from invoice where in_kode like (:kode) order by in_id desc ';
     params.ParamByName('kode').Value := '%'+cari.Text+'%';
    open;
  end; // end of tagihanview
end;


end;

procedure Ttagihanfrm.FormActivate(Sender: TObject);
begin
 aktifkandata(dm.customer);
end;

procedure Ttagihanfrm.lookcustClick(Sender: TObject);
begin
if cbfilter.Checked = true then
begin
   with dm.tagihanview do
   begin
    sql.Text := 'select * from invoice where in_cust_kode like (:kode) order by in_id desc ';
    params.ParamByName('kode').Value := lookcust.KeyValue;
    open;
  end; // end of tagihanview
end; //enf of cbfilter
end;

procedure Ttagihanfrm.CetakInvoice1Click(Sender: TObject);
begin
  noinvoice := dm.tagihanview.fieldbyname('in_kode').AsString; // variabel global dari fungsi_merp unit
  notransaksi := dm.tagihanview.fieldbyname('in_kode_jual').AsString;
  aktifkanform(invoicprintfrm,TInvoicprintfrm);
end;

procedure Ttagihanfrm.RefreshData1Click(Sender: TObject);
begin
 dm.tagihanview.Refresh;
end;

procedure Ttagihanfrm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
 var
   grid : TDBGrid;
   row : integer;
    bitmap : TBitmap;
  FixRect : TRect;
  bmpWidth : integer;   
  imgIndex : integer;
 begin
 // membuat row zig zag
   fixRect := Rect;
   grid := sender as TDBGrid;
 
   row := grid.DataSource.DataSet.RecNo;

   if Odd(row) then
     grid.Canvas.Brush.Color := $00E2FEFD
     
   else
     grid.Canvas.Brush.Color := clWhite;

  // membuat setting selected row

    if  grid.Focused then
    begin
      if (gdSelected in State) then
      begin
        with grid.Canvas do
        begin
          Brush.Color := clHighlight;
          Font.Style := Font.Style + [fsBold];
          Font.Color := clHighlightText;
        end;
      end;
    end;
            
  // sisipkan image untuk notifikasi biar lebih jelaaas
  if (column.Field=dm.tagihanview.FieldByName('in_kode_jual')) then
  begin
    if dm.tagihanview.FieldByName('in_paid').Value <> 1 then
    begin
      imgIndex := 0
    end else
    begin
     imgIndex :=1;
    end;

    bitmap := TBitmap.Create;
    try
      //grab the image from the ImageList 
      //(using the "Salary" field's value)
      ImageList1.GetBitmap(imgIndex,bitmap);
      //Fix the bitmap dimensions
      bmpWidth := (Rect.Bottom - Rect.Top);
      FixRect.Right := Rect.Left + bmpWidth;
      //draw the bitmap
      grid.Canvas.StretchDraw(FixRect,bitmap);
    finally
      bitmap.Free;
    end;  // end of try

    // reset the output rectangle, 
    // add space for the graphics
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;   // end of columnfield
 
   grid.DefaultDrawColumnCell(FixRect, DataCol, Column, State) ;

 end;

procedure Ttagihanfrm.Pembayaran1Click(Sender: TObject);
begin
 bayarpiutang := dm.tagihanview.fieldbyname('in_amount').Value+dm.tagihanview.fieldbyname('in_tax').Value;
 aktifkanform(lunasPiutangfrm,TLunasPiutangfrm);
end;

end.
