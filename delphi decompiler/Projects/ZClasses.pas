{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZClasses;

interface

uses
  Classes, Windows, Graphics;

type
  TZAbstractObject = class(TInterfacedObject)
  public
    //function sub_004BCA48(?:?):?; virtual;
    procedure sub_004BCAF4(); virtual;
    //procedure sub_004BCB70(?:?); virtual;
  end;

implementation

{$R *.DFM}

//004BCA48
//function sub_004BCA48(?:?):?;
//begin
{*
 004BCA48    push       ebp
 004BCA49    mov        ebp,esp
 004BCA4B    push       0
 004BCA4D    push       0
 004BCA4F    push       ebx
 004BCA50    push       esi
 004BCA51    mov        esi,edx
 004BCA53    mov        ebx,eax
 004BCA55    xor        eax,eax
 004BCA57    push       ebp
 004BCA58    push       4BCACE
 004BCA5D    push       dword ptr fs:[eax]
 004BCA60    mov        dword ptr fs:[eax],esp
 004BCA63    test       esi,esi
>004BCA65    je         004BCAAB
 004BCA67    mov        eax,ebx
 004BCA69    test       eax,eax
>004BCA6B    je         004BCA70
 004BCA6D    sub        eax,0FFFFFFF8
 004BCA70    cmp        esi,eax
>004BCA72    je         004BCAA5
 004BCA74    lea        eax,[ebp-4]
 004BCA77    mov        edx,ebx
 004BCA79    test       edx,edx
>004BCA7B    je         004BCA80
 004BCA7D    sub        edx,0FFFFFFF8
 004BCA80    mov        ecx,4BCAE0; ['{00000000-0000-0000-C000-000000000046}']
 004BCA85    call       @IntfCast
 004BCA8A    mov        ebx,dword ptr [ebp-4]
 004BCA8D    lea        eax,[ebp-8]
 004BCA90    mov        edx,esi
 004BCA92    mov        ecx,4BCAE0; ['{00000000-0000-0000-C000-000000000046}']
 004BCA97    call       @IntfCast
 004BCA9C    cmp        ebx,dword ptr [ebp-8]
>004BCA9F    je         004BCAA5
 004BCAA1    xor        eax,eax
>004BCAA3    jmp        004BCAA7
 004BCAA5    mov        al,1
 004BCAA7    mov        ebx,eax
>004BCAA9    jmp        004BCAAD
 004BCAAB    xor        ebx,ebx
 004BCAAD    xor        eax,eax
 004BCAAF    pop        edx
 004BCAB0    pop        ecx
 004BCAB1    pop        ecx
 004BCAB2    mov        dword ptr fs:[eax],edx
 004BCAB5    push       4BCAD5
 004BCABA    lea        eax,[ebp-8]
 004BCABD    mov        edx,dword ptr ds:[4011A8]; IInterface
 004BCAC3    mov        ecx,2
 004BCAC8    call       @FinalizeArray
 004BCACD    ret
<004BCACE    jmp        @HandleFinally
<004BCAD3    jmp        004BCABA
 004BCAD5    mov        eax,ebx
 004BCAD7    pop        esi
 004BCAD8    pop        ebx
 004BCAD9    pop        ecx
 004BCADA    pop        ecx
 004BCADB    pop        ebp
 004BCADC    ret
*}
//end;

//004BCAF4
procedure sub_004BCAF4();
begin
{*
 004BCAF4    push       ebp
 004BCAF5    mov        ebp,esp
 004BCAF7    push       0
 004BCAF9    push       ebx
 004BCAFA    xor        eax,eax
 004BCAFC    push       ebp
 004BCAFD    push       4BCB46
 004BCB02    push       dword ptr fs:[eax]
 004BCB05    mov        dword ptr fs:[eax],esp
 004BCB08    lea        edx,[ebp-4]
 004BCB0B    mov        eax,[0061BA64]; ^#122.sResString4:TResStringRec
 004BCB10    call       LoadResString
 004BCB15    mov        ecx,dword ptr [ebp-4]
 004BCB18    mov        dl,1
 004BCB1A    mov        eax,[004087B0]; Exception
 004BCB1F    call       Exception.Create; Exception.Create
 004BCB24    call       @RaiseExcept
 004BCB29    mov        eax,ebx
 004BCB2B    call       @IntfClear
 004BCB30    xor        eax,eax
 004BCB32    pop        edx
 004BCB33    pop        ecx
 004BCB34    pop        ecx
 004BCB35    mov        dword ptr fs:[eax],edx
 004BCB38    push       4BCB4D
 004BCB3D    lea        eax,[ebp-4]
 004BCB40    call       @LStrClr
 004BCB45    ret
<004BCB46    jmp        @HandleFinally
<004BCB4B    jmp        004BCB3D
 004BCB4D    pop        ebx
 004BCB4E    pop        ecx
 004BCB4F    pop        ebp
 004BCB50    ret
*}
end;

//004BCB70
//procedure sub_004BCB70(?:?);
//begin
{*
 004BCB70    push       ebp
 004BCB71    mov        ebp,esp
 004BCB73    add        esp,0FFFFFEF0
 004BCB79    push       ebx
 004BCB7A    push       esi
 004BCB7B    mov        esi,edx
 004BCB7D    mov        ebx,eax
 004BCB7F    push       esi
 004BCB80    lea        edx,[ebp-110]
 004BCB86    mov        eax,dword ptr [ebx]
 004BCB88    call       TObject.ClassName
 004BCB8D    lea        eax,[ebp-110]
 004BCB93    mov        dword ptr [ebp-10],eax
 004BCB96    mov        byte ptr [ebp-0C],4
 004BCB9A    mov        dword ptr [ebp-8],ebx
 004BCB9D    mov        byte ptr [ebp-4],5
 004BCBA1    lea        edx,[ebp-10]
 004BCBA4    mov        ecx,1
 004BCBA9    mov        eax,4BCBC4; '%s <%p>'
 004BCBAE    call       Format
 004BCBB3    pop        esi
 004BCBB4    pop        ebx
 004BCBB5    mov        esp,ebp
 004BCBB7    pop        ebp
 004BCBB8    ret
*}
//end;

end.