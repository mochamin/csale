{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit categorilistun;

interface

uses
  Classes, Windows, Graphics, listrep, StdCtrls;

type
  Tkategorifrm = class(Tlistrepfrm)
    Label2:TLabel;//f338
    cari:TEdit;//f33C
    procedure SpeedButton4Click;
    procedure SpeedButton5Click;
    procedure SpeedButton3Click;
    procedure cariChange;
    procedure SpeedButton6Click;
    procedure FormCreate;
  end;

implementation

{$R *.DFM}

//005E33F4
procedure Tkategorifrm.SpeedButton4Click;
begin
{*
 005E33F4    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E33F9    mov        eax,dword ptr [eax]
 005E33FB    mov        eax,dword ptr [eax+9C]; Tdm.kategori:TZQuery
 005E3401    call       TDataSet.Append
 005E3406    mov        eax,[0061B83C]
 005E340B    mov        eax,dword ptr [eax]
 005E340D    mov        edx,dword ptr ds:[5E2EA8]; Tkategoriaddfrm
 005E3413    call       005D859C
 005E3418    ret
*}
end;

//005E341C
procedure Tkategorifrm.SpeedButton5Click;
begin
{*
 005E341C    push       ebp
 005E341D    mov        ebp,esp
 005E341F    xor        ecx,ecx
 005E3421    push       ecx
 005E3422    push       ecx
 005E3423    push       ecx
 005E3424    push       ecx
 005E3425    push       ebx
 005E3426    xor        eax,eax
 005E3428    push       ebp
 005E3429    push       5E34D0
 005E342E    push       dword ptr fs:[eax]
 005E3431    mov        dword ptr fs:[eax],esp
 005E3434    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3439    mov        eax,dword ptr [eax]
 005E343B    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005E3441    call       005D8634
 005E3446    mov        al,[005E34DC]; 0x1
 005E344B    push       eax
 005E344C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3451    mov        eax,dword ptr [eax]
 005E3453    mov        eax,dword ptr [eax+9C]; Tdm.kategori:TZQuery
 005E3459    mov        edx,5E34E8; 'kg_id'
 005E345E    call       TDataSet.FieldByName
 005E3463    lea        edx,[ebp-10]
 005E3466    mov        ecx,dword ptr [eax]
 005E3468    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E346B    lea        ecx,[ebp-10]
 005E346E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3473    mov        eax,dword ptr [eax]
 005E3475    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005E347B    mov        edx,5E34F8; 'br_kategori'
 005E3480    mov        ebx,dword ptr [eax]
 005E3482    call       dword ptr [ebx+244]; TZAbstractRODataset.Locate
 005E3488    cmp        al,1
>005E348A    jne        005E34A8
 005E348C    push       0
 005E348E    mov        cx,word ptr ds:[5E3504]; 0x4
 005E3495    mov        dl,1
 005E3497    mov        eax,5E3510; 'Kategori ini tidak bisa dihapus karena dipakai oleh item barang pada master barang!'
 005E349C    call       MessageDlg
 005E34A1    call       Abort
>005E34A6    jmp        005E34BA
 005E34A8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E34AD    mov        eax,dword ptr [eax]
 005E34AF    mov        eax,dword ptr [eax+9C]; Tdm.kategori:TZQuery
 005E34B5    call       005D85D0
 005E34BA    xor        eax,eax
 005E34BC    pop        edx
 005E34BD    pop        ecx
 005E34BE    pop        ecx
 005E34BF    mov        dword ptr fs:[eax],edx
 005E34C2    push       5E34D7
 005E34C7    lea        eax,[ebp-10]
 005E34CA    call       @VarClr
 005E34CF    ret
<005E34D0    jmp        @HandleFinally
<005E34D5    jmp        005E34C7
 005E34D7    pop        ebx
 005E34D8    mov        esp,ebp
 005E34DA    pop        ebp
 005E34DB    ret
*}
end;

//005E3564
procedure Tkategorifrm.SpeedButton3Click;
begin
{*
 005E3564    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3569    mov        eax,dword ptr [eax]
 005E356B    mov        eax,dword ptr [eax+9C]; Tdm.kategori:TZQuery
 005E3571    call       TDataSet.Edit
 005E3576    mov        eax,[0061B83C]
 005E357B    mov        eax,dword ptr [eax]
 005E357D    mov        edx,dword ptr ds:[5E2EA8]; Tkategoriaddfrm
 005E3583    call       005D859C
 005E3588    ret
*}
end;

//005E358C
procedure Tkategorifrm.cariChange;
begin
{*
 005E358C    push       ebp
 005E358D    mov        ebp,esp
 005E358F    xor        ecx,ecx
 005E3591    push       ecx
 005E3592    push       ecx
 005E3593    push       ecx
 005E3594    push       ecx
 005E3595    push       ecx
 005E3596    push       ebx
 005E3597    mov        ebx,eax
 005E3599    xor        eax,eax
 005E359B    push       ebp
 005E359C    push       5E3601
 005E35A1    push       dword ptr fs:[eax]
 005E35A4    mov        dword ptr fs:[eax],esp
 005E35A7    mov        al,[005E3610]; 0x3
 005E35AC    push       eax
 005E35AD    lea        edx,[ebp-14]
 005E35B0    mov        eax,dword ptr [ebx+33C]; Tkategorifrm.cari:TEdit
 005E35B6    call       TControl.GetText
 005E35BB    mov        edx,dword ptr [ebp-14]
 005E35BE    lea        eax,[ebp-10]
 005E35C1    call       @VarFromLStr
 005E35C6    lea        ecx,[ebp-10]
 005E35C9    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E35CE    mov        eax,dword ptr [eax]
 005E35D0    mov        eax,dword ptr [eax+9C]; Tdm.kategori:TZQuery
 005E35D6    mov        edx,5E361C; 'kg_nama'
 005E35DB    mov        ebx,dword ptr [eax]
 005E35DD    call       dword ptr [ebx+244]; TZAbstractRODataset.Locate
 005E35E3    xor        eax,eax
 005E35E5    pop        edx
 005E35E6    pop        ecx
 005E35E7    pop        ecx
 005E35E8    mov        dword ptr fs:[eax],edx
 005E35EB    push       5E3608
 005E35F0    lea        eax,[ebp-14]
 005E35F3    call       @LStrClr
 005E35F8    lea        eax,[ebp-10]
 005E35FB    call       @VarClr
 005E3600    ret
<005E3601    jmp        @HandleFinally
<005E3606    jmp        005E35F0
 005E3608    pop        ebx
 005E3609    mov        esp,ebp
 005E360B    pop        ebp
 005E360C    ret
*}
end;

//005E3624
procedure Tkategorifrm.SpeedButton6Click;
begin
{*
 005E3624    push       esi
 005E3625    mov        esi,eax
 005E3627    mov        eax,esi
 005E3629    call       Tlistrepfrm.SpeedButton6Click
 005E362E    mov        eax,dword ptr [esi+31C]; Tkategorifrm.caripn:TPanel
 005E3634    cmp        byte ptr [eax+57],1; TPanel.FVisible:Boolean
>005E3638    jne        005E3648
 005E363A    mov        eax,dword ptr [esi+33C]; Tkategorifrm.cari:TEdit
 005E3640    mov        edx,dword ptr [eax]
 005E3642    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005E3648    pop        esi
 005E3649    ret
*}
end;

//005E364C
procedure Tkategorifrm.FormCreate;
begin
{*
 005E364C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3651    mov        eax,dword ptr [eax]
 005E3653    mov        eax,dword ptr [eax+9C]; Tdm.kategori:TZQuery
 005E3659    call       005D8634
 005E365E    ret
*}
end;

end.