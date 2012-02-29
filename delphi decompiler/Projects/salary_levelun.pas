{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit salary_levelun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, Buttons;

type
  Tsalarylevelfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    Label2:TLabel;//f30C
    cari:TEdit;//f310
    gridlevel:TDBGrid;//f314
    Panel3:TPanel;//f318
    btntambah:TSpeedButton;//f31C
    btnedit:TSpeedButton;//f320
    SpeedButton2:TSpeedButton;//f324
    SpeedButton1:TSpeedButton;//f328
    procedure FormActivate;
    procedure btntambahClick;
    procedure btneditClick;
    procedure SpeedButton1Click;
    procedure gridlevelDblClick;
  end;

implementation

{$R *.DFM}

//0060B4F0
procedure Tsalarylevelfrm.FormActivate;
begin
{*
 0060B4F0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B4F5    mov        eax,dword ptr [eax]
 0060B4F7    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060B4FD    call       005D8634
 0060B502    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B507    mov        eax,dword ptr [eax]
 0060B509    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060B50F    call       005D8634
 0060B514    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B519    mov        eax,dword ptr [eax]
 0060B51B    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060B521    call       005D8634
 0060B526    ret
*}
end;

//0060B528
procedure Tsalarylevelfrm.btntambahClick;
begin
{*
 0060B528    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B52D    mov        eax,dword ptr [eax]
 0060B52F    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060B535    call       TDataSet.Append
 0060B53A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B53F    mov        eax,dword ptr [eax]
 0060B541    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060B547    call       TDataSet.Append
 0060B54C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B551    mov        eax,dword ptr [eax]
 0060B553    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060B559    call       TDataSet.Append
 0060B55E    mov        eax,[0061B8B4]
 0060B563    mov        eax,dword ptr [eax]
 0060B565    mov        edx,dword ptr ds:[60AC38]; Tsalaryleveladdfrm
 0060B56B    call       005D859C
 0060B570    ret
*}
end;

//0060B574
procedure Tsalarylevelfrm.btneditClick;
begin
{*
 0060B574    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B579    mov        eax,dword ptr [eax]
 0060B57B    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060B581    call       TDataSet.Edit
 0060B586    mov        eax,[0061B8B4]
 0060B58B    mov        eax,dword ptr [eax]
 0060B58D    mov        edx,dword ptr ds:[60AC38]; Tsalaryleveladdfrm
 0060B593    call       005D859C
 0060B598    ret
*}
end;

//0060B59C
procedure Tsalarylevelfrm.SpeedButton1Click;
begin
{*
 0060B59C    push       ebp
 0060B59D    mov        ebp,esp
 0060B59F    xor        ecx,ecx
 0060B5A1    push       ecx
 0060B5A2    push       ecx
 0060B5A3    push       ecx
 0060B5A4    push       ecx
 0060B5A5    push       ebx
 0060B5A6    push       esi
 0060B5A7    mov        esi,eax
 0060B5A9    xor        eax,eax
 0060B5AB    push       ebp
 0060B5AC    push       60B67B
 0060B5B1    push       dword ptr fs:[eax]
 0060B5B4    mov        dword ptr fs:[eax],esp
 0060B5B7    push       0
 0060B5B9    mov        cx,word ptr ds:[60B688]; 0x3
 0060B5C0    mov        dl,3
 0060B5C2    mov        eax,60B694; 'Hapus Data Ini?'
 0060B5C7    call       MessageDlg
 0060B5CC    cmp        eax,6
>0060B5CF    jne        0060B665
 0060B5D5    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B5DA    mov        eax,dword ptr [eax]
 0060B5DC    mov        ebx,dword ptr [eax+8E0]; Tdm.salary_level_detail:TZQuery
 0060B5E2    mov        eax,ebx
 0060B5E4    call       TZReadOnlyQuery.GetSQL
 0060B5E9    mov        edx,60B6AC; 'delete from salary_level_detail where sd_kode = (:kd) '
 0060B5EE    mov        ecx,dword ptr [eax]
 0060B5F0    call       dword ptr [ecx+2C]
 0060B5F3    mov        edx,2
 0060B5F8    mov        eax,dword ptr [esi+314]; Tsalarylevelfrm.gridlevel:TDBGrid
 0060B5FE    call       TCustomDBGrid.GetFields
 0060B603    lea        edx,[ebp-10]
 0060B606    mov        ecx,dword ptr [eax]
 0060B608    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060B60B    lea        eax,[ebp-10]
 0060B60E    push       eax
 0060B60F    mov        edx,60B6EC; 'kd'
 0060B614    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 0060B61A    call       TParams.ParamByName
 0060B61F    pop        edx
 0060B620    call       TParam.SetAsVariant
 0060B625    mov        eax,ebx
 0060B627    mov        edx,dword ptr [eax]
 0060B629    call       dword ptr [edx+274]; TZQuery.sub_00572D6C
 0060B62F    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B634    mov        eax,dword ptr [eax]
 0060B636    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060B63C    call       TDataSet.Delete
 0060B641    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B646    mov        eax,dword ptr [eax]
 0060B648    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060B64E    call       0056F648
 0060B653    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B658    mov        eax,dword ptr [eax]
 0060B65A    mov        eax,dword ptr [eax+8E0]; Tdm.salary_level_detail:TZQuery
 0060B660    call       0056F648
 0060B665    xor        eax,eax
 0060B667    pop        edx
 0060B668    pop        ecx
 0060B669    pop        ecx
 0060B66A    mov        dword ptr fs:[eax],edx
 0060B66D    push       60B682
 0060B672    lea        eax,[ebp-10]
 0060B675    call       @VarClr
 0060B67A    ret
<0060B67B    jmp        @HandleFinally
<0060B680    jmp        0060B672
 0060B682    pop        esi
 0060B683    pop        ebx
 0060B684    mov        esp,ebp
 0060B686    pop        ebp
 0060B687    ret
*}
end;

//0060B6F0
procedure Tsalarylevelfrm.gridlevelDblClick;
begin
{*
 0060B6F0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B6F5    mov        eax,dword ptr [eax]
 0060B6F7    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060B6FD    call       TDataSet.Edit
 0060B702    mov        eax,[0061B8B4]
 0060B707    mov        eax,dword ptr [eax]
 0060B709    mov        edx,dword ptr ds:[60AC38]; Tsalaryleveladdfrm
 0060B70F    call       005D859C
 0060B714    ret
*}
end;

end.