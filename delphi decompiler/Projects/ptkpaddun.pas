{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ptkpaddun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
  Tptkpaddfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel2:TPanel;//f304
    Label2:TLabel;//f308
    Label3:TLabel;//f30C
    mulaikerja:TDBEdit;//f310
    DBEdit1:TDBEdit;//f314
    Panel5:TPanel;//f318
    Panel3:TPanel;//f31C
    btntambah:TSpeedButton;//f320
    btnbatal:TSpeedButton;//f324
    btnsimpan:TSpeedButton;//f328
    Label4:TLabel;//f32C
    DBEdit2:TDBEdit;//f330
    procedure btnsimpanClick;
    procedure btnbatalClick;
    procedure btntambahClick;
  end;

implementation

{$R *.DFM}

//0060C07C
procedure Tptkpaddfrm.btnsimpanClick;
begin
{*
 0060C07C    push       ebx
 0060C07D    mov        ebx,eax
 0060C07F    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060C084    mov        eax,dword ptr [eax]
 0060C086    mov        eax,dword ptr [eax+6B4]; Tdm.ptkp:TZQuery
 0060C08C    call       005D8650
 0060C091    xor        edx,edx
 0060C093    mov        eax,dword ptr [ebx+328]; Tptkpaddfrm.btnsimpan:TSpeedButton
 0060C099    call       TControl.SetVisible
 0060C09E    xor        edx,edx
 0060C0A0    mov        eax,dword ptr [ebx+324]; Tptkpaddfrm.btnbatal:TSpeedButton
 0060C0A6    call       TControl.SetVisible
 0060C0AB    pop        ebx
 0060C0AC    ret
*}
end;

//0060C0B0
procedure Tptkpaddfrm.btnbatalClick;
begin
{*
 0060C0B0    push       ebx
 0060C0B1    mov        ebx,eax
 0060C0B3    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060C0B8    mov        eax,dword ptr [eax]
 0060C0BA    mov        eax,dword ptr [eax+6B4]; Tdm.ptkp:TZQuery
 0060C0C0    call       005D86A0
 0060C0C5    xor        edx,edx
 0060C0C7    mov        eax,dword ptr [ebx+328]; Tptkpaddfrm.btnsimpan:TSpeedButton
 0060C0CD    call       TControl.SetVisible
 0060C0D2    xor        edx,edx
 0060C0D4    mov        eax,dword ptr [ebx+324]; Tptkpaddfrm.btnbatal:TSpeedButton
 0060C0DA    call       TControl.SetVisible
 0060C0DF    pop        ebx
 0060C0E0    ret
*}
end;

//0060C0E4
procedure Tptkpaddfrm.btntambahClick;
begin
{*
 0060C0E4    push       ebx
 0060C0E5    mov        ebx,eax
 0060C0E7    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060C0EC    mov        eax,dword ptr [eax]
 0060C0EE    mov        eax,dword ptr [eax+6B4]; Tdm.ptkp:TZQuery
 0060C0F4    call       TDataSet.Append
 0060C0F9    mov        dl,1
 0060C0FB    mov        eax,dword ptr [ebx+328]; Tptkpaddfrm.btnsimpan:TSpeedButton
 0060C101    call       TControl.SetVisible
 0060C106    mov        dl,1
 0060C108    mov        eax,dword ptr [ebx+324]; Tptkpaddfrm.btnbatal:TSpeedButton
 0060C10E    call       TControl.SetVisible
 0060C113    pop        ebx
 0060C114    ret
*}
end;

end.