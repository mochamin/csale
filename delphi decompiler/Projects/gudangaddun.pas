{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit gudangaddun;

interface

uses
  Classes, Windows, Graphics, rep_add_frm, StdCtrls, DBCtrls;

type
  Tgudangaddfrm = class(Tadd_rep_frm)
    Label2:TLabel;//f328
    namadepan:TDBEdit;//f32C
    Label3:TLabel;//f330
    DBEdit1:TDBEdit;//f334
    procedure SpeedButton4Click;
    procedure SpeedButton3Click;
  end;

implementation

{$R *.DFM}

//005E90D8
procedure Tgudangaddfrm.SpeedButton4Click;
begin
{*
 005E90D8    push       ebp
 005E90D9    mov        ebp,esp
 005E90DB    push       0
 005E90DD    push       ebx
 005E90DE    mov        ebx,eax
 005E90E0    xor        eax,eax
 005E90E2    push       ebp
 005E90E3    push       5E9181
 005E90E8    push       dword ptr fs:[eax]
 005E90EB    mov        dword ptr fs:[eax],esp
 005E90EE    lea        edx,[ebp-4]
 005E90F1    mov        eax,dword ptr [ebx+320]; Tgudangaddfrm.SpeedButton4:TSpeedButton
 005E90F7    call       TControl.GetText
 005E90FC    mov        eax,dword ptr [ebp-4]
 005E90FF    mov        edx,5E9194; '&Simpan'
 005E9104    call       @LStrCmp
>005E9109    jne        005E913C
 005E910B    mov        edx,5E91A4; '&Tambah'
 005E9110    mov        eax,dword ptr [ebx+320]; Tgudangaddfrm.SpeedButton4:TSpeedButton
 005E9116    call       TControl.SetText
 005E911B    xor        edx,edx
 005E911D    mov        eax,dword ptr [ebx+31C]; Tgudangaddfrm.SpeedButton3:TSpeedButton
 005E9123    call       TControl.SetVisible
 005E9128    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E912D    mov        eax,dword ptr [eax]
 005E912F    mov        eax,dword ptr [eax+154]; Tdm.gudang:TZQuery
 005E9135    call       005D8650
>005E913A    jmp        005E916B
 005E913C    mov        edx,5E9194; '&Simpan'
 005E9141    mov        eax,dword ptr [ebx+320]; Tgudangaddfrm.SpeedButton4:TSpeedButton
 005E9147    call       TControl.SetText
 005E914C    mov        dl,1
 005E914E    mov        eax,dword ptr [ebx+31C]; Tgudangaddfrm.SpeedButton3:TSpeedButton
 005E9154    call       TControl.SetVisible
 005E9159    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E915E    mov        eax,dword ptr [eax]
 005E9160    mov        eax,dword ptr [eax+154]; Tdm.gudang:TZQuery
 005E9166    call       TDataSet.Append
 005E916B    xor        eax,eax
 005E916D    pop        edx
 005E916E    pop        ecx
 005E916F    pop        ecx
 005E9170    mov        dword ptr fs:[eax],edx
 005E9173    push       5E9188
 005E9178    lea        eax,[ebp-4]
 005E917B    call       @LStrClr
 005E9180    ret
<005E9181    jmp        @HandleFinally
<005E9186    jmp        005E9178
 005E9188    pop        ebx
 005E9189    pop        ecx
 005E918A    pop        ebp
 005E918B    ret
*}
end;

//005E91AC
procedure Tgudangaddfrm.SpeedButton3Click;
begin
{*
 005E91AC    push       ebx
 005E91AD    mov        ebx,eax
 005E91AF    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E91B4    mov        eax,dword ptr [eax]
 005E91B6    mov        eax,dword ptr [eax+154]; Tdm.gudang:TZQuery
 005E91BC    call       005D86A0
 005E91C1    mov        eax,ebx
 005E91C3    call       TCustomForm.Close
 005E91C8    pop        ebx
 005E91C9    ret
*}
end;

end.