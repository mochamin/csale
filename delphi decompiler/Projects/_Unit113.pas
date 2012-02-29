{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit113;

interface

uses
  Classes, Windows, Graphics;


implementation

//005C5B78
//procedure sub_005C5B78(?:AnsiString);
//begin
{*
 005C5B78    push       ebp
 005C5B79    mov        ebp,esp
 005C5B7B    push       ecx
 005C5B7C    mov        dword ptr [ebp-4],eax
 005C5B7F    mov        eax,dword ptr [ebp-4]
 005C5B82    call       @LStrAddRef
 005C5B87    xor        eax,eax
 005C5B89    push       ebp
 005C5B8A    push       5C5BBF
 005C5B8F    push       dword ptr fs:[eax]
 005C5B92    mov        dword ptr fs:[eax],esp
 005C5B95    mov        ecx,dword ptr [ebp-4]
 005C5B98    mov        dl,1
 005C5B9A    mov        eax,[005C1ECC]; ERaveCompiler
 005C5B9F    call       Exception.Create; ERaveCompiler.Create
 005C5BA4    call       @RaiseExcept
 005C5BA9    xor        eax,eax
 005C5BAB    pop        edx
 005C5BAC    pop        ecx
 005C5BAD    pop        ecx
 005C5BAE    mov        dword ptr fs:[eax],edx
 005C5BB1    push       5C5BC6
 005C5BB6    lea        eax,[ebp-4]
 005C5BB9    call       @LStrClr
 005C5BBE    ret
<005C5BBF    jmp        @HandleFinally
<005C5BC4    jmp        005C5BB6
 005C5BC6    pop        ecx
 005C5BC7    pop        ebp
 005C5BC8    ret
*}
//end;

//005C5BDC
//procedure sub_005C5BDC(?:Single; ?:?; ?:?; ?:?);
//begin
{*
 005C5BDC    push       ebp
 005C5BDD    mov        ebp,esp
 005C5BDF    test       ecx,ecx
>005C5BE1    je         005C5BEB
 005C5BE3    mov        ebx,dword ptr [edx]
 005C5BE5    push       ebx
 005C5BE6    add        edx,4
 005C5BE9    loop       005C5BE3
 005C5BEB    push       dword ptr [ebp+8]
 005C5BEE    call       eax
 005C5BF0    pop        ebp
 005C5BF1    ret        4
*}
//end;

end.