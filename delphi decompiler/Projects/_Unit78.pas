{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit78;

interface

uses
  Classes, Windows, Graphics;


implementation

//00580858
//procedure sub_00580858(?:AnsiString; ?:?; ?:?; ?:?);
//begin
{*
 00580858    push       ebp
 00580859    mov        ebp,esp
 0058085B    add        esp,0FFFFFFF4
 0058085E    push       ebx
 0058085F    push       esi
 00580860    push       edi
 00580861    xor        ebx,ebx
 00580863    mov        dword ptr [ebp-0C],ebx
 00580866    mov        dword ptr [ebp-8],ecx
 00580869    mov        edi,edx
 0058086B    mov        dword ptr [ebp-4],eax
 0058086E    mov        esi,dword ptr [ebp+8]
 00580871    mov        eax,dword ptr [ebp-4]
 00580874    call       @LStrAddRef
 00580879    xor        eax,eax
 0058087B    push       ebp
 0058087C    push       580957
 00580881    push       dword ptr fs:[eax]
 00580884    mov        dword ptr fs:[eax],esp
 00580887    cmp        dword ptr [edi],0
>0058088A    jne        00580896
 0058088C    mov        dword ptr [edi],1
>00580892    jmp        00580896
 00580894    inc        dword ptr [edi]
 00580896    mov        eax,dword ptr [ebp-4]
 00580899    call       @LStrLen
 0058089E    cmp        eax,dword ptr [edi]
>005808A0    jl         005808B0
 005808A2    mov        eax,dword ptr [edi]
 005808A4    mov        edx,dword ptr [ebp-4]
 005808A7    mov        al,byte ptr [edx+eax-1]
 005808AB    dec        eax
 005808AC    sub        al,2
<005808AE    jae        00580894
 005808B0    mov        eax,dword ptr [ebp-4]
 005808B3    call       @LStrLen
 005808B8    cmp        eax,dword ptr [edi]
>005808BA    jl         00580912
 005808BC    inc        dword ptr [edi]
 005808BE    mov        eax,dword ptr [edi]
 005808C0    mov        edx,dword ptr [ebp-4]
 005808C3    mov        al,byte ptr [edx+eax-1]
 005808C7    mov        edx,dword ptr [ebp-8]
 005808CA    mov        byte ptr [edx],al
 005808CC    inc        dword ptr [edi]
 005808CE    mov        eax,esi
 005808D0    call       @LStrClr
>005808D5    jmp        00580904
 005808D7    mov        eax,dword ptr [edi]
 005808D9    mov        edx,dword ptr [ebp-4]
 005808DC    mov        bl,byte ptr [edx+eax-1]
 005808E0    mov        eax,ebx
 005808E2    sub        al,2
>005808E4    je         00580918
 005808E6    dec        al
>005808E8    je         00580902
 005808EA    dec        al
>005808EC    je         00580918
 005808EE    lea        eax,[ebp-0C]
 005808F1    mov        edx,ebx
 005808F3    call       @LStrFromChar
 005808F8    mov        edx,dword ptr [ebp-0C]
 005808FB    mov        eax,esi
 005808FD    call       @LStrCat
 00580902    inc        dword ptr [edi]
 00580904    mov        eax,dword ptr [ebp-4]
 00580907    call       @LStrLen
 0058090C    cmp        eax,dword ptr [edi]
<0058090E    jge        005808D7
>00580910    jmp        00580918
 00580912    mov        eax,dword ptr [ebp-8]
 00580915    mov        byte ptr [eax],20
 00580918    mov        eax,dword ptr [ebp-4]
 0058091B    call       @LStrLen
 00580920    cmp        eax,dword ptr [edi]
>00580922    jl         00580939
 00580924    mov        eax,dword ptr [edi]
 00580926    mov        edx,dword ptr [ebp-4]
 00580929    mov        al,byte ptr [edx+eax-1]
 0058092D    sub        al,2
>0058092F    je         00580939
 00580931    sub        al,2
<00580933    jne        00580896
 00580939    xor        eax,eax
 0058093B    pop        edx
 0058093C    pop        ecx
 0058093D    pop        ecx
 0058093E    mov        dword ptr fs:[eax],edx
 00580941    push       58095E
 00580946    lea        eax,[ebp-0C]
 00580949    call       @LStrClr
 0058094E    lea        eax,[ebp-4]
 00580951    call       @LStrClr
 00580956    ret
<00580957    jmp        @HandleFinally
<0058095C    jmp        00580946
 0058095E    pop        edi
 0058095F    pop        esi
 00580960    pop        ebx
 00580961    mov        esp,ebp
 00580963    pop        ebp
 00580964    ret        4
*}
//end;

//00580968
//procedure sub_00580968(?:AnsiString; ?:?; ?:?; ?:?);
//begin
{*
 00580968    push       ebp
 00580969    mov        ebp,esp
 0058096B    add        esp,0FFFFFFF0
 0058096E    push       ebx
 0058096F    push       esi
 00580970    push       edi
 00580971    xor        ebx,ebx
 00580973    mov        dword ptr [ebp-10],ebx
 00580976    mov        dword ptr [ebp-0C],ebx
 00580979    mov        dword ptr [ebp-8],ecx
 0058097C    mov        esi,edx
 0058097E    mov        dword ptr [ebp-4],eax
 00580981    mov        edi,dword ptr [ebp+8]
 00580984    mov        eax,dword ptr [ebp-4]
 00580987    call       @LStrAddRef
 0058098C    xor        eax,eax
 0058098E    push       ebp
 0058098F    push       580A3C
 00580994    push       dword ptr fs:[eax]
 00580997    mov        dword ptr fs:[eax],esp
 0058099A    mov        eax,dword ptr [ebp-8]
 0058099D    call       @LStrClr
 005809A2    mov        eax,edi
 005809A4    call       @LStrClr
>005809A9    jmp        00580A0D
 005809AB    mov        eax,dword ptr [esi]
 005809AD    mov        edx,dword ptr [ebp-4]
 005809B0    mov        bl,byte ptr [edx+eax-1]
 005809B4    cmp        bl,1
>005809B7    jne        005809F3
 005809B9    mov        eax,dword ptr [ebp-8]
 005809BC    cmp        dword ptr [eax],0
>005809BF    jne        00580A19
 005809C1    mov        eax,dword ptr [esi]
 005809C3    mov        edx,dword ptr [ebp-4]
 005809C6    mov        bl,byte ptr [edx+eax-1]
 005809CA    lea        eax,[ebp-0C]
 005809CD    mov        edx,ebx
 005809CF    call       @LStrFromChar
 005809D4    mov        edx,dword ptr [ebp-0C]
 005809D7    mov        eax,edi
 005809D9    call       @LStrCat
 005809DE    inc        dword ptr [esi]
 005809E0    mov        eax,dword ptr [ebp-4]
 005809E3    call       @LStrLen
 005809E8    cmp        eax,dword ptr [esi]
>005809EA    jl         00580A0D
 005809EC    cmp        bl,4
<005809EF    jne        005809C1
>005809F1    jmp        00580A0D
 005809F3    lea        eax,[ebp-10]
 005809F6    mov        edx,ebx
 005809F8    call       @LStrFromChar
 005809FD    mov        edx,dword ptr [ebp-10]
 00580A00    mov        eax,dword ptr [ebp-8]
 00580A03    call       @LStrCat
 00580A08    mov        eax,dword ptr [ebp-8]
 00580A0B    inc        dword ptr [esi]
 00580A0D    mov        eax,dword ptr [ebp-4]
 00580A10    call       @LStrLen
 00580A15    cmp        eax,dword ptr [esi]
<00580A17    jge        005809AB
 00580A19    xor        eax,eax
 00580A1B    pop        edx
 00580A1C    pop        ecx
 00580A1D    pop        ecx
 00580A1E    mov        dword ptr fs:[eax],edx
 00580A21    push       580A43
 00580A26    lea        eax,[ebp-10]
 00580A29    mov        edx,2
 00580A2E    call       @LStrArrayClr
 00580A33    lea        eax,[ebp-4]
 00580A36    call       @LStrClr
 00580A3B    ret
<00580A3C    jmp        @HandleFinally
<00580A41    jmp        00580A26
 00580A43    pop        edi
 00580A44    pop        esi
 00580A45    pop        ebx
 00580A46    mov        esp,ebp
 00580A48    pop        ebp
 00580A49    ret        4
*}
//end;

//00580A4C
//procedure sub_00580A4C(?:TRvNDRWriter; ?:AnsiString);
//begin
{*
 00580A4C    push       ebp
 00580A4D    mov        ebp,esp
 00580A4F    add        esp,0FFFFFE60
 00580A55    push       ebx
 00580A56    push       esi
 00580A57    push       edi
 00580A58    xor        ecx,ecx
 00580A5A    mov        dword ptr [ebp-0C],ecx
 00580A5D    mov        dword ptr [ebp-4],edx
 00580A60    mov        ebx,eax
 00580A62    mov        eax,dword ptr [ebp-4]
 00580A65    call       @LStrAddRef
 00580A6A    lea        esi,[ebp-0A0]
 00580A70    xor        eax,eax
 00580A72    push       ebp
 00580A73    push       580D2B
 00580A78    push       dword ptr fs:[eax]
 00580A7B    mov        dword ptr fs:[eax],esp
 00580A7E    xor        eax,eax
 00580A80    mov        dword ptr [ebp-10],eax
 00580A83    mov        edx,esi
 00580A85    mov        eax,ebx
 00580A87    call       0058704C
 00580A8C    lea        eax,[ebp-0C]
 00580A8F    push       eax
 00580A90    lea        ecx,[ebp-5]
 00580A93    lea        edx,[ebp-10]
 00580A96    mov        eax,dword ptr [ebp-4]
 00580A99    call       00580858
 00580A9E    xor        eax,eax
 00580AA0    mov        al,byte ptr [ebp-5]
 00580AA3    add        eax,0FFFFFFBE
 00580AA6    cmp        eax,30
>00580AA9    ja         00580CF3
 00580AAF    mov        al,byte ptr [eax+580ABC]
 00580AB5    jmp        dword ptr [eax*4+580AED]
 00580AB5    db         2
 00580AB5    db         10
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         11
 00580AB5    db         3
 00580AB5    db         14
 00580AB5    db         5
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         8
 00580AB5    db         0
 00580AB5    db         6
 00580AB5    db         0
 00580AB5    db         12
 00580AB5    db         7
 00580AB5    db         0
 00580AB5    db         4
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         9
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         0
 00580AB5    db         13
 00580AB5    dd         580CF3
 00580AB5    dd         580CF3
 00580AB5    dd         580B2E
 00580AB5    dd         580B46
 00580AB5    dd         580B5E
 00580AB5    dd         580B76
 00580AB5    dd         580B8E
 00580AB5    dd         580BA6
 00580AB5    dd         580BBE
 00580AB5    dd         580BE5
 00580AB5    dd         580C03
 00580AB5    dd         580C13
 00580AB5    dd         580C44
 00580AB5    dd         580CAC
 00580AB5    dd         580CEE
>00580B29    jmp        00580CF3
 00580B2E    mov        eax,dword ptr [ebp-0C]
 00580B31    mov        edx,580D44; '1'
 00580B36    call       @LStrCmp
 00580B3B    sete       al
 00580B3E    mov        byte ptr [esi+78],al
>00580B41    jmp        00580CF3
 00580B46    mov        eax,dword ptr [ebp-0C]
 00580B49    mov        edx,580D44; '1'
 00580B4E    call       @LStrCmp
 00580B53    sete       al
 00580B56    mov        byte ptr [esi+7A],al
>00580B59    jmp        00580CF3
 00580B5E    mov        eax,dword ptr [ebp-0C]
 00580B61    mov        edx,580D44; '1'
 00580B66    call       @LStrCmp
 00580B6B    sete       al
 00580B6E    mov        byte ptr [esi+79],al
>00580B71    jmp        00580CF3
 00580B76    mov        eax,dword ptr [ebp-0C]
 00580B79    mov        edx,580D44; '1'
 00580B7E    call       @LStrCmp
 00580B83    sete       al
 00580B86    mov        byte ptr [esi+7B],al
>00580B89    jmp        00580CF3
 00580B8E    mov        eax,dword ptr [ebp-0C]
 00580B91    mov        edx,580D44; '1'
 00580B96    call       @LStrCmp
 00580B9B    sete       al
 00580B9E    mov        byte ptr [esi+7D],al
>00580BA1    jmp        00580CF3
 00580BA6    mov        eax,dword ptr [ebp-0C]
 00580BA9    mov        edx,580D44; '1'
 00580BAE    call       @LStrCmp
 00580BB3    sete       al
 00580BB6    mov        byte ptr [esi+7C],al
>00580BB9    jmp        00580CF3
 00580BBE    lea        eax,[ebp-1A0]
 00580BC4    mov        edx,dword ptr [ebp-0C]
 00580BC7    mov        ecx,0FF
 00580BCC    call       @LStrToString
 00580BD1    lea        edx,[ebp-1A0]
 00580BD7    mov        eax,esi
 00580BD9    mov        cl,3C
 00580BDB    call       @PStrNCpy
>00580BE0    jmp        00580CF3
 00580BE5    mov        eax,dword ptr [ebp-0C]
 00580BE8    call       StrToFloat
 00580BED    fstp       qword ptr [esi+48]
 00580BF0    wait
 00580BF1    fld        qword ptr [esi+48]
 00580BF4    fdiv       dword ptr ds:[580D48]; 72:Single
 00580BFA    fstp       qword ptr [esi+50]
 00580BFD    wait
>00580BFE    jmp        00580CF3
 00580C03    mov        eax,dword ptr [ebp-0C]
 00580C06    call       StrToInt
 00580C0B    mov        dword ptr [esi+40],eax
>00580C0E    jmp        00580CF3
 00580C13    mov        eax,dword ptr [ebp-0C]
 00580C16    mov        al,byte ptr [eax]
 00580C18    sub        al,44
>00580C1A    je         00580C29
 00580C1C    sub        al,2
>00580C1E    je         00580C32
 00580C20    sub        al,10
>00580C22    je         00580C3B
>00580C24    jmp        00580CF3
 00580C29    mov        byte ptr [esi+44],0
>00580C2D    jmp        00580CF3
 00580C32    mov        byte ptr [esi+44],2
>00580C36    jmp        00580CF3
 00580C3B    mov        byte ptr [esi+44],1
>00580C3F    jmp        00580CF3
 00580C44    push       esi
 00580C45    mov        edi,esi
 00580C47    mov        esi,580D4C
 00580C4C    movs       dword ptr [edi],dword ptr [esi]
 00580C4D    movs       word ptr [edi],word ptr [esi]
 00580C4F    pop        esi
 00580C50    xor        eax,eax
 00580C52    mov        dword ptr [esi+48],eax
 00580C55    mov        dword ptr [esi+4C],40280000
 00580C5C    mov        dword ptr [esi+50],55555555
 00580C63    mov        dword ptr [esi+54],3FC55555
 00580C6A    mov        byte ptr [esi+78],0
 00580C6E    mov        byte ptr [esi+79],0
 00580C72    mov        byte ptr [esi+7A],0
 00580C76    mov        byte ptr [esi+7B],0
 00580C7A    xor        eax,eax
 00580C7C    mov        dword ptr [esi+40],eax
 00580C7F    mov        byte ptr [esi+44],0
 00580C83    mov        dword ptr [esi+88],1
 00580C8D    mov        byte ptr [esi+7D],0
 00580C91    mov        byte ptr [esi+7C],0
 00580C95    mov        word ptr [esi+7E],0
 00580C9B    xor        eax,eax
 00580C9D    mov        dword ptr [esi+58],eax
 00580CA0    mov        dword ptr [esi+5C],eax
 00580CA3    mov        byte ptr [esi+80],0
>00580CAA    jmp        00580CF3
 00580CAC    mov        byte ptr [esi+78],0
 00580CB0    mov        byte ptr [esi+79],0
 00580CB4    mov        byte ptr [esi+7A],0
 00580CB8    mov        byte ptr [esi+7B],0
 00580CBC    xor        eax,eax
 00580CBE    mov        dword ptr [esi+40],eax
 00580CC1    mov        byte ptr [esi+44],0
 00580CC5    mov        dword ptr [esi+88],1
 00580CCF    mov        byte ptr [esi+7D],0
 00580CD3    mov        byte ptr [esi+7C],0
 00580CD7    mov        word ptr [esi+7E],0
 00580CDD    xor        eax,eax
 00580CDF    mov        dword ptr [esi+58],eax
 00580CE2    mov        dword ptr [esi+5C],eax
 00580CE5    mov        byte ptr [esi+80],0
>00580CEC    jmp        00580CF3
 00580CEE    mov        eax,dword ptr [ebp-0C]
 00580CF1    mov        al,byte ptr [eax]
 00580CF3    mov        eax,dword ptr [ebp-4]
 00580CF6    call       @LStrLen
 00580CFB    cmp        eax,dword ptr [ebp-10]
<00580CFE    jge        00580A8C
 00580D04    mov        edx,esi
 00580D06    mov        eax,ebx
 00580D08    call       00587060
 00580D0D    xor        eax,eax
 00580D0F    pop        edx
 00580D10    pop        ecx
 00580D11    pop        ecx
 00580D12    mov        dword ptr fs:[eax],edx
 00580D15    push       580D32
 00580D1A    lea        eax,[ebp-0C]
 00580D1D    call       @LStrClr
 00580D22    lea        eax,[ebp-4]
 00580D25    call       @LStrClr
 00580D2A    ret
<00580D2B    jmp        @HandleFinally
<00580D30    jmp        00580D1A
 00580D32    pop        edi
 00580D33    pop        esi
 00580D34    pop        ebx
 00580D35    mov        esp,ebp
 00580D37    pop        ebp
 00580D38    ret
*}
//end;

//00580D54
//procedure sub_00580D54(?:TRvNDRWriter; ?:AnsiString; ?:?; ?:?);
//begin
{*
 00580D54    push       ebp
 00580D55    mov        ebp,esp
 00580D57    add        esp,0FFFFFFF8
 00580D5A    push       ebx
 00580D5B    push       esi
 00580D5C    xor        ebx,ebx
 00580D5E    mov        dword ptr [ebp-8],ebx
 00580D61    mov        ebx,ecx
 00580D63    mov        dword ptr [ebp-4],edx
 00580D66    mov        esi,eax
 00580D68    mov        eax,dword ptr [ebp-4]
 00580D6B    call       @LStrAddRef
 00580D70    xor        eax,eax
 00580D72    push       ebp
 00580D73    push       580DBA
 00580D78    push       dword ptr fs:[eax]
 00580D7B    mov        dword ptr fs:[eax],esp
 00580D7E    lea        eax,[ebp-8]
 00580D81    push       eax
 00580D82    mov        ecx,dword ptr [ebp+8]
 00580D85    mov        edx,ebx
 00580D87    mov        eax,dword ptr [ebp-4]
 00580D8A    call       00580968
 00580D8F    cmp        dword ptr [ebp-8],0
>00580D93    je         00580D9F
 00580D95    mov        edx,dword ptr [ebp-8]
 00580D98    mov        eax,esi
 00580D9A    call       00580A4C
 00580D9F    xor        eax,eax
 00580DA1    pop        edx
 00580DA2    pop        ecx
 00580DA3    pop        ecx
 00580DA4    mov        dword ptr fs:[eax],edx
 00580DA7    push       580DC1
 00580DAC    lea        eax,[ebp-8]
 00580DAF    mov        edx,2
 00580DB4    call       @LStrArrayClr
 00580DB9    ret
<00580DBA    jmp        @HandleFinally
<00580DBF    jmp        00580DAC
 00580DC1    pop        esi
 00580DC2    pop        ebx
 00580DC3    pop        ecx
 00580DC4    pop        ecx
 00580DC5    pop        ebp
 00580DC6    ret        4
*}
//end;

//00580DCC
//function sub_00580DCC(?:?):?;
//begin
{*
 00580DCC    push       ebp
 00580DCD    mov        ebp,esp
 00580DCF    push       ecx
 00580DD0    push       ebx
 00580DD1    push       esi
 00580DD2    mov        dword ptr [ebp-4],eax
 00580DD5    mov        eax,dword ptr [ebp-4]
 00580DD8    call       @LStrAddRef
 00580DDD    xor        eax,eax
 00580DDF    push       ebp
 00580DE0    push       580E3A
 00580DE5    push       dword ptr fs:[eax]
 00580DE8    mov        dword ptr fs:[eax],esp
 00580DEB    mov        bl,1
 00580DED    xor        esi,esi
 00580DEF    mov        eax,dword ptr [ebp-4]
 00580DF2    call       @LStrLen
 00580DF7    test       eax,eax
>00580DF9    jle        00580E24
 00580DFB    mov        edx,1
 00580E00    test       bl,bl
>00580E02    je         00580E15
 00580E04    mov        ecx,dword ptr [ebp-4]
 00580E07    cmp        byte ptr [ecx+edx-1],1
>00580E0C    jne        00580E12
 00580E0E    xor        ebx,ebx
>00580E10    jmp        00580E20
 00580E12    inc        esi
>00580E13    jmp        00580E20
 00580E15    mov        ecx,dword ptr [ebp-4]
 00580E18    cmp        byte ptr [ecx+edx-1],4
 00580E1D    sete       bl
 00580E20    inc        edx
 00580E21    dec        eax
<00580E22    jne        00580E00
 00580E24    xor        eax,eax
 00580E26    pop        edx
 00580E27    pop        ecx
 00580E28    pop        ecx
 00580E29    mov        dword ptr fs:[eax],edx
 00580E2C    push       580E41
 00580E31    lea        eax,[ebp-4]
 00580E34    call       @LStrClr
 00580E39    ret
<00580E3A    jmp        @HandleFinally
<00580E3F    jmp        00580E31
 00580E41    mov        eax,esi
 00580E43    pop        esi
 00580E44    pop        ebx
 00580E45    pop        ecx
 00580E46    pop        ebp
 00580E47    ret
*}
//end;

//00580E48
//function sub_00580E48(?:Pointer; ?:Int64):?;
//begin
{*
 00580E48    push       esi
 00580E49    mov        cl,1
 00580E4B    xor        esi,esi
 00580E4D    test       edx,edx
>00580E4F    jle        00580E6D
 00580E51    test       cl,cl
>00580E53    je         00580E61
 00580E55    cmp        byte ptr [eax],1
>00580E58    jne        00580E5E
 00580E5A    xor        ecx,ecx
>00580E5C    jmp        00580E67
 00580E5E    inc        esi
>00580E5F    jmp        00580E67
 00580E61    cmp        byte ptr [eax],4
 00580E64    sete       cl
 00580E67    inc        eax
 00580E68    dec        edx
 00580E69    test       edx,edx
<00580E6B    jg         00580E51
 00580E6D    mov        eax,esi
 00580E6F    pop        esi
 00580E70    ret
*}
//end;

//00580E74
//procedure sub_00580E74(?:?);
//begin
{*
 00580E74    push       ebx
 00580E75    push       esi
 00580E76    push       edi
 00580E77    mov        ebx,eax
 00580E79    xor        eax,eax
 00580E7B    mov        dword ptr [ebx+68],eax
 00580E7E    mov        edi,ebx
 00580E80    mov        esi,580ED8
 00580E85    movs       dword ptr [edi],dword ptr [esi]
 00580E86    movs       word ptr [edi],word ptr [esi]
 00580E88    xor        eax,eax
 00580E8A    mov        dword ptr [ebx+30],eax
 00580E8D    mov        dword ptr [ebx+34],40280000
 00580E94    mov        byte ptr [ebx+38],0
 00580E98    mov        byte ptr [ebx+39],0
 00580E9C    mov        byte ptr [ebx+3A],0
 00580EA0    mov        byte ptr [ebx+3B],0
 00580EA4    mov        byte ptr [ebx+3C],0
 00580EA8    mov        byte ptr [ebx+3D],0
 00580EAC    xor        eax,eax
 00580EAE    mov        dword ptr [ebx+40],eax
 00580EB1    mov        byte ptr [ebx+3E],0
 00580EB5    mov        byte ptr [ebx+48],1
 00580EB9    xor        eax,eax
 00580EBB    mov        dword ptr [ebx+50],eax
 00580EBE    mov        dword ptr [ebx+54],eax
 00580EC1    xor        eax,eax
 00580EC3    mov        dword ptr [ebx+58],eax
 00580EC6    mov        dword ptr [ebx+5C],eax
 00580EC9    xor        eax,eax
 00580ECB    mov        dword ptr [ebx+60],eax
 00580ECE    mov        dword ptr [ebx+64],eax
 00580ED1    pop        edi
 00580ED2    pop        esi
 00580ED3    pop        ebx
 00580ED4    ret
*}
//end;

//00580EE0
//procedure sub_00580EE0(?:?; ?:?);
//begin
{*
 00580EE0    push       ebp
 00580EE1    mov        ebp,esp
 00580EE3    add        esp,0FFFFFE80
 00580EE9    push       ebx
 00580EEA    push       esi
 00580EEB    push       edi
 00580EEC    xor        ecx,ecx
 00580EEE    mov        dword ptr [ebp-0C],ecx
 00580EF1    mov        dword ptr [ebp-4],edx
 00580EF4    mov        ebx,eax
 00580EF6    mov        eax,dword ptr [ebp-4]
 00580EF9    call       @LStrAddRef
 00580EFE    xor        eax,eax
 00580F00    push       ebp
 00580F01    push       581192
 00580F06    push       dword ptr fs:[eax]
 00580F09    mov        dword ptr fs:[eax],esp
 00580F0C    xor        eax,eax
 00580F0E    mov        dword ptr [ebp-10],eax
 00580F11    lea        eax,[ebp-0C]
 00580F14    push       eax
 00580F15    lea        ecx,[ebp-5]
 00580F18    lea        edx,[ebp-10]
 00580F1B    mov        eax,dword ptr [ebp-4]
 00580F1E    call       00580858
 00580F23    xor        eax,eax
 00580F25    mov        al,byte ptr [ebp-5]
 00580F28    add        eax,0FFFFFFBE
 00580F2B    cmp        eax,30
>00580F2E    ja         00581163
 00580F34    mov        al,byte ptr [eax+580F41]
 00580F3A    jmp        dword ptr [eax*4+580F72]
 00580F3A    db         2
 00580F3A    db         10
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         15
 00580F3A    db         17
 00580F3A    db         11
 00580F3A    db         3
 00580F3A    db         14
 00580F3A    db         5
 00580F3A    db         16
 00580F3A    db         0
 00580F3A    db         8
 00580F3A    db         0
 00580F3A    db         6
 00580F3A    db         0
 00580F3A    db         12
 00580F3A    db         7
 00580F3A    db         0
 00580F3A    db         4
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         9
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         0
 00580F3A    db         13
 00580F3A    dd         581163
 00580F3A    dd         581163
 00580F3A    dd         580FBF
 00580F3A    dd         580FD7
 00580F3A    dd         580FEF
 00580F3A    dd         581007
 00580F3A    dd         58101F
 00580F3A    dd         581037
 00580F3A    dd         58104F
 00580F3A    dd         581076
 00580F3A    dd         581087
 00580F3A    dd         581097
 00580F3A    dd         5810C8
 00580F3A    dd         5810E4
 00580F3A    dd         58110C
 00580F3A    dd         58113B
 00580F3A    dd         581149
 00580F3A    dd         581157
>00580FBA    jmp        00581163
 00580FBF    mov        eax,dword ptr [ebp-0C]
 00580FC2    mov        edx,5811A8; '1'
 00580FC7    call       @LStrCmp
 00580FCC    sete       al
 00580FCF    mov        byte ptr [ebx+38],al
>00580FD2    jmp        00581163
 00580FD7    mov        eax,dword ptr [ebp-0C]
 00580FDA    mov        edx,5811A8; '1'
 00580FDF    call       @LStrCmp
 00580FE4    sete       al
 00580FE7    mov        byte ptr [ebx+39],al
>00580FEA    jmp        00581163
 00580FEF    mov        eax,dword ptr [ebp-0C]
 00580FF2    mov        edx,5811A8; '1'
 00580FF7    call       @LStrCmp
 00580FFC    sete       al
 00580FFF    mov        byte ptr [ebx+3A],al
>00581002    jmp        00581163
 00581007    mov        eax,dword ptr [ebp-0C]
 0058100A    mov        edx,5811A8; '1'
 0058100F    call       @LStrCmp
 00581014    sete       al
 00581017    mov        byte ptr [ebx+3B],al
>0058101A    jmp        00581163
 0058101F    mov        eax,dword ptr [ebp-0C]
 00581022    mov        edx,5811A8; '1'
 00581027    call       @LStrCmp
 0058102C    sete       al
 0058102F    mov        byte ptr [ebx+3D],al
>00581032    jmp        00581163
 00581037    mov        eax,dword ptr [ebp-0C]
 0058103A    mov        edx,5811A8; '1'
 0058103F    call       @LStrCmp
 00581044    sete       al
 00581047    mov        byte ptr [ebx+3C],al
>0058104A    jmp        00581163
 0058104F    lea        eax,[ebp-110]
 00581055    mov        edx,dword ptr [ebp-0C]
 00581058    mov        ecx,0FF
 0058105D    call       @LStrToString
 00581062    lea        edx,[ebp-110]
 00581068    mov        eax,ebx
 0058106A    mov        cl,28
 0058106C    call       @PStrNCpy
>00581071    jmp        00581163
 00581076    mov        eax,dword ptr [ebp-0C]
 00581079    call       StrToFloat
 0058107E    fstp       qword ptr [ebx+30]
 00581081    wait
>00581082    jmp        00581163
 00581087    mov        eax,dword ptr [ebp-0C]
 0058108A    call       StrToInt
 0058108F    mov        dword ptr [ebx+40],eax
>00581092    jmp        00581163
 00581097    mov        eax,dword ptr [ebp-0C]
 0058109A    mov        al,byte ptr [eax]
 0058109C    sub        al,44
>0058109E    je         005810AD
 005810A0    sub        al,2
>005810A2    je         005810B6
 005810A4    sub        al,10
>005810A6    je         005810BF
>005810A8    jmp        00581163
 005810AD    mov        byte ptr [ebx+3E],0
>005810B1    jmp        00581163
 005810B6    mov        byte ptr [ebx+3E],2
>005810BA    jmp        00581163
 005810BF    mov        byte ptr [ebx+3E],1
>005810C3    jmp        00581163
 005810C8    lea        eax,[ebp-180]
 005810CE    call       00580E74
 005810D3    lea        esi,[ebp-180]
 005810D9    mov        edi,ebx
 005810DB    mov        ecx,1C
 005810E0    rep movs   dword ptr [edi],dword ptr [esi]
>005810E2    jmp        00581163
 005810E4    lea        eax,[ebp-180]
 005810EA    call       00580E74
 005810EF    mov        eax,dword ptr [ebp-148]
 005810F5    mov        dword ptr [ebx+38],eax
 005810F8    mov        eax,dword ptr [ebp-144]
 005810FE    mov        dword ptr [ebx+3C],eax
 00581101    mov        eax,dword ptr [ebp-140]
 00581107    mov        dword ptr [ebx+40],eax
>0058110A    jmp        00581163
 0058110C    mov        eax,dword ptr [ebp-0C]
 0058110F    mov        al,byte ptr [eax]
 00581111    sub        al,42
>00581113    je         00581135
 00581115    dec        al
>00581117    je         00581129
 00581119    sub        al,9
>0058111B    je         00581123
 0058111D    sub        al,6
>0058111F    je         0058112F
>00581121    jmp        00581163
 00581123    mov        byte ptr [ebx+48],1
>00581127    jmp        00581163
 00581129    mov        byte ptr [ebx+48],0
>0058112D    jmp        00581163
 0058112F    mov        byte ptr [ebx+48],2
>00581133    jmp        00581163
 00581135    mov        byte ptr [ebx+48],3
>00581139    jmp        00581163
 0058113B    mov        eax,dword ptr [ebp-0C]
 0058113E    call       StrToFloat
 00581143    fstp       qword ptr [ebx+50]
 00581146    wait
>00581147    jmp        00581163
 00581149    mov        eax,dword ptr [ebp-0C]
 0058114C    call       StrToFloat
 00581151    fstp       qword ptr [ebx+58]
 00581154    wait
>00581155    jmp        00581163
 00581157    mov        eax,dword ptr [ebp-0C]
 0058115A    call       StrToFloat
 0058115F    fstp       qword ptr [ebx+60]
 00581162    wait
 00581163    mov        eax,dword ptr [ebp-4]
 00581166    call       @LStrLen
 0058116B    cmp        eax,dword ptr [ebp-10]
<0058116E    jge        00580F11
 00581174    xor        eax,eax
 00581176    pop        edx
 00581177    pop        ecx
 00581178    pop        ecx
 00581179    mov        dword ptr fs:[eax],edx
 0058117C    push       581199
 00581181    lea        eax,[ebp-0C]
 00581184    call       @LStrClr
 00581189    lea        eax,[ebp-4]
 0058118C    call       @LStrClr
 00581191    ret
<00581192    jmp        @HandleFinally
<00581197    jmp        00581181
 00581199    pop        edi
 0058119A    pop        esi
 0058119B    pop        ebx
 0058119C    mov        esp,ebp
 0058119E    pop        ebp
 0058119F    ret
*}
//end;

//005811AC
//procedure sub_005811AC(?:AnsiString; ?:AnsiString);
//begin
{*
 005811AC    push       ebp
 005811AD    mov        ebp,esp
 005811AF    push       ecx
 005811B0    push       ebx
 005811B1    mov        dword ptr [ebp-4],edx
 005811B4    mov        ebx,eax
 005811B6    mov        eax,dword ptr [ebp-4]
 005811B9    call       @LStrAddRef
 005811BE    xor        eax,eax
 005811C0    push       ebp
 005811C1    push       58120B
 005811C6    push       dword ptr fs:[eax]
 005811C9    mov        dword ptr fs:[eax],esp
 005811CC    cmp        dword ptr [ebx],0
>005811CF    jne        005811DF
 005811D1    mov        eax,ebx
 005811D3    mov        edx,581220; ''
 005811D8    call       @LStrAsg
>005811DD    jmp        005811EB
 005811DF    mov        eax,ebx
 005811E1    mov        edx,58122C; ''
 005811E6    call       @LStrCat
 005811EB    mov        eax,ebx
 005811ED    mov        edx,dword ptr [ebp-4]
 005811F0    call       @LStrCat
 005811F5    xor        eax,eax
 005811F7    pop        edx
 005811F8    pop        ecx
 005811F9    pop        ecx
 005811FA    mov        dword ptr fs:[eax],edx
 005811FD    push       581212
 00581202    lea        eax,[ebp-4]
 00581205    call       @LStrClr
 0058120A    ret
<0058120B    jmp        @HandleFinally
<00581210    jmp        00581202
 00581212    pop        ebx
 00581213    pop        ecx
 00581214    pop        ebp
 00581215    ret
*}
//end;

//00581230
//procedure sub_00581230(?:AnsiString; ?:?; ?:?; ?:?);
//begin
{*
 00581230    push       ebp
 00581231    mov        ebp,esp
 00581233    push       ecx
 00581234    mov        ecx,26
 00581239    push       0
 0058123B    push       0
 0058123D    dec        ecx
<0058123E    jne        00581239
 00581240    push       ecx
 00581241    xchg       ecx,dword ptr [ebp-4]
 00581244    push       ebx
 00581245    push       esi
 00581246    push       edi
 00581247    mov        esi,ecx
 00581249    lea        edi,[ebp-0E0]
 0058124F    mov        ecx,1C
 00581254    rep movs   dword ptr [edi],dword ptr [esi]
 00581256    mov        esi,edx
 00581258    lea        edi,[ebp-70]
 0058125B    mov        ecx,1C
 00581260    rep movs   dword ptr [edi],dword ptr [esi]
 00581262    mov        ebx,eax
 00581264    lea        esi,[ebp-0E0]
 0058126A    xor        eax,eax
 0058126C    push       ebp
 0058126D    push       581574
 00581272    push       dword ptr fs:[eax]
 00581275    mov        dword ptr fs:[eax],esp
 00581278    fld        qword ptr [ebp-20]
 0058127B    fcomp      qword ptr [esi+50]
 0058127E    fnstsw     al
 00581280    sahf
>00581281    je         005812BB
 00581283    fld        qword ptr [esi+50]
 00581286    add        esp,0FFFFFFF4
 00581289    fstp       tbyte ptr [esp]
 0058128C    wait
 0058128D    lea        eax,[ebp-0E8]
 00581293    call       FloatToStr
 00581298    mov        ecx,dword ptr [ebp-0E8]
 0058129E    lea        eax,[ebp-0E4]
 005812A4    mov        edx,58158C; 'F'
 005812A9    call       @LStrCat3
 005812AE    mov        edx,dword ptr [ebp-0E4]
 005812B4    mov        eax,ebx
 005812B6    call       005811AC
 005812BB    fld        qword ptr [ebp-18]
 005812BE    fcomp      qword ptr [esi+58]
 005812C1    fnstsw     al
 005812C3    sahf
>005812C4    je         005812FE
 005812C6    fld        qword ptr [esi+58]
 005812C9    add        esp,0FFFFFFF4
 005812CC    fstp       tbyte ptr [esp]
 005812CF    wait
 005812D0    lea        eax,[ebp-0F0]
 005812D6    call       FloatToStr
 005812DB    mov        ecx,dword ptr [ebp-0F0]
 005812E1    lea        eax,[ebp-0EC]
 005812E7    mov        edx,581598; 'L'
 005812EC    call       @LStrCat3
 005812F1    mov        edx,dword ptr [ebp-0EC]
 005812F7    mov        eax,ebx
 005812F9    call       005811AC
 005812FE    fld        qword ptr [ebp-10]
 00581301    fcomp      qword ptr [esi+60]
 00581304    fnstsw     al
 00581306    sahf
>00581307    je         00581341
 00581309    fld        qword ptr [esi+60]
 0058130C    add        esp,0FFFFFFF4
 0058130F    fstp       tbyte ptr [esp]
 00581312    wait
 00581313    lea        eax,[ebp-0F8]
 00581319    call       FloatToStr
 0058131E    mov        ecx,dword ptr [ebp-0F8]
 00581324    lea        eax,[ebp-0F4]
 0058132A    mov        edx,5815A4; 'G'
 0058132F    call       @LStrCat3
 00581334    mov        edx,dword ptr [ebp-0F4]
 0058133A    mov        eax,ebx
 0058133C    call       005811AC
 00581341    lea        eax,[ebp-70]
 00581344    mov        edx,esi
 00581346    xor        ecx,ecx
 00581348    mov        cl,byte ptr [eax]
 0058134A    inc        ecx
 0058134B    call       @AStrCmp
>00581350    je         0058138F
 00581352    mov        edx,5815A8; 'N'
 00581357    lea        eax,[ebp-128]
 0058135D    call       @PStrCpy
 00581362    mov        edx,esi
 00581364    lea        eax,[ebp-128]
 0058136A    mov        cl,29
 0058136C    call       @PStrNCat
 00581371    lea        edx,[ebp-128]
 00581377    lea        eax,[ebp-0FC]
 0058137D    call       @LStrFromString
 00581382    mov        edx,dword ptr [ebp-0FC]
 00581388    mov        eax,ebx
 0058138A    call       005811AC
 0058138F    fld        qword ptr [ebp-40]
 00581392    fcomp      qword ptr [esi+30]
 00581395    fnstsw     al
 00581397    sahf
>00581398    je         005813D2
 0058139A    fld        qword ptr [esi+30]
 0058139D    add        esp,0FFFFFFF4
 005813A0    fstp       tbyte ptr [esp]
 005813A3    wait
 005813A4    lea        eax,[ebp-130]
 005813AA    call       FloatToStr
 005813AF    mov        ecx,dword ptr [ebp-130]
 005813B5    lea        eax,[ebp-12C]
 005813BB    mov        edx,5815B4; 'Z'
 005813C0    call       @LStrCat3
 005813C5    mov        edx,dword ptr [ebp-12C]
 005813CB    mov        eax,ebx
 005813CD    call       005811AC
 005813D2    mov        al,byte ptr [esi+38]
 005813D5    cmp        al,byte ptr [ebp-38]
>005813D8    je         005813F8
 005813DA    test       al,al
>005813DC    je         005813EC
 005813DE    mov        eax,ebx
 005813E0    mov        edx,5815C0; 'B1'
 005813E5    call       005811AC
>005813EA    jmp        005813F8
 005813EC    mov        eax,ebx
 005813EE    mov        edx,5815CC; 'B0'
 005813F3    call       005811AC
 005813F8    mov        al,byte ptr [esi+39]
 005813FB    cmp        al,byte ptr [ebp-37]
>005813FE    je         0058141E
 00581400    test       al,al
>00581402    je         00581412
 00581404    mov        eax,ebx
 00581406    mov        edx,5815D8; 'I1'
 0058140B    call       005811AC
>00581410    jmp        0058141E
 00581412    mov        eax,ebx
 00581414    mov        edx,5815E4; 'I0'
 00581419    call       005811AC
 0058141E    mov        al,byte ptr [esi+3A]
 00581421    cmp        al,byte ptr [ebp-36]
>00581424    je         00581444
 00581426    test       al,al
>00581428    je         00581438
 0058142A    mov        eax,ebx
 0058142C    mov        edx,5815F0; 'U1'
 00581431    call       005811AC
>00581436    jmp        00581444
 00581438    mov        eax,ebx
 0058143A    mov        edx,5815FC; 'U0'
 0058143F    call       005811AC
 00581444    mov        al,byte ptr [esi+3B]
 00581447    cmp        al,byte ptr [ebp-35]
>0058144A    je         0058146A
 0058144C    test       al,al
>0058144E    je         0058145E
 00581450    mov        eax,ebx
 00581452    mov        edx,581608; 'K1'
 00581457    call       005811AC
>0058145C    jmp        0058146A
 0058145E    mov        eax,ebx
 00581460    mov        edx,581614; 'K0'
 00581465    call       005811AC
 0058146A    mov        al,byte ptr [esi+3C]
 0058146D    cmp        al,byte ptr [ebp-34]
>00581470    je         00581490
 00581472    test       al,al
>00581474    je         00581484
 00581476    mov        eax,ebx
 00581478    mov        edx,581620; 'S1'
 0058147D    call       005811AC
>00581482    jmp        00581490
 00581484    mov        eax,ebx
 00581486    mov        edx,58162C; 'S0'
 0058148B    call       005811AC
 00581490    mov        al,byte ptr [esi+3D]
 00581493    cmp        al,byte ptr [ebp-33]
>00581496    je         005814B6
 00581498    test       al,al
>0058149A    je         005814AA
 0058149C    mov        eax,ebx
 0058149E    mov        edx,581638; 'P1'
 005814A3    call       005811AC
>005814A8    jmp        005814B6
 005814AA    mov        eax,ebx
 005814AC    mov        edx,581644; 'P0'
 005814B1    call       005811AC
 005814B6    mov        edi,dword ptr [esi+40]
 005814B9    cmp        edi,dword ptr [ebp-30]
>005814BC    je         005814EE
 005814BE    lea        edx,[ebp-138]
 005814C4    mov        eax,edi
 005814C6    call       IntToStr
 005814CB    mov        ecx,dword ptr [ebp-138]
 005814D1    lea        eax,[ebp-134]
 005814D7    mov        edx,581650; 'C'
 005814DC    call       @LStrCat3
 005814E1    mov        edx,dword ptr [ebp-134]
 005814E7    mov        eax,ebx
 005814E9    call       005811AC
 005814EE    mov        al,byte ptr [esi+48]
 005814F1    cmp        al,byte ptr [ebp-28]
>005814F4    je         0058153C
 005814F6    sub        al,1
>005814F8    jb         00581514
>005814FA    je         00581506
 005814FC    dec        al
>005814FE    je         00581522
 00581500    dec        al
>00581502    je         00581530
>00581504    jmp        0058153C
 00581506    mov        eax,ebx
 00581508    mov        edx,58165C; 'JL'
 0058150D    call       005811AC
>00581512    jmp        0058153C
 00581514    mov        eax,ebx
 00581516    mov        edx,581668; 'JC'
 0058151B    call       005811AC
>00581520    jmp        0058153C
 00581522    mov        eax,ebx
 00581524    mov        edx,581674; 'JR'
 00581529    call       005811AC
>0058152E    jmp        0058153C
 00581530    mov        eax,ebx
 00581532    mov        edx,581680; 'JB'
 00581537    call       005811AC
 0058153C    mov        eax,dword ptr [ebp+8]
 0058153F    mov        edx,dword ptr [ebx]
 00581541    call       @LStrAsg
 00581546    xor        eax,eax
 00581548    pop        edx
 00581549    pop        ecx
 0058154A    pop        ecx
 0058154B    mov        dword ptr fs:[eax],edx
 0058154E    push       58157B
 00581553    lea        eax,[ebp-138]
 00581559    mov        edx,4
 0058155E    call       @LStrArrayClr
 00581563    lea        eax,[ebp-0FC]
 00581569    mov        edx,7
 0058156E    call       @LStrArrayClr
 00581573    ret
<00581574    jmp        @HandleFinally
<00581579    jmp        00581553
 0058157B    pop        edi
 0058157C    pop        esi
 0058157D    pop        ebx
 0058157E    mov        esp,ebp
 00581580    pop        ebp
 00581581    ret        4
*}
//end;

//00581684
//procedure sub_00581684(?:?; ?:AnsiString);
//begin
{*
 00581684    push       ebp
 00581685    mov        ebp,esp
 00581687    add        esp,0FFFFFF1C
 0058168D    push       ebx
 0058168E    push       esi
 0058168F    push       edi
 00581690    xor        ecx,ecx
 00581692    mov        dword ptr [ebp-74],ecx
 00581695    mov        esi,eax
 00581697    lea        edi,[ebp-70]
 0058169A    mov        ecx,1C
 0058169F    rep movs   dword ptr [edi],dword ptr [esi]
 005816A1    mov        ebx,edx
 005816A3    xor        eax,eax
 005816A5    push       ebp
 005816A6    push       581705
 005816AB    push       dword ptr fs:[eax]
 005816AE    mov        dword ptr fs:[eax],esp
 005816B1    mov        eax,ebx
 005816B3    call       @LStrClr
 005816B8    mov        eax,ebx
 005816BA    mov        edx,58171C; 'R'
 005816BF    call       005811AC
 005816C4    lea        eax,[ebp-74]
 005816C7    push       eax
 005816C8    lea        eax,[ebp-0E4]
 005816CE    call       00580E74
 005816D3    lea        edx,[ebp-0E4]
 005816D9    mov        eax,ebx
 005816DB    lea        ecx,[ebp-70]
 005816DE    call       00581230
 005816E3    mov        eax,ebx
 005816E5    mov        edx,581728; ''
 005816EA    call       @LStrCat
 005816EF    xor        eax,eax
 005816F1    pop        edx
 005816F2    pop        ecx
 005816F3    pop        ecx
 005816F4    mov        dword ptr fs:[eax],edx
 005816F7    push       58170C
 005816FC    lea        eax,[ebp-74]
 005816FF    call       @LStrClr
 00581704    ret
<00581705    jmp        @HandleFinally
<0058170A    jmp        005816FC
 0058170C    pop        edi
 0058170D    pop        esi
 0058170E    pop        ebx
 0058170F    mov        esp,ebp
 00581711    pop        ebp
 00581712    ret
*}
//end;

//0058172C
//procedure sub_0058172C(?:?);
//begin
{*
 0058172C    push       ebp
 0058172D    mov        ebp,esp
 0058172F    mov        eax,dword ptr [ebp+8]
 00581732    inc        dword ptr [eax-4]
 00581735    pop        ebp
 00581736    ret
*}
//end;

//00581738
//procedure sub_00581738(?:?);
//begin
{*
 00581738    push       ebp
 00581739    mov        ebp,esp
 0058173B    mov        eax,dword ptr [ebp+8]
 0058173E    dec        dword ptr [eax-4]
 00581741    pop        ebp
 00581742    ret
*}
//end;

//00581744
//function sub_00581744(?:?):?;
//begin
{*
 00581744    push       ebp
 00581745    mov        ebp,esp
 00581747    mov        eax,dword ptr [ebp+8]
 0058174A    mov        eax,dword ptr [eax-4]
 0058174D    mov        edx,dword ptr [ebp+8]
 00581750    cmp        eax,dword ptr [edx-8]
>00581753    jl         00581759
 00581755    xor        eax,eax
 00581757    pop        ebp
 00581758    ret
 00581759    mov        eax,dword ptr [ebp+8]
 0058175C    mov        eax,dword ptr [eax-4]
 0058175F    mov        edx,dword ptr [ebp+8]
 00581762    mov        edx,dword ptr [edx-0C]
 00581765    mov        al,byte ptr [edx+eax]
 00581768    pop        ebp
 00581769    ret
*}
//end;

//0058176C
//procedure sub_0058176C(?:?);
//begin
{*
 0058176C    push       ebp
 0058176D    mov        ebp,esp
 0058176F    push       ebx
 00581770    mov        eax,70
 00581775    call       @GetMem
 0058177A    mov        ebx,eax
 0058177C    mov        edx,ebx
 0058177E    mov        eax,dword ptr [ebp+8]
 00581781    mov        eax,dword ptr [eax-10]
 00581784    mov        ecx,70
 00581789    call       Move
 0058178E    mov        eax,dword ptr [ebp+8]
 00581791    mov        eax,dword ptr [eax-10]
 00581794    mov        dword ptr [ebx+68],eax
 00581797    mov        eax,dword ptr [ebp+8]
 0058179A    mov        dword ptr [eax-10],ebx
 0058179D    pop        ebx
 0058179E    pop        ebp
 0058179F    ret
*}
//end;

//005817A0
//procedure sub_005817A0(?:?);
//begin
{*
 005817A0    push       ebp
 005817A1    mov        ebp,esp
 005817A3    mov        eax,dword ptr [ebp+8]
 005817A6    cmp        dword ptr [eax-10],0
>005817AA    je         005817CB
 005817AC    mov        eax,dword ptr [ebp+8]
 005817AF    mov        eax,dword ptr [eax-10]
 005817B2    mov        edx,dword ptr [ebp+8]
 005817B5    mov        edx,dword ptr [edx-10]
 005817B8    mov        edx,dword ptr [edx+68]
 005817BB    mov        ecx,dword ptr [ebp+8]
 005817BE    mov        dword ptr [ecx-10],edx
 005817C1    mov        edx,70
 005817C6    call       @FreeMem
 005817CB    pop        ebp
 005817CC    ret
*}
//end;

//005817D0
//procedure sub_005817D0(?:?);
//begin
{*
 005817D0    push       ebp
 005817D1    mov        ebp,esp
 005817D3    push       ebx
 005817D4    mov        ebx,dword ptr [ebp+8]
 005817D7    add        ebx,0FFFFFFF0
 005817DA    cmp        dword ptr [ebx],0
>005817DD    je         005817F7
 005817DF    mov        eax,dword ptr [ebx]
 005817E1    mov        edx,dword ptr [ebx]
 005817E3    mov        edx,dword ptr [edx+68]
 005817E6    mov        dword ptr [ebx],edx
 005817E8    mov        edx,70
 005817ED    call       @FreeMem
 005817F2    cmp        dword ptr [ebx],0
<005817F5    jne        005817DF
 005817F7    pop        ebx
 005817F8    pop        ebp
 005817F9    ret
*}
//end;

//005817FC
//function sub_005817FC(?:?):?;
//begin
{*
 005817FC    push       ebp
 005817FD    mov        ebp,esp
 005817FF    push       0
 00581801    push       0
 00581803    push       ebx
 00581804    xor        eax,eax
 00581806    push       ebp
 00581807    push       581896
 0058180C    push       dword ptr fs:[eax]
 0058180F    mov        dword ptr fs:[eax],esp
 00581812    mov        eax,dword ptr [ebp+8]
 00581815    push       eax
 00581816    call       00581744
 0058181B    pop        ecx
 0058181C    call       UpCase
 00581821    mov        edx,eax
 00581823    lea        eax,[ebp-4]
 00581826    call       @LStrFromChar
 0058182B    mov        eax,dword ptr [ebp-4]
 0058182E    mov        edx,5818AC; '0123456789ABCDEF'
 00581833    call       @LStrPos
 00581838    dec        eax
 00581839    mov        ebx,eax
 0058183B    shl        ebx,4
 0058183E    mov        eax,dword ptr [ebp+8]
 00581841    push       eax
 00581842    call       0058172C
 00581847    pop        ecx
 00581848    mov        eax,dword ptr [ebp+8]
 0058184B    push       eax
 0058184C    call       00581744
 00581851    pop        ecx
 00581852    call       UpCase
 00581857    mov        edx,eax
 00581859    lea        eax,[ebp-8]
 0058185C    call       @LStrFromChar
 00581861    mov        eax,dword ptr [ebp-8]
 00581864    mov        edx,5818AC; '0123456789ABCDEF'
 00581869    call       @LStrPos
 0058186E    dec        eax
 0058186F    add        bl,al
 00581871    mov        eax,dword ptr [ebp+8]
 00581874    push       eax
 00581875    call       0058172C
 0058187A    pop        ecx
 0058187B    xor        eax,eax
 0058187D    pop        edx
 0058187E    pop        ecx
 0058187F    pop        ecx
 00581880    mov        dword ptr fs:[eax],edx
 00581883    push       58189D
 00581888    lea        eax,[ebp-8]
 0058188B    mov        edx,2
 00581890    call       @LStrArrayClr
 00581895    ret
<00581896    jmp        @HandleFinally
<0058189B    jmp        00581888
 0058189D    mov        eax,ebx
 0058189F    pop        ebx
 005818A0    pop        ecx
 005818A1    pop        ecx
 005818A2    pop        ebp
 005818A3    ret
*}
//end;

//005818C0
//procedure sub_005818C0(?:?);
//begin
{*
 005818C0    push       ebp
 005818C1    mov        ebp,esp
 005818C3    xor        ecx,ecx
 005818C5    push       ecx
 005818C6    push       ecx
 005818C7    push       ecx
 005818C8    push       ecx
 005818C9    push       ecx
 005818CA    push       ecx
 005818CB    xor        eax,eax
 005818CD    push       ebp
 005818CE    push       581C28
 005818D3    push       dword ptr fs:[eax]
 005818D6    mov        dword ptr fs:[eax],esp
 005818D9    mov        eax,dword ptr [ebp+8]
 005818DC    cmp        byte ptr [eax-15],0
>005818E0    je         005818EE
 005818E2    mov        eax,dword ptr [ebp+8]
 005818E5    mov        byte ptr [eax-15],0
>005818E9    jmp        00581C05
 005818EE    mov        eax,dword ptr [ebp+8]
 005818F1    add        eax,0FFFFFFE4
 005818F4    call       @LStrClr
 005818F9    mov        eax,dword ptr [ebp+8]
 005818FC    mov        byte ptr [eax-59],0
 00581900    mov        eax,dword ptr [ebp+8]
 00581903    xor        edx,edx
 00581905    mov        dword ptr [eax-60],edx
 00581908    mov        eax,dword ptr [ebp+8]
 0058190B    push       eax
 0058190C    call       00581744
 00581911    pop        ecx
 00581912    sub        al,1
>00581914    jb         00581927
 00581916    sub        al,5B
>00581918    je         00581966
 0058191A    sub        al,1F
>0058191C    je         0058193A
 0058191E    sub        al,2
>00581920    je         00581950
>00581922    jmp        00581AD6
 00581927    mov        eax,dword ptr [ebp+8]
 0058192A    mov        byte ptr [eax-61],4
 0058192E    mov        eax,dword ptr [ebp+8]
 00581931    mov        byte ptr [eax-62],0
>00581935    jmp        00581C05
 0058193A    mov        eax,dword ptr [ebp+8]
 0058193D    push       eax
 0058193E    call       0058172C
 00581943    pop        ecx
 00581944    mov        eax,dword ptr [ebp+8]
 00581947    mov        byte ptr [eax-61],2
>0058194B    jmp        00581C05
 00581950    mov        eax,dword ptr [ebp+8]
 00581953    push       eax
 00581954    call       0058172C
 00581959    pop        ecx
 0058195A    mov        eax,dword ptr [ebp+8]
 0058195D    mov        byte ptr [eax-61],3
>00581961    jmp        00581C05
 00581966    mov        eax,dword ptr [ebp+8]
 00581969    push       eax
 0058196A    call       0058172C
 0058196F    pop        ecx
 00581970    mov        eax,dword ptr [ebp+8]
 00581973    push       eax
 00581974    call       00581744
 00581979    pop        ecx
 0058197A    cmp        al,20
<0058197C    je         00581966
 0058197E    mov        eax,dword ptr [ebp+8]
 00581981    push       eax
 00581982    call       00581744
 00581987    pop        ecx
 00581988    add        al,9F
 0058198A    sub        al,1A
>0058198C    jae        00581A6E
 00581992    mov        eax,dword ptr [ebp+8]
 00581995    mov        byte ptr [eax-61],0
 00581999    mov        eax,dword ptr [ebp+8]
 0058199C    push       eax
 0058199D    call       00581744
 005819A2    pop        ecx
 005819A3    mov        edx,eax
 005819A5    lea        eax,[ebp-4]
 005819A8    call       @LStrFromChar
 005819AD    mov        edx,dword ptr [ebp-4]
 005819B0    mov        eax,dword ptr [ebp+8]
 005819B3    add        eax,0FFFFFFE4
 005819B6    call       @LStrCat
 005819BB    mov        eax,dword ptr [ebp+8]
 005819BE    mov        eax,dword ptr [ebp+8]
 005819C1    push       eax
 005819C2    call       0058172C
 005819C7    pop        ecx
 005819C8    mov        eax,dword ptr [ebp+8]
 005819CB    push       eax
 005819CC    call       00581744
 005819D1    pop        ecx
 005819D2    add        al,9F
 005819D4    sub        al,1A
<005819D6    jb         00581999
 005819D8    mov        eax,dword ptr [ebp+8]
 005819DB    push       eax
 005819DC    call       00581744
 005819E1    pop        ecx
 005819E2    sub        al,2D
>005819E4    je         005819EC
 005819E6    add        al,0FD
 005819E8    sub        al,0A
>005819EA    jae        00581A4D
 005819EC    mov        eax,dword ptr [ebp+8]
 005819EF    push       eax
 005819F0    call       00581744
 005819F5    pop        ecx
 005819F6    mov        edx,eax
 005819F8    lea        eax,[ebp-8]
 005819FB    mov        byte ptr [eax+1],dl
 005819FE    mov        byte ptr [eax],1
 00581A01    lea        edx,[ebp-8]
 00581A04    mov        eax,dword ptr [ebp+8]
 00581A07    add        eax,0FFFFFFA7
 00581A0A    mov        cl,3C
 00581A0C    call       @PStrNCat
 00581A11    mov        eax,dword ptr [ebp+8]
 00581A14    push       eax
 00581A15    call       0058172C
 00581A1A    pop        ecx
 00581A1B    mov        eax,dword ptr [ebp+8]
 00581A1E    push       eax
 00581A1F    call       00581744
 00581A24    pop        ecx
 00581A25    add        al,0D0
 00581A27    sub        al,0A
<00581A29    jb         005819EC
 00581A2B    lea        eax,[ebp-0C]
 00581A2E    mov        edx,dword ptr [ebp+8]
 00581A31    add        edx,0FFFFFFA7
 00581A34    call       @LStrFromString
 00581A39    mov        eax,dword ptr [ebp-0C]
 00581A3C    mov        edx,dword ptr [ebp+8]
 00581A3F    add        edx,0FFFFFFEC
 00581A42    call       @ValLong
 00581A47    mov        edx,dword ptr [ebp+8]
 00581A4A    mov        dword ptr [edx-60],eax
 00581A4D    mov        eax,dword ptr [ebp+8]
 00581A50    push       eax
 00581A51    call       00581744
 00581A56    pop        ecx
 00581A57    cmp        al,20
>00581A59    jne        00581C05
 00581A5F    mov        eax,dword ptr [ebp+8]
 00581A62    push       eax
 00581A63    call       0058172C
 00581A68    pop        ecx
>00581A69    jmp        00581C05
 00581A6E    mov        eax,dword ptr [ebp+8]
 00581A71    push       eax
 00581A72    call       00581744
 00581A77    pop        ecx
 00581A78    cmp        al,27
>00581A7A    jne        00581AA9
 00581A7C    mov        eax,dword ptr [ebp+8]
 00581A7F    mov        byte ptr [eax-61],4
 00581A83    mov        eax,dword ptr [ebp+8]
 00581A86    push       eax
 00581A87    call       0058172C
 00581A8C    pop        ecx
 00581A8D    mov        eax,dword ptr [ebp+8]
 00581A90    push       eax
 00581A91    call       005817FC
 00581A96    pop        ecx
 00581A97    mov        edx,eax
 00581A99    mov        eax,dword ptr [ebp+8]
 00581A9C    add        eax,0FFFFFFE4
 00581A9F    call       @LStrFromChar
>00581AA4    jmp        00581C05
 00581AA9    mov        eax,dword ptr [ebp+8]
 00581AAC    mov        byte ptr [eax-61],1
 00581AB0    mov        eax,dword ptr [ebp+8]
 00581AB3    push       eax
 00581AB4    call       00581744
 00581AB9    pop        ecx
 00581ABA    mov        edx,eax
 00581ABC    mov        eax,dword ptr [ebp+8]
 00581ABF    add        eax,0FFFFFFE4
 00581AC2    call       @LStrFromChar
 00581AC7    mov        eax,dword ptr [ebp+8]
 00581ACA    push       eax
 00581ACB    call       0058172C
 00581AD0    pop        ecx
>00581AD1    jmp        00581C05
 00581AD6    mov        eax,dword ptr [ebp+8]
 00581AD9    mov        byte ptr [eax-61],4
 00581ADD    mov        eax,dword ptr [ebp+8]
 00581AE0    push       eax
 00581AE1    call       00581744
 00581AE6    pop        ecx
 00581AE7    sub        al,20
>00581AE9    jb         00581B10
 00581AEB    mov        eax,dword ptr [ebp+8]
 00581AEE    push       eax
 00581AEF    call       00581744
 00581AF4    pop        ecx
 00581AF5    mov        edx,eax
 00581AF7    lea        eax,[ebp-10]
 00581AFA    call       @LStrFromChar
 00581AFF    mov        edx,dword ptr [ebp-10]
 00581B02    mov        eax,dword ptr [ebp+8]
 00581B05    add        eax,0FFFFFFE4
 00581B08    call       @LStrCat
 00581B0D    mov        eax,dword ptr [ebp+8]
 00581B10    mov        eax,dword ptr [ebp+8]
 00581B13    push       eax
 00581B14    call       0058172C
 00581B19    pop        ecx
 00581B1A    mov        eax,dword ptr [ebp+8]
 00581B1D    push       eax
 00581B1E    call       00581744
 00581B23    pop        ecx
 00581B24    cmp        al,5C
>00581B26    jne        00581BC6
 00581B2C    mov        eax,dword ptr [ebp+8]
 00581B2F    push       eax
 00581B30    call       0058172C
 00581B35    pop        ecx
 00581B36    mov        eax,dword ptr [ebp+8]
 00581B39    push       eax
 00581B3A    call       00581744
 00581B3F    pop        ecx
 00581B40    cmp        al,27
>00581B42    jne        00581B75
 00581B44    mov        eax,dword ptr [ebp+8]
 00581B47    push       eax
 00581B48    call       0058172C
 00581B4D    pop        ecx
 00581B4E    mov        eax,dword ptr [ebp+8]
 00581B51    push       eax
 00581B52    call       005817FC
 00581B57    pop        ecx
 00581B58    mov        edx,eax
 00581B5A    lea        eax,[ebp-14]
 00581B5D    call       @LStrFromChar
 00581B62    mov        edx,dword ptr [ebp-14]
 00581B65    mov        eax,dword ptr [ebp+8]
 00581B68    add        eax,0FFFFFFE4
 00581B6B    call       @LStrCat
 00581B70    mov        eax,dword ptr [ebp+8]
>00581B73    jmp        00581BC6
 00581B75    mov        eax,dword ptr [ebp+8]
 00581B78    push       eax
 00581B79    call       00581744
 00581B7E    pop        ecx
 00581B7F    sub        al,5C
>00581B81    je         00581B8B
 00581B83    sub        al,1F
>00581B85    je         00581B8B
 00581B87    sub        al,2
>00581B89    jne        00581BBC
 00581B8B    mov        eax,dword ptr [ebp+8]
 00581B8E    push       eax
 00581B8F    call       00581744
 00581B94    pop        ecx
 00581B95    mov        edx,eax
 00581B97    lea        eax,[ebp-18]
 00581B9A    call       @LStrFromChar
 00581B9F    mov        edx,dword ptr [ebp-18]
 00581BA2    mov        eax,dword ptr [ebp+8]
 00581BA5    add        eax,0FFFFFFE4
 00581BA8    call       @LStrCat
 00581BAD    mov        eax,dword ptr [ebp+8]
 00581BB0    mov        eax,dword ptr [ebp+8]
 00581BB3    push       eax
 00581BB4    call       0058172C
 00581BB9    pop        ecx
>00581BBA    jmp        00581BC6
 00581BBC    mov        eax,dword ptr [ebp+8]
 00581BBF    push       eax
 00581BC0    call       00581738
 00581BC5    pop        ecx
 00581BC6    mov        eax,dword ptr [ebp+8]
 00581BC9    push       eax
 00581BCA    call       00581744
 00581BCF    pop        ecx
 00581BD0    test       al,al
>00581BD2    je         00581BE4
 00581BD4    sub        al,5C
>00581BD6    je         00581BE4
 00581BD8    sub        al,1F
>00581BDA    je         00581BE4
 00581BDC    sub        al,2
<00581BDE    jne        00581ADD
 00581BE4    mov        eax,dword ptr [ebp+8]
 00581BE7    cmp        dword ptr [eax-1C],0
>00581BEB    jne        00581C05
 00581BED    mov        eax,dword ptr [ebp+8]
 00581BF0    push       eax
 00581BF1    call       00581744
 00581BF6    pop        ecx
 00581BF7    test       al,al
>00581BF9    je         00581C05
 00581BFB    mov        eax,dword ptr [ebp+8]
 00581BFE    push       eax
 00581BFF    call       005818C0
 00581C04    pop        ecx
 00581C05    xor        eax,eax
 00581C07    pop        edx
 00581C08    pop        ecx
 00581C09    pop        ecx
 00581C0A    mov        dword ptr fs:[eax],edx
 00581C0D    push       581C2F
 00581C12    lea        eax,[ebp-18]
 00581C15    mov        edx,4
 00581C1A    call       @LStrArrayClr
 00581C1F    lea        eax,[ebp-4]
 00581C22    call       @LStrClr
 00581C27    ret
<00581C28    jmp        @HandleFinally
<00581C2D    jmp        00581C12
 00581C2F    mov        esp,ebp
 00581C31    pop        ebp
 00581C32    ret
*}
//end;

//00581C34
//procedure sub_00581C34(?:?; ?:?; ?:?);
//begin
{*
 00581C34    push       ebp
 00581C35    mov        ebp,esp
 00581C37    add        esp,0FFFFFFF8
 00581C3A    push       ebx
 00581C3B    push       esi
 00581C3C    push       edi
 00581C3D    xor        ecx,ecx
 00581C3F    mov        dword ptr [ebp-8],ecx
 00581C42    mov        byte ptr [ebp-1],dl
 00581C45    mov        ebx,eax
 00581C47    mov        edi,dword ptr [ebp+8]
 00581C4A    add        edi,0FFFFFF9E
 00581C4D    xor        eax,eax
 00581C4F    push       ebp
 00581C50    push       581D6B
 00581C55    push       dword ptr fs:[eax]
 00581C58    mov        dword ptr fs:[eax],esp
 00581C5B    mov        eax,dword ptr [ebp+8]
 00581C5E    push       eax
 00581C5F    call       005818C0
 00581C64    pop        ecx
 00581C65    test       bl,bl
>00581C67    je         00581CC4
 00581C69    mov        eax,dword ptr [ebp+8]
 00581C6C    mov        al,byte ptr [eax-61]
 00581C6F    sub        al,2
>00581C71    jae        00581CB3
 00581C73    mov        esi,20
 00581C78    mov        ebx,dword ptr ds:[61BF90]; ^gvar_006169C4:ShortString
 00581C7E    lea        eax,[ebp-8]
 00581C81    mov        edx,ebx
 00581C83    call       @LStrFromString
 00581C88    mov        eax,dword ptr [ebp-8]
 00581C8B    mov        edx,dword ptr [ebp+8]
 00581C8E    mov        edx,dword ptr [edx-1C]
 00581C91    call       @LStrCmp
>00581C96    jne        00581CAD
 00581C98    mov        eax,dword ptr [ebp+8]
 00581C9B    mov        eax,dword ptr [eax-68]
 00581C9E    dec        eax
 00581C9F    mov        edx,dword ptr [ebp+8]
 00581CA2    mov        dword ptr [edx-6C],eax
 00581CA5    mov        byte ptr [edi],1
>00581CA8    jmp        00581D55
 00581CAD    add        ebx,0B
 00581CB0    dec        esi
<00581CB1    jne        00581C7E
 00581CB3    cmp        byte ptr [edi],0
>00581CB6    jne        00581CC2
 00581CB8    mov        eax,dword ptr [ebp+8]
 00581CBB    push       eax
 00581CBC    call       0058176C
 00581CC1    pop        ecx
 00581CC2    xor        ebx,ebx
 00581CC4    mov        eax,dword ptr [ebp+8]
 00581CC7    mov        al,byte ptr [eax-61]
 00581CCA    sub        al,2
>00581CCC    je         00581CD8
 00581CCE    dec        al
>00581CD0    je         00581CF4
 00581CD2    dec        al
>00581CD4    je         00581D24
>00581CD6    jmp        00581D35
 00581CD8    mov        eax,dword ptr [ebp+8]
 00581CDB    inc        dword ptr [eax-68]
 00581CDE    cmp        byte ptr [edi],0
>00581CE1    jne        00581D35
 00581CE3    mov        eax,dword ptr [ebp+8]
 00581CE6    push       eax
 00581CE7    mov        dl,byte ptr [ebp-1]
 00581CEA    mov        al,1
 00581CEC    call       00581C34
 00581CF1    pop        ecx
>00581CF2    jmp        00581D35
 00581CF4    mov        eax,dword ptr [ebp+8]
 00581CF7    dec        dword ptr [eax-68]
 00581CFA    cmp        byte ptr [edi],0
>00581CFD    jne        00581D09
 00581CFF    mov        eax,dword ptr [ebp+8]
 00581D02    push       eax
 00581D03    call       005817A0
 00581D08    pop        ecx
 00581D09    mov        eax,dword ptr [ebp+8]
 00581D0C    mov        eax,dword ptr [eax-68]
 00581D0F    mov        edx,dword ptr [ebp+8]
 00581D12    cmp        eax,dword ptr [edx-6C]
>00581D15    jg         00581D35
 00581D17    mov        eax,dword ptr [ebp+8]
 00581D1A    xor        edx,edx
 00581D1C    mov        dword ptr [eax-6C],edx
 00581D1F    mov        byte ptr [edi],0
>00581D22    jmp        00581D35
 00581D24    mov        eax,dword ptr [ebp+8]
 00581D27    push       eax
 00581D28    call       00581744
 00581D2D    pop        ecx
 00581D2E    test       al,al
>00581D30    jne        00581D35
 00581D32    mov        byte ptr [edi],0
 00581D35    cmp        byte ptr [edi],0
<00581D38    jne        00581C5B
 00581D3E    mov        eax,dword ptr [ebp+8]
 00581D41    mov        al,byte ptr [eax-61]
 00581D44    cmp        al,7
>00581D46    ja         00581D4F
 00581D48    and        eax,7F
 00581D4B    bt         dword ptr [ebp-1],eax
<00581D4F    jae        00581C5B
 00581D55    xor        eax,eax
 00581D57    pop        edx
 00581D58    pop        ecx
 00581D59    pop        ecx
 00581D5A    mov        dword ptr fs:[eax],edx
 00581D5D    push       581D72
 00581D62    lea        eax,[ebp-8]
 00581D65    call       @LStrClr
 00581D6A    ret
<00581D6B    jmp        @HandleFinally
<00581D70    jmp        00581D62
 00581D72    pop        edi
 00581D73    pop        esi
 00581D74    pop        ebx
 00581D75    pop        ecx
 00581D76    pop        ecx
 00581D77    pop        ebp
 00581D78    ret
*}
//end;

//00581D7C
//procedure sub_00581D7C(?:AnsiString; ?:?);
//begin
{*
 00581D7C    push       ebp
 00581D7D    mov        ebp,esp
 00581D7F    push       0
 00581D81    push       0
 00581D83    push       0
 00581D85    push       ebx
 00581D86    push       esi
 00581D87    push       edi
 00581D88    mov        dword ptr [ebp-4],eax
 00581D8B    mov        eax,dword ptr [ebp-4]
 00581D8E    call       @LStrAddRef
 00581D93    mov        ebx,dword ptr [ebp+8]
 00581D96    add        ebx,0FFFFFF90
 00581D99    xor        eax,eax
 00581D9B    push       ebp
 00581D9C    push       581ED9
 00581DA1    push       dword ptr fs:[eax]
 00581DA4    mov        dword ptr fs:[eax],esp
 00581DA7    cmp        dword ptr [ebp-4],0
>00581DAB    je         00581EBE
 00581DB1    mov        eax,ebx
 00581DB3    call       @LStrClr
 00581DB8    mov        eax,ebx
 00581DBA    mov        edx,581EF0; 'R'
 00581DBF    call       005811AC
 00581DC4    lea        eax,[ebp-8]
 00581DC7    push       eax
 00581DC8    mov        eax,dword ptr [ebp+8]
 00581DCB    mov        eax,dword ptr [eax-10]
 00581DCE    mov        ecx,eax
 00581DD0    mov        eax,dword ptr [ebp+8]
 00581DD3    lea        edx,[eax-0E0]
 00581DD9    mov        eax,ebx
 00581DDB    call       00581230
 00581DE0    mov        eax,dword ptr [ebp+8]
 00581DE3    cmp        byte ptr [eax-0E1],0
>00581DEA    je         00581E04
 00581DEC    mov        eax,ebx
 00581DEE    mov        edx,581EF0; 'R'
 00581DF3    call       005811AC
 00581DF8    mov        eax,dword ptr [ebp+8]
 00581DFB    mov        byte ptr [eax-0E1],0
>00581E02    jmp        00581E0B
 00581E04    mov        eax,ebx
 00581E06    call       @LStrClr
 00581E0B    lea        eax,[ebp-0C]
 00581E0E    push       eax
 00581E0F    mov        eax,dword ptr [ebp+8]
 00581E12    mov        eax,dword ptr [eax-10]
 00581E15    mov        ecx,eax
 00581E17    mov        eax,dword ptr [ebp+8]
 00581E1A    lea        edx,[eax-158]
 00581E20    mov        eax,ebx
 00581E22    call       00581230
 00581E27    mov        eax,dword ptr [ebp-8]
 00581E2A    call       @LStrLen
 00581E2F    mov        esi,eax
 00581E31    mov        eax,dword ptr [ebx]
 00581E33    call       @LStrLen
 00581E38    cmp        esi,eax
>00581E3A    jge        00581E46
 00581E3C    mov        eax,ebx
 00581E3E    mov        edx,dword ptr [ebp-8]
 00581E41    call       @LStrLAsg
 00581E46    cmp        dword ptr [ebx],0
>00581E49    je         00581E7E
 00581E4B    mov        eax,ebx
 00581E4D    mov        edx,581EFC; ''
 00581E52    call       @LStrCat
 00581E57    mov        eax,dword ptr [ebx]
 00581E59    call       @LStrLen
 00581E5E    push       eax
 00581E5F    mov        eax,ebx
 00581E61    call       @UniqueStringA
 00581E66    mov        edx,eax
 00581E68    mov        eax,dword ptr [ebp+8]
 00581E6B    mov        eax,dword ptr [eax-15C]
 00581E71    pop        ecx
 00581E72    call       TStream.WriteBuffer
 00581E77    mov        eax,ebx
 00581E79    call       @LStrClr
 00581E7E    cmp        dword ptr [ebp-4],0
>00581E82    je         00581EA6
 00581E84    mov        eax,dword ptr [ebp-4]
 00581E87    call       @LStrLen
 00581E8C    push       eax
 00581E8D    lea        eax,[ebp-4]
 00581E90    call       @UniqueStringA
 00581E95    mov        edx,eax
 00581E97    mov        eax,dword ptr [ebp+8]
 00581E9A    mov        eax,dword ptr [eax-15C]
 00581EA0    pop        ecx
 00581EA1    call       TStream.WriteBuffer
 00581EA6    mov        eax,dword ptr [ebp+8]
 00581EA9    mov        eax,dword ptr [eax-10]
 00581EAC    mov        edx,dword ptr [ebp+8]
 00581EAF    mov        esi,eax
 00581EB1    lea        edi,[edx-158]
 00581EB7    mov        ecx,1C
 00581EBC    rep movs   dword ptr [edi],dword ptr [esi]
 00581EBE    xor        eax,eax
 00581EC0    pop        edx
 00581EC1    pop        ecx
 00581EC2    pop        ecx
 00581EC3    mov        dword ptr fs:[eax],edx
 00581EC6    push       581EE0
 00581ECB    lea        eax,[ebp-0C]
 00581ECE    mov        edx,3
 00581ED3    call       @LStrArrayClr
 00581ED8    ret
<00581ED9    jmp        @HandleFinally
<00581EDE    jmp        00581ECB
 00581EE0    pop        edi
 00581EE1    pop        esi
 00581EE2    pop        ebx
 00581EE3    mov        esp,ebp
 00581EE5    pop        ebp
 00581EE6    ret
*}
//end;

//00581F00
//procedure sub_00581F00(?:?);
//begin
{*
 00581F00    push       ebp
 00581F01    mov        ebp,esp
 00581F03    add        esp,0FFFFFEF4
 00581F09    push       ebx
 00581F0A    push       esi
 00581F0B    push       edi
 00581F0C    xor        eax,eax
 00581F0E    mov        dword ptr [ebp-10C],eax
 00581F14    mov        dword ptr [ebp-108],eax
 00581F1A    mov        dword ptr [ebp-104],eax
 00581F20    xor        eax,eax
 00581F22    push       ebp
 00581F23    push       582577
 00581F28    push       dword ptr fs:[eax]
 00581F2B    mov        dword ptr fs:[eax],esp
 00581F2E    mov        eax,dword ptr [ebp+8]
 00581F31    mov        eax,dword ptr [eax-1C]
 00581F34    mov        edx,582590; 'b'
 00581F39    call       @LStrCmp
>00581F3E    jne        00581F66
 00581F40    mov        eax,dword ptr [ebp+8]
 00581F43    add        eax,0FFFFFFA7
 00581F46    mov        edx,582594; '0'
 00581F4B    xor        ecx,ecx
 00581F4D    mov        cl,byte ptr [eax]
 00581F4F    inc        ecx
 00581F50    call       @AStrCmp
 00581F55    setne      al
 00581F58    mov        edx,dword ptr [ebp+8]
 00581F5B    mov        edx,dword ptr [edx-10]
 00581F5E    mov        byte ptr [edx+38],al
>00581F61    jmp        00582559
 00581F66    mov        eax,dword ptr [ebp+8]
 00581F69    mov        eax,dword ptr [eax-1C]
 00581F6C    mov        edx,5825A0; 'f'
 00581F71    call       @LStrCmp
>00581F76    jne        00581FC0
 00581F78    lea        ecx,[ebp-104]
 00581F7E    mov        eax,dword ptr [ebp+8]
 00581F81    mov        edx,dword ptr [eax-60]
 00581F84    mov        eax,dword ptr [ebp+8]
 00581F87    mov        eax,dword ptr [eax-160]
 00581F8D    mov        ebx,dword ptr [eax]
 00581F8F    call       dword ptr [ebx+0C]
 00581F92    mov        edx,dword ptr [ebp-104]
 00581F98    lea        eax,[ebp-100]
 00581F9E    mov        ecx,0FF
 00581FA3    call       @LStrToString
 00581FA8    lea        edx,[ebp-100]
 00581FAE    mov        eax,dword ptr [ebp+8]
 00581FB1    mov        eax,dword ptr [eax-10]
 00581FB4    mov        cl,28
 00581FB6    call       @PStrNCpy
>00581FBB    jmp        00582559
 00581FC0    mov        eax,dword ptr [ebp+8]
 00581FC3    mov        eax,dword ptr [eax-1C]
 00581FC6    mov        edx,5825AC; 'fs'
 00581FCB    call       @LStrCmp
>00581FD0    jne        00581FED
 00581FD2    mov        eax,dword ptr [ebp+8]
 00581FD5    fild       dword ptr [eax-60]
 00581FD8    fdiv       dword ptr ds:[5825B0]; 2:Single
 00581FDE    mov        eax,dword ptr [ebp+8]
 00581FE1    mov        eax,dword ptr [eax-10]
 00581FE4    fstp       qword ptr [eax+30]
 00581FE7    wait
>00581FE8    jmp        00582559
 00581FED    mov        eax,dword ptr [ebp+8]
 00581FF0    mov        eax,dword ptr [eax-1C]
 00581FF3    mov        edx,5825BC; 'i'
 00581FF8    call       @LStrCmp
>00581FFD    jne        00582025
 00581FFF    mov        eax,dword ptr [ebp+8]
 00582002    add        eax,0FFFFFFA7
 00582005    mov        edx,582594; '0'
 0058200A    xor        ecx,ecx
 0058200C    mov        cl,byte ptr [eax]
 0058200E    inc        ecx
 0058200F    call       @AStrCmp
 00582014    setne      al
 00582017    mov        edx,dword ptr [ebp+8]
 0058201A    mov        edx,dword ptr [edx-10]
 0058201D    mov        byte ptr [edx+39],al
>00582020    jmp        00582559
 00582025    mov        eax,dword ptr [ebp+8]
 00582028    mov        eax,dword ptr [eax-1C]
 0058202B    mov        edx,5825C8; 'nosupersub'
 00582030    call       @LStrCmp
>00582035    jne        00582050
 00582037    mov        eax,dword ptr [ebp+8]
 0058203A    mov        eax,dword ptr [eax-10]
 0058203D    mov        byte ptr [eax+3C],0
 00582041    mov        eax,dword ptr [ebp+8]
 00582044    mov        eax,dword ptr [eax-10]
 00582047    mov        byte ptr [eax+3D],0
>0058204B    jmp        00582559
 00582050    mov        eax,dword ptr [ebp+8]
 00582053    mov        eax,dword ptr [eax-1C]
 00582056    mov        edx,5825DC; 'sub'
 0058205B    call       @LStrCmp
>00582060    jne        00582071
 00582062    mov        eax,dword ptr [ebp+8]
 00582065    mov        eax,dword ptr [eax-10]
 00582068    mov        byte ptr [eax+3C],1
>0058206C    jmp        00582559
 00582071    mov        eax,dword ptr [ebp+8]
 00582074    mov        eax,dword ptr [eax-1C]
 00582077    mov        edx,5825E8; 'super'
 0058207C    call       @LStrCmp
>00582081    jne        00582092
 00582083    mov        eax,dword ptr [ebp+8]
 00582086    mov        eax,dword ptr [eax-10]
 00582089    mov        byte ptr [eax+3D],1
>0058208D    jmp        00582559
 00582092    mov        eax,dword ptr [ebp+8]
 00582095    mov        eax,dword ptr [eax-1C]
 00582098    mov        edx,5825F8; 'strike'
 0058209D    call       @LStrCmp
>005820A2    jne        005820CA
 005820A4    mov        eax,dword ptr [ebp+8]
 005820A7    add        eax,0FFFFFFA7
 005820AA    mov        edx,582594; '0'
 005820AF    xor        ecx,ecx
 005820B1    mov        cl,byte ptr [eax]
 005820B3    inc        ecx
 005820B4    call       @AStrCmp
 005820B9    setne      al
 005820BC    mov        edx,dword ptr [ebp+8]
 005820BF    mov        edx,dword ptr [edx-10]
 005820C2    mov        byte ptr [edx+3B],al
>005820C5    jmp        00582559
 005820CA    mov        eax,dword ptr [ebp+8]
 005820CD    mov        eax,dword ptr [eax-1C]
 005820D0    mov        edx,582608; 'ul'
 005820D5    call       @LStrCmp
>005820DA    jne        00582102
 005820DC    mov        eax,dword ptr [ebp+8]
 005820DF    add        eax,0FFFFFFA7
 005820E2    mov        edx,582594; '0'
 005820E7    xor        ecx,ecx
 005820E9    mov        cl,byte ptr [eax]
 005820EB    inc        ecx
 005820EC    call       @AStrCmp
 005820F1    setne      al
 005820F4    mov        edx,dword ptr [ebp+8]
 005820F7    mov        edx,dword ptr [edx-10]
 005820FA    mov        byte ptr [edx+3A],al
>005820FD    jmp        00582559
 00582102    mov        eax,dword ptr [ebp+8]
 00582105    mov        eax,dword ptr [eax-1C]
 00582108    mov        edx,582614; 'ulnone'
 0058210D    call       @LStrCmp
>00582112    jne        00582123
 00582114    mov        eax,dword ptr [ebp+8]
 00582117    mov        eax,dword ptr [eax-10]
 0058211A    mov        byte ptr [eax+3A],0
>0058211E    jmp        00582559
 00582123    mov        eax,dword ptr [ebp+8]
 00582126    mov        eax,dword ptr [eax-1C]
 00582129    mov        edx,582624; 'plain'
 0058212E    call       @LStrCmp
>00582133    jne        005821BC
 00582139    mov        eax,dword ptr [ebp+8]
 0058213C    mov        eax,dword ptr [eax-10]
 0058213F    mov        edx,dword ptr [ebp+8]
 00582142    mov        ecx,dword ptr [edx-0A8]
 00582148    mov        dword ptr [eax+38],ecx
 0058214B    mov        ecx,dword ptr [edx-0A4]
 00582151    mov        dword ptr [eax+3C],ecx
 00582154    mov        ecx,dword ptr [edx-0A0]
 0058215A    mov        dword ptr [eax+40],ecx
 0058215D    mov        eax,dword ptr [ebp+8]
 00582160    mov        eax,dword ptr [eax-10]
 00582163    mov        edx,dword ptr [ebp+8]
 00582166    mov        ecx,dword ptr [edx-0B0]
 0058216C    mov        dword ptr [eax+30],ecx
 0058216F    mov        ecx,dword ptr [edx-0AC]
 00582175    mov        dword ptr [eax+34],ecx
 00582178    lea        ecx,[ebp-108]
 0058217E    mov        eax,dword ptr [ebp+8]
 00582181    mov        eax,dword ptr [eax-160]
 00582187    xor        edx,edx
 00582189    mov        ebx,dword ptr [eax]
 0058218B    call       dword ptr [ebx+0C]
 0058218E    mov        edx,dword ptr [ebp-108]
 00582194    lea        eax,[ebp-100]
 0058219A    mov        ecx,0FF
 0058219F    call       @LStrToString
 005821A4    lea        edx,[ebp-100]
 005821AA    mov        eax,dword ptr [ebp+8]
 005821AD    mov        eax,dword ptr [eax-10]
 005821B0    mov        cl,28
 005821B2    call       @PStrNCpy
>005821B7    jmp        00582559
 005821BC    mov        eax,dword ptr [ebp+8]
 005821BF    mov        eax,dword ptr [eax-1C]
 005821C2    mov        edx,582634; 'pntext'
 005821C7    call       @LStrCmp
>005821CC    jne        00582236
 005821CE    mov        eax,dword ptr [ebp+8]
 005821D1    mov        eax,dword ptr [eax-10]
 005821D4    mov        edx,dword ptr [ebp+8]
 005821D7    mov        ecx,dword ptr [edx-0A8]
 005821DD    mov        dword ptr [eax+38],ecx
 005821E0    mov        ecx,dword ptr [edx-0A4]
 005821E6    mov        dword ptr [eax+3C],ecx
 005821E9    mov        ecx,dword ptr [edx-0A0]
 005821EF    mov        dword ptr [eax+40],ecx
 005821F2    lea        ecx,[ebp-10C]
 005821F8    mov        eax,dword ptr [ebp+8]
 005821FB    mov        eax,dword ptr [eax-160]
 00582201    xor        edx,edx
 00582203    mov        ebx,dword ptr [eax]
 00582205    call       dword ptr [ebx+0C]
 00582208    mov        edx,dword ptr [ebp-10C]
 0058220E    lea        eax,[ebp-100]
 00582214    mov        ecx,0FF
 00582219    call       @LStrToString
 0058221E    lea        edx,[ebp-100]
 00582224    mov        eax,dword ptr [ebp+8]
 00582227    mov        eax,dword ptr [eax-10]
 0058222A    mov        cl,28
 0058222C    call       @PStrNCpy
>00582231    jmp        00582559
 00582236    mov        eax,dword ptr [ebp+8]
 00582239    mov        eax,dword ptr [eax-1C]
 0058223C    mov        edx,582644; 'deff'
 00582241    call       @LStrCmp
>00582246    jne        0058225C
 00582248    mov        eax,dword ptr [ebp+8]
 0058224B    mov        eax,dword ptr [eax-60]
 0058224E    mov        edx,dword ptr [ebp+8]
 00582251    mov        dword ptr [edx-164],eax
>00582257    jmp        00582559
 0058225C    mov        eax,dword ptr [ebp+8]
 0058225F    mov        eax,dword ptr [eax-1C]
 00582262    mov        edx,582654; 'par'
 00582267    call       @LStrCmp
>0058226C    jne        00582282
 0058226E    mov        eax,dword ptr [ebp+8]
 00582271    push       eax
 00582272    mov        eax,582660; '\r\n'
 00582277    call       00581D7C
 0058227C    pop        ecx
>0058227D    jmp        00582559
 00582282    mov        eax,dword ptr [ebp+8]
 00582285    mov        eax,dword ptr [eax-1C]
 00582288    mov        edx,58266C; 'ql'
 0058228D    call       @LStrCmp
>00582292    jne        005822A3
 00582294    mov        eax,dword ptr [ebp+8]
 00582297    mov        eax,dword ptr [eax-10]
 0058229A    mov        byte ptr [eax+48],1
>0058229E    jmp        00582559
 005822A3    mov        eax,dword ptr [ebp+8]
 005822A6    mov        eax,dword ptr [eax-1C]
 005822A9    mov        edx,582678; 'qc'
 005822AE    call       @LStrCmp
>005822B3    jne        005822C4
 005822B5    mov        eax,dword ptr [ebp+8]
 005822B8    mov        eax,dword ptr [eax-10]
 005822BB    mov        byte ptr [eax+48],0
>005822BF    jmp        00582559
 005822C4    mov        eax,dword ptr [ebp+8]
 005822C7    mov        eax,dword ptr [eax-1C]
 005822CA    mov        edx,582684; 'qr'
 005822CF    call       @LStrCmp
>005822D4    jne        005822E5
 005822D6    mov        eax,dword ptr [ebp+8]
 005822D9    mov        eax,dword ptr [eax-10]
 005822DC    mov        byte ptr [eax+48],2
>005822E0    jmp        00582559
 005822E5    mov        eax,dword ptr [ebp+8]
 005822E8    mov        eax,dword ptr [eax-1C]
 005822EB    mov        edx,582690; 'qj'
 005822F0    call       @LStrCmp
>005822F5    jne        00582306
 005822F7    mov        eax,dword ptr [ebp+8]
 005822FA    mov        eax,dword ptr [eax-10]
 005822FD    mov        byte ptr [eax+48],3
>00582301    jmp        00582559
 00582306    mov        eax,dword ptr [ebp+8]
 00582309    mov        eax,dword ptr [eax-1C]
 0058230C    mov        edx,58269C; 'pard'
 00582311    call       @LStrCmp
>00582316    jne        00582336
 00582318    mov        eax,dword ptr [ebp+8]
 0058231B    mov        edx,dword ptr [ebp+8]
 0058231E    mov        edx,dword ptr [edx-10]
 00582321    lea        esi,[eax-98]
 00582327    lea        edi,[edx+48]
 0058232A    mov        ecx,8
 0058232F    rep movs   dword ptr [edi],dword ptr [esi]
>00582331    jmp        00582559
 00582336    mov        eax,dword ptr [ebp+8]
 00582339    mov        eax,dword ptr [eax-1C]
 0058233C    mov        edx,5826AC; 'fi'
 00582341    call       @LStrCmp
>00582346    jne        00582363
 00582348    mov        eax,dword ptr [ebp+8]
 0058234B    fild       dword ptr [eax-60]
 0058234E    fdiv       dword ptr ds:[5826B0]; 1440:Single
 00582354    mov        eax,dword ptr [ebp+8]
 00582357    mov        eax,dword ptr [eax-10]
 0058235A    fstp       qword ptr [eax+50]
 0058235D    wait
>0058235E    jmp        00582559
 00582363    mov        eax,dword ptr [ebp+8]
 00582366    mov        eax,dword ptr [eax-1C]
 00582369    mov        edx,5826BC; 'li'
 0058236E    call       @LStrCmp
>00582373    jne        00582390
 00582375    mov        eax,dword ptr [ebp+8]
 00582378    fild       dword ptr [eax-60]
 0058237B    fdiv       dword ptr ds:[5826B0]; 1440:Single
 00582381    mov        eax,dword ptr [ebp+8]
 00582384    mov        eax,dword ptr [eax-10]
 00582387    fstp       qword ptr [eax+58]
 0058238A    wait
>0058238B    jmp        00582559
 00582390    mov        eax,dword ptr [ebp+8]
 00582393    mov        eax,dword ptr [eax-1C]
 00582396    mov        edx,5826C8; 'ri'
 0058239B    call       @LStrCmp
>005823A0    jne        005823BD
 005823A2    mov        eax,dword ptr [ebp+8]
 005823A5    fild       dword ptr [eax-60]
 005823A8    fdiv       dword ptr ds:[5826B0]; 1440:Single
 005823AE    mov        eax,dword ptr [ebp+8]
 005823B1    mov        eax,dword ptr [eax-10]
 005823B4    fstp       qword ptr [eax+60]
 005823B7    wait
>005823B8    jmp        00582559
 005823BD    mov        eax,dword ptr [ebp+8]
 005823C0    mov        eax,dword ptr [eax-1C]
 005823C3    mov        edx,5826D4; 'bullet'
 005823C8    call       @LStrCmp
>005823CD    jne        005823E3
 005823CF    mov        eax,dword ptr [ebp+8]
 005823D2    push       eax
 005823D3    mov        eax,5826E4; '•'
 005823D8    call       00581D7C
 005823DD    pop        ecx
>005823DE    jmp        00582559
 005823E3    mov        eax,dword ptr [ebp+8]
 005823E6    mov        eax,dword ptr [eax-1C]
 005823E9    mov        edx,5826F0; 'endash'
 005823EE    call       @LStrCmp
>005823F3    jne        00582409
 005823F5    mov        eax,dword ptr [ebp+8]
 005823F8    push       eax
 005823F9    mov        eax,582700; '–'
 005823FE    call       00581D7C
 00582403    pop        ecx
>00582404    jmp        00582559
 00582409    mov        eax,dword ptr [ebp+8]
 0058240C    mov        eax,dword ptr [eax-1C]
 0058240F    mov        edx,58270C; 'emdash'
 00582414    call       @LStrCmp
>00582419    jne        0058242F
 0058241B    mov        eax,dword ptr [ebp+8]
 0058241E    push       eax
 0058241F    mov        eax,58271C; '—'
 00582424    call       00581D7C
 00582429    pop        ecx
>0058242A    jmp        00582559
 0058242F    mov        eax,dword ptr [ebp+8]
 00582432    mov        eax,dword ptr [eax-1C]
 00582435    mov        edx,582728; 'lquote'
 0058243A    call       @LStrCmp
>0058243F    jne        00582455
 00582441    mov        eax,dword ptr [ebp+8]
 00582444    push       eax
 00582445    mov        eax,582738; '‘'
 0058244A    call       00581D7C
 0058244F    pop        ecx
>00582450    jmp        00582559
 00582455    mov        eax,dword ptr [ebp+8]
 00582458    mov        eax,dword ptr [eax-1C]
 0058245B    mov        edx,582744; 'rquote'
 00582460    call       @LStrCmp
>00582465    jne        0058247B
 00582467    mov        eax,dword ptr [ebp+8]
 0058246A    push       eax
 0058246B    mov        eax,582754; '’'
 00582470    call       00581D7C
 00582475    pop        ecx
>00582476    jmp        00582559
 0058247B    mov        eax,dword ptr [ebp+8]
 0058247E    mov        eax,dword ptr [eax-1C]
 00582481    mov        edx,582760; 'ldblquote'
 00582486    call       @LStrCmp
>0058248B    jne        005824A1
 0058248D    mov        eax,dword ptr [ebp+8]
 00582490    push       eax
 00582491    mov        eax,582774; '“'
 00582496    call       00581D7C
 0058249B    pop        ecx
>0058249C    jmp        00582559
 005824A1    mov        eax,dword ptr [ebp+8]
 005824A4    mov        eax,dword ptr [eax-1C]
 005824A7    mov        edx,582780; 'rdblquote'
 005824AC    call       @LStrCmp
>005824B1    jne        005824C7
 005824B3    mov        eax,dword ptr [ebp+8]
 005824B6    push       eax
 005824B7    mov        eax,582794; '”'
 005824BC    call       00581D7C
 005824C1    pop        ecx
>005824C2    jmp        00582559
 005824C7    mov        eax,dword ptr [ebp+8]
 005824CA    mov        eax,dword ptr [eax-1C]
 005824CD    mov        edx,5827A0; 'tab'
 005824D2    call       @LStrCmp
>005824D7    jne        005824EA
 005824D9    mov        eax,dword ptr [ebp+8]
 005824DC    push       eax
 005824DD    mov        eax,5827AC; '\t'
 005824E2    call       00581D7C
 005824E7    pop        ecx
>005824E8    jmp        00582559
 005824EA    mov        eax,dword ptr [ebp+8]
 005824ED    mov        eax,dword ptr [eax-1C]
 005824F0    mov        edx,5827B8; 'cf'
 005824F5    call       @LStrCmp
>005824FA    jne        0058253C
 005824FC    mov        eax,dword ptr [ebp+8]
 005824FF    mov        eax,dword ptr [eax-60]
 00582502    mov        edx,dword ptr [ebp+8]
 00582505    mov        edx,dword ptr [edx-168]
 0058250B    cmp        eax,dword ptr [edx+8]
>0058250E    jge        0058252F
 00582510    mov        eax,dword ptr [ebp+8]
 00582513    mov        edx,dword ptr [eax-60]
 00582516    mov        eax,dword ptr [ebp+8]
 00582519    mov        eax,dword ptr [eax-168]
 0058251F    call       TList.Get
 00582524    mov        edx,dword ptr [ebp+8]
 00582527    mov        edx,dword ptr [edx-10]
 0058252A    mov        dword ptr [edx+40],eax
>0058252D    jmp        00582559
 0058252F    mov        eax,dword ptr [ebp+8]
 00582532    mov        eax,dword ptr [eax-10]
 00582535    xor        edx,edx
 00582537    mov        dword ptr [eax+40],edx
>0058253A    jmp        00582559
 0058253C    mov        eax,dword ptr [ebp+8]
 0058253F    mov        eax,dword ptr [eax-1C]
 00582542    mov        edx,5827C4; 'nevrona'
 00582547    call       @LStrCmp
>0058254C    jne        00582559
 0058254E    mov        eax,dword ptr [ebp+8]
 00582551    add        eax,0FFFFFF90
 00582554    call       @LStrClr
 00582559    xor        eax,eax
 0058255B    pop        edx
 0058255C    pop        ecx
 0058255D    pop        ecx
 0058255E    mov        dword ptr fs:[eax],edx
 00582561    push       58257E
 00582566    lea        eax,[ebp-10C]
 0058256C    mov        edx,3
 00582571    call       @LStrArrayClr
 00582576    ret
<00582577    jmp        @HandleFinally
<0058257C    jmp        00582566
 0058257E    pop        edi
 0058257F    pop        esi
 00582580    pop        ebx
 00582581    mov        esp,ebp
 00582583    pop        ebp
 00582584    ret
*}
//end;

//005827CC
//procedure sub_005827CC(?:?);
//begin
{*
 005827CC    push       ebp
 005827CD    mov        ebp,esp
 005827CF    add        esp,0FFFFFEFC
 005827D5    push       ebx
 005827D6    push       esi
 005827D7    push       edi
 005827D8    xor        eax,eax
 005827DA    mov        dword ptr [ebp-104],eax
 005827E0    xor        eax,eax
 005827E2    push       ebp
 005827E3    push       58296B
 005827E8    push       dword ptr fs:[eax]
 005827EB    mov        dword ptr fs:[eax],esp
 005827EE    xor        esi,esi
 005827F0    mov        eax,dword ptr [ebp+8]
 005827F3    mov        ebx,dword ptr [eax-68]
 005827F6    dec        ebx
 005827F7    mov        eax,dword ptr [ebp+8]
 005827FA    push       eax
 005827FB    mov        dl,byte ptr ds:[58297C]; 0x1F
 00582801    xor        eax,eax
 00582803    call       00581C34
 00582808    pop        ecx
 00582809    mov        eax,dword ptr [ebp+8]
 0058280C    mov        al,byte ptr [eax-61]
 0058280F    sub        al,1
>00582811    jb         0058281C
 00582813    sub        al,3
>00582815    je         0058283D
>00582817    jmp        005828DB
 0058281C    mov        eax,dword ptr [ebp+8]
 0058281F    mov        eax,dword ptr [eax-1C]
 00582822    mov        edx,582988; 'f'
 00582827    call       @LStrCmp
>0058282C    jne        005828DB
 00582832    mov        eax,dword ptr [ebp+8]
 00582835    mov        esi,dword ptr [eax-60]
>00582838    jmp        005828DB
 0058283D    mov        eax,dword ptr [ebp+8]
 00582840    mov        eax,dword ptr [eax-1C]
 00582843    call       @LStrLen
 00582848    mov        edx,dword ptr [ebp+8]
 0058284B    mov        edx,dword ptr [edx-1C]
 0058284E    cmp        byte ptr [edx+eax-1],3B
>00582853    jne        00582872
 00582855    mov        eax,dword ptr [ebp+8]
 00582858    mov        eax,dword ptr [eax-1C]
 0058285B    call       @LStrLen
 00582860    mov        edx,eax
 00582862    mov        eax,dword ptr [ebp+8]
 00582865    add        eax,0FFFFFFE4
 00582868    mov        ecx,1
 0058286D    call       @LStrDelete
 00582872    mov        eax,dword ptr [ebp+8]
 00582875    cmp        dword ptr [eax-1C],0
>00582879    je         005828DB
 0058287B    mov        eax,dword ptr [ebp+8]
 0058287E    mov        eax,dword ptr [eax-160]
 00582884    mov        edx,dword ptr [eax]
 00582886    call       dword ptr [edx+14]
 00582889    cmp        esi,eax
>0058288B    jne        005828B3
 0058288D    mov        eax,dword ptr [ebp+8]
 00582890    mov        edx,dword ptr [eax-1C]
 00582893    mov        eax,dword ptr [ebp+8]
 00582896    mov        eax,dword ptr [eax-160]
 0058289C    mov        ecx,dword ptr [eax]
 0058289E    call       dword ptr [ecx+38]
>005828A1    jmp        005828DB
 005828A3    mov        eax,dword ptr [ebp+8]
 005828A6    mov        eax,dword ptr [eax-160]
 005828AC    xor        edx,edx
 005828AE    mov        ecx,dword ptr [eax]
 005828B0    call       dword ptr [ecx+38]
 005828B3    mov        eax,dword ptr [ebp+8]
 005828B6    mov        eax,dword ptr [eax-160]
 005828BC    mov        edx,dword ptr [eax]
 005828BE    call       dword ptr [edx+14]
 005828C1    cmp        esi,eax
<005828C3    jge        005828A3
 005828C5    mov        eax,dword ptr [ebp+8]
 005828C8    mov        ecx,dword ptr [eax-1C]
 005828CB    mov        eax,dword ptr [ebp+8]
 005828CE    mov        eax,dword ptr [eax-160]
 005828D4    mov        edx,esi
 005828D6    mov        edi,dword ptr [eax]
 005828D8    call       dword ptr [edi+20]
 005828DB    mov        eax,dword ptr [ebp+8]
 005828DE    cmp        ebx,dword ptr [eax-68]
<005828E1    jne        005827F7
 005828E7    mov        eax,dword ptr [ebp+8]
 005828EA    mov        eax,dword ptr [eax-160]
 005828F0    mov        edx,dword ptr [eax]
 005828F2    call       dword ptr [edx+14]
 005828F5    test       eax,eax
>005828F7    jne        0058290C
 005828F9    mov        eax,dword ptr [ebp+8]
 005828FC    mov        eax,dword ptr [eax-160]
 00582902    mov        edx,582994; 'Arial'
 00582907    mov        ecx,dword ptr [eax]
 00582909    call       dword ptr [ecx+38]
 0058290C    lea        ecx,[ebp-104]
 00582912    mov        eax,dword ptr [ebp+8]
 00582915    mov        edx,dword ptr [eax-164]
 0058291B    mov        eax,dword ptr [ebp+8]
 0058291E    mov        eax,dword ptr [eax-160]
 00582924    mov        ebx,dword ptr [eax]
 00582926    call       dword ptr [ebx+0C]
 00582929    mov        edx,dword ptr [ebp-104]
 0058292F    lea        eax,[ebp-100]
 00582935    mov        ecx,0FF
 0058293A    call       @LStrToString
 0058293F    lea        edx,[ebp-100]
 00582945    mov        eax,dword ptr [ebp+8]
 00582948    mov        eax,dword ptr [eax-10]
 0058294B    mov        cl,28
 0058294D    call       @PStrNCpy
 00582952    xor        eax,eax
 00582954    pop        edx
 00582955    pop        ecx
 00582956    pop        ecx
 00582957    mov        dword ptr fs:[eax],edx
 0058295A    push       582972
 0058295F    lea        eax,[ebp-104]
 00582965    call       @LStrClr
 0058296A    ret
<0058296B    jmp        @HandleFinally
<00582970    jmp        0058295F
 00582972    pop        edi
 00582973    pop        esi
 00582974    pop        ebx
 00582975    mov        esp,ebp
 00582977    pop        ebp
 00582978    ret
*}
//end;

//0058299C
//procedure sub_0058299C(?:?);
//begin
{*
 0058299C    push       ebp
 0058299D    mov        ebp,esp
 0058299F    push       ecx
 005829A0    push       ebx
 005829A1    push       esi
 005829A2    push       edi
 005829A3    xor        esi,esi
 005829A5    xor        edi,edi
 005829A7    xor        eax,eax
 005829A9    mov        dword ptr [ebp-4],eax
 005829AC    mov        eax,dword ptr [ebp+8]
 005829AF    mov        ebx,dword ptr [eax-68]
 005829B2    dec        ebx
 005829B3    mov        eax,dword ptr [ebp+8]
 005829B6    push       eax
 005829B7    mov        dl,byte ptr ds:[582A74]; 0x1F
 005829BD    xor        eax,eax
 005829BF    call       00581C34
 005829C4    pop        ecx
 005829C5    mov        eax,dword ptr [ebp+8]
 005829C8    mov        al,byte ptr [eax-61]
 005829CB    sub        al,1
>005829CD    jb         005829D8
 005829CF    sub        al,3
>005829D1    je         00582A29
>005829D3    jmp        00582A61
 005829D8    mov        eax,dword ptr [ebp+8]
 005829DB    mov        eax,dword ptr [eax-1C]
 005829DE    mov        edx,582A80; 'red'
 005829E3    call       @LStrCmp
>005829E8    jne        005829F2
 005829EA    mov        eax,dword ptr [ebp+8]
 005829ED    mov        esi,dword ptr [eax-60]
>005829F0    jmp        00582A61
 005829F2    mov        eax,dword ptr [ebp+8]
 005829F5    mov        eax,dword ptr [eax-1C]
 005829F8    mov        edx,582A8C; 'green'
 005829FD    call       @LStrCmp
>00582A02    jne        00582A0C
 00582A04    mov        eax,dword ptr [ebp+8]
 00582A07    mov        edi,dword ptr [eax-60]
>00582A0A    jmp        00582A61
 00582A0C    mov        eax,dword ptr [ebp+8]
 00582A0F    mov        eax,dword ptr [eax-1C]
 00582A12    mov        edx,582A9C; 'blue'
 00582A17    call       @LStrCmp
>00582A1C    jne        00582A61
 00582A1E    mov        eax,dword ptr [ebp+8]
 00582A21    mov        eax,dword ptr [eax-60]
 00582A24    mov        dword ptr [ebp-4],eax
>00582A27    jmp        00582A61
 00582A29    mov        eax,dword ptr [ebp+8]
 00582A2C    mov        edx,dword ptr [eax-1C]
 00582A2F    mov        eax,582AAC; ';'
 00582A34    call       @LStrPos
 00582A39    test       eax,eax
>00582A3B    jle        00582A61
 00582A3D    mov        cl,byte ptr [ebp-4]
 00582A40    mov        edx,edi
 00582A42    mov        eax,esi
 00582A44    call       RGB
 00582A49    xor        esi,esi
 00582A4B    xor        edi,edi
 00582A4D    xor        edx,edx
 00582A4F    mov        dword ptr [ebp-4],edx
 00582A52    mov        edx,dword ptr [ebp+8]
 00582A55    mov        edx,dword ptr [edx-168]
 00582A5B    xchg       eax,edx
 00582A5C    call       TList.Add
 00582A61    mov        eax,dword ptr [ebp+8]
 00582A64    cmp        ebx,dword ptr [eax-68]
<00582A67    jne        005829B3
 00582A6D    pop        edi
 00582A6E    pop        esi
 00582A6F    pop        ebx
 00582A70    pop        ecx
 00582A71    pop        ebp
 00582A72    ret
*}
//end;

//00582AB0
//procedure sub_00582AB0(?:Pointer; ?:Int64; ?:Int64);
//begin
{*
 00582AB0    push       ebp
 00582AB1    mov        ebp,esp
 00582AB3    add        esp,0FFFFFE98
 00582AB9    push       ebx
 00582ABA    push       esi
 00582ABB    push       edi
 00582ABC    xor        ebx,ebx
 00582ABE    mov        dword ptr [ebp-1C],ebx
 00582AC1    mov        dword ptr [ebp-70],ebx
 00582AC4    mov        dword ptr [ebp-15C],ecx
 00582ACA    mov        dword ptr [ebp-8],edx
 00582ACD    mov        dword ptr [ebp-0C],eax
 00582AD0    xor        eax,eax
 00582AD2    push       ebp
 00582AD3    push       582C35
 00582AD8    push       dword ptr fs:[eax]
 00582ADB    mov        dword ptr fs:[eax],esp
 00582ADE    lea        eax,[ebp-0E0]
 00582AE4    call       00580E74
 00582AE9    lea        esi,[ebp-0E0]
 00582AEF    lea        edi,[ebp-158]
 00582AF5    mov        ecx,1C
 00582AFA    rep movs   dword ptr [edi],dword ptr [esi]
 00582AFC    mov        eax,70
 00582B01    call       @GetMem
 00582B06    mov        dword ptr [ebp-10],eax
 00582B09    mov        eax,dword ptr [ebp-10]
 00582B0C    mov        edi,eax
 00582B0E    lea        esi,[ebp-0E0]
 00582B14    mov        ecx,1C
 00582B19    rep movs   dword ptr [edi],dword ptr [esi]
 00582B1B    mov        byte ptr [ebp-0E1],1
 00582B22    mov        byte ptr [ebp-15],0
 00582B26    mov        dl,1
 00582B28    mov        eax,[0041C8E4]; TStringList
 00582B2D    call       TObject.Create; TStringList.Create
 00582B32    mov        dword ptr [ebp-160],eax
 00582B38    mov        dl,1
 00582B3A    mov        eax,[0041C260]; TList
 00582B3F    call       TObject.Create; TList.Create
 00582B44    mov        dword ptr [ebp-168],eax
 00582B4A    xor        eax,eax
 00582B4C    mov        dword ptr [ebp-68],eax
 00582B4F    xor        eax,eax
 00582B51    mov        dword ptr [ebp-6C],eax
 00582B54    mov        byte ptr [ebp-62],0
 00582B58    lea        eax,[ebp-70]
 00582B5B    call       @LStrClr
 00582B60    xor        eax,eax
 00582B62    mov        dword ptr [ebp-164],eax
 00582B68    xor        eax,eax
 00582B6A    mov        dword ptr [ebp-4],eax
 00582B6D    xor        eax,eax
 00582B6F    push       ebp
 00582B70    push       582C10
 00582B75    push       dword ptr fs:[eax]
 00582B78    mov        dword ptr fs:[eax],esp
 00582B7B    push       ebp
 00582B7C    mov        dl,byte ptr ds:[582C44]; 0x13
 00582B82    xor        eax,eax
 00582B84    call       00581C34
 00582B89    pop        ecx
 00582B8A    mov        al,byte ptr [ebp-61]
 00582B8D    sub        al,2
>00582B8F    jb         00582B97
 00582B91    sub        al,2
>00582B93    je         00582BD0
>00582B95    jmp        00582BDA
 00582B97    mov        eax,dword ptr [ebp-1C]
 00582B9A    mov        edx,582C50; 'fonttbl'
 00582B9F    call       @LStrCmp
>00582BA4    jne        00582BAF
 00582BA6    push       ebp
 00582BA7    call       005827CC
 00582BAC    pop        ecx
>00582BAD    jmp        00582BDA
 00582BAF    mov        eax,dword ptr [ebp-1C]
 00582BB2    mov        edx,582C60; 'colortbl'
 00582BB7    call       @LStrCmp
>00582BBC    jne        00582BC7
 00582BBE    push       ebp
 00582BBF    call       0058299C
 00582BC4    pop        ecx
>00582BC5    jmp        00582BDA
 00582BC7    push       ebp
 00582BC8    call       00581F00
 00582BCD    pop        ecx
>00582BCE    jmp        00582BDA
 00582BD0    push       ebp
 00582BD1    mov        eax,dword ptr [ebp-1C]
 00582BD4    call       00581D7C
 00582BD9    pop        ecx
 00582BDA    push       ebp
 00582BDB    call       00581744
 00582BE0    pop        ecx
 00582BE1    test       al,al
<00582BE3    jne        00582B7B
 00582BE5    xor        eax,eax
 00582BE7    pop        edx
 00582BE8    pop        ecx
 00582BE9    pop        ecx
 00582BEA    mov        dword ptr fs:[eax],edx
 00582BED    push       582C17
 00582BF2    push       ebp
 00582BF3    call       005817D0
 00582BF8    pop        ecx
 00582BF9    mov        eax,dword ptr [ebp-160]
 00582BFF    call       TObject.Free
 00582C04    mov        eax,dword ptr [ebp-168]
 00582C0A    call       TObject.Free
 00582C0F    ret
<00582C10    jmp        @HandleFinally
<00582C15    jmp        00582BF2
 00582C17    xor        eax,eax
 00582C19    pop        edx
 00582C1A    pop        ecx
 00582C1B    pop        ecx
 00582C1C    mov        dword ptr fs:[eax],edx
 00582C1F    push       582C3C
 00582C24    lea        eax,[ebp-70]
 00582C27    call       @LStrClr
 00582C2C    lea        eax,[ebp-1C]
 00582C2F    call       @LStrClr
 00582C34    ret
<00582C35    jmp        @HandleFinally
<00582C3A    jmp        00582C24
 00582C3C    pop        edi
 00582C3D    pop        esi
 00582C3E    pop        ebx
 00582C3F    mov        esp,ebp
 00582C41    pop        ebp
 00582C42    ret
*}
//end;

//00582C6C
//function sub_00582C6C(?:TRvNDRWriter; ?:AnsiString; ?:?):?;
//begin
{*
 00582C6C    push       ebp
 00582C6D    mov        ebp,esp
 00582C6F    add        esp,0FFFFFFE4
 00582C72    push       ebx
 00582C73    push       esi
 00582C74    push       edi
 00582C75    xor        ebx,ebx
 00582C77    mov        dword ptr [ebp-1C],ebx
 00582C7A    mov        dword ptr [ebp-0C],ebx
 00582C7D    mov        ebx,ecx
 00582C7F    mov        dword ptr [ebp-8],edx
 00582C82    mov        dword ptr [ebp-4],eax
 00582C85    mov        eax,dword ptr [ebp-8]
 00582C88    call       @LStrAddRef
 00582C8D    xor        eax,eax
 00582C8F    push       ebp
 00582C90    push       582D78
 00582C95    push       dword ptr fs:[eax]
 00582C98    mov        dword ptr fs:[eax],esp
 00582C9B    mov        esi,ebx
 00582C9D    mov        eax,dword ptr [ebp-4]
 00582CA0    push       dword ptr [eax+7A4]; TRvNDRWriter.?f7A4:dword
 00582CA6    push       dword ptr [eax+7A0]; TRvNDRWriter.?f7A0:dword
 00582CAC    mov        eax,dword ptr [ebp-4]
 00582CAF    call       00586138
 00582CB4    mov        eax,dword ptr [ebp-4]
 00582CB7    fild       dword ptr [eax+8DC]; TRvNDRWriter.?f8DC:Single
 00582CBD    fmulp      st(1),st
 00582CBF    call       @ROUND
 00582CC4    mov        dword ptr [ebp-10],eax
 00582CC7    lea        eax,[ebp-0C]
 00582CCA    mov        edx,dword ptr [ebp-8]
 00582CCD    call       @LStrLAsg
 00582CD2    mov        edx,dword ptr [ebp-0C]
 00582CD5    mov        eax,582D90; '\t'
 00582CDA    call       @LStrPos
 00582CDF    mov        ebx,eax
 00582CE1    test       ebx,ebx
>00582CE3    jle        00582D41
 00582CE5    cmp        ebx,1
>00582CE8    jle        00582D12
 00582CEA    lea        eax,[ebp-1C]
 00582CED    push       eax
 00582CEE    mov        ecx,ebx
 00582CF0    dec        ecx
 00582CF1    mov        edx,1
 00582CF6    mov        eax,dword ptr [ebp-0C]
 00582CF9    call       @LStrCopy
 00582CFE    mov        edx,dword ptr [ebp-1C]
 00582D01    lea        ecx,[ebp-18]
 00582D04    mov        eax,dword ptr [ebp-4]
 00582D07    mov        edi,dword ptr [eax]
 00582D09    call       dword ptr [edi+94]; TRvNDRWriter.sub_00583B7C
 00582D0F    add        esi,dword ptr [ebp-18]
 00582D12    lea        eax,[ebp-0C]
 00582D15    mov        ecx,ebx
 00582D17    mov        edx,1
 00582D1C    call       @LStrDelete
 00582D21    mov        eax,esi
 00582D23    dec        eax
 00582D24    cdq
 00582D25    idiv       eax,dword ptr [ebp-10]
 00582D28    inc        eax
 00582D29    imul       dword ptr [ebp-10]
 00582D2C    mov        esi,eax
 00582D2E    mov        edx,dword ptr [ebp-0C]
 00582D31    mov        eax,582D90; '\t'
 00582D36    call       @LStrPos
 00582D3B    mov        ebx,eax
 00582D3D    test       ebx,ebx
<00582D3F    jg         00582CE5
 00582D41    lea        ecx,[ebp-18]
 00582D44    mov        edx,dword ptr [ebp-0C]
 00582D47    mov        eax,dword ptr [ebp-4]
 00582D4A    mov        ebx,dword ptr [eax]
 00582D4C    call       dword ptr [ebx+94]; TRvNDRWriter.sub_00583B7C
 00582D52    add        esi,dword ptr [ebp-18]
 00582D55    xor        eax,eax
 00582D57    pop        edx
 00582D58    pop        ecx
 00582D59    pop        ecx
 00582D5A    mov        dword ptr fs:[eax],edx
 00582D5D    push       582D7F
 00582D62    lea        eax,[ebp-1C]
 00582D65    call       @LStrClr
 00582D6A    lea        eax,[ebp-0C]
 00582D6D    mov        edx,2
 00582D72    call       @LStrArrayClr
 00582D77    ret
<00582D78    jmp        @HandleFinally
<00582D7D    jmp        00582D62
 00582D7F    mov        eax,esi
 00582D81    pop        edi
 00582D82    pop        esi
 00582D83    pop        ebx
 00582D84    mov        esp,ebp
 00582D86    pop        ebp
 00582D87    ret
*}
//end;

//00582D94
//function sub_00582D94(?:TRvNDRWriter; ?:AnsiString):?;
//begin
{*
 00582D94    push       ebp
 00582D95    mov        ebp,esp
 00582D97    add        esp,0FFFFFFF4
 00582D9A    push       ebx
 00582D9B    push       esi
 00582D9C    xor        ecx,ecx
 00582D9E    mov        dword ptr [ebp-0C],ecx
 00582DA1    mov        dword ptr [ebp-4],edx
 00582DA4    mov        ebx,eax
 00582DA6    mov        eax,dword ptr [ebp-4]
 00582DA9    call       @LStrAddRef
 00582DAE    xor        eax,eax
 00582DB0    push       ebp
 00582DB1    push       582E4D
 00582DB6    push       dword ptr fs:[eax]
 00582DB9    mov        dword ptr fs:[eax],esp
 00582DBC    mov        eax,ebx
 00582DBE    call       005871CC
 00582DC3    xor        esi,esi
 00582DC5    mov        dword ptr [ebp-8],1
 00582DCC    lea        eax,[ebp-0C]
 00582DCF    push       eax
 00582DD0    lea        ecx,[ebp-8]
 00582DD3    mov        edx,dword ptr [ebp-4]
 00582DD6    mov        eax,ebx
 00582DD8    call       00580D54
 00582DDD    cmp        dword ptr [ebp-0C],0
>00582DE1    je         00582DFF
 00582DE3    mov        eax,ebx
 00582DE5    call       00587C08
 00582DEA    mov        ecx,esi
 00582DEC    mov        edx,dword ptr [ebp-0C]
 00582DEF    mov        eax,ebx
 00582DF1    call       00582C6C
 00582DF6    mov        esi,eax
 00582DF8    mov        eax,ebx
 00582DFA    call       0058814C
 00582DFF    mov        eax,dword ptr [ebp-4]
 00582E02    call       @LStrLen
 00582E07    cmp        eax,dword ptr [ebp-8]
>00582E0A    jl         00582E1F
 00582E0C    lea        eax,[ebp-0C]
 00582E0F    push       eax
 00582E10    lea        ecx,[ebp-8]
 00582E13    mov        edx,dword ptr [ebp-4]
 00582E16    mov        eax,ebx
 00582E18    call       00580D54
<00582E1D    jmp        00582DDD
 00582E1F    test       esi,esi
>00582E21    jne        00582E28
 00582E23    mov        esi,1
 00582E28    mov        eax,ebx
 00582E2A    call       00587188
 00582E2F    xor        eax,eax
 00582E31    pop        edx
 00582E32    pop        ecx
 00582E33    pop        ecx
 00582E34    mov        dword ptr fs:[eax],edx
 00582E37    push       582E54
 00582E3C    lea        eax,[ebp-0C]
 00582E3F    call       @LStrClr
 00582E44    lea        eax,[ebp-4]
 00582E47    call       @LStrClr
 00582E4C    ret
<00582E4D    jmp        @HandleFinally
<00582E52    jmp        00582E3C
 00582E54    mov        eax,esi
 00582E56    pop        esi
 00582E57    pop        ebx
 00582E58    mov        esp,ebp
 00582E5A    pop        ebp
 00582E5B    ret
*}
//end;

//00582E5C
//function sub_00582E5C(?:dword; ?:AnsiString):?;
//begin
{*
 00582E5C    push       ebp
 00582E5D    mov        ebp,esp
 00582E5F    add        esp,0FFFFFFE8
 00582E62    push       ebx
 00582E63    xor        ecx,ecx
 00582E65    mov        dword ptr [ebp-18],ecx
 00582E68    mov        dword ptr [ebp-4],edx
 00582E6B    mov        ebx,eax
 00582E6D    mov        eax,dword ptr [ebp-4]
 00582E70    call       @LStrAddRef
 00582E75    xor        eax,eax
 00582E77    push       ebp
 00582E78    push       582F09
 00582E7D    push       dword ptr fs:[eax]
 00582E80    mov        dword ptr fs:[eax],esp
 00582E83    mov        eax,ebx
 00582E85    call       005871CC
 00582E8A    xor        eax,eax
 00582E8C    mov        dword ptr [ebp-10],eax
 00582E8F    mov        dword ptr [ebp-0C],eax
 00582E92    mov        dword ptr [ebp-14],1
 00582E99    lea        eax,[ebp-18]
 00582E9C    push       eax
 00582E9D    lea        ecx,[ebp-14]
 00582EA0    mov        edx,dword ptr [ebp-4]
 00582EA3    mov        eax,ebx
 00582EA5    call       00580D54
 00582EAA    mov        eax,ebx
 00582EAC    call       00588710
 00582EB1    fcomp      qword ptr [ebp-10]
 00582EB4    fnstsw     al
 00582EB6    sahf
>00582EB7    jbe        00582EC4
 00582EB9    mov        eax,ebx
 00582EBB    call       00588710
 00582EC0    fstp       qword ptr [ebp-10]
 00582EC3    wait
 00582EC4    mov        eax,dword ptr [ebp-4]
 00582EC7    call       @LStrLen
 00582ECC    cmp        eax,dword ptr [ebp-14]
>00582ECF    jl         00582EE4
 00582ED1    lea        eax,[ebp-18]
 00582ED4    push       eax
 00582ED5    lea        ecx,[ebp-14]
 00582ED8    mov        edx,dword ptr [ebp-4]
 00582EDB    mov        eax,ebx
 00582EDD    call       00580D54
<00582EE2    jmp        00582EAA
 00582EE4    mov        eax,ebx
 00582EE6    call       00587188
 00582EEB    xor        eax,eax
 00582EED    pop        edx
 00582EEE    pop        ecx
 00582EEF    pop        ecx
 00582EF0    mov        dword ptr fs:[eax],edx
 00582EF3    push       582F10
 00582EF8    lea        eax,[ebp-18]
 00582EFB    call       @LStrClr
 00582F00    lea        eax,[ebp-4]
 00582F03    call       @LStrClr
 00582F08    ret
<00582F09    jmp        @HandleFinally
<00582F0E    jmp        00582EF8
 00582F10    fld        qword ptr [ebp-10]
 00582F13    pop        ebx
 00582F14    mov        esp,ebp
 00582F16    pop        ebp
 00582F17    ret
*}
//end;

//00582F18
//function sub_00582F18(?:AnsiString; ?:?):?;
//begin
{*
 00582F18    push       ebp
 00582F19    mov        ebp,esp
 00582F1B    add        esp,0FFFFFFF0
 00582F1E    push       ebx
 00582F1F    xor        ecx,ecx
 00582F21    mov        dword ptr [ebp-0C],ecx
 00582F24    mov        ebx,edx
 00582F26    mov        dword ptr [ebp-4],eax
 00582F29    mov        eax,dword ptr [ebp-4]
 00582F2C    call       @LStrAddRef
 00582F31    xor        eax,eax
 00582F33    push       ebp
 00582F34    push       582FB8
 00582F39    push       dword ptr fs:[eax]
 00582F3C    mov        dword ptr fs:[eax],esp
 00582F3F    xor        eax,eax
 00582F41    mov        dword ptr [ebp-10],eax
 00582F44    lea        eax,[ebp-0C]
 00582F47    push       eax
 00582F48    lea        ecx,[ebp-5]
 00582F4B    lea        edx,[ebp-10]
 00582F4E    mov        eax,dword ptr [ebp-4]
 00582F51    call       00580858
 00582F56    cmp        byte ptr [ebp-5],52
>00582F5A    jne        00582F60
 00582F5C    mov        bl,1
>00582F5E    jmp        00582F8D
 00582F60    cmp        byte ptr [ebp-5],4A
>00582F64    jne        00582F8D
 00582F66    mov        eax,dword ptr [ebp-0C]
 00582F69    mov        al,byte ptr [eax]
 00582F6B    sub        al,42
>00582F6D    je         00582F89
 00582F6F    dec        al
>00582F71    je         00582F81
 00582F73    sub        al,9
>00582F75    je         00582F7D
 00582F77    sub        al,6
>00582F79    je         00582F85
>00582F7B    jmp        00582F9A
 00582F7D    mov        bl,1
>00582F7F    jmp        00582F9A
 00582F81    xor        ebx,ebx
>00582F83    jmp        00582F9A
 00582F85    mov        bl,2
>00582F87    jmp        00582F9A
 00582F89    mov        bl,3
>00582F8B    jmp        00582F9A
 00582F8D    mov        eax,dword ptr [ebp-4]
 00582F90    call       @LStrLen
 00582F95    cmp        eax,dword ptr [ebp-10]
<00582F98    jge        00582F44
 00582F9A    xor        eax,eax
 00582F9C    pop        edx
 00582F9D    pop        ecx
 00582F9E    pop        ecx
 00582F9F    mov        dword ptr fs:[eax],edx
 00582FA2    push       582FBF
 00582FA7    lea        eax,[ebp-0C]
 00582FAA    call       @LStrClr
 00582FAF    lea        eax,[ebp-4]
 00582FB2    call       @LStrClr
 00582FB7    ret
<00582FB8    jmp        @HandleFinally
<00582FBD    jmp        00582FA7
 00582FBF    mov        eax,ebx
 00582FC1    pop        ebx
 00582FC2    mov        esp,ebp
 00582FC4    pop        ebp
 00582FC5    ret
*}
//end;

end.