{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit81;

interface

uses
  Classes, Windows, Graphics;


implementation

//0059036C
//function sub_0059036C:?;
//begin
{*
 0059036C    push       eax
 0059036D    call       user32.CharNextA
 00590372    ret
*}
//end;

//00590374
//procedure sub_00590374(?:AnsiString; ?:?; ?:?; ?:?);
//begin
{*
 00590374    push       ebp
 00590375    mov        ebp,esp
 00590377    push       ecx
 00590378    push       ebx
 00590379    push       esi
 0059037A    push       edi
 0059037B    mov        edi,ecx
 0059037D    mov        esi,edx
 0059037F    mov        dword ptr [ebp-4],eax
 00590382    mov        eax,dword ptr [ebp-4]
 00590385    call       @LStrAddRef
 0059038A    xor        eax,eax
 0059038C    push       ebp
 0059038D    push       5903FE
 00590392    push       dword ptr fs:[eax]
 00590395    mov        dword ptr fs:[eax],esp
 00590398    mov        eax,dword ptr [ebp+8]
 0059039B    call       @LStrClr
 005903A0    lea        eax,[ebp-4]
 005903A3    call       @UniqueStringA
 005903A8    mov        ebx,eax
 005903AA    test       ebx,ebx
>005903AC    je         005903E8
 005903AE    cmp        esi,1
>005903B1    jle        005903C7
 005903B3    mov        eax,ebx
 005903B5    call       0059036C
 005903BA    mov        ebx,eax
 005903BC    dec        esi
 005903BD    cmp        byte ptr [ebx],0
>005903C0    je         005903E8
 005903C2    cmp        esi,1
<005903C5    jg         005903B3
 005903C7    mov        eax,ebx
>005903C9    jmp        005903D1
 005903CB    call       0059036C
 005903D0    dec        edi
 005903D1    test       edi,edi
>005903D3    jle        005903DA
 005903D5    cmp        byte ptr [eax],0
<005903D8    jne        005903CB
 005903DA    mov        ecx,eax
 005903DC    sub        ecx,ebx
 005903DE    mov        eax,dword ptr [ebp+8]
 005903E1    mov        edx,ebx
 005903E3    call       @LStrFromPCharLen
 005903E8    xor        eax,eax
 005903EA    pop        edx
 005903EB    pop        ecx
 005903EC    pop        ecx
 005903ED    mov        dword ptr fs:[eax],edx
 005903F0    push       590405
 005903F5    lea        eax,[ebp-4]
 005903F8    call       @LStrClr
 005903FD    ret
<005903FE    jmp        @HandleFinally
<00590403    jmp        005903F5
 00590405    pop        edi
 00590406    pop        esi
 00590407    pop        ebx
 00590408    pop        ecx
 00590409    pop        ebp
 0059040A    ret        4
*}
//end;

//00590410
//procedure sub_00590410(?:AnsiString; ?:Longint; ?:?);
//begin
{*
 00590410    push       ebp
 00590411    mov        ebp,esp
 00590413    add        esp,0FFFFFFE8
 00590416    push       ebx
 00590417    push       esi
 00590418    push       edi
 00590419    xor        ebx,ebx
 0059041B    mov        dword ptr [ebp-18],ebx
 0059041E    mov        dword ptr [ebp-14],ebx
 00590421    mov        dword ptr [ebp-0C],ebx
 00590424    mov        edi,ecx
 00590426    mov        esi,edx
 00590428    mov        dword ptr [ebp-4],eax
 0059042B    xor        eax,eax
 0059042D    push       ebp
 0059042E    push       5904EA
 00590433    push       dword ptr fs:[eax]
 00590436    mov        dword ptr fs:[eax],esp
 00590439    mov        eax,dword ptr [ebp-4]
 0059043C    call       @UniqueStringA
 00590441    mov        dword ptr [ebp-8],eax
 00590444    mov        eax,dword ptr [ebp-4]
 00590447    call       @UniqueStringA
 0059044C    mov        ebx,eax
 0059044E    xor        eax,eax
 00590450    mov        dword ptr [ebp-10],eax
 00590453    test       ebx,ebx
>00590455    je         005904C7
 00590457    cmp        esi,1
>0059045A    jle        00590473
 0059045C    mov        eax,ebx
 0059045E    call       0059036C
 00590463    mov        ebx,eax
 00590465    dec        esi
 00590466    inc        dword ptr [ebp-10]
 00590469    cmp        byte ptr [ebx],0
>0059046C    je         005904C7
 0059046E    cmp        esi,1
<00590471    jg         0059045C
 00590473    lea        eax,[ebp-0C]
 00590476    push       eax
 00590477    lea        eax,[ebp-14]
 0059047A    mov        edx,dword ptr [ebp-8]
 0059047D    call       @LStrFromPChar
 00590482    mov        eax,dword ptr [ebp-14]
 00590485    mov        ecx,dword ptr [ebp-10]
 00590488    mov        edx,1
 0059048D    call       00590374
>00590492    jmp        0059049E
 00590494    mov        eax,ebx
 00590496    call       0059036C
 0059049B    mov        ebx,eax
 0059049D    dec        edi
 0059049E    test       edi,edi
>005904A0    jle        005904A7
 005904A2    cmp        byte ptr [ebx],0
<005904A5    jne        00590494
 005904A7    lea        eax,[ebp-18]
 005904AA    mov        edx,ebx
 005904AC    call       @LStrFromPChar
 005904B1    mov        edx,dword ptr [ebp-18]
 005904B4    lea        eax,[ebp-0C]
 005904B7    call       @LStrCat
 005904BC    mov        eax,dword ptr [ebp-4]
 005904BF    mov        edx,dword ptr [ebp-0C]
 005904C2    call       @LStrAsg
 005904C7    xor        eax,eax
 005904C9    pop        edx
 005904CA    pop        ecx
 005904CB    pop        ecx
 005904CC    mov        dword ptr fs:[eax],edx
 005904CF    push       5904F1
 005904D4    lea        eax,[ebp-18]
 005904D7    mov        edx,2
 005904DC    call       @LStrArrayClr
 005904E1    lea        eax,[ebp-0C]
 005904E4    call       @LStrClr
 005904E9    ret
<005904EA    jmp        @HandleFinally
<005904EF    jmp        005904D4
 005904F1    pop        edi
 005904F2    pop        esi
 005904F3    pop        ebx
 005904F4    mov        esp,ebp
 005904F6    pop        ebp
 005904F7    ret
*}
//end;

end.