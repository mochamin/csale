unit list_rep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  Tlist_rep_frm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    caripn: TPanel;
    SpeedButton7: TSpeedButton;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  list_rep_frm: Tlist_rep_frm;

implementation

{$R *.dfm}

procedure Tlist_rep_frm.SpeedButton7Click(Sender: TObject);
begin
  caripn.Visible := false;
end;

procedure Tlist_rep_frm.SpeedButton5Click(Sender: TObject);
begin
  if messagedlg('Hapus Record ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
  end;
end;

procedure Tlist_rep_frm.SpeedButton6Click(Sender: TObject);
begin
  if caripn.Visible = false then
  begin
   caripn.Visible := true;
  end else
  begin
    caripn.Visible := false;
  end;
end;

end.
