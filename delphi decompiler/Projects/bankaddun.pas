{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit bankaddun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
  Tbankaddfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    Label2:TLabel;//f30C
    Label3:TLabel;//f310
    mulaikerja:TDBEdit;//f314
    DBEdit1:TDBEdit;//f318
    Panel3:TPanel;//f31C
    btntambah:TSpeedButton;//f320
    btnbatal:TSpeedButton;//f324
    btnsimpan:TSpeedButton;//f328
    procedure btnsimpanClick;
    procedure btnbatalClick;
    procedure btntambahClick;
  end;

implementation

{$R *.DFM}

//0060B9D4
procedure Tbankaddfrm.btnsimpanClick;
begin
{*
 0060B9D4    push       ebx
 0060B9D5    mov        ebx,eax
 0060B9D7    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B9DC    mov        eax,dword ptr [eax]
 0060B9DE    mov        eax,dword ptr [eax+704]; Tdm.bank:TZQuery
 0060B9E4    call       005D8650
 0060B9E9    xor        edx,edx
 0060B9EB    mov        eax,dword ptr [ebx+328]; Tbankaddfrm.btnsimpan:TSpeedButton
 0060B9F1    call       TControl.SetVisible
 0060B9F6    xor        edx,edx
 0060B9F8    mov        eax,dword ptr [ebx+324]; Tbankaddfrm.btnbatal:TSpeedButton
 0060B9FE    call       TControl.SetVisible
 0060BA03    pop        ebx
 0060BA04    ret
*}
end;

//0060BA08
procedure Tbankaddfrm.btnbatalClick;
begin
{*
 0060BA08    push       ebx
 0060BA09    mov        ebx,eax
 0060BA0B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060BA10    mov        eax,dword ptr [eax]
 0060BA12    mov        eax,dword ptr [eax+704]; Tdm.bank:TZQuery
 0060BA18    call       005D86A0
 0060BA1D    xor        edx,edx
 0060BA1F    mov        eax,dword ptr [ebx+328]; Tbankaddfrm.btnsimpan:TSpeedButton
 0060BA25    call       TControl.SetVisible
 0060BA2A    xor        edx,edx
 0060BA2C    mov        eax,dword ptr [ebx+324]; Tbankaddfrm.btnbatal:TSpeedButton
 0060BA32    call       TControl.SetVisible
 0060BA37    pop        ebx
 0060BA38    ret
*}
end;

//0060BA3C
procedure Tbankaddfrm.btntambahClick;
begin
{*
 0060BA3C    push       ebx
 0060BA3D    mov        ebx,eax
 0060BA3F    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060BA44    mov        eax,dword ptr [eax]
 0060BA46    mov        eax,dword ptr [eax+704]; Tdm.bank:TZQuery
 0060BA4C    call       TDataSet.Append
 0060BA51    mov        dl,1
 0060BA53    mov        eax,dword ptr [ebx+328]; Tbankaddfrm.btnsimpan:TSpeedButton
 0060BA59    call       TControl.SetVisible
 0060BA5E    mov        dl,1
 0060BA60    mov        eax,dword ptr [ebx+324]; Tbankaddfrm.btnbatal:TSpeedButton
 0060BA66    call       TControl.SetVisible
 0060BA6B    pop        ebx
 0060BA6C    ret
*}
end;

end.