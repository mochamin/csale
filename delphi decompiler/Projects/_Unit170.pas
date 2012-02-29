{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit170;

interface

uses
  Classes, Windows, Graphics, ZGenericSqlAnalyser;

type
  TZSQLiteStatementAnalyser = class(TZGenericStatementAnalyser)
    //constructor Create(?:TZSQLiteStatementAnalyser; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//005423E8
//constructor TZSQLiteStatementAnalyser.Create(?:TZSQLiteStatementAnalyser; _Dv__:Boolean);
//begin
{*
 005423E8    push       ebp
 005423E9    mov        ebp,esp
 005423EB    push       ebx
 005423EC    push       esi
 005423ED    test       dl,dl
>005423EF    je         005423F9
 005423F1    add        esp,0FFFFFFF0
 005423F4    call       @ClassCreate
 005423F9    mov        ebx,edx
 005423FB    mov        esi,eax
 005423FD    mov        edx,616808; gvar_00616808:array[12] of String
 00542402    mov        ecx,0B
 00542407    mov        eax,esi
 00542409    call       004C2FC4
 0054240E    mov        dword ptr [esi+10],eax; TZSQLiteStatementAnalyser.?f10:dword
 00542411    mov        edx,616838; gvar_00616838:array[2] of String
 00542416    mov        ecx,1
 0054241B    mov        eax,esi
 0054241D    call       004C2FC4
 00542422    mov        dword ptr [esi+14],eax; TZSQLiteStatementAnalyser.?f14:dword
 00542425    mov        edx,616840; gvar_00616840:array[8] of String
 0054242A    mov        ecx,7
 0054242F    mov        eax,esi
 00542431    call       004C2FC4
 00542436    mov        dword ptr [esi+18],eax; TZSQLiteStatementAnalyser.?f18:dword
 00542439    mov        edx,616860; gvar_00616860:array[2] of String
 0054243E    mov        ecx,1
 00542443    mov        eax,esi
 00542445    call       004C2FC4
 0054244A    mov        dword ptr [esi+1C],eax; TZSQLiteStatementAnalyser.?f1C:dword
 0054244D    mov        eax,esi
 0054244F    test       bl,bl
>00542451    je         00542462
 00542453    call       @AfterConstruction
 00542458    pop        dword ptr fs:[0]
 0054245F    add        esp,0C
 00542462    mov        eax,esi
 00542464    pop        esi
 00542465    pop        ebx
 00542466    pop        ebp
 00542467    ret
*}
//end;

Initialization
Finalization
//00542468
{*
 00542468    push       ebp
 00542469    mov        ebp,esp
 0054246B    xor        eax,eax
 0054246D    push       ebp
 0054246E    push       5424E3
 00542473    push       dword ptr fs:[eax]
 00542476    mov        dword ptr fs:[eax],esp
 00542479    inc        dword ptr ds:[61EBCC]
>0054247F    jne        005424D5
 00542481    mov        eax,616860; gvar_00616860:array[2] of String
 00542486    mov        ecx,2
 0054248B    mov        edx,dword ptr ds:[4010F8]; String
 00542491    call       @FinalizeArray
 00542496    mov        eax,616840; gvar_00616840:array[8] of String
 0054249B    mov        ecx,8
 005424A0    mov        edx,dword ptr ds:[4010F8]; String
 005424A6    call       @FinalizeArray
 005424AB    mov        eax,616838; gvar_00616838:array[2] of String
 005424B0    mov        ecx,2
 005424B5    mov        edx,dword ptr ds:[4010F8]; String
 005424BB    call       @FinalizeArray
 005424C0    mov        eax,616808; gvar_00616808:array[12] of String
 005424C5    mov        ecx,0C
 005424CA    mov        edx,dword ptr ds:[4010F8]; String
 005424D0    call       @FinalizeArray
 005424D5    xor        eax,eax
 005424D7    pop        edx
 005424D8    pop        ecx
 005424D9    pop        ecx
 005424DA    mov        dword ptr fs:[eax],edx
 005424DD    push       5424EA
 005424E2    ret
<005424E3    jmp        @HandleFinally
<005424E8    jmp        005424E2
 005424EA    pop        ebp
 005424EB    ret
*}
end.