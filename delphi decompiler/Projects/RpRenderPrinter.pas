{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpRenderPrinter;

interface

uses
  Classes, Windows, Graphics, RpRenderCanvas;

type
  TRvRenderPrinter = class(TRvRenderCanvas)
  public
    f90:Integer;//f90
    f94:Integer;//f94
    f98:String;//f98
    f9C:Longint;//f9C
    fA0:Boolean;//fA0
    fA1:byte;//fA1
    fA2:byte;//fA2
    fA4:dword;//fA4
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_00591858(); virtual;
    procedure sub_00591864(); virtual;
    procedure sub_00591894(); virtual;
    procedure sub_005918A4(); virtual;
    procedure sub_005918B4(); virtual;
    procedure sub_005918C0(); virtual;
    procedure sub_00591870(); virtual;
  end;

implementation

{$R *.DFM}

//0059181C
constructor TRvRenderPrinter.Create(AOwner:TComponent);
begin
{*
 0059181C    push       ebx
 0059181D    push       esi
 0059181E    test       dl,dl
>00591820    je         0059182A
 00591822    add        esp,0FFFFFFF0
 00591825    call       @ClassCreate
 0059182A    mov        ebx,edx
 0059182C    mov        esi,eax
 0059182E    xor        edx,edx
 00591830    mov        eax,esi
 00591832    call       TRvRenderCanvas.Create
 00591837    mov        byte ptr [esi+51],0; TRvRenderPrinter.Active:Boolean
 0059183B    mov        eax,esi
 0059183D    test       bl,bl
>0059183F    je         00591850
 00591841    call       @AfterConstruction
 00591846    pop        dword ptr fs:[0]
 0059184D    add        esp,0C
 00591850    mov        eax,esi
 00591852    pop        esi
 00591853    pop        ebx
 00591854    ret
*}
end;

//00591858
procedure sub_00591858();
begin
{*
 00591858    call       005807DC
 0059185D    mov        edx,dword ptr [eax]
 0059185F    call       dword ptr [edx+58]
 00591862    ret
*}
end;

//00591864
procedure sub_00591864();
begin
{*
 00591864    call       005807DC
 00591869    mov        edx,dword ptr [eax]
 0059186B    call       dword ptr [edx+5C]
 0059186E    ret
*}
end;

//00591870
procedure sub_00591870();
begin
{*
 00591870    call       005807DC
 00591875    mov        edx,dword ptr [eax]
 00591877    call       dword ptr [edx]
 00591879    ret
*}
end;

//0059187C
//function sub_0059187C(?:dword):?;
//begin
{*
 0059187C    mov        edx,dword ptr [eax+70]
 0059187F    test       edx,edx
>00591881    je         0059188D
 00591883    cmp        dword ptr [edx+64],0
>00591887    jle        0059188D
 00591889    mov        eax,dword ptr [edx+64]
 0059188C    ret
 0059188D    mov        eax,dword ptr [eax+0A4]
 00591893    ret
*}
//end;

//00591894
procedure sub_00591894();
begin
{*
 00591894    call       005807DC
 00591899    mov        dl,1
 0059189B    mov        ecx,dword ptr [eax]
 0059189D    call       dword ptr [ecx+68]
 005918A0    ret
*}
end;

//005918A4
procedure sub_005918A4();
begin
{*
 005918A4    ret
*}
end;

//005918A8
procedure sub_005918A8;
begin
{*
 005918A8    call       005807DC
 005918AD    mov        edx,dword ptr [eax]
 005918AF    call       dword ptr [edx+28]
 005918B2    ret
*}
end;

//005918B4
procedure sub_005918B4();
begin
{*
 005918B4    call       005807DC
 005918B9    mov        edx,dword ptr [eax]
 005918BB    call       dword ptr [edx+4]
 005918BE    ret
*}
end;

//005918C0
procedure sub_005918C0();
begin
{*
 005918C0    call       005807DC
 005918C5    mov        edx,dword ptr [eax]
 005918C7    call       dword ptr [edx+8]
 005918CA    ret
*}
end;

end.