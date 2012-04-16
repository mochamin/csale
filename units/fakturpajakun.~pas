unit fakturpajakun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  Tfakturpajakfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    btnsimpan: TBitBtn;
    btnbatal: TBitBtn;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fakturpajakfrm: Tfakturpajakfrm;

implementation

uses dmun,fungsi_merp;
{$R *.dfm}

procedure Tfakturpajakfrm.FormCreate(Sender: TObject);
begin
  aktifkandata(dm.fakturpajaklist);
end;

end.
