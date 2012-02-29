{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit329;

interface

uses
  Classes, Windows, Graphics;


implementation

Initialization
//00612E94
{*
 00612E94    push       ebp
 00612E95    mov        ebp,esp
 00612E97    xor        eax,eax
 00612E99    push       ebp
 00612E9A    push       612EDD
 00612E9F    push       dword ptr fs:[eax]
 00612EA2    mov        dword ptr fs:[eax],esp
 00612EA5    sub        dword ptr ds:[61FBC0],1
>00612EAC    jae        00612ECF
 00612EAE    mov        eax,612E38
 00612EB3    call       @InitWideStrings
 00612EB8    mov        eax,61FBC4; gvar_0061FBC4:IInterface
 00612EBD    call       @IntfClear
 00612EC2    push       eax
 00612EC3    push       1
 00612EC5    call       ole32.CoGetMalloc
 00612ECA    call       00494244
 00612ECF    xor        eax,eax
 00612ED1    pop        edx
 00612ED2    pop        ecx
 00612ED3    pop        ecx
 00612ED4    mov        dword ptr fs:[eax],edx
 00612ED7    push       612EE4
 00612EDC    ret
<00612EDD    jmp        @HandleFinally
<00612EE2    jmp        00612EDC
 00612EE4    pop        ebp
 00612EE5    ret
*}
Finalization
//00612E44
{*
 00612E44    push       ebp
 00612E45    mov        ebp,esp
 00612E47    xor        eax,eax
 00612E49    push       ebp
 00612E4A    push       612E89
 00612E4F    push       dword ptr fs:[eax]
 00612E52    mov        dword ptr fs:[eax],esp
 00612E55    inc        dword ptr ds:[61FBC0]
>00612E5B    jne        00612E7B
 00612E5D    mov        eax,61FBC4; gvar_0061FBC4:IInterface
 00612E62    call       @IntfClear
 00612E67    mov        eax,61AE3C; gvar_0061AE3C:WideString
 00612E6C    call       @WStrClr
 00612E71    mov        eax,61FBC4; gvar_0061FBC4:IInterface
 00612E76    call       @IntfClear
 00612E7B    xor        eax,eax
 00612E7D    pop        edx
 00612E7E    pop        ecx
 00612E7F    pop        ecx
 00612E80    mov        dword ptr fs:[eax],edx
 00612E83    push       612E90
 00612E88    ret
<00612E89    jmp        @HandleFinally
<00612E8E    jmp        00612E88
 00612E90    pop        ebp
 00612E91    ret
*}
end.