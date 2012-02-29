{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit foot_globalun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids;

type
  Tfootnote_globalfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    DBGrid1:TDBGrid;//f308
    procedure FormCreate;
  end;

implementation

{$R *.DFM}

//00608C54
procedure Tfootnote_globalfrm.FormCreate;
begin
{*
 00608C54    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00608C59    mov        eax,dword ptr [eax]
 00608C5B    mov        eax,dword ptr [eax+3AC]; Tdm.footnote_global:TZQuery
 00608C61    call       005D8634
 00608C66    ret
*}
end;

end.