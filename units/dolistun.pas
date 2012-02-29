unit dolistun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Menus, RpCon, RpConDS,
  RpBase, RpSystem, RpDefine, RpRave;

type
  Tdolistfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    griddo: TDBGrid;
    Label2: TLabel;
    cari: TEdit;
    popdo: TPopupMenu;
    CetakDeliveryOrder1: TMenuItem;
    rpDeliver: TRvProject;
    rsdeliver: TRvSystem;
    rdcustdeliver: TRvDataSetConnection;
    rdcustpicdeliver: TRvDataSetConnection;
    rddeliverydetail: TRvDataSetConnection;
    rddeliver: TRvDataSetConnection;
    N1: TMenuItem;
    HapusDeliveryOrder1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure CetakDeliveryOrder1Click(Sender: TObject);
    procedure HapusDeliveryOrder1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dolistfrm: Tdolistfrm;

implementation

uses dmun,fungsi_merp,db;
{$R *.dfm}

procedure Tdolistfrm.FormActivate(Sender: TObject);
begin
   aktifkandata(dm.deliveryview);
end;

procedure Tdolistfrm.cariChange(Sender: TObject);
begin
  with dm.deliveryview do
  begin
    sql.Text := 'select * from do inner join customer on (do_cust_id=cu_id) '+
    'where cu_nama like (:opsi) or do_kode like (:opsi) or  '+
    'do_invoice like (:opsi) order by do_id desc ';
    params.ParamByName('opsi').Value := '%'+cari.Text+'%';
    open;
  end;
end;

procedure Tdolistfrm.CetakDeliveryOrder1Click(Sender: TObject);
begin
  with dm.delivery do
  begin
    sql.Text :='select * from do where do_kode = (:kd) ';
    params.ParamByName('kd').Value := griddo.Fields[0].Value;
    open;
  end;

  rpdeliver.ProjectFile := 'do.rav';
  rpdeliver.SelectReport('do.rav',true);
  rpdeliver.Execute;
end;

procedure Tdolistfrm.HapusDeliveryOrder1Click(Sender: TObject);
begin
 aktifkandata(dm.delivery);
 if messagedlg('Hapus Transaksi ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
 if dm.delivery.Locate('do_kode',griddo.Fields[0].value,[loCaseInsensitive])=true then
 begin
    //showmessage('qtmu');
    dm.delivery.Delete;
    dm.delivery.ApplyUpdates;
    dm.deliveryview.Refresh;
 end;
 end; // end if messagedlg
 
end;

end.
