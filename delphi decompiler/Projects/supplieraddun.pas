{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit supplieraddun;

interface

uses
  Classes, Windows, Graphics, rep_add_frm, StdCtrls, DBCtrls;

type
  Tsupplieraddfrm = class(Tadd_rep_frm)
    Label2:TLabel;//f328
    namadepan:TDBEdit;//f32C
    Label3:TLabel;//f330
    DBEdit1:TDBEdit;//f334
    Label4:TLabel;//f338
    DBEdit2:TDBEdit;//f33C
    Label5:TLabel;//f340
    DBEdit3:TDBEdit;//f344
    procedure SpeedButton4Click;
    procedure SpeedButton3Click;
  end;

implementation

{$R *.DFM}

//005D8F3C
procedure Tsupplieraddfrm.SpeedButton4Click;
begin
{*
 005D8F3C    push       ebp
 005D8F3D    mov        ebp,esp
 005D8F3F    push       0
 005D8F41    push       ebx
 005D8F42    mov        ebx,eax
 005D8F44    xor        eax,eax
 005D8F46    push       ebp
 005D8F47    push       5D8FE5
 005D8F4C    push       dword ptr fs:[eax]
 005D8F4F    mov        dword ptr fs:[eax],esp
 005D8F52    lea        edx,[ebp-4]
 005D8F55    mov        eax,dword ptr [ebx+320]; Tsupplieraddfrm.SpeedButton4:TSpeedButton
 005D8F5B    call       TControl.GetText
 005D8F60    mov        eax,dword ptr [ebp-4]
 005D8F63    mov        edx,5D8FF8; '&Simpan'
 005D8F68    call       @LStrCmp
>005D8F6D    jne        005D8FA0
 005D8F6F    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D8F74    mov        eax,dword ptr [eax]
 005D8F76    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D8F7C    call       005D8650
 005D8F81    mov        edx,5D9008; '&Tambah'
 005D8F86    mov        eax,dword ptr [ebx+320]; Tsupplieraddfrm.SpeedButton4:TSpeedButton
 005D8F8C    call       TControl.SetText
 005D8F91    xor        edx,edx
 005D8F93    mov        eax,dword ptr [ebx+31C]; Tsupplieraddfrm.SpeedButton3:TSpeedButton
 005D8F99    call       TControl.SetVisible
>005D8F9E    jmp        005D8FCF
 005D8FA0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D8FA5    mov        eax,dword ptr [eax]
 005D8FA7    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D8FAD    call       TDataSet.Append
 005D8FB2    mov        edx,5D8FF8; '&Simpan'
 005D8FB7    mov        eax,dword ptr [ebx+320]; Tsupplieraddfrm.SpeedButton4:TSpeedButton
 005D8FBD    call       TControl.SetText
 005D8FC2    mov        dl,1
 005D8FC4    mov        eax,dword ptr [ebx+31C]; Tsupplieraddfrm.SpeedButton3:TSpeedButton
 005D8FCA    call       TControl.SetVisible
 005D8FCF    xor        eax,eax
 005D8FD1    pop        edx
 005D8FD2    pop        ecx
 005D8FD3    pop        ecx
 005D8FD4    mov        dword ptr fs:[eax],edx
 005D8FD7    push       5D8FEC
 005D8FDC    lea        eax,[ebp-4]
 005D8FDF    call       @LStrClr
 005D8FE4    ret
<005D8FE5    jmp        @HandleFinally
<005D8FEA    jmp        005D8FDC
 005D8FEC    pop        ebx
 005D8FED    pop        ecx
 005D8FEE    pop        ebp
 005D8FEF    ret
*}
end;

//005D9010
procedure Tsupplieraddfrm.SpeedButton3Click;
begin
{*
 005D9010    push       ebx
 005D9011    mov        ebx,eax
 005D9013    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9018    mov        eax,dword ptr [eax]
 005D901A    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D9020    call       005D86A0
 005D9025    mov        eax,ebx
 005D9027    call       TCustomForm.Close
 005D902C    pop        ebx
 005D902D    ret
*}
end;

end.