{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit karyawanun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBGrids;

type
  Tkaryawanfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    btntambah:TSpeedButton;//f30C
    DBGrid1:TDBGrid;//f310
    Panel2:TPanel;//f314
    Label2:TLabel;//f318
    cari:TEdit;//f31C
    SpeedButton1:TSpeedButton;//f320
    btnedit:TSpeedButton;//f324
    SpeedButton2:TSpeedButton;//f328
    procedure FormActivate;
    procedure btntambahClick;
    procedure cariChange;
    procedure SpeedButton1Click;
    procedure btneditClick;
    procedure SpeedButton2Click;
    procedure DBGrid1DblClick;
  end;

implementation

{$R *.DFM}

//0060D7E8
procedure Tkaryawanfrm.FormActivate;
begin
{*
 0060D7E8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D7ED    mov        eax,dword ptr [eax]
 0060D7EF    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D7F5    call       005D8634
 0060D7FA    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D7FF    mov        eax,dword ptr [eax]
 0060D801    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060D807    call       005D8634
 0060D80C    ret
*}
end;

//0060D810
procedure Tkaryawanfrm.btntambahClick;
begin
{*
 0060D810    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D815    mov        eax,dword ptr [eax]
 0060D817    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D81D    call       TDataSet.Append
 0060D822    mov        eax,[0061B554]
 0060D827    mov        dword ptr [eax],1
 0060D82D    mov        eax,[0061B43C]
 0060D832    mov        eax,dword ptr [eax]
 0060D834    mov        edx,dword ptr ds:[60CAA4]; Tkaryawanaddfrm
 0060D83A    call       005D859C
 0060D83F    ret
*}
end;

//0060D840
procedure Tkaryawanfrm.cariChange;
begin
{*
 0060D840    push       ebp
 0060D841    mov        ebp,esp
 0060D843    xor        ecx,ecx
 0060D845    push       ecx
 0060D846    push       ecx
 0060D847    push       ecx
 0060D848    push       ecx
 0060D849    push       ecx
 0060D84A    push       ecx
 0060D84B    push       ebx
 0060D84C    push       esi
 0060D84D    mov        esi,eax
 0060D84F    xor        eax,eax
 0060D851    push       ebp
 0060D852    push       60D8F5
 0060D857    push       dword ptr fs:[eax]
 0060D85A    mov        dword ptr fs:[eax],esp
 0060D85D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D862    mov        eax,dword ptr [eax]
 0060D864    mov        ebx,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D86A    mov        eax,ebx
 0060D86C    call       TZReadOnlyQuery.GetSQL
 0060D871    mov        edx,60D90C; 'select * from karyawan where kr_firstname like (:nama) or kr_lastname like (:nama)  order by kr_id desc '
 0060D876    mov        ecx,dword ptr [eax]
 0060D878    call       dword ptr [ecx+2C]
 0060D87B    push       60D980; '%'
 0060D880    lea        edx,[ebp-18]
 0060D883    mov        eax,dword ptr [esi+31C]; Tkaryawanfrm.cari:TEdit
 0060D889    call       TControl.GetText
 0060D88E    push       dword ptr [ebp-18]
 0060D891    push       60D980; '%'
 0060D896    lea        eax,[ebp-14]
 0060D899    mov        edx,3
 0060D89E    call       @LStrCatN
 0060D8A3    mov        edx,dword ptr [ebp-14]
 0060D8A6    lea        eax,[ebp-10]
 0060D8A9    call       @VarFromLStr
 0060D8AE    lea        eax,[ebp-10]
 0060D8B1    push       eax
 0060D8B2    mov        edx,60D98C; 'nama'
 0060D8B7    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 0060D8BD    call       TParams.ParamByName
 0060D8C2    pop        edx
 0060D8C3    call       TParam.SetAsVariant
 0060D8C8    mov        eax,ebx
 0060D8CA    call       TDataSet.Open
 0060D8CF    xor        eax,eax
 0060D8D1    pop        edx
 0060D8D2    pop        ecx
 0060D8D3    pop        ecx
 0060D8D4    mov        dword ptr fs:[eax],edx
 0060D8D7    push       60D8FC
 0060D8DC    lea        eax,[ebp-18]
 0060D8DF    call       @LStrClr
 0060D8E4    lea        eax,[ebp-14]
 0060D8E7    call       @LStrClr
 0060D8EC    lea        eax,[ebp-10]
 0060D8EF    call       @VarClr
 0060D8F4    ret
<0060D8F5    jmp        @HandleFinally
<0060D8FA    jmp        0060D8DC
 0060D8FC    pop        esi
 0060D8FD    pop        ebx
 0060D8FE    mov        esp,ebp
 0060D900    pop        ebp
 0060D901    ret
*}
end;

//0060D994
procedure Tkaryawanfrm.SpeedButton1Click;
begin
{*
 0060D994    push       esi
 0060D995    mov        esi,eax
 0060D997    mov        eax,dword ptr [esi+31C]; Tkaryawanfrm.cari:TEdit
 0060D99D    mov        edx,dword ptr [eax]
 0060D99F    call       dword ptr [edx+0E0]; TCustomEdit.Clear
 0060D9A5    pop        esi
 0060D9A6    ret
*}
end;

//0060D9A8
procedure Tkaryawanfrm.btneditClick;
begin
{*
 0060D9A8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D9AD    mov        eax,dword ptr [eax]
 0060D9AF    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D9B5    call       TDataSet.Edit
 0060D9BA    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D9BF    mov        eax,dword ptr [eax]
 0060D9C1    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060D9C7    call       TDataSet.Edit
 0060D9CC    mov        eax,[0061B43C]
 0060D9D1    mov        eax,dword ptr [eax]
 0060D9D3    mov        edx,dword ptr ds:[60CAA4]; Tkaryawanaddfrm
 0060D9D9    call       005D859C
 0060D9DE    ret
*}
end;

//0060D9E0
procedure Tkaryawanfrm.SpeedButton2Click;
begin
{*
 0060D9E0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D9E5    mov        eax,dword ptr [eax]
 0060D9E7    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D9ED    call       005D85D0
 0060D9F2    ret
*}
end;

//0060D9F4
procedure Tkaryawanfrm.DBGrid1DblClick;
begin
{*
 0060D9F4    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D9F9    mov        eax,dword ptr [eax]
 0060D9FB    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060DA01    call       TDataSet.Edit
 0060DA06    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060DA0B    mov        eax,dword ptr [eax]
 0060DA0D    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060DA13    call       TDataSet.Edit
 0060DA18    mov        eax,[0061B43C]
 0060DA1D    mov        eax,dword ptr [eax]
 0060DA1F    mov        edx,dword ptr ds:[60CAA4]; Tkaryawanaddfrm
 0060DA25    call       005D859C
 0060DA2A    ret
*}
end;

end.