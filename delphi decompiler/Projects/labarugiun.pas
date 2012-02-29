{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit labarugiun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, RpRave, RpConDS, RpSystem;

type
  Tlabarugifrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    cbbulan:TComboBox;//f30C
    cbthn:TComboBox;//f310
    Panel3:TPanel;//f314
    SpeedButton2:TSpeedButton;//f318
    rplr:TRvProject;//f31C
    pndptnlr:TRvDataSetConnection;//f320
    biayaoprlr:TRvDataSetConnection;//f324
    biayalr:TRvDataSetConnection;//f328
    pndptnlainlr:TRvDataSetConnection;//f32C
    pnglranlainlr:TRvDataSetConnection;//f330
    rslr:TRvSystem;//f334
    coalr:TRvDataSetConnection;//f338
    procedure FormActivate;
    procedure SpeedButton2Click;
  end;

implementation

{$R *.DFM}

//00608F5C
procedure Tlabarugifrm.FormActivate;
begin
{*
 00608F5C    push       ebp
 00608F5D    mov        ebp,esp
 00608F5F    push       0
 00608F61    push       0
 00608F63    push       ebx
 00608F64    mov        ebx,eax
 00608F66    xor        eax,eax
 00608F68    push       ebp
 00608F69    push       608FE2
 00608F6E    push       dword ptr fs:[eax]
 00608F71    mov        dword ptr fs:[eax],esp
 00608F74    lea        eax,[ebp-4]
 00608F77    push       eax
 00608F78    call       Date
 00608F7D    add        esp,0FFFFFFF8
 00608F80    fstp       qword ptr [esp]
 00608F83    wait
 00608F84    lea        eax,[ebp-8]
 00608F87    call       DateToStr
 00608F8C    mov        eax,dword ptr [ebp-8]
 00608F8F    mov        ecx,2
 00608F94    mov        edx,4
 00608F99    call       AnsiMidStr
 00608F9E    mov        eax,dword ptr [ebp-4]
 00608FA1    call       StrToInt
 00608FA6    mov        edx,eax
 00608FA8    dec        edx
 00608FA9    mov        eax,dword ptr [ebx+30C]; Tlabarugifrm.cbbulan:TComboBox
 00608FAF    mov        ecx,dword ptr [eax]
 00608FB1    call       dword ptr [ecx+0D0]; TCustomCombo.SetItemIndex
 00608FB7    xor        edx,edx
 00608FB9    mov        eax,dword ptr [ebx+310]; Tlabarugifrm.cbthn:TComboBox
 00608FBF    mov        ecx,dword ptr [eax]
 00608FC1    call       dword ptr [ecx+0D0]; TCustomCombo.SetItemIndex
 00608FC7    xor        eax,eax
 00608FC9    pop        edx
 00608FCA    pop        ecx
 00608FCB    pop        ecx
 00608FCC    mov        dword ptr fs:[eax],edx
 00608FCF    push       608FE9
 00608FD4    lea        eax,[ebp-8]
 00608FD7    mov        edx,2
 00608FDC    call       @LStrArrayClr
 00608FE1    ret
<00608FE2    jmp        @HandleFinally
<00608FE7    jmp        00608FD4
 00608FE9    pop        ebx
 00608FEA    pop        ecx
 00608FEB    pop        ecx
 00608FEC    pop        ebp
 00608FED    ret
*}
end;

//00608FF0
procedure Tlabarugifrm.SpeedButton2Click;
begin
{*
 00608FF0    push       ebx
 00608FF1    mov        ebx,eax
 00608FF3    mov        edx,60902C; 'lr.rav'
 00608FF8    mov        eax,dword ptr [ebx+31C]; Tlabarugifrm.rplr:TRvProject
 00608FFE    call       TRvProject.SetProjectFile
 00609003    mov        cl,1
 00609005    mov        edx,60902C; 'lr.rav'
 0060900A    mov        eax,dword ptr [ebx+31C]; Tlabarugifrm.rplr:TRvProject
 00609010    call       005D84D0
 00609015    mov        eax,dword ptr [ebx+31C]; Tlabarugifrm.rplr:TRvProject
 0060901B    call       005D8484
 00609020    pop        ebx
 00609021    ret
*}
end;

end.