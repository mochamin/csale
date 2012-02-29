{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit94;

interface

uses
  Classes, Windows, Graphics;

type
  TDataConnection = class(TObject)
  public
    f4:dword;//f4
    f8:dword;//f8
    fC:String;//fC
    f10:String;//f10
    f14:String;//f14
    f18:String;//f18
    destructor Destroy; virtual;
    //constructor Create(?:TDataConnection; _Dv__:Boolean);
  end;
  TResultSetField = class(TObject)
  public
    f4:String;//f4
    f10:String;//f10
    f14:String;//f14
  end;
  TResultSetFieldList = class(TObject)
  public
    f4:TList;//f4
    destructor Destroy; virtual;
    //constructor Create(?:TResultSetFieldList; _Dv__:Boolean);
  end;
  TDataResultSet = class(TObject)
  public
    f4:dword;//f4
    f8:String;//f8
    fC:dword;//fC
    f10:TResultSetFieldList;//f10
    f14:Pointer;//f14
    destructor Destroy; virtual;
    //constructor Create(?:TDataResultSet; _Dv__:Boolean);
  end;
  TRaveDataLink = class(TObject)
  public
    f4:String;//f4
    f8:dword;//f8
    f4C:Pointer;//f4C
    f50:byte;//f50
    f54:String;//f54
    f58:String;//f58
    f5C:dword;//f5C
    f60:dword;//f60
    destructor Destroy; virtual;
  end;
  TRaveDataLinks = class(TObject)
  public
    f4:TList;//f4
    destructor Destroy; virtual;
    //constructor Create(?:TRaveDataLinks; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//005BF8F8
//constructor TDataConnection.Create(?:TDataConnection; _Dv__:Boolean);
//begin
{*
 005BF8F8    push       ebx
 005BF8F9    push       esi
 005BF8FA    push       edi
 005BF8FB    test       dl,dl
>005BF8FD    je         005BF907
 005BF8FF    add        esp,0FFFFFFF0
 005BF902    call       @ClassCreate
 005BF907    mov        esi,ecx
 005BF909    mov        ebx,edx
 005BF90B    mov        edi,eax
 005BF90D    xor        edx,edx
 005BF90F    mov        eax,edi
 005BF911    call       TObject.Create
 005BF916    mov        dword ptr [edi+4],esi; TDataConnection.?f4:dword
 005BF919    mov        eax,edi
 005BF91B    test       bl,bl
>005BF91D    je         005BF92E
 005BF91F    call       @AfterConstruction
 005BF924    pop        dword ptr fs:[0]
 005BF92B    add        esp,0C
 005BF92E    mov        eax,edi
 005BF930    pop        edi
 005BF931    pop        esi
 005BF932    pop        ebx
 005BF933    ret
*}
//end;

//005BF934
destructor TDataConnection.Destroy;
begin
{*
 005BF934    push       ebx
 005BF935    push       esi
 005BF936    call       @BeforeDestruction
 005BF93B    mov        ebx,edx
 005BF93D    mov        esi,eax
 005BF93F    mov        eax,esi
 005BF941    call       005BF960
 005BF946    mov        edx,ebx
 005BF948    and        dl,0FC
 005BF94B    mov        eax,esi
 005BF94D    call       TObject.Destroy
 005BF952    test       bl,bl
>005BF954    jle        005BF95D
 005BF956    mov        eax,esi
 005BF958    call       @ClassDestroy
 005BF95D    pop        esi
 005BF95E    pop        ebx
 005BF95F    ret
*}
end;

//005BF960
//procedure sub_005BF960(?:TDataConnection);
//begin
{*
 005BF960    push       ebx
 005BF961    mov        ebx,eax
 005BF963    mov        eax,dword ptr [ebx+8]; TDataConnection.?f8:dword
 005BF966    test       eax,eax
>005BF968    je         005BF979
 005BF96A    mov        edx,eax
 005BF96C    mov        eax,dword ptr [ebx+4]; TDataConnection.?f4:dword
 005BF96F    call       005BFD1C
 005BF974    xor        eax,eax
 005BF976    mov        dword ptr [ebx+8],eax; TDataConnection.?f8:dword
 005BF979    pop        ebx
 005BF97A    ret
*}
//end;

//005BF97C
//procedure sub_005BF97C(?:?);
//begin
{*
 005BF97C    mov        edx,dword ptr [eax+14]
 005BF97F    push       edx
 005BF980    mov        edx,dword ptr [eax+18]
 005BF983    push       edx
 005BF984    lea        edx,[eax+8]
 005BF987    push       edx
 005BF988    mov        ecx,dword ptr [eax+10]
 005BF98B    mov        edx,dword ptr [eax+0C]
 005BF98E    mov        eax,dword ptr [eax+4]
 005BF991    call       005BFDE4
 005BF996    ret
*}
//end;

//005BF998
//constructor TResultSetFieldList.Create(?:TResultSetFieldList; _Dv__:Boolean);
//begin
{*
 005BF998    push       ebx
 005BF999    push       esi
 005BF99A    test       dl,dl
>005BF99C    je         005BF9A6
 005BF99E    add        esp,0FFFFFFF0
 005BF9A1    call       @ClassCreate
 005BF9A6    mov        ebx,edx
 005BF9A8    mov        esi,eax
 005BF9AA    xor        edx,edx
 005BF9AC    mov        eax,esi
 005BF9AE    call       TObject.Create
 005BF9B3    mov        dl,1
 005BF9B5    mov        eax,[0041C260]; TList
 005BF9BA    call       TObject.Create; TList.Create
 005BF9BF    mov        dword ptr [esi+4],eax; TResultSetFieldList.?f4:TList
 005BF9C2    mov        eax,esi
 005BF9C4    test       bl,bl
>005BF9C6    je         005BF9D7
 005BF9C8    call       @AfterConstruction
 005BF9CD    pop        dword ptr fs:[0]
 005BF9D4    add        esp,0C
 005BF9D7    mov        eax,esi
 005BF9D9    pop        esi
 005BF9DA    pop        ebx
 005BF9DB    ret
*}
//end;

//005BF9DC
destructor TResultSetFieldList.Destroy;
begin
{*
 005BF9DC    push       ebx
 005BF9DD    push       esi
 005BF9DE    call       @BeforeDestruction
 005BF9E3    mov        ebx,edx
 005BF9E5    mov        esi,eax
 005BF9E7    mov        eax,esi
 005BF9E9    call       005BFA2C
 005BF9EE    mov        edx,ebx
 005BF9F0    and        dl,0FC
 005BF9F3    mov        eax,esi
 005BF9F5    call       TObject.Destroy
 005BF9FA    test       bl,bl
>005BF9FC    jle        005BFA05
 005BF9FE    mov        eax,esi
 005BFA00    call       @ClassDestroy
 005BFA05    pop        esi
 005BFA06    pop        ebx
 005BFA07    ret
*}
end;

//005BFA08
//function sub_005BFA08(?:?):?;
//begin
{*
 005BFA08    push       ebx
 005BFA09    push       esi
 005BFA0A    mov        ebx,eax
 005BFA0C    mov        dl,1
 005BFA0E    mov        eax,[005BF6D0]; TResultSetField
 005BFA13    call       TObject.Create; TResultSetField.Create
 005BFA18    mov        esi,eax
 005BFA1A    mov        edx,esi
 005BFA1C    mov        eax,dword ptr [ebx+4]
 005BFA1F    call       TList.Add
 005BFA24    mov        eax,esi
 005BFA26    pop        esi
 005BFA27    pop        ebx
 005BFA28    ret
*}
//end;

//005BFA2C
//procedure sub_005BFA2C(?:TResultSetFieldList);
//begin
{*
 005BFA2C    push       ebx
 005BFA2D    push       esi
 005BFA2E    push       edi
 005BFA2F    mov        edi,eax
 005BFA31    mov        eax,dword ptr [edi+4]; TResultSetFieldList.?f4:TList
 005BFA34    mov        ebx,dword ptr [eax+8]; TList.FCount:Integer
 005BFA37    dec        ebx
 005BFA38    test       ebx,ebx
>005BFA3A    jl         005BFA52
 005BFA3C    inc        ebx
 005BFA3D    xor        esi,esi
 005BFA3F    mov        eax,dword ptr [edi+4]; TResultSetFieldList.?f4:TList
 005BFA42    mov        edx,esi
 005BFA44    call       TList.Get
 005BFA49    call       TObject.Free
 005BFA4E    inc        esi
 005BFA4F    dec        ebx
<005BFA50    jne        005BFA3F
 005BFA52    mov        eax,dword ptr [edi+4]; TResultSetFieldList.?f4:TList
 005BFA55    mov        edx,dword ptr [eax]
 005BFA57    call       dword ptr [edx+8]; TList.Clear
 005BFA5A    pop        edi
 005BFA5B    pop        esi
 005BFA5C    pop        ebx
 005BFA5D    ret
*}
//end;

//005BFA60
//function sub_005BFA60(?:TResultSetFieldList):?;
//begin
{*
 005BFA60    mov        eax,dword ptr [eax+4]; TResultSetFieldList.?f4:TList
 005BFA63    mov        eax,dword ptr [eax+8]; TList.FCount:Integer
 005BFA66    ret
*}
//end;

//005BFA68
//function sub_005BFA68(?:dword; ?:?):?;
//begin
{*
 005BFA68    push       ebx
 005BFA69    push       esi
 005BFA6A    mov        esi,edx
 005BFA6C    mov        ebx,eax
 005BFA6E    mov        edx,esi
 005BFA70    mov        eax,dword ptr [ebx+4]
 005BFA73    call       TList.Get
 005BFA78    pop        esi
 005BFA79    pop        ebx
 005BFA7A    ret
*}
//end;

//005BFA7C
//constructor TDataResultSet.Create(?:TDataResultSet; _Dv__:Boolean);
//begin
{*
 005BFA7C    push       ebx
 005BFA7D    push       esi
 005BFA7E    push       edi
 005BFA7F    test       dl,dl
>005BFA81    je         005BFA8B
 005BFA83    add        esp,0FFFFFFF0
 005BFA86    call       @ClassCreate
 005BFA8B    mov        esi,ecx
 005BFA8D    mov        ebx,edx
 005BFA8F    mov        edi,eax
 005BFA91    xor        edx,edx
 005BFA93    mov        eax,edi
 005BFA95    call       TObject.Create
 005BFA9A    mov        dword ptr [edi+4],esi; TDataResultSet.?f4:dword
 005BFA9D    xor        eax,eax
 005BFA9F    mov        dword ptr [edi+0C],eax; TDataResultSet.?fC:dword
 005BFAA2    lea        eax,[edi+8]; TDataResultSet.?f8:String
 005BFAA5    call       @LStrClr
 005BFAAA    mov        dl,1
 005BFAAC    mov        eax,[005BF750]; TResultSetFieldList
 005BFAB1    call       TResultSetFieldList.Create; TResultSetFieldList.Create
 005BFAB6    mov        dword ptr [edi+10],eax; TDataResultSet.?f10:TResultSetFieldList
 005BFAB9    mov        eax,edi
 005BFABB    test       bl,bl
>005BFABD    je         005BFACE
 005BFABF    call       @AfterConstruction
 005BFAC4    pop        dword ptr fs:[0]
 005BFACB    add        esp,0C
 005BFACE    mov        eax,edi
 005BFAD0    pop        edi
 005BFAD1    pop        esi
 005BFAD2    pop        ebx
 005BFAD3    ret
*}
//end;

//005BFAD4
destructor TDataResultSet.Destroy;
begin
{*
 005BFAD4    push       ebx
 005BFAD5    push       esi
 005BFAD6    call       @BeforeDestruction
 005BFADB    mov        ebx,edx
 005BFADD    mov        esi,eax
 005BFADF    mov        eax,esi
 005BFAE1    call       005BFB08
 005BFAE6    mov        eax,dword ptr [esi+10]; TDataResultSet.?f10:TResultSetFieldList
 005BFAE9    call       TObject.Free
 005BFAEE    mov        edx,ebx
 005BFAF0    and        dl,0FC
 005BFAF3    mov        eax,esi
 005BFAF5    call       TObject.Destroy
 005BFAFA    test       bl,bl
>005BFAFC    jle        005BFB05
 005BFAFE    mov        eax,esi
 005BFB00    call       @ClassDestroy
 005BFB05    pop        esi
 005BFB06    pop        ebx
 005BFB07    ret
*}
end;

//005BFB08
//procedure sub_005BFB08(?:TDataResultSet);
//begin
{*
 005BFB08    push       ebx
 005BFB09    mov        ebx,eax
 005BFB0B    cmp        dword ptr [ebx+0C],0; TDataResultSet.?fC:dword
>005BFB0F    je         005BFB2C
 005BFB11    lea        edx,[ebx+0C]; TDataResultSet.?fC:dword
 005BFB14    mov        eax,dword ptr [ebx+4]; TDataResultSet.?f4:dword
 005BFB17    mov        eax,dword ptr [eax+4]
 005BFB1A    call       005C0310
 005BFB1F    xor        eax,eax
 005BFB21    mov        dword ptr [ebx+0C],eax; TDataResultSet.?fC:dword
 005BFB24    mov        eax,dword ptr [ebx+10]; TDataResultSet.?f10:TResultSetFieldList
 005BFB27    call       005BFA2C
 005BFB2C    pop        ebx
 005BFB2D    ret
*}
//end;

//005BFB30
//function sub_005BFB30(?:dword):?;
//begin
{*
 005BFB30    push       ebx
 005BFB31    push       esi
 005BFB32    mov        ebx,eax
 005BFB34    mov        esi,dword ptr [ebx+0C]
 005BFB37    test       esi,esi
>005BFB39    je         005BFB51
 005BFB3B    mov        eax,dword ptr [ebx+4]
 005BFB3E    mov        eax,dword ptr [eax+4]
 005BFB41    mov        edx,esi
 005BFB43    call       005C03E8
 005BFB48    test       al,al
>005BFB4A    jne        005BFB51
 005BFB4C    xor        eax,eax
 005BFB4E    pop        esi
 005BFB4F    pop        ebx
 005BFB50    ret
 005BFB51    mov        al,1
 005BFB53    pop        esi
 005BFB54    pop        ebx
 005BFB55    ret
*}
//end;

//005BFB58
//procedure sub_005BFB58(?:dword);
//begin
{*
 005BFB58    mov        edx,dword ptr [eax+0C]
 005BFB5B    test       edx,edx
>005BFB5D    je         005BFB6C
 005BFB5F    mov        ecx,dword ptr [eax+4]
 005BFB62    mov        ecx,dword ptr [ecx+4]
 005BFB65    mov        eax,ecx
 005BFB67    call       005C04AC
 005BFB6C    ret
*}
//end;

//005BFB70
//function sub_005BFB70(?:dword):?;
//begin
{*
 005BFB70    mov        eax,dword ptr [eax+10]
 005BFB73    call       005BFA60
 005BFB78    ret
*}
//end;

//005BFB7C
//procedure sub_005BFB7C(?:dword; ?:?; ?:?);
//begin
{*
 005BFB7C    push       ebx
 005BFB7D    push       esi
 005BFB7E    push       edi
 005BFB7F    push       ebp
 005BFB80    mov        ebp,ecx
 005BFB82    mov        edi,edx
 005BFB84    mov        ebx,eax
 005BFB86    mov        esi,dword ptr [ebx+0C]
 005BFB89    test       esi,esi
>005BFB8B    je         005BFBAA
 005BFB8D    mov        eax,dword ptr [ebx+14]
 005BFB90    push       eax
 005BFB91    push       edi
 005BFB92    push       ebp
 005BFB93    mov        eax,dword ptr [ebx+10]
 005BFB96    call       005BFA60
 005BFB9B    mov        ecx,eax
 005BFB9D    mov        eax,dword ptr [ebx+4]
 005BFBA0    mov        eax,dword ptr [eax+4]
 005BFBA3    mov        edx,esi
 005BFBA5    call       005C0560
 005BFBAA    pop        ebp
 005BFBAB    pop        edi
 005BFBAC    pop        esi
 005BFBAD    pop        ebx
 005BFBAE    ret
*}
//end;

//005BFBB0
//procedure sub_005BFBB0(?:dword);
//begin
{*
 005BFBB0    mov        edx,dword ptr [eax+0C]
 005BFBB3    test       edx,edx
>005BFBB5    je         005BFBC4
 005BFBB7    mov        ecx,dword ptr [eax+4]
 005BFBBA    mov        ecx,dword ptr [ecx+4]
 005BFBBD    mov        eax,ecx
 005BFBBF    call       005C0634
 005BFBC4    ret
*}
//end;

//005BFBC8
//procedure sub_005BFBC8(?:TDataResultSet);
//begin
{*
 005BFBC8    push       ebx
 005BFBC9    push       esi
 005BFBCA    mov        ebx,eax
 005BFBCC    lea        edx,[ebx+0C]; TDataResultSet.?fC:dword
 005BFBCF    push       edx
 005BFBD0    mov        edx,dword ptr [ebx+10]; TDataResultSet.?f10:TResultSetFieldList
 005BFBD3    push       edx
 005BFBD4    mov        eax,dword ptr [ebx+4]; TDataResultSet.?f4:dword
 005BFBD7    mov        edx,dword ptr [eax+8]
 005BFBDA    mov        eax,dword ptr [eax+4]
 005BFBDD    mov        ecx,dword ptr [ebx+8]; TDataResultSet.?f8:String
 005BFBE0    call       005C06E8
 005BFBE5    mov        eax,dword ptr [ebx+10]; TDataResultSet.?f10:TResultSetFieldList
 005BFBE8    call       005BFA60
 005BFBED    call       @GetMem
 005BFBF2    mov        esi,eax
 005BFBF4    mov        dword ptr [ebx+14],esi; TDataResultSet.?f14:Pointer
 005BFBF7    mov        eax,ebx
 005BFBF9    call       005BFB70
 005BFBFE    mov        edx,eax
 005BFC00    mov        eax,esi
 005BFC02    mov        cl,1
 005BFC04    call       @FillChar
 005BFC09    pop        esi
 005BFC0A    pop        ebx
 005BFC0B    ret
*}
//end;

//005BFC0C
procedure sub_005BFC0C;
begin
{*
 005BFC0C    push       ebx
 005BFC0D    push       esi
 005BFC0E    cmp        dword ptr ds:[617278],0; gvar_00617278:TRaveDataLinks
>005BFC15    jne        005BFC28
 005BFC17    mov        dl,1
 005BFC19    mov        eax,[005BF89C]; TRaveDataLinks
 005BFC1E    call       TRaveDataLinks.Create; TRaveDataLinks.Create
 005BFC23    mov        [00617278],eax; gvar_00617278:TRaveDataLinks
 005BFC28    mov        eax,[0061AEE0]
 005BFC2D    cmp        dword ptr [eax],0
>005BFC30    je         005BFC62
 005BFC32    mov        eax,[0061AEE0]
 005BFC37    mov        eax,dword ptr [eax]
 005BFC39    mov        ebx,dword ptr [eax+8]
 005BFC3C    dec        ebx
 005BFC3D    test       ebx,ebx
>005BFC3F    jl         005BFC62
 005BFC41    inc        ebx
 005BFC42    xor        esi,esi
 005BFC44    mov        eax,[0061AEE0]
 005BFC49    mov        eax,dword ptr [eax]
 005BFC4B    mov        edx,esi
 005BFC4D    call       TList.Get
 005BFC52    mov        edx,eax
 005BFC54    mov        eax,[00617278]; gvar_00617278:TRaveDataLinks
 005BFC59    call       005C0970
 005BFC5E    inc        esi
 005BFC5F    dec        ebx
<005BFC60    jne        005BFC44
 005BFC62    pop        esi
 005BFC63    pop        ebx
 005BFC64    ret
*}
end;

//005BFC68
destructor TRaveDataLink.Destroy;
begin
{*
 005BFC68    push       ebx
 005BFC69    push       esi
 005BFC6A    call       @BeforeDestruction
 005BFC6F    mov        ebx,edx
 005BFC71    mov        esi,eax
 005BFC73    mov        eax,esi
 005BFC75    call       005C08C0
 005BFC7A    lea        eax,[esi+4C]; TRaveDataLink.?f4C:Pointer
 005BFC7D    call       FreeAndNil
 005BFC82    mov        edx,ebx
 005BFC84    and        dl,0FC
 005BFC87    mov        eax,esi
 005BFC89    call       TObject.Destroy
 005BFC8E    test       bl,bl
>005BFC90    jle        005BFC99
 005BFC92    mov        eax,esi
 005BFC94    call       @ClassDestroy
 005BFC99    pop        esi
 005BFC9A    pop        ebx
 005BFC9B    ret
*}
end;

//005BFC9C
//procedure sub_005BFC9C(?:?);
//begin
{*
 005BFC9C    push       ebp
 005BFC9D    mov        ebp,esp
 005BFC9F    push       0
 005BFCA1    push       ebx
 005BFCA2    mov        ebx,eax
 005BFCA4    xor        eax,eax
 005BFCA6    push       ebp
 005BFCA7    push       5BFCF2
 005BFCAC    push       dword ptr fs:[eax]
 005BFCAF    mov        dword ptr fs:[eax],esp
 005BFCB2    cmp        byte ptr [ebx+50],0
>005BFCB6    jne        005BFCDC
 005BFCB8    lea        eax,[ebp-4]
 005BFCBB    mov        ecx,5BFD08; ' is not installed.'
 005BFCC0    mov        edx,dword ptr [ebx+58]
 005BFCC3    call       @LStrCat3
 005BFCC8    mov        ecx,dword ptr [ebp-4]
 005BFCCB    mov        dl,1
 005BFCCD    mov        eax,[004087B0]; Exception
 005BFCD2    call       Exception.Create; Exception.Create
 005BFCD7    call       @RaiseExcept
 005BFCDC    xor        eax,eax
 005BFCDE    pop        edx
 005BFCDF    pop        ecx
 005BFCE0    pop        ecx
 005BFCE1    mov        dword ptr fs:[eax],edx
 005BFCE4    push       5BFCF9
 005BFCE9    lea        eax,[ebp-4]
 005BFCEC    call       @LStrClr
 005BFCF1    ret
<005BFCF2    jmp        @HandleFinally
<005BFCF7    jmp        005BFCE9
 005BFCF9    pop        ebx
 005BFCFA    pop        ecx
 005BFCFB    pop        ebp
 005BFCFC    ret
*}
//end;

//005BFD1C
//procedure sub_005BFD1C(?:dword; ?:dword);
//begin
{*
 005BFD1C    push       ebp
 005BFD1D    mov        ebp,esp
 005BFD1F    add        esp,0FFFFFFF4
 005BFD22    push       ebx
 005BFD23    push       esi
 005BFD24    push       edi
 005BFD25    mov        ebx,edx
 005BFD27    mov        dword ptr [ebp-4],eax
 005BFD2A    xor        edx,edx
 005BFD2C    push       ebp
 005BFD2D    push       5BFD83
 005BFD32    push       dword ptr fs:[edx]
 005BFD35    mov        dword ptr fs:[edx],esp
 005BFD38    lea        eax,[ebp-0C]
 005BFD3B    xor        ecx,ecx
 005BFD3D    mov        edx,8
 005BFD42    call       @FillChar
 005BFD47    mov        dword ptr [ebp-8],ebx
 005BFD4A    mov        eax,dword ptr [ebp-4]
 005BFD4D    mov        eax,dword ptr [eax+4C]
 005BFD50    test       eax,eax
>005BFD52    je         005BFD5D
 005BFD54    lea        edx,[ebp-0C]
 005BFD57    mov        ecx,dword ptr [eax]
 005BFD59    call       dword ptr [ecx]
>005BFD5B    jmp        005BFD66
 005BFD5D    lea        eax,[ebp-0C]
 005BFD60    mov        ebx,dword ptr [ebp-4]
 005BFD63    call       dword ptr [ebx+18]
 005BFD66    cmp        dword ptr [ebp-0C],0
>005BFD6A    je         005BFD79
 005BFD6C    mov        edx,5BFDB8; 'ConnectionClose'
 005BFD71    mov        eax,dword ptr [ebp-4]
 005BFD74    call       005C0154
 005BFD79    xor        eax,eax
 005BFD7B    pop        edx
 005BFD7C    pop        ecx
 005BFD7D    pop        ecx
 005BFD7E    mov        dword ptr fs:[eax],edx
>005BFD81    jmp        005BFDA9
<005BFD83    jmp        @HandleOnException
 005BFD88    dd        1
 005BFD8C    dd        4087B0;Exception
 005BFD90    dd        5BFD94
 005BFD94    mov        ecx,dword ptr [eax+4]; Exception.?f4:String
 005BFD97    mov        edx,5BFDD0; 'DataConnectionOpen'
 005BFD9C    mov        eax,dword ptr [ebp-4]
 005BFD9F    call       005C0040
 005BFDA4    call       @DoneExcept
 005BFDA9    pop        edi
 005BFDAA    pop        esi
 005BFDAB    pop        ebx
 005BFDAC    mov        esp,ebp
 005BFDAE    pop        ebp
 005BFDAF    ret
*}
//end;

//005BFDE4
//procedure sub_005BFDE4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005BFDE4    push       ebp
 005BFDE5    mov        ebp,esp
 005BFDE7    add        esp,0FFFFFFE4
 005BFDEA    push       ebx
 005BFDEB    push       esi
 005BFDEC    push       edi
 005BFDED    mov        dword ptr [ebp-4],ecx
 005BFDF0    mov        edi,edx
 005BFDF2    mov        ebx,eax
 005BFDF4    mov        esi,dword ptr [ebp+8]
 005BFDF7    mov        eax,ebx
 005BFDF9    call       005BFC9C
 005BFDFE    xor        eax,eax
 005BFE00    mov        dword ptr [esi],eax
 005BFE02    xor        edx,edx
 005BFE04    push       ebp
 005BFE05    push       5BFE93
 005BFE0A    push       dword ptr fs:[edx]
 005BFE0D    mov        dword ptr fs:[edx],esp
 005BFE10    lea        eax,[ebp-1C]
 005BFE13    xor        ecx,ecx
 005BFE15    mov        edx,18
 005BFE1A    call       @FillChar
 005BFE1F    mov        eax,edi
 005BFE21    call       @LStrToPChar
 005BFE26    mov        dword ptr [ebp-18],eax
 005BFE29    mov        eax,dword ptr [ebp-4]
 005BFE2C    call       @LStrToPChar
 005BFE31    mov        dword ptr [ebp-14],eax
 005BFE34    mov        eax,dword ptr [ebp+10]
 005BFE37    call       @LStrToPChar
 005BFE3C    mov        dword ptr [ebp-10],eax
 005BFE3F    mov        eax,dword ptr [ebp+0C]
 005BFE42    call       @LStrToPChar
 005BFE47    mov        dword ptr [ebp-0C],eax
 005BFE4A    mov        eax,dword ptr [ebx+4C]
 005BFE4D    test       eax,eax
>005BFE4F    je         005BFE5B
 005BFE51    lea        edx,[ebp-1C]
 005BFE54    mov        ecx,dword ptr [eax]
 005BFE56    call       dword ptr [ecx+8]
>005BFE59    jmp        005BFE61
 005BFE5B    lea        eax,[ebp-1C]
 005BFE5E    call       dword ptr [ebx+14]
 005BFE61    cmp        dword ptr [ebp-1C],0
>005BFE65    jne        005BFE6E
 005BFE67    mov        eax,dword ptr [ebp-8]
 005BFE6A    mov        dword ptr [esi],eax
>005BFE6C    jmp        005BFE89
 005BFE6E    push       0
 005BFE70    mov        ecx,5BFEBC; 'DataConnectionOpen'
 005BFE75    mov        edx,dword ptr [ebp-8]
 005BFE78    mov        eax,ebx
 005BFE7A    call       005C0044
 005BFE7F    mov        edx,dword ptr [ebp-8]
 005BFE82    mov        eax,ebx
 005BFE84    call       005BFD1C
 005BFE89    xor        eax,eax
 005BFE8B    pop        edx
 005BFE8C    pop        ecx
 005BFE8D    pop        ecx
 005BFE8E    mov        dword ptr fs:[eax],edx
>005BFE91    jmp        005BFEA9
<005BFE93    jmp        @HandleOnException
 005BFE98    dd        1
 005BFE9C    dd        4087B0;Exception
 005BFEA0    dd        5BFEA4
 005BFEA4    call       @DoneExcept
 005BFEA9    pop        edi
 005BFEAA    pop        esi
 005BFEAB    pop        ebx
 005BFEAC    mov        esp,ebp
 005BFEAE    pop        ebp
 005BFEAF    ret        0C
*}
//end;

//005BFED0
//procedure sub_005BFED0(?:TRaveDataLink);
//begin
{*
 005BFED0    push       ebp
 005BFED1    mov        ebp,esp
 005BFED3    add        esp,0FFFFFEC8
 005BFED9    push       ebx
 005BFEDA    push       esi
 005BFEDB    push       edi
 005BFEDC    xor        edx,edx
 005BFEDE    mov        dword ptr [ebp-138],edx
 005BFEE4    mov        dword ptr [ebp-134],edx
 005BFEEA    mov        dword ptr [ebp-4],eax
 005BFEED    xor        eax,eax
 005BFEEF    push       ebp
 005BFEF0    push       5C0017
 005BFEF5    push       dword ptr fs:[eax]
 005BFEF8    mov        dword ptr fs:[eax],esp
 005BFEFB    xor        edx,edx
 005BFEFD    push       ebp
 005BFEFE    push       5BFF48
 005BFF03    push       dword ptr fs:[edx]
 005BFF06    mov        dword ptr fs:[edx],esp
 005BFF09    lea        eax,[ebp-12E]
 005BFF0F    xor        ecx,ecx
 005BFF11    mov        edx,12A
 005BFF16    call       @FillChar
 005BFF1B    mov        eax,dword ptr [ebp-4]
 005BFF1E    mov        eax,dword ptr [eax+4C]; TRaveDataLink.?f4C:Pointer
 005BFF21    test       eax,eax
>005BFF23    je         005BFF32
 005BFF25    lea        edx,[ebp-12E]
 005BFF2B    mov        ecx,dword ptr [eax]
 005BFF2D    call       dword ptr [ecx+18]
>005BFF30    jmp        005BFF3E
 005BFF32    lea        eax,[ebp-12E]
 005BFF38    mov        ebx,dword ptr [ebp-4]
 005BFF3B    call       dword ptr [ebx+0C]
 005BFF3E    xor        eax,eax
 005BFF40    pop        edx
 005BFF41    pop        ecx
 005BFF42    pop        ecx
 005BFF43    mov        dword ptr fs:[eax],edx
>005BFF46    jmp        005BFF73
<005BFF48    jmp        @HandleOnException
 005BFF4D    dd        1
 005BFF51    dd        4087B0;Exception
 005BFF55    dd        5BFF59
 005BFF59    mov        ecx,dword ptr [eax+4]; Exception.?f4:String
 005BFF5C    mov        edx,5C0030; 'DataInformation'
 005BFF61    mov        eax,dword ptr [ebp-4]
 005BFF64    call       005C0040
 005BFF69    call       Abort
 005BFF6E    call       @DoneExcept
 005BFF73    mov        eax,dword ptr [ebp-4]
 005BFF76    mov        dl,byte ptr [ebp-12A]
 005BFF7C    mov        byte ptr [eax+50],dl; TRaveDataLink.?f50:byte
 005BFF7F    movzx      eax,word ptr [ebp-129]
 005BFF86    mov        edx,dword ptr [ebp-4]
 005BFF89    mov        dword ptr [edx+5C],eax; TRaveDataLink.?f5C:dword
 005BFF8C    movzx      eax,word ptr [ebp-127]
 005BFF93    mov        edx,dword ptr [ebp-4]
 005BFF96    mov        dword ptr [edx+60],eax; TRaveDataLink.?f60:dword
 005BFF99    lea        edx,[ebp-134]
 005BFF9F    lea        eax,[ebp-125]
 005BFFA5    call       StrPas
 005BFFAA    mov        edx,dword ptr [ebp-134]
 005BFFB0    mov        eax,dword ptr [ebp-4]
 005BFFB3    add        eax,54; TRaveDataLink.?f54:String
 005BFFB6    call       @LStrAsg
 005BFFBB    mov        eax,dword ptr [ebp-4]
 005BFFBE    cmp        dword ptr [eax+54],0; TRaveDataLink.?f54:String
>005BFFC2    jne        005BFFC9
 005BFFC4    call       Abort
 005BFFC9    lea        edx,[ebp-138]
 005BFFCF    lea        eax,[ebp-104]
 005BFFD5    call       StrPas
 005BFFDA    mov        edx,dword ptr [ebp-138]
 005BFFE0    mov        eax,dword ptr [ebp-4]
 005BFFE3    add        eax,58; TRaveDataLink.?f58:String
 005BFFE6    call       @LStrAsg
 005BFFEB    mov        eax,dword ptr [ebp-4]
 005BFFEE    cmp        dword ptr [eax+58],0; TRaveDataLink.?f58:String
>005BFFF2    jne        005BFFF9
 005BFFF4    call       Abort
 005BFFF9    xor        eax,eax
 005BFFFB    pop        edx
 005BFFFC    pop        ecx
 005BFFFD    pop        ecx
 005BFFFE    mov        dword ptr fs:[eax],edx
 005C0001    push       5C001E
 005C0006    lea        eax,[ebp-138]
 005C000C    mov        edx,2
 005C0011    call       @LStrArrayClr
 005C0016    ret
<005C0017    jmp        @HandleFinally
<005C001C    jmp        005C0006
 005C001E    pop        edi
 005C001F    pop        esi
 005C0020    pop        ebx
 005C0021    mov        esp,ebp
 005C0023    pop        ebp
 005C0024    ret
*}
//end;

//005C0040
procedure sub_005C0040;
begin
{*
 005C0040    ret
*}
end;

//005C0044
//procedure sub_005C0044(?:?; ?:?; ?:AnsiString; ?:?);
//begin
{*
 005C0044    push       ebp
 005C0045    mov        ebp,esp
 005C0047    add        esp,0FFFFFFEC
 005C004A    push       ebx
 005C004B    push       esi
 005C004C    push       edi
 005C004D    xor        ebx,ebx
 005C004F    mov        dword ptr [ebp-8],ebx
 005C0052    mov        edi,ecx
 005C0054    mov        esi,edx
 005C0056    mov        dword ptr [ebp-4],eax
 005C0059    mov        ebx,dword ptr [ebp+8]
 005C005C    xor        eax,eax
 005C005E    push       ebp
 005C005F    push       5C0110
 005C0064    push       dword ptr fs:[eax]
 005C0067    mov        dword ptr fs:[eax],esp
 005C006A    xor        edx,edx
 005C006C    push       ebp
 005C006D    push       5C00D4
 005C0072    push       dword ptr fs:[edx]
 005C0075    mov        dword ptr fs:[edx],esp
 005C0078    lea        eax,[ebp-14]
 005C007B    xor        ecx,ecx
 005C007D    mov        edx,0C
 005C0082    call       @FillChar
 005C0087    mov        dword ptr [ebp-14],esi
 005C008A    lea        eax,[ebp-14]
 005C008D    mov        esi,dword ptr [ebp-4]
 005C0090    call       dword ptr [esi+48]
 005C0093    lea        edx,[ebp-8]
 005C0096    mov        eax,dword ptr [ebp-0C]
 005C0099    call       StrPas
 005C009E    test       ebx,ebx
>005C00A0    je         005C00BD
 005C00A2    push       5C0128; '('
 005C00A7    push       ebx
 005C00A8    push       5C0134; ') '
 005C00AD    push       dword ptr [ebp-8]
 005C00B0    lea        eax,[ebp-8]
 005C00B3    mov        edx,4
 005C00B8    call       @LStrCatN
 005C00BD    mov        ecx,dword ptr [ebp-8]
 005C00C0    mov        edx,edi
 005C00C2    mov        eax,dword ptr [ebp-4]
 005C00C5    call       005C0040
 005C00CA    xor        eax,eax
 005C00CC    pop        edx
 005C00CD    pop        ecx
 005C00CE    pop        ecx
 005C00CF    mov        dword ptr fs:[eax],edx
>005C00D2    jmp        005C00FA
<005C00D4    jmp        @HandleOnException
 005C00D9    dd        1
 005C00DD    dd        4087B0;Exception
 005C00E1    dd        5C00E5
 005C00E5    mov        ecx,dword ptr [eax+4]; Exception.?f4:String
 005C00E8    mov        edx,5C0140; 'LogConnectionError'
 005C00ED    mov        eax,dword ptr [ebp-4]
 005C00F0    call       005C0040
 005C00F5    call       @DoneExcept
 005C00FA    xor        eax,eax
 005C00FC    pop        edx
 005C00FD    pop        ecx
 005C00FE    pop        ecx
 005C00FF    mov        dword ptr fs:[eax],edx
 005C0102    push       5C0117
 005C0107    lea        eax,[ebp-8]
 005C010A    call       @LStrClr
 005C010F    ret
<005C0110    jmp        @HandleFinally
<005C0115    jmp        005C0107
 005C0117    pop        edi
 005C0118    pop        esi
 005C0119    pop        ebx
 005C011A    mov        esp,ebp
 005C011C    pop        ebp
 005C011D    ret        4
*}
//end;

//005C0154
//procedure sub_005C0154(?:dword; ?:AnsiString);
//begin
{*
 005C0154    push       ebp
 005C0155    mov        ebp,esp
 005C0157    add        esp,0FFFFFFEC
 005C015A    push       ebx
 005C015B    push       esi
 005C015C    push       edi
 005C015D    xor        ecx,ecx
 005C015F    mov        dword ptr [ebp-14],ecx
 005C0162    mov        ebx,edx
 005C0164    mov        dword ptr [ebp-4],eax
 005C0167    xor        eax,eax
 005C0169    push       ebp
 005C016A    push       5C01F9
 005C016F    push       dword ptr fs:[eax]
 005C0172    mov        dword ptr fs:[eax],esp
 005C0175    xor        edx,edx
 005C0177    push       ebp
 005C0178    push       5C01BD
 005C017D    push       dword ptr fs:[edx]
 005C0180    mov        dword ptr fs:[edx],esp
 005C0183    lea        eax,[ebp-10]
 005C0186    xor        ecx,ecx
 005C0188    mov        edx,0C
 005C018D    call       @FillChar
 005C0192    lea        eax,[ebp-10]
 005C0195    mov        esi,dword ptr [ebp-4]
 005C0198    call       dword ptr [esi+48]
 005C019B    lea        edx,[ebp-14]
 005C019E    mov        eax,dword ptr [ebp-8]
 005C01A1    call       StrPas
 005C01A6    mov        ecx,dword ptr [ebp-14]
 005C01A9    mov        edx,ebx
 005C01AB    mov        eax,dword ptr [ebp-4]
 005C01AE    call       005C0040
 005C01B3    xor        eax,eax
 005C01B5    pop        edx
 005C01B6    pop        ecx
 005C01B7    pop        ecx
 005C01B8    mov        dword ptr fs:[eax],edx
>005C01BB    jmp        005C01E3
<005C01BD    jmp        @HandleOnException
 005C01C2    dd        1
 005C01C6    dd        4087B0;Exception
 005C01CA    dd        5C01CE
 005C01CE    mov        ecx,dword ptr [eax+4]; Exception.?f4:String
 005C01D1    mov        edx,5C0210; 'LogGlobalError'
 005C01D6    mov        eax,dword ptr [ebp-4]
 005C01D9    call       005C0040
 005C01DE    call       @DoneExcept
 005C01E3    xor        eax,eax
 005C01E5    pop        edx
 005C01E6    pop        ecx
 005C01E7    pop        ecx
 005C01E8    mov        dword ptr fs:[eax],edx
 005C01EB    push       5C0200
 005C01F0    lea        eax,[ebp-14]
 005C01F3    call       @LStrClr
 005C01F8    ret
<005C01F9    jmp        @HandleFinally
<005C01FE    jmp        005C01F0
 005C0200    pop        edi
 005C0201    pop        esi
 005C0202    pop        ebx
 005C0203    mov        esp,ebp
 005C0205    pop        ebp
 005C0206    ret
*}
//end;

//005C0220
//procedure sub_005C0220(?:?; ?:?; ?:AnsiString);
//begin
{*
 005C0220    push       ebp
 005C0221    mov        ebp,esp
 005C0223    add        esp,0FFFFFFEC
 005C0226    push       ebx
 005C0227    push       esi
 005C0228    push       edi
 005C0229    xor        ebx,ebx
 005C022B    mov        dword ptr [ebp-14],ebx
 005C022E    mov        esi,ecx
 005C0230    mov        ebx,edx
 005C0232    mov        dword ptr [ebp-4],eax
 005C0235    xor        eax,eax
 005C0237    push       ebp
 005C0238    push       5C02CA
 005C023D    push       dword ptr fs:[eax]
 005C0240    mov        dword ptr fs:[eax],esp
 005C0243    xor        edx,edx
 005C0245    push       ebp
 005C0246    push       5C028E
 005C024B    push       dword ptr fs:[edx]
 005C024E    mov        dword ptr fs:[edx],esp
 005C0251    lea        eax,[ebp-10]
 005C0254    xor        ecx,ecx
 005C0256    mov        edx,0C
 005C025B    call       @FillChar
 005C0260    mov        dword ptr [ebp-0C],ebx
 005C0263    lea        eax,[ebp-10]
 005C0266    mov        ebx,dword ptr [ebp-4]
 005C0269    call       dword ptr [ebx+48]
 005C026C    lea        edx,[ebp-14]
 005C026F    mov        eax,dword ptr [ebp-8]
 005C0272    call       StrPas
 005C0277    mov        ecx,dword ptr [ebp-14]
 005C027A    mov        edx,esi
 005C027C    mov        eax,dword ptr [ebp-4]
 005C027F    call       005C0040
 005C0284    xor        eax,eax
 005C0286    pop        edx
 005C0287    pop        ecx
 005C0288    pop        ecx
 005C0289    mov        dword ptr fs:[eax],edx
>005C028C    jmp        005C02B4
<005C028E    jmp        @HandleOnException
 005C0293    dd        1
 005C0297    dd        4087B0;Exception
 005C029B    dd        5C029F
 005C029F    mov        ecx,dword ptr [eax+4]; Exception.?f4:String
 005C02A2    mov        edx,5C02E0; 'LogResultSetError'
 005C02A7    mov        eax,dword ptr [ebp-4]
 005C02AA    call       005C0040
 005C02AF    call       @DoneExcept
 005C02B4    xor        eax,eax
 005C02B6    pop        edx
 005C02B7    pop        ecx
 005C02B8    pop        ecx
 005C02B9    mov        dword ptr fs:[eax],edx
 005C02BC    push       5C02D1
 005C02C1    lea        eax,[ebp-14]
 005C02C4    call       @LStrClr
 005C02C9    ret
<005C02CA    jmp        @HandleFinally
<005C02CF    jmp        005C02C1
 005C02D1    pop        edi
 005C02D2    pop        esi
 005C02D3    pop        ebx
 005C02D4    mov        esp,ebp
 005C02D6    pop        ebp
 005C02D7    ret
*}
//end;

//005C02F4
//procedure sub_005C02F4(?:TRaveDataLink; ?:Pointer);
//begin
{*
 005C02F4    push       ebx
 005C02F5    push       esi
 005C02F6    mov        esi,edx
 005C02F8    mov        ebx,eax
 005C02FA    mov        dl,1
 005C02FC    mov        eax,esi
 005C02FE    call       TObject.Create
 005C0303    mov        dword ptr [ebx+4C],eax; TRaveDataLink.?f4C:Pointer
 005C0306    mov        eax,ebx
 005C0308    call       005BFED0
 005C030D    pop        esi
 005C030E    pop        ebx
 005C030F    ret
*}
//end;

//005C0310
//procedure sub_005C0310(?:?; ?:?);
//begin
{*
 005C0310    push       ebp
 005C0311    mov        ebp,esp
 005C0313    add        esp,0FFFFFFF0
 005C0316    push       ebx
 005C0317    push       esi
 005C0318    push       edi
 005C0319    mov        dword ptr [ebp-8],edx
 005C031C    mov        dword ptr [ebp-4],eax
 005C031F    xor        edx,edx
 005C0321    push       ebp
 005C0322    push       5C037E
 005C0327    push       dword ptr fs:[edx]
 005C032A    mov        dword ptr fs:[edx],esp
 005C032D    lea        eax,[ebp-10]
 005C0330    xor        ecx,ecx
 005C0332    mov        edx,8
 005C0337    call       @FillChar
 005C033C    mov        eax,dword ptr [ebp-8]
 005C033F    mov        eax,dword ptr [eax]
 005C0341    mov        dword ptr [ebp-0C],eax
 005C0344    mov        eax,dword ptr [ebp-4]
 005C0347    mov        eax,dword ptr [eax+4C]
 005C034A    test       eax,eax
>005C034C    je         005C0358
 005C034E    lea        edx,[ebp-10]
 005C0351    mov        ecx,dword ptr [eax]
 005C0353    call       dword ptr [ecx+1C]
>005C0356    jmp        005C0361
 005C0358    lea        eax,[ebp-10]
 005C035B    mov        ebx,dword ptr [ebp-4]
 005C035E    call       dword ptr [ebx+28]
 005C0361    cmp        dword ptr [ebp-10],0
>005C0365    je         005C0374
 005C0367    mov        edx,5C03BC; 'DataResultSetClose'
 005C036C    mov        eax,dword ptr [ebp-4]
 005C036F    call       005C0154
 005C0374    xor        eax,eax
 005C0376    pop        edx
 005C0377    pop        ecx
 005C0378    pop        ecx
 005C0379    mov        dword ptr fs:[eax],edx
>005C037C    jmp        005C03A4
<005C037E    jmp        @HandleOnException
 005C0383    dd        1
 005C0387    dd        4087B0;Exception
 005C038B    dd        5C038F
 005C038F    mov        ecx,dword ptr [eax+4]; Exception.?f4:String
 005C0392    mov        edx,5C03D8; 'ResultSetClose'
 005C0397    mov        eax,dword ptr [ebp-4]
 005C039A    call       005C0040
 005C039F    call       @DoneExcept
 005C03A4    mov        eax,dword ptr [ebp-8]
 005C03A7    xor        edx,edx
 005C03A9    mov        dword ptr [eax],edx
 005C03AB    pop        edi
 005C03AC    pop        esi
 005C03AD    pop        ebx
 005C03AE    mov        esp,ebp
 005C03B0    pop        ebp
 005C03B1    ret
*}
//end;

//005C03E8
//function sub_005C03E8(?:?; ?:?):?;
//begin
{*
 005C03E8    push       ebp
 005C03E9    mov        ebp,esp
 005C03EB    add        esp,0FFFFFFF0
 005C03EE    push       ebx
 005C03EF    push       esi
 005C03F0    push       edi
 005C03F1    mov        ebx,edx
 005C03F3    mov        dword ptr [ebp-4],eax
 005C03F6    mov        byte ptr [ebp-5],0
 005C03FA    xor        edx,edx
 005C03FC    push       ebp
 005C03FD    push       5C045E
 005C0402    push       dword ptr fs:[edx]
 005C0405    mov        dword ptr fs:[edx],esp
 005C0408    lea        eax,[ebp-0E]
 005C040B    xor        ecx,ecx
 005C040D    mov        edx,9
 005C0412    call       @FillChar
 005C0417    mov        dword ptr [ebp-0A],ebx
 005C041A    mov        eax,dword ptr [ebp-4]
 005C041D    mov        eax,dword ptr [eax+4C]
 005C0420    test       eax,eax
>005C0422    je         005C042E
 005C0424    lea        edx,[ebp-0E]
 005C0427    mov        ecx,dword ptr [eax]
 005C0429    call       dword ptr [ecx+24]
>005C042C    jmp        005C0437
 005C042E    lea        eax,[ebp-0E]
 005C0431    mov        esi,dword ptr [ebp-4]
 005C0434    call       dword ptr [esi+38]
 005C0437    cmp        dword ptr [ebp-0E],0
>005C043B    jne        005C0445
 005C043D    mov        al,byte ptr [ebp-6]
 005C0440    mov        byte ptr [ebp-5],al
>005C0443    jmp        005C0454
 005C0445    mov        ecx,5C0498; 'DataResultSetEOF'
 005C044A    mov        edx,ebx
 005C044C    mov        eax,dword ptr [ebp-4]
 005C044F    call       005C0220
 005C0454    xor        eax,eax
 005C0456    pop        edx
 005C0457    pop        ecx
 005C0458    pop        ecx
 005C0459    mov        dword ptr fs:[eax],edx
>005C045C    jmp        005C0484
<005C045E    jmp        @HandleOnException
 005C0463    dd        1
 005C0467    dd        4087B0;Exception
 005C046B    dd        5C046F
 005C046F    mov        ecx,dword ptr [eax+4]; Exception.?f4:String
 005C0472    mov        edx,5C0498; 'DataResultSetEOF'
 005C0477    mov        eax,dword ptr [ebp-4]
 005C047A    call       005C0040
 005C047F    call       @DoneExcept
 005C0484    mov        al,byte ptr [ebp-5]
 005C0487    pop        edi
 005C0488    pop        esi
 005C0489    pop        ebx
 005C048A    mov        esp,ebp
 005C048C    pop        ebp
 005C048D    ret
*}
//end;

//005C04AC
//procedure sub_005C04AC(?:?; ?:?);
//begin
{*
 005C04AC    push       ebp
 005C04AD    mov        ebp,esp
 005C04AF    add        esp,0FFFFFFF4
 005C04B2    push       ebx
 005C04B3    push       esi
 005C04B4    push       edi
 005C04B5    mov        ebx,edx
 005C04B7    mov        dword ptr [ebp-4],eax
 005C04BA    xor        edx,edx
 005C04BC    push       ebp
 005C04BD    push       5C0516
 005C04C2    push       dword ptr fs:[edx]
 005C04C5    mov        dword ptr fs:[edx],esp
 005C04C8    lea        eax,[ebp-0C]
 005C04CB    xor        ecx,ecx
 005C04CD    mov        edx,8
 005C04D2    call       @FillChar
 005C04D7    mov        dword ptr [ebp-8],ebx
 005C04DA    mov        eax,dword ptr [ebp-4]
 005C04DD    mov        eax,dword ptr [eax+4C]
 005C04E0    test       eax,eax
>005C04E2    je         005C04EE
 005C04E4    lea        edx,[ebp-0C]
 005C04E7    mov        ecx,dword ptr [eax]
 005C04E9    call       dword ptr [ecx+28]
>005C04EC    jmp        005C04F7
 005C04EE    lea        eax,[ebp-0C]
 005C04F1    mov        esi,dword ptr [ebp-4]
 005C04F4    call       dword ptr [esi+30]
 005C04F7    cmp        dword ptr [ebp-0C],0
>005C04FB    je         005C050C
 005C04FD    mov        ecx,5C054C; 'DataResultSetFirst'
 005C0502    mov        edx,ebx
 005C0504    mov        eax,dword ptr [ebp-4]
 005C0507    call       005C0220
 005C050C    xor        eax,eax
 005C050E    pop        edx
 005C050F    pop        ecx
 005C0510    pop        ecx
 005C0511    mov        dword ptr fs:[eax],edx
>005C0514    jmp        005C053C
<005C0516    jmp        @HandleOnException
 005C051B    dd        1
 005C051F    dd        4087B0;Exception
 005C0523    dd        5C0527
 005C0527    mov        ecx,dword ptr [eax+4]; Exception.?f4:String
 005C052A    mov        edx,5C054C; 'DataResultSetFirst'
 005C052F    mov        eax,dword ptr [ebp-4]
 005C0532    call       005C0040
 005C0537    call       @DoneExcept
 005C053C    pop        edi
 005C053D    pop        esi
 005C053E    pop        ebx
 005C053F    mov        esp,ebp
 005C0541    pop        ebp
 005C0542    ret
*}
//end;

//005C0560
//procedure sub_005C0560(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005C0560    push       ebp
 005C0561    mov        ebp,esp
 005C0563    add        esp,0FFFFFFE4
 005C0566    push       ebx
 005C0567    push       esi
 005C0568    push       edi
 005C0569    mov        esi,ecx
 005C056B    mov        ebx,edx
 005C056D    mov        dword ptr [ebp-4],eax
 005C0570    xor        edx,edx
 005C0572    push       ebp
 005C0573    push       5C05E7
 005C0578    push       dword ptr fs:[edx]
 005C057B    mov        dword ptr fs:[edx],esp
 005C057E    lea        eax,[ebp-1C]
 005C0581    xor        ecx,ecx
 005C0583    mov        edx,18
 005C0588    call       @FillChar
 005C058D    mov        dword ptr [ebp-18],ebx
 005C0590    mov        dword ptr [ebp-14],esi
 005C0593    mov        eax,dword ptr [ebp+10]
 005C0596    mov        dword ptr [ebp-10],eax
 005C0599    mov        eax,dword ptr [ebp-4]
 005C059C    mov        eax,dword ptr [eax+4C]
 005C059F    test       eax,eax
>005C05A1    je         005C05AD
 005C05A3    lea        edx,[ebp-1C]
 005C05A6    mov        ecx,dword ptr [eax]
 005C05A8    call       dword ptr [ecx+2C]
>005C05AB    jmp        005C05B6
 005C05AD    lea        eax,[ebp-1C]
 005C05B0    mov        esi,dword ptr [ebp-4]
 005C05B3    call       dword ptr [esi+3C]
 005C05B6    cmp        dword ptr [ebp-1C],0
>005C05BA    jne        005C05CE
 005C05BC    mov        eax,dword ptr [ebp+0C]
 005C05BF    mov        edx,dword ptr [ebp-0C]
 005C05C2    mov        dword ptr [eax],edx
 005C05C4    mov        eax,dword ptr [ebp+8]
 005C05C7    mov        edx,dword ptr [ebp-8]
 005C05CA    mov        dword ptr [eax],edx
>005C05CC    jmp        005C05DD
 005C05CE    mov        ecx,5C0620; 'DataResultSetGetRow'
 005C05D3    mov        edx,ebx
 005C05D5    mov        eax,dword ptr [ebp-4]
 005C05D8    call       005C0220
 005C05DD    xor        eax,eax
 005C05DF    pop        edx
 005C05E0    pop        ecx
 005C05E1    pop        ecx
 005C05E2    mov        dword ptr fs:[eax],edx
>005C05E5    jmp        005C060D
<005C05E7    jmp        @HandleOnException
 005C05EC    dd        1
 005C05F0    dd        4087B0;Exception
 005C05F4    dd        5C05F8
 005C05F8    mov        ecx,dword ptr [eax+4]; Exception.?f4:String
 005C05FB    mov        edx,5C0620; 'DataResultSetGetRow'
 005C0600    mov        eax,dword ptr [ebp-4]
 005C0603    call       005C0040
 005C0608    call       @DoneExcept
 005C060D    pop        edi
 005C060E    pop        esi
 005C060F    pop        ebx
 005C0610    mov        esp,ebp
 005C0612    pop        ebp
 005C0613    ret        0C
*}
//end;

//005C0634
//procedure sub_005C0634(?:?; ?:?);
//begin
{*
 005C0634    push       ebp
 005C0635    mov        ebp,esp
 005C0637    add        esp,0FFFFFFF4
 005C063A    push       ebx
 005C063B    push       esi
 005C063C    push       edi
 005C063D    mov        ebx,edx
 005C063F    mov        dword ptr [ebp-4],eax
 005C0642    xor        edx,edx
 005C0644    push       ebp
 005C0645    push       5C069E
 005C064A    push       dword ptr fs:[edx]
 005C064D    mov        dword ptr fs:[edx],esp
 005C0650    lea        eax,[ebp-0C]
 005C0653    xor        ecx,ecx
 005C0655    mov        edx,8
 005C065A    call       @FillChar
 005C065F    mov        dword ptr [ebp-8],ebx
 005C0662    mov        eax,dword ptr [ebp-4]
 005C0665    mov        eax,dword ptr [eax+4C]
 005C0668    test       eax,eax
>005C066A    je         005C0676
 005C066C    lea        edx,[ebp-0C]
 005C066F    mov        ecx,dword ptr [eax]
 005C0671    call       dword ptr [ecx+30]
>005C0674    jmp        005C067F
 005C0676    lea        eax,[ebp-0C]
 005C0679    mov        esi,dword ptr [ebp-4]
 005C067C    call       dword ptr [esi+34]
 005C067F    cmp        dword ptr [ebp-0C],0
>005C0683    je         005C0694
 005C0685    mov        ecx,5C06D4; 'DataResultSetNext'
 005C068A    mov        edx,ebx
 005C068C    mov        eax,dword ptr [ebp-4]
 005C068F    call       005C0220
 005C0694    xor        eax,eax
 005C0696    pop        edx
 005C0697    pop        ecx
 005C0698    pop        ecx
 005C0699    mov        dword ptr fs:[eax],edx
>005C069C    jmp        005C06C4
<005C069E    jmp        @HandleOnException
 005C06A3    dd        1
 005C06A7    dd        4087B0;Exception
 005C06AB    dd        5C06AF
 005C06AF    mov        ecx,dword ptr [eax+4]; Exception.?f4:String
 005C06B2    mov        edx,5C06D4; 'DataResultSetNext'
 005C06B7    mov        eax,dword ptr [ebp-4]
 005C06BA    call       005C0040
 005C06BF    call       @DoneExcept
 005C06C4    pop        edi
 005C06C5    pop        esi
 005C06C6    pop        ebx
 005C06C7    mov        esp,ebp
 005C06C9    pop        ebp
 005C06CA    ret
*}
//end;

//005C06E8
//procedure sub_005C06E8(?:?; ?:?; ?:String; ?:?; ?:?);
//begin
{*
 005C06E8    push       ebp
 005C06E9    mov        ebp,esp
 005C06EB    add        esp,0FFFFFFD4
 005C06EE    push       ebx
 005C06EF    push       esi
 005C06F0    push       edi
 005C06F1    xor        ebx,ebx
 005C06F3    mov        dword ptr [ebp-2C],ebx
 005C06F6    mov        dword ptr [ebp-28],ebx
 005C06F9    mov        dword ptr [ebp-24],ebx
 005C06FC    mov        edi,ecx
 005C06FE    mov        esi,edx
 005C0700    mov        dword ptr [ebp-4],eax
 005C0703    mov        ebx,dword ptr [ebp+0C]
 005C0706    xor        eax,eax
 005C0708    push       ebp
 005C0709    push       5C0893
 005C070E    push       dword ptr fs:[eax]
 005C0711    mov        dword ptr fs:[eax],esp
 005C0714    xor        eax,eax
 005C0716    mov        dword ptr [ebx],eax
 005C0718    xor        edx,edx
 005C071A    push       ebp
 005C071B    push       5C0852
 005C0720    push       dword ptr fs:[edx]
 005C0723    mov        dword ptr fs:[edx],esp
 005C0726    lea        eax,[ebp-20]
 005C0729    xor        ecx,ecx
 005C072B    mov        edx,18
 005C0730    call       @FillChar
 005C0735    mov        dword ptr [ebp-1C],esi
 005C0738    mov        eax,edi
 005C073A    call       @LStrToPChar
 005C073F    call       StrNew
 005C0744    mov        dword ptr [ebp-18],eax
 005C0747    mov        eax,dword ptr [ebp-4]
 005C074A    mov        eax,dword ptr [eax+4C]
 005C074D    test       eax,eax
>005C074F    je         005C075B
 005C0751    lea        edx,[ebp-20]
 005C0754    mov        ecx,dword ptr [eax]
 005C0756    call       dword ptr [ecx+34]
>005C0759    jmp        005C0764
 005C075B    lea        eax,[ebp-20]
 005C075E    mov        esi,dword ptr [ebp-4]
 005C0761    call       dword ptr [esi+24]
 005C0764    cmp        dword ptr [ebp-20],0
>005C0768    jne        005C082D
 005C076E    mov        eax,dword ptr [ebp-14]
 005C0771    mov        dword ptr [ebx],eax
 005C0773    mov        eax,dword ptr [ebp+8]
 005C0776    call       005BFA2C
 005C077B    mov        eax,dword ptr [ebp-10]
 005C077E    dec        eax
 005C077F    test       eax,eax
>005C0781    jl         005C0848
 005C0787    inc        eax
 005C0788    mov        dword ptr [ebp-8],eax
 005C078B    xor        ebx,ebx
 005C078D    mov        eax,dword ptr [ebp+8]
 005C0790    call       005BFA08
 005C0795    mov        esi,eax
 005C0797    mov        edi,ebx
 005C0799    shl        edi,4
 005C079C    add        edi,ebx
 005C079E    mov        eax,dword ptr [ebp-0C]
 005C07A1    mov        eax,dword ptr [eax+edi]
 005C07A4    lea        edx,[ebp-24]
 005C07A7    call       StrPas
 005C07AC    mov        edx,dword ptr [ebp-24]
 005C07AF    lea        eax,[esi+4]
 005C07B2    call       @LStrAsg
 005C07B7    mov        eax,dword ptr [ebp-0C]
 005C07BA    mov        al,byte ptr [eax+edi+4]
 005C07BE    mov        byte ptr [esi+8],al
 005C07C1    mov        eax,dword ptr [ebp-0C]
 005C07C4    mov        eax,dword ptr [eax+edi+5]
 005C07C8    mov        dword ptr [esi+0C],eax
 005C07CB    mov        eax,dword ptr [ebp-0C]
 005C07CE    cmp        dword ptr [eax+edi+9],0
>005C07D3    je         005C07F6
 005C07D5    mov        eax,ebx
 005C07D7    shl        eax,4
 005C07DA    add        eax,ebx
 005C07DC    mov        edx,dword ptr [ebp-0C]
 005C07DF    mov        eax,dword ptr [edx+eax+9]
 005C07E3    lea        edx,[ebp-28]
 005C07E6    call       StrPas
 005C07EB    mov        edx,dword ptr [ebp-28]
 005C07EE    lea        eax,[esi+10]
 005C07F1    call       @LStrAsg
 005C07F6    mov        eax,dword ptr [ebp-0C]
 005C07F9    cmp        dword ptr [eax+edi+0D],0
>005C07FE    je         005C0821
 005C0800    mov        eax,ebx
 005C0802    shl        eax,4
 005C0805    add        eax,ebx
 005C0807    mov        edx,dword ptr [ebp-0C]
 005C080A    mov        eax,dword ptr [edx+eax+0D]
 005C080E    lea        edx,[ebp-2C]
 005C0811    call       StrPas
 005C0816    mov        edx,dword ptr [ebp-2C]
 005C0819    lea        eax,[esi+14]
 005C081C    call       @LStrAsg
 005C0821    inc        ebx
 005C0822    dec        dword ptr [ebp-8]
<005C0825    jne        005C078D
>005C082B    jmp        005C0848
 005C082D    mov        ecx,5C08AC; 'DataResultSetOpen'
 005C0832    mov        edx,dword ptr [ebp-14]
 005C0835    mov        eax,dword ptr [ebp-4]
 005C0838    call       005C0220
 005C083D    lea        edx,[ebp-14]
 005C0840    mov        eax,dword ptr [ebp-4]
 005C0843    call       005C0310
 005C0848    xor        eax,eax
 005C084A    pop        edx
 005C084B    pop        ecx
 005C084C    pop        ecx
 005C084D    mov        dword ptr fs:[eax],edx
>005C0850    jmp        005C0878
<005C0852    jmp        @HandleOnException
 005C0857    dd        1
 005C085B    dd        4087B0;Exception
 005C085F    dd        5C0863
 005C0863    mov        ecx,dword ptr [eax+4]; Exception.?f4:String
 005C0866    mov        edx,5C08AC; 'DataResultSetOpen'
 005C086B    mov        eax,dword ptr [ebp-4]
 005C086E    call       005C0040
 005C0873    call       @DoneExcept
 005C0878    xor        eax,eax
 005C087A    pop        edx
 005C087B    pop        ecx
 005C087C    pop        ecx
 005C087D    mov        dword ptr fs:[eax],edx
 005C0880    push       5C089A
 005C0885    lea        eax,[ebp-2C]
 005C0888    mov        edx,3
 005C088D    call       @LStrArrayClr
 005C0892    ret
<005C0893    jmp        @HandleFinally
<005C0898    jmp        005C0885
 005C089A    pop        edi
 005C089B    pop        esi
 005C089C    pop        ebx
 005C089D    mov        esp,ebp
 005C089F    pop        ebp
 005C08A0    ret        8
*}
//end;

//005C08C0
//procedure sub_005C08C0(?:TRaveDataLink);
//begin
{*
 005C08C0    push       ebx
 005C08C1    mov        ebx,eax
 005C08C3    mov        eax,dword ptr [ebx+8]; TRaveDataLink.?f8:dword
 005C08C6    test       eax,eax
>005C08C8    je         005C08D5
 005C08CA    push       eax
 005C08CB    call       kernel32.FreeLibrary
 005C08D0    xor        eax,eax
 005C08D2    mov        dword ptr [ebx+8],eax; TRaveDataLink.?f8:dword
 005C08D5    pop        ebx
 005C08D6    ret
*}
//end;

//005C08D8
//constructor TRaveDataLinks.Create(?:TRaveDataLinks; _Dv__:Boolean);
//begin
{*
 005C08D8    push       ebx
 005C08D9    push       esi
 005C08DA    test       dl,dl
>005C08DC    je         005C08E6
 005C08DE    add        esp,0FFFFFFF0
 005C08E1    call       @ClassCreate
 005C08E6    mov        ebx,edx
 005C08E8    mov        esi,eax
 005C08EA    xor        edx,edx
 005C08EC    mov        eax,esi
 005C08EE    call       TObject.Create
 005C08F3    mov        dl,1
 005C08F5    mov        eax,[0041C260]; TList
 005C08FA    call       TObject.Create; TList.Create
 005C08FF    mov        dword ptr [esi+4],eax; TRaveDataLinks.?f4:TList
 005C0902    mov        eax,esi
 005C0904    test       bl,bl
>005C0906    je         005C0917
 005C0908    call       @AfterConstruction
 005C090D    pop        dword ptr fs:[0]
 005C0914    add        esp,0C
 005C0917    mov        eax,esi
 005C0919    pop        esi
 005C091A    pop        ebx
 005C091B    ret
*}
//end;

//005C091C
destructor TRaveDataLinks.Destroy;
begin
{*
 005C091C    push       ebx
 005C091D    push       esi
 005C091E    push       edi
 005C091F    push       ebp
 005C0920    call       @BeforeDestruction
 005C0925    mov        ebx,edx
 005C0927    mov        esi,eax
 005C0929    mov        eax,dword ptr [esi+4]; TRaveDataLinks.?f4:TList
 005C092C    mov        ebp,dword ptr [eax+8]; TList.FCount:Integer
 005C092F    dec        ebp
 005C0930    test       ebp,ebp
>005C0932    jl         005C094A
 005C0934    inc        ebp
 005C0935    xor        edi,edi
 005C0937    mov        eax,dword ptr [esi+4]; TRaveDataLinks.?f4:TList
 005C093A    mov        edx,edi
 005C093C    call       TList.Get
 005C0941    call       TObject.Free
 005C0946    inc        edi
 005C0947    dec        ebp
<005C0948    jne        005C0937
 005C094A    mov        eax,dword ptr [esi+4]; TRaveDataLinks.?f4:TList
 005C094D    call       TObject.Free
 005C0952    mov        edx,ebx
 005C0954    and        dl,0FC
 005C0957    mov        eax,esi
 005C0959    call       TObject.Destroy
 005C095E    test       bl,bl
>005C0960    jle        005C0969
 005C0962    mov        eax,esi
 005C0964    call       @ClassDestroy
 005C0969    pop        ebp
 005C096A    pop        edi
 005C096B    pop        esi
 005C096C    pop        ebx
 005C096D    ret
*}
end;

//005C0970
//procedure sub_005C0970(?:TRaveDataLinks; ?:Pointer);
//begin
{*
 005C0970    push       ebx
 005C0971    push       esi
 005C0972    push       edi
 005C0973    push       ebp
 005C0974    mov        ebx,edx
 005C0976    mov        ebp,eax
 005C0978    mov        dl,1
 005C097A    mov        eax,[005BF820]; TRaveDataLink
 005C097F    call       TObject.Create; TRaveDataLink.Create
 005C0984    mov        esi,eax
 005C0986    mov        edx,ebx
 005C0988    mov        eax,esi
 005C098A    call       005C02F4
 005C098F    mov        eax,dword ptr [ebp+4]; TRaveDataLinks.?f4:TList
 005C0992    mov        ebx,dword ptr [eax+8]; TList.FCount:Integer
 005C0995    dec        ebx
 005C0996    test       ebx,ebx
>005C0998    jl         005C09C3
 005C099A    inc        ebx
 005C099B    xor        edi,edi
 005C099D    mov        eax,dword ptr [ebp+4]; TRaveDataLinks.?f4:TList
 005C09A0    mov        edx,edi
 005C09A2    call       TList.Get
 005C09A7    mov        eax,dword ptr [eax+54]
 005C09AA    mov        edx,dword ptr [esi+54]; TRaveDataLink.?f54:String
 005C09AD    call       AnsiSameText
 005C09B2    test       al,al
>005C09B4    je         005C09BF
 005C09B6    mov        eax,esi
 005C09B8    call       TObject.Free
>005C09BD    jmp        005C09CD
 005C09BF    inc        edi
 005C09C0    dec        ebx
<005C09C1    jne        005C099D
 005C09C3    mov        eax,dword ptr [ebp+4]; TRaveDataLinks.?f4:TList
 005C09C6    mov        edx,esi
 005C09C8    call       TList.Add
 005C09CD    pop        ebp
 005C09CE    pop        edi
 005C09CF    pop        esi
 005C09D0    pop        ebx
 005C09D1    ret
*}
//end;

//005C09D4
//function sub_005C09D4(?:TRaveDataLinks; ?:String):?;
//begin
{*
 005C09D4    push       ebp
 005C09D5    mov        ebp,esp
 005C09D7    add        esp,0FFFFFFF8
 005C09DA    push       ebx
 005C09DB    push       esi
 005C09DC    push       edi
 005C09DD    xor        ecx,ecx
 005C09DF    mov        dword ptr [ebp-8],ecx
 005C09E2    mov        dword ptr [ebp-4],edx
 005C09E5    mov        edi,eax
 005C09E7    xor        eax,eax
 005C09E9    push       ebp
 005C09EA    push       5C0A7F
 005C09EF    push       dword ptr fs:[eax]
 005C09F2    mov        dword ptr fs:[eax],esp
 005C09F5    mov        eax,edi
 005C09F7    call       005C0AC0
 005C09FC    mov        esi,eax
 005C09FE    dec        esi
 005C09FF    test       esi,esi
>005C0A01    jl         005C0A3B
 005C0A03    inc        esi
 005C0A04    xor        ebx,ebx
 005C0A06    mov        edx,ebx
 005C0A08    mov        eax,edi
 005C0A0A    call       005C0AC8
 005C0A0F    mov        edx,dword ptr [eax+54]
 005C0A12    mov        eax,dword ptr [ebp-4]
 005C0A15    call       @LStrCmp
>005C0A1A    jne        005C0A37
 005C0A1C    mov        edx,ebx
 005C0A1E    mov        eax,edi
 005C0A20    call       005C0AC8
 005C0A25    mov        ecx,eax
 005C0A27    mov        dl,1
 005C0A29    mov        eax,[005BF648]; TDataConnection
 005C0A2E    call       TDataConnection.Create; TDataConnection.Create
 005C0A33    mov        ebx,eax
>005C0A35    jmp        005C0A69
 005C0A37    inc        ebx
 005C0A38    dec        esi
<005C0A39    jne        005C0A06
 005C0A3B    push       5C0A98; 'Unknown DATA link type. ('
 005C0A40    push       dword ptr [ebp-4]
 005C0A43    push       5C0ABC; ')'
 005C0A48    lea        eax,[ebp-8]
 005C0A4B    mov        edx,3
 005C0A50    call       @LStrCatN
 005C0A55    mov        ecx,dword ptr [ebp-8]
 005C0A58    mov        dl,1
 005C0A5A    mov        eax,[004087B0]; Exception
 005C0A5F    call       Exception.Create; Exception.Create
 005C0A64    call       @RaiseExcept
 005C0A69    xor        eax,eax
 005C0A6B    pop        edx
 005C0A6C    pop        ecx
 005C0A6D    pop        ecx
 005C0A6E    mov        dword ptr fs:[eax],edx
 005C0A71    push       5C0A86
 005C0A76    lea        eax,[ebp-8]
 005C0A79    call       @LStrClr
 005C0A7E    ret
<005C0A7F    jmp        @HandleFinally
<005C0A84    jmp        005C0A76
 005C0A86    mov        eax,ebx
 005C0A88    pop        edi
 005C0A89    pop        esi
 005C0A8A    pop        ebx
 005C0A8B    pop        ecx
 005C0A8C    pop        ecx
 005C0A8D    pop        ebp
 005C0A8E    ret
*}
//end;

//005C0AC0
//function sub_005C0AC0(?:TRaveDataLinks):?;
//begin
{*
 005C0AC0    mov        eax,dword ptr [eax+4]; TRaveDataLinks.?f4:TList
 005C0AC3    mov        eax,dword ptr [eax+8]; TList.FCount:Integer
 005C0AC6    ret
*}
//end;

//005C0AC8
//function sub_005C0AC8(?:TRaveDataLinks; ?:?):?;
//begin
{*
 005C0AC8    push       ebx
 005C0AC9    push       esi
 005C0ACA    mov        esi,edx
 005C0ACC    mov        ebx,eax
 005C0ACE    mov        edx,esi
 005C0AD0    mov        eax,dword ptr [ebx+4]; TRaveDataLinks.?f4:TList
 005C0AD3    call       TList.Get
 005C0AD8    pop        esi
 005C0AD9    pop        ebx
 005C0ADA    ret
*}
//end;

end.