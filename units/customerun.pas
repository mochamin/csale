unit customerun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, listrep, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  Tcustomerfrm = class(Tlistrepfrm)
    SpeedButton9: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure showCP;
  public
    { Public declarations }
  end;

var
  customerfrm: Tcustomerfrm;

implementation

uses dmun,fungsi_merp, customeraddun, custpicun;
{$R *.dfm}

procedure Tcustomerfrm.showCP;
begin
with dm.custpic do
 begin
   sql.Text := 'SELECT * FROM custpic WHERE cp_custid = '+dm.customer.fieldbyname('cu_id').AsString;
   open;
 end;
 aktifkanform(custpicfrm,TCustpicfrm);
end;

procedure Tcustomerfrm.FormCreate(Sender: TObject);
begin
  inherited;
  aktifkandata(dm.customer);
end;

procedure Tcustomerfrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  dm.customer.Append;
  aktifkanform(CustomerAddfrm,TCustomerAddfrm);
end;

procedure Tcustomerfrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  aktifkanform(CustomerAddfrm,TCustomerAddfrm);
  dm.customer.Edit;
end;

procedure Tcustomerfrm.SpeedButton5Click(Sender: TObject);
begin
  //inherited;
  hapus(dm.customer);
end;

procedure Tcustomerfrm.SpeedButton9Click(Sender: TObject);
begin
 // inherited;
 showCP;
end;

procedure Tcustomerfrm.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  showCP;
end;

end.
