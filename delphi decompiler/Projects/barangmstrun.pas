{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit barangmstrun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBGrids;

type
  Tbarangmstrfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    SpeedButton2:TSpeedButton;//f30C
    SpeedButton1:TSpeedButton;//f310
    Panel2:TPanel;//f314
    DBGrid1:TDBGrid;//f318
    caripn:TPanel;//f31C
    btncari:TSpeedButton;//f320
    SpeedButton3:TSpeedButton;//f324
    Label2:TLabel;//f328
    cari:TEdit;//f32C
    procedure btncariClick;
    procedure SpeedButton3Click;
    procedure FormCreate;
    procedure SpeedButton1Click;
    procedure SpeedButton2Click;
    procedure cariChange;
    procedure DBGrid1DblClick;
  end;

implementation

{$R *.DFM}

//005E3E9C
procedure Tbarangmstrfrm.btncariClick;
begin
{*
 005E3E9C    push       ebx
 005E3E9D    mov        ebx,eax
 005E3E9F    mov        eax,dword ptr [ebx+31C]; Tbarangmstrfrm.caripn:TPanel
 005E3EA5    cmp        byte ptr [eax+57],0; TPanel.FVisible:Boolean
>005E3EA9    jne        005E3EC2
 005E3EAB    mov        dl,1
 005E3EAD    call       TControl.SetVisible
 005E3EB2    mov        eax,dword ptr [ebx+32C]; Tbarangmstrfrm.cari:TEdit
 005E3EB8    mov        edx,dword ptr [eax]
 005E3EBA    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005E3EC0    pop        ebx
 005E3EC1    ret
 005E3EC2    xor        edx,edx
 005E3EC4    call       TControl.SetVisible
 005E3EC9    pop        ebx
 005E3ECA    ret
*}
end;

//005E3ECC
procedure Tbarangmstrfrm.SpeedButton3Click;
begin
{*
 005E3ECC    xor        edx,edx
 005E3ECE    mov        eax,dword ptr [eax+31C]; Tbarangmstrfrm.caripn:TPanel
 005E3ED4    call       TControl.SetVisible
 005E3ED9    ret
*}
end;

//005E3EDC
procedure Tbarangmstrfrm.FormCreate;
begin
{*
 005E3EDC    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3EE1    mov        eax,dword ptr [eax]
 005E3EE3    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005E3EE9    call       005D8634
 005E3EEE    ret
*}
end;

//005E3EF0
procedure Tbarangmstrfrm.SpeedButton1Click;
begin
{*
 005E3EF0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3EF5    mov        eax,dword ptr [eax]
 005E3EF7    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005E3EFD    call       TDataSet.Append
 005E3F02    mov        eax,[0061BDD8]
 005E3F07    mov        eax,dword ptr [eax]
 005E3F09    mov        edx,dword ptr ds:[5E3698]; Tbarangaddfrm
 005E3F0F    call       005D859C
 005E3F14    ret
*}
end;

//005E3F18
procedure Tbarangmstrfrm.SpeedButton2Click;
begin
{*
 005E3F18    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3F1D    mov        eax,dword ptr [eax]
 005E3F1F    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005E3F25    call       TDataSet.Edit
 005E3F2A    mov        eax,[0061BDD8]
 005E3F2F    mov        eax,dword ptr [eax]
 005E3F31    mov        edx,dword ptr ds:[5E3698]; Tbarangaddfrm
 005E3F37    call       005D859C
 005E3F3C    ret
*}
end;

//005E3F40
procedure Tbarangmstrfrm.cariChange;
begin
{*
 005E3F40    push       ebp
 005E3F41    mov        ebp,esp
 005E3F43    xor        ecx,ecx
 005E3F45    push       ecx
 005E3F46    push       ecx
 005E3F47    push       ecx
 005E3F48    push       ecx
 005E3F49    push       ecx
 005E3F4A    push       ecx
 005E3F4B    push       ebx
 005E3F4C    push       esi
 005E3F4D    mov        esi,eax
 005E3F4F    xor        eax,eax
 005E3F51    push       ebp
 005E3F52    push       5E3FF5
 005E3F57    push       dword ptr fs:[eax]
 005E3F5A    mov        dword ptr fs:[eax],esp
 005E3F5D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E3F62    mov        eax,dword ptr [eax]
 005E3F64    mov        ebx,dword ptr [eax+98]; Tdm.barang:TZQuery
 005E3F6A    mov        eax,ebx
 005E3F6C    call       TZReadOnlyQuery.GetSQL
 005E3F71    mov        edx,5E400C; 'SELECT * FROM barang WHERE br_nama LIKE (:nama) ORDER BY br_id ASC '
 005E3F76    mov        ecx,dword ptr [eax]
 005E3F78    call       dword ptr [ecx+2C]
 005E3F7B    push       5E4058; '%'
 005E3F80    lea        edx,[ebp-18]
 005E3F83    mov        eax,dword ptr [esi+32C]; Tbarangmstrfrm.cari:TEdit
 005E3F89    call       TControl.GetText
 005E3F8E    push       dword ptr [ebp-18]
 005E3F91    push       5E4058; '%'
 005E3F96    lea        eax,[ebp-14]
 005E3F99    mov        edx,3
 005E3F9E    call       @LStrCatN
 005E3FA3    mov        edx,dword ptr [ebp-14]
 005E3FA6    lea        eax,[ebp-10]
 005E3FA9    call       @VarFromLStr
 005E3FAE    lea        eax,[ebp-10]
 005E3FB1    push       eax
 005E3FB2    mov        edx,5E4064; 'nama'
 005E3FB7    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E3FBD    call       TParams.ParamByName
 005E3FC2    pop        edx
 005E3FC3    call       TParam.SetAsVariant
 005E3FC8    mov        eax,ebx
 005E3FCA    call       TDataSet.Open
 005E3FCF    xor        eax,eax
 005E3FD1    pop        edx
 005E3FD2    pop        ecx
 005E3FD3    pop        ecx
 005E3FD4    mov        dword ptr fs:[eax],edx
 005E3FD7    push       5E3FFC
 005E3FDC    lea        eax,[ebp-18]
 005E3FDF    call       @LStrClr
 005E3FE4    lea        eax,[ebp-14]
 005E3FE7    call       @LStrClr
 005E3FEC    lea        eax,[ebp-10]
 005E3FEF    call       @VarClr
 005E3FF4    ret
<005E3FF5    jmp        @HandleFinally
<005E3FFA    jmp        005E3FDC
 005E3FFC    pop        esi
 005E3FFD    pop        ebx
 005E3FFE    mov        esp,ebp
 005E4000    pop        ebp
 005E4001    ret
*}
end;

//005E406C
procedure Tbarangmstrfrm.DBGrid1DblClick;
begin
{*
 005E406C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4071    mov        eax,dword ptr [eax]
 005E4073    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005E4079    call       TDataSet.Edit
 005E407E    mov        eax,[0061BDD8]
 005E4083    mov        eax,dword ptr [eax]
 005E4085    mov        edx,dword ptr ds:[5E3698]; Tbarangaddfrm
 005E408B    call       005D859C
 005E4090    ret
*}
end;

end.