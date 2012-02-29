{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit jobdesun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBGrids;

type
  Tjobdesfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    btntambah:TSpeedButton;//f30C
    btnedit:TSpeedButton;//f310
    Panel2:TPanel;//f314
    Label2:TLabel;//f318
    cari:TEdit;//f31C
    DBGrid1:TDBGrid;//f320
    procedure btntambahClick;
    procedure btneditClick;
    procedure FormActivate;
    procedure cariChange;
  end;

implementation

{$R *.DFM}

//00609988
procedure Tjobdesfrm.btntambahClick;
begin
{*
 00609988    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060998D    mov        eax,dword ptr [eax]
 0060998F    mov        eax,dword ptr [eax+654]; Tdm.jobdes:TZQuery
 00609995    call       TDataSet.Append
 0060999A    mov        eax,[0061AECC]
 0060999F    mov        eax,dword ptr [eax]
 006099A1    mov        edx,dword ptr ds:[6093B4]; Tjabatanaddfrm
 006099A7    call       005D859C
 006099AC    ret
*}
end;

//006099B0
procedure Tjobdesfrm.btneditClick;
begin
{*
 006099B0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006099B5    mov        eax,dword ptr [eax]
 006099B7    mov        eax,dword ptr [eax+654]; Tdm.jobdes:TZQuery
 006099BD    call       TDataSet.Edit
 006099C2    mov        eax,[0061AECC]
 006099C7    mov        eax,dword ptr [eax]
 006099C9    mov        edx,dword ptr ds:[6093B4]; Tjabatanaddfrm
 006099CF    call       005D859C
 006099D4    ret
*}
end;

//006099D8
procedure Tjobdesfrm.FormActivate;
begin
{*
 006099D8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006099DD    mov        eax,dword ptr [eax]
 006099DF    mov        eax,dword ptr [eax+654]; Tdm.jobdes:TZQuery
 006099E5    call       005D8634
 006099EA    ret
*}
end;

//006099EC
procedure Tjobdesfrm.cariChange;
begin
{*
 006099EC    push       ebp
 006099ED    mov        ebp,esp
 006099EF    xor        ecx,ecx
 006099F1    push       ecx
 006099F2    push       ecx
 006099F3    push       ecx
 006099F4    push       ecx
 006099F5    push       ecx
 006099F6    push       ecx
 006099F7    push       ebx
 006099F8    push       esi
 006099F9    mov        esi,eax
 006099FB    xor        eax,eax
 006099FD    push       ebp
 006099FE    push       609AA1
 00609A03    push       dword ptr fs:[eax]
 00609A06    mov        dword ptr fs:[eax],esp
 00609A09    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00609A0E    mov        eax,dword ptr [eax]
 00609A10    mov        ebx,dword ptr [eax+654]; Tdm.jobdes:TZQuery
 00609A16    mov        eax,ebx
 00609A18    call       TZReadOnlyQuery.GetSQL
 00609A1D    mov        edx,609AB8; 'select * from jobdes where jd_nama like (:nama) '
 00609A22    mov        ecx,dword ptr [eax]
 00609A24    call       dword ptr [ecx+2C]
 00609A27    push       609AF4; '%'
 00609A2C    lea        edx,[ebp-18]
 00609A2F    mov        eax,dword ptr [esi+31C]; Tjobdesfrm.cari:TEdit
 00609A35    call       TControl.GetText
 00609A3A    push       dword ptr [ebp-18]
 00609A3D    push       609AF4; '%'
 00609A42    lea        eax,[ebp-14]
 00609A45    mov        edx,3
 00609A4A    call       @LStrCatN
 00609A4F    mov        edx,dword ptr [ebp-14]
 00609A52    lea        eax,[ebp-10]
 00609A55    call       @VarFromLStr
 00609A5A    lea        eax,[ebp-10]
 00609A5D    push       eax
 00609A5E    mov        edx,609B00; 'nama'
 00609A63    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 00609A69    call       TParams.ParamByName
 00609A6E    pop        edx
 00609A6F    call       TParam.SetAsVariant
 00609A74    mov        eax,ebx
 00609A76    call       TDataSet.Open
 00609A7B    xor        eax,eax
 00609A7D    pop        edx
 00609A7E    pop        ecx
 00609A7F    pop        ecx
 00609A80    mov        dword ptr fs:[eax],edx
 00609A83    push       609AA8
 00609A88    lea        eax,[ebp-18]
 00609A8B    call       @LStrClr
 00609A90    lea        eax,[ebp-14]
 00609A93    call       @LStrClr
 00609A98    lea        eax,[ebp-10]
 00609A9B    call       @VarClr
 00609AA0    ret
<00609AA1    jmp        @HandleFinally
<00609AA6    jmp        00609A88
 00609AA8    pop        esi
 00609AA9    pop        ebx
 00609AAA    mov        esp,ebp
 00609AAC    pop        ebp
 00609AAD    ret
*}
end;

end.