{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ptkpun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, Buttons;

type
  Tptkpfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    Label2:TLabel;//f30C
    cari:TEdit;//f310
    DBGrid1:TDBGrid;//f314
    Panel3:TPanel;//f318
    btntambah:TSpeedButton;//f31C
    btnedit:TSpeedButton;//f320
    SpeedButton1:TSpeedButton;//f324
    procedure btntambahClick;
    procedure btneditClick;
    procedure SpeedButton1Click;
  end;

implementation

{$R *.DFM}

//0060C3C0
procedure Tptkpfrm.btntambahClick;
begin
{*
 0060C3C0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060C3C5    mov        eax,dword ptr [eax]
 0060C3C7    mov        eax,dword ptr [eax+6B4]; Tdm.ptkp:TZQuery
 0060C3CD    call       TDataSet.Append
 0060C3D2    mov        eax,[0061C4B4]
 0060C3D7    mov        eax,dword ptr [eax]
 0060C3D9    mov        edx,dword ptr ds:[60BDDC]; Tptkpaddfrm
 0060C3DF    call       005D859C
 0060C3E4    ret
*}
end;

//0060C3E8
procedure Tptkpfrm.btneditClick;
begin
{*
 0060C3E8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060C3ED    mov        eax,dword ptr [eax]
 0060C3EF    mov        eax,dword ptr [eax+6B4]; Tdm.ptkp:TZQuery
 0060C3F5    call       TDataSet.Edit
 0060C3FA    mov        eax,[0061C4B4]
 0060C3FF    mov        eax,dword ptr [eax]
 0060C401    mov        edx,dword ptr ds:[60BDDC]; Tptkpaddfrm
 0060C407    call       005D859C
 0060C40C    ret
*}
end;

//0060C410
procedure Tptkpfrm.SpeedButton1Click;
begin
{*
 0060C410    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060C415    mov        eax,dword ptr [eax]
 0060C417    mov        eax,dword ptr [eax+6B4]; Tdm.ptkp:TZQuery
 0060C41D    call       005D85D0
 0060C422    ret
*}
end;

end.