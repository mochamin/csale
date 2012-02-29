{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit231;

interface

uses
  Classes, Windows, Graphics, SysUtils, ZVariant, ZTokenizer, Contnrs;

type
  TZParseError = class(Exception)
  end;
  TZExpressionToken = class(TObject)
  public
    f5:TZVariant;//f5
  end;
  TZExpressionParser = class(TObject)
  public
    f4:IZTokenizer;//f4
    f8:String;//f8
    fC:TObjectList;//fC
    f10:dword;//f10
    f14:TObjectList;//f14
    f18:TStringList;//f18
    destructor Destroy; virtual;
    //constructor Create(?:TZExpressionParser; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//00562C6C
//constructor TZExpressionParser.Create(?:TZExpressionParser; _Dv__:Boolean);
//begin
{*
 00562C6C    push       ebp
 00562C6D    mov        ebp,esp
 00562C6F    push       ecx
 00562C70    push       ebx
 00562C71    push       esi
 00562C72    test       dl,dl
>00562C74    je         00562C7E
 00562C76    add        esp,0FFFFFFF0
 00562C79    call       @ClassCreate
 00562C7E    mov        dword ptr [ebp-4],ecx
 00562C81    mov        ebx,edx
 00562C83    mov        esi,eax
 00562C85    mov        eax,dword ptr [ebp-4]
 00562C88    call       @IntfAddRef
 00562C8D    xor        eax,eax
 00562C8F    push       ebp
 00562C90    push       562CF6
 00562C95    push       dword ptr fs:[eax]
 00562C98    mov        dword ptr fs:[eax],esp
 00562C9B    lea        eax,[esi+4]; TZExpressionParser.?f4:IZTokenizer
 00562C9E    mov        edx,dword ptr [ebp-4]
 00562CA1    call       @IntfCopy
 00562CA6    lea        eax,[esi+8]; TZExpressionParser.?f8:String
 00562CA9    call       @LStrClr
 00562CAE    mov        dl,1
 00562CB0    mov        eax,[00433048]; TObjectList
 00562CB5    call       TObjectList.Create; TObjectList.Create
 00562CBA    mov        dword ptr [esi+0C],eax; TZExpressionParser.?fC:TObjectList
 00562CBD    xor        eax,eax
 00562CBF    mov        dword ptr [esi+10],eax; TZExpressionParser.?f10:dword
 00562CC2    mov        dl,1
 00562CC4    mov        eax,[00433048]; TObjectList
 00562CC9    call       TObjectList.Create; TObjectList.Create
 00562CCE    mov        dword ptr [esi+14],eax; TZExpressionParser.?f14:TObjectList
 00562CD1    mov        dl,1
 00562CD3    mov        eax,[0041C8E4]; TStringList
 00562CD8    call       TObject.Create; TStringList.Create
 00562CDD    mov        dword ptr [esi+18],eax; TZExpressionParser.?f18:TStringList
 00562CE0    xor        eax,eax
 00562CE2    pop        edx
 00562CE3    pop        ecx
 00562CE4    pop        ecx
 00562CE5    mov        dword ptr fs:[eax],edx
 00562CE8    push       562CFD
 00562CED    lea        eax,[ebp-4]
 00562CF0    call       @IntfClear
 00562CF5    ret
<00562CF6    jmp        @HandleFinally
<00562CFB    jmp        00562CED
 00562CFD    mov        eax,esi
 00562CFF    test       bl,bl
>00562D01    je         00562D12
 00562D03    call       @AfterConstruction
 00562D08    pop        dword ptr fs:[0]
 00562D0F    add        esp,0C
 00562D12    mov        eax,esi
 00562D14    pop        esi
 00562D15    pop        ebx
 00562D16    pop        ecx
 00562D17    pop        ebp
 00562D18    ret
*}
//end;

//00562D1C
destructor TZExpressionParser.Destroy;
begin
{*
 00562D1C    push       ebp
 00562D1D    mov        ebp,esp
 00562D1F    push       ebx
 00562D20    push       esi
 00562D21    call       @BeforeDestruction
 00562D26    mov        ebx,edx
 00562D28    mov        esi,eax
 00562D2A    mov        edx,ebx
 00562D2C    and        dl,0FC
 00562D2F    mov        eax,esi
 00562D31    call       TObject.Destroy
 00562D36    mov        eax,dword ptr [esi+0C]; TZExpressionParser.?fC:TObjectList
 00562D39    call       TObject.Free
 00562D3E    mov        eax,dword ptr [esi+14]; TZExpressionParser.?f14:TObjectList
 00562D41    call       TObject.Free
 00562D46    mov        eax,dword ptr [esi+18]; TZExpressionParser.?f18:TStringList
 00562D49    call       TObject.Free
 00562D4E    test       bl,bl
>00562D50    jle        00562D59
 00562D52    mov        eax,esi
 00562D54    call       @ClassDestroy
 00562D59    pop        esi
 00562D5A    pop        ebx
 00562D5B    pop        ebp
 00562D5C    ret
*}
end;

Initialization
Finalization
//00563B94
{*
 00563B94    push       ebp
 00563B95    mov        ebp,esp
 00563B97    xor        eax,eax
 00563B99    push       ebp
 00563B9A    push       563BD0
 00563B9F    push       dword ptr fs:[eax]
 00563BA2    mov        dword ptr fs:[eax],esp
 00563BA5    inc        dword ptr ds:[61EF5C]
>00563BAB    jne        00563BC2
 00563BAD    mov        eax,61691C; gvar_0061691C:array[25] of String
 00563BB2    mov        ecx,19
 00563BB7    mov        edx,dword ptr ds:[4010F8]; String
 00563BBD    call       @FinalizeArray
 00563BC2    xor        eax,eax
 00563BC4    pop        edx
 00563BC5    pop        ecx
 00563BC6    pop        ecx
 00563BC7    mov        dword ptr fs:[eax],edx
 00563BCA    push       563BD7
 00563BCF    ret
<00563BD0    jmp        @HandleFinally
<00563BD5    jmp        00563BCF
 00563BD7    pop        ebp
 00563BD8    ret
*}
end.