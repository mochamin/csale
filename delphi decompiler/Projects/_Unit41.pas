{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit41;

interface

uses
  Classes, Windows, Graphics;


implementation

Initialization
Finalization
//0043F078
{*
 0043F078    push       ebp
 0043F079    mov        ebp,esp
 0043F07B    xor        eax,eax
 0043F07D    push       ebp
 0043F07E    push       43F0B4
 0043F083    push       dword ptr fs:[eax]
 0043F086    mov        dword ptr fs:[eax],esp
 0043F089    inc        dword ptr ds:[61DAFC]
>0043F08F    jne        0043F0A6
 0043F091    mov        eax,614CDC; gvar_00614CDC:array[2] of String
 0043F096    mov        ecx,2
 0043F09B    mov        edx,dword ptr ds:[4010F8]; String
 0043F0A1    call       @FinalizeArray
 0043F0A6    xor        eax,eax
 0043F0A8    pop        edx
 0043F0A9    pop        ecx
 0043F0AA    pop        ecx
 0043F0AB    mov        dword ptr fs:[eax],edx
 0043F0AE    push       43F0BB
 0043F0B3    ret
<0043F0B4    jmp        @HandleFinally
<0043F0B9    jmp        0043F0B3
 0043F0BB    pop        ebp
 0043F0BC    ret
*}
end.