{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit159;

interface

uses
  Classes, Windows, Graphics, ZTokenizer, _Unit146;

type
  TZMySQLNumberState = class(TZNumberState)
  public
    //procedure sub_00506C0C(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZMySQLQuoteState = class(TZQuoteState)
  public
    //procedure sub_00506E60(?:?; ?:?; ?:?); virtual;
    //procedure sub_00506F30(?:?; ?:?; ?:?); virtual;
    //procedure sub_00506FC8(?:?; ?:?; ?:?); virtual;
  end;
  TZMySQLCommentState = class(TZCppCommentState)
  public
    //procedure sub_00507098(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZMySQLSymbolState = class(TZSymbolState)
    //constructor Create(?:TZMySQLSymbolState; _Dv__:Boolean);
  end;
  TZMySQLWordState = class(TZGenericSQLWordState)
    //constructor Create(?:TZMySQLWordState; _Dv__:Boolean);
  end;
  TZMySQLTokenizer = class(TZTokenizer)
    //constructor Create(?:TZMySQLTokenizer; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//00506AAC
//procedure sub_00506AAC(?:AnsiString; ?:?);
//begin
{*
 00506AAC    push       ebp
 00506AAD    mov        ebp,esp
 00506AAF    push       0
 00506AB1    push       ebx
 00506AB2    push       esi
 00506AB3    push       edi
 00506AB4    mov        ebx,eax
 00506AB6    mov        esi,dword ptr [ebp+8]
 00506AB9    dec        esi
 00506ABA    xor        eax,eax
 00506ABC    push       ebp
 00506ABD    push       506B64
 00506AC2    push       dword ptr fs:[eax]
 00506AC5    mov        dword ptr fs:[eax],esp
 00506AC8    mov        eax,ebx
 00506ACA    call       @LStrClr
 00506ACF    mov        byte ptr [esi],0
>00506AD2    jmp        00506B38
 00506AD4    mov        al,byte ptr [esi]
 00506AD6    add        al,0D0
 00506AD8    sub        al,0A
>00506ADA    jb         00506AE8
 00506ADC    add        al,0F9
 00506ADE    sub        al,6
>00506AE0    jb         00506AE8
 00506AE2    add        al,0E6
 00506AE4    sub        al,6
>00506AE6    jae        00506B24
 00506AE8    lea        eax,[ebp-4]
 00506AEB    mov        dl,byte ptr [esi]
 00506AED    call       @LStrFromChar
 00506AF2    mov        edx,dword ptr [ebp-4]
 00506AF5    mov        eax,ebx
 00506AF7    call       @LStrCat
 00506AFC    mov        eax,dword ptr [ebp+8]
 00506AFF    cmp        byte ptr [eax-9],0
>00506B03    jne        00506B17
 00506B05    mov        al,byte ptr [esi]
 00506B07    add        al,0BF
 00506B09    sub        al,6
>00506B0B    jb         00506B17
 00506B0D    add        al,0E6
 00506B0F    sub        al,6
>00506B11    jb         00506B17
 00506B13    xor        eax,eax
>00506B15    jmp        00506B19
 00506B17    mov        al,1
 00506B19    mov        edx,dword ptr [ebp+8]
 00506B1C    mov        byte ptr [edx-9],al
 00506B1F    mov        byte ptr [esi],0
>00506B22    jmp        00506B38
 00506B24    mov        eax,dword ptr [ebp+8]
 00506B27    mov        eax,dword ptr [eax-8]
 00506B2A    mov        cx,1
 00506B2E    or         edx,0FFFFFFFF
 00506B31    mov        ebx,dword ptr [eax]
 00506B33    call       dword ptr [ebx+14]
>00506B36    jmp        00506B4E
 00506B38    mov        edx,esi
 00506B3A    mov        eax,dword ptr [ebp+8]
 00506B3D    mov        eax,dword ptr [eax-8]
 00506B40    mov        ecx,1
 00506B45    mov        edi,dword ptr [eax]
 00506B47    call       dword ptr [edi+0C]
 00506B4A    test       eax,eax
<00506B4C    jg         00506AD4
 00506B4E    xor        eax,eax
 00506B50    pop        edx
 00506B51    pop        ecx
 00506B52    pop        ecx
 00506B53    mov        dword ptr fs:[eax],edx
 00506B56    push       506B6B
 00506B5B    lea        eax,[ebp-4]
 00506B5E    call       @LStrClr
 00506B63    ret
<00506B64    jmp        @HandleFinally
<00506B69    jmp        00506B5B
 00506B6B    pop        edi
 00506B6C    pop        esi
 00506B6D    pop        ebx
 00506B6E    pop        ecx
 00506B6F    pop        ebp
 00506B70    ret
*}
//end;

//00506B74
//procedure sub_00506B74(?:AnsiString; ?:?);
//begin
{*
 00506B74    push       ebp
 00506B75    mov        ebp,esp
 00506B77    push       0
 00506B79    push       ebx
 00506B7A    push       esi
 00506B7B    push       edi
 00506B7C    mov        ebx,eax
 00506B7E    mov        esi,dword ptr [ebp+8]
 00506B81    dec        esi
 00506B82    xor        eax,eax
 00506B84    push       ebp
 00506B85    push       506BFD
 00506B8A    push       dword ptr fs:[eax]
 00506B8D    mov        dword ptr fs:[eax],esp
 00506B90    mov        eax,ebx
 00506B92    call       @LStrClr
 00506B97    mov        byte ptr [esi],0
>00506B9A    jmp        00506BD1
 00506B9C    mov        al,byte ptr [esi]
 00506B9E    add        al,0D0
 00506BA0    sub        al,0A
>00506BA2    jae        00506BBD
 00506BA4    lea        eax,[ebp-4]
 00506BA7    mov        dl,byte ptr [esi]
 00506BA9    call       @LStrFromChar
 00506BAE    mov        edx,dword ptr [ebp-4]
 00506BB1    mov        eax,ebx
 00506BB3    call       @LStrCat
 00506BB8    mov        byte ptr [esi],0
>00506BBB    jmp        00506BD1
 00506BBD    mov        eax,dword ptr [ebp+8]
 00506BC0    mov        eax,dword ptr [eax-8]
 00506BC3    mov        cx,1
 00506BC7    or         edx,0FFFFFFFF
 00506BCA    mov        ebx,dword ptr [eax]
 00506BCC    call       dword ptr [ebx+14]
>00506BCF    jmp        00506BE7
 00506BD1    mov        edx,esi
 00506BD3    mov        eax,dword ptr [ebp+8]
 00506BD6    mov        eax,dword ptr [eax-8]
 00506BD9    mov        ecx,1
 00506BDE    mov        edi,dword ptr [eax]
 00506BE0    call       dword ptr [edi+0C]
 00506BE3    test       eax,eax
<00506BE5    jg         00506B9C
 00506BE7    xor        eax,eax
 00506BE9    pop        edx
 00506BEA    pop        ecx
 00506BEB    pop        ecx
 00506BEC    mov        dword ptr fs:[eax],edx
 00506BEF    push       506C04
 00506BF4    lea        eax,[ebp-4]
 00506BF7    call       @LStrClr
 00506BFC    ret
<00506BFD    jmp        @HandleFinally
<00506C02    jmp        00506BF4
 00506C04    pop        edi
 00506C05    pop        esi
 00506C06    pop        ebx
 00506C07    pop        ecx
 00506C08    pop        ebp
 00506C09    ret
*}
//end;

//00506C0C
//procedure sub_00506C0C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00506C0C    push       ebp
 00506C0D    mov        ebp,esp
 00506C0F    push       ecx
 00506C10    mov        ecx,5
 00506C15    push       0
 00506C17    push       0
 00506C19    dec        ecx
<00506C1A    jne        00506C15
 00506C1C    xchg       ecx,dword ptr [ebp-4]
 00506C1F    push       ebx
 00506C20    push       esi
 00506C21    push       edi
 00506C22    mov        byte ptr [ebp-0A],cl
 00506C25    mov        dword ptr [ebp-8],edx
 00506C28    mov        esi,dword ptr [ebp+8]
 00506C2B    xor        eax,eax
 00506C2D    push       ebp
 00506C2E    push       506E37
 00506C33    push       dword ptr fs:[eax]
 00506C36    mov        dword ptr fs:[eax],esp
 00506C39    mov        byte ptr [ebp-9],0
 00506C3D    cmp        byte ptr [ebp-0A],2E
 00506C41    sete       bl
 00506C44    mov        eax,esi
 00506C46    mov        dl,byte ptr [ebp-0A]
 00506C49    call       @LStrFromChar
 00506C4E    mov        byte ptr [esi+4],0
 00506C52    mov        byte ptr [ebp-1],0
 00506C56    test       bl,bl
>00506C58    jne        00506CA9
 00506C5A    push       ebp
 00506C5B    lea        eax,[ebp-10]
 00506C5E    call       00506B74
 00506C63    pop        ecx
 00506C64    mov        edx,dword ptr [ebp-10]
 00506C67    mov        eax,esi
 00506C69    call       @LStrCat
 00506C6E    cmp        byte ptr [ebp-1],2E
>00506C72    jne        00506C7A
 00506C74    cmp        byte ptr [ebp-9],0
>00506C78    je         00506C7E
 00506C7A    xor        ebx,ebx
>00506C7C    jmp        00506C80
 00506C7E    mov        bl,1
 00506C80    test       bl,bl
>00506C82    je         00506CA9
 00506C84    lea        edx,[ebp-1]
 00506C87    mov        ecx,1
 00506C8C    mov        eax,dword ptr [ebp-8]
 00506C8F    mov        edi,dword ptr [eax]
 00506C91    call       dword ptr [edi+0C]
 00506C94    lea        eax,[ebp-14]
 00506C97    mov        dl,byte ptr [ebp-1]
 00506C9A    call       @LStrFromChar
 00506C9F    mov        edx,dword ptr [ebp-14]
 00506CA2    mov        eax,esi
 00506CA4    call       @LStrCat
 00506CA9    test       bl,bl
>00506CAB    je         00506CC1
 00506CAD    push       ebp
 00506CAE    lea        eax,[ebp-18]
 00506CB1    call       00506B74
 00506CB6    pop        ecx
 00506CB7    mov        edx,dword ptr [ebp-18]
 00506CBA    mov        eax,esi
 00506CBC    call       @LStrCat
 00506CC1    cmp        byte ptr [ebp-9],0
>00506CC5    jne        00506D7E
 00506CCB    mov        al,byte ptr [ebp-1]
 00506CCE    sub        al,45
>00506CD0    je         00506CDA
 00506CD2    sub        al,20
>00506CD4    jne        00506D7E
 00506CDA    lea        edx,[ebp-1]
 00506CDD    mov        ecx,1
 00506CE2    mov        eax,dword ptr [ebp-8]
 00506CE5    mov        ebx,dword ptr [eax]
 00506CE7    call       dword ptr [ebx+0C]
 00506CEA    lea        eax,[ebp-1C]
 00506CED    mov        dl,byte ptr [ebp-1]
 00506CF0    call       @LStrFromChar
 00506CF5    mov        edx,dword ptr [ebp-1C]
 00506CF8    mov        eax,esi
 00506CFA    call       @LStrCat
 00506CFF    mov        bl,1
 00506D01    lea        edx,[ebp-1]
 00506D04    mov        ecx,1
 00506D09    mov        eax,dword ptr [ebp-8]
 00506D0C    mov        edi,dword ptr [eax]
 00506D0E    call       dword ptr [edi+0C]
 00506D11    mov        al,byte ptr [ebp-1]
 00506D14    sub        al,2B
>00506D16    je         00506D22
 00506D18    sub        al,2
>00506D1A    je         00506D22
 00506D1C    add        al,0FD
 00506D1E    sub        al,0A
>00506D20    jae        00506D4D
 00506D22    push       dword ptr [esi]
 00506D24    lea        eax,[ebp-20]
 00506D27    mov        dl,byte ptr [ebp-1]
 00506D2A    call       @LStrFromChar
 00506D2F    push       dword ptr [ebp-20]
 00506D32    push       ebp
 00506D33    lea        eax,[ebp-24]
 00506D36    call       00506B74
 00506D3B    pop        ecx
 00506D3C    push       dword ptr [ebp-24]
 00506D3F    mov        eax,esi
 00506D41    mov        edx,3
 00506D46    call       @LStrCatN
>00506D4B    jmp        00506D7E
 00506D4D    push       esi
 00506D4E    mov        eax,dword ptr [esi]
 00506D50    call       @LStrLen
 00506D55    mov        ecx,eax
 00506D57    sub        ecx,1
>00506D5A    jno        00506D61
 00506D5C    call       @IntOver
 00506D61    mov        eax,dword ptr [esi]
 00506D63    mov        edx,1
 00506D68    call       @LStrCopy
 00506D6D    mov        cx,1
 00506D71    mov        edx,0FFFFFFFE
 00506D76    mov        eax,dword ptr [ebp-8]
 00506D79    mov        edi,dword ptr [eax]
 00506D7B    call       dword ptr [edi+14]
 00506D7E    mov        eax,dword ptr [esi]
 00506D80    mov        edx,506E50; '0'
 00506D85    call       @LStrCmp
>00506D8A    jne        00506DD4
 00506D8C    mov        al,byte ptr [ebp-1]
 00506D8F    sub        al,58
>00506D91    je         00506D97
 00506D93    sub        al,20
>00506D95    jne        00506DD4
 00506D97    lea        edx,[ebp-1]
 00506D9A    mov        ecx,1
 00506D9F    mov        eax,dword ptr [ebp-8]
 00506DA2    mov        edi,dword ptr [eax]
 00506DA4    call       dword ptr [edi+0C]
 00506DA7    push       dword ptr [esi]
 00506DA9    lea        eax,[ebp-28]
 00506DAC    mov        dl,byte ptr [ebp-1]
 00506DAF    call       @LStrFromChar
 00506DB4    push       dword ptr [ebp-28]
 00506DB7    push       ebp
 00506DB8    lea        eax,[ebp-2C]
 00506DBB    call       00506AAC
 00506DC0    pop        ecx
 00506DC1    push       dword ptr [ebp-2C]
 00506DC4    mov        eax,esi
 00506DC6    mov        edx,3
 00506DCB    call       @LStrCatN
 00506DD0    mov        byte ptr [ebp-9],1
 00506DD4    mov        eax,dword ptr [esi]
 00506DD6    mov        edx,506E5C; '.'
 00506DDB    call       @LStrCmp
>00506DE0    jne        00506E02
 00506DE2    mov        eax,dword ptr [ebp+0C]
 00506DE5    mov        ebx,dword ptr [eax+41C]
 00506DEB    test       ebx,ebx
>00506DED    je         00506E1C
 00506DEF    mov        eax,dword ptr [ebp+0C]
 00506DF2    push       eax
 00506DF3    push       esi
 00506DF4    mov        eax,ebx
 00506DF6    mov        cl,byte ptr [ebp-0A]
 00506DF9    mov        edx,dword ptr [ebp-8]
 00506DFC    mov        ebx,dword ptr [eax]
 00506DFE    call       dword ptr [ebx]
>00506E00    jmp        00506E1C
 00506E02    cmp        byte ptr [ebp-9],0
>00506E06    je         00506E0E
 00506E08    mov        byte ptr [esi+4],4
>00506E0C    jmp        00506E1C
 00506E0E    test       bl,bl
>00506E10    je         00506E18
 00506E12    mov        byte ptr [esi+4],2
>00506E16    jmp        00506E1C
 00506E18    mov        byte ptr [esi+4],3
 00506E1C    xor        eax,eax
 00506E1E    pop        edx
 00506E1F    pop        ecx
 00506E20    pop        ecx
 00506E21    mov        dword ptr fs:[eax],edx
 00506E24    push       506E3E
 00506E29    lea        eax,[ebp-2C]
 00506E2C    mov        edx,8
 00506E31    call       @LStrArrayClr
 00506E36    ret
<00506E37    jmp        @HandleFinally
<00506E3C    jmp        00506E29
 00506E3E    pop        edi
 00506E3F    pop        esi
 00506E40    pop        ebx
 00506E41    mov        esp,ebp
 00506E43    pop        ebp
 00506E44    ret        8
*}
//end;

//00506E60
//procedure sub_00506E60(?:?; ?:?; ?:?);
//begin
{*
 00506E60    push       ebp
 00506E61    mov        ebp,esp
 00506E63    add        esp,0FFFFFFF4
 00506E66    push       ebx
 00506E67    push       esi
 00506E68    push       edi
 00506E69    xor        ebx,ebx
 00506E6B    mov        dword ptr [ebp-0C],ebx
 00506E6E    mov        byte ptr [ebp-5],cl
 00506E71    mov        dword ptr [ebp-4],edx
 00506E74    mov        esi,dword ptr [ebp+8]
 00506E77    xor        eax,eax
 00506E79    push       ebp
 00506E7A    push       506F1D
 00506E7F    push       dword ptr fs:[eax]
 00506E82    mov        dword ptr fs:[eax],esp
 00506E85    mov        eax,esi
 00506E87    mov        dl,byte ptr [ebp-5]
 00506E8A    call       @LStrFromChar
 00506E8F    cmp        byte ptr [ebp-5],60
>00506E93    jne        00506E9B
 00506E95    mov        byte ptr [esi+4],8
>00506E99    jmp        00506E9F
 00506E9B    mov        byte ptr [esi+4],7
 00506E9F    xor        ebx,ebx
>00506EA1    jmp        00506EF3
 00506EA3    cmp        bl,byte ptr [ebp-5]
>00506EA6    jne        00506EC1
 00506EA8    mov        al,byte ptr [ebp-6]
 00506EAB    cmp        al,byte ptr [ebp-5]
>00506EAE    je         00506EC1
 00506EB0    mov        cx,1
 00506EB4    or         edx,0FFFFFFFF
 00506EB7    mov        eax,dword ptr [ebp-4]
 00506EBA    mov        ebx,dword ptr [eax]
 00506EBC    call       dword ptr [ebx+14]
>00506EBF    jmp        00506F07
 00506EC1    lea        eax,[ebp-0C]
 00506EC4    mov        dl,byte ptr [ebp-6]
 00506EC7    call       @LStrFromChar
 00506ECC    mov        edx,dword ptr [ebp-0C]
 00506ECF    mov        eax,esi
 00506ED1    call       @LStrCat
 00506ED6    cmp        bl,5C
>00506ED9    jne        00506EDF
 00506EDB    xor        ebx,ebx
>00506EDD    jmp        00506EF3
 00506EDF    cmp        bl,byte ptr [ebp-5]
>00506EE2    jne        00506EF0
 00506EE4    mov        al,byte ptr [ebp-6]
 00506EE7    cmp        al,byte ptr [ebp-5]
>00506EEA    jne        00506EF0
 00506EEC    xor        ebx,ebx
>00506EEE    jmp        00506EF3
 00506EF0    mov        bl,byte ptr [ebp-6]
 00506EF3    lea        edx,[ebp-6]
 00506EF6    mov        ecx,1
 00506EFB    mov        eax,dword ptr [ebp-4]
 00506EFE    mov        edi,dword ptr [eax]
 00506F00    call       dword ptr [edi+0C]
 00506F03    test       eax,eax
<00506F05    jg         00506EA3
 00506F07    xor        eax,eax
 00506F09    pop        edx
 00506F0A    pop        ecx
 00506F0B    pop        ecx
 00506F0C    mov        dword ptr fs:[eax],edx
 00506F0F    push       506F24
 00506F14    lea        eax,[ebp-0C]
 00506F17    call       @LStrClr
 00506F1C    ret
<00506F1D    jmp        @HandleFinally
<00506F22    jmp        00506F14
 00506F24    pop        edi
 00506F25    pop        esi
 00506F26    pop        ebx
 00506F27    mov        esp,ebp
 00506F29    pop        ebp
 00506F2A    ret        8
*}
//end;

//00506F30
//procedure sub_00506F30(?:?; ?:?; ?:?);
//begin
{*
 00506F30    push       ebp
 00506F31    mov        ebp,esp
 00506F33    push       0
 00506F35    push       0
 00506F37    push       0
 00506F39    push       ebx
 00506F3A    push       esi
 00506F3B    push       edi
 00506F3C    mov        ebx,ecx
 00506F3E    mov        esi,edx
 00506F40    mov        edi,dword ptr [ebp+8]
 00506F43    xor        eax,eax
 00506F45    push       ebp
 00506F46    push       506FB8
 00506F4B    push       dword ptr fs:[eax]
 00506F4E    mov        dword ptr fs:[eax],esp
 00506F51    mov        eax,ebx
 00506F53    sub        al,22
>00506F55    je         00506F5F
 00506F57    sub        al,5
>00506F59    je         00506F5F
 00506F5B    sub        al,39
>00506F5D    jne        00506F94
 00506F5F    lea        eax,[ebp-4]
 00506F62    mov        edx,ebx
 00506F64    call       @LStrFromChar
 00506F69    push       dword ptr [ebp-4]
 00506F6C    lea        edx,[ebp-8]
 00506F6F    mov        eax,esi
 00506F71    call       004BFF38
 00506F76    push       dword ptr [ebp-8]
 00506F79    lea        eax,[ebp-0C]
 00506F7C    mov        edx,ebx
 00506F7E    call       @LStrFromChar
 00506F83    push       dword ptr [ebp-0C]
 00506F86    mov        eax,edi
 00506F88    mov        edx,3
 00506F8D    call       @LStrCatN
>00506F92    jmp        00506F9D
 00506F94    mov        eax,edi
 00506F96    mov        edx,esi
 00506F98    call       @LStrAsg
 00506F9D    xor        eax,eax
 00506F9F    pop        edx
 00506FA0    pop        ecx
 00506FA1    pop        ecx
 00506FA2    mov        dword ptr fs:[eax],edx
 00506FA5    push       506FBF
 00506FAA    lea        eax,[ebp-0C]
 00506FAD    mov        edx,3
 00506FB2    call       @LStrArrayClr
 00506FB7    ret
<00506FB8    jmp        @HandleFinally
<00506FBD    jmp        00506FAA
 00506FBF    pop        edi
 00506FC0    pop        esi
 00506FC1    pop        ebx
 00506FC2    mov        esp,ebp
 00506FC4    pop        ebp
 00506FC5    ret        4
*}
//end;

//00506FC8
//procedure sub_00506FC8(?:?; ?:?; ?:?);
//begin
{*
 00506FC8    push       ebp
 00506FC9    mov        ebp,esp
 00506FCB    push       0
 00506FCD    push       ebx
 00506FCE    push       esi
 00506FCF    push       edi
 00506FD0    mov        ebx,ecx
 00506FD2    mov        edi,edx
 00506FD4    xor        eax,eax
 00506FD6    push       ebp
 00506FD7    push       507087
 00506FDC    push       dword ptr fs:[eax]
 00506FDF    mov        dword ptr fs:[eax],esp
 00506FE2    mov        eax,edi
 00506FE4    call       @LStrLen
 00506FE9    mov        esi,eax
 00506FEB    cmp        esi,2
>00506FEE    jl         00507067
 00506FF0    mov        eax,ebx
 00506FF2    sub        al,22
>00506FF4    je         00506FFE
 00506FF6    sub        al,5
>00506FF8    je         00506FFE
 00506FFA    sub        al,39
>00506FFC    jne        00507067
 00506FFE    mov        eax,1
 00507003    dec        eax
 00507004    test       edi,edi
>00507006    je         0050700D
 00507008    cmp        eax,dword ptr [edi-4]
>0050700B    jb         00507012
 0050700D    call       @BoundErr
 00507012    inc        eax
 00507013    cmp        bl,byte ptr [edi+eax-1]
>00507017    jne        00507067
 00507019    dec        esi
 0050701A    test       edi,edi
>0050701C    je         00507023
 0050701E    cmp        esi,dword ptr [edi-4]
>00507021    jb         00507028
 00507023    call       @BoundErr
 00507028    inc        esi
 00507029    cmp        bl,byte ptr [edi+esi-1]
>0050702D    jne        00507067
 0050702F    cmp        esi,2
>00507032    jle        0050705D
 00507034    lea        eax,[ebp-4]
 00507037    push       eax
 00507038    mov        ecx,esi
 0050703A    sub        ecx,2
>0050703D    jno        00507044
 0050703F    call       @IntOver
 00507044    mov        edx,2
 00507049    mov        eax,edi
 0050704B    call       @LStrCopy
 00507050    mov        eax,dword ptr [ebp-4]
 00507053    mov        edx,dword ptr [ebp+8]
 00507056    call       004C004C
>0050705B    jmp        00507071
 0050705D    mov        eax,dword ptr [ebp+8]
 00507060    call       @LStrClr
>00507065    jmp        00507071
 00507067    mov        eax,dword ptr [ebp+8]
 0050706A    mov        edx,edi
 0050706C    call       @LStrAsg
 00507071    xor        eax,eax
 00507073    pop        edx
 00507074    pop        ecx
 00507075    pop        ecx
 00507076    mov        dword ptr fs:[eax],edx
 00507079    push       50708E
 0050707E    lea        eax,[ebp-4]
 00507081    call       @LStrClr
 00507086    ret
<00507087    jmp        @HandleFinally
<0050708C    jmp        0050707E
 0050708E    pop        edi
 0050708F    pop        esi
 00507090    pop        ebx
 00507091    pop        ecx
 00507092    pop        ebp
 00507093    ret        4
*}
//end;

//00507098
//procedure sub_00507098(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00507098    push       ebp
 00507099    mov        ebp,esp
 0050709B    push       0
 0050709D    push       0
 0050709F    push       0
 005070A1    push       0
 005070A3    push       0
 005070A5    push       0
 005070A7    push       0
 005070A9    push       0
 005070AB    push       ebx
 005070AC    push       esi
 005070AD    push       edi
 005070AE    mov        ebx,ecx
 005070B0    mov        dword ptr [ebp-8],edx
 005070B3    mov        dword ptr [ebp-4],eax
 005070B6    mov        esi,dword ptr [ebp+8]
 005070B9    xor        eax,eax
 005070BB    push       ebp
 005070BC    push       507251
 005070C1    push       dword ptr fs:[eax]
 005070C4    mov        dword ptr fs:[eax],esp
 005070C7    mov        byte ptr [esi+4],0
 005070CB    mov        eax,esi
 005070CD    mov        edx,ebx
 005070CF    call       @LStrFromChar
 005070D4    cmp        bl,2D
>005070D7    jne        00507135
 005070D9    lea        edx,[ebp-9]
 005070DC    mov        ecx,1
 005070E1    mov        eax,dword ptr [ebp-8]
 005070E4    mov        edi,dword ptr [eax]
 005070E6    call       dword ptr [edi+0C]
 005070E9    test       eax,eax
>005070EB    jle        00507119
 005070ED    cmp        byte ptr [ebp-9],2D
>005070F1    jne        00507119
 005070F3    mov        byte ptr [esi+4],0C
 005070F7    lea        ecx,[ebp-10]
 005070FA    mov        edx,dword ptr [ebp-8]
 005070FD    mov        eax,dword ptr [ebp-4]
 00507100    call       004C0DB0
 00507105    mov        ecx,dword ptr [ebp-10]
 00507108    mov        eax,esi
 0050710A    mov        edx,50726C; '--'
 0050710F    call       @LStrCat3
>00507114    jmp        0050720D
 00507119    test       eax,eax
>0050711B    jle        0050720D
 00507121    mov        cx,1
 00507125    or         edx,0FFFFFFFF
 00507128    mov        eax,dword ptr [ebp-8]
 0050712B    mov        edi,dword ptr [eax]
 0050712D    call       dword ptr [edi+14]
>00507130    jmp        0050720D
 00507135    cmp        bl,23
>00507138    jne        00507160
 0050713A    mov        byte ptr [esi+4],0C
 0050713E    lea        ecx,[ebp-14]
 00507141    mov        edx,dword ptr [ebp-8]
 00507144    mov        eax,dword ptr [ebp-4]
 00507147    call       004C0DB0
 0050714C    mov        ecx,dword ptr [ebp-14]
 0050714F    mov        eax,esi
 00507151    mov        edx,507278; '#'
 00507156    call       @LStrCat3
>0050715B    jmp        0050720D
 00507160    cmp        bl,2F
>00507163    jne        0050720D
 00507169    lea        edx,[ebp-9]
 0050716C    mov        ecx,1
 00507171    mov        eax,dword ptr [ebp-8]
 00507174    mov        edi,dword ptr [eax]
 00507176    call       dword ptr [edi+0C]
 00507179    test       eax,eax
>0050717B    jle        005071FA
 0050717D    cmp        byte ptr [ebp-9],2A
>00507181    jne        005071FA
 00507183    lea        edx,[ebp-9]
 00507186    mov        ecx,1
 0050718B    mov        eax,dword ptr [ebp-8]
 0050718E    mov        edi,dword ptr [eax]
 00507190    call       dword ptr [edi+0C]
 00507193    test       eax,eax
>00507195    jle        005071D3
 00507197    cmp        byte ptr [ebp-9],21
>0050719B    je         005071D3
 0050719D    mov        byte ptr [esi+4],0C
 005071A1    push       507284; '/*'
 005071A6    lea        eax,[ebp-18]
 005071A9    mov        dl,byte ptr [ebp-9]
 005071AC    call       @LStrFromChar
 005071B1    push       dword ptr [ebp-18]
 005071B4    lea        ecx,[ebp-1C]
 005071B7    mov        edx,dword ptr [ebp-8]
 005071BA    mov        eax,dword ptr [ebp-4]
 005071BD    call       004C0D28
 005071C2    push       dword ptr [ebp-1C]
 005071C5    mov        eax,esi
 005071C7    mov        edx,3
 005071CC    call       @LStrCatN
>005071D1    jmp        0050720D
 005071D3    test       eax,eax
>005071D5    jle        005071DB
 005071D7    mov        byte ptr [esi+4],6
 005071DB    lea        ecx,[ebp-20]
 005071DE    mov        edx,dword ptr [ebp-8]
 005071E1    mov        eax,dword ptr [ebp-4]
 005071E4    call       004C0D28
 005071E9    mov        ecx,dword ptr [ebp-20]
 005071EC    mov        eax,esi
 005071EE    mov        edx,507290; '/*!'
 005071F3    call       @LStrCat3
>005071F8    jmp        0050720D
 005071FA    test       eax,eax
>005071FC    jle        0050720D
 005071FE    mov        cx,1
 00507202    or         edx,0FFFFFFFF
 00507205    mov        eax,dword ptr [ebp-8]
 00507208    mov        edi,dword ptr [eax]
 0050720A    call       dword ptr [edi+14]
 0050720D    cmp        byte ptr [esi+4],0
>00507211    jne        00507236
 00507213    mov        eax,dword ptr [ebp+0C]
 00507216    cmp        dword ptr [eax+41C],0
>0050721D    je         00507236
 0050721F    mov        eax,dword ptr [ebp+0C]
 00507222    push       eax
 00507223    push       esi
 00507224    mov        eax,dword ptr [ebp+0C]
 00507227    mov        eax,dword ptr [eax+41C]
 0050722D    mov        ecx,ebx
 0050722F    mov        edx,dword ptr [ebp-8]
 00507232    mov        ebx,dword ptr [eax]
 00507234    call       dword ptr [ebx]
 00507236    xor        eax,eax
 00507238    pop        edx
 00507239    pop        ecx
 0050723A    pop        ecx
 0050723B    mov        dword ptr fs:[eax],edx
 0050723E    push       507258
 00507243    lea        eax,[ebp-20]
 00507246    mov        edx,5
 0050724B    call       @LStrArrayClr
 00507250    ret
<00507251    jmp        @HandleFinally
<00507256    jmp        00507243
 00507258    pop        edi
 00507259    pop        esi
 0050725A    pop        ebx
 0050725B    mov        esp,ebp
 0050725D    pop        ebp
 0050725E    ret        8
*}
//end;

//00507294
//constructor TZMySQLSymbolState.Create(?:TZMySQLSymbolState; _Dv__:Boolean);
//begin
{*
 00507294    push       ebp
 00507295    mov        ebp,esp
 00507297    push       ebx
 00507298    push       esi
 00507299    test       dl,dl
>0050729B    je         005072A5
 0050729D    add        esp,0FFFFFFF0
 005072A0    call       @ClassCreate
 005072A5    mov        ebx,edx
 005072A7    mov        esi,eax
 005072A9    xor        edx,edx
 005072AB    mov        eax,esi
 005072AD    call       004C15E4
 005072B2    mov        edx,507320; '<='
 005072B7    mov        eax,esi
 005072B9    mov        ecx,dword ptr [eax]
 005072BB    call       dword ptr [ecx+4]; TZMySQLSymbolState.sub_004C1658
 005072BE    mov        edx,50732C; '>='
 005072C3    mov        eax,esi
 005072C5    mov        ecx,dword ptr [eax]
 005072C7    call       dword ptr [ecx+4]; TZMySQLSymbolState.sub_004C1658
 005072CA    mov        edx,507338; '<>'
 005072CF    mov        eax,esi
 005072D1    mov        ecx,dword ptr [eax]
 005072D3    call       dword ptr [ecx+4]; TZMySQLSymbolState.sub_004C1658
 005072D6    mov        edx,507344; '<<'
 005072DB    mov        eax,esi
 005072DD    mov        ecx,dword ptr [eax]
 005072DF    call       dword ptr [ecx+4]; TZMySQLSymbolState.sub_004C1658
 005072E2    mov        edx,507350; '>>'
 005072E7    mov        eax,esi
 005072E9    mov        ecx,dword ptr [eax]
 005072EB    call       dword ptr [ecx+4]; TZMySQLSymbolState.sub_004C1658
 005072EE    mov        edx,50735C; ':='
 005072F3    mov        eax,esi
 005072F5    mov        ecx,dword ptr [eax]
 005072F7    call       dword ptr [ecx+4]; TZMySQLSymbolState.sub_004C1658
 005072FA    mov        eax,esi
 005072FC    test       bl,bl
>005072FE    je         0050730F
 00507300    call       @AfterConstruction
 00507305    pop        dword ptr fs:[0]
 0050730C    add        esp,0C
 0050730F    mov        eax,esi
 00507311    pop        esi
 00507312    pop        ebx
 00507313    pop        ebp
 00507314    ret
*}
//end;

//00507360
//constructor TZMySQLWordState.Create(?:TZMySQLWordState; _Dv__:Boolean);
//begin
{*
 00507360    push       ebp
 00507361    mov        ebp,esp
 00507363    push       ebx
 00507364    push       esi
 00507365    test       dl,dl
>00507367    je         00507371
 00507369    add        esp,0FFFFFFF0
 0050736C    call       @ClassCreate
 00507371    mov        ebx,edx
 00507373    mov        esi,eax
 00507375    push       0
 00507377    mov        cl,0FF
 00507379    xor        edx,edx
 0050737B    mov        eax,esi
 0050737D    call       004C18EC
 00507382    push       1
 00507384    mov        cl,7A
 00507386    mov        dl,61
 00507388    mov        eax,esi
 0050738A    call       004C18EC
 0050738F    push       1
 00507391    mov        cl,5A
 00507393    mov        dl,41
 00507395    mov        eax,esi
 00507397    call       004C18EC
 0050739C    push       1
 0050739E    mov        cl,39
 005073A0    mov        dl,30
 005073A2    mov        eax,esi
 005073A4    call       004C18EC
 005073A9    push       1
 005073AB    mov        cl,24
 005073AD    mov        dl,24
 005073AF    mov        eax,esi
 005073B1    call       004C18EC
 005073B6    push       1
 005073B8    mov        cl,5F
 005073BA    mov        dl,5F
 005073BC    mov        eax,esi
 005073BE    call       004C18EC
 005073C3    push       1
 005073C5    mov        cl,0FF
 005073C7    mov        dl,0C0
 005073C9    mov        eax,esi
 005073CB    call       004C18EC
 005073D0    mov        eax,esi
 005073D2    test       bl,bl
>005073D4    je         005073E5
 005073D6    call       @AfterConstruction
 005073DB    pop        dword ptr fs:[0]
 005073E2    add        esp,0C
 005073E5    mov        eax,esi
 005073E7    pop        esi
 005073E8    pop        ebx
 005073E9    pop        ebp
 005073EA    ret
*}
//end;

//005073EC
//constructor TZMySQLTokenizer.Create(?:TZMySQLTokenizer; _Dv__:Boolean);
//begin
{*
 005073EC    push       ebp
 005073ED    mov        ebp,esp
 005073EF    push       ebx
 005073F0    push       esi
 005073F1    test       dl,dl
>005073F3    je         005073FD
 005073F5    add        esp,0FFFFFFF0
 005073F8    call       @ClassCreate
 005073FD    mov        ebx,edx
 005073FF    mov        esi,eax
 00507401    mov        dl,1
 00507403    mov        eax,[004C0658]; TZWhitespaceState
 00507408    call       TZWhitespaceState.Create; TZWhitespaceState.Create
 0050740D    mov        dword ptr [esi+420],eax; TZMySQLTokenizer.?f420:TZWhitespaceState
 00507413    mov        dl,1
 00507415    mov        eax,[00506974]; TZMySQLSymbolState
 0050741A    call       TZMySQLSymbolState.Create; TZMySQLSymbolState.Create
 0050741F    mov        dword ptr [esi+41C],eax; TZMySQLTokenizer.?f41C:TZGenericSQLSymbolState
 00507425    mov        dl,1
 00507427    mov        eax,[00506840]; TZMySQLNumberState
 0050742C    call       TObject.Create; TZMySQLNumberState.Create
 00507431    mov        dword ptr [esi+414],eax; TZMySQLTokenizer.?f414:TZNumberState
 00507437    mov        dl,1
 00507439    mov        eax,[005068A4]; TZMySQLQuoteState
 0050743E    call       TObject.Create; TZMySQLQuoteState.Create
 00507443    mov        dword ptr [esi+418],eax; TZMySQLTokenizer.?f418:TZGenericSQLQuoteState
 00507449    mov        dl,1
 0050744B    mov        eax,[005069DC]; TZMySQLWordState
 00507450    call       TZMySQLWordState.Create; TZMySQLWordState.Create
 00507455    mov        dword ptr [esi+424],eax; TZMySQLTokenizer.?f424:TZGenericSQLWordState
 0050745B    mov        dl,1
 0050745D    mov        eax,[00506910]; TZMySQLCommentState
 00507462    call       TObject.Create; TZMySQLCommentState.Create
 00507467    mov        dword ptr [esi+410],eax; TZMySQLTokenizer.?f410:TZCppCommentState
 0050746D    mov        eax,dword ptr [esi+41C]; TZMySQLTokenizer.?f41C:TZGenericSQLSymbolState
 00507473    push       eax
 00507474    mov        cl,0FF
 00507476    xor        edx,edx
 00507478    mov        eax,esi
 0050747A    call       004C19C8
 0050747F    mov        eax,dword ptr [esi+420]; TZMySQLTokenizer.?f420:TZWhitespaceState
 00507485    push       eax
 00507486    mov        cl,20
 00507488    xor        edx,edx
 0050748A    mov        eax,esi
 0050748C    call       004C19C8
 00507491    mov        eax,dword ptr [esi+424]; TZMySQLTokenizer.?f424:TZGenericSQLWordState
 00507497    push       eax
 00507498    mov        cl,7A
 0050749A    mov        dl,61
 0050749C    mov        eax,esi
 0050749E    call       004C19C8
 005074A3    mov        eax,dword ptr [esi+424]; TZMySQLTokenizer.?f424:TZGenericSQLWordState
 005074A9    push       eax
 005074AA    mov        cl,5A
 005074AC    mov        dl,41
 005074AE    mov        eax,esi
 005074B0    call       004C19C8
 005074B5    mov        eax,dword ptr [esi+424]; TZMySQLTokenizer.?f424:TZGenericSQLWordState
 005074BB    push       eax
 005074BC    mov        cl,0FF
 005074BE    mov        dl,0C0
 005074C0    mov        eax,esi
 005074C2    call       004C19C8
 005074C7    mov        eax,dword ptr [esi+424]; TZMySQLTokenizer.?f424:TZGenericSQLWordState
 005074CD    push       eax
 005074CE    mov        cl,5F
 005074D0    mov        dl,5F
 005074D2    mov        eax,esi
 005074D4    call       004C19C8
 005074D9    mov        eax,dword ptr [esi+424]; TZMySQLTokenizer.?f424:TZGenericSQLWordState
 005074DF    push       eax
 005074E0    mov        cl,24
 005074E2    mov        dl,24
 005074E4    mov        eax,esi
 005074E6    call       004C19C8
 005074EB    mov        eax,dword ptr [esi+414]; TZMySQLTokenizer.?f414:TZNumberState
 005074F1    push       eax
 005074F2    mov        cl,39
 005074F4    mov        dl,30
 005074F6    mov        eax,esi
 005074F8    call       004C19C8
 005074FD    mov        eax,dword ptr [esi+414]; TZMySQLTokenizer.?f414:TZNumberState
 00507503    push       eax
 00507504    mov        cl,2E
 00507506    mov        dl,2E
 00507508    mov        eax,esi
 0050750A    call       004C19C8
 0050750F    mov        eax,dword ptr [esi+418]; TZMySQLTokenizer.?f418:TZGenericSQLQuoteState
 00507515    push       eax
 00507516    mov        cl,22
 00507518    mov        dl,22
 0050751A    mov        eax,esi
 0050751C    call       004C19C8
 00507521    mov        eax,dword ptr [esi+418]; TZMySQLTokenizer.?f418:TZGenericSQLQuoteState
 00507527    push       eax
 00507528    mov        cl,27
 0050752A    mov        dl,27
 0050752C    mov        eax,esi
 0050752E    call       004C19C8
 00507533    mov        eax,dword ptr [esi+418]; TZMySQLTokenizer.?f418:TZGenericSQLQuoteState
 00507539    push       eax
 0050753A    mov        cl,60
 0050753C    mov        dl,60
 0050753E    mov        eax,esi
 00507540    call       004C19C8
 00507545    mov        eax,dword ptr [esi+410]; TZMySQLTokenizer.?f410:TZCppCommentState
 0050754B    push       eax
 0050754C    mov        cl,2F
 0050754E    mov        dl,2F
 00507550    mov        eax,esi
 00507552    call       004C19C8
 00507557    mov        eax,dword ptr [esi+410]; TZMySQLTokenizer.?f410:TZCppCommentState
 0050755D    push       eax
 0050755E    mov        cl,23
 00507560    mov        dl,23
 00507562    mov        eax,esi
 00507564    call       004C19C8
 00507569    mov        eax,dword ptr [esi+410]; TZMySQLTokenizer.?f410:TZCppCommentState
 0050756F    push       eax
 00507570    mov        cl,2D
 00507572    mov        dl,2D
 00507574    mov        eax,esi
 00507576    call       004C19C8
 0050757B    mov        eax,esi
 0050757D    test       bl,bl
>0050757F    je         00507590
 00507581    call       @AfterConstruction
 00507586    pop        dword ptr fs:[0]
 0050758D    add        esp,0C
 00507590    mov        eax,esi
 00507592    pop        esi
 00507593    pop        ebx
 00507594    pop        ebp
 00507595    ret
*}
//end;

end.