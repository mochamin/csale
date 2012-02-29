{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit pphaddun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
  Tpphaddfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel2:TPanel;//f300
    Label2:TLabel;//f304
    Label3:TLabel;//f308
    Label4:TLabel;//f30C
    mulaikerja:TDBEdit;//f310
    DBEdit1:TDBEdit;//f314
    DBEdit2:TDBEdit;//f318
    Panel3:TPanel;//f31C
    btntambah:TSpeedButton;//f320
    btnbatal:TSpeedButton;//f324
    btnsimpan:TSpeedButton;//f328
    Panel4:TPanel;//f32C
    Panel5:TPanel;//f330
    procedure btnsimpanClick;
    procedure btnbatalClick;
    procedure btntambahClick;
  end;

implementation

{$R *.DFM}

//0060DD00
procedure Tpphaddfrm.btnsimpanClick;
begin
{*
 0060DD00    push       ebx
 0060DD01    mov        ebx,eax
 0060DD03    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060DD08    mov        eax,dword ptr [eax]
 0060DD0A    mov        eax,dword ptr [eax+728]; Tdm.pph:TZQuery
 0060DD10    call       005D8650
 0060DD15    xor        edx,edx
 0060DD17    mov        eax,dword ptr [ebx+328]; Tpphaddfrm.btnsimpan:TSpeedButton
 0060DD1D    call       TControl.SetVisible
 0060DD22    xor        edx,edx
 0060DD24    mov        eax,dword ptr [ebx+324]; Tpphaddfrm.btnbatal:TSpeedButton
 0060DD2A    call       TControl.SetVisible
 0060DD2F    pop        ebx
 0060DD30    ret
*}
end;

//0060DD34
procedure Tpphaddfrm.btnbatalClick;
begin
{*
 0060DD34    push       ebx
 0060DD35    mov        ebx,eax
 0060DD37    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060DD3C    mov        eax,dword ptr [eax]
 0060DD3E    mov        eax,dword ptr [eax+728]; Tdm.pph:TZQuery
 0060DD44    call       005D86A0
 0060DD49    xor        edx,edx
 0060DD4B    mov        eax,dword ptr [ebx+328]; Tpphaddfrm.btnsimpan:TSpeedButton
 0060DD51    call       TControl.SetVisible
 0060DD56    xor        edx,edx
 0060DD58    mov        eax,dword ptr [ebx+324]; Tpphaddfrm.btnbatal:TSpeedButton
 0060DD5E    call       TControl.SetVisible
 0060DD63    pop        ebx
 0060DD64    ret
*}
end;

//0060DD68
procedure Tpphaddfrm.btntambahClick;
begin
{*
 0060DD68    push       ebx
 0060DD69    mov        ebx,eax
 0060DD6B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060DD70    mov        eax,dword ptr [eax]
 0060DD72    mov        eax,dword ptr [eax+728]; Tdm.pph:TZQuery
 0060DD78    call       TDataSet.Append
 0060DD7D    mov        dl,1
 0060DD7F    mov        eax,dword ptr [ebx+328]; Tpphaddfrm.btnsimpan:TSpeedButton
 0060DD85    call       TControl.SetVisible
 0060DD8A    mov        dl,1
 0060DD8C    mov        eax,dword ptr [ebx+324]; Tpphaddfrm.btnbatal:TSpeedButton
 0060DD92    call       TControl.SetVisible
 0060DD97    pop        ebx
 0060DD98    ret
*}
end;

end.