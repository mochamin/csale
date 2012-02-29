{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvSecurity;

interface

uses
  Classes, Windows, Graphics, RvClass, RvData, RvDefine;

type
  TRaveBaseSecurity = class(TRaveDataObject)
  public
    procedure @AbstractError(); virtual;
  end;
  TRaveSimpleSecurity = class(TRaveBaseSecurity)
  public
    UserList:TStrings;//f7C
    CaseMatters:Boolean;//f80
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    //function sub_0059AA58(?:?; ?:?):?; virtual;
  end;
  TRaveLookupSecurity = class(TRaveBaseSecurity)
  public
    DataView:TRaveBaseDataView;//f7C
    f80:TRaveFieldName;//f80
    f84:TRaveFieldName;//f84
    //function sub_0059AB0C(?:?; ?:?):?; virtual;
  end;

implementation

{$R *.DFM}

//0059A8E4
procedure sub_0059A8E4;
begin
{*
 0059A8E4    push       ebp
 0059A8E5    mov        ebp,esp
 0059A8E7    add        esp,0FFFFFFF0
 0059A8EA    push       ebx
 0059A8EB    xor        eax,eax
 0059A8ED    mov        dword ptr [ebp-10],eax
 0059A8F0    mov        dword ptr [ebp-0C],eax
 0059A8F3    xor        eax,eax
 0059A8F5    push       ebp
 0059A8F6    push       59A97B
 0059A8FB    push       dword ptr fs:[eax]
 0059A8FE    mov        dword ptr fs:[eax],esp
 0059A901    mov        eax,[0059A50C]; TRaveSimpleSecurity
 0059A906    mov        dword ptr [ebp-8],eax
 0059A909    mov        eax,[0059A6D8]; TRaveLookupSecurity
 0059A90E    mov        dword ptr [ebp-4],eax
 0059A911    lea        edx,[ebp-8]
 0059A914    mov        ecx,1
 0059A919    xor        eax,eax
 0059A91B    call       005A7F48
 0059A920    mov        ebx,dword ptr ds:[61B830]
 0059A926    mov        ebx,dword ptr [ebx]
 0059A928    lea        edx,[ebp-0C]
 0059A92B    mov        eax,59A990; 'Simple Security Controller'
 0059A930    call       ebx
 0059A932    mov        eax,dword ptr [ebp-0C]
 0059A935    mov        edx,dword ptr ds:[59A50C]; TRaveSimpleSecurity
 0059A93B    call       005A80C0
 0059A940    mov        ebx,dword ptr ds:[61B830]
 0059A946    mov        ebx,dword ptr [ebx]
 0059A948    lea        edx,[ebp-10]
 0059A94B    mov        eax,59A9B4; 'Data Lookup Security Controller'
 0059A950    call       ebx
 0059A952    mov        eax,dword ptr [ebp-10]
 0059A955    mov        edx,dword ptr ds:[59A6D8]; TRaveLookupSecurity
 0059A95B    call       005A80C0
 0059A960    xor        eax,eax
 0059A962    pop        edx
 0059A963    pop        ecx
 0059A964    pop        ecx
 0059A965    mov        dword ptr fs:[eax],edx
 0059A968    push       59A982
 0059A96D    lea        eax,[ebp-10]
 0059A970    mov        edx,2
 0059A975    call       @LStrArrayClr
 0059A97A    ret
<0059A97B    jmp        @HandleFinally
<0059A980    jmp        0059A96D
 0059A982    pop        ebx
 0059A983    mov        esp,ebp
 0059A985    pop        ebp
 0059A986    ret
*}
end;

//0059A9D4
constructor TRaveSimpleSecurity.Create(AOwner:TComponent);
begin
{*
 0059A9D4    push       ebx
 0059A9D5    push       esi
 0059A9D6    test       dl,dl
>0059A9D8    je         0059A9E2
 0059A9DA    add        esp,0FFFFFFF0
 0059A9DD    call       @ClassCreate
 0059A9E2    mov        ebx,edx
 0059A9E4    mov        esi,eax
 0059A9E6    xor        edx,edx
 0059A9E8    mov        eax,esi
 0059A9EA    call       TRaveProjectItem.Create
 0059A9EF    mov        dl,1
 0059A9F1    mov        eax,[0041C8E4]; TStringList
 0059A9F6    call       TObject.Create; TStringList.Create
 0059A9FB    mov        dword ptr [esi+7C],eax; TRaveSimpleSecurity.UserList:TStrings
 0059A9FE    mov        eax,esi
 0059AA00    test       bl,bl
>0059AA02    je         0059AA13
 0059AA04    call       @AfterConstruction
 0059AA09    pop        dword ptr fs:[0]
 0059AA10    add        esp,0C
 0059AA13    mov        eax,esi
 0059AA15    pop        esi
 0059AA16    pop        ebx
 0059AA17    ret
*}
end;

//0059AA18
destructor TRaveSimpleSecurity.Destroy;
begin
{*
 0059AA18    push       ebx
 0059AA19    push       esi
 0059AA1A    call       @BeforeDestruction
 0059AA1F    mov        ebx,edx
 0059AA21    mov        esi,eax
 0059AA23    lea        eax,[esi+7C]; TRaveSimpleSecurity.UserList:TStrings
 0059AA26    call       FreeAndNil
 0059AA2B    mov        edx,ebx
 0059AA2D    and        dl,0FC
 0059AA30    mov        eax,esi
 0059AA32    call       TRaveProjectItem.Destroy
 0059AA37    test       bl,bl
>0059AA39    jle        0059AA42
 0059AA3B    mov        eax,esi
 0059AA3D    call       @ClassDestroy
 0059AA42    pop        esi
 0059AA43    pop        ebx
 0059AA44    ret
*}
end;

//0059AA48
procedure TRaveSimpleSecurity.SetUserList(Self:TRaveSimpleSecurity);
begin
{*
 0059AA48    push       esi
 0059AA49    mov        esi,eax
 0059AA4B    mov        eax,dword ptr [esi+7C]; TRaveSimpleSecurity.UserList:TStrings
 0059AA4E    mov        ecx,dword ptr [eax]
 0059AA50    call       dword ptr [ecx+8]; TStrings.Assign
 0059AA53    pop        esi
 0059AA54    ret
*}
end;

//0059AA58
//function sub_0059AA58(?:?; ?:?):?;
//begin
{*
 0059AA58    push       ebp
 0059AA59    mov        ebp,esp
 0059AA5B    add        esp,0FFFFFFF0
 0059AA5E    push       ebx
 0059AA5F    xor        ebx,ebx
 0059AA61    mov        dword ptr [ebp-10],ebx
 0059AA64    mov        dword ptr [ebp-0C],ebx
 0059AA67    mov        dword ptr [ebp-8],ecx
 0059AA6A    mov        dword ptr [ebp-4],edx
 0059AA6D    mov        ebx,eax
 0059AA6F    mov        eax,dword ptr [ebp-4]
 0059AA72    call       @LStrAddRef
 0059AA77    mov        eax,dword ptr [ebp-8]
 0059AA7A    call       @LStrAddRef
 0059AA7F    xor        eax,eax
 0059AA81    push       ebp
 0059AA82    push       59AAFD
 0059AA87    push       dword ptr fs:[eax]
 0059AA8A    mov        dword ptr fs:[eax],esp
 0059AA8D    cmp        dword ptr [ebp-8],0
>0059AA91    jne        0059AA97
 0059AA93    xor        ebx,ebx
>0059AA95    jmp        0059AAE2
 0059AA97    cmp        byte ptr [ebx+80],0; TRaveSimpleSecurity.CaseMatters:Boolean
>0059AA9E    je         0059AAC2
 0059AAA0    lea        ecx,[ebp-0C]
 0059AAA3    mov        edx,dword ptr [ebp-4]
 0059AAA6    mov        eax,dword ptr [ebx+7C]; TRaveSimpleSecurity.UserList:TStrings
 0059AAA9    call       TStrings.GetValue
 0059AAAE    mov        eax,dword ptr [ebp-0C]
 0059AAB1    mov        edx,dword ptr [ebp-8]
 0059AAB4    call       AnsiCompareStr
 0059AAB9    test       eax,eax
 0059AABB    sete       al
 0059AABE    mov        ebx,eax
>0059AAC0    jmp        0059AAE2
 0059AAC2    lea        ecx,[ebp-10]
 0059AAC5    mov        edx,dword ptr [ebp-4]
 0059AAC8    mov        eax,dword ptr [ebx+7C]; TRaveSimpleSecurity.UserList:TStrings
 0059AACB    call       TStrings.GetValue
 0059AAD0    mov        eax,dword ptr [ebp-10]
 0059AAD3    mov        edx,dword ptr [ebp-8]
 0059AAD6    call       AnsiCompareText
 0059AADB    test       eax,eax
 0059AADD    sete       al
 0059AAE0    mov        ebx,eax
 0059AAE2    xor        eax,eax
 0059AAE4    pop        edx
 0059AAE5    pop        ecx
 0059AAE6    pop        ecx
 0059AAE7    mov        dword ptr fs:[eax],edx
 0059AAEA    push       59AB04
 0059AAEF    lea        eax,[ebp-10]
 0059AAF2    mov        edx,4
 0059AAF7    call       @LStrArrayClr
 0059AAFC    ret
<0059AAFD    jmp        @HandleFinally
<0059AB02    jmp        0059AAEF
 0059AB04    mov        eax,ebx
 0059AB06    pop        ebx
 0059AB07    mov        esp,ebp
 0059AB09    pop        ebp
 0059AB0A    ret
*}
//end;

//0059AB0C
//function sub_0059AB0C(?:?; ?:?):?;
//begin
{*
 0059AB0C    push       ebp
 0059AB0D    mov        ebp,esp
 0059AB0F    add        esp,0FFFFFFF4
 0059AB12    push       ebx
 0059AB13    push       esi
 0059AB14    xor        ebx,ebx
 0059AB16    mov        dword ptr [ebp-0C],ebx
 0059AB19    mov        dword ptr [ebp-8],ecx
 0059AB1C    mov        dword ptr [ebp-4],edx
 0059AB1F    mov        ebx,eax
 0059AB21    mov        eax,dword ptr [ebp-4]
 0059AB24    call       @LStrAddRef
 0059AB29    mov        eax,dword ptr [ebp-8]
 0059AB2C    call       @LStrAddRef
 0059AB31    xor        eax,eax
 0059AB33    push       ebp
 0059AB34    push       59ABC3
 0059AB39    push       dword ptr fs:[eax]
 0059AB3C    mov        dword ptr fs:[eax],esp
 0059AB3F    cmp        dword ptr [ebp-8],0
>0059AB43    je         0059AB63
 0059AB45    cmp        dword ptr [ebp-4],0
>0059AB49    je         0059AB63
 0059AB4B    cmp        dword ptr [ebx+80],0; TRaveLookupSecurity.?f80:TRaveFieldName
>0059AB52    je         0059AB63
 0059AB54    cmp        dword ptr [ebx+84],0; TRaveLookupSecurity.?f84:TRaveFieldName
>0059AB5B    je         0059AB63
 0059AB5D    cmp        dword ptr [ebx+7C],0; TRaveLookupSecurity.DataView:TRaveBaseDataView
>0059AB61    jne        0059AB67
 0059AB63    xor        ebx,ebx
>0059AB65    jmp        0059ABA8
 0059AB67    mov        eax,dword ptr [ebx+84]; TRaveLookupSecurity.?f84:TRaveFieldName
 0059AB6D    push       eax
 0059AB6E    mov        eax,dword ptr [ebx+84]; TRaveLookupSecurity.?f84:TRaveFieldName
 0059AB74    push       eax
 0059AB75    push       0
 0059AB77    lea        eax,[ebp-0C]
 0059AB7A    push       eax
 0059AB7B    mov        edx,dword ptr [ebx+80]; TRaveLookupSecurity.?f80:TRaveFieldName
 0059AB81    mov        esi,dword ptr [ebx+7C]; TRaveLookupSecurity.DataView:TRaveBaseDataView
 0059AB84    mov        eax,esi
 0059AB86    call       005A0AC8
 0059AB8B    mov        ecx,eax
 0059AB8D    mov        edx,dword ptr [ebp-4]
 0059AB90    mov        eax,esi
 0059AB92    call       005A0408
 0059AB97    mov        eax,dword ptr [ebp-0C]
 0059AB9A    mov        edx,dword ptr [ebp-8]
 0059AB9D    call       AnsiCompareStr
 0059ABA2    dec        eax
 0059ABA3    sete       al
 0059ABA6    mov        ebx,eax
 0059ABA8    xor        eax,eax
 0059ABAA    pop        edx
 0059ABAB    pop        ecx
 0059ABAC    pop        ecx
 0059ABAD    mov        dword ptr fs:[eax],edx
 0059ABB0    push       59ABCA
 0059ABB5    lea        eax,[ebp-0C]
 0059ABB8    mov        edx,3
 0059ABBD    call       @LStrArrayClr
 0059ABC2    ret
<0059ABC3    jmp        @HandleFinally
<0059ABC8    jmp        0059ABB5
 0059ABCA    mov        eax,ebx
 0059ABCC    pop        esi
 0059ABCD    pop        ebx
 0059ABCE    mov        esp,ebp
 0059ABD0    pop        ebp
 0059ABD1    ret
*}
//end;

Initialization
//0059AC04
{*
 0059AC04    sub        dword ptr ds:[61F864],1
>0059AC0B    jae        0059AC1C
 0059AC0D    mov        edx,59A8E4; sub_0059A8E4
 0059AC12    mov        eax,59AC28; 'RVCL'
 0059AC17    call       005A7E10
 0059AC1C    ret
*}
Finalization
end.