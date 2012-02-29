{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZPlainAdo;

interface

uses
  Classes, Windows, Graphics;

type
  CoConnection = class(TObject)
  end;
  CoCommand = class(TObject)
  end;
  CoRecordset = class(TObject)
  end;

implementation

{$R *.DFM}

//004DE7E0
//procedure sub_004DE7E0(?:CoConnection; ?:?);
//begin
{*
 004DE7E0    push       ebp
 004DE7E1    mov        ebp,esp
 004DE7E3    push       0
 004DE7E5    push       ebx
 004DE7E6    mov        ebx,edx
 004DE7E8    xor        eax,eax
 004DE7EA    push       ebp
 004DE7EB    push       4DE828
 004DE7F0    push       dword ptr fs:[eax]
 004DE7F3    mov        dword ptr fs:[eax],esp
 004DE7F6    lea        edx,[ebp-4]
 004DE7F9    mov        eax,615D44
 004DE7FE    call       0049425C
 004DE803    mov        edx,dword ptr [ebp-4]
 004DE806    mov        eax,ebx
 004DE808    mov        ecx,4DE834; ['{00000515-0000-0010-8000-00AA006D2EA4}']
 004DE80D    call       @IntfCast
 004DE812    xor        eax,eax
 004DE814    pop        edx
 004DE815    pop        ecx
 004DE816    pop        ecx
 004DE817    mov        dword ptr fs:[eax],edx
 004DE81A    push       4DE82F
 004DE81F    lea        eax,[ebp-4]
 004DE822    call       @IntfClear
 004DE827    ret
<004DE828    jmp        @HandleFinally
<004DE82D    jmp        004DE81F
 004DE82F    pop        ebx
 004DE830    pop        ecx
 004DE831    pop        ebp
 004DE832    ret
*}
//end;

//004DE844
//procedure sub_004DE844(?:CoCommand; ?:?);
//begin
{*
 004DE844    push       ebp
 004DE845    mov        ebp,esp
 004DE847    push       0
 004DE849    push       ebx
 004DE84A    mov        ebx,edx
 004DE84C    xor        eax,eax
 004DE84E    push       ebp
 004DE84F    push       4DE88C
 004DE854    push       dword ptr fs:[eax]
 004DE857    mov        dword ptr fs:[eax],esp
 004DE85A    lea        edx,[ebp-4]
 004DE85D    mov        eax,615D54
 004DE862    call       0049425C
 004DE867    mov        edx,dword ptr [ebp-4]
 004DE86A    mov        eax,ebx
 004DE86C    mov        ecx,4DE898; ['{B08400BD-F9D1-4D02-B856-71D5DBA123E9}']
 004DE871    call       @IntfCast
 004DE876    xor        eax,eax
 004DE878    pop        edx
 004DE879    pop        ecx
 004DE87A    pop        ecx
 004DE87B    mov        dword ptr fs:[eax],edx
 004DE87E    push       4DE893
 004DE883    lea        eax,[ebp-4]
 004DE886    call       @IntfClear
 004DE88B    ret
<004DE88C    jmp        @HandleFinally
<004DE891    jmp        004DE883
 004DE893    pop        ebx
 004DE894    pop        ecx
 004DE895    pop        ebp
 004DE896    ret
*}
//end;

//004DE8A8
//procedure sub_004DE8A8(?:CoRecordset; ?:?);
//begin
{*
 004DE8A8    push       ebp
 004DE8A9    mov        ebp,esp
 004DE8AB    push       0
 004DE8AD    push       ebx
 004DE8AE    mov        ebx,edx
 004DE8B0    xor        eax,eax
 004DE8B2    push       ebp
 004DE8B3    push       4DE8F0
 004DE8B8    push       dword ptr fs:[eax]
 004DE8BB    mov        dword ptr fs:[eax],esp
 004DE8BE    lea        edx,[ebp-4]
 004DE8C1    mov        eax,615D64
 004DE8C6    call       0049425C
 004DE8CB    mov        edx,dword ptr [ebp-4]
 004DE8CE    mov        eax,ebx
 004DE8D0    mov        ecx,4DE8FC; ['{0000050E-0000-0010-8000-00AA006D2EA4}']
 004DE8D5    call       @IntfCast
 004DE8DA    xor        eax,eax
 004DE8DC    pop        edx
 004DE8DD    pop        ecx
 004DE8DE    pop        ecx
 004DE8DF    mov        dword ptr fs:[eax],edx
 004DE8E2    push       4DE8F7
 004DE8E7    lea        eax,[ebp-4]
 004DE8EA    call       @IntfClear
 004DE8EF    ret
<004DE8F0    jmp        @HandleFinally
<004DE8F5    jmp        004DE8E7
 004DE8F7    pop        ebx
 004DE8F8    pop        ecx
 004DE8F9    pop        ebp
 004DE8FA    ret
*}
//end;

end.