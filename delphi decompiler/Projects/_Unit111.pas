{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit111;

interface

uses
  Classes, Windows, Graphics;

type
  TRaveFuncItem = record //size = 12
  f4:String;
  f8:String;;

implementation

//005D7A88
procedure sub_005D7A88;
begin
{*
 005D7A88    push       ebx
 005D7A89    push       esi
 005D7A8A    mov        esi,1D4
 005D7A8F    mov        ebx,6178F4; gvar_006178F4:array[468] of TRaveFuncItem
 005D7A94    mov        eax,ebx
 005D7A96    mov        edx,dword ptr [eax]
 005D7A98    mov        ecx,dword ptr [eax+8]
 005D7A9B    mov        eax,dword ptr [eax+4]
 005D7A9E    xchg       eax,edx
 005D7A9F    call       005A7FF4
 005D7AA4    add        ebx,0C
 005D7AA7    dec        esi
<005D7AA8    jne        005D7A94
 005D7AAA    pop        esi
 005D7AAB    pop        ebx
 005D7AAC    ret
*}
end;

Initialization
//005D7AF8
{*
 005D7AF8    sub        dword ptr ds:[61F8DC],1
>005D7AFF    jae        005D7B10
 005D7B01    mov        edx,5D7A88; sub_005D7A88
 005D7B06    mov        eax,5D7B1C; 'RVCL'
 005D7B0B    call       005A7E10
 005D7B10    ret
*}
Finalization
//005D7AB0
{*
 005D7AB0    push       ebp
 005D7AB1    mov        ebp,esp
 005D7AB3    xor        eax,eax
 005D7AB5    push       ebp
 005D7AB6    push       5D7AEC
 005D7ABB    push       dword ptr fs:[eax]
 005D7ABE    mov        dword ptr fs:[eax],esp
 005D7AC1    inc        dword ptr ds:[61F8DC]
>005D7AC7    jne        005D7ADE
 005D7AC9    mov        eax,6178F4; gvar_006178F4:array[468] of TRaveFuncItem
 005D7ACE    mov        ecx,1D4
 005D7AD3    mov        edx,dword ptr ds:[5D05D0]; TRaveFuncItem
 005D7AD9    call       @FinalizeArray
 005D7ADE    xor        eax,eax
 005D7AE0    pop        edx
 005D7AE1    pop        ecx
 005D7AE2    pop        ecx
 005D7AE3    mov        dword ptr fs:[eax],edx
 005D7AE6    push       5D7AF3
 005D7AEB    ret
<005D7AEC    jmp        @HandleFinally
<005D7AF1    jmp        005D7AEB
 005D7AF3    pop        ebp
 005D7AF4    ret
*}
end.