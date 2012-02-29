{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit bankun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, Buttons;

type
  Tbankfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel2:TPanel;//f300
    Label2:TLabel;//f304
    cari:TEdit;//f308
    Panel4:TPanel;//f30C
    Panel5:TPanel;//f310
    DBGrid1:TDBGrid;//f314
    Panel3:TPanel;//f318
    btntambah:TSpeedButton;//f31C
    btnedit:TSpeedButton;//f320
    SpeedButton2:TSpeedButton;//f324
    procedure btntambahClick;
    procedure FormActivate;
    procedure btneditClick;
    procedure SpeedButton2Click;
  end;

implementation

{$R *.DFM}

//0060BD2C
procedure Tbankfrm.btntambahClick;
begin
{*
 0060BD2C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060BD31    mov        eax,dword ptr [eax]
 0060BD33    mov        eax,dword ptr [eax+704]; Tdm.bank:TZQuery
 0060BD39    call       TDataSet.Append
 0060BD3E    mov        eax,[0061C240]
 0060BD43    mov        eax,dword ptr [eax]
 0060BD45    mov        edx,dword ptr ds:[60B750]; Tbankaddfrm
 0060BD4B    call       005D859C
 0060BD50    ret
*}
end;

//0060BD54
procedure Tbankfrm.FormActivate;
begin
{*
 0060BD54    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060BD59    mov        eax,dword ptr [eax]
 0060BD5B    mov        eax,dword ptr [eax+704]; Tdm.bank:TZQuery
 0060BD61    call       005D8634
 0060BD66    ret
*}
end;

//0060BD68
procedure Tbankfrm.btneditClick;
begin
{*
 0060BD68    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060BD6D    mov        eax,dword ptr [eax]
 0060BD6F    mov        eax,dword ptr [eax+704]; Tdm.bank:TZQuery
 0060BD75    call       TDataSet.Edit
 0060BD7A    mov        eax,[0061C240]
 0060BD7F    mov        eax,dword ptr [eax]
 0060BD81    mov        edx,dword ptr ds:[60B750]; Tbankaddfrm
 0060BD87    call       005D859C
 0060BD8C    ret
*}
end;

//0060BD90
procedure Tbankfrm.SpeedButton2Click;
begin
{*
 0060BD90    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060BD95    mov        eax,dword ptr [eax]
 0060BD97    mov        eax,dword ptr [eax+704]; Tdm.bank:TZQuery
 0060BD9D    call       005D85D0
 0060BDA2    ret
*}
end;

end.