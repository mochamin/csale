{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit gudangun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBGrids;

type
  Tgudangfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    SpeedButton1:TSpeedButton;//f30C
    SpeedButton2:TSpeedButton;//f310
    DBGrid1:TDBGrid;//f314
    procedure FormCreate;
    procedure SpeedButton1Click;
    procedure SpeedButton2Click;
  end;

implementation

{$R *.DFM}

//005E9448
procedure Tgudangfrm.FormCreate;
begin
{*
 005E9448    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E944D    mov        eax,dword ptr [eax]
 005E944F    mov        eax,dword ptr [eax+154]; Tdm.gudang:TZQuery
 005E9455    call       005D8634
 005E945A    ret
*}
end;

//005E945C
procedure Tgudangfrm.SpeedButton1Click;
begin
{*
 005E945C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E9461    mov        eax,dword ptr [eax]
 005E9463    mov        eax,dword ptr [eax+154]; Tdm.gudang:TZQuery
 005E9469    call       TDataSet.Append
 005E946E    mov        eax,[0061C5D0]
 005E9473    mov        eax,dword ptr [eax]
 005E9475    mov        edx,dword ptr ds:[5E8EE4]; Tgudangaddfrm
 005E947B    call       005D859C
 005E9480    ret
*}
end;

//005E9484
procedure Tgudangfrm.SpeedButton2Click;
begin
{*
 005E9484    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E9489    mov        eax,dword ptr [eax]
 005E948B    mov        eax,dword ptr [eax+154]; Tdm.gudang:TZQuery
 005E9491    call       TDataSet.Edit
 005E9496    mov        eax,[0061C5D0]
 005E949B    mov        eax,dword ptr [eax]
 005E949D    mov        edx,dword ptr ds:[5E8EE4]; Tgudangaddfrm
 005E94A3    call       005D859C
 005E94A8    ret
*}
end;

end.