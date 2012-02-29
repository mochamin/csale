{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit glun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, RpRave, RpSystem, RpConDS;

type
  Tglfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    cbbulan:TComboBox;//f30C
    cbthn:TComboBox;//f310
    Panel3:TPanel;//f314
    SpeedButton2:TSpeedButton;//f318
    rpgl:TRvProject;//f31C
    rsgl:TRvSystem;//f320
    glkas:TRvDataSetConnection;//f324
    glpiutang:TRvDataSetConnection;//f328
    glpersediaan:TRvDataSetConnection;//f32C
    glhutangusaha:TRvDataSetConnection;//f330
    glhutangpp:TRvDataSetConnection;//f334
    gljualproduk:TRvDataSetConnection;//f338
    glbiaya:TRvDataSetConnection;//f33C
    glpro:TRvDataSetConnection;//f340
    glchart:TRvDataSetConnection;//f344
    procedure SpeedButton2Click;
  end;

implementation

{$R *.DFM}

//00609334
procedure Tglfrm.SpeedButton2Click;
begin
{*
 00609334    push       ebx
 00609335    mov        ebx,eax
 00609337    mov        edx,609370; 'glpro.rav'
 0060933C    mov        eax,dword ptr [ebx+31C]; Tglfrm.rpgl:TRvProject
 00609342    call       TRvProject.SetProjectFile
 00609347    mov        cl,1
 00609349    mov        edx,609370; 'glpro.rav'
 0060934E    mov        eax,dword ptr [ebx+31C]; Tglfrm.rpgl:TRvProject
 00609354    call       005D84D0
 00609359    mov        eax,dword ptr [ebx+31C]; Tglfrm.rpgl:TRvProject
 0060935F    call       005D8484
 00609364    pop        ebx
 00609365    ret
*}
end;

end.