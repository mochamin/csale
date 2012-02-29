{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit inventoryviewun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBGrids;

type
  Tinventoryviewfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    SpeedButton1:TSpeedButton;//f30C
    cari:TEdit;//f310
    gridinv:TDBGrid;//f314
    cbcari:TComboBox;//f318
    procedure cariChange;
    procedure FormCreate;
    //procedure gridinvKeyDown(?:?; ?:?);
    //procedure cariKeyDown(?:?; ?:?);
  end;

implementation

{$R *.DFM}

//005E6E24
//procedure sub_005E6E24(?:Tinventoryviewfrm);
//begin
{*
 005E6E24    push       ebp
 005E6E25    mov        ebp,esp
 005E6E27    mov        ecx,8
 005E6E2C    push       0
 005E6E2E    push       0
 005E6E30    dec        ecx
<005E6E31    jne        005E6E2C
 005E6E33    push       ebx
 005E6E34    push       esi
 005E6E35    mov        esi,eax
 005E6E37    mov        ebx,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 005E6E3D    xor        eax,eax
 005E6E3F    push       ebp
 005E6E40    push       5E6F7B
 005E6E45    push       dword ptr fs:[eax]
 005E6E48    mov        dword ptr fs:[eax],esp
 005E6E4B    mov        eax,dword ptr [ebx]
 005E6E4D    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E6E53    call       TDataSet.Append
 005E6E58    mov        eax,dword ptr [ebx]
 005E6E5A    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E6E60    mov        edx,5E6F90; 'in_kd_barang'
 005E6E65    call       TDataSet.FieldByName
 005E6E6A    lea        edx,[ebp-10]
 005E6E6D    mov        ecx,dword ptr [eax]
 005E6E6F    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E6E72    lea        eax,[ebp-10]
 005E6E75    push       eax
 005E6E76    mov        eax,dword ptr [ebx]
 005E6E78    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E6E7E    mov        edx,5E6FA8; 'jd_kd_barang'
 005E6E83    call       TDataSet.FieldByName
 005E6E88    pop        edx
 005E6E89    mov        ecx,dword ptr [eax]
 005E6E8B    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E6E91    mov        eax,dword ptr [ebx]
 005E6E93    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E6E99    mov        edx,5E6FC0; 'barang'
 005E6E9E    call       TDataSet.FieldByName
 005E6EA3    lea        edx,[ebp-20]
 005E6EA6    mov        ecx,dword ptr [eax]
 005E6EA8    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E6EAB    lea        eax,[ebp-20]
 005E6EAE    push       eax
 005E6EAF    mov        eax,dword ptr [ebx]
 005E6EB1    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E6EB7    mov        edx,5E6FD0; 'jd_nama_barang'
 005E6EBC    call       TDataSet.FieldByName
 005E6EC1    pop        edx
 005E6EC2    mov        ecx,dword ptr [eax]
 005E6EC4    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E6ECA    mov        eax,dword ptr [ebx]
 005E6ECC    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E6ED2    mov        edx,5E6FE8; 'in_harga'
 005E6ED7    call       TDataSet.FieldByName
 005E6EDC    lea        edx,[ebp-30]
 005E6EDF    mov        ecx,dword ptr [eax]
 005E6EE1    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E6EE4    lea        eax,[ebp-30]
 005E6EE7    push       eax
 005E6EE8    mov        eax,dword ptr [ebx]
 005E6EEA    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E6EF0    mov        edx,5E6FFC; 'jd_harga_pokok'
 005E6EF5    call       TDataSet.FieldByName
 005E6EFA    pop        edx
 005E6EFB    mov        ecx,dword ptr [eax]
 005E6EFD    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E6F03    mov        eax,dword ptr [ebx]
 005E6F05    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E6F0B    mov        edx,5E7014; 'unit'
 005E6F10    call       TDataSet.FieldByName
 005E6F15    lea        edx,[ebp-40]
 005E6F18    mov        ecx,dword ptr [eax]
 005E6F1A    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E6F1D    lea        eax,[ebp-40]
 005E6F20    push       eax
 005E6F21    mov        eax,dword ptr [ebx]
 005E6F23    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E6F29    mov        edx,5E7024; 'jd_satuan'
 005E6F2E    call       TDataSet.FieldByName
 005E6F33    pop        edx
 005E6F34    mov        ecx,dword ptr [eax]
 005E6F36    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E6F3C    mov        eax,dword ptr [ebx]
 005E6F3E    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E6F44    mov        edx,5E7038; 'jd_harga_jual'
 005E6F49    call       TDataSet.FieldByName
 005E6F4E    call       TField.FocusControl
 005E6F53    mov        eax,esi
 005E6F55    call       TCustomForm.Close
 005E6F5A    xor        eax,eax
 005E6F5C    pop        edx
 005E6F5D    pop        ecx
 005E6F5E    pop        ecx
 005E6F5F    mov        dword ptr fs:[eax],edx
 005E6F62    push       5E6F82
 005E6F67    lea        eax,[ebp-40]
 005E6F6A    mov        edx,dword ptr ds:[401114]; Variant
 005E6F70    mov        ecx,4
 005E6F75    call       @FinalizeArray
 005E6F7A    ret
<005E6F7B    jmp        @HandleFinally
<005E6F80    jmp        005E6F67
 005E6F82    pop        esi
 005E6F83    pop        ebx
 005E6F84    mov        esp,ebp
 005E6F86    pop        ebp
 005E6F87    ret
*}
//end;

//005E7048
procedure Tinventoryviewfrm.cariChange;
begin
{*
 005E7048    push       ebp
 005E7049    mov        ebp,esp
 005E704B    mov        ecx,5
 005E7050    push       0
 005E7052    push       0
 005E7054    dec        ecx
<005E7055    jne        005E7050
 005E7057    push       ebx
 005E7058    mov        ebx,eax
 005E705A    xor        eax,eax
 005E705C    push       ebp
 005E705D    push       5E7122
 005E7062    push       dword ptr fs:[eax]
 005E7065    mov        dword ptr fs:[eax],esp
 005E7068    mov        eax,dword ptr [ebx+318]; Tinventoryviewfrm.cbcari:TComboBox
 005E706E    mov        edx,dword ptr [eax]
 005E7070    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 005E7076    test       eax,eax
>005E7078    jne        005E70B8
 005E707A    mov        al,[005E7130]; 0x3
 005E707F    push       eax
 005E7080    lea        edx,[ebp-14]
 005E7083    mov        eax,dword ptr [ebx+310]; Tinventoryviewfrm.cari:TEdit
 005E7089    call       TControl.GetText
 005E708E    mov        edx,dword ptr [ebp-14]
 005E7091    lea        eax,[ebp-10]
 005E7094    call       @VarFromLStr
 005E7099    lea        ecx,[ebp-10]
 005E709C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E70A1    mov        eax,dword ptr [eax]
 005E70A3    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E70A9    mov        edx,5E713C; 'barang'
 005E70AE    mov        ebx,dword ptr [eax]
 005E70B0    call       dword ptr [ebx+244]; TZAbstractRODataset.Locate
>005E70B6    jmp        005E70F4
 005E70B8    mov        al,[005E7130]; 0x3
 005E70BD    push       eax
 005E70BE    lea        edx,[ebp-28]
 005E70C1    mov        eax,dword ptr [ebx+310]; Tinventoryviewfrm.cari:TEdit
 005E70C7    call       TControl.GetText
 005E70CC    mov        edx,dword ptr [ebp-28]
 005E70CF    lea        eax,[ebp-24]
 005E70D2    call       @VarFromLStr
 005E70D7    lea        ecx,[ebp-24]
 005E70DA    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E70DF    mov        eax,dword ptr [eax]
 005E70E1    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E70E7    mov        edx,5E714C; 'type'
 005E70EC    mov        ebx,dword ptr [eax]
 005E70EE    call       dword ptr [ebx+244]; TZAbstractRODataset.Locate
 005E70F4    xor        eax,eax
 005E70F6    pop        edx
 005E70F7    pop        ecx
 005E70F8    pop        ecx
 005E70F9    mov        dword ptr fs:[eax],edx
 005E70FC    push       5E7129
 005E7101    lea        eax,[ebp-28]
 005E7104    call       @LStrClr
 005E7109    lea        eax,[ebp-24]
 005E710C    call       @VarClr
 005E7111    lea        eax,[ebp-14]
 005E7114    call       @LStrClr
 005E7119    lea        eax,[ebp-10]
 005E711C    call       @VarClr
 005E7121    ret
<005E7122    jmp        @HandleFinally
<005E7127    jmp        005E7101
 005E7129    pop        ebx
 005E712A    mov        esp,ebp
 005E712C    pop        ebp
 005E712D    ret
*}
end;

//005E7154
procedure Tinventoryviewfrm.FormCreate;
begin
{*
 005E7154    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E7159    mov        eax,dword ptr [eax]
 005E715B    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E7161    call       005D8634
 005E7166    ret
*}
end;

//005E7168
//procedure Tinventoryviewfrm.gridinvKeyDown(?:?; ?:?);
//begin
{*
 005E7168    push       ebp
 005E7169    mov        ebp,esp
 005E716B    cmp        word ptr [ecx],0D
>005E716F    jne        005E7176
 005E7171    call       005E6E24
 005E7176    pop        ebp
 005E7177    ret        4
*}
//end;

//005E717C
//procedure Tinventoryviewfrm.cariKeyDown(?:?; ?:?);
//begin
{*
 005E717C    push       ebp
 005E717D    mov        ebp,esp
 005E717F    push       ebx
 005E7180    push       esi
 005E7181    mov        esi,ecx
 005E7183    mov        ebx,eax
 005E7185    cmp        word ptr [esi],0D
>005E7189    jne        005E7192
 005E718B    mov        eax,ebx
 005E718D    call       005E6E24
 005E7192    cmp        word ptr [esi],28
>005E7196    jne        005E71B8
 005E7198    mov        eax,dword ptr [ebx+314]; Tinventoryviewfrm.gridinv:TDBGrid
 005E719E    mov        edx,dword ptr [eax]
 005E71A0    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005E71A6    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E71AB    mov        eax,dword ptr [eax]
 005E71AD    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E71B3    call       TDataSet.Next
 005E71B8    pop        esi
 005E71B9    pop        ebx
 005E71BA    pop        ebp
 005E71BB    ret        4
*}
//end;

end.