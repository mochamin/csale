{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit224;

interface

uses
  Classes, Windows, Graphics;


implementation

//004E1D64
//function sub_004E1D64(?:?):?;
//begin
{*
 004E1D64    movsx      eax,ax
 004E1D67    cmp        eax,48
>004E1D6A    jg         004E1E8A
>004E1D70    je         004E1F36
 004E1D76    cmp        eax,40
>004E1D79    ja         004E1F3C
 004E1D7F    jmp        dword ptr [eax*4+4E1D86]
 004E1D7F    dd         4E1F39
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F09
 004E1D7F    dd         4E1F0C
 004E1D7F    dd         4E1F12
 004E1D7F    dd         4E1F15
 004E1D7F    dd         4E1F1E
 004E1D7F    dd         4E1F27
 004E1D7F    dd         4E1EFD
 004E1D7F    dd         4E1F39
 004E1D7F    dd         4E1F39
 004E1D7F    dd         4E1F03
 004E1D7F    dd         4E1F39
 004E1D7F    dd         4E1F39
 004E1D7F    dd         4E1F18
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F06
 004E1D7F    dd         4E1F06
 004E1D7F    dd         4E1F09
 004E1D7F    dd         4E1F0C
 004E1D7F    dd         4E1F0F
 004E1D7F    dd         4E1F0F
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F3C
 004E1D7F    dd         4E1F2A
 004E1E8A    cmp        eax,88
>004E1E8F    jg         004E1ECA
>004E1E91    je         004E1F39
 004E1E97    add        eax,0FFFFFF80
 004E1E9A    cmp        eax,7
>004E1E9D    ja         004E1F3C
 004E1EA3    jmp        dword ptr [eax*4+4E1EAA]
 004E1EA3    dd         4E1F33
 004E1EA3    dd         4E1EFD
 004E1EA3    dd         4E1F00
 004E1EA3    dd         4E1F1B
 004E1EA3    dd         4E1F39
 004E1EA3    dd         4E1F21
 004E1EA3    dd         4E1F24
 004E1EA3    dd         4E1F2A
 004E1ECA    cmp        eax,0CA
>004E1ECF    jg         004E1EE7
>004E1ED1    je         004E1F00
 004E1ED3    sub        eax,8A
>004E1ED8    je         004E1F39
 004E1EDA    dec        eax
>004E1EDB    je         004E1F1B
 004E1EDD    sub        eax,3D
>004E1EE0    je         004E1EFD
 004E1EE2    dec        eax
>004E1EE3    je         004E1F2D
>004E1EE5    jmp        004E1F3C
 004E1EE7    sub        eax,0CB
>004E1EEC    je         004E1F30
 004E1EEE    dec        eax
 004E1EEF    sub        eax,2
>004E1EF2    jb         004E1F33
 004E1EF4    sub        eax,1F32
>004E1EF9    je         004E1F39
>004E1EFB    jmp        004E1F3C
 004E1EFD    mov        al,9
 004E1EFF    ret
 004E1F00    mov        al,0A
 004E1F02    ret
 004E1F03    mov        al,1
 004E1F05    ret
 004E1F06    mov        al,3
 004E1F08    ret
 004E1F09    mov        al,3
 004E1F0B    ret
 004E1F0C    mov        al,4
 004E1F0E    ret
 004E1F0F    mov        al,5
 004E1F11    ret
 004E1F12    mov        al,7
 004E1F14    ret
 004E1F15    mov        al,7
 004E1F17    ret
 004E1F18    mov        al,8
 004E1F1A    ret
 004E1F1B    mov        al,8
 004E1F1D    ret
 004E1F1E    mov        al,8
 004E1F20    ret
 004E1F21    mov        al,0C
 004E1F23    ret
 004E1F24    mov        al,0D
 004E1F26    ret
 004E1F27    mov        al,0C
 004E1F29    ret
 004E1F2A    mov        al,0E
 004E1F2C    ret
 004E1F2D    mov        al,0F
 004E1F2F    ret
 004E1F30    mov        al,10
 004E1F32    ret
 004E1F33    mov        al,11
 004E1F35    ret
 004E1F36    mov        al,9
 004E1F38    ret
 004E1F39    mov        al,9
 004E1F3B    ret
 004E1F3C    mov        al,9
 004E1F3E    ret
*}
//end;

//004E1F40
//function sub_004E1F40(?:?):?;
//begin
{*
 004E1F40    and        eax,7F
 004E1F43    cmp        eax,11
>004E1F46    ja         004E2001
 004E1F4C    jmp        dword ptr [eax*4+4E1F53]
 004E1F4C    dd         4E2001
 004E1F4C    dd         4E1FA7
 004E1F4C    dd         4E1FAD
 004E1F4C    dd         4E1FB3
 004E1F4C    dd         4E1FB9
 004E1F4C    dd         4E1FBF
 004E1F4C    dd         4E1FCB
 004E1F4C    dd         4E1FD1
 004E1F4C    dd         4E1FC5
 004E1F4C    dd         4E1F9B
 004E1F4C    dd         4E1FA1
 004E1F4C    dd         4E1FE9
 004E1F4C    dd         4E1FD7
 004E1F4C    dd         4E1FDD
 004E1F4C    dd         4E1FE3
 004E1F4C    dd         4E1FEF
 004E1F4C    dd         4E1FF5
 004E1F4C    dd         4E1FFB
 004E1F9B    mov        eax,0C8
 004E1FA0    ret
 004E1FA1    mov        eax,0CA
 004E1FA6    ret
 004E1FA7    mov        eax,0B
 004E1FAC    ret
 004E1FAD    mov        eax,10
 004E1FB2    ret
 004E1FB3    mov        eax,2
 004E1FB8    ret
 004E1FB9    mov        eax,3
 004E1FBE    ret
 004E1FBF    mov        eax,14
 004E1FC4    ret
 004E1FC5    mov        eax,0E
 004E1FCA    ret
 004E1FCB    mov        eax,4
 004E1FD0    ret
 004E1FD1    mov        eax,5
 004E1FD6    ret
 004E1FD7    mov        eax,85
 004E1FDC    ret
 004E1FDD    mov        eax,86
 004E1FE2    ret
 004E1FE3    mov        eax,87
 004E1FE8    ret
 004E1FE9    mov        eax,0CC
 004E1FEE    ret
 004E1FEF    mov        eax,0C9
 004E1FF4    ret
 004E1FF5    mov        eax,0CB
 004E1FFA    ret
 004E1FFB    mov        eax,0CD
 004E2000    ret
 004E2001    xor        eax,eax
 004E2003    ret
*}
//end;

//004E2004
//function sub_004E2004(?:TVarType):?;
//begin
{*
 004E2004    mov        edx,eax
 004E2006    and        dx,0FFF
 004E200B    movzx      edx,dx
 004E200E    cmp        edx,0B
>004E2011    jg         004E2055
>004E2013    je         004E20F8
 004E2019    cmp        edx,0A
>004E201C    ja         004E2143
 004E2022    jmp        dword ptr [edx*4+4E2029]
 004E2022    dd         4E20B9
 004E2022    dd         4E20BC
 004E2022    dd         4E20C2
 004E2022    dd         4E20C8
 004E2022    dd         4E20CE
 004E2022    dd         4E20D4
 004E2022    dd         4E20DA
 004E2022    dd         4E20E0
 004E2022    dd         4E20E6
 004E2022    dd         4E20EC
 004E2022    dd         4E20F2
 004E2055    cmp        edx,13
>004E2058    jg         004E208F
>004E205A    je         004E2128
 004E2060    add        edx,0FFFFFFF4
 004E2063    cmp        edx,6
>004E2066    ja         004E2143
 004E206C    jmp        dword ptr [edx*4+4E2073]
 004E206C    dd         4E20FE
 004E206C    dd         4E2104
 004E206C    dd         4E2143
 004E206C    dd         4E2143
 004E206C    dd         4E210A
 004E206C    dd         4E2110
 004E206C    dd         4E2122
 004E208F    sub        edx,14
>004E2092    je         004E212E
 004E2098    sub        edx,34
>004E209B    je         004E2134
 004E20A1    sub        edx,0B8
>004E20A7    je         004E213A
 004E20AD    dec        edx
>004E20AE    je         004E2140
>004E20B4    jmp        004E2143
 004E20B9    xor        eax,eax
 004E20BB    ret
 004E20BC    mov        eax,0C8
 004E20C1    ret
 004E20C2    mov        eax,2
 004E20C7    ret
 004E20C8    mov        eax,3
 004E20CD    ret
 004E20CE    mov        eax,4
 004E20D3    ret
 004E20D4    mov        eax,5
 004E20D9    ret
 004E20DA    mov        eax,6
 004E20DF    ret
 004E20E0    mov        eax,7
 004E20E5    ret
 004E20E6    mov        eax,0CA
 004E20EB    ret
 004E20EC    mov        eax,9
 004E20F1    ret
 004E20F2    mov        eax,0A
 004E20F7    ret
 004E20F8    mov        eax,0B
 004E20FD    ret
 004E20FE    mov        eax,0C
 004E2103    ret
 004E2104    mov        eax,0D
 004E2109    ret
 004E210A    mov        eax,10
 004E210F    ret
 004E2110    test       ah,20
>004E2113    je         004E211C
 004E2115    mov        eax,0CD
>004E211A    jmp        004E2145
 004E211C    mov        eax,11
 004E2121    ret
 004E2122    mov        eax,12
 004E2127    ret
 004E2128    mov        eax,13
 004E212D    ret
 004E212E    mov        eax,14
 004E2133    ret
 004E2134    mov        eax,82
 004E2139    ret
 004E213A    mov        eax,0C8
 004E213F    ret
 004E2140    xor        eax,eax
 004E2142    ret
 004E2143    xor        eax,eax
 004E2145    ret
*}
//end;

//004E2148
//function sub_004E2148(?:?):?;
//begin
{*
 004E2148    push       ebp
 004E2149    mov        ebp,esp
 004E214B    add        esp,0FFFFFFF0
 004E214E    push       ebx
 004E214F    push       esi
 004E2150    push       edi
 004E2151    mov        esi,eax
 004E2153    lea        edi,[ebp-10]
 004E2156    movs       dword ptr [edi],dword ptr [esi]
 004E2157    movs       dword ptr [edi],dword ptr [esi]
 004E2158    movs       dword ptr [edi],dword ptr [esi]
 004E2159    movs       dword ptr [edi],dword ptr [esi]
 004E215A    lea        esi,[ebp-10]
 004E215D    or         ebx,0FFFFFFFF
 004E2160    mov        eax,[0061C0CC]
 004E2165    push       eax
 004E2166    push       esi
 004E2167    call       ole32.IsEqualGUID
 004E216C    test       al,al
>004E216E    je         004E2172
 004E2170    xor        ebx,ebx
 004E2172    mov        eax,[0061C1A4]
 004E2177    push       eax
 004E2178    push       esi
 004E2179    call       ole32.IsEqualGUID
 004E217E    test       al,al
>004E2180    je         004E2187
 004E2182    mov        ebx,1
 004E2187    mov        eax,[0061C12C]
 004E218C    push       eax
 004E218D    push       esi
 004E218E    call       ole32.IsEqualGUID
 004E2193    test       al,al
>004E2195    je         004E219C
 004E2197    mov        ebx,2
 004E219C    mov        eax,[0061B030]
 004E21A1    push       eax
 004E21A2    push       esi
 004E21A3    call       ole32.IsEqualGUID
 004E21A8    test       al,al
>004E21AA    je         004E21B1
 004E21AC    mov        ebx,3
 004E21B1    mov        eax,[0061C508]
 004E21B6    push       eax
 004E21B7    push       esi
 004E21B8    call       ole32.IsEqualGUID
 004E21BD    test       al,al
>004E21BF    je         004E21C6
 004E21C1    mov        ebx,4
 004E21C6    mov        eax,[0061B22C]
 004E21CB    push       eax
 004E21CC    push       esi
 004E21CD    call       ole32.IsEqualGUID
 004E21D2    test       al,al
>004E21D4    je         004E21DB
 004E21D6    mov        ebx,5
 004E21DB    mov        eax,[0061BCF4]
 004E21E0    push       eax
 004E21E1    push       esi
 004E21E2    call       ole32.IsEqualGUID
 004E21E7    test       al,al
>004E21E9    je         004E21F0
 004E21EB    mov        ebx,6
 004E21F0    mov        eax,[0061B444]
 004E21F5    push       eax
 004E21F6    push       esi
 004E21F7    call       ole32.IsEqualGUID
 004E21FC    test       al,al
>004E21FE    je         004E2205
 004E2200    mov        ebx,7
 004E2205    mov        eax,[0061AEB4]
 004E220A    push       eax
 004E220B    push       esi
 004E220C    call       ole32.IsEqualGUID
 004E2211    test       al,al
>004E2213    je         004E221A
 004E2215    mov        ebx,8
 004E221A    mov        eax,[0061C4F8]
 004E221F    push       eax
 004E2220    push       esi
 004E2221    call       ole32.IsEqualGUID
 004E2226    test       al,al
>004E2228    je         004E222F
 004E222A    mov        ebx,9
 004E222F    mov        eax,[0061C080]
 004E2234    push       eax
 004E2235    push       esi
 004E2236    call       ole32.IsEqualGUID
 004E223B    test       al,al
>004E223D    je         004E2244
 004E223F    mov        ebx,0A
 004E2244    mov        eax,[0061C07C]
 004E2249    push       eax
 004E224A    push       esi
 004E224B    call       ole32.IsEqualGUID
 004E2250    test       al,al
>004E2252    je         004E2259
 004E2254    mov        ebx,0B
 004E2259    mov        eax,[0061C538]
 004E225E    push       eax
 004E225F    push       esi
 004E2260    call       ole32.IsEqualGUID
 004E2265    test       al,al
>004E2267    je         004E226E
 004E2269    mov        ebx,0C
 004E226E    mov        eax,[0061B158]
 004E2273    push       eax
 004E2274    push       esi
 004E2275    call       ole32.IsEqualGUID
 004E227A    test       al,al
>004E227C    je         004E2283
 004E227E    mov        ebx,0D
 004E2283    mov        eax,[0061C088]
 004E2288    push       eax
 004E2289    push       esi
 004E228A    call       ole32.IsEqualGUID
 004E228F    test       al,al
>004E2291    je         004E2298
 004E2293    mov        ebx,0E
 004E2298    mov        eax,[0061B250]
 004E229D    push       eax
 004E229E    push       esi
 004E229F    call       ole32.IsEqualGUID
 004E22A4    test       al,al
>004E22A6    je         004E22AD
 004E22A8    mov        ebx,0F
 004E22AD    mov        eax,[0061C078]
 004E22B2    push       eax
 004E22B3    push       esi
 004E22B4    call       ole32.IsEqualGUID
 004E22B9    test       al,al
>004E22BB    je         004E22C2
 004E22BD    mov        ebx,10
 004E22C2    mov        eax,[0061B440]
 004E22C7    push       eax
 004E22C8    push       esi
 004E22C9    call       ole32.IsEqualGUID
 004E22CE    test       al,al
>004E22D0    je         004E22D7
 004E22D2    mov        ebx,11
 004E22D7    mov        eax,[0061B244]
 004E22DC    push       eax
 004E22DD    push       esi
 004E22DE    call       ole32.IsEqualGUID
 004E22E3    test       al,al
>004E22E5    je         004E22EC
 004E22E7    mov        ebx,12
 004E22EC    mov        eax,[0061BB84]
 004E22F1    push       eax
 004E22F2    push       esi
 004E22F3    call       ole32.IsEqualGUID
 004E22F8    test       al,al
>004E22FA    je         004E2301
 004E22FC    mov        ebx,13
 004E2301    mov        eax,[0061BC58]
 004E2306    push       eax
 004E2307    push       esi
 004E2308    call       ole32.IsEqualGUID
 004E230D    test       al,al
>004E230F    je         004E2316
 004E2311    mov        ebx,14
 004E2316    mov        eax,[0061B51C]
 004E231B    push       eax
 004E231C    push       esi
 004E231D    call       ole32.IsEqualGUID
 004E2322    test       al,al
>004E2324    je         004E232B
 004E2326    mov        ebx,15
 004E232B    mov        eax,[0061BAB0]
 004E2330    push       eax
 004E2331    push       esi
 004E2332    call       ole32.IsEqualGUID
 004E2337    test       al,al
>004E2339    je         004E2340
 004E233B    mov        ebx,16
 004E2340    mov        eax,[0061B2AC]
 004E2345    push       eax
 004E2346    push       esi
 004E2347    call       ole32.IsEqualGUID
 004E234C    test       al,al
>004E234E    je         004E2355
 004E2350    mov        ebx,17
 004E2355    mov        eax,[0061C028]
 004E235A    push       eax
 004E235B    push       esi
 004E235C    call       ole32.IsEqualGUID
 004E2361    test       al,al
>004E2363    je         004E236A
 004E2365    mov        ebx,18
 004E236A    mov        eax,[0061B7C8]
 004E236F    push       eax
 004E2370    push       esi
 004E2371    call       ole32.IsEqualGUID
 004E2376    test       al,al
>004E2378    je         004E237F
 004E237A    mov        ebx,19
 004E237F    mov        eax,[0061C2B4]
 004E2384    push       eax
 004E2385    push       esi
 004E2386    call       ole32.IsEqualGUID
 004E238B    test       al,al
>004E238D    je         004E2394
 004E238F    mov        ebx,1A
 004E2394    mov        eax,[0061C104]
 004E2399    push       eax
 004E239A    push       esi
 004E239B    call       ole32.IsEqualGUID
 004E23A0    test       al,al
>004E23A2    je         004E23A9
 004E23A4    mov        ebx,1B
 004E23A9    mov        eax,[0061BFBC]
 004E23AE    push       eax
 004E23AF    push       esi
 004E23B0    call       ole32.IsEqualGUID
 004E23B5    test       al,al
>004E23B7    je         004E23BE
 004E23B9    mov        ebx,1C
 004E23BE    mov        eax,[0061C248]
 004E23C3    push       eax
 004E23C4    push       esi
 004E23C5    call       ole32.IsEqualGUID
 004E23CA    test       al,al
>004E23CC    je         004E23D3
 004E23CE    mov        ebx,1D
 004E23D3    mov        eax,[0061B9F4]
 004E23D8    push       eax
 004E23D9    push       esi
 004E23DA    call       ole32.IsEqualGUID
 004E23DF    test       al,al
>004E23E1    je         004E23E8
 004E23E3    mov        ebx,20
 004E23E8    mov        eax,[0061AF28]
 004E23ED    push       eax
 004E23EE    push       esi
 004E23EF    call       ole32.IsEqualGUID
 004E23F4    test       al,al
>004E23F6    je         004E23FD
 004E23F8    mov        ebx,21
 004E23FD    mov        eax,[0061B4D0]
 004E2402    push       eax
 004E2403    push       esi
 004E2404    call       ole32.IsEqualGUID
 004E2409    test       al,al
>004E240B    je         004E2412
 004E240D    mov        ebx,22
 004E2412    mov        eax,[0061B410]
 004E2417    push       eax
 004E2418    push       esi
 004E2419    call       ole32.IsEqualGUID
 004E241E    test       al,al
>004E2420    je         004E2427
 004E2422    mov        ebx,23
 004E2427    mov        eax,[0061AFA0]
 004E242C    push       eax
 004E242D    push       esi
 004E242E    call       ole32.IsEqualGUID
 004E2433    test       al,al
>004E2435    je         004E243C
 004E2437    mov        ebx,24
 004E243C    mov        eax,[0061BD0C]
 004E2441    push       eax
 004E2442    push       esi
 004E2443    call       ole32.IsEqualGUID
 004E2448    test       al,al
>004E244A    je         004E2451
 004E244C    mov        ebx,25
 004E2451    mov        eax,[0061B620]
 004E2456    push       eax
 004E2457    push       esi
 004E2458    call       ole32.IsEqualGUID
 004E245D    test       al,al
>004E245F    je         004E2466
 004E2461    mov        ebx,26
 004E2466    mov        eax,[0061AE80]
 004E246B    push       eax
 004E246C    push       esi
 004E246D    call       ole32.IsEqualGUID
 004E2472    test       al,al
>004E2474    je         004E247B
 004E2476    mov        ebx,27
 004E247B    mov        eax,ebx
 004E247D    pop        edi
 004E247E    pop        esi
 004E247F    pop        ebx
 004E2480    mov        esp,ebp
 004E2482    pop        ebp
 004E2483    ret
*}
//end;

Initialization
//004E24C8
{*
 004E24C8    push       ebp
 004E24C9    mov        ebp,esp
 004E24CB    xor        eax,eax
 004E24CD    push       ebp
 004E24CE    push       4E2507
 004E24D3    push       dword ptr fs:[eax]
 004E24D6    mov        dword ptr fs:[eax],esp
 004E24D9    sub        dword ptr ds:[61DDA0],1
>004E24E0    jae        004E24F9
 004E24E2    mov        eax,61DD9C; gvar_0061DD9C:IInterface
 004E24E7    call       @IntfClear
 004E24EC    push       eax
 004E24ED    push       1
 004E24EF    call       ole32.CoGetMalloc
 004E24F4    call       00494244
 004E24F9    xor        eax,eax
 004E24FB    pop        edx
 004E24FC    pop        ecx
 004E24FD    pop        ecx
 004E24FE    mov        dword ptr fs:[eax],edx
 004E2501    push       4E250E
 004E2506    ret
<004E2507    jmp        @HandleFinally
<004E250C    jmp        004E2506
 004E250E    pop        ebp
 004E250F    ret
*}
Finalization
//004E2484
{*
 004E2484    push       ebp
 004E2485    mov        ebp,esp
 004E2487    xor        eax,eax
 004E2489    push       ebp
 004E248A    push       4E24BF
 004E248F    push       dword ptr fs:[eax]
 004E2492    mov        dword ptr fs:[eax],esp
 004E2495    inc        dword ptr ds:[61DDA0]
>004E249B    jne        004E24B1
 004E249D    mov        eax,61DD9C; gvar_0061DD9C:IInterface
 004E24A2    call       @IntfClear
 004E24A7    mov        eax,61DD9C; gvar_0061DD9C:IInterface
 004E24AC    call       @IntfClear
 004E24B1    xor        eax,eax
 004E24B3    pop        edx
 004E24B4    pop        ecx
 004E24B5    pop        ecx
 004E24B6    mov        dword ptr fs:[eax],edx
 004E24B9    push       4E24C6
 004E24BE    ret
<004E24BF    jmp        @HandleFinally
<004E24C4    jmp        004E24BE
 004E24C6    pop        ebp
 004E24C7    ret
*}
end.