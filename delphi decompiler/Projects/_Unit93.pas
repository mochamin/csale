{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit93;

interface

uses
  Classes, Windows, Graphics;


implementation

//005BF51C
procedure sub_005BF51C;
begin
{*
 005BF51C    push       ebx
 005BF51D    push       esi
 005BF51E    push       edi
 005BF51F    mov        edi,617264; gvar_00617264
 005BF524    mov        ebx,dword ptr ds:[617260]; gvar_00617260
 005BF52A    dec        ebx
 005BF52B    test       ebx,ebx
>005BF52D    jl         005BF540
 005BF52F    inc        ebx
 005BF530    xor        esi,esi
 005BF532    mov        eax,dword ptr [edi]
 005BF534    mov        eax,dword ptr [eax+esi*4]
 005BF537    call       StrDispose
 005BF53C    inc        esi
 005BF53D    dec        ebx
<005BF53E    jne        005BF532
 005BF540    mov        edx,dword ptr ds:[617260]; gvar_00617260
 005BF546    shl        edx,2
 005BF549    mov        eax,dword ptr [edi]
 005BF54B    call       @FreeMem
 005BF550    xor        eax,eax
 005BF552    mov        [00617260],eax; gvar_00617260
 005BF557    xor        eax,eax
 005BF559    mov        dword ptr [edi],eax
 005BF55B    pop        edi
 005BF55C    pop        esi
 005BF55D    pop        ebx
 005BF55E    ret
*}
end;

//005BF560
procedure sub_005BF560;
begin
{*
 005BF560    mov        eax,61726C
 005BF565    mov        edx,dword ptr ds:[617268]; gvar_00617268
 005BF56B    call       005BF578
 005BF570    xor        eax,eax
 005BF572    mov        [00617268],eax; gvar_00617268
 005BF577    ret
*}
end;

//005BF578
//procedure sub_005BF578(?:?; ?:?);
//begin
{*
 005BF578    push       ebx
 005BF579    push       esi
 005BF57A    push       edi
 005BF57B    push       ebp
 005BF57C    push       ecx
 005BF57D    mov        dword ptr [esp],edx
 005BF580    mov        ebp,eax
 005BF582    cmp        dword ptr [ebp],0
>005BF586    je         005BF5D2
 005BF588    mov        esi,dword ptr [esp]
 005BF58B    dec        esi
 005BF58C    test       esi,esi
>005BF58E    jl         005BF5BB
 005BF590    inc        esi
 005BF591    xor        edi,edi
 005BF593    mov        eax,edi
 005BF595    shl        eax,4
 005BF598    add        eax,edi
 005BF59A    mov        edx,dword ptr [ebp]
 005BF59D    lea        ebx,[edx+eax]
 005BF5A0    mov        eax,dword ptr [ebx]
 005BF5A2    call       StrDispose
 005BF5A7    mov        eax,dword ptr [ebx+9]
 005BF5AA    call       StrDispose
 005BF5AF    mov        eax,dword ptr [ebx+0D]
 005BF5B2    call       StrDispose
 005BF5B7    inc        edi
 005BF5B8    dec        esi
<005BF5B9    jne        005BF593
 005BF5BB    mov        edx,dword ptr [esp]
 005BF5BE    mov        eax,edx
 005BF5C0    shl        edx,4
 005BF5C3    add        edx,eax
 005BF5C5    mov        eax,dword ptr [ebp]
 005BF5C8    call       @FreeMem
 005BF5CD    xor        eax,eax
 005BF5CF    mov        dword ptr [ebp],eax
 005BF5D2    pop        edx
 005BF5D3    pop        ebp
 005BF5D4    pop        edi
 005BF5D5    pop        esi
 005BF5D6    pop        ebx
 005BF5D7    ret
*}
//end;

//005BF5D8
//procedure sub_005BF5D8(?:?);
//begin
{*
 005BF5D8    push       ebx
 005BF5D9    mov        ebx,eax
 005BF5DB    mov        eax,[00617270]; gvar_00617270:PChar
 005BF5E0    call       StrDispose
 005BF5E5    test       ebx,ebx
>005BF5E7    je         005BF5F8
 005BF5E9    mov        eax,[00617270]; gvar_00617270:PChar
 005BF5EE    call       StrNew
 005BF5F3    mov        [00617270],eax; gvar_00617270:PChar
 005BF5F8    pop        ebx
 005BF5F9    ret
*}
//end;

Initialization
Finalization
//005BF5FC
{*
 005BF5FC    push       ebp
 005BF5FD    mov        ebp,esp
 005BF5FF    xor        eax,eax
 005BF601    push       ebp
 005BF602    push       5BF634
 005BF607    push       dword ptr fs:[eax]
 005BF60A    mov        dword ptr fs:[eax],esp
 005BF60D    inc        dword ptr ds:[61F8A4]
>005BF613    jne        005BF626
 005BF615    call       005BF51C
 005BF61A    call       005BF560
 005BF61F    xor        eax,eax
 005BF621    call       005BF5D8
 005BF626    xor        eax,eax
 005BF628    pop        edx
 005BF629    pop        ecx
 005BF62A    pop        ecx
 005BF62B    mov        dword ptr fs:[eax],edx
 005BF62E    push       5BF63B
 005BF633    ret
<005BF634    jmp        @HandleFinally
<005BF639    jmp        005BF633
 005BF63B    pop        ebp
 005BF63C    ret
*}
end.