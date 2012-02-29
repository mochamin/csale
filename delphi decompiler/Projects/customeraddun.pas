{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit customeraddun;

interface

uses
  Classes, Windows, Graphics, rep_add_frm, StdCtrls, DBCtrls;

type
  Tcustomeraddfrm = class(Tadd_rep_frm)
    Label2:TLabel;//f328
    namadepan:TDBEdit;//f32C
    Label3:TLabel;//f330
    DBEdit1:TDBEdit;//f334
    Label4:TLabel;//f338
    DBEdit2:TDBEdit;//f33C
    Label5:TLabel;//f340
    DBEdit3:TDBEdit;//f344
    Label6:TLabel;//f348
    DBEdit4:TDBEdit;//f34C
    procedure SpeedButton4Click;
    procedure SpeedButton3Click;
    procedure FormActivate;
  end;

implementation

{$R *.DFM}

//005E432C
procedure Tcustomeraddfrm.SpeedButton4Click;
begin
{*
 005E432C    push       ebp
 005E432D    mov        ebp,esp
 005E432F    push       0
 005E4331    push       ebx
 005E4332    mov        ebx,eax
 005E4334    xor        eax,eax
 005E4336    push       ebp
 005E4337    push       5E43D5
 005E433C    push       dword ptr fs:[eax]
 005E433F    mov        dword ptr fs:[eax],esp
 005E4342    lea        edx,[ebp-4]
 005E4345    mov        eax,dword ptr [ebx+320]; Tcustomeraddfrm.SpeedButton4:TSpeedButton
 005E434B    call       TControl.GetText
 005E4350    mov        eax,dword ptr [ebp-4]
 005E4353    mov        edx,5E43E8; '&Simpan'
 005E4358    call       @LStrCmp
>005E435D    jne        005E4390
 005E435F    xor        edx,edx
 005E4361    mov        eax,dword ptr [ebx+31C]; Tcustomeraddfrm.SpeedButton3:TSpeedButton
 005E4367    call       TControl.SetVisible
 005E436C    mov        edx,5E43F8; '&Tambah'
 005E4371    mov        eax,dword ptr [ebx+320]; Tcustomeraddfrm.SpeedButton4:TSpeedButton
 005E4377    call       TControl.SetText
 005E437C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4381    mov        eax,dword ptr [eax]
 005E4383    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E4389    call       005D8650
>005E438E    jmp        005E43BF
 005E4390    mov        dl,1
 005E4392    mov        eax,dword ptr [ebx+31C]; Tcustomeraddfrm.SpeedButton3:TSpeedButton
 005E4398    call       TControl.SetVisible
 005E439D    mov        edx,5E43E8; '&Simpan'
 005E43A2    mov        eax,dword ptr [ebx+320]; Tcustomeraddfrm.SpeedButton4:TSpeedButton
 005E43A8    call       TControl.SetText
 005E43AD    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E43B2    mov        eax,dword ptr [eax]
 005E43B4    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E43BA    call       TDataSet.Append
 005E43BF    xor        eax,eax
 005E43C1    pop        edx
 005E43C2    pop        ecx
 005E43C3    pop        ecx
 005E43C4    mov        dword ptr fs:[eax],edx
 005E43C7    push       5E43DC
 005E43CC    lea        eax,[ebp-4]
 005E43CF    call       @LStrClr
 005E43D4    ret
<005E43D5    jmp        @HandleFinally
<005E43DA    jmp        005E43CC
 005E43DC    pop        ebx
 005E43DD    pop        ecx
 005E43DE    pop        ebp
 005E43DF    ret
*}
end;

//005E4400
procedure Tcustomeraddfrm.SpeedButton3Click;
begin
{*
 005E4400    push       ebx
 005E4401    mov        ebx,eax
 005E4403    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4408    mov        eax,dword ptr [eax]
 005E440A    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E4410    call       005D86A0
 005E4415    mov        eax,ebx
 005E4417    call       TCustomForm.Close
 005E441C    pop        ebx
 005E441D    ret
*}
end;

//005E4420
procedure Tcustomeraddfrm.FormActivate;
begin
{*
 005E4420    push       ebx
 005E4421    mov        ebx,eax
 005E4423    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4428    mov        eax,dword ptr [eax]
 005E442A    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E4430    mov        al,byte ptr [eax+9D]; TZQuery.FState:TDataSetState
 005E4436    sub        al,3
>005E4438    jne        005E4457
 005E443A    mov        edx,5E4464; '&Simpan'
 005E443F    mov        eax,dword ptr [ebx+320]; Tcustomeraddfrm.SpeedButton4:TSpeedButton
 005E4445    call       TControl.SetText
 005E444A    mov        dl,1
 005E444C    mov        eax,dword ptr [ebx+31C]; Tcustomeraddfrm.SpeedButton3:TSpeedButton
 005E4452    call       TControl.SetVisible
 005E4457    pop        ebx
 005E4458    ret
*}
end;

end.