{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit inventoryun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, DBCtrls, Menus;

type
  Tinventoryfrm = class(TForm)
    Panel3:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel1:TPanel;//f300
    Panel2:TPanel;//f304
    caripn:TPanel;//f308
    cari:TEdit;//f30C
    DBGrid1:TDBGrid;//f310
    lookgudang:TDBLookupComboBox;//f314
    popinvent:TPopupMenu;//f318
    RefreshData1:TMenuItem;//f31C
    Label2:TLabel;//f320
    procedure cariChange;
    procedure FormCreate;
    procedure lookgudangClick;
    procedure RefreshData1Click;
  end;

implementation

{$R *.DFM}

//005E9770
procedure Tinventoryfrm.cariChange;
begin
{*
 005E9770    push       ebp
 005E9771    mov        ebp,esp
 005E9773    xor        ecx,ecx
 005E9775    push       ecx
 005E9776    push       ecx
 005E9777    push       ecx
 005E9778    push       ecx
 005E9779    push       ecx
 005E977A    push       ecx
 005E977B    push       ebx
 005E977C    push       esi
 005E977D    mov        esi,eax
 005E977F    xor        eax,eax
 005E9781    push       ebp
 005E9782    push       5E9825
 005E9787    push       dword ptr fs:[eax]
 005E978A    mov        dword ptr fs:[eax],esp
 005E978D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E9792    mov        eax,dword ptr [eax]
 005E9794    mov        ebx,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E979A    mov        eax,ebx
 005E979C    call       TZReadOnlyQuery.GetSQL
 005E97A1    mov        edx,5E983C; 'select * from inventory left join barang on (in_kd_barang=br_id) where br_nama like (:opsi) or br_type like (:opsi) '
 005E97A6    mov        ecx,dword ptr [eax]
 005E97A8    call       dword ptr [ecx+2C]
 005E97AB    push       5E98BC; '%'
 005E97B0    lea        edx,[ebp-18]
 005E97B3    mov        eax,dword ptr [esi+30C]; Tinventoryfrm.cari:TEdit
 005E97B9    call       TControl.GetText
 005E97BE    push       dword ptr [ebp-18]
 005E97C1    push       5E98BC; '%'
 005E97C6    lea        eax,[ebp-14]
 005E97C9    mov        edx,3
 005E97CE    call       @LStrCatN
 005E97D3    mov        edx,dword ptr [ebp-14]
 005E97D6    lea        eax,[ebp-10]
 005E97D9    call       @VarFromLStr
 005E97DE    lea        eax,[ebp-10]
 005E97E1    push       eax
 005E97E2    mov        edx,5E98C8; 'opsi'
 005E97E7    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E97ED    call       TParams.ParamByName
 005E97F2    pop        edx
 005E97F3    call       TParam.SetAsVariant
 005E97F8    mov        eax,ebx
 005E97FA    call       TDataSet.Open
 005E97FF    xor        eax,eax
 005E9801    pop        edx
 005E9802    pop        ecx
 005E9803    pop        ecx
 005E9804    mov        dword ptr fs:[eax],edx
 005E9807    push       5E982C
 005E980C    lea        eax,[ebp-18]
 005E980F    call       @LStrClr
 005E9814    lea        eax,[ebp-14]
 005E9817    call       @LStrClr
 005E981C    lea        eax,[ebp-10]
 005E981F    call       @VarClr
 005E9824    ret
<005E9825    jmp        @HandleFinally
<005E982A    jmp        005E980C
 005E982C    pop        esi
 005E982D    pop        ebx
 005E982E    mov        esp,ebp
 005E9830    pop        ebp
 005E9831    ret
*}
end;

//005E98D0
procedure Tinventoryfrm.FormCreate;
begin
{*
 005E98D0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E98D5    mov        eax,dword ptr [eax]
 005E98D7    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E98DD    call       005D8634
 005E98E2    ret
*}
end;

//005E98E4
procedure Tinventoryfrm.lookgudangClick;
begin
{*
 005E98E4    push       ebx
 005E98E5    push       esi
 005E98E6    mov        esi,eax
 005E98E8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E98ED    mov        eax,dword ptr [eax]
 005E98EF    mov        ebx,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E98F5    mov        eax,ebx
 005E98F7    call       TZReadOnlyQuery.GetSQL
 005E98FC    mov        edx,5E993C; 'select * from inventory where in_kd_gudang = (:kg) '
 005E9901    mov        ecx,dword ptr [eax]
 005E9903    call       dword ptr [ecx+2C]
 005E9906    mov        edx,5E9978; 'kg'
 005E990B    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E9911    call       TParams.ParamByName
 005E9916    mov        edx,dword ptr [esi+314]; Tinventoryfrm.lookgudang:TDBLookupComboBox
 005E991C    add        edx,240; TDBLookupComboBox.?f240:Variant
 005E9922    call       TParam.SetAsVariant
 005E9927    mov        eax,ebx
 005E9929    call       TDataSet.Open
 005E992E    pop        esi
 005E992F    pop        ebx
 005E9930    ret
*}
end;

//005E997C
procedure Tinventoryfrm.RefreshData1Click;
begin
{*
 005E997C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E9981    mov        eax,dword ptr [eax]
 005E9983    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E9989    call       TDataSet.Refresh
 005E998E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E9993    mov        eax,dword ptr [eax]
 005E9995    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005E999B    call       TDataSet.Refresh
 005E99A0    ret
*}
end;

end.