{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit141;

interface

uses
  Classes, Windows, Graphics, Types;

type
  TZNativeLibraryLoader = class(TObject)
  public
    f4:TStringDynArray;//f4
    f8:HMODULE;//f8
    fC:byte;//fC
    destructor Destroy; virtual;
    //function sub_004EBCEC:?; virtual;
    procedure sub_004EBE10; virtual;
    //function sub_004EBCD0:?; virtual;
    procedure sub_004EBCDC; virtual;
  end;

implementation

{$R *.DFM}

//004EBB94
//constructor TZSybaseNativeLibraryLoader.Create(?:TZNativeLibraryLoader; _Dv__:Boolean; ?:?);
//begin
{*
 004EBB94    push       ebp
 004EBB95    mov        ebp,esp
 004EBB97    add        esp,0FFFFFFF8
 004EBB9A    push       ebx
 004EBB9B    push       esi
 004EBB9C    push       edi
 004EBB9D    test       dl,dl
>004EBB9F    je         004EBBA9
 004EBBA1    add        esp,0FFFFFFF0
 004EBBA4    call       @ClassCreate
 004EBBA9    mov        ebx,dword ptr [ebp+8]
 004EBBAC    test       ebx,ebx
>004EBBAE    js         004EBBB7
 004EBBB0    mov        esi,dword ptr [ecx+ebx*4]
 004EBBB3    dec        ebx
 004EBBB4    push       esi
<004EBBB5    jns        004EBBB0
 004EBBB7    mov        ecx,esp
 004EBBB9    mov        dword ptr [ebp-8],ecx
 004EBBBC    mov        byte ptr [ebp-1],dl
 004EBBBF    mov        edi,eax
 004EBBC1    mov        ecx,dword ptr [ebp+8]
 004EBBC4    inc        ecx
 004EBBC5    mov        eax,dword ptr [ebp-8]
 004EBBC8    mov        edx,dword ptr ds:[4010F8]; String
 004EBBCE    call       004058A4
 004EBBD3    xor        eax,eax
 004EBBD5    push       ebp
 004EBBD6    push       4EBC69
 004EBBDB    push       dword ptr fs:[eax]
 004EBBDE    mov        dword ptr fs:[eax],esp
 004EBBE1    mov        eax,dword ptr [ebp+8]
 004EBBE4    add        eax,1
>004EBBE7    jno        004EBBEE
 004EBBE9    call       @IntOver
 004EBBEE    push       eax
 004EBBEF    lea        eax,[edi+4]; TZSybaseNativeLibraryLoader.?f4:TStringDynArray
 004EBBF2    mov        ecx,1
 004EBBF7    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 004EBBFD    call       @DynArraySetLength
 004EBC02    add        esp,4
 004EBC05    mov        esi,dword ptr [ebp+8]
 004EBC08    test       esi,esi
>004EBC0A    jl         004EBC40
 004EBC0C    inc        esi
 004EBC0D    xor        ebx,ebx
 004EBC0F    mov        eax,dword ptr [edi+4]; TZSybaseNativeLibraryLoader.?f4:TStringDynArray
 004EBC12    test       eax,eax
>004EBC14    je         004EBC1B
 004EBC16    cmp        ebx,dword ptr [eax-4]
>004EBC19    jb         004EBC20
 004EBC1B    call       @BoundErr
 004EBC20    lea        eax,[eax+ebx*4]
 004EBC23    test       ebx,ebx
>004EBC25    jl         004EBC2C
 004EBC27    cmp        ebx,dword ptr [ebp+8]
>004EBC2A    jle        004EBC31
 004EBC2C    call       @BoundErr
 004EBC31    mov        edx,dword ptr [ebp-8]
 004EBC34    mov        edx,dword ptr [edx+ebx*4]
 004EBC37    call       @LStrAsg
 004EBC3C    inc        ebx
 004EBC3D    dec        esi
<004EBC3E    jne        004EBC0F
 004EBC40    xor        eax,eax
 004EBC42    mov        dword ptr [edi+8],eax; TZSybaseNativeLibraryLoader.?f8:HMODULE
 004EBC45    mov        byte ptr [edi+0C],0; TZSybaseNativeLibraryLoader.?fC:byte
 004EBC49    xor        eax,eax
 004EBC4B    pop        edx
 004EBC4C    pop        ecx
 004EBC4D    pop        ecx
 004EBC4E    mov        dword ptr fs:[eax],edx
 004EBC51    push       4EBC70
 004EBC56    mov        eax,dword ptr [ebp-8]
 004EBC59    mov        ecx,dword ptr [ebp+8]
 004EBC5C    inc        ecx
 004EBC5D    mov        edx,dword ptr ds:[4010F8]; String
 004EBC63    call       @FinalizeArray
 004EBC68    ret
<004EBC69    jmp        @HandleFinally
<004EBC6E    jmp        004EBC56
 004EBC70    mov        eax,edi
 004EBC72    cmp        byte ptr [ebp-1],0
>004EBC76    je         004EBC86
 004EBC78    call       @AfterConstruction
 004EBC7D    mov        eax,dword ptr [ebp-24]
 004EBC80    mov        fs:[00000000],eax
 004EBC86    mov        eax,edi
 004EBC88    mov        edi,dword ptr [ebp-14]
 004EBC8B    mov        esi,dword ptr [ebp-10]
 004EBC8E    mov        ebx,dword ptr [ebp-0C]
 004EBC91    mov        esp,ebp
 004EBC93    pop        ebp
 004EBC94    ret        4
*}
//end;

//004EBC98
destructor TZNativeLibraryLoader.Destroy;
begin
{*
 004EBC98    push       ebp
 004EBC99    mov        ebp,esp
 004EBC9B    push       ebx
 004EBC9C    push       esi
 004EBC9D    call       @BeforeDestruction
 004EBCA2    mov        ebx,edx
 004EBCA4    mov        esi,eax
 004EBCA6    cmp        byte ptr [esi+0C],0; TZNativeLibraryLoader.?fC:byte
>004EBCAA    je         004EBCB3
 004EBCAC    mov        eax,esi
 004EBCAE    mov        edx,dword ptr [eax]
 004EBCB0    call       dword ptr [edx+4]; TZNativeLibraryLoader.sub_004EBE10
 004EBCB3    mov        edx,ebx
 004EBCB5    and        dl,0FC
 004EBCB8    mov        eax,esi
 004EBCBA    call       TObject.Destroy
 004EBCBF    test       bl,bl
>004EBCC1    jle        004EBCCA
 004EBCC3    mov        eax,esi
 004EBCC5    call       @ClassDestroy
 004EBCCA    pop        esi
 004EBCCB    pop        ebx
 004EBCCC    pop        ebp
 004EBCCD    ret
*}
end;

//004EBCD0
//function sub_004EBCD0:?;
//begin
{*
 004EBCD0    push       ebp
 004EBCD1    mov        ebp,esp
 004EBCD3    mov        edx,dword ptr [eax]
 004EBCD5    call       dword ptr [edx]; TZNativeLibraryLoader.sub_004EBCEC
 004EBCD7    pop        ebp
 004EBCD8    ret
*}
//end;

//004EBCDC
procedure sub_004EBCDC;
begin
{*
 004EBCDC    push       ebp
 004EBCDD    mov        ebp,esp
 004EBCDF    cmp        byte ptr [eax+0C],0; TZASANativeLibraryLoader.?fC:byte
>004EBCE3    jne        004EBCEA
 004EBCE5    mov        edx,dword ptr [eax]
 004EBCE7    call       dword ptr [edx+8]; TZASANativeLibraryLoader.sub_0054DBD8
 004EBCEA    pop        ebp
 004EBCEB    ret
*}
end;

//004EBCEC
//function sub_004EBCEC:?;
//begin
{*
 004EBCEC    push       ebp
 004EBCED    mov        ebp,esp
 004EBCEF    xor        ecx,ecx
 004EBCF1    push       ecx
 004EBCF2    push       ecx
 004EBCF3    push       ecx
 004EBCF4    push       ecx
 004EBCF5    push       ecx
 004EBCF6    push       ecx
 004EBCF7    push       ebx
 004EBCF8    push       esi
 004EBCF9    push       edi
 004EBCFA    mov        ebx,eax
 004EBCFC    xor        eax,eax
 004EBCFE    push       ebp
 004EBCFF    push       4EBDF1
 004EBD04    push       dword ptr fs:[eax]
 004EBD07    mov        dword ptr fs:[eax],esp
 004EBD0A    mov        byte ptr [ebx+0C],0; TZASANativeLibraryLoader.?fC:byte
 004EBD0E    lea        eax,[ebp-4]
 004EBD11    call       @LStrClr
 004EBD16    lea        eax,[ebp-8]
 004EBD19    call       @LStrClr
 004EBD1E    cmp        dword ptr [ebx+8],0; TZASANativeLibraryLoader.?f8:HMODULE
>004EBD22    jne        004EBD90
 004EBD24    mov        eax,dword ptr [ebx+4]; TZASANativeLibraryLoader.?f4:TStringDynArray
 004EBD27    call       @DynArrayHigh
 004EBD2C    mov        esi,eax
 004EBD2E    test       esi,esi
>004EBD30    jl         004EBD90
 004EBD32    inc        esi
 004EBD33    xor        edi,edi
 004EBD35    lea        eax,[ebp-4]
 004EBD38    mov        edx,dword ptr [ebx+4]; TZASANativeLibraryLoader.?f4:TStringDynArray
 004EBD3B    test       edx,edx
>004EBD3D    je         004EBD44
 004EBD3F    cmp        edi,dword ptr [edx-4]
>004EBD42    jb         004EBD49
 004EBD44    call       @BoundErr
 004EBD49    mov        edx,dword ptr [edx+edi*4]
 004EBD4C    call       @LStrLAsg
 004EBD51    mov        eax,dword ptr [ebp-4]
 004EBD54    call       @LStrToPChar
 004EBD59    push       eax
 004EBD5A    call       kernel32.LoadLibraryA
 004EBD5F    mov        dword ptr [ebx+8],eax; TZASANativeLibraryLoader.?f8:HMODULE
 004EBD62    cmp        dword ptr [ebx+8],0; TZASANativeLibraryLoader.?f8:HMODULE
>004EBD66    je         004EBD6E
 004EBD68    mov        byte ptr [ebx+0C],1; TZASANativeLibraryLoader.?fC:byte
>004EBD6C    jmp        004EBD90
 004EBD6E    cmp        dword ptr [ebp-8],0
>004EBD72    je         004EBD81
 004EBD74    lea        eax,[ebp-8]
 004EBD77    mov        edx,4EBE0C; ', '
 004EBD7C    call       @LStrCat
 004EBD81    lea        eax,[ebp-8]
 004EBD84    mov        edx,dword ptr [ebp-4]
 004EBD87    call       @LStrCat
 004EBD8C    inc        edi
 004EBD8D    dec        esi
<004EBD8E    jne        004EBD35
 004EBD90    cmp        byte ptr [ebx+0C],0; TZASANativeLibraryLoader.?fC:byte
>004EBD94    jne        004EBDD4
 004EBD96    lea        eax,[ebp-0C]
 004EBD99    push       eax
 004EBD9A    lea        edx,[ebp-10]
 004EBD9D    mov        eax,[0061B200]; ^#122.sResString21:TResStringRec
 004EBDA2    call       LoadResString
 004EBDA7    mov        eax,dword ptr [ebp-10]
 004EBDAA    push       eax
 004EBDAB    mov        eax,dword ptr [ebp-8]
 004EBDAE    mov        dword ptr [ebp-18],eax
 004EBDB1    mov        byte ptr [ebp-14],0B
 004EBDB5    lea        edx,[ebp-18]
 004EBDB8    xor        ecx,ecx
 004EBDBA    pop        eax
 004EBDBB    call       Format
 004EBDC0    mov        ecx,dword ptr [ebp-0C]
 004EBDC3    mov        dl,1
 004EBDC5    mov        eax,[004087B0]; Exception
 004EBDCA    call       Exception.Create; Exception.Create
 004EBDCF    call       @RaiseExcept
 004EBDD4    mov        bl,1
 004EBDD6    xor        eax,eax
 004EBDD8    pop        edx
 004EBDD9    pop        ecx
 004EBDDA    pop        ecx
 004EBDDB    mov        dword ptr fs:[eax],edx
 004EBDDE    push       4EBDF8
 004EBDE3    lea        eax,[ebp-10]
 004EBDE6    mov        edx,4
 004EBDEB    call       @LStrArrayClr
 004EBDF0    ret
<004EBDF1    jmp        @HandleFinally
<004EBDF6    jmp        004EBDE3
 004EBDF8    mov        eax,ebx
 004EBDFA    pop        edi
 004EBDFB    pop        esi
 004EBDFC    pop        ebx
 004EBDFD    mov        esp,ebp
 004EBDFF    pop        ebp
 004EBE00    ret
*}
//end;

//004EBE10
procedure sub_004EBE10;
begin
{*
 004EBE10    push       ebp
 004EBE11    mov        ebp,esp
 004EBE13    push       ebx
 004EBE14    mov        ebx,eax
 004EBE16    mov        eax,dword ptr [ebx+8]; TZNativeLibraryLoader.?f8:HMODULE
 004EBE19    test       eax,eax
>004EBE1B    je         004EBE29
 004EBE1D    cmp        byte ptr [ebx+0C],0; TZNativeLibraryLoader.?fC:byte
>004EBE21    je         004EBE29
 004EBE23    push       eax
 004EBE24    call       kernel32.FreeLibrary
 004EBE29    xor        eax,eax
 004EBE2B    mov        dword ptr [ebx+8],eax; TZNativeLibraryLoader.?f8:HMODULE
 004EBE2E    mov        byte ptr [ebx+0C],0; TZNativeLibraryLoader.?fC:byte
 004EBE32    pop        ebx
 004EBE33    pop        ebp
 004EBE34    ret
*}
end;

//004EBE38
//function sub_004EBE38(?:TZNativeLibraryLoader):?;
//begin
{*
 004EBE38    push       ebp
 004EBE39    mov        ebp,esp
 004EBE3B    push       edx
 004EBE3C    mov        eax,dword ptr [eax+8]; TZNativeLibraryLoader.?f8:HMODULE
 004EBE3F    push       eax
 004EBE40    call       kernel32.GetProcAddress
 004EBE45    pop        ebp
 004EBE46    ret
*}
//end;

end.