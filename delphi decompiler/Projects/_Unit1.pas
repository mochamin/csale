{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit1;

interface

uses
  Classes, Windows, Graphics;


implementation

//004071E4
function kernel32.GetModuleHandleA(lpModuleName:PAnsiChar):HMODULE; stdcall;
begin
{*
 004071E4    jmp        dword ptr ds:[620290]
*}
end;

//004071EC
function kernel32.LocalAlloc(flags:Integer; size:Integer):Pointer; stdcall;
begin
{*
 004071EC    jmp        dword ptr ds:[62028C]
*}
end;

//004071F4
function kernel32.TlsGetValue(TlsIndex:Integer):Pointer; stdcall;
begin
{*
 004071F4    jmp        dword ptr ds:[620288]
*}
end;

//004071FC
function kernel32.TlsSetValue(dwTlsIndex:DWORD; lpTlsValue:Pointer):LongBool; stdcall;
begin
{*
 004071FC    jmp        dword ptr ds:[620284]
*}
end;

//00407204
function AllocTlsBuffer(Size:Integer):Pointer;
begin
{*
 00407204    push       eax
 00407205    push       40
 00407207    call       kernel32.LocalAlloc
 0040720C    ret
*}
end;

//00407210
function GetTlsSize:Integer;
begin
{*
 00407210    mov        eax,14
 00407215    ret
*}
end;

//00407218
procedure InitThreadTLS;
begin
{*
 00407218    push       ebx
 00407219    call       GetTlsSize
 0040721E    mov        ebx,eax
 00407220    test       ebx,ebx
>00407222    je         0040725A
 00407224    cmp        dword ptr ds:[6140D8],0FFFFFFFF; TlsIndex:System.Integer
>0040722B    jne        00407237
 0040722D    mov        eax,0E2
 00407232    call       @RunError
 00407237    mov        eax,ebx
 00407239    call       AllocTlsBuffer
 0040723E    test       eax,eax
>00407240    jne        0040724E
 00407242    mov        eax,0E2
 00407247    call       @RunError
>0040724C    jmp        0040725A
 0040724E    push       eax
 0040724F    mov        eax,[006140D8]; TlsIndex:System.Integer
 00407254    push       eax
 00407255    call       kernel32.TlsSetValue
 0040725A    pop        ebx
 0040725B    ret
*}
end;

//0040725C
function @GetTls:Pointer;
begin
{*
 0040725C    mov        cl,byte ptr ds:[61D664]; ModuleIsLib:Boolean
 00407262    mov        eax,[006140D8]; TlsIndex:System.Integer
 00407267    test       cl,cl
>00407269    jne        00407291
 0040726B    mov        edx,dword ptr fs:[2C]
 00407272    mov        eax,dword ptr [edx+eax*4]
 00407275    ret
 00407276    call       InitThreadTLS
 0040727B    mov        eax,[006140D8]; TlsIndex:System.Integer
 00407280    push       eax
 00407281    call       kernel32.TlsGetValue
 00407286    test       eax,eax
>00407288    je         0040728B
 0040728A    ret
 0040728B    mov        eax,[0061D670]; tlsBuffer:Pointer
 00407290    ret
 00407291    push       eax
 00407292    call       kernel32.TlsGetValue
 00407297    test       eax,eax
<00407299    je         00407276
 0040729B    ret
*}
end;

//0040729C
procedure InitializeModule;
begin
{*
 0040729C    mov        eax,6140E0; Module:System.TLibModule
 004072A1    call       RegisterModule
 004072A6    ret
*}
end;

//004072A8
procedure @InitExe;
begin
{*
 004072A8    push       ebx
 004072A9    mov        ebx,eax
 004072AB    xor        eax,eax
 004072AD    mov        [006140D8],eax; TlsIndex:System.Integer
 004072B2    push       0
 004072B4    call       kernel32.GetModuleHandleA
 004072B9    mov        [0061D668],eax; HInstance:LongWord
 004072BE    mov        eax,[0061D668]; HInstance:LongWord
 004072C3    mov        [006140E4],eax
 004072C8    xor        eax,eax
 004072CA    mov        [006140E8],eax
 004072CF    xor        eax,eax
 004072D1    mov        [006140EC],eax
 004072D6    call       InitializeModule
 004072DB    mov        edx,6140E0; Module:System.TLibModule
 004072E0    mov        eax,ebx
 004072E2    call       @StartExe
 004072E7    pop        ebx
 004072E8    ret
*}
end;

end.