{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit supplierpicun;

interface

uses
  Classes, Windows, Graphics, listrep, DBCtrls;

type
  Tsupplierpicfrm = class(Tlistrepfrm)
    DBText1:TDBText;//f338
    procedure SpeedButton4Click;
    procedure SpeedButton3Click;
    procedure SpeedButton5Click;
  end;

implementation

{$R *.DFM}

//005D9640
procedure Tsupplierpicfrm.SpeedButton4Click;
begin
{*
 005D9640    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9645    mov        eax,dword ptr [eax]
 005D9647    mov        eax,dword ptr [eax+0B0]; Tdm.supplierpic:TZQuery
 005D964D    call       TDataSet.Append
 005D9652    mov        eax,[0061C378]
 005D9657    mov        eax,dword ptr [eax]
 005D9659    mov        edx,dword ptr ds:[5D9068]; Tsupp_pic_addfrm
 005D965F    call       005D859C
 005D9664    ret
*}
end;

//005D9668
procedure Tsupplierpicfrm.SpeedButton3Click;
begin
{*
 005D9668    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D966D    mov        eax,dword ptr [eax]
 005D966F    mov        eax,dword ptr [eax+0B0]; Tdm.supplierpic:TZQuery
 005D9675    call       TDataSet.Edit
 005D967A    mov        eax,[0061C378]
 005D967F    mov        eax,dword ptr [eax]
 005D9681    mov        edx,dword ptr ds:[5D9068]; Tsupp_pic_addfrm
 005D9687    call       005D859C
 005D968C    ret
*}
end;

//005D9690
procedure Tsupplierpicfrm.SpeedButton5Click;
begin
{*
 005D9690    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9695    mov        eax,dword ptr [eax]
 005D9697    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D969D    call       005D85D0
 005D96A2    ret
*}
end;

end.