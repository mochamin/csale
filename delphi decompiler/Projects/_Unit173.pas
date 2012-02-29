{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit173;

interface

uses
  Classes, Windows, Graphics, ZTokenizer, _Unit146;

type
  TZSQLiteNumberState = class(TZNumberState)
  public
    //procedure sub_0053FC4C(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZSQLiteQuoteState = class(TZQuoteState)
  public
    //procedure sub_0053FE18(?:?; ?:?; ?:?); virtual;
    //procedure sub_0053FEF0(?:?; ?:?; ?:?); virtual;
    //procedure sub_0053FFAC(?:?; ?:?; ?:?); virtual;
  end;
  TZSQLiteCommentState = class(TZCppCommentState)
  public
    //procedure sub_0054009C(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZSQLiteSymbolState = class(TZSymbolState)
    //constructor Create(?:TZSQLiteSymbolState; _Dv__:Boolean);
  end;
  TZSQLiteWordState = class(TZGenericSQLWordState)
    //constructor Create(?:TZSQLiteWordState; _Dv__:Boolean);
  end;
  TZSQLiteTokenizer = class(TZTokenizer)
    //constructor Create(?:TZSQLiteTokenizer; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//0053FBB4
//procedure sub_0053FBB4(?:AnsiString; ?:?);
//begin
{*
 0053FBB4    push       ebp
 0053FBB5    mov        ebp,esp
 0053FBB7    push       0
 0053FBB9    push       ebx
 0053FBBA    push       esi
 0053FBBB    push       edi
 0053FBBC    mov        ebx,eax
 0053FBBE    mov        esi,dword ptr [ebp+8]
 0053FBC1    dec        esi
 0053FBC2    xor        eax,eax
 0053FBC4    push       ebp
 0053FBC5    push       53FC3D
 0053FBCA    push       dword ptr fs:[eax]
 0053FBCD    mov        dword ptr fs:[eax],esp
 0053FBD0    mov        eax,ebx
 0053FBD2    call       @LStrClr
 0053FBD7    mov        byte ptr [esi],0
>0053FBDA    jmp        0053FC11
 0053FBDC    mov        al,byte ptr [esi]
 0053FBDE    add        al,0D0
 0053FBE0    sub        al,0A
>0053FBE2    jae        0053FBFD
 0053FBE4    lea        eax,[ebp-4]
 0053FBE7    mov        dl,byte ptr [esi]
 0053FBE9    call       @LStrFromChar
 0053FBEE    mov        edx,dword ptr [ebp-4]
 0053FBF1    mov        eax,ebx
 0053FBF3    call       @LStrCat
 0053FBF8    mov        byte ptr [esi],0
>0053FBFB    jmp        0053FC11
 0053FBFD    mov        eax,dword ptr [ebp+8]
 0053FC00    mov        eax,dword ptr [eax-8]
 0053FC03    mov        cx,1
 0053FC07    or         edx,0FFFFFFFF
 0053FC0A    mov        ebx,dword ptr [eax]
 0053FC0C    call       dword ptr [ebx+14]
>0053FC0F    jmp        0053FC27
 0053FC11    mov        edx,esi
 0053FC13    mov        eax,dword ptr [ebp+8]
 0053FC16    mov        eax,dword ptr [eax-8]
 0053FC19    mov        ecx,1
 0053FC1E    mov        edi,dword ptr [eax]
 0053FC20    call       dword ptr [edi+0C]
 0053FC23    test       eax,eax
<0053FC25    jg         0053FBDC
 0053FC27    xor        eax,eax
 0053FC29    pop        edx
 0053FC2A    pop        ecx
 0053FC2B    pop        ecx
 0053FC2C    mov        dword ptr fs:[eax],edx
 0053FC2F    push       53FC44
 0053FC34    lea        eax,[ebp-4]
 0053FC37    call       @LStrClr
 0053FC3C    ret
<0053FC3D    jmp        @HandleFinally
<0053FC42    jmp        0053FC34
 0053FC44    pop        edi
 0053FC45    pop        esi
 0053FC46    pop        ebx
 0053FC47    pop        ecx
 0053FC48    pop        ebp
 0053FC49    ret
*}
//end;

//0053FC4C
//procedure sub_0053FC4C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0053FC4C    push       ebp
 0053FC4D    mov        ebp,esp
 0053FC4F    push       ecx
 0053FC50    mov        ecx,4
 0053FC55    push       0
 0053FC57    push       0
 0053FC59    dec        ecx
<0053FC5A    jne        0053FC55
 0053FC5C    xchg       ecx,dword ptr [ebp-4]
 0053FC5F    push       ebx
 0053FC60    push       esi
 0053FC61    push       edi
 0053FC62    mov        byte ptr [ebp-9],cl
 0053FC65    mov        dword ptr [ebp-8],edx
 0053FC68    mov        esi,dword ptr [ebp+8]
 0053FC6B    xor        eax,eax
 0053FC6D    push       ebp
 0053FC6E    push       53FDFC
 0053FC73    push       dword ptr fs:[eax]
 0053FC76    mov        dword ptr fs:[eax],esp
 0053FC79    cmp        byte ptr [ebp-9],2E
 0053FC7D    sete       bl
 0053FC80    mov        eax,esi
 0053FC82    mov        dl,byte ptr [ebp-9]
 0053FC85    call       @LStrFromChar
 0053FC8A    mov        byte ptr [esi+4],0
 0053FC8E    mov        byte ptr [ebp-1],0
 0053FC92    test       bl,bl
>0053FC94    jne        0053FCDA
 0053FC96    push       ebp
 0053FC97    lea        eax,[ebp-10]
 0053FC9A    call       0053FBB4
 0053FC9F    pop        ecx
 0053FCA0    mov        edx,dword ptr [ebp-10]
 0053FCA3    mov        eax,esi
 0053FCA5    call       @LStrCat
 0053FCAA    cmp        byte ptr [ebp-1],2E
 0053FCAE    sete       bl
 0053FCB1    test       bl,bl
>0053FCB3    je         0053FCDA
 0053FCB5    lea        edx,[ebp-0A]
 0053FCB8    mov        ecx,1
 0053FCBD    mov        eax,dword ptr [ebp-8]
 0053FCC0    mov        edi,dword ptr [eax]
 0053FCC2    call       dword ptr [edi+0C]
 0053FCC5    lea        eax,[ebp-14]
 0053FCC8    mov        dl,byte ptr [ebp-0A]
 0053FCCB    call       @LStrFromChar
 0053FCD0    mov        edx,dword ptr [ebp-14]
 0053FCD3    mov        eax,esi
 0053FCD5    call       @LStrCat
 0053FCDA    test       bl,bl
>0053FCDC    je         0053FCF2
 0053FCDE    push       ebp
 0053FCDF    lea        eax,[ebp-18]
 0053FCE2    call       0053FBB4
 0053FCE7    pop        ecx
 0053FCE8    mov        edx,dword ptr [ebp-18]
 0053FCEB    mov        eax,esi
 0053FCED    call       @LStrCat
 0053FCF2    mov        al,byte ptr [ebp-1]
 0053FCF5    sub        al,45
>0053FCF7    je         0053FD01
 0053FCF9    sub        al,20
>0053FCFB    jne        0053FDA5
 0053FD01    lea        edx,[ebp-0A]
 0053FD04    mov        ecx,1
 0053FD09    mov        eax,dword ptr [ebp-8]
 0053FD0C    mov        ebx,dword ptr [eax]
 0053FD0E    call       dword ptr [ebx+0C]
 0053FD11    lea        eax,[ebp-1C]
 0053FD14    mov        dl,byte ptr [ebp-0A]
 0053FD17    call       @LStrFromChar
 0053FD1C    mov        edx,dword ptr [ebp-1C]
 0053FD1F    mov        eax,esi
 0053FD21    call       @LStrCat
 0053FD26    mov        bl,1
 0053FD28    lea        edx,[ebp-0A]
 0053FD2B    mov        ecx,1
 0053FD30    mov        eax,dword ptr [ebp-8]
 0053FD33    mov        edi,dword ptr [eax]
 0053FD35    call       dword ptr [edi+0C]
 0053FD38    mov        al,byte ptr [ebp-0A]
 0053FD3B    sub        al,2B
>0053FD3D    je         0053FD49
 0053FD3F    sub        al,2
>0053FD41    je         0053FD49
 0053FD43    add        al,0FD
 0053FD45    sub        al,0A
>0053FD47    jae        0053FD74
 0053FD49    push       dword ptr [esi]
 0053FD4B    lea        eax,[ebp-20]
 0053FD4E    mov        dl,byte ptr [ebp-0A]
 0053FD51    call       @LStrFromChar
 0053FD56    push       dword ptr [ebp-20]
 0053FD59    push       ebp
 0053FD5A    lea        eax,[ebp-24]
 0053FD5D    call       0053FBB4
 0053FD62    pop        ecx
 0053FD63    push       dword ptr [ebp-24]
 0053FD66    mov        eax,esi
 0053FD68    mov        edx,3
 0053FD6D    call       @LStrCatN
>0053FD72    jmp        0053FDA5
 0053FD74    push       esi
 0053FD75    mov        eax,dword ptr [esi]
 0053FD77    call       @LStrLen
 0053FD7C    mov        ecx,eax
 0053FD7E    sub        ecx,1
>0053FD81    jno        0053FD88
 0053FD83    call       @IntOver
 0053FD88    mov        eax,dword ptr [esi]
 0053FD8A    mov        edx,1
 0053FD8F    call       @LStrCopy
 0053FD94    mov        cx,1
 0053FD98    mov        edx,0FFFFFFFE
 0053FD9D    mov        eax,dword ptr [ebp-8]
 0053FDA0    mov        edi,dword ptr [eax]
 0053FDA2    call       dword ptr [edi+14]
 0053FDA5    mov        eax,dword ptr [esi]
 0053FDA7    mov        edx,53FE14; '.'
 0053FDAC    call       @LStrCmp
>0053FDB1    jne        0053FDD3
 0053FDB3    mov        eax,dword ptr [ebp+0C]
 0053FDB6    mov        ebx,dword ptr [eax+41C]
 0053FDBC    test       ebx,ebx
>0053FDBE    je         0053FDE1
 0053FDC0    mov        eax,dword ptr [ebp+0C]
 0053FDC3    push       eax
 0053FDC4    push       esi
 0053FDC5    mov        eax,ebx
 0053FDC7    mov        cl,byte ptr [ebp-9]
 0053FDCA    mov        edx,dword ptr [ebp-8]
 0053FDCD    mov        ebx,dword ptr [eax]
 0053FDCF    call       dword ptr [ebx]
>0053FDD1    jmp        0053FDE1
 0053FDD3    test       bl,bl
>0053FDD5    je         0053FDDD
 0053FDD7    mov        byte ptr [esi+4],2
>0053FDDB    jmp        0053FDE1
 0053FDDD    mov        byte ptr [esi+4],3
 0053FDE1    xor        eax,eax
 0053FDE3    pop        edx
 0053FDE4    pop        ecx
 0053FDE5    pop        ecx
 0053FDE6    mov        dword ptr fs:[eax],edx
 0053FDE9    push       53FE03
 0053FDEE    lea        eax,[ebp-24]
 0053FDF1    mov        edx,6
 0053FDF6    call       @LStrArrayClr
 0053FDFB    ret
<0053FDFC    jmp        @HandleFinally
<0053FE01    jmp        0053FDEE
 0053FE03    pop        edi
 0053FE04    pop        esi
 0053FE05    pop        ebx
 0053FE06    mov        esp,ebp
 0053FE08    pop        ebp
 0053FE09    ret        8
*}
//end;

//0053FE18
//procedure sub_0053FE18(?:?; ?:?; ?:?);
//begin
{*
 0053FE18    push       ebp
 0053FE19    mov        ebp,esp
 0053FE1B    add        esp,0FFFFFFF4
 0053FE1E    push       ebx
 0053FE1F    push       esi
 0053FE20    push       edi
 0053FE21    xor        ebx,ebx
 0053FE23    mov        dword ptr [ebp-0C],ebx
 0053FE26    mov        ebx,ecx
 0053FE28    mov        dword ptr [ebp-4],edx
 0053FE2B    mov        esi,dword ptr [ebp+8]
 0053FE2E    xor        eax,eax
 0053FE30    push       ebp
 0053FE31    push       53FEDF
 0053FE36    push       dword ptr fs:[eax]
 0053FE39    mov        dword ptr fs:[eax],esp
 0053FE3C    mov        eax,esi
 0053FE3E    mov        edx,ebx
 0053FE40    call       @LStrFromChar
 0053FE45    mov        byte ptr [ebp-6],0
>0053FE49    jmp        0053FEA1
 0053FE4B    cmp        bl,byte ptr [ebp-6]
>0053FE4E    jne        0053FE5A
 0053FE50    cmp        bl,byte ptr [ebp-5]
>0053FE53    je         0053FE5A
 0053FE55    cmp        bl,5B
>0053FE58    jne        0053FE65
 0053FE5A    cmp        bl,5B
>0053FE5D    jne        0053FE76
 0053FE5F    cmp        byte ptr [ebp-6],5D
>0053FE63    jne        0053FE76
 0053FE65    mov        cx,1
 0053FE69    or         edx,0FFFFFFFF
 0053FE6C    mov        eax,dword ptr [ebp-4]
 0053FE6F    mov        edi,dword ptr [eax]
 0053FE71    call       dword ptr [edi+14]
>0053FE74    jmp        0053FEB5
 0053FE76    lea        eax,[ebp-0C]
 0053FE79    mov        dl,byte ptr [ebp-5]
 0053FE7C    call       @LStrFromChar
 0053FE81    mov        edx,dword ptr [ebp-0C]
 0053FE84    mov        eax,esi
 0053FE86    call       @LStrCat
 0053FE8B    cmp        bl,byte ptr [ebp-6]
>0053FE8E    jne        0053FE9B
 0053FE90    cmp        bl,byte ptr [ebp-5]
>0053FE93    jne        0053FE9B
 0053FE95    mov        byte ptr [ebp-6],0
>0053FE99    jmp        0053FEA1
 0053FE9B    mov        al,byte ptr [ebp-5]
 0053FE9E    mov        byte ptr [ebp-6],al
 0053FEA1    lea        edx,[ebp-5]
 0053FEA4    mov        ecx,1
 0053FEA9    mov        eax,dword ptr [ebp-4]
 0053FEAC    mov        edi,dword ptr [eax]
 0053FEAE    call       dword ptr [edi+0C]
 0053FEB1    test       eax,eax
<0053FEB3    jg         0053FE4B
 0053FEB5    sub        bl,22
>0053FEB8    je         0053FEBF
 0053FEBA    sub        bl,39
>0053FEBD    jne        0053FEC5
 0053FEBF    mov        byte ptr [esi+4],9
>0053FEC3    jmp        0053FEC9
 0053FEC5    mov        byte ptr [esi+4],7
 0053FEC9    xor        eax,eax
 0053FECB    pop        edx
 0053FECC    pop        ecx
 0053FECD    pop        ecx
 0053FECE    mov        dword ptr fs:[eax],edx
 0053FED1    push       53FEE6
 0053FED6    lea        eax,[ebp-0C]
 0053FED9    call       @LStrClr
 0053FEDE    ret
<0053FEDF    jmp        @HandleFinally
<0053FEE4    jmp        0053FED6
 0053FEE6    pop        edi
 0053FEE7    pop        esi
 0053FEE8    pop        ebx
 0053FEE9    mov        esp,ebp
 0053FEEB    pop        ebp
 0053FEEC    ret        8
*}
//end;

//0053FEF0
//procedure sub_0053FEF0(?:?; ?:?; ?:?);
//begin
{*
 0053FEF0    push       ebp
 0053FEF1    mov        ebp,esp
 0053FEF3    push       0
 0053FEF5    push       0
 0053FEF7    push       ebx
 0053FEF8    push       esi
 0053FEF9    push       edi
 0053FEFA    mov        ebx,ecx
 0053FEFC    mov        esi,edx
 0053FEFE    mov        edi,dword ptr [ebp+8]
 0053FF01    xor        eax,eax
 0053FF03    push       ebp
 0053FF04    push       53FF84
 0053FF09    push       dword ptr fs:[eax]
 0053FF0C    mov        dword ptr fs:[eax],esp
 0053FF0F    cmp        bl,5B
>0053FF12    jne        0053FF2D
 0053FF14    push       53FF9C; '['
 0053FF19    push       esi
 0053FF1A    push       53FFA8; ']'
 0053FF1F    mov        eax,edi
 0053FF21    mov        edx,3
 0053FF26    call       @LStrCatN
>0053FF2B    jmp        0053FF69
 0053FF2D    mov        eax,ebx
 0053FF2F    sub        al,22
>0053FF31    je         0053FF37
 0053FF33    sub        al,5
>0053FF35    jne        0053FF60
 0053FF37    lea        eax,[ebp-4]
 0053FF3A    mov        edx,ebx
 0053FF3C    call       @LStrFromChar
 0053FF41    push       dword ptr [ebp-4]
 0053FF44    push       esi
 0053FF45    lea        eax,[ebp-8]
 0053FF48    mov        edx,ebx
 0053FF4A    call       @LStrFromChar
 0053FF4F    push       dword ptr [ebp-8]
 0053FF52    mov        eax,edi
 0053FF54    mov        edx,3
 0053FF59    call       @LStrCatN
>0053FF5E    jmp        0053FF69
 0053FF60    mov        eax,edi
 0053FF62    mov        edx,esi
 0053FF64    call       @LStrAsg
 0053FF69    xor        eax,eax
 0053FF6B    pop        edx
 0053FF6C    pop        ecx
 0053FF6D    pop        ecx
 0053FF6E    mov        dword ptr fs:[eax],edx
 0053FF71    push       53FF8B
 0053FF76    lea        eax,[ebp-8]
 0053FF79    mov        edx,2
 0053FF7E    call       @LStrArrayClr
 0053FF83    ret
<0053FF84    jmp        @HandleFinally
<0053FF89    jmp        0053FF76
 0053FF8B    pop        edi
 0053FF8C    pop        esi
 0053FF8D    pop        ebx
 0053FF8E    pop        ecx
 0053FF8F    pop        ecx
 0053FF90    pop        ebp
 0053FF91    ret        4
*}
//end;

//0053FFAC
//procedure sub_0053FFAC(?:?; ?:?; ?:?);
//begin
{*
 0053FFAC    push       ebp
 0053FFAD    mov        ebp,esp
 0053FFAF    push       ebx
 0053FFB0    push       esi
 0053FFB1    push       edi
 0053FFB2    mov        ebx,ecx
 0053FFB4    mov        esi,edx
 0053FFB6    mov        edi,dword ptr [ebp+8]
 0053FFB9    mov        eax,edi
 0053FFBB    mov        edx,esi
 0053FFBD    call       @LStrAsg
 0053FFC2    mov        eax,esi
 0053FFC4    call       @LStrLen
 0053FFC9    cmp        eax,2
>0053FFCC    jl         00540094
 0053FFD2    mov        eax,ebx
 0053FFD4    sub        al,22
>0053FFD6    je         0053FFDC
 0053FFD8    sub        al,5
>0053FFDA    jne        00540036
 0053FFDC    mov        eax,1
 0053FFE1    dec        eax
 0053FFE2    test       esi,esi
>0053FFE4    je         0053FFEB
 0053FFE6    cmp        eax,dword ptr [esi-4]
>0053FFE9    jb         0053FFF0
 0053FFEB    call       @BoundErr
 0053FFF0    inc        eax
 0053FFF1    cmp        bl,byte ptr [esi+eax-1]
>0053FFF5    jne        00540036
 0053FFF7    mov        eax,esi
 0053FFF9    call       @LStrLen
 0053FFFE    dec        eax
 0053FFFF    test       esi,esi
>00540001    je         00540008
 00540003    cmp        eax,dword ptr [esi-4]
>00540006    jb         0054000D
 00540008    call       @BoundErr
 0054000D    inc        eax
 0054000E    cmp        bl,byte ptr [esi+eax-1]
>00540012    jne        00540036
 00540014    mov        eax,esi
 00540016    call       @LStrLen
 0054001B    cmp        eax,2
>0054001E    jle        0054002D
 00540020    mov        ecx,edi
 00540022    mov        edx,ebx
 00540024    mov        eax,esi
 00540026    call       AnsiDequotedStr
>0054002B    jmp        00540094
 0054002D    mov        eax,edi
 0054002F    call       @LStrClr
>00540034    jmp        00540094
 00540036    cmp        bl,5B
>00540039    jne        00540094
 0054003B    mov        eax,1
 00540040    dec        eax
 00540041    test       esi,esi
>00540043    je         0054004A
 00540045    cmp        eax,dword ptr [esi-4]
>00540048    jb         0054004F
 0054004A    call       @BoundErr
 0054004F    inc        eax
 00540050    cmp        bl,byte ptr [esi+eax-1]
>00540054    jne        00540094
 00540056    mov        eax,esi
 00540058    call       @LStrLen
 0054005D    dec        eax
 0054005E    test       esi,esi
>00540060    je         00540067
 00540062    cmp        eax,dword ptr [esi-4]
>00540065    jb         0054006C
 00540067    call       @BoundErr
 0054006C    inc        eax
 0054006D    cmp        byte ptr [esi+eax-1],5D
>00540072    jne        00540094
 00540074    push       edi
 00540075    mov        eax,esi
 00540077    call       @LStrLen
 0054007C    mov        ecx,eax
 0054007E    sub        ecx,2
>00540081    jno        00540088
 00540083    call       @IntOver
 00540088    mov        edx,2
 0054008D    mov        eax,esi
 0054008F    call       @LStrCopy
 00540094    pop        edi
 00540095    pop        esi
 00540096    pop        ebx
 00540097    pop        ebp
 00540098    ret        4
*}
//end;

//0054009C
//procedure sub_0054009C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0054009C    push       ebp
 0054009D    mov        ebp,esp
 0054009F    add        esp,0FFFFFFEC
 005400A2    push       ebx
 005400A3    push       esi
 005400A4    push       edi
 005400A5    xor        ebx,ebx
 005400A7    mov        dword ptr [ebp-14],ebx
 005400AA    mov        dword ptr [ebp-10],ebx
 005400AD    mov        ebx,ecx
 005400AF    mov        dword ptr [ebp-8],edx
 005400B2    mov        dword ptr [ebp-4],eax
 005400B5    mov        esi,dword ptr [ebp+8]
 005400B8    xor        eax,eax
 005400BA    push       ebp
 005400BB    push       5401C3
 005400C0    push       dword ptr fs:[eax]
 005400C3    mov        dword ptr fs:[eax],esp
 005400C6    mov        eax,esi
 005400C8    mov        edx,ebx
 005400CA    call       @LStrFromChar
 005400CF    mov        byte ptr [esi+4],0
 005400D3    cmp        bl,2D
>005400D6    jne        0054012A
 005400D8    lea        edx,[ebp-9]
 005400DB    mov        ecx,1
 005400E0    mov        eax,dword ptr [ebp-8]
 005400E3    mov        edi,dword ptr [eax]
 005400E5    call       dword ptr [edi+0C]
 005400E8    test       eax,eax
>005400EA    jle        00540115
 005400EC    cmp        byte ptr [ebp-9],2D
>005400F0    jne        00540115
 005400F2    mov        byte ptr [esi+4],0C
 005400F6    lea        ecx,[ebp-10]
 005400F9    mov        edx,dword ptr [ebp-8]
 005400FC    mov        eax,dword ptr [ebp-4]
 005400FF    call       004C0DB0
 00540104    mov        ecx,dword ptr [ebp-10]
 00540107    mov        eax,esi
 00540109    mov        edx,5401DC; '--'
 0054010E    call       @LStrCat3
>00540113    jmp        0054017F
 00540115    test       eax,eax
>00540117    jle        0054017F
 00540119    mov        cx,1
 0054011D    or         edx,0FFFFFFFF
 00540120    mov        eax,dword ptr [ebp-8]
 00540123    mov        edi,dword ptr [eax]
 00540125    call       dword ptr [edi+14]
>00540128    jmp        0054017F
 0054012A    cmp        bl,2F
>0054012D    jne        0054017F
 0054012F    lea        edx,[ebp-9]
 00540132    mov        ecx,1
 00540137    mov        eax,dword ptr [ebp-8]
 0054013A    mov        edi,dword ptr [eax]
 0054013C    call       dword ptr [edi+0C]
 0054013F    test       eax,eax
>00540141    jle        0054016C
 00540143    cmp        byte ptr [ebp-9],2A
>00540147    jne        0054016C
 00540149    mov        byte ptr [esi+4],0C
 0054014D    lea        ecx,[ebp-14]
 00540150    mov        edx,dword ptr [ebp-8]
 00540153    mov        eax,dword ptr [ebp-4]
 00540156    call       004C0D28
 0054015B    mov        ecx,dword ptr [ebp-14]
 0054015E    mov        eax,esi
 00540160    mov        edx,5401E8; '/*'
 00540165    call       @LStrCat3
>0054016A    jmp        0054017F
 0054016C    test       eax,eax
>0054016E    jle        0054017F
 00540170    mov        cx,1
 00540174    or         edx,0FFFFFFFF
 00540177    mov        eax,dword ptr [ebp-8]
 0054017A    mov        edi,dword ptr [eax]
 0054017C    call       dword ptr [edi+14]
 0054017F    cmp        byte ptr [esi+4],0
>00540183    jne        005401A8
 00540185    mov        eax,dword ptr [ebp+0C]
 00540188    cmp        dword ptr [eax+41C],0
>0054018F    je         005401A8
 00540191    mov        eax,dword ptr [ebp+0C]
 00540194    push       eax
 00540195    push       esi
 00540196    mov        eax,dword ptr [ebp+0C]
 00540199    mov        eax,dword ptr [eax+41C]
 0054019F    mov        ecx,ebx
 005401A1    mov        edx,dword ptr [ebp-8]
 005401A4    mov        ebx,dword ptr [eax]
 005401A6    call       dword ptr [ebx]
 005401A8    xor        eax,eax
 005401AA    pop        edx
 005401AB    pop        ecx
 005401AC    pop        ecx
 005401AD    mov        dword ptr fs:[eax],edx
 005401B0    push       5401CA
 005401B5    lea        eax,[ebp-14]
 005401B8    mov        edx,2
 005401BD    call       @LStrArrayClr
 005401C2    ret
<005401C3    jmp        @HandleFinally
<005401C8    jmp        005401B5
 005401CA    pop        edi
 005401CB    pop        esi
 005401CC    pop        ebx
 005401CD    mov        esp,ebp
 005401CF    pop        ebp
 005401D0    ret        8
*}
//end;

//005401EC
//constructor TZSQLiteSymbolState.Create(?:TZSQLiteSymbolState; _Dv__:Boolean);
//begin
{*
 005401EC    push       ebp
 005401ED    mov        ebp,esp
 005401EF    push       ebx
 005401F0    push       esi
 005401F1    test       dl,dl
>005401F3    je         005401FD
 005401F5    add        esp,0FFFFFFF0
 005401F8    call       @ClassCreate
 005401FD    mov        ebx,edx
 005401FF    mov        esi,eax
 00540201    xor        edx,edx
 00540203    mov        eax,esi
 00540205    call       004C15E4
 0054020A    mov        edx,540290; '<='
 0054020F    mov        eax,esi
 00540211    mov        ecx,dword ptr [eax]
 00540213    call       dword ptr [ecx+4]; TZSQLiteSymbolState.sub_004C1658
 00540216    mov        edx,54029C; '>='
 0054021B    mov        eax,esi
 0054021D    mov        ecx,dword ptr [eax]
 0054021F    call       dword ptr [ecx+4]; TZSQLiteSymbolState.sub_004C1658
 00540222    mov        edx,5402A8; '<>'
 00540227    mov        eax,esi
 00540229    mov        ecx,dword ptr [eax]
 0054022B    call       dword ptr [ecx+4]; TZSQLiteSymbolState.sub_004C1658
 0054022E    mov        edx,5402B4; '!='
 00540233    mov        eax,esi
 00540235    mov        ecx,dword ptr [eax]
 00540237    call       dword ptr [ecx+4]; TZSQLiteSymbolState.sub_004C1658
 0054023A    mov        edx,5402C0; '=='
 0054023F    mov        eax,esi
 00540241    mov        ecx,dword ptr [eax]
 00540243    call       dword ptr [ecx+4]; TZSQLiteSymbolState.sub_004C1658
 00540246    mov        edx,5402CC; '<<'
 0054024B    mov        eax,esi
 0054024D    mov        ecx,dword ptr [eax]
 0054024F    call       dword ptr [ecx+4]; TZSQLiteSymbolState.sub_004C1658
 00540252    mov        edx,5402D8; '>>'
 00540257    mov        eax,esi
 00540259    mov        ecx,dword ptr [eax]
 0054025B    call       dword ptr [ecx+4]; TZSQLiteSymbolState.sub_004C1658
 0054025E    mov        edx,5402E4; '||'
 00540263    mov        eax,esi
 00540265    mov        ecx,dword ptr [eax]
 00540267    call       dword ptr [ecx+4]; TZSQLiteSymbolState.sub_004C1658
 0054026A    mov        eax,esi
 0054026C    test       bl,bl
>0054026E    je         0054027F
 00540270    call       @AfterConstruction
 00540275    pop        dword ptr fs:[0]
 0054027C    add        esp,0C
 0054027F    mov        eax,esi
 00540281    pop        esi
 00540282    pop        ebx
 00540283    pop        ebp
 00540284    ret
*}
//end;

//005402E8
//constructor TZSQLiteWordState.Create(?:TZSQLiteWordState; _Dv__:Boolean);
//begin
{*
 005402E8    push       ebp
 005402E9    mov        ebp,esp
 005402EB    push       ebx
 005402EC    push       esi
 005402ED    test       dl,dl
>005402EF    je         005402F9
 005402F1    add        esp,0FFFFFFF0
 005402F4    call       @ClassCreate
 005402F9    mov        ebx,edx
 005402FB    mov        esi,eax
 005402FD    push       0
 005402FF    mov        cl,0FF
 00540301    xor        edx,edx
 00540303    mov        eax,esi
 00540305    call       004C18EC
 0054030A    push       1
 0054030C    mov        cl,7A
 0054030E    mov        dl,61
 00540310    mov        eax,esi
 00540312    call       004C18EC
 00540317    push       1
 00540319    mov        cl,5A
 0054031B    mov        dl,41
 0054031D    mov        eax,esi
 0054031F    call       004C18EC
 00540324    push       1
 00540326    mov        cl,39
 00540328    mov        dl,30
 0054032A    mov        eax,esi
 0054032C    call       004C18EC
 00540331    push       1
 00540333    mov        cl,5F
 00540335    mov        dl,5F
 00540337    mov        eax,esi
 00540339    call       004C18EC
 0054033E    mov        eax,esi
 00540340    test       bl,bl
>00540342    je         00540353
 00540344    call       @AfterConstruction
 00540349    pop        dword ptr fs:[0]
 00540350    add        esp,0C
 00540353    mov        eax,esi
 00540355    pop        esi
 00540356    pop        ebx
 00540357    pop        ebp
 00540358    ret
*}
//end;

//0054035C
//constructor TZSQLiteTokenizer.Create(?:TZSQLiteTokenizer; _Dv__:Boolean);
//begin
{*
 0054035C    push       ebp
 0054035D    mov        ebp,esp
 0054035F    push       ebx
 00540360    push       esi
 00540361    test       dl,dl
>00540363    je         0054036D
 00540365    add        esp,0FFFFFFF0
 00540368    call       @ClassCreate
 0054036D    mov        ebx,edx
 0054036F    mov        esi,eax
 00540371    mov        dl,1
 00540373    mov        eax,[004C0658]; TZWhitespaceState
 00540378    call       TZWhitespaceState.Create; TZWhitespaceState.Create
 0054037D    mov        dword ptr [esi+420],eax; TZSQLiteTokenizer.?f420:TZWhitespaceState
 00540383    mov        dl,1
 00540385    mov        eax,[0053FA7C]; TZSQLiteSymbolState
 0054038A    call       TZSQLiteSymbolState.Create; TZSQLiteSymbolState.Create
 0054038F    mov        dword ptr [esi+41C],eax; TZSQLiteTokenizer.?f41C:TZGenericSQLSymbolState
 00540395    mov        dl,1
 00540397    mov        eax,[0053F944]; TZSQLiteNumberState
 0054039C    call       TObject.Create; TZSQLiteNumberState.Create
 005403A1    mov        dword ptr [esi+414],eax; TZSQLiteTokenizer.?f414:TZNumberState
 005403A7    mov        dl,1
 005403A9    mov        eax,[0053F9A8]; TZSQLiteQuoteState
 005403AE    call       TObject.Create; TZSQLiteQuoteState.Create
 005403B3    mov        dword ptr [esi+418],eax; TZSQLiteTokenizer.?f418:TZGenericSQLQuoteState
 005403B9    mov        dl,1
 005403BB    mov        eax,[0053FAE4]; TZSQLiteWordState
 005403C0    call       TZSQLiteWordState.Create; TZSQLiteWordState.Create
 005403C5    mov        dword ptr [esi+424],eax; TZSQLiteTokenizer.?f424:TZGenericSQLWordState
 005403CB    mov        dl,1
 005403CD    mov        eax,[0053FA14]; TZSQLiteCommentState
 005403D2    call       TObject.Create; TZSQLiteCommentState.Create
 005403D7    mov        dword ptr [esi+410],eax; TZSQLiteTokenizer.?f410:TZCppCommentState
 005403DD    mov        eax,dword ptr [esi+41C]; TZSQLiteTokenizer.?f41C:TZGenericSQLSymbolState
 005403E3    push       eax
 005403E4    mov        cl,0FF
 005403E6    xor        edx,edx
 005403E8    mov        eax,esi
 005403EA    call       004C19C8
 005403EF    mov        eax,dword ptr [esi+420]; TZSQLiteTokenizer.?f420:TZWhitespaceState
 005403F5    push       eax
 005403F6    mov        cl,20
 005403F8    xor        edx,edx
 005403FA    mov        eax,esi
 005403FC    call       004C19C8
 00540401    mov        eax,dword ptr [esi+424]; TZSQLiteTokenizer.?f424:TZGenericSQLWordState
 00540407    push       eax
 00540408    mov        cl,7A
 0054040A    mov        dl,61
 0054040C    mov        eax,esi
 0054040E    call       004C19C8
 00540413    mov        eax,dword ptr [esi+424]; TZSQLiteTokenizer.?f424:TZGenericSQLWordState
 00540419    push       eax
 0054041A    mov        cl,5A
 0054041C    mov        dl,41
 0054041E    mov        eax,esi
 00540420    call       004C19C8
 00540425    mov        eax,dword ptr [esi+424]; TZSQLiteTokenizer.?f424:TZGenericSQLWordState
 0054042B    push       eax
 0054042C    mov        cl,5F
 0054042E    mov        dl,5F
 00540430    mov        eax,esi
 00540432    call       004C19C8
 00540437    mov        eax,dword ptr [esi+414]; TZSQLiteTokenizer.?f414:TZNumberState
 0054043D    push       eax
 0054043E    mov        cl,39
 00540440    mov        dl,30
 00540442    mov        eax,esi
 00540444    call       004C19C8
 00540449    mov        eax,dword ptr [esi+414]; TZSQLiteTokenizer.?f414:TZNumberState
 0054044F    push       eax
 00540450    mov        cl,2E
 00540452    mov        dl,2E
 00540454    mov        eax,esi
 00540456    call       004C19C8
 0054045B    mov        eax,dword ptr [esi+418]; TZSQLiteTokenizer.?f418:TZGenericSQLQuoteState
 00540461    push       eax
 00540462    mov        cl,22
 00540464    mov        dl,22
 00540466    mov        eax,esi
 00540468    call       004C19C8
 0054046D    mov        eax,dword ptr [esi+418]; TZSQLiteTokenizer.?f418:TZGenericSQLQuoteState
 00540473    push       eax
 00540474    mov        cl,27
 00540476    mov        dl,27
 00540478    mov        eax,esi
 0054047A    call       004C19C8
 0054047F    mov        eax,dword ptr [esi+418]; TZSQLiteTokenizer.?f418:TZGenericSQLQuoteState
 00540485    push       eax
 00540486    mov        cl,5B
 00540488    mov        dl,5B
 0054048A    mov        eax,esi
 0054048C    call       004C19C8
 00540491    mov        eax,dword ptr [esi+418]; TZSQLiteTokenizer.?f418:TZGenericSQLQuoteState
 00540497    push       eax
 00540498    mov        cl,5D
 0054049A    mov        dl,5D
 0054049C    mov        eax,esi
 0054049E    call       004C19C8
 005404A3    mov        eax,dword ptr [esi+410]; TZSQLiteTokenizer.?f410:TZCppCommentState
 005404A9    push       eax
 005404AA    mov        cl,2F
 005404AC    mov        dl,2F
 005404AE    mov        eax,esi
 005404B0    call       004C19C8
 005404B5    mov        eax,dword ptr [esi+410]; TZSQLiteTokenizer.?f410:TZCppCommentState
 005404BB    push       eax
 005404BC    mov        cl,2D
 005404BE    mov        dl,2D
 005404C0    mov        eax,esi
 005404C2    call       004C19C8
 005404C7    mov        eax,esi
 005404C9    test       bl,bl
>005404CB    je         005404DC
 005404CD    call       @AfterConstruction
 005404D2    pop        dword ptr fs:[0]
 005404D9    add        esp,0C
 005404DC    mov        eax,esi
 005404DE    pop        esi
 005404DF    pop        ebx
 005404E0    pop        ebp
 005404E1    ret
*}
//end;

end.