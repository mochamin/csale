{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDbcMetadata;

interface

uses
  Classes, Windows, Graphics, ZDbcCachedResultSet, ZClasses, ZDbcIntfs;

type
  TZMetadataColumnDef = record //size = 9
  f0:String;;
  TZMetadataColumnDefs = array of TZMetadataColumnDef;
  TZVirtualResultSet = class(TZAbstractCachedResultSet)
  public
    destructor Destroy; virtual;
    procedure sub_004DB714(); virtual;
    procedure sub_004DB718(); virtual;
    //constructor Create(?:TZVirtualResultSet; _Dv__:Boolean; ?:?);
  end;
  _DynArr_135_3 = array of ?;
  TZAbstractDatabaseMetadata = class(TContainedObject)
  public
    fC:dword;//fC
    f10:String;//f10
    f14:dword;//f14
    f18:IZHashMap;//f18
    f1C:.3;//f1C
    destructor Destroy; virtual;
    procedure sub_004DAC4C; virtual;
    //procedure sub_004D9C84(?:?); virtual;
    //procedure sub_004D9D0C(?:?); virtual;
    //procedure sub_004D9D94(?:?); virtual;
    //procedure sub_004D9E1C(?:?); virtual;
    //procedure sub_004D9ED4(?:?); virtual;
    //procedure sub_004DA03C(?:?); virtual;
    //procedure sub_004D9F8C(?:?); virtual;
    //procedure sub_004DA604(?:?); virtual;
    //procedure sub_004DA6B4(?:?); virtual;
    //procedure sub_004DA764(?:?); virtual;
    //procedure sub_004DA82C(?:?); virtual;
    //procedure sub_004DA974(?:?); virtual;
    //procedure sub_004DAA24(?:?); virtual;
    //procedure sub_004D9B14(?:?); virtual;
    //procedure sub_004D9BCC(?:?); virtual;
    //procedure sub_004DA0FC(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004DA554(?:?); virtual;
    //procedure sub_004DA8B4(?:?); virtual;
    //procedure sub_004DAAE8(?:?); virtual;
    //function sub_004D9680():?; virtual;
    //function sub_004D9684():?; virtual;
    //procedure sub_004D9688(?:?); virtual;
    //procedure sub_004D96A0(?:?); virtual;
    //function sub_004D96F0():?; virtual;
    //function sub_004D96F4():?; virtual;
    //function sub_004D96F8():?; virtual;
    //function sub_004D96FC():?; virtual;
    //function sub_004D9700():?; virtual;
    //procedure sub_004D9704(?:?); virtual;
    //procedure sub_004D9714(?:?); virtual;
    //procedure sub_004D9724(?:?); virtual;
    //procedure sub_004D9768(?:?); virtual;
    //function sub_004D97C0():?; virtual;
    //function sub_004D97C8():?; virtual;
    //function sub_004D97CC():?; virtual;
    //function sub_004D97D0():?; virtual;
    //function sub_004D97D4():?; virtual;
    //function sub_004D97D8():?; virtual;
    //function sub_004D97DC():?; virtual;
    //function sub_004D97E0():?; virtual;
    //function sub_004D97E4():?; virtual;
    //function sub_004D97E8():?; virtual;
    //function sub_004D97EC():?; virtual;
    //function sub_004D97F0():?; virtual;
    //procedure sub_004D97F4(?:?); virtual;
    //procedure sub_004D9818(?:?); virtual;
    //procedure sub_004D9828(?:?); virtual;
    //procedure sub_004D9838(?:?); virtual;
    //procedure sub_004D9848(?:?); virtual;
    //procedure sub_004D9858(?:?); virtual;
    //procedure sub_004D9868(?:?); virtual;
    //procedure sub_004D988C(?:?); virtual;
    //function sub_004D989C():?; virtual;
    //function sub_004D98A0():?; virtual;
    //function sub_004D98A4():?; virtual;
    //function sub_004D98A8():?; virtual;
    //function sub_004D98AC():?; virtual;
    //function sub_004D98B0():?; virtual;
    //function sub_004D98B4():?; virtual;
    //function sub_004D98B8():?; virtual;
    //function sub_004D98BC():?; virtual;
    //function sub_004D98C0():?; virtual;
    //function sub_004D98C4():?; virtual;
    //function sub_004D98C8():?; virtual;
    //function sub_004D98CC():?; virtual;
    //function sub_004D98D0():?; virtual;
    //function sub_004D98D4():?; virtual;
    //function sub_004D98D8():?; virtual;
    //function sub_004D98DC():?; virtual;
    //function sub_004D98E0():?; virtual;
    //function sub_004D98E4():?; virtual;
    //function sub_004D98E8():?; virtual;
    //function sub_004D98EC():?; virtual;
    //function sub_004D98F0():?; virtual;
    //function sub_004D98F4():?; virtual;
    //function sub_004D98F8():?; virtual;
    //function sub_004D98FC():?; virtual;
    //function sub_004D9900():?; virtual;
    //function sub_004D9904():?; virtual;
    //procedure sub_004D9908(?:?); virtual;
    //procedure sub_004D9930(?:?); virtual;
    //procedure sub_004D995C(?:?); virtual;
    //function sub_004D9984():?; virtual;
    //procedure sub_004D9988(?:?); virtual;
    //function sub_004D99AC():?; virtual;
    //function sub_004D99B0():?; virtual;
    //function sub_004D99B4():?; virtual;
    //function sub_004D99B8():?; virtual;
    //function sub_004D99BC():?; virtual;
    //function sub_004D99C0():?; virtual;
    //function sub_004D99C4():?; virtual;
    //function sub_004D99C8():?; virtual;
    //function sub_004D99CC():?; virtual;
    //function sub_004D99D0():?; virtual;
    //function sub_004D99D4():?; virtual;
    //function sub_004D99D8():?; virtual;
    //function sub_004D99DC():?; virtual;
    //function sub_004D99E0():?; virtual;
    //function sub_004D99E4():?; virtual;
    //function sub_004D99E8():?; virtual;
    //function sub_004D99EC():?; virtual;
    //function sub_004D99F0():?; virtual;
    //function sub_004D99F4():?; virtual;
    //function sub_004D99F8():?; virtual;
    //function sub_004D99FC():?; virtual;
    //function sub_004D9A00():?; virtual;
    //function sub_004D9A04():?; virtual;
    //function sub_004D9A08():?; virtual;
    //function sub_004D9A0C():?; virtual;
    //function sub_004D9A10():?; virtual;
    //function sub_004D9A14():?; virtual;
    //function sub_004D9A18():?; virtual;
    //function sub_004D9A1C():?; virtual;
    //function sub_004D9A20():?; virtual;
    //function sub_004D9A24():?; virtual;
    //function sub_004D9A28():?; virtual;
    //function sub_004D9A2C():?; virtual;
    //function sub_004D9A30():?; virtual;
    //function sub_004D9A34():?; virtual;
    //function sub_004D9A38():?; virtual;
    //function sub_004D9A3C():?; virtual;
    //function sub_004D9A40():?; virtual;
    //function sub_004D9A44():?; virtual;
    //function sub_004D9A48():?; virtual;
    //function sub_004D9A4C():?; virtual;
    //function sub_004D9A50():?; virtual;
    //function sub_004D9A54():?; virtual;
    //function sub_004D9A58():?; virtual;
    //function sub_004D9A5C():?; virtual;
    //function sub_004D9A60():?; virtual;
    //function sub_004D9A64():?; virtual;
    //function sub_004D9A68():?; virtual;
    //function sub_004D9A6C():?; virtual;
    //function sub_004D9A70():?; virtual;
    //function sub_004D9A74():?; virtual;
    //function sub_004D9A78():?; virtual;
    //function sub_004D9A7C():?; virtual;
    //function sub_004DAA40():?; virtual;
    //function sub_004DAA44():?; virtual;
    //function sub_004DAA48():?; virtual;
    //procedure sub_004D8E64(?:?); virtual;
    //procedure sub_004DAB04(?:?); virtual;
    procedure sub_004D8FC8; virtual;
    //procedure sub_004D8FD8(?:?); virtual;
  end;
  TZDefaultIdentifierConvertor = class(TZAbstractObject)
  public
    f10:IZDatabaseMetadata;//f10
    //constructor Create(?:TZDefaultIdentifierConvertor; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//004D8D74
//constructor sub_004D8D74(?:?; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004D8D74    push       ebp
 004D8D75    mov        ebp,esp
 004D8D77    push       ecx
 004D8D78    push       ebx
 004D8D79    push       esi
 004D8D7A    test       dl,dl
>004D8D7C    je         004D8D86
 004D8D7E    add        esp,0FFFFFFF0
 004D8D81    call       @ClassCreate
 004D8D86    mov        dword ptr [ebp-4],ecx
 004D8D89    mov        ebx,edx
 004D8D8B    mov        esi,eax
 004D8D8D    mov        eax,dword ptr [ebp-4]
 004D8D90    call       @IntfAddRef
 004D8D95    xor        eax,eax
 004D8D97    push       ebp
 004D8D98    push       4D8E00
 004D8D9D    push       dword ptr fs:[eax]
 004D8DA0    mov        dword ptr fs:[eax],esp
 004D8DA3    mov        ecx,dword ptr [ebp-4]
 004D8DA6    xor        edx,edx
 004D8DA8    mov        eax,esi
 004D8DAA    call       TAggregatedObject.Create
 004D8DAF    mov        eax,dword ptr [ebp-4]
 004D8DB2    mov        dword ptr [esi+0C],eax
 004D8DB5    lea        eax,[esi+10]
 004D8DB8    mov        edx,dword ptr [ebp+0C]
 004D8DBB    call       @LStrAsg
 004D8DC0    mov        eax,dword ptr [ebp+8]
 004D8DC3    mov        dword ptr [esi+14],eax
 004D8DC6    mov        dl,1
 004D8DC8    mov        eax,[004BD220]; TZHashMap
 004D8DCD    call       TZHashMap.Create; TZHashMap.Create
 004D8DD2    mov        edx,eax
 004D8DD4    test       edx,edx
>004D8DD6    je         004D8DDB
 004D8DD8    sub        edx,0FFFFFFE0
 004D8DDB    lea        eax,[esi+18]
 004D8DDE    call       @IntfCopy
 004D8DE3    mov        eax,esi
 004D8DE5    mov        edx,dword ptr [eax]
 004D8DE7    call       dword ptr [edx+4]
 004D8DEA    xor        eax,eax
 004D8DEC    pop        edx
 004D8DED    pop        ecx
 004D8DEE    pop        ecx
 004D8DEF    mov        dword ptr fs:[eax],edx
 004D8DF2    push       4D8E07
 004D8DF7    lea        eax,[ebp-4]
 004D8DFA    call       @IntfClear
 004D8DFF    ret
<004D8E00    jmp        @HandleFinally
<004D8E05    jmp        004D8DF7
 004D8E07    mov        eax,esi
 004D8E09    test       bl,bl
>004D8E0B    je         004D8E1C
 004D8E0D    call       @AfterConstruction
 004D8E12    pop        dword ptr fs:[0]
 004D8E19    add        esp,0C
 004D8E1C    mov        eax,esi
 004D8E1E    pop        esi
 004D8E1F    pop        ebx
 004D8E20    pop        ecx
 004D8E21    pop        ebp
 004D8E22    ret        8
*}
//end;

//004D8E28
destructor TZAbstractDatabaseMetadata.Destroy;
begin
{*
 004D8E28    push       ebp
 004D8E29    mov        ebp,esp
 004D8E2B    push       ebx
 004D8E2C    push       esi
 004D8E2D    call       @BeforeDestruction
 004D8E32    mov        ebx,edx
 004D8E34    mov        esi,eax
 004D8E36    mov        eax,dword ptr [esi+18]; TZAbstractDatabaseMetadata.?f18:IZHashMap
 004D8E39    mov        edx,dword ptr [eax]
 004D8E3B    call       dword ptr [edx+38]
 004D8E3E    lea        eax,[esi+18]; TZAbstractDatabaseMetadata.?f18:IZHashMap
 004D8E41    call       @IntfClear
 004D8E46    mov        edx,ebx
 004D8E48    and        dl,0FC
 004D8E4B    mov        eax,esi
 004D8E4D    call       TObject.Destroy
 004D8E52    test       bl,bl
>004D8E54    jle        004D8E5D
 004D8E56    mov        eax,esi
 004D8E58    call       @ClassDestroy
 004D8E5D    pop        esi
 004D8E5E    pop        ebx
 004D8E5F    pop        ebp
 004D8E60    ret
*}
end;

//004D8E64
//procedure sub_004D8E64(?:?);
//begin
{*
 004D8E64    push       ebp
 004D8E65    mov        ebp,esp
 004D8E67    push       ebx
 004D8E68    push       esi
 004D8E69    mov        esi,edx
 004D8E6B    mov        ebx,eax
 004D8E6D    mov        eax,esi
 004D8E6F    mov        edx,dword ptr [ebx+0C]; TZASADatabaseMetadata.?fC:dword
 004D8E72    call       @IntfCopy
 004D8E77    pop        esi
 004D8E78    pop        ebx
 004D8E79    pop        ebp
 004D8E7A    ret
*}
//end;

//004D8E7C
//procedure sub_004D8E7C(?:TZAbstractDatabaseMetadata; ?:TZMetadataColumnDefs; ?:?);
//begin
{*
 004D8E7C    push       ebp
 004D8E7D    mov        ebp,esp
 004D8E7F    add        esp,0FFFFFFF4
 004D8E82    push       ebx
 004D8E83    push       esi
 004D8E84    push       edi
 004D8E85    mov        dword ptr [ebp-8],ecx
 004D8E88    mov        dword ptr [ebp-4],edx
 004D8E8B    mov        eax,dword ptr [ebp-4]
 004D8E8E    call       @DynArrayAddRef
 004D8E93    xor        eax,eax
 004D8E95    push       ebp
 004D8E96    push       4D8FB8
 004D8E9B    push       dword ptr fs:[eax]
 004D8E9E    mov        dword ptr fs:[eax],esp
 004D8EA1    mov        dl,1
 004D8EA3    mov        eax,[00433048]; TObjectList
 004D8EA8    call       TObjectList.Create; TObjectList.Create
 004D8EAD    mov        dword ptr [ebp-0C],eax
 004D8EB0    xor        eax,eax
 004D8EB2    push       ebp
 004D8EB3    push       4D8F95
 004D8EB8    push       dword ptr fs:[eax]
 004D8EBB    mov        dword ptr fs:[eax],esp
 004D8EBE    mov        eax,dword ptr [ebp-4]
 004D8EC1    call       @DynArrayHigh
 004D8EC6    mov        edi,eax
 004D8EC8    test       edi,edi
>004D8ECA    jl         004D8F3F
 004D8ECC    inc        edi
 004D8ECD    xor        esi,esi
 004D8ECF    mov        dl,1
 004D8ED1    mov        eax,[004D5F00]; TZColumnInfo
 004D8ED6    call       TZColumnInfo.Create; TZColumnInfo.Create
 004D8EDB    mov        ebx,eax
 004D8EDD    lea        eax,[ebx+10]; TZColumnInfo.?f10:String
 004D8EE0    imul       edx,esi,9
>004D8EE3    jno        004D8EEA
 004D8EE5    call       @IntOver
 004D8EEA    mov        ecx,dword ptr [ebp-4]
 004D8EED    mov        edx,dword ptr [ecx+edx]
 004D8EF0    call       @LStrAsg
 004D8EF5    imul       eax,esi,9
>004D8EF8    jno        004D8EFF
 004D8EFA    call       @IntOver
 004D8EFF    mov        edx,dword ptr [ebp-4]
 004D8F02    mov        al,byte ptr [edx+eax+4]
 004D8F06    mov        byte ptr [ebx+2C],al; TZColumnInfo.?f2C:byte
 004D8F09    imul       eax,esi,9
>004D8F0C    jno        004D8F13
 004D8F0E    call       @IntOver
 004D8F13    mov        edx,dword ptr [ebp-4]
 004D8F16    mov        eax,dword ptr [edx+eax+5]
 004D8F1A    mov        dword ptr [ebx+0C],eax; TZColumnInfo.?fC:dword
 004D8F1D    imul       eax,esi,9
>004D8F20    jno        004D8F27
 004D8F22    call       @IntOver
 004D8F27    mov        edx,dword ptr [ebp-4]
 004D8F2A    mov        eax,dword ptr [edx+eax+5]
 004D8F2E    mov        dword ptr [ebx+1C],eax; TZColumnInfo.?f1C:Integer
 004D8F31    mov        edx,ebx
 004D8F33    mov        eax,dword ptr [ebp-0C]
 004D8F36    call       00433178
 004D8F3B    inc        esi
 004D8F3C    dec        edi
<004D8F3D    jne        004D8ECF
 004D8F3F    push       0
 004D8F41    mov        ecx,dword ptr [ebp-0C]
 004D8F44    mov        dl,1
 004D8F46    mov        eax,[004D7C2C]; TZVirtualResultSet
 004D8F4B    call       TZVirtualResultSet.Create; TZVirtualResultSet.Create
 004D8F50    mov        edx,eax
 004D8F52    test       edx,edx
>004D8F54    je         004D8F59
 004D8F56    sub        edx,0FFFFFF8C
 004D8F59    mov        eax,dword ptr [ebp-8]
 004D8F5C    call       @IntfCopy
 004D8F61    mov        eax,dword ptr [ebp-8]
 004D8F64    mov        eax,dword ptr [eax]
 004D8F66    mov        dl,1
 004D8F68    mov        ecx,dword ptr [eax]
 004D8F6A    call       dword ptr [ecx+21C]
 004D8F70    mov        eax,dword ptr [ebp-8]
 004D8F73    mov        eax,dword ptr [eax]
 004D8F75    mov        dl,1
 004D8F77    mov        ecx,dword ptr [eax]
 004D8F79    call       dword ptr [ecx+220]
 004D8F7F    xor        eax,eax
 004D8F81    pop        edx
 004D8F82    pop        ecx
 004D8F83    pop        ecx
 004D8F84    mov        dword ptr fs:[eax],edx
 004D8F87    push       4D8F9C
 004D8F8C    mov        eax,dword ptr [ebp-0C]
 004D8F8F    call       TObject.Free
 004D8F94    ret
<004D8F95    jmp        @HandleFinally
<004D8F9A    jmp        004D8F8C
 004D8F9C    xor        eax,eax
 004D8F9E    pop        edx
 004D8F9F    pop        ecx
 004D8FA0    pop        ecx
 004D8FA1    mov        dword ptr fs:[eax],edx
 004D8FA4    push       4D8FBF
 004D8FA9    lea        eax,[ebp-4]
 004D8FAC    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004D8FB2    call       @DynArrayClear
 004D8FB7    ret
<004D8FB8    jmp        @HandleFinally
<004D8FBD    jmp        004D8FA9
 004D8FBF    pop        edi
 004D8FC0    pop        esi
 004D8FC1    pop        ebx
 004D8FC2    mov        esp,ebp
 004D8FC4    pop        ebp
 004D8FC5    ret
*}
//end;

//004D8FC8
procedure sub_004D8FC8;
begin
{*
 004D8FC8    push       ebp
 004D8FC9    mov        ebp,esp
 004D8FCB    mov        eax,dword ptr [eax+18]; TZASADatabaseMetadata.?f18:IZHashMap
 004D8FCE    mov        edx,dword ptr [eax]
 004D8FD0    call       dword ptr [edx+38]
 004D8FD3    pop        ebp
 004D8FD4    ret
*}
end;

//004D8FD8
//procedure sub_004D8FD8(?:?);
//begin
{*
 004D8FD8    push       ebp
 004D8FD9    mov        ebp,esp
 004D8FDB    push       0
 004D8FDD    push       ebx
 004D8FDE    push       esi
 004D8FDF    mov        esi,edx
 004D8FE1    mov        ebx,eax
 004D8FE3    xor        eax,eax
 004D8FE5    push       ebp
 004D8FE6    push       4D9031
 004D8FEB    push       dword ptr fs:[eax]
 004D8FEE    mov        dword ptr fs:[eax],esp
 004D8FF1    mov        ecx,esi
 004D8FF3    mov        dl,1
 004D8FF5    mov        eax,[004C46E8]; TZAnyValue
 004D8FFA    call       TZAnyValue.Create; TZAnyValue.Create
 004D8FFF    mov        edx,eax
 004D9001    test       edx,edx
>004D9003    je         004D9008
 004D9005    sub        edx,0FFFFFFC0
 004D9008    lea        eax,[ebp-4]
 004D900B    call       @IntfCopy
 004D9010    mov        edx,dword ptr [ebp-4]
 004D9013    mov        eax,dword ptr [ebx+18]; TZASADatabaseMetadata.?f18:IZHashMap
 004D9016    mov        ecx,dword ptr [eax]
 004D9018    call       dword ptr [ecx+34]
 004D901B    xor        eax,eax
 004D901D    pop        edx
 004D901E    pop        ecx
 004D901F    pop        ecx
 004D9020    mov        dword ptr fs:[eax],edx
 004D9023    push       4D9038
 004D9028    lea        eax,[ebp-4]
 004D902B    call       @IntfClear
 004D9030    ret
<004D9031    jmp        @HandleFinally
<004D9036    jmp        004D9028
 004D9038    pop        esi
 004D9039    pop        ebx
 004D903A    pop        ecx
 004D903B    pop        ebp
 004D903C    ret
*}
//end;

//004D9040
//procedure sub_004D9040(?:TZAbstractDatabaseMetadata; ?:AnsiString; ?:?);
//begin
{*
 004D9040    push       ebp
 004D9041    mov        ebp,esp
 004D9043    push       0
 004D9045    push       0
 004D9047    push       0
 004D9049    push       ebx
 004D904A    push       esi
 004D904B    mov        dword ptr [ebp-4],ecx
 004D904E    mov        esi,edx
 004D9050    mov        ebx,eax
 004D9052    mov        eax,dword ptr [ebp-4]
 004D9055    call       @IntfAddRef
 004D905A    xor        eax,eax
 004D905C    push       ebp
 004D905D    push       4D90C8
 004D9062    push       dword ptr fs:[eax]
 004D9065    mov        dword ptr fs:[eax],esp
 004D9068    mov        ecx,esi
 004D906A    mov        dl,1
 004D906C    mov        eax,[004C46E8]; TZAnyValue
 004D9071    call       TZAnyValue.Create; TZAnyValue.Create
 004D9076    mov        edx,eax
 004D9078    test       edx,edx
>004D907A    je         004D907F
 004D907C    sub        edx,0FFFFFFC0
 004D907F    lea        eax,[ebp-8]
 004D9082    call       @IntfCopy
 004D9087    lea        ecx,[ebp-0C]
 004D908A    mov        edx,dword ptr [ebp-4]
 004D908D    mov        eax,ebx
 004D908F    call       004D951C
 004D9094    mov        ecx,dword ptr [ebp-0C]
 004D9097    mov        edx,dword ptr [ebp-8]
 004D909A    mov        eax,dword ptr [ebx+18]; TZAbstractDatabaseMetadata.?f18:IZHashMap
 004D909D    mov        ebx,dword ptr [eax]
 004D909F    call       dword ptr [ebx+24]
 004D90A2    xor        eax,eax
 004D90A4    pop        edx
 004D90A5    pop        ecx
 004D90A6    pop        ecx
 004D90A7    mov        dword ptr fs:[eax],edx
 004D90AA    push       4D90CF
 004D90AF    lea        eax,[ebp-0C]
 004D90B2    call       @IntfClear
 004D90B7    lea        eax,[ebp-8]
 004D90BA    call       @IntfClear
 004D90BF    lea        eax,[ebp-4]
 004D90C2    call       @IntfClear
 004D90C7    ret
<004D90C8    jmp        @HandleFinally
<004D90CD    jmp        004D90AF
 004D90CF    pop        esi
 004D90D0    pop        ebx
 004D90D1    mov        esp,ebp
 004D90D3    pop        ebp
 004D90D4    ret
*}
//end;

//004D90D8
//procedure sub_004D90D8(?:TZAbstractDatabaseMetadata; ?:AnsiString; ?:?);
//begin
{*
 004D90D8    push       ebp
 004D90D9    mov        ebp,esp
 004D90DB    push       0
 004D90DD    push       0
 004D90DF    push       0
 004D90E1    push       ebx
 004D90E2    push       esi
 004D90E3    push       edi
 004D90E4    mov        ebx,ecx
 004D90E6    mov        edi,edx
 004D90E8    mov        esi,eax
 004D90EA    xor        eax,eax
 004D90EC    push       ebp
 004D90ED    push       4D9175
 004D90F2    push       dword ptr fs:[eax]
 004D90F5    mov        dword ptr fs:[eax],esp
 004D90F8    mov        ecx,edi
 004D90FA    mov        dl,1
 004D90FC    mov        eax,[004C46E8]; TZAnyValue
 004D9101    call       TZAnyValue.Create; TZAnyValue.Create
 004D9106    mov        edx,eax
 004D9108    test       edx,edx
>004D910A    je         004D910F
 004D910C    sub        edx,0FFFFFFC0
 004D910F    lea        eax,[ebp-4]
 004D9112    call       @IntfCopy
 004D9117    lea        ecx,[ebp-8]
 004D911A    mov        edx,dword ptr [ebp-4]
 004D911D    mov        eax,dword ptr [esi+18]; TZAbstractDatabaseMetadata.?f18:IZHashMap
 004D9120    mov        edi,dword ptr [eax]
 004D9122    call       dword ptr [edi+20]
 004D9125    mov        edx,dword ptr [ebp-8]
 004D9128    mov        eax,ebx
 004D912A    mov        ecx,4D9184; ['{8F4C4D10-2425-409E-96A9-7142007CC1B2}']
 004D912F    call       @IntfCast
 004D9134    cmp        dword ptr [ebx],0
>004D9137    je         004D914F
 004D9139    lea        ecx,[ebp-0C]
 004D913C    mov        edx,dword ptr [ebx]
 004D913E    mov        eax,esi
 004D9140    call       004D951C
 004D9145    mov        edx,dword ptr [ebp-0C]
 004D9148    mov        eax,ebx
 004D914A    call       @IntfCopy
 004D914F    xor        eax,eax
 004D9151    pop        edx
 004D9152    pop        ecx
 004D9153    pop        ecx
 004D9154    mov        dword ptr fs:[eax],edx
 004D9157    push       4D917C
 004D915C    lea        eax,[ebp-0C]
 004D915F    call       @IntfClear
 004D9164    lea        eax,[ebp-8]
 004D9167    call       @IntfClear
 004D916C    lea        eax,[ebp-4]
 004D916F    call       @IntfClear
 004D9174    ret
<004D9175    jmp        @HandleFinally
<004D917A    jmp        004D915C
 004D917C    pop        edi
 004D917D    pop        esi
 004D917E    pop        ebx
 004D917F    mov        esp,ebp
 004D9181    pop        ebp
 004D9182    ret
*}
//end;

//004D9194
//procedure sub_004D9194(?:TZAbstractDatabaseMetadata; ?:?; ?:TZVirtualResultSet; ?:?);
//begin
{*
 004D9194    push       ebp
 004D9195    mov        ebp,esp
 004D9197    push       0
 004D9199    push       0
 004D919B    push       0
 004D919D    push       0
 004D919F    push       0
 004D91A1    push       0
 004D91A3    push       0
 004D91A5    push       ebx
 004D91A6    push       esi
 004D91A7    push       edi
 004D91A8    mov        dword ptr [ebp-8],ecx
 004D91AB    mov        dword ptr [ebp-4],edx
 004D91AE    mov        eax,dword ptr [ebp-4]
 004D91B1    call       @IntfAddRef
 004D91B6    mov        eax,dword ptr [ebp-8]
 004D91B9    call       @IntfAddRef
 004D91BE    xor        eax,eax
 004D91C0    push       ebp
 004D91C1    push       4D950A
 004D91C6    push       dword ptr fs:[eax]
 004D91C9    mov        dword ptr fs:[eax],esp
 004D91CC    mov        dl,1
 004D91CE    mov        eax,dword ptr [ebp-8]
 004D91D1    mov        ecx,dword ptr [eax]
 004D91D3    call       dword ptr [ecx+21C]
 004D91D9    mov        dl,1
 004D91DB    mov        eax,dword ptr [ebp-8]
 004D91DE    mov        ecx,dword ptr [eax]
 004D91E0    call       dword ptr [ecx+220]
 004D91E6    lea        edx,[ebp-0C]
 004D91E9    mov        eax,dword ptr [ebp-4]
 004D91EC    mov        ecx,dword ptr [eax]
 004D91EE    call       dword ptr [ecx+0CC]
>004D91F4    jmp        004D948B
 004D91F9    mov        eax,dword ptr [ebp-8]
 004D91FC    mov        edx,dword ptr [eax]
 004D91FE    call       dword ptr [edx+1E4]; TZVirtualResultSet.sub_004DB714
 004D9204    mov        eax,dword ptr [ebp-0C]
 004D9207    mov        edx,dword ptr [eax]
 004D9209    call       dword ptr [edx+0C]
 004D920C    mov        esi,eax
 004D920E    test       esi,esi
>004D9210    jle        004D9480
 004D9216    mov        ebx,1
 004D921B    mov        edx,ebx
 004D921D    mov        eax,dword ptr [ebp-0C]
 004D9220    mov        ecx,dword ptr [eax]
 004D9222    call       dword ptr [ecx+48]
 004D9225    and        eax,7F
 004D9228    cmp        eax,11
>004D922B    ja         004D945F
 004D9231    jmp        dword ptr [eax*4+4D9238]
 004D9231    dd         4D945F
 004D9231    dd         4D9280
 004D9231    dd         4D929E
 004D9231    dd         4D92BC
 004D9231    dd         4D92DA
 004D9231    dd         4D92F8
 004D9231    dd         4D9316
 004D9231    dd         4D9339
 004D9231    dd         4D935C
 004D9231    dd         4D937F
 004D9231    dd         4D93A1
 004D9231    dd         4D93C3
 004D9231    dd         4D93E2
 004D9231    dd         4D9402
 004D9231    dd         4D9422
 004D9231    dd         4D9442
 004D9231    dd         4D9442
 004D9231    dd         4D9442
 004D9280    mov        edx,ebx
 004D9282    mov        eax,dword ptr [ebp-4]
 004D9285    mov        ecx,dword ptr [eax]
 004D9287    call       dword ptr [ecx+28]
 004D928A    mov        ecx,eax
 004D928C    mov        edx,ebx
 004D928E    mov        eax,dword ptr [ebp-8]
 004D9291    mov        edi,dword ptr [eax]
 004D9293    call       dword ptr [edi+134]; TZVirtualResultSet.sub_004D14A0
>004D9299    jmp        004D945F
 004D929E    mov        edx,ebx
 004D92A0    mov        eax,dword ptr [ebp-4]
 004D92A3    mov        ecx,dword ptr [eax]
 004D92A5    call       dword ptr [ecx+2C]
 004D92A8    mov        ecx,eax
 004D92AA    mov        edx,ebx
 004D92AC    mov        eax,dword ptr [ebp-8]
 004D92AF    mov        edi,dword ptr [eax]
 004D92B1    call       dword ptr [edi+138]; TZVirtualResultSet.sub_004D14D0
>004D92B7    jmp        004D945F
 004D92BC    mov        edx,ebx
 004D92BE    mov        eax,dword ptr [ebp-4]
 004D92C1    mov        ecx,dword ptr [eax]
 004D92C3    call       dword ptr [ecx+30]
 004D92C6    mov        ecx,eax
 004D92C8    mov        edx,ebx
 004D92CA    mov        eax,dword ptr [ebp-8]
 004D92CD    mov        edi,dword ptr [eax]
 004D92CF    call       dword ptr [edi+13C]; TZVirtualResultSet.sub_004D14FC
>004D92D5    jmp        004D945F
 004D92DA    mov        edx,ebx
 004D92DC    mov        eax,dword ptr [ebp-4]
 004D92DF    mov        ecx,dword ptr [eax]
 004D92E1    call       dword ptr [ecx+34]
 004D92E4    mov        ecx,eax
 004D92E6    mov        edx,ebx
 004D92E8    mov        eax,dword ptr [ebp-8]
 004D92EB    mov        edi,dword ptr [eax]
 004D92ED    call       dword ptr [edi+140]; TZVirtualResultSet.sub_004D152C
>004D92F3    jmp        004D945F
 004D92F8    mov        edx,ebx
 004D92FA    mov        eax,dword ptr [ebp-4]
 004D92FD    mov        ecx,dword ptr [eax]
 004D92FF    call       dword ptr [ecx+38]
 004D9302    push       edx
 004D9303    push       eax
 004D9304    mov        edx,ebx
 004D9306    mov        eax,dword ptr [ebp-8]
 004D9309    mov        ecx,dword ptr [eax]
 004D930B    call       dword ptr [ecx+144]; TZVirtualResultSet.sub_004D1560
>004D9311    jmp        004D945F
 004D9316    mov        edx,ebx
 004D9318    mov        eax,dword ptr [ebp-4]
 004D931B    mov        ecx,dword ptr [eax]
 004D931D    call       dword ptr [ecx+3C]
 004D9320    add        esp,0FFFFFFFC
 004D9323    fstp       dword ptr [esp]
 004D9326    wait
 004D9327    mov        edx,ebx
 004D9329    mov        eax,dword ptr [ebp-8]
 004D932C    mov        ecx,dword ptr [eax]
 004D932E    call       dword ptr [ecx+148]; TZVirtualResultSet.sub_004D158C
>004D9334    jmp        004D945F
 004D9339    mov        edx,ebx
 004D933B    mov        eax,dword ptr [ebp-4]
 004D933E    mov        ecx,dword ptr [eax]
 004D9340    call       dword ptr [ecx+40]
 004D9343    add        esp,0FFFFFFF8
 004D9346    fstp       qword ptr [esp]
 004D9349    wait
 004D934A    mov        edx,ebx
 004D934C    mov        eax,dword ptr [ebp-8]
 004D934F    mov        ecx,dword ptr [eax]
 004D9351    call       dword ptr [ecx+14C]; TZVirtualResultSet.sub_004D15B8
>004D9357    jmp        004D945F
 004D935C    mov        edx,ebx
 004D935E    mov        eax,dword ptr [ebp-4]
 004D9361    mov        ecx,dword ptr [eax]
 004D9363    call       dword ptr [ecx+44]
 004D9366    add        esp,0FFFFFFF4
 004D9369    fstp       tbyte ptr [esp]
 004D936C    wait
 004D936D    mov        edx,ebx
 004D936F    mov        eax,dword ptr [ebp-8]
 004D9372    mov        ecx,dword ptr [eax]
 004D9374    call       dword ptr [ecx+150]; TZVirtualResultSet.sub_004D15E4
>004D937A    jmp        004D945F
 004D937F    lea        ecx,[ebp-10]
 004D9382    mov        edx,ebx
 004D9384    mov        eax,dword ptr [ebp-4]
 004D9387    mov        edi,dword ptr [eax]
 004D9389    call       dword ptr [edi+20]
 004D938C    mov        ecx,dword ptr [ebp-10]
 004D938F    mov        edx,ebx
 004D9391    mov        eax,dword ptr [ebp-8]
 004D9394    mov        edi,dword ptr [eax]
 004D9396    call       dword ptr [edi+158]; TZVirtualResultSet.sub_004D1640
>004D939C    jmp        004D945F
 004D93A1    lea        ecx,[ebp-14]
 004D93A4    mov        edx,ebx
 004D93A6    mov        eax,dword ptr [ebp-4]
 004D93A9    mov        edi,dword ptr [eax]
 004D93AB    call       dword ptr [edi+24]
 004D93AE    mov        ecx,dword ptr [ebp-14]
 004D93B1    mov        edx,ebx
 004D93B3    mov        eax,dword ptr [ebp-8]
 004D93B6    mov        edi,dword ptr [eax]
 004D93B8    call       dword ptr [edi+15C]; TZVirtualResultSet.sub_004D1670
>004D93BE    jmp        004D945F
 004D93C3    lea        ecx,[ebp-18]
 004D93C6    mov        edx,ebx
 004D93C8    mov        eax,dword ptr [ebp-4]
 004D93CB    mov        edi,dword ptr [eax]
 004D93CD    call       dword ptr [edi+48]
 004D93D0    mov        ecx,dword ptr [ebp-18]
 004D93D3    mov        edx,ebx
 004D93D5    mov        eax,dword ptr [ebp-8]
 004D93D8    mov        edi,dword ptr [eax]
 004D93DA    call       dword ptr [edi+160]; TZVirtualResultSet.sub_004D16A0
>004D93E0    jmp        004D945F
 004D93E2    mov        edx,ebx
 004D93E4    mov        eax,dword ptr [ebp-4]
 004D93E7    mov        ecx,dword ptr [eax]
 004D93E9    call       dword ptr [ecx+4C]
 004D93EC    add        esp,0FFFFFFF8
 004D93EF    fstp       qword ptr [esp]
 004D93F2    wait
 004D93F3    mov        edx,ebx
 004D93F5    mov        eax,dword ptr [ebp-8]
 004D93F8    mov        ecx,dword ptr [eax]
 004D93FA    call       dword ptr [ecx+164]; TZVirtualResultSet.sub_004D16F8
>004D9400    jmp        004D945F
 004D9402    mov        edx,ebx
 004D9404    mov        eax,dword ptr [ebp-4]
 004D9407    mov        ecx,dword ptr [eax]
 004D9409    call       dword ptr [ecx+50]
 004D940C    add        esp,0FFFFFFF8
 004D940F    fstp       qword ptr [esp]
 004D9412    wait
 004D9413    mov        edx,ebx
 004D9415    mov        eax,dword ptr [ebp-8]
 004D9418    mov        ecx,dword ptr [eax]
 004D941A    call       dword ptr [ecx+168]; TZVirtualResultSet.sub_004D16CC
>004D9420    jmp        004D945F
 004D9422    mov        edx,ebx
 004D9424    mov        eax,dword ptr [ebp-4]
 004D9427    mov        ecx,dword ptr [eax]
 004D9429    call       dword ptr [ecx+54]
 004D942C    add        esp,0FFFFFFF8
 004D942F    fstp       qword ptr [esp]
 004D9432    wait
 004D9433    mov        edx,ebx
 004D9435    mov        eax,dword ptr [ebp-8]
 004D9438    mov        ecx,dword ptr [eax]
 004D943A    call       dword ptr [ecx+16C]; TZVirtualResultSet.sub_004D526C
>004D9440    jmp        004D945F
 004D9442    lea        ecx,[ebp-1C]
 004D9445    mov        edx,ebx
 004D9447    mov        eax,dword ptr [ebp-4]
 004D944A    mov        edi,dword ptr [eax]
 004D944C    call       dword ptr [edi+20]
 004D944F    mov        ecx,dword ptr [ebp-1C]
 004D9452    mov        edx,ebx
 004D9454    mov        eax,dword ptr [ebp-8]
 004D9457    mov        edi,dword ptr [eax]
 004D9459    call       dword ptr [edi+158]; TZVirtualResultSet.sub_004D1640
 004D945F    mov        eax,dword ptr [ebp-4]
 004D9462    mov        edx,dword ptr [eax]
 004D9464    call       dword ptr [edx+14]
 004D9467    test       al,al
>004D9469    je         004D9478
 004D946B    mov        edx,ebx
 004D946D    mov        eax,dword ptr [ebp-8]
 004D9470    mov        ecx,dword ptr [eax]
 004D9472    call       dword ptr [ecx+130]; TZVirtualResultSet.sub_004D1474
 004D9478    inc        ebx
 004D9479    dec        esi
<004D947A    jne        004D921B
 004D9480    mov        eax,dword ptr [ebp-8]
 004D9483    mov        edx,dword ptr [eax]
 004D9485    call       dword ptr [edx+1D0]; TZVirtualResultSet.sub_004D1E30
 004D948B    mov        eax,dword ptr [ebp-4]
 004D948E    mov        edx,dword ptr [eax]
 004D9490    call       dword ptr [edx+0C]
 004D9493    test       al,al
<004D9495    jne        004D91F9
 004D949B    mov        eax,dword ptr [ebp-8]
 004D949E    mov        edx,dword ptr [eax]
 004D94A0    call       dword ptr [edx+0E4]; TZVirtualResultSet.sub_004D5070
 004D94A6    xor        edx,edx
 004D94A8    mov        eax,dword ptr [ebp-8]
 004D94AB    mov        ecx,dword ptr [eax]
 004D94AD    call       dword ptr [ecx+220]
 004D94B3    mov        eax,dword ptr [ebp+8]
 004D94B6    mov        edx,dword ptr [ebp-8]
 004D94B9    call       @IntfCopy
 004D94BE    xor        eax,eax
 004D94C0    pop        edx
 004D94C1    pop        ecx
 004D94C2    pop        ecx
 004D94C3    mov        dword ptr fs:[eax],edx
 004D94C6    push       4D9511
 004D94CB    lea        eax,[ebp-1C]
 004D94CE    call       @LStrClr
 004D94D3    lea        eax,[ebp-18]
 004D94D6    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004D94DC    call       @DynArrayClear
 004D94E1    lea        eax,[ebp-14]
 004D94E4    call       @WStrClr
 004D94E9    lea        eax,[ebp-10]
 004D94EC    call       @LStrClr
 004D94F1    lea        eax,[ebp-0C]
 004D94F4    call       @IntfClear
 004D94F9    lea        eax,[ebp-8]
 004D94FC    call       @IntfClear
 004D9501    lea        eax,[ebp-4]
 004D9504    call       @IntfClear
 004D9509    ret
<004D950A    jmp        @HandleFinally
<004D950F    jmp        004D94CB
 004D9511    pop        edi
 004D9512    pop        esi
 004D9513    pop        ebx
 004D9514    mov        esp,ebp
 004D9516    pop        ebp
 004D9517    ret        4
*}
//end;

//004D951C
//procedure sub_004D951C(?:TZAbstractDatabaseMetadata; ?:?; ?:?);
//begin
{*
 004D951C    push       ebp
 004D951D    mov        ebp,esp
 004D951F    add        esp,0FFFFFFE4
 004D9522    push       ebx
 004D9523    push       esi
 004D9524    push       edi
 004D9525    xor        ebx,ebx
 004D9527    mov        dword ptr [ebp-1C],ebx
 004D952A    mov        dword ptr [ebp-10],ebx
 004D952D    mov        dword ptr [ebp-0C],ecx
 004D9530    mov        dword ptr [ebp-8],edx
 004D9533    mov        dword ptr [ebp-4],eax
 004D9536    mov        eax,dword ptr [ebp-8]
 004D9539    call       @IntfAddRef
 004D953E    xor        eax,eax
 004D9540    push       ebp
 004D9541    push       4D9672
 004D9546    push       dword ptr fs:[eax]
 004D9549    mov        dword ptr fs:[eax],esp
 004D954C    mov        eax,dword ptr [ebp-0C]
 004D954F    call       @IntfClear
 004D9554    lea        edx,[ebp-10]
 004D9557    mov        eax,dword ptr [ebp-8]
 004D955A    mov        ecx,dword ptr [eax]
 004D955C    call       dword ptr [ecx+0CC]
 004D9562    mov        dl,1
 004D9564    mov        eax,[00433048]; TObjectList
 004D9569    call       TObjectList.Create; TObjectList.Create
 004D956E    mov        dword ptr [ebp-14],eax
 004D9571    xor        eax,eax
 004D9573    push       ebp
 004D9574    push       4D9645
 004D9579    push       dword ptr fs:[eax]
 004D957C    mov        dword ptr fs:[eax],esp
 004D957F    mov        eax,dword ptr [ebp-10]
 004D9582    mov        edx,dword ptr [eax]
 004D9584    call       dword ptr [edx+0C]
 004D9587    test       eax,eax
>004D9589    jle        004D95F0
 004D958B    mov        dword ptr [ebp-18],eax
 004D958E    mov        esi,1
 004D9593    mov        dl,1
 004D9595    mov        eax,[004D5F00]; TZColumnInfo
 004D959A    call       TZColumnInfo.Create; TZColumnInfo.Create
 004D959F    mov        ebx,eax
 004D95A1    lea        ecx,[ebp-1C]
 004D95A4    mov        edx,esi
 004D95A6    mov        eax,dword ptr [ebp-10]
 004D95A9    mov        edi,dword ptr [eax]
 004D95AB    call       dword ptr [edi+2C]
 004D95AE    mov        edx,dword ptr [ebp-1C]
 004D95B1    lea        eax,[ebx+10]; TZColumnInfo.?f10:String
 004D95B4    call       @LStrAsg
 004D95B9    mov        edx,esi
 004D95BB    mov        eax,dword ptr [ebp-10]
 004D95BE    mov        ecx,dword ptr [eax]
 004D95C0    call       dword ptr [ecx+48]
 004D95C3    mov        byte ptr [ebx+2C],al; TZColumnInfo.?f2C:byte
 004D95C6    mov        edx,esi
 004D95C8    mov        eax,dword ptr [ebp-10]
 004D95CB    mov        ecx,dword ptr [eax]
 004D95CD    call       dword ptr [ecx+38]
 004D95D0    mov        dword ptr [ebx+0C],eax; TZColumnInfo.?fC:dword
 004D95D3    mov        edx,esi
 004D95D5    mov        eax,dword ptr [ebp-10]
 004D95D8    mov        ecx,dword ptr [eax]
 004D95DA    call       dword ptr [ecx+38]
 004D95DD    mov        dword ptr [ebx+1C],eax; TZColumnInfo.?f1C:Integer
 004D95E0    mov        edx,ebx
 004D95E2    mov        eax,dword ptr [ebp-14]
 004D95E5    call       00433178
 004D95EA    inc        esi
 004D95EB    dec        dword ptr [ebp-18]
<004D95EE    jne        004D9593
 004D95F0    mov        eax,dword ptr [ebp-8]
 004D95F3    mov        edx,dword ptr [eax]
 004D95F5    call       dword ptr [edx+0E4]
 004D95FB    mov        eax,dword ptr [ebp-0C]
 004D95FE    push       eax
 004D95FF    push       0
 004D9601    mov        ecx,dword ptr [ebp-14]
 004D9604    mov        dl,1
 004D9606    mov        eax,[004D7C2C]; TZVirtualResultSet
 004D960B    call       TZVirtualResultSet.Create; TZVirtualResultSet.Create
 004D9610    mov        ecx,eax
 004D9612    test       ecx,ecx
>004D9614    je         004D9619
 004D9616    sub        ecx,0FFFFFF8C
 004D9619    mov        edx,dword ptr [ebp-8]
 004D961C    mov        eax,dword ptr [ebp-4]
 004D961F    call       004D9194
 004D9624    mov        eax,dword ptr [ebp-8]
 004D9627    mov        edx,dword ptr [eax]
 004D9629    call       dword ptr [edx+0E4]
 004D962F    xor        eax,eax
 004D9631    pop        edx
 004D9632    pop        ecx
 004D9633    pop        ecx
 004D9634    mov        dword ptr fs:[eax],edx
 004D9637    push       4D964C
 004D963C    mov        eax,dword ptr [ebp-14]
 004D963F    call       TObject.Free
 004D9644    ret
<004D9645    jmp        @HandleFinally
<004D964A    jmp        004D963C
 004D964C    xor        eax,eax
 004D964E    pop        edx
 004D964F    pop        ecx
 004D9650    pop        ecx
 004D9651    mov        dword ptr fs:[eax],edx
 004D9654    push       4D9679
 004D9659    lea        eax,[ebp-1C]
 004D965C    call       @LStrClr
 004D9661    lea        eax,[ebp-10]
 004D9664    call       @IntfClear
 004D9669    lea        eax,[ebp-8]
 004D966C    call       @IntfClear
 004D9671    ret
<004D9672    jmp        @HandleFinally
<004D9677    jmp        004D9659
 004D9679    pop        edi
 004D967A    pop        esi
 004D967B    pop        ebx
 004D967C    mov        esp,ebp
 004D967E    pop        ebp
 004D967F    ret
*}
//end;

//004D9680
//function sub_004D9680():?;
//begin
{*
 004D9680    mov        al,1
 004D9682    ret
*}
//end;

//004D9684
//function sub_004D9684():?;
//begin
{*
 004D9684    mov        al,1
 004D9686    ret
*}
//end;

//004D9688
//procedure sub_004D9688(?:?);
//begin
{*
 004D9688    push       ebp
 004D9689    mov        ebp,esp
 004D968B    push       ebx
 004D968C    push       esi
 004D968D    mov        esi,edx
 004D968F    mov        ebx,eax
 004D9691    mov        eax,esi
 004D9693    mov        edx,dword ptr [ebx+10]; TZASADatabaseMetadata.?f10:String
 004D9696    call       @LStrAsg
 004D969B    pop        esi
 004D969C    pop        ebx
 004D969D    pop        ebp
 004D969E    ret
*}
//end;

//004D96A0
//procedure sub_004D96A0(?:?);
//begin
{*
 004D96A0    push       ebp
 004D96A1    mov        ebp,esp
 004D96A3    push       ebx
 004D96A4    push       esi
 004D96A5    mov        esi,edx
 004D96A7    mov        ebx,eax
 004D96A9    mov        ecx,esi
 004D96AB    mov        edx,4D96D8; 'UID'
 004D96B0    mov        eax,dword ptr [ebx+14]; TZASADatabaseMetadata.?f14:dword
 004D96B3    call       TStrings.GetValue
 004D96B8    cmp        dword ptr [esi],0
>004D96BB    jne        004D96CC
 004D96BD    mov        ecx,esi
 004D96BF    mov        edx,4D96E4; 'username'
 004D96C4    mov        eax,dword ptr [ebx+14]; TZASADatabaseMetadata.?f14:dword
 004D96C7    call       TStrings.GetValue
 004D96CC    pop        esi
 004D96CD    pop        ebx
 004D96CE    pop        ebp
 004D96CF    ret
*}
//end;

//004D96F0
//function sub_004D96F0():?;
//begin
{*
 004D96F0    xor        eax,eax
 004D96F2    ret
*}
//end;

//004D96F4
//function sub_004D96F4():?;
//begin
{*
 004D96F4    xor        eax,eax
 004D96F6    ret
*}
//end;

//004D96F8
//function sub_004D96F8():?;
//begin
{*
 004D96F8    xor        eax,eax
 004D96FA    ret
*}
//end;

//004D96FC
//function sub_004D96FC():?;
//begin
{*
 004D96FC    xor        eax,eax
 004D96FE    ret
*}
//end;

//004D9700
//function sub_004D9700():?;
//begin
{*
 004D9700    xor        eax,eax
 004D9702    ret
*}
//end;

//004D9704
//procedure sub_004D9704(?:?);
//begin
{*
 004D9704    push       ebp
 004D9705    mov        ebp,esp
 004D9707    push       ebx
 004D9708    mov        ebx,edx
 004D970A    mov        eax,ebx
 004D970C    call       @LStrClr
 004D9711    pop        ebx
 004D9712    pop        ebp
 004D9713    ret
*}
//end;

//004D9714
//procedure sub_004D9714(?:?);
//begin
{*
 004D9714    push       ebp
 004D9715    mov        ebp,esp
 004D9717    push       ebx
 004D9718    mov        ebx,edx
 004D971A    mov        eax,ebx
 004D971C    call       @LStrClr
 004D9721    pop        ebx
 004D9722    pop        ebp
 004D9723    ret
*}
//end;

//004D9724
//procedure sub_004D9724(?:?);
//begin
{*
 004D9724    push       ebp
 004D9725    mov        ebp,esp
 004D9727    push       ebx
 004D9728    mov        ebx,edx
 004D972A    mov        eax,ebx
 004D972C    mov        edx,4D9744; 'Zeos Database Connectivity Driver'
 004D9731    call       @LStrAsg
 004D9736    pop        ebx
 004D9737    pop        ebp
 004D9738    ret
*}
//end;

//004D9768
//procedure sub_004D9768(?:?);
//begin
{*
 004D9768    push       ebp
 004D9769    mov        ebp,esp
 004D976B    add        esp,0FFFFFFF0
 004D976E    push       ebx
 004D976F    push       esi
 004D9770    mov        esi,edx
 004D9772    mov        ebx,eax
 004D9774    push       esi
 004D9775    mov        eax,ebx
 004D9777    mov        edx,dword ptr [eax]
 004D9779    call       dword ptr [edx+88]; TZASADatabaseMetadata.sub_00557844
 004D977F    mov        dword ptr [ebp-10],eax
 004D9782    mov        byte ptr [ebp-0C],0
 004D9786    mov        eax,ebx
 004D9788    mov        edx,dword ptr [eax]
 004D978A    call       dword ptr [edx+8C]; TZASADatabaseMetadata.sub_0055784C
 004D9790    mov        dword ptr [ebp-8],eax
 004D9793    mov        byte ptr [ebp-4],0
 004D9797    lea        edx,[ebp-10]
 004D979A    mov        ecx,1
 004D979F    mov        eax,4D97B8; '%d.%d'
 004D97A4    call       Format
 004D97A9    pop        esi
 004D97AA    pop        ebx
 004D97AB    mov        esp,ebp
 004D97AD    pop        ebp
 004D97AE    ret
*}
//end;

//004D97C0
//function sub_004D97C0():?;
//begin
{*
 004D97C0    mov        eax,1
 004D97C5    ret
*}
//end;

//004D97C8
//function sub_004D97C8():?;
//begin
{*
 004D97C8    xor        eax,eax
 004D97CA    ret
*}
//end;

//004D97CC
//function sub_004D97CC():?;
//begin
{*
 004D97CC    mov        al,1
 004D97CE    ret
*}
//end;

//004D97D0
//function sub_004D97D0():?;
//begin
{*
 004D97D0    xor        eax,eax
 004D97D2    ret
*}
//end;

//004D97D4
//function sub_004D97D4():?;
//begin
{*
 004D97D4    xor        eax,eax
 004D97D6    ret
*}
//end;

//004D97D8
//function sub_004D97D8():?;
//begin
{*
 004D97D8    xor        eax,eax
 004D97DA    ret
*}
//end;

//004D97DC
//function sub_004D97DC():?;
//begin
{*
 004D97DC    xor        eax,eax
 004D97DE    ret
*}
//end;

//004D97E0
//function sub_004D97E0():?;
//begin
{*
 004D97E0    mov        al,1
 004D97E2    ret
*}
//end;

//004D97E4
//function sub_004D97E4():?;
//begin
{*
 004D97E4    mov        al,1
 004D97E6    ret
*}
//end;

//004D97E8
//function sub_004D97E8():?;
//begin
{*
 004D97E8    xor        eax,eax
 004D97EA    ret
*}
//end;

//004D97EC
//function sub_004D97EC():?;
//begin
{*
 004D97EC    xor        eax,eax
 004D97EE    ret
*}
//end;

//004D97F0
//function sub_004D97F0():?;
//begin
{*
 004D97F0    xor        eax,eax
 004D97F2    ret
*}
//end;

//004D97F4
//procedure sub_004D97F4(?:?);
//begin
{*
 004D97F4    push       ebp
 004D97F5    mov        ebp,esp
 004D97F7    push       ebx
 004D97F8    mov        ebx,edx
 004D97FA    mov        eax,ebx
 004D97FC    mov        edx,4D9814; '\"'
 004D9801    call       @LStrAsg
 004D9806    pop        ebx
 004D9807    pop        ebp
 004D9808    ret
*}
//end;

//004D9818
//procedure sub_004D9818(?:?);
//begin
{*
 004D9818    push       ebp
 004D9819    mov        ebp,esp
 004D981B    push       ebx
 004D981C    mov        ebx,edx
 004D981E    mov        eax,ebx
 004D9820    call       @LStrClr
 004D9825    pop        ebx
 004D9826    pop        ebp
 004D9827    ret
*}
//end;

//004D9828
//procedure sub_004D9828(?:?);
//begin
{*
 004D9828    push       ebp
 004D9829    mov        ebp,esp
 004D982B    push       ebx
 004D982C    mov        ebx,edx
 004D982E    mov        eax,ebx
 004D9830    call       @LStrClr
 004D9835    pop        ebx
 004D9836    pop        ebp
 004D9837    ret
*}
//end;

//004D9838
//procedure sub_004D9838(?:?);
//begin
{*
 004D9838    push       ebp
 004D9839    mov        ebp,esp
 004D983B    push       ebx
 004D983C    mov        ebx,edx
 004D983E    mov        eax,ebx
 004D9840    call       @LStrClr
 004D9845    pop        ebx
 004D9846    pop        ebp
 004D9847    ret
*}
//end;

//004D9848
//procedure sub_004D9848(?:?);
//begin
{*
 004D9848    push       ebp
 004D9849    mov        ebp,esp
 004D984B    push       ebx
 004D984C    mov        ebx,edx
 004D984E    mov        eax,ebx
 004D9850    call       @LStrClr
 004D9855    pop        ebx
 004D9856    pop        ebp
 004D9857    ret
*}
//end;

//004D9858
//procedure sub_004D9858(?:?);
//begin
{*
 004D9858    push       ebp
 004D9859    mov        ebp,esp
 004D985B    push       ebx
 004D985C    mov        ebx,edx
 004D985E    mov        eax,ebx
 004D9860    call       @LStrClr
 004D9865    pop        ebx
 004D9866    pop        ebp
 004D9867    ret
*}
//end;

//004D9868
//procedure sub_004D9868(?:?);
//begin
{*
 004D9868    push       ebp
 004D9869    mov        ebp,esp
 004D986B    push       ebx
 004D986C    mov        ebx,edx
 004D986E    mov        eax,ebx
 004D9870    mov        edx,4D9888; '%'
 004D9875    call       @LStrAsg
 004D987A    pop        ebx
 004D987B    pop        ebp
 004D987C    ret
*}
//end;

//004D988C
//procedure sub_004D988C(?:?);
//begin
{*
 004D988C    push       ebp
 004D988D    mov        ebp,esp
 004D988F    push       ebx
 004D9890    mov        ebx,edx
 004D9892    mov        eax,ebx
 004D9894    call       @LStrClr
 004D9899    pop        ebx
 004D989A    pop        ebp
 004D989B    ret
*}
//end;

//004D989C
//function sub_004D989C():?;
//begin
{*
 004D989C    mov        al,1
 004D989E    ret
*}
//end;

//004D98A0
//function sub_004D98A0():?;
//begin
{*
 004D98A0    mov        al,1
 004D98A2    ret
*}
//end;

//004D98A4
//function sub_004D98A4():?;
//begin
{*
 004D98A4    mov        al,1
 004D98A6    ret
*}
//end;

//004D98A8
//function sub_004D98A8():?;
//begin
{*
 004D98A8    mov        al,1
 004D98AA    ret
*}
//end;

//004D98AC
//function sub_004D98AC():?;
//begin
{*
 004D98AC    xor        eax,eax
 004D98AE    ret
*}
//end;

//004D98B0
//function sub_004D98B0():?;
//begin
{*
 004D98B0    xor        eax,eax
 004D98B2    ret
*}
//end;

//004D98B4
//function sub_004D98B4():?;
//begin
{*
 004D98B4    mov        al,1
 004D98B6    ret
*}
//end;

//004D98B8
//function sub_004D98B8():?;
//begin
{*
 004D98B8    xor        eax,eax
 004D98BA    ret
*}
//end;

//004D98BC
//function sub_004D98BC():?;
//begin
{*
 004D98BC    mov        al,1
 004D98BE    ret
*}
//end;

//004D98C0
//function sub_004D98C0():?;
//begin
{*
 004D98C0    mov        al,1
 004D98C2    ret
*}
//end;

//004D98C4
//function sub_004D98C4():?;
//begin
{*
 004D98C4    mov        al,1
 004D98C6    ret
*}
//end;

//004D98C8
//function sub_004D98C8():?;
//begin
{*
 004D98C8    mov        al,1
 004D98CA    ret
*}
//end;

//004D98CC
//function sub_004D98CC():?;
//begin
{*
 004D98CC    xor        eax,eax
 004D98CE    ret
*}
//end;

//004D98D0
//function sub_004D98D0():?;
//begin
{*
 004D98D0    mov        al,1
 004D98D2    ret
*}
//end;

//004D98D4
//function sub_004D98D4():?;
//begin
{*
 004D98D4    mov        al,1
 004D98D6    ret
*}
//end;

//004D98D8
//function sub_004D98D8():?;
//begin
{*
 004D98D8    mov        al,1
 004D98DA    ret
*}
//end;

//004D98DC
//function sub_004D98DC():?;
//begin
{*
 004D98DC    mov        al,1
 004D98DE    ret
*}
//end;

//004D98E0
//function sub_004D98E0():?;
//begin
{*
 004D98E0    mov        al,1
 004D98E2    ret
*}
//end;

//004D98E4
//function sub_004D98E4():?;
//begin
{*
 004D98E4    mov        al,1
 004D98E6    ret
*}
//end;

//004D98E8
//function sub_004D98E8():?;
//begin
{*
 004D98E8    mov        al,1
 004D98EA    ret
*}
//end;

//004D98EC
//function sub_004D98EC():?;
//begin
{*
 004D98EC    mov        al,1
 004D98EE    ret
*}
//end;

//004D98F0
//function sub_004D98F0():?;
//begin
{*
 004D98F0    mov        al,1
 004D98F2    ret
*}
//end;

//004D98F4
//function sub_004D98F4():?;
//begin
{*
 004D98F4    mov        al,1
 004D98F6    ret
*}
//end;

//004D98F8
//function sub_004D98F8():?;
//begin
{*
 004D98F8    xor        eax,eax
 004D98FA    ret
*}
//end;

//004D98FC
//function sub_004D98FC():?;
//begin
{*
 004D98FC    mov        al,1
 004D98FE    ret
*}
//end;

//004D9900
//function sub_004D9900():?;
//begin
{*
 004D9900    mov        al,1
 004D9902    ret
*}
//end;

//004D9904
//function sub_004D9904():?;
//begin
{*
 004D9904    mov        al,1
 004D9906    ret
*}
//end;

//004D9908
//procedure sub_004D9908(?:?);
//begin
{*
 004D9908    push       ebp
 004D9909    mov        ebp,esp
 004D990B    push       ebx
 004D990C    mov        ebx,edx
 004D990E    mov        eax,ebx
 004D9910    mov        edx,4D9928; 'Schema'
 004D9915    call       @LStrAsg
 004D991A    pop        ebx
 004D991B    pop        ebp
 004D991C    ret
*}
//end;

//004D9930
//procedure sub_004D9930(?:?);
//begin
{*
 004D9930    push       ebp
 004D9931    mov        ebp,esp
 004D9933    push       ebx
 004D9934    mov        ebx,edx
 004D9936    mov        eax,ebx
 004D9938    mov        edx,4D9950; 'Procedure'
 004D993D    call       @LStrAsg
 004D9942    pop        ebx
 004D9943    pop        ebp
 004D9944    ret
*}
//end;

//004D995C
//procedure sub_004D995C(?:?);
//begin
{*
 004D995C    push       ebp
 004D995D    mov        ebp,esp
 004D995F    push       ebx
 004D9960    mov        ebx,edx
 004D9962    mov        eax,ebx
 004D9964    mov        edx,4D997C; 'Catalog'
 004D9969    call       @LStrAsg
 004D996E    pop        ebx
 004D996F    pop        ebp
 004D9970    ret
*}
//end;

//004D9984
//function sub_004D9984():?;
//begin
{*
 004D9984    xor        eax,eax
 004D9986    ret
*}
//end;

//004D9988
//procedure sub_004D9988(?:?);
//begin
{*
 004D9988    push       ebp
 004D9989    mov        ebp,esp
 004D998B    push       ebx
 004D998C    mov        ebx,edx
 004D998E    mov        eax,ebx
 004D9990    mov        edx,4D99A8; '.'
 004D9995    call       @LStrAsg
 004D999A    pop        ebx
 004D999B    pop        ebp
 004D999C    ret
*}
//end;

//004D99AC
//function sub_004D99AC():?;
//begin
{*
 004D99AC    xor        eax,eax
 004D99AE    ret
*}
//end;

//004D99B0
//function sub_004D99B0():?;
//begin
{*
 004D99B0    xor        eax,eax
 004D99B2    ret
*}
//end;

//004D99B4
//function sub_004D99B4():?;
//begin
{*
 004D99B4    xor        eax,eax
 004D99B6    ret
*}
//end;

//004D99B8
//function sub_004D99B8():?;
//begin
{*
 004D99B8    xor        eax,eax
 004D99BA    ret
*}
//end;

//004D99BC
//function sub_004D99BC():?;
//begin
{*
 004D99BC    xor        eax,eax
 004D99BE    ret
*}
//end;

//004D99C0
//function sub_004D99C0():?;
//begin
{*
 004D99C0    xor        eax,eax
 004D99C2    ret
*}
//end;

//004D99C4
//function sub_004D99C4():?;
//begin
{*
 004D99C4    xor        eax,eax
 004D99C6    ret
*}
//end;

//004D99C8
//function sub_004D99C8():?;
//begin
{*
 004D99C8    xor        eax,eax
 004D99CA    ret
*}
//end;

//004D99CC
//function sub_004D99CC():?;
//begin
{*
 004D99CC    xor        eax,eax
 004D99CE    ret
*}
//end;

//004D99D0
//function sub_004D99D0():?;
//begin
{*
 004D99D0    xor        eax,eax
 004D99D2    ret
*}
//end;

//004D99D4
//function sub_004D99D4():?;
//begin
{*
 004D99D4    xor        eax,eax
 004D99D6    ret
*}
//end;

//004D99D8
//function sub_004D99D8():?;
//begin
{*
 004D99D8    xor        eax,eax
 004D99DA    ret
*}
//end;

//004D99DC
//function sub_004D99DC():?;
//begin
{*
 004D99DC    xor        eax,eax
 004D99DE    ret
*}
//end;

//004D99E0
//function sub_004D99E0():?;
//begin
{*
 004D99E0    xor        eax,eax
 004D99E2    ret
*}
//end;

//004D99E4
//function sub_004D99E4():?;
//begin
{*
 004D99E4    xor        eax,eax
 004D99E6    ret
*}
//end;

//004D99E8
//function sub_004D99E8():?;
//begin
{*
 004D99E8    xor        eax,eax
 004D99EA    ret
*}
//end;

//004D99EC
//function sub_004D99EC():?;
//begin
{*
 004D99EC    xor        eax,eax
 004D99EE    ret
*}
//end;

//004D99F0
//function sub_004D99F0():?;
//begin
{*
 004D99F0    xor        eax,eax
 004D99F2    ret
*}
//end;

//004D99F4
//function sub_004D99F4():?;
//begin
{*
 004D99F4    xor        eax,eax
 004D99F6    ret
*}
//end;

//004D99F8
//function sub_004D99F8():?;
//begin
{*
 004D99F8    xor        eax,eax
 004D99FA    ret
*}
//end;

//004D99FC
//function sub_004D99FC():?;
//begin
{*
 004D99FC    xor        eax,eax
 004D99FE    ret
*}
//end;

//004D9A00
//function sub_004D9A00():?;
//begin
{*
 004D9A00    xor        eax,eax
 004D9A02    ret
*}
//end;

//004D9A04
//function sub_004D9A04():?;
//begin
{*
 004D9A04    xor        eax,eax
 004D9A06    ret
*}
//end;

//004D9A08
//function sub_004D9A08():?;
//begin
{*
 004D9A08    mov        al,1
 004D9A0A    ret
*}
//end;

//004D9A0C
//function sub_004D9A0C():?;
//begin
{*
 004D9A0C    mov        al,1
 004D9A0E    ret
*}
//end;

//004D9A10
//function sub_004D9A10():?;
//begin
{*
 004D9A10    xor        eax,eax
 004D9A12    ret
*}
//end;

//004D9A14
//function sub_004D9A14():?;
//begin
{*
 004D9A14    xor        eax,eax
 004D9A16    ret
*}
//end;

//004D9A18
//function sub_004D9A18():?;
//begin
{*
 004D9A18    xor        eax,eax
 004D9A1A    ret
*}
//end;

//004D9A1C
//function sub_004D9A1C():?;
//begin
{*
 004D9A1C    xor        eax,eax
 004D9A1E    ret
*}
//end;

//004D9A20
//function sub_004D9A20():?;
//begin
{*
 004D9A20    xor        eax,eax
 004D9A22    ret
*}
//end;

//004D9A24
//function sub_004D9A24():?;
//begin
{*
 004D9A24    xor        eax,eax
 004D9A26    ret
*}
//end;

//004D9A28
//function sub_004D9A28():?;
//begin
{*
 004D9A28    xor        eax,eax
 004D9A2A    ret
*}
//end;

//004D9A2C
//function sub_004D9A2C():?;
//begin
{*
 004D9A2C    xor        eax,eax
 004D9A2E    ret
*}
//end;

//004D9A30
//function sub_004D9A30():?;
//begin
{*
 004D9A30    xor        eax,eax
 004D9A32    ret
*}
//end;

//004D9A34
//function sub_004D9A34():?;
//begin
{*
 004D9A34    xor        eax,eax
 004D9A36    ret
*}
//end;

//004D9A38
//function sub_004D9A38():?;
//begin
{*
 004D9A38    xor        eax,eax
 004D9A3A    ret
*}
//end;

//004D9A3C
//function sub_004D9A3C():?;
//begin
{*
 004D9A3C    xor        eax,eax
 004D9A3E    ret
*}
//end;

//004D9A40
//function sub_004D9A40():?;
//begin
{*
 004D9A40    xor        eax,eax
 004D9A42    ret
*}
//end;

//004D9A44
//function sub_004D9A44():?;
//begin
{*
 004D9A44    xor        eax,eax
 004D9A46    ret
*}
//end;

//004D9A48
//function sub_004D9A48():?;
//begin
{*
 004D9A48    xor        eax,eax
 004D9A4A    ret
*}
//end;

//004D9A4C
//function sub_004D9A4C():?;
//begin
{*
 004D9A4C    mov        al,1
 004D9A4E    ret
*}
//end;

//004D9A50
//function sub_004D9A50():?;
//begin
{*
 004D9A50    xor        eax,eax
 004D9A52    ret
*}
//end;

//004D9A54
//function sub_004D9A54():?;
//begin
{*
 004D9A54    xor        eax,eax
 004D9A56    ret
*}
//end;

//004D9A58
//function sub_004D9A58():?;
//begin
{*
 004D9A58    xor        eax,eax
 004D9A5A    ret
*}
//end;

//004D9A5C
//function sub_004D9A5C():?;
//begin
{*
 004D9A5C    xor        eax,eax
 004D9A5E    ret
*}
//end;

//004D9A60
//function sub_004D9A60():?;
//begin
{*
 004D9A60    xor        eax,eax
 004D9A62    ret
*}
//end;

//004D9A64
//function sub_004D9A64():?;
//begin
{*
 004D9A64    mov        al,2
 004D9A66    ret
*}
//end;

//004D9A68
//function sub_004D9A68():?;
//begin
{*
 004D9A68    mov        al,1
 004D9A6A    ret
*}
//end;

//004D9A6C
//function sub_004D9A6C():?;
//begin
{*
 004D9A6C    mov        al,1
 004D9A6E    ret
*}
//end;

//004D9A70
//function sub_004D9A70():?;
//begin
{*
 004D9A70    mov        al,1
 004D9A72    ret
*}
//end;

//004D9A74
//function sub_004D9A74():?;
//begin
{*
 004D9A74    xor        eax,eax
 004D9A76    ret
*}
//end;

//004D9A78
//function sub_004D9A78():?;
//begin
{*
 004D9A78    mov        al,1
 004D9A7A    ret
*}
//end;

//004D9A7C
//function sub_004D9A7C():?;
//begin
{*
 004D9A7C    xor        eax,eax
 004D9A7E    ret
*}
//end;

//004D9B14
//procedure sub_004D9B14(?:?);
//begin
{*
 004D9B14    push       ebp
 004D9B15    mov        ebp,esp
 004D9B17    push       ebx
 004D9B18    mov        ebx,eax
 004D9B1A    mov        ecx,dword ptr [ebp+8]
 004D9B1D    mov        edx,dword ptr ds:[61DD34]; gvar_0061DD34:TZMetadataColumnDefs
 004D9B23    mov        eax,ebx
 004D9B25    call       004D8E7C
 004D9B2A    pop        ebx
 004D9B2B    pop        ebp
 004D9B2C    ret        8
*}
//end;

//004D9BCC
//procedure sub_004D9BCC(?:?);
//begin
{*
 004D9BCC    push       ebp
 004D9BCD    mov        ebp,esp
 004D9BCF    push       ebx
 004D9BD0    mov        ebx,eax
 004D9BD2    mov        ecx,dword ptr [ebp+8]
 004D9BD5    mov        edx,dword ptr ds:[61DD38]; gvar_0061DD38:TZMetadataColumnDefs
 004D9BDB    mov        eax,ebx
 004D9BDD    call       004D8E7C
 004D9BE2    pop        ebx
 004D9BE3    pop        ebp
 004D9BE4    ret        0C
*}
//end;

//004D9BE8
//procedure sub_004D9BE8(?:TZMySQLDatabaseMetadata; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004D9BE8    push       ebp
 004D9BE9    mov        ebp,esp
 004D9BEB    add        esp,0FFFFFFF4
 004D9BEE    push       ebx
 004D9BEF    push       esi
 004D9BF0    push       edi
 004D9BF1    xor        ebx,ebx
 004D9BF3    mov        dword ptr [ebp-0C],ebx
 004D9BF6    mov        dword ptr [ebp-8],ecx
 004D9BF9    mov        dword ptr [ebp-4],edx
 004D9BFC    mov        ebx,eax
 004D9BFE    mov        esi,dword ptr [ebp+8]
 004D9C01    xor        eax,eax
 004D9C03    push       ebp
 004D9C04    push       4D9C71
 004D9C09    push       dword ptr fs:[eax]
 004D9C0C    mov        dword ptr fs:[eax],esp
 004D9C0F    mov        eax,dword ptr [ebp+10]
 004D9C12    push       eax
 004D9C13    mov        eax,dword ptr [ebp+0C]
 004D9C16    push       eax
 004D9C17    lea        eax,[ebp-0C]
 004D9C1A    push       eax
 004D9C1B    mov        ecx,dword ptr [ebp-8]
 004D9C1E    mov        edx,dword ptr [ebp-4]
 004D9C21    mov        eax,ebx
 004D9C23    call       004DAE68
 004D9C28    mov        ecx,esi
 004D9C2A    mov        edx,dword ptr [ebp-0C]
 004D9C2D    mov        eax,ebx
 004D9C2F    call       004D90D8
 004D9C34    cmp        dword ptr [esi],0
>004D9C37    jne        004D9C5B
 004D9C39    mov        eax,dword ptr [ebp+10]
 004D9C3C    push       eax
 004D9C3D    mov        eax,dword ptr [ebp+0C]
 004D9C40    push       eax
 004D9C41    push       esi
 004D9C42    mov        ecx,dword ptr [ebp-8]
 004D9C45    mov        edx,dword ptr [ebp-4]
 004D9C48    mov        eax,ebx
 004D9C4A    mov        edi,dword ptr [eax]
 004D9C4C    call       dword ptr [edi+8]; TZMySQLDatabaseMetadata.sub_00508D50
 004D9C4F    mov        ecx,dword ptr [esi]
 004D9C51    mov        edx,dword ptr [ebp-0C]
 004D9C54    mov        eax,ebx
 004D9C56    call       004D9040
 004D9C5B    xor        eax,eax
 004D9C5D    pop        edx
 004D9C5E    pop        ecx
 004D9C5F    pop        ecx
 004D9C60    mov        dword ptr fs:[eax],edx
 004D9C63    push       4D9C78
 004D9C68    lea        eax,[ebp-0C]
 004D9C6B    call       @LStrClr
 004D9C70    ret
<004D9C71    jmp        @HandleFinally
<004D9C76    jmp        004D9C68
 004D9C78    pop        edi
 004D9C79    pop        esi
 004D9C7A    pop        ebx
 004D9C7B    mov        esp,ebp
 004D9C7D    pop        ebp
 004D9C7E    ret        0C
*}
//end;

//004D9C84
//procedure sub_004D9C84(?:?);
//begin
{*
 004D9C84    push       ebp
 004D9C85    mov        ebp,esp
 004D9C87    push       ebx
 004D9C88    mov        ebx,eax
 004D9C8A    mov        ecx,dword ptr [ebp+8]
 004D9C8D    mov        edx,dword ptr ds:[61DD3C]; gvar_0061DD3C:TZMetadataColumnDefs
 004D9C93    mov        eax,ebx
 004D9C95    call       004D8E7C
 004D9C9A    pop        ebx
 004D9C9B    pop        ebp
 004D9C9C    ret        0C
*}
//end;

//004D9D0C
//procedure sub_004D9D0C(?:?);
//begin
{*
 004D9D0C    push       ebp
 004D9D0D    mov        ebp,esp
 004D9D0F    push       ebx
 004D9D10    push       esi
 004D9D11    mov        esi,edx
 004D9D13    mov        ebx,eax
 004D9D15    mov        ecx,esi
 004D9D17    mov        edx,dword ptr ds:[61DD40]; gvar_0061DD40:TZMetadataColumnDefs
 004D9D1D    mov        eax,ebx
 004D9D1F    call       004D8E7C
 004D9D24    pop        esi
 004D9D25    pop        ebx
 004D9D26    pop        ebp
 004D9D27    ret
*}
//end;

//004D9D94
//procedure sub_004D9D94(?:?);
//begin
{*
 004D9D94    push       ebp
 004D9D95    mov        ebp,esp
 004D9D97    push       ebx
 004D9D98    push       esi
 004D9D99    mov        esi,edx
 004D9D9B    mov        ebx,eax
 004D9D9D    mov        ecx,esi
 004D9D9F    mov        edx,dword ptr ds:[61DD44]; gvar_0061DD44:TZMetadataColumnDefs
 004D9DA5    mov        eax,ebx
 004D9DA7    call       004D8E7C
 004D9DAC    pop        esi
 004D9DAD    pop        ebx
 004D9DAE    pop        ebp
 004D9DAF    ret
*}
//end;

//004D9E1C
//procedure sub_004D9E1C(?:?);
//begin
{*
 004D9E1C    push       ebp
 004D9E1D    mov        ebp,esp
 004D9E1F    push       ebx
 004D9E20    push       esi
 004D9E21    mov        esi,edx
 004D9E23    mov        ebx,eax
 004D9E25    mov        ecx,esi
 004D9E27    mov        edx,dword ptr ds:[61DD48]; gvar_0061DD48:TZMetadataColumnDefs
 004D9E2D    mov        eax,ebx
 004D9E2F    call       004D8E7C
 004D9E34    pop        esi
 004D9E35    pop        ebx
 004D9E36    pop        ebp
 004D9E37    ret
*}
//end;

//004D9E38
//procedure sub_004D9E38(?:TZASADatabaseMetadata; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004D9E38    push       ebp
 004D9E39    mov        ebp,esp
 004D9E3B    add        esp,0FFFFFFF4
 004D9E3E    push       ebx
 004D9E3F    push       esi
 004D9E40    push       edi
 004D9E41    xor        ebx,ebx
 004D9E43    mov        dword ptr [ebp-0C],ebx
 004D9E46    mov        dword ptr [ebp-8],ecx
 004D9E49    mov        dword ptr [ebp-4],edx
 004D9E4C    mov        ebx,eax
 004D9E4E    mov        esi,dword ptr [ebp+8]
 004D9E51    xor        eax,eax
 004D9E53    push       ebp
 004D9E54    push       4D9EC1
 004D9E59    push       dword ptr fs:[eax]
 004D9E5C    mov        dword ptr fs:[eax],esp
 004D9E5F    mov        eax,dword ptr [ebp+10]
 004D9E62    push       eax
 004D9E63    mov        eax,dword ptr [ebp+0C]
 004D9E66    push       eax
 004D9E67    lea        eax,[ebp-0C]
 004D9E6A    push       eax
 004D9E6B    mov        ecx,dword ptr [ebp-8]
 004D9E6E    mov        edx,dword ptr [ebp-4]
 004D9E71    mov        eax,ebx
 004D9E73    call       004DAFEC
 004D9E78    mov        ecx,esi
 004D9E7A    mov        edx,dword ptr [ebp-0C]
 004D9E7D    mov        eax,ebx
 004D9E7F    call       004D90D8
 004D9E84    cmp        dword ptr [esi],0
>004D9E87    jne        004D9EAB
 004D9E89    mov        eax,dword ptr [ebp+10]
 004D9E8C    push       eax
 004D9E8D    mov        eax,dword ptr [ebp+0C]
 004D9E90    push       eax
 004D9E91    push       esi
 004D9E92    mov        ecx,dword ptr [ebp-8]
 004D9E95    mov        edx,dword ptr [ebp-4]
 004D9E98    mov        eax,ebx
 004D9E9A    mov        edi,dword ptr [eax]
 004D9E9C    call       dword ptr [edi+18]; TZASADatabaseMetadata.sub_00559130
 004D9E9F    mov        ecx,dword ptr [esi]
 004D9EA1    mov        edx,dword ptr [ebp-0C]
 004D9EA4    mov        eax,ebx
 004D9EA6    call       004D9040
 004D9EAB    xor        eax,eax
 004D9EAD    pop        edx
 004D9EAE    pop        ecx
 004D9EAF    pop        ecx
 004D9EB0    mov        dword ptr fs:[eax],edx
 004D9EB3    push       4D9EC8
 004D9EB8    lea        eax,[ebp-0C]
 004D9EBB    call       @LStrClr
 004D9EC0    ret
<004D9EC1    jmp        @HandleFinally
<004D9EC6    jmp        004D9EB8
 004D9EC8    pop        edi
 004D9EC9    pop        esi
 004D9ECA    pop        ebx
 004D9ECB    mov        esp,ebp
 004D9ECD    pop        ebp
 004D9ECE    ret        0C
*}
//end;

//004D9ED4
//procedure sub_004D9ED4(?:?);
//begin
{*
 004D9ED4    push       ebp
 004D9ED5    mov        ebp,esp
 004D9ED7    push       ebx
 004D9ED8    mov        ebx,eax
 004D9EDA    mov        ecx,dword ptr [ebp+8]
 004D9EDD    mov        edx,dword ptr ds:[61DD4C]; gvar_0061DD4C:TZMetadataColumnDefs
 004D9EE3    mov        eax,ebx
 004D9EE5    call       004D8E7C
 004D9EEA    pop        ebx
 004D9EEB    pop        ebp
 004D9EEC    ret        0C
*}
//end;

//004D9F8C
//procedure sub_004D9F8C(?:?);
//begin
{*
 004D9F8C    push       ebp
 004D9F8D    mov        ebp,esp
 004D9F8F    push       ebx
 004D9F90    mov        ebx,eax
 004D9F92    mov        ecx,dword ptr [ebp+8]
 004D9F95    mov        edx,dword ptr ds:[61DD50]; gvar_0061DD50:TZMetadataColumnDefs
 004D9F9B    mov        eax,ebx
 004D9F9D    call       004D8E7C
 004D9FA2    pop        ebx
 004D9FA3    pop        ebp
 004D9FA4    ret        0C
*}
//end;

//004DA03C
//procedure sub_004DA03C(?:?);
//begin
{*
 004DA03C    push       ebp
 004DA03D    mov        ebp,esp
 004DA03F    push       ebx
 004DA040    mov        ebx,eax
 004DA042    mov        ecx,dword ptr [ebp+8]
 004DA045    mov        edx,dword ptr ds:[61DD54]; gvar_0061DD54:TZMetadataColumnDefs
 004DA04B    mov        eax,ebx
 004DA04D    call       004D8E7C
 004DA052    pop        ebx
 004DA053    pop        ebp
 004DA054    ret        8
*}
//end;

//004DA0FC
//procedure sub_004DA0FC(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004DA0FC    push       ebp
 004DA0FD    mov        ebp,esp
 004DA0FF    push       ecx
 004DA100    mov        ecx,6
 004DA105    push       0
 004DA107    push       0
 004DA109    dec        ecx
<004DA10A    jne        004DA105
 004DA10C    xchg       ecx,dword ptr [ebp-4]
 004DA10F    push       ebx
 004DA110    push       esi
 004DA111    push       edi
 004DA112    mov        dword ptr [ebp-8],ecx
 004DA115    mov        dword ptr [ebp-4],edx
 004DA118    mov        esi,eax
 004DA11A    mov        ebx,dword ptr [ebp+8]
 004DA11D    xor        eax,eax
 004DA11F    push       ebp
 004DA120    push       4DA41A
 004DA125    push       dword ptr fs:[eax]
 004DA128    mov        dword ptr fs:[eax],esp
 004DA12B    mov        ecx,ebx
 004DA12D    mov        edx,dword ptr ds:[61DD58]; gvar_0061DD58:TZMetadataColumnDefs
 004DA133    mov        eax,esi
 004DA135    call       004D8E7C
 004DA13A    mov        dl,1
 004DA13C    mov        eax,[0041C8E4]; TStringList
 004DA141    call       TObject.Create; TStringList.Create
 004DA146    mov        dword ptr [ebp-10],eax
 004DA149    xor        eax,eax
 004DA14B    push       ebp
 004DA14C    push       4DA3DD
 004DA151    push       dword ptr fs:[eax]
 004DA154    mov        dword ptr fs:[eax],esp
 004DA157    mov        eax,dword ptr [ebp+14]
 004DA15A    push       eax
 004DA15B    lea        eax,[ebp-14]
 004DA15E    push       eax
 004DA15F    mov        ecx,dword ptr [ebp-8]
 004DA162    mov        edx,dword ptr [ebp-4]
 004DA165    mov        eax,esi
 004DA167    call       004DA570
>004DA16C    jmp        004DA189
 004DA16E    lea        ecx,[ebp-20]
 004DA171    mov        edx,4DA434; 'COLUMN_NAME'
 004DA176    mov        eax,dword ptr [ebp-14]
 004DA179    mov        edi,dword ptr [eax]
 004DA17B    call       dword ptr [edi+74]
 004DA17E    mov        edx,dword ptr [ebp-20]
 004DA181    mov        eax,dword ptr [ebp-10]
 004DA184    mov        ecx,dword ptr [eax]
 004DA186    call       dword ptr [ecx+38]; TStringList.Add
 004DA189    mov        eax,dword ptr [ebp-14]
 004DA18C    mov        edx,dword ptr [eax]
 004DA18E    call       dword ptr [edx+0C]
 004DA191    test       al,al
<004DA193    jne        004DA16E
 004DA195    mov        eax,dword ptr [ebp-14]
 004DA198    mov        edx,dword ptr [eax]
 004DA19A    call       dword ptr [edx+10]
 004DA19D    mov        eax,dword ptr [ebp-10]
 004DA1A0    mov        edx,dword ptr [eax]
 004DA1A2    call       dword ptr [edx+14]; TStringList.GetCount
 004DA1A5    test       eax,eax
>004DA1A7    jne        004DA232
 004DA1AD    mov        eax,dword ptr [ebp+14]
 004DA1B0    push       eax
 004DA1B1    push       1
 004DA1B3    push       0
 004DA1B5    lea        eax,[ebp-18]
 004DA1B8    push       eax
 004DA1B9    mov        ecx,dword ptr [ebp-8]
 004DA1BC    mov        edx,dword ptr [ebp-4]
 004DA1BF    mov        eax,esi
 004DA1C1    call       004DA8D0
 004DA1C6    lea        eax,[ebp-0C]
 004DA1C9    call       @LStrClr
>004DA1CE    jmp        004DA21E
 004DA1D0    cmp        dword ptr [ebp-0C],0
>004DA1D4    jne        004DA1E6
 004DA1D6    lea        ecx,[ebp-0C]
 004DA1D9    mov        edx,4DA448; 'INDEX_NAME'
 004DA1DE    mov        eax,dword ptr [ebp-18]
 004DA1E1    mov        edi,dword ptr [eax]
 004DA1E3    call       dword ptr [edi+74]
 004DA1E6    lea        ecx,[ebp-24]
 004DA1E9    mov        edx,4DA448; 'INDEX_NAME'
 004DA1EE    mov        eax,dword ptr [ebp-18]
 004DA1F1    mov        edi,dword ptr [eax]
 004DA1F3    call       dword ptr [edi+74]
 004DA1F6    mov        eax,dword ptr [ebp-24]
 004DA1F9    mov        edx,dword ptr [ebp-0C]
 004DA1FC    call       @LStrCmp
>004DA201    jne        004DA21E
 004DA203    lea        ecx,[ebp-28]
 004DA206    mov        edx,4DA434; 'COLUMN_NAME'
 004DA20B    mov        eax,dword ptr [ebp-18]
 004DA20E    mov        edi,dword ptr [eax]
 004DA210    call       dword ptr [edi+74]
 004DA213    mov        edx,dword ptr [ebp-28]
 004DA216    mov        eax,dword ptr [ebp-10]
 004DA219    mov        ecx,dword ptr [eax]
 004DA21B    call       dword ptr [ecx+38]; TStringList.Add
 004DA21E    mov        eax,dword ptr [ebp-18]
 004DA221    mov        edx,dword ptr [eax]
 004DA223    call       dword ptr [edx+0C]
 004DA226    test       al,al
<004DA228    jne        004DA1D0
 004DA22A    mov        eax,dword ptr [ebp-18]
 004DA22D    mov        edx,dword ptr [eax]
 004DA22F    call       dword ptr [edx+10]
 004DA232    mov        eax,dword ptr [ebp+14]
 004DA235    push       eax
 004DA236    push       0
 004DA238    lea        eax,[ebp-1C]
 004DA23B    push       eax
 004DA23C    mov        ecx,dword ptr [ebp-8]
 004DA23F    mov        edx,dword ptr [ebp-4]
 004DA242    mov        eax,esi
 004DA244    call       004D9E38
>004DA249    jmp        004DA3AF
 004DA24E    mov        eax,dword ptr [ebp-10]
 004DA251    mov        edx,dword ptr [eax]
 004DA253    call       dword ptr [edx+14]; TStringList.GetCount
 004DA256    test       eax,eax
>004DA258    je         004DA27D
 004DA25A    lea        ecx,[ebp-2C]
 004DA25D    mov        edx,4DA434; 'COLUMN_NAME'
 004DA262    mov        eax,dword ptr [ebp-1C]
 004DA265    mov        esi,dword ptr [eax]
 004DA267    call       dword ptr [esi+74]
 004DA26A    mov        edx,dword ptr [ebp-2C]
 004DA26D    mov        eax,dword ptr [ebp-10]
 004DA270    mov        ecx,dword ptr [eax]
 004DA272    call       dword ptr [ecx+54]; TStringList.IndexOf
 004DA275    test       eax,eax
>004DA277    jl         004DA3AF
 004DA27D    mov        eax,dword ptr [ebp-10]
 004DA280    mov        edx,dword ptr [eax]
 004DA282    call       dword ptr [edx+14]; TStringList.GetCount
 004DA285    test       eax,eax
>004DA287    jne        004DA2AB
 004DA289    mov        edx,4DA45C; 'DATA_TYPE'
 004DA28E    mov        eax,dword ptr [ebp-1C]
 004DA291    mov        ecx,dword ptr [eax]
 004DA293    call       dword ptr [ecx+88]
 004DA299    sub        al,0B
>004DA29B    je         004DA3AF
 004DA2A1    add        al,0FC
 004DA2A3    sub        al,3
>004DA2A5    jb         004DA3AF
 004DA2AB    mov        eax,dword ptr [ebx]
 004DA2AD    mov        edx,dword ptr [eax]
 004DA2AF    call       dword ptr [edx+1E4]
 004DA2B5    mov        eax,dword ptr [ebx]
 004DA2B7    mov        ecx,2
 004DA2BC    mov        edx,1
 004DA2C1    mov        esi,dword ptr [eax]
 004DA2C3    call       dword ptr [esi+140]
 004DA2C9    lea        ecx,[ebp-30]
 004DA2CC    mov        edx,4DA434; 'COLUMN_NAME'
 004DA2D1    mov        eax,dword ptr [ebp-1C]
 004DA2D4    mov        esi,dword ptr [eax]
 004DA2D6    call       dword ptr [esi+74]
 004DA2D9    mov        ecx,dword ptr [ebp-30]
 004DA2DC    mov        eax,dword ptr [ebx]
 004DA2DE    mov        edx,2
 004DA2E3    mov        esi,dword ptr [eax]
 004DA2E5    call       dword ptr [esi+158]
 004DA2EB    mov        edx,4DA45C; 'DATA_TYPE'
 004DA2F0    mov        eax,dword ptr [ebp-1C]
 004DA2F3    mov        ecx,dword ptr [eax]
 004DA2F5    call       dword ptr [ecx+88]
 004DA2FB    mov        ecx,eax
 004DA2FD    mov        eax,dword ptr [ebx]
 004DA2FF    mov        edx,3
 004DA304    mov        esi,dword ptr [eax]
 004DA306    call       dword ptr [esi+140]
 004DA30C    lea        ecx,[ebp-34]
 004DA30F    mov        edx,4DA470; 'TYPE_NAME'
 004DA314    mov        eax,dword ptr [ebp-1C]
 004DA317    mov        esi,dword ptr [eax]
 004DA319    call       dword ptr [esi+74]
 004DA31C    mov        ecx,dword ptr [ebp-34]
 004DA31F    mov        eax,dword ptr [ebx]
 004DA321    mov        edx,4
 004DA326    mov        esi,dword ptr [eax]
 004DA328    call       dword ptr [esi+158]
 004DA32E    mov        edx,4DA484; 'COLUMN_SIZE'
 004DA333    mov        eax,dword ptr [ebp-1C]
 004DA336    mov        ecx,dword ptr [eax]
 004DA338    call       dword ptr [ecx+88]
 004DA33E    mov        ecx,eax
 004DA340    mov        eax,dword ptr [ebx]
 004DA342    mov        edx,5
 004DA347    mov        esi,dword ptr [eax]
 004DA349    call       dword ptr [esi+140]
 004DA34F    mov        edx,4DA498; 'BUFFER_LENGTH'
 004DA354    mov        eax,dword ptr [ebp-1C]
 004DA357    mov        ecx,dword ptr [eax]
 004DA359    call       dword ptr [ecx+88]
 004DA35F    mov        ecx,eax
 004DA361    mov        eax,dword ptr [ebx]
 004DA363    mov        edx,6
 004DA368    mov        esi,dword ptr [eax]
 004DA36A    call       dword ptr [esi+140]
 004DA370    mov        edx,4DA4B0; 'DECIMAL_DIGITS'
 004DA375    mov        eax,dword ptr [ebp-1C]
 004DA378    mov        ecx,dword ptr [eax]
 004DA37A    call       dword ptr [ecx+88]
 004DA380    mov        ecx,eax
 004DA382    mov        eax,dword ptr [ebx]
 004DA384    mov        edx,7
 004DA389    mov        esi,dword ptr [eax]
 004DA38B    call       dword ptr [esi+140]
 004DA391    mov        eax,dword ptr [ebx]
 004DA393    mov        ecx,1
 004DA398    mov        edx,8
 004DA39D    mov        esi,dword ptr [eax]
 004DA39F    call       dword ptr [esi+140]
 004DA3A5    mov        eax,dword ptr [ebx]
 004DA3A7    mov        edx,dword ptr [eax]
 004DA3A9    call       dword ptr [edx+1D0]
 004DA3AF    mov        eax,dword ptr [ebp-1C]
 004DA3B2    mov        edx,dword ptr [eax]
 004DA3B4    call       dword ptr [edx+0C]
 004DA3B7    test       al,al
<004DA3B9    jne        004DA24E
 004DA3BF    mov        eax,dword ptr [ebp-1C]
 004DA3C2    mov        edx,dword ptr [eax]
 004DA3C4    call       dword ptr [edx+10]
 004DA3C7    xor        eax,eax
 004DA3C9    pop        edx
 004DA3CA    pop        ecx
 004DA3CB    pop        ecx
 004DA3CC    mov        dword ptr fs:[eax],edx
 004DA3CF    push       4DA3E4
 004DA3D4    mov        eax,dword ptr [ebp-10]
 004DA3D7    call       TObject.Free
 004DA3DC    ret
<004DA3DD    jmp        @HandleFinally
<004DA3E2    jmp        004DA3D4
 004DA3E4    xor        eax,eax
 004DA3E6    pop        edx
 004DA3E7    pop        ecx
 004DA3E8    pop        ecx
 004DA3E9    mov        dword ptr fs:[eax],edx
 004DA3EC    push       4DA421
 004DA3F1    lea        eax,[ebp-34]
 004DA3F4    mov        edx,6
 004DA3F9    call       @LStrArrayClr
 004DA3FE    lea        eax,[ebp-1C]
 004DA401    mov        edx,dword ptr ds:[4C6FF4]; IZResultSet
 004DA407    mov        ecx,3
 004DA40C    call       @FinalizeArray
 004DA411    lea        eax,[ebp-0C]
 004DA414    call       @LStrClr
 004DA419    ret
<004DA41A    jmp        @HandleFinally
<004DA41F    jmp        004DA3F1
 004DA421    pop        edi
 004DA422    pop        esi
 004DA423    pop        ebx
 004DA424    mov        esp,ebp
 004DA426    pop        ebp
 004DA427    ret        10
*}
//end;

//004DA554
//procedure sub_004DA554(?:?);
//begin
{*
 004DA554    push       ebp
 004DA555    mov        ebp,esp
 004DA557    push       ebx
 004DA558    mov        ebx,eax
 004DA55A    mov        ecx,dword ptr [ebp+8]
 004DA55D    mov        edx,dword ptr ds:[61DD5C]; gvar_0061DD5C:TZMetadataColumnDefs
 004DA563    mov        eax,ebx
 004DA565    call       004D8E7C
 004DA56A    pop        ebx
 004DA56B    pop        ebp
 004DA56C    ret        8
*}
//end;

//004DA570
//procedure sub_004DA570(?:TZASADatabaseMetadata; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004DA570    push       ebp
 004DA571    mov        ebp,esp
 004DA573    add        esp,0FFFFFFF4
 004DA576    push       ebx
 004DA577    push       esi
 004DA578    push       edi
 004DA579    xor        ebx,ebx
 004DA57B    mov        dword ptr [ebp-0C],ebx
 004DA57E    mov        dword ptr [ebp-8],ecx
 004DA581    mov        dword ptr [ebp-4],edx
 004DA584    mov        ebx,eax
 004DA586    mov        esi,dword ptr [ebp+8]
 004DA589    xor        eax,eax
 004DA58B    push       ebp
 004DA58C    push       4DA5F1
 004DA591    push       dword ptr fs:[eax]
 004DA594    mov        dword ptr fs:[eax],esp
 004DA597    mov        eax,dword ptr [ebp+0C]
 004DA59A    push       eax
 004DA59B    lea        eax,[ebp-0C]
 004DA59E    push       eax
 004DA59F    mov        ecx,dword ptr [ebp-8]
 004DA5A2    mov        edx,dword ptr [ebp-4]
 004DA5A5    mov        eax,ebx
 004DA5A7    call       004DB26C
 004DA5AC    mov        ecx,esi
 004DA5AE    mov        edx,dword ptr [ebp-0C]
 004DA5B1    mov        eax,ebx
 004DA5B3    call       004D90D8
 004DA5B8    cmp        dword ptr [esi],0
>004DA5BB    jne        004DA5DB
 004DA5BD    mov        eax,dword ptr [ebp+0C]
 004DA5C0    push       eax
 004DA5C1    push       esi
 004DA5C2    mov        ecx,dword ptr [ebp-8]
 004DA5C5    mov        edx,dword ptr [ebp-4]
 004DA5C8    mov        eax,ebx
 004DA5CA    mov        edi,dword ptr [eax]
 004DA5CC    call       dword ptr [edi+24]; TZASADatabaseMetadata.sub_0055A3D4
 004DA5CF    mov        ecx,dword ptr [esi]
 004DA5D1    mov        edx,dword ptr [ebp-0C]
 004DA5D4    mov        eax,ebx
 004DA5D6    call       004D9040
 004DA5DB    xor        eax,eax
 004DA5DD    pop        edx
 004DA5DE    pop        ecx
 004DA5DF    pop        ecx
 004DA5E0    mov        dword ptr fs:[eax],edx
 004DA5E3    push       4DA5F8
 004DA5E8    lea        eax,[ebp-0C]
 004DA5EB    call       @LStrClr
 004DA5F0    ret
<004DA5F1    jmp        @HandleFinally
<004DA5F6    jmp        004DA5E8
 004DA5F8    pop        edi
 004DA5F9    pop        esi
 004DA5FA    pop        ebx
 004DA5FB    mov        esp,ebp
 004DA5FD    pop        ebp
 004DA5FE    ret        8
*}
//end;

//004DA604
//procedure sub_004DA604(?:?);
//begin
{*
 004DA604    push       ebp
 004DA605    mov        ebp,esp
 004DA607    push       ebx
 004DA608    mov        ebx,eax
 004DA60A    mov        ecx,dword ptr [ebp+8]
 004DA60D    mov        edx,dword ptr ds:[61DD60]; gvar_0061DD60:TZMetadataColumnDefs
 004DA613    mov        eax,ebx
 004DA615    call       004D8E7C
 004DA61A    pop        ebx
 004DA61B    pop        ebp
 004DA61C    ret        8
*}
//end;

//004DA6B4
//procedure sub_004DA6B4(?:?);
//begin
{*
 004DA6B4    push       ebp
 004DA6B5    mov        ebp,esp
 004DA6B7    push       ebx
 004DA6B8    mov        ebx,eax
 004DA6BA    mov        ecx,dword ptr [ebp+8]
 004DA6BD    mov        edx,dword ptr ds:[61DD64]; gvar_0061DD64:TZMetadataColumnDefs
 004DA6C3    mov        eax,ebx
 004DA6C5    call       004D8E7C
 004DA6CA    pop        ebx
 004DA6CB    pop        ebp
 004DA6CC    ret        8
*}
//end;

//004DA764
//procedure sub_004DA764(?:?);
//begin
{*
 004DA764    push       ebp
 004DA765    mov        ebp,esp
 004DA767    push       ebx
 004DA768    mov        ebx,eax
 004DA76A    mov        ecx,dword ptr [ebp+8]
 004DA76D    mov        edx,dword ptr ds:[61DD68]; gvar_0061DD68:TZMetadataColumnDefs
 004DA773    mov        eax,ebx
 004DA775    call       004D8E7C
 004DA77A    pop        ebx
 004DA77B    pop        ebp
 004DA77C    ret        8
*}
//end;

//004DA82C
//procedure sub_004DA82C(?:?);
//begin
{*
 004DA82C    push       ebp
 004DA82D    mov        ebp,esp
 004DA82F    push       ebx
 004DA830    mov        ebx,eax
 004DA832    mov        ecx,dword ptr [ebp+8]
 004DA835    mov        edx,dword ptr ds:[61DD6C]; gvar_0061DD6C:TZMetadataColumnDefs
 004DA83B    mov        eax,ebx
 004DA83D    call       004D8E7C
 004DA842    pop        ebx
 004DA843    pop        ebp
 004DA844    ret        14
*}
//end;

//004DA8B4
//procedure sub_004DA8B4(?:?);
//begin
{*
 004DA8B4    push       ebp
 004DA8B5    mov        ebp,esp
 004DA8B7    push       ebx
 004DA8B8    push       esi
 004DA8B9    mov        esi,edx
 004DA8BB    mov        ebx,eax
 004DA8BD    mov        ecx,esi
 004DA8BF    mov        edx,dword ptr ds:[61DD70]; gvar_0061DD70:TZMetadataColumnDefs
 004DA8C5    mov        eax,ebx
 004DA8C7    call       004D8E7C
 004DA8CC    pop        esi
 004DA8CD    pop        ebx
 004DA8CE    pop        ebp
 004DA8CF    ret
*}
//end;

//004DA8D0
//procedure sub_004DA8D0(?:TZASADatabaseMetadata; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004DA8D0    push       ebp
 004DA8D1    mov        ebp,esp
 004DA8D3    add        esp,0FFFFFFF4
 004DA8D6    push       ebx
 004DA8D7    push       esi
 004DA8D8    push       edi
 004DA8D9    xor        ebx,ebx
 004DA8DB    mov        dword ptr [ebp-0C],ebx
 004DA8DE    mov        dword ptr [ebp-8],ecx
 004DA8E1    mov        dword ptr [ebp-4],edx
 004DA8E4    mov        ebx,eax
 004DA8E6    mov        esi,dword ptr [ebp+8]
 004DA8E9    xor        eax,eax
 004DA8EB    push       ebp
 004DA8EC    push       4DA961
 004DA8F1    push       dword ptr fs:[eax]
 004DA8F4    mov        dword ptr fs:[eax],esp
 004DA8F7    mov        eax,dword ptr [ebp+14]
 004DA8FA    push       eax
 004DA8FB    mov        al,byte ptr [ebp+10]
 004DA8FE    push       eax
 004DA8FF    mov        al,byte ptr [ebp+0C]
 004DA902    push       eax
 004DA903    lea        eax,[ebp-0C]
 004DA906    push       eax
 004DA907    mov        ecx,dword ptr [ebp-8]
 004DA90A    mov        edx,dword ptr [ebp-4]
 004DA90D    mov        eax,ebx
 004DA90F    call       004DB464
 004DA914    mov        ecx,esi
 004DA916    mov        edx,dword ptr [ebp-0C]
 004DA919    mov        eax,ebx
 004DA91B    call       004D90D8
 004DA920    cmp        dword ptr [esi],0
>004DA923    jne        004DA94B
 004DA925    mov        eax,dword ptr [ebp+14]
 004DA928    push       eax
 004DA929    mov        al,byte ptr [ebp+10]
 004DA92C    push       eax
 004DA92D    mov        al,byte ptr [ebp+0C]
 004DA930    push       eax
 004DA931    push       esi
 004DA932    mov        ecx,dword ptr [ebp-8]
 004DA935    mov        edx,dword ptr [ebp-4]
 004DA938    mov        eax,ebx
 004DA93A    mov        edi,dword ptr [eax]
 004DA93C    call       dword ptr [edi+34]; TZASADatabaseMetadata.sub_0055B86C
 004DA93F    mov        ecx,dword ptr [esi]
 004DA941    mov        edx,dword ptr [ebp-0C]
 004DA944    mov        eax,ebx
 004DA946    call       004D9040
 004DA94B    xor        eax,eax
 004DA94D    pop        edx
 004DA94E    pop        ecx
 004DA94F    pop        ecx
 004DA950    mov        dword ptr fs:[eax],edx
 004DA953    push       4DA968
 004DA958    lea        eax,[ebp-0C]
 004DA95B    call       @LStrClr
 004DA960    ret
<004DA961    jmp        @HandleFinally
<004DA966    jmp        004DA958
 004DA968    pop        edi
 004DA969    pop        esi
 004DA96A    pop        ebx
 004DA96B    mov        esp,ebp
 004DA96D    pop        ebp
 004DA96E    ret        10
*}
//end;

//004DA974
//procedure sub_004DA974(?:?);
//begin
{*
 004DA974    push       ebp
 004DA975    mov        ebp,esp
 004DA977    push       ebx
 004DA978    mov        ebx,eax
 004DA97A    mov        ecx,dword ptr [ebp+8]
 004DA97D    mov        edx,dword ptr ds:[61DD74]; gvar_0061DD74:TZMetadataColumnDefs
 004DA983    mov        eax,ebx
 004DA985    call       004D8E7C
 004DA98A    pop        ebx
 004DA98B    pop        ebp
 004DA98C    ret        10
*}
//end;

//004DAA24
//procedure sub_004DAA24(?:?);
//begin
{*
 004DAA24    push       ebp
 004DAA25    mov        ebp,esp
 004DAA27    push       ebx
 004DAA28    mov        ebx,eax
 004DAA2A    mov        ecx,dword ptr [ebp+8]
 004DAA2D    mov        edx,dword ptr ds:[61DD78]; gvar_0061DD78:TZMetadataColumnDefs
 004DAA33    mov        eax,ebx
 004DAA35    call       004D8E7C
 004DAA3A    pop        ebx
 004DAA3B    pop        ebp
 004DAA3C    ret        8
*}
//end;

//004DAA40
//function sub_004DAA40():?;
//begin
{*
 004DAA40    mov        al,1
 004DAA42    ret
*}
//end;

//004DAA44
//function sub_004DAA44():?;
//begin
{*
 004DAA44    mov        al,1
 004DAA46    ret
*}
//end;

//004DAA48
//function sub_004DAA48():?;
//begin
{*
 004DAA48    mov        al,1
 004DAA4A    ret
*}
//end;

//004DAAE8
//procedure sub_004DAAE8(?:?);
//begin
{*
 004DAAE8    push       ebp
 004DAAE9    mov        ebp,esp
 004DAAEB    push       ebx
 004DAAEC    mov        ebx,eax
 004DAAEE    mov        ecx,dword ptr [ebp+8]
 004DAAF1    mov        edx,dword ptr ds:[61DD7C]; gvar_0061DD7C:TZMetadataColumnDefs
 004DAAF7    mov        eax,ebx
 004DAAF9    call       004D8E7C
 004DAAFE    pop        ebx
 004DAAFF    pop        ebp
 004DAB00    ret        0C
*}
//end;

//004DAB04
//procedure sub_004DAB04(?:?);
//begin
{*
 004DAB04    push       ebp
 004DAB05    mov        ebp,esp
 004DAB07    push       ebx
 004DAB08    push       esi
 004DAB09    mov        esi,edx
 004DAB0B    mov        ebx,eax
 004DAB0D    mov        ecx,ebx
 004DAB0F    test       ecx,ecx
>004DAB11    je         004DAB16
 004DAB13    sub        ecx,0FFFFFFE0
 004DAB16    mov        dl,1
 004DAB18    mov        eax,[004D8CEC]; TZDefaultIdentifierConvertor
 004DAB1D    call       TZDefaultIdentifierConvertor.Create; TZDefaultIdentifierConvertor.Create
 004DAB22    mov        edx,eax
 004DAB24    test       edx,edx
>004DAB26    je         004DAB2B
 004DAB28    sub        edx,0FFFFFFEC
 004DAB2B    mov        eax,esi
 004DAB2D    call       @IntfCopy
 004DAB32    pop        esi
 004DAB33    pop        ebx
 004DAB34    pop        ebp
 004DAB35    ret
*}
//end;

//004DAB38
//procedure sub_004DAB38(?:TZInterbase6DatabaseMetadata; ?:?; ?:AnsiString);
//begin
{*
 004DAB38    push       ebp
 004DAB39    mov        ebp,esp
 004DAB3B    push       0
 004DAB3D    push       0
 004DAB3F    push       0
 004DAB41    push       0
 004DAB43    push       0
 004DAB45    push       0
 004DAB47    push       0
 004DAB49    push       ebx
 004DAB4A    push       esi
 004DAB4B    push       edi
 004DAB4C    mov        dword ptr [ebp-4],ecx
 004DAB4F    mov        esi,edx
 004DAB51    mov        ebx,eax
 004DAB53    xor        eax,eax
 004DAB55    push       ebp
 004DAB56    push       4DAC3A
 004DAB5B    push       dword ptr fs:[eax]
 004DAB5E    mov        dword ptr fs:[eax],esp
 004DAB61    lea        edx,[ebp-8]
 004DAB64    mov        eax,ebx
 004DAB66    mov        ecx,dword ptr [eax]
 004DAB68    call       dword ptr [ecx+0D0]; TZInterbase6DatabaseMetadata.sub_0052B7C4
 004DAB6E    cmp        dword ptr [ebx+1C],0; TZInterbase6DatabaseMetadata.?f1C:.3
>004DAB72    je         004DAC1F
 004DAB78    mov        al,[004DAC48]; 0x1
 004DAB7D    push       eax
 004DAB7E    mov        eax,dword ptr [ebp-4]
 004DAB81    push       eax
 004DAB82    lea        eax,[ebp-0C]
 004DAB85    mov        ecx,dword ptr [ebp-8]
 004DAB88    mov        edx,dword ptr [ebp-8]
 004DAB8B    call       @LStrCat3
 004DAB90    mov        ecx,dword ptr [ebp-0C]
 004DAB93    mov        edx,dword ptr [ebp-8]
 004DAB96    mov        eax,esi
 004DAB98    call       StringReplace
 004DAB9D    mov        eax,dword ptr [ebx+1C]; TZInterbase6DatabaseMetadata.?f1C:.3
 004DABA0    call       @DynArrayHigh
 004DABA5    mov        edi,eax
 004DABA7    test       edi,edi
>004DABA9    jl         004DAC1F
 004DABAB    inc        edi
 004DABAC    xor        esi,esi
 004DABAE    mov        al,[004DAC48]; 0x1
 004DABB3    push       eax
 004DABB4    lea        eax,[ebp-10]
 004DABB7    push       eax
 004DABB8    lea        eax,[ebp-18]
 004DABBB    mov        edx,dword ptr [ebx+1C]; TZInterbase6DatabaseMetadata.?f1C:.3
 004DABBE    test       edx,edx
>004DABC0    je         004DABC7
 004DABC2    cmp        esi,dword ptr [edx-4]
>004DABC5    jb         004DABCC
 004DABC7    call       @BoundErr
 004DABCC    mov        dl,byte ptr [edx+esi]
 004DABCF    call       @LStrFromChar
 004DABD4    mov        ecx,dword ptr [ebp-18]
 004DABD7    lea        eax,[ebp-14]
 004DABDA    mov        edx,dword ptr [ebp-8]
 004DABDD    call       @LStrCat3
 004DABE2    mov        eax,dword ptr [ebp-14]
 004DABE5    push       eax
 004DABE6    lea        eax,[ebp-1C]
 004DABE9    mov        edx,dword ptr [ebx+1C]; TZInterbase6DatabaseMetadata.?f1C:.3
 004DABEC    test       edx,edx
>004DABEE    je         004DABF5
 004DABF0    cmp        esi,dword ptr [edx-4]
>004DABF3    jb         004DABFA
 004DABF5    call       @BoundErr
 004DABFA    mov        dl,byte ptr [edx+esi]
 004DABFD    call       @LStrFromChar
 004DAC02    mov        edx,dword ptr [ebp-1C]
 004DAC05    mov        eax,dword ptr [ebp-4]
 004DAC08    mov        eax,dword ptr [eax]
 004DAC0A    pop        ecx
 004DAC0B    call       StringReplace
 004DAC10    mov        edx,dword ptr [ebp-10]
 004DAC13    mov        eax,dword ptr [ebp-4]
 004DAC16    call       @LStrAsg
 004DAC1B    inc        esi
 004DAC1C    dec        edi
<004DAC1D    jne        004DABAE
 004DAC1F    xor        eax,eax
 004DAC21    pop        edx
 004DAC22    pop        ecx
 004DAC23    pop        ecx
 004DAC24    mov        dword ptr fs:[eax],edx
 004DAC27    push       4DAC41
 004DAC2C    lea        eax,[ebp-1C]
 004DAC2F    mov        edx,6
 004DAC34    call       @LStrArrayClr
 004DAC39    ret
<004DAC3A    jmp        @HandleFinally
<004DAC3F    jmp        004DAC2C
 004DAC41    pop        edi
 004DAC42    pop        esi
 004DAC43    pop        ebx
 004DAC44    mov        esp,ebp
 004DAC46    pop        ebp
 004DAC47    ret
*}
//end;

//004DAC4C
procedure sub_004DAC4C;
begin
{*
 004DAC4C    push       ebp
 004DAC4D    mov        ebp,esp
 004DAC4F    push       ecx
 004DAC50    push       ebx
 004DAC51    push       esi
 004DAC52    push       edi
 004DAC53    mov        dword ptr [ebp-4],eax
 004DAC56    xor        eax,eax
 004DAC58    push       ebp
 004DAC59    push       4DACC0
 004DAC5E    push       dword ptr fs:[eax]
 004DAC61    mov        dword ptr fs:[eax],esp
 004DAC64    push       2
 004DAC66    mov        eax,dword ptr [ebp-4]
 004DAC69    add        eax,1C; TZASADatabaseMetadata.?f1C:.3
 004DAC6C    mov        ecx,1
 004DAC71    mov        edx,dword ptr ds:[4D7E8C]; _DynArr_135_3
 004DAC77    call       @DynArraySetLength
 004DAC7C    add        esp,4
 004DAC7F    xor        eax,eax
 004DAC81    mov        edx,dword ptr [ebp-4]
 004DAC84    mov        edx,dword ptr [edx+1C]; TZASADatabaseMetadata.?f1C:.3
 004DAC87    test       edx,edx
>004DAC89    je         004DAC90
 004DAC8B    cmp        eax,dword ptr [edx-4]
>004DAC8E    jb         004DAC95
 004DAC90    call       @BoundErr
 004DAC95    mov        byte ptr [edx+eax],5F
 004DAC99    mov        eax,1
 004DAC9E    mov        edx,dword ptr [ebp-4]
 004DACA1    mov        edx,dword ptr [edx+1C]; TZASADatabaseMetadata.?f1C:.3
 004DACA4    test       edx,edx
>004DACA6    je         004DACAD
 004DACA8    cmp        eax,dword ptr [edx-4]
>004DACAB    jb         004DACB2
 004DACAD    call       @BoundErr
 004DACB2    mov        byte ptr [edx+eax],25
 004DACB6    xor        eax,eax
 004DACB8    pop        edx
 004DACB9    pop        ecx
 004DACBA    pop        ecx
 004DACBB    mov        dword ptr fs:[eax],edx
>004DACBE    jmp        004DACDB
<004DACC0    jmp        @HandleAnyException
 004DACC5    mov        eax,dword ptr [ebp-4]
 004DACC8    add        eax,1C; TZASADatabaseMetadata.?f1C:.3
 004DACCB    mov        edx,dword ptr ds:[4D7E8C]; _DynArr_135_3
 004DACD1    call       @DynArrayClear
 004DACD6    call       @DoneExcept
 004DACDB    pop        edi
 004DACDC    pop        esi
 004DACDD    pop        ebx
 004DACDE    pop        ecx
 004DACDF    pop        ebp
 004DACE0    ret
*}
end;

//004DACE4
//procedure sub_004DACE4(?:TZInterbase6DatabaseMetadata; ?:?);
//begin
{*
 004DACE4    push       ebp
 004DACE5    mov        ebp,esp
 004DACE7    add        esp,0FFFFFFDC
 004DACEA    push       ebx
 004DACEB    push       esi
 004DACEC    push       edi
 004DACED    mov        esi,edx
 004DACEF    mov        dword ptr [ebp-4],eax
 004DACF2    push       esi
 004DACF3    mov        edi,esi
 004DACF5    mov        esi,4DAD6C
 004DACFA    mov        ecx,8
 004DACFF    rep movs   dword ptr [edi],dword ptr [esi]
 004DAD01    pop        esi
 004DAD02    mov        eax,dword ptr [ebp-4]
 004DAD05    mov        eax,dword ptr [eax+1C]; TZInterbase6DatabaseMetadata.?f1C:.3
 004DAD08    call       @DynArrayHigh
 004DAD0D    mov        ebx,eax
 004DAD0F    test       ebx,ebx
>004DAD11    jl         004DAD65
 004DAD13    inc        ebx
 004DAD14    xor        edi,edi
 004DAD16    push       esi
 004DAD17    push       edi
 004DAD18    lea        edi,[ebp-24]
 004DAD1B    mov        ecx,8
 004DAD20    rep movs   dword ptr [edi],dword ptr [esi]
 004DAD22    pop        edi
 004DAD23    pop        esi
 004DAD24    mov        eax,dword ptr [ebp-4]
 004DAD27    mov        eax,dword ptr [eax+1C]; TZInterbase6DatabaseMetadata.?f1C:.3
 004DAD2A    test       eax,eax
>004DAD2C    je         004DAD33
 004DAD2E    cmp        edi,dword ptr [eax-4]
>004DAD31    jb         004DAD38
 004DAD33    call       @BoundErr
 004DAD38    movzx      eax,byte ptr [eax+edi]
 004DAD3C    cmp        eax,0FF
>004DAD41    jbe        004DAD48
 004DAD43    call       @BoundErr
 004DAD48    and        eax,0FF
 004DAD4D    bts        dword ptr [ebp-24],eax
 004DAD51    push       esi
 004DAD52    push       edi
 004DAD53    mov        edi,esi
 004DAD55    lea        esi,[ebp-24]
 004DAD58    mov        ecx,8
 004DAD5D    rep movs   dword ptr [edi],dword ptr [esi]
 004DAD5F    pop        edi
 004DAD60    pop        esi
 004DAD61    inc        edi
 004DAD62    dec        ebx
<004DAD63    jne        004DAD16
 004DAD65    pop        edi
 004DAD66    pop        esi
 004DAD67    pop        ebx
 004DAD68    mov        esp,ebp
 004DAD6A    pop        ebp
 004DAD6B    ret
*}
//end;

//004DAE68
//procedure sub_004DAE68(?:TZMySQLDatabaseMetadata; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004DAE68    push       ebp
 004DAE69    mov        ebp,esp
 004DAE6B    add        esp,0FFFFFFD4
 004DAE6E    push       ebx
 004DAE6F    push       esi
 004DAE70    push       edi
 004DAE71    xor        ebx,ebx
 004DAE73    mov        dword ptr [ebp-0C],ebx
 004DAE76    mov        dword ptr [ebp-8],ecx
 004DAE79    mov        dword ptr [ebp-4],edx
 004DAE7C    mov        edi,dword ptr [ebp+0C]
 004DAE7F    xor        eax,eax
 004DAE81    push       ebp
 004DAE82    push       4DAF23
 004DAE87    push       dword ptr fs:[eax]
 004DAE8A    mov        dword ptr fs:[eax],esp
 004DAE8D    lea        eax,[ebp-0C]
 004DAE90    call       @LStrClr
 004DAE95    mov        eax,edi
 004DAE97    call       @DynArrayHigh
 004DAE9C    mov        ebx,eax
 004DAE9E    test       ebx,ebx
>004DAEA0    jl         004DAECF
 004DAEA2    inc        ebx
 004DAEA3    xor        esi,esi
 004DAEA5    push       dword ptr [ebp-0C]
 004DAEA8    push       4DAF3C; ':'
 004DAEAD    test       edi,edi
>004DAEAF    je         004DAEB6
 004DAEB1    cmp        esi,dword ptr [edi-4]
>004DAEB4    jb         004DAEBB
 004DAEB6    call       @BoundErr
 004DAEBB    push       dword ptr [edi+esi*4]
 004DAEBE    lea        eax,[ebp-0C]
 004DAEC1    mov        edx,3
 004DAEC6    call       @LStrCatN
 004DAECB    inc        esi
 004DAECC    dec        ebx
<004DAECD    jne        004DAEA5
 004DAECF    mov        eax,dword ptr [ebp+8]
 004DAED2    push       eax
 004DAED3    mov        eax,dword ptr [ebp-4]
 004DAED6    mov        dword ptr [ebp-2C],eax
 004DAED9    mov        byte ptr [ebp-28],0B
 004DAEDD    mov        eax,dword ptr [ebp-8]
 004DAEE0    mov        dword ptr [ebp-24],eax
 004DAEE3    mov        byte ptr [ebp-20],0B
 004DAEE7    mov        eax,dword ptr [ebp+10]
 004DAEEA    mov        dword ptr [ebp-1C],eax
 004DAEED    mov        byte ptr [ebp-18],0B
 004DAEF1    mov        eax,dword ptr [ebp-0C]
 004DAEF4    mov        dword ptr [ebp-14],eax
 004DAEF7    mov        byte ptr [ebp-10],0B
 004DAEFB    lea        edx,[ebp-2C]
 004DAEFE    mov        ecx,3
 004DAF03    mov        eax,4DAF48; 'get-tables:%s:%s:%s:%s'
 004DAF08    call       Format
 004DAF0D    xor        eax,eax
 004DAF0F    pop        edx
 004DAF10    pop        ecx
 004DAF11    pop        ecx
 004DAF12    mov        dword ptr fs:[eax],edx
 004DAF15    push       4DAF2A
 004DAF1A    lea        eax,[ebp-0C]
 004DAF1D    call       @LStrClr
 004DAF22    ret
<004DAF23    jmp        @HandleFinally
<004DAF28    jmp        004DAF1A
 004DAF2A    pop        edi
 004DAF2B    pop        esi
 004DAF2C    pop        ebx
 004DAF2D    mov        esp,ebp
 004DAF2F    pop        ebp
 004DAF30    ret        0C
*}
//end;

//004DAFEC
//procedure sub_004DAFEC(?:TZASADatabaseMetadata; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004DAFEC    push       ebp
 004DAFED    mov        ebp,esp
 004DAFEF    add        esp,0FFFFFFE0
 004DAFF2    push       ebx
 004DAFF3    push       esi
 004DAFF4    mov        esi,ecx
 004DAFF6    mov        ebx,edx
 004DAFF8    mov        eax,dword ptr [ebp+8]
 004DAFFB    push       eax
 004DAFFC    mov        dword ptr [ebp-20],ebx
 004DAFFF    mov        byte ptr [ebp-1C],0B
 004DB003    mov        dword ptr [ebp-18],esi
 004DB006    mov        byte ptr [ebp-14],0B
 004DB00A    mov        eax,dword ptr [ebp+10]
 004DB00D    mov        dword ptr [ebp-10],eax
 004DB010    mov        byte ptr [ebp-0C],0B
 004DB014    mov        eax,dword ptr [ebp+0C]
 004DB017    mov        dword ptr [ebp-8],eax
 004DB01A    mov        byte ptr [ebp-4],0B
 004DB01E    lea        edx,[ebp-20]
 004DB021    mov        ecx,3
 004DB026    mov        eax,4DB040; 'get-columns:%s:%s:%s:%s'
 004DB02B    call       Format
 004DB030    pop        esi
 004DB031    pop        ebx
 004DB032    mov        esp,ebp
 004DB034    pop        ebp
 004DB035    ret        0C
*}
//end;

//004DB26C
//procedure sub_004DB26C(?:TZASADatabaseMetadata; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004DB26C    push       ebp
 004DB26D    mov        ebp,esp
 004DB26F    add        esp,0FFFFFFE8
 004DB272    push       ebx
 004DB273    push       esi
 004DB274    mov        esi,ecx
 004DB276    mov        ebx,edx
 004DB278    mov        eax,dword ptr [ebp+8]
 004DB27B    push       eax
 004DB27C    mov        dword ptr [ebp-18],ebx
 004DB27F    mov        byte ptr [ebp-14],0B
 004DB283    mov        dword ptr [ebp-10],esi
 004DB286    mov        byte ptr [ebp-0C],0B
 004DB28A    mov        eax,dword ptr [ebp+0C]
 004DB28D    mov        dword ptr [ebp-8],eax
 004DB290    mov        byte ptr [ebp-4],0B
 004DB294    lea        edx,[ebp-18]
 004DB297    mov        ecx,2
 004DB29C    mov        eax,4DB2B8; 'get-primary-keys:%s:%s:%s'
 004DB2A1    call       Format
 004DB2A6    pop        esi
 004DB2A7    pop        ebx
 004DB2A8    mov        esp,ebp
 004DB2AA    pop        ebp
 004DB2AB    ret        8
*}
//end;

//004DB434
//procedure sub_004DB434(?:TZMySQLDatabaseMetadata; ?:AnsiString);
//begin
{*
 004DB434    push       ebp
 004DB435    mov        ebp,esp
 004DB437    push       ebx
 004DB438    mov        ebx,edx
 004DB43A    mov        eax,ebx
 004DB43C    mov        edx,4DB454; 'get-type-info'
 004DB441    call       @LStrAsg
 004DB446    pop        ebx
 004DB447    pop        ebp
 004DB448    ret
*}
//end;

//004DB464
//procedure sub_004DB464(?:TZASADatabaseMetadata; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004DB464    push       ebp
 004DB465    mov        ebp,esp
 004DB467    add        esp,0FFFFFFD0
 004DB46A    push       ebx
 004DB46B    push       esi
 004DB46C    xor        ebx,ebx
 004DB46E    mov        dword ptr [ebp-2C],ebx
 004DB471    mov        dword ptr [ebp-30],ebx
 004DB474    mov        esi,ecx
 004DB476    mov        ebx,edx
 004DB478    xor        eax,eax
 004DB47A    push       ebp
 004DB47B    push       4DB4FD
 004DB480    push       dword ptr fs:[eax]
 004DB483    mov        dword ptr fs:[eax],esp
 004DB486    mov        eax,dword ptr [ebp+8]
 004DB489    push       eax
 004DB48A    mov        dword ptr [ebp-28],ebx
 004DB48D    mov        byte ptr [ebp-24],0B
 004DB491    mov        dword ptr [ebp-20],esi
 004DB494    mov        byte ptr [ebp-1C],0B
 004DB498    mov        eax,dword ptr [ebp+14]
 004DB49B    mov        dword ptr [ebp-18],eax
 004DB49E    mov        byte ptr [ebp-14],0B
 004DB4A2    lea        ecx,[ebp-2C]
 004DB4A5    xor        edx,edx
 004DB4A7    mov        al,byte ptr [ebp+10]
 004DB4AA    call       BoolToStr
 004DB4AF    mov        eax,dword ptr [ebp-2C]
 004DB4B2    mov        dword ptr [ebp-10],eax
 004DB4B5    mov        byte ptr [ebp-0C],0B
 004DB4B9    lea        ecx,[ebp-30]
 004DB4BC    xor        edx,edx
 004DB4BE    mov        al,byte ptr [ebp+0C]
 004DB4C1    call       BoolToStr
 004DB4C6    mov        eax,dword ptr [ebp-30]
 004DB4C9    mov        dword ptr [ebp-8],eax
 004DB4CC    mov        byte ptr [ebp-4],0B
 004DB4D0    lea        edx,[ebp-28]
 004DB4D3    mov        ecx,4
 004DB4D8    mov        eax,4DB514; 'get-index-info:%s:%s:%s:%s:%s'
 004DB4DD    call       Format
 004DB4E2    xor        eax,eax
 004DB4E4    pop        edx
 004DB4E5    pop        ecx
 004DB4E6    pop        ecx
 004DB4E7    mov        dword ptr fs:[eax],edx
 004DB4EA    push       4DB504
 004DB4EF    lea        eax,[ebp-30]
 004DB4F2    mov        edx,2
 004DB4F7    call       @LStrArrayClr
 004DB4FC    ret
<004DB4FD    jmp        @HandleFinally
<004DB502    jmp        004DB4EF
 004DB504    pop        esi
 004DB505    pop        ebx
 004DB506    mov        esp,ebp
 004DB508    pop        ebp
 004DB509    ret        10
*}
//end;

//004DB6A8
//constructor TZVirtualResultSet.Create(?:TZVirtualResultSet; _Dv__:Boolean; ?:?);
//begin
{*
 004DB6A8    push       ebp
 004DB6A9    mov        ebp,esp
 004DB6AB    push       ebx
 004DB6AC    push       esi
 004DB6AD    test       dl,dl
>004DB6AF    je         004DB6B9
 004DB6B1    add        esp,0FFFFFFF0
 004DB6B4    call       @ClassCreate
 004DB6B9    mov        ebx,edx
 004DB6BB    mov        esi,eax
 004DB6BD    mov        eax,dword ptr [ebp+8]
 004DB6C0    push       eax
 004DB6C1    xor        edx,edx
 004DB6C3    mov        eax,esi
 004DB6C5    call       004D0884
 004DB6CA    mov        eax,esi
 004DB6CC    test       bl,bl
>004DB6CE    je         004DB6DF
 004DB6D0    call       @AfterConstruction
 004DB6D5    pop        dword ptr fs:[0]
 004DB6DC    add        esp,0C
 004DB6DF    mov        eax,esi
 004DB6E1    pop        esi
 004DB6E2    pop        ebx
 004DB6E3    pop        ebp
 004DB6E4    ret        4
*}
//end;

//004DB6E8
destructor TZVirtualResultSet.Destroy;
begin
{*
 004DB6E8    push       ebp
 004DB6E9    mov        ebp,esp
 004DB6EB    push       ebx
 004DB6EC    push       esi
 004DB6ED    call       @BeforeDestruction
 004DB6F2    mov        ebx,edx
 004DB6F4    mov        esi,eax
 004DB6F6    mov        edx,ebx
 004DB6F8    and        dl,0FC
 004DB6FB    mov        eax,esi
 004DB6FD    call       TZAbstractCachedResultSet.Destroy
 004DB702    test       bl,bl
>004DB704    jle        004DB70D
 004DB706    mov        eax,esi
 004DB708    call       @ClassDestroy
 004DB70D    pop        esi
 004DB70E    pop        ebx
 004DB70F    pop        ebp
 004DB710    ret
*}
end;

//004DB714
procedure sub_004DB714();
begin
{*
 004DB714    ret
*}
end;

//004DB718
procedure sub_004DB718();
begin
{*
 004DB718    ret
*}
end;

//004DB71C
//constructor TZDefaultIdentifierConvertor.Create(?:TZDefaultIdentifierConvertor; _Dv__:Boolean);
//begin
{*
 004DB71C    push       ebp
 004DB71D    mov        ebp,esp
 004DB71F    push       ecx
 004DB720    push       ebx
 004DB721    push       esi
 004DB722    test       dl,dl
>004DB724    je         004DB72E
 004DB726    add        esp,0FFFFFFF0
 004DB729    call       @ClassCreate
 004DB72E    mov        dword ptr [ebp-4],ecx
 004DB731    mov        ebx,edx
 004DB733    mov        esi,eax
 004DB735    mov        eax,dword ptr [ebp-4]
 004DB738    call       @IntfAddRef
 004DB73D    xor        eax,eax
 004DB73F    push       ebp
 004DB740    push       4DB775
 004DB745    push       dword ptr fs:[eax]
 004DB748    mov        dword ptr fs:[eax],esp
 004DB74B    xor        edx,edx
 004DB74D    mov        eax,esi
 004DB74F    call       TObject.Create
 004DB754    lea        eax,[esi+10]; TZDefaultIdentifierConvertor.?f10:IZDatabaseMetadata
 004DB757    mov        edx,dword ptr [ebp-4]
 004DB75A    call       @IntfCopy
 004DB75F    xor        eax,eax
 004DB761    pop        edx
 004DB762    pop        ecx
 004DB763    pop        ecx
 004DB764    mov        dword ptr fs:[eax],edx
 004DB767    push       4DB77C
 004DB76C    lea        eax,[ebp-4]
 004DB76F    call       @IntfClear
 004DB774    ret
<004DB775    jmp        @HandleFinally
<004DB77A    jmp        004DB76C
 004DB77C    mov        eax,esi
 004DB77E    test       bl,bl
>004DB780    je         004DB791
 004DB782    call       @AfterConstruction
 004DB787    pop        dword ptr fs:[0]
 004DB78E    add        esp,0C
 004DB791    mov        eax,esi
 004DB793    pop        esi
 004DB794    pop        ebx
 004DB795    pop        ecx
 004DB796    pop        ebp
 004DB797    ret
*}
//end;

Initialization
//004DCE98
{*
 004DCE98    push       ebp
 004DCE99    mov        ebp,esp
 004DCE9B    push       ebx
 004DCE9C    push       esi
 004DCE9D    xor        eax,eax
 004DCE9F    push       ebp
 004DCEA0    push       4DD561
 004DCEA5    push       dword ptr fs:[eax]
 004DCEA8    mov        dword ptr fs:[eax],esp
 004DCEAB    sub        dword ptr ds:[61DD80],1
>004DCEB2    jae        004DD553
 004DCEB8    push       8
 004DCEBA    mov        eax,61DD34; gvar_0061DD34:TZMetadataColumnDefs
 004DCEBF    mov        ecx,1
 004DCEC4    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCECA    call       @DynArraySetLength
 004DCECF    add        esp,4
 004DCED2    mov        ebx,1
 004DCED7    mov        esi,615718; gvar_00615718:array[8] of TZMetadataColumnDef
 004DCEDC    mov        eax,ebx
 004DCEDE    sub        eax,1
>004DCEE1    jno        004DCEE8
 004DCEE3    call       @IntOver
 004DCEE8    imul       eax,eax,9
>004DCEEB    jno        004DCEF2
 004DCEED    call       @IntOver
 004DCEF2    mov        edx,dword ptr ds:[61DD34]; gvar_0061DD34:TZMetadataColumnDefs
 004DCEF8    lea        eax,[edx+eax]
 004DCEFB    mov        edx,esi
 004DCEFD    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCF03    call       @CopyRecord
 004DCF08    inc        ebx
 004DCF09    add        esi,9
 004DCF0C    cmp        ebx,9
<004DCF0F    jne        004DCEDC
 004DCF11    push       0D
 004DCF13    mov        eax,61DD38; gvar_0061DD38:TZMetadataColumnDefs
 004DCF18    mov        ecx,1
 004DCF1D    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCF23    call       @DynArraySetLength
 004DCF28    add        esp,4
 004DCF2B    mov        ebx,1
 004DCF30    mov        esi,615760; gvar_00615760:array[13] of TZMetadataColumnDef
 004DCF35    mov        eax,ebx
 004DCF37    sub        eax,1
>004DCF3A    jno        004DCF41
 004DCF3C    call       @IntOver
 004DCF41    imul       eax,eax,9
>004DCF44    jno        004DCF4B
 004DCF46    call       @IntOver
 004DCF4B    mov        edx,dword ptr ds:[61DD38]; gvar_0061DD38:TZMetadataColumnDefs
 004DCF51    lea        eax,[edx+eax]
 004DCF54    mov        edx,esi
 004DCF56    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCF5C    call       @CopyRecord
 004DCF61    inc        ebx
 004DCF62    add        esi,9
 004DCF65    cmp        ebx,0E
<004DCF68    jne        004DCF35
 004DCF6A    push       5
 004DCF6C    mov        eax,61DD3C; gvar_0061DD3C:TZMetadataColumnDefs
 004DCF71    mov        ecx,1
 004DCF76    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCF7C    call       @DynArraySetLength
 004DCF81    add        esp,4
 004DCF84    mov        ebx,1
 004DCF89    mov        esi,6157D8; gvar_006157D8:array[5] of TZMetadataColumnDef
 004DCF8E    mov        eax,ebx
 004DCF90    sub        eax,1
>004DCF93    jno        004DCF9A
 004DCF95    call       @IntOver
 004DCF9A    imul       eax,eax,9
>004DCF9D    jno        004DCFA4
 004DCF9F    call       @IntOver
 004DCFA4    mov        edx,dword ptr ds:[61DD3C]; gvar_0061DD3C:TZMetadataColumnDefs
 004DCFAA    lea        eax,[edx+eax]
 004DCFAD    mov        edx,esi
 004DCFAF    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCFB5    call       @CopyRecord
 004DCFBA    inc        ebx
 004DCFBB    add        esi,9
 004DCFBE    cmp        ebx,6
<004DCFC1    jne        004DCF8E
 004DCFC3    push       1
 004DCFC5    mov        eax,61DD40; gvar_0061DD40:TZMetadataColumnDefs
 004DCFCA    mov        ecx,1
 004DCFCF    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCFD5    call       @DynArraySetLength
 004DCFDA    add        esp,4
 004DCFDD    mov        ebx,1
 004DCFE2    mov        esi,615808; gvar_00615808:array[1] of TZMetadataColumnDef
 004DCFE7    mov        eax,ebx
 004DCFE9    sub        eax,1
>004DCFEC    jno        004DCFF3
 004DCFEE    call       @IntOver
 004DCFF3    imul       eax,eax,9
>004DCFF6    jno        004DCFFD
 004DCFF8    call       @IntOver
 004DCFFD    mov        edx,dword ptr ds:[61DD40]; gvar_0061DD40:TZMetadataColumnDefs
 004DD003    lea        eax,[edx+eax]
 004DD006    mov        edx,esi
 004DD008    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD00E    call       @CopyRecord
 004DD013    inc        ebx
 004DD014    add        esi,9
 004DD017    cmp        ebx,2
<004DD01A    jne        004DCFE7
 004DD01C    push       1
 004DD01E    mov        eax,61DD44; gvar_0061DD44:TZMetadataColumnDefs
 004DD023    mov        ecx,1
 004DD028    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD02E    call       @DynArraySetLength
 004DD033    add        esp,4
 004DD036    mov        ebx,1
 004DD03B    mov        esi,615814; gvar_00615814:array[1] of TZMetadataColumnDef
 004DD040    mov        eax,ebx
 004DD042    sub        eax,1
>004DD045    jno        004DD04C
 004DD047    call       @IntOver
 004DD04C    imul       eax,eax,9
>004DD04F    jno        004DD056
 004DD051    call       @IntOver
 004DD056    mov        edx,dword ptr ds:[61DD44]; gvar_0061DD44:TZMetadataColumnDefs
 004DD05C    lea        eax,[edx+eax]
 004DD05F    mov        edx,esi
 004DD061    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD067    call       @CopyRecord
 004DD06C    inc        ebx
 004DD06D    add        esi,9
 004DD070    cmp        ebx,2
<004DD073    jne        004DD040
 004DD075    push       1
 004DD077    mov        eax,61DD48; gvar_0061DD48:TZMetadataColumnDefs
 004DD07C    mov        ecx,1
 004DD081    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD087    call       @DynArraySetLength
 004DD08C    add        esp,4
 004DD08F    mov        ebx,1
 004DD094    mov        esi,615820; gvar_00615820:array[1] of TZMetadataColumnDef
 004DD099    mov        eax,ebx
 004DD09B    sub        eax,1
>004DD09E    jno        004DD0A5
 004DD0A0    call       @IntOver
 004DD0A5    imul       eax,eax,9
>004DD0A8    jno        004DD0AF
 004DD0AA    call       @IntOver
 004DD0AF    mov        edx,dword ptr ds:[61DD48]; gvar_0061DD48:TZMetadataColumnDefs
 004DD0B5    lea        eax,[edx+eax]
 004DD0B8    mov        edx,esi
 004DD0BA    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD0C0    call       @CopyRecord
 004DD0C5    inc        ebx
 004DD0C6    add        esi,9
 004DD0C9    cmp        ebx,2
<004DD0CC    jne        004DD099
 004DD0CE    push       18
 004DD0D0    mov        eax,61DD4C; gvar_0061DD4C:TZMetadataColumnDefs
 004DD0D5    mov        ecx,1
 004DD0DA    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD0E0    call       @DynArraySetLength
 004DD0E5    add        esp,4
 004DD0E8    mov        ebx,1
 004DD0ED    mov        esi,61582C; gvar_0061582C:array[24] of TZMetadataColumnDef
 004DD0F2    mov        eax,ebx
 004DD0F4    sub        eax,1
>004DD0F7    jno        004DD0FE
 004DD0F9    call       @IntOver
 004DD0FE    imul       eax,eax,9
>004DD101    jno        004DD108
 004DD103    call       @IntOver
 004DD108    mov        edx,dword ptr ds:[61DD4C]; gvar_0061DD4C:TZMetadataColumnDefs
 004DD10E    lea        eax,[edx+eax]
 004DD111    mov        edx,esi
 004DD113    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD119    call       @CopyRecord
 004DD11E    inc        ebx
 004DD11F    add        esi,9
 004DD122    cmp        ebx,19
<004DD125    jne        004DD0F2
 004DD127    push       8
 004DD129    mov        eax,61DD50; gvar_0061DD50:TZMetadataColumnDefs
 004DD12E    mov        ecx,1
 004DD133    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD139    call       @DynArraySetLength
 004DD13E    add        esp,4
 004DD141    mov        ebx,1
 004DD146    mov        esi,615904; gvar_00615904:array[8] of TZMetadataColumnDef
 004DD14B    mov        eax,ebx
 004DD14D    sub        eax,1
>004DD150    jno        004DD157
 004DD152    call       @IntOver
 004DD157    imul       eax,eax,9
>004DD15A    jno        004DD161
 004DD15C    call       @IntOver
 004DD161    mov        edx,dword ptr ds:[61DD50]; gvar_0061DD50:TZMetadataColumnDefs
 004DD167    lea        eax,[edx+eax]
 004DD16A    mov        edx,esi
 004DD16C    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD172    call       @CopyRecord
 004DD177    inc        ebx
 004DD178    add        esi,9
 004DD17B    cmp        ebx,9
<004DD17E    jne        004DD14B
 004DD180    push       7
 004DD182    mov        eax,61DD54; gvar_0061DD54:TZMetadataColumnDefs
 004DD187    mov        ecx,1
 004DD18C    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD192    call       @DynArraySetLength
 004DD197    add        esp,4
 004DD19A    mov        ebx,1
 004DD19F    mov        esi,61594C; gvar_0061594C:array[7] of TZMetadataColumnDef
 004DD1A4    mov        eax,ebx
 004DD1A6    sub        eax,1
>004DD1A9    jno        004DD1B0
 004DD1AB    call       @IntOver
 004DD1B0    imul       eax,eax,9
>004DD1B3    jno        004DD1BA
 004DD1B5    call       @IntOver
 004DD1BA    mov        edx,dword ptr ds:[61DD54]; gvar_0061DD54:TZMetadataColumnDefs
 004DD1C0    lea        eax,[edx+eax]
 004DD1C3    mov        edx,esi
 004DD1C5    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD1CB    call       @CopyRecord
 004DD1D0    inc        ebx
 004DD1D1    add        esi,9
 004DD1D4    cmp        ebx,8
<004DD1D7    jne        004DD1A4
 004DD1D9    push       8
 004DD1DB    mov        eax,61DD58; gvar_0061DD58:TZMetadataColumnDefs
 004DD1E0    mov        ecx,1
 004DD1E5    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD1EB    call       @DynArraySetLength
 004DD1F0    add        esp,4
 004DD1F3    mov        ebx,1
 004DD1F8    mov        esi,61598C; gvar_0061598C:array[8] of TZMetadataColumnDef
 004DD1FD    mov        eax,ebx
 004DD1FF    sub        eax,1
>004DD202    jno        004DD209
 004DD204    call       @IntOver
 004DD209    imul       eax,eax,9
>004DD20C    jno        004DD213
 004DD20E    call       @IntOver
 004DD213    mov        edx,dword ptr ds:[61DD58]; gvar_0061DD58:TZMetadataColumnDefs
 004DD219    lea        eax,[edx+eax]
 004DD21C    mov        edx,esi
 004DD21E    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD224    call       @CopyRecord
 004DD229    inc        ebx
 004DD22A    add        esi,9
 004DD22D    cmp        ebx,9
<004DD230    jne        004DD1FD
 004DD232    push       8
 004DD234    mov        eax,61DD5C; gvar_0061DD5C:TZMetadataColumnDefs
 004DD239    mov        ecx,1
 004DD23E    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD244    call       @DynArraySetLength
 004DD249    add        esp,4
 004DD24C    mov        ebx,1
 004DD251    mov        esi,6159D4; gvar_006159D4:array[8] of TZMetadataColumnDef
 004DD256    mov        eax,ebx
 004DD258    sub        eax,1
>004DD25B    jno        004DD262
 004DD25D    call       @IntOver
 004DD262    imul       eax,eax,9
>004DD265    jno        004DD26C
 004DD267    call       @IntOver
 004DD26C    mov        edx,dword ptr ds:[61DD5C]; gvar_0061DD5C:TZMetadataColumnDefs
 004DD272    lea        eax,[edx+eax]
 004DD275    mov        edx,esi
 004DD277    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD27D    call       @CopyRecord
 004DD282    inc        ebx
 004DD283    add        esi,9
 004DD286    cmp        ebx,9
<004DD289    jne        004DD256
 004DD28B    push       6
 004DD28D    mov        eax,61DD60; gvar_0061DD60:TZMetadataColumnDefs
 004DD292    mov        ecx,1
 004DD297    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD29D    call       @DynArraySetLength
 004DD2A2    add        esp,4
 004DD2A5    mov        ebx,1
 004DD2AA    mov        esi,615A1C; gvar_00615A1C:array[6] of TZMetadataColumnDef
 004DD2AF    mov        eax,ebx
 004DD2B1    sub        eax,1
>004DD2B4    jno        004DD2BB
 004DD2B6    call       @IntOver
 004DD2BB    imul       eax,eax,9
>004DD2BE    jno        004DD2C5
 004DD2C0    call       @IntOver
 004DD2C5    mov        edx,dword ptr ds:[61DD60]; gvar_0061DD60:TZMetadataColumnDefs
 004DD2CB    lea        eax,[edx+eax]
 004DD2CE    mov        edx,esi
 004DD2D0    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD2D6    call       @CopyRecord
 004DD2DB    inc        ebx
 004DD2DC    add        esi,9
 004DD2DF    cmp        ebx,7
<004DD2E2    jne        004DD2AF
 004DD2E4    push       0E
 004DD2E6    mov        eax,61DD64; gvar_0061DD64:TZMetadataColumnDefs
 004DD2EB    mov        ecx,1
 004DD2F0    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD2F6    call       @DynArraySetLength
 004DD2FB    add        esp,4
 004DD2FE    mov        ebx,1
 004DD303    mov        esi,615A54; gvar_00615A54:array[14] of TZMetadataColumnDef
 004DD308    mov        eax,ebx
 004DD30A    sub        eax,1
>004DD30D    jno        004DD314
 004DD30F    call       @IntOver
 004DD314    imul       eax,eax,9
>004DD317    jno        004DD31E
 004DD319    call       @IntOver
 004DD31E    mov        edx,dword ptr ds:[61DD64]; gvar_0061DD64:TZMetadataColumnDefs
 004DD324    lea        eax,[edx+eax]
 004DD327    mov        edx,esi
 004DD329    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD32F    call       @CopyRecord
 004DD334    inc        ebx
 004DD335    add        esi,9
 004DD338    cmp        ebx,0F
<004DD33B    jne        004DD308
 004DD33D    push       0E
 004DD33F    mov        eax,61DD68; gvar_0061DD68:TZMetadataColumnDefs
 004DD344    mov        ecx,1
 004DD349    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD34F    call       @DynArraySetLength
 004DD354    add        esp,4
 004DD357    mov        ebx,1
 004DD35C    mov        esi,615AD4; gvar_00615AD4:array[14] of TZMetadataColumnDef
 004DD361    mov        eax,ebx
 004DD363    sub        eax,1
>004DD366    jno        004DD36D
 004DD368    call       @IntOver
 004DD36D    imul       eax,eax,9
>004DD370    jno        004DD377
 004DD372    call       @IntOver
 004DD377    mov        edx,dword ptr ds:[61DD68]; gvar_0061DD68:TZMetadataColumnDefs
 004DD37D    lea        eax,[edx+eax]
 004DD380    mov        edx,esi
 004DD382    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD388    call       @CopyRecord
 004DD38D    inc        ebx
 004DD38E    add        esi,9
 004DD391    cmp        ebx,0F
<004DD394    jne        004DD361
 004DD396    push       0E
 004DD398    mov        eax,61DD6C; gvar_0061DD6C:TZMetadataColumnDefs
 004DD39D    mov        ecx,1
 004DD3A2    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD3A8    call       @DynArraySetLength
 004DD3AD    add        esp,4
 004DD3B0    mov        ebx,1
 004DD3B5    mov        esi,615B54; gvar_00615B54:array[14] of TZMetadataColumnDef
 004DD3BA    mov        eax,ebx
 004DD3BC    sub        eax,1
>004DD3BF    jno        004DD3C6
 004DD3C1    call       @IntOver
 004DD3C6    imul       eax,eax,9
>004DD3C9    jno        004DD3D0
 004DD3CB    call       @IntOver
 004DD3D0    mov        edx,dword ptr ds:[61DD6C]; gvar_0061DD6C:TZMetadataColumnDefs
 004DD3D6    lea        eax,[edx+eax]
 004DD3D9    mov        edx,esi
 004DD3DB    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD3E1    call       @CopyRecord
 004DD3E6    inc        ebx
 004DD3E7    add        esi,9
 004DD3EA    cmp        ebx,0F
<004DD3ED    jne        004DD3BA
 004DD3EF    push       12
 004DD3F1    mov        eax,61DD70; gvar_0061DD70:TZMetadataColumnDefs
 004DD3F6    mov        ecx,1
 004DD3FB    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD401    call       @DynArraySetLength
 004DD406    add        esp,4
 004DD409    mov        ebx,1
 004DD40E    mov        esi,615BD4; gvar_00615BD4:array[18] of TZMetadataColumnDef
 004DD413    mov        eax,ebx
 004DD415    sub        eax,1
>004DD418    jno        004DD41F
 004DD41A    call       @IntOver
 004DD41F    imul       eax,eax,9
>004DD422    jno        004DD429
 004DD424    call       @IntOver
 004DD429    mov        edx,dword ptr ds:[61DD70]; gvar_0061DD70:TZMetadataColumnDefs
 004DD42F    lea        eax,[edx+eax]
 004DD432    mov        edx,esi
 004DD434    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD43A    call       @CopyRecord
 004DD43F    inc        ebx
 004DD440    add        esi,9
 004DD443    cmp        ebx,13
<004DD446    jne        004DD413
 004DD448    push       0D
 004DD44A    mov        eax,61DD74; gvar_0061DD74:TZMetadataColumnDefs
 004DD44F    mov        ecx,1
 004DD454    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD45A    call       @DynArraySetLength
 004DD45F    add        esp,4
 004DD462    mov        ebx,1
 004DD467    mov        esi,615C78; gvar_00615C78:array[13] of TZMetadataColumnDef
 004DD46C    mov        eax,ebx
 004DD46E    sub        eax,1
>004DD471    jno        004DD478
 004DD473    call       @IntOver
 004DD478    imul       eax,eax,9
>004DD47B    jno        004DD482
 004DD47D    call       @IntOver
 004DD482    mov        edx,dword ptr ds:[61DD74]; gvar_0061DD74:TZMetadataColumnDefs
 004DD488    lea        eax,[edx+eax]
 004DD48B    mov        edx,esi
 004DD48D    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD493    call       @CopyRecord
 004DD498    inc        ebx
 004DD499    add        esi,9
 004DD49C    cmp        ebx,0E
<004DD49F    jne        004DD46C
 004DD4A1    push       3
 004DD4A3    mov        eax,61DD78; gvar_0061DD78:TZMetadataColumnDefs
 004DD4A8    mov        ecx,1
 004DD4AD    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD4B3    call       @DynArraySetLength
 004DD4B8    add        esp,4
 004DD4BB    mov        ebx,1
 004DD4C0    mov        esi,615CF0; gvar_00615CF0:array[3] of TZMetadataColumnDef
 004DD4C5    mov        eax,ebx
 004DD4C7    sub        eax,1
>004DD4CA    jno        004DD4D1
 004DD4CC    call       @IntOver
 004DD4D1    imul       eax,eax,9
>004DD4D4    jno        004DD4DB
 004DD4D6    call       @IntOver
 004DD4DB    mov        edx,dword ptr ds:[61DD78]; gvar_0061DD78:TZMetadataColumnDefs
 004DD4E1    lea        eax,[edx+eax]
 004DD4E4    mov        edx,esi
 004DD4E6    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD4EC    call       @CopyRecord
 004DD4F1    inc        ebx
 004DD4F2    add        esi,9
 004DD4F5    cmp        ebx,4
<004DD4F8    jne        004DD4C5
 004DD4FA    push       6
 004DD4FC    mov        eax,61DD7C; gvar_0061DD7C:TZMetadataColumnDefs
 004DD501    mov        ecx,1
 004DD506    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DD50C    call       @DynArraySetLength
 004DD511    add        esp,4
 004DD514    mov        ebx,1
 004DD519    mov        esi,615D0C; gvar_00615D0C:array[6] of TZMetadataColumnDef
 004DD51E    mov        eax,ebx
 004DD520    sub        eax,1
>004DD523    jno        004DD52A
 004DD525    call       @IntOver
 004DD52A    imul       eax,eax,9
>004DD52D    jno        004DD534
 004DD52F    call       @IntOver
 004DD534    mov        edx,dword ptr ds:[61DD7C]; gvar_0061DD7C:TZMetadataColumnDefs
 004DD53A    lea        eax,[edx+eax]
 004DD53D    mov        edx,esi
 004DD53F    mov        ecx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DD545    call       @CopyRecord
 004DD54A    inc        ebx
 004DD54B    add        esi,9
 004DD54E    cmp        ebx,7
<004DD551    jne        004DD51E
 004DD553    xor        eax,eax
 004DD555    pop        edx
 004DD556    pop        ecx
 004DD557    pop        ecx
 004DD558    mov        dword ptr fs:[eax],edx
 004DD55B    push       4DD568
 004DD560    ret
<004DD561    jmp        @HandleFinally
<004DD566    jmp        004DD560
 004DD568    pop        esi
 004DD569    pop        ebx
 004DD56A    pop        ebp
 004DD56B    ret
*}
Finalization
//004DCBA4
{*
 004DCBA4    push       ebp
 004DCBA5    mov        ebp,esp
 004DCBA7    xor        eax,eax
 004DCBA9    push       ebp
 004DCBAA    push       4DCE8E
 004DCBAF    push       dword ptr fs:[eax]
 004DCBB2    mov        dword ptr fs:[eax],esp
 004DCBB5    inc        dword ptr ds:[61DD80]
>004DCBBB    jne        004DCE80
 004DCBC1    mov        eax,615D0C; gvar_00615D0C:array[6] of TZMetadataColumnDef
 004DCBC6    mov        ecx,6
 004DCBCB    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCBD1    call       @FinalizeArray
 004DCBD6    mov        eax,615CF0; gvar_00615CF0:array[3] of TZMetadataColumnDef
 004DCBDB    mov        ecx,3
 004DCBE0    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCBE6    call       @FinalizeArray
 004DCBEB    mov        eax,615C78; gvar_00615C78:array[13] of TZMetadataColumnDef
 004DCBF0    mov        ecx,0D
 004DCBF5    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCBFB    call       @FinalizeArray
 004DCC00    mov        eax,615BD4; gvar_00615BD4:array[18] of TZMetadataColumnDef
 004DCC05    mov        ecx,12
 004DCC0A    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCC10    call       @FinalizeArray
 004DCC15    mov        eax,615B54; gvar_00615B54:array[14] of TZMetadataColumnDef
 004DCC1A    mov        ecx,0E
 004DCC1F    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCC25    call       @FinalizeArray
 004DCC2A    mov        eax,615AD4; gvar_00615AD4:array[14] of TZMetadataColumnDef
 004DCC2F    mov        ecx,0E
 004DCC34    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCC3A    call       @FinalizeArray
 004DCC3F    mov        eax,615A54; gvar_00615A54:array[14] of TZMetadataColumnDef
 004DCC44    mov        ecx,0E
 004DCC49    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCC4F    call       @FinalizeArray
 004DCC54    mov        eax,615A1C; gvar_00615A1C:array[6] of TZMetadataColumnDef
 004DCC59    mov        ecx,6
 004DCC5E    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCC64    call       @FinalizeArray
 004DCC69    mov        eax,6159D4; gvar_006159D4:array[8] of TZMetadataColumnDef
 004DCC6E    mov        ecx,8
 004DCC73    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCC79    call       @FinalizeArray
 004DCC7E    mov        eax,61598C; gvar_0061598C:array[8] of TZMetadataColumnDef
 004DCC83    mov        ecx,8
 004DCC88    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCC8E    call       @FinalizeArray
 004DCC93    mov        eax,61594C; gvar_0061594C:array[7] of TZMetadataColumnDef
 004DCC98    mov        ecx,7
 004DCC9D    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCCA3    call       @FinalizeArray
 004DCCA8    mov        eax,615904; gvar_00615904:array[8] of TZMetadataColumnDef
 004DCCAD    mov        ecx,8
 004DCCB2    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCCB8    call       @FinalizeArray
 004DCCBD    mov        eax,61582C; gvar_0061582C:array[24] of TZMetadataColumnDef
 004DCCC2    mov        ecx,18
 004DCCC7    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCCCD    call       @FinalizeArray
 004DCCD2    mov        eax,615820; gvar_00615820:array[1] of TZMetadataColumnDef
 004DCCD7    mov        ecx,1
 004DCCDC    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCCE2    call       @FinalizeArray
 004DCCE7    mov        eax,615814; gvar_00615814:array[1] of TZMetadataColumnDef
 004DCCEC    mov        ecx,1
 004DCCF1    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCCF7    call       @FinalizeArray
 004DCCFC    mov        eax,615808; gvar_00615808:array[1] of TZMetadataColumnDef
 004DCD01    mov        ecx,1
 004DCD06    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCD0C    call       @FinalizeArray
 004DCD11    mov        eax,6157D8; gvar_006157D8:array[5] of TZMetadataColumnDef
 004DCD16    mov        ecx,5
 004DCD1B    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCD21    call       @FinalizeArray
 004DCD26    mov        eax,615760; gvar_00615760:array[13] of TZMetadataColumnDef
 004DCD2B    mov        ecx,0D
 004DCD30    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCD36    call       @FinalizeArray
 004DCD3B    mov        eax,615718; gvar_00615718:array[8] of TZMetadataColumnDef
 004DCD40    mov        ecx,8
 004DCD45    mov        edx,dword ptr ds:[4D71A4]; TZMetadataColumnDef
 004DCD4B    call       @FinalizeArray
 004DCD50    mov        eax,61DD7C; gvar_0061DD7C:TZMetadataColumnDefs
 004DCD55    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCD5B    call       @DynArrayClear
 004DCD60    mov        eax,61DD78; gvar_0061DD78:TZMetadataColumnDefs
 004DCD65    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCD6B    call       @DynArrayClear
 004DCD70    mov        eax,61DD74; gvar_0061DD74:TZMetadataColumnDefs
 004DCD75    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCD7B    call       @DynArrayClear
 004DCD80    mov        eax,61DD70; gvar_0061DD70:TZMetadataColumnDefs
 004DCD85    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCD8B    call       @DynArrayClear
 004DCD90    mov        eax,61DD6C; gvar_0061DD6C:TZMetadataColumnDefs
 004DCD95    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCD9B    call       @DynArrayClear
 004DCDA0    mov        eax,61DD68; gvar_0061DD68:TZMetadataColumnDefs
 004DCDA5    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCDAB    call       @DynArrayClear
 004DCDB0    mov        eax,61DD64; gvar_0061DD64:TZMetadataColumnDefs
 004DCDB5    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCDBB    call       @DynArrayClear
 004DCDC0    mov        eax,61DD60; gvar_0061DD60:TZMetadataColumnDefs
 004DCDC5    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCDCB    call       @DynArrayClear
 004DCDD0    mov        eax,61DD5C; gvar_0061DD5C:TZMetadataColumnDefs
 004DCDD5    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCDDB    call       @DynArrayClear
 004DCDE0    mov        eax,61DD58; gvar_0061DD58:TZMetadataColumnDefs
 004DCDE5    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCDEB    call       @DynArrayClear
 004DCDF0    mov        eax,61DD54; gvar_0061DD54:TZMetadataColumnDefs
 004DCDF5    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCDFB    call       @DynArrayClear
 004DCE00    mov        eax,61DD50; gvar_0061DD50:TZMetadataColumnDefs
 004DCE05    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCE0B    call       @DynArrayClear
 004DCE10    mov        eax,61DD4C; gvar_0061DD4C:TZMetadataColumnDefs
 004DCE15    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCE1B    call       @DynArrayClear
 004DCE20    mov        eax,61DD48; gvar_0061DD48:TZMetadataColumnDefs
 004DCE25    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCE2B    call       @DynArrayClear
 004DCE30    mov        eax,61DD44; gvar_0061DD44:TZMetadataColumnDefs
 004DCE35    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCE3B    call       @DynArrayClear
 004DCE40    mov        eax,61DD40; gvar_0061DD40:TZMetadataColumnDefs
 004DCE45    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCE4B    call       @DynArrayClear
 004DCE50    mov        eax,61DD3C; gvar_0061DD3C:TZMetadataColumnDefs
 004DCE55    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCE5B    call       @DynArrayClear
 004DCE60    mov        eax,61DD38; gvar_0061DD38:TZMetadataColumnDefs
 004DCE65    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCE6B    call       @DynArrayClear
 004DCE70    mov        eax,61DD34; gvar_0061DD34:TZMetadataColumnDefs
 004DCE75    mov        edx,dword ptr ds:[4D71D0]; TZMetadataColumnDefs
 004DCE7B    call       @DynArrayClear
 004DCE80    xor        eax,eax
 004DCE82    pop        edx
 004DCE83    pop        ecx
 004DCE84    pop        ecx
 004DCE85    mov        dword ptr fs:[eax],edx
 004DCE88    push       4DCE95
 004DCE8D    ret
<004DCE8E    jmp        @HandleFinally
<004DCE93    jmp        004DCE8D
 004DCE95    pop        ebp
 004DCE96    ret
*}
end.