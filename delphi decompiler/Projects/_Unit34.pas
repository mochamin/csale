{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit34;

interface

uses
  Classes, Windows, Graphics;


implementation

Initialization
Finalization
//00434DE8
{*
 00434DE8    push       ebp
 00434DE9    mov        ebp,esp
 00434DEB    xor        eax,eax
 00434DED    push       ebp
 00434DEE    push       434E19
 00434DF3    push       dword ptr fs:[eax]
 00434DF6    mov        dword ptr fs:[eax],esp
 00434DF9    inc        dword ptr ds:[61D94C]
>00434DFF    jne        00434E0B
 00434E01    mov        eax,[006149D0]
 00434E06    call       TObject.Free
 00434E0B    xor        eax,eax
 00434E0D    pop        edx
 00434E0E    pop        ecx
 00434E0F    pop        ecx
 00434E10    mov        dword ptr fs:[eax],edx
 00434E13    push       434E20
 00434E18    ret
<00434E19    jmp        @HandleFinally
<00434E1E    jmp        00434E18
 00434E20    pop        ebp
 00434E21    ret
*}
end.