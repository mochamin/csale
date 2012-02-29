{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit supp_pic_addun;

interface

uses
  Classes, Windows, Graphics, rep_add_frm, StdCtrls, DBCtrls;

type
  Tsupp_pic_addfrm = class(Tadd_rep_frm)
    Label2:TLabel;//f328
    namadepan:TDBEdit;//f32C
    DBEdit1:TDBEdit;//f330
    Label3:TLabel;//f334
    Label4:TLabel;//f338
    DBEdit2:TDBEdit;//f33C
    Label5:TLabel;//f340
    DBEdit3:TDBEdit;//f344
    procedure SpeedButton4Click;
    procedure SpeedButton3Click;
  end;

implementation

{$R *.DFM}

//005D92A0
procedure Tsupp_pic_addfrm.SpeedButton4Click;
begin
{*
 005D92A0    push       ebp
 005D92A1    mov        ebp,esp
 005D92A3    xor        ecx,ecx
 005D92A5    push       ecx
 005D92A6    push       ecx
 005D92A7    push       ecx
 005D92A8    push       ecx
 005D92A9    push       ecx
 005D92AA    push       ecx
 005D92AB    push       ebx
 005D92AC    mov        ebx,eax
 005D92AE    xor        eax,eax
 005D92B0    push       ebp
 005D92B1    push       5D93B3
 005D92B6    push       dword ptr fs:[eax]
 005D92B9    mov        dword ptr fs:[eax],esp
 005D92BC    lea        edx,[ebp-4]
 005D92BF    mov        eax,dword ptr [ebx+320]; Tsupp_pic_addfrm.SpeedButton4:TSpeedButton
 005D92C5    call       TControl.GetText
 005D92CA    mov        eax,dword ptr [ebp-4]
 005D92CD    mov        edx,5D93C8; '&Simpan'
 005D92D2    call       @LStrCmp
>005D92D7    jne        005D935E
 005D92DD    mov        edx,5D93D8; '&Tambah'
 005D92E2    mov        eax,dword ptr [ebx+320]; Tsupp_pic_addfrm.SpeedButton4:TSpeedButton
 005D92E8    call       TControl.SetText
 005D92ED    xor        edx,edx
 005D92EF    mov        eax,dword ptr [ebx+31C]; Tsupp_pic_addfrm.SpeedButton3:TSpeedButton
 005D92F5    call       TControl.SetVisible
 005D92FA    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D92FF    mov        eax,dword ptr [eax]
 005D9301    mov        ebx,dword ptr [eax+0B0]; Tdm.supplierpic:TZQuery
 005D9307    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D930C    mov        eax,dword ptr [eax]
 005D930E    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D9314    mov        edx,5D93E8; 'sp_id'
 005D9319    call       TDataSet.FieldByName
 005D931E    lea        edx,[ebp-18]
 005D9321    mov        ecx,dword ptr [eax]
 005D9323    call       dword ptr [ecx+60]; TField.GetAsString
 005D9326    mov        edx,dword ptr [ebp-18]
 005D9329    lea        eax,[ebp-14]
 005D932C    call       @VarFromLStr
 005D9331    lea        eax,[ebp-14]
 005D9334    push       eax
 005D9335    mov        edx,5D93F8; 'sp_supplier'
 005D933A    mov        eax,ebx
 005D933C    call       TDataSet.FieldByName
 005D9341    pop        edx
 005D9342    mov        ecx,dword ptr [eax]
 005D9344    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005D934A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D934F    mov        eax,dword ptr [eax]
 005D9351    mov        eax,dword ptr [eax+0B0]; Tdm.supplierpic:TZQuery
 005D9357    call       005D8650
>005D935C    jmp        005D938D
 005D935E    mov        edx,5D93C8; '&Simpan'
 005D9363    mov        eax,dword ptr [ebx+320]; Tsupp_pic_addfrm.SpeedButton4:TSpeedButton
 005D9369    call       TControl.SetText
 005D936E    mov        dl,1
 005D9370    mov        eax,dword ptr [ebx+31C]; Tsupp_pic_addfrm.SpeedButton3:TSpeedButton
 005D9376    call       TControl.SetVisible
 005D937B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9380    mov        eax,dword ptr [eax]
 005D9382    mov        eax,dword ptr [eax+0B0]; Tdm.supplierpic:TZQuery
 005D9388    call       TDataSet.Append
 005D938D    xor        eax,eax
 005D938F    pop        edx
 005D9390    pop        ecx
 005D9391    pop        ecx
 005D9392    mov        dword ptr fs:[eax],edx
 005D9395    push       5D93BA
 005D939A    lea        eax,[ebp-18]
 005D939D    call       @LStrClr
 005D93A2    lea        eax,[ebp-14]
 005D93A5    call       @VarClr
 005D93AA    lea        eax,[ebp-4]
 005D93AD    call       @LStrClr
 005D93B2    ret
<005D93B3    jmp        @HandleFinally
<005D93B8    jmp        005D939A
 005D93BA    pop        ebx
 005D93BB    mov        esp,ebp
 005D93BD    pop        ebp
 005D93BE    ret
*}
end;

//005D9404
procedure Tsupp_pic_addfrm.SpeedButton3Click;
begin
{*
 005D9404    push       ebx
 005D9405    mov        ebx,eax
 005D9407    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D940C    mov        eax,dword ptr [eax]
 005D940E    mov        eax,dword ptr [eax+0B0]; Tdm.supplierpic:TZQuery
 005D9414    call       005D86A0
 005D9419    mov        eax,ebx
 005D941B    call       TCustomForm.Close
 005D9420    pop        ebx
 005D9421    ret
*}
end;

end.