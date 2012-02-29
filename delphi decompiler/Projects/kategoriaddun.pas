{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit kategoriaddun;

interface

uses
  Classes, Windows, Graphics, rep_add_frm, StdCtrls, DBCtrls;

type
  Tkategoriaddfrm = class(Tadd_rep_frm)
    Label2:TLabel;//f328
    namadepan:TDBEdit;//f32C
    procedure SpeedButton4Click;
    procedure SpeedButton3Click;
    procedure FormActivate;
  end;

implementation

{$R *.DFM}

//005E309C
procedure Tkategoriaddfrm.SpeedButton4Click;
begin
{*
 005E309C    push       ebp
 005E309D    mov        ebp,esp
 005E309F    push       0
 005E30A1    push       ebx
 005E30A2    mov        ebx,eax
 005E30A4    xor        eax,eax
 005E30A6    push       ebp
 005E30A7    push       5E312B
 005E30AC    push       dword ptr fs:[eax]
 005E30AF    mov        dword ptr fs:[eax],esp
 005E30B2    lea        edx,[ebp-4]
 005E30B5    mov        eax,dword ptr [ebx+320]; Tkategoriaddfrm.SpeedButton4:TSpeedButton
 005E30BB    call       TControl.GetText
 005E30C0    mov        eax,dword ptr [ebp-4]
 005E30C3    mov        edx,5E3140; '&Simpan'
 005E30C8    call       @LStrCmp
>005E30CD    jne        005E30F3
 005E30CF    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E30D4    mov        eax,dword ptr [eax]
 005E30D6    mov        eax,dword ptr [eax+9C]; Tdm.kategori:TZQuery
 005E30DC    call       005D8650
 005E30E1    mov        edx,5E3150; '&Tambah'
 005E30E6    mov        eax,dword ptr [ebx+320]; Tkategoriaddfrm.SpeedButton4:TSpeedButton
 005E30EC    call       TControl.SetText
>005E30F1    jmp        005E3115
 005E30F3    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E30F8    mov        eax,dword ptr [eax]
 005E30FA    mov        eax,dword ptr [eax+9C]; Tdm.kategori:TZQuery
 005E3100    call       TDataSet.Append
 005E3105    mov        edx,5E3140; '&Simpan'
 005E310A    mov        eax,dword ptr [ebx+320]; Tkategoriaddfrm.SpeedButton4:TSpeedButton
 005E3110    call       TControl.SetText
 005E3115    xor        eax,eax
 005E3117    pop        edx
 005E3118    pop        ecx
 005E3119    pop        ecx
 005E311A    mov        dword ptr fs:[eax],edx
 005E311D    push       5E3132
 005E3122    lea        eax,[ebp-4]
 005E3125    call       @LStrClr
 005E312A    ret
<005E312B    jmp        @HandleFinally
<005E3130    jmp        005E3122
 005E3132    pop        ebx
 005E3133    pop        ecx
 005E3134    pop        ebp
 005E3135    ret
*}
end;

//005E3158
procedure Tkategoriaddfrm.SpeedButton3Click;
begin
{*
 005E3158    push       ebx
 005E3159    mov        ebx,eax
 005E315B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3160    mov        eax,dword ptr [eax]
 005E3162    mov        eax,dword ptr [eax+9C]; Tdm.kategori:TZQuery
 005E3168    call       005D86A0
 005E316D    mov        eax,ebx
 005E316F    call       TCustomForm.Close
 005E3174    pop        ebx
 005E3175    ret
*}
end;

//005E3178
procedure Tkategoriaddfrm.FormActivate;
begin
{*
 005E3178    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E317D    mov        eax,dword ptr [eax]
 005E317F    mov        eax,dword ptr [eax+9C]; Tdm.kategori:TZQuery
 005E3185    mov        al,byte ptr [eax+9D]; TZQuery.FState:TDataSetState
 005E318B    sub        al,3
 005E318D    ret
*}
end;

end.