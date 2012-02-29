{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit grouplistun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, Buttons;

type
  Tgroupfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Panel2:TPanel;//f2FC
    Panel3:TPanel;//f300
    Panel4:TPanel;//f304
    Label1:TLabel;//f308
    Panel5:TPanel;//f30C
    DBGrid1:TDBGrid;//f310
    SpeedButton1:TSpeedButton;//f314
    SpeedButton2:TSpeedButton;//f318
    procedure SpeedButton1Click;
  end;

implementation

{$R *.DFM}

//004BC48C
procedure Tgroupfrm.SpeedButton1Click;
begin
{*
 004BC48C    mov        eax,[0061AF78]; ^gvar_0061DCA0:Tgroupaddfrm
 004BC491    cmp        dword ptr [eax],0
>004BC494    jne        004BC4BB
 004BC496    mov        ecx,dword ptr ds:[61AF78]; ^gvar_0061DCA0:Tgroupaddfrm
 004BC49C    mov        eax,[0061BD04]; ^Application:TApplication
 004BC4A1    mov        eax,dword ptr [eax]
 004BC4A3    mov        edx,dword ptr ds:[4BC00C]; Tgroupaddfrm
 004BC4A9    call       TApplication.CreateForm
 004BC4AE    mov        eax,[0061AF78]; ^gvar_0061DCA0:Tgroupaddfrm
 004BC4B3    mov        eax,dword ptr [eax]
 004BC4B5    call       TCustomForm.Show
 004BC4BA    ret
 004BC4BB    mov        eax,[0061AF78]; ^gvar_0061DCA0:Tgroupaddfrm
 004BC4C0    mov        eax,dword ptr [eax]
 004BC4C2    call       TCustomForm.Show
 004BC4C7    ret
*}
end;

end.