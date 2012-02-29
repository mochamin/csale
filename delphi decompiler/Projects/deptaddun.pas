{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit deptaddun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
  Tdeptaddfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    Label2:TLabel;//f30C
    mulaikerja:TDBEdit;//f310
    Panel3:TPanel;//f314
    btntambah:TSpeedButton;//f318
    btnbatal:TSpeedButton;//f31C
    btnsimpan:TSpeedButton;//f320
    procedure btnsimpanClick;
    procedure btnbatalClick;
    procedure btntambahClick;
  end;

implementation

{$R *.DFM}

//0060C6C4
procedure Tdeptaddfrm.btnsimpanClick;
begin
{*
 0060C6C4    push       ebx
 0060C6C5    mov        ebx,eax
 0060C6C7    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060C6CC    mov        eax,dword ptr [eax]
 0060C6CE    mov        eax,dword ptr [eax+6EC]; Tdm.dept:TZQuery
 0060C6D4    call       005D8650
 0060C6D9    xor        edx,edx
 0060C6DB    mov        eax,dword ptr [ebx+320]; Tdeptaddfrm.btnsimpan:TSpeedButton
 0060C6E1    call       TControl.SetVisible
 0060C6E6    xor        edx,edx
 0060C6E8    mov        eax,dword ptr [ebx+31C]; Tdeptaddfrm.btnbatal:TSpeedButton
 0060C6EE    call       TControl.SetVisible
 0060C6F3    pop        ebx
 0060C6F4    ret
*}
end;

//0060C6F8
procedure Tdeptaddfrm.btnbatalClick;
begin
{*
 0060C6F8    push       ebx
 0060C6F9    mov        ebx,eax
 0060C6FB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060C700    mov        eax,dword ptr [eax]
 0060C702    mov        eax,dword ptr [eax+6EC]; Tdm.dept:TZQuery
 0060C708    call       005D86A0
 0060C70D    xor        edx,edx
 0060C70F    mov        eax,dword ptr [ebx+320]; Tdeptaddfrm.btnsimpan:TSpeedButton
 0060C715    call       TControl.SetVisible
 0060C71A    xor        edx,edx
 0060C71C    mov        eax,dword ptr [ebx+31C]; Tdeptaddfrm.btnbatal:TSpeedButton
 0060C722    call       TControl.SetVisible
 0060C727    pop        ebx
 0060C728    ret
*}
end;

//0060C72C
procedure Tdeptaddfrm.btntambahClick;
begin
{*
 0060C72C    push       ebx
 0060C72D    mov        ebx,eax
 0060C72F    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060C734    mov        eax,dword ptr [eax]
 0060C736    mov        eax,dword ptr [eax+6EC]; Tdm.dept:TZQuery
 0060C73C    call       TDataSet.Append
 0060C741    mov        dl,1
 0060C743    mov        eax,dword ptr [ebx+320]; Tdeptaddfrm.btnsimpan:TSpeedButton
 0060C749    call       TControl.SetVisible
 0060C74E    mov        dl,1
 0060C750    mov        eax,dword ptr [ebx+31C]; Tdeptaddfrm.btnbatal:TSpeedButton
 0060C756    call       TControl.SetVisible
 0060C75B    pop        ebx
 0060C75C    ret
*}
end;

end.