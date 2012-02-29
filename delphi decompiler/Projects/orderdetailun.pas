{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit orderdetailun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBGrids, DBCtrls;

type
  Tdetailorderfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    btntambah:TSpeedButton;//f30C
    DBGrid1:TDBGrid;//f310
    Panel2:TPanel;//f314
    DBText1:TDBText;//f318
    Label2:TLabel;//f31C
    Label3:TLabel;//f320
    DBText2:TDBText;//f324
    procedure btntambahClick;
    procedure FormActivate;
  end;

implementation

{$R *.DFM}

//005E5C24
procedure Tdetailorderfrm.btntambahClick;
begin
{*
 005E5C24    push       0
 005E5C26    mov        cx,word ptr ds:[5E5C54]; 0x3
 005E5C2D    mov        dl,3
 005E5C2F    mov        eax,5E5C60; 'Simpan Barang ke Gudang?'
 005E5C34    call       MessageDlg
 005E5C39    cmp        eax,6
>005E5C3C    jne        005E5C50
 005E5C3E    mov        eax,[0061B344]
 005E5C43    mov        eax,dword ptr [eax]
 005E5C45    mov        edx,dword ptr ds:[5E4EEC]; Tgudangpickfrm
 005E5C4B    call       005D859C
 005E5C50    ret
*}
end;

//005E5C7C
procedure Tdetailorderfrm.FormActivate;
begin
{*
 005E5C7C    mov        edx,dword ptr ds:[61C2F4]; ^gvar_0061F8F0
 005E5C82    cmp        dword ptr [edx],1
>005E5C85    jne        005E5C95
 005E5C87    xor        edx,edx
 005E5C89    mov        eax,dword ptr [eax+30C]; Tdetailorderfrm.btntambah:TSpeedButton
 005E5C8F    call       TControl.SetVisible
 005E5C94    ret
 005E5C95    mov        edx,dword ptr ds:[61C2F4]; ^gvar_0061F8F0
 005E5C9B    cmp        dword ptr [edx],0
>005E5C9E    jne        005E5CAD
 005E5CA0    mov        dl,1
 005E5CA2    mov        eax,dword ptr [eax+30C]; Tdetailorderfrm.btntambah:TSpeedButton
 005E5CA8    call       TControl.SetVisible
 005E5CAD    ret
*}
end;

end.