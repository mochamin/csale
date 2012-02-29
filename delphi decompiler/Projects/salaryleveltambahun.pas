{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit salaryleveltambahun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBGrids;

type
  Tsalaryleveltambahfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    btntambah:TSpeedButton;//f30C
    btnedit:TSpeedButton;//f310
    SpeedButton1:TSpeedButton;//f314
    gridtambah:TDBGrid;//f318
    procedure btntambahClick;
    procedure btneditClick;
    procedure SpeedButton1Click;
    //procedure gridtambahKeyDown(?:?; ?:?);
  end;

implementation

{$R *.DFM}

//0060A15C
procedure Tsalaryleveltambahfrm.btntambahClick;
begin
{*
 0060A15C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A161    mov        eax,dword ptr [eax]
 0060A163    mov        eax,dword ptr [eax+884]; Tdm.salary_level_tambah:TZQuery
 0060A169    call       TDataSet.Append
 0060A16E    mov        eax,[0061AFE4]
 0060A173    mov        eax,dword ptr [eax]
 0060A175    mov        edx,dword ptr ds:[609B40]; Tsalaryleveltambahaddfrm
 0060A17B    call       005D859C
 0060A180    ret
*}
end;

//0060A184
procedure Tsalaryleveltambahfrm.btneditClick;
begin
{*
 0060A184    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A189    mov        eax,dword ptr [eax]
 0060A18B    mov        eax,dword ptr [eax+884]; Tdm.salary_level_tambah:TZQuery
 0060A191    call       TDataSet.Edit
 0060A196    mov        eax,[0061AFE4]
 0060A19B    mov        eax,dword ptr [eax]
 0060A19D    mov        edx,dword ptr ds:[609B40]; Tsalaryleveltambahaddfrm
 0060A1A3    call       005D859C
 0060A1A8    ret
*}
end;

//0060A1AC
procedure Tsalaryleveltambahfrm.SpeedButton1Click;
begin
{*
 0060A1AC    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A1B1    mov        eax,dword ptr [eax]
 0060A1B3    mov        eax,dword ptr [eax+884]; Tdm.salary_level_tambah:TZQuery
 0060A1B9    call       005D85D0
 0060A1BE    ret
*}
end;

//0060A1C0
//procedure Tsalaryleveltambahfrm.gridtambahKeyDown(?:?; ?:?);
//begin
{*
 0060A1C0    push       ebp
 0060A1C1    mov        ebp,esp
 0060A1C3    push       ecx
 0060A1C4    mov        ecx,7
 0060A1C9    push       0
 0060A1CB    push       0
 0060A1CD    dec        ecx
<0060A1CE    jne        0060A1C9
 0060A1D0    push       ecx
 0060A1D1    xchg       ecx,dword ptr [ebp-4]
 0060A1D4    push       ebx
 0060A1D5    push       esi
 0060A1D6    mov        esi,eax
 0060A1D8    xor        eax,eax
 0060A1DA    push       ebp
 0060A1DB    push       60A30C
 0060A1E0    push       dword ptr fs:[eax]
 0060A1E3    mov        dword ptr fs:[eax],esp
 0060A1E6    cmp        word ptr [ecx],0D
>0060A1EA    jne        0060A2EB
 0060A1F0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A1F5    mov        eax,dword ptr [eax]
 0060A1F7    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060A1FD    call       TDataSet.Append
 0060A202    xor        edx,edx
 0060A204    mov        eax,dword ptr [esi+318]; Tsalaryleveltambahfrm.gridtambah:TDBGrid
 0060A20A    call       TCustomDBGrid.GetFields
 0060A20F    lea        edx,[ebp-10]
 0060A212    mov        ecx,dword ptr [eax]
 0060A214    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060A217    lea        eax,[ebp-10]
 0060A21A    push       eax
 0060A21B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A220    mov        eax,dword ptr [eax]
 0060A222    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060A228    mov        edx,60A324; 'sd_kode_item'
 0060A22D    call       TDataSet.FieldByName
 0060A232    pop        edx
 0060A233    mov        ecx,dword ptr [eax]
 0060A235    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060A23B    mov        edx,1
 0060A240    mov        eax,dword ptr [esi+318]; Tsalaryleveltambahfrm.gridtambah:TDBGrid
 0060A246    call       TCustomDBGrid.GetFields
 0060A24B    lea        edx,[ebp-20]
 0060A24E    mov        ecx,dword ptr [eax]
 0060A250    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060A253    lea        eax,[ebp-20]
 0060A256    push       eax
 0060A257    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A25C    mov        eax,dword ptr [eax]
 0060A25E    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060A264    mov        edx,60A33C; 'sd_nama'
 0060A269    call       TDataSet.FieldByName
 0060A26E    pop        edx
 0060A26F    mov        ecx,dword ptr [eax]
 0060A271    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060A277    mov        edx,2
 0060A27C    mov        eax,dword ptr [esi+318]; Tsalaryleveltambahfrm.gridtambah:TDBGrid
 0060A282    call       TCustomDBGrid.GetFields
 0060A287    lea        edx,[ebp-30]
 0060A28A    mov        ecx,dword ptr [eax]
 0060A28C    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060A28F    lea        eax,[ebp-30]
 0060A292    push       eax
 0060A293    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A298    mov        eax,dword ptr [eax]
 0060A29A    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060A2A0    mov        edx,60A34C; 'sd_amount'
 0060A2A5    call       TDataSet.FieldByName
 0060A2AA    pop        edx
 0060A2AB    mov        ecx,dword ptr [eax]
 0060A2AD    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060A2B3    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060A2B8    mov        eax,dword ptr [eax]
 0060A2BA    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060A2C0    mov        edx,60A360; 'sd_jenis'
 0060A2C5    call       TDataSet.FieldByName
 0060A2CA    push       eax
 0060A2CB    lea        eax,[ebp-40]
 0060A2CE    mov        edx,60A374; 'tambah'
 0060A2D3    call       @VarFromLStr
 0060A2D8    lea        edx,[ebp-40]
 0060A2DB    pop        eax
 0060A2DC    mov        ecx,dword ptr [eax]
 0060A2DE    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060A2E4    mov        eax,esi
 0060A2E6    call       TCustomForm.Close
 0060A2EB    xor        eax,eax
 0060A2ED    pop        edx
 0060A2EE    pop        ecx
 0060A2EF    pop        ecx
 0060A2F0    mov        dword ptr fs:[eax],edx
 0060A2F3    push       60A313
 0060A2F8    lea        eax,[ebp-40]
 0060A2FB    mov        edx,dword ptr ds:[401114]; Variant
 0060A301    mov        ecx,4
 0060A306    call       @FinalizeArray
 0060A30B    ret
<0060A30C    jmp        @HandleFinally
<0060A311    jmp        0060A2F8
 0060A313    pop        esi
 0060A314    pop        ebx
 0060A315    mov        esp,ebp
 0060A317    pop        ebp
 0060A318    ret        4
*}
//end;

end.