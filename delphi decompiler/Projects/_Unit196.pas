{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit196;

interface

uses
  Classes, Windows, Graphics, ZGenericSqlAnalyser;

type
  TZPostgreSQLStatementAnalyser = class(TZGenericStatementAnalyser)
    //constructor Create(?:TZPostgreSQLStatementAnalyser; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//0051D74C
//constructor TZPostgreSQLStatementAnalyser.Create(?:TZPostgreSQLStatementAnalyser; _Dv__:Boolean);
//begin
{*
 0051D74C    push       ebp
 0051D74D    mov        ebp,esp
 0051D74F    push       ebx
 0051D750    push       esi
 0051D751    test       dl,dl
>0051D753    je         0051D75D
 0051D755    add        esp,0FFFFFFF0
 0051D758    call       @ClassCreate
 0051D75D    mov        ebx,edx
 0051D75F    mov        esi,eax
 0051D761    mov        edx,6163A8; gvar_006163A8:array[13] of String
 0051D766    mov        ecx,0C
 0051D76B    mov        eax,esi
 0051D76D    call       004C2FC4
 0051D772    mov        dword ptr [esi+10],eax; TZPostgreSQLStatementAnalyser.?f10:dword
 0051D775    mov        edx,6163DC; gvar_006163DC:array[2] of String
 0051D77A    mov        ecx,1
 0051D77F    mov        eax,esi
 0051D781    call       004C2FC4
 0051D786    mov        dword ptr [esi+14],eax; TZPostgreSQLStatementAnalyser.?f14:dword
 0051D789    mov        edx,6163E4; gvar_006163E4:array[8] of String
 0051D78E    mov        ecx,7
 0051D793    mov        eax,esi
 0051D795    call       004C2FC4
 0051D79A    mov        dword ptr [esi+18],eax; TZPostgreSQLStatementAnalyser.?f18:dword
 0051D79D    mov        edx,616404; gvar_00616404:array[2] of String
 0051D7A2    mov        ecx,1
 0051D7A7    mov        eax,esi
 0051D7A9    call       004C2FC4
 0051D7AE    mov        dword ptr [esi+1C],eax; TZPostgreSQLStatementAnalyser.?f1C:dword
 0051D7B1    mov        eax,esi
 0051D7B3    test       bl,bl
>0051D7B5    je         0051D7C6
 0051D7B7    call       @AfterConstruction
 0051D7BC    pop        dword ptr fs:[0]
 0051D7C3    add        esp,0C
 0051D7C6    mov        eax,esi
 0051D7C8    pop        esi
 0051D7C9    pop        ebx
 0051D7CA    pop        ebp
 0051D7CB    ret
*}
//end;

Initialization
Finalization
//0051D7CC
{*
 0051D7CC    push       ebp
 0051D7CD    mov        ebp,esp
 0051D7CF    xor        eax,eax
 0051D7D1    push       ebp
 0051D7D2    push       51D847
 0051D7D7    push       dword ptr fs:[eax]
 0051D7DA    mov        dword ptr fs:[eax],esp
 0051D7DD    inc        dword ptr ds:[61E524]
>0051D7E3    jne        0051D839
 0051D7E5    mov        eax,616404; gvar_00616404:array[2] of String
 0051D7EA    mov        ecx,2
 0051D7EF    mov        edx,dword ptr ds:[4010F8]; String
 0051D7F5    call       @FinalizeArray
 0051D7FA    mov        eax,6163E4; gvar_006163E4:array[8] of String
 0051D7FF    mov        ecx,8
 0051D804    mov        edx,dword ptr ds:[4010F8]; String
 0051D80A    call       @FinalizeArray
 0051D80F    mov        eax,6163DC; gvar_006163DC:array[2] of String
 0051D814    mov        ecx,2
 0051D819    mov        edx,dword ptr ds:[4010F8]; String
 0051D81F    call       @FinalizeArray
 0051D824    mov        eax,6163A8; gvar_006163A8:array[13] of String
 0051D829    mov        ecx,0D
 0051D82E    mov        edx,dword ptr ds:[4010F8]; String
 0051D834    call       @FinalizeArray
 0051D839    xor        eax,eax
 0051D83B    pop        edx
 0051D83C    pop        ecx
 0051D83D    pop        ecx
 0051D83E    mov        dword ptr fs:[eax],edx
 0051D841    push       51D84E
 0051D846    ret
<0051D847    jmp        @HandleFinally
<0051D84C    jmp        0051D846
 0051D84E    pop        ebp
 0051D84F    ret
*}
end.