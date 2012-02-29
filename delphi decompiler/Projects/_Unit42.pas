{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit42;

interface

uses
  Classes, Windows, Graphics;


implementation

Initialization
Finalization
//0043F0E0
{*
 0043F0E0    push       ebp
 0043F0E1    mov        ebp,esp
 0043F0E3    xor        eax,eax
 0043F0E5    push       ebp
 0043F0E6    push       43F11C
 0043F0EB    push       dword ptr fs:[eax]
 0043F0EE    mov        dword ptr fs:[eax],esp
 0043F0F1    inc        dword ptr ds:[61DB00]
>0043F0F7    jne        0043F10E
 0043F0F9    mov        eax,614CE4; gvar_00614CE4:array[2] of String
 0043F0FE    mov        ecx,2
 0043F103    mov        edx,dword ptr ds:[4010F8]; String
 0043F109    call       @FinalizeArray
 0043F10E    xor        eax,eax
 0043F110    pop        edx
 0043F111    pop        ecx
 0043F112    pop        ecx
 0043F113    mov        dword ptr fs:[eax],edx
 0043F116    push       43F123
 0043F11B    ret
<0043F11C    jmp        @HandleFinally
<0043F121    jmp        0043F11B
 0043F123    pop        ebp
 0043F124    ret
*}
end.