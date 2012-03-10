unit glun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, RpCon, RpConDS, RpBase, RpSystem,
  RpDefine, RpRave;

type
  Tglfrm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    blnawal: TComboBox;
    thnawal: TComboBox;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    rpgl: TRvProject;
    rsgl: TRvSystem;
    glkas: TRvDataSetConnection;
    glpiutang: TRvDataSetConnection;
    glpersediaan: TRvDataSetConnection;
    glhutangusaha: TRvDataSetConnection;
    glhutangpp: TRvDataSetConnection;
    gljualproduk: TRvDataSetConnection;
    glbiaya: TRvDataSetConnection;
    glpro: TRvDataSetConnection;
    glchart: TRvDataSetConnection;
    blnakhir: TComboBox;
    thnakhir: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  glfrm: Tglfrm;

implementation

{$R *.dfm}

procedure Tglfrm.SpeedButton2Click(Sender: TObject);
begin
 rpgl.ProjectFile := 'glpro.rav';
 rpgl.SelectReport('glpro.rav',true);
 rpgl.Execute;
end;

procedure Tglfrm.FormCreate(Sender: TObject);
var i: integer;
    tgl : TDateTime;
    curdate : TDateTime;
begin
{    curDate := incmonth(date,0);
    for i:=0 to 11 do
    begin
      tgl :=incmonth(date,i);
      cbperiode.Items.Add(formatDateTime('mmmm yyyy',tgl));
    end;

    cbperiode.Text :=  formatDateTime('mmmm yyyy',curdate);}
    thnawal.Items.Add(formatDateTime('yyyy',date));
end;

end.
