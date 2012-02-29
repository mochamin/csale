{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit penguranggajiun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, Buttons;

type
  Tpenguranggajifrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    gridkurang:TDBGrid;//f308
    Panel3:TPanel;//f30C
    btntambah:TSpeedButton;//f310
    btnedit:TSpeedButton;//f314
    SpeedButton1:TSpeedButton;//f318
    procedure btntambahClick;
    procedure btneditClick;
    procedure SpeedButton1Click;
    procedure FormActivate;
    //procedure gridkurangKeyDown(?:?; ?:?);
  end;

implementation

{$R *.DFM}

//0060A9CC
procedure Tpenguranggajifrm.btntambahClick;
begin
{*
 0060A9CC    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A9D1    mov        eax,dword ptr [eax]
 0060A9D3    mov        eax,dword ptr [eax+8CC]; Tdm.penguranggaji:TZQuery
 0060A9D9    call       TDataSet.Append
 0060A9DE    mov        eax,[0061C05C]
 0060A9E3    mov        eax,dword ptr [eax]
 0060A9E5    mov        edx,dword ptr ds:[60A3B4]; Tpenguranggajiaddfrm
 0060A9EB    call       005D859C
 0060A9F0    ret
*}
end;

//0060A9F4
procedure Tpenguranggajifrm.btneditClick;
begin
{*
 0060A9F4    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A9F9    mov        eax,dword ptr [eax]
 0060A9FB    mov        eax,dword ptr [eax+8CC]; Tdm.penguranggaji:TZQuery
 0060AA01    call       TDataSet.Edit
 0060AA06    mov        eax,[0061C05C]
 0060AA0B    mov        eax,dword ptr [eax]
 0060AA0D    mov        edx,dword ptr ds:[60A3B4]; Tpenguranggajiaddfrm
 0060AA13    call       005D859C
 0060AA18    ret
*}
end;

//0060AA1C
procedure Tpenguranggajifrm.SpeedButton1Click;
begin
{*
 0060AA1C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060AA21    mov        eax,dword ptr [eax]
 0060AA23    mov        eax,dword ptr [eax+8CC]; Tdm.penguranggaji:TZQuery
 0060AA29    call       005D85D0
 0060AA2E    ret
*}
end;

//0060AA30
procedure Tpenguranggajifrm.FormActivate;
begin
{*
 0060AA30    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060AA35    mov        eax,dword ptr [eax]
 0060AA37    mov        eax,dword ptr [eax+8CC]; Tdm.penguranggaji:TZQuery
 0060AA3D    call       005D8634
 0060AA42    ret
*}
end;

//0060AA44
//procedure Tpenguranggajifrm.gridkurangKeyDown(?:?; ?:?);
//begin
{*
 0060AA44    push       ebp
 0060AA45    mov        ebp,esp
 0060AA47    push       ecx
 0060AA48    mov        ecx,7
 0060AA4D    push       0
 0060AA4F    push       0
 0060AA51    dec        ecx
<0060AA52    jne        0060AA4D
 0060AA54    push       ecx
 0060AA55    xchg       ecx,dword ptr [ebp-4]
 0060AA58    push       ebx
 0060AA59    push       esi
 0060AA5A    mov        esi,eax
 0060AA5C    xor        eax,eax
 0060AA5E    push       ebp
 0060AA5F    push       60AB90
 0060AA64    push       dword ptr fs:[eax]
 0060AA67    mov        dword ptr fs:[eax],esp
 0060AA6A    cmp        word ptr [ecx],0D
>0060AA6E    jne        0060AB6F
 0060AA74    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060AA79    mov        eax,dword ptr [eax]
 0060AA7B    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060AA81    call       TDataSet.Append
 0060AA86    xor        edx,edx
 0060AA88    mov        eax,dword ptr [esi+308]; Tpenguranggajifrm.gridkurang:TDBGrid
 0060AA8E    call       TCustomDBGrid.GetFields
 0060AA93    lea        edx,[ebp-10]
 0060AA96    mov        ecx,dword ptr [eax]
 0060AA98    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060AA9B    lea        eax,[ebp-10]
 0060AA9E    push       eax
 0060AA9F    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060AAA4    mov        eax,dword ptr [eax]
 0060AAA6    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060AAAC    mov        edx,60ABA8; 'sd_kode_item'
 0060AAB1    call       TDataSet.FieldByName
 0060AAB6    pop        edx
 0060AAB7    mov        ecx,dword ptr [eax]
 0060AAB9    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060AABF    mov        edx,1
 0060AAC4    mov        eax,dword ptr [esi+308]; Tpenguranggajifrm.gridkurang:TDBGrid
 0060AACA    call       TCustomDBGrid.GetFields
 0060AACF    lea        edx,[ebp-20]
 0060AAD2    mov        ecx,dword ptr [eax]
 0060AAD4    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060AAD7    lea        eax,[ebp-20]
 0060AADA    push       eax
 0060AADB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060AAE0    mov        eax,dword ptr [eax]
 0060AAE2    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060AAE8    mov        edx,60ABC0; 'sd_nama'
 0060AAED    call       TDataSet.FieldByName
 0060AAF2    pop        edx
 0060AAF3    mov        ecx,dword ptr [eax]
 0060AAF5    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060AAFB    mov        edx,2
 0060AB00    mov        eax,dword ptr [esi+308]; Tpenguranggajifrm.gridkurang:TDBGrid
 0060AB06    call       TCustomDBGrid.GetFields
 0060AB0B    lea        edx,[ebp-30]
 0060AB0E    mov        ecx,dword ptr [eax]
 0060AB10    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060AB13    lea        eax,[ebp-30]
 0060AB16    push       eax
 0060AB17    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060AB1C    mov        eax,dword ptr [eax]
 0060AB1E    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060AB24    mov        edx,60ABD0; 'sd_amount'
 0060AB29    call       TDataSet.FieldByName
 0060AB2E    pop        edx
 0060AB2F    mov        ecx,dword ptr [eax]
 0060AB31    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060AB37    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060AB3C    mov        eax,dword ptr [eax]
 0060AB3E    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060AB44    mov        edx,60ABE4; 'sd_jenis'
 0060AB49    call       TDataSet.FieldByName
 0060AB4E    push       eax
 0060AB4F    lea        eax,[ebp-40]
 0060AB52    mov        edx,60ABF8; 'kurang'
 0060AB57    call       @VarFromLStr
 0060AB5C    lea        edx,[ebp-40]
 0060AB5F    pop        eax
 0060AB60    mov        ecx,dword ptr [eax]
 0060AB62    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060AB68    mov        eax,esi
 0060AB6A    call       TCustomForm.Close
 0060AB6F    xor        eax,eax
 0060AB71    pop        edx
 0060AB72    pop        ecx
 0060AB73    pop        ecx
 0060AB74    mov        dword ptr fs:[eax],edx
 0060AB77    push       60AB97
 0060AB7C    lea        eax,[ebp-40]
 0060AB7F    mov        edx,dword ptr ds:[401114]; Variant
 0060AB85    mov        ecx,4
 0060AB8A    call       @FinalizeArray
 0060AB8F    ret
<0060AB90    jmp        @HandleFinally
<0060AB95    jmp        0060AB7C
 0060AB97    pop        esi
 0060AB98    pop        ebx
 0060AB99    mov        esp,ebp
 0060AB9B    pop        ebp
 0060AB9C    ret        4
*}
//end;

end.