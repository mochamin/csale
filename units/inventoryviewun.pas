unit inventoryviewun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  Tinventoryviewfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    cari: TEdit;
    gridinv: TDBGrid;
    cbcari: TComboBox;
    procedure cariChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridinvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure inputToJual;
  public
    { Public declarations }
  end;

var
  inventoryviewfrm: Tinventoryviewfrm;

implementation
uses dmun, fungsi_merp,db;
{$R *.dfm}


procedure Tinventoryviewfrm.inputToJual;
begin
   dm.jualdetail.Append;
   dm.jualdetail.FieldByName('jd_kd_barang').Value        := dm.inventory.fieldbyname('in_kd_barang').value;
   dm.jualdetail.FieldByName('jd_nama_barang').Value      := dm.inventory.fieldbyname('barang').Value;
   dm.jualdetail.FieldByName('jd_harga_pokok').Value      := dm.inventory.fieldbyname('in_harga').Value;
   dm.jualdetail.FieldByName('jd_satuan').Value           := dm.inventory.fieldbyname('unit').Value;
   dm.jualdetail.FieldByName('jd_harga_jual').FocusControl;
   close;
end;

procedure Tinventoryviewfrm.cariChange(Sender: TObject);
begin
  if cbcari.ItemIndex=0 then
 begin
   dm.inventory.Locate('barang',cari.Text,[loPartialKey,loCaseInsensitive]);
 end else
 begin
     dm.inventory.Locate('type',cari.Text,[loPartialKey,loCaseInsensitive]);
 end;
end;

procedure Tinventoryviewfrm.FormCreate(Sender: TObject);
begin
 aktifkandata(dm.inventory);
end;

procedure Tinventoryviewfrm.gridinvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=vk_return then
 begin
   inputToJual;
 end;
end;

procedure Tinventoryviewfrm.cariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then inputToJual;
  if key=vk_down then
  begin
     gridinv.SetFocus;
     dm.inventory.Next;
  end;
end;

end.
