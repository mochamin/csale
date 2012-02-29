{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit custpicun;

interface

uses
  Classes, Windows, Graphics, listrep, DBCtrls;

type
  Tcustpicfrm = class(Tlistrepfrm)
    DBText1:TDBText;//f338
    procedure FormCreate;
    procedure SpeedButton4Click;
    procedure SpeedButton3Click;
    procedure SpeedButton5Click;
  end;

implementation

{$R *.DFM}

//005E4A6C
procedure Tcustpicfrm.FormCreate;
begin
{*
 005E4A6C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4A71    mov        eax,dword ptr [eax]
 005E4A73    mov        eax,dword ptr [eax+0B8]; Tdm.custpic:TZQuery
 005E4A79    call       005D8634
 005E4A7E    ret
*}
end;

//005E4A80
procedure Tcustpicfrm.SpeedButton4Click;
begin
{*
 005E4A80    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4A85    mov        eax,dword ptr [eax]
 005E4A87    mov        eax,dword ptr [eax+0B8]; Tdm.custpic:TZQuery
 005E4A8D    call       TDataSet.Append
 005E4A92    mov        eax,[0061BD58]
 005E4A97    mov        eax,dword ptr [eax]
 005E4A99    mov        edx,dword ptr ds:[5E44A4]; Tcustpicaddfrm
 005E4A9F    call       005D859C
 005E4AA4    ret
*}
end;

//005E4AA8
procedure Tcustpicfrm.SpeedButton3Click;
begin
{*
 005E4AA8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4AAD    mov        eax,dword ptr [eax]
 005E4AAF    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E4AB5    call       TDataSet.Edit
 005E4ABA    mov        eax,[0061BD58]
 005E4ABF    mov        eax,dword ptr [eax]
 005E4AC1    mov        edx,dword ptr ds:[5E44A4]; Tcustpicaddfrm
 005E4AC7    call       005D859C
 005E4ACC    ret
*}
end;

//005E4AD0
procedure Tcustpicfrm.SpeedButton5Click;
begin
{*
 005E4AD0    call       Tlistrepfrm.SpeedButton5Click
 005E4AD5    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4ADA    mov        eax,dword ptr [eax]
 005E4ADC    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E4AE2    call       005D85D0
 005E4AE7    ret
*}
end;

end.