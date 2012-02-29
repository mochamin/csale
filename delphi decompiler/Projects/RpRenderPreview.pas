{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpRenderPreview;

interface

uses
  Classes, Windows, Graphics, RpRenderCanvas, Controls, Forms, ExtCtrls, RpDefine, RpFormPreview;

type
  TRvRenderPreview = class(TRvRenderCanvas)
  public
    f90:Integer;//f90
    f94:Integer;//f94
    f98:TCursor;//f98
    ScrollBox:TScrollBox;//f9C
    fA0:TImage;//fA0
    fA4:TBitmap;//fA4
    ZoomInc:Integer;//fA8
    Monochrome:Boolean;//fAC
    MarginMethod:TMarginMethod;//fAD
    MarginPercent:Double;//fB0
    fB4:dword;//fB4
    fB8:Integer;//fB8
    fBC:Integer;//fBC
    fC0:Single;//fC0
    fC4:dword;//fC4
    GridPen:TPen;//fC8
    GridHoriz:Double;//fD0
    fD4:dword;//fD4
    GridVert:Double;//fD8
    fDC:dword;//fDC
    ShadowDepth:Integer;//fE0
    RulerType:TRulerType;//fE4
    fE8:dword;//fE8
    fEC:dword;//fEC
    PageInc:Integer;//fF0
    OnPageChange:TNotifyEvent;//fF8
    fFA:word;//fFA
    fFC:TRavePreviewForm;//fFC
    OnZoomChange:TNotifyEvent;//f100
    f102:word;//f102
    f104:TRavePreviewForm;//f104
    f108:dword;//f108
    f10C:dword;//f10C
    f110:?Double;//f110
    f114:dword;//f114
    f118:Single;//f118
    f11C:Single;//f11C
    destructor Destroy; virtual;
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_00591DD8(); virtual;
    procedure sub_00591DE0(); virtual;
    procedure sub_00592210; virtual;
    procedure sub_005935E4; virtual;
    //function sub_005937A0():?; virtual;
    //function sub_005937AC():?; virtual;
    //procedure sub_0059387C(?:?); virtual;
    //procedure sub_005938CC(?:?); virtual;
    //procedure sub_00593914(?:?); virtual;
    procedure sub_00591DE8; virtual;
    procedure sub_005935C4; virtual;
    procedure sub_00593724; virtual;
  end;

implementation

{$R *.DFM}

//00591C98
constructor TRvRenderPreview.Create(AOwner:TComponent);
begin
{*
 00591C98    push       ebx
 00591C99    push       esi
 00591C9A    test       dl,dl
>00591C9C    je         00591CA6
 00591C9E    add        esp,0FFFFFFF0
 00591CA1    call       @ClassCreate
 00591CA6    mov        ebx,edx
 00591CA8    mov        esi,eax
 00591CAA    xor        edx,edx
 00591CAC    mov        eax,esi
 00591CAE    call       TRvRenderCanvas.Create
 00591CB3    xor        eax,eax
 00591CB5    mov        dword ptr [esi+9C],eax; TRvRenderPreview.ScrollBox:TScrollBox
 00591CBB    mov        dword ptr [esi+0A8],0A; TRvRenderPreview.ZoomInc:Integer
 00591CC5    xor        eax,eax
 00591CC7    mov        dword ptr [esi+110],eax; TRvRenderPreview.?f110:?Double
 00591CCD    mov        dword ptr [esi+114],40590000; TRvRenderPreview.?f114:dword
 00591CD7    xor        eax,eax
 00591CD9    mov        dword ptr [esi+0F8],eax; TRvRenderPreview.OnPageChange:TNotifyEvent
 00591CDF    mov        dword ptr [esi+0FC],eax; TRvRenderPreview.?fFC:TRavePreviewForm
 00591CE5    xor        eax,eax
 00591CE7    mov        dword ptr [esi+100],eax; TRvRenderPreview.OnZoomChange:TNotifyEvent
 00591CED    mov        dword ptr [esi+104],eax; TRvRenderPreview.?f104:TRavePreviewForm
 00591CF3    mov        byte ptr [esi+0AC],0; TRvRenderPreview.Monochrome:Boolean
 00591CFA    xor        eax,eax
 00591CFC    mov        dword ptr [esi+0B0],eax; TRvRenderPreview.MarginPercent:Double
 00591D02    mov        dword ptr [esi+0B4],eax; TRvRenderPreview.?fB4:dword
 00591D08    mov        byte ptr [esi+0AD],1; TRvRenderPreview.MarginMethod:TMarginMethod
 00591D0F    xor        eax,eax
 00591D11    mov        dword ptr [esi+0E0],eax; TRvRenderPreview.ShadowDepth:Integer
 00591D17    mov        byte ptr [esi+0E4],0; TRvRenderPreview.RulerType:TRulerType
 00591D1E    mov        dl,1
 00591D20    mov        eax,[00429C9C]; TPen
 00591D25    call       TPen.Create; TPen.Create
 00591D2A    mov        dword ptr [esi+0C8],eax; TRvRenderPreview.GridPen:TPen
 00591D30    xor        eax,eax
 00591D32    mov        dword ptr [esi+0D0],eax; TRvRenderPreview.GridHoriz:Double
 00591D38    mov        dword ptr [esi+0D4],eax; TRvRenderPreview.?fD4:dword
 00591D3E    xor        eax,eax
 00591D40    mov        dword ptr [esi+0D8],eax; TRvRenderPreview.GridVert:Double
 00591D46    mov        dword ptr [esi+0DC],eax; TRvRenderPreview.?fDC:dword
 00591D4C    mov        dword ptr [esi+0F0],1; TRvRenderPreview.PageInc:Integer
 00591D56    xor        eax,eax
 00591D58    mov        dword ptr [esi+0E8],eax; TRvRenderPreview.?fE8:dword
 00591D5E    xor        eax,eax
 00591D60    mov        dword ptr [esi+0EC],eax; TRvRenderPreview.?fEC:dword
 00591D66    mov        dl,1
 00591D68    mov        eax,[0042A4BC]; TBitmap
 00591D6D    call       TBitmap.Create; TBitmap.Create
 00591D72    mov        dword ptr [esi+0A4],eax; TRvRenderPreview.?fA4:TBitmap
 00591D78    mov        byte ptr [esi+51],0; TRvRenderPreview.Active:Boolean
 00591D7C    mov        eax,dword ptr [esi+0A4]; TRvRenderPreview.?fA4:TBitmap
 00591D82    call       TBitmap.GetCanvas
 00591D87    call       TCanvas.GetHandle
 00591D8C    mov        eax,esi
 00591D8E    test       bl,bl
>00591D90    je         00591DA1
 00591D92    call       @AfterConstruction
 00591D97    pop        dword ptr fs:[0]
 00591D9E    add        esp,0C
 00591DA1    mov        eax,esi
 00591DA3    pop        esi
 00591DA4    pop        ebx
 00591DA5    ret
*}
end;

//00591DA8
destructor TRvRenderPreview.Destroy;
begin
{*
 00591DA8    push       ebx
 00591DA9    push       esi
 00591DAA    call       @BeforeDestruction
 00591DAF    mov        ebx,edx
 00591DB1    mov        esi,eax
 00591DB3    lea        eax,[esi+0C8]; TRvRenderPreview.GridPen:TPen
 00591DB9    call       FreeAndNil
 00591DBE    mov        edx,ebx
 00591DC0    and        dl,0FC
 00591DC3    mov        eax,esi
 00591DC5    call       TRPRenderStream.Destroy
 00591DCA    test       bl,bl
>00591DCC    jle        00591DD5
 00591DCE    mov        eax,esi
 00591DD0    call       @ClassDestroy
 00591DD5    pop        esi
 00591DD6    pop        ebx
 00591DD7    ret
*}
end;

//00591DD8
procedure sub_00591DD8();
begin
{*
 00591DD8    call       005909D8
 00591DDD    ret
*}
end;

//00591DE0
procedure sub_00591DE0();
begin
{*
 00591DE0    call       005909E0
 00591DE5    ret
*}
end;

//00591DE8
procedure sub_00591DE8;
begin
{*
 00591DE8    mov        eax,dword ptr [eax+0A4]; TRvRenderPreview.?fA4:TBitmap
 00591DEE    call       TBitmap.GetCanvas
 00591DF3    ret
*}
end;

//00591DF4
procedure TRvRenderPreview.GetZoomFactor(Self:TRvRenderPreview);
begin
{*
 00591DF4    add        esp,0FFFFFFF8
 00591DF7    mov        edx,dword ptr [eax+110]; TRvRenderPreview.?f110:?Double
 00591DFD    mov        dword ptr [esp],edx
 00591E00    mov        edx,dword ptr [eax+114]; TRvRenderPreview.?f114:dword
 00591E06    mov        dword ptr [esp+4],edx
 00591E0A    fld        qword ptr [esp]
 00591E0D    pop        ecx
 00591E0E    pop        edx
 00591E0F    ret
*}
end;

//00591E10
//function sub_00591E10(?:TRvRenderPreview):?;
//begin
{*
 00591E10    push       ebx
 00591E11    push       esi
 00591E12    push       edi
 00591E13    push       ebp
 00591E14    add        esp,0FFFFFFD0
 00591E17    mov        ebx,eax
 00591E19    mov        eax,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
 00591E1F    mov        esi,dword ptr [eax+48]; TScrollBox.Width:Integer
 00591E22    mov        edx,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 00591E28    sub        esi,edx
 00591E2A    sub        esi,dword ptr [ebx+0E8]
 00591E30    mov        edi,dword ptr [eax+4C]; TScrollBox.Height:Integer
 00591E33    sub        edi,edx
 00591E35    sub        edi,dword ptr [ebx+0EC]
 00591E3B    cmp        byte ptr [ebx+0AD],0; TRvRenderPreview.MarginMethod:TMarginMethod
>00591E42    jne        00591EDB
 00591E48    mov        eax,ebx
 00591E4A    mov        edx,dword ptr [eax]
 00591E4C    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 00591E52    mov        dword ptr [esp+18],eax
 00591E56    fild       dword ptr [esp+18]
 00591E5A    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 00591E5D    fld        qword ptr [ebx+0B0]; TRvRenderPreview.MarginPercent:Double
 00591E63    fdiv       dword ptr ds:[591FAC]; 50:Single
 00591E69    fadd       dword ptr ds:[591FB0]; 1:Single
 00591E6F    fmulp      st(1),st
 00591E71    sub        esi,4
 00591E74    mov        dword ptr [esp+1C],esi
 00591E78    fild       dword ptr [esp+1C]
 00591E7C    fdivrp     st(1),st
 00591E7E    fstp       qword ptr [esp+8]
 00591E82    wait
 00591E83    mov        eax,ebx
 00591E85    mov        edx,dword ptr [eax]
 00591E87    call       dword ptr [edx+0A4]; TRvRenderPreview.sub_005937AC
 00591E8D    mov        dword ptr [esp+18],eax
 00591E91    fild       dword ptr [esp+18]
 00591E95    fmul       qword ptr [ebx+40]; TRvRenderPreview.?f40:?Double
 00591E98    fstp       tbyte ptr [esp+20]
 00591E9C    wait
 00591E9D    mov        eax,ebx
 00591E9F    mov        edx,dword ptr [eax]
 00591EA1    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 00591EA7    mov        dword ptr [esp+1C],eax
 00591EAB    fild       dword ptr [esp+1C]
 00591EAF    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 00591EB2    fmul       qword ptr [ebx+0B0]; TRvRenderPreview.MarginPercent:Double
 00591EB8    fdiv       dword ptr ds:[591FAC]; 50:Single
 00591EBE    fld        tbyte ptr [esp+20]
 00591EC2    faddp      st(1),st
 00591EC4    sub        edi,4
 00591EC7    mov        dword ptr [esp+2C],edi
 00591ECB    fild       dword ptr [esp+2C]
 00591ECF    fdivrp     st(1),st
 00591ED1    fstp       qword ptr [esp+10]
 00591ED5    wait
>00591ED6    jmp        00591F73
 00591EDB    mov        eax,ebx
 00591EDD    mov        edx,dword ptr [eax]
 00591EDF    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 00591EE5    mov        dword ptr [esp+18],eax
 00591EE9    fild       dword ptr [esp+18]
 00591EED    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 00591EF0    fld        qword ptr [ebx+0B0]; TRvRenderPreview.MarginPercent:Double
 00591EF6    fdiv       dword ptr ds:[591FB4]; 100:Single
 00591EFC    fmulp      st(1),st
 00591EFE    call       @ROUND
 00591F03    mov        ebp,eax
 00591F05    mov        eax,ebx
 00591F07    mov        edx,dword ptr [eax]
 00591F09    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 00591F0F    mov        dword ptr [esp+18],eax
 00591F13    fild       dword ptr [esp+18]
 00591F17    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 00591F1A    sub        esi,4
 00591F1D    mov        dword ptr [esp+1C],esi
 00591F21    fild       dword ptr [esp+1C]
 00591F25    mov        dword ptr [esp+2C],ebp
 00591F29    fild       dword ptr [esp+2C]
 00591F2D    fmul       dword ptr ds:[591FB8]; 2:Single
 00591F33    fsubp      st(1),st
 00591F35    fdivrp     st(1),st
 00591F37    fstp       qword ptr [esp+8]
 00591F3B    wait
 00591F3C    mov        eax,ebx
 00591F3E    mov        edx,dword ptr [eax]
 00591F40    call       dword ptr [edx+0A4]; TRvRenderPreview.sub_005937AC
 00591F46    mov        dword ptr [esp+18],eax
 00591F4A    fild       dword ptr [esp+18]
 00591F4E    fmul       qword ptr [ebx+40]; TRvRenderPreview.?f40:?Double
 00591F51    sub        edi,4
 00591F54    mov        dword ptr [esp+1C],edi
 00591F58    fild       dword ptr [esp+1C]
 00591F5C    mov        dword ptr [esp+2C],ebp
 00591F60    fild       dword ptr [esp+2C]
 00591F64    fmul       dword ptr ds:[591FB8]; 2:Single
 00591F6A    fsubp      st(1),st
 00591F6C    fdivrp     st(1),st
 00591F6E    fstp       qword ptr [esp+10]
 00591F72    wait
 00591F73    fld        qword ptr [esp+8]
 00591F77    fcomp      qword ptr [esp+10]
 00591F7B    fnstsw     al
 00591F7D    sahf
>00591F7E    ja         00591F90
 00591F80    fld        qword ptr [esp+8]
 00591F84    fmul       dword ptr ds:[591FB4]; 100:Single
 00591F8A    fstp       qword ptr [esp]
 00591F8D    wait
>00591F8E    jmp        00591F9E
 00591F90    fld        qword ptr [esp+10]
 00591F94    fmul       dword ptr ds:[591FB4]; 100:Single
 00591F9A    fstp       qword ptr [esp]
 00591F9D    wait
 00591F9E    fld        qword ptr [esp]
 00591FA1    add        esp,30
 00591FA4    pop        ebp
 00591FA5    pop        edi
 00591FA6    pop        esi
 00591FA7    pop        ebx
 00591FA8    ret
*}
//end;

//00591FBC
//function sub_00591FBC(?:TRvRenderPreview):?;
//begin
{*
 00591FBC    push       ebx
 00591FBD    push       esi
 00591FBE    push       edi
 00591FBF    push       ebp
 00591FC0    add        esp,0FFFFFFDC
 00591FC3    mov        ebx,eax
 00591FC5    mov        eax,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
 00591FCB    mov        edi,dword ptr [eax+48]; TScrollBox.Width:Integer
 00591FCE    mov        edx,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 00591FD4    sub        edi,edx
 00591FD6    sub        edi,dword ptr [ebx+0E8]
 00591FDC    mov        ebp,dword ptr [eax+4C]; TScrollBox.Height:Integer
 00591FDF    sub        ebp,edx
 00591FE1    sub        ebp,dword ptr [ebx+0EC]
 00591FE7    cmp        byte ptr [ebx+0AD],0; TRvRenderPreview.MarginMethod:TMarginMethod
>00591FEE    jne        00592032
 00591FF0    mov        eax,ebx
 00591FF2    mov        edx,dword ptr [eax]
 00591FF4    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 00591FFA    mov        dword ptr [esp+18],eax
 00591FFE    fild       dword ptr [esp+18]
 00592002    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 00592005    fld        qword ptr [ebx+0B0]; TRvRenderPreview.MarginPercent:Double
 0059200B    fdiv       dword ptr ds:[5921D0]; 50:Single
 00592011    fadd       dword ptr ds:[5921D4]; 1:Single
 00592017    fmulp      st(1),st
 00592019    mov        eax,edi
 0059201B    sub        eax,dword ptr [ebx+0C0]
 00592021    mov        dword ptr [esp+1C],eax
 00592025    fild       dword ptr [esp+1C]
 00592029    fdivrp     st(1),st
 0059202B    fstp       qword ptr [esp+10]
 0059202F    wait
>00592030    jmp        00592098
 00592032    mov        eax,ebx
 00592034    mov        edx,dword ptr [eax]
 00592036    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 0059203C    mov        dword ptr [esp+18],eax
 00592040    fild       dword ptr [esp+18]
 00592044    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 00592047    fld        qword ptr [ebx+0B0]; TRvRenderPreview.MarginPercent:Double
 0059204D    fdiv       dword ptr ds:[5921D8]; 100:Single
 00592053    fmulp      st(1),st
 00592055    call       @ROUND
 0059205A    mov        esi,eax
 0059205C    mov        eax,ebx
 0059205E    mov        edx,dword ptr [eax]
 00592060    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 00592066    mov        dword ptr [esp+18],eax
 0059206A    fild       dword ptr [esp+18]
 0059206E    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 00592071    fild       dword ptr [ebx+0C0]; TRvRenderPreview.?fC0:Single
 00592077    mov        dword ptr [esp+1C],esi
 0059207B    fild       dword ptr [esp+1C]
 0059207F    fmul       dword ptr ds:[5921DC]; 2:Single
 00592085    faddp      st(1),st
 00592087    mov        dword ptr [esp+20],edi
 0059208B    fild       dword ptr [esp+20]
 0059208F    fsubrp     st(1),st
 00592091    fdivrp     st(1),st
 00592093    fstp       qword ptr [esp+10]
 00592097    wait
 00592098    mov        eax,ebx
 0059209A    mov        edx,dword ptr [eax]
 0059209C    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 005920A2    mov        dword ptr [esp+18],eax
 005920A6    fild       dword ptr [esp+18]
 005920AA    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 005920AD    fld        qword ptr [ebx+0B0]; TRvRenderPreview.MarginPercent:Double
 005920B3    fdiv       dword ptr ds:[5921D8]; 100:Single
 005920B9    fmulp      st(1),st
 005920BB    fstp       qword ptr [esp+8]
 005920BF    wait
 005920C0    cmp        byte ptr [ebx+0AD],0; TRvRenderPreview.MarginMethod:TMarginMethod
>005920C7    jne        005920D6
 005920C9    fld        qword ptr [esp+8]
 005920CD    fmul       qword ptr [esp+10]
 005920D1    fstp       qword ptr [esp+8]
 005920D5    wait
 005920D6    fld        qword ptr [esp+8]
 005920DA    call       @ROUND
 005920DF    mov        esi,eax
 005920E1    mov        eax,ebx
 005920E3    mov        edx,dword ptr [eax]
 005920E5    call       dword ptr [edx+0A4]; TRvRenderPreview.sub_005937AC
 005920EB    mov        dword ptr [esp+18],eax
 005920EF    fild       dword ptr [esp+18]
 005920F3    fmul       qword ptr [ebx+40]; TRvRenderPreview.?f40:?Double
 005920F6    fmul       qword ptr [esp+10]
 005920FA    mov        eax,esi
 005920FC    add        eax,eax
 005920FE    mov        dword ptr [esp+1C],eax
 00592102    fild       dword ptr [esp+1C]
 00592106    faddp      st(1),st
 00592108    sub        ebp,dword ptr [ebx+0C4]
 0059210E    mov        dword ptr [esp+20],ebp
 00592112    fild       dword ptr [esp+20]
 00592116    fcompp
 00592118    fnstsw     al
 0059211A    sahf
>0059211B    jae        005921B6
 00592121    cmp        byte ptr [ebx+0AD],0; TRvRenderPreview.MarginMethod:TMarginMethod
>00592128    jne        00592172
 0059212A    mov        eax,ebx
 0059212C    mov        edx,dword ptr [eax]
 0059212E    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 00592134    mov        dword ptr [esp+18],eax
 00592138    fild       dword ptr [esp+18]
 0059213C    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 0059213F    fld        qword ptr [ebx+0B0]; TRvRenderPreview.MarginPercent:Double
 00592145    fdiv       dword ptr ds:[5921D0]; 50:Single
 0059214B    fadd       dword ptr ds:[5921D4]; 1:Single
 00592151    fmulp      st(1),st
 00592153    mov        eax,dword ptr [ebx+0C0]; TRvRenderPreview.?fC0:Single
 00592159    add        eax,dword ptr [ebx+0B8]; TRvRenderPreview.?fB8:Integer
 0059215F    sub        edi,eax
 00592161    mov        dword ptr [esp+1C],edi
 00592165    fild       dword ptr [esp+1C]
 00592169    fdivrp     st(1),st
 0059216B    fstp       qword ptr [esp+10]
 0059216F    wait
>00592170    jmp        005921B6
 00592172    mov        eax,ebx
 00592174    mov        edx,dword ptr [eax]
 00592176    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 0059217C    mov        dword ptr [esp+18],eax
 00592180    fild       dword ptr [esp+18]
 00592184    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 00592187    fild       dword ptr [ebx+0C0]; TRvRenderPreview.?fC0:Single
 0059218D    mov        dword ptr [esp+1C],esi
 00592191    fild       dword ptr [esp+1C]
 00592195    fmul       dword ptr ds:[5921DC]; 2:Single
 0059219B    faddp      st(1),st
 0059219D    fild       dword ptr [ebx+0B8]; TRvRenderPreview.?fB8:Integer
 005921A3    faddp      st(1),st
 005921A5    mov        dword ptr [esp+20],edi
 005921A9    fild       dword ptr [esp+20]
 005921AD    fsubrp     st(1),st
 005921AF    fdivrp     st(1),st
 005921B1    fstp       qword ptr [esp+10]
 005921B5    wait
 005921B6    fld        qword ptr [esp+10]
 005921BA    fmul       dword ptr ds:[5921D8]; 100:Single
 005921C0    fstp       qword ptr [esp]
 005921C3    wait
 005921C4    fld        qword ptr [esp]
 005921C7    add        esp,24
 005921CA    pop        ebp
 005921CB    pop        edi
 005921CC    pop        esi
 005921CD    pop        ebx
 005921CE    ret
*}
//end;

//005921E0
procedure TRvRenderPreview.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005921E0    push       ebx
 005921E1    push       esi
 005921E2    push       edi
 005921E3    mov        ebx,ecx
 005921E5    mov        esi,edx
 005921E7    mov        edi,eax
 005921E9    mov        ecx,ebx
 005921EB    mov        edx,esi
 005921ED    mov        eax,edi
 005921EF    call       TComponent.Notification
 005921F4    cmp        bl,1
>005921F7    jne        00592209
 005921F9    cmp        esi,dword ptr [edi+9C]; TRvRenderPreview.ScrollBox:TScrollBox
>005921FF    jne        00592209
 00592201    xor        eax,eax
 00592203    mov        dword ptr [edi+9C],eax; TRvRenderPreview.ScrollBox:TScrollBox
 00592209    pop        edi
 0059220A    pop        esi
 0059220B    pop        ebx
 0059220C    ret
*}
end;

//00592210
procedure sub_00592210;
begin
{*
 00592210    push       ebp
 00592211    mov        ebp,esp
 00592213    add        esp,0FFFFFE8C
 00592219    push       ebx
 0059221A    push       esi
 0059221B    push       edi
 0059221C    xor        edx,edx
 0059221E    mov        dword ptr [ebp-170],edx
 00592224    mov        dword ptr [ebp-174],edx
 0059222A    mov        dword ptr [ebp-16C],edx
 00592230    mov        dword ptr [ebp-168],edx
 00592236    mov        dword ptr [ebp-160],edx
 0059223C    mov        dword ptr [ebp-164],edx
 00592242    mov        dword ptr [ebp-15C],edx
 00592248    mov        dword ptr [ebp-158],edx
 0059224E    mov        dword ptr [ebp-50],edx
 00592251    mov        ebx,eax
 00592253    xor        eax,eax
 00592255    push       ebp
 00592256    push       59354C
 0059225B    push       dword ptr fs:[eax]
 0059225E    mov        dword ptr fs:[eax],esp
 00592261    mov        eax,ebx
 00592263    call       00590CC4
 00592268    cmp        dword ptr [ebx+9C],0; TRvRenderPreview.ScrollBox:TScrollBox
>0059226F    jne        0059228B
 00592271    mov        esi,dword ptr ds:[61B830]
 00592277    mov        esi,dword ptr [esi]
 00592279    lea        edx,[ebp-50]
 0059227C    mov        eax,593564; 'ScrollBox must be assigned for RenderPreview component'
 00592281    call       esi
 00592283    mov        eax,dword ptr [ebp-50]
 00592286    call       00579798
 0059228B    mov        eax,dword ptr [ebx+70]; TRvRenderPreview.?f70:dword
 0059228E    mov        eax,dword ptr [eax+64]
 00592291    mov        dword ptr [ebx+10C],eax; TRvRenderPreview.?f10C:dword
 00592297    mov        esi,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
 0059229D    mov        eax,esi
 0059229F    call       TControl.GetClientWidth
 005922A4    mov        edx,eax
 005922A6    add        edx,edx
 005922A8    mov        eax,dword ptr [esi+208]; TScrollBox.HorzScrollBar:TControlScrollBar
 005922AE    call       TControlScrollBar.SetRange
 005922B3    mov        eax,esi
 005922B5    call       TControl.GetClientHeight
 005922BA    mov        dword ptr [ebx+0BC],eax; TRvRenderPreview.?fBC:Integer
 005922C0    mov        eax,esi
 005922C2    call       TControl.GetClientWidth
 005922C7    mov        edx,eax
 005922C9    mov        eax,dword ptr [esi+208]; TScrollBox.HorzScrollBar:TControlScrollBar
 005922CF    call       TControlScrollBar.SetRange
 005922D4    mov        eax,esi
 005922D6    call       TControl.GetClientHeight
 005922DB    sub        eax,dword ptr [ebx+0BC]
 005922E1    mov        dword ptr [ebx+0BC],eax; TRvRenderPreview.?fBC:Integer
 005922E7    mov        eax,esi
 005922E9    call       TControl.GetClientHeight
 005922EE    mov        edx,eax
 005922F0    add        edx,edx
 005922F2    mov        eax,dword ptr [esi+20C]; TScrollBox.VertScrollBar:TControlScrollBar
 005922F8    call       TControlScrollBar.SetRange
 005922FD    mov        eax,esi
 005922FF    call       TControl.GetClientWidth
 00592304    mov        dword ptr [ebx+0B8],eax; TRvRenderPreview.?fB8:Integer
 0059230A    mov        eax,esi
 0059230C    call       TControl.GetClientHeight
 00592311    mov        edx,eax
 00592313    mov        eax,dword ptr [esi+20C]; TScrollBox.VertScrollBar:TControlScrollBar
 00592319    call       TControlScrollBar.SetRange
 0059231E    mov        eax,esi
 00592320    call       TControl.GetClientWidth
 00592325    sub        eax,dword ptr [ebx+0B8]
 0059232B    mov        dword ptr [ebx+0B8],eax; TRvRenderPreview.?fB8:Integer
 00592331    mov        eax,esi
 00592333    call       TControl.GetClientWidth
 00592338    mov        edx,dword ptr [esi+48]; TScrollBox.Width:Integer
 0059233B    sub        edx,eax
 0059233D    mov        dword ptr [ebx+0C0],edx; TRvRenderPreview.?fC0:Single
 00592343    mov        eax,esi
 00592345    call       TControl.GetClientHeight
 0059234A    mov        edx,dword ptr [esi+4C]; TScrollBox.Height:Integer
 0059234D    sub        edx,eax
 0059234F    mov        dword ptr [ebx+0C4],edx; TRvRenderPreview.?fC4:dword
 00592355    mov        eax,dword ptr [ebx+0A0]; TRvRenderPreview.?fA0:TImage
 0059235B    test       eax,eax
>0059235D    je         0059236A
 0059235F    mov        eax,dword ptr [eax+30]; TImage.FParent:TWinControl
 00592362    cmp        eax,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
>00592368    je         005923D2
 0059236A    mov        eax,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
 00592370    mov        ecx,dword ptr [eax+4]; TScrollBox.FOwner:TComponent
 00592373    mov        dl,1
 00592375    mov        eax,[00439130]; TImage
 0059237A    call       TImage.Create; TImage.Create
 0059237F    mov        dword ptr [ebx+0A0],eax; TRvRenderPreview.?fA0:TImage
 00592385    mov        esi,dword ptr [ebx+0A0]; TRvRenderPreview.?fA0:TImage
 0059238B    mov        edx,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
 00592391    mov        eax,esi
 00592393    mov        ecx,dword ptr [eax]
 00592395    call       dword ptr [ecx+68]; TControl.SetParent
 00592398    xor        edx,edx
 0059239A    mov        eax,esi
 0059239C    call       TControl.SetAlign
 005923A1    mov        dl,1
 005923A3    mov        eax,esi
 005923A5    mov        ecx,dword ptr [eax]
 005923A7    call       dword ptr [ecx+5C]; TControl.SetAutoSize
 005923AA    mov        eax,dword ptr [ebx+0A0]; TRvRenderPreview.?fA0:TImage
 005923B0    mov        eax,dword ptr [eax+168]; TImage.Picture:TPicture
 005923B6    call       TPicture.GetBitmap
 005923BB    mov        dword ptr [ebx+0A4],eax; TRvRenderPreview.?fA4:TBitmap
 005923C1    mov        dl,byte ptr [ebx+0AC]; TRvRenderPreview.Monochrome:Boolean
 005923C7    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 005923CD    call       TBitmap.SetMonochrome
 005923D2    xor        eax,eax
 005923D4    mov        dword ptr [ebx+118],eax; TRvRenderPreview.?f118:Single
 005923DA    xor        eax,eax
 005923DC    mov        dword ptr [ebx+11C],eax; TRvRenderPreview.?f11C:Single
 005923E2    mov        eax,dword ptr [ebx+0A0]; TRvRenderPreview.?fA0:TImage
 005923E8    call       TImage.GetCanvas
 005923ED    xor        ecx,ecx
 005923EF    xor        edx,edx
 005923F1    call       TCanvas.MoveTo
 005923F6    cmp        byte ptr [ebx+0AC],0; TRvRenderPreview.Monochrome:Boolean
>005923FD    je         00592408
 005923FF    xor        edx,edx
 00592401    mov        eax,ebx
 00592403    call       TRvRenderPreview.SetShadowDepth
 00592408    mov        al,byte ptr [ebx+0E4]; TRvRenderPreview.RulerType:TRulerType
 0059240E    sub        al,2
>00592410    jb         00592416
 00592412    sub        al,2
>00592414    jne        00592420
 00592416    xor        eax,eax
 00592418    mov        dword ptr [ebx+0E8],eax; TRvRenderPreview.?fE8:dword
>0059241E    jmp        0059242A
 00592420    mov        dword ptr [ebx+0E8],14; TRvRenderPreview.?fE8:dword
 0059242A    mov        al,byte ptr [ebx+0E4]; TRvRenderPreview.RulerType:TRulerType
 00592430    test       al,al
>00592432    je         0059243C
 00592434    sub        al,2
>00592436    je         0059243C
 00592438    sub        al,3
>0059243A    jne        00592446
 0059243C    xor        eax,eax
 0059243E    mov        dword ptr [ebx+0EC],eax; TRvRenderPreview.?fEC:dword
>00592444    jmp        00592450
 00592446    mov        dword ptr [ebx+0EC],14; TRvRenderPreview.?fEC:dword
 00592450    mov        eax,dword ptr [ebx+0E8]; TRvRenderPreview.?fE8:dword
 00592456    mov        dword ptr [ebx+118],eax; TRvRenderPreview.?f118:Single
 0059245C    mov        eax,dword ptr [ebx+0EC]; TRvRenderPreview.?fEC:dword
 00592462    mov        dword ptr [ebx+11C],eax; TRvRenderPreview.?f11C:Single
 00592468    mov        cl,80
 0059246A    mov        dl,0FF
 0059246C    mov        al,0FF
 0059246E    call       RGB
 00592473    mov        esi,eax
 00592475    mov        eax,[0061C500]; ^Screen:TScreen
 0059247A    mov        eax,dword ptr [eax]
 0059247C    mov        ax,word ptr [eax+44]; TScreen.FCursor:TCursor
 00592480    mov        word ptr [ebx+98],ax; TRvRenderPreview.?f98:TCursor
 00592487    mov        eax,[0061C500]; ^Screen:TScreen
 0059248C    mov        eax,dword ptr [eax]
 0059248E    mov        dx,0FFF5
 00592492    call       TScreen.SetCursor
 00592497    mov        eax,ebx
 00592499    mov        edx,dword ptr [eax]
 0059249B    call       dword ptr [edx+0D4]; TRvRenderPreview.sub_005935C4
 005924A1    mov        edi,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
 005924A7    mov        eax,dword ptr [edi+208]; TScrollBox.HorzScrollBar:TControlScrollBar
 005924AD    mov        eax,dword ptr [eax+0C]; TControlScrollBar.Position:Integer
 005924B0    mov        dword ptr [ebx+90],eax; TRvRenderPreview.?f90:Integer
 005924B6    mov        eax,dword ptr [edi+208]; TScrollBox.HorzScrollBar:TControlScrollBar
 005924BC    xor        edx,edx
 005924BE    call       TControlScrollBar.SetPosition
 005924C3    mov        eax,dword ptr [edi+20C]; TScrollBox.VertScrollBar:TControlScrollBar
 005924C9    mov        eax,dword ptr [eax+0C]; TControlScrollBar.Position:Integer
 005924CC    mov        dword ptr [ebx+94],eax; TRvRenderPreview.?f94:Integer
 005924D2    mov        eax,dword ptr [edi+20C]; TScrollBox.VertScrollBar:TControlScrollBar
 005924D8    xor        edx,edx
 005924DA    call       TControlScrollBar.SetPosition
 005924DF    mov        eax,ebx
 005924E1    mov        edx,dword ptr [eax]
 005924E3    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 005924E9    mov        dword ptr [ebp-54],eax
 005924EC    fild       dword ptr [ebp-54]
 005924EF    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 005924F2    fmul       qword ptr [ebx+110]; TRvRenderPreview.?f110:?Double
 005924F8    fdiv       dword ptr ds:[59359C]; 100:Single
 005924FE    call       @ROUND
 00592503    mov        edx,eax
 00592505    add        edx,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 0059250B    add        edx,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 00592511    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592517    mov        ecx,dword ptr [eax]
 00592519    call       dword ptr [ecx+40]; TBitmap.SetWidth
 0059251C    mov        eax,ebx
 0059251E    mov        edx,dword ptr [eax]
 00592520    call       dword ptr [edx+0A4]; TRvRenderPreview.sub_005937AC
 00592526    mov        dword ptr [ebp-54],eax
 00592529    fild       dword ptr [ebp-54]
 0059252C    fmul       qword ptr [ebx+40]; TRvRenderPreview.?f40:?Double
 0059252F    fmul       qword ptr [ebx+110]; TRvRenderPreview.?f110:?Double
 00592535    fdiv       dword ptr ds:[59359C]; 100:Single
 0059253B    call       @ROUND
 00592540    mov        edx,eax
 00592542    add        edx,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 00592548    add        edx,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 0059254E    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592554    mov        ecx,dword ptr [eax]
 00592556    call       dword ptr [ecx+34]; TBitmap.SetHeight
 00592559    mov        eax,ebx
 0059255B    mov        edx,dword ptr [eax]
 0059255D    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592563    mov        eax,dword ptr [eax+10]
 00592566    mov        edx,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
 0059256C    mov        edx,dword ptr [edx+70]; TScrollBox.FColor:TColor
 0059256F    call       TPen.SetColor
 00592574    mov        eax,ebx
 00592576    mov        edx,dword ptr [eax]
 00592578    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059257E    mov        eax,dword ptr [eax+10]
 00592581    xor        edx,edx
 00592583    call       TPen.SetStyle
 00592588    mov        eax,ebx
 0059258A    mov        edx,dword ptr [eax]
 0059258C    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592592    mov        eax,dword ptr [eax+10]
 00592595    mov        edx,1
 0059259A    call       TPen.SetWidth
 0059259F    mov        eax,ebx
 005925A1    mov        edx,dword ptr [eax]
 005925A3    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005925A9    mov        eax,dword ptr [eax+10]
 005925AC    mov        dl,4
 005925AE    call       TPen.SetMode
 005925B3    mov        eax,ebx
 005925B5    mov        edx,dword ptr [eax]
 005925B7    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005925BD    mov        eax,dword ptr [eax+14]
 005925C0    mov        edx,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
 005925C6    mov        edx,dword ptr [edx+70]; TScrollBox.FColor:TColor
 005925C9    call       TBrush.SetColor
 005925CE    mov        eax,ebx
 005925D0    mov        edx,dword ptr [eax]
 005925D2    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005925D8    mov        eax,dword ptr [eax+14]
 005925DB    xor        edx,edx
 005925DD    call       TBrush.SetStyle
 005925E2    mov        edi,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 005925E8    mov        eax,edi
 005925EA    add        eax,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 005925F0    push       eax
 005925F1    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 005925F7    mov        edx,dword ptr [eax]
 005925F9    call       dword ptr [edx+20]; TBitmap.GetHeight
 005925FC    push       eax
 005925FD    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592603    mov        edx,dword ptr [eax]
 00592605    call       dword ptr [edx+20]; TBitmap.GetHeight
 00592608    sub        eax,edi
 0059260A    push       eax
 0059260B    mov        eax,ebx
 0059260D    mov        edx,dword ptr [eax]
 0059260F    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592615    xor        edx,edx
 00592617    pop        ecx
 00592618    call       TCanvas.Rectangle
 0059261D    mov        eax,ebx
 0059261F    mov        edx,dword ptr [eax]
 00592621    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592627    mov        eax,dword ptr [eax+10]
 0059262A    xor        edx,edx
 0059262C    call       TPen.SetColor
 00592631    mov        eax,ebx
 00592633    mov        edx,dword ptr [eax]
 00592635    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059263B    mov        eax,dword ptr [eax+10]
 0059263E    xor        edx,edx
 00592640    call       TPen.SetStyle
 00592645    mov        eax,ebx
 00592647    mov        edx,dword ptr [eax]
 00592649    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059264F    mov        eax,dword ptr [eax+10]
 00592652    mov        edx,1
 00592657    call       TPen.SetWidth
 0059265C    mov        eax,ebx
 0059265E    mov        edx,dword ptr [eax]
 00592660    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592666    mov        eax,dword ptr [eax+10]
 00592669    mov        dl,4
 0059266B    call       TPen.SetMode
 00592670    mov        eax,ebx
 00592672    mov        edx,dword ptr [eax]
 00592674    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059267A    mov        eax,dword ptr [eax+14]
 0059267D    xor        edx,edx
 0059267F    call       TBrush.SetColor
 00592684    mov        eax,ebx
 00592686    mov        edx,dword ptr [eax]
 00592688    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059268E    mov        eax,dword ptr [eax+14]
 00592691    xor        edx,edx
 00592693    call       TBrush.SetStyle
 00592698    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 0059269E    mov        edx,dword ptr [eax]
 005926A0    call       dword ptr [edx+2C]; TBitmap.GetWidth
 005926A3    push       eax
 005926A4    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 005926AA    mov        edx,dword ptr [eax]
 005926AC    call       dword ptr [edx+20]; TBitmap.GetHeight
 005926AF    push       eax
 005926B0    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 005926B6    mov        edx,dword ptr [eax]
 005926B8    call       dword ptr [edx+2C]; TBitmap.GetWidth
 005926BB    mov        edi,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 005926C1    sub        eax,edi
 005926C3    push       eax
 005926C4    mov        eax,ebx
 005926C6    mov        edx,dword ptr [eax]
 005926C8    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005926CE    mov        ecx,edi
 005926D0    add        ecx,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 005926D6    pop        edx
 005926D7    call       TCanvas.Rectangle
 005926DC    mov        eax,ebx
 005926DE    mov        edx,dword ptr [eax]
 005926E0    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005926E6    mov        eax,dword ptr [eax+10]
 005926E9    mov        edx,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
 005926EF    mov        edx,dword ptr [edx+70]; TScrollBox.FColor:TColor
 005926F2    call       TPen.SetColor
 005926F7    mov        eax,ebx
 005926F9    mov        edx,dword ptr [eax]
 005926FB    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592701    mov        eax,dword ptr [eax+10]
 00592704    xor        edx,edx
 00592706    call       TPen.SetStyle
 0059270B    mov        eax,ebx
 0059270D    mov        edx,dword ptr [eax]
 0059270F    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592715    mov        eax,dword ptr [eax+10]
 00592718    mov        edx,1
 0059271D    call       TPen.SetWidth
 00592722    mov        eax,ebx
 00592724    mov        edx,dword ptr [eax]
 00592726    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059272C    mov        eax,dword ptr [eax+10]
 0059272F    mov        dl,4
 00592731    call       TPen.SetMode
 00592736    mov        eax,ebx
 00592738    mov        edx,dword ptr [eax]
 0059273A    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592740    mov        eax,dword ptr [eax+14]
 00592743    mov        edx,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
 00592749    mov        edx,dword ptr [edx+70]; TScrollBox.FColor:TColor
 0059274C    call       TBrush.SetColor
 00592751    mov        eax,ebx
 00592753    mov        edx,dword ptr [eax]
 00592755    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059275B    mov        eax,dword ptr [eax+14]
 0059275E    xor        edx,edx
 00592760    call       TBrush.SetStyle
 00592765    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 0059276B    mov        edx,dword ptr [eax]
 0059276D    call       dword ptr [edx+2C]; TBitmap.GetWidth
 00592770    push       eax
 00592771    mov        eax,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 00592777    add        eax,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 0059277D    push       eax
 0059277E    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592784    mov        edx,dword ptr [eax]
 00592786    call       dword ptr [edx+2C]; TBitmap.GetWidth
 00592789    sub        eax,dword ptr [ebx+0E0]
 0059278F    push       eax
 00592790    mov        eax,ebx
 00592792    mov        edx,dword ptr [eax]
 00592794    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059279A    xor        ecx,ecx
 0059279C    pop        edx
 0059279D    call       TCanvas.Rectangle
 005927A2    mov        eax,ebx
 005927A4    mov        edx,dword ptr [eax]
 005927A6    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005927AC    mov        eax,dword ptr [eax+10]
 005927AF    xor        edx,edx
 005927B1    call       TPen.SetColor
 005927B6    mov        eax,ebx
 005927B8    mov        edx,dword ptr [eax]
 005927BA    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005927C0    mov        eax,dword ptr [eax+10]
 005927C3    xor        edx,edx
 005927C5    call       TPen.SetStyle
 005927CA    mov        eax,ebx
 005927CC    mov        edx,dword ptr [eax]
 005927CE    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005927D4    mov        eax,dword ptr [eax+10]
 005927D7    mov        edx,1
 005927DC    call       TPen.SetWidth
 005927E1    mov        eax,ebx
 005927E3    mov        edx,dword ptr [eax]
 005927E5    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005927EB    mov        eax,dword ptr [eax+10]
 005927EE    mov        dl,4
 005927F0    call       TPen.SetMode
 005927F5    mov        eax,ebx
 005927F7    mov        edx,dword ptr [eax]
 005927F9    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005927FF    mov        eax,dword ptr [eax+14]
 00592802    xor        edx,edx
 00592804    call       TBrush.SetColor
 00592809    mov        eax,ebx
 0059280B    mov        edx,dword ptr [eax]
 0059280D    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592813    mov        eax,dword ptr [eax+14]
 00592816    xor        edx,edx
 00592818    call       TBrush.SetStyle
 0059281D    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592823    mov        edx,dword ptr [eax]
 00592825    call       dword ptr [edx+2C]; TBitmap.GetWidth
 00592828    push       eax
 00592829    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 0059282F    mov        edx,dword ptr [eax]
 00592831    call       dword ptr [edx+20]; TBitmap.GetHeight
 00592834    push       eax
 00592835    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 0059283B    mov        edx,dword ptr [eax]
 0059283D    call       dword ptr [edx+20]; TBitmap.GetHeight
 00592840    sub        eax,dword ptr [ebx+0E0]
 00592846    push       eax
 00592847    mov        eax,ebx
 00592849    mov        edx,dword ptr [eax]
 0059284B    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592851    mov        edx,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 00592857    add        edx,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 0059285D    pop        ecx
 0059285E    call       TCanvas.Rectangle
 00592863    cmp        dword ptr [ebx+0E8],0; TRvRenderPreview.?fE8:dword
>0059286A    jle        0059291F
 00592870    cmp        dword ptr [ebx+0EC],0; TRvRenderPreview.?fEC:dword
>00592877    jle        0059291F
 0059287D    mov        eax,ebx
 0059287F    mov        edx,dword ptr [eax]
 00592881    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592887    mov        eax,dword ptr [eax+10]
 0059288A    mov        edx,0C0C0C0
 0059288F    call       TPen.SetColor
 00592894    mov        eax,ebx
 00592896    mov        edx,dword ptr [eax]
 00592898    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059289E    mov        eax,dword ptr [eax+10]
 005928A1    xor        edx,edx
 005928A3    call       TPen.SetStyle
 005928A8    mov        eax,ebx
 005928AA    mov        edx,dword ptr [eax]
 005928AC    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005928B2    mov        eax,dword ptr [eax+10]
 005928B5    mov        edx,1
 005928BA    call       TPen.SetWidth
 005928BF    mov        eax,ebx
 005928C1    mov        edx,dword ptr [eax]
 005928C3    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005928C9    mov        eax,dword ptr [eax+10]
 005928CC    mov        dl,4
 005928CE    call       TPen.SetMode
 005928D3    mov        eax,ebx
 005928D5    mov        edx,dword ptr [eax]
 005928D7    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005928DD    mov        eax,dword ptr [eax+14]
 005928E0    mov        edx,0C0C0C0
 005928E5    call       TBrush.SetColor
 005928EA    mov        eax,ebx
 005928EC    mov        edx,dword ptr [eax]
 005928EE    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005928F4    mov        eax,dword ptr [eax+14]
 005928F7    xor        edx,edx
 005928F9    call       TBrush.SetStyle
 005928FE    mov        eax,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 00592904    push       eax
 00592905    mov        eax,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 0059290B    push       eax
 0059290C    mov        eax,ebx
 0059290E    mov        edx,dword ptr [eax]
 00592910    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592916    xor        ecx,ecx
 00592918    xor        edx,edx
 0059291A    call       TCanvas.Rectangle
 0059291F    mov        al,byte ptr [ebx+0E4]; TRvRenderPreview.RulerType:TRulerType
 00592925    sub        al,1
>00592927    je         00592937
 00592929    add        al,0FE
 0059292B    sub        al,2
>0059292D    jb         00592937
 0059292F    sub        al,1
>00592931    jne        005929F3
 00592937    mov        eax,ebx
 00592939    mov        edx,dword ptr [eax]
 0059293B    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592941    mov        eax,dword ptr [eax+10]
 00592944    xor        edx,edx
 00592946    call       TPen.SetColor
 0059294B    mov        eax,ebx
 0059294D    mov        edx,dword ptr [eax]
 0059294F    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592955    mov        eax,dword ptr [eax+10]
 00592958    xor        edx,edx
 0059295A    call       TPen.SetStyle
 0059295F    mov        eax,ebx
 00592961    mov        edx,dword ptr [eax]
 00592963    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592969    mov        eax,dword ptr [eax+10]
 0059296C    mov        edx,1
 00592971    call       TPen.SetWidth
 00592976    mov        eax,ebx
 00592978    mov        edx,dword ptr [eax]
 0059297A    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592980    mov        eax,dword ptr [eax+10]
 00592983    mov        dl,4
 00592985    call       TPen.SetMode
 0059298A    mov        eax,ebx
 0059298C    mov        edx,dword ptr [eax]
 0059298E    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592994    mov        eax,dword ptr [eax+14]
 00592997    xor        edx,edx
 00592999    call       TBrush.SetColor
 0059299E    mov        eax,ebx
 005929A0    mov        edx,dword ptr [eax]
 005929A2    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005929A8    mov        eax,dword ptr [eax+14]
 005929AB    xor        edx,edx
 005929AD    call       TBrush.SetStyle
 005929B2    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 005929B8    mov        edx,dword ptr [eax]
 005929BA    call       dword ptr [edx+2C]; TBitmap.GetWidth
 005929BD    push       eax
 005929BE    mov        eax,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 005929C4    add        eax,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 005929CA    push       eax
 005929CB    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 005929D1    mov        edx,dword ptr [eax]
 005929D3    call       dword ptr [edx+2C]; TBitmap.GetWidth
 005929D6    sub        eax,dword ptr [ebx+0E0]
 005929DC    push       eax
 005929DD    mov        eax,ebx
 005929DF    mov        edx,dword ptr [eax]
 005929E1    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005929E7    mov        ecx,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 005929ED    pop        edx
 005929EE    call       TCanvas.Rectangle
 005929F3    mov        al,byte ptr [ebx+0E4]; TRvRenderPreview.RulerType:TRulerType
 005929F9    add        al,0FE
 005929FB    sub        al,2
>005929FD    jb         00592A08
 005929FF    dec        eax
 00592A00    sub        al,2
>00592A02    jae        00592AC4
 00592A08    mov        eax,ebx
 00592A0A    mov        edx,dword ptr [eax]
 00592A0C    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592A12    mov        eax,dword ptr [eax+10]
 00592A15    xor        edx,edx
 00592A17    call       TPen.SetColor
 00592A1C    mov        eax,ebx
 00592A1E    mov        edx,dword ptr [eax]
 00592A20    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592A26    mov        eax,dword ptr [eax+10]
 00592A29    xor        edx,edx
 00592A2B    call       TPen.SetStyle
 00592A30    mov        eax,ebx
 00592A32    mov        edx,dword ptr [eax]
 00592A34    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592A3A    mov        eax,dword ptr [eax+10]
 00592A3D    mov        edx,1
 00592A42    call       TPen.SetWidth
 00592A47    mov        eax,ebx
 00592A49    mov        edx,dword ptr [eax]
 00592A4B    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592A51    mov        eax,dword ptr [eax+10]
 00592A54    mov        dl,4
 00592A56    call       TPen.SetMode
 00592A5B    mov        eax,ebx
 00592A5D    mov        edx,dword ptr [eax]
 00592A5F    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592A65    mov        eax,dword ptr [eax+14]
 00592A68    xor        edx,edx
 00592A6A    call       TBrush.SetColor
 00592A6F    mov        eax,ebx
 00592A71    mov        edx,dword ptr [eax]
 00592A73    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592A79    mov        eax,dword ptr [eax+14]
 00592A7C    xor        edx,edx
 00592A7E    call       TBrush.SetStyle
 00592A83    mov        eax,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 00592A89    add        eax,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 00592A8F    push       eax
 00592A90    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592A96    mov        edx,dword ptr [eax]
 00592A98    call       dword ptr [edx+20]; TBitmap.GetHeight
 00592A9B    push       eax
 00592A9C    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592AA2    mov        edx,dword ptr [eax]
 00592AA4    call       dword ptr [edx+20]; TBitmap.GetHeight
 00592AA7    sub        eax,dword ptr [ebx+0E0]
 00592AAD    push       eax
 00592AAE    mov        eax,ebx
 00592AB0    mov        edx,dword ptr [eax]
 00592AB2    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592AB8    mov        edx,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 00592ABE    pop        ecx
 00592ABF    call       TCanvas.Rectangle
 00592AC4    cmp        dword ptr [ebx+0E8],0; TRvRenderPreview.?fE8:dword
>00592ACB    jle        00592B7D
 00592AD1    mov        eax,ebx
 00592AD3    mov        edx,dword ptr [eax]
 00592AD5    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592ADB    mov        eax,dword ptr [eax+10]
 00592ADE    xor        edx,edx
 00592AE0    call       TPen.SetColor
 00592AE5    mov        eax,ebx
 00592AE7    mov        edx,dword ptr [eax]
 00592AE9    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592AEF    mov        eax,dword ptr [eax+10]
 00592AF2    xor        edx,edx
 00592AF4    call       TPen.SetStyle
 00592AF9    mov        eax,ebx
 00592AFB    mov        edx,dword ptr [eax]
 00592AFD    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592B03    mov        eax,dword ptr [eax+10]
 00592B06    mov        edx,1
 00592B0B    call       TPen.SetWidth
 00592B10    mov        eax,ebx
 00592B12    mov        edx,dword ptr [eax]
 00592B14    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592B1A    mov        eax,dword ptr [eax+10]
 00592B1D    mov        dl,4
 00592B1F    call       TPen.SetMode
 00592B24    mov        eax,ebx
 00592B26    mov        edx,dword ptr [eax]
 00592B28    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592B2E    mov        eax,dword ptr [eax+14]
 00592B31    mov        edx,esi
 00592B33    call       TBrush.SetColor
 00592B38    mov        eax,ebx
 00592B3A    mov        edx,dword ptr [eax]
 00592B3C    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592B42    mov        eax,dword ptr [eax+14]
 00592B45    xor        edx,edx
 00592B47    call       TBrush.SetStyle
 00592B4C    mov        eax,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 00592B52    inc        eax
 00592B53    push       eax
 00592B54    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592B5A    mov        edx,dword ptr [eax]
 00592B5C    call       dword ptr [edx+20]; TBitmap.GetHeight
 00592B5F    sub        eax,dword ptr [ebx+0E0]
 00592B65    push       eax
 00592B66    mov        eax,ebx
 00592B68    mov        edx,dword ptr [eax]
 00592B6A    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592B70    mov        ecx,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 00592B76    xor        edx,edx
 00592B78    call       TCanvas.Rectangle
 00592B7D    cmp        dword ptr [ebx+0EC],0; TRvRenderPreview.?fEC:dword
>00592B84    jle        00592C36
 00592B8A    mov        eax,ebx
 00592B8C    mov        edx,dword ptr [eax]
 00592B8E    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592B94    mov        eax,dword ptr [eax+10]
 00592B97    xor        edx,edx
 00592B99    call       TPen.SetColor
 00592B9E    mov        eax,ebx
 00592BA0    mov        edx,dword ptr [eax]
 00592BA2    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592BA8    mov        eax,dword ptr [eax+10]
 00592BAB    xor        edx,edx
 00592BAD    call       TPen.SetStyle
 00592BB2    mov        eax,ebx
 00592BB4    mov        edx,dword ptr [eax]
 00592BB6    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592BBC    mov        eax,dword ptr [eax+10]
 00592BBF    mov        edx,1
 00592BC4    call       TPen.SetWidth
 00592BC9    mov        eax,ebx
 00592BCB    mov        edx,dword ptr [eax]
 00592BCD    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592BD3    mov        eax,dword ptr [eax+10]
 00592BD6    mov        dl,4
 00592BD8    call       TPen.SetMode
 00592BDD    mov        eax,ebx
 00592BDF    mov        edx,dword ptr [eax]
 00592BE1    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592BE7    mov        eax,dword ptr [eax+14]
 00592BEA    mov        edx,esi
 00592BEC    call       TBrush.SetColor
 00592BF1    mov        eax,ebx
 00592BF3    mov        edx,dword ptr [eax]
 00592BF5    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592BFB    mov        eax,dword ptr [eax+14]
 00592BFE    xor        edx,edx
 00592C00    call       TBrush.SetStyle
 00592C05    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592C0B    mov        edx,dword ptr [eax]
 00592C0D    call       dword ptr [edx+2C]; TBitmap.GetWidth
 00592C10    sub        eax,dword ptr [ebx+0E0]
 00592C16    push       eax
 00592C17    mov        eax,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 00592C1D    inc        eax
 00592C1E    push       eax
 00592C1F    mov        eax,ebx
 00592C21    mov        edx,dword ptr [eax]
 00592C23    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00592C29    xor        ecx,ecx
 00592C2B    mov        edx,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 00592C31    call       TCanvas.Rectangle
 00592C36    cmp        byte ptr [ebx+0E4],0; TRvRenderPreview.RulerType:TRulerType
>00592C3D    je         0059311A
 00592C43    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592C49    mov        edx,dword ptr [eax]
 00592C4B    call       dword ptr [edx+2C]; TBitmap.GetWidth
 00592C4E    sub        eax,dword ptr [ebx+0E0]
 00592C54    sub        eax,dword ptr [ebx+118]
 00592C5A    mov        dword ptr [ebp-54],eax
 00592C5D    fild       dword ptr [ebp-54]
 00592C60    fdiv       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 00592C63    fstp       qword ptr [ebp-10]
 00592C66    wait
 00592C67    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592C6D    mov        edx,dword ptr [eax]
 00592C6F    call       dword ptr [edx+20]; TBitmap.GetHeight
 00592C72    sub        eax,dword ptr [ebx+0E0]
 00592C78    sub        eax,dword ptr [ebx+11C]
 00592C7E    mov        dword ptr [ebp-54],eax
 00592C81    fild       dword ptr [ebp-54]
 00592C84    fdiv       qword ptr [ebx+40]; TRvRenderPreview.?f40:?Double
 00592C87    fstp       qword ptr [ebp-8]
 00592C8A    wait
 00592C8B    mov        byte ptr [ebp-18],0
 00592C8F    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592C95    call       TBitmap.GetCanvas
 00592C9A    mov        dword ptr [ebp-44],eax
 00592C9D    mov        eax,dword ptr [ebp-44]
 00592CA0    mov        esi,dword ptr [eax+0C]; TCanvas.Font:TFont
 00592CA3    mov        edx,5935A8; 'Arial'
 00592CA8    mov        eax,esi
 00592CAA    call       TFont.SetName
 00592CAF    mov        edx,7
 00592CB4    mov        eax,esi
 00592CB6    call       TFont.SetSize
 00592CBB    xor        edx,edx
 00592CBD    mov        eax,esi
 00592CBF    call       TFont.SetColor
 00592CC4    mov        dl,byte ptr ds:[5935B0]; 0x0 0:Single
 00592CCA    mov        eax,esi
 00592CCC    call       TFont.SetStyle
 00592CD1    push       1
 00592CD3    mov        eax,dword ptr [ebp-44]
 00592CD6    call       TCanvas.GetHandle
 00592CDB    push       eax
 00592CDC    call       gdi32.SetBkMode
 00592CE1    mov        al,byte ptr [ebx+0E4]; TRvRenderPreview.RulerType:TRulerType
 00592CE7    add        al,0FC
 00592CE9    sub        al,3
>00592CEB    jae        00592D10
 00592CED    fld        qword ptr [ebp-10]
 00592CF0    fdiv       dword ptr ds:[5935B4]; 8:Single
 00592CF6    fstp       qword ptr [ebp-10]
 00592CF9    wait
 00592CFA    fld        qword ptr [ebp-8]
 00592CFD    fdiv       dword ptr ds:[5935B4]; 8:Single
 00592D03    fstp       qword ptr [ebp-8]
 00592D06    wait
 00592D07    mov        dword ptr [ebp-14],8
>00592D0E    jmp        00592D31
 00592D10    fld        tbyte ptr ds:[5935B8]; 25,4:Extended
 00592D16    fdivr      qword ptr [ebp-10]
 00592D19    fstp       qword ptr [ebp-10]
 00592D1C    wait
 00592D1D    fld        tbyte ptr ds:[5935B8]; 25,4:Extended
 00592D23    fdivr      qword ptr [ebp-8]
 00592D26    fstp       qword ptr [ebp-8]
 00592D29    wait
 00592D2A    mov        dword ptr [ebp-14],0A
 00592D31    mov        al,byte ptr [ebx+0E4]; TRvRenderPreview.RulerType:TRulerType
 00592D37    sub        al,1
>00592D39    je         00592D49
 00592D3B    add        al,0FE
 00592D3D    sub        al,2
>00592D3F    jb         00592D49
 00592D41    sub        al,1
>00592D43    jne        00592F25
 00592D49    fild       dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 00592D4F    fadd       qword ptr [ebp-10]
 00592D52    fstp       qword ptr [ebp-20]
 00592D55    wait
 00592D56    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592D5C    mov        edx,dword ptr [eax]
 00592D5E    call       dword ptr [edx+2C]; TBitmap.GetWidth
 00592D61    mov        edx,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 00592D67    inc        edx
 00592D68    sub        eax,edx
 00592D6A    mov        dword ptr [ebp-24],eax
 00592D6D    xor        esi,esi
>00592D6F    jmp        00592EFC
 00592D74    inc        esi
 00592D75    mov        al,byte ptr [ebx+0E4]; TRvRenderPreview.RulerType:TRulerType
 00592D7B    sub        al,4
>00592D7D    je         00592D83
 00592D7F    sub        al,2
>00592D81    jne        00592DF0
 00592D83    mov        eax,esi
 00592D85    cdq
 00592D86    idiv       eax,dword ptr [ebp-14]
 00592D89    sub        edx,1
>00592D8C    jb         00592D9D
 00592D8E    dec        edx
>00592D8F    je         00592DDB
 00592D91    sub        edx,2
>00592D94    je         00592DE2
 00592D96    sub        edx,2
>00592D99    je         00592DDB
>00592D9B    jmp        00592DE9
 00592D9D    mov        edi,12
 00592DA2    mov        eax,esi
 00592DA4    cdq
 00592DA5    idiv       eax,dword ptr [ebp-14]
 00592DA8    lea        edx,[ebp-158]
 00592DAE    call       IntToStr
 00592DB3    mov        edx,dword ptr [ebp-158]
 00592DB9    lea        eax,[ebp-154]
 00592DBF    mov        ecx,0FF
 00592DC4    call       @LStrToString
 00592DC9    lea        edx,[ebp-154]
 00592DCF    lea        eax,[ebp-18]
 00592DD2    mov        cl,3
 00592DD4    call       @PStrNCpy
>00592DD9    jmp        00592E4C
 00592DDB    mov        edi,0A
>00592DE0    jmp        00592E4C
 00592DE2    mov        edi,0F
>00592DE7    jmp        00592E4C
 00592DE9    mov        edi,5
>00592DEE    jmp        00592E4C
 00592DF0    mov        eax,esi
 00592DF2    cdq
 00592DF3    idiv       eax,dword ptr [ebp-14]
 00592DF6    sub        edx,1
>00592DF9    jb         00592E02
 00592DFB    sub        edx,4
>00592DFE    je         00592E40
>00592E00    jmp        00592E47
 00592E02    mov        edi,12
 00592E07    mov        eax,esi
 00592E09    cdq
 00592E0A    idiv       eax,dword ptr [ebp-14]
 00592E0D    lea        edx,[ebp-15C]
 00592E13    call       IntToStr
 00592E18    mov        edx,dword ptr [ebp-15C]
 00592E1E    lea        eax,[ebp-154]
 00592E24    mov        ecx,0FF
 00592E29    call       @LStrToString
 00592E2E    lea        edx,[ebp-154]
 00592E34    lea        eax,[ebp-18]
 00592E37    mov        cl,3
 00592E39    call       @PStrNCpy
>00592E3E    jmp        00592E4C
 00592E40    mov        edi,0F
>00592E45    jmp        00592E4C
 00592E47    mov        edi,5
 00592E4C    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592E52    call       TBitmap.GetCanvas
 00592E57    push       eax
 00592E58    fld        qword ptr [ebp-20]
 00592E5B    call       @ROUND
 00592E60    mov        edx,eax
 00592E62    mov        ecx,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 00592E68    pop        eax
 00592E69    call       TCanvas.MoveTo
 00592E6E    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592E74    call       TBitmap.GetCanvas
 00592E79    push       eax
 00592E7A    fld        qword ptr [ebp-20]
 00592E7D    call       @ROUND
 00592E82    mov        edx,eax
 00592E84    mov        ecx,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 00592E8A    sub        ecx,edi
 00592E8C    inc        ecx
 00592E8D    pop        eax
 00592E8E    call       TCanvas.LineTo
 00592E93    cmp        byte ptr [ebp-18],0
>00592E97    je         00592EF2
 00592E99    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592E9F    call       TBitmap.GetCanvas
 00592EA4    mov        edi,eax
 00592EA6    lea        eax,[ebp-160]
 00592EAC    lea        edx,[ebp-18]
 00592EAF    call       @LStrFromString
 00592EB4    mov        eax,dword ptr [ebp-160]
 00592EBA    push       eax
 00592EBB    lea        eax,[ebp-164]
 00592EC1    lea        edx,[ebp-18]
 00592EC4    call       @LStrFromString
 00592EC9    mov        edx,dword ptr [ebp-164]
 00592ECF    mov        eax,edi
 00592ED1    call       TCanvas.TextWidth
 00592ED6    inc        eax
 00592ED7    push       eax
 00592ED8    fld        qword ptr [ebp-20]
 00592EDB    call       @ROUND
 00592EE0    mov        edx,eax
 00592EE2    pop        eax
 00592EE3    sub        edx,eax
 00592EE5    xor        ecx,ecx
 00592EE7    mov        eax,edi
 00592EE9    call       TCanvas.TextOut
 00592EEE    mov        byte ptr [ebp-18],0
 00592EF2    fld        qword ptr [ebp-20]
 00592EF5    fadd       qword ptr [ebp-10]
 00592EF8    fstp       qword ptr [ebp-20]
 00592EFB    wait
 00592EFC    fld        qword ptr [ebp-20]
 00592EFF    call       @ROUND
 00592F04    push       edx
 00592F05    push       eax
 00592F06    mov        eax,dword ptr [ebp-24]
 00592F09    cdq
 00592F0A    cmp        edx,dword ptr [esp+4]
>00592F0E    jne        00592F1D
 00592F10    cmp        eax,dword ptr [esp]
 00592F13    pop        edx
 00592F14    pop        eax
<00592F15    jae        00592D74
>00592F1B    jmp        00592F25
 00592F1D    pop        edx
 00592F1E    pop        eax
<00592F1F    jge        00592D74
 00592F25    mov        al,byte ptr [ebx+0E4]; TRvRenderPreview.RulerType:TRulerType
 00592F2B    add        al,0FE
 00592F2D    sub        al,2
>00592F2F    jb         00592F3A
 00592F31    dec        eax
 00592F32    sub        al,2
>00592F34    jae        0059311A
 00592F3A    fild       dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 00592F40    fadd       qword ptr [ebp-8]
 00592F43    fstp       qword ptr [ebp-20]
 00592F46    wait
 00592F47    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00592F4D    mov        edx,dword ptr [eax]
 00592F4F    call       dword ptr [edx+20]; TBitmap.GetHeight
 00592F52    mov        edx,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 00592F58    inc        edx
 00592F59    sub        eax,edx
 00592F5B    mov        dword ptr [ebp-24],eax
 00592F5E    xor        esi,esi
>00592F60    jmp        005930F1
 00592F65    inc        esi
 00592F66    mov        al,byte ptr [ebx+0E4]; TRvRenderPreview.RulerType:TRulerType
 00592F6C    add        al,0FB
 00592F6E    sub        al,2
>00592F70    jae        00592FDF
 00592F72    mov        eax,esi
 00592F74    cdq
 00592F75    idiv       eax,dword ptr [ebp-14]
 00592F78    sub        edx,1
>00592F7B    jb         00592F8C
 00592F7D    dec        edx
>00592F7E    je         00592FCA
 00592F80    sub        edx,2
>00592F83    je         00592FD1
 00592F85    sub        edx,2
>00592F88    je         00592FCA
>00592F8A    jmp        00592FD8
 00592F8C    mov        edi,12
 00592F91    mov        eax,esi
 00592F93    cdq
 00592F94    idiv       eax,dword ptr [ebp-14]
 00592F97    lea        edx,[ebp-168]
 00592F9D    call       IntToStr
 00592FA2    mov        edx,dword ptr [ebp-168]
 00592FA8    lea        eax,[ebp-154]
 00592FAE    mov        ecx,0FF
 00592FB3    call       @LStrToString
 00592FB8    lea        edx,[ebp-154]
 00592FBE    lea        eax,[ebp-18]
 00592FC1    mov        cl,3
 00592FC3    call       @PStrNCpy
>00592FC8    jmp        0059303B
 00592FCA    mov        edi,0A
>00592FCF    jmp        0059303B
 00592FD1    mov        edi,0F
>00592FD6    jmp        0059303B
 00592FD8    mov        edi,5
>00592FDD    jmp        0059303B
 00592FDF    mov        eax,esi
 00592FE1    cdq
 00592FE2    idiv       eax,dword ptr [ebp-14]
 00592FE5    sub        edx,1
>00592FE8    jb         00592FF1
 00592FEA    sub        edx,4
>00592FED    je         0059302F
>00592FEF    jmp        00593036
 00592FF1    mov        edi,12
 00592FF6    mov        eax,esi
 00592FF8    cdq
 00592FF9    idiv       eax,dword ptr [ebp-14]
 00592FFC    lea        edx,[ebp-16C]
 00593002    call       IntToStr
 00593007    mov        edx,dword ptr [ebp-16C]
 0059300D    lea        eax,[ebp-154]
 00593013    mov        ecx,0FF
 00593018    call       @LStrToString
 0059301D    lea        edx,[ebp-154]
 00593023    lea        eax,[ebp-18]
 00593026    mov        cl,3
 00593028    call       @PStrNCpy
>0059302D    jmp        0059303B
 0059302F    mov        edi,0F
>00593034    jmp        0059303B
 00593036    mov        edi,5
 0059303B    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00593041    call       TBitmap.GetCanvas
 00593046    push       eax
 00593047    fld        qword ptr [ebp-20]
 0059304A    call       @ROUND
 0059304F    mov        ecx,eax
 00593051    mov        edx,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 00593057    pop        eax
 00593058    call       TCanvas.MoveTo
 0059305D    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00593063    call       TBitmap.GetCanvas
 00593068    push       eax
 00593069    fld        qword ptr [ebp-20]
 0059306C    call       @ROUND
 00593071    mov        ecx,eax
 00593073    mov        edx,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 00593079    sub        edx,edi
 0059307B    inc        edx
 0059307C    pop        eax
 0059307D    call       TCanvas.LineTo
 00593082    cmp        byte ptr [ebp-18],0
>00593086    je         005930E7
 00593088    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 0059308E    call       TBitmap.GetCanvas
 00593093    mov        dword ptr [ebp-48],eax
 00593096    lea        eax,[ebp-170]
 0059309C    lea        edx,[ebp-18]
 0059309F    call       @LStrFromString
 005930A4    mov        eax,dword ptr [ebp-170]
 005930AA    push       eax
 005930AB    lea        eax,[ebp-174]
 005930B1    lea        edx,[ebp-18]
 005930B4    call       @LStrFromString
 005930B9    mov        edx,dword ptr [ebp-174]
 005930BF    mov        eax,dword ptr [ebp-48]
 005930C2    call       TCanvas.TextHeight
 005930C7    inc        eax
 005930C8    push       eax
 005930C9    fld        qword ptr [ebp-20]
 005930CC    call       @ROUND
 005930D1    mov        ecx,eax
 005930D3    pop        eax
 005930D4    sub        ecx,eax
 005930D6    mov        edx,2
 005930DB    mov        eax,dword ptr [ebp-48]
 005930DE    call       TCanvas.TextOut
 005930E3    mov        byte ptr [ebp-18],0
 005930E7    fld        qword ptr [ebp-20]
 005930EA    fadd       qword ptr [ebp-8]
 005930ED    fstp       qword ptr [ebp-20]
 005930F0    wait
 005930F1    fld        qword ptr [ebp-20]
 005930F4    call       @ROUND
 005930F9    push       edx
 005930FA    push       eax
 005930FB    mov        eax,dword ptr [ebp-24]
 005930FE    cdq
 005930FF    cmp        edx,dword ptr [esp+4]
>00593103    jne        00593112
 00593105    cmp        eax,dword ptr [esp]
 00593108    pop        edx
 00593109    pop        eax
<0059310A    jae        00592F65
>00593110    jmp        0059311A
 00593112    pop        edx
 00593113    pop        eax
<00593114    jge        00592F65
 0059311A    mov        eax,ebx
 0059311C    mov        edx,dword ptr [eax]
 0059311E    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00593124    mov        eax,dword ptr [eax+10]
 00593127    xor        edx,edx
 00593129    call       TPen.SetColor
 0059312E    mov        eax,ebx
 00593130    mov        edx,dword ptr [eax]
 00593132    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00593138    mov        eax,dword ptr [eax+10]
 0059313B    xor        edx,edx
 0059313D    call       TPen.SetStyle
 00593142    mov        eax,ebx
 00593144    mov        edx,dword ptr [eax]
 00593146    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059314C    mov        eax,dword ptr [eax+10]
 0059314F    mov        edx,1
 00593154    call       TPen.SetWidth
 00593159    mov        eax,ebx
 0059315B    mov        edx,dword ptr [eax]
 0059315D    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00593163    mov        eax,dword ptr [eax+10]
 00593166    mov        dl,4
 00593168    call       TPen.SetMode
 0059316D    mov        eax,ebx
 0059316F    mov        edx,dword ptr [eax]
 00593171    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00593177    mov        eax,dword ptr [eax+14]
 0059317A    mov        edx,0FFFFFF
 0059317F    call       TBrush.SetColor
 00593184    mov        eax,ebx
 00593186    mov        edx,dword ptr [eax]
 00593188    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059318E    mov        eax,dword ptr [eax+14]
 00593191    xor        edx,edx
 00593193    call       TBrush.SetStyle
 00593198    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 0059319E    mov        edx,dword ptr [eax]
 005931A0    call       dword ptr [edx+2C]; TBitmap.GetWidth
 005931A3    sub        eax,dword ptr [ebx+0E0]
 005931A9    push       eax
 005931AA    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 005931B0    mov        edx,dword ptr [eax]
 005931B2    call       dword ptr [edx+20]; TBitmap.GetHeight
 005931B5    sub        eax,dword ptr [ebx+0E0]
 005931BB    push       eax
 005931BC    mov        eax,ebx
 005931BE    mov        edx,dword ptr [eax]
 005931C0    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005931C6    mov        ecx,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 005931CC    mov        edx,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 005931D2    call       TCanvas.Rectangle
 005931D7    fld        qword ptr [ebx+0D0]; TRvRenderPreview.GridHoriz:Double
 005931DD    fcomp      dword ptr ds:[5935B0]; 0:Single
 005931E3    fnstsw     al
 005931E5    sahf
>005931E6    jbe        00593314
 005931EC    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 005931F2    call       TBitmap.GetCanvas
 005931F7    mov        eax,dword ptr [eax+10]; TCanvas.Pen:TPen
 005931FA    mov        dword ptr [ebp-28],eax
 005931FD    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00593203    call       TBitmap.GetCanvas
 00593208    mov        edx,dword ptr [ebx+0C8]; TRvRenderPreview.GridPen:TPen
 0059320E    call       TCanvas.SetPen
 00593213    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00593219    mov        edx,dword ptr [eax]
 0059321B    call       dword ptr [edx+20]; TBitmap.GetHeight
 0059321E    mov        esi,eax
 00593220    sub        esi,dword ptr [ebx+0E0]
 00593226    mov        eax,ebx
 00593228    mov        edx,dword ptr [eax]
 0059322A    call       dword ptr [edx+0A4]; TRvRenderPreview.sub_005937AC
 00593230    mov        dword ptr [ebp-54],eax
 00593233    fild       dword ptr [ebp-54]
 00593236    fmul       qword ptr [ebx+0D0]; TRvRenderPreview.GridHoriz:Double
 0059323C    fmul       qword ptr [ebx+110]; TRvRenderPreview.?f110:?Double
 00593242    fdiv       dword ptr ds:[59359C]; 100:Single
 00593248    fild       dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 0059324E    faddp      st(1),st
 00593250    fstp       qword ptr [ebp-30]
 00593253    wait
>00593254    jmp        005932D9
 00593259    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 0059325F    call       TBitmap.GetCanvas
 00593264    push       eax
 00593265    fld        qword ptr [ebp-30]
 00593268    call       @ROUND
 0059326D    mov        edi,eax
 0059326F    mov        ecx,edi
 00593271    mov        edx,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 00593277    inc        edx
 00593278    pop        eax
 00593279    call       TCanvas.MoveTo
 0059327E    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00593284    mov        edx,dword ptr [eax]
 00593286    call       dword ptr [edx+2C]; TBitmap.GetWidth
 00593289    mov        edx,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 0059328F    inc        edx
 00593290    sub        eax,edx
 00593292    push       eax
 00593293    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00593299    call       TBitmap.GetCanvas
 0059329E    push       eax
 0059329F    fld        qword ptr [ebp-30]
 005932A2    call       @ROUND
 005932A7    mov        ecx,edi
 005932A9    pop        eax
 005932AA    pop        edx
 005932AB    call       TCanvas.LineTo
 005932B0    mov        eax,ebx
 005932B2    mov        edx,dword ptr [eax]
 005932B4    call       dword ptr [edx+0A4]; TRvRenderPreview.sub_005937AC
 005932BA    mov        dword ptr [ebp-54],eax
 005932BD    fild       dword ptr [ebp-54]
 005932C0    fmul       qword ptr [ebx+0D0]; TRvRenderPreview.GridHoriz:Double
 005932C6    fmul       qword ptr [ebx+110]; TRvRenderPreview.?f110:?Double
 005932CC    fdiv       dword ptr ds:[59359C]; 100:Single
 005932D2    fadd       qword ptr [ebp-30]
 005932D5    fstp       qword ptr [ebp-30]
 005932D8    wait
 005932D9    fld        qword ptr [ebp-30]
 005932DC    call       @ROUND
 005932E1    push       edx
 005932E2    push       eax
 005932E3    mov        eax,esi
 005932E5    cdq
 005932E6    cmp        edx,dword ptr [esp+4]
>005932EA    jne        005932F9
 005932EC    cmp        eax,dword ptr [esp]
 005932EF    pop        edx
 005932F0    pop        eax
<005932F1    ja         00593259
>005932F7    jmp        00593301
 005932F9    pop        edx
 005932FA    pop        eax
<005932FB    jg         00593259
 00593301    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00593307    call       TBitmap.GetCanvas
 0059330C    mov        edx,dword ptr [ebp-28]
 0059330F    call       TCanvas.SetPen
 00593314    fld        qword ptr [ebx+0D8]; TRvRenderPreview.GridVert:Double
 0059331A    fcomp      dword ptr ds:[5935B0]; 0:Single
 00593320    fnstsw     al
 00593322    sahf
>00593323    jbe        00593451
 00593329    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 0059332F    call       TBitmap.GetCanvas
 00593334    mov        eax,dword ptr [eax+10]; TCanvas.Pen:TPen
 00593337    mov        dword ptr [ebp-28],eax
 0059333A    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00593340    call       TBitmap.GetCanvas
 00593345    mov        edx,dword ptr [ebx+0C8]; TRvRenderPreview.GridPen:TPen
 0059334B    call       TCanvas.SetPen
 00593350    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00593356    mov        edx,dword ptr [eax]
 00593358    call       dword ptr [edx+2C]; TBitmap.GetWidth
 0059335B    mov        esi,eax
 0059335D    sub        esi,dword ptr [ebx+0E0]
 00593363    mov        eax,ebx
 00593365    mov        edx,dword ptr [eax]
 00593367    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 0059336D    mov        dword ptr [ebp-54],eax
 00593370    fild       dword ptr [ebp-54]
 00593373    fmul       qword ptr [ebx+0D8]; TRvRenderPreview.GridVert:Double
 00593379    fmul       qword ptr [ebx+110]; TRvRenderPreview.?f110:?Double
 0059337F    fdiv       dword ptr ds:[59359C]; 100:Single
 00593385    fild       dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 0059338B    faddp      st(1),st
 0059338D    fstp       qword ptr [ebp-30]
 00593390    wait
>00593391    jmp        00593416
 00593396    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 0059339C    call       TBitmap.GetCanvas
 005933A1    push       eax
 005933A2    fld        qword ptr [ebp-30]
 005933A5    call       @ROUND
 005933AA    mov        edi,eax
 005933AC    mov        edx,edi
 005933AE    mov        ecx,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 005933B4    inc        ecx
 005933B5    pop        eax
 005933B6    call       TCanvas.MoveTo
 005933BB    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 005933C1    mov        edx,dword ptr [eax]
 005933C3    call       dword ptr [edx+20]; TBitmap.GetHeight
 005933C6    mov        edx,dword ptr [ebx+0E0]; TRvRenderPreview.ShadowDepth:Integer
 005933CC    inc        edx
 005933CD    sub        eax,edx
 005933CF    push       eax
 005933D0    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 005933D6    call       TBitmap.GetCanvas
 005933DB    push       eax
 005933DC    fld        qword ptr [ebp-30]
 005933DF    call       @ROUND
 005933E4    mov        edx,edi
 005933E6    pop        eax
 005933E7    pop        ecx
 005933E8    call       TCanvas.LineTo
 005933ED    mov        eax,ebx
 005933EF    mov        edx,dword ptr [eax]
 005933F1    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 005933F7    mov        dword ptr [ebp-54],eax
 005933FA    fild       dword ptr [ebp-54]
 005933FD    fmul       qword ptr [ebx+0D8]; TRvRenderPreview.GridVert:Double
 00593403    fmul       qword ptr [ebx+110]; TRvRenderPreview.?f110:?Double
 00593409    fdiv       dword ptr ds:[59359C]; 100:Single
 0059340F    fadd       qword ptr [ebp-30]
 00593412    fstp       qword ptr [ebp-30]
 00593415    wait
 00593416    fld        qword ptr [ebp-30]
 00593419    call       @ROUND
 0059341E    push       edx
 0059341F    push       eax
 00593420    mov        eax,esi
 00593422    cdq
 00593423    cmp        edx,dword ptr [esp+4]
>00593427    jne        00593436
 00593429    cmp        eax,dword ptr [esp]
 0059342C    pop        edx
 0059342D    pop        eax
<0059342E    ja         00593396
>00593434    jmp        0059343E
 00593436    pop        edx
 00593437    pop        eax
<00593438    jg         00593396
 0059343E    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00593444    call       TBitmap.GetCanvas
 00593449    mov        edx,dword ptr [ebp-28]
 0059344C    call       TCanvas.SetPen
 00593451    fld        qword ptr [ebx+0B0]; TRvRenderPreview.MarginPercent:Double
 00593457    fdiv       dword ptr ds:[59359C]; 100:Single
 0059345D    fstp       qword ptr [ebp-40]
 00593460    wait
 00593461    mov        eax,ebx
 00593463    mov        edx,dword ptr [eax]
 00593465    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 0059346B    mov        dword ptr [ebp-54],eax
 0059346E    fild       dword ptr [ebp-54]
 00593471    fmul       qword ptr [ebx+38]; TRvRenderPreview.?f38:?Double
 00593474    fstp       qword ptr [ebp-38]
 00593477    wait
 00593478    cmp        byte ptr [ebx+0AD],0; TRvRenderPreview.MarginMethod:TMarginMethod
>0059347F    jne        0059349C
 00593481    fld        qword ptr [ebp-38]
 00593484    fmul       qword ptr [ebp-40]
 00593487    fmul       qword ptr [ebx+110]; TRvRenderPreview.?f110:?Double
 0059348D    fdiv       dword ptr ds:[59359C]; 100:Single
 00593493    call       @ROUND
 00593498    mov        esi,eax
>0059349A    jmp        005934A9
 0059349C    fld        qword ptr [ebp-38]
 0059349F    fmul       qword ptr [ebp-40]
 005934A2    call       @ROUND
 005934A7    mov        esi,eax
 005934A9    mov        edi,dword ptr [ebx+0A0]; TRvRenderPreview.?fA0:TImage
 005934AF    mov        edx,esi
 005934B1    mov        eax,edi
 005934B3    call       TControl.SetTop
 005934B8    mov        edx,esi
 005934BA    mov        eax,edi
 005934BC    call       TControl.SetLeft
 005934C1    mov        edi,dword ptr [ebx+9C]; TRvRenderPreview.ScrollBox:TScrollBox
 005934C7    mov        eax,dword ptr [edi+208]; TScrollBox.HorzScrollBar:TControlScrollBar
 005934CD    mov        dword ptr [ebp-4C],eax
 005934D0    mov        edx,dword ptr [ebx+90]; TRvRenderPreview.?f90:Integer
 005934D6    mov        eax,dword ptr [ebp-4C]
 005934D9    call       TControlScrollBar.SetPosition
 005934DE    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 005934E4    mov        edx,dword ptr [eax]
 005934E6    call       dword ptr [edx+2C]; TBitmap.GetWidth
 005934E9    mov        edx,eax
 005934EB    mov        eax,esi
 005934ED    add        eax,eax
 005934EF    add        edx,eax
 005934F1    mov        eax,dword ptr [ebp-4C]
 005934F4    call       TControlScrollBar.SetRange
 005934F9    mov        edi,dword ptr [edi+20C]; TScrollBox.VertScrollBar:TControlScrollBar
 005934FF    mov        edx,dword ptr [ebx+94]; TRvRenderPreview.?f94:Integer
 00593505    mov        eax,edi
 00593507    call       TControlScrollBar.SetPosition
 0059350C    mov        eax,dword ptr [ebx+0A4]; TRvRenderPreview.?fA4:TBitmap
 00593512    mov        edx,dword ptr [eax]
 00593514    call       dword ptr [edx+20]; TBitmap.GetHeight
 00593517    mov        edx,eax
 00593519    mov        eax,esi
 0059351B    add        eax,eax
 0059351D    add        edx,eax
 0059351F    mov        eax,edi
 00593521    call       TControlScrollBar.SetRange
 00593526    xor        eax,eax
 00593528    pop        edx
 00593529    pop        ecx
 0059352A    pop        ecx
 0059352B    mov        dword ptr fs:[eax],edx
 0059352E    push       593553
 00593533    lea        eax,[ebp-174]
 00593539    mov        edx,8
 0059353E    call       @LStrArrayClr
 00593543    lea        eax,[ebp-50]
 00593546    call       @LStrClr
 0059354B    ret
<0059354C    jmp        @HandleFinally
<00593551    jmp        00593533
 00593553    pop        edi
 00593554    pop        esi
 00593555    pop        ebx
 00593556    mov        esp,ebp
 00593558    pop        ebp
 00593559    ret
*}
end;

//005935C4
procedure sub_005935C4;
begin
{*
 005935C4    push       ebx
 005935C5    cmp        word ptr [eax+0FA],0; TRvRenderPreview.?fFA:word
>005935CD    je         005935DF
 005935CF    mov        ebx,eax
 005935D1    mov        edx,eax
 005935D3    mov        eax,dword ptr [ebx+0FC]; TRvRenderPreview.?fFC:TRavePreviewForm
 005935D9    call       dword ptr [ebx+0F8]; TRvRenderPreview.OnPageChange
 005935DF    pop        ebx
 005935E0    ret
*}
end;

//005935E4
procedure sub_005935E4;
begin
{*
 005935E4    push       ebx
 005935E5    mov        ebx,eax
 005935E7    mov        eax,ebx
 005935E9    call       00590CC8
 005935EE    mov        eax,[0061C500]; ^Screen:TScreen
 005935F3    mov        eax,dword ptr [eax]
 005935F5    mov        dx,word ptr [ebx+98]; TRvRenderPreview.?f98:TCursor
 005935FC    call       TScreen.SetCursor
 00593601    pop        ebx
 00593602    ret
*}
end;

//00593604
procedure TRvRenderPreview.SetGridPen(Self:TRvRenderPreview);
begin
{*
 00593604    mov        eax,dword ptr [eax+0C8]; TRvRenderPreview.GridPen:TPen
 0059360A    mov        ecx,dword ptr [eax]
 0059360C    call       dword ptr [ecx+8]; TPen.Assign
 0059360F    ret
*}
end;

//00593610
//procedure TRvRenderPreview.SetMonochrome(Self:TRvRenderPreview; ?:?);
//begin
{*
 00593610    test       dl,dl
>00593612    je         0059361C
 00593614    xor        ecx,ecx
 00593616    mov        dword ptr [eax+0E0],ecx; TRvRenderPreview.ShadowDepth:Integer
 0059361C    mov        byte ptr [eax+0AC],dl; TRvRenderPreview.Monochrome:Boolean
 00593622    ret
*}
//end;

//00593624
//procedure TRvRenderPreview.SetScrollBox(Self:TRvRenderPreview; ?:TScrollBox);
//begin
{*
 00593624    mov        dword ptr [eax+9C],edx; TRvRenderPreview.ScrollBox:TScrollBox
 0059362A    test       edx,edx
>0059362C    je         00593634
 0059362E    xchg       eax,edx
 0059362F    call       TComponent.FreeNotification
 00593634    ret
*}
//end;

//00593638
//procedure TRvRenderPreview.SetShadowDepth(Self:TRvRenderPreview; ?:Integer);
//begin
{*
 00593638    test       edx,edx
>0059363A    jle        00593643
 0059363C    mov        byte ptr [eax+0AC],0; TRvRenderPreview.Monochrome:Boolean
 00593643    mov        dword ptr [eax+0E0],edx; TRvRenderPreview.ShadowDepth:Integer
 00593649    ret
*}
//end;

//0059364C
//procedure TRvRenderPreview.SetZoomFactor(Self:TRvRenderPreview; ?:?; ?:?);
//begin
{*
 0059364C    push       ebp
 0059364D    mov        ebp,esp
 0059364F    push       ebx
 00593650    mov        ebx,eax
 00593652    fld        tbyte ptr ds:[593704]; -1,9:Extended
 00593658    fcomp      qword ptr [ebp+8]
 0059365B    fnstsw     al
 0059365D    sahf
>0059365E    jb         00593670
 00593660    mov        eax,ebx
 00593662    call       00591FBC
 00593667    fstp       qword ptr [ebx+110]; TRvRenderPreview.?f110:?Double
 0059366D    wait
>0059366E    jmp        005936E4
 00593670    fld        qword ptr [ebp+8]
 00593673    fcomp      dword ptr ds:[593710]; 0:Single
 00593679    fnstsw     al
 0059367B    sahf
>0059367C    jae        0059368E
 0059367E    mov        eax,ebx
 00593680    call       00591E10
 00593685    fstp       qword ptr [ebx+110]; TRvRenderPreview.?f110:?Double
 0059368B    wait
>0059368C    jmp        005936E4
 0059368E    fld        qword ptr [ebp+8]
 00593691    fcomp      dword ptr ds:[593714]; 10:Single
 00593697    fnstsw     al
 00593699    sahf
>0059369A    jae        005936B0
 0059369C    xor        eax,eax
 0059369E    mov        dword ptr [ebx+110],eax; TRvRenderPreview.?f110:?Double
 005936A4    mov        dword ptr [ebx+114],40240000; TRvRenderPreview.?f114:dword
>005936AE    jmp        005936E4
 005936B0    fld        qword ptr [ebp+8]
 005936B3    fcomp      dword ptr ds:[593718]; 200:Single
 005936B9    fnstsw     al
 005936BB    sahf
>005936BC    jbe        005936D2
 005936BE    xor        eax,eax
 005936C0    mov        dword ptr [ebx+110],eax; TRvRenderPreview.?f110:?Double
 005936C6    mov        dword ptr [ebx+114],40690000; TRvRenderPreview.?f114:dword
>005936D0    jmp        005936E4
 005936D2    mov        eax,dword ptr [ebp+8]
 005936D5    mov        dword ptr [ebx+110],eax; TRvRenderPreview.?f110:?Double
 005936DB    mov        eax,dword ptr [ebp+0C]
 005936DE    mov        dword ptr [ebx+114],eax; TRvRenderPreview.?f114:dword
 005936E4    mov        eax,ebx
 005936E6    mov        edx,dword ptr [eax]
 005936E8    call       dword ptr [edx+0D8]; TRvRenderPreview.sub_00593724
 005936EE    cmp        word ptr [ebx+102],0; TRvRenderPreview.?f102:word
>005936F6    jne        005936FF
 005936F8    mov        eax,ebx
 005936FA    call       005937D0
 005936FF    pop        ebx
 00593700    pop        ebp
 00593701    ret        8
*}
//end;

//0059371C
//procedure TRvRenderPreview.SetZoomInc(Self:TRvRenderPreview; ?:Integer);
//begin
{*
 0059371C    mov        dword ptr [eax+0A8],edx; TRvRenderPreview.ZoomInc:Integer
 00593722    ret
*}
//end;

//00593724
procedure sub_00593724;
begin
{*
 00593724    push       ebx
 00593725    cmp        word ptr [eax+102],0; TRvRenderPreview.?f102:word
>0059372D    je         0059373F
 0059372F    mov        ebx,eax
 00593731    mov        edx,eax
 00593733    mov        eax,dword ptr [ebx+104]; TRvRenderPreview.?f104:TRavePreviewForm
 00593739    call       dword ptr [ebx+100]; TRvRenderPreview.OnZoomChange
 0059373F    pop        ebx
 00593740    ret
*}
end;

//00593744
//procedure sub_00593744(?:dword);
//begin
{*
 00593744    push       ebx
 00593745    mov        ebx,eax
 00593747    mov        eax,ebx
 00593749    call       TRvRenderPreview.GetZoomFactor
 0059374E    fild       dword ptr [ebx+0A8]
 00593754    faddp      st(1),st
 00593756    add        esp,0FFFFFFF8
 00593759    fstp       qword ptr [esp]
 0059375C    wait
 0059375D    mov        eax,ebx
 0059375F    call       TRvRenderPreview.SetZoomFactor
 00593764    pop        ebx
 00593765    ret
*}
//end;

//00593768
//procedure sub_00593768(?:dword);
//begin
{*
 00593768    push       ebx
 00593769    mov        ebx,eax
 0059376B    mov        eax,ebx
 0059376D    call       TRvRenderPreview.GetZoomFactor
 00593772    fild       dword ptr [ebx+0A8]
 00593778    fcompp
 0059377A    fnstsw     al
 0059377C    sahf
>0059377D    jae        0059379C
 0059377F    mov        eax,ebx
 00593781    call       TRvRenderPreview.GetZoomFactor
 00593786    fild       dword ptr [ebx+0A8]
 0059378C    fsubp      st(1),st
 0059378E    add        esp,0FFFFFFF8
 00593791    fstp       qword ptr [esp]
 00593794    wait
 00593795    mov        eax,ebx
 00593797    call       TRvRenderPreview.SetZoomFactor
 0059379C    pop        ebx
 0059379D    ret
*}
//end;

//005937A0
//function sub_005937A0():?;
//begin
{*
 005937A0    mov        eax,[0061C500]; ^Screen:TScreen
 005937A5    mov        eax,dword ptr [eax]
 005937A7    mov        eax,dword ptr [eax+40]; TScreen.FPixelsPerInch:Integer
 005937AA    ret
*}
//end;

//005937AC
//function sub_005937AC():?;
//begin
{*
 005937AC    mov        eax,[0061C500]; ^Screen:TScreen
 005937B1    mov        eax,dword ptr [eax]
 005937B3    mov        eax,dword ptr [eax+40]; TScreen.FPixelsPerInch:Integer
 005937B6    ret
*}
//end;

//005937B8
//function sub_005937B8(?:TRvRenderPreview):?;
//begin
{*
 005937B8    mov        edx,dword ptr [eax+70]; TRvRenderPreview.?f70:dword
 005937BB    test       edx,edx
>005937BD    je         005937C9
 005937BF    cmp        dword ptr [edx+64],0
>005937C3    jle        005937C9
 005937C5    mov        eax,dword ptr [edx+64]
 005937C8    ret
 005937C9    mov        eax,dword ptr [eax+10C]; TRvRenderPreview.?f10C:dword
 005937CF    ret
*}
//end;

//005937D0
//procedure sub_005937D0(?:TRvRenderPreview);
//begin
{*
 005937D0    push       esi
 005937D1    mov        esi,eax
 005937D3    mov        edx,dword ptr [esi+108]; TRvRenderPreview.?f108:dword
 005937D9    mov        eax,esi
 005937DB    mov        ecx,dword ptr [eax]
 005937DD    call       dword ptr [ecx+0AC]; TRvRenderPreview.sub_0059387C
 005937E3    pop        esi
 005937E4    ret
*}
//end;

//005937E8
//procedure sub_005937E8(?:dword);
//begin
{*
 005937E8    push       esi
 005937E9    mov        esi,eax
 005937EB    mov        eax,esi
 005937ED    call       005937B8
 005937F2    mov        edx,dword ptr [esi+108]
 005937F8    add        edx,dword ptr [esi+0F0]
 005937FE    cmp        eax,edx
>00593800    jl         0059381A
 00593802    mov        edx,dword ptr [esi+108]
 00593808    add        edx,dword ptr [esi+0F0]
 0059380E    mov        eax,esi
 00593810    mov        ecx,dword ptr [eax]
 00593812    call       dword ptr [ecx+0AC]
 00593818    pop        esi
 00593819    ret
 0059381A    cmp        dword ptr [esi+108],1
>00593821    jle        00593832
 00593823    mov        edx,1
 00593828    mov        eax,esi
 0059382A    mov        ecx,dword ptr [eax]
 0059382C    call       dword ptr [ecx+0AC]
 00593832    pop        esi
 00593833    ret
*}
//end;

//00593834
//procedure sub_00593834(?:dword);
//begin
{*
 00593834    push       ebx
 00593835    push       esi
 00593836    push       edi
 00593837    mov        esi,eax
 00593839    mov        ebx,dword ptr [esi+108]
 0059383F    mov        edi,ebx
 00593841    sub        edi,dword ptr [esi+0F0]
 00593847    test       edi,edi
>00593849    jle        00593859
 0059384B    mov        edx,edi
 0059384D    mov        eax,esi
 0059384F    mov        ecx,dword ptr [eax]
 00593851    call       dword ptr [ecx+0AC]
>00593857    jmp        00593877
 00593859    mov        eax,esi
 0059385B    call       005937B8
 00593860    cmp        ebx,eax
>00593862    je         00593877
 00593864    mov        eax,esi
 00593866    call       005937B8
 0059386B    mov        edx,eax
 0059386D    mov        eax,esi
 0059386F    mov        ecx,dword ptr [eax]
 00593871    call       dword ptr [ecx+0AC]
 00593877    pop        edi
 00593878    pop        esi
 00593879    pop        ebx
 0059387A    ret
*}
//end;

//0059387C
//procedure sub_0059387C(?:?);
//begin
{*
 0059387C    push       ebx
 0059387D    mov        ebx,eax
 0059387F    mov        eax,edx
 00593881    mov        dword ptr [ebx+108],eax; TRvRenderPreview.?f108:dword
 00593887    dec        eax
>00593888    jge        00593894
 0059388A    mov        dword ptr [ebx+108],1; TRvRenderPreview.?f108:dword
 00593894    mov        eax,ebx
 00593896    call       005937B8
 0059389B    cmp        eax,dword ptr [ebx+108]; TRvRenderPreview.?f108:dword
>005938A1    jge        005938BB
 005938A3    mov        eax,ebx
 005938A5    call       005937B8
 005938AA    test       eax,eax
>005938AC    jle        005938BB
 005938AE    mov        eax,ebx
 005938B0    call       005937B8
 005938B5    mov        dword ptr [ebx+108],eax; TRvRenderPreview.?f108:dword
 005938BB    mov        edx,dword ptr [ebx+108]; TRvRenderPreview.?f108:dword
 005938C1    mov        eax,ebx
 005938C3    call       0058FF50
 005938C8    pop        ebx
 005938C9    ret
*}
//end;

//005938CC
//procedure sub_005938CC(?:?);
//begin
{*
 005938CC    push       ebp
 005938CD    mov        ebp,esp
 005938CF    add        esp,0FFFFFFF0
 005938D2    push       ebx
 005938D3    mov        ebx,eax
 005938D5    mov        eax,ebx
 005938D7    mov        edx,dword ptr [eax]
 005938D9    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 005938DF    mov        dword ptr [ebp-4],eax
 005938E2    fild       dword ptr [ebp-4]
 005938E5    fmul       qword ptr [ebp+8]
 005938E8    fstp       tbyte ptr [ebp-10]
 005938EB    wait
 005938EC    mov        eax,ebx
 005938EE    call       TRvRenderPreview.GetZoomFactor
 005938F3    fld        tbyte ptr [ebp-10]
 005938F6    fmulp      st(1),st
 005938F8    fdiv       dword ptr ds:[593910]; 100:Single
 005938FE    call       @ROUND
 00593903    add        eax,dword ptr [ebx+118]; TRvRenderPreview.?f118:Single
 00593909    pop        ebx
 0059390A    mov        esp,ebp
 0059390C    pop        ebp
 0059390D    ret        8
*}
//end;

//00593914
//procedure sub_00593914(?:?);
//begin
{*
 00593914    push       ebp
 00593915    mov        ebp,esp
 00593917    add        esp,0FFFFFFF0
 0059391A    push       ebx
 0059391B    mov        ebx,eax
 0059391D    mov        eax,ebx
 0059391F    mov        edx,dword ptr [eax]
 00593921    call       dword ptr [edx+0A4]; TRvRenderPreview.sub_005937AC
 00593927    mov        dword ptr [ebp-4],eax
 0059392A    fild       dword ptr [ebp-4]
 0059392D    fmul       qword ptr [ebp+8]
 00593930    fstp       tbyte ptr [ebp-10]
 00593933    wait
 00593934    mov        eax,ebx
 00593936    call       TRvRenderPreview.GetZoomFactor
 0059393B    fld        tbyte ptr [ebp-10]
 0059393E    fmulp      st(1),st
 00593940    fdiv       dword ptr ds:[593958]; 100:Single
 00593946    call       @ROUND
 0059394B    add        eax,dword ptr [ebx+11C]; TRvRenderPreview.?f11C:Single
 00593951    pop        ebx
 00593952    mov        esp,ebp
 00593954    pop        ebp
 00593955    ret        8
*}
//end;

end.