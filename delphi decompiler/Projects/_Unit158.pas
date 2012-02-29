{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit158;

interface

uses
  Classes, Windows, Graphics, ZGenericSqlAnalyser;

type
  TZOracleStatementAnalyser = class(TZGenericStatementAnalyser)
    //constructor Create(?:TZOracleStatementAnalyser; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//0054C144
//constructor TZOracleStatementAnalyser.Create(?:TZOracleStatementAnalyser; _Dv__:Boolean);
//begin
{*
 0054C144    push       ebp
 0054C145    mov        ebp,esp
 0054C147    push       ebx
 0054C148    push       esi
 0054C149    test       dl,dl
>0054C14B    je         0054C155
 0054C14D    add        esp,0FFFFFFF0
 0054C150    call       @ClassCreate
 0054C155    mov        ebx,edx
 0054C157    mov        esi,eax
 0054C159    mov        edx,616878; gvar_00616878:array[14] of String
 0054C15E    mov        ecx,0D
 0054C163    mov        eax,esi
 0054C165    call       004C2FC4
 0054C16A    mov        dword ptr [esi+10],eax; TZOracleStatementAnalyser.?f10:dword
 0054C16D    mov        edx,6168B0; gvar_006168B0:array[3] of String
 0054C172    mov        ecx,2
 0054C177    mov        eax,esi
 0054C179    call       004C2FC4
 0054C17E    mov        dword ptr [esi+14],eax; TZOracleStatementAnalyser.?f14:dword
 0054C181    mov        edx,6168BC; gvar_006168BC:array[8] of String
 0054C186    mov        ecx,7
 0054C18B    mov        eax,esi
 0054C18D    call       004C2FC4
 0054C192    mov        dword ptr [esi+18],eax; TZOracleStatementAnalyser.?f18:dword
 0054C195    mov        edx,6168DC; gvar_006168DC:array[2] of String
 0054C19A    mov        ecx,1
 0054C19F    mov        eax,esi
 0054C1A1    call       004C2FC4
 0054C1A6    mov        dword ptr [esi+1C],eax; TZOracleStatementAnalyser.?f1C:dword
 0054C1A9    mov        eax,esi
 0054C1AB    test       bl,bl
>0054C1AD    je         0054C1BE
 0054C1AF    call       @AfterConstruction
 0054C1B4    pop        dword ptr fs:[0]
 0054C1BB    add        esp,0C
 0054C1BE    mov        eax,esi
 0054C1C0    pop        esi
 0054C1C1    pop        ebx
 0054C1C2    pop        ebp
 0054C1C3    ret
*}
//end;

Initialization
Finalization
//0054C1C4
{*
 0054C1C4    push       ebp
 0054C1C5    mov        ebp,esp
 0054C1C7    xor        eax,eax
 0054C1C9    push       ebp
 0054C1CA    push       54C23F
 0054C1CF    push       dword ptr fs:[eax]
 0054C1D2    mov        dword ptr fs:[eax],esp
 0054C1D5    inc        dword ptr ds:[61ED14]
>0054C1DB    jne        0054C231
 0054C1DD    mov        eax,6168DC; gvar_006168DC:array[2] of String
 0054C1E2    mov        ecx,2
 0054C1E7    mov        edx,dword ptr ds:[4010F8]; String
 0054C1ED    call       @FinalizeArray
 0054C1F2    mov        eax,6168BC; gvar_006168BC:array[8] of String
 0054C1F7    mov        ecx,8
 0054C1FC    mov        edx,dword ptr ds:[4010F8]; String
 0054C202    call       @FinalizeArray
 0054C207    mov        eax,6168B0; gvar_006168B0:array[3] of String
 0054C20C    mov        ecx,3
 0054C211    mov        edx,dword ptr ds:[4010F8]; String
 0054C217    call       @FinalizeArray
 0054C21C    mov        eax,616878; gvar_00616878:array[14] of String
 0054C221    mov        ecx,0E
 0054C226    mov        edx,dword ptr ds:[4010F8]; String
 0054C22C    call       @FinalizeArray
 0054C231    xor        eax,eax
 0054C233    pop        edx
 0054C234    pop        ecx
 0054C235    pop        ecx
 0054C236    mov        dword ptr fs:[eax],edx
 0054C239    push       54C246
 0054C23E    ret
<0054C23F    jmp        @HandleFinally
<0054C244    jmp        0054C23E
 0054C246    pop        ebp
 0054C247    ret
*}
end.