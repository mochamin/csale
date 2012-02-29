{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit projectun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBGrids;

type
  Tprojectfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    caripn:TPanel;//f308
    Label2:TLabel;//f30C
    cari:TEdit;//f310
    Panel3:TPanel;//f314
    btnedit:TSpeedButton;//f318
    btntambah:TSpeedButton;//f31C
    btnhapus:TSpeedButton;//f320
    DBGrid1:TDBGrid;//f324
    procedure btntambahClick;
    procedure btneditClick;
    procedure btnhapusClick;
    procedure FormCreate;
  end;

implementation

{$R *.DFM}

//005DB758
procedure Tprojectfrm.btntambahClick;
begin
{*
 005DB758    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DB75D    mov        eax,dword ptr [eax]
 005DB75F    mov        eax,dword ptr [eax+294]; Tdm.project:TZQuery
 005DB765    call       TDataSet.Append
 005DB76A    mov        eax,[0061C358]
 005DB76F    mov        eax,dword ptr [eax]
 005DB771    mov        edx,dword ptr ds:[5DB10C]; Tprojectaddfrm
 005DB777    call       005D859C
 005DB77C    ret
*}
end;

//005DB780
procedure Tprojectfrm.btneditClick;
begin
{*
 005DB780    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DB785    mov        eax,dword ptr [eax]
 005DB787    mov        eax,dword ptr [eax+294]; Tdm.project:TZQuery
 005DB78D    call       TDataSet.Edit
 005DB792    mov        eax,[0061C358]
 005DB797    mov        eax,dword ptr [eax]
 005DB799    mov        edx,dword ptr ds:[5DB10C]; Tprojectaddfrm
 005DB79F    call       005D859C
 005DB7A4    ret
*}
end;

//005DB7A8
procedure Tprojectfrm.btnhapusClick;
begin
{*
 005DB7A8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DB7AD    mov        eax,dword ptr [eax]
 005DB7AF    mov        eax,dword ptr [eax+294]; Tdm.project:TZQuery
 005DB7B5    call       005D85D0
 005DB7BA    ret
*}
end;

//005DB7BC
procedure Tprojectfrm.FormCreate;
begin
{*
 005DB7BC    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DB7C1    mov        eax,dword ptr [eax]
 005DB7C3    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005DB7C9    call       005D8634
 005DB7CE    ret
*}
end;

end.