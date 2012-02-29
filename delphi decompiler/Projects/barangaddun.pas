{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit barangaddun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBCtrls;

type
  Tbarangaddfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    SpeedButton2:TSpeedButton;//f30C
    SpeedButton1:TSpeedButton;//f310
    btncari:TSpeedButton;//f314
    SpeedButton3:TSpeedButton;//f318
    SpeedButton4:TSpeedButton;//f31C
    Panel2:TPanel;//f320
    Label2:TLabel;//f324
    namadepan:TDBEdit;//f328
    Label3:TLabel;//f32C
    Label4:TLabel;//f330
    Label5:TLabel;//f334
    Label6:TLabel;//f338
    Label7:TLabel;//f33C
    DBEdit1:TDBEdit;//f340
    DBEdit2:TDBEdit;//f344
    DBEdit3:TDBEdit;//f348
    DBLookupComboBox1:TDBLookupComboBox;//f34C
    DBLookupComboBox2:TDBLookupComboBox;//f350
    SpeedButton5:TSpeedButton;//f354
    SpeedButton6:TSpeedButton;//f358
    procedure FormCreate;
    procedure SpeedButton5Click;
    procedure SpeedButton6Click;
    procedure SpeedButton4Click;
    procedure SpeedButton3Click;
  end;

implementation

{$R *.DFM}

//005E3A28
procedure Tbarangaddfrm.FormCreate;
begin
{*
 005E3A28    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3A2D    mov        eax,dword ptr [eax]
 005E3A2F    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005E3A35    call       005D8634
 005E3A3A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3A3F    mov        eax,dword ptr [eax]
 005E3A41    mov        eax,dword ptr [eax+9C]; Tdm.kategori:TZQuery
 005E3A47    call       005D8634
 005E3A4C    ret
*}
end;

//005E3A50
procedure Tbarangaddfrm.SpeedButton5Click;
begin
{*
 005E3A50    mov        eax,[0061B468]
 005E3A55    mov        eax,dword ptr [eax]
 005E3A57    mov        edx,dword ptr ds:[5E31C8]; Tkategorifrm
 005E3A5D    call       005D859C
 005E3A62    ret
*}
end;

//005E3A64
procedure Tbarangaddfrm.SpeedButton6Click;
begin
{*
 005E3A64    mov        eax,[0061B6B8]
 005E3A69    mov        eax,dword ptr [eax]
 005E3A6B    mov        edx,dword ptr ds:[5D98F8]; Tsupplierfrm
 005E3A71    call       005D859C
 005E3A76    ret
*}
end;

//005E3A78
procedure Tbarangaddfrm.SpeedButton4Click;
begin
{*
 005E3A78    push       ebp
 005E3A79    mov        ebp,esp
 005E3A7B    push       0
 005E3A7D    push       ebx
 005E3A7E    mov        ebx,eax
 005E3A80    xor        eax,eax
 005E3A82    push       ebp
 005E3A83    push       5E3B21
 005E3A88    push       dword ptr fs:[eax]
 005E3A8B    mov        dword ptr fs:[eax],esp
 005E3A8E    lea        edx,[ebp-4]
 005E3A91    mov        eax,dword ptr [ebx+31C]; Tbarangaddfrm.SpeedButton4:TSpeedButton
 005E3A97    call       TControl.GetText
 005E3A9C    mov        eax,dword ptr [ebp-4]
 005E3A9F    mov        edx,5E3B34; '&Simpan'
 005E3AA4    call       @LStrCmp
>005E3AA9    jne        005E3ADC
 005E3AAB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3AB0    mov        eax,dword ptr [eax]
 005E3AB2    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005E3AB8    call       005D8650
 005E3ABD    mov        edx,5E3B44; '&Tambah'
 005E3AC2    mov        eax,dword ptr [ebx+31C]; Tbarangaddfrm.SpeedButton4:TSpeedButton
 005E3AC8    call       TControl.SetText
 005E3ACD    xor        edx,edx
 005E3ACF    mov        eax,dword ptr [ebx+318]; Tbarangaddfrm.SpeedButton3:TSpeedButton
 005E3AD5    call       TControl.SetVisible
>005E3ADA    jmp        005E3B0B
 005E3ADC    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3AE1    mov        eax,dword ptr [eax]
 005E3AE3    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005E3AE9    call       TDataSet.Append
 005E3AEE    mov        edx,5E3B34; '&Simpan'
 005E3AF3    mov        eax,dword ptr [ebx+31C]; Tbarangaddfrm.SpeedButton4:TSpeedButton
 005E3AF9    call       TControl.SetText
 005E3AFE    mov        dl,1
 005E3B00    mov        eax,dword ptr [ebx+318]; Tbarangaddfrm.SpeedButton3:TSpeedButton
 005E3B06    call       TControl.SetVisible
 005E3B0B    xor        eax,eax
 005E3B0D    pop        edx
 005E3B0E    pop        ecx
 005E3B0F    pop        ecx
 005E3B10    mov        dword ptr fs:[eax],edx
 005E3B13    push       5E3B28
 005E3B18    lea        eax,[ebp-4]
 005E3B1B    call       @LStrClr
 005E3B20    ret
<005E3B21    jmp        @HandleFinally
<005E3B26    jmp        005E3B18
 005E3B28    pop        ebx
 005E3B29    pop        ecx
 005E3B2A    pop        ebp
 005E3B2B    ret
*}
end;

//005E3B4C
procedure Tbarangaddfrm.SpeedButton3Click;
begin
{*
 005E3B4C    push       ebx
 005E3B4D    mov        ebx,eax
 005E3B4F    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3B54    mov        eax,dword ptr [eax]
 005E3B56    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005E3B5C    call       005D86A0
 005E3B61    mov        eax,ebx
 005E3B63    call       TCustomForm.Close
 005E3B68    pop        ebx
 005E3B69    ret
*}
end;

end.