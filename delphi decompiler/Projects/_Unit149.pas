{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit149;

interface

uses
  Classes, Windows, Graphics, ZTokenizer, _Unit146;

type
  TZSybaseNumberState = class(TZNumberState)
  public
    //procedure sub_004F7900(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZSybaseQuoteState = class(TZQuoteState)
  public
    //procedure sub_004F7B54(?:?; ?:?; ?:?); virtual;
    //procedure sub_004F7C2C(?:?; ?:?; ?:?); virtual;
    //procedure sub_004F7CE8(?:?; ?:?; ?:?); virtual;
  end;
  TZSybaseCommentState = class(TZCppCommentState)
  public
    //procedure sub_004F7DD8(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZSybaseSymbolState = class(TZSymbolState)
    //constructor Create(?:TZSybaseSymbolState; _Dv__:Boolean);
  end;
  TZSybaseWordState = class(TZGenericSQLWordState)
    //constructor Create(?:TZSybaseWordState; _Dv__:Boolean);
  end;
  TZSybaseTokenizer = class(TZTokenizer)
    //constructor Create(?:TZSybaseTokenizer; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//004F77A0
//procedure sub_004F77A0(?:AnsiString; ?:?);
//begin
{*
 004F77A0    push       ebp
 004F77A1    mov        ebp,esp
 004F77A3    push       0
 004F77A5    push       ebx
 004F77A6    push       esi
 004F77A7    push       edi
 004F77A8    mov        ebx,eax
 004F77AA    mov        esi,dword ptr [ebp+8]
 004F77AD    dec        esi
 004F77AE    xor        eax,eax
 004F77B0    push       ebp
 004F77B1    push       4F7858
 004F77B6    push       dword ptr fs:[eax]
 004F77B9    mov        dword ptr fs:[eax],esp
 004F77BC    mov        eax,ebx
 004F77BE    call       @LStrClr
 004F77C3    mov        byte ptr [esi],0
>004F77C6    jmp        004F782C
 004F77C8    mov        al,byte ptr [esi]
 004F77CA    add        al,0D0
 004F77CC    sub        al,0A
>004F77CE    jb         004F77DC
 004F77D0    add        al,0F9
 004F77D2    sub        al,6
>004F77D4    jb         004F77DC
 004F77D6    add        al,0E6
 004F77D8    sub        al,6
>004F77DA    jae        004F7818
 004F77DC    lea        eax,[ebp-4]
 004F77DF    mov        dl,byte ptr [esi]
 004F77E1    call       @LStrFromChar
 004F77E6    mov        edx,dword ptr [ebp-4]
 004F77E9    mov        eax,ebx
 004F77EB    call       @LStrCat
 004F77F0    mov        eax,dword ptr [ebp+8]
 004F77F3    cmp        byte ptr [eax-9],0
>004F77F7    jne        004F780B
 004F77F9    mov        al,byte ptr [esi]
 004F77FB    add        al,0BF
 004F77FD    sub        al,6
>004F77FF    jb         004F780B
 004F7801    add        al,0E6
 004F7803    sub        al,6
>004F7805    jb         004F780B
 004F7807    xor        eax,eax
>004F7809    jmp        004F780D
 004F780B    mov        al,1
 004F780D    mov        edx,dword ptr [ebp+8]
 004F7810    mov        byte ptr [edx-9],al
 004F7813    mov        byte ptr [esi],0
>004F7816    jmp        004F782C
 004F7818    mov        eax,dword ptr [ebp+8]
 004F781B    mov        eax,dword ptr [eax-8]
 004F781E    mov        cx,1
 004F7822    or         edx,0FFFFFFFF
 004F7825    mov        ebx,dword ptr [eax]
 004F7827    call       dword ptr [ebx+14]
>004F782A    jmp        004F7842
 004F782C    mov        edx,esi
 004F782E    mov        eax,dword ptr [ebp+8]
 004F7831    mov        eax,dword ptr [eax-8]
 004F7834    mov        ecx,1
 004F7839    mov        edi,dword ptr [eax]
 004F783B    call       dword ptr [edi+0C]
 004F783E    test       eax,eax
<004F7840    jg         004F77C8
 004F7842    xor        eax,eax
 004F7844    pop        edx
 004F7845    pop        ecx
 004F7846    pop        ecx
 004F7847    mov        dword ptr fs:[eax],edx
 004F784A    push       4F785F
 004F784F    lea        eax,[ebp-4]
 004F7852    call       @LStrClr
 004F7857    ret
<004F7858    jmp        @HandleFinally
<004F785D    jmp        004F784F
 004F785F    pop        edi
 004F7860    pop        esi
 004F7861    pop        ebx
 004F7862    pop        ecx
 004F7863    pop        ebp
 004F7864    ret
*}
//end;

//004F7868
//procedure sub_004F7868(?:AnsiString; ?:?);
//begin
{*
 004F7868    push       ebp
 004F7869    mov        ebp,esp
 004F786B    push       0
 004F786D    push       ebx
 004F786E    push       esi
 004F786F    push       edi
 004F7870    mov        ebx,eax
 004F7872    mov        esi,dword ptr [ebp+8]
 004F7875    dec        esi
 004F7876    xor        eax,eax
 004F7878    push       ebp
 004F7879    push       4F78F1
 004F787E    push       dword ptr fs:[eax]
 004F7881    mov        dword ptr fs:[eax],esp
 004F7884    mov        eax,ebx
 004F7886    call       @LStrClr
 004F788B    mov        byte ptr [esi],0
>004F788E    jmp        004F78C5
 004F7890    mov        al,byte ptr [esi]
 004F7892    add        al,0D0
 004F7894    sub        al,0A
>004F7896    jae        004F78B1
 004F7898    lea        eax,[ebp-4]
 004F789B    mov        dl,byte ptr [esi]
 004F789D    call       @LStrFromChar
 004F78A2    mov        edx,dword ptr [ebp-4]
 004F78A5    mov        eax,ebx
 004F78A7    call       @LStrCat
 004F78AC    mov        byte ptr [esi],0
>004F78AF    jmp        004F78C5
 004F78B1    mov        eax,dword ptr [ebp+8]
 004F78B4    mov        eax,dword ptr [eax-8]
 004F78B7    mov        cx,1
 004F78BB    or         edx,0FFFFFFFF
 004F78BE    mov        ebx,dword ptr [eax]
 004F78C0    call       dword ptr [ebx+14]
>004F78C3    jmp        004F78DB
 004F78C5    mov        edx,esi
 004F78C7    mov        eax,dword ptr [ebp+8]
 004F78CA    mov        eax,dword ptr [eax-8]
 004F78CD    mov        ecx,1
 004F78D2    mov        edi,dword ptr [eax]
 004F78D4    call       dword ptr [edi+0C]
 004F78D7    test       eax,eax
<004F78D9    jg         004F7890
 004F78DB    xor        eax,eax
 004F78DD    pop        edx
 004F78DE    pop        ecx
 004F78DF    pop        ecx
 004F78E0    mov        dword ptr fs:[eax],edx
 004F78E3    push       4F78F8
 004F78E8    lea        eax,[ebp-4]
 004F78EB    call       @LStrClr
 004F78F0    ret
<004F78F1    jmp        @HandleFinally
<004F78F6    jmp        004F78E8
 004F78F8    pop        edi
 004F78F9    pop        esi
 004F78FA    pop        ebx
 004F78FB    pop        ecx
 004F78FC    pop        ebp
 004F78FD    ret
*}
//end;

//004F7900
//procedure sub_004F7900(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F7900    push       ebp
 004F7901    mov        ebp,esp
 004F7903    push       ecx
 004F7904    mov        ecx,5
 004F7909    push       0
 004F790B    push       0
 004F790D    dec        ecx
<004F790E    jne        004F7909
 004F7910    xchg       ecx,dword ptr [ebp-4]
 004F7913    push       ebx
 004F7914    push       esi
 004F7915    push       edi
 004F7916    mov        byte ptr [ebp-0A],cl
 004F7919    mov        dword ptr [ebp-8],edx
 004F791C    mov        esi,dword ptr [ebp+8]
 004F791F    xor        eax,eax
 004F7921    push       ebp
 004F7922    push       4F7B2B
 004F7927    push       dword ptr fs:[eax]
 004F792A    mov        dword ptr fs:[eax],esp
 004F792D    mov        byte ptr [ebp-9],0
 004F7931    cmp        byte ptr [ebp-0A],2E
 004F7935    sete       bl
 004F7938    mov        byte ptr [ebp-1],0
 004F793C    mov        eax,esi
 004F793E    mov        dl,byte ptr [ebp-0A]
 004F7941    call       @LStrFromChar
 004F7946    mov        byte ptr [esi+4],0
 004F794A    test       bl,bl
>004F794C    jne        004F799D
 004F794E    push       ebp
 004F794F    lea        eax,[ebp-10]
 004F7952    call       004F7868
 004F7957    pop        ecx
 004F7958    mov        edx,dword ptr [ebp-10]
 004F795B    mov        eax,esi
 004F795D    call       @LStrCat
 004F7962    cmp        byte ptr [ebp-1],2E
>004F7966    jne        004F796E
 004F7968    cmp        byte ptr [ebp-9],0
>004F796C    je         004F7972
 004F796E    xor        ebx,ebx
>004F7970    jmp        004F7974
 004F7972    mov        bl,1
 004F7974    test       bl,bl
>004F7976    je         004F799D
 004F7978    lea        edx,[ebp-1]
 004F797B    mov        ecx,1
 004F7980    mov        eax,dword ptr [ebp-8]
 004F7983    mov        edi,dword ptr [eax]
 004F7985    call       dword ptr [edi+0C]
 004F7988    lea        eax,[ebp-14]
 004F798B    mov        dl,byte ptr [ebp-1]
 004F798E    call       @LStrFromChar
 004F7993    mov        edx,dword ptr [ebp-14]
 004F7996    mov        eax,esi
 004F7998    call       @LStrCat
 004F799D    test       bl,bl
>004F799F    je         004F79B5
 004F79A1    push       ebp
 004F79A2    lea        eax,[ebp-18]
 004F79A5    call       004F7868
 004F79AA    pop        ecx
 004F79AB    mov        edx,dword ptr [ebp-18]
 004F79AE    mov        eax,esi
 004F79B0    call       @LStrCat
 004F79B5    cmp        byte ptr [ebp-9],0
>004F79B9    jne        004F7A72
 004F79BF    mov        al,byte ptr [ebp-1]
 004F79C2    sub        al,45
>004F79C4    je         004F79CE
 004F79C6    sub        al,20
>004F79C8    jne        004F7A72
 004F79CE    lea        edx,[ebp-1]
 004F79D1    mov        ecx,1
 004F79D6    mov        eax,dword ptr [ebp-8]
 004F79D9    mov        ebx,dword ptr [eax]
 004F79DB    call       dword ptr [ebx+0C]
 004F79DE    lea        eax,[ebp-1C]
 004F79E1    mov        dl,byte ptr [ebp-1]
 004F79E4    call       @LStrFromChar
 004F79E9    mov        edx,dword ptr [ebp-1C]
 004F79EC    mov        eax,esi
 004F79EE    call       @LStrCat
 004F79F3    mov        bl,1
 004F79F5    lea        edx,[ebp-1]
 004F79F8    mov        ecx,1
 004F79FD    mov        eax,dword ptr [ebp-8]
 004F7A00    mov        edi,dword ptr [eax]
 004F7A02    call       dword ptr [edi+0C]
 004F7A05    mov        al,byte ptr [ebp-1]
 004F7A08    sub        al,2B
>004F7A0A    je         004F7A16
 004F7A0C    sub        al,2
>004F7A0E    je         004F7A16
 004F7A10    add        al,0FD
 004F7A12    sub        al,0A
>004F7A14    jae        004F7A41
 004F7A16    push       dword ptr [esi]
 004F7A18    lea        eax,[ebp-20]
 004F7A1B    mov        dl,byte ptr [ebp-1]
 004F7A1E    call       @LStrFromChar
 004F7A23    push       dword ptr [ebp-20]
 004F7A26    push       ebp
 004F7A27    lea        eax,[ebp-24]
 004F7A2A    call       004F7868
 004F7A2F    pop        ecx
 004F7A30    push       dword ptr [ebp-24]
 004F7A33    mov        eax,esi
 004F7A35    mov        edx,3
 004F7A3A    call       @LStrCatN
>004F7A3F    jmp        004F7A72
 004F7A41    push       esi
 004F7A42    mov        eax,dword ptr [esi]
 004F7A44    call       @LStrLen
 004F7A49    mov        ecx,eax
 004F7A4B    sub        ecx,1
>004F7A4E    jno        004F7A55
 004F7A50    call       @IntOver
 004F7A55    mov        eax,dword ptr [esi]
 004F7A57    mov        edx,1
 004F7A5C    call       @LStrCopy
 004F7A61    mov        cx,1
 004F7A65    mov        edx,0FFFFFFFE
 004F7A6A    mov        eax,dword ptr [ebp-8]
 004F7A6D    mov        edi,dword ptr [eax]
 004F7A6F    call       dword ptr [edi+14]
 004F7A72    mov        eax,dword ptr [esi]
 004F7A74    mov        edx,4F7B44; '0'
 004F7A79    call       @LStrCmp
>004F7A7E    jne        004F7AC8
 004F7A80    mov        al,byte ptr [ebp-1]
 004F7A83    sub        al,58
>004F7A85    je         004F7A8B
 004F7A87    sub        al,20
>004F7A89    jne        004F7AC8
 004F7A8B    lea        edx,[ebp-1]
 004F7A8E    mov        ecx,1
 004F7A93    mov        eax,dword ptr [ebp-8]
 004F7A96    mov        edi,dword ptr [eax]
 004F7A98    call       dword ptr [edi+0C]
 004F7A9B    push       dword ptr [esi]
 004F7A9D    lea        eax,[ebp-28]
 004F7AA0    mov        dl,byte ptr [ebp-1]
 004F7AA3    call       @LStrFromChar
 004F7AA8    push       dword ptr [ebp-28]
 004F7AAB    push       ebp
 004F7AAC    lea        eax,[ebp-2C]
 004F7AAF    call       004F77A0
 004F7AB4    pop        ecx
 004F7AB5    push       dword ptr [ebp-2C]
 004F7AB8    mov        eax,esi
 004F7ABA    mov        edx,3
 004F7ABF    call       @LStrCatN
 004F7AC4    mov        byte ptr [ebp-9],1
 004F7AC8    mov        eax,dword ptr [esi]
 004F7ACA    mov        edx,4F7B50; '.'
 004F7ACF    call       @LStrCmp
>004F7AD4    jne        004F7AF6
 004F7AD6    mov        eax,dword ptr [ebp+0C]
 004F7AD9    mov        ebx,dword ptr [eax+41C]
 004F7ADF    test       ebx,ebx
>004F7AE1    je         004F7B10
 004F7AE3    mov        eax,dword ptr [ebp+0C]
 004F7AE6    push       eax
 004F7AE7    push       esi
 004F7AE8    mov        eax,ebx
 004F7AEA    mov        cl,byte ptr [ebp-0A]
 004F7AED    mov        edx,dword ptr [ebp-8]
 004F7AF0    mov        ebx,dword ptr [eax]
 004F7AF2    call       dword ptr [ebx]
>004F7AF4    jmp        004F7B10
 004F7AF6    cmp        byte ptr [ebp-9],0
>004F7AFA    je         004F7B02
 004F7AFC    mov        byte ptr [esi+4],4
>004F7B00    jmp        004F7B10
 004F7B02    test       bl,bl
>004F7B04    je         004F7B0C
 004F7B06    mov        byte ptr [esi+4],2
>004F7B0A    jmp        004F7B10
 004F7B0C    mov        byte ptr [esi+4],3
 004F7B10    xor        eax,eax
 004F7B12    pop        edx
 004F7B13    pop        ecx
 004F7B14    pop        ecx
 004F7B15    mov        dword ptr fs:[eax],edx
 004F7B18    push       4F7B32
 004F7B1D    lea        eax,[ebp-2C]
 004F7B20    mov        edx,8
 004F7B25    call       @LStrArrayClr
 004F7B2A    ret
<004F7B2B    jmp        @HandleFinally
<004F7B30    jmp        004F7B1D
 004F7B32    pop        edi
 004F7B33    pop        esi
 004F7B34    pop        ebx
 004F7B35    mov        esp,ebp
 004F7B37    pop        ebp
 004F7B38    ret        8
*}
//end;

//004F7B54
//procedure sub_004F7B54(?:?; ?:?; ?:?);
//begin
{*
 004F7B54    push       ebp
 004F7B55    mov        ebp,esp
 004F7B57    add        esp,0FFFFFFF4
 004F7B5A    push       ebx
 004F7B5B    push       esi
 004F7B5C    push       edi
 004F7B5D    xor        ebx,ebx
 004F7B5F    mov        dword ptr [ebp-0C],ebx
 004F7B62    mov        ebx,ecx
 004F7B64    mov        dword ptr [ebp-4],edx
 004F7B67    mov        esi,dword ptr [ebp+8]
 004F7B6A    xor        eax,eax
 004F7B6C    push       ebp
 004F7B6D    push       4F7C1B
 004F7B72    push       dword ptr fs:[eax]
 004F7B75    mov        dword ptr fs:[eax],esp
 004F7B78    mov        eax,esi
 004F7B7A    mov        edx,ebx
 004F7B7C    call       @LStrFromChar
 004F7B81    mov        byte ptr [ebp-6],0
>004F7B85    jmp        004F7BDD
 004F7B87    cmp        bl,byte ptr [ebp-6]
>004F7B8A    jne        004F7B96
 004F7B8C    cmp        bl,byte ptr [ebp-5]
>004F7B8F    je         004F7B96
 004F7B91    cmp        bl,5B
>004F7B94    jne        004F7BA1
 004F7B96    cmp        bl,5B
>004F7B99    jne        004F7BB2
 004F7B9B    cmp        byte ptr [ebp-6],5D
>004F7B9F    jne        004F7BB2
 004F7BA1    mov        cx,1
 004F7BA5    or         edx,0FFFFFFFF
 004F7BA8    mov        eax,dword ptr [ebp-4]
 004F7BAB    mov        edi,dword ptr [eax]
 004F7BAD    call       dword ptr [edi+14]
>004F7BB0    jmp        004F7BF1
 004F7BB2    lea        eax,[ebp-0C]
 004F7BB5    mov        dl,byte ptr [ebp-5]
 004F7BB8    call       @LStrFromChar
 004F7BBD    mov        edx,dword ptr [ebp-0C]
 004F7BC0    mov        eax,esi
 004F7BC2    call       @LStrCat
 004F7BC7    cmp        bl,byte ptr [ebp-6]
>004F7BCA    jne        004F7BD7
 004F7BCC    cmp        bl,byte ptr [ebp-5]
>004F7BCF    jne        004F7BD7
 004F7BD1    mov        byte ptr [ebp-6],0
>004F7BD5    jmp        004F7BDD
 004F7BD7    mov        al,byte ptr [ebp-5]
 004F7BDA    mov        byte ptr [ebp-6],al
 004F7BDD    lea        edx,[ebp-5]
 004F7BE0    mov        ecx,1
 004F7BE5    mov        eax,dword ptr [ebp-4]
 004F7BE8    mov        edi,dword ptr [eax]
 004F7BEA    call       dword ptr [edi+0C]
 004F7BED    test       eax,eax
<004F7BEF    jg         004F7B87
 004F7BF1    sub        bl,22
>004F7BF4    je         004F7BFB
 004F7BF6    sub        bl,39
>004F7BF9    jne        004F7C01
 004F7BFB    mov        byte ptr [esi+4],9
>004F7BFF    jmp        004F7C05
 004F7C01    mov        byte ptr [esi+4],7
 004F7C05    xor        eax,eax
 004F7C07    pop        edx
 004F7C08    pop        ecx
 004F7C09    pop        ecx
 004F7C0A    mov        dword ptr fs:[eax],edx
 004F7C0D    push       4F7C22
 004F7C12    lea        eax,[ebp-0C]
 004F7C15    call       @LStrClr
 004F7C1A    ret
<004F7C1B    jmp        @HandleFinally
<004F7C20    jmp        004F7C12
 004F7C22    pop        edi
 004F7C23    pop        esi
 004F7C24    pop        ebx
 004F7C25    mov        esp,ebp
 004F7C27    pop        ebp
 004F7C28    ret        8
*}
//end;

//004F7C2C
//procedure sub_004F7C2C(?:?; ?:?; ?:?);
//begin
{*
 004F7C2C    push       ebp
 004F7C2D    mov        ebp,esp
 004F7C2F    push       0
 004F7C31    push       0
 004F7C33    push       ebx
 004F7C34    push       esi
 004F7C35    push       edi
 004F7C36    mov        ebx,ecx
 004F7C38    mov        esi,edx
 004F7C3A    mov        edi,dword ptr [ebp+8]
 004F7C3D    xor        eax,eax
 004F7C3F    push       ebp
 004F7C40    push       4F7CC0
 004F7C45    push       dword ptr fs:[eax]
 004F7C48    mov        dword ptr fs:[eax],esp
 004F7C4B    cmp        bl,5B
>004F7C4E    jne        004F7C69
 004F7C50    push       4F7CD8; '['
 004F7C55    push       esi
 004F7C56    push       4F7CE4; ']'
 004F7C5B    mov        eax,edi
 004F7C5D    mov        edx,3
 004F7C62    call       @LStrCatN
>004F7C67    jmp        004F7CA5
 004F7C69    mov        eax,ebx
 004F7C6B    sub        al,22
>004F7C6D    je         004F7C73
 004F7C6F    sub        al,5
>004F7C71    jne        004F7C9C
 004F7C73    lea        eax,[ebp-4]
 004F7C76    mov        edx,ebx
 004F7C78    call       @LStrFromChar
 004F7C7D    push       dword ptr [ebp-4]
 004F7C80    push       esi
 004F7C81    lea        eax,[ebp-8]
 004F7C84    mov        edx,ebx
 004F7C86    call       @LStrFromChar
 004F7C8B    push       dword ptr [ebp-8]
 004F7C8E    mov        eax,edi
 004F7C90    mov        edx,3
 004F7C95    call       @LStrCatN
>004F7C9A    jmp        004F7CA5
 004F7C9C    mov        eax,edi
 004F7C9E    mov        edx,esi
 004F7CA0    call       @LStrAsg
 004F7CA5    xor        eax,eax
 004F7CA7    pop        edx
 004F7CA8    pop        ecx
 004F7CA9    pop        ecx
 004F7CAA    mov        dword ptr fs:[eax],edx
 004F7CAD    push       4F7CC7
 004F7CB2    lea        eax,[ebp-8]
 004F7CB5    mov        edx,2
 004F7CBA    call       @LStrArrayClr
 004F7CBF    ret
<004F7CC0    jmp        @HandleFinally
<004F7CC5    jmp        004F7CB2
 004F7CC7    pop        edi
 004F7CC8    pop        esi
 004F7CC9    pop        ebx
 004F7CCA    pop        ecx
 004F7CCB    pop        ecx
 004F7CCC    pop        ebp
 004F7CCD    ret        4
*}
//end;

//004F7CE8
//procedure sub_004F7CE8(?:?; ?:?; ?:?);
//begin
{*
 004F7CE8    push       ebp
 004F7CE9    mov        ebp,esp
 004F7CEB    push       ebx
 004F7CEC    push       esi
 004F7CED    push       edi
 004F7CEE    mov        ebx,ecx
 004F7CF0    mov        esi,edx
 004F7CF2    mov        edi,dword ptr [ebp+8]
 004F7CF5    mov        eax,edi
 004F7CF7    mov        edx,esi
 004F7CF9    call       @LStrAsg
 004F7CFE    mov        eax,esi
 004F7D00    call       @LStrLen
 004F7D05    cmp        eax,2
>004F7D08    jl         004F7DD0
 004F7D0E    mov        eax,ebx
 004F7D10    sub        al,22
>004F7D12    je         004F7D18
 004F7D14    sub        al,5
>004F7D16    jne        004F7D72
 004F7D18    mov        eax,1
 004F7D1D    dec        eax
 004F7D1E    test       esi,esi
>004F7D20    je         004F7D27
 004F7D22    cmp        eax,dword ptr [esi-4]
>004F7D25    jb         004F7D2C
 004F7D27    call       @BoundErr
 004F7D2C    inc        eax
 004F7D2D    cmp        bl,byte ptr [esi+eax-1]
>004F7D31    jne        004F7D72
 004F7D33    mov        eax,esi
 004F7D35    call       @LStrLen
 004F7D3A    dec        eax
 004F7D3B    test       esi,esi
>004F7D3D    je         004F7D44
 004F7D3F    cmp        eax,dword ptr [esi-4]
>004F7D42    jb         004F7D49
 004F7D44    call       @BoundErr
 004F7D49    inc        eax
 004F7D4A    cmp        bl,byte ptr [esi+eax-1]
>004F7D4E    jne        004F7D72
 004F7D50    mov        eax,esi
 004F7D52    call       @LStrLen
 004F7D57    cmp        eax,2
>004F7D5A    jle        004F7D69
 004F7D5C    mov        ecx,edi
 004F7D5E    mov        edx,ebx
 004F7D60    mov        eax,esi
 004F7D62    call       AnsiDequotedStr
>004F7D67    jmp        004F7DD0
 004F7D69    mov        eax,edi
 004F7D6B    call       @LStrClr
>004F7D70    jmp        004F7DD0
 004F7D72    cmp        bl,5B
>004F7D75    jne        004F7DD0
 004F7D77    mov        eax,1
 004F7D7C    dec        eax
 004F7D7D    test       esi,esi
>004F7D7F    je         004F7D86
 004F7D81    cmp        eax,dword ptr [esi-4]
>004F7D84    jb         004F7D8B
 004F7D86    call       @BoundErr
 004F7D8B    inc        eax
 004F7D8C    cmp        bl,byte ptr [esi+eax-1]
>004F7D90    jne        004F7DD0
 004F7D92    mov        eax,esi
 004F7D94    call       @LStrLen
 004F7D99    dec        eax
 004F7D9A    test       esi,esi
>004F7D9C    je         004F7DA3
 004F7D9E    cmp        eax,dword ptr [esi-4]
>004F7DA1    jb         004F7DA8
 004F7DA3    call       @BoundErr
 004F7DA8    inc        eax
 004F7DA9    cmp        byte ptr [esi+eax-1],5D
>004F7DAE    jne        004F7DD0
 004F7DB0    push       edi
 004F7DB1    mov        eax,esi
 004F7DB3    call       @LStrLen
 004F7DB8    mov        ecx,eax
 004F7DBA    sub        ecx,2
>004F7DBD    jno        004F7DC4
 004F7DBF    call       @IntOver
 004F7DC4    mov        edx,2
 004F7DC9    mov        eax,esi
 004F7DCB    call       @LStrCopy
 004F7DD0    pop        edi
 004F7DD1    pop        esi
 004F7DD2    pop        ebx
 004F7DD3    pop        ebp
 004F7DD4    ret        4
*}
//end;

//004F7DD8
//procedure sub_004F7DD8(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F7DD8    push       ebp
 004F7DD9    mov        ebp,esp
 004F7DDB    add        esp,0FFFFFFEC
 004F7DDE    push       ebx
 004F7DDF    push       esi
 004F7DE0    push       edi
 004F7DE1    xor        ebx,ebx
 004F7DE3    mov        dword ptr [ebp-14],ebx
 004F7DE6    mov        dword ptr [ebp-10],ebx
 004F7DE9    mov        ebx,ecx
 004F7DEB    mov        dword ptr [ebp-8],edx
 004F7DEE    mov        dword ptr [ebp-4],eax
 004F7DF1    mov        esi,dword ptr [ebp+8]
 004F7DF4    xor        eax,eax
 004F7DF6    push       ebp
 004F7DF7    push       4F7EFF
 004F7DFC    push       dword ptr fs:[eax]
 004F7DFF    mov        dword ptr fs:[eax],esp
 004F7E02    mov        eax,esi
 004F7E04    mov        edx,ebx
 004F7E06    call       @LStrFromChar
 004F7E0B    mov        byte ptr [esi+4],0
 004F7E0F    cmp        bl,2D
>004F7E12    jne        004F7E66
 004F7E14    lea        edx,[ebp-9]
 004F7E17    mov        ecx,1
 004F7E1C    mov        eax,dword ptr [ebp-8]
 004F7E1F    mov        edi,dword ptr [eax]
 004F7E21    call       dword ptr [edi+0C]
 004F7E24    test       eax,eax
>004F7E26    jle        004F7E51
 004F7E28    cmp        byte ptr [ebp-9],2D
>004F7E2C    jne        004F7E51
 004F7E2E    mov        byte ptr [esi+4],0C
 004F7E32    lea        ecx,[ebp-10]
 004F7E35    mov        edx,dword ptr [ebp-8]
 004F7E38    mov        eax,dword ptr [ebp-4]
 004F7E3B    call       004C0DB0
 004F7E40    mov        ecx,dword ptr [ebp-10]
 004F7E43    mov        eax,esi
 004F7E45    mov        edx,4F7F18; '--'
 004F7E4A    call       @LStrCat3
>004F7E4F    jmp        004F7EBB
 004F7E51    test       eax,eax
>004F7E53    jle        004F7EBB
 004F7E55    mov        cx,1
 004F7E59    or         edx,0FFFFFFFF
 004F7E5C    mov        eax,dword ptr [ebp-8]
 004F7E5F    mov        edi,dword ptr [eax]
 004F7E61    call       dword ptr [edi+14]
>004F7E64    jmp        004F7EBB
 004F7E66    cmp        bl,2F
>004F7E69    jne        004F7EBB
 004F7E6B    lea        edx,[ebp-9]
 004F7E6E    mov        ecx,1
 004F7E73    mov        eax,dword ptr [ebp-8]
 004F7E76    mov        edi,dword ptr [eax]
 004F7E78    call       dword ptr [edi+0C]
 004F7E7B    test       eax,eax
>004F7E7D    jle        004F7EA8
 004F7E7F    cmp        byte ptr [ebp-9],2A
>004F7E83    jne        004F7EA8
 004F7E85    mov        byte ptr [esi+4],0C
 004F7E89    lea        ecx,[ebp-14]
 004F7E8C    mov        edx,dword ptr [ebp-8]
 004F7E8F    mov        eax,dword ptr [ebp-4]
 004F7E92    call       004C0D28
 004F7E97    mov        ecx,dword ptr [ebp-14]
 004F7E9A    mov        eax,esi
 004F7E9C    mov        edx,4F7F24; '/*'
 004F7EA1    call       @LStrCat3
>004F7EA6    jmp        004F7EBB
 004F7EA8    test       eax,eax
>004F7EAA    jle        004F7EBB
 004F7EAC    mov        cx,1
 004F7EB0    or         edx,0FFFFFFFF
 004F7EB3    mov        eax,dword ptr [ebp-8]
 004F7EB6    mov        edi,dword ptr [eax]
 004F7EB8    call       dword ptr [edi+14]
 004F7EBB    cmp        byte ptr [esi+4],0
>004F7EBF    jne        004F7EE4
 004F7EC1    mov        eax,dword ptr [ebp+0C]
 004F7EC4    cmp        dword ptr [eax+41C],0
>004F7ECB    je         004F7EE4
 004F7ECD    mov        eax,dword ptr [ebp+0C]
 004F7ED0    push       eax
 004F7ED1    push       esi
 004F7ED2    mov        eax,dword ptr [ebp+0C]
 004F7ED5    mov        eax,dword ptr [eax+41C]
 004F7EDB    mov        ecx,ebx
 004F7EDD    mov        edx,dword ptr [ebp-8]
 004F7EE0    mov        ebx,dword ptr [eax]
 004F7EE2    call       dword ptr [ebx]
 004F7EE4    xor        eax,eax
 004F7EE6    pop        edx
 004F7EE7    pop        ecx
 004F7EE8    pop        ecx
 004F7EE9    mov        dword ptr fs:[eax],edx
 004F7EEC    push       4F7F06
 004F7EF1    lea        eax,[ebp-14]
 004F7EF4    mov        edx,2
 004F7EF9    call       @LStrArrayClr
 004F7EFE    ret
<004F7EFF    jmp        @HandleFinally
<004F7F04    jmp        004F7EF1
 004F7F06    pop        edi
 004F7F07    pop        esi
 004F7F08    pop        ebx
 004F7F09    mov        esp,ebp
 004F7F0B    pop        ebp
 004F7F0C    ret        8
*}
//end;

//004F7F28
//constructor TZSybaseSymbolState.Create(?:TZSybaseSymbolState; _Dv__:Boolean);
//begin
{*
 004F7F28    push       ebp
 004F7F29    mov        ebp,esp
 004F7F2B    push       ebx
 004F7F2C    push       esi
 004F7F2D    test       dl,dl
>004F7F2F    je         004F7F39
 004F7F31    add        esp,0FFFFFFF0
 004F7F34    call       @ClassCreate
 004F7F39    mov        ebx,edx
 004F7F3B    mov        esi,eax
 004F7F3D    xor        edx,edx
 004F7F3F    mov        eax,esi
 004F7F41    call       004C15E4
 004F7F46    mov        edx,4F7FB4; '<='
 004F7F4B    mov        eax,esi
 004F7F4D    mov        ecx,dword ptr [eax]
 004F7F4F    call       dword ptr [ecx+4]; TZSybaseSymbolState.sub_004C1658
 004F7F52    mov        edx,4F7FC0; '>='
 004F7F57    mov        eax,esi
 004F7F59    mov        ecx,dword ptr [eax]
 004F7F5B    call       dword ptr [ecx+4]; TZSybaseSymbolState.sub_004C1658
 004F7F5E    mov        edx,4F7FCC; '<>'
 004F7F63    mov        eax,esi
 004F7F65    mov        ecx,dword ptr [eax]
 004F7F67    call       dword ptr [ecx+4]; TZSybaseSymbolState.sub_004C1658
 004F7F6A    mov        edx,4F7FD8; '!<'
 004F7F6F    mov        eax,esi
 004F7F71    mov        ecx,dword ptr [eax]
 004F7F73    call       dword ptr [ecx+4]; TZSybaseSymbolState.sub_004C1658
 004F7F76    mov        edx,4F7FE4; '!>'
 004F7F7B    mov        eax,esi
 004F7F7D    mov        ecx,dword ptr [eax]
 004F7F7F    call       dword ptr [ecx+4]; TZSybaseSymbolState.sub_004C1658
 004F7F82    mov        edx,4F7FF0; '!='
 004F7F87    mov        eax,esi
 004F7F89    mov        ecx,dword ptr [eax]
 004F7F8B    call       dword ptr [ecx+4]; TZSybaseSymbolState.sub_004C1658
 004F7F8E    mov        eax,esi
 004F7F90    test       bl,bl
>004F7F92    je         004F7FA3
 004F7F94    call       @AfterConstruction
 004F7F99    pop        dword ptr fs:[0]
 004F7FA0    add        esp,0C
 004F7FA3    mov        eax,esi
 004F7FA5    pop        esi
 004F7FA6    pop        ebx
 004F7FA7    pop        ebp
 004F7FA8    ret
*}
//end;

//004F7FF4
//constructor TZSybaseWordState.Create(?:TZSybaseWordState; _Dv__:Boolean);
//begin
{*
 004F7FF4    push       ebp
 004F7FF5    mov        ebp,esp
 004F7FF7    push       ebx
 004F7FF8    push       esi
 004F7FF9    test       dl,dl
>004F7FFB    je         004F8005
 004F7FFD    add        esp,0FFFFFFF0
 004F8000    call       @ClassCreate
 004F8005    mov        ebx,edx
 004F8007    mov        esi,eax
 004F8009    push       0
 004F800B    mov        cl,0FF
 004F800D    xor        edx,edx
 004F800F    mov        eax,esi
 004F8011    call       004C18EC
 004F8016    push       1
 004F8018    mov        cl,7A
 004F801A    mov        dl,61
 004F801C    mov        eax,esi
 004F801E    call       004C18EC
 004F8023    push       1
 004F8025    mov        cl,5A
 004F8027    mov        dl,41
 004F8029    mov        eax,esi
 004F802B    call       004C18EC
 004F8030    push       1
 004F8032    mov        cl,39
 004F8034    mov        dl,30
 004F8036    mov        eax,esi
 004F8038    call       004C18EC
 004F803D    push       1
 004F803F    mov        cl,24
 004F8041    mov        dl,24
 004F8043    mov        eax,esi
 004F8045    call       004C18EC
 004F804A    push       1
 004F804C    mov        cl,5F
 004F804E    mov        dl,5F
 004F8050    mov        eax,esi
 004F8052    call       004C18EC
 004F8057    push       1
 004F8059    mov        cl,40
 004F805B    mov        dl,40
 004F805D    mov        eax,esi
 004F805F    call       004C18EC
 004F8064    push       1
 004F8066    mov        cl,23
 004F8068    mov        dl,23
 004F806A    mov        eax,esi
 004F806C    call       004C18EC
 004F8071    push       1
 004F8073    mov        cl,0FF
 004F8075    mov        dl,0C0
 004F8077    mov        eax,esi
 004F8079    call       004C18EC
 004F807E    mov        eax,esi
 004F8080    test       bl,bl
>004F8082    je         004F8093
 004F8084    call       @AfterConstruction
 004F8089    pop        dword ptr fs:[0]
 004F8090    add        esp,0C
 004F8093    mov        eax,esi
 004F8095    pop        esi
 004F8096    pop        ebx
 004F8097    pop        ebp
 004F8098    ret
*}
//end;

//004F809C
//constructor TZSybaseTokenizer.Create(?:TZSybaseTokenizer; _Dv__:Boolean);
//begin
{*
 004F809C    push       ebp
 004F809D    mov        ebp,esp
 004F809F    push       ebx
 004F80A0    push       esi
 004F80A1    test       dl,dl
>004F80A3    je         004F80AD
 004F80A5    add        esp,0FFFFFFF0
 004F80A8    call       @ClassCreate
 004F80AD    mov        ebx,edx
 004F80AF    mov        esi,eax
 004F80B1    mov        dl,1
 004F80B3    mov        eax,[004C0658]; TZWhitespaceState
 004F80B8    call       TZWhitespaceState.Create; TZWhitespaceState.Create
 004F80BD    mov        dword ptr [esi+420],eax; TZSybaseTokenizer.?f420:TZWhitespaceState
 004F80C3    mov        dl,1
 004F80C5    mov        eax,[004F7668]; TZSybaseSymbolState
 004F80CA    call       TZSybaseSymbolState.Create; TZSybaseSymbolState.Create
 004F80CF    mov        dword ptr [esi+41C],eax; TZSybaseTokenizer.?f41C:TZGenericSQLSymbolState
 004F80D5    mov        dl,1
 004F80D7    mov        eax,[004F7530]; TZSybaseNumberState
 004F80DC    call       TObject.Create; TZSybaseNumberState.Create
 004F80E1    mov        dword ptr [esi+414],eax; TZSybaseTokenizer.?f414:TZNumberState
 004F80E7    mov        dl,1
 004F80E9    mov        eax,[004F7594]; TZSybaseQuoteState
 004F80EE    call       TObject.Create; TZSybaseQuoteState.Create
 004F80F3    mov        dword ptr [esi+418],eax; TZSybaseTokenizer.?f418:TZGenericSQLQuoteState
 004F80F9    mov        dl,1
 004F80FB    mov        eax,[004F76D0]; TZSybaseWordState
 004F8100    call       TZSybaseWordState.Create; TZSybaseWordState.Create
 004F8105    mov        dword ptr [esi+424],eax; TZSybaseTokenizer.?f424:TZGenericSQLWordState
 004F810B    mov        dl,1
 004F810D    mov        eax,[004F7600]; TZSybaseCommentState
 004F8112    call       TObject.Create; TZSybaseCommentState.Create
 004F8117    mov        dword ptr [esi+410],eax; TZSybaseTokenizer.?f410:TZCppCommentState
 004F811D    mov        eax,dword ptr [esi+41C]; TZSybaseTokenizer.?f41C:TZGenericSQLSymbolState
 004F8123    push       eax
 004F8124    mov        cl,0FF
 004F8126    xor        edx,edx
 004F8128    mov        eax,esi
 004F812A    call       004C19C8
 004F812F    mov        eax,dword ptr [esi+420]; TZSybaseTokenizer.?f420:TZWhitespaceState
 004F8135    push       eax
 004F8136    mov        cl,20
 004F8138    xor        edx,edx
 004F813A    mov        eax,esi
 004F813C    call       004C19C8
 004F8141    mov        eax,dword ptr [esi+424]; TZSybaseTokenizer.?f424:TZGenericSQLWordState
 004F8147    push       eax
 004F8148    mov        cl,7A
 004F814A    mov        dl,61
 004F814C    mov        eax,esi
 004F814E    call       004C19C8
 004F8153    mov        eax,dword ptr [esi+424]; TZSybaseTokenizer.?f424:TZGenericSQLWordState
 004F8159    push       eax
 004F815A    mov        cl,5A
 004F815C    mov        dl,41
 004F815E    mov        eax,esi
 004F8160    call       004C19C8
 004F8165    mov        eax,dword ptr [esi+424]; TZSybaseTokenizer.?f424:TZGenericSQLWordState
 004F816B    push       eax
 004F816C    mov        cl,0FF
 004F816E    mov        dl,0C0
 004F8170    mov        eax,esi
 004F8172    call       004C19C8
 004F8177    mov        eax,dword ptr [esi+424]; TZSybaseTokenizer.?f424:TZGenericSQLWordState
 004F817D    push       eax
 004F817E    mov        cl,5F
 004F8180    mov        dl,5F
 004F8182    mov        eax,esi
 004F8184    call       004C19C8
 004F8189    mov        eax,dword ptr [esi+424]; TZSybaseTokenizer.?f424:TZGenericSQLWordState
 004F818F    push       eax
 004F8190    mov        cl,24
 004F8192    mov        dl,24
 004F8194    mov        eax,esi
 004F8196    call       004C19C8
 004F819B    mov        eax,dword ptr [esi+424]; TZSybaseTokenizer.?f424:TZGenericSQLWordState
 004F81A1    push       eax
 004F81A2    mov        cl,40
 004F81A4    mov        dl,40
 004F81A6    mov        eax,esi
 004F81A8    call       004C19C8
 004F81AD    mov        eax,dword ptr [esi+424]; TZSybaseTokenizer.?f424:TZGenericSQLWordState
 004F81B3    push       eax
 004F81B4    mov        cl,23
 004F81B6    mov        dl,23
 004F81B8    mov        eax,esi
 004F81BA    call       004C19C8
 004F81BF    mov        eax,dword ptr [esi+414]; TZSybaseTokenizer.?f414:TZNumberState
 004F81C5    push       eax
 004F81C6    mov        cl,39
 004F81C8    mov        dl,30
 004F81CA    mov        eax,esi
 004F81CC    call       004C19C8
 004F81D1    mov        eax,dword ptr [esi+414]; TZSybaseTokenizer.?f414:TZNumberState
 004F81D7    push       eax
 004F81D8    mov        cl,2E
 004F81DA    mov        dl,2E
 004F81DC    mov        eax,esi
 004F81DE    call       004C19C8
 004F81E3    mov        eax,dword ptr [esi+418]; TZSybaseTokenizer.?f418:TZGenericSQLQuoteState
 004F81E9    push       eax
 004F81EA    mov        cl,22
 004F81EC    mov        dl,22
 004F81EE    mov        eax,esi
 004F81F0    call       004C19C8
 004F81F5    mov        eax,dword ptr [esi+418]; TZSybaseTokenizer.?f418:TZGenericSQLQuoteState
 004F81FB    push       eax
 004F81FC    mov        cl,27
 004F81FE    mov        dl,27
 004F8200    mov        eax,esi
 004F8202    call       004C19C8
 004F8207    mov        eax,dword ptr [esi+418]; TZSybaseTokenizer.?f418:TZGenericSQLQuoteState
 004F820D    push       eax
 004F820E    mov        cl,5B
 004F8210    mov        dl,5B
 004F8212    mov        eax,esi
 004F8214    call       004C19C8
 004F8219    mov        eax,dword ptr [esi+418]; TZSybaseTokenizer.?f418:TZGenericSQLQuoteState
 004F821F    push       eax
 004F8220    mov        cl,5D
 004F8222    mov        dl,5D
 004F8224    mov        eax,esi
 004F8226    call       004C19C8
 004F822B    mov        eax,dword ptr [esi+410]; TZSybaseTokenizer.?f410:TZCppCommentState
 004F8231    push       eax
 004F8232    mov        cl,2F
 004F8234    mov        dl,2F
 004F8236    mov        eax,esi
 004F8238    call       004C19C8
 004F823D    mov        eax,dword ptr [esi+410]; TZSybaseTokenizer.?f410:TZCppCommentState
 004F8243    push       eax
 004F8244    mov        cl,2D
 004F8246    mov        dl,2D
 004F8248    mov        eax,esi
 004F824A    call       004C19C8
 004F824F    mov        eax,esi
 004F8251    test       bl,bl
>004F8253    je         004F8264
 004F8255    call       @AfterConstruction
 004F825A    pop        dword ptr fs:[0]
 004F8261    add        esp,0C
 004F8264    mov        eax,esi
 004F8266    pop        esi
 004F8267    pop        ebx
 004F8268    pop        ebp
 004F8269    ret
*}
//end;

end.