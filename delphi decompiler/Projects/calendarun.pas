{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit calendarun;

interface

uses
  Classes, Windows, Graphics, Forms, ComCtrls, StdCtrls;

type
  Tcalendarfrm = class(TForm)
    kalender:TMonthCalendar;//f2F8
    Label2:TLabel;//f2FC
    procedure kalenderDblClick;
  end;

implementation

{$R *.DFM}

//005DB048
procedure Tcalendarfrm.kalenderDblClick;
begin
{*
 005DB048    push       ebp
 005DB049    mov        ebp,esp
 005DB04B    xor        ecx,ecx
 005DB04D    push       ecx
 005DB04E    push       ecx
 005DB04F    push       ecx
 005DB050    push       ecx
 005DB051    push       ebx
 005DB052    mov        ebx,eax
 005DB054    xor        eax,eax
 005DB056    push       ebp
 005DB057    push       5DB0B6
 005DB05C    push       dword ptr fs:[eax]
 005DB05F    mov        dword ptr fs:[eax],esp
 005DB062    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DB067    mov        eax,dword ptr [eax]
 005DB069    mov        eax,dword ptr [eax+0AC]; Tdm.beli:TZQuery
 005DB06F    mov        edx,5DB0CC; 'be_due'
 005DB074    call       TDataSet.FieldByName
 005DB079    push       eax
 005DB07A    mov        eax,dword ptr [ebx+2F8]; Tcalendarfrm.kalender:TMonthCalendar
 005DB080    call       TCommonCalendar.GetDate
 005DB085    lea        eax,[ebp-10]
 005DB088    call       @VarFromReal
 005DB08D    lea        edx,[ebp-10]
 005DB090    pop        eax
 005DB091    mov        ecx,dword ptr [eax]
 005DB093    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DB099    mov        eax,ebx
 005DB09B    call       TCustomForm.Close
 005DB0A0    xor        eax,eax
 005DB0A2    pop        edx
 005DB0A3    pop        ecx
 005DB0A4    pop        ecx
 005DB0A5    mov        dword ptr fs:[eax],edx
 005DB0A8    push       5DB0BD
 005DB0AD    lea        eax,[ebp-10]
 005DB0B0    call       @VarClr
 005DB0B5    ret
<005DB0B6    jmp        @HandleFinally
<005DB0BB    jmp        005DB0AD
 005DB0BD    pop        ebx
 005DB0BE    mov        esp,ebp
 005DB0C0    pop        ebp
 005DB0C1    ret
*}
end;

end.