{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit customerun;

interface

uses
  Classes, Windows, Graphics, listrep, Buttons;

type
  Tcustomerfrm = class(Tlistrepfrm)
    SpeedButton9:TSpeedButton;//f338
    procedure FormCreate;
    procedure SpeedButton4Click;
    procedure SpeedButton3Click;
    procedure SpeedButton5Click;
    procedure SpeedButton9Click;
    procedure DBGrid1DblClick;
  end;

implementation

{$R *.DFM}

//005E4D44
procedure sub_005E4D44;
begin
{*
 005E4D44    push       ebp
 005E4D45    mov        ebp,esp
 005E4D47    push       0
 005E4D49    push       0
 005E4D4B    push       ebx
 005E4D4C    xor        eax,eax
 005E4D4E    push       ebp
 005E4D4F    push       5E4DDB
 005E4D54    push       dword ptr fs:[eax]
 005E4D57    mov        dword ptr fs:[eax],esp
 005E4D5A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4D5F    mov        eax,dword ptr [eax]
 005E4D61    mov        ebx,dword ptr [eax+0B8]; Tdm.custpic:TZQuery
 005E4D67    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4D6C    mov        eax,dword ptr [eax]
 005E4D6E    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E4D74    mov        edx,5E4DF0; 'cu_id'
 005E4D79    call       TDataSet.FieldByName
 005E4D7E    lea        edx,[ebp-8]
 005E4D81    mov        ecx,dword ptr [eax]
 005E4D83    call       dword ptr [ecx+60]; TField.GetAsString
 005E4D86    mov        ecx,dword ptr [ebp-8]
 005E4D89    lea        eax,[ebp-4]
 005E4D8C    mov        edx,5E4E00; 'SELECT * FROM custpic WHERE cp_custid = '
 005E4D91    call       @LStrCat3
 005E4D96    mov        eax,dword ptr [ebp-4]
 005E4D99    push       eax
 005E4D9A    mov        eax,ebx
 005E4D9C    call       TZReadOnlyQuery.GetSQL
 005E4DA1    pop        edx
 005E4DA2    mov        ecx,dword ptr [eax]
 005E4DA4    call       dword ptr [ecx+2C]
 005E4DA7    mov        eax,ebx
 005E4DA9    call       TDataSet.Open
 005E4DAE    mov        eax,[0061B9D8]
 005E4DB3    mov        eax,dword ptr [eax]
 005E4DB5    mov        edx,dword ptr ds:[5E4880]; Tcustpicfrm
 005E4DBB    call       005D859C
 005E4DC0    xor        eax,eax
 005E4DC2    pop        edx
 005E4DC3    pop        ecx
 005E4DC4    pop        ecx
 005E4DC5    mov        dword ptr fs:[eax],edx
 005E4DC8    push       5E4DE2
 005E4DCD    lea        eax,[ebp-8]
 005E4DD0    mov        edx,2
 005E4DD5    call       @LStrArrayClr
 005E4DDA    ret
<005E4DDB    jmp        @HandleFinally
<005E4DE0    jmp        005E4DCD
 005E4DE2    pop        ebx
 005E4DE3    pop        ecx
 005E4DE4    pop        ecx
 005E4DE5    pop        ebp
 005E4DE6    ret
*}
end;

//005E4E2C
procedure Tcustomerfrm.FormCreate;
begin
{*
 005E4E2C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4E31    mov        eax,dword ptr [eax]
 005E4E33    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E4E39    call       005D8634
 005E4E3E    ret
*}
end;

//005E4E40
procedure Tcustomerfrm.SpeedButton4Click;
begin
{*
 005E4E40    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4E45    mov        eax,dword ptr [eax]
 005E4E47    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E4E4D    call       TDataSet.Append
 005E4E52    mov        eax,[0061BF08]
 005E4E57    mov        eax,dword ptr [eax]
 005E4E59    mov        edx,dword ptr ds:[5E40CC]; Tcustomeraddfrm
 005E4E5F    call       005D859C
 005E4E64    ret
*}
end;

//005E4E68
procedure Tcustomerfrm.SpeedButton3Click;
begin
{*
 005E4E68    mov        eax,[0061BF08]
 005E4E6D    mov        eax,dword ptr [eax]
 005E4E6F    mov        edx,dword ptr ds:[5E40CC]; Tcustomeraddfrm
 005E4E75    call       005D859C
 005E4E7A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4E7F    mov        eax,dword ptr [eax]
 005E4E81    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E4E87    call       TDataSet.Edit
 005E4E8C    ret
*}
end;

//005E4E90
procedure Tcustomerfrm.SpeedButton5Click;
begin
{*
 005E4E90    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E4E95    mov        eax,dword ptr [eax]
 005E4E97    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E4E9D    call       005D85D0
 005E4EA2    ret
*}
end;

//005E4EA4
procedure Tcustomerfrm.SpeedButton9Click;
begin
{*
 005E4EA4    call       005E4D44
 005E4EA9    ret
*}
end;

//005E4EAC
procedure Tcustomerfrm.DBGrid1DblClick;
begin
{*
 005E4EAC    call       005E4D44
 005E4EB1    ret
*}
end;

end.