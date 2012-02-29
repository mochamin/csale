{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit penguranggajiaddun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
  Tpenguranggajiaddfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    Label2:TLabel;//f30C
    Label3:TLabel;//f310
    Label4:TLabel;//f314
    kd:TDBEdit;//f318
    DBEdit1:TDBEdit;//f31C
    DBEdit2:TDBEdit;//f320
    Panel3:TPanel;//f324
    btntambah:TSpeedButton;//f328
    btnbatal:TSpeedButton;//f32C
    btnsimpan:TSpeedButton;//f330
    procedure btnsimpanClick;
    procedure btntambahClick;
    procedure btnbatalClick;
  end;

implementation

{$R *.DFM}

//0060A668
procedure Tpenguranggajiaddfrm.btnsimpanClick;
begin
{*
 0060A668    push       ebx
 0060A669    mov        ebx,eax
 0060A66B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A670    mov        eax,dword ptr [eax]
 0060A672    mov        eax,dword ptr [eax+8CC]; Tdm.penguranggaji:TZQuery
 0060A678    call       005D8650
 0060A67D    xor        edx,edx
 0060A67F    mov        eax,dword ptr [ebx+330]; Tpenguranggajiaddfrm.btnsimpan:TSpeedButton
 0060A685    call       TControl.SetVisible
 0060A68A    xor        edx,edx
 0060A68C    mov        eax,dword ptr [ebx+32C]; Tpenguranggajiaddfrm.btnbatal:TSpeedButton
 0060A692    call       TControl.SetVisible
 0060A697    pop        ebx
 0060A698    ret
*}
end;

//0060A69C
procedure Tpenguranggajiaddfrm.btntambahClick;
begin
{*
 0060A69C    push       ebx
 0060A69D    mov        ebx,eax
 0060A69F    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A6A4    mov        eax,dword ptr [eax]
 0060A6A6    mov        eax,dword ptr [eax+8CC]; Tdm.penguranggaji:TZQuery
 0060A6AC    call       TDataSet.Append
 0060A6B1    mov        dl,1
 0060A6B3    mov        eax,dword ptr [ebx+330]; Tpenguranggajiaddfrm.btnsimpan:TSpeedButton
 0060A6B9    call       TControl.SetVisible
 0060A6BE    mov        dl,1
 0060A6C0    mov        eax,dword ptr [ebx+32C]; Tpenguranggajiaddfrm.btnbatal:TSpeedButton
 0060A6C6    call       TControl.SetVisible
 0060A6CB    pop        ebx
 0060A6CC    ret
*}
end;

//0060A6D0
procedure Tpenguranggajiaddfrm.btnbatalClick;
begin
{*
 0060A6D0    push       ebx
 0060A6D1    mov        ebx,eax
 0060A6D3    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A6D8    mov        eax,dword ptr [eax]
 0060A6DA    mov        eax,dword ptr [eax+8CC]; Tdm.penguranggaji:TZQuery
 0060A6E0    call       005D86A0
 0060A6E5    xor        edx,edx
 0060A6E7    mov        eax,dword ptr [ebx+330]; Tpenguranggajiaddfrm.btnsimpan:TSpeedButton
 0060A6ED    call       TControl.SetVisible
 0060A6F2    xor        edx,edx
 0060A6F4    mov        eax,dword ptr [ebx+32C]; Tpenguranggajiaddfrm.btnbatal:TSpeedButton
 0060A6FA    call       TControl.SetVisible
 0060A6FF    pop        ebx
 0060A700    ret
*}
end;

end.