{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit pphun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, Buttons;

type
  Tpphfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    DBGrid1:TDBGrid;//f308
    Panel3:TPanel;//f30C
    btntambah:TSpeedButton;//f310
    btnedit:TSpeedButton;//f314
    SpeedButton1:TSpeedButton;//f318
    procedure btntambahClick;
    procedure btneditClick;
    procedure SpeedButton1Click;
    procedure FormActivate;
  end;

implementation

{$R *.DFM}

//0060E02C
procedure Tpphfrm.btntambahClick;
begin
{*
 0060E02C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060E031    mov        eax,dword ptr [eax]
 0060E033    mov        eax,dword ptr [eax+728]; Tdm.pph:TZQuery
 0060E039    call       TDataSet.Append
 0060E03E    mov        eax,[0061BC78]
 0060E043    mov        eax,dword ptr [eax]
 0060E045    mov        edx,dword ptr ds:[60DA64]; Tpphaddfrm
 0060E04B    call       005D859C
 0060E050    ret
*}
end;

//0060E054
procedure Tpphfrm.btneditClick;
begin
{*
 0060E054    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060E059    mov        eax,dword ptr [eax]
 0060E05B    mov        eax,dword ptr [eax+728]; Tdm.pph:TZQuery
 0060E061    call       TDataSet.Edit
 0060E066    mov        eax,[0061BC78]
 0060E06B    mov        eax,dword ptr [eax]
 0060E06D    mov        edx,dword ptr ds:[60DA64]; Tpphaddfrm
 0060E073    call       005D859C
 0060E078    ret
*}
end;

//0060E07C
procedure Tpphfrm.SpeedButton1Click;
begin
{*
 0060E07C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060E081    mov        eax,dword ptr [eax]
 0060E083    mov        eax,dword ptr [eax+728]; Tdm.pph:TZQuery
 0060E089    call       005D85D0
 0060E08E    ret
*}
end;

//0060E090
procedure Tpphfrm.FormActivate;
begin
{*
 0060E090    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060E095    mov        eax,dword ptr [eax]
 0060E097    mov        eax,dword ptr [eax+728]; Tdm.pph:TZQuery
 0060E09D    call       005D8634
 0060E0A2    ret
*}
end;

end.