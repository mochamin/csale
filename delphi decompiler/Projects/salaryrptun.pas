{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit salaryrptun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBCtrls, RpRave, RpSystem, RpConDS;

type
  Tsalaryrptfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    btntambah:TSpeedButton;//f30C
    Panel2:TPanel;//f310
    cbkaryawan:TDBLookupComboBox;//f314
    cbperiode:TComboBox;//f318
    Label2:TLabel;//f31C
    Label3:TLabel;//f320
    rpGaji:TRvProject;//f324
    rsgaji:TRvSystem;//f328
    rdgaji:TRvDataSetConnection;//f32C
    rdkaryawanrpt:TRvDataSetConnection;//f330
    rdkardetail:TRvDataSetConnection;//f334
    rdpenambah:TRvDataSetConnection;//f338
    rdpengurang:TRvDataSetConnection;//f33C
    procedure FormActivate;
    procedure FormCreate;
    procedure btntambahClick;
  end;

implementation

{$R *.DFM}

//006102CC
procedure Tsalaryrptfrm.FormActivate;
begin
{*
 006102CC    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006102D1    mov        eax,dword ptr [eax]
 006102D3    mov        eax,dword ptr [eax+904]; Tdm.karyawanlookup:TZQuery
 006102D9    call       005D8634
 006102DE    ret
*}
end;

//006102E0
//procedure sub_006102E0(?:Tsalaryrptfrm);
//begin
{*
 006102E0    push       ebp
 006102E1    mov        ebp,esp
 006102E3    xor        ecx,ecx
 006102E5    push       ecx
 006102E6    push       ecx
 006102E7    push       ecx
 006102E8    push       ecx
 006102E9    push       ecx
 006102EA    push       ebx
 006102EB    push       esi
 006102EC    mov        ebx,eax
 006102EE    xor        eax,eax
 006102F0    push       ebp
 006102F1    push       6103C0
 006102F6    push       dword ptr fs:[eax]
 006102F9    mov        dword ptr fs:[eax],esp
 006102FC    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00610301    mov        eax,dword ptr [eax]
 00610303    mov        esi,dword ptr [eax+908]; Tdm.salaryrpt:TZQuery
 00610309    mov        eax,esi
 0061030B    call       TZReadOnlyQuery.GetSQL
 00610310    mov        edx,6103D8; 'select * from salary where sa_kr_id = (:id) and sa_period = (:pr) '
 00610315    mov        ecx,dword ptr [eax]
 00610317    call       dword ptr [ecx+2C]
 0061031A    mov        edx,610424; 'id'
 0061031F    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00610325    call       TParams.ParamByName
 0061032A    mov        edx,dword ptr [ebx+314]; Tsalaryrptfrm.cbkaryawan:TDBLookupComboBox
 00610330    add        edx,240; TDBLookupComboBox.?f240:Variant
 00610336    call       TParam.SetAsVariant
 0061033B    lea        edx,[ebp-14]
 0061033E    mov        eax,dword ptr [ebx+318]; Tsalaryrptfrm.cbperiode:TComboBox
 00610344    call       TControl.GetText
 00610349    mov        edx,dword ptr [ebp-14]
 0061034C    lea        eax,[ebp-10]
 0061034F    call       @VarFromLStr
 00610354    lea        eax,[ebp-10]
 00610357    push       eax
 00610358    mov        edx,610430; 'pr'
 0061035D    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00610363    call       TParams.ParamByName
 00610368    pop        edx
 00610369    call       TParam.SetAsVariant
 0061036E    mov        eax,esi
 00610370    call       TDataSet.Open
 00610375    mov        edx,61043C; 'slipgaji.rav'
 0061037A    mov        eax,dword ptr [ebx+324]; Tsalaryrptfrm.rpGaji:TRvProject
 00610380    call       TRvProject.SetProjectFile
 00610385    mov        cl,1
 00610387    mov        edx,61043C; 'slipgaji.rav'
 0061038C    mov        eax,dword ptr [ebx+324]; Tsalaryrptfrm.rpGaji:TRvProject
 00610392    call       005D84D0
 00610397    mov        eax,dword ptr [ebx+324]; Tsalaryrptfrm.rpGaji:TRvProject
 0061039D    call       005D8484
 006103A2    xor        eax,eax
 006103A4    pop        edx
 006103A5    pop        ecx
 006103A6    pop        ecx
 006103A7    mov        dword ptr fs:[eax],edx
 006103AA    push       6103C7
 006103AF    lea        eax,[ebp-14]
 006103B2    call       @LStrClr
 006103B7    lea        eax,[ebp-10]
 006103BA    call       @VarClr
 006103BF    ret
<006103C0    jmp        @HandleFinally
<006103C5    jmp        006103AF
 006103C7    pop        esi
 006103C8    pop        ebx
 006103C9    mov        esp,ebp
 006103CB    pop        ebp
 006103CC    ret
*}
//end;

//0061044C
procedure Tsalaryrptfrm.FormCreate;
begin
{*
 0061044C    push       ebp
 0061044D    mov        ebp,esp
 0061044F    add        esp,0FFFFFFE8
 00610452    push       ebx
 00610453    push       esi
 00610454    xor        ecx,ecx
 00610456    mov        dword ptr [ebp-18],ecx
 00610459    mov        dword ptr [ebp-14],ecx
 0061045C    mov        esi,eax
 0061045E    xor        eax,eax
 00610460    push       ebp
 00610461    push       610506
 00610466    push       dword ptr fs:[eax]
 00610469    mov        dword ptr fs:[eax],esp
 0061046C    call       Date
 00610471    add        esp,0FFFFFFF8
 00610474    fstp       qword ptr [esp]
 00610477    wait
 00610478    xor        eax,eax
 0061047A    call       IncMonth
 0061047F    fstp       qword ptr [ebp-10]
 00610482    wait
 00610483    or         ebx,0FFFFFFFF
 00610486    call       Date
 0061048B    add        esp,0FFFFFFF8
 0061048E    fstp       qword ptr [esp]
 00610491    wait
 00610492    mov        eax,ebx
 00610494    call       IncMonth
 00610499    fstp       qword ptr [ebp-8]
 0061049C    wait
 0061049D    push       dword ptr [ebp-4]
 006104A0    push       dword ptr [ebp-8]
 006104A3    lea        edx,[ebp-14]
 006104A6    mov        eax,61051C; 'mmmm yyyy'
 006104AB    call       FormatDateTime
 006104B0    mov        edx,dword ptr [ebp-14]
 006104B3    mov        eax,dword ptr [esi+318]; Tsalaryrptfrm.cbperiode:TComboBox
 006104B9    mov        eax,dword ptr [eax+23C]; TComboBox.FItems:TStrings
 006104BF    mov        ecx,dword ptr [eax]
 006104C1    call       dword ptr [ecx+38]; TStrings.Add
 006104C4    inc        ebx
 006104C5    cmp        ebx,0B
<006104C8    jne        00610486
 006104CA    push       dword ptr [ebp-0C]
 006104CD    push       dword ptr [ebp-10]
 006104D0    lea        edx,[ebp-18]
 006104D3    mov        eax,61051C; 'mmmm yyyy'
 006104D8    call       FormatDateTime
 006104DD    mov        edx,dword ptr [ebp-18]
 006104E0    mov        eax,dword ptr [esi+318]; Tsalaryrptfrm.cbperiode:TComboBox
 006104E6    call       TControl.SetText
 006104EB    xor        eax,eax
 006104ED    pop        edx
 006104EE    pop        ecx
 006104EF    pop        ecx
 006104F0    mov        dword ptr fs:[eax],edx
 006104F3    push       61050D
 006104F8    lea        eax,[ebp-18]
 006104FB    mov        edx,2
 00610500    call       @LStrArrayClr
 00610505    ret
<00610506    jmp        @HandleFinally
<0061050B    jmp        006104F8
 0061050D    pop        esi
 0061050E    pop        ebx
 0061050F    mov        esp,ebp
 00610511    pop        ebp
 00610512    ret
*}
end;

//00610528
procedure Tsalaryrptfrm.btntambahClick;
begin
{*
 00610528    call       006102E0
 0061052D    ret
*}
end;

end.