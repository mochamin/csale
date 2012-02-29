{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit deptun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, Buttons;

type
  Tdeptfrm = class(TForm)
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
    procedure SpeedButton1Click;
    procedure btntambahClick;
    procedure btneditClick;
  end;

implementation

{$R *.DFM}

//0060CA08
procedure Tdeptfrm.SpeedButton1Click;
begin
{*
 0060CA08    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060CA0D    mov        eax,dword ptr [eax]
 0060CA0F    mov        eax,dword ptr [eax+6EC]; Tdm.dept:TZQuery
 0060CA15    call       005D85D0
 0060CA1A    ret
*}
end;

//0060CA1C
procedure Tdeptfrm.btntambahClick;
begin
{*
 0060CA1C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060CA21    mov        eax,dword ptr [eax]
 0060CA23    mov        eax,dword ptr [eax+6EC]; Tdm.dept:TZQuery
 0060CA29    call       TDataSet.Append
 0060CA2E    mov        eax,[0061B6B0]
 0060CA33    mov        eax,dword ptr [eax]
 0060CA35    mov        edx,dword ptr ds:[60C45C]; Tdeptaddfrm
 0060CA3B    call       005D859C
 0060CA40    ret
*}
end;

//0060CA44
procedure Tdeptfrm.btneditClick;
begin
{*
 0060CA44    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060CA49    mov        eax,dword ptr [eax]
 0060CA4B    mov        eax,dword ptr [eax+6EC]; Tdm.dept:TZQuery
 0060CA51    call       TDataSet.Edit
 0060CA56    mov        eax,[0061B6B0]
 0060CA5B    mov        eax,dword ptr [eax]
 0060CA5D    mov        edx,dword ptr ds:[60C45C]; Tdeptaddfrm
 0060CA63    call       005D859C
 0060CA68    ret
*}
end;

end.