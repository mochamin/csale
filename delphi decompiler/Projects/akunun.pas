{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit akunun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBGrids;

type
  Takunfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    btntambah:TSpeedButton;//f30C
    btnsimpan:TSpeedButton;//f310
    btnbatal:TSpeedButton;//f314
    DBGrid1:TDBGrid;//f318
    procedure FormCreate;
  end;

implementation

{$R *.DFM}

//005EB5F0
procedure Takunfrm.FormCreate;
begin
{*
 005EB5F0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB5F5    mov        eax,dword ptr [eax]
 005EB5F7    mov        eax,dword ptr [eax+2B0]; Tdm.akun:TZQuery
 005EB5FD    call       005D8634
 005EB602    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB607    mov        eax,dword ptr [eax]
 005EB609    mov        eax,dword ptr [eax+2C4]; Tdm.akun_klas:TZQuery
 005EB60F    call       005D8634
 005EB614    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005EB619    mov        eax,dword ptr [eax]
 005EB61B    mov        eax,dword ptr [eax+2C8]; Tdm.akun_subklas:TZQuery
 005EB621    call       005D8634
 005EB626    ret
*}
end;

end.