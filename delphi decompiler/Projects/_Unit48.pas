{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit48;

interface

uses
  Classes, Windows, Graphics;


implementation

Initialization
Finalization
//0043F144
{*
 0043F144    push       ebp
 0043F145    mov        ebp,esp
 0043F147    xor        eax,eax
 0043F149    push       ebp
 0043F14A    push       43F189
 0043F14F    push       dword ptr fs:[eax]
 0043F152    mov        dword ptr fs:[eax],esp
 0043F155    inc        dword ptr ds:[61DB04]
>0043F15B    jne        0043F17B
 0043F15D    cmp        dword ptr ds:[614CF0],0
>0043F164    je         0043F171
 0043F166    mov        eax,[00614CF0]
 0043F16B    push       eax
 0043F16C    call       kernel32.FreeLibrary
 0043F171    mov        eax,614CEC; ^'MAPI32.DLL'
 0043F176    call       @LStrClr
 0043F17B    xor        eax,eax
 0043F17D    pop        edx
 0043F17E    pop        ecx
 0043F17F    pop        ecx
 0043F180    mov        dword ptr fs:[eax],edx
 0043F183    push       43F190
 0043F188    ret
<0043F189    jmp        @HandleFinally
<0043F18E    jmp        0043F188
 0043F190    pop        ebp
 0043F191    ret
*}
end.