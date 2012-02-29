{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit projectaddun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBCtrls;

type
  Tprojectaddfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    btnbatal:TSpeedButton;//f30C
    btnsimpan:TSpeedButton;//f310
    Panel2:TPanel;//f314
    Label2:TLabel;//f318
    po:TDBEdit;//f31C
    Label3:TLabel;//f320
    Label4:TLabel;//f324
    DBEdit1:TDBEdit;//f328
    DBLookupComboBox1:TDBLookupComboBox;//f32C
    procedure FormCreate;
    procedure btnsimpanClick;
    procedure btnbatalClick;
  end;

implementation

{$R *.DFM}

//005DB3A8
procedure Tprojectaddfrm.FormCreate;
begin
{*
 005DB3A8    ret
*}
end;

//005DB3AC
procedure Tprojectaddfrm.btnsimpanClick;
begin
{*
 005DB3AC    push       ebp
 005DB3AD    mov        ebp,esp
 005DB3AF    push       0
 005DB3B1    push       ebx
 005DB3B2    mov        ebx,eax
 005DB3B4    xor        eax,eax
 005DB3B6    push       ebp
 005DB3B7    push       5DB455
 005DB3BC    push       dword ptr fs:[eax]
 005DB3BF    mov        dword ptr fs:[eax],esp
 005DB3C2    lea        edx,[ebp-4]
 005DB3C5    mov        eax,dword ptr [ebx+310]; Tprojectaddfrm.btnsimpan:TSpeedButton
 005DB3CB    call       TControl.GetText
 005DB3D0    mov        eax,dword ptr [ebp-4]
 005DB3D3    mov        edx,5DB468; '&Simpan'
 005DB3D8    call       @LStrCmp
>005DB3DD    jne        005DB410
 005DB3DF    mov        edx,5DB478; '&Tambah'
 005DB3E4    mov        eax,dword ptr [ebx+310]; Tprojectaddfrm.btnsimpan:TSpeedButton
 005DB3EA    call       TControl.SetText
 005DB3EF    xor        edx,edx
 005DB3F1    mov        eax,dword ptr [ebx+30C]; Tprojectaddfrm.btnbatal:TSpeedButton
 005DB3F7    call       TControl.SetVisible
 005DB3FC    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DB401    mov        eax,dword ptr [eax]
 005DB403    mov        eax,dword ptr [eax+294]; Tdm.project:TZQuery
 005DB409    call       005D8650
>005DB40E    jmp        005DB43F
 005DB410    mov        edx,5DB468; '&Simpan'
 005DB415    mov        eax,dword ptr [ebx+310]; Tprojectaddfrm.btnsimpan:TSpeedButton
 005DB41B    call       TControl.SetText
 005DB420    mov        dl,1
 005DB422    mov        eax,dword ptr [ebx+30C]; Tprojectaddfrm.btnbatal:TSpeedButton
 005DB428    call       TControl.SetVisible
 005DB42D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DB432    mov        eax,dword ptr [eax]
 005DB434    mov        eax,dword ptr [eax+294]; Tdm.project:TZQuery
 005DB43A    call       TDataSet.Append
 005DB43F    xor        eax,eax
 005DB441    pop        edx
 005DB442    pop        ecx
 005DB443    pop        ecx
 005DB444    mov        dword ptr fs:[eax],edx
 005DB447    push       5DB45C
 005DB44C    lea        eax,[ebp-4]
 005DB44F    call       @LStrClr
 005DB454    ret
<005DB455    jmp        @HandleFinally
<005DB45A    jmp        005DB44C
 005DB45C    pop        ebx
 005DB45D    pop        ecx
 005DB45E    pop        ebp
 005DB45F    ret
*}
end;

//005DB480
procedure Tprojectaddfrm.btnbatalClick;
begin
{*
 005DB480    push       ebx
 005DB481    mov        ebx,eax
 005DB483    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DB488    mov        eax,dword ptr [eax]
 005DB48A    mov        eax,dword ptr [eax+294]; Tdm.project:TZQuery
 005DB490    call       005D86A0
 005DB495    mov        eax,ebx
 005DB497    call       TCustomForm.Close
 005DB49C    pop        ebx
 005DB49D    ret
*}
end;

end.