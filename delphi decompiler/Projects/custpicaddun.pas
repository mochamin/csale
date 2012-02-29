{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit custpicaddun;

interface

uses
  Classes, Windows, Graphics, rep_add_frm, StdCtrls, DBCtrls;

type
  Tcustpicaddfrm = class(Tadd_rep_frm)
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

//005E46D4
procedure Tcustpicaddfrm.SpeedButton4Click;
begin
{*
 005E46D4    push       ebp
 005E46D5    mov        ebp,esp
 005E46D7    xor        ecx,ecx
 005E46D9    push       ecx
 005E46DA    push       ecx
 005E46DB    push       ecx
 005E46DC    push       ecx
 005E46DD    push       ecx
 005E46DE    push       ecx
 005E46DF    push       ebx
 005E46E0    mov        ebx,eax
 005E46E2    xor        eax,eax
 005E46E4    push       ebp
 005E46E5    push       5E47E1
 005E46EA    push       dword ptr fs:[eax]
 005E46ED    mov        dword ptr fs:[eax],esp
 005E46F0    lea        edx,[ebp-4]
 005E46F3    mov        eax,dword ptr [ebx+320]; Tcustpicaddfrm.SpeedButton4:TSpeedButton
 005E46F9    call       TControl.GetText
 005E46FE    mov        eax,dword ptr [ebp-4]
 005E4701    mov        edx,5E47F8; '&Simpan'
 005E4706    call       @LStrCmp
>005E470B    jne        005E478C
 005E470D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4712    mov        eax,dword ptr [eax]
 005E4714    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E471A    mov        edx,5E4808; 'cu_id'
 005E471F    call       TDataSet.FieldByName
 005E4724    lea        edx,[ebp-18]
 005E4727    mov        ecx,dword ptr [eax]
 005E4729    call       dword ptr [ecx+60]; TField.GetAsString
 005E472C    mov        edx,dword ptr [ebp-18]
 005E472F    lea        eax,[ebp-14]
 005E4732    call       @VarFromLStr
 005E4737    lea        eax,[ebp-14]
 005E473A    push       eax
 005E473B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4740    mov        eax,dword ptr [eax]
 005E4742    mov        eax,dword ptr [eax+0B8]; Tdm.custpic:TZQuery
 005E4748    mov        edx,5E4818; 'cp_custid'
 005E474D    call       TDataSet.FieldByName
 005E4752    pop        edx
 005E4753    mov        ecx,dword ptr [eax]
 005E4755    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E475B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4760    mov        eax,dword ptr [eax]
 005E4762    mov        eax,dword ptr [eax+0B8]; Tdm.custpic:TZQuery
 005E4768    call       005D8650
 005E476D    mov        edx,5E482C; '&Tambah'
 005E4772    mov        eax,dword ptr [ebx+320]; Tcustpicaddfrm.SpeedButton4:TSpeedButton
 005E4778    call       TControl.SetText
 005E477D    xor        edx,edx
 005E477F    mov        eax,dword ptr [ebx+31C]; Tcustpicaddfrm.SpeedButton3:TSpeedButton
 005E4785    call       TControl.SetVisible
>005E478A    jmp        005E47BB
 005E478C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4791    mov        eax,dword ptr [eax]
 005E4793    mov        eax,dword ptr [eax+0B8]; Tdm.custpic:TZQuery
 005E4799    call       TDataSet.Append
 005E479E    mov        edx,5E47F8; '&Simpan'
 005E47A3    mov        eax,dword ptr [ebx+320]; Tcustpicaddfrm.SpeedButton4:TSpeedButton
 005E47A9    call       TControl.SetText
 005E47AE    mov        dl,1
 005E47B0    mov        eax,dword ptr [ebx+31C]; Tcustpicaddfrm.SpeedButton3:TSpeedButton
 005E47B6    call       TControl.SetVisible
 005E47BB    xor        eax,eax
 005E47BD    pop        edx
 005E47BE    pop        ecx
 005E47BF    pop        ecx
 005E47C0    mov        dword ptr fs:[eax],edx
 005E47C3    push       5E47E8
 005E47C8    lea        eax,[ebp-18]
 005E47CB    call       @LStrClr
 005E47D0    lea        eax,[ebp-14]
 005E47D3    call       @VarClr
 005E47D8    lea        eax,[ebp-4]
 005E47DB    call       @LStrClr
 005E47E0    ret
<005E47E1    jmp        @HandleFinally
<005E47E6    jmp        005E47C8
 005E47E8    pop        ebx
 005E47E9    mov        esp,ebp
 005E47EB    pop        ebp
 005E47EC    ret
*}
end;

//005E4834
procedure Tcustpicaddfrm.SpeedButton3Click;
begin
{*
 005E4834    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4839    mov        eax,dword ptr [eax]
 005E483B    mov        eax,dword ptr [eax+0B8]; Tdm.custpic:TZQuery
 005E4841    call       005D86A0
 005E4846    ret
*}
end;

end.