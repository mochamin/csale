{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit123;

interface

uses
  Classes, Windows, Graphics;


implementation

//004BE568
//function sub_004BE568(?:AnsiString; ?:AnsiString):Boolean;
//begin
{*
 004BE568    push       ebp
 004BE569    mov        ebp,esp
 004BE56B    push       ebx
 004BE56C    push       esi
 004BE56D    mov        esi,edx
 004BE56F    mov        ebx,eax
 004BE571    mov        edx,esi
 004BE573    mov        eax,ebx
 004BE575    call       004BE584
 004BE57A    dec        eax
 004BE57B    sete       al
 004BE57E    pop        esi
 004BE57F    pop        ebx
 004BE580    pop        ebp
 004BE581    ret
*}
//end;

//004BE584
//function sub_004BE584(?:AnsiString; ?:AnsiString):?;
//begin
{*
 004BE584    push       ebp
 004BE585    mov        ebp,esp
 004BE587    add        esp,0FFFFFFD4
 004BE58A    push       ebx
 004BE58B    push       esi
 004BE58C    push       edi
 004BE58D    xor        ecx,ecx
 004BE58F    mov        dword ptr [ebp-28],ecx
 004BE592    mov        dword ptr [ebp-2C],ecx
 004BE595    mov        dword ptr [ebp-24],ecx
 004BE598    mov        dword ptr [ebp-20],ecx
 004BE59B    mov        dword ptr [ebp-8],edx
 004BE59E    mov        dword ptr [ebp-4],eax
 004BE5A1    mov        eax,dword ptr [ebp-4]
 004BE5A4    call       @LStrAddRef
 004BE5A9    mov        eax,dword ptr [ebp-8]
 004BE5AC    call       @LStrAddRef
 004BE5B1    xor        eax,eax
 004BE5B3    push       ebp
 004BE5B4    push       4BE9E4
 004BE5B9    push       dword ptr fs:[eax]
 004BE5BC    mov        dword ptr fs:[eax],esp
 004BE5BF    mov        ebx,1
 004BE5C4    mov        edi,1
 004BE5C9    lea        edx,[ebp-20]
 004BE5CC    mov        eax,dword ptr [ebp-4]
 004BE5CF    call       AnsiLowerCase
 004BE5D4    mov        edx,dword ptr [ebp-20]
 004BE5D7    lea        eax,[ebp-4]
 004BE5DA    call       @LStrLAsg
 004BE5DF    lea        edx,[ebp-24]
 004BE5E2    mov        eax,dword ptr [ebp-8]
 004BE5E5    call       AnsiLowerCase
 004BE5EA    mov        edx,dword ptr [ebp-24]
 004BE5ED    lea        eax,[ebp-8]
 004BE5F0    call       @LStrLAsg
 004BE5F5    mov        eax,dword ptr [ebp-4]
 004BE5F8    call       @LStrLen
 004BE5FD    mov        esi,eax
 004BE5FF    mov        eax,dword ptr [ebp-8]
 004BE602    call       @LStrLen
 004BE607    mov        dword ptr [ebp-18],eax
 004BE60A    xor        eax,eax
 004BE60C    mov        dword ptr [ebp-0C],eax
>004BE60F    jmp        004BE993
 004BE614    cmp        edi,dword ptr [ebp-18]
>004BE617    jle        004BE659
 004BE619    mov        eax,dword ptr [ebp-4]
 004BE61C    dec        ebx
 004BE61D    test       eax,eax
>004BE61F    je         004BE626
 004BE621    cmp        ebx,dword ptr [eax-4]
>004BE624    jb         004BE62B
 004BE626    call       @BoundErr
 004BE62B    inc        ebx
 004BE62C    cmp        byte ptr [eax+ebx-1],2A
>004BE631    jne        004BE64D
 004BE633    add        ebx,1
>004BE636    jno        004BE63D
 004BE638    call       @IntOver
 004BE63D    cmp        esi,ebx
>004BE63F    jge        004BE64D
 004BE641    mov        dword ptr [ebp-0C],1
>004BE648    jmp        004BE9BC
 004BE64D    mov        dword ptr [ebp-0C],3
>004BE654    jmp        004BE9BC
 004BE659    mov        eax,dword ptr [ebp-4]
 004BE65C    dec        ebx
 004BE65D    test       eax,eax
>004BE65F    je         004BE666
 004BE661    cmp        ebx,dword ptr [eax-4]
>004BE664    jb         004BE66B
 004BE666    call       @BoundErr
 004BE66B    inc        ebx
 004BE66C    mov        al,byte ptr [eax+ebx-1]
 004BE670    sub        al,2A
>004BE672    je         004BE67D
 004BE674    sub        al,31
>004BE676    je         004BE6B3
>004BE678    jmp        004BE92E
 004BE67D    lea        eax,[ebp-28]
 004BE680    push       eax
 004BE681    mov        ecx,dword ptr [ebp-18]
 004BE684    mov        edx,edi
 004BE686    mov        eax,dword ptr [ebp-8]
 004BE689    call       @LStrCopy
 004BE68E    mov        eax,dword ptr [ebp-28]
 004BE691    push       eax
 004BE692    lea        eax,[ebp-2C]
 004BE695    push       eax
 004BE696    mov        ecx,esi
 004BE698    mov        edx,ebx
 004BE69A    mov        eax,dword ptr [ebp-4]
 004BE69D    call       @LStrCopy
 004BE6A2    mov        eax,dword ptr [ebp-2C]
 004BE6A5    pop        edx
 004BE6A6    call       004BE9F8
 004BE6AB    mov        dword ptr [ebp-0C],eax
>004BE6AE    jmp        004BE97F
 004BE6B3    add        ebx,1
>004BE6B6    jno        004BE6BD
 004BE6B8    call       @IntOver
 004BE6BD    mov        byte ptr [ebp-19],0
 004BE6C1    mov        eax,dword ptr [ebp-4]
 004BE6C4    dec        ebx
 004BE6C5    test       eax,eax
>004BE6C7    je         004BE6CE
 004BE6C9    cmp        ebx,dword ptr [eax-4]
>004BE6CC    jb         004BE6D3
 004BE6CE    call       @BoundErr
 004BE6D3    inc        ebx
 004BE6D4    cmp        byte ptr [eax+ebx-1],21
>004BE6D9    je         004BE6F5
 004BE6DB    mov        eax,dword ptr [ebp-4]
 004BE6DE    dec        ebx
 004BE6DF    test       eax,eax
>004BE6E1    je         004BE6E8
 004BE6E3    cmp        ebx,dword ptr [eax-4]
>004BE6E6    jb         004BE6ED
 004BE6E8    call       @BoundErr
 004BE6ED    inc        ebx
 004BE6EE    cmp        byte ptr [eax+ebx-1],5E
>004BE6F3    jne        004BE703
 004BE6F5    mov        byte ptr [ebp-19],1
 004BE6F9    add        ebx,1
>004BE6FC    jno        004BE703
 004BE6FE    call       @IntOver
 004BE703    mov        eax,dword ptr [ebp-4]
 004BE706    dec        ebx
 004BE707    test       eax,eax
>004BE709    je         004BE710
 004BE70B    cmp        ebx,dword ptr [eax-4]
>004BE70E    jb         004BE715
 004BE710    call       @BoundErr
 004BE715    inc        ebx
 004BE716    cmp        byte ptr [eax+ebx-1],5D
>004BE71B    jne        004BE729
 004BE71D    mov        dword ptr [ebp-0C],6
>004BE724    jmp        004BE9BC
 004BE729    mov        byte ptr [ebp-1A],0
 004BE72D    mov        byte ptr [ebp-1B],1
>004BE731    jmp        004BE8AE
 004BE736    mov        dword ptr [ebp-10],ebx
 004BE739    mov        dword ptr [ebp-14],ebx
 004BE73C    add        ebx,1
>004BE73F    jno        004BE746
 004BE741    call       @IntOver
 004BE746    cmp        esi,ebx
>004BE748    jge        004BE756
 004BE74A    mov        dword ptr [ebp-0C],6
>004BE751    jmp        004BE9BC
 004BE756    mov        eax,dword ptr [ebp-4]
 004BE759    dec        ebx
 004BE75A    test       eax,eax
>004BE75C    je         004BE763
 004BE75E    cmp        ebx,dword ptr [eax-4]
>004BE761    jb         004BE768
 004BE763    call       @BoundErr
 004BE768    inc        ebx
 004BE769    cmp        byte ptr [eax+ebx-1],2D
>004BE76E    jne        004BE7B4
 004BE770    add        ebx,1
>004BE773    jno        004BE77A
 004BE775    call       @IntOver
 004BE77A    mov        dword ptr [ebp-14],ebx
 004BE77D    cmp        esi,ebx
>004BE77F    jl         004BE79E
 004BE781    mov        eax,dword ptr [ebp-14]
 004BE784    mov        edx,dword ptr [ebp-4]
 004BE787    dec        eax
 004BE788    test       edx,edx
>004BE78A    je         004BE791
 004BE78C    cmp        eax,dword ptr [edx-4]
>004BE78F    jb         004BE796
 004BE791    call       @BoundErr
 004BE796    inc        eax
 004BE797    cmp        byte ptr [edx+eax-1],5D
>004BE79C    jne        004BE7AA
 004BE79E    mov        dword ptr [ebp-0C],6
>004BE7A5    jmp        004BE9BC
 004BE7AA    add        ebx,1
>004BE7AD    jno        004BE7B4
 004BE7AF    call       @IntOver
 004BE7B4    cmp        esi,ebx
>004BE7B6    jge        004BE7C4
 004BE7B8    mov        dword ptr [ebp-0C],6
>004BE7BF    jmp        004BE9BC
 004BE7C4    mov        eax,dword ptr [ebp-10]
 004BE7C7    cmp        eax,dword ptr [ebp-14]
>004BE7CA    jge        004BE840
 004BE7CC    mov        eax,dword ptr [ebp-8]
 004BE7CF    dec        edi
 004BE7D0    test       eax,eax
>004BE7D2    je         004BE7D9
 004BE7D4    cmp        edi,dword ptr [eax-4]
>004BE7D7    jb         004BE7DE
 004BE7D9    call       @BoundErr
 004BE7DE    inc        edi
 004BE7DF    mov        al,byte ptr [eax+edi-1]
 004BE7E3    mov        edx,dword ptr [ebp-10]
 004BE7E6    mov        ecx,dword ptr [ebp-4]
 004BE7E9    dec        edx
 004BE7EA    test       ecx,ecx
>004BE7EC    je         004BE7F3
 004BE7EE    cmp        edx,dword ptr [ecx-4]
>004BE7F1    jb         004BE7F8
 004BE7F3    call       @BoundErr
 004BE7F8    inc        edx
 004BE7F9    cmp        al,byte ptr [ecx+edx-1]
>004BE7FD    jb         004BE8AE
 004BE803    mov        eax,dword ptr [ebp-8]
 004BE806    dec        edi
 004BE807    test       eax,eax
>004BE809    je         004BE810
 004BE80B    cmp        edi,dword ptr [eax-4]
>004BE80E    jb         004BE815
 004BE810    call       @BoundErr
 004BE815    inc        edi
 004BE816    mov        al,byte ptr [eax+edi-1]
 004BE81A    mov        edx,dword ptr [ebp-14]
 004BE81D    mov        ecx,dword ptr [ebp-4]
 004BE820    dec        edx
 004BE821    test       ecx,ecx
>004BE823    je         004BE82A
 004BE825    cmp        edx,dword ptr [ecx-4]
>004BE828    jb         004BE82F
 004BE82A    call       @BoundErr
 004BE82F    inc        edx
 004BE830    cmp        al,byte ptr [ecx+edx-1]
>004BE834    ja         004BE8AE
 004BE836    mov        byte ptr [ebp-1A],1
 004BE83A    mov        byte ptr [ebp-1B],0
>004BE83E    jmp        004BE8AE
 004BE840    mov        eax,dword ptr [ebp-8]
 004BE843    dec        edi
 004BE844    test       eax,eax
>004BE846    je         004BE84D
 004BE848    cmp        edi,dword ptr [eax-4]
>004BE84B    jb         004BE852
 004BE84D    call       @BoundErr
 004BE852    inc        edi
 004BE853    mov        al,byte ptr [eax+edi-1]
 004BE857    mov        edx,dword ptr [ebp-14]
 004BE85A    mov        ecx,dword ptr [ebp-4]
 004BE85D    dec        edx
 004BE85E    test       ecx,ecx
>004BE860    je         004BE867
 004BE862    cmp        edx,dword ptr [ecx-4]
>004BE865    jb         004BE86C
 004BE867    call       @BoundErr
 004BE86C    inc        edx
 004BE86D    cmp        al,byte ptr [ecx+edx-1]
>004BE871    jb         004BE8AE
 004BE873    mov        eax,dword ptr [ebp-8]
 004BE876    dec        edi
 004BE877    test       eax,eax
>004BE879    je         004BE880
 004BE87B    cmp        edi,dword ptr [eax-4]
>004BE87E    jb         004BE885
 004BE880    call       @BoundErr
 004BE885    inc        edi
 004BE886    mov        al,byte ptr [eax+edi-1]
 004BE88A    mov        edx,dword ptr [ebp-10]
 004BE88D    mov        ecx,dword ptr [ebp-4]
 004BE890    dec        edx
 004BE891    test       ecx,ecx
>004BE893    je         004BE89A
 004BE895    cmp        edx,dword ptr [ecx-4]
>004BE898    jb         004BE89F
 004BE89A    call       @BoundErr
 004BE89F    inc        edx
 004BE8A0    cmp        al,byte ptr [ecx+edx-1]
>004BE8A4    ja         004BE8AE
 004BE8A6    mov        byte ptr [ebp-1A],1
 004BE8AA    mov        byte ptr [ebp-1B],0
 004BE8AE    cmp        byte ptr [ebp-1B],0
>004BE8B2    je         004BE8D2
 004BE8B4    mov        eax,dword ptr [ebp-4]
 004BE8B7    dec        ebx
 004BE8B8    test       eax,eax
>004BE8BA    je         004BE8C1
 004BE8BC    cmp        ebx,dword ptr [eax-4]
>004BE8BF    jb         004BE8C6
 004BE8C1    call       @BoundErr
 004BE8C6    inc        ebx
 004BE8C7    cmp        byte ptr [eax+ebx-1],5D
<004BE8CC    jne        004BE736
 004BE8D2    mov        al,byte ptr [ebp-19]
 004BE8D5    and        al,byte ptr [ebp-1A]
>004BE8D8    jne        004BE8E2
 004BE8DA    mov        al,byte ptr [ebp-19]
 004BE8DD    or         al,byte ptr [ebp-1A]
>004BE8E0    jne        004BE8EE
 004BE8E2    mov        dword ptr [ebp-0C],4
>004BE8E9    jmp        004BE9BC
 004BE8EE    cmp        byte ptr [ebp-1A],0
>004BE8F2    je         004BE91E
>004BE8F4    jmp        004BE900
 004BE8F6    add        ebx,1
>004BE8F9    jno        004BE900
 004BE8FB    call       @IntOver
 004BE900    cmp        esi,ebx
>004BE902    jl         004BE91E
 004BE904    mov        eax,dword ptr [ebp-4]
 004BE907    dec        ebx
 004BE908    test       eax,eax
>004BE90A    je         004BE911
 004BE90C    cmp        ebx,dword ptr [eax-4]
>004BE90F    jb         004BE916
 004BE911    call       @BoundErr
 004BE916    inc        ebx
 004BE917    cmp        byte ptr [eax+ebx-1],5D
<004BE91C    jne        004BE8F6
 004BE91E    cmp        esi,ebx
>004BE920    jge        004BE97F
 004BE922    mov        dword ptr [ebp-0C],6
>004BE929    jmp        004BE9BC
 004BE92E    mov        eax,dword ptr [ebp-4]
 004BE931    dec        ebx
 004BE932    test       eax,eax
>004BE934    je         004BE93B
 004BE936    cmp        ebx,dword ptr [eax-4]
>004BE939    jb         004BE940
 004BE93B    call       @BoundErr
 004BE940    inc        ebx
 004BE941    cmp        byte ptr [eax+ebx-1],3F
>004BE946    je         004BE97F
 004BE948    mov        eax,dword ptr [ebp-4]
 004BE94B    dec        ebx
 004BE94C    test       eax,eax
>004BE94E    je         004BE955
 004BE950    cmp        ebx,dword ptr [eax-4]
>004BE953    jb         004BE95A
 004BE955    call       @BoundErr
 004BE95A    inc        ebx
 004BE95B    mov        al,byte ptr [eax+ebx-1]
 004BE95F    mov        edx,dword ptr [ebp-8]
 004BE962    dec        edi
 004BE963    test       edx,edx
>004BE965    je         004BE96C
 004BE967    cmp        edi,dword ptr [edx-4]
>004BE96A    jb         004BE971
 004BE96C    call       @BoundErr
 004BE971    inc        edi
 004BE972    cmp        al,byte ptr [edx+edi-1]
>004BE976    je         004BE97F
 004BE978    mov        dword ptr [ebp-0C],5
 004BE97F    add        ebx,1
>004BE982    jno        004BE989
 004BE984    call       @IntOver
 004BE989    add        edi,1
>004BE98C    jno        004BE993
 004BE98E    call       @IntOver
 004BE993    cmp        dword ptr [ebp-0C],0
>004BE997    jne        004BE9A1
 004BE999    cmp        esi,ebx
<004BE99B    jge        004BE614
 004BE9A1    cmp        dword ptr [ebp-0C],0
>004BE9A5    jne        004BE9BC
 004BE9A7    cmp        edi,dword ptr [ebp-18]
>004BE9AA    jg         004BE9B5
 004BE9AC    mov        dword ptr [ebp-0C],2
>004BE9B3    jmp        004BE9BC
 004BE9B5    mov        dword ptr [ebp-0C],1
 004BE9BC    xor        eax,eax
 004BE9BE    pop        edx
 004BE9BF    pop        ecx
 004BE9C0    pop        ecx
 004BE9C1    mov        dword ptr fs:[eax],edx
 004BE9C4    push       4BE9EB
 004BE9C9    lea        eax,[ebp-2C]
 004BE9CC    mov        edx,4
 004BE9D1    call       @LStrArrayClr
 004BE9D6    lea        eax,[ebp-8]
 004BE9D9    mov        edx,2
 004BE9DE    call       @LStrArrayClr
 004BE9E3    ret
<004BE9E4    jmp        @HandleFinally
<004BE9E9    jmp        004BE9C9
 004BE9EB    mov        eax,dword ptr [ebp-0C]
 004BE9EE    pop        edi
 004BE9EF    pop        esi
 004BE9F0    pop        ebx
 004BE9F1    mov        esp,ebp
 004BE9F3    pop        ebp
 004BE9F4    ret
*}
//end;

//004BE9F8
//function sub_004BE9F8(?:AnsiString; ?:?):?;
//begin
{*
 004BE9F8    push       ebp
 004BE9F9    mov        ebp,esp
 004BE9FB    add        esp,0FFFFFFF0
 004BE9FE    push       ebx
 004BE9FF    push       esi
 004BEA00    push       edi
 004BEA01    mov        dword ptr [ebp-8],edx
 004BEA04    mov        dword ptr [ebp-4],eax
 004BEA07    mov        eax,dword ptr [ebp-4]
 004BEA0A    call       @LStrAddRef
 004BEA0F    mov        eax,dword ptr [ebp-8]
 004BEA12    call       @LStrAddRef
 004BEA17    xor        eax,eax
 004BEA19    push       ebp
 004BEA1A    push       4BEBE0
 004BEA1F    push       dword ptr fs:[eax]
 004BEA22    mov        dword ptr fs:[eax],esp
 004BEA25    xor        eax,eax
 004BEA27    mov        dword ptr [ebp-0C],eax
 004BEA2A    mov        ebx,1
 004BEA2F    mov        esi,1
 004BEA34    mov        eax,dword ptr [ebp-4]
 004BEA37    call       @LStrLen
 004BEA3C    mov        dword ptr [ebp-10],eax
 004BEA3F    mov        eax,dword ptr [ebp-8]
 004BEA42    call       @LStrLen
 004BEA47    mov        edi,eax
 004BEA49    cmp        edi,1
>004BEA4C    jne        004BEA5A
 004BEA4E    mov        dword ptr [ebp-0C],1
>004BEA55    jmp        004BEBC5
 004BEA5A    cmp        dword ptr [ebp-10],0
>004BEA5E    je         004BEA64
 004BEA60    test       edi,edi
>004BEA62    jne        004BEA9E
 004BEA64    mov        dword ptr [ebp-0C],3
>004BEA6B    jmp        004BEBC5
 004BEA70    mov        eax,dword ptr [ebp-4]
 004BEA73    dec        ebx
 004BEA74    test       eax,eax
>004BEA76    je         004BEA7D
 004BEA78    cmp        ebx,dword ptr [eax-4]
>004BEA7B    jb         004BEA82
 004BEA7D    call       @BoundErr
 004BEA82    inc        ebx
 004BEA83    cmp        byte ptr [eax+ebx-1],3F
>004BEA88    jne        004BEA94
 004BEA8A    add        esi,1
>004BEA8D    jno        004BEA94
 004BEA8F    call       @IntOver
 004BEA94    add        ebx,1
>004BEA97    jno        004BEA9E
 004BEA99    call       @IntOver
 004BEA9E    cmp        edi,esi
>004BEAA0    jl         004BEADB
 004BEAA2    cmp        ebx,dword ptr [ebp-10]
>004BEAA5    jge        004BEADB
 004BEAA7    mov        eax,dword ptr [ebp-4]
 004BEAAA    dec        ebx
 004BEAAB    test       eax,eax
>004BEAAD    je         004BEAB4
 004BEAAF    cmp        ebx,dword ptr [eax-4]
>004BEAB2    jb         004BEAB9
 004BEAB4    call       @BoundErr
 004BEAB9    inc        ebx
 004BEABA    cmp        byte ptr [eax+ebx-1],3F
<004BEABF    je         004BEA70
 004BEAC1    mov        eax,dword ptr [ebp-4]
 004BEAC4    dec        ebx
 004BEAC5    test       eax,eax
>004BEAC7    je         004BEACE
 004BEAC9    cmp        ebx,dword ptr [eax-4]
>004BEACC    jb         004BEAD3
 004BEACE    call       @BoundErr
 004BEAD3    inc        ebx
 004BEAD4    cmp        byte ptr [eax+ebx-1],2A
<004BEAD9    je         004BEA70
 004BEADB    cmp        edi,esi
>004BEADD    jg         004BEAEB
 004BEADF    mov        dword ptr [ebp-0C],3
>004BEAE6    jmp        004BEBC5
 004BEAEB    cmp        ebx,dword ptr [ebp-10]
>004BEAEE    jl         004BEAFC
 004BEAF0    mov        dword ptr [ebp-0C],1
>004BEAF7    jmp        004BEBC5
 004BEAFC    mov        eax,dword ptr [ebp-4]
 004BEAFF    dec        ebx
 004BEB00    test       eax,eax
>004BEB02    je         004BEB09
 004BEB04    cmp        ebx,dword ptr [eax-4]
>004BEB07    jb         004BEB0E
 004BEB09    call       @BoundErr
 004BEB0E    inc        ebx
 004BEB0F    mov        al,byte ptr [eax+ebx-1]
 004BEB13    mov        edx,dword ptr [ebp-8]
 004BEB16    dec        esi
 004BEB17    test       edx,edx
>004BEB19    je         004BEB20
 004BEB1B    cmp        esi,dword ptr [edx-4]
>004BEB1E    jb         004BEB25
 004BEB20    call       @BoundErr
 004BEB25    inc        esi
 004BEB26    cmp        al,byte ptr [edx+esi-1]
>004BEB2A    je         004BEB46
 004BEB2C    mov        eax,dword ptr [ebp-4]
 004BEB2F    dec        ebx
 004BEB30    test       eax,eax
>004BEB32    je         004BEB39
 004BEB34    cmp        ebx,dword ptr [eax-4]
>004BEB37    jb         004BEB3E
 004BEB39    call       @BoundErr
 004BEB3E    inc        ebx
 004BEB3F    cmp        byte ptr [eax+ebx-1],5B
>004BEB44    jne        004BEB9F
 004BEB46    lea        eax,[ebp-4]
 004BEB49    push       eax
 004BEB4A    mov        ecx,dword ptr [ebp-10]
 004BEB4D    mov        edx,ebx
 004BEB4F    mov        eax,dword ptr [ebp-4]
 004BEB52    call       @LStrCopy
 004BEB57    lea        eax,[ebp-8]
 004BEB5A    push       eax
 004BEB5B    mov        ecx,edi
 004BEB5D    mov        edx,esi
 004BEB5F    mov        eax,dword ptr [ebp-8]
 004BEB62    call       @LStrCopy
 004BEB67    mov        eax,dword ptr [ebp-4]
 004BEB6A    call       @LStrLen
 004BEB6F    mov        dword ptr [ebp-10],eax
 004BEB72    mov        eax,dword ptr [ebp-8]
 004BEB75    call       @LStrLen
 004BEB7A    mov        edi,eax
 004BEB7C    mov        ebx,1
 004BEB81    mov        esi,1
 004BEB86    mov        edx,dword ptr [ebp-8]
 004BEB89    mov        eax,dword ptr [ebp-4]
 004BEB8C    call       004BE584
 004BEB91    mov        dword ptr [ebp-0C],eax
 004BEB94    cmp        dword ptr [ebp-0C],1
>004BEB98    je         004BEB9F
 004BEB9A    xor        eax,eax
 004BEB9C    mov        dword ptr [ebp-0C],eax
 004BEB9F    add        esi,1
>004BEBA2    jno        004BEBA9
 004BEBA4    call       @IntOver
 004BEBA9    cmp        edi,esi
>004BEBAB    jl         004BEBB2
 004BEBAD    cmp        ebx,dword ptr [ebp-10]
>004BEBB0    jle        004BEBBB
 004BEBB2    mov        dword ptr [ebp-0C],3
>004BEBB9    jmp        004BEBC5
 004BEBBB    cmp        dword ptr [ebp-0C],0
<004BEBBF    je         004BEAFC
 004BEBC5    xor        eax,eax
 004BEBC7    pop        edx
 004BEBC8    pop        ecx
 004BEBC9    pop        ecx
 004BEBCA    mov        dword ptr fs:[eax],edx
 004BEBCD    push       4BEBE7
 004BEBD2    lea        eax,[ebp-8]
 004BEBD5    mov        edx,2
 004BEBDA    call       @LStrArrayClr
 004BEBDF    ret
<004BEBE0    jmp        @HandleFinally
<004BEBE5    jmp        004BEBD2
 004BEBE7    mov        eax,dword ptr [ebp-0C]
 004BEBEA    pop        edi
 004BEBEB    pop        esi
 004BEBEC    pop        ebx
 004BEBED    mov        esp,ebp
 004BEBEF    pop        ebp
 004BEBF0    ret
*}
//end;

end.