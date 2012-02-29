{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit akunviewun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids;

type
  Takunviewfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    Label2:TLabel;//f30C
    cari:TEdit;//f310
    gridakun:TDBGrid;//f314
    procedure FormActivate;
    procedure cariChange;
    //procedure cariKeyDown(?:?; ?:?);
    //procedure gridakunKeyDown(?:?; ?:?);
  end;

implementation

{$R *.DFM}

//006107B0
//procedure sub_006107B0(?:Takunviewfrm);
//begin
{*
 006107B0    push       ebp
 006107B1    mov        ebp,esp
 006107B3    xor        ecx,ecx
 006107B5    push       ecx
 006107B6    push       ecx
 006107B7    push       ecx
 006107B8    push       ecx
 006107B9    push       ecx
 006107BA    push       ecx
 006107BB    push       ecx
 006107BC    push       ecx
 006107BD    push       ebx
 006107BE    push       esi
 006107BF    mov        esi,eax
 006107C1    xor        eax,eax
 006107C3    push       ebp
 006107C4    push       610897
 006107C9    push       dword ptr fs:[eax]
 006107CC    mov        dword ptr fs:[eax],esp
 006107CF    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006107D4    mov        eax,dword ptr [eax]
 006107D6    mov        eax,dword ptr [eax+9B8]; Tdm.jurnal_umum_detail:TZQuery
 006107DC    call       005D8634
 006107E1    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006107E6    mov        eax,dword ptr [eax]
 006107E8    mov        ebx,dword ptr [eax+9B8]; Tdm.jurnal_umum_detail:TZQuery
 006107EE    mov        eax,ebx
 006107F0    call       TDataSet.Edit
 006107F5    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006107FA    mov        eax,dword ptr [eax]
 006107FC    mov        eax,dword ptr [eax+9D8]; Tdm.akunview:TZQuery
 00610802    mov        edx,6108AC; 'ak_no'
 00610807    call       TDataSet.FieldByName
 0061080C    lea        edx,[ebp-10]
 0061080F    mov        ecx,dword ptr [eax]
 00610811    call       dword ptr [ecx+64]; TField.GetAsVariant
 00610814    lea        eax,[ebp-10]
 00610817    push       eax
 00610818    mov        edx,6108BC; 'jl_akun'
 0061081D    mov        eax,ebx
 0061081F    call       TDataSet.FieldByName
 00610824    pop        edx
 00610825    mov        ecx,dword ptr [eax]
 00610827    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0061082D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00610832    mov        eax,dword ptr [eax]
 00610834    mov        eax,dword ptr [eax+9D8]; Tdm.akunview:TZQuery
 0061083A    mov        edx,6108CC; 'ak_desc'
 0061083F    call       TDataSet.FieldByName
 00610844    lea        edx,[ebp-20]
 00610847    mov        ecx,dword ptr [eax]
 00610849    call       dword ptr [ecx+64]; TField.GetAsVariant
 0061084C    lea        eax,[ebp-20]
 0061084F    push       eax
 00610850    mov        edx,6108DC; 'jl_desc'
 00610855    mov        eax,ebx
 00610857    call       TDataSet.FieldByName
 0061085C    pop        edx
 0061085D    mov        ecx,dword ptr [eax]
 0061085F    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 00610865    mov        eax,ebx
 00610867    mov        edx,dword ptr [eax]
 00610869    call       dword ptr [edx+24C]; TDataSet.Post
 0061086F    mov        eax,esi
 00610871    call       TCustomForm.Close
 00610876    xor        eax,eax
 00610878    pop        edx
 00610879    pop        ecx
 0061087A    pop        ecx
 0061087B    mov        dword ptr fs:[eax],edx
 0061087E    push       61089E
 00610883    lea        eax,[ebp-20]
 00610886    mov        edx,dword ptr ds:[401114]; Variant
 0061088C    mov        ecx,2
 00610891    call       @FinalizeArray
 00610896    ret
<00610897    jmp        @HandleFinally
<0061089C    jmp        00610883
 0061089E    pop        esi
 0061089F    pop        ebx
 006108A0    mov        esp,ebp
 006108A2    pop        ebp
 006108A3    ret
*}
//end;

//006108E4
procedure Takunviewfrm.FormActivate;
begin
{*
 006108E4    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006108E9    mov        eax,dword ptr [eax]
 006108EB    mov        eax,dword ptr [eax+9D8]; Tdm.akunview:TZQuery
 006108F1    call       005D8634
 006108F6    ret
*}
end;

//006108F8
procedure Takunviewfrm.cariChange;
begin
{*
 006108F8    push       ebp
 006108F9    mov        ebp,esp
 006108FB    xor        ecx,ecx
 006108FD    push       ecx
 006108FE    push       ecx
 006108FF    push       ecx
 00610900    push       ecx
 00610901    push       ecx
 00610902    push       ecx
 00610903    push       ebx
 00610904    push       esi
 00610905    mov        esi,eax
 00610907    xor        eax,eax
 00610909    push       ebp
 0061090A    push       6109AD
 0061090F    push       dword ptr fs:[eax]
 00610912    mov        dword ptr fs:[eax],esp
 00610915    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0061091A    mov        eax,dword ptr [eax]
 0061091C    mov        ebx,dword ptr [eax+9D8]; Tdm.akunview:TZQuery
 00610922    mov        eax,ebx
 00610924    call       TZReadOnlyQuery.GetSQL
 00610929    mov        edx,6109C4; 'select * from akun where ak_desc like (:des) order by ak_no asc '
 0061092E    mov        ecx,dword ptr [eax]
 00610930    call       dword ptr [ecx+2C]
 00610933    push       610A10; '%'
 00610938    lea        edx,[ebp-18]
 0061093B    mov        eax,dword ptr [esi+310]; Takunviewfrm.cari:TEdit
 00610941    call       TControl.GetText
 00610946    push       dword ptr [ebp-18]
 00610949    push       610A10; '%'
 0061094E    lea        eax,[ebp-14]
 00610951    mov        edx,3
 00610956    call       @LStrCatN
 0061095B    mov        edx,dword ptr [ebp-14]
 0061095E    lea        eax,[ebp-10]
 00610961    call       @VarFromLStr
 00610966    lea        eax,[ebp-10]
 00610969    push       eax
 0061096A    mov        edx,610A1C; 'des'
 0061096F    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 00610975    call       TParams.ParamByName
 0061097A    pop        edx
 0061097B    call       TParam.SetAsVariant
 00610980    mov        eax,ebx
 00610982    call       TDataSet.Open
 00610987    xor        eax,eax
 00610989    pop        edx
 0061098A    pop        ecx
 0061098B    pop        ecx
 0061098C    mov        dword ptr fs:[eax],edx
 0061098F    push       6109B4
 00610994    lea        eax,[ebp-18]
 00610997    call       @LStrClr
 0061099C    lea        eax,[ebp-14]
 0061099F    call       @LStrClr
 006109A4    lea        eax,[ebp-10]
 006109A7    call       @VarClr
 006109AC    ret
<006109AD    jmp        @HandleFinally
<006109B2    jmp        00610994
 006109B4    pop        esi
 006109B5    pop        ebx
 006109B6    mov        esp,ebp
 006109B8    pop        ebp
 006109B9    ret
*}
end;

//00610A20
//procedure Takunviewfrm.cariKeyDown(?:?; ?:?);
//begin
{*
 00610A20    push       ebp
 00610A21    mov        ebp,esp
 00610A23    push       ebx
 00610A24    push       esi
 00610A25    mov        esi,ecx
 00610A27    mov        ebx,eax
 00610A29    cmp        word ptr [esi],28
>00610A2D    jne        00610A4F
 00610A2F    mov        eax,dword ptr [ebx+314]; Takunviewfrm.gridakun:TDBGrid
 00610A35    mov        edx,dword ptr [eax]
 00610A37    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 00610A3D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00610A42    mov        eax,dword ptr [eax]
 00610A44    mov        eax,dword ptr [eax+9D8]; Tdm.akunview:TZQuery
 00610A4A    call       TDataSet.Next
 00610A4F    cmp        word ptr [esi],0D
>00610A53    jne        00610A5C
 00610A55    mov        eax,ebx
 00610A57    call       006107B0
 00610A5C    pop        esi
 00610A5D    pop        ebx
 00610A5E    pop        ebp
 00610A5F    ret        4
*}
//end;

//00610A64
//procedure Takunviewfrm.gridakunKeyDown(?:?; ?:?);
//begin
{*
 00610A64    push       ebp
 00610A65    mov        ebp,esp
 00610A67    cmp        word ptr [ecx],0D
>00610A6B    jne        00610A72
 00610A6D    call       006107B0
 00610A72    pop        ebp
 00610A73    ret        4
*}
//end;

end.