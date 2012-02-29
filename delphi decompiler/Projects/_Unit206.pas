{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit206;

interface

uses
  Classes, Windows, Graphics, ZGenericSqlAnalyser;

type
  TZMySQLStatementAnalyser = class(TZGenericStatementAnalyser)
    //constructor Create(?:TZMySQLStatementAnalyser; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//0050C9C8
//constructor TZMySQLStatementAnalyser.Create(?:TZMySQLStatementAnalyser; _Dv__:Boolean);
//begin
{*
 0050C9C8    push       ebp
 0050C9C9    mov        ebp,esp
 0050C9CB    push       ebx
 0050C9CC    push       esi
 0050C9CD    test       dl,dl
>0050C9CF    je         0050C9D9
 0050C9D1    add        esp,0FFFFFFF0
 0050C9D4    call       @ClassCreate
 0050C9D9    mov        ebx,edx
 0050C9DB    mov        esi,eax
 0050C9DD    mov        edx,6161B0; gvar_006161B0:array[17] of String
 0050C9E2    mov        ecx,10
 0050C9E7    mov        eax,esi
 0050C9E9    call       004C2FC4
 0050C9EE    mov        dword ptr [esi+10],eax; TZMySQLStatementAnalyser.?f10:dword
 0050C9F1    mov        edx,6161F4; gvar_006161F4:array[8] of String
 0050C9F6    mov        ecx,7
 0050C9FB    mov        eax,esi
 0050C9FD    call       004C2FC4
 0050CA02    mov        dword ptr [esi+14],eax; TZMySQLStatementAnalyser.?f14:dword
 0050CA05    mov        edx,616214; gvar_00616214:array[8] of String
 0050CA0A    mov        ecx,7
 0050CA0F    mov        eax,esi
 0050CA11    call       004C2FC4
 0050CA16    mov        dword ptr [esi+18],eax; TZMySQLStatementAnalyser.?f18:dword
 0050CA19    mov        edx,616234; gvar_00616234:array[4] of String
 0050CA1E    mov        ecx,3
 0050CA23    mov        eax,esi
 0050CA25    call       004C2FC4
 0050CA2A    mov        dword ptr [esi+1C],eax; TZMySQLStatementAnalyser.?f1C:dword
 0050CA2D    mov        eax,esi
 0050CA2F    test       bl,bl
>0050CA31    je         0050CA42
 0050CA33    call       @AfterConstruction
 0050CA38    pop        dword ptr fs:[0]
 0050CA3F    add        esp,0C
 0050CA42    mov        eax,esi
 0050CA44    pop        esi
 0050CA45    pop        ebx
 0050CA46    pop        ebp
 0050CA47    ret
*}
//end;

Initialization
Finalization
//0050CA48
{*
 0050CA48    push       ebp
 0050CA49    mov        ebp,esp
 0050CA4B    xor        eax,eax
 0050CA4D    push       ebp
 0050CA4E    push       50CAC3
 0050CA53    push       dword ptr fs:[eax]
 0050CA56    mov        dword ptr fs:[eax],esp
 0050CA59    inc        dword ptr ds:[61E2EC]
>0050CA5F    jne        0050CAB5
 0050CA61    mov        eax,616234; gvar_00616234:array[4] of String
 0050CA66    mov        ecx,4
 0050CA6B    mov        edx,dword ptr ds:[4010F8]; String
 0050CA71    call       @FinalizeArray
 0050CA76    mov        eax,616214; gvar_00616214:array[8] of String
 0050CA7B    mov        ecx,8
 0050CA80    mov        edx,dword ptr ds:[4010F8]; String
 0050CA86    call       @FinalizeArray
 0050CA8B    mov        eax,6161F4; gvar_006161F4:array[8] of String
 0050CA90    mov        ecx,8
 0050CA95    mov        edx,dword ptr ds:[4010F8]; String
 0050CA9B    call       @FinalizeArray
 0050CAA0    mov        eax,6161B0; gvar_006161B0:array[17] of String
 0050CAA5    mov        ecx,11
 0050CAAA    mov        edx,dword ptr ds:[4010F8]; String
 0050CAB0    call       @FinalizeArray
 0050CAB5    xor        eax,eax
 0050CAB7    pop        edx
 0050CAB8    pop        ecx
 0050CAB9    pop        ecx
 0050CABA    mov        dword ptr fs:[eax],edx
 0050CABD    push       50CACA
 0050CAC2    ret
<0050CAC3    jmp        @HandleFinally
<0050CAC8    jmp        0050CAC2
 0050CACA    pop        ebp
 0050CACB    ret
*}
end.