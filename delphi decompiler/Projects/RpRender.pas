{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpRender;

interface

uses
  Classes, Windows, Graphics, RpDefine, SysUtils;

type
  TRPReportHeader = record //size = 88
  f4:String;
  f54:String;;
  TRPConverter = class(TObject)
  public
    f4:TBitmap;//f4
    f8:?Double;//f8
    fC:dword;//fC
    f10:dword;//f10
    f14:dword;//f14
    f18:dword;//f18
    f1C:dword;//f1C
    f20:String;//f20
    f24:dword;//f24
    f28:dword;//f28
    f2C:byte;//f2C
    f2E:word;//f2E
    f30:Int64;//f30
    f34:dword;//f34
    f38:dword;//f38
    f40:?Double;//f40
    f44:dword;//f44
    f48:?Double;//f48
    f4C:dword;//f4C
    f50:TStringList;//f50
    f58:TRPReportHeader;//f58
    //f5C:?;//f5C
    f60:dword;//f60
    f64:dword;//f64
    f68:dword;//f68
    f6C:dword;//f6C
    f70:?Double;//f70
    f78:?Double;//f78
    f80:?Double;//f80
    f88:?Double;//f88
    f90:?Double;//f90
    f98:?Double;//f98
    fA0:byte;//fA0
    fA2:word;//fA2
    fA4:byte;//fA4
    fA5:byte;//fA5
    fA6:word;//fA6
    fA8:word;//fA8
    fAA:word;//fAA
    //fAC:?;//fAC
    fB0:dword;//fB0
    fB4:dword;//fB4
    fB8:dword;//fB8
    fC0:dword;//fC0
    fC4:dword;//fC4
    fC8:dword;//fC8
    fCC:dword;//fCC
    fD0:byte;//fD0
    fD8:Single;//fD8
    fDC:Single;//fDC
    fE0:TFont;//fE0
    //fE8:?;//fE8
    f128:dword;//f128
    f130:?Double;//f130
    f138:?Double;//f138
    f140:?Double;//f140
    f148:?Double;//f148
    f150:?Double;//f150
    f160:byte;//f160
    f161:byte;//f161
    f162:byte;//f162
    f163:byte;//f163
    f164:byte;//f164
    f165:byte;//f165
    f166:word;//f166
    f168:byte;//f168
    f170:dword;//f170
    f178:Single;//f178
    f17C:TBrush;//f17C
    f180:TPen;//f180
    destructor Destroy; virtual;
    //procedure sub_0058F610(?:?); virtual;
    //procedure sub_0058F674(?:?); virtual;
    //procedure sub_0058FCFC(?:?); virtual;
    //procedure sub_0058FD20(?:?); virtual;
    //procedure sub_0058FD44(?:?); virtual;
    //constructor Create(?:?); virtual;
    //procedure sub_0058DCBC(?:?; ?:?); virtual;
  end;
  TRPRender = class(TRpComponent)
  public
    f38:?Double;//f38
    f3C:dword;//f3C
    f40:?Double;//f40
    f44:dword;//f44
    f48:?Double;//f48
    f4C:dword;//f4C
    f50:byte;//f50
    Active:Boolean;//f51
    f54:String;//f54
    f58:String;//f58
    f5C:TStringList;//f5C
    f60:TFileName;//f60
    f64:TFileName;//f64
    f68:byte;//f68
    f6C:TFileStream;//f6C
    f70:dword;//f70
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_0058FFF8(); virtual;
    procedure sub_00590000(); virtual;
    procedure sub_0059000C(); virtual;
    procedure sub_00590004(); virtual;
    procedure sub_0059001C(); virtual;
    procedure sub_00590064(); virtual;
    procedure sub_00590068(); virtual;
    procedure sub_00590070(); virtual;
    procedure sub_00590078(); virtual;
    procedure sub_0059008C(); virtual;
    procedure sub_00590094(); virtual;
    procedure sub_00590098(); virtual;
    procedure sub_005900F4(); virtual;
    procedure sub_00590088(); virtual;
    procedure sub_005900AC(); virtual;
    procedure sub_005900A4(); virtual;
    procedure sub_0059009C(); virtual;
    procedure sub_005900E0(); virtual;
    procedure sub_005900E4(); virtual;
    procedure sub_005900D8(); virtual;
    procedure sub_005900EC(); virtual;
    procedure sub_00590024(); virtual;
    procedure sub_00590038(); virtual;
    procedure sub_005900FC(); virtual;
    procedure sub_00590014(); virtual;
    procedure sub_00590018(); virtual;
    procedure sub_00590080(); virtual;
    procedure sub_00590084(); virtual;
    //function sub_00590028():?; virtual;
    //function sub_00590030():?; virtual;
    //procedure sub_0058FE64(?:?); virtual;
    //procedure sub_0058FF50(?:dword); virtual;
    //procedure sub_0058FE08(?:?; ?:?); virtual;
    //procedure sub_00590104(?:?); virtual;
    //procedure sub_00590134(?:?); virtual;
  end;
  TRPRenderStream = class(TRPRender)
  public
    f78:TFileStream;//f78
    f7C:TFileStream;//f7C
    f80:TFileStream;//f80
    destructor Destroy; virtual;
    //procedure sub_005901E8(?:?); virtual;
    //procedure sub_00590210(?:?; ?:?; ?:?); virtual;
    //procedure sub_00590270(?:?); virtual;
    //procedure sub_005902D4(?:?; ?:?; ?:?); virtual;
    procedure sub_005901C4; virtual;
  end;
  _DynArr_80_5 = array of ?;
  _DynArr_80_6 = array of ?;

implementation

{$R *.DFM}

//0058C810
//procedure sub_0058C810(?:String; ?:TRPRender);
//begin
{*
 0058C810    push       ebx
 0058C811    push       esi
 0058C812    mov        esi,edx
 0058C814    mov        ebx,eax
 0058C816    cmp        dword ptr ds:[616FFC],0; gvar_00616FFC:TStringList
>0058C81D    jne        0058C830
 0058C81F    mov        dl,1
 0058C821    mov        eax,[0041C8E4]; TStringList
 0058C826    call       TObject.Create; TStringList.Create
 0058C82B    mov        [00616FFC],eax; gvar_00616FFC:TStringList
 0058C830    mov        ecx,esi
 0058C832    mov        edx,ebx
 0058C834    mov        eax,[00616FFC]; gvar_00616FFC:TStringList
 0058C839    mov        ebx,dword ptr [eax]
 0058C83B    call       dword ptr [ebx+3C]; TStringList.AddObject
 0058C83E    pop        esi
 0058C83F    pop        ebx
 0058C840    ret
*}
//end;

//0058C844
procedure sub_0058C844;
begin
{*
 0058C844    cmp        dword ptr ds:[616FFC],0; gvar_00616FFC:TStringList
>0058C84B    je         0058C87E
 0058C84D    mov        eax,[00616FFC]; gvar_00616FFC:TStringList
 0058C852    mov        ecx,dword ptr [eax]
 0058C854    call       dword ptr [ecx+5C]; TStrings.IndexOfObject
 0058C857    test       eax,eax
>0058C859    jl         0058C867
 0058C85B    mov        edx,eax
 0058C85D    mov        eax,[00616FFC]; gvar_00616FFC:TStringList
 0058C862    mov        ecx,dword ptr [eax]
 0058C864    call       dword ptr [ecx+48]; TStringList.Delete
 0058C867    mov        eax,[00616FFC]; gvar_00616FFC:TStringList
 0058C86C    mov        edx,dword ptr [eax]
 0058C86E    call       dword ptr [edx+14]; TStringList.GetCount
 0058C871    dec        eax
>0058C872    jge        0058C87E
 0058C874    mov        eax,616FFC; gvar_00616FFC:TStringList
 0058C879    call       FreeAndNil
 0058C87E    ret
*}
end;

//0058C880
//procedure sub_0058C880(?:TStrings);
//begin
{*
 0058C880    push       ebx
 0058C881    push       esi
 0058C882    push       edi
 0058C883    push       ecx
 0058C884    mov        dword ptr [esp],eax
 0058C887    mov        eax,dword ptr [esp]
 0058C88A    mov        edx,dword ptr [eax]
 0058C88C    call       dword ptr [edx+44]
 0058C88F    cmp        dword ptr ds:[616FFC],0; gvar_00616FFC:TStringList
>0058C896    je         0058C8CF
 0058C898    mov        eax,[00616FFC]; gvar_00616FFC:TStringList
 0058C89D    mov        edx,dword ptr [eax]
 0058C89F    call       dword ptr [edx+14]; TStringList.GetCount
 0058C8A2    mov        ebx,eax
 0058C8A4    dec        ebx
 0058C8A5    test       ebx,ebx
>0058C8A7    jl         0058C8CF
 0058C8A9    inc        ebx
 0058C8AA    xor        esi,esi
 0058C8AC    mov        edx,esi
 0058C8AE    mov        eax,[00616FFC]; gvar_00616FFC:TStringList
 0058C8B3    mov        ecx,dword ptr [eax]
 0058C8B5    call       dword ptr [ecx+18]; TStringList.GetObject
 0058C8B8    cmp        byte ptr [eax+51],0
>0058C8BC    je         0058C8CB
 0058C8BE    mov        ecx,eax
 0058C8C0    mov        edx,dword ptr [eax+54]
 0058C8C3    mov        eax,dword ptr [esp]
 0058C8C6    mov        edi,dword ptr [eax]
 0058C8C8    call       dword ptr [edi+3C]
 0058C8CB    inc        esi
 0058C8CC    dec        ebx
<0058C8CD    jne        0058C8AC
 0058C8CF    pop        edx
 0058C8D0    pop        edi
 0058C8D1    pop        esi
 0058C8D2    pop        ebx
 0058C8D3    ret
*}
//end;

//0058C8D4
//procedure sub_0058C8D4(?:AnsiString);
//begin
{*
 0058C8D4    push       ebx
 0058C8D5    push       esi
 0058C8D6    push       edi
 0058C8D7    push       ebp
 0058C8D8    mov        ebp,eax
 0058C8DA    mov        eax,ebp
 0058C8DC    call       @LStrClr
 0058C8E1    cmp        dword ptr ds:[616FFC],0; gvar_00616FFC:TStringList
>0058C8E8    je         0058C954
 0058C8EA    mov        eax,[00616FFC]; gvar_00616FFC:TStringList
 0058C8EF    mov        edx,dword ptr [eax]
 0058C8F1    call       dword ptr [edx+14]; TStringList.GetCount
 0058C8F4    mov        esi,eax
 0058C8F6    dec        esi
 0058C8F7    test       esi,esi
>0058C8F9    jl         0058C954
 0058C8FB    inc        esi
 0058C8FC    xor        edi,edi
 0058C8FE    mov        edx,edi
 0058C900    mov        eax,[00616FFC]; gvar_00616FFC:TStringList
 0058C905    mov        ecx,dword ptr [eax]
 0058C907    call       dword ptr [ecx+18]; TStringList.GetObject
 0058C90A    mov        ebx,eax
 0058C90C    cmp        byte ptr [ebx+51],0
>0058C910    je         0058C950
 0058C912    cmp        dword ptr [ebp],0
>0058C916    jne        0058C931
 0058C918    push       dword ptr [ebx+54]
 0058C91B    push       58C964; '|'
 0058C920    push       dword ptr [ebx+58]
 0058C923    mov        eax,ebp
 0058C925    mov        edx,3
 0058C92A    call       @LStrCatN
>0058C92F    jmp        0058C950
 0058C931    push       dword ptr [ebp]
 0058C934    push       58C964; '|'
 0058C939    push       dword ptr [ebx+54]
 0058C93C    push       58C964; '|'
 0058C941    push       dword ptr [ebx+58]
 0058C944    mov        eax,ebp
 0058C946    mov        edx,5
 0058C94B    call       @LStrCatN
 0058C950    inc        edi
 0058C951    dec        esi
<0058C952    jne        0058C8FE
 0058C954    pop        ebp
 0058C955    pop        edi
 0058C956    pop        esi
 0058C957    pop        ebx
 0058C958    ret
*}
//end;

//0058C968
//procedure sub_0058C968(?:TRPConverter);
//begin
{*
 0058C968    push       ebx
 0058C969    add        esp,0FFFFFFE0
 0058C96C    mov        ebx,eax
 0058C96E    mov        eax,ebx
 0058C970    call       0058E72C
 0058C975    fstp       dword ptr [esp]
 0058C978    wait
 0058C979    mov        eax,ebx
 0058C97B    call       0058E72C
 0058C980    fstp       dword ptr [esp+10]
 0058C984    wait
 0058C985    mov        eax,ebx
 0058C987    call       0058E72C
 0058C98C    fstp       dword ptr [esp+4]
 0058C990    wait
 0058C991    mov        eax,ebx
 0058C993    call       0058E72C
 0058C998    fstp       dword ptr [esp+14]
 0058C99C    wait
 0058C99D    mov        eax,ebx
 0058C99F    call       0058E72C
 0058C9A4    fstp       dword ptr [esp+8]
 0058C9A8    wait
 0058C9A9    mov        eax,ebx
 0058C9AB    call       0058E72C
 0058C9B0    fstp       dword ptr [esp+18]
 0058C9B4    wait
 0058C9B5    mov        eax,ebx
 0058C9B7    call       0058E72C
 0058C9BC    fstp       dword ptr [esp+0C]
 0058C9C0    wait
 0058C9C1    mov        eax,ebx
 0058C9C3    call       0058E72C
 0058C9C8    fstp       dword ptr [esp+1C]
 0058C9CC    wait
 0058C9CD    fld        dword ptr [esp]
 0058C9D0    add        esp,0FFFFFFF8
 0058C9D3    fstp       qword ptr [esp]
 0058C9D6    wait
 0058C9D7    fld        dword ptr [esp+18]
 0058C9DB    add        esp,0FFFFFFF8
 0058C9DE    fstp       qword ptr [esp]
 0058C9E1    wait
 0058C9E2    fld        dword ptr [esp+14]
 0058C9E6    add        esp,0FFFFFFF8
 0058C9E9    fstp       qword ptr [esp]
 0058C9EC    wait
 0058C9ED    fld        dword ptr [esp+2C]
 0058C9F1    add        esp,0FFFFFFF8
 0058C9F4    fstp       qword ptr [esp]
 0058C9F7    wait
 0058C9F8    fld        dword ptr [esp+28]
 0058C9FC    add        esp,0FFFFFFF8
 0058C9FF    fstp       qword ptr [esp]
 0058CA02    wait
 0058CA03    fld        dword ptr [esp+40]
 0058CA07    add        esp,0FFFFFFF8
 0058CA0A    fstp       qword ptr [esp]
 0058CA0D    wait
 0058CA0E    fld        dword ptr [esp+3C]
 0058CA12    add        esp,0FFFFFFF8
 0058CA15    fstp       qword ptr [esp]
 0058CA18    wait
 0058CA19    fld        dword ptr [esp+54]
 0058CA1D    add        esp,0FFFFFFF8
 0058CA20    fstp       qword ptr [esp]
 0058CA23    wait
 0058CA24    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058CA27    mov        edx,dword ptr [eax]
 0058CA29    call       dword ptr [edx+30]
 0058CA2C    add        esp,20
 0058CA2F    pop        ebx
 0058CA30    ret
*}
//end;

//0058CA34
//procedure sub_0058CA34(?:TRPConverter);
//begin
{*
 0058CA34    push       ebx
 0058CA35    mov        ebx,eax
 0058CA37    mov        eax,dword ptr [ebx+17C]; TRPConverter.?f17C:TBrush
 0058CA3D    call       TBrush.GetBitmap
 0058CA42    test       eax,eax
>0058CA44    je         0058CA63
 0058CA46    mov        eax,dword ptr [ebx+17C]; TRPConverter.?f17C:TBrush
 0058CA4C    call       TBrush.GetBitmap
 0058CA51    call       TObject.Free
 0058CA56    xor        edx,edx
 0058CA58    mov        eax,dword ptr [ebx+17C]; TRPConverter.?f17C:TBrush
 0058CA5E    call       TBrush.SetBitmap
 0058CA63    mov        eax,ebx
 0058CA65    call       0058E3F8
 0058CA6A    mov        edx,eax
 0058CA6C    mov        eax,dword ptr [ebx+17C]; TRPConverter.?f17C:TBrush
 0058CA72    call       TBrush.SetColor
 0058CA77    pop        ebx
 0058CA78    ret
*}
//end;

//0058CA7C
//procedure sub_0058CA7C(?:TRPConverter);
//begin
{*
 0058CA7C    push       ebx
 0058CA7D    add        esp,0FFFFFFF0
 0058CA80    mov        ebx,eax
 0058CA82    mov        edx,esp
 0058CA84    mov        eax,ebx
 0058CA86    call       0058F5D4
 0058CA8B    mov        edx,esp
 0058CA8D    mov        eax,ebx
 0058CA8F    call       0058F5D4
 0058CA94    mov        eax,ebx
 0058CA96    call       0058E3F8
 0058CA9B    add        esp,10
 0058CA9E    pop        ebx
 0058CA9F    ret
*}
//end;

//0058CAA0
//procedure sub_0058CAA0(?:TRPConverter);
//begin
{*
 0058CAA0    push       ebx
 0058CAA1    push       esi
 0058CAA2    mov        ebx,eax
 0058CAA4    mov        eax,ebx
 0058CAA6    call       0058E3F8
 0058CAAB    mov        esi,eax
 0058CAAD    mov        dword ptr [ebx+128],esi; TRPConverter.?f128:dword
 0058CAB3    mov        edx,esi
 0058CAB5    mov        eax,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058CABB    call       TFont.SetColor
 0058CAC0    pop        esi
 0058CAC1    pop        ebx
 0058CAC2    ret
*}
//end;

//0058CAC4
//procedure sub_0058CAC4(?:TRPConverter);
//begin
{*
 0058CAC4    push       ebp
 0058CAC5    mov        ebp,esp
 0058CAC7    add        esp,0FFFFFEF8
 0058CACD    push       ebx
 0058CACE    xor        edx,edx
 0058CAD0    mov        dword ptr [ebp-108],edx
 0058CAD6    mov        dword ptr [ebp-104],edx
 0058CADC    mov        ebx,eax
 0058CADE    xor        eax,eax
 0058CAE0    push       ebp
 0058CAE1    push       58CB62
 0058CAE6    push       dword ptr fs:[eax]
 0058CAE9    mov        dword ptr fs:[eax],esp
 0058CAEC    lea        edx,[ebp-104]
 0058CAF2    mov        eax,ebx
 0058CAF4    call       0058E75C
 0058CAF9    mov        edx,dword ptr [ebp-104]
 0058CAFF    lea        eax,[ebp-100]
 0058CB05    mov        ecx,0FF
 0058CB0A    call       @LStrToString
 0058CB0F    lea        edx,[ebp-100]
 0058CB15    lea        eax,[ebx+0E8]; TRPConverter.?fE8:?
 0058CB1B    mov        cl,3C
 0058CB1D    call       @PStrNCpy
 0058CB22    lea        eax,[ebp-108]
 0058CB28    lea        edx,[ebx+0E8]; TRPConverter.?fE8:?
 0058CB2E    call       @LStrFromString
 0058CB33    mov        edx,dword ptr [ebp-108]
 0058CB39    mov        eax,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058CB3F    call       TFont.SetName
 0058CB44    xor        eax,eax
 0058CB46    pop        edx
 0058CB47    pop        ecx
 0058CB48    pop        ecx
 0058CB49    mov        dword ptr fs:[eax],edx
 0058CB4C    push       58CB69
 0058CB51    lea        eax,[ebp-108]
 0058CB57    mov        edx,2
 0058CB5C    call       @LStrArrayClr
 0058CB61    ret
<0058CB62    jmp        @HandleFinally
<0058CB67    jmp        0058CB51
 0058CB69    pop        ebx
 0058CB6A    mov        esp,ebp
 0058CB6C    pop        ebp
 0058CB6D    ret
*}
//end;

//0058CB70
//procedure sub_0058CB70(?:TRPConverter);
//begin
{*
 0058CB70    push       ebx
 0058CB71    push       ecx
 0058CB72    mov        ebx,eax
 0058CB74    mov        eax,ebx
 0058CB76    call       0058E72C
 0058CB7B    fstp       qword ptr [ebx+138]; TRPConverter.?f138:?Double
 0058CB81    wait
 0058CB82    cmp        word ptr [ebx+2E],7D0; TRPConverter.?f2E:word
>0058CB88    jb         0058CB98
 0058CB8A    mov        eax,ebx
 0058CB8C    call       0058E72C
 0058CB91    fstp       qword ptr [ebx+140]; TRPConverter.?f140:?Double
 0058CB97    wait
 0058CB98    fld        qword ptr [ebx+138]; TRPConverter.?f138:?Double
 0058CB9E    fmul       dword ptr ds:[58CBD4]; 72:Single
 0058CBA4    call       @ROUND
 0058CBA9    mov        edx,eax
 0058CBAB    mov        eax,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058CBB1    call       TFont.SetSize
 0058CBB6    mov        eax,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058CBBC    call       TFont.GetSize
 0058CBC1    mov        dword ptr [esp],eax
 0058CBC4    fild       dword ptr [esp]
 0058CBC7    fstp       qword ptr [ebx+130]; TRPConverter.?f130:?Double
 0058CBCD    wait
 0058CBCE    pop        edx
 0058CBCF    pop        ebx
 0058CBD0    ret
*}
//end;

//0058CBD8
//procedure sub_0058CBD8(?:TRPConverter);
//begin
{*
 0058CBD8    push       ebx
 0058CBD9    push       esi
 0058CBDA    mov        esi,eax
 0058CBDC    mov        eax,esi
 0058CBDE    call       0058E3E0
 0058CBE3    mov        ebx,eax
 0058CBE5    mov        byte ptr [esi+160],bl; TRPConverter.?f160:byte
 0058CBEB    test       bl,bl
>0058CBED    je         0058CC0E
 0058CBEF    mov        ebx,dword ptr [esi+0E0]; TRPConverter.?fE0:TFont
 0058CBF5    mov        eax,ebx
 0058CBF7    call       TFont.GetStyle
 0058CBFC    mov        edx,eax
 0058CBFE    or         dl,byte ptr ds:[58CC30]; 0x1
 0058CC04    mov        eax,ebx
 0058CC06    call       TFont.SetStyle
 0058CC0B    pop        esi
 0058CC0C    pop        ebx
 0058CC0D    ret
 0058CC0E    mov        ebx,dword ptr [esi+0E0]; TRPConverter.?fE0:TFont
 0058CC14    mov        eax,ebx
 0058CC16    call       TFont.GetStyle
 0058CC1B    mov        dl,byte ptr ds:[58CC30]; 0x1
 0058CC21    not        edx
 0058CC23    and        dl,al
 0058CC25    mov        eax,ebx
 0058CC27    call       TFont.SetStyle
 0058CC2C    pop        esi
 0058CC2D    pop        ebx
 0058CC2E    ret
*}
//end;

//0058CC34
//procedure sub_0058CC34(?:TRPConverter);
//begin
{*
 0058CC34    push       ebx
 0058CC35    push       esi
 0058CC36    mov        esi,eax
 0058CC38    mov        eax,esi
 0058CC3A    call       0058E3E0
 0058CC3F    mov        ebx,eax
 0058CC41    mov        byte ptr [esi+161],bl; TRPConverter.?f161:byte
 0058CC47    test       bl,bl
>0058CC49    je         0058CC6A
 0058CC4B    mov        ebx,dword ptr [esi+0E0]; TRPConverter.?fE0:TFont
 0058CC51    mov        eax,ebx
 0058CC53    call       TFont.GetStyle
 0058CC58    mov        edx,eax
 0058CC5A    or         dl,byte ptr ds:[58CC8C]; 0x4
 0058CC60    mov        eax,ebx
 0058CC62    call       TFont.SetStyle
 0058CC67    pop        esi
 0058CC68    pop        ebx
 0058CC69    ret
 0058CC6A    mov        ebx,dword ptr [esi+0E0]; TRPConverter.?fE0:TFont
 0058CC70    mov        eax,ebx
 0058CC72    call       TFont.GetStyle
 0058CC77    mov        dl,byte ptr ds:[58CC8C]; 0x4
 0058CC7D    not        edx
 0058CC7F    and        dl,al
 0058CC81    mov        eax,ebx
 0058CC83    call       TFont.SetStyle
 0058CC88    pop        esi
 0058CC89    pop        ebx
 0058CC8A    ret
*}
//end;

//0058CC90
//procedure sub_0058CC90(?:TRPConverter);
//begin
{*
 0058CC90    push       ebx
 0058CC91    push       esi
 0058CC92    mov        esi,eax
 0058CC94    mov        eax,esi
 0058CC96    call       0058E3E0
 0058CC9B    mov        ebx,eax
 0058CC9D    mov        byte ptr [esi+162],bl; TRPConverter.?f162:byte
 0058CCA3    test       bl,bl
>0058CCA5    je         0058CCC6
 0058CCA7    mov        ebx,dword ptr [esi+0E0]; TRPConverter.?fE0:TFont
 0058CCAD    mov        eax,ebx
 0058CCAF    call       TFont.GetStyle
 0058CCB4    mov        edx,eax
 0058CCB6    or         dl,byte ptr ds:[58CCE8]; 0x2
 0058CCBC    mov        eax,ebx
 0058CCBE    call       TFont.SetStyle
 0058CCC3    pop        esi
 0058CCC4    pop        ebx
 0058CCC5    ret
 0058CCC6    mov        ebx,dword ptr [esi+0E0]; TRPConverter.?fE0:TFont
 0058CCCC    mov        eax,ebx
 0058CCCE    call       TFont.GetStyle
 0058CCD3    mov        dl,byte ptr ds:[58CCE8]; 0x2
 0058CCD9    not        edx
 0058CCDB    and        dl,al
 0058CCDD    mov        eax,ebx
 0058CCDF    call       TFont.SetStyle
 0058CCE4    pop        esi
 0058CCE5    pop        ebx
 0058CCE6    ret
*}
//end;

//0058CCEC
//procedure sub_0058CCEC(?:TRPConverter);
//begin
{*
 0058CCEC    push       ebx
 0058CCED    push       esi
 0058CCEE    mov        esi,eax
 0058CCF0    mov        eax,esi
 0058CCF2    call       0058E3E0
 0058CCF7    mov        ebx,eax
 0058CCF9    mov        byte ptr [esi+163],bl; TRPConverter.?f163:byte
 0058CCFF    test       bl,bl
>0058CD01    je         0058CD22
 0058CD03    mov        ebx,dword ptr [esi+0E0]; TRPConverter.?fE0:TFont
 0058CD09    mov        eax,ebx
 0058CD0B    call       TFont.GetStyle
 0058CD10    mov        edx,eax
 0058CD12    or         dl,byte ptr ds:[58CD44]; 0x8
 0058CD18    mov        eax,ebx
 0058CD1A    call       TFont.SetStyle
 0058CD1F    pop        esi
 0058CD20    pop        ebx
 0058CD21    ret
 0058CD22    mov        ebx,dword ptr [esi+0E0]; TRPConverter.?fE0:TFont
 0058CD28    mov        eax,ebx
 0058CD2A    call       TFont.GetStyle
 0058CD2F    mov        dl,byte ptr ds:[58CD44]; 0x8
 0058CD35    not        edx
 0058CD37    and        dl,al
 0058CD39    mov        eax,ebx
 0058CD3B    call       TFont.SetStyle
 0058CD40    pop        esi
 0058CD41    pop        ebx
 0058CD42    ret
*}
//end;

//0058CD48
//procedure sub_0058CD48(?:TRPConverter);
//begin
{*
 0058CD48    push       ebx
 0058CD49    mov        ebx,eax
 0058CD4B    mov        eax,ebx
 0058CD4D    call       0058E3E0
 0058CD52    mov        byte ptr [ebx+165],al; TRPConverter.?f165:byte
 0058CD58    mov        edx,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058CD5E    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058CD61    mov        ecx,dword ptr [eax]
 0058CD63    call       dword ptr [ecx+44]
 0058CD66    pop        ebx
 0058CD67    ret
*}
//end;

//0058CD68
//procedure sub_0058CD68(?:TRPConverter);
//begin
{*
 0058CD68    push       ebx
 0058CD69    mov        ebx,eax
 0058CD6B    mov        eax,ebx
 0058CD6D    call       0058E3E0
 0058CD72    mov        byte ptr [ebx+164],al; TRPConverter.?f164:byte
 0058CD78    mov        edx,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058CD7E    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058CD81    mov        ecx,dword ptr [eax]
 0058CD83    call       dword ptr [ecx+44]
 0058CD86    pop        ebx
 0058CD87    ret
*}
//end;

//0058CD88
//procedure sub_0058CD88(?:TRPConverter);
//begin
{*
 0058CD88    push       ebx
 0058CD89    mov        ebx,eax
 0058CD8B    mov        eax,ebx
 0058CD8D    call       0058E3E0
 0058CD92    mov        edx,eax
 0058CD94    mov        eax,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058CD9A    call       TFont.SetPitch
 0058CD9F    pop        ebx
 0058CDA0    ret
*}
//end;

//0058CDA4
//procedure sub_0058CDA4(?:TRPConverter);
//begin
{*
 0058CDA4    push       ebx
 0058CDA5    mov        ebx,eax
 0058CDA7    mov        eax,ebx
 0058CDA9    call       0058E3E0
 0058CDAE    mov        byte ptr [ebx+168],al; TRPConverter.?f168:byte
 0058CDB4    mov        edx,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058CDBA    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058CDBD    mov        ecx,dword ptr [eax]
 0058CDBF    call       dword ptr [ecx+44]
 0058CDC2    pop        ebx
 0058CDC3    ret
*}
//end;

//0058CDC4
//procedure sub_0058CDC4(?:TRPConverter);
//begin
{*
 0058CDC4    push       ebx
 0058CDC5    mov        ebx,eax
 0058CDC7    mov        eax,ebx
 0058CDC9    call       0058E744
 0058CDCE    mov        word ptr [ebx+166],ax; TRPConverter.?f166:word
 0058CDD5    mov        edx,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058CDDB    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058CDDE    mov        ecx,dword ptr [eax]
 0058CDE0    call       dword ptr [ecx+44]
 0058CDE3    pop        ebx
 0058CDE4    ret
*}
//end;

//0058CDE8
//procedure sub_0058CDE8(?:TRPConverter);
//begin
{*
 0058CDE8    push       ebx
 0058CDE9    mov        ebx,eax
 0058CDEB    mov        eax,ebx
 0058CDED    call       0058E3E0
 0058CDF2    and        eax,0FF
 0058CDF7    mov        dword ptr [ebx+170],eax; TRPConverter.?f170:dword
 0058CDFD    mov        edx,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058CE03    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058CE06    mov        ecx,dword ptr [eax]
 0058CE08    call       dword ptr [ecx+44]
 0058CE0B    pop        ebx
 0058CE0C    ret
*}
//end;

//0058CE10
//procedure sub_0058CE10(?:TRPConverter);
//begin
{*
 0058CE10    push       ebp
 0058CE11    mov        ebp,esp
 0058CE13    add        esp,0FFFFFFE8
 0058CE16    push       ebx
 0058CE17    xor        edx,edx
 0058CE19    mov        dword ptr [ebp-4],edx
 0058CE1C    mov        ebx,eax
 0058CE1E    xor        eax,eax
 0058CE20    push       ebp
 0058CE21    push       58CEAA
 0058CE26    push       dword ptr fs:[eax]
 0058CE29    mov        dword ptr fs:[eax],esp
 0058CE2C    mov        eax,ebx
 0058CE2E    call       0058E72C
 0058CE33    fstp       qword ptr [ebp-18]
 0058CE36    wait
 0058CE37    lea        edx,[ebp-4]
 0058CE3A    mov        eax,ebx
 0058CE3C    call       0058E75C
 0058CE41    mov        eax,ebx
 0058CE43    call       0058E72C
 0058CE48    fstp       qword ptr [ebp-10]
 0058CE4B    wait
 0058CE4C    cmp        dword ptr [ebp-4],0
>0058CE50    je         0058CE94
 0058CE52    mov        edx,dword ptr [ebp-4]
 0058CE55    mov        eax,58CEC0; ''
 0058CE5A    call       @LStrPos
 0058CE5F    test       eax,eax
>0058CE61    jne        0058CE7C
 0058CE63    push       dword ptr [ebp-0C]
 0058CE66    push       dword ptr [ebp-10]
 0058CE69    push       dword ptr [ebp-14]
 0058CE6C    push       dword ptr [ebp-18]
 0058CE6F    mov        edx,dword ptr [ebp-4]
 0058CE72    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058CE75    mov        ecx,dword ptr [eax]
 0058CE77    call       dword ptr [ecx+3C]
>0058CE7A    jmp        0058CE94
 0058CE7C    push       dword ptr [ebp-0C]
 0058CE7F    push       dword ptr [ebp-10]
 0058CE82    push       dword ptr [ebp-14]
 0058CE85    push       dword ptr [ebp-18]
 0058CE88    mov        cl,43
 0058CE8A    mov        edx,dword ptr [ebp-4]
 0058CE8D    mov        eax,ebx
 0058CE8F    call       0058D88C
 0058CE94    xor        eax,eax
 0058CE96    pop        edx
 0058CE97    pop        ecx
 0058CE98    pop        ecx
 0058CE99    mov        dword ptr fs:[eax],edx
 0058CE9C    push       58CEB1
 0058CEA1    lea        eax,[ebp-4]
 0058CEA4    call       @LStrClr
 0058CEA9    ret
<0058CEAA    jmp        @HandleFinally
<0058CEAF    jmp        0058CEA1
 0058CEB1    pop        ebx
 0058CEB2    mov        esp,ebp
 0058CEB4    pop        ebp
 0058CEB5    ret
*}
//end;

//0058CEC4
//procedure sub_0058CEC4(?:TRPConverter);
//begin
{*
 0058CEC4    push       ebx
 0058CEC5    add        esp,0FFFFFFE0
 0058CEC8    mov        ebx,eax
 0058CECA    mov        eax,ebx
 0058CECC    call       0058E72C
 0058CED1    fstp       dword ptr [esp]
 0058CED4    wait
 0058CED5    mov        eax,ebx
 0058CED7    call       0058E72C
 0058CEDC    fstp       dword ptr [esp+10]
 0058CEE0    wait
 0058CEE1    mov        eax,ebx
 0058CEE3    call       0058E72C
 0058CEE8    fstp       dword ptr [esp+4]
 0058CEEC    wait
 0058CEED    mov        eax,ebx
 0058CEEF    call       0058E72C
 0058CEF4    fstp       dword ptr [esp+14]
 0058CEF8    wait
 0058CEF9    mov        eax,ebx
 0058CEFB    call       0058E72C
 0058CF00    fstp       dword ptr [esp+8]
 0058CF04    wait
 0058CF05    mov        eax,ebx
 0058CF07    call       0058E72C
 0058CF0C    fstp       dword ptr [esp+18]
 0058CF10    wait
 0058CF11    mov        eax,ebx
 0058CF13    call       0058E72C
 0058CF18    fstp       dword ptr [esp+0C]
 0058CF1C    wait
 0058CF1D    mov        eax,ebx
 0058CF1F    call       0058E72C
 0058CF24    fstp       dword ptr [esp+1C]
 0058CF28    wait
 0058CF29    fld        dword ptr [esp]
 0058CF2C    add        esp,0FFFFFFF8
 0058CF2F    fstp       qword ptr [esp]
 0058CF32    wait
 0058CF33    fld        dword ptr [esp+18]
 0058CF37    add        esp,0FFFFFFF8
 0058CF3A    fstp       qword ptr [esp]
 0058CF3D    wait
 0058CF3E    fld        dword ptr [esp+14]
 0058CF42    add        esp,0FFFFFFF8
 0058CF45    fstp       qword ptr [esp]
 0058CF48    wait
 0058CF49    fld        dword ptr [esp+2C]
 0058CF4D    add        esp,0FFFFFFF8
 0058CF50    fstp       qword ptr [esp]
 0058CF53    wait
 0058CF54    fld        dword ptr [esp+28]
 0058CF58    add        esp,0FFFFFFF8
 0058CF5B    fstp       qword ptr [esp]
 0058CF5E    wait
 0058CF5F    fld        dword ptr [esp+40]
 0058CF63    add        esp,0FFFFFFF8
 0058CF66    fstp       qword ptr [esp]
 0058CF69    wait
 0058CF6A    fld        dword ptr [esp+3C]
 0058CF6E    add        esp,0FFFFFFF8
 0058CF71    fstp       qword ptr [esp]
 0058CF74    wait
 0058CF75    fld        dword ptr [esp+54]
 0058CF79    add        esp,0FFFFFFF8
 0058CF7C    fstp       qword ptr [esp]
 0058CF7F    wait
 0058CF80    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058CF83    mov        edx,dword ptr [eax]
 0058CF85    call       dword ptr [edx+38]
 0058CF88    add        esp,20
 0058CF8B    pop        ebx
 0058CF8C    ret
*}
//end;

//0058CF90
//procedure sub_0058CF90(?:TRPConverter);
//begin
{*
 0058CF90    push       ebx
 0058CF91    add        esp,0FFFFFFF0
 0058CF94    mov        ebx,eax
 0058CF96    mov        edx,esp
 0058CF98    mov        eax,ebx
 0058CF9A    call       0058F5D4
 0058CF9F    mov        eax,ebx
 0058CFA1    call       0058E3F8
 0058CFA6    mov        edx,esp
 0058CFA8    mov        eax,ebx
 0058CFAA    call       0058F5D4
 0058CFAF    add        esp,10
 0058CFB2    pop        ebx
 0058CFB3    ret
*}
//end;

//0058CFB4
//procedure sub_0058CFB4(?:TRPConverter);
//begin
{*
 0058CFB4    push       ebp
 0058CFB5    mov        ebp,esp
 0058CFB7    add        esp,0FFFFFFE8
 0058CFBA    push       ebx
 0058CFBB    mov        ebx,eax
 0058CFBD    lea        edx,[ebp-4]
 0058CFC0    mov        eax,ebx
 0058CFC2    mov        ecx,dword ptr [eax]
 0058CFC4    call       dword ptr [ecx]; TRPConverter.sub_0058F610
 0058CFC6    xor        eax,eax
 0058CFC8    push       ebp
 0058CFC9    push       58D017
 0058CFCE    push       dword ptr fs:[eax]
 0058CFD1    mov        dword ptr fs:[eax],esp
 0058CFD4    mov        eax,ebx
 0058CFD6    call       0058E72C
 0058CFDB    fstp       qword ptr [ebp-10]
 0058CFDE    wait
 0058CFDF    mov        eax,ebx
 0058CFE1    call       0058E72C
 0058CFE6    fstp       qword ptr [ebp-18]
 0058CFE9    wait
 0058CFEA    push       dword ptr [ebp-0C]
 0058CFED    push       dword ptr [ebp-10]
 0058CFF0    push       dword ptr [ebp-14]
 0058CFF3    push       dword ptr [ebp-18]
 0058CFF6    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058CFF9    mov        edx,dword ptr [ebp-4]
 0058CFFC    mov        ecx,dword ptr [eax]
 0058CFFE    call       dword ptr [ecx+78]
 0058D001    xor        eax,eax
 0058D003    pop        edx
 0058D004    pop        ecx
 0058D005    pop        ecx
 0058D006    mov        dword ptr fs:[eax],edx
 0058D009    push       58D01E
 0058D00E    mov        eax,dword ptr [ebp-4]
 0058D011    call       TObject.Free
 0058D016    ret
<0058D017    jmp        @HandleFinally
<0058D01C    jmp        0058D00E
 0058D01E    pop        ebx
 0058D01F    mov        esp,ebp
 0058D021    pop        ebp
 0058D022    ret
*}
//end;

//0058D024
procedure sub_0058D024;
begin
{*
 0058D024    add        esp,0FFFFFFF0
 0058D027    mov        edx,esp
 0058D029    call       0058F5D4
 0058D02E    add        esp,10
 0058D031    ret
*}
end;

//0058D034
//procedure sub_0058D034(?:TRPConverter);
//begin
{*
 0058D034    push       ebx
 0058D035    add        esp,0FFFFFFF0
 0058D038    mov        ebx,eax
 0058D03A    mov        eax,ebx
 0058D03C    call       0058E72C
 0058D041    fstp       dword ptr [esp]
 0058D044    wait
 0058D045    mov        eax,ebx
 0058D047    call       0058E72C
 0058D04C    fstp       dword ptr [esp+8]
 0058D050    wait
 0058D051    mov        eax,ebx
 0058D053    call       0058E72C
 0058D058    fstp       dword ptr [esp+4]
 0058D05C    wait
 0058D05D    mov        eax,ebx
 0058D05F    call       0058E72C
 0058D064    fstp       dword ptr [esp+0C]
 0058D068    wait
 0058D069    fld        dword ptr [esp]
 0058D06C    add        esp,0FFFFFFF8
 0058D06F    fstp       qword ptr [esp]
 0058D072    wait
 0058D073    fld        dword ptr [esp+10]
 0058D077    add        esp,0FFFFFFF8
 0058D07A    fstp       qword ptr [esp]
 0058D07D    wait
 0058D07E    fld        dword ptr [esp+14]
 0058D082    add        esp,0FFFFFFF8
 0058D085    fstp       qword ptr [esp]
 0058D088    wait
 0058D089    fld        dword ptr [esp+24]
 0058D08D    add        esp,0FFFFFFF8
 0058D090    fstp       qword ptr [esp]
 0058D093    wait
 0058D094    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058D097    mov        edx,dword ptr [eax]
 0058D099    call       dword ptr [edx+40]
 0058D09C    add        esp,10
 0058D09F    pop        ebx
 0058D0A0    ret
*}
//end;

//0058D0A4
//procedure sub_0058D0A4(?:TRPConverter; ?:AnsiString; ?:?; ?:?; ?:?);
//begin
{*
 0058D0A4    push       ebp
 0058D0A5    mov        ebp,esp
 0058D0A7    push       0
 0058D0A9    push       0
 0058D0AB    push       0
 0058D0AD    push       ebx
 0058D0AE    push       esi
 0058D0AF    push       edi
 0058D0B0    mov        esi,ecx
 0058D0B2    mov        dword ptr [ebp-4],edx
 0058D0B5    mov        edi,dword ptr [ebp+8]
 0058D0B8    mov        eax,dword ptr [ebp-4]
 0058D0BB    call       @LStrAddRef
 0058D0C0    xor        eax,eax
 0058D0C2    push       ebp
 0058D0C3    push       58D168
 0058D0C8    push       dword ptr fs:[eax]
 0058D0CB    mov        dword ptr fs:[eax],esp
 0058D0CE    mov        eax,dword ptr [ebp+0C]
 0058D0D1    call       @LStrClr
 0058D0D6    mov        eax,edi
 0058D0D8    call       @LStrClr
>0058D0DD    jmp        0058D141
 0058D0DF    mov        eax,dword ptr [esi]
 0058D0E1    mov        edx,dword ptr [ebp-4]
 0058D0E4    mov        bl,byte ptr [edx+eax-1]
 0058D0E8    cmp        bl,1
>0058D0EB    jne        0058D127
 0058D0ED    mov        eax,dword ptr [ebp+0C]
 0058D0F0    cmp        dword ptr [eax],0
>0058D0F3    jne        0058D14D
 0058D0F5    mov        eax,dword ptr [esi]
 0058D0F7    mov        edx,dword ptr [ebp-4]
 0058D0FA    mov        bl,byte ptr [edx+eax-1]
 0058D0FE    lea        eax,[ebp-8]
 0058D101    mov        edx,ebx
 0058D103    call       @LStrFromChar
 0058D108    mov        edx,dword ptr [ebp-8]
 0058D10B    mov        eax,edi
 0058D10D    call       @LStrCat
 0058D112    inc        dword ptr [esi]
 0058D114    mov        eax,dword ptr [ebp-4]
 0058D117    call       @LStrLen
 0058D11C    cmp        eax,dword ptr [esi]
>0058D11E    jl         0058D141
 0058D120    cmp        bl,4
<0058D123    jne        0058D0F5
>0058D125    jmp        0058D141
 0058D127    lea        eax,[ebp-0C]
 0058D12A    mov        edx,ebx
 0058D12C    call       @LStrFromChar
 0058D131    mov        edx,dword ptr [ebp-0C]
 0058D134    mov        eax,dword ptr [ebp+0C]
 0058D137    call       @LStrCat
 0058D13C    mov        eax,dword ptr [ebp+0C]
 0058D13F    inc        dword ptr [esi]
 0058D141    mov        eax,dword ptr [ebp-4]
 0058D144    call       @LStrLen
 0058D149    cmp        eax,dword ptr [esi]
<0058D14B    jge        0058D0DF
 0058D14D    xor        eax,eax
 0058D14F    pop        edx
 0058D150    pop        ecx
 0058D151    pop        ecx
 0058D152    mov        dword ptr fs:[eax],edx
 0058D155    push       58D16F
 0058D15A    lea        eax,[ebp-0C]
 0058D15D    mov        edx,3
 0058D162    call       @LStrArrayClr
 0058D167    ret
<0058D168    jmp        @HandleFinally
<0058D16D    jmp        0058D15A
 0058D16F    pop        edi
 0058D170    pop        esi
 0058D171    pop        ebx
 0058D172    mov        esp,ebp
 0058D174    pop        ebp
 0058D175    ret        8
*}
//end;

//0058D178
//procedure sub_0058D178(?:?; ?:AnsiString; ?:?; ?:?; ?:?);
//begin
{*
 0058D178    push       ebp
 0058D179    mov        ebp,esp
 0058D17B    add        esp,0FFFFFFF8
 0058D17E    push       ebx
 0058D17F    push       esi
 0058D180    push       edi
 0058D181    xor        ebx,ebx
 0058D183    mov        dword ptr [ebp-8],ebx
 0058D186    mov        edi,ecx
 0058D188    mov        dword ptr [ebp-4],edx
 0058D18B    mov        esi,dword ptr [ebp+8]
 0058D18E    mov        eax,dword ptr [ebp-4]
 0058D191    call       @LStrAddRef
 0058D196    xor        eax,eax
 0058D198    push       ebp
 0058D199    push       58D271
 0058D19E    push       dword ptr fs:[eax]
 0058D1A1    mov        dword ptr fs:[eax],esp
 0058D1A4    cmp        dword ptr [edi],0
>0058D1A7    jne        0058D1B3
 0058D1A9    mov        dword ptr [edi],1
>0058D1AF    jmp        0058D1B3
 0058D1B1    inc        dword ptr [edi]
 0058D1B3    mov        eax,dword ptr [ebp-4]
 0058D1B6    call       @LStrLen
 0058D1BB    cmp        eax,dword ptr [edi]
>0058D1BD    jl         0058D1CD
 0058D1BF    mov        eax,dword ptr [edi]
 0058D1C1    mov        edx,dword ptr [ebp-4]
 0058D1C4    mov        al,byte ptr [edx+eax-1]
 0058D1C8    dec        eax
 0058D1C9    sub        al,2
<0058D1CB    jae        0058D1B1
 0058D1CD    mov        eax,dword ptr [ebp-4]
 0058D1D0    call       @LStrLen
 0058D1D5    cmp        eax,dword ptr [edi]
>0058D1D7    jl         0058D22F
 0058D1D9    inc        dword ptr [edi]
 0058D1DB    mov        eax,dword ptr [edi]
 0058D1DD    mov        edx,dword ptr [ebp-4]
 0058D1E0    mov        al,byte ptr [edx+eax-1]
 0058D1E4    mov        edx,dword ptr [ebp+0C]
 0058D1E7    mov        byte ptr [edx],al
 0058D1E9    inc        dword ptr [edi]
 0058D1EB    mov        eax,esi
 0058D1ED    call       @LStrClr
>0058D1F2    jmp        0058D221
 0058D1F4    mov        eax,dword ptr [edi]
 0058D1F6    mov        edx,dword ptr [ebp-4]
 0058D1F9    mov        bl,byte ptr [edx+eax-1]
 0058D1FD    mov        eax,ebx
 0058D1FF    sub        al,2
>0058D201    je         0058D235
 0058D203    dec        al
>0058D205    je         0058D21F
 0058D207    dec        al
>0058D209    je         0058D235
 0058D20B    lea        eax,[ebp-8]
 0058D20E    mov        edx,ebx
 0058D210    call       @LStrFromChar
 0058D215    mov        edx,dword ptr [ebp-8]
 0058D218    mov        eax,esi
 0058D21A    call       @LStrCat
 0058D21F    inc        dword ptr [edi]
 0058D221    mov        eax,dword ptr [ebp-4]
 0058D224    call       @LStrLen
 0058D229    cmp        eax,dword ptr [edi]
<0058D22B    jge        0058D1F4
>0058D22D    jmp        0058D235
 0058D22F    mov        eax,dword ptr [ebp+0C]
 0058D232    mov        byte ptr [eax],20
 0058D235    mov        eax,dword ptr [ebp-4]
 0058D238    call       @LStrLen
 0058D23D    cmp        eax,dword ptr [edi]
>0058D23F    jl         0058D256
 0058D241    mov        eax,dword ptr [edi]
 0058D243    mov        edx,dword ptr [ebp-4]
 0058D246    mov        al,byte ptr [edx+eax-1]
 0058D24A    sub        al,2
>0058D24C    je         0058D256
 0058D24E    sub        al,2
<0058D250    jne        0058D1B3
 0058D256    xor        eax,eax
 0058D258    pop        edx
 0058D259    pop        ecx
 0058D25A    pop        ecx
 0058D25B    mov        dword ptr fs:[eax],edx
 0058D25E    push       58D278
 0058D263    lea        eax,[ebp-8]
 0058D266    mov        edx,2
 0058D26B    call       @LStrArrayClr
 0058D270    ret
<0058D271    jmp        @HandleFinally
<0058D276    jmp        0058D263
 0058D278    pop        edi
 0058D279    pop        esi
 0058D27A    pop        ebx
 0058D27B    pop        ecx
 0058D27C    pop        ecx
 0058D27D    pop        ebp
 0058D27E    ret        8
*}
//end;

//0058D284
//procedure sub_0058D284(?:?; ?:?; ?:?);
//begin
{*
 0058D284    push       ebp
 0058D285    mov        ebp,esp
 0058D287    push       ecx
 0058D288    push       ebx
 0058D289    mov        byte ptr [ebp-1],al
 0058D28C    test       dl,dl
>0058D28E    je         0058D2B4
 0058D290    mov        eax,dword ptr [ebp+8]
 0058D293    mov        eax,dword ptr [eax-4]
 0058D296    mov        ebx,dword ptr [eax+0E0]
 0058D29C    mov        eax,ebx
 0058D29E    call       TFont.GetStyle
 0058D2A3    mov        edx,eax
 0058D2A5    or         dl,byte ptr [ebp-1]
 0058D2A8    mov        eax,dword ptr [ebp+8]
 0058D2AB    mov        eax,ebx
 0058D2AD    call       TFont.SetStyle
>0058D2B2    jmp        0058D2D8
 0058D2B4    mov        eax,dword ptr [ebp+8]
 0058D2B7    mov        eax,dword ptr [eax-4]
 0058D2BA    mov        ebx,dword ptr [eax+0E0]
 0058D2C0    mov        eax,ebx
 0058D2C2    call       TFont.GetStyle
 0058D2C7    mov        dl,byte ptr [ebp-1]
 0058D2CA    not        edx
 0058D2CC    and        dl,al
 0058D2CE    mov        eax,dword ptr [ebp+8]
 0058D2D1    mov        eax,ebx
 0058D2D3    call       TFont.SetStyle
 0058D2D8    pop        ebx
 0058D2D9    pop        ecx
 0058D2DA    pop        ebp
 0058D2DB    ret
*}
//end;

//0058D2DC
//procedure sub_0058D2DC(?:TRPConverter; ?:AnsiString);
//begin
{*
 0058D2DC    push       ebp
 0058D2DD    mov        ebp,esp
 0058D2DF    add        esp,0FFFFFFE8
 0058D2E2    push       ebx
 0058D2E3    push       esi
 0058D2E4    xor        ecx,ecx
 0058D2E6    mov        dword ptr [ebp-10],ecx
 0058D2E9    mov        dword ptr [ebp-8],edx
 0058D2EC    mov        dword ptr [ebp-4],eax
 0058D2EF    mov        eax,dword ptr [ebp-8]
 0058D2F2    call       @LStrAddRef
 0058D2F7    lea        esi,[ebp-4]
 0058D2FA    xor        eax,eax
 0058D2FC    push       ebp
 0058D2FD    push       58D6E1
 0058D302    push       dword ptr fs:[eax]
 0058D305    mov        dword ptr fs:[eax],esp
 0058D308    xor        eax,eax
 0058D30A    mov        dword ptr [ebp-14],eax
 0058D30D    lea        eax,[ebp-9]
 0058D310    push       eax
 0058D311    lea        eax,[ebp-10]
 0058D314    push       eax
 0058D315    lea        ecx,[ebp-14]
 0058D318    mov        edx,dword ptr [ebp-8]
 0058D31B    mov        eax,dword ptr [esi]
 0058D31D    call       0058D178
 0058D322    xor        eax,eax
 0058D324    mov        al,byte ptr [ebp-9]
 0058D327    add        eax,0FFFFFFBE
 0058D32A    cmp        eax,30
>0058D32D    ja         0058D6B2
 0058D333    mov        al,byte ptr [eax+58D340]
 0058D339    jmp        dword ptr [eax*4+58D371]
 0058D339    db         2
 0058D339    db         10
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         11
 0058D339    db         3
 0058D339    db         14
 0058D339    db         5
 0058D339    db         0
 0058D339    db         0
 0058D339    db         8
 0058D339    db         0
 0058D339    db         6
 0058D339    db         0
 0058D339    db         12
 0058D339    db         7
 0058D339    db         0
 0058D339    db         4
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         9
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         0
 0058D339    db         13
 0058D339    dd         58D6B2
 0058D339    dd         58D6B2
 0058D339    dd         58D3B2
 0058D339    dd         58D3D3
 0058D339    dd         58D3F4
 0058D339    dd         58D415
 0058D339    dd         58D436
 0058D339    dd         58D453
 0058D339    dd         58D470
 0058D339    dd         58D485
 0058D339    dd         58D4CF
 0058D339    dd         58D4EB
 0058D339    dd         58D53D
 0058D339    dd         58D610
 0058D339    dd         58D6AD
>0058D3AD    jmp        0058D6B2
 0058D3B2    push       ebp
 0058D3B3    mov        eax,dword ptr [ebp-10]
 0058D3B6    mov        edx,58D6F8; '1'
 0058D3BB    call       @LStrCmp
 0058D3C0    sete       dl
 0058D3C3    mov        al,[0058D6FC]; 0x1
 0058D3C8    call       0058D284
 0058D3CD    pop        ecx
>0058D3CE    jmp        0058D6B2
 0058D3D3    push       ebp
 0058D3D4    mov        eax,dword ptr [ebp-10]
 0058D3D7    mov        edx,58D6F8; '1'
 0058D3DC    call       @LStrCmp
 0058D3E1    sete       dl
 0058D3E4    mov        al,[0058D700]; 0x2
 0058D3E9    call       0058D284
 0058D3EE    pop        ecx
>0058D3EF    jmp        0058D6B2
 0058D3F4    push       ebp
 0058D3F5    mov        eax,dword ptr [ebp-10]
 0058D3F8    mov        edx,58D6F8; '1'
 0058D3FD    call       @LStrCmp
 0058D402    sete       dl
 0058D405    mov        al,[0058D704]; 0x4
 0058D40A    call       0058D284
 0058D40F    pop        ecx
>0058D410    jmp        0058D6B2
 0058D415    push       ebp
 0058D416    mov        eax,dword ptr [ebp-10]
 0058D419    mov        edx,58D6F8; '1'
 0058D41E    call       @LStrCmp
 0058D423    sete       dl
 0058D426    mov        al,[0058D708]; 0x8
 0058D42B    call       0058D284
 0058D430    pop        ecx
>0058D431    jmp        0058D6B2
 0058D436    mov        eax,dword ptr [ebp-10]
 0058D439    mov        edx,58D6F8; '1'
 0058D43E    call       @LStrCmp
 0058D443    sete       al
 0058D446    mov        edx,dword ptr [esi]
 0058D448    mov        byte ptr [edx+165],al
>0058D44E    jmp        0058D6B2
 0058D453    mov        eax,dword ptr [ebp-10]
 0058D456    mov        edx,58D6F8; '1'
 0058D45B    call       @LStrCmp
 0058D460    sete       al
 0058D463    mov        edx,dword ptr [esi]
 0058D465    mov        byte ptr [edx+164],al
>0058D46B    jmp        0058D6B2
 0058D470    mov        eax,dword ptr [esi]
 0058D472    mov        eax,dword ptr [eax+0E0]
 0058D478    mov        edx,dword ptr [ebp-10]
 0058D47B    call       TFont.SetName
>0058D480    jmp        0058D6B2
 0058D485    mov        eax,dword ptr [ebp-10]
 0058D488    call       StrToFloat
 0058D48D    call       @ROUND
 0058D492    mov        edx,eax
 0058D494    mov        eax,dword ptr [esi]
 0058D496    mov        eax,dword ptr [eax+0E0]
 0058D49C    call       TFont.SetSize
 0058D4A1    mov        eax,dword ptr [esi]
 0058D4A3    mov        ebx,dword ptr [eax+0E0]
 0058D4A9    mov        eax,ebx
 0058D4AB    call       TFont.GetSize
 0058D4B0    mov        dword ptr [ebp-18],eax
 0058D4B3    fild       dword ptr [ebp-18]
 0058D4B6    fdiv       dword ptr ds:[58D70C]; 72:Single
 0058D4BC    call       @ROUND
 0058D4C1    mov        edx,eax
 0058D4C3    mov        eax,ebx
 0058D4C5    call       TFont.SetHeight
>0058D4CA    jmp        0058D6B2
 0058D4CF    mov        eax,dword ptr [ebp-10]
 0058D4D2    call       StrToInt
 0058D4D7    mov        edx,eax
 0058D4D9    mov        eax,dword ptr [esi]
 0058D4DB    mov        eax,dword ptr [eax+0E0]
 0058D4E1    call       TFont.SetColor
>0058D4E6    jmp        0058D6B2
 0058D4EB    mov        eax,dword ptr [ebp-10]
 0058D4EE    mov        al,byte ptr [eax]
 0058D4F0    sub        al,44
>0058D4F2    je         0058D501
 0058D4F4    sub        al,2
>0058D4F6    je         0058D515
 0058D4F8    sub        al,10
>0058D4FA    je         0058D529
>0058D4FC    jmp        0058D6B2
 0058D501    mov        eax,dword ptr [esi]
 0058D503    mov        eax,dword ptr [eax+0E0]
 0058D509    xor        edx,edx
 0058D50B    call       TFont.SetPitch
>0058D510    jmp        0058D6B2
 0058D515    mov        eax,dword ptr [esi]
 0058D517    mov        eax,dword ptr [eax+0E0]
 0058D51D    mov        dl,2
 0058D51F    call       TFont.SetPitch
>0058D524    jmp        0058D6B2
 0058D529    mov        eax,dword ptr [esi]
 0058D52B    mov        eax,dword ptr [eax+0E0]
 0058D531    mov        dl,1
 0058D533    call       TFont.SetPitch
>0058D538    jmp        0058D6B2
 0058D53D    mov        eax,dword ptr [esi]
 0058D53F    mov        eax,dword ptr [eax+0E0]
 0058D545    mov        edx,58D718; 'Arial'
 0058D54A    call       TFont.SetName
 0058D54F    mov        eax,dword ptr [esi]
 0058D551    mov        eax,dword ptr [eax+0E0]
 0058D557    mov        edx,0C
 0058D55C    call       TFont.SetSize
 0058D561    mov        eax,dword ptr [esi]
 0058D563    mov        eax,dword ptr [eax+0E0]
 0058D569    xor        edx,edx
 0058D56B    call       TFont.SetHeight
 0058D570    push       ebp
 0058D571    xor        edx,edx
 0058D573    mov        al,[0058D6FC]; 0x1
 0058D578    call       0058D284
 0058D57D    pop        ecx
 0058D57E    push       ebp
 0058D57F    xor        edx,edx
 0058D581    mov        al,[0058D704]; 0x4
 0058D586    call       0058D284
 0058D58B    pop        ecx
 0058D58C    push       ebp
 0058D58D    xor        edx,edx
 0058D58F    mov        al,[0058D700]; 0x2
 0058D594    call       0058D284
 0058D599    pop        ecx
 0058D59A    push       ebp
 0058D59B    xor        edx,edx
 0058D59D    mov        al,[0058D708]; 0x8
 0058D5A2    call       0058D284
 0058D5A7    pop        ecx
 0058D5A8    mov        eax,dword ptr [esi]
 0058D5AA    mov        eax,dword ptr [eax+0E0]
 0058D5B0    xor        edx,edx
 0058D5B2    call       TFont.SetColor
 0058D5B7    mov        eax,dword ptr [esi]
 0058D5B9    mov        eax,dword ptr [eax+0E0]
 0058D5BF    xor        edx,edx
 0058D5C1    call       TFont.SetPitch
 0058D5C6    mov        eax,dword ptr [esi]
 0058D5C8    mov        eax,dword ptr [eax+0E0]
 0058D5CE    mov        dl,1
 0058D5D0    call       TFont.SetCharset
 0058D5D5    mov        eax,dword ptr [esi]
 0058D5D7    mov        byte ptr [eax+165],0
 0058D5DE    mov        eax,dword ptr [esi]
 0058D5E0    mov        byte ptr [eax+164],0
 0058D5E7    mov        eax,dword ptr [esi]
 0058D5E9    mov        word ptr [eax+166],0
 0058D5F2    mov        eax,dword ptr [esi]
 0058D5F4    xor        edx,edx
 0058D5F6    mov        dword ptr [eax+140],edx
 0058D5FC    mov        dword ptr [eax+144],edx
 0058D602    mov        eax,dword ptr [esi]
 0058D604    mov        byte ptr [eax+168],0
>0058D60B    jmp        0058D6B2
 0058D610    push       ebp
 0058D611    xor        edx,edx
 0058D613    mov        al,[0058D6FC]; 0x1
 0058D618    call       0058D284
 0058D61D    pop        ecx
 0058D61E    push       ebp
 0058D61F    xor        edx,edx
 0058D621    mov        al,[0058D704]; 0x4
 0058D626    call       0058D284
 0058D62B    pop        ecx
 0058D62C    push       ebp
 0058D62D    xor        edx,edx
 0058D62F    mov        al,[0058D700]; 0x2
 0058D634    call       0058D284
 0058D639    pop        ecx
 0058D63A    push       ebp
 0058D63B    xor        edx,edx
 0058D63D    mov        al,[0058D708]; 0x8
 0058D642    call       0058D284
 0058D647    pop        ecx
 0058D648    mov        eax,dword ptr [esi]
 0058D64A    mov        eax,dword ptr [eax+0E0]
 0058D650    xor        edx,edx
 0058D652    call       TFont.SetColor
 0058D657    mov        eax,dword ptr [esi]
 0058D659    mov        eax,dword ptr [eax+0E0]
 0058D65F    xor        edx,edx
 0058D661    call       TFont.SetPitch
 0058D666    mov        eax,dword ptr [esi]
 0058D668    mov        eax,dword ptr [eax+0E0]
 0058D66E    mov        dl,1
 0058D670    call       TFont.SetCharset
 0058D675    mov        eax,dword ptr [esi]
 0058D677    mov        byte ptr [eax+165],0
 0058D67E    mov        eax,dword ptr [esi]
 0058D680    mov        byte ptr [eax+164],0
 0058D687    mov        eax,dword ptr [esi]
 0058D689    mov        word ptr [eax+166],0
 0058D692    mov        eax,dword ptr [esi]
 0058D694    xor        edx,edx
 0058D696    mov        dword ptr [eax+140],edx
 0058D69C    mov        dword ptr [eax+144],edx
 0058D6A2    mov        eax,dword ptr [esi]
 0058D6A4    mov        byte ptr [eax+168],0
>0058D6AB    jmp        0058D6B2
 0058D6AD    mov        eax,dword ptr [ebp-10]
 0058D6B0    mov        al,byte ptr [eax]
 0058D6B2    mov        eax,dword ptr [ebp-8]
 0058D6B5    call       @LStrLen
 0058D6BA    cmp        eax,dword ptr [ebp-14]
<0058D6BD    jge        0058D30D
 0058D6C3    xor        eax,eax
 0058D6C5    pop        edx
 0058D6C6    pop        ecx
 0058D6C7    pop        ecx
 0058D6C8    mov        dword ptr fs:[eax],edx
 0058D6CB    push       58D6E8
 0058D6D0    lea        eax,[ebp-10]
 0058D6D3    call       @LStrClr
 0058D6D8    lea        eax,[ebp-8]
 0058D6DB    call       @LStrClr
 0058D6E0    ret
<0058D6E1    jmp        @HandleFinally
<0058D6E6    jmp        0058D6D0
 0058D6E8    pop        esi
 0058D6E9    pop        ebx
 0058D6EA    mov        esp,ebp
 0058D6EC    pop        ebp
 0058D6ED    ret
*}
//end;

//0058D720
//procedure sub_0058D720(?:TRPConverter; ?:AnsiString; ?:?; ?:?);
//begin
{*
 0058D720    push       ebp
 0058D721    mov        ebp,esp
 0058D723    add        esp,0FFFFFFF8
 0058D726    push       ebx
 0058D727    push       esi
 0058D728    xor        ebx,ebx
 0058D72A    mov        dword ptr [ebp-8],ebx
 0058D72D    mov        esi,ecx
 0058D72F    mov        dword ptr [ebp-4],edx
 0058D732    mov        ebx,eax
 0058D734    mov        eax,dword ptr [ebp-4]
 0058D737    call       @LStrAddRef
 0058D73C    xor        eax,eax
 0058D73E    push       ebp
 0058D73F    push       58D789
 0058D744    push       dword ptr fs:[eax]
 0058D747    mov        dword ptr fs:[eax],esp
 0058D74A    mov        eax,dword ptr [ebp+8]
 0058D74D    push       eax
 0058D74E    lea        eax,[ebp-8]
 0058D751    push       eax
 0058D752    mov        ecx,esi
 0058D754    mov        edx,dword ptr [ebp-4]
 0058D757    mov        eax,ebx
 0058D759    call       0058D0A4
 0058D75E    cmp        dword ptr [ebp-8],0
>0058D762    je         0058D76E
 0058D764    mov        edx,dword ptr [ebp-8]
 0058D767    mov        eax,ebx
 0058D769    call       0058D2DC
 0058D76E    xor        eax,eax
 0058D770    pop        edx
 0058D771    pop        ecx
 0058D772    pop        ecx
 0058D773    mov        dword ptr fs:[eax],edx
 0058D776    push       58D790
 0058D77B    lea        eax,[ebp-8]
 0058D77E    mov        edx,2
 0058D783    call       @LStrArrayClr
 0058D788    ret
<0058D789    jmp        @HandleFinally
<0058D78E    jmp        0058D77B
 0058D790    pop        esi
 0058D791    pop        ebx
 0058D792    pop        ecx
 0058D793    pop        ecx
 0058D794    pop        ebp
 0058D795    ret        4
*}
//end;

//0058D798
//procedure sub_0058D798(?:TRPConverter; ?:AnsiString);
//begin
{*
 0058D798    push       ebp
 0058D799    mov        ebp,esp
 0058D79B    add        esp,0FFFFFFE4
 0058D79E    push       ebx
 0058D79F    xor        ecx,ecx
 0058D7A1    mov        dword ptr [ebp-18],ecx
 0058D7A4    mov        dword ptr [ebp-4],edx
 0058D7A7    mov        ebx,eax
 0058D7A9    mov        eax,dword ptr [ebp-4]
 0058D7AC    call       @LStrAddRef
 0058D7B1    xor        eax,eax
 0058D7B3    push       ebp
 0058D7B4    push       58D879
 0058D7B9    push       dword ptr fs:[eax]
 0058D7BC    mov        dword ptr fs:[eax],esp
 0058D7BF    xor        eax,eax
 0058D7C1    mov        dword ptr [ebp-10],eax
 0058D7C4    mov        dword ptr [ebp-0C],eax
 0058D7C7    mov        dword ptr [ebp-14],1
>0058D7CE    jmp        0058D841
 0058D7D0    lea        eax,[ebp-18]
 0058D7D3    push       eax
 0058D7D4    lea        ecx,[ebp-14]
 0058D7D7    mov        edx,dword ptr [ebp-4]
 0058D7DA    mov        eax,ebx
 0058D7DC    call       0058D720
 0058D7E1    mov        eax,dword ptr [ebx+4]; TRPConverter.?f4:TBitmap
 0058D7E4    call       TBitmap.GetCanvas
 0058D7E9    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 0058D7EC    mov        edx,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058D7F2    mov        ecx,dword ptr [eax]
 0058D7F4    call       dword ptr [ecx+8]; TFont.Assign
 0058D7F7    mov        eax,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058D7FD    call       TFont.GetSize
 0058D802    neg        eax
 0058D804    imul       eax,eax,4E0
 0058D80A    mov        ecx,48
 0058D80F    cdq
 0058D810    idiv       eax,ecx
 0058D812    push       eax
 0058D813    mov        eax,dword ptr [ebx+4]; TRPConverter.?f4:TBitmap
 0058D816    call       TBitmap.GetCanvas
 0058D81B    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 0058D81E    pop        edx
 0058D81F    call       TFont.SetHeight
 0058D824    mov        eax,dword ptr [ebx+4]; TRPConverter.?f4:TBitmap
 0058D827    call       TBitmap.GetCanvas
 0058D82C    mov        edx,dword ptr [ebp-18]
 0058D82F    call       TCanvas.TextWidth
 0058D834    mov        dword ptr [ebp-1C],eax
 0058D837    fild       dword ptr [ebp-1C]
 0058D83A    fadd       qword ptr [ebp-10]
 0058D83D    fstp       qword ptr [ebp-10]
 0058D840    wait
 0058D841    mov        eax,dword ptr [ebp-4]
 0058D844    call       @LStrLen
 0058D849    cmp        eax,dword ptr [ebp-14]
<0058D84C    jge        0058D7D0
 0058D84E    fld        qword ptr [ebp-10]
 0058D851    fdiv       dword ptr ds:[58D888]; 1248:Single
 0058D857    fstp       qword ptr [ebp-10]
 0058D85A    wait
 0058D85B    xor        eax,eax
 0058D85D    pop        edx
 0058D85E    pop        ecx
 0058D85F    pop        ecx
 0058D860    mov        dword ptr fs:[eax],edx
 0058D863    push       58D880
 0058D868    lea        eax,[ebp-18]
 0058D86B    call       @LStrClr
 0058D870    lea        eax,[ebp-4]
 0058D873    call       @LStrClr
 0058D878    ret
<0058D879    jmp        @HandleFinally
<0058D87E    jmp        0058D868
 0058D880    fld        qword ptr [ebp-10]
 0058D883    pop        ebx
 0058D884    mov        esp,ebp
 0058D886    pop        ebp
 0058D887    ret
*}
//end;

//0058D88C
//procedure sub_0058D88C(?:TRPConverter; ?:AnsiString; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058D88C    push       ebp
 0058D88D    mov        ebp,esp
 0058D88F    add        esp,0FFFFFFF0
 0058D892    push       ebx
 0058D893    push       esi
 0058D894    xor        ebx,ebx
 0058D896    mov        dword ptr [ebp-0C],ebx
 0058D899    mov        ebx,ecx
 0058D89B    mov        dword ptr [ebp-4],edx
 0058D89E    mov        esi,eax
 0058D8A0    mov        eax,dword ptr [ebp-4]
 0058D8A3    call       @LStrAddRef
 0058D8A8    xor        eax,eax
 0058D8AA    push       ebp
 0058D8AB    push       58D97F
 0058D8B0    push       dword ptr fs:[eax]
 0058D8B3    mov        dword ptr fs:[eax],esp
 0058D8B6    cmp        bl,43
>0058D8B9    jne        0058D8D4
 0058D8BB    mov        edx,dword ptr [ebp-4]
 0058D8BE    mov        eax,esi
 0058D8C0    call       0058D798
 0058D8C5    fdiv       dword ptr ds:[58D990]; 2:Single
 0058D8CB    fsubr      qword ptr [ebp+10]
 0058D8CE    fstp       qword ptr [ebp+10]
 0058D8D1    wait
>0058D8D2    jmp        0058D8EA
 0058D8D4    cmp        bl,52
>0058D8D7    jne        0058D8EA
 0058D8D9    mov        edx,dword ptr [ebp-4]
 0058D8DC    mov        eax,esi
 0058D8DE    call       0058D798
 0058D8E3    fsubr      qword ptr [ebp+10]
 0058D8E6    fstp       qword ptr [ebp+10]
 0058D8E9    wait
 0058D8EA    mov        dword ptr [ebp-8],1
>0058D8F1    jmp        0058D954
 0058D8F3    lea        eax,[ebp-0C]
 0058D8F6    push       eax
 0058D8F7    lea        ecx,[ebp-8]
 0058D8FA    mov        edx,dword ptr [ebp-4]
 0058D8FD    mov        eax,esi
 0058D8FF    call       0058D720
 0058D904    push       dword ptr [ebp+14]
 0058D907    push       dword ptr [ebp+10]
 0058D90A    push       dword ptr [ebp+0C]
 0058D90D    push       dword ptr [ebp+8]
 0058D910    mov        edx,dword ptr [ebp-0C]
 0058D913    mov        eax,dword ptr [esi+28]; TRPConverter.?f28:dword
 0058D916    mov        ecx,dword ptr [eax]
 0058D918    call       dword ptr [ecx+48]
 0058D91B    mov        eax,dword ptr [esi+4]; TRPConverter.?f4:TBitmap
 0058D91E    call       TBitmap.GetCanvas
 0058D923    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 0058D926    mov        edx,dword ptr [esi+0E0]; TRPConverter.?fE0:TFont
 0058D92C    mov        ecx,dword ptr [eax]
 0058D92E    call       dword ptr [ecx+8]; TFont.Assign
 0058D931    mov        eax,dword ptr [esi+4]; TRPConverter.?f4:TBitmap
 0058D934    call       TBitmap.GetCanvas
 0058D939    mov        edx,dword ptr [ebp-0C]
 0058D93C    call       TCanvas.TextWidth
 0058D941    mov        dword ptr [ebp-10],eax
 0058D944    fild       dword ptr [ebp-10]
 0058D947    fdiv       dword ptr ds:[58D994]; 1248:Single
 0058D94D    fadd       qword ptr [ebp+10]
 0058D950    fstp       qword ptr [ebp+10]
 0058D953    wait
 0058D954    mov        eax,dword ptr [ebp-4]
 0058D957    call       @LStrLen
 0058D95C    cmp        eax,dword ptr [ebp-8]
<0058D95F    jge        0058D8F3
 0058D961    xor        eax,eax
 0058D963    pop        edx
 0058D964    pop        ecx
 0058D965    pop        ecx
 0058D966    mov        dword ptr fs:[eax],edx
 0058D969    push       58D986
 0058D96E    lea        eax,[ebp-0C]
 0058D971    call       @LStrClr
 0058D976    lea        eax,[ebp-4]
 0058D979    call       @LStrClr
 0058D97E    ret
<0058D97F    jmp        @HandleFinally
<0058D984    jmp        0058D96E
 0058D986    pop        esi
 0058D987    pop        ebx
 0058D988    mov        esp,ebp
 0058D98A    pop        ebp
 0058D98B    ret        10
*}
//end;

//0058D998
//procedure sub_0058D998(?:TRPConverter);
//begin
{*
 0058D998    push       ebp
 0058D999    mov        ebp,esp
 0058D99B    add        esp,0FFFFFFE8
 0058D99E    push       ebx
 0058D99F    xor        edx,edx
 0058D9A1    mov        dword ptr [ebp-4],edx
 0058D9A4    mov        ebx,eax
 0058D9A6    xor        eax,eax
 0058D9A8    push       ebp
 0058D9A9    push       58DA32
 0058D9AE    push       dword ptr fs:[eax]
 0058D9B1    mov        dword ptr fs:[eax],esp
 0058D9B4    mov        eax,ebx
 0058D9B6    call       0058E72C
 0058D9BB    fstp       qword ptr [ebp-18]
 0058D9BE    wait
 0058D9BF    lea        edx,[ebp-4]
 0058D9C2    mov        eax,ebx
 0058D9C4    call       0058E75C
 0058D9C9    mov        eax,ebx
 0058D9CB    call       0058E72C
 0058D9D0    fstp       qword ptr [ebp-10]
 0058D9D3    wait
 0058D9D4    cmp        dword ptr [ebp-4],0
>0058D9D8    je         0058DA1C
 0058D9DA    mov        edx,dword ptr [ebp-4]
 0058D9DD    mov        eax,58DA48; ''
 0058D9E2    call       @LStrPos
 0058D9E7    test       eax,eax
>0058D9E9    jne        0058DA04
 0058D9EB    push       dword ptr [ebp-0C]
 0058D9EE    push       dword ptr [ebp-10]
 0058D9F1    push       dword ptr [ebp-14]
 0058D9F4    push       dword ptr [ebp-18]
 0058D9F7    mov        edx,dword ptr [ebp-4]
 0058D9FA    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058D9FD    mov        ecx,dword ptr [eax]
 0058D9FF    call       dword ptr [ecx+48]
>0058DA02    jmp        0058DA1C
 0058DA04    push       dword ptr [ebp-0C]
 0058DA07    push       dword ptr [ebp-10]
 0058DA0A    push       dword ptr [ebp-14]
 0058DA0D    push       dword ptr [ebp-18]
 0058DA10    mov        cl,4C
 0058DA12    mov        edx,dword ptr [ebp-4]
 0058DA15    mov        eax,ebx
 0058DA17    call       0058D88C
 0058DA1C    xor        eax,eax
 0058DA1E    pop        edx
 0058DA1F    pop        ecx
 0058DA20    pop        ecx
 0058DA21    mov        dword ptr fs:[eax],edx
 0058DA24    push       58DA39
 0058DA29    lea        eax,[ebp-4]
 0058DA2C    call       @LStrClr
 0058DA31    ret
<0058DA32    jmp        @HandleFinally
<0058DA37    jmp        0058DA29
 0058DA39    pop        ebx
 0058DA3A    mov        esp,ebp
 0058DA3C    pop        ebp
 0058DA3D    ret
*}
//end;

//0058DA4C
//procedure sub_0058DA4C(?:TRPConverter);
//begin
{*
 0058DA4C    push       ebx
 0058DA4D    add        esp,0FFFFFFF8
 0058DA50    mov        ebx,eax
 0058DA52    mov        eax,ebx
 0058DA54    call       0058E72C
 0058DA59    fstp       dword ptr [esp]
 0058DA5C    wait
 0058DA5D    mov        eax,ebx
 0058DA5F    call       0058E72C
 0058DA64    fstp       dword ptr [esp+4]
 0058DA68    wait
 0058DA69    push       dword ptr [ebx+44]; TRPConverter.?f44:dword
 0058DA6C    push       dword ptr [ebx+40]; TRPConverter.?f40:?Double
 0058DA6F    push       dword ptr [ebx+4C]; TRPConverter.?f4C:dword
 0058DA72    push       dword ptr [ebx+48]; TRPConverter.?f48:?Double
 0058DA75    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058DA78    mov        edx,dword ptr [eax]
 0058DA7A    call       dword ptr [edx+50]
 0058DA7D    fld        dword ptr [esp]
 0058DA80    add        esp,0FFFFFFF8
 0058DA83    fstp       qword ptr [esp]
 0058DA86    wait
 0058DA87    fld        dword ptr [esp+0C]
 0058DA8B    add        esp,0FFFFFFF8
 0058DA8E    fstp       qword ptr [esp]
 0058DA91    wait
 0058DA92    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058DA95    mov        edx,dword ptr [eax]
 0058DA97    call       dword ptr [edx+4C]
 0058DA9A    fld        dword ptr [esp]
 0058DA9D    fstp       qword ptr [ebx+40]; TRPConverter.?f40:?Double
 0058DAA0    wait
 0058DAA1    fld        dword ptr [esp+4]
 0058DAA5    fstp       qword ptr [ebx+48]; TRPConverter.?f48:?Double
 0058DAA8    wait
 0058DAA9    pop        ecx
 0058DAAA    pop        edx
 0058DAAB    pop        ebx
 0058DAAC    ret
*}
//end;

//0058DAB0
//procedure sub_0058DAB0(?:TRPConverter);
//begin
{*
 0058DAB0    push       ebx
 0058DAB1    mov        ebx,eax
 0058DAB3    mov        eax,ebx
 0058DAB5    call       0058E72C
 0058DABA    fstp       dword ptr [ebx+0D8]; TRPConverter.?fD8:Single
 0058DAC0    wait
 0058DAC1    mov        eax,ebx
 0058DAC3    call       0058E72C
 0058DAC8    fstp       dword ptr [ebx+0DC]; TRPConverter.?fDC:Single
 0058DACE    wait
 0058DACF    fld        dword ptr [ebx+0D8]; TRPConverter.?fD8:Single
 0058DAD5    fstp       qword ptr [ebx+40]; TRPConverter.?f40:?Double
 0058DAD8    wait
 0058DAD9    fld        dword ptr [ebx+0DC]; TRPConverter.?fDC:Single
 0058DADF    fstp       qword ptr [ebx+48]; TRPConverter.?f48:?Double
 0058DAE2    wait
 0058DAE3    pop        ebx
 0058DAE4    ret
*}
//end;

//0058DAE8
//procedure sub_0058DAE8(?:TRPConverter);
//begin
{*
 0058DAE8    push       ebp
 0058DAE9    mov        ebp,esp
 0058DAEB    add        esp,0FFFFFFF0
 0058DAEE    push       ebx
 0058DAEF    xor        edx,edx
 0058DAF1    mov        dword ptr [ebp-4],edx
 0058DAF4    mov        ebx,eax
 0058DAF6    xor        eax,eax
 0058DAF8    push       ebp
 0058DAF9    push       58DB6E
 0058DAFE    push       dword ptr fs:[eax]
 0058DB01    mov        dword ptr fs:[eax],esp
 0058DB04    mov        eax,ebx
 0058DB06    call       0058E72C
 0058DB0B    fstp       dword ptr [ebp-0C]
 0058DB0E    wait
 0058DB0F    lea        edx,[ebp-4]
 0058DB12    mov        eax,ebx
 0058DB14    call       0058E75C
 0058DB19    mov        eax,ebx
 0058DB1B    call       0058E72C
 0058DB20    fstp       dword ptr [ebp-8]
 0058DB23    wait
 0058DB24    mov        eax,ebx
 0058DB26    call       0058E72C
 0058DB2B    fstp       dword ptr [ebp-10]
 0058DB2E    wait
 0058DB2F    fld        dword ptr [ebp-8]
 0058DB32    add        esp,0FFFFFFF8
 0058DB35    fstp       qword ptr [esp]
 0058DB38    wait
 0058DB39    fld        dword ptr [ebp-0C]
 0058DB3C    add        esp,0FFFFFFF8
 0058DB3F    fstp       qword ptr [esp]
 0058DB42    wait
 0058DB43    fld        dword ptr [ebp-10]
 0058DB46    add        esp,0FFFFFFF8
 0058DB49    fstp       qword ptr [esp]
 0058DB4C    wait
 0058DB4D    mov        edx,dword ptr [ebp-4]
 0058DB50    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058DB53    mov        ecx,dword ptr [eax]
 0058DB55    call       dword ptr [ecx+7C]
 0058DB58    xor        eax,eax
 0058DB5A    pop        edx
 0058DB5B    pop        ecx
 0058DB5C    pop        ecx
 0058DB5D    mov        dword ptr fs:[eax],edx
 0058DB60    push       58DB75
 0058DB65    lea        eax,[ebp-4]
 0058DB68    call       @LStrClr
 0058DB6D    ret
<0058DB6E    jmp        @HandleFinally
<0058DB73    jmp        0058DB65
 0058DB75    pop        ebx
 0058DB76    mov        esp,ebp
 0058DB78    pop        ebp
 0058DB79    ret
*}
//end;

//0058DB7C
//procedure sub_0058DB7C(?:TRPConverter);
//begin
{*
 0058DB7C    push       ebx
 0058DB7D    add        esp,0FFFFFFF0
 0058DB80    mov        ebx,eax
 0058DB82    mov        eax,ebx
 0058DB84    call       0058E72C
 0058DB89    fstp       dword ptr [esp]
 0058DB8C    wait
 0058DB8D    mov        eax,ebx
 0058DB8F    call       0058E72C
 0058DB94    fstp       dword ptr [esp+8]
 0058DB98    wait
 0058DB99    mov        eax,ebx
 0058DB9B    call       0058E72C
 0058DBA0    fstp       dword ptr [esp+4]
 0058DBA4    wait
 0058DBA5    mov        eax,ebx
 0058DBA7    call       0058E72C
 0058DBAC    fstp       dword ptr [esp+0C]
 0058DBB0    wait
 0058DBB1    fld        dword ptr [esp]
 0058DBB4    add        esp,0FFFFFFF8
 0058DBB7    fstp       qword ptr [esp]
 0058DBBA    wait
 0058DBBB    fld        dword ptr [esp+10]
 0058DBBF    add        esp,0FFFFFFF8
 0058DBC2    fstp       qword ptr [esp]
 0058DBC5    wait
 0058DBC6    fld        dword ptr [esp+14]
 0058DBCA    add        esp,0FFFFFFF8
 0058DBCD    fstp       qword ptr [esp]
 0058DBD0    wait
 0058DBD1    fld        dword ptr [esp+24]
 0058DBD5    add        esp,0FFFFFFF8
 0058DBD8    fstp       qword ptr [esp]
 0058DBDB    wait
 0058DBDC    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058DBDF    mov        edx,dword ptr [eax]
 0058DBE1    call       dword ptr [edx+80]
 0058DBE7    add        esp,10
 0058DBEA    pop        ebx
 0058DBEB    ret
*}
//end;

//0058DBEC
//procedure sub_0058DBEC(?:TRPConverter);
//begin
{*
 0058DBEC    push       ebp
 0058DBED    mov        ebp,esp
 0058DBEF    add        esp,0FFFFFFE8
 0058DBF2    push       ebx
 0058DBF3    xor        edx,edx
 0058DBF5    mov        dword ptr [ebp-4],edx
 0058DBF8    mov        ebx,eax
 0058DBFA    xor        eax,eax
 0058DBFC    push       ebp
 0058DBFD    push       58DC86
 0058DC02    push       dword ptr fs:[eax]
 0058DC05    mov        dword ptr fs:[eax],esp
 0058DC08    mov        eax,ebx
 0058DC0A    call       0058E72C
 0058DC0F    fstp       qword ptr [ebp-18]
 0058DC12    wait
 0058DC13    lea        edx,[ebp-4]
 0058DC16    mov        eax,ebx
 0058DC18    call       0058E75C
 0058DC1D    mov        eax,ebx
 0058DC1F    call       0058E72C
 0058DC24    fstp       qword ptr [ebp-10]
 0058DC27    wait
 0058DC28    cmp        dword ptr [ebp-4],0
>0058DC2C    je         0058DC70
 0058DC2E    mov        edx,dword ptr [ebp-4]
 0058DC31    mov        eax,58DC9C; ''
 0058DC36    call       @LStrPos
 0058DC3B    test       eax,eax
>0058DC3D    jne        0058DC58
 0058DC3F    push       dword ptr [ebp-0C]
 0058DC42    push       dword ptr [ebp-10]
 0058DC45    push       dword ptr [ebp-14]
 0058DC48    push       dword ptr [ebp-18]
 0058DC4B    mov        edx,dword ptr [ebp-4]
 0058DC4E    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058DC51    mov        ecx,dword ptr [eax]
 0058DC53    call       dword ptr [ecx+60]
>0058DC56    jmp        0058DC70
 0058DC58    push       dword ptr [ebp-0C]
 0058DC5B    push       dword ptr [ebp-10]
 0058DC5E    push       dword ptr [ebp-14]
 0058DC61    push       dword ptr [ebp-18]
 0058DC64    mov        cl,52
 0058DC66    mov        edx,dword ptr [ebp-4]
 0058DC69    mov        eax,ebx
 0058DC6B    call       0058D88C
 0058DC70    xor        eax,eax
 0058DC72    pop        edx
 0058DC73    pop        ecx
 0058DC74    pop        ecx
 0058DC75    mov        dword ptr fs:[eax],edx
 0058DC78    push       58DC8D
 0058DC7D    lea        eax,[ebp-4]
 0058DC80    call       @LStrClr
 0058DC85    ret
<0058DC86    jmp        @HandleFinally
<0058DC8B    jmp        0058DC7D
 0058DC8D    pop        ebx
 0058DC8E    mov        esp,ebp
 0058DC90    pop        ebp
 0058DC91    ret
*}
//end;

//0058DCA0
//procedure sub_0058DCA0(?:TRPConverter);
//begin
{*
 0058DCA0    push       ebx
 0058DCA1    mov        ebx,eax
 0058DCA3    mov        eax,ebx
 0058DCA5    call       0058E3F8
 0058DCAA    mov        edx,eax
 0058DCAC    mov        eax,dword ptr [ebx+180]; TRPConverter.?f180:TPen
 0058DCB2    call       TPen.SetColor
 0058DCB7    pop        ebx
 0058DCB8    ret
*}
//end;

//0058DCBC
//procedure sub_0058DCBC(?:?; ?:?);
//begin
{*
 0058DCBC    push       ebp
 0058DCBD    mov        ebp,esp
 0058DCBF    push       ecx
 0058DCC0    push       ebx
 0058DCC1    push       esi
 0058DCC2    mov        esi,ecx
 0058DCC4    mov        ebx,edx
 0058DCC6    mov        dword ptr [ebp-4],eax
 0058DCC9    mov        eax,dword ptr [ebp-4]
 0058DCCC    mov        eax,dword ptr [eax+28]; TRPConverter.?f28:dword
 0058DCCF    mov        edx,dword ptr [ebp-4]
 0058DCD2    mov        dword ptr [eax+70],edx
 0058DCD5    call       Now
 0058DCDA    mov        eax,dword ptr [ebp-4]
 0058DCDD    fstp       qword ptr [eax+8]; TRPConverter.?f8:?Double
 0058DCE0    wait
 0058DCE1    mov        eax,dword ptr [ebp-4]
 0058DCE4    call       0058E4C8
 0058DCE9    xor        eax,eax
 0058DCEB    push       ebp
 0058DCEC    push       58DD77
 0058DCF1    push       dword ptr fs:[eax]
 0058DCF4    mov        dword ptr fs:[eax],esp
 0058DCF7    test       ebx,ebx
>0058DCF9    jne        0058DD2B
 0058DCFB    mov        eax,dword ptr [ebp-4]
 0058DCFE    mov        eax,dword ptr [eax+28]; TRPConverter.?f28:dword
 0058DD01    mov        edx,dword ptr [eax]
 0058DD03    call       dword ptr [edx+90]
 0058DD09    mov        eax,dword ptr [ebp-4]
 0058DD0C    call       0058DE70
>0058DD11    jmp        0058DD1B
 0058DD13    mov        eax,dword ptr [ebp-4]
 0058DD16    call       0058DE70
 0058DD1B    mov        eax,dword ptr [ebp-4]
 0058DD1E    mov        eax,dword ptr [eax+18]; TRPConverter.?f18:dword
 0058DD21    mov        edx,dword ptr [ebp-4]
 0058DD24    cmp        eax,dword ptr [edx+1C]; TRPConverter.?f1C:dword
<0058DD27    jl         0058DD13
>0058DD29    jmp        0058DD5B
 0058DD2B    test       esi,esi
>0058DD2D    je         0058DD3B
 0058DD2F    mov        eax,dword ptr [ebp-4]
 0058DD32    mov        eax,dword ptr [eax+1C]; TRPConverter.?f1C:dword
 0058DD35    mov        edx,dword ptr [ebp-4]
 0058DD38    mov        dword ptr [edx+1C],eax; TRPConverter.?f1C:dword
 0058DD3B    mov        eax,dword ptr [ebp-4]
 0058DD3E    mov        eax,dword ptr [eax+28]; TRPConverter.?f28:dword
 0058DD41    mov        edx,dword ptr [eax]
 0058DD43    call       dword ptr [edx+90]
 0058DD49    mov        edx,ebx
 0058DD4B    mov        eax,dword ptr [ebp-4]
 0058DD4E    call       0058DD84
 0058DD53    mov        eax,dword ptr [ebp-4]
 0058DD56    call       0058DE70
 0058DD5B    xor        eax,eax
 0058DD5D    pop        edx
 0058DD5E    pop        ecx
 0058DD5F    pop        ecx
 0058DD60    mov        dword ptr fs:[eax],edx
 0058DD63    push       58DD7E
 0058DD68    mov        eax,dword ptr [ebp-4]
 0058DD6B    mov        eax,dword ptr [eax+28]; TRPConverter.?f28:dword
 0058DD6E    mov        edx,dword ptr [eax]
 0058DD70    call       dword ptr [edx+94]
 0058DD76    ret
<0058DD77    jmp        @HandleFinally
<0058DD7C    jmp        0058DD68
 0058DD7E    pop        esi
 0058DD7F    pop        ebx
 0058DD80    pop        ecx
 0058DD81    pop        ebp
 0058DD82    ret
*}
//end;

//0058DD84
//procedure sub_0058DD84(?:TRPConverter; ?:?);
//begin
{*
 0058DD84    push       ebx
 0058DD85    push       esi
 0058DD86    mov        esi,edx
 0058DD88    mov        ebx,eax
 0058DD8A    mov        eax,dword ptr [ebx+30]; TRPConverter.?f30:Int64
 0058DD8D    cdq
 0058DD8E    push       edx
 0058DD8F    push       eax
 0058DD90    mov        eax,dword ptr [ebx+24]; TRPConverter.?f24:dword
 0058DD93    call       TStream.SetPosition
 0058DD98    cmp        esi,dword ptr [ebx+18]; TRPConverter.?f18:dword
>0058DD9B    je         0058DE11
>0058DD9D    jmp        0058DDD2
 0058DD9F    mov        eax,ebx
 0058DDA1    call       0058E410
 0058DDA6    mov        ecx,dword ptr [ebx+34]; TRPConverter.?f34:dword
 0058DDA9    test       ecx,ecx
>0058DDAB    jle        0058DDC1
 0058DDAD    cmp        esi,dword ptr [ebx+18]; TRPConverter.?f18:dword
>0058DDB0    je         0058DDC1
 0058DDB2    mov        eax,ecx
 0058DDB4    cdq
 0058DDB5    push       edx
 0058DDB6    push       eax
 0058DDB7    mov        eax,dword ptr [ebx+24]; TRPConverter.?f24:dword
 0058DDBA    call       TStream.SetPosition
>0058DDBF    jmp        0058DDD2
 0058DDC1    mov        eax,dword ptr [ebx+30]; TRPConverter.?f30:Int64
 0058DDC4    cdq
 0058DDC5    push       edx
 0058DDC6    push       eax
 0058DDC7    mov        eax,dword ptr [ebx+24]; TRPConverter.?f24:dword
 0058DDCA    call       TStream.SetPosition
 0058DDCF    pop        esi
 0058DDD0    pop        ebx
 0058DDD1    ret
 0058DDD2    cmp        esi,dword ptr [ebx+18]; TRPConverter.?f18:dword
<0058DDD5    jl         0058DD9F
>0058DDD7    jmp        0058DE0C
 0058DDD9    mov        eax,ebx
 0058DDDB    call       0058E410
 0058DDE0    mov        ecx,dword ptr [ebx+38]; TRPConverter.?f38:dword
 0058DDE3    test       ecx,ecx
>0058DDE5    jle        0058DDFB
 0058DDE7    cmp        esi,dword ptr [ebx+18]; TRPConverter.?f18:dword
>0058DDEA    je         0058DDFB
 0058DDEC    mov        eax,ecx
 0058DDEE    cdq
 0058DDEF    push       edx
 0058DDF0    push       eax
 0058DDF1    mov        eax,dword ptr [ebx+24]; TRPConverter.?f24:dword
 0058DDF4    call       TStream.SetPosition
>0058DDF9    jmp        0058DE0C
 0058DDFB    mov        eax,dword ptr [ebx+30]; TRPConverter.?f30:Int64
 0058DDFE    cdq
 0058DDFF    push       edx
 0058DE00    push       eax
 0058DE01    mov        eax,dword ptr [ebx+24]; TRPConverter.?f24:dword
 0058DE04    call       TStream.SetPosition
 0058DE09    pop        esi
 0058DE0A    pop        ebx
 0058DE0B    ret
 0058DE0C    cmp        esi,dword ptr [ebx+18]; TRPConverter.?f18:dword
<0058DE0F    jg         0058DDD9
 0058DE11    pop        esi
 0058DE12    pop        ebx
 0058DE13    ret
*}
//end;

//0058DE14
//procedure sub_0058DE14(?:TRPConverter; ?:?);
//begin
{*
 0058DE14    push       ebx
 0058DE15    push       esi
 0058DE16    mov        ebx,edx
 0058DE18    mov        esi,eax
 0058DE1A    mov        eax,esi
 0058DE1C    call       0058E3E0
 0058DE21    cmp        bl,al
>0058DE23    je         0058DE3B
 0058DE25    mov        ecx,58DE48; 'Unexpected code found in report file.'
 0058DE2A    mov        dl,1
 0058DE2C    mov        eax,[004087B0]; Exception
 0058DE31    call       Exception.Create; Exception.Create
 0058DE36    call       @RaiseExcept
 0058DE3B    pop        esi
 0058DE3C    pop        ebx
 0058DE3D    ret
*}
//end;

//0058DE70
//procedure sub_0058DE70(?:TRPConverter);
//begin
{*
 0058DE70    push       ebp
 0058DE71    mov        ebp,esp
 0058DE73    add        esp,0FFFFFFF0
 0058DE76    push       ebx
 0058DE77    push       esi
 0058DE78    push       edi
 0058DE79    xor        edx,edx
 0058DE7B    mov        dword ptr [ebp-4],edx
 0058DE7E    mov        dword ptr [ebp-8],edx
 0058DE81    mov        esi,eax
 0058DE83    xor        eax,eax
 0058DE85    push       ebp
 0058DE86    push       58E39D
 0058DE8B    push       dword ptr fs:[eax]
 0058DE8E    mov        dword ptr fs:[eax],esp
 0058DE91    mov        eax,esi
 0058DE93    call       0058E410
 0058DE98    mov        eax,dword ptr [esi+28]; TRPConverter.?f28:dword
 0058DE9B    mov        edx,dword ptr [eax]
 0058DE9D    call       dword ptr [edx+98]
 0058DEA3    mov        eax,esi
 0058DEA5    call       0058E3E0
 0058DEAA    mov        ebx,eax
 0058DEAC    xor        eax,eax
 0058DEAE    mov        al,bl
 0058DEB0    cmp        eax,58
>0058DEB3    ja         0058E33C
 0058DEB9    jmp        dword ptr [eax*4+58DEC0]
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E024
 0058DEB9    dd         58E030
 0058DEB9    dd         58E03C
 0058DEB9    dd         58E048
 0058DEB9    dd         58E054
 0058DEB9    dd         58E060
 0058DEB9    dd         58E06C
 0058DEB9    dd         58E078
 0058DEB9    dd         58E084
 0058DEB9    dd         58E090
 0058DEB9    dd         58E09C
 0058DEB9    dd         58E0A8
 0058DEB9    dd         58E0B4
 0058DEB9    dd         58E0C0
 0058DEB9    dd         58E0CC
 0058DEB9    dd         58E0D8
 0058DEB9    dd         58E0E4
 0058DEB9    dd         58E0F0
 0058DEB9    dd         58E0FC
 0058DEB9    dd         58E108
 0058DEB9    dd         58E114
 0058DEB9    dd         58E120
 0058DEB9    dd         58E138
 0058DEB9    dd         58E144
 0058DEB9    dd         58E150
 0058DEB9    dd         58E12C
 0058DEB9    dd         58E15C
 0058DEB9    dd         58E168
 0058DEB9    dd         58E174
 0058DEB9    dd         58E180
 0058DEB9    dd         58E18C
 0058DEB9    dd         58E198
 0058DEB9    dd         58E1A4
 0058DEB9    dd         58E1B0
 0058DEB9    dd         58E1BC
 0058DEB9    dd         58E1C8
 0058DEB9    dd         58E1D4
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E1E0
 0058DEB9    dd         58E1EC
 0058DEB9    dd         58E1F8
 0058DEB9    dd         58E204
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E210
 0058DEB9    dd         58E21C
 0058DEB9    dd         58E228
 0058DEB9    dd         58E234
 0058DEB9    dd         58E240
 0058DEB9    dd         58E24C
 0058DEB9    dd         58E258
 0058DEB9    dd         58E264
 0058DEB9    dd         58E270
 0058DEB9    dd         58E27C
 0058DEB9    dd         58E288
 0058DEB9    dd         58E294
 0058DEB9    dd         58E2A0
 0058DEB9    dd         58E2AC
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E2B8
 0058DEB9    dd         58E2C4
 0058DEB9    dd         58E2D0
 0058DEB9    dd         58E2DC
 0058DEB9    dd         58E2E8
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E33C
 0058DEB9    dd         58E377
 0058DEB9    dd         58E2F4
 0058DEB9    dd         58E300
 0058DEB9    dd         58E30C
 0058DEB9    dd         58E318
 0058DEB9    dd         58E324
 0058DEB9    dd         58E330
 0058E024    mov        eax,esi
 0058E026    call       0058C968
<0058E02B    jmp        0058DEA3
 0058E030    mov        eax,esi
 0058E032    call       0058CA7C
<0058E037    jmp        0058DEA3
 0058E03C    mov        eax,esi
 0058E03E    call       0058CEC4
<0058E043    jmp        0058DEA3
 0058E048    mov        eax,esi
 0058E04A    call       0058CF90
<0058E04F    jmp        0058DEA3
 0058E054    mov        eax,esi
 0058E056    call       0058CFB4
<0058E05B    jmp        0058DEA3
 0058E060    mov        eax,esi
 0058E062    call       0058D024
<0058E067    jmp        0058DEA3
 0058E06C    mov        eax,esi
 0058E06E    call       0058D034
<0058E073    jmp        0058DEA3
 0058E078    mov        eax,esi
 0058E07A    call       0058E7CC
<0058E07F    jmp        0058DEA3
 0058E084    mov        eax,esi
 0058E086    call       0058E7F0
<0058E08B    jmp        0058DEA3
 0058E090    mov        eax,esi
 0058E092    call       0058E818
<0058E097    jmp        0058DEA3
 0058E09C    mov        eax,esi
 0058E09E    call       0058DA4C
<0058E0A3    jmp        0058DEA3
 0058E0A8    mov        eax,esi
 0058E0AA    call       0058DAB0
<0058E0AF    jmp        0058DEA3
 0058E0B4    mov        eax,esi
 0058E0B6    call       0058E828
<0058E0BB    jmp        0058DEA3
 0058E0C0    mov        eax,esi
 0058E0C2    call       0058E900
<0058E0C7    jmp        0058DEA3
 0058E0CC    mov        eax,esi
 0058E0CE    call       0058EA10
<0058E0D3    jmp        0058DEA3
 0058E0D8    mov        eax,esi
 0058E0DA    call       0058EAFC
<0058E0DF    jmp        0058DEA3
 0058E0E4    mov        eax,esi
 0058E0E6    call       0058EB9C
<0058E0EB    jmp        0058DEA3
 0058E0F0    mov        eax,esi
 0058E0F2    call       0058DB7C
<0058E0F7    jmp        0058DEA3
 0058E0FC    mov        eax,esi
 0058E0FE    call       0058DB7C
<0058E103    jmp        0058DEA3
 0058E108    mov        eax,esi
 0058E10A    call       0058EC40
<0058E10F    jmp        0058DEA3
 0058E114    mov        eax,esi
 0058E116    call       0058ECE0
<0058E11B    jmp        0058DEA3
 0058E120    mov        eax,esi
 0058E122    call       0058ED3C
<0058E127    jmp        0058DEA3
 0058E12C    mov        eax,esi
 0058E12E    call       0058EDC4
<0058E133    jmp        0058DEA3
 0058E138    mov        eax,esi
 0058E13A    call       0058CE10
<0058E13F    jmp        0058DEA3
 0058E144    mov        eax,esi
 0058E146    call       0058D998
<0058E14B    jmp        0058DEA3
 0058E150    mov        eax,esi
 0058E152    call       0058DBEC
<0058E157    jmp        0058DEA3
 0058E15C    mov        eax,esi
 0058E15E    call       0058EDCC
<0058E163    jmp        0058DEA3
 0058E168    mov        eax,esi
 0058E16A    call       0058EDD4
<0058E16F    jmp        0058DEA3
 0058E174    mov        eax,esi
 0058E176    call       0058EDDC
<0058E17B    jmp        0058DEA3
 0058E180    mov        eax,esi
 0058E182    call       0058EDE4
<0058E187    jmp        0058DEA3
 0058E18C    mov        eax,esi
 0058E18E    call       0058EE20
<0058E193    jmp        0058DEA3
 0058E198    mov        eax,esi
 0058E19A    call       0058DAE8
<0058E19F    jmp        0058DEA3
 0058E1A4    mov        eax,esi
 0058E1A6    call       0058DAE8
<0058E1AB    jmp        0058DEA3
 0058E1B0    mov        eax,esi
 0058E1B2    call       0058EE28
<0058E1B7    jmp        0058DEA3
 0058E1BC    mov        eax,esi
 0058E1BE    call       0058EE30
<0058E1C3    jmp        0058DEA3
 0058E1C8    mov        eax,esi
 0058E1CA    call       0058EE44
<0058E1CF    jmp        0058DEA3
 0058E1D4    mov        eax,esi
 0058E1D6    call       0058EF4C
<0058E1DB    jmp        0058DEA3
 0058E1E0    mov        eax,esi
 0058E1E2    call       0058F128
<0058E1E7    jmp        0058DEA3
 0058E1EC    mov        eax,esi
 0058E1EE    call       0058CA34
<0058E1F3    jmp        0058DEA3
 0058E1F8    mov        eax,esi
 0058E1FA    call       0058F170
<0058E1FF    jmp        0058DEA3
 0058E204    mov        eax,esi
 0058E206    call       0058F18C
<0058E20B    jmp        0058DEA3
 0058E210    mov        eax,esi
 0058E212    call       0058F1D8
<0058E217    jmp        0058DEA3
 0058E21C    mov        eax,esi
 0058E21E    call       0058CAC4
<0058E223    jmp        0058DEA3
 0058E228    mov        eax,esi
 0058E22A    call       0058CAA0
<0058E22F    jmp        0058DEA3
 0058E234    mov        eax,esi
 0058E236    call       0058CD88
<0058E23B    jmp        0058DEA3
 0058E240    mov        eax,esi
 0058E242    call       0058CB70
<0058E247    jmp        0058DEA3
 0058E24C    mov        eax,esi
 0058E24E    call       0058CBD8
<0058E253    jmp        0058DEA3
 0058E258    mov        eax,esi
 0058E25A    call       0058CC34
<0058E25F    jmp        0058DEA3
 0058E264    mov        eax,esi
 0058E266    call       0058CC90
<0058E26B    jmp        0058DEA3
 0058E270    mov        eax,esi
 0058E272    call       0058CCEC
<0058E277    jmp        0058DEA3
 0058E27C    mov        eax,esi
 0058E27E    call       0058CD48
<0058E283    jmp        0058DEA3
 0058E288    mov        eax,esi
 0058E28A    call       0058CD68
<0058E28F    jmp        0058DEA3
 0058E294    mov        eax,esi
 0058E296    call       0058CDC4
<0058E29B    jmp        0058DEA3
 0058E2A0    mov        eax,esi
 0058E2A2    call       0058CDA4
<0058E2A7    jmp        0058DEA3
 0058E2AC    mov        eax,esi
 0058E2AE    call       0058CDE8
<0058E2B3    jmp        0058DEA3
 0058E2B8    mov        eax,esi
 0058E2BA    call       0058F344
<0058E2BF    jmp        0058DEA3
 0058E2C4    mov        eax,esi
 0058E2C6    call       0058DCA0
<0058E2CB    jmp        0058DEA3
 0058E2D0    mov        eax,esi
 0058E2D2    call       0058F3F4
<0058E2D7    jmp        0058DEA3
 0058E2DC    mov        eax,esi
 0058E2DE    call       0058F410
<0058E2E3    jmp        0058DEA3
 0058E2E8    mov        eax,esi
 0058E2EA    call       0058F42C
<0058E2EF    jmp        0058DEA3
 0058E2F4    mov        eax,esi
 0058E2F6    call       0058F450
<0058E2FB    jmp        0058DEA3
 0058E300    mov        eax,esi
 0058E302    call       0058F480
<0058E307    jmp        0058DEA3
 0058E30C    mov        eax,esi
 0058E30E    call       0058F484
<0058E313    jmp        0058DEA3
 0058E318    mov        eax,esi
 0058E31A    call       0058F488
<0058E31F    jmp        0058DEA3
 0058E324    mov        eax,esi
 0058E326    call       0058F48C
<0058E32B    jmp        0058DEA3
 0058E330    mov        eax,esi
 0058E332    call       0058F494
<0058E337    jmp        0058DEA3
 0058E33C    lea        eax,[ebp-4]
 0058E33F    push       eax
 0058E340    mov        edi,dword ptr ds:[61B830]
 0058E346    mov        edi,dword ptr [edi]
 0058E348    lea        edx,[ebp-8]
 0058E34B    mov        eax,58E3B4; 'Unexpected code [%d] found in report file.'
 0058E350    call       edi
 0058E352    mov        eax,dword ptr [ebp-8]
 0058E355    xor        edx,edx
 0058E357    mov        dl,bl
 0058E359    mov        dword ptr [ebp-10],edx
 0058E35C    mov        byte ptr [ebp-0C],0
 0058E360    lea        edx,[ebp-10]
 0058E363    xor        ecx,ecx
 0058E365    call       Format
 0058E36A    mov        eax,dword ptr [ebp-4]
 0058E36D    call       00579798
<0058E372    jmp        0058DEA3
 0058E377    mov        eax,dword ptr [esi+28]; TRPConverter.?f28:dword
 0058E37A    mov        edx,dword ptr [eax]
 0058E37C    call       dword ptr [edx+9C]
 0058E382    xor        eax,eax
 0058E384    pop        edx
 0058E385    pop        ecx
 0058E386    pop        ecx
 0058E387    mov        dword ptr fs:[eax],edx
 0058E38A    push       58E3A4
 0058E38F    lea        eax,[ebp-8]
 0058E392    mov        edx,2
 0058E397    call       @LStrArrayClr
 0058E39C    ret
<0058E39D    jmp        @HandleFinally
<0058E3A2    jmp        0058E38F
 0058E3A4    pop        edi
 0058E3A5    pop        esi
 0058E3A6    pop        ebx
 0058E3A7    mov        esp,ebp
 0058E3A9    pop        ebp
 0058E3AA    ret
*}
//end;

//0058E3E0
//function sub_0058E3E0(?:TRPConverter):?;
//begin
{*
 0058E3E0    push       ecx
 0058E3E1    mov        edx,esp
 0058E3E3    mov        ecx,1
 0058E3E8    mov        eax,dword ptr [eax+24]; TRPConverter.?f24:dword
 0058E3EB    call       TStream.ReadBuffer
 0058E3F0    mov        al,byte ptr [esp]
 0058E3F3    pop        edx
 0058E3F4    ret
*}
//end;

//0058E3F8
//function sub_0058E3F8(?:TRPConverter):?;
//begin
{*
 0058E3F8    push       ecx
 0058E3F9    mov        edx,esp
 0058E3FB    mov        ecx,4
 0058E400    mov        eax,dword ptr [eax+24]; TRPConverter.?f24:dword
 0058E403    call       TStream.ReadBuffer
 0058E408    mov        eax,dword ptr [esp]
 0058E40B    pop        edx
 0058E40C    ret
*}
//end;

//0058E410
//procedure sub_0058E410(?:TRPConverter);
//begin
{*
 0058E410    push       ebx
 0058E411    push       esi
 0058E412    mov        ebx,eax
 0058E414    mov        eax,dword ptr [ebx+24]; TRPConverter.?f24:dword
 0058E417    call       TStream.GetPosition
 0058E41C    mov        dword ptr [ebx+30],eax; TRPConverter.?f30:Int64
 0058E41F    mov        dl,50
 0058E421    mov        eax,ebx
 0058E423    call       0058DE14
 0058E428    mov        eax,ebx
 0058E42A    call       0058E3F8
 0058E42F    mov        esi,eax
 0058E431    mov        dword ptr [ebx+34],esi; TRPConverter.?f34:dword
 0058E434    mov        dword ptr [ebx+0B0],esi; TRPConverter.?fB0:dword
 0058E43A    mov        eax,ebx
 0058E43C    call       0058E3F8
 0058E441    mov        esi,eax
 0058E443    mov        dword ptr [ebx+38],esi; TRPConverter.?f38:dword
 0058E446    mov        dword ptr [ebx+0B4],esi; TRPConverter.?fB4:dword
 0058E44C    mov        eax,ebx
 0058E44E    call       0058E744
 0058E453    movsx      eax,ax
 0058E456    mov        dword ptr [ebx+18],eax; TRPConverter.?f18:dword
 0058E459    mov        ax,word ptr [ebx+18]; TRPConverter.?f18:dword
 0058E45D    mov        word ptr [ebx+0B8],ax; TRPConverter.?fB8:dword
 0058E464    cmp        word ptr [ebx+2E],7D0; TRPConverter.?f2E:word
>0058E46A    jb         0058E4B5
 0058E46C    mov        eax,ebx
 0058E46E    call       0058E72C
 0058E473    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058E476    fstp       qword ptr [eax+38]
 0058E479    wait
 0058E47A    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058E47D    mov        edx,dword ptr [eax+38]
 0058E480    mov        dword ptr [ebx+0C0],edx; TRPConverter.?fC0:dword
 0058E486    mov        edx,dword ptr [eax+3C]
 0058E489    mov        dword ptr [ebx+0C4],edx; TRPConverter.?fC4:dword
 0058E48F    mov        eax,ebx
 0058E491    call       0058E72C
 0058E496    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058E499    fstp       qword ptr [eax+40]
 0058E49C    wait
 0058E49D    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058E4A0    mov        edx,dword ptr [eax+40]
 0058E4A3    mov        dword ptr [ebx+0C8],edx; TRPConverter.?fC8:dword
 0058E4A9    mov        edx,dword ptr [eax+44]
 0058E4AC    mov        dword ptr [ebx+0CC],edx; TRPConverter.?fCC:dword
 0058E4B2    pop        esi
 0058E4B3    pop        ebx
 0058E4B4    ret
 0058E4B5    mov        eax,ebx
 0058E4B7    call       0058E3E0
 0058E4BC    mov        byte ptr [ebx+0D0],al; TRPConverter.?fD0:byte
 0058E4C2    pop        esi
 0058E4C3    pop        ebx
 0058E4C4    ret
*}
//end;

//0058E4C8
//procedure sub_0058E4C8(?:TRPConverter);
//begin
{*
 0058E4C8    push       ebp
 0058E4C9    mov        ebp,esp
 0058E4CB    xor        ecx,ecx
 0058E4CD    push       ecx
 0058E4CE    push       ecx
 0058E4CF    push       ecx
 0058E4D0    push       ecx
 0058E4D1    push       ecx
 0058E4D2    push       ecx
 0058E4D3    push       ecx
 0058E4D4    push       ebx
 0058E4D5    push       esi
 0058E4D6    push       edi
 0058E4D7    mov        esi,eax
 0058E4D9    xor        eax,eax
 0058E4DB    push       ebp
 0058E4DC    push       58E6DF
 0058E4E1    push       dword ptr fs:[eax]
 0058E4E4    mov        dword ptr fs:[eax],esp
 0058E4E7    push       0
 0058E4E9    push       0
 0058E4EB    mov        eax,dword ptr [esi+24]; TRPConverter.?f24:dword
 0058E4EE    call       TStream.SetPosition
 0058E4F3    mov        eax,esi
 0058E4F5    call       0058E3E0
 0058E4FA    mov        ebx,eax
 0058E4FC    mov        eax,ebx
 0058E4FE    sub        al,51
>0058E500    je         0058E50C
 0058E502    sub        al,8
>0058E504    je         0058E514
 0058E506    dec        al
>0058E508    je         0058E51C
>0058E50A    jmp        0058E529
 0058E50C    mov        word ptr [esi+2E],44D; TRPConverter.?f2E:word
>0058E512    jmp        0058E55F
 0058E514    mov        word ptr [esi+2E],7D9; TRPConverter.?f2E:word
>0058E51A    jmp        0058E55F
 0058E51C    mov        eax,esi
 0058E51E    call       0058E744
 0058E523    mov        word ptr [esi+2E],ax; TRPConverter.?f2E:word
>0058E527    jmp        0058E55F
 0058E529    lea        eax,[ebp-4]
 0058E52C    push       eax
 0058E52D    mov        edi,dword ptr ds:[61B830]
 0058E533    mov        edi,dword ptr [edi]
 0058E535    lea        edx,[ebp-8]
 0058E538    mov        eax,58E6F8; 'Unexpected header code [%d] found in report file.'
 0058E53D    call       edi
 0058E53F    mov        eax,dword ptr [ebp-8]
 0058E542    xor        edx,edx
 0058E544    mov        dl,bl
 0058E546    mov        dword ptr [ebp-10],edx
 0058E549    mov        byte ptr [ebp-0C],0
 0058E54D    lea        edx,[ebp-10]
 0058E550    xor        ecx,ecx
 0058E552    call       Format
 0058E557    mov        eax,dword ptr [ebp-4]
 0058E55A    call       00579798
 0058E55F    mov        ax,word ptr [esi+2E]; TRPConverter.?f2E:word
 0058E563    mov        word ptr [esi+58],ax; TRPConverter.?f58:TRPReportHeader
 0058E567    cmp        word ptr [esi+2E],7DA; TRPConverter.?f2E:word
>0058E56D    jb         0058E58F
 0058E56F    lea        edx,[ebp-14]
 0058E572    mov        eax,esi
 0058E574    call       0058E75C
 0058E579    mov        edx,dword ptr [ebp-14]
 0058E57C    lea        eax,[esi+20]; TRPConverter.?f20:String
 0058E57F    call       @LStrAsg
 0058E584    lea        eax,[esi+5C]; TRPConverter.?f5C:?
 0058E587    mov        edx,dword ptr [esi+20]; TRPConverter.?f20:String
 0058E58A    call       @LStrAsg
 0058E58F    mov        eax,1
 0058E594    mov        dword ptr [esi+18],eax; TRPConverter.?f18:dword
 0058E597    mov        dword ptr [esi+60],eax; TRPConverter.?f60:dword
 0058E59A    mov        eax,esi
 0058E59C    call       0058E744
 0058E5A1    movsx      ebx,ax
 0058E5A4    mov        dword ptr [esi+1C],ebx; TRPConverter.?f1C:dword
 0058E5A7    mov        dword ptr [esi+64],ebx; TRPConverter.?f64:dword
 0058E5AA    mov        eax,esi
 0058E5AC    call       0058E744
 0058E5B1    movsx      ebx,ax
 0058E5B4    mov        dword ptr [esi+10],ebx; TRPConverter.?f10:dword
 0058E5B7    mov        dword ptr [esi+68],ebx; TRPConverter.?f68:dword
 0058E5BA    mov        eax,esi
 0058E5BC    call       0058E744
 0058E5C1    movsx      ebx,ax
 0058E5C4    mov        dword ptr [esi+14],ebx; TRPConverter.?f14:dword
 0058E5C7    mov        dword ptr [esi+6C],ebx; TRPConverter.?f6C:dword
 0058E5CA    mov        eax,esi
 0058E5CC    call       0058E72C
 0058E5D1    fstp       qword ptr [esi+70]; TRPConverter.?f70:?Double
 0058E5D4    wait
 0058E5D5    mov        eax,esi
 0058E5D7    call       0058E72C
 0058E5DC    fstp       qword ptr [esi+78]; TRPConverter.?f78:?Double
 0058E5DF    wait
 0058E5E0    mov        eax,esi
 0058E5E2    call       0058E72C
 0058E5E7    fstp       qword ptr [esi+80]; TRPConverter.?f80:?Double
 0058E5ED    wait
 0058E5EE    mov        eax,esi
 0058E5F0    call       0058E72C
 0058E5F5    fstp       qword ptr [esi+88]; TRPConverter.?f88:?Double
 0058E5FB    wait
 0058E5FC    mov        eax,esi
 0058E5FE    call       0058E72C
 0058E603    fstp       qword ptr [esi+90]; TRPConverter.?f90:?Double
 0058E609    wait
 0058E60A    mov        eax,esi
 0058E60C    call       0058E72C
 0058E611    fstp       qword ptr [esi+98]; TRPConverter.?f98:?Double
 0058E617    wait
 0058E618    mov        eax,esi
 0058E61A    call       0058E3E0
 0058E61F    mov        byte ptr [esi+0A0],al; TRPConverter.?fA0:byte
 0058E625    cmp        word ptr [esi+2E],7D0; TRPConverter.?f2E:word
>0058E62B    jb         0058E655
 0058E62D    mov        eax,esi
 0058E62F    call       0058E744
 0058E634    mov        word ptr [esi+0A2],ax; TRPConverter.?fA2:word
 0058E63B    mov        eax,esi
 0058E63D    call       0058E3E0
 0058E642    mov        byte ptr [esi+0A4],al; TRPConverter.?fA4:byte
 0058E648    mov        eax,esi
 0058E64A    call       0058E3E0
 0058E64F    mov        byte ptr [esi+0A5],al; TRPConverter.?fA5:byte
 0058E655    mov        eax,esi
 0058E657    call       0058E744
 0058E65C    mov        word ptr [esi+0A6],ax; TRPConverter.?fA6:word
 0058E663    mov        eax,esi
 0058E665    call       0058E744
 0058E66A    mov        word ptr [esi+0A8],ax; TRPConverter.?fA8:word
 0058E671    mov        eax,esi
 0058E673    call       0058E744
 0058E678    mov        word ptr [ebp-18],ax
 0058E67C    fild       word ptr [ebp-18]
 0058E67F    fstp       qword ptr [esi+70]; TRPConverter.?f70:?Double
 0058E682    wait
 0058E683    mov        eax,esi
 0058E685    call       0058E744
 0058E68A    mov        word ptr [esi+0AA],ax; TRPConverter.?fAA:word
 0058E691    lea        edx,[ebp-1C]
 0058E694    mov        eax,esi
 0058E696    call       0058E75C
 0058E69B    mov        edx,dword ptr [ebp-1C]
 0058E69E    lea        eax,[esi+0AC]; TRPConverter.?fAC:?
 0058E6A4    call       @LStrAsg
 0058E6A9    mov        eax,dword ptr [esi+24]; TRPConverter.?f24:dword
 0058E6AC    call       TStream.GetPosition
 0058E6B1    mov        dword ptr [esi+30],eax; TRPConverter.?f30:Int64
 0058E6B4    xor        eax,eax
 0058E6B6    pop        edx
 0058E6B7    pop        ecx
 0058E6B8    pop        ecx
 0058E6B9    mov        dword ptr fs:[eax],edx
 0058E6BC    push       58E6E6
 0058E6C1    lea        eax,[ebp-1C]
 0058E6C4    call       @LStrClr
 0058E6C9    lea        eax,[ebp-14]
 0058E6CC    call       @LStrClr
 0058E6D1    lea        eax,[ebp-8]
 0058E6D4    mov        edx,2
 0058E6D9    call       @LStrArrayClr
 0058E6DE    ret
<0058E6DF    jmp        @HandleFinally
<0058E6E4    jmp        0058E6C1
 0058E6E6    pop        edi
 0058E6E7    pop        esi
 0058E6E8    pop        ebx
 0058E6E9    mov        esp,ebp
 0058E6EB    pop        ebp
 0058E6EC    ret
*}
//end;

//0058E72C
//function sub_0058E72C(?:TRPConverter):?;
//begin
{*
 0058E72C    push       ecx
 0058E72D    mov        edx,esp
 0058E72F    mov        ecx,4
 0058E734    mov        eax,dword ptr [eax+24]; TRPConverter.?f24:dword
 0058E737    call       TStream.ReadBuffer
 0058E73C    fld        dword ptr [esp]
 0058E73F    pop        edx
 0058E740    ret
*}
//end;

//0058E744
//function sub_0058E744(?:TRPConverter):?;
//begin
{*
 0058E744    push       ecx
 0058E745    mov        edx,esp
 0058E747    mov        ecx,2
 0058E74C    mov        eax,dword ptr [eax+24]; TRPConverter.?f24:dword
 0058E74F    call       TStream.ReadBuffer
 0058E754    mov        ax,word ptr [esp]
 0058E758    pop        edx
 0058E759    ret
*}
//end;

//0058E75C
//procedure sub_0058E75C(?:TRPConverter; ?:AnsiString);
//begin
{*
 0058E75C    push       ebx
 0058E75D    push       esi
 0058E75E    push       edi
 0058E75F    push       ebp
 0058E760    mov        edi,edx
 0058E762    mov        esi,eax
 0058E764    mov        eax,esi
 0058E766    call       0058E3E0
 0058E76B    xor        ebx,ebx
 0058E76D    mov        bl,al
 0058E76F    cmp        word ptr [esi+2E],7E0; TRPConverter.?f2E:word
>0058E775    jb         0058E798
 0058E777    cmp        bx,0C0
>0058E77C    jb         0058E798
 0058E77E    mov        eax,esi
 0058E780    call       0058E3E0
 0058E785    and        eax,0FF
 0058E78A    mov        edx,ebx
 0058E78C    shl        edx,8
 0058E78F    add        ax,dx
 0058E792    sub        ax,0C000
 0058E796    mov        ebx,eax
 0058E798    movzx      ebp,bx
 0058E79B    mov        edx,ebp
 0058E79D    mov        eax,edi
 0058E79F    call       @LStrSetLength
 0058E7A4    test       bx,bx
>0058E7A7    jbe        0058E7C5
 0058E7A9    mov        eax,edi
 0058E7AB    call       @UniqueStringA
 0058E7B0    mov        edx,eax
 0058E7B2    mov        ecx,ebp
 0058E7B4    mov        eax,dword ptr [esi+24]; TRPConverter.?f24:dword
 0058E7B7    call       TStream.ReadBuffer
 0058E7BC    mov        edx,edi
 0058E7BE    mov        eax,esi
 0058E7C0    call       0058F7D8
 0058E7C5    pop        ebp
 0058E7C6    pop        edi
 0058E7C7    pop        esi
 0058E7C8    pop        ebx
 0058E7C9    ret
*}
//end;

//0058E7CC
//procedure sub_0058E7CC(?:TRPConverter);
//begin
{*
 0058E7CC    push       ebx
 0058E7CD    add        esp,0FFFFFFF0
 0058E7D0    mov        ebx,eax
 0058E7D2    mov        edx,esp
 0058E7D4    mov        eax,ebx
 0058E7D6    call       0058F5D4
 0058E7DB    mov        edx,esp
 0058E7DD    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058E7E0    mov        ecx,dword ptr [eax]
 0058E7E2    call       dword ptr [ecx+84]
 0058E7E8    add        esp,10
 0058E7EB    pop        ebx
 0058E7EC    ret
*}
//end;

//0058E7F0
//procedure sub_0058E7F0(?:TRPConverter);
//begin
{*
 0058E7F0    push       ebx
 0058E7F1    mov        ebx,eax
 0058E7F3    mov        eax,ebx
 0058E7F5    call       0058E72C
 0058E7FA    fstp       st(0)
 0058E7FC    mov        eax,ebx
 0058E7FE    call       0058E72C
 0058E803    fstp       st(0)
 0058E805    mov        eax,ebx
 0058E807    call       0058E3F8
 0058E80C    mov        eax,ebx
 0058E80E    call       0058E3F8
 0058E813    pop        ebx
 0058E814    ret
*}
//end;

//0058E818
procedure sub_0058E818;
begin
{*
 0058E818    add        esp,0FFFFFFF0
 0058E81B    mov        edx,esp
 0058E81D    call       0058F5D4
 0058E822    add        esp,10
 0058E825    ret
*}
end;

//0058E828
//procedure sub_0058E828(?:TRPConverter);
//begin
{*
 0058E828    push       ebx
 0058E829    add        esp,0FFFFFFC0
 0058E82C    mov        ebx,eax
 0058E82E    mov        eax,ebx
 0058E830    call       0058E72C
 0058E835    fstp       qword ptr [esp]
 0058E838    wait
 0058E839    mov        eax,ebx
 0058E83B    call       0058E72C
 0058E840    fstp       qword ptr [esp+8]
 0058E844    wait
 0058E845    mov        eax,ebx
 0058E847    call       0058E72C
 0058E84C    fstp       qword ptr [esp+10]
 0058E850    wait
 0058E851    mov        eax,ebx
 0058E853    call       0058E72C
 0058E858    fstp       qword ptr [esp+18]
 0058E85C    wait
 0058E85D    mov        eax,ebx
 0058E85F    call       0058E72C
 0058E864    fstp       qword ptr [esp+20]
 0058E868    wait
 0058E869    mov        eax,ebx
 0058E86B    call       0058E72C
 0058E870    fstp       qword ptr [esp+28]
 0058E874    wait
 0058E875    mov        eax,ebx
 0058E877    call       0058E72C
 0058E87C    fstp       qword ptr [esp+30]
 0058E880    wait
 0058E881    mov        eax,ebx
 0058E883    call       0058E72C
 0058E888    fstp       qword ptr [esp+38]
 0058E88C    wait
 0058E88D    push       dword ptr [esp+4]
 0058E891    push       dword ptr [esp+4]
 0058E895    push       dword ptr [esp+14]
 0058E899    push       dword ptr [esp+14]
 0058E89D    push       dword ptr [esp+24]
 0058E8A1    push       dword ptr [esp+24]
 0058E8A5    push       dword ptr [esp+34]
 0058E8A9    push       dword ptr [esp+34]
 0058E8AD    push       dword ptr [esp+44]
 0058E8B1    push       dword ptr [esp+44]
 0058E8B5    push       dword ptr [esp+54]
 0058E8B9    push       dword ptr [esp+54]
 0058E8BD    push       dword ptr [esp+64]
 0058E8C1    push       dword ptr [esp+64]
 0058E8C5    push       dword ptr [esp+74]
 0058E8C9    push       dword ptr [esp+74]
 0058E8CD    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058E8D0    mov        edx,dword ptr [eax]
 0058E8D2    call       dword ptr [edx+54]
 0058E8D5    add        esp,40
 0058E8D8    pop        ebx
 0058E8D9    ret
*}
//end;

//0058E900
//procedure sub_0058E900(?:TRPConverter);
//begin
{*
 0058E900    push       ebp
 0058E901    mov        ebp,esp
 0058E903    add        esp,0FFFFFFE8
 0058E906    push       ebx
 0058E907    push       esi
 0058E908    push       edi
 0058E909    xor        edx,edx
 0058E90B    mov        dword ptr [ebp-4],edx
 0058E90E    mov        esi,eax
 0058E910    xor        eax,eax
 0058E912    push       ebp
 0058E913    push       58E9D7
 0058E918    push       dword ptr fs:[eax]
 0058E91B    mov        dword ptr fs:[eax],esp
 0058E91E    mov        eax,esi
 0058E920    call       0058E744
 0058E925    movsx      ebx,ax
 0058E928    lea        eax,[ebx+1]
 0058E92B    push       eax
 0058E92C    lea        eax,[ebp-4]
 0058E92F    mov        ecx,1
 0058E934    mov        edx,dword ptr ds:[58E8DC]; _DynArr_80_5
 0058E93A    call       @DynArraySetLength
 0058E93F    add        esp,4
 0058E942    mov        edi,ebx
 0058E944    test       edi,edi
>0058E946    jl         0058E9A6
 0058E948    inc        edi
 0058E949    xor        ebx,ebx
 0058E94B    mov        eax,esi
 0058E94D    call       0058E72C
 0058E952    fstp       qword ptr [ebp-10]
 0058E955    wait
 0058E956    mov        eax,esi
 0058E958    call       0058E72C
 0058E95D    fstp       qword ptr [ebp-18]
 0058E960    wait
 0058E961    test       ebx,ebx
>0058E963    jne        0058E979
 0058E965    push       dword ptr [ebp-0C]
 0058E968    push       dword ptr [ebp-10]
 0058E96B    push       dword ptr [ebp-14]
 0058E96E    push       dword ptr [ebp-18]
 0058E971    mov        eax,dword ptr [esi+28]; TRPConverter.?f28:dword
 0058E974    mov        edx,dword ptr [eax]
 0058E976    call       dword ptr [edx+50]
 0058E979    fld        qword ptr [ebp-10]
 0058E97C    fmul       dword ptr ds:[58E9E8]; 1248:Single
 0058E982    call       @ROUND
 0058E987    mov        edx,dword ptr [ebp-4]
 0058E98A    mov        dword ptr [edx+ebx*8],eax
 0058E98D    fld        qword ptr [ebp-18]
 0058E990    fmul       dword ptr ds:[58E9E8]; 1248:Single
 0058E996    call       @ROUND
 0058E99B    mov        edx,dword ptr [ebp-4]
 0058E99E    mov        dword ptr [edx+ebx*8+4],eax
 0058E9A2    inc        ebx
 0058E9A3    dec        edi
<0058E9A4    jne        0058E94B
 0058E9A6    mov        eax,dword ptr [ebp-4]
 0058E9A9    call       @DynArrayHigh
 0058E9AE    mov        ecx,eax
 0058E9B0    mov        edx,dword ptr [ebp-4]
 0058E9B3    mov        eax,dword ptr [esi+28]; TRPConverter.?f28:dword
 0058E9B6    mov        ebx,dword ptr [eax]
 0058E9B8    call       dword ptr [ebx+5C]
 0058E9BB    xor        eax,eax
 0058E9BD    pop        edx
 0058E9BE    pop        ecx
 0058E9BF    pop        ecx
 0058E9C0    mov        dword ptr fs:[eax],edx
 0058E9C3    push       58E9DE
 0058E9C8    lea        eax,[ebp-4]
 0058E9CB    mov        edx,dword ptr ds:[58E8DC]; _DynArr_80_5
 0058E9D1    call       @DynArrayClear
 0058E9D6    ret
<0058E9D7    jmp        @HandleFinally
<0058E9DC    jmp        0058E9C8
 0058E9DE    pop        edi
 0058E9DF    pop        esi
 0058E9E0    pop        ebx
 0058E9E1    mov        esp,ebp
 0058E9E3    pop        ebp
 0058E9E4    ret
*}
//end;

//0058EA10
//procedure sub_0058EA10(?:TRPConverter);
//begin
{*
 0058EA10    push       ebp
 0058EA11    mov        ebp,esp
 0058EA13    add        esp,0FFFFFFE8
 0058EA16    push       ebx
 0058EA17    push       esi
 0058EA18    push       edi
 0058EA19    xor        edx,edx
 0058EA1B    mov        dword ptr [ebp-4],edx
 0058EA1E    mov        esi,eax
 0058EA20    xor        eax,eax
 0058EA22    push       ebp
 0058EA23    push       58EAE7
 0058EA28    push       dword ptr fs:[eax]
 0058EA2B    mov        dword ptr fs:[eax],esp
 0058EA2E    mov        eax,esi
 0058EA30    call       0058E744
 0058EA35    movsx      ebx,ax
 0058EA38    lea        eax,[ebx+1]
 0058EA3B    push       eax
 0058EA3C    lea        eax,[ebp-4]
 0058EA3F    mov        ecx,1
 0058EA44    mov        edx,dword ptr ds:[58E9EC]; _DynArr_80_6
 0058EA4A    call       @DynArraySetLength
 0058EA4F    add        esp,4
 0058EA52    mov        edi,ebx
 0058EA54    test       edi,edi
>0058EA56    jl         0058EAB6
 0058EA58    inc        edi
 0058EA59    xor        ebx,ebx
 0058EA5B    mov        eax,esi
 0058EA5D    call       0058E72C
 0058EA62    fstp       qword ptr [ebp-10]
 0058EA65    wait
 0058EA66    mov        eax,esi
 0058EA68    call       0058E72C
 0058EA6D    fstp       qword ptr [ebp-18]
 0058EA70    wait
 0058EA71    test       ebx,ebx
>0058EA73    jne        0058EA89
 0058EA75    push       dword ptr [ebp-0C]
 0058EA78    push       dword ptr [ebp-10]
 0058EA7B    push       dword ptr [ebp-14]
 0058EA7E    push       dword ptr [ebp-18]
 0058EA81    mov        eax,dword ptr [esi+28]; TRPConverter.?f28:dword
 0058EA84    mov        edx,dword ptr [eax]
 0058EA86    call       dword ptr [edx+50]
 0058EA89    fld        qword ptr [ebp-10]
 0058EA8C    fmul       dword ptr ds:[58EAF8]; 1248:Single
 0058EA92    call       @ROUND
 0058EA97    mov        edx,dword ptr [ebp-4]
 0058EA9A    mov        dword ptr [edx+ebx*8],eax
 0058EA9D    fld        qword ptr [ebp-18]
 0058EAA0    fmul       dword ptr ds:[58EAF8]; 1248:Single
 0058EAA6    call       @ROUND
 0058EAAB    mov        edx,dword ptr [ebp-4]
 0058EAAE    mov        dword ptr [edx+ebx*8+4],eax
 0058EAB2    inc        ebx
 0058EAB3    dec        edi
<0058EAB4    jne        0058EA5B
 0058EAB6    mov        eax,dword ptr [ebp-4]
 0058EAB9    call       @DynArrayHigh
 0058EABE    mov        ecx,eax
 0058EAC0    mov        edx,dword ptr [ebp-4]
 0058EAC3    mov        eax,dword ptr [esi+28]; TRPConverter.?f28:dword
 0058EAC6    mov        ebx,dword ptr [eax]
 0058EAC8    call       dword ptr [ebx+58]
 0058EACB    xor        eax,eax
 0058EACD    pop        edx
 0058EACE    pop        ecx
 0058EACF    pop        ecx
 0058EAD0    mov        dword ptr fs:[eax],edx
 0058EAD3    push       58EAEE
 0058EAD8    lea        eax,[ebp-4]
 0058EADB    mov        edx,dword ptr ds:[58E9EC]; _DynArr_80_6
 0058EAE1    call       @DynArrayClear
 0058EAE6    ret
<0058EAE7    jmp        @HandleFinally
<0058EAEC    jmp        0058EAD8
 0058EAEE    pop        edi
 0058EAEF    pop        esi
 0058EAF0    pop        ebx
 0058EAF1    mov        esp,ebp
 0058EAF3    pop        ebp
 0058EAF4    ret
*}
//end;

//0058EAFC
//procedure sub_0058EAFC(?:TRPConverter);
//begin
{*
 0058EAFC    push       ebp
 0058EAFD    mov        ebp,esp
 0058EAFF    add        esp,0FFFFFFD8
 0058EB02    push       ebx
 0058EB03    mov        ebx,eax
 0058EB05    lea        edx,[ebp-4]
 0058EB08    mov        eax,ebx
 0058EB0A    mov        ecx,dword ptr [eax]
 0058EB0C    call       dword ptr [ecx]; TRPConverter.sub_0058F610
 0058EB0E    xor        eax,eax
 0058EB10    push       ebp
 0058EB11    push       58EB8E
 0058EB16    push       dword ptr fs:[eax]
 0058EB19    mov        dword ptr fs:[eax],esp
 0058EB1C    mov        eax,ebx
 0058EB1E    call       0058E72C
 0058EB23    fstp       qword ptr [ebp-10]
 0058EB26    wait
 0058EB27    mov        eax,ebx
 0058EB29    call       0058E72C
 0058EB2E    fstp       qword ptr [ebp-18]
 0058EB31    wait
 0058EB32    mov        eax,ebx
 0058EB34    call       0058E72C
 0058EB39    fstp       qword ptr [ebp-20]
 0058EB3C    wait
 0058EB3D    mov        eax,ebx
 0058EB3F    call       0058E72C
 0058EB44    fstp       qword ptr [ebp-28]
 0058EB47    wait
 0058EB48    push       dword ptr [ebp-0C]
 0058EB4B    push       dword ptr [ebp-10]
 0058EB4E    push       dword ptr [ebp-14]
 0058EB51    push       dword ptr [ebp-18]
 0058EB54    push       dword ptr [ebp-1C]
 0058EB57    push       dword ptr [ebp-20]
 0058EB5A    push       dword ptr [ebp-24]
 0058EB5D    push       dword ptr [ebp-28]
 0058EB60    mov        eax,dword ptr [ebp-4]
 0058EB63    mov        edx,dword ptr ds:[42A4BC]; TBitmap
 0058EB69    call       @AsClass
 0058EB6E    mov        edx,eax
 0058EB70    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058EB73    mov        ecx,dword ptr [eax]
 0058EB75    call       dword ptr [ecx+70]
 0058EB78    xor        eax,eax
 0058EB7A    pop        edx
 0058EB7B    pop        ecx
 0058EB7C    pop        ecx
 0058EB7D    mov        dword ptr fs:[eax],edx
 0058EB80    push       58EB95
 0058EB85    mov        eax,dword ptr [ebp-4]
 0058EB88    call       TObject.Free
 0058EB8D    ret
<0058EB8E    jmp        @HandleFinally
<0058EB93    jmp        0058EB85
 0058EB95    pop        ebx
 0058EB96    mov        esp,ebp
 0058EB98    pop        ebp
 0058EB99    ret
*}
//end;

//0058EB9C
//procedure sub_0058EB9C(?:TRPConverter);
//begin
{*
 0058EB9C    push       ebp
 0058EB9D    mov        ebp,esp
 0058EB9F    add        esp,0FFFFFFD8
 0058EBA2    push       ebx
 0058EBA3    mov        ebx,eax
 0058EBA5    lea        edx,[ebp-4]
 0058EBA8    mov        eax,ebx
 0058EBAA    mov        ecx,dword ptr [eax]
 0058EBAC    call       dword ptr [ecx]; TRPConverter.sub_0058F610
 0058EBAE    xor        eax,eax
 0058EBB0    push       ebp
 0058EBB1    push       58EC33
 0058EBB6    push       dword ptr fs:[eax]
 0058EBB9    mov        dword ptr fs:[eax],esp
 0058EBBC    mov        eax,ebx
 0058EBBE    call       0058E72C
 0058EBC3    fstp       qword ptr [ebp-10]
 0058EBC6    wait
 0058EBC7    mov        eax,ebx
 0058EBC9    call       0058E72C
 0058EBCE    fstp       qword ptr [ebp-20]
 0058EBD1    wait
 0058EBD2    mov        eax,ebx
 0058EBD4    call       0058E72C
 0058EBD9    fstp       qword ptr [ebp-18]
 0058EBDC    wait
 0058EBDD    mov        eax,ebx
 0058EBDF    call       0058E72C
 0058EBE4    fstp       qword ptr [ebp-28]
 0058EBE7    wait
 0058EBE8    push       dword ptr [ebp-0C]
 0058EBEB    push       dword ptr [ebp-10]
 0058EBEE    push       dword ptr [ebp-1C]
 0058EBF1    push       dword ptr [ebp-20]
 0058EBF4    push       dword ptr [ebp-14]
 0058EBF7    push       dword ptr [ebp-18]
 0058EBFA    push       dword ptr [ebp-24]
 0058EBFD    push       dword ptr [ebp-28]
 0058EC00    mov        eax,dword ptr [ebp-4]
 0058EC03    mov        edx,dword ptr ds:[42A4BC]; TBitmap
 0058EC09    call       @AsClass
 0058EC0E    mov        edx,eax
 0058EC10    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058EC13    mov        ecx,dword ptr [eax]
 0058EC15    call       dword ptr [ecx+6C]
 0058EC18    xor        eax,eax
 0058EC1A    pop        edx
 0058EC1B    pop        ecx
 0058EC1C    pop        ecx
 0058EC1D    mov        dword ptr fs:[eax],edx
 0058EC20    push       58EC3A
 0058EC25    mov        eax,dword ptr [ebp-4]
 0058EC28    call       TObject.Free
 0058EC2D    xor        eax,eax
 0058EC2F    mov        dword ptr [ebp-4],eax
 0058EC32    ret
<0058EC33    jmp        @HandleFinally
<0058EC38    jmp        0058EC25
 0058EC3A    pop        ebx
 0058EC3B    mov        esp,ebp
 0058EC3D    pop        ebp
 0058EC3E    ret
*}
//end;

//0058EC40
//procedure sub_0058EC40(?:TRPConverter);
//begin
{*
 0058EC40    push       ebx
 0058EC41    add        esp,0FFFFFFE8
 0058EC44    mov        ebx,eax
 0058EC46    mov        eax,ebx
 0058EC48    call       0058E72C
 0058EC4D    fstp       dword ptr [esp]
 0058EC50    wait
 0058EC51    mov        eax,ebx
 0058EC53    call       0058E72C
 0058EC58    fstp       dword ptr [esp+0C]
 0058EC5C    wait
 0058EC5D    mov        eax,ebx
 0058EC5F    call       0058E72C
 0058EC64    fstp       dword ptr [esp+4]
 0058EC68    wait
 0058EC69    mov        eax,ebx
 0058EC6B    call       0058E72C
 0058EC70    fstp       dword ptr [esp+10]
 0058EC74    wait
 0058EC75    mov        eax,ebx
 0058EC77    call       0058E72C
 0058EC7C    fstp       dword ptr [esp+8]
 0058EC80    wait
 0058EC81    mov        eax,ebx
 0058EC83    call       0058E72C
 0058EC88    fstp       dword ptr [esp+14]
 0058EC8C    wait
 0058EC8D    fld        dword ptr [esp]
 0058EC90    add        esp,0FFFFFFF8
 0058EC93    fstp       qword ptr [esp]
 0058EC96    wait
 0058EC97    fld        dword ptr [esp+14]
 0058EC9B    add        esp,0FFFFFFF8
 0058EC9E    fstp       qword ptr [esp]
 0058ECA1    wait
 0058ECA2    fld        dword ptr [esp+14]
 0058ECA6    add        esp,0FFFFFFF8
 0058ECA9    fstp       qword ptr [esp]
 0058ECAC    wait
 0058ECAD    fld        dword ptr [esp+28]
 0058ECB1    add        esp,0FFFFFFF8
 0058ECB4    fstp       qword ptr [esp]
 0058ECB7    wait
 0058ECB8    fld        dword ptr [esp+28]
 0058ECBC    add        esp,0FFFFFFF8
 0058ECBF    fstp       qword ptr [esp]
 0058ECC2    wait
 0058ECC3    fld        dword ptr [esp+3C]
 0058ECC7    add        esp,0FFFFFFF8
 0058ECCA    fstp       qword ptr [esp]
 0058ECCD    wait
 0058ECCE    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058ECD1    mov        edx,dword ptr [eax]
 0058ECD3    call       dword ptr [edx+8C]
 0058ECD9    add        esp,18
 0058ECDC    pop        ebx
 0058ECDD    ret
*}
//end;

//0058ECE0
//procedure sub_0058ECE0(?:TRPConverter);
//begin
{*
 0058ECE0    push       ebp
 0058ECE1    mov        ebp,esp
 0058ECE3    add        esp,0FFFFFFEC
 0058ECE6    push       ebx
 0058ECE7    mov        ebx,eax
 0058ECE9    lea        edx,[ebp-4]
 0058ECEC    mov        eax,ebx
 0058ECEE    mov        ecx,dword ptr [eax]
 0058ECF0    call       dword ptr [ecx]; TRPConverter.sub_0058F610
 0058ECF2    xor        eax,eax
 0058ECF4    push       ebp
 0058ECF5    push       58ED2E
 0058ECFA    push       dword ptr fs:[eax]
 0058ECFD    mov        dword ptr fs:[eax],esp
 0058ED00    lea        edx,[ebp-14]
 0058ED03    mov        eax,ebx
 0058ED05    call       0058F5D4
 0058ED0A    lea        edx,[ebp-14]
 0058ED0D    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058ED10    mov        ecx,dword ptr [ebp-4]
 0058ED13    mov        ebx,dword ptr [eax]
 0058ED15    call       dword ptr [ebx+74]
 0058ED18    xor        eax,eax
 0058ED1A    pop        edx
 0058ED1B    pop        ecx
 0058ED1C    pop        ecx
 0058ED1D    mov        dword ptr fs:[eax],edx
 0058ED20    push       58ED35
 0058ED25    mov        eax,dword ptr [ebp-4]
 0058ED28    call       TObject.Free
 0058ED2D    ret
<0058ED2E    jmp        @HandleFinally
<0058ED33    jmp        0058ED25
 0058ED35    pop        ebx
 0058ED36    mov        esp,ebp
 0058ED38    pop        ebp
 0058ED39    ret
*}
//end;

//0058ED3C
//procedure sub_0058ED3C(?:TRPConverter);
//begin
{*
 0058ED3C    push       ebp
 0058ED3D    mov        ebp,esp
 0058ED3F    add        esp,0FFFFFFDC
 0058ED42    push       ebx
 0058ED43    xor        edx,edx
 0058ED45    mov        dword ptr [ebp-14],edx
 0058ED48    mov        ebx,eax
 0058ED4A    xor        eax,eax
 0058ED4C    push       ebp
 0058ED4D    push       58EDB5
 0058ED52    push       dword ptr fs:[eax]
 0058ED55    mov        dword ptr fs:[eax],esp
 0058ED58    lea        edx,[ebp-24]
 0058ED5B    mov        eax,ebx
 0058ED5D    call       0058F5D4
 0058ED62    mov        eax,ebx
 0058ED64    call       0058E72C
 0058ED69    fstp       qword ptr [ebp-8]
 0058ED6C    wait
 0058ED6D    mov        eax,ebx
 0058ED6F    call       0058E72C
 0058ED74    fstp       qword ptr [ebp-10]
 0058ED77    wait
 0058ED78    lea        edx,[ebp-14]
 0058ED7B    mov        eax,ebx
 0058ED7D    call       0058E75C
 0058ED82    push       dword ptr [ebp-4]
 0058ED85    push       dword ptr [ebp-8]
 0058ED88    push       dword ptr [ebp-0C]
 0058ED8B    push       dword ptr [ebp-10]
 0058ED8E    mov        ecx,dword ptr [ebp-14]
 0058ED91    lea        edx,[ebp-24]
 0058ED94    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058ED97    mov        ebx,dword ptr [eax]
 0058ED99    call       dword ptr [ebx+88]
 0058ED9F    xor        eax,eax
 0058EDA1    pop        edx
 0058EDA2    pop        ecx
 0058EDA3    pop        ecx
 0058EDA4    mov        dword ptr fs:[eax],edx
 0058EDA7    push       58EDBC
 0058EDAC    lea        eax,[ebp-14]
 0058EDAF    call       @LStrClr
 0058EDB4    ret
<0058EDB5    jmp        @HandleFinally
<0058EDBA    jmp        0058EDAC
 0058EDBC    pop        ebx
 0058EDBD    mov        esp,ebp
 0058EDBF    pop        ebp
 0058EDC0    ret
*}
//end;

//0058EDC4
procedure sub_0058EDC4;
begin
{*
 0058EDC4    call       0058E3E0
 0058EDC9    ret
*}
end;

//0058EDCC
procedure sub_0058EDCC;
begin
{*
 0058EDCC    call       0058E3F8
 0058EDD1    ret
*}
end;

//0058EDD4
procedure sub_0058EDD4;
begin
{*
 0058EDD4    call       0058E72C
 0058EDD9    fstp       st(0)
 0058EDDB    ret
*}
end;

//0058EDDC
procedure sub_0058EDDC;
begin
{*
 0058EDDC    call       0058E72C
 0058EDE1    fstp       st(0)
 0058EDE3    ret
*}
end;

//0058EDE4
procedure sub_0058EDE4;
begin
{*
 0058EDE4    push       ebp
 0058EDE5    mov        ebp,esp
 0058EDE7    push       0
 0058EDE9    xor        edx,edx
 0058EDEB    push       ebp
 0058EDEC    push       58EE15
 0058EDF1    push       dword ptr fs:[edx]
 0058EDF4    mov        dword ptr fs:[edx],esp
 0058EDF7    lea        edx,[ebp-4]
 0058EDFA    call       0058E75C
 0058EDFF    xor        eax,eax
 0058EE01    pop        edx
 0058EE02    pop        ecx
 0058EE03    pop        ecx
 0058EE04    mov        dword ptr fs:[eax],edx
 0058EE07    push       58EE1C
 0058EE0C    lea        eax,[ebp-4]
 0058EE0F    call       @LStrClr
 0058EE14    ret
<0058EE15    jmp        @HandleFinally
<0058EE1A    jmp        0058EE0C
 0058EE1C    pop        ecx
 0058EE1D    pop        ebp
 0058EE1E    ret
*}
end;

//0058EE20
procedure sub_0058EE20;
begin
{*
 0058EE20    call       0058E3F8
 0058EE25    ret
*}
end;

//0058EE28
procedure sub_0058EE28;
begin
{*
 0058EE28    call       0058E3E0
 0058EE2D    ret
*}
end;

//0058EE30
//procedure sub_0058EE30(?:TRPConverter);
//begin
{*
 0058EE30    push       ebx
 0058EE31    mov        ebx,eax
 0058EE33    mov        eax,ebx
 0058EE35    call       0058E3E0
 0058EE3A    mov        edx,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058EE3D    mov        byte ptr [edx+50],al
 0058EE40    pop        ebx
 0058EE41    ret
*}
//end;

//0058EE44
//procedure sub_0058EE44(?:TRPConverter);
//begin
{*
 0058EE44    push       ebp
 0058EE45    mov        ebp,esp
 0058EE47    add        esp,0FFFFFFD8
 0058EE4A    push       ebx
 0058EE4B    xor        edx,edx
 0058EE4D    mov        dword ptr [ebp-8],edx
 0058EE50    mov        ebx,eax
 0058EE52    xor        eax,eax
 0058EE54    push       ebp
 0058EE55    push       58EF40
 0058EE5A    push       dword ptr fs:[eax]
 0058EE5D    mov        dword ptr fs:[eax],esp
 0058EE60    mov        dl,1
 0058EE62    mov        eax,[0041CBF8]; TMemoryStream
 0058EE67    call       TObject.Create; TMemoryStream.Create
 0058EE6C    mov        dword ptr [ebp-4],eax
 0058EE6F    xor        eax,eax
 0058EE71    push       ebp
 0058EE72    push       58EF23
 0058EE77    push       dword ptr fs:[eax]
 0058EE7A    mov        dword ptr fs:[eax],esp
 0058EE7D    mov        eax,ebx
 0058EE7F    call       0058E3F8
 0058EE84    mov        edx,eax
 0058EE86    mov        eax,dword ptr [ebp-4]
 0058EE89    mov        ecx,dword ptr [eax]
 0058EE8B    call       dword ptr [ecx+4]; TMemoryStream.SetSize
 0058EE8E    mov        eax,dword ptr [ebp-4]
 0058EE91    mov        edx,dword ptr [eax]
 0058EE93    call       dword ptr [edx]; TStream.GetSize
 0058EE95    mov        ecx,eax
 0058EE97    mov        eax,dword ptr [ebp-4]
 0058EE9A    mov        edx,dword ptr [eax+4]; TMemoryStream.FMemory:Pointer
 0058EE9D    mov        eax,dword ptr [ebx+24]; TRPConverter.?f24:dword
 0058EEA0    call       TStream.ReadBuffer
 0058EEA5    push       0
 0058EEA7    push       0
 0058EEA9    mov        eax,dword ptr [ebp-4]
 0058EEAC    call       TStream.SetPosition
 0058EEB1    lea        edx,[ebp-8]
 0058EEB4    mov        eax,ebx
 0058EEB6    call       0058E75C
 0058EEBB    mov        eax,ebx
 0058EEBD    call       0058E72C
 0058EEC2    fstp       qword ptr [ebp-10]
 0058EEC5    wait
 0058EEC6    mov        eax,ebx
 0058EEC8    call       0058E72C
 0058EECD    fstp       qword ptr [ebp-18]
 0058EED0    wait
 0058EED1    mov        eax,ebx
 0058EED3    call       0058E72C
 0058EED8    fstp       qword ptr [ebp-20]
 0058EEDB    wait
 0058EEDC    mov        eax,ebx
 0058EEDE    call       0058E72C
 0058EEE3    fstp       qword ptr [ebp-28]
 0058EEE6    wait
 0058EEE7    push       dword ptr [ebp-0C]
 0058EEEA    push       dword ptr [ebp-10]
 0058EEED    push       dword ptr [ebp-14]
 0058EEF0    push       dword ptr [ebp-18]
 0058EEF3    push       dword ptr [ebp-1C]
 0058EEF6    push       dword ptr [ebp-20]
 0058EEF9    push       dword ptr [ebp-24]
 0058EEFC    push       dword ptr [ebp-28]
 0058EEFF    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058EF02    mov        ecx,dword ptr [ebp-8]
 0058EF05    mov        edx,dword ptr [ebp-4]
 0058EF08    mov        ebx,dword ptr [eax]
 0058EF0A    call       dword ptr [ebx+68]
 0058EF0D    xor        eax,eax
 0058EF0F    pop        edx
 0058EF10    pop        ecx
 0058EF11    pop        ecx
 0058EF12    mov        dword ptr fs:[eax],edx
 0058EF15    push       58EF2A
 0058EF1A    mov        eax,dword ptr [ebp-4]
 0058EF1D    call       TObject.Free
 0058EF22    ret
<0058EF23    jmp        @HandleFinally
<0058EF28    jmp        0058EF1A
 0058EF2A    xor        eax,eax
 0058EF2C    pop        edx
 0058EF2D    pop        ecx
 0058EF2E    pop        ecx
 0058EF2F    mov        dword ptr fs:[eax],edx
 0058EF32    push       58EF47
 0058EF37    lea        eax,[ebp-8]
 0058EF3A    call       @LStrClr
 0058EF3F    ret
<0058EF40    jmp        @HandleFinally
<0058EF45    jmp        0058EF37
 0058EF47    pop        ebx
 0058EF48    mov        esp,ebp
 0058EF4A    pop        ebp
 0058EF4B    ret
*}
//end;

//0058EF4C
//procedure sub_0058EF4C(?:TRPConverter);
//begin
{*
 0058EF4C    push       ebp
 0058EF4D    mov        ebp,esp
 0058EF4F    push       0
 0058EF51    push       0
 0058EF53    push       ebx
 0058EF54    mov        ebx,eax
 0058EF56    xor        eax,eax
 0058EF58    push       ebp
 0058EF59    push       58EFA0
 0058EF5E    push       dword ptr fs:[eax]
 0058EF61    mov        dword ptr fs:[eax],esp
 0058EF64    lea        edx,[ebp-4]
 0058EF67    mov        eax,ebx
 0058EF69    call       0058E75C
 0058EF6E    lea        edx,[ebp-8]
 0058EF71    mov        eax,ebx
 0058EF73    call       0058F060
 0058EF78    mov        ecx,dword ptr [ebp-8]
 0058EF7B    mov        edx,dword ptr [ebp-4]
 0058EF7E    mov        eax,ebx
 0058EF80    call       0058FBF0
 0058EF85    xor        eax,eax
 0058EF87    pop        edx
 0058EF88    pop        ecx
 0058EF89    pop        ecx
 0058EF8A    mov        dword ptr fs:[eax],edx
 0058EF8D    push       58EFA7
 0058EF92    lea        eax,[ebp-8]
 0058EF95    mov        edx,2
 0058EF9A    call       @LStrArrayClr
 0058EF9F    ret
<0058EFA0    jmp        @HandleFinally
<0058EFA5    jmp        0058EF92
 0058EFA7    pop        ebx
 0058EFA8    pop        ecx
 0058EFA9    pop        ecx
 0058EFAA    pop        ebp
 0058EFAB    ret
*}
//end;

//0058EFAC
//procedure sub_0058EFAC(?:TRPConverter; ?:AnsiString; ?:AnsiString);
//begin
{*
 0058EFAC    push       ebp
 0058EFAD    mov        ebp,esp
 0058EFAF    add        esp,0FFFFFFF0
 0058EFB2    push       ebx
 0058EFB3    push       esi
 0058EFB4    push       edi
 0058EFB5    xor        ebx,ebx
 0058EFB7    mov        dword ptr [ebp-10],ebx
 0058EFBA    mov        dword ptr [ebp-0C],ecx
 0058EFBD    mov        dword ptr [ebp-8],edx
 0058EFC0    mov        dword ptr [ebp-4],eax
 0058EFC3    mov        eax,dword ptr [ebp-8]
 0058EFC6    call       @LStrAddRef
 0058EFCB    xor        eax,eax
 0058EFCD    push       ebp
 0058EFCE    push       58F051
 0058EFD3    push       dword ptr fs:[eax]
 0058EFD6    mov        dword ptr fs:[eax],esp
 0058EFD9    mov        eax,dword ptr [ebp-0C]
 0058EFDC    call       @LStrClr
 0058EFE1    mov        eax,dword ptr [ebp-4]
 0058EFE4    mov        eax,dword ptr [eax+50]; TRPConverter.?f50:TStringList
 0058EFE7    mov        edx,dword ptr [eax]
 0058EFE9    call       dword ptr [edx+14]; TStringList.GetCount
 0058EFEC    mov        esi,eax
 0058EFEE    dec        esi
 0058EFEF    test       esi,esi
>0058EFF1    jl         0058F033
 0058EFF3    inc        esi
 0058EFF4    xor        ebx,ebx
 0058EFF6    lea        ecx,[ebp-10]
 0058EFF9    mov        eax,dword ptr [ebp-4]
 0058EFFC    mov        eax,dword ptr [eax+50]; TRPConverter.?f50:TStringList
 0058EFFF    mov        edx,ebx
 0058F001    mov        edi,dword ptr [eax]
 0058F003    call       dword ptr [edi+0C]; TStringList.Get
 0058F006    mov        eax,dword ptr [ebp-10]
 0058F009    mov        edx,dword ptr [ebp-8]
 0058F00C    call       CompareText
 0058F011    test       eax,eax
>0058F013    jne        0058F02F
 0058F015    mov        eax,dword ptr [ebp-4]
 0058F018    mov        eax,dword ptr [eax+50]; TRPConverter.?f50:TStringList
 0058F01B    mov        edx,ebx
 0058F01D    mov        ecx,dword ptr [eax]
 0058F01F    call       dword ptr [ecx+18]; TStringList.GetObject
 0058F022    mov        edx,dword ptr [eax+4]
 0058F025    mov        eax,dword ptr [ebp-0C]
 0058F028    call       @LStrAsg
>0058F02D    jmp        0058F033
 0058F02F    inc        ebx
 0058F030    dec        esi
<0058F031    jne        0058EFF6
 0058F033    xor        eax,eax
 0058F035    pop        edx
 0058F036    pop        ecx
 0058F037    pop        ecx
 0058F038    mov        dword ptr fs:[eax],edx
 0058F03B    push       58F058
 0058F040    lea        eax,[ebp-10]
 0058F043    call       @LStrClr
 0058F048    lea        eax,[ebp-8]
 0058F04B    call       @LStrClr
 0058F050    ret
<0058F051    jmp        @HandleFinally
<0058F056    jmp        0058F040
 0058F058    pop        edi
 0058F059    pop        esi
 0058F05A    pop        ebx
 0058F05B    mov        esp,ebp
 0058F05D    pop        ebp
 0058F05E    ret
*}
//end;

//0058F060
//procedure sub_0058F060(?:TRPConverter; ?:AnsiString);
//begin
{*
 0058F060    push       ebx
 0058F061    push       esi
 0058F062    push       edi
 0058F063    add        esp,0FFFFFF7C
 0058F069    mov        edi,edx
 0058F06B    mov        esi,eax
 0058F06D    mov        eax,esi
 0058F06F    call       0058E3E0
 0058F074    mov        byte ptr [esp],al
 0058F077    mov        eax,esi
 0058F079    call       0058E3E0
 0058F07E    mov        ebx,eax
 0058F080    xor        ecx,ecx
 0058F082    mov        cl,byte ptr [esp]
 0058F085    lea        edx,[esp+4]
 0058F089    mov        eax,esi
 0058F08B    call       0058F4D0
 0058F090    mov        eax,ebx
 0058F092    add        al,2
 0058F094    sub        al,2
>0058F096    jae        0058F0CE
 0058F098    mov        eax,dword ptr [esi+24]; TRPConverter.?f24:dword
 0058F09B    call       TStream.GetPosition
 0058F0A0    mov        ebx,eax
 0058F0A2    mov        eax,dword ptr [esp+4]
 0058F0A6    cdq
 0058F0A7    xor        eax,edx
 0058F0A9    sub        eax,edx
 0058F0AB    cdq
 0058F0AC    push       edx
 0058F0AD    push       eax
 0058F0AE    mov        eax,dword ptr [esi+24]; TRPConverter.?f24:dword
 0058F0B1    call       TStream.SetPosition
 0058F0B6    mov        edx,edi
 0058F0B8    mov        eax,esi
 0058F0BA    call       0058F060
 0058F0BF    mov        eax,ebx
 0058F0C1    cdq
 0058F0C2    push       edx
 0058F0C3    push       eax
 0058F0C4    mov        eax,dword ptr [esi+24]; TRPConverter.?f24:dword
 0058F0C7    call       TStream.SetPosition
>0058F0CC    jmp        0058F0F7
 0058F0CE    mov        esi,ebx
 0058F0D0    and        esi,0FF
 0058F0D6    mov        edx,esi
 0058F0D8    mov        eax,edi
 0058F0DA    call       @LStrSetLength
 0058F0DF    test       bl,bl
>0058F0E1    jbe        0058F0F7
 0058F0E3    mov        eax,edi
 0058F0E5    call       @UniqueStringA
 0058F0EA    mov        edx,eax
 0058F0EC    mov        ecx,esi
 0058F0EE    lea        eax,[esp+4]
 0058F0F2    call       Move
 0058F0F7    add        esp,84
 0058F0FD    pop        edi
 0058F0FE    pop        esi
 0058F0FF    pop        ebx
 0058F100    ret
*}
//end;

//0058F104
//procedure sub_0058F104(?:TRPConverter; ?:TBitmap);
//begin
{*
 0058F104    push       ebx
 0058F105    push       esi
 0058F106    mov        esi,edx
 0058F108    mov        ebx,eax
 0058F10A    mov        eax,ebx
 0058F10C    call       0058E3E0
 0058F111    cmp        al,80
 0058F113    seta       al
 0058F116    mov        byte ptr [ebx+2C],al; TRPConverter.?f2C:byte
 0058F119    mov        edx,esi
 0058F11B    mov        eax,ebx
 0058F11D    mov        ecx,dword ptr [eax]
 0058F11F    call       dword ptr [ecx+4]; TRPConverter.sub_0058F674
 0058F122    pop        esi
 0058F123    pop        ebx
 0058F124    ret
*}
//end;

//0058F128
//procedure sub_0058F128(?:TRPConverter);
//begin
{*
 0058F128    push       ebx
 0058F129    push       esi
 0058F12A    mov        ebx,eax
 0058F12C    mov        esi,dword ptr [ebx+17C]; TRPConverter.?f17C:TBrush
 0058F132    mov        eax,ebx
 0058F134    call       0058E3F8
 0058F139    mov        edx,eax
 0058F13B    mov        eax,esi
 0058F13D    call       TBrush.SetColor
 0058F142    mov        eax,ebx
 0058F144    call       0058E3E0
 0058F149    mov        edx,eax
 0058F14B    mov        eax,esi
 0058F14D    call       TBrush.SetStyle
 0058F152    mov        eax,ebx
 0058F154    call       0058E3E0
 0058F159    test       al,al
>0058F15B    je         0058F16D
 0058F15D    mov        eax,esi
 0058F15F    call       TBrush.GetBitmap
 0058F164    mov        edx,eax
 0058F166    mov        eax,ebx
 0058F168    call       0058F104
 0058F16D    pop        esi
 0058F16E    pop        ebx
 0058F16F    ret
*}
//end;

//0058F170
//procedure sub_0058F170(?:TRPConverter);
//begin
{*
 0058F170    push       ebx
 0058F171    mov        ebx,eax
 0058F173    mov        eax,ebx
 0058F175    call       0058E3E0
 0058F17A    mov        edx,eax
 0058F17C    mov        eax,dword ptr [ebx+17C]; TRPConverter.?f17C:TBrush
 0058F182    call       TBrush.SetStyle
 0058F187    pop        ebx
 0058F188    ret
*}
//end;

//0058F18C
//procedure sub_0058F18C(?:TRPConverter);
//begin
{*
 0058F18C    push       ebx
 0058F18D    mov        ebx,eax
 0058F18F    mov        eax,ebx
 0058F191    call       0058E3E0
 0058F196    test       al,al
>0058F198    je         0058F1D6
 0058F19A    mov        eax,dword ptr [ebx+17C]; TRPConverter.?f17C:TBrush
 0058F1A0    call       TBrush.GetBitmap
 0058F1A5    test       eax,eax
>0058F1A7    jne        0058F1C2
 0058F1A9    mov        dl,1
 0058F1AB    mov        eax,[0042A4BC]; TBitmap
 0058F1B0    call       TBitmap.Create; TBitmap.Create
 0058F1B5    mov        edx,eax
 0058F1B7    mov        eax,dword ptr [ebx+17C]; TRPConverter.?f17C:TBrush
 0058F1BD    call       TBrush.SetBitmap
 0058F1C2    mov        eax,dword ptr [ebx+17C]; TRPConverter.?f17C:TBrush
 0058F1C8    call       TBrush.GetBitmap
 0058F1CD    mov        edx,eax
 0058F1CF    mov        eax,ebx
 0058F1D1    call       0058F104
 0058F1D6    pop        ebx
 0058F1D7    ret
*}
//end;

//0058F1D8
//procedure sub_0058F1D8(?:TRPConverter);
//begin
{*
 0058F1D8    push       ebp
 0058F1D9    mov        ebp,esp
 0058F1DB    add        esp,0FFFFFFF8
 0058F1DE    push       ebx
 0058F1DF    push       esi
 0058F1E0    xor        edx,edx
 0058F1E2    mov        dword ptr [ebp-4],edx
 0058F1E5    mov        ebx,eax
 0058F1E7    xor        eax,eax
 0058F1E9    push       ebp
 0058F1EA    push       58F32A
 0058F1EF    push       dword ptr fs:[eax]
 0058F1F2    mov        dword ptr fs:[eax],esp
 0058F1F5    mov        esi,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058F1FB    lea        edx,[ebp-4]
 0058F1FE    mov        eax,ebx
 0058F200    call       0058E75C
 0058F205    mov        edx,dword ptr [ebp-4]
 0058F208    mov        eax,esi
 0058F20A    call       TFont.SetName
 0058F20F    mov        eax,ebx
 0058F211    call       0058E3F8
 0058F216    mov        edx,eax
 0058F218    mov        eax,esi
 0058F21A    call       TFont.SetColor
 0058F21F    mov        eax,ebx
 0058F221    call       0058E3E0
 0058F226    mov        edx,eax
 0058F228    mov        eax,esi
 0058F22A    call       TFont.SetPitch
 0058F22F    cmp        word ptr [ebx+2E],7E1; TRPConverter.?f2E:word
>0058F235    jbe        0058F249
 0058F237    mov        eax,ebx
 0058F239    call       0058E3E0
 0058F23E    mov        edx,eax
 0058F240    mov        eax,esi
 0058F242    call       TFont.SetCharset
>0058F247    jmp        0058F252
 0058F249    mov        dl,1
 0058F24B    mov        eax,esi
 0058F24D    call       TFont.SetCharset
 0058F252    mov        eax,ebx
 0058F254    call       0058E72C
 0058F259    fstp       qword ptr [ebx+138]; TRPConverter.?f138:?Double
 0058F25F    wait
 0058F260    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058F263    mov        edx,dword ptr [eax]
 0058F265    call       dword ptr [edx+0A0]
 0058F26B    mov        dword ptr [ebp-8],eax
 0058F26E    fild       dword ptr [ebp-8]
 0058F271    fmul       qword ptr [ebx+138]; TRPConverter.?f138:?Double
 0058F277    call       @ROUND
 0058F27C    mov        edx,eax
 0058F27E    mov        eax,dword ptr [ebx+0E0]; TRPConverter.?fE0:TFont
 0058F284    call       TFont.SetSize
 0058F289    mov        eax,ebx
 0058F28B    call       0058E3E0
 0058F290    test       al,al
>0058F292    je         0058F2AA
 0058F294    mov        eax,esi
 0058F296    call       TFont.GetStyle
 0058F29B    mov        edx,eax
 0058F29D    or         dl,byte ptr ds:[58F338]; 0x1
 0058F2A3    mov        eax,esi
 0058F2A5    call       TFont.SetStyle
 0058F2AA    mov        eax,ebx
 0058F2AC    call       0058E3E0
 0058F2B1    test       al,al
>0058F2B3    je         0058F2CB
 0058F2B5    mov        eax,esi
 0058F2B7    call       TFont.GetStyle
 0058F2BC    mov        edx,eax
 0058F2BE    or         dl,byte ptr ds:[58F33C]; 0x2
 0058F2C4    mov        eax,esi
 0058F2C6    call       TFont.SetStyle
 0058F2CB    mov        eax,ebx
 0058F2CD    call       0058E3E0
 0058F2D2    test       al,al
>0058F2D4    je         0058F2EC
 0058F2D6    mov        eax,esi
 0058F2D8    call       TFont.GetStyle
 0058F2DD    mov        edx,eax
 0058F2DF    or         dl,byte ptr ds:[58F340]; 0x8
 0058F2E5    mov        eax,esi
 0058F2E7    call       TFont.SetStyle
 0058F2EC    mov        eax,ebx
 0058F2EE    call       0058E3E0
 0058F2F3    cmp        word ptr [ebx+2E],7D0; TRPConverter.?f2E:word
>0058F2F9    jb         0058F30B
 0058F2FB    mov        eax,ebx
 0058F2FD    call       0058E744
 0058F302    mov        word ptr [ebx+166],ax; TRPConverter.?f166:word
>0058F309    jmp        0058F314
 0058F30B    mov        word ptr [ebx+166],0; TRPConverter.?f166:word
 0058F314    xor        eax,eax
 0058F316    pop        edx
 0058F317    pop        ecx
 0058F318    pop        ecx
 0058F319    mov        dword ptr fs:[eax],edx
 0058F31C    push       58F331
 0058F321    lea        eax,[ebp-4]
 0058F324    call       @LStrClr
 0058F329    ret
<0058F32A    jmp        @HandleFinally
<0058F32F    jmp        0058F321
 0058F331    pop        esi
 0058F332    pop        ebx
 0058F333    pop        ecx
 0058F334    pop        ecx
 0058F335    pop        ebp
 0058F336    ret
*}
//end;

//0058F344
//procedure sub_0058F344(?:TRPConverter);
//begin
{*
 0058F344    push       ebp
 0058F345    mov        ebp,esp
 0058F347    add        esp,0FFFFFFF0
 0058F34A    push       ebx
 0058F34B    mov        ebx,eax
 0058F34D    mov        dl,1
 0058F34F    mov        eax,[00429C9C]; TPen
 0058F354    call       TPen.Create; TPen.Create
 0058F359    mov        dword ptr [ebp-4],eax
 0058F35C    xor        eax,eax
 0058F35E    push       ebp
 0058F35F    push       58F3E1
 0058F364    push       dword ptr fs:[eax]
 0058F367    mov        dword ptr fs:[eax],esp
 0058F36A    mov        eax,ebx
 0058F36C    call       0058E3F8
 0058F371    mov        edx,eax
 0058F373    mov        eax,dword ptr [ebp-4]
 0058F376    call       TPen.SetColor
 0058F37B    mov        eax,ebx
 0058F37D    call       0058E3E0
 0058F382    mov        edx,eax
 0058F384    mov        eax,dword ptr [ebp-4]
 0058F387    call       TPen.SetMode
 0058F38C    mov        eax,ebx
 0058F38E    call       0058E3E0
 0058F393    mov        edx,eax
 0058F395    mov        eax,dword ptr [ebp-4]
 0058F398    call       TPen.SetStyle
 0058F39D    mov        eax,ebx
 0058F39F    call       0058E72C
 0058F3A4    fstp       qword ptr [ebp-10]
 0058F3A7    wait
 0058F3A8    fld        qword ptr [ebp-10]
 0058F3AB    fdiv       dword ptr ds:[58F3F0]; 10000:Single
 0058F3B1    call       @ROUND
 0058F3B6    mov        edx,eax
 0058F3B8    mov        eax,dword ptr [ebp-4]
 0058F3BB    call       TPen.SetWidth
 0058F3C0    mov        edx,dword ptr [ebp-4]
 0058F3C3    mov        eax,dword ptr [ebp-4]
 0058F3C6    mov        ecx,dword ptr [eax]
 0058F3C8    call       dword ptr [ecx+8]; TPen.Assign
 0058F3CB    xor        eax,eax
 0058F3CD    pop        edx
 0058F3CE    pop        ecx
 0058F3CF    pop        ecx
 0058F3D0    mov        dword ptr fs:[eax],edx
 0058F3D3    push       58F3E8
 0058F3D8    mov        eax,dword ptr [ebp-4]
 0058F3DB    call       TObject.Free
 0058F3E0    ret
<0058F3E1    jmp        @HandleFinally
<0058F3E6    jmp        0058F3D8
 0058F3E8    pop        ebx
 0058F3E9    mov        esp,ebp
 0058F3EB    pop        ebp
 0058F3EC    ret
*}
//end;

//0058F3F4
//procedure sub_0058F3F4(?:TRPConverter);
//begin
{*
 0058F3F4    push       ebx
 0058F3F5    mov        ebx,eax
 0058F3F7    mov        eax,ebx
 0058F3F9    call       0058E3E0
 0058F3FE    mov        edx,eax
 0058F400    mov        eax,dword ptr [ebx+180]; TRPConverter.?f180:TPen
 0058F406    call       TPen.SetMode
 0058F40B    pop        ebx
 0058F40C    ret
*}
//end;

//0058F410
//procedure sub_0058F410(?:TRPConverter);
//begin
{*
 0058F410    push       ebx
 0058F411    mov        ebx,eax
 0058F413    mov        eax,ebx
 0058F415    call       0058E3E0
 0058F41A    mov        edx,eax
 0058F41C    mov        eax,dword ptr [ebx+180]; TRPConverter.?f180:TPen
 0058F422    call       TPen.SetStyle
 0058F427    pop        ebx
 0058F428    ret
*}
//end;

//0058F42C
//procedure sub_0058F42C(?:TRPConverter);
//begin
{*
 0058F42C    push       ebx
 0058F42D    push       esi
 0058F42E    mov        ebx,eax
 0058F430    mov        eax,ebx
 0058F432    call       0058E72C
 0058F437    mov        esi,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058F43A    fstp       qword ptr [esi+48]
 0058F43D    wait
 0058F43E    mov        edx,dword ptr [ebx+180]; TRPConverter.?f180:TPen
 0058F444    mov        eax,esi
 0058F446    mov        ecx,dword ptr [eax]
 0058F448    call       dword ptr [ecx+64]
 0058F44B    pop        esi
 0058F44C    pop        ebx
 0058F44D    ret
*}
//end;

//0058F450
//procedure sub_0058F450(?:TRPConverter);
//begin
{*
 0058F450    push       ebx
 0058F451    mov        ebx,eax
 0058F453    mov        eax,ebx
 0058F455    call       0058E72C
 0058F45A    fstp       qword ptr [ebx+148]; TRPConverter.?f148:?Double
 0058F460    wait
 0058F461    mov        eax,ebx
 0058F463    call       0058E72C
 0058F468    fstp       qword ptr [ebx+150]; TRPConverter.?f150:?Double
 0058F46E    wait
 0058F46F    mov        eax,ebx
 0058F471    call       0058E72C
 0058F476    fstp       dword ptr [ebx+178]; TRPConverter.?f178:Single
 0058F47C    wait
 0058F47D    pop        ebx
 0058F47E    ret
*}
//end;

//0058F480
procedure sub_0058F480;
begin
{*
 0058F480    ret
*}
end;

//0058F484
procedure sub_0058F484;
begin
{*
 0058F484    ret
*}
end;

//0058F488
procedure sub_0058F488;
begin
{*
 0058F488    ret
*}
end;

//0058F48C
procedure sub_0058F48C;
begin
{*
 0058F48C    call       0058E3E0
 0058F491    ret
*}
end;

//0058F494
procedure sub_0058F494;
begin
{*
 0058F494    push       ebp
 0058F495    mov        ebp,esp
 0058F497    push       0
 0058F499    xor        edx,edx
 0058F49B    push       ebp
 0058F49C    push       58F4C5
 0058F4A1    push       dword ptr fs:[edx]
 0058F4A4    mov        dword ptr fs:[edx],esp
 0058F4A7    lea        edx,[ebp-4]
 0058F4AA    call       0058E75C
 0058F4AF    xor        eax,eax
 0058F4B1    pop        edx
 0058F4B2    pop        ecx
 0058F4B3    pop        ecx
 0058F4B4    mov        dword ptr fs:[eax],edx
 0058F4B7    push       58F4CC
 0058F4BC    lea        eax,[ebp-4]
 0058F4BF    call       @LStrClr
 0058F4C4    ret
<0058F4C5    jmp        @HandleFinally
<0058F4CA    jmp        0058F4BC
 0058F4CC    pop        ecx
 0058F4CD    pop        ebp
 0058F4CE    ret
*}
end;

//0058F4D0
//procedure sub_0058F4D0(?:TRPConverter);
//begin
{*
 0058F4D0    mov        eax,dword ptr [eax+24]; TRPConverter.?f24:dword
 0058F4D3    call       TStream.ReadBuffer
 0058F4D8    ret
*}
//end;

//0058F4DC
//constructor TRPConverter.Create(?:?);
//begin
{*
 0058F4DC    push       ebp
 0058F4DD    mov        ebp,esp
 0058F4DF    push       ecx
 0058F4E0    push       ebx
 0058F4E1    push       esi
 0058F4E2    push       edi
 0058F4E3    test       dl,dl
>0058F4E5    je         0058F4EF
 0058F4E7    add        esp,0FFFFFFF0
 0058F4EA    call       @ClassCreate
 0058F4EF    mov        edi,ecx
 0058F4F1    mov        byte ptr [ebp-1],dl
 0058F4F4    mov        ebx,eax
 0058F4F6    mov        esi,dword ptr [ebp+8]
 0058F4F9    xor        edx,edx
 0058F4FB    mov        eax,ebx
 0058F4FD    call       TObject.Create
 0058F502    mov        dword ptr [ebx+24],edi; TRPConverter.?f24:dword
 0058F505    mov        dword ptr [ebx+28],esi; TRPConverter.?f28:dword
 0058F508    mov        dl,1
 0058F50A    mov        eax,[00429D9C]; TBrush
 0058F50F    call       TBrush.Create; TBrush.Create
 0058F514    mov        edi,eax
 0058F516    mov        dword ptr [ebx+17C],edi; TRPConverter.?f17C:TBrush
 0058F51C    mov        dword ptr [edi+0C],esi; TBrush.?fC:dword
 0058F51F    mov        eax,dword ptr [esi]
 0058F521    mov        eax,dword ptr [eax+34]
 0058F524    mov        dword ptr [edi+8],eax; TBrush.FOnChange:TNotifyEvent
 0058F527    mov        dl,1
 0058F529    mov        eax,[00429B20]; TFont
 0058F52E    call       TFont.Create; TFont.Create
 0058F533    mov        edi,eax
 0058F535    mov        dword ptr [ebx+0E0],edi; TRPConverter.?fE0:TFont
 0058F53B    mov        dword ptr [edi+0C],esi; TFont.?fC:dword
 0058F53E    mov        eax,dword ptr [esi]
 0058F540    mov        eax,dword ptr [eax+44]
 0058F543    mov        dword ptr [edi+8],eax; TFont.FOnChange:TNotifyEvent
 0058F546    mov        dl,1
 0058F548    mov        eax,[00429C9C]; TPen
 0058F54D    call       TPen.Create; TPen.Create
 0058F552    mov        edi,eax
 0058F554    mov        dword ptr [ebx+180],edi; TRPConverter.?f180:TPen
 0058F55A    mov        dword ptr [edi+0C],esi; TPen.?fC:dword
 0058F55D    mov        eax,dword ptr [esi]
 0058F55F    mov        eax,dword ptr [eax+64]
 0058F562    mov        dword ptr [edi+8],eax; TPen.FOnChange:TNotifyEvent
 0058F565    mov        dl,1
 0058F567    mov        eax,[0042A4BC]; TBitmap
 0058F56C    call       TBitmap.Create; TBitmap.Create
 0058F571    mov        esi,eax
 0058F573    mov        dword ptr [ebx+4],esi; TRPConverter.?f4:TBitmap
 0058F576    mov        eax,esi
 0058F578    call       TBitmap.GetCanvas
 0058F57D    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 0058F580    mov        dword ptr [eax+1C],4E0; TFont.FPixelsPerInch:Integer
 0058F587    mov        eax,dword ptr [ebx+4]; TRPConverter.?f4:TBitmap
 0058F58A    mov        edx,0A
 0058F58F    mov        ecx,dword ptr [eax]
 0058F591    call       dword ptr [ecx+40]; TBitmap.SetWidth
 0058F594    mov        eax,dword ptr [ebx+4]; TRPConverter.?f4:TBitmap
 0058F597    mov        edx,0A
 0058F59C    mov        ecx,dword ptr [eax]
 0058F59E    call       dword ptr [ecx+34]; TBitmap.SetHeight
 0058F5A1    mov        dl,1
 0058F5A3    mov        eax,[0041C8E4]; TStringList
 0058F5A8    call       TObject.Create; TStringList.Create
 0058F5AD    mov        dword ptr [ebx+50],eax; TRPConverter.?f50:TStringList
 0058F5B0    mov        eax,ebx
 0058F5B2    cmp        byte ptr [ebp-1],0
>0058F5B6    je         0058F5C7
 0058F5B8    call       @AfterConstruction
 0058F5BD    pop        dword ptr fs:[0]
 0058F5C4    add        esp,0C
 0058F5C7    mov        eax,ebx
 0058F5C9    pop        edi
 0058F5CA    pop        esi
 0058F5CB    pop        ebx
 0058F5CC    pop        ecx
 0058F5CD    pop        ebp
 0058F5CE    ret        4
*}
//end;

//0058F5D4
//procedure sub_0058F5D4(?:TRPConverter; ?:?);
//begin
{*
 0058F5D4    push       ebx
 0058F5D5    push       esi
 0058F5D6    add        esp,0FFFFFFF8
 0058F5D9    mov        esi,edx
 0058F5DB    mov        ebx,eax
 0058F5DD    mov        edx,esp
 0058F5DF    mov        eax,ebx
 0058F5E1    call       0058F738
 0058F5E6    mov        eax,dword ptr [esp]
 0058F5E9    mov        dword ptr [esi],eax
 0058F5EB    mov        eax,dword ptr [esp+4]
 0058F5EF    mov        dword ptr [esi+4],eax
 0058F5F2    mov        edx,esp
 0058F5F4    mov        eax,ebx
 0058F5F6    call       0058F738
 0058F5FB    mov        eax,dword ptr [esp]
 0058F5FE    mov        dword ptr [esi+8],eax
 0058F601    mov        eax,dword ptr [esp+4]
 0058F605    mov        dword ptr [esi+0C],eax
 0058F608    pop        ecx
 0058F609    pop        edx
 0058F60A    pop        esi
 0058F60B    pop        ebx
 0058F60C    ret
*}
//end;

//0058F610
//procedure sub_0058F610(?:?);
//begin
{*
 0058F610    push       ebx
 0058F611    push       esi
 0058F612    mov        esi,edx
 0058F614    mov        ebx,eax
 0058F616    mov        eax,ebx
 0058F618    call       0058E3E0
 0058F61D    cmp        al,80
 0058F61F    seta       dl
 0058F622    mov        byte ptr [ebx+2C],dl; TRPConverter.?f2C:byte
 0058F625    and        eax,0FF
 0058F62A    and        eax,7F
 0058F62D    dec        eax
>0058F62E    je         0058F638
 0058F630    dec        eax
>0058F631    je         0058F648
 0058F633    dec        eax
>0058F634    je         0058F658
>0058F636    jmp        0058F666
 0058F638    mov        dl,1
 0058F63A    mov        eax,[0042A4BC]; TBitmap
 0058F63F    call       TBitmap.Create; TBitmap.Create
 0058F644    mov        dword ptr [esi],eax
>0058F646    jmp        0058F666
 0058F648    mov        dl,1
 0058F64A    mov        eax,[0042A37C]; TMetafile
 0058F64F    call       TMetafile.Create; TMetafile.Create
 0058F654    mov        dword ptr [esi],eax
>0058F656    jmp        0058F666
 0058F658    mov        dl,1
 0058F65A    mov        eax,[0042A600]; TIcon
 0058F65F    call       TIcon.Create; TIcon.Create
 0058F664    mov        dword ptr [esi],eax
 0058F666    mov        edx,dword ptr [esi]
 0058F668    mov        eax,ebx
 0058F66A    mov        ecx,dword ptr [eax]
 0058F66C    call       dword ptr [ecx+4]; TRPConverter.sub_0058F674
 0058F66F    pop        esi
 0058F670    pop        ebx
 0058F671    ret
*}
//end;

//0058F674
//procedure sub_0058F674(?:?);
//begin
{*
 0058F674    push       ebp
 0058F675    mov        ebp,esp
 0058F677    add        esp,0FFFFFFF8
 0058F67A    push       ebx
 0058F67B    push       esi
 0058F67C    push       edi
 0058F67D    mov        dword ptr [ebp-4],edx
 0058F680    mov        ebx,eax
 0058F682    mov        dl,1
 0058F684    mov        eax,[0041CBF8]; TMemoryStream
 0058F689    call       TObject.Create; TMemoryStream.Create
 0058F68E    mov        dword ptr [ebp-8],eax
 0058F691    xor        eax,eax
 0058F693    push       ebp
 0058F694    push       58F729
 0058F699    push       dword ptr fs:[eax]
 0058F69C    mov        dword ptr fs:[eax],esp
 0058F69F    cmp        byte ptr [ebx+2C],0; TRPConverter.?f2C:byte
>0058F6A3    je         0058F6C7
 0058F6A5    mov        eax,ebx
 0058F6A7    call       0058E3F8
 0058F6AC    mov        edi,eax
 0058F6AE    mov        eax,dword ptr [ebx+24]; TRPConverter.?f24:dword
 0058F6B1    call       TStream.GetPosition
 0058F6B6    mov        esi,eax
 0058F6B8    mov        eax,edi
 0058F6BA    cdq
 0058F6BB    push       edx
 0058F6BC    push       eax
 0058F6BD    mov        eax,dword ptr [ebx+24]; TRPConverter.?f24:dword
 0058F6C0    call       TStream.SetPosition
>0058F6C5    jmp        0058F6C9
 0058F6C7    xor        esi,esi
 0058F6C9    mov        eax,ebx
 0058F6CB    call       0058E3F8
 0058F6D0    mov        edx,eax
 0058F6D2    mov        eax,dword ptr [ebp-8]
 0058F6D5    mov        ecx,dword ptr [eax]
 0058F6D7    call       dword ptr [ecx+4]; TMemoryStream.SetSize
 0058F6DA    mov        eax,dword ptr [ebp-8]
 0058F6DD    mov        edx,dword ptr [eax]
 0058F6DF    call       dword ptr [edx]; TStream.GetSize
 0058F6E1    mov        ecx,eax
 0058F6E3    mov        eax,dword ptr [ebp-8]
 0058F6E6    mov        edx,dword ptr [eax+4]; TMemoryStream.FMemory:Pointer
 0058F6E9    mov        eax,dword ptr [ebx+24]; TRPConverter.?f24:dword
 0058F6EC    call       TStream.ReadBuffer
 0058F6F1    mov        edx,dword ptr [ebp-8]
 0058F6F4    mov        eax,dword ptr [ebp-4]
 0058F6F7    mov        ecx,dword ptr [eax]
 0058F6F9    call       dword ptr [ecx+54]
 0058F6FC    cmp        byte ptr [ebx+2C],0; TRPConverter.?f2C:byte
>0058F700    je         0058F713
 0058F702    mov        eax,esi
 0058F704    cdq
 0058F705    push       edx
 0058F706    push       eax
 0058F707    mov        eax,dword ptr [ebx+24]; TRPConverter.?f24:dword
 0058F70A    call       TStream.SetPosition
 0058F70F    mov        byte ptr [ebx+2C],0; TRPConverter.?f2C:byte
 0058F713    xor        eax,eax
 0058F715    pop        edx
 0058F716    pop        ecx
 0058F717    pop        ecx
 0058F718    mov        dword ptr fs:[eax],edx
 0058F71B    push       58F730
 0058F720    mov        eax,dword ptr [ebp-8]
 0058F723    call       TObject.Free
 0058F728    ret
<0058F729    jmp        @HandleFinally
<0058F72E    jmp        0058F720
 0058F730    pop        edi
 0058F731    pop        esi
 0058F732    pop        ebx
 0058F733    pop        ecx
 0058F734    pop        ecx
 0058F735    pop        ebp
 0058F736    ret
*}
//end;

//0058F738
//procedure sub_0058F738(?:TRPConverter; ?:?);
//begin
{*
 0058F738    push       ebx
 0058F739    push       esi
 0058F73A    mov        esi,edx
 0058F73C    mov        ebx,eax
 0058F73E    mov        eax,ebx
 0058F740    call       0058E72C
 0058F745    add        esp,0FFFFFFF8
 0058F748    fstp       qword ptr [esp]
 0058F74B    wait
 0058F74C    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058F74F    mov        edx,dword ptr [eax]
 0058F751    call       dword ptr [edx+0B4]
 0058F757    mov        dword ptr [esi],eax
 0058F759    mov        eax,ebx
 0058F75B    call       0058E72C
 0058F760    add        esp,0FFFFFFF8
 0058F763    fstp       qword ptr [esp]
 0058F766    wait
 0058F767    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058F76A    mov        edx,dword ptr [eax]
 0058F76C    call       dword ptr [edx+0B8]
 0058F772    mov        dword ptr [esi+4],eax
 0058F775    pop        esi
 0058F776    pop        ebx
 0058F777    ret
*}
//end;

//0058F778
destructor TRPConverter.Destroy;
begin
{*
 0058F778    push       ebx
 0058F779    push       esi
 0058F77A    call       @BeforeDestruction
 0058F77F    mov        ebx,edx
 0058F781    mov        esi,eax
 0058F783    lea        eax,[esi+17C]; TRPConverter.?f17C:TBrush
 0058F789    call       FreeAndNil
 0058F78E    lea        eax,[esi+0E0]; TRPConverter.?fE0:TFont
 0058F794    call       FreeAndNil
 0058F799    lea        eax,[esi+180]; TRPConverter.?f180:TPen
 0058F79F    call       FreeAndNil
 0058F7A4    lea        eax,[esi+4]; TRPConverter.?f4:TBitmap
 0058F7A7    call       FreeAndNil
 0058F7AC    mov        eax,esi
 0058F7AE    call       0058FCC0
 0058F7B3    lea        eax,[esi+50]; TRPConverter.?f50:TStringList
 0058F7B6    call       FreeAndNil
 0058F7BB    mov        edx,ebx
 0058F7BD    and        dl,0FC
 0058F7C0    mov        eax,esi
 0058F7C2    call       TObject.Destroy
 0058F7C7    test       bl,bl
>0058F7C9    jle        0058F7D2
 0058F7CB    mov        eax,esi
 0058F7CD    call       @ClassDestroy
 0058F7D2    pop        esi
 0058F7D3    pop        ebx
 0058F7D4    ret
*}
end;

//0058F7D8
//procedure sub_0058F7D8(?:TRPConverter; ?:AnsiString);
//begin
{*
 0058F7D8    push       ebp
 0058F7D9    mov        ebp,esp
 0058F7DB    mov        ecx,4
 0058F7E0    push       0
 0058F7E2    push       0
 0058F7E4    dec        ecx
<0058F7E5    jne        0058F7E0
 0058F7E7    push       ecx
 0058F7E8    push       ebx
 0058F7E9    push       esi
 0058F7EA    push       edi
 0058F7EB    mov        ebx,edx
 0058F7ED    mov        dword ptr [ebp-4],eax
 0058F7F0    xor        eax,eax
 0058F7F2    push       ebp
 0058F7F3    push       58F956
 0058F7F8    push       dword ptr fs:[eax]
 0058F7FB    mov        dword ptr fs:[eax],esp
 0058F7FE    mov        edx,dword ptr [ebx]
 0058F800    mov        eax,58F96C; 'ý$RPCM'
 0058F805    call       @LStrPos
 0058F80A    mov        dword ptr [ebp-8],eax
 0058F80D    cmp        dword ptr [ebp-8],0
>0058F811    jle        0058F871
 0058F813    lea        eax,[ebp-0C]
 0058F816    push       eax
 0058F817    mov        eax,dword ptr [ebx]
 0058F819    mov        ecx,8
 0058F81E    mov        edx,dword ptr [ebp-8]
 0058F821    call       @LStrCopy
 0058F826    lea        eax,[ebp-18]
 0058F829    push       eax
 0058F82A    mov        ecx,2
 0058F82F    mov        edx,7
 0058F834    mov        eax,dword ptr [ebp-0C]
 0058F837    call       @LStrCopy
 0058F83C    mov        eax,dword ptr [ebp-18]
 0058F83F    call       StrToInt
 0058F844    mov        byte ptr [ebp-0D],al
 0058F847    mov        eax,ebx
 0058F849    mov        ecx,8
 0058F84E    mov        edx,dword ptr [ebp-8]
 0058F851    call       @LStrDelete
 0058F856    lea        ecx,[ebp-1C]
 0058F859    mov        dl,byte ptr [ebp-0D]
 0058F85C    mov        eax,dword ptr [ebp-4]
 0058F85F    call       0058F984
 0058F864    mov        eax,dword ptr [ebp-1C]
 0058F867    mov        edx,ebx
 0058F869    mov        ecx,dword ptr [ebp-8]
 0058F86C    call       @LStrInsert
 0058F871    mov        edx,dword ptr [ebx]
 0058F873    mov        eax,58F97C; 'ý$RPCV'
 0058F878    call       @LStrPos
 0058F87D    mov        edi,eax
 0058F87F    test       edi,edi
>0058F881    jle        0058F921
 0058F887    lea        esi,[edi+6]
 0058F88A    lea        eax,[ebp-14]
 0058F88D    call       @LStrClr
 0058F892    mov        eax,dword ptr [ebx]
 0058F894    call       @LStrLen
 0058F899    cmp        esi,eax
>0058F89B    jge        0058F8D7
 0058F89D    mov        eax,dword ptr [ebx]
 0058F89F    cmp        byte ptr [eax+esi-1],0FC
>0058F8A4    jne        0058F8D7
 0058F8A6    inc        esi
>0058F8A7    jmp        0058F8CC
 0058F8A9    mov        eax,dword ptr [ebx]
 0058F8AB    cmp        byte ptr [eax+esi-1],0FB
>0058F8B0    je         0058F8D7
 0058F8B2    lea        eax,[ebp-20]
 0058F8B5    mov        edx,dword ptr [ebx]
 0058F8B7    mov        dl,byte ptr [edx+esi-1]
 0058F8BB    call       @LStrFromChar
 0058F8C0    mov        edx,dword ptr [ebp-20]
 0058F8C3    lea        eax,[ebp-14]
 0058F8C6    call       @LStrCat
 0058F8CB    inc        esi
 0058F8CC    mov        eax,dword ptr [ebx]
 0058F8CE    call       @LStrLen
 0058F8D3    cmp        esi,eax
<0058F8D5    jle        0058F8A9
 0058F8D7    mov        eax,dword ptr [ebx]
 0058F8D9    call       @LStrLen
 0058F8DE    cmp        esi,eax
>0058F8E0    jg         0058F8F2
 0058F8E2    mov        ecx,esi
 0058F8E4    sub        ecx,edi
 0058F8E6    inc        ecx
 0058F8E7    mov        eax,ebx
 0058F8E9    mov        edx,edi
 0058F8EB    call       @LStrDelete
>0058F8F0    jmp        0058F907
 0058F8F2    mov        eax,dword ptr [ebx]
 0058F8F4    call       @LStrLen
 0058F8F9    mov        ecx,eax
 0058F8FB    sub        ecx,edi
 0058F8FD    inc        ecx
 0058F8FE    mov        eax,ebx
 0058F900    mov        edx,edi
 0058F902    call       @LStrDelete
 0058F907    lea        ecx,[ebp-24]
 0058F90A    mov        edx,dword ptr [ebp-14]
 0058F90D    mov        eax,dword ptr [ebp-4]
 0058F910    call       0058EFAC
 0058F915    mov        eax,dword ptr [ebp-24]
 0058F918    mov        edx,ebx
 0058F91A    mov        ecx,edi
 0058F91C    call       @LStrInsert
 0058F921    cmp        dword ptr [ebp-8],0
<0058F925    jne        0058F7FE
 0058F92B    test       edi,edi
<0058F92D    jne        0058F7FE
 0058F933    xor        eax,eax
 0058F935    pop        edx
 0058F936    pop        ecx
 0058F937    pop        ecx
 0058F938    mov        dword ptr fs:[eax],edx
 0058F93B    push       58F95D
 0058F940    lea        eax,[ebp-24]
 0058F943    mov        edx,5
 0058F948    call       @LStrArrayClr
 0058F94D    lea        eax,[ebp-0C]
 0058F950    call       @LStrClr
 0058F955    ret
<0058F956    jmp        @HandleFinally
<0058F95B    jmp        0058F940
 0058F95D    pop        edi
 0058F95E    pop        esi
 0058F95F    pop        ebx
 0058F960    mov        esp,ebp
 0058F962    pop        ebp
 0058F963    ret
*}
//end;

//0058F984
//procedure sub_0058F984(?:TRPConverter; ?:Integer; ?:AnsiString);
//begin
{*
 0058F984    push       ebx
 0058F985    push       esi
 0058F986    push       edi
 0058F987    mov        esi,ecx
 0058F989    mov        ebx,eax
 0058F98B    xor        eax,eax
 0058F98D    mov        al,dl
 0058F98F    cmp        eax,23
>0058F992    ja         0058FB61
 0058F998    mov        al,byte ptr [eax+58F9A5]
 0058F99E    jmp        dword ptr [eax*4+58F9C9]
 0058F99E    db         1
 0058F99E    db         2
 0058F99E    db         3
 0058F99E    db         4
 0058F99E    db         5
 0058F99E    db         6
 0058F99E    db         7
 0058F99E    db         8
 0058F99E    db         9
 0058F99E    db         10
 0058F99E    db         11
 0058F99E    db         12
 0058F99E    db         13
 0058F99E    db         14
 0058F99E    db         15
 0058F99E    db         16
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    db         17
 0058F99E    dd         58FB61
 0058F99E    dd         58FA11
 0058F99E    dd         58FA28
 0058F99E    dd         58FA3F
 0058F99E    dd         58FA56
 0058F99E    dd         58FA6D
 0058F99E    dd         58FA84
 0058F99E    dd         58FA9B
 0058F99E    dd         58FAB2
 0058F99E    dd         58FAC9
 0058F99E    dd         58FAD8
 0058F99E    dd         58FAE7
 0058F99E    dd         58FAF3
 0058F99E    dd         58FAFF
 0058F99E    dd         58FB0F
 0058F99E    dd         58FB1A
 0058F99E    dd         58FB25
 0058F99E    dd         58FB30
 0058FA11    push       dword ptr [ebx+0C]; TRPConverter.?fC:dword
 0058FA14    push       dword ptr [ebx+8]; TRPConverter.?f8:?Double
 0058FA17    mov        edx,esi
 0058FA19    mov        eax,58FB74; 'ddddd'
 0058FA1E    call       FormatDateTime
>0058FA23    jmp        0058FB68
 0058FA28    push       dword ptr [ebx+0C]; TRPConverter.?fC:dword
 0058FA2B    push       dword ptr [ebx+8]; TRPConverter.?f8:?Double
 0058FA2E    mov        edx,esi
 0058FA30    mov        eax,58FB84; 'dddddd'
 0058FA35    call       FormatDateTime
>0058FA3A    jmp        0058FB68
 0058FA3F    push       dword ptr [ebx+0C]; TRPConverter.?fC:dword
 0058FA42    push       dword ptr [ebx+8]; TRPConverter.?f8:?Double
 0058FA45    mov        edx,esi
 0058FA47    mov        eax,58FB94; 'mm/dd/yy'
 0058FA4C    call       FormatDateTime
>0058FA51    jmp        0058FB68
 0058FA56    push       dword ptr [ebx+0C]; TRPConverter.?fC:dword
 0058FA59    push       dword ptr [ebx+8]; TRPConverter.?f8:?Double
 0058FA5C    mov        edx,esi
 0058FA5E    mov        eax,58FBA8; 'dd/mm/yy'
 0058FA63    call       FormatDateTime
>0058FA68    jmp        0058FB68
 0058FA6D    push       dword ptr [ebx+0C]; TRPConverter.?fC:dword
 0058FA70    push       dword ptr [ebx+8]; TRPConverter.?f8:?Double
 0058FA73    mov        edx,esi
 0058FA75    mov        eax,58FBBC; 't'
 0058FA7A    call       FormatDateTime
>0058FA7F    jmp        0058FB68
 0058FA84    push       dword ptr [ebx+0C]; TRPConverter.?fC:dword
 0058FA87    push       dword ptr [ebx+8]; TRPConverter.?f8:?Double
 0058FA8A    mov        edx,esi
 0058FA8C    mov        eax,58FBC8; 'tt'
 0058FA91    call       FormatDateTime
>0058FA96    jmp        0058FB68
 0058FA9B    push       dword ptr [ebx+0C]; TRPConverter.?fC:dword
 0058FA9E    push       dword ptr [ebx+8]; TRPConverter.?f8:?Double
 0058FAA1    mov        edx,esi
 0058FAA3    mov        eax,58FBD4; 'hh:nn ampm'
 0058FAA8    call       FormatDateTime
>0058FAAD    jmp        0058FB68
 0058FAB2    push       dword ptr [ebx+0C]; TRPConverter.?fC:dword
 0058FAB5    push       dword ptr [ebx+8]; TRPConverter.?f8:?Double
 0058FAB8    mov        edx,esi
 0058FABA    mov        eax,58FBE8; 'hh:nn'
 0058FABF    call       FormatDateTime
>0058FAC4    jmp        0058FB68
 0058FAC9    mov        edx,esi
 0058FACB    mov        eax,dword ptr [ebx+10]; TRPConverter.?f10:dword
 0058FACE    call       IntToStr
>0058FAD3    jmp        0058FB68
 0058FAD8    mov        edx,esi
 0058FADA    mov        eax,dword ptr [ebx+14]; TRPConverter.?f14:dword
 0058FADD    call       IntToStr
>0058FAE2    jmp        0058FB68
 0058FAE7    mov        edx,esi
 0058FAE9    mov        eax,dword ptr [ebx+1C]; TRPConverter.?f1C:dword
 0058FAEC    call       IntToStr
>0058FAF1    jmp        0058FB68
 0058FAF3    mov        edx,esi
 0058FAF5    mov        eax,dword ptr [ebx+18]; TRPConverter.?f18:dword
 0058FAF8    call       IntToStr
>0058FAFD    jmp        0058FB68
 0058FAFF    mov        eax,ebx
 0058FB01    call       0058FCF8
 0058FB06    mov        edx,esi
 0058FB08    call       IntToStr
>0058FB0D    jmp        0058FB68
 0058FB0F    mov        edx,esi
 0058FB11    mov        eax,ebx
 0058FB13    mov        ecx,dword ptr [eax]
 0058FB15    call       dword ptr [ecx+8]; TRPConverter.sub_0058FCFC
>0058FB18    jmp        0058FB68
 0058FB1A    mov        edx,esi
 0058FB1C    mov        eax,ebx
 0058FB1E    mov        ecx,dword ptr [eax]
 0058FB20    call       dword ptr [ecx+0C]; TRPConverter.sub_0058FD20
>0058FB23    jmp        0058FB68
 0058FB25    mov        edx,esi
 0058FB27    mov        eax,ebx
 0058FB29    mov        ecx,dword ptr [eax]
 0058FB2B    call       dword ptr [ecx+10]; TRPConverter.sub_0058FD44
>0058FB2E    jmp        0058FB68
 0058FB30    mov        edi,edx
 0058FB32    and        edi,7F
 0058FB35    sub        edi,10
 0058FB38    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058FB3B    mov        eax,dword ptr [eax+5C]
 0058FB3E    mov        edx,dword ptr [eax]
 0058FB40    call       dword ptr [edx+14]
 0058FB43    cmp        edi,eax
>0058FB45    jge        0058FB58
 0058FB47    mov        ecx,esi
 0058FB49    mov        eax,dword ptr [ebx+28]; TRPConverter.?f28:dword
 0058FB4C    mov        eax,dword ptr [eax+5C]
 0058FB4F    mov        edx,edi
 0058FB51    mov        ebx,dword ptr [eax]
 0058FB53    call       dword ptr [ebx+0C]
>0058FB56    jmp        0058FB68
 0058FB58    mov        eax,esi
 0058FB5A    call       @LStrClr
>0058FB5F    jmp        0058FB68
 0058FB61    mov        eax,esi
 0058FB63    call       @LStrClr
 0058FB68    pop        edi
 0058FB69    pop        esi
 0058FB6A    pop        ebx
 0058FB6B    ret
*}
//end;

//0058FBF0
//procedure sub_0058FBF0(?:TRPConverter; ?:AnsiString; ?:AnsiString);
//begin
{*
 0058FBF0    push       ebp
 0058FBF1    mov        ebp,esp
 0058FBF3    add        esp,0FFFFFFF0
 0058FBF6    push       ebx
 0058FBF7    push       esi
 0058FBF8    push       edi
 0058FBF9    xor        ebx,ebx
 0058FBFB    mov        dword ptr [ebp-10],ebx
 0058FBFE    mov        dword ptr [ebp-0C],ecx
 0058FC01    mov        dword ptr [ebp-8],edx
 0058FC04    mov        dword ptr [ebp-4],eax
 0058FC07    mov        eax,dword ptr [ebp-8]
 0058FC0A    call       @LStrAddRef
 0058FC0F    mov        eax,dword ptr [ebp-0C]
 0058FC12    call       @LStrAddRef
 0058FC17    xor        eax,eax
 0058FC19    push       ebp
 0058FC1A    push       58FCB1
 0058FC1F    push       dword ptr fs:[eax]
 0058FC22    mov        dword ptr fs:[eax],esp
 0058FC25    mov        eax,dword ptr [ebp-4]
 0058FC28    mov        eax,dword ptr [eax+50]; TRPConverter.?f50:TStringList
 0058FC2B    mov        edx,dword ptr [eax]
 0058FC2D    call       dword ptr [edx+14]; TStringList.GetCount
 0058FC30    mov        esi,eax
 0058FC32    dec        esi
 0058FC33    test       esi,esi
>0058FC35    jl         0058FC77
 0058FC37    inc        esi
 0058FC38    xor        ebx,ebx
 0058FC3A    lea        ecx,[ebp-10]
 0058FC3D    mov        eax,dword ptr [ebp-4]
 0058FC40    mov        eax,dword ptr [eax+50]; TRPConverter.?f50:TStringList
 0058FC43    mov        edx,ebx
 0058FC45    mov        edi,dword ptr [eax]
 0058FC47    call       dword ptr [edi+0C]; TStringList.Get
 0058FC4A    mov        eax,dword ptr [ebp-10]
 0058FC4D    mov        edx,dword ptr [ebp-8]
 0058FC50    call       CompareText
 0058FC55    test       eax,eax
>0058FC57    jne        0058FC73
 0058FC59    mov        eax,dword ptr [ebp-4]
 0058FC5C    mov        eax,dword ptr [eax+50]; TRPConverter.?f50:TStringList
 0058FC5F    mov        edx,ebx
 0058FC61    mov        ecx,dword ptr [eax]
 0058FC63    call       dword ptr [ecx+18]; TStringList.GetObject
 0058FC66    add        eax,4
 0058FC69    mov        edx,dword ptr [ebp-0C]
 0058FC6C    call       @LStrAsg
>0058FC71    jmp        0058FC96
 0058FC73    inc        ebx
 0058FC74    dec        esi
<0058FC75    jne        0058FC3A
 0058FC77    mov        ecx,dword ptr [ebp-0C]
 0058FC7A    mov        dl,1
 0058FC7C    mov        eax,[005793D8]; TRPStringObject
 0058FC81    call       TRPStringObject.Create; TRPStringObject.Create
 0058FC86    mov        ecx,eax
 0058FC88    mov        eax,dword ptr [ebp-4]
 0058FC8B    mov        eax,dword ptr [eax+50]; TRPConverter.?f50:TStringList
 0058FC8E    mov        edx,dword ptr [ebp-8]
 0058FC91    mov        ebx,dword ptr [eax]
 0058FC93    call       dword ptr [ebx+3C]; TStringList.AddObject
 0058FC96    xor        eax,eax
 0058FC98    pop        edx
 0058FC99    pop        ecx
 0058FC9A    pop        ecx
 0058FC9B    mov        dword ptr fs:[eax],edx
 0058FC9E    push       58FCB8
 0058FCA3    lea        eax,[ebp-10]
 0058FCA6    mov        edx,3
 0058FCAB    call       @LStrArrayClr
 0058FCB0    ret
<0058FCB1    jmp        @HandleFinally
<0058FCB6    jmp        0058FCA3
 0058FCB8    pop        edi
 0058FCB9    pop        esi
 0058FCBA    pop        ebx
 0058FCBB    mov        esp,ebp
 0058FCBD    pop        ebp
 0058FCBE    ret
*}
//end;

//0058FCC0
//procedure sub_0058FCC0(?:TRPConverter);
//begin
{*
 0058FCC0    push       ebx
 0058FCC1    push       esi
 0058FCC2    push       edi
 0058FCC3    mov        edi,eax
 0058FCC5    mov        eax,dword ptr [edi+50]; TRPConverter.?f50:TStringList
 0058FCC8    mov        edx,dword ptr [eax]
 0058FCCA    call       dword ptr [edx+14]; TStringList.GetCount
 0058FCCD    mov        ebx,eax
 0058FCCF    dec        ebx
 0058FCD0    test       ebx,ebx
>0058FCD2    jl         0058FCEA
 0058FCD4    inc        ebx
 0058FCD5    xor        esi,esi
 0058FCD7    mov        eax,dword ptr [edi+50]; TRPConverter.?f50:TStringList
 0058FCDA    mov        edx,esi
 0058FCDC    mov        ecx,dword ptr [eax]
 0058FCDE    call       dword ptr [ecx+18]; TStringList.GetObject
 0058FCE1    call       TObject.Free
 0058FCE6    inc        esi
 0058FCE7    dec        ebx
<0058FCE8    jne        0058FCD7
 0058FCEA    mov        eax,dword ptr [edi+50]; TRPConverter.?f50:TStringList
 0058FCED    mov        edx,dword ptr [eax]
 0058FCEF    call       dword ptr [edx+44]; TStringList.Clear
 0058FCF2    pop        edi
 0058FCF3    pop        esi
 0058FCF4    pop        ebx
 0058FCF5    ret
*}
//end;

//0058FCF8
//function sub_0058FCF8(?:TRPConverter):?;
//begin
{*
 0058FCF8    mov        eax,dword ptr [eax+18]; TRPConverter.?f18:dword
 0058FCFB    ret
*}
//end;

//0058FCFC
//procedure sub_0058FCFC(?:?);
//begin
{*
 0058FCFC    push       ebx
 0058FCFD    mov        ebx,edx
 0058FCFF    mov        eax,ebx
 0058FD01    mov        edx,58FD18; 'Render'
 0058FD06    call       @LStrAsg
 0058FD0B    pop        ebx
 0058FD0C    ret
*}
//end;

//0058FD20
//procedure sub_0058FD20(?:?);
//begin
{*
 0058FD20    push       ebx
 0058FD21    mov        ebx,edx
 0058FD23    mov        eax,ebx
 0058FD25    mov        edx,58FD3C; 'Render'
 0058FD2A    call       @LStrAsg
 0058FD2F    pop        ebx
 0058FD30    ret
*}
//end;

//0058FD44
//procedure sub_0058FD44(?:?);
//begin
{*
 0058FD44    push       ebx
 0058FD45    mov        ebx,edx
 0058FD47    mov        eax,ebx
 0058FD49    mov        edx,58FD60; 'Render'
 0058FD4E    call       @LStrAsg
 0058FD53    pop        ebx
 0058FD54    ret
*}
//end;

//0058FD68
constructor TRPRender.Create(AOwner:TComponent);
begin
{*
 0058FD68    push       ebx
 0058FD69    push       esi
 0058FD6A    test       dl,dl
>0058FD6C    je         0058FD76
 0058FD6E    add        esp,0FFFFFFF0
 0058FD71    call       @ClassCreate
 0058FD76    mov        ebx,edx
 0058FD78    mov        esi,eax
 0058FD7A    xor        edx,edx
 0058FD7C    mov        eax,esi
 0058FD7E    call       TRpComponent.Create
 0058FD83    mov        edx,58FDC4; 'RPRender'
 0058FD88    mov        eax,esi
 0058FD8A    call       TRPRender.SetDisplayName
 0058FD8F    mov        byte ptr [esi+51],1; TRPRender.Active:Boolean
 0058FD93    mov        dl,1
 0058FD95    mov        eax,[0041C8E4]; TStringList
 0058FD9A    call       TObject.Create; TStringList.Create
 0058FD9F    mov        dword ptr [esi+5C],eax; TRPRender.?f5C:TStringList
 0058FDA2    mov        eax,esi
 0058FDA4    test       bl,bl
>0058FDA6    je         0058FDB7
 0058FDA8    call       @AfterConstruction
 0058FDAD    pop        dword ptr fs:[0]
 0058FDB4    add        esp,0C
 0058FDB7    mov        eax,esi
 0058FDB9    pop        esi
 0058FDBA    pop        ebx
 0058FDBB    ret
*}
end;

//0058FDD0
destructor TRPRender.Destroy;
begin
{*
 0058FDD0    push       ebx
 0058FDD1    push       esi
 0058FDD2    call       @BeforeDestruction
 0058FDD7    mov        ebx,edx
 0058FDD9    mov        esi,eax
 0058FDDB    mov        eax,dword ptr [esi+54]; TRPRender.?f54:String
 0058FDDE    mov        edx,esi
 0058FDE0    call       0058C844
 0058FDE5    lea        eax,[esi+5C]; TRPRender.?f5C:TStringList
 0058FDE8    call       FreeAndNil
 0058FDED    mov        edx,ebx
 0058FDEF    and        dl,0FC
 0058FDF2    mov        eax,esi
 0058FDF4    call       TComponent.Destroy
 0058FDF9    test       bl,bl
>0058FDFB    jle        0058FE04
 0058FDFD    mov        eax,esi
 0058FDFF    call       @ClassDestroy
 0058FE04    pop        esi
 0058FE05    pop        ebx
 0058FE06    ret
*}
end;

//0058FE08
//procedure sub_0058FE08(?:?; ?:?);
//begin
{*
 0058FE08    push       ebp
 0058FE09    mov        ebp,esp
 0058FE0B    push       ecx
 0058FE0C    push       ebx
 0058FE0D    push       esi
 0058FE0E    mov        dword ptr [ebp-4],ecx
 0058FE11    mov        esi,edx
 0058FE13    mov        ebx,eax
 0058FE15    mov        eax,dword ptr [ebp-4]
 0058FE18    call       @LStrAddRef
 0058FE1D    xor        eax,eax
 0058FE1F    push       ebp
 0058FE20    push       58FE58
 0058FE25    push       dword ptr fs:[eax]
 0058FE28    mov        dword ptr fs:[eax],esp
 0058FE2B    lea        eax,[ebx+60]; TRPRenderStream.?f60:TFileName
 0058FE2E    mov        edx,dword ptr [ebp-4]
 0058FE31    call       @LStrAsg
 0058FE36    mov        edx,esi
 0058FE38    mov        eax,ebx
 0058FE3A    mov        ecx,dword ptr [eax]
 0058FE3C    call       dword ptr [ecx+0A8]; TRPRenderStream.sub_0058FE64
 0058FE42    xor        eax,eax
 0058FE44    pop        edx
 0058FE45    pop        ecx
 0058FE46    pop        ecx
 0058FE47    mov        dword ptr fs:[eax],edx
 0058FE4A    push       58FE5F
 0058FE4F    lea        eax,[ebp-4]
 0058FE52    call       @LStrClr
 0058FE57    ret
<0058FE58    jmp        @HandleFinally
<0058FE5D    jmp        0058FE4F
 0058FE5F    pop        esi
 0058FE60    pop        ebx
 0058FE61    pop        ecx
 0058FE62    pop        ebp
 0058FE63    ret
*}
//end;

//0058FE64
//procedure sub_0058FE64(?:?);
//begin
{*
 0058FE64    push       ebp
 0058FE65    mov        ebp,esp
 0058FE67    push       ecx
 0058FE68    mov        dword ptr [ebp-4],eax
 0058FE6B    mov        eax,dword ptr [ebp-4]
 0058FE6E    cmp        byte ptr [eax+68],0; TRvRenderPDF.?f68:byte
>0058FE72    jne        0058FEEB
 0058FE74    test       edx,edx
>0058FE76    je         0058FE7E
 0058FE78    mov        eax,dword ptr [ebp-4]
 0058FE7B    mov        dword ptr [eax+6C],edx; TRvRenderPDF.?f6C:TFileStream
 0058FE7E    mov        eax,dword ptr [ebp-4]
 0058FE81    cmp        dword ptr [eax+6C],0; TRvRenderPDF.?f6C:TFileStream
>0058FE85    je         0058FE96
 0058FE87    xor        edx,edx
 0058FE89    mov        eax,dword ptr [ebp-4]
 0058FE8C    mov        ecx,dword ptr [eax]
 0058FE8E    call       dword ptr [ecx+0AC]; TRvRenderPDF.sub_0058FF50
>0058FE94    jmp        0058FEEB
 0058FE96    push       20
 0058FE98    mov        eax,dword ptr [ebp-4]
 0058FE9B    mov        ecx,dword ptr [eax+64]; TRvRenderPDF.?f64:TFileName
 0058FE9E    mov        dl,1
 0058FEA0    mov        eax,[0041CB08]; TFileStream
 0058FEA5    call       TFileStream.Create; TFileStream.Create
 0058FEAA    mov        edx,dword ptr [ebp-4]
 0058FEAD    mov        dword ptr [edx+6C],eax; TRvRenderPDF.?f6C:TFileStream
 0058FEB0    xor        eax,eax
 0058FEB2    push       ebp
 0058FEB3    push       58FEE4
 0058FEB8    push       dword ptr fs:[eax]
 0058FEBB    mov        dword ptr fs:[eax],esp
 0058FEBE    xor        edx,edx
 0058FEC0    mov        eax,dword ptr [ebp-4]
 0058FEC3    mov        ecx,dword ptr [eax]
 0058FEC5    call       dword ptr [ecx+0AC]; TRvRenderPDF.sub_0058FF50
 0058FECB    xor        eax,eax
 0058FECD    pop        edx
 0058FECE    pop        ecx
 0058FECF    pop        ecx
 0058FED0    mov        dword ptr fs:[eax],edx
 0058FED3    push       58FEEB
 0058FED8    mov        eax,dword ptr [ebp-4]
 0058FEDB    add        eax,6C; TRvRenderPDF.?f6C:TFileStream
 0058FEDE    call       FreeAndNil
 0058FEE3    ret
<0058FEE4    jmp        @HandleFinally
<0058FEE9    jmp        0058FED8
 0058FEEB    pop        ecx
 0058FEEC    pop        ebp
 0058FEED    ret
*}
//end;

//0058FEF0
//procedure sub_0058FEF0(?:TRvRenderCanvas; ?:TFileName);
//begin
{*
 0058FEF0    push       ebp
 0058FEF1    mov        ebp,esp
 0058FEF3    push       ecx
 0058FEF4    push       ebx
 0058FEF5    mov        dword ptr [ebp-4],edx
 0058FEF8    mov        ebx,eax
 0058FEFA    mov        eax,dword ptr [ebp-4]
 0058FEFD    call       @LStrAddRef
 0058FF02    xor        eax,eax
 0058FF04    push       ebp
 0058FF05    push       58FF42
 0058FF0A    push       dword ptr fs:[eax]
 0058FF0D    mov        dword ptr fs:[eax],esp
 0058FF10    lea        eax,[ebx+64]; TRvRenderCanvas.?f64:TFileName
 0058FF13    mov        edx,dword ptr [ebp-4]
 0058FF16    call       @LStrAsg
 0058FF1B    xor        eax,eax
 0058FF1D    mov        dword ptr [ebx+6C],eax; TRvRenderCanvas.?f6C:TFileStream
 0058FF20    xor        edx,edx
 0058FF22    mov        eax,ebx
 0058FF24    mov        ecx,dword ptr [eax]
 0058FF26    call       dword ptr [ecx+0A8]; TRvRenderCanvas.sub_0058FE64
 0058FF2C    xor        eax,eax
 0058FF2E    pop        edx
 0058FF2F    pop        ecx
 0058FF30    pop        ecx
 0058FF31    mov        dword ptr fs:[eax],edx
 0058FF34    push       58FF49
 0058FF39    lea        eax,[ebp-4]
 0058FF3C    call       @LStrClr
 0058FF41    ret
<0058FF42    jmp        @HandleFinally
<0058FF47    jmp        0058FF39
 0058FF49    pop        ebx
 0058FF4A    pop        ecx
 0058FF4B    pop        ebp
 0058FF4C    ret
*}
//end;

//0058FF50
//procedure sub_0058FF50(?:dword);
//begin
{*
 0058FF50    push       ebp
 0058FF51    mov        ebp,esp
 0058FF53    add        esp,0FFFFFFF8
 0058FF56    push       ebx
 0058FF57    mov        ebx,edx
 0058FF59    mov        dword ptr [ebp-4],eax
 0058FF5C    mov        eax,dword ptr [ebp-4]
 0058FF5F    mov        eax,dword ptr [eax+6C]; TRvRenderPDF.?f6C:TFileStream
 0058FF62    test       eax,eax
>0058FF64    je         0058FFC8
 0058FF66    mov        edx,dword ptr [ebp-4]
 0058FF69    push       edx
 0058FF6A    mov        ecx,eax
 0058FF6C    mov        dl,1
 0058FF6E    mov        eax,[0058C458]; TRPConverter
 0058FF73    call       TRPConverter.Create; TRPConverter.Create
 0058FF78    mov        dword ptr [ebp-8],eax
 0058FF7B    xor        eax,eax
 0058FF7D    push       ebp
 0058FF7E    push       58FFC1
 0058FF83    push       dword ptr fs:[eax]
 0058FF86    mov        dword ptr fs:[eax],esp
 0058FF89    mov        eax,dword ptr [ebp-4]
 0058FF8C    mov        byte ptr [eax+68],1; TRvRenderPDF.?f68:byte
 0058FF90    xor        ecx,ecx
 0058FF92    mov        edx,ebx
 0058FF94    mov        eax,dword ptr [ebp-8]
 0058FF97    mov        ebx,dword ptr [eax]
 0058FF99    call       dword ptr [ebx+18]; TRPConverter.sub_0058DCBC
 0058FF9C    xor        eax,eax
 0058FF9E    pop        edx
 0058FF9F    pop        ecx
 0058FFA0    pop        ecx
 0058FFA1    mov        dword ptr fs:[eax],edx
 0058FFA4    push       58FFC8
 0058FFA9    mov        eax,dword ptr [ebp-4]
 0058FFAC    xor        edx,edx
 0058FFAE    mov        dword ptr [eax+70],edx; TRvRenderPDF.?f70:dword
 0058FFB1    mov        eax,dword ptr [ebp-8]
 0058FFB4    call       TObject.Free
 0058FFB9    mov        eax,dword ptr [ebp-4]
 0058FFBC    mov        byte ptr [eax+68],0; TRvRenderPDF.?f68:byte
 0058FFC0    ret
<0058FFC1    jmp        @HandleFinally
<0058FFC6    jmp        0058FFA9
 0058FFC8    pop        ebx
 0058FFC9    pop        ecx
 0058FFCA    pop        ecx
 0058FFCB    pop        ebp
 0058FFCC    ret
*}
//end;

//0058FFD0
//procedure TRPRender.SetDisplayName(Self:TRPRender; ?:AnsiString);
//begin
{*
 0058FFD0    push       ebx
 0058FFD1    push       esi
 0058FFD2    mov        esi,edx
 0058FFD4    mov        ebx,eax
 0058FFD6    mov        edx,ebx
 0058FFD8    mov        eax,dword ptr [ebx+54]; TRPRender.?f54:String
 0058FFDB    call       0058C844
 0058FFE0    lea        eax,[ebx+54]; TRPRender.?f54:String
 0058FFE3    mov        edx,esi
 0058FFE5    call       @LStrAsg
 0058FFEA    mov        edx,ebx
 0058FFEC    mov        eax,dword ptr [ebx+54]; TRPRender.?f54:String
 0058FFEF    call       0058C810
 0058FFF4    pop        esi
 0058FFF5    pop        ebx
 0058FFF6    ret
*}
//end;

//0058FFF8
procedure sub_0058FFF8();
begin
{*
 0058FFF8    push       ebp
 0058FFF9    mov        ebp,esp
 0058FFFB    pop        ebp
 0058FFFC    ret        40
*}
end;

//00590000
procedure sub_00590000();
begin
{*
 00590000    ret
*}
end;

//00590004
procedure sub_00590004();
begin
{*
 00590004    push       ebp
 00590005    mov        ebp,esp
 00590007    pop        ebp
 00590008    ret        10
*}
end;

//0059000C
procedure sub_0059000C();
begin
{*
 0059000C    push       ebp
 0059000D    mov        ebp,esp
 0059000F    pop        ebp
 00590010    ret        40
*}
end;

//00590014
procedure sub_00590014();
begin
{*
 00590014    ret
*}
end;

//00590018
procedure sub_00590018();
begin
{*
 00590018    ret
*}
end;

//0059001C
procedure sub_0059001C();
begin
{*
 0059001C    push       ebp
 0059001D    mov        ebp,esp
 0059001F    pop        ebp
 00590020    ret        20
*}
end;

//00590024
procedure sub_00590024();
begin
{*
 00590024    ret
*}
end;

//00590028
//function sub_00590028():?;
//begin
{*
 00590028    mov        eax,48
 0059002D    ret
*}
//end;

//00590030
//function sub_00590030():?;
//begin
{*
 00590030    mov        eax,48
 00590035    ret
*}
//end;

//00590038
procedure sub_00590038();
begin
{*
 00590038    push       ebp
 00590039    mov        ebp,esp
 0059003B    xor        eax,eax
 0059003D    push       ebp
 0059003E    push       590057
 00590043    push       dword ptr fs:[eax]
 00590046    mov        dword ptr fs:[eax],esp
 00590049    xor        eax,eax
 0059004B    pop        edx
 0059004C    pop        ecx
 0059004D    pop        ecx
 0059004E    mov        dword ptr fs:[eax],edx
 00590051    push       59005E
 00590056    ret
<00590057    jmp        @HandleFinally
<0059005C    jmp        00590056
 0059005E    pop        ebp
 0059005F    ret        10
*}
end;

//00590064
procedure sub_00590064();
begin
{*
 00590064    ret
*}
end;

//00590068
procedure sub_00590068();
begin
{*
 00590068    push       ebp
 00590069    mov        ebp,esp
 0059006B    pop        ebp
 0059006C    ret        10
*}
end;

//00590070
procedure sub_00590070();
begin
{*
 00590070    push       ebp
 00590071    mov        ebp,esp
 00590073    pop        ebp
 00590074    ret        10
*}
end;

//00590078
procedure sub_00590078();
begin
{*
 00590078    push       ebp
 00590079    mov        ebp,esp
 0059007B    pop        ebp
 0059007C    ret        10
*}
end;

//00590080
procedure sub_00590080();
begin
{*
 00590080    ret
*}
end;

//00590084
procedure sub_00590084();
begin
{*
 00590084    ret
*}
end;

//00590088
procedure sub_00590088();
begin
{*
 00590088    ret
*}
end;

//0059008C
procedure sub_0059008C();
begin
{*
 0059008C    push       ebp
 0059008D    mov        ebp,esp
 0059008F    pop        ebp
 00590090    ret        40
*}
end;

//00590094
procedure sub_00590094();
begin
{*
 00590094    ret
*}
end;

//00590098
procedure sub_00590098();
begin
{*
 00590098    ret
*}
end;

//0059009C
procedure sub_0059009C();
begin
{*
 0059009C    push       ebp
 0059009D    mov        ebp,esp
 0059009F    pop        ebp
 005900A0    ret        20
*}
end;

//005900A4
procedure sub_005900A4();
begin
{*
 005900A4    push       ebp
 005900A5    mov        ebp,esp
 005900A7    pop        ebp
 005900A8    ret        20
*}
end;

//005900AC
procedure sub_005900AC();
begin
{*
 005900AC    push       ebp
 005900AD    mov        ebp,esp
 005900AF    xor        eax,eax
 005900B1    push       ebp
 005900B2    push       5900CB
 005900B7    push       dword ptr fs:[eax]
 005900BA    mov        dword ptr fs:[eax],esp
 005900BD    xor        eax,eax
 005900BF    pop        edx
 005900C0    pop        ecx
 005900C1    pop        ecx
 005900C2    mov        dword ptr fs:[eax],edx
 005900C5    push       5900D2
 005900CA    ret
<005900CB    jmp        @HandleFinally
<005900D0    jmp        005900CA
 005900D2    pop        ebp
 005900D3    ret        20
*}
end;

//005900D8
procedure sub_005900D8();
begin
{*
 005900D8    push       ebp
 005900D9    mov        ebp,esp
 005900DB    pop        ebp
 005900DC    ret        18
*}
end;

//005900E0
procedure sub_005900E0();
begin
{*
 005900E0    ret
*}
end;

//005900E4
procedure sub_005900E4();
begin
{*
 005900E4    push       ebp
 005900E5    mov        ebp,esp
 005900E7    pop        ebp
 005900E8    ret        10
*}
end;

//005900EC
procedure sub_005900EC();
begin
{*
 005900EC    push       ebp
 005900ED    mov        ebp,esp
 005900EF    pop        ebp
 005900F0    ret        20
*}
end;

//005900F4
procedure sub_005900F4();
begin
{*
 005900F4    push       ebp
 005900F5    mov        ebp,esp
 005900F7    pop        ebp
 005900F8    ret        10
*}
end;

//005900FC
procedure sub_005900FC();
begin
{*
 005900FC    push       ebp
 005900FD    mov        ebp,esp
 005900FF    pop        ebp
 00590100    ret        30
*}
end;

//00590104
//procedure sub_00590104(?:?);
//begin
{*
 00590104    push       ebp
 00590105    mov        ebp,esp
 00590107    push       ecx
 00590108    push       ebx
 00590109    mov        ebx,eax
 0059010B    mov        eax,ebx
 0059010D    mov        edx,dword ptr [eax]
 0059010F    call       dword ptr [edx+0A0]; TRvRenderPDF.sub_00590028
 00590115    mov        dword ptr [ebp-4],eax
 00590118    fild       dword ptr [ebp-4]
 0059011B    fld        qword ptr [ebp+8]
 0059011E    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 00590121    fsub       qword ptr [eax+80]
 00590127    fmulp      st(1),st
 00590129    call       @ROUND
 0059012E    pop        ebx
 0059012F    pop        ecx
 00590130    pop        ebp
 00590131    ret        8
*}
//end;

//00590134
//procedure sub_00590134(?:?);
//begin
{*
 00590134    push       ebp
 00590135    mov        ebp,esp
 00590137    push       ecx
 00590138    push       ebx
 00590139    mov        ebx,eax
 0059013B    mov        eax,ebx
 0059013D    mov        edx,dword ptr [eax]
 0059013F    call       dword ptr [edx+0A4]; TRvRenderPDF.sub_00590030
 00590145    mov        dword ptr [ebp-4],eax
 00590148    fild       dword ptr [ebp-4]
 0059014B    fld        qword ptr [ebp+8]
 0059014E    mov        eax,dword ptr [ebx+70]; TRvRenderPDF.?f70:dword
 00590151    fsub       qword ptr [eax+90]
 00590157    fmulp      st(1),st
 00590159    call       @ROUND
 0059015E    pop        ebx
 0059015F    pop        ecx
 00590160    pop        ebp
 00590161    ret        8
*}
//end;

//00590164
destructor TRPRenderStream.Destroy;
begin
{*
 00590164    push       ebx
 00590165    push       esi
 00590166    call       @BeforeDestruction
 0059016B    mov        ebx,edx
 0059016D    mov        esi,eax
 0059016F    lea        eax,[esi+80]; TRPRenderStream.?f80:TFileStream
 00590175    call       FreeAndNil
 0059017A    mov        edx,ebx
 0059017C    and        dl,0FC
 0059017F    mov        eax,esi
 00590181    call       TRPRender.Destroy
 00590186    test       bl,bl
>00590188    jle        00590191
 0059018A    mov        eax,esi
 0059018C    call       @ClassDestroy
 00590191    pop        esi
 00590192    pop        ebx
 00590193    ret
*}
end;

//00590194
//procedure sub_00590194(?:TRvRenderPDF; ?:AnsiString);
//begin
{*
 00590194    push       ebx
 00590195    push       esi
 00590196    push       edi
 00590197    mov        edi,edx
 00590199    mov        ebx,eax
 0059019B    push       0FFFF
 005901A0    mov        ecx,edi
 005901A2    mov        dl,1
 005901A4    mov        eax,[0041CB08]; TFileStream
 005901A9    call       TFileStream.Create; TFileStream.Create
 005901AE    mov        esi,eax
 005901B0    mov        dword ptr [ebx+80],esi; TRvRenderPDF.?f80:TFileStream
 005901B6    mov        edx,esi
 005901B8    mov        eax,ebx
 005901BA    call       005901E0
 005901BF    pop        edi
 005901C0    pop        esi
 005901C1    pop        ebx
 005901C2    ret
*}
//end;

//005901C4
procedure sub_005901C4;
begin
{*
 005901C4    push       ebx
 005901C5    mov        ebx,eax
 005901C7    lea        eax,[ebx+80]; TRvRenderPDF.?f80:TFileStream
 005901CD    call       FreeAndNil
 005901D2    xor        edx,edx
 005901D4    mov        eax,ebx
 005901D6    call       005901E0
 005901DB    pop        ebx
 005901DC    ret
*}
end;

//005901E0
//procedure sub_005901E0(?:TRvRenderPDF; ?:TFileStream);
//begin
{*
 005901E0    mov        dword ptr [eax+7C],edx; TRvRenderPDF.?f7C:TFileStream
 005901E3    mov        dword ptr [eax+78],edx; TRvRenderPDF.?f78:TFileStream
 005901E6    ret
*}
//end;

//005901E8
//procedure sub_005901E8(?:?);
//begin
{*
 005901E8    push       ebx
 005901E9    push       esi
 005901EA    mov        ebx,edx
 005901EC    mov        esi,eax
 005901EE    test       ebx,ebx
>005901F0    je         0059020C
 005901F2    mov        eax,ebx
 005901F4    call       @LStrLen
 005901F9    push       eax
 005901FA    mov        eax,ebx
 005901FC    call       @LStrToPChar
 00590201    mov        edx,eax
 00590203    mov        eax,dword ptr [esi+78]; TRvRenderPDF.?f78:TFileStream
 00590206    pop        ecx
 00590207    call       TStream.WriteBuffer
 0059020C    pop        esi
 0059020D    pop        ebx
 0059020E    ret
*}
//end;

//00590210
//procedure sub_00590210(?:?; ?:?; ?:?);
//begin
{*
 00590210    push       ebp
 00590211    mov        ebp,esp
 00590213    push       0
 00590215    push       ebx
 00590216    push       esi
 00590217    push       edi
 00590218    mov        edi,ecx
 0059021A    mov        esi,edx
 0059021C    mov        ebx,eax
 0059021E    xor        eax,eax
 00590220    push       ebp
 00590221    push       59025F
 00590226    push       dword ptr fs:[eax]
 00590229    mov        dword ptr fs:[eax],esp
 0059022C    lea        eax,[ebp-4]
 0059022F    push       eax
 00590230    mov        edx,edi
 00590232    mov        ecx,dword ptr [ebp+8]
 00590235    mov        eax,esi
 00590237    call       Format
 0059023C    mov        edx,dword ptr [ebp-4]
 0059023F    mov        eax,ebx
 00590241    mov        ecx,dword ptr [eax]
 00590243    call       dword ptr [ecx+0BC]; TRvRenderPreview.sub_005901E8
 00590249    xor        eax,eax
 0059024B    pop        edx
 0059024C    pop        ecx
 0059024D    pop        ecx
 0059024E    mov        dword ptr fs:[eax],edx
 00590251    push       590266
 00590256    lea        eax,[ebp-4]
 00590259    call       @LStrClr
 0059025E    ret
<0059025F    jmp        @HandleFinally
<00590264    jmp        00590256
 00590266    pop        edi
 00590267    pop        esi
 00590268    pop        ebx
 00590269    pop        ecx
 0059026A    pop        ebp
 0059026B    ret        4
*}
//end;

//00590270
//procedure sub_00590270(?:?);
//begin
{*
 00590270    push       ebp
 00590271    mov        ebp,esp
 00590273    push       0
 00590275    push       ebx
 00590276    push       esi
 00590277    mov        esi,edx
 00590279    mov        ebx,eax
 0059027B    xor        eax,eax
 0059027D    push       ebp
 0059027E    push       5902BB
 00590283    push       dword ptr fs:[eax]
 00590286    mov        dword ptr fs:[eax],esp
 00590289    lea        eax,[ebp-4]
 0059028C    mov        ecx,5902D0; '\r\n'
 00590291    mov        edx,esi
 00590293    call       @LStrCat3
 00590298    mov        edx,dword ptr [ebp-4]
 0059029B    mov        eax,ebx
 0059029D    mov        ecx,dword ptr [eax]
 0059029F    call       dword ptr [ecx+0BC]; TRvRenderPDF.sub_005901E8
 005902A5    xor        eax,eax
 005902A7    pop        edx
 005902A8    pop        ecx
 005902A9    pop        ecx
 005902AA    mov        dword ptr fs:[eax],edx
 005902AD    push       5902C2
 005902B2    lea        eax,[ebp-4]
 005902B5    call       @LStrClr
 005902BA    ret
<005902BB    jmp        @HandleFinally
<005902C0    jmp        005902B2
 005902C2    pop        esi
 005902C3    pop        ebx
 005902C4    pop        ecx
 005902C5    pop        ebp
 005902C6    ret
*}
//end;

//005902D4
//procedure sub_005902D4(?:?; ?:?; ?:?);
//begin
{*
 005902D4    push       ebp
 005902D5    mov        ebp,esp
 005902D7    push       0
 005902D9    push       ebx
 005902DA    push       esi
 005902DB    push       edi
 005902DC    mov        edi,ecx
 005902DE    mov        esi,edx
 005902E0    mov        ebx,eax
 005902E2    xor        eax,eax
 005902E4    push       ebp
 005902E5    push       590323
 005902EA    push       dword ptr fs:[eax]
 005902ED    mov        dword ptr fs:[eax],esp
 005902F0    lea        eax,[ebp-4]
 005902F3    push       eax
 005902F4    mov        edx,edi
 005902F6    mov        ecx,dword ptr [ebp+8]
 005902F9    mov        eax,esi
 005902FB    call       Format
 00590300    mov        edx,dword ptr [ebp-4]
 00590303    mov        eax,ebx
 00590305    mov        ecx,dword ptr [eax]
 00590307    call       dword ptr [ecx+0C4]; TRvRenderPreview.sub_00590270
 0059030D    xor        eax,eax
 0059030F    pop        edx
 00590310    pop        ecx
 00590311    pop        ecx
 00590312    mov        dword ptr fs:[eax],edx
 00590315    push       59032A
 0059031A    lea        eax,[ebp-4]
 0059031D    call       @LStrClr
 00590322    ret
<00590323    jmp        @HandleFinally
<00590328    jmp        0059031A
 0059032A    pop        edi
 0059032B    pop        esi
 0059032C    pop        ebx
 0059032D    pop        ecx
 0059032E    pop        ebp
 0059032F    ret        4
*}
//end;

end.