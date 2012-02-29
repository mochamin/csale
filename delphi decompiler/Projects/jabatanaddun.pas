{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit jabatanaddun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBCtrls;

type
  Tjabatanaddfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    btntambah:TSpeedButton;//f30C
    btnbatal:TSpeedButton;//f310
    btnsimpan:TSpeedButton;//f314
    Panel2:TPanel;//f318
    mulaikerja:TDBEdit;//f31C
    Label2:TLabel;//f320
    Label3:TLabel;//f324
    DBEdit1:TDBEdit;//f328
    procedure btnsimpanClick;
    procedure btnbatalClick;
    procedure btntambahClick;
  end;

implementation

{$R *.DFM}

//00609644
procedure Tjabatanaddfrm.btnsimpanClick;
begin
{*
 00609644    push       ebx
 00609645    mov        ebx,eax
 00609647    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060964C    mov        eax,dword ptr [eax]
 0060964E    mov        eax,dword ptr [eax+654]; Tdm.jobdes:TZQuery
 00609654    call       005D8650
 00609659    xor        edx,edx
 0060965B    mov        eax,dword ptr [ebx+314]; Tjabatanaddfrm.btnsimpan:TSpeedButton
 00609661    call       TControl.SetVisible
 00609666    xor        edx,edx
 00609668    mov        eax,dword ptr [ebx+310]; Tjabatanaddfrm.btnbatal:TSpeedButton
 0060966E    call       TControl.SetVisible
 00609673    pop        ebx
 00609674    ret
*}
end;

//00609678
procedure Tjabatanaddfrm.btnbatalClick;
begin
{*
 00609678    push       ebx
 00609679    mov        ebx,eax
 0060967B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00609680    mov        eax,dword ptr [eax]
 00609682    mov        eax,dword ptr [eax+654]; Tdm.jobdes:TZQuery
 00609688    call       005D86A0
 0060968D    xor        edx,edx
 0060968F    mov        eax,dword ptr [ebx+314]; Tjabatanaddfrm.btnsimpan:TSpeedButton
 00609695    call       TControl.SetVisible
 0060969A    xor        edx,edx
 0060969C    mov        eax,dword ptr [ebx+310]; Tjabatanaddfrm.btnbatal:TSpeedButton
 006096A2    call       TControl.SetVisible
 006096A7    pop        ebx
 006096A8    ret
*}
end;

//006096AC
procedure Tjabatanaddfrm.btntambahClick;
begin
{*
 006096AC    push       ebx
 006096AD    mov        ebx,eax
 006096AF    mov        dl,1
 006096B1    mov        eax,dword ptr [ebx+314]; Tjabatanaddfrm.btnsimpan:TSpeedButton
 006096B7    call       TControl.SetVisible
 006096BC    mov        dl,1
 006096BE    mov        eax,dword ptr [ebx+310]; Tjabatanaddfrm.btnbatal:TSpeedButton
 006096C4    call       TControl.SetVisible
 006096C9    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006096CE    mov        eax,dword ptr [eax]
 006096D0    mov        eax,dword ptr [eax+654]; Tdm.jobdes:TZQuery
 006096D6    call       TDataSet.Append
 006096DB    pop        ebx
 006096DC    ret
*}
end;

end.