{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit listrep;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, Buttons, DBGrids, StdCtrls;

type
  Tlistrepfrm = class(TForm)
    Panel3:TPanel;//f2F8
    SpeedButton2:TSpeedButton;//f2FC
    SpeedButton1:TSpeedButton;//f300
    btncari:TSpeedButton;//f304
    SpeedButton3:TSpeedButton;//f308
    SpeedButton4:TSpeedButton;//f30C
    Panel2:TPanel;//f310
    SpeedButton5:TSpeedButton;//f314
    SpeedButton6:TSpeedButton;//f318
    caripn:TPanel;//f31C
    SpeedButton7:TSpeedButton;//f320
    DBGrid1:TDBGrid;//f324
    Panel1:TPanel;//f328
    Label1:TLabel;//f32C
    Panel4:TPanel;//f330
    Panel5:TPanel;//f334
    procedure SpeedButton7Click;
    procedure SpeedButton6Click;
    procedure SpeedButton5Click;
  end;

implementation

{$R *.DFM}

//005D89F8
procedure Tlistrepfrm.SpeedButton7Click;
begin
{*
 005D89F8    xor        edx,edx
 005D89FA    mov        eax,dword ptr [eax+31C]; Tlistrepfrm.caripn:TPanel
 005D8A00    call       TControl.SetVisible
 005D8A05    ret
*}
end;

//005D8A08
procedure Tlistrepfrm.SpeedButton6Click;
begin
{*
 005D8A08    mov        edx,dword ptr [eax+31C]; Tlistrepfrm.caripn:TPanel
 005D8A0E    cmp        byte ptr [edx+57],0; TPanel.FVisible:Boolean
>005D8A12    jne        005D8A1E
 005D8A14    mov        eax,edx
 005D8A16    mov        dl,1
 005D8A18    call       TControl.SetVisible
 005D8A1D    ret
 005D8A1E    mov        eax,edx
 005D8A20    xor        edx,edx
 005D8A22    call       TControl.SetVisible
 005D8A27    ret
*}
end;

//005D8A28
procedure Tlistrepfrm.SpeedButton5Click;
begin
{*
 005D8A28    push       0
 005D8A2A    mov        cx,word ptr ds:[5D8A44]; 0x3
 005D8A31    mov        dl,3
 005D8A33    mov        eax,5D8A50; 'Hapus Record ini?'
 005D8A38    call       MessageDlg
 005D8A3D    cmp        eax,6
 005D8A40    ret
*}
end;

end.