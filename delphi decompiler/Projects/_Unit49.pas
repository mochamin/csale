{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit49;

interface

uses
  Classes, Windows, Graphics;


implementation

Initialization
Finalization
//0043F19C
{*
 0043F19C    push       ebp
 0043F19D    mov        ebp,esp
 0043F19F    xor        eax,eax
 0043F1A1    push       ebp
 0043F1A2    push       43F1E0
 0043F1A7    push       dword ptr fs:[eax]
 0043F1AA    mov        dword ptr fs:[eax],esp
 0043F1AD    inc        dword ptr ds:[61DB08]
>0043F1B3    jne        0043F1D2
 0043F1B5    cmp        byte ptr ds:[61DB10],0
>0043F1BC    je         0043F1D2
 0043F1BE    cmp        dword ptr ds:[61DB0C],0
>0043F1C5    je         0043F1D2
 0043F1C7    mov        eax,[0061DB0C]
 0043F1CC    push       eax
 0043F1CD    call       kernel32.FreeLibrary
 0043F1D2    xor        eax,eax
 0043F1D4    pop        edx
 0043F1D5    pop        ecx
 0043F1D6    pop        ecx
 0043F1D7    mov        dword ptr fs:[eax],edx
 0043F1DA    push       43F1E7
 0043F1DF    ret
<0043F1E0    jmp        @HandleFinally
<0043F1E5    jmp        0043F1DF
 0043F1E7    pop        ebp
 0043F1E8    ret
*}
end.