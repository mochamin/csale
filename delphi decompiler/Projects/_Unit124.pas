{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit124;

interface

uses
  Classes, Windows, Graphics;

type
  TZSortedList = class(TList)
  end;

implementation

{$R *.DFM}

//004BEC98
//function sub_004BEC98(?:AnsiString; ?:AnsiString):?;
//begin
{*
 004BEC98    push       ebp
 004BEC99    mov        ebp,esp
 004BEC9B    add        esp,0FFFFFFF4
 004BEC9E    push       ebx
 004BEC9F    push       esi
 004BECA0    push       edi
 004BECA1    xor        ecx,ecx
 004BECA3    mov        dword ptr [ebp-0C],ecx
 004BECA6    mov        dword ptr [ebp-8],edx
 004BECA9    mov        dword ptr [ebp-4],eax
 004BECAC    xor        eax,eax
 004BECAE    push       ebp
 004BECAF    push       4BED21
 004BECB4    push       dword ptr fs:[eax]
 004BECB7    mov        dword ptr fs:[eax],esp
 004BECBA    xor        ebx,ebx
 004BECBC    mov        eax,dword ptr [ebp-4]
 004BECBF    call       @LStrLen
 004BECC4    mov        esi,eax
 004BECC6    test       esi,esi
>004BECC8    jle        004BED0B
 004BECCA    mov        edi,1
 004BECCF    lea        eax,[ebp-0C]
 004BECD2    mov        edx,dword ptr [ebp-4]
 004BECD5    dec        edi
 004BECD6    test       edx,edx
>004BECD8    je         004BECDF
 004BECDA    cmp        edi,dword ptr [edx-4]
>004BECDD    jb         004BECE4
 004BECDF    call       @BoundErr
 004BECE4    inc        edi
 004BECE5    mov        dl,byte ptr [edx+edi-1]
 004BECE9    call       @LStrFromChar
 004BECEE    mov        eax,dword ptr [ebp-0C]
 004BECF1    mov        edx,dword ptr [ebp-8]
 004BECF4    call       @LStrPos
 004BECF9    test       eax,eax
>004BECFB    jle        004BED07
 004BECFD    cmp        ebx,eax
>004BECFF    jg         004BED05
 004BED01    test       ebx,ebx
>004BED03    jne        004BED07
 004BED05    mov        ebx,eax
 004BED07    inc        edi
 004BED08    dec        esi
<004BED09    jne        004BECCF
 004BED0B    xor        eax,eax
 004BED0D    pop        edx
 004BED0E    pop        ecx
 004BED0F    pop        ecx
 004BED10    mov        dword ptr fs:[eax],edx
 004BED13    push       4BED28
 004BED18    lea        eax,[ebp-0C]
 004BED1B    call       @LStrClr
 004BED20    ret
<004BED21    jmp        @HandleFinally
<004BED26    jmp        004BED18
 004BED28    mov        eax,ebx
 004BED2A    pop        edi
 004BED2B    pop        esi
 004BED2C    pop        ebx
 004BED2D    mov        esp,ebp
 004BED2F    pop        ebp
 004BED30    ret
*}
//end;

//004BED34
//function sub_004BED34(?:AnsiString; ?:AnsiString):?;
//begin
{*
 004BED34    push       ebp
 004BED35    mov        ebp,esp
 004BED37    add        esp,0FFFFFFF8
 004BED3A    push       ebx
 004BED3B    push       esi
 004BED3C    push       edi
 004BED3D    xor        ecx,ecx
 004BED3F    mov        dword ptr [ebp-8],ecx
 004BED42    mov        esi,edx
 004BED44    mov        edi,eax
 004BED46    xor        eax,eax
 004BED48    push       ebp
 004BED49    push       4BEDB1
 004BED4E    push       dword ptr fs:[eax]
 004BED51    mov        dword ptr fs:[eax],esp
 004BED54    xor        eax,eax
 004BED56    mov        dword ptr [ebp-4],eax
 004BED59    mov        eax,esi
 004BED5B    call       @LStrLen
 004BED60    mov        ebx,eax
 004BED62    cmp        ebx,1
>004BED65    jl         004BED9B
 004BED67    lea        eax,[ebp-8]
 004BED6A    dec        ebx
 004BED6B    test       esi,esi
>004BED6D    je         004BED74
 004BED6F    cmp        ebx,dword ptr [esi-4]
>004BED72    jb         004BED79
 004BED74    call       @BoundErr
 004BED79    inc        ebx
 004BED7A    mov        dl,byte ptr [esi+ebx-1]
 004BED7E    call       @LStrFromChar
 004BED83    mov        eax,dword ptr [ebp-8]
 004BED86    mov        edx,edi
 004BED88    call       @LStrPos
 004BED8D    test       eax,eax
>004BED8F    jle        004BED96
 004BED91    mov        dword ptr [ebp-4],ebx
>004BED94    jmp        004BED9B
 004BED96    dec        ebx
 004BED97    test       ebx,ebx
<004BED99    jne        004BED67
 004BED9B    xor        eax,eax
 004BED9D    pop        edx
 004BED9E    pop        ecx
 004BED9F    pop        ecx
 004BEDA0    mov        dword ptr fs:[eax],edx
 004BEDA3    push       4BEDB8
 004BEDA8    lea        eax,[ebp-8]
 004BEDAB    call       @LStrClr
 004BEDB0    ret
<004BEDB1    jmp        @HandleFinally
<004BEDB6    jmp        004BEDA8
 004BEDB8    mov        eax,dword ptr [ebp-4]
 004BEDBB    pop        edi
 004BEDBC    pop        esi
 004BEDBD    pop        ebx
 004BEDBE    pop        ecx
 004BEDBF    pop        ecx
 004BEDC0    pop        ebp
 004BEDC1    ret
*}
//end;

//004BEDC4
//function sub_004BEDC4(?:PChar; ?:PChar; ?:Longint):Boolean;
//begin
{*
 004BEDC4    push       ebx
>004BEDC5    jmp        004BEDD7
 004BEDC7    add        eax,1
 004BEDCA    add        edx,1
 004BEDCD    sub        ecx,1
>004BEDD0    jno        004BEDD7
 004BEDD2    call       @IntOver
 004BEDD7    test       ecx,ecx
>004BEDD9    jle        004BEDE1
 004BEDDB    mov        bl,byte ptr [edx]
 004BEDDD    cmp        bl,byte ptr [eax]
<004BEDDF    je         004BEDC7
 004BEDE1    test       ecx,ecx
 004BEDE3    sete       al
 004BEDE6    pop        ebx
 004BEDE7    ret
*}
//end;

//004BEDE8
//function sub_004BEDE8(?:AnsiString; ?:AnsiString):?;
//begin
{*
 004BEDE8    push       ebp
 004BEDE9    mov        ebp,esp
 004BEDEB    push       ebx
 004BEDEC    push       esi
 004BEDED    push       edi
 004BEDEE    mov        ebx,edx
 004BEDF0    mov        edi,eax
 004BEDF2    mov        eax,ebx
 004BEDF4    call       @LStrLen
 004BEDF9    mov        esi,eax
 004BEDFB    test       ebx,ebx
>004BEDFD    jne        004BEE03
 004BEDFF    mov        al,1
>004BEE01    jmp        004BEE29
 004BEE03    mov        eax,edi
 004BEE05    call       @LStrLen
 004BEE0A    cmp        esi,eax
>004BEE0C    jg         004BEE27
 004BEE0E    mov        eax,ebx
 004BEE10    call       @LStrToPChar
 004BEE15    push       eax
 004BEE16    mov        eax,edi
 004BEE18    call       @LStrToPChar
 004BEE1D    mov        ecx,esi
 004BEE1F    pop        edx
 004BEE20    call       004BEDC4
>004BEE25    jmp        004BEE29
 004BEE27    xor        eax,eax
 004BEE29    pop        edi
 004BEE2A    pop        esi
 004BEE2B    pop        ebx
 004BEE2C    pop        ebp
 004BEE2D    ret
*}
//end;

//004BEE30
//function sub_004BEE30(?:AnsiString; ?:AnsiString):?;
//begin
{*
 004BEE30    push       ebp
 004BEE31    mov        ebp,esp
 004BEE33    push       ebx
 004BEE34    push       esi
 004BEE35    push       edi
 004BEE36    mov        ebx,edx
 004BEE38    mov        edi,eax
 004BEE3A    test       ebx,ebx
>004BEE3C    jne        004BEE42
 004BEE3E    xor        eax,eax
>004BEE40    jmp        004BEE67
 004BEE42    mov        eax,ebx
 004BEE44    call       @LStrLen
 004BEE49    mov        esi,eax
 004BEE4B    mov        eax,edi
 004BEE4D    call       @LStrLen
 004BEE52    cmp        eax,esi
>004BEE54    jl         004BEE65
 004BEE56    add        eax,edi
 004BEE58    sub        eax,esi
 004BEE5A    mov        ecx,esi
 004BEE5C    mov        edx,ebx
 004BEE5E    call       004BEDC4
>004BEE63    jmp        004BEE67
 004BEE65    xor        eax,eax
 004BEE67    pop        edi
 004BEE68    pop        esi
 004BEE69    pop        ebx
 004BEE6A    pop        ebp
 004BEE6B    ret
*}
//end;

//004BEE6C
//function sub_004BEE6C(?:AnsiString; ?:?; ?:?; ?:?):?;
//begin
{*
 004BEE6C    push       ebp
 004BEE6D    mov        ebp,esp
 004BEE6F    add        esp,0FFFFFFF0
 004BEE72    push       ebx
 004BEE73    mov        dword ptr [ebp-4],eax
 004BEE76    mov        eax,dword ptr [ebp-4]
 004BEE79    call       @LStrAddRef
 004BEE7E    xor        eax,eax
 004BEE80    push       ebp
 004BEE81    push       4BEF21
 004BEE86    push       dword ptr fs:[eax]
 004BEE89    mov        dword ptr fs:[eax],esp
 004BEE8C    mov        ebx,dword ptr ds:[61C46C]; ^DecimalSeparator:Char
 004BEE92    mov        bl,byte ptr [ebx]
 004BEE94    mov        eax,[0061C46C]; ^DecimalSeparator:Char
 004BEE99    mov        byte ptr [eax],2E
 004BEE9C    mov        edx,dword ptr [ebp-4]
 004BEE9F    mov        eax,4BEF3C; '$'
 004BEEA4    call       @LStrPos
 004BEEA9    dec        eax
>004BEEAA    jne        004BEED1
 004BEEAC    lea        eax,[ebp-4]
 004BEEAF    push       eax
 004BEEB0    mov        eax,dword ptr [ebp-4]
 004BEEB3    call       @LStrLen
 004BEEB8    mov        ecx,eax
 004BEEBA    sub        ecx,1
>004BEEBD    jno        004BEEC4
 004BEEBF    call       @IntOver
 004BEEC4    mov        edx,2
 004BEEC9    mov        eax,dword ptr [ebp-4]
 004BEECC    call       @LStrCopy
 004BEED1    cmp        dword ptr [ebp-4],0
>004BEED5    jne        004BEEED
 004BEED7    mov        eax,dword ptr [ebp+8]
 004BEEDA    mov        dword ptr [ebp-10],eax
 004BEEDD    mov        eax,dword ptr [ebp+0C]
 004BEEE0    mov        dword ptr [ebp-0C],eax
 004BEEE3    mov        ax,word ptr [ebp+10]
 004BEEE7    mov        word ptr [ebp-8],ax
>004BEEEB    jmp        004BEF04
 004BEEED    mov        ax,word ptr [ebp+10]
 004BEEF1    push       eax
 004BEEF2    push       dword ptr [ebp+0C]
 004BEEF5    push       dword ptr [ebp+8]
 004BEEF8    mov        eax,dword ptr [ebp-4]
 004BEEFB    call       StrToFloatDef
 004BEF00    fstp       tbyte ptr [ebp-10]
 004BEF03    wait
 004BEF04    mov        eax,[0061C46C]; ^DecimalSeparator:Char
 004BEF09    mov        byte ptr [eax],bl
 004BEF0B    xor        eax,eax
 004BEF0D    pop        edx
 004BEF0E    pop        ecx
 004BEF0F    pop        ecx
 004BEF10    mov        dword ptr fs:[eax],edx
 004BEF13    push       4BEF28
 004BEF18    lea        eax,[ebp-4]
 004BEF1B    call       @LStrClr
 004BEF20    ret
<004BEF21    jmp        @HandleFinally
<004BEF26    jmp        004BEF18
 004BEF28    fld        tbyte ptr [ebp-10]
 004BEF2B    pop        ebx
 004BEF2C    mov        esp,ebp
 004BEF2E    pop        ebp
 004BEF2F    ret        0C
*}
//end;

//004BEF98
//procedure sub_004BEF98(?:Integer; ?:Integer; ?:AnsiString);
//begin
{*
 004BEF98    push       ebp
 004BEF99    mov        ebp,esp
 004BEF9B    push       ebx
 004BEF9C    push       esi
 004BEF9D    push       edi
 004BEF9E    mov        esi,ecx
 004BEFA0    mov        edi,edx
 004BEFA2    mov        ebx,eax
 004BEFA4    mov        eax,esi
 004BEFA6    call       @LStrClr
 004BEFAB    test       ebx,ebx
>004BEFAD    je         004BEFBA
 004BEFAF    mov        eax,esi
 004BEFB1    mov        ecx,edi
 004BEFB3    mov        edx,ebx
 004BEFB5    call       @LStrFromPCharLen
 004BEFBA    pop        edi
 004BEFBB    pop        esi
 004BEFBC    pop        ebx
 004BEFBD    pop        ebp
 004BEFBE    ret
*}
//end;

//004BEFC0
//function sub_004BEFC0(?:AnsiString):?;
//begin
{*
 004BEFC0    push       ebp
 004BEFC1    mov        ebp,esp
 004BEFC3    add        esp,0FFFFFFF8
 004BEFC6    push       ebx
 004BEFC7    xor        edx,edx
 004BEFC9    mov        dword ptr [ebp-8],edx
 004BEFCC    mov        dword ptr [ebp-4],eax
 004BEFCF    mov        eax,dword ptr [ebp-4]
 004BEFD2    call       @LStrAddRef
 004BEFD7    xor        eax,eax
 004BEFD9    push       ebp
 004BEFDA    push       4BF066
 004BEFDF    push       dword ptr fs:[eax]
 004BEFE2    mov        dword ptr fs:[eax],esp
 004BEFE5    lea        edx,[ebp-8]
 004BEFE8    mov        eax,dword ptr [ebp-4]
 004BEFEB    call       UpperCase
 004BEFF0    mov        edx,dword ptr [ebp-8]
 004BEFF3    lea        eax,[ebp-4]
 004BEFF6    call       @LStrLAsg
 004BEFFB    mov        eax,dword ptr [ebp-4]
 004BEFFE    mov        edx,4BF07C; 'Y'
 004BF003    call       @LStrCmp
>004BF008    je         004BF049
 004BF00A    mov        eax,dword ptr [ebp-4]
 004BF00D    mov        edx,4BF088; 'YES'
 004BF012    call       @LStrCmp
>004BF017    je         004BF049
 004BF019    mov        eax,dword ptr [ebp-4]
 004BF01C    mov        edx,4BF094; 'T'
 004BF021    call       @LStrCmp
>004BF026    je         004BF049
 004BF028    mov        eax,dword ptr [ebp-4]
 004BF02B    mov        edx,4BF0A0; 'TRUE'
 004BF030    call       @LStrCmp
>004BF035    je         004BF049
 004BF037    xor        edx,edx
 004BF039    mov        eax,dword ptr [ebp-4]
 004BF03C    call       StrToIntDef
 004BF041    test       eax,eax
>004BF043    jne        004BF049
 004BF045    xor        ebx,ebx
>004BF047    jmp        004BF04B
 004BF049    mov        bl,1
 004BF04B    xor        eax,eax
 004BF04D    pop        edx
 004BF04E    pop        ecx
 004BF04F    pop        ecx
 004BF050    mov        dword ptr fs:[eax],edx
 004BF053    push       4BF06D
 004BF058    lea        eax,[ebp-8]
 004BF05B    mov        edx,2
 004BF060    call       @LStrArrayClr
 004BF065    ret
<004BF066    jmp        @HandleFinally
<004BF06B    jmp        004BF058
 004BF06D    mov        eax,ebx
 004BF06F    pop        ebx
 004BF070    pop        ecx
 004BF071    pop        ecx
 004BF072    pop        ebp
 004BF073    ret
*}
//end;

//004BF0A8
//procedure sub_004BF0A8(?:?; ?:AnsiString);
//begin
{*
 004BF0A8    push       ebp
 004BF0A9    mov        ebp,esp
 004BF0AB    push       ebx
 004BF0AC    mov        ebx,edx
 004BF0AE    test       al,al
>004BF0B0    je         004BF0C1
 004BF0B2    mov        eax,ebx
 004BF0B4    mov        edx,4BF0D8; 'True'
 004BF0B9    call       @LStrAsg
 004BF0BE    pop        ebx
 004BF0BF    pop        ebp
 004BF0C0    ret
 004BF0C1    mov        eax,ebx
 004BF0C3    mov        edx,4BF0E8; 'False'
 004BF0C8    call       @LStrAsg
 004BF0CD    pop        ebx
 004BF0CE    pop        ebp
 004BF0CF    ret
*}
//end;

//004BF0F0
//function sub_004BF0F0(?:String):?;
//begin
{*
 004BF0F0    push       ebp
 004BF0F1    mov        ebp,esp
 004BF0F3    add        esp,0FFFFFFF0
 004BF0F6    push       ebx
 004BF0F7    push       esi
 004BF0F8    push       edi
 004BF0F9    xor        edx,edx
 004BF0FB    mov        dword ptr [ebp-10],edx
 004BF0FE    mov        esi,eax
 004BF100    xor        eax,eax
 004BF102    push       ebp
 004BF103    push       4BF21E
 004BF108    push       dword ptr fs:[eax]
 004BF10B    mov        dword ptr fs:[eax],esp
 004BF10E    mov        edx,esi
 004BF110    mov        eax,4BF238; '*.*.*.*'
 004BF115    call       004BE568
 004BF11A    test       al,al
>004BF11C    je         004BF206
 004BF122    xor        eax,eax
 004BF124    mov        dword ptr [ebp-4],eax
 004BF127    xor        eax,eax
 004BF129    mov        dword ptr [ebp-8],eax
 004BF12C    mov        edi,1
 004BF131    mov        eax,esi
 004BF133    call       @LStrLen
 004BF138    test       eax,eax
>004BF13A    jle        004BF1E0
 004BF140    mov        dword ptr [ebp-0C],eax
 004BF143    mov        ebx,1
 004BF148    mov        eax,ebx
 004BF14A    sub        eax,edi
>004BF14C    jno        004BF153
 004BF14E    call       @IntOver
 004BF153    cmp        eax,3
>004BF156    jg         004BF1E0
 004BF15C    dec        ebx
 004BF15D    test       esi,esi
>004BF15F    je         004BF166
 004BF161    cmp        ebx,dword ptr [esi-4]
>004BF164    jb         004BF16B
 004BF166    call       @BoundErr
 004BF16B    inc        ebx
 004BF16C    cmp        byte ptr [esi+ebx-1],2E
>004BF171    jne        004BF1B1
 004BF173    lea        eax,[ebp-10]
 004BF176    push       eax
 004BF177    mov        ecx,ebx
 004BF179    sub        ecx,edi
>004BF17B    jno        004BF182
 004BF17D    call       @IntOver
 004BF182    mov        edx,edi
 004BF184    mov        eax,esi
 004BF186    call       @LStrCopy
 004BF18B    mov        eax,dword ptr [ebp-10]
 004BF18E    call       StrToInt
 004BF193    cmp        eax,0FF
>004BF198    jg         004BF1E0
 004BF19A    add        dword ptr [ebp-4],1
>004BF19E    jno        004BF1A5
 004BF1A0    call       @IntOver
 004BF1A5    mov        edi,ebx
 004BF1A7    add        edi,1
>004BF1AA    jno        004BF1B1
 004BF1AC    call       @IntOver
 004BF1B1    dec        ebx
 004BF1B2    test       esi,esi
>004BF1B4    je         004BF1BB
 004BF1B6    cmp        ebx,dword ptr [esi-4]
>004BF1B9    jb         004BF1C0
 004BF1BB    call       @BoundErr
 004BF1C0    inc        ebx
 004BF1C1    mov        al,byte ptr [esi+ebx-1]
 004BF1C5    add        al,0D0
 004BF1C7    sub        al,0A
>004BF1C9    jae        004BF1D6
 004BF1CB    add        dword ptr [ebp-8],1
>004BF1CF    jno        004BF1D6
 004BF1D1    call       @IntOver
 004BF1D6    inc        ebx
 004BF1D7    dec        dword ptr [ebp-0C]
<004BF1DA    jne        004BF148
 004BF1E0    mov        eax,esi
 004BF1E2    call       @LStrLen
 004BF1E7    mov        edx,dword ptr [ebp-8]
 004BF1EA    add        edx,dword ptr [ebp-4]
>004BF1ED    jno        004BF1F4
 004BF1EF    call       @IntOver
 004BF1F4    cmp        eax,edx
>004BF1F6    jne        004BF1FE
 004BF1F8    cmp        dword ptr [ebp-4],3
>004BF1FC    je         004BF202
 004BF1FE    xor        ebx,ebx
>004BF200    jmp        004BF208
 004BF202    mov        bl,1
>004BF204    jmp        004BF208
 004BF206    xor        ebx,ebx
 004BF208    xor        eax,eax
 004BF20A    pop        edx
 004BF20B    pop        ecx
 004BF20C    pop        ecx
 004BF20D    mov        dword ptr fs:[eax],edx
 004BF210    push       4BF225
 004BF215    lea        eax,[ebp-10]
 004BF218    call       @LStrClr
 004BF21D    ret
<004BF21E    jmp        @HandleFinally
<004BF223    jmp        004BF215
 004BF225    mov        eax,ebx
 004BF227    pop        edi
 004BF228    pop        esi
 004BF229    pop        ebx
 004BF22A    mov        esp,ebp
 004BF22C    pop        ebp
 004BF22D    ret
*}
//end;

//004BF240
//procedure sub_004BF240(?:TStringList; ?:AnsiString; ?:AnsiString);
//begin
{*
 004BF240    push       ebp
 004BF241    mov        ebp,esp
 004BF243    add        esp,0FFFFFFF4
 004BF246    push       ebx
 004BF247    push       esi
 004BF248    xor        ebx,ebx
 004BF24A    mov        dword ptr [ebp-0C],ebx
 004BF24D    mov        esi,ecx
 004BF24F    mov        dword ptr [ebp-8],edx
 004BF252    mov        dword ptr [ebp-4],eax
 004BF255    mov        eax,dword ptr [ebp-8]
 004BF258    call       @LStrAddRef
 004BF25D    xor        eax,eax
 004BF25F    push       ebp
 004BF260    push       4BF303
 004BF265    push       dword ptr fs:[eax]
 004BF268    mov        dword ptr fs:[eax],esp
 004BF26B    mov        edx,dword ptr [ebp-8]
 004BF26E    mov        eax,esi
 004BF270    call       004BEC98
 004BF275    mov        ebx,eax
 004BF277    test       ebx,ebx
>004BF279    jle        004BF2D7
 004BF27B    cmp        ebx,1
>004BF27E    jle        004BF2A8
 004BF280    lea        eax,[ebp-0C]
 004BF283    push       eax
 004BF284    mov        ecx,ebx
 004BF286    sub        ecx,1
>004BF289    jno        004BF290
 004BF28B    call       @IntOver
 004BF290    mov        edx,1
 004BF295    mov        eax,dword ptr [ebp-8]
 004BF298    call       @LStrCopy
 004BF29D    mov        edx,dword ptr [ebp-0C]
 004BF2A0    mov        eax,dword ptr [ebp-4]
 004BF2A3    mov        ecx,dword ptr [eax]
 004BF2A5    call       dword ptr [ecx+38]; TStringList.Add
 004BF2A8    lea        eax,[ebp-8]
 004BF2AB    push       eax
 004BF2AC    mov        eax,dword ptr [ebp-8]
 004BF2AF    call       @LStrLen
 004BF2B4    mov        ecx,eax
 004BF2B6    sub        ecx,ebx
>004BF2B8    jno        004BF2BF
 004BF2BA    call       @IntOver
 004BF2BF    mov        edx,ebx
 004BF2C1    add        edx,1
>004BF2C4    jno        004BF2CB
 004BF2C6    call       @IntOver
 004BF2CB    mov        eax,dword ptr [ebp-8]
 004BF2CE    call       @LStrCopy
 004BF2D3    test       ebx,ebx
<004BF2D5    jg         004BF26B
 004BF2D7    cmp        dword ptr [ebp-8],0
>004BF2DB    je         004BF2E8
 004BF2DD    mov        edx,dword ptr [ebp-8]
 004BF2E0    mov        eax,dword ptr [ebp-4]
 004BF2E3    mov        ecx,dword ptr [eax]
 004BF2E5    call       dword ptr [ecx+38]; TStringList.Add
 004BF2E8    xor        eax,eax
 004BF2EA    pop        edx
 004BF2EB    pop        ecx
 004BF2EC    pop        ecx
 004BF2ED    mov        dword ptr fs:[eax],edx
 004BF2F0    push       4BF30A
 004BF2F5    lea        eax,[ebp-0C]
 004BF2F8    mov        edx,2
 004BF2FD    call       @LStrArrayClr
 004BF302    ret
<004BF303    jmp        @HandleFinally
<004BF308    jmp        004BF2F5
 004BF30A    pop        esi
 004BF30B    pop        ebx
 004BF30C    mov        esp,ebp
 004BF30E    pop        ebp
 004BF30F    ret
*}
//end;

//004BF310
//function sub_004BF310(?:AnsiString; ?:AnsiString):?;
//begin
{*
 004BF310    push       ebp
 004BF311    mov        ebp,esp
 004BF313    push       ecx
 004BF314    push       ebx
 004BF315    push       esi
 004BF316    push       edi
 004BF317    mov        esi,edx
 004BF319    mov        ebx,eax
 004BF31B    mov        dl,1
 004BF31D    mov        eax,[0041C8E4]; TStringList
 004BF322    call       TObject.Create; TStringList.Create
 004BF327    mov        dword ptr [ebp-4],eax
 004BF32A    xor        eax,eax
 004BF32C    push       ebp
 004BF32D    push       4BF34E
 004BF332    push       dword ptr fs:[eax]
 004BF335    mov        dword ptr fs:[eax],esp
 004BF338    mov        ecx,esi
 004BF33A    mov        edx,ebx
 004BF33C    mov        eax,dword ptr [ebp-4]
 004BF33F    call       004BF240
 004BF344    xor        eax,eax
 004BF346    pop        edx
 004BF347    pop        ecx
 004BF348    pop        ecx
 004BF349    mov        dword ptr fs:[eax],edx
>004BF34C    jmp        004BF365
<004BF34E    jmp        @HandleAnyException
 004BF353    mov        eax,dword ptr [ebp-4]
 004BF356    call       TObject.Free
 004BF35B    call       @RaiseAgain
 004BF360    call       @DoneExcept
 004BF365    mov        eax,dword ptr [ebp-4]
 004BF368    pop        edi
 004BF369    pop        esi
 004BF36A    pop        ebx
 004BF36B    pop        ecx
 004BF36C    pop        ebp
 004BF36D    ret
*}
//end;

//004BF370
//procedure sub_004BF370(?:TStringList; ?:AnsiString; ?:AnsiString);
//begin
{*
 004BF370    push       ebp
 004BF371    mov        ebp,esp
 004BF373    push       ebx
 004BF374    push       esi
 004BF375    push       edi
 004BF376    mov        edi,ecx
 004BF378    mov        esi,edx
 004BF37A    mov        ebx,eax
 004BF37C    mov        eax,ebx
 004BF37E    mov        edx,dword ptr [eax]
 004BF380    call       dword ptr [edx+44]; TStringList.Clear
 004BF383    mov        ecx,edi
 004BF385    mov        edx,esi
 004BF387    mov        eax,ebx
 004BF389    call       004BF240
 004BF38E    pop        edi
 004BF38F    pop        esi
 004BF390    pop        ebx
 004BF391    pop        ebp
 004BF392    ret
*}
//end;

//004BF500
//procedure sub_004BF500(?:AnsiString; ?:?; ?:?; ?:?);
//begin
{*
 004BF500    push       ebp
 004BF501    mov        ebp,esp
 004BF503    push       ecx
 004BF504    push       ebx
 004BF505    mov        ebx,eax
 004BF507    mov        eax,[0061C46C]; ^DecimalSeparator:Char
 004BF50C    mov        al,byte ptr [eax]
 004BF50E    mov        byte ptr [ebp-1],al
 004BF511    mov        eax,[0061C46C]; ^DecimalSeparator:Char
 004BF516    mov        byte ptr [eax],2E
 004BF519    xor        eax,eax
 004BF51B    push       ebp
 004BF51C    push       4BF551
 004BF521    push       dword ptr fs:[eax]
 004BF524    mov        dword ptr fs:[eax],esp
 004BF527    mov        ax,word ptr [ebp+10]
 004BF52B    push       eax
 004BF52C    push       dword ptr [ebp+0C]
 004BF52F    push       dword ptr [ebp+8]
 004BF532    mov        eax,ebx
 004BF534    call       FloatToStr
 004BF539    xor        eax,eax
 004BF53B    pop        edx
 004BF53C    pop        ecx
 004BF53D    pop        ecx
 004BF53E    mov        dword ptr fs:[eax],edx
 004BF541    push       4BF558
 004BF546    mov        eax,[0061C46C]; ^DecimalSeparator:Char
 004BF54B    mov        dl,byte ptr [ebp-1]
 004BF54E    mov        byte ptr [eax],dl
 004BF550    ret
<004BF551    jmp        @HandleFinally
<004BF556    jmp        004BF546
 004BF558    pop        ebx
 004BF559    pop        ecx
 004BF55A    pop        ebp
 004BF55B    ret        0C
*}
//end;

//004BF560
//procedure sub_004BF560(?:TStringList; ?:AnsiString; ?:AnsiString);
//begin
{*
 004BF560    push       ebp
 004BF561    mov        ebp,esp
 004BF563    push       0
 004BF565    push       0
 004BF567    push       0
 004BF569    push       ebx
 004BF56A    push       esi
 004BF56B    mov        esi,ecx
 004BF56D    mov        ebx,edx
 004BF56F    mov        dword ptr [ebp-4],eax
 004BF572    xor        eax,eax
 004BF574    push       ebp
 004BF575    push       4BF617
 004BF57A    push       dword ptr fs:[eax]
 004BF57D    mov        dword ptr fs:[eax],esp
 004BF580    lea        eax,[ebp-8]
 004BF583    mov        edx,ebx
 004BF585    call       @LStrLAsg
 004BF58A    mov        edx,dword ptr [ebp-8]
 004BF58D    mov        eax,esi
 004BF58F    call       AnsiPos
 004BF594    mov        ebx,eax
 004BF596    lea        eax,[ebp-0C]
 004BF599    push       eax
 004BF59A    mov        ecx,ebx
 004BF59C    sub        ecx,1
>004BF59F    jno        004BF5A6
 004BF5A1    call       @IntOver
 004BF5A6    mov        edx,1
 004BF5AB    mov        eax,dword ptr [ebp-8]
 004BF5AE    call       @LStrCopy
 004BF5B3    mov        edx,dword ptr [ebp-0C]
 004BF5B6    mov        eax,dword ptr [ebp-4]
 004BF5B9    mov        ecx,dword ptr [eax]
 004BF5BB    call       dword ptr [ecx+38]; TStringList.Add
 004BF5BE    mov        eax,esi
 004BF5C0    call       @LStrLen
 004BF5C5    mov        ecx,eax
 004BF5C7    add        ecx,ebx
>004BF5C9    jno        004BF5D0
 004BF5CB    call       @IntOver
 004BF5D0    sub        ecx,1
>004BF5D3    jno        004BF5DA
 004BF5D5    call       @IntOver
 004BF5DA    lea        eax,[ebp-8]
 004BF5DD    mov        edx,1
 004BF5E2    call       @LStrDelete
 004BF5E7    test       ebx,ebx
<004BF5E9    jne        004BF58A
 004BF5EB    cmp        dword ptr [ebp-8],0
>004BF5EF    je         004BF5FC
 004BF5F1    mov        edx,dword ptr [ebp-8]
 004BF5F4    mov        eax,dword ptr [ebp-4]
 004BF5F7    mov        ecx,dword ptr [eax]
 004BF5F9    call       dword ptr [ecx+38]; TStringList.Add
 004BF5FC    xor        eax,eax
 004BF5FE    pop        edx
 004BF5FF    pop        ecx
 004BF600    pop        ecx
 004BF601    mov        dword ptr fs:[eax],edx
 004BF604    push       4BF61E
 004BF609    lea        eax,[ebp-0C]
 004BF60C    mov        edx,2
 004BF611    call       @LStrArrayClr
 004BF616    ret
<004BF617    jmp        @HandleFinally
<004BF61C    jmp        004BF609
 004BF61E    pop        esi
 004BF61F    pop        ebx
 004BF620    mov        esp,ebp
 004BF622    pop        ebp
 004BF623    ret
*}
//end;

//004BF624
//procedure sub_004BF624(?:TStringList; ?:AnsiString; ?:AnsiString);
//begin
{*
 004BF624    push       ebp
 004BF625    mov        ebp,esp
 004BF627    push       ebx
 004BF628    push       esi
 004BF629    push       edi
 004BF62A    mov        edi,ecx
 004BF62C    mov        esi,edx
 004BF62E    mov        ebx,eax
 004BF630    mov        eax,ebx
 004BF632    mov        edx,dword ptr [eax]
 004BF634    call       dword ptr [edx+44]; TStringList.Clear
 004BF637    mov        ecx,edi
 004BF639    mov        edx,esi
 004BF63B    mov        eax,ebx
 004BF63D    call       004BF560
 004BF642    pop        edi
 004BF643    pop        esi
 004BF644    pop        ebx
 004BF645    pop        ebp
 004BF646    ret
*}
//end;

//004BF648
//procedure sub_004BF648(?:TByteDynArray; ?:AnsiString);
//begin
{*
 004BF648    push       ebp
 004BF649    mov        ebp,esp
 004BF64B    push       ebx
 004BF64C    push       esi
 004BF64D    mov        esi,edx
 004BF64F    mov        ebx,eax
 004BF651    mov        eax,ebx
 004BF653    call       @DynArrayLength
 004BF658    mov        ecx,eax
 004BF65A    xor        eax,eax
 004BF65C    test       ebx,ebx
>004BF65E    je         004BF665
 004BF660    cmp        eax,dword ptr [ebx-4]
>004BF663    jb         004BF66A
 004BF665    call       @BoundErr
 004BF66A    lea        edx,[ebx+eax]
 004BF66D    mov        eax,esi
 004BF66F    call       @LStrFromPCharLen
 004BF674    pop        esi
 004BF675    pop        ebx
 004BF676    pop        ebp
 004BF677    ret
*}
//end;

//004BF678
//procedure sub_004BF678(?:AnsiString; ?:TByteDynArray);
//begin
{*
 004BF678    push       ebp
 004BF679    mov        ebp,esp
 004BF67B    push       ebx
 004BF67C    push       esi
 004BF67D    mov        esi,edx
 004BF67F    mov        ebx,eax
 004BF681    mov        eax,ebx
 004BF683    call       @LStrLen
 004BF688    push       eax
 004BF689    mov        eax,esi
 004BF68B    mov        ecx,1
 004BF690    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004BF696    call       @DynArraySetLength
 004BF69B    add        esp,4
 004BF69E    test       ebx,ebx
>004BF6A0    je         004BF6DD
 004BF6A2    mov        eax,ebx
 004BF6A4    call       @LStrLen
 004BF6A9    mov        ecx,eax
 004BF6AB    xor        eax,eax
 004BF6AD    mov        edx,dword ptr [esi]
 004BF6AF    test       edx,edx
>004BF6B1    je         004BF6B8
 004BF6B3    cmp        eax,dword ptr [edx-4]
>004BF6B6    jb         004BF6BD
 004BF6B8    call       @BoundErr
 004BF6BD    add        edx,eax
 004BF6BF    mov        eax,1
 004BF6C4    dec        eax
 004BF6C5    test       ebx,ebx
>004BF6C7    je         004BF6CE
 004BF6C9    cmp        eax,dword ptr [ebx-4]
>004BF6CC    jb         004BF6D3
 004BF6CE    call       @BoundErr
 004BF6D3    inc        eax
 004BF6D4    lea        eax,[ebx+eax-1]
 004BF6D8    call       Move
 004BF6DD    pop        esi
 004BF6DE    pop        ebx
 004BF6DF    pop        ebp
 004BF6E0    ret
*}
//end;

//004BF6E4
//procedure sub_004BF6E4(?:TByteDynArray; ?:TVarData);
//begin
{*
 004BF6E4    push       ebp
 004BF6E5    mov        ebp,esp
 004BF6E7    xor        ecx,ecx
 004BF6E9    push       ecx
 004BF6EA    push       ecx
 004BF6EB    push       ecx
 004BF6EC    push       ecx
 004BF6ED    push       ecx
 004BF6EE    push       ecx
 004BF6EF    push       ecx
 004BF6F0    push       ebx
 004BF6F1    push       esi
 004BF6F2    push       edi
 004BF6F3    mov        dword ptr [ebp-4],edx
 004BF6F6    mov        edi,eax
 004BF6F8    xor        eax,eax
 004BF6FA    push       ebp
 004BF6FB    push       4BF798
 004BF700    push       dword ptr fs:[eax]
 004BF703    mov        dword ptr fs:[eax],esp
 004BF706    mov        eax,dword ptr [ebp-4]
 004BF709    push       eax
 004BF70A    xor        eax,eax
 004BF70C    mov        dword ptr [ebp-0C],eax
 004BF70F    mov        eax,edi
 004BF711    call       @DynArrayLength
 004BF716    sub        eax,1
>004BF719    jno        004BF720
 004BF71B    call       @IntOver
 004BF720    mov        dword ptr [ebp-8],eax
 004BF723    lea        eax,[ebp-0C]
 004BF726    mov        cx,11
 004BF72A    mov        edx,1
 004BF72F    call       VarArrayCreate
 004BF734    mov        eax,edi
 004BF736    call       @DynArrayLength
 004BF73B    mov        esi,eax
 004BF73D    sub        esi,1
>004BF740    jno        004BF747
 004BF742    call       @IntOver
 004BF747    test       esi,esi
>004BF749    jl         004BF782
 004BF74B    inc        esi
 004BF74C    xor        ebx,ebx
 004BF74E    push       ebx
 004BF74F    push       1
 004BF751    lea        eax,[ebp-1C]
 004BF754    test       edi,edi
>004BF756    je         004BF75D
 004BF758    cmp        ebx,dword ptr [edi-4]
>004BF75B    jb         004BF762
 004BF75D    call       @BoundErr
 004BF762    xor        edx,edx
 004BF764    mov        dl,byte ptr [edi+ebx]
 004BF767    mov        cl,1
 004BF769    call       @VarFromInt
 004BF76E    lea        eax,[ebp-1C]
 004BF771    push       eax
 004BF772    mov        eax,dword ptr [ebp-4]
 004BF775    push       eax
 004BF776    call       @VarArrayPut
 004BF77B    add        esp,10
 004BF77E    inc        ebx
 004BF77F    dec        esi
<004BF780    jne        004BF74E
 004BF782    xor        eax,eax
 004BF784    pop        edx
 004BF785    pop        ecx
 004BF786    pop        ecx
 004BF787    mov        dword ptr fs:[eax],edx
 004BF78A    push       4BF79F
 004BF78F    lea        eax,[ebp-1C]
 004BF792    call       @VarClr
 004BF797    ret
<004BF798    jmp        @HandleFinally
<004BF79D    jmp        004BF78F
 004BF79F    pop        edi
 004BF7A0    pop        esi
 004BF7A1    pop        ebx
 004BF7A2    mov        esp,ebp
 004BF7A4    pop        ebp
 004BF7A5    ret
*}
//end;

//004BF7A8
//procedure sub_004BF7A8(?:?; ?:TByteDynArray);
//begin
{*
 004BF7A8    push       ebp
 004BF7A9    mov        ebp,esp
 004BF7AB    xor        ecx,ecx
 004BF7AD    push       ecx
 004BF7AE    push       ecx
 004BF7AF    push       ecx
 004BF7B0    push       ecx
 004BF7B1    push       ecx
 004BF7B2    push       ecx
 004BF7B3    push       ebx
 004BF7B4    push       esi
 004BF7B5    push       edi
 004BF7B6    mov        dword ptr [ebp-4],edx
 004BF7B9    mov        edi,eax
 004BF7BB    xor        eax,eax
 004BF7BD    push       ebp
 004BF7BE    push       4BF8A2
 004BF7C3    push       dword ptr fs:[eax]
 004BF7C6    mov        dword ptr fs:[eax],esp
 004BF7C9    mov        eax,edi
 004BF7CB    call       VarIsArray
 004BF7D0    test       al,al
>004BF7D2    je         004BF7EF
 004BF7D4    mov        eax,edi
 004BF7D6    call       VarArrayDimCount
 004BF7DB    dec        eax
>004BF7DC    jne        004BF7EF
 004BF7DE    mov        eax,edi
 004BF7E0    call       VarType
 004BF7E5    and        ax,0FFF
 004BF7E9    cmp        ax,11
>004BF7ED    je         004BF810
 004BF7EF    lea        edx,[ebp-8]
 004BF7F2    mov        eax,[0061BBC4]; ^#122.sResString17:TResStringRec
 004BF7F7    call       LoadResString
 004BF7FC    mov        ecx,dword ptr [ebp-8]
 004BF7FF    mov        dl,1
 004BF801    mov        eax,[004087B0]; Exception
 004BF806    call       Exception.Create; Exception.Create
 004BF80B    call       @RaiseExcept
 004BF810    mov        eax,edi
 004BF812    mov        edx,1
 004BF817    call       VarArrayHighBound
 004BF81C    add        eax,1
>004BF81F    jno        004BF826
 004BF821    call       @IntOver
 004BF826    push       eax
 004BF827    mov        eax,dword ptr [ebp-4]
 004BF82A    mov        ecx,1
 004BF82F    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004BF835    call       @DynArraySetLength
 004BF83A    add        esp,4
 004BF83D    mov        eax,edi
 004BF83F    mov        edx,1
 004BF844    call       VarArrayHighBound
 004BF849    mov        esi,eax
 004BF84B    test       esi,esi
>004BF84D    jl         004BF884
 004BF84F    inc        esi
 004BF850    xor        ebx,ebx
 004BF852    push       ebx
 004BF853    push       1
 004BF855    push       edi
 004BF856    lea        eax,[ebp-18]
 004BF859    push       eax
 004BF85A    call       @VarArrayGet
 004BF85F    add        esp,10
 004BF862    lea        eax,[ebp-18]
 004BF865    call       @VarToInteger
 004BF86A    mov        edx,dword ptr [ebp-4]
 004BF86D    mov        edx,dword ptr [edx]
 004BF86F    test       edx,edx
>004BF871    je         004BF878
 004BF873    cmp        ebx,dword ptr [edx-4]
>004BF876    jb         004BF87D
 004BF878    call       @BoundErr
 004BF87D    mov        byte ptr [edx+ebx],al
 004BF880    inc        ebx
 004BF881    dec        esi
<004BF882    jne        004BF852
 004BF884    xor        eax,eax
 004BF886    pop        edx
 004BF887    pop        ecx
 004BF888    pop        ecx
 004BF889    mov        dword ptr fs:[eax],edx
 004BF88C    push       4BF8A9
 004BF891    lea        eax,[ebp-18]
 004BF894    call       @VarClr
 004BF899    lea        eax,[ebp-8]
 004BF89C    call       @LStrClr
 004BF8A1    ret
<004BF8A2    jmp        @HandleFinally
<004BF8A7    jmp        004BF891
 004BF8A9    pop        edi
 004BF8AA    pop        esi
 004BF8AB    pop        ebx
 004BF8AC    mov        esp,ebp
 004BF8AE    pop        ebp
 004BF8AF    ret
*}
//end;

//004BF8B0
//function sub_004BF8B0(?:AnsiString):?;
//begin
{*
 004BF8B0    push       ebp
 004BF8B1    mov        ebp,esp
 004BF8B3    mov        ecx,4
 004BF8B8    push       0
 004BF8BA    push       0
 004BF8BC    dec        ecx
<004BF8BD    jne        004BF8B8
 004BF8BF    push       ecx
 004BF8C0    push       ebx
 004BF8C1    push       esi
 004BF8C2    push       edi
 004BF8C3    mov        ebx,eax
 004BF8C5    xor        eax,eax
 004BF8C7    push       ebp
 004BF8C8    push       4BFAE9
 004BF8CD    push       dword ptr fs:[eax]
 004BF8D0    mov        dword ptr fs:[eax],esp
 004BF8D3    lea        eax,[ebp-0C]
 004BF8D6    mov        edx,ebx
 004BF8D8    call       @LStrLAsg
 004BF8DD    xor        eax,eax
 004BF8DF    mov        dword ptr [ebp-8],eax
 004BF8E2    mov        dword ptr [ebp-4],eax
 004BF8E5    mov        eax,dword ptr [ebp-0C]
 004BF8E8    call       @LStrLen
 004BF8ED    cmp        eax,0A
>004BF8F0    jl         004BF9D6
 004BF8F6    lea        eax,[ebp-10]
 004BF8F9    push       eax
 004BF8FA    mov        ecx,4
 004BF8FF    mov        edx,1
 004BF904    mov        eax,dword ptr [ebp-0C]
 004BF907    call       @LStrCopy
 004BF90C    mov        eax,dword ptr [ebp-10]
 004BF90F    xor        edx,edx
 004BF911    call       StrToIntDef
 004BF916    mov        ebx,eax
 004BF918    cmp        ebx,0FFFF
>004BF91E    jbe        004BF925
 004BF920    call       @BoundErr
 004BF925    lea        eax,[ebp-14]
 004BF928    push       eax
 004BF929    mov        ecx,2
 004BF92E    mov        edx,6
 004BF933    mov        eax,dword ptr [ebp-0C]
 004BF936    call       @LStrCopy
 004BF93B    mov        eax,dword ptr [ebp-14]
 004BF93E    xor        edx,edx
 004BF940    call       StrToIntDef
 004BF945    mov        esi,eax
 004BF947    cmp        esi,0FFFF
>004BF94D    jbe        004BF954
 004BF94F    call       @BoundErr
 004BF954    lea        eax,[ebp-18]
 004BF957    push       eax
 004BF958    mov        ecx,2
 004BF95D    mov        edx,9
 004BF962    mov        eax,dword ptr [ebp-0C]
 004BF965    call       @LStrCopy
 004BF96A    mov        eax,dword ptr [ebp-18]
 004BF96D    xor        edx,edx
 004BF96F    call       StrToIntDef
 004BF974    cmp        eax,0FFFF
>004BF979    jbe        004BF980
 004BF97B    call       @BoundErr
 004BF980    test       bx,bx
>004BF983    je         004BF9C0
 004BF985    test       si,si
>004BF988    je         004BF9C0
 004BF98A    test       ax,ax
>004BF98D    je         004BF9C0
 004BF98F    xor        edx,edx
 004BF991    push       ebp
 004BF992    push       4BF9B6
 004BF997    push       dword ptr fs:[edx]
 004BF99A    mov        dword ptr fs:[edx],esp
 004BF99D    mov        ecx,eax
 004BF99F    mov        edx,esi
 004BF9A1    mov        eax,ebx
 004BF9A3    call       EncodeDate
 004BF9A8    fstp       qword ptr [ebp-8]
 004BF9AB    wait
 004BF9AC    xor        eax,eax
 004BF9AE    pop        edx
 004BF9AF    pop        ecx
 004BF9B0    pop        ecx
 004BF9B1    mov        dword ptr fs:[eax],edx
>004BF9B4    jmp        004BF9C0
<004BF9B6    jmp        @HandleAnyException
 004BF9BB    call       @DoneExcept
 004BF9C0    lea        eax,[ebp-0C]
 004BF9C3    push       eax
 004BF9C4    mov        ecx,8
 004BF9C9    mov        edx,0C
 004BF9CE    mov        eax,dword ptr [ebp-0C]
 004BF9D1    call       @LStrCopy
 004BF9D6    mov        eax,dword ptr [ebp-0C]
 004BF9D9    call       @LStrLen
 004BF9DE    cmp        eax,8
>004BF9E1    jl         004BFACE
 004BF9E7    lea        eax,[ebp-1C]
 004BF9EA    push       eax
 004BF9EB    mov        ecx,2
 004BF9F0    mov        edx,1
 004BF9F5    mov        eax,dword ptr [ebp-0C]
 004BF9F8    call       @LStrCopy
 004BF9FD    mov        eax,dword ptr [ebp-1C]
 004BFA00    xor        edx,edx
 004BFA02    call       StrToIntDef
 004BFA07    mov        ebx,eax
 004BFA09    cmp        ebx,0FFFF
>004BFA0F    jbe        004BFA16
 004BFA11    call       @BoundErr
 004BFA16    lea        eax,[ebp-20]
 004BFA19    push       eax
 004BFA1A    mov        ecx,2
 004BFA1F    mov        edx,4
 004BFA24    mov        eax,dword ptr [ebp-0C]
 004BFA27    call       @LStrCopy
 004BFA2C    mov        eax,dword ptr [ebp-20]
 004BFA2F    xor        edx,edx
 004BFA31    call       StrToIntDef
 004BFA36    mov        esi,eax
 004BFA38    cmp        esi,0FFFF
>004BFA3E    jbe        004BFA45
 004BFA40    call       @BoundErr
 004BFA45    lea        eax,[ebp-24]
 004BFA48    push       eax
 004BFA49    mov        ecx,2
 004BFA4E    mov        edx,7
 004BFA53    mov        eax,dword ptr [ebp-0C]
 004BFA56    call       @LStrCopy
 004BFA5B    mov        eax,dword ptr [ebp-24]
 004BFA5E    xor        edx,edx
 004BFA60    call       StrToIntDef
 004BFA65    mov        edi,eax
 004BFA67    cmp        edi,0FFFF
>004BFA6D    jbe        004BFA74
 004BFA6F    call       @BoundErr
 004BFA74    xor        eax,eax
 004BFA76    push       ebp
 004BFA77    push       4BFAC4
 004BFA7C    push       dword ptr fs:[eax]
 004BFA7F    mov        dword ptr fs:[eax],esp
 004BFA82    fld        qword ptr [ebp-8]
 004BFA85    fcomp      dword ptr ds:[4BFAFC]; 0:Single
 004BFA8B    fnstsw     al
 004BFA8D    sahf
>004BFA8E    jb         004BFAA6
 004BFA90    push       0
 004BFA92    mov        ecx,edi
 004BFA94    mov        edx,esi
 004BFA96    mov        eax,ebx
 004BFA98    call       EncodeTime
 004BFA9D    fadd       qword ptr [ebp-8]
 004BFAA0    fstp       qword ptr [ebp-8]
 004BFAA3    wait
>004BFAA4    jmp        004BFABA
 004BFAA6    push       0
 004BFAA8    mov        ecx,edi
 004BFAAA    mov        edx,esi
 004BFAAC    mov        eax,ebx
 004BFAAE    call       EncodeTime
 004BFAB3    fsubr      qword ptr [ebp-8]
 004BFAB6    fstp       qword ptr [ebp-8]
 004BFAB9    wait
 004BFABA    xor        eax,eax
 004BFABC    pop        edx
 004BFABD    pop        ecx
 004BFABE    pop        ecx
 004BFABF    mov        dword ptr fs:[eax],edx
>004BFAC2    jmp        004BFACE
<004BFAC4    jmp        @HandleAnyException
 004BFAC9    call       @DoneExcept
 004BFACE    xor        eax,eax
 004BFAD0    pop        edx
 004BFAD1    pop        ecx
 004BFAD2    pop        ecx
 004BFAD3    mov        dword ptr fs:[eax],edx
 004BFAD6    push       4BFAF0
 004BFADB    lea        eax,[ebp-24]
 004BFADE    mov        edx,7
 004BFAE3    call       @LStrArrayClr
 004BFAE8    ret
<004BFAE9    jmp        @HandleFinally
<004BFAEE    jmp        004BFADB
 004BFAF0    fld        qword ptr [ebp-8]
 004BFAF3    pop        edi
 004BFAF4    pop        esi
 004BFAF5    pop        ebx
 004BFAF6    mov        esp,ebp
 004BFAF8    pop        ebp
 004BFAF9    ret
*}
//end;

//004BFB00
//function sub_004BFB00(?:AnsiString):?;
//begin
{*
 004BFB00    push       ebp
 004BFB01    mov        ebp,esp
 004BFB03    add        esp,0FFFFFFC4
 004BFB06    push       ebx
 004BFB07    push       esi
 004BFB08    push       edi
 004BFB09    xor        edx,edx
 004BFB0B    mov        dword ptr [ebp-3C],edx
 004BFB0E    mov        dword ptr [ebp-38],edx
 004BFB11    mov        dword ptr [ebp-34],edx
 004BFB14    mov        dword ptr [ebp-30],edx
 004BFB17    mov        dword ptr [ebp-2C],edx
 004BFB1A    mov        dword ptr [ebp-28],edx
 004BFB1D    mov        dword ptr [ebp-24],edx
 004BFB20    mov        edi,eax
 004BFB22    xor        eax,eax
 004BFB24    push       ebp
 004BFB25    push       4BFD84
 004BFB2A    push       dword ptr fs:[eax]
 004BFB2D    mov        dword ptr fs:[eax],esp
 004BFB30    xor        esi,esi
 004BFB32    xor        eax,eax
 004BFB34    mov        dword ptr [ebp-10],eax
 004BFB37    xor        eax,eax
 004BFB39    mov        dword ptr [ebp-14],eax
 004BFB3C    xor        eax,eax
 004BFB3E    mov        dword ptr [ebp-18],eax
 004BFB41    xor        eax,eax
 004BFB43    mov        dword ptr [ebp-1C],eax
 004BFB46    xor        eax,eax
 004BFB48    mov        dword ptr [ebp-8],eax
 004BFB4B    mov        dword ptr [ebp-4],eax
 004BFB4E    mov        eax,edi
 004BFB50    call       @LStrLen
 004BFB55    mov        ebx,eax
 004BFB57    cmp        ebx,0E
>004BFB5A    je         004BFB61
 004BFB5C    cmp        ebx,8
>004BFB5F    jne        004BFB8C
 004BFB61    mov        dword ptr [ebp-20],5
 004BFB68    lea        eax,[ebp-24]
 004BFB6B    push       eax
 004BFB6C    mov        ecx,4
 004BFB71    mov        edx,1
 004BFB76    mov        eax,edi
 004BFB78    call       @LStrCopy
 004BFB7D    mov        eax,dword ptr [ebp-24]
 004BFB80    xor        edx,edx
 004BFB82    call       StrToIntDef
 004BFB87    mov        dword ptr [ebp-0C],eax
>004BFB8A    jmp        004BFBB5
 004BFB8C    mov        dword ptr [ebp-20],3
 004BFB93    lea        eax,[ebp-28]
 004BFB96    push       eax
 004BFB97    mov        ecx,2
 004BFB9C    mov        edx,1
 004BFBA1    mov        eax,edi
 004BFBA3    call       @LStrCopy
 004BFBA8    mov        eax,dword ptr [ebp-28]
 004BFBAB    xor        edx,edx
 004BFBAD    call       StrToIntDef
 004BFBB2    mov        dword ptr [ebp-0C],eax
 004BFBB5    cmp        ebx,2
>004BFBB8    jle        004BFCA1
 004BFBBE    lea        eax,[ebp-2C]
 004BFBC1    push       eax
 004BFBC2    mov        ecx,2
 004BFBC7    mov        edx,dword ptr [ebp-20]
 004BFBCA    mov        eax,edi
 004BFBCC    call       @LStrCopy
 004BFBD1    mov        eax,dword ptr [ebp-2C]
 004BFBD4    xor        edx,edx
 004BFBD6    call       StrToIntDef
 004BFBDB    mov        esi,eax
 004BFBDD    cmp        ebx,4
>004BFBE0    jle        004BFCA1
 004BFBE6    lea        eax,[ebp-30]
 004BFBE9    push       eax
 004BFBEA    mov        edx,dword ptr [ebp-20]
 004BFBED    add        edx,2
>004BFBF0    jno        004BFBF7
 004BFBF2    call       @IntOver
 004BFBF7    mov        ecx,2
 004BFBFC    mov        eax,edi
 004BFBFE    call       @LStrCopy
 004BFC03    mov        eax,dword ptr [ebp-30]
 004BFC06    xor        edx,edx
 004BFC08    call       StrToIntDef
 004BFC0D    mov        dword ptr [ebp-10],eax
 004BFC10    cmp        ebx,6
>004BFC13    jle        004BFCA1
 004BFC19    lea        eax,[ebp-34]
 004BFC1C    push       eax
 004BFC1D    mov        edx,dword ptr [ebp-20]
 004BFC20    add        edx,4
>004BFC23    jno        004BFC2A
 004BFC25    call       @IntOver
 004BFC2A    mov        ecx,2
 004BFC2F    mov        eax,edi
 004BFC31    call       @LStrCopy
 004BFC36    mov        eax,dword ptr [ebp-34]
 004BFC39    xor        edx,edx
 004BFC3B    call       StrToIntDef
 004BFC40    mov        dword ptr [ebp-14],eax
 004BFC43    cmp        ebx,8
>004BFC46    jle        004BFCA1
 004BFC48    lea        eax,[ebp-38]
 004BFC4B    push       eax
 004BFC4C    mov        edx,dword ptr [ebp-20]
 004BFC4F    add        edx,6
>004BFC52    jno        004BFC59
 004BFC54    call       @IntOver
 004BFC59    mov        ecx,2
 004BFC5E    mov        eax,edi
 004BFC60    call       @LStrCopy
 004BFC65    mov        eax,dword ptr [ebp-38]
 004BFC68    xor        edx,edx
 004BFC6A    call       StrToIntDef
 004BFC6F    mov        dword ptr [ebp-18],eax
 004BFC72    cmp        ebx,0A
>004BFC75    jle        004BFCA1
 004BFC77    lea        eax,[ebp-3C]
 004BFC7A    push       eax
 004BFC7B    mov        edx,dword ptr [ebp-20]
 004BFC7E    add        edx,8
>004BFC81    jno        004BFC88
 004BFC83    call       @IntOver
 004BFC88    mov        ecx,2
 004BFC8D    mov        eax,edi
 004BFC8F    call       @LStrCopy
 004BFC94    mov        eax,dword ptr [ebp-3C]
 004BFC97    xor        edx,edx
 004BFC99    call       StrToIntDef
 004BFC9E    mov        dword ptr [ebp-1C],eax
 004BFCA1    cmp        dword ptr [ebp-0C],0
>004BFCA5    je         004BFD0A
 004BFCA7    test       esi,esi
>004BFCA9    je         004BFD0A
 004BFCAB    cmp        dword ptr [ebp-10],0
>004BFCAF    je         004BFD0A
 004BFCB1    xor        eax,eax
 004BFCB3    push       ebp
 004BFCB4    push       4BFD00
 004BFCB9    push       dword ptr fs:[eax]
 004BFCBC    mov        dword ptr fs:[eax],esp
 004BFCBF    mov        ecx,dword ptr [ebp-10]
 004BFCC2    cmp        ecx,0FFFF
>004BFCC8    jbe        004BFCCF
 004BFCCA    call       @BoundErr
 004BFCCF    mov        edx,esi
 004BFCD1    cmp        edx,0FFFF
>004BFCD7    jbe        004BFCDE
 004BFCD9    call       @BoundErr
 004BFCDE    mov        eax,dword ptr [ebp-0C]
 004BFCE1    cmp        eax,0FFFF
>004BFCE6    jbe        004BFCED
 004BFCE8    call       @BoundErr
 004BFCED    call       EncodeDate
 004BFCF2    fstp       qword ptr [ebp-8]
 004BFCF5    wait
 004BFCF6    xor        eax,eax
 004BFCF8    pop        edx
 004BFCF9    pop        ecx
 004BFCFA    pop        ecx
 004BFCFB    mov        dword ptr fs:[eax],edx
>004BFCFE    jmp        004BFD0A
<004BFD00    jmp        @HandleAnyException
 004BFD05    call       @DoneExcept
 004BFD0A    xor        eax,eax
 004BFD0C    push       ebp
 004BFD0D    push       4BFD5F
 004BFD12    push       dword ptr fs:[eax]
 004BFD15    mov        dword ptr fs:[eax],esp
 004BFD18    push       0
 004BFD1A    mov        ecx,dword ptr [ebp-1C]
 004BFD1D    cmp        ecx,0FFFF
>004BFD23    jbe        004BFD2A
 004BFD25    call       @BoundErr
 004BFD2A    mov        edx,dword ptr [ebp-18]
 004BFD2D    cmp        edx,0FFFF
>004BFD33    jbe        004BFD3A
 004BFD35    call       @BoundErr
 004BFD3A    mov        eax,dword ptr [ebp-14]
 004BFD3D    cmp        eax,0FFFF
>004BFD42    jbe        004BFD49
 004BFD44    call       @BoundErr
 004BFD49    call       EncodeTime
 004BFD4E    fadd       qword ptr [ebp-8]
 004BFD51    fstp       qword ptr [ebp-8]
 004BFD54    wait
 004BFD55    xor        eax,eax
 004BFD57    pop        edx
 004BFD58    pop        ecx
 004BFD59    pop        ecx
 004BFD5A    mov        dword ptr fs:[eax],edx
>004BFD5D    jmp        004BFD69
<004BFD5F    jmp        @HandleAnyException
 004BFD64    call       @DoneExcept
 004BFD69    xor        eax,eax
 004BFD6B    pop        edx
 004BFD6C    pop        ecx
 004BFD6D    pop        ecx
 004BFD6E    mov        dword ptr fs:[eax],edx
 004BFD71    push       4BFD8B
 004BFD76    lea        eax,[ebp-3C]
 004BFD79    mov        edx,7
 004BFD7E    call       @LStrArrayClr
 004BFD83    ret
<004BFD84    jmp        @HandleFinally
<004BFD89    jmp        004BFD76
 004BFD8B    fld        qword ptr [ebp-8]
 004BFD8E    pop        edi
 004BFD8F    pop        esi
 004BFD90    pop        ebx
 004BFD91    mov        esp,ebp
 004BFD93    pop        ebp
 004BFD94    ret
*}
//end;

//004BFD98
//procedure sub_004BFD98(?:AnsiString; ?:?; ?:?);
//begin
{*
 004BFD98    push       ebp
 004BFD99    mov        ebp,esp
 004BFD9B    push       ebx
 004BFD9C    mov        ebx,eax
 004BFD9E    push       dword ptr [ebp+0C]
 004BFDA1    push       dword ptr [ebp+8]
 004BFDA4    mov        edx,ebx
 004BFDA6    mov        eax,4BFDC0; 'yyyy-mm-dd hh:nn:ss'
 004BFDAB    call       FormatDateTime
 004BFDB0    pop        ebx
 004BFDB1    pop        ebp
 004BFDB2    ret        8
*}
//end;

//004BFDD4
//procedure sub_004BFDD4(?:TZSortedList; ?:PPointerList; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004BFDD4    push       ebp
 004BFDD5    mov        ebp,esp
 004BFDD7    add        esp,0FFFFFFF0
 004BFDDA    push       ebx
 004BFDDB    push       esi
 004BFDDC    push       edi
 004BFDDD    mov        dword ptr [ebp-0C],ecx
 004BFDE0    mov        dword ptr [ebp-8],edx
 004BFDE3    mov        dword ptr [ebp-4],eax
 004BFDE6    mov        ebx,dword ptr [ebp-0C]
 004BFDE9    mov        esi,dword ptr [ebp+10]
 004BFDEC    mov        eax,dword ptr [ebp-0C]
 004BFDEF    add        eax,dword ptr [ebp+10]
>004BFDF2    jno        004BFDF9
 004BFDF4    call       @IntOver
 004BFDF9    shr        eax,1
 004BFDFB    cmp        eax,7FFFFFE
>004BFE00    jbe        004BFE07
 004BFE02    call       @BoundErr
 004BFE07    mov        edx,dword ptr [ebp-8]
 004BFE0A    mov        eax,dword ptr [edx+eax*4]
 004BFE0D    mov        dword ptr [ebp-10],eax
>004BFE10    jmp        004BFE1C
 004BFE12    add        ebx,1
>004BFE15    jno        004BFE1C
 004BFE17    call       @IntOver
 004BFE1C    cmp        ebx,7FFFFFE
>004BFE22    jbe        004BFE29
 004BFE24    call       @BoundErr
 004BFE29    mov        eax,dword ptr [ebp-8]
 004BFE2C    mov        edx,dword ptr [eax+ebx*4]
 004BFE2F    mov        ecx,dword ptr [ebp-10]
 004BFE32    mov        eax,dword ptr [ebp+0C]
 004BFE35    call       dword ptr [ebp+8]
 004BFE38    test       eax,eax
<004BFE3A    jl         004BFE12
>004BFE3C    jmp        004BFE48
 004BFE3E    sub        esi,1
>004BFE41    jno        004BFE48
 004BFE43    call       @IntOver
 004BFE48    cmp        esi,7FFFFFE
>004BFE4E    jbe        004BFE55
 004BFE50    call       @BoundErr
 004BFE55    mov        eax,dword ptr [ebp-8]
 004BFE58    mov        edx,dword ptr [eax+esi*4]
 004BFE5B    mov        ecx,dword ptr [ebp-10]
 004BFE5E    mov        eax,dword ptr [ebp+0C]
 004BFE61    call       dword ptr [ebp+8]
 004BFE64    test       eax,eax
<004BFE66    jg         004BFE3E
 004BFE68    cmp        esi,ebx
>004BFE6A    jl         004BFECF
 004BFE6C    mov        edx,ebx
 004BFE6E    cmp        edx,7FFFFFE
>004BFE74    jbe        004BFE7B
 004BFE76    call       @BoundErr
 004BFE7B    mov        eax,dword ptr [ebp-8]
 004BFE7E    mov        eax,dword ptr [eax+edx*4]
 004BFE81    cmp        esi,7FFFFFE
>004BFE87    jbe        004BFE8E
 004BFE89    call       @BoundErr
 004BFE8E    mov        ecx,dword ptr [ebp-8]
 004BFE91    push       dword ptr [ecx+esi*4]
 004BFE94    cmp        ebx,7FFFFFE
>004BFE9A    jbe        004BFEA1
 004BFE9C    call       @BoundErr
 004BFEA1    mov        ecx,dword ptr [ebp-8]
 004BFEA4    pop        edi
 004BFEA5    mov        dword ptr [ecx+edx*4],edi
 004BFEA8    cmp        esi,7FFFFFE
>004BFEAE    jbe        004BFEB5
 004BFEB0    call       @BoundErr
 004BFEB5    mov        edx,dword ptr [ebp-8]
 004BFEB8    mov        dword ptr [edx+esi*4],eax
 004BFEBB    add        ebx,1
>004BFEBE    jno        004BFEC5
 004BFEC0    call       @IntOver
 004BFEC5    sub        esi,1
>004BFEC8    jno        004BFECF
 004BFECA    call       @IntOver
 004BFECF    cmp        esi,ebx
<004BFED1    jge        004BFE1C
 004BFED7    cmp        esi,dword ptr [ebp-0C]
>004BFEDA    jle        004BFEF1
 004BFEDC    push       esi
 004BFEDD    push       dword ptr [ebp+0C]
 004BFEE0    push       dword ptr [ebp+8]
 004BFEE3    mov        ecx,dword ptr [ebp-0C]
 004BFEE6    mov        edx,dword ptr [ebp-8]
 004BFEE9    mov        eax,dword ptr [ebp-4]
 004BFEEC    call       004BFDD4
 004BFEF1    mov        dword ptr [ebp-0C],ebx
 004BFEF4    cmp        ebx,dword ptr [ebp+10]
<004BFEF7    jl         004BFDE6
 004BFEFD    pop        edi
 004BFEFE    pop        esi
 004BFEFF    pop        ebx
 004BFF00    mov        esp,ebp
 004BFF02    pop        ebp
 004BFF03    ret        0C
*}
//end;

//004BFF08
//procedure sub_004BFF08(?:TZSortedList; ?:?; ?:?);
//begin
{*
 004BFF08    push       ebp
 004BFF09    mov        ebp,esp
 004BFF0B    mov        edx,dword ptr [eax+4]; TZSortedList.FList:PPointerList
 004BFF0E    test       edx,edx
>004BFF10    je         004BFF33
 004BFF12    cmp        dword ptr [eax+8],0; TZSortedList.FCount:Integer
>004BFF16    jle        004BFF33
 004BFF18    mov        ecx,dword ptr [eax+8]; TZSortedList.FCount:Integer
 004BFF1B    sub        ecx,1
>004BFF1E    jno        004BFF25
 004BFF20    call       @IntOver
 004BFF25    push       ecx
 004BFF26    push       dword ptr [ebp+0C]
 004BFF29    push       dword ptr [ebp+8]
 004BFF2C    xor        ecx,ecx
 004BFF2E    call       004BFDD4
 004BFF33    pop        ebp
 004BFF34    ret        8
*}
//end;

//004BFF38
//procedure sub_004BFF38(?:AnsiString; ?:AnsiString);
//begin
{*
 004BFF38    push       ebp
 004BFF39    mov        ebp,esp
 004BFF3B    add        esp,0FFFFFFF4
 004BFF3E    push       ebx
 004BFF3F    push       esi
 004BFF40    push       edi
 004BFF41    mov        dword ptr [ebp-8],edx
 004BFF44    mov        dword ptr [ebp-4],eax
 004BFF47    mov        eax,dword ptr [ebp-4]
 004BFF4A    call       @LStrLen
 004BFF4F    mov        dword ptr [ebp-0C],eax
 004BFF52    mov        eax,dword ptr [ebp-4]
 004BFF55    call       @LStrToPChar
 004BFF5A    mov        ebx,eax
 004BFF5C    xor        esi,esi
 004BFF5E    mov        edi,dword ptr [ebp-0C]
 004BFF61    test       edi,edi
>004BFF63    jle        004BFFA1
 004BFF65    mov        al,byte ptr [ebx]
 004BFF67    mov        edx,eax
 004BFF69    test       dl,dl
>004BFF6B    jne        004BFF79
 004BFF6D    add        esi,4
>004BFF70    jno        004BFF77
 004BFF72    call       @IntOver
>004BFF77    jmp        004BFF9B
 004BFF79    sub        al,22
>004BFF7B    je         004BFF85
 004BFF7D    sub        al,5
>004BFF7F    je         004BFF85
 004BFF81    sub        al,35
>004BFF83    jne        004BFF91
 004BFF85    add        esi,2
>004BFF88    jno        004BFF8F
 004BFF8A    call       @IntOver
>004BFF8F    jmp        004BFF9B
 004BFF91    add        esi,1
>004BFF94    jno        004BFF9B
 004BFF96    call       @IntOver
 004BFF9B    add        ebx,1
 004BFF9E    dec        edi
<004BFF9F    jne        004BFF65
 004BFFA1    mov        eax,dword ptr [ebp-4]
 004BFFA4    call       @LStrToPChar
 004BFFA9    mov        ebx,eax
 004BFFAB    mov        eax,dword ptr [ebp-8]
 004BFFAE    mov        edx,esi
 004BFFB0    call       @LStrSetLength
 004BFFB5    mov        eax,dword ptr [ebp-8]
 004BFFB8    mov        eax,dword ptr [eax]
 004BFFBA    call       @LStrToPChar
 004BFFBF    mov        esi,eax
 004BFFC1    mov        edi,dword ptr [ebp-0C]
 004BFFC4    test       edi,edi
>004BFFC6    jle        004C0042
 004BFFC8    mov        al,byte ptr [ebx]
 004BFFCA    mov        edx,eax
 004BFFCC    test       dl,dl
>004BFFCE    jne        004C0019
 004BFFD0    mov        byte ptr [esi],5C
 004BFFD3    xor        eax,eax
 004BFFD5    mov        al,byte ptr [ebx]
 004BFFD7    shr        eax,6
 004BFFDA    add        eax,30
>004BFFDD    jno        004BFFE4
 004BFFDF    call       @IntOver
 004BFFE4    mov        byte ptr [esi+1],al
 004BFFE7    xor        eax,eax
 004BFFE9    mov        al,byte ptr [ebx]
 004BFFEB    shr        eax,3
 004BFFEE    and        eax,7
 004BFFF1    add        eax,30
>004BFFF4    jno        004BFFFB
 004BFFF6    call       @IntOver
 004BFFFB    mov        byte ptr [esi+2],al
 004BFFFE    mov        al,byte ptr [ebx]
 004C0000    and        al,7
 004C0002    and        eax,0FF
 004C0007    add        eax,30
>004C000A    jno        004C0011
 004C000C    call       @IntOver
 004C0011    mov        byte ptr [esi+3],al
 004C0014    add        esi,4
>004C0017    jmp        004C003C
 004C0019    mov        edx,eax
 004C001B    sub        dl,22
>004C001E    je         004C002A
 004C0020    sub        dl,5
>004C0023    je         004C002A
 004C0025    sub        dl,35
>004C0028    jne        004C0037
 004C002A    mov        byte ptr [esi],5C
 004C002D    mov        al,byte ptr [ebx]
 004C002F    mov        byte ptr [esi+1],al
 004C0032    add        esi,2
>004C0035    jmp        004C003C
 004C0037    mov        byte ptr [esi],al
 004C0039    add        esi,1
 004C003C    add        ebx,1
 004C003F    dec        edi
<004C0040    jne        004BFFC8
 004C0042    pop        edi
 004C0043    pop        esi
 004C0044    pop        ebx
 004C0045    mov        esp,ebp
 004C0047    pop        ebp
 004C0048    ret
*}
//end;

//004C004C
//procedure sub_004C004C(?:AnsiString; ?:?);
//begin
{*
 004C004C    push       ebp
 004C004D    mov        ebp,esp
 004C004F    push       ecx
 004C0050    push       ebx
 004C0051    push       esi
 004C0052    push       edi
 004C0053    mov        dword ptr [ebp-4],edx
 004C0056    mov        ebx,eax
 004C0058    mov        eax,ebx
 004C005A    call       @LStrLen
 004C005F    mov        esi,eax
 004C0061    mov        eax,ebx
 004C0063    call       @LStrToPChar
 004C0068    mov        ebx,eax
 004C006A    mov        eax,dword ptr [ebp-4]
 004C006D    mov        edx,esi
 004C006F    call       @LStrSetLength
 004C0074    xor        edi,edi
 004C0076    mov        eax,dword ptr [ebp-4]
 004C0079    mov        eax,dword ptr [eax]
 004C007B    call       @LStrToPChar
 004C0080    test       esi,esi
>004C0082    jle        004C0140
 004C0088    cmp        byte ptr [ebx],5C
>004C008B    jne        004C011A
 004C0091    add        ebx,1
 004C0094    mov        dl,byte ptr [ebx]
 004C0096    add        dl,0D0
 004C0099    sub        dl,0A
>004C009C    jae        004C00E5
 004C009E    xor        edx,edx
 004C00A0    mov        dl,byte ptr [ebx]
 004C00A2    sub        edx,30
>004C00A5    jno        004C00AC
 004C00A7    call       @IntOver
 004C00AC    shl        edx,6
 004C00AF    xor        ecx,ecx
 004C00B1    mov        cl,byte ptr [ebx+1]
 004C00B4    sub        ecx,30
>004C00B7    jno        004C00BE
 004C00B9    call       @IntOver
 004C00BE    shl        ecx,3
 004C00C1    or         edx,ecx
 004C00C3    xor        ecx,ecx
 004C00C5    mov        cl,byte ptr [ebx+2]
 004C00C8    sub        ecx,30
>004C00CB    jno        004C00D2
 004C00CD    call       @IntOver
 004C00D2    or         edx,ecx
 004C00D4    mov        byte ptr [eax],dl
 004C00D6    add        ebx,3
 004C00D9    sub        esi,4
>004C00DC    jno        004C00E3
 004C00DE    call       @IntOver
>004C00E3    jmp        004C012B
 004C00E5    mov        dl,byte ptr [ebx]
 004C00E7    sub        dl,6E
>004C00EA    je         004C00FD
 004C00EC    sub        dl,4
>004C00EF    je         004C00F8
 004C00F1    sub        dl,2
>004C00F4    je         004C0102
>004C00F6    jmp        004C0107
 004C00F8    mov        byte ptr [eax],0D
>004C00FB    jmp        004C010B
 004C00FD    mov        byte ptr [eax],0A
>004C0100    jmp        004C010B
 004C0102    mov        byte ptr [eax],9
>004C0105    jmp        004C010B
 004C0107    mov        dl,byte ptr [ebx]
 004C0109    mov        byte ptr [eax],dl
 004C010B    add        ebx,1
 004C010E    sub        esi,2
>004C0111    jno        004C0118
 004C0113    call       @IntOver
>004C0118    jmp        004C012B
 004C011A    mov        dl,byte ptr [ebx]
 004C011C    mov        byte ptr [eax],dl
 004C011E    add        ebx,1
 004C0121    sub        esi,1
>004C0124    jno        004C012B
 004C0126    call       @IntOver
 004C012B    add        eax,1
 004C012E    add        edi,1
>004C0131    jno        004C0138
 004C0133    call       @IntOver
 004C0138    test       esi,esi
<004C013A    jg         004C0088
 004C0140    mov        eax,dword ptr [ebp-4]
 004C0143    mov        edx,edi
 004C0145    call       @LStrSetLength
 004C014A    pop        edi
 004C014B    pop        esi
 004C014C    pop        ebx
 004C014D    pop        ecx
 004C014E    pop        ebp
 004C014F    ret
*}
//end;

//004C0150
//procedure sub_004C0150(?:?; ?:?; ?:?);
//begin
{*
 004C0150    push       ebp
 004C0151    mov        ebp,esp
 004C0153    push       ebx
 004C0154    push       esi
 004C0155    push       edi
 004C0156    mov        esi,edx
 004C0158    mov        ebx,eax
 004C015A    mov        eax,ebx
 004C015C    mov        edi,0F4240
 004C0161    cdq
 004C0162    idiv       eax,edi
 004C0164    mov        dword ptr [esi],eax
 004C0166    imul       eax,dword ptr [esi],0F4240
>004C016C    jno        004C0173
 004C016E    call       @IntOver
 004C0173    mov        edi,ebx
 004C0175    sub        edi,eax
>004C0177    jno        004C017E
 004C0179    call       @IntOver
 004C017E    mov        eax,edi
 004C0180    push       ecx
 004C0181    mov        ecx,3E8
 004C0186    cdq
 004C0187    idiv       eax,ecx
 004C0189    pop        ecx
 004C018A    mov        dword ptr [ecx],eax
 004C018C    imul       eax,dword ptr [ecx],3E8
>004C0192    jno        004C0199
 004C0194    call       @IntOver
 004C0199    sub        edi,eax
>004C019B    jno        004C01A2
 004C019D    call       @IntOver
 004C01A2    mov        eax,dword ptr [ebp+8]
 004C01A5    mov        dword ptr [eax],edi
 004C01A7    pop        edi
 004C01A8    pop        esi
 004C01A9    pop        ebx
 004C01AA    pop        ebp
 004C01AB    ret        4
*}
//end;

//004C01B0
//function sub_004C01B0(?:?; ?:?; ?:?):?;
//begin
{*
 004C01B0    imul       eax,eax,0F4240
>004C01B6    jno        004C01BD
 004C01B8    call       @IntOver
 004C01BD    imul       edx,edx,3E8
>004C01C3    jno        004C01CA
 004C01C5    call       @IntOver
 004C01CA    add        eax,edx
>004C01CC    jno        004C01D3
 004C01CE    call       @IntOver
 004C01D3    add        ecx,eax
>004C01D5    jno        004C01DC
 004C01D7    call       @IntOver
 004C01DC    mov        eax,ecx
 004C01DE    ret
*}
//end;

end.