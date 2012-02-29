{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit salary_level_tambahaddun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
  Tsalaryleveltambahaddfrm = class(TForm)
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
    procedure btnbatalClick;
    procedure btntambahClick;
  end;

implementation

{$R *.DFM}

//00609E00
procedure Tsalaryleveltambahaddfrm.btnsimpanClick;
begin
{*
 00609E00    push       ebx
 00609E01    mov        ebx,eax
 00609E03    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00609E08    mov        eax,dword ptr [eax]
 00609E0A    mov        eax,dword ptr [eax+884]; Tdm.salary_level_tambah:TZQuery
 00609E10    call       005D8650
 00609E15    xor        edx,edx
 00609E17    mov        eax,dword ptr [ebx+330]; Tsalaryleveltambahaddfrm.btnsimpan:TSpeedButton
 00609E1D    call       TControl.SetVisible
 00609E22    xor        edx,edx
 00609E24    mov        eax,dword ptr [ebx+32C]; Tsalaryleveltambahaddfrm.btnbatal:TSpeedButton
 00609E2A    call       TControl.SetVisible
 00609E2F    pop        ebx
 00609E30    ret
*}
end;

//00609E34
procedure Tsalaryleveltambahaddfrm.btnbatalClick;
begin
{*
 00609E34    push       ebx
 00609E35    mov        ebx,eax
 00609E37    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00609E3C    mov        eax,dword ptr [eax]
 00609E3E    mov        eax,dword ptr [eax+884]; Tdm.salary_level_tambah:TZQuery
 00609E44    call       005D86A0
 00609E49    xor        edx,edx
 00609E4B    mov        eax,dword ptr [ebx+330]; Tsalaryleveltambahaddfrm.btnsimpan:TSpeedButton
 00609E51    call       TControl.SetVisible
 00609E56    xor        edx,edx
 00609E58    mov        eax,dword ptr [ebx+32C]; Tsalaryleveltambahaddfrm.btnbatal:TSpeedButton
 00609E5E    call       TControl.SetVisible
 00609E63    pop        ebx
 00609E64    ret
*}
end;

//00609E68
procedure Tsalaryleveltambahaddfrm.btntambahClick;
begin
{*
 00609E68    push       ebx
 00609E69    mov        ebx,eax
 00609E6B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00609E70    mov        eax,dword ptr [eax]
 00609E72    mov        eax,dword ptr [eax+884]; Tdm.salary_level_tambah:TZQuery
 00609E78    call       TDataSet.Append
 00609E7D    mov        dl,1
 00609E7F    mov        eax,dword ptr [ebx+330]; Tsalaryleveltambahaddfrm.btnsimpan:TSpeedButton
 00609E85    call       TControl.SetVisible
 00609E8A    mov        dl,1
 00609E8C    mov        eax,dword ptr [ebx+32C]; Tsalaryleveltambahaddfrm.btnbatal:TSpeedButton
 00609E92    call       TControl.SetVisible
 00609E97    pop        ebx
 00609E98    ret
*}
end;

end.