{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit232;

interface

uses
  Classes, Windows, Graphics, ZTokenizer;

type
  TZExpressionNumberState = class(TZNumberState)
  public
    //procedure sub_00562170(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZExpressionQuoteState = class(TZQuoteState)
  public
    //procedure sub_0056233C(?:?; ?:?; ?:?); virtual;
    //procedure sub_0056240C(?:?; ?:?; ?:?); virtual;
    //procedure sub_005624A0(?:?; ?:?; ?:?); virtual;
  end;
  TZExpressionCommentState = class(TZCppCommentState)
  public
    //procedure sub_00562568(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZExpressionSymbolState = class(TZSymbolState)
    //constructor Create(?:TZExpressionSymbolState; _Dv__:Boolean);
  end;
  TZExpressionWordState = class(TZWordState)
  public
    //procedure sub_00562768(?:?; ?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZExpressionWordState; _Dv__:Boolean);
  end;
  TZExpressionTokenizer = class(TZTokenizer)
    //constructor Create(?:TZExpressionTokenizer; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//005620D8
//procedure sub_005620D8(?:AnsiString; ?:?);
//begin
{*
 005620D8    push       ebp
 005620D9    mov        ebp,esp
 005620DB    push       0
 005620DD    push       ebx
 005620DE    push       esi
 005620DF    push       edi
 005620E0    mov        ebx,eax
 005620E2    mov        esi,dword ptr [ebp+8]
 005620E5    dec        esi
 005620E6    xor        eax,eax
 005620E8    push       ebp
 005620E9    push       562161
 005620EE    push       dword ptr fs:[eax]
 005620F1    mov        dword ptr fs:[eax],esp
 005620F4    mov        eax,ebx
 005620F6    call       @LStrClr
 005620FB    mov        byte ptr [esi],0
>005620FE    jmp        00562135
 00562100    mov        al,byte ptr [esi]
 00562102    add        al,0D0
 00562104    sub        al,0A
>00562106    jae        00562121
 00562108    lea        eax,[ebp-4]
 0056210B    mov        dl,byte ptr [esi]
 0056210D    call       @LStrFromChar
 00562112    mov        edx,dword ptr [ebp-4]
 00562115    mov        eax,ebx
 00562117    call       @LStrCat
 0056211C    mov        byte ptr [esi],0
>0056211F    jmp        00562135
 00562121    mov        eax,dword ptr [ebp+8]
 00562124    mov        eax,dword ptr [eax-8]
 00562127    mov        cx,1
 0056212B    or         edx,0FFFFFFFF
 0056212E    mov        ebx,dword ptr [eax]
 00562130    call       dword ptr [ebx+14]
>00562133    jmp        0056214B
 00562135    mov        edx,esi
 00562137    mov        eax,dword ptr [ebp+8]
 0056213A    mov        eax,dword ptr [eax-8]
 0056213D    mov        ecx,1
 00562142    mov        edi,dword ptr [eax]
 00562144    call       dword ptr [edi+0C]
 00562147    test       eax,eax
<00562149    jg         00562100
 0056214B    xor        eax,eax
 0056214D    pop        edx
 0056214E    pop        ecx
 0056214F    pop        ecx
 00562150    mov        dword ptr fs:[eax],edx
 00562153    push       562168
 00562158    lea        eax,[ebp-4]
 0056215B    call       @LStrClr
 00562160    ret
<00562161    jmp        @HandleFinally
<00562166    jmp        00562158
 00562168    pop        edi
 00562169    pop        esi
 0056216A    pop        ebx
 0056216B    pop        ecx
 0056216C    pop        ebp
 0056216D    ret
*}
//end;

//00562170
//procedure sub_00562170(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00562170    push       ebp
 00562171    mov        ebp,esp
 00562173    push       ecx
 00562174    mov        ecx,4
 00562179    push       0
 0056217B    push       0
 0056217D    dec        ecx
<0056217E    jne        00562179
 00562180    xchg       ecx,dword ptr [ebp-4]
 00562183    push       ebx
 00562184    push       esi
 00562185    push       edi
 00562186    mov        byte ptr [ebp-9],cl
 00562189    mov        dword ptr [ebp-8],edx
 0056218C    mov        esi,dword ptr [ebp+8]
 0056218F    xor        eax,eax
 00562191    push       ebp
 00562192    push       562320
 00562197    push       dword ptr fs:[eax]
 0056219A    mov        dword ptr fs:[eax],esp
 0056219D    cmp        byte ptr [ebp-9],2E
 005621A1    sete       bl
 005621A4    mov        eax,esi
 005621A6    mov        dl,byte ptr [ebp-9]
 005621A9    call       @LStrFromChar
 005621AE    mov        byte ptr [esi+4],0
 005621B2    mov        byte ptr [ebp-1],0
 005621B6    test       bl,bl
>005621B8    jne        005621FE
 005621BA    push       ebp
 005621BB    lea        eax,[ebp-10]
 005621BE    call       005620D8
 005621C3    pop        ecx
 005621C4    mov        edx,dword ptr [ebp-10]
 005621C7    mov        eax,esi
 005621C9    call       @LStrCat
 005621CE    cmp        byte ptr [ebp-1],2E
 005621D2    sete       bl
 005621D5    test       bl,bl
>005621D7    je         005621FE
 005621D9    lea        edx,[ebp-0A]
 005621DC    mov        ecx,1
 005621E1    mov        eax,dword ptr [ebp-8]
 005621E4    mov        edi,dword ptr [eax]
 005621E6    call       dword ptr [edi+0C]
 005621E9    lea        eax,[ebp-14]
 005621EC    mov        dl,byte ptr [ebp-0A]
 005621EF    call       @LStrFromChar
 005621F4    mov        edx,dword ptr [ebp-14]
 005621F7    mov        eax,esi
 005621F9    call       @LStrCat
 005621FE    test       bl,bl
>00562200    je         00562216
 00562202    push       ebp
 00562203    lea        eax,[ebp-18]
 00562206    call       005620D8
 0056220B    pop        ecx
 0056220C    mov        edx,dword ptr [ebp-18]
 0056220F    mov        eax,esi
 00562211    call       @LStrCat
 00562216    mov        al,byte ptr [ebp-1]
 00562219    sub        al,45
>0056221B    je         00562225
 0056221D    sub        al,20
>0056221F    jne        005622C9
 00562225    lea        edx,[ebp-0A]
 00562228    mov        ecx,1
 0056222D    mov        eax,dword ptr [ebp-8]
 00562230    mov        ebx,dword ptr [eax]
 00562232    call       dword ptr [ebx+0C]
 00562235    lea        eax,[ebp-1C]
 00562238    mov        dl,byte ptr [ebp-0A]
 0056223B    call       @LStrFromChar
 00562240    mov        edx,dword ptr [ebp-1C]
 00562243    mov        eax,esi
 00562245    call       @LStrCat
 0056224A    mov        bl,1
 0056224C    lea        edx,[ebp-0A]
 0056224F    mov        ecx,1
 00562254    mov        eax,dword ptr [ebp-8]
 00562257    mov        edi,dword ptr [eax]
 00562259    call       dword ptr [edi+0C]
 0056225C    mov        al,byte ptr [ebp-0A]
 0056225F    sub        al,2B
>00562261    je         0056226D
 00562263    sub        al,2
>00562265    je         0056226D
 00562267    add        al,0FD
 00562269    sub        al,0A
>0056226B    jae        00562298
 0056226D    push       dword ptr [esi]
 0056226F    lea        eax,[ebp-20]
 00562272    mov        dl,byte ptr [ebp-0A]
 00562275    call       @LStrFromChar
 0056227A    push       dword ptr [ebp-20]
 0056227D    push       ebp
 0056227E    lea        eax,[ebp-24]
 00562281    call       005620D8
 00562286    pop        ecx
 00562287    push       dword ptr [ebp-24]
 0056228A    mov        eax,esi
 0056228C    mov        edx,3
 00562291    call       @LStrCatN
>00562296    jmp        005622C9
 00562298    push       esi
 00562299    mov        eax,dword ptr [esi]
 0056229B    call       @LStrLen
 005622A0    mov        ecx,eax
 005622A2    sub        ecx,1
>005622A5    jno        005622AC
 005622A7    call       @IntOver
 005622AC    mov        eax,dword ptr [esi]
 005622AE    mov        edx,1
 005622B3    call       @LStrCopy
 005622B8    mov        cx,1
 005622BC    mov        edx,0FFFFFFFE
 005622C1    mov        eax,dword ptr [ebp-8]
 005622C4    mov        edi,dword ptr [eax]
 005622C6    call       dword ptr [edi+14]
 005622C9    mov        eax,dword ptr [esi]
 005622CB    mov        edx,562338; '.'
 005622D0    call       @LStrCmp
>005622D5    jne        005622F7
 005622D7    mov        eax,dword ptr [ebp+0C]
 005622DA    mov        ebx,dword ptr [eax+41C]
 005622E0    test       ebx,ebx
>005622E2    je         00562305
 005622E4    mov        eax,dword ptr [ebp+0C]
 005622E7    push       eax
 005622E8    push       esi
 005622E9    mov        eax,ebx
 005622EB    mov        cl,byte ptr [ebp-9]
 005622EE    mov        edx,dword ptr [ebp-8]
 005622F1    mov        ebx,dword ptr [eax]
 005622F3    call       dword ptr [ebx]
>005622F5    jmp        00562305
 005622F7    test       bl,bl
>005622F9    je         00562301
 005622FB    mov        byte ptr [esi+4],2
>005622FF    jmp        00562305
 00562301    mov        byte ptr [esi+4],3
 00562305    xor        eax,eax
 00562307    pop        edx
 00562308    pop        ecx
 00562309    pop        ecx
 0056230A    mov        dword ptr fs:[eax],edx
 0056230D    push       562327
 00562312    lea        eax,[ebp-24]
 00562315    mov        edx,6
 0056231A    call       @LStrArrayClr
 0056231F    ret
<00562320    jmp        @HandleFinally
<00562325    jmp        00562312
 00562327    pop        edi
 00562328    pop        esi
 00562329    pop        ebx
 0056232A    mov        esp,ebp
 0056232C    pop        ebp
 0056232D    ret        8
*}
//end;

//0056233C
//procedure sub_0056233C(?:?; ?:?; ?:?);
//begin
{*
 0056233C    push       ebp
 0056233D    mov        ebp,esp
 0056233F    add        esp,0FFFFFFF4
 00562342    push       ebx
 00562343    push       esi
 00562344    push       edi
 00562345    xor        ebx,ebx
 00562347    mov        dword ptr [ebp-0C],ebx
 0056234A    mov        byte ptr [ebp-5],cl
 0056234D    mov        dword ptr [ebp-4],edx
 00562350    mov        esi,dword ptr [ebp+8]
 00562353    xor        eax,eax
 00562355    push       ebp
 00562356    push       5623F9
 0056235B    push       dword ptr fs:[eax]
 0056235E    mov        dword ptr fs:[eax],esp
 00562361    cmp        byte ptr [ebp-5],22
>00562365    jne        0056236D
 00562367    mov        byte ptr [esi+4],9
>0056236B    jmp        00562371
 0056236D    mov        byte ptr [esi+4],7
 00562371    mov        eax,esi
 00562373    mov        dl,byte ptr [ebp-5]
 00562376    call       @LStrFromChar
 0056237B    xor        ebx,ebx
>0056237D    jmp        005623CF
 0056237F    cmp        bl,byte ptr [ebp-5]
>00562382    jne        0056239D
 00562384    mov        al,byte ptr [ebp-6]
 00562387    cmp        al,byte ptr [ebp-5]
>0056238A    je         0056239D
 0056238C    mov        cx,1
 00562390    or         edx,0FFFFFFFF
 00562393    mov        eax,dword ptr [ebp-4]
 00562396    mov        ebx,dword ptr [eax]
 00562398    call       dword ptr [ebx+14]
>0056239B    jmp        005623E3
 0056239D    lea        eax,[ebp-0C]
 005623A0    mov        dl,byte ptr [ebp-6]
 005623A3    call       @LStrFromChar
 005623A8    mov        edx,dword ptr [ebp-0C]
 005623AB    mov        eax,esi
 005623AD    call       @LStrCat
 005623B2    cmp        bl,5C
>005623B5    jne        005623BB
 005623B7    xor        ebx,ebx
>005623B9    jmp        005623CF
 005623BB    cmp        bl,byte ptr [ebp-5]
>005623BE    jne        005623CC
 005623C0    mov        al,byte ptr [ebp-6]
 005623C3    cmp        al,byte ptr [ebp-5]
>005623C6    jne        005623CC
 005623C8    xor        ebx,ebx
>005623CA    jmp        005623CF
 005623CC    mov        bl,byte ptr [ebp-6]
 005623CF    lea        edx,[ebp-6]
 005623D2    mov        ecx,1
 005623D7    mov        eax,dword ptr [ebp-4]
 005623DA    mov        edi,dword ptr [eax]
 005623DC    call       dword ptr [edi+0C]
 005623DF    test       eax,eax
<005623E1    jg         0056237F
 005623E3    xor        eax,eax
 005623E5    pop        edx
 005623E6    pop        ecx
 005623E7    pop        ecx
 005623E8    mov        dword ptr fs:[eax],edx
 005623EB    push       562400
 005623F0    lea        eax,[ebp-0C]
 005623F3    call       @LStrClr
 005623F8    ret
<005623F9    jmp        @HandleFinally
<005623FE    jmp        005623F0
 00562400    pop        edi
 00562401    pop        esi
 00562402    pop        ebx
 00562403    mov        esp,ebp
 00562405    pop        ebp
 00562406    ret        8
*}
//end;

//0056240C
//procedure sub_0056240C(?:?; ?:?; ?:?);
//begin
{*
 0056240C    push       ebp
 0056240D    mov        ebp,esp
 0056240F    push       0
 00562411    push       0
 00562413    push       0
 00562415    push       ebx
 00562416    push       esi
 00562417    push       edi
 00562418    mov        ebx,ecx
 0056241A    mov        esi,edx
 0056241C    mov        edi,dword ptr [ebp+8]
 0056241F    xor        eax,eax
 00562421    push       ebp
 00562422    push       562490
 00562427    push       dword ptr fs:[eax]
 0056242A    mov        dword ptr fs:[eax],esp
 0056242D    mov        eax,ebx
 0056242F    sub        al,22
>00562431    je         00562437
 00562433    sub        al,5
>00562435    jne        0056246C
 00562437    lea        eax,[ebp-4]
 0056243A    mov        edx,ebx
 0056243C    call       @LStrFromChar
 00562441    push       dword ptr [ebp-4]
 00562444    lea        edx,[ebp-8]
 00562447    mov        eax,esi
 00562449    call       004BFF38
 0056244E    push       dword ptr [ebp-8]
 00562451    lea        eax,[ebp-0C]
 00562454    mov        edx,ebx
 00562456    call       @LStrFromChar
 0056245B    push       dword ptr [ebp-0C]
 0056245E    mov        eax,edi
 00562460    mov        edx,3
 00562465    call       @LStrCatN
>0056246A    jmp        00562475
 0056246C    mov        eax,edi
 0056246E    mov        edx,esi
 00562470    call       @LStrAsg
 00562475    xor        eax,eax
 00562477    pop        edx
 00562478    pop        ecx
 00562479    pop        ecx
 0056247A    mov        dword ptr fs:[eax],edx
 0056247D    push       562497
 00562482    lea        eax,[ebp-0C]
 00562485    mov        edx,3
 0056248A    call       @LStrArrayClr
 0056248F    ret
<00562490    jmp        @HandleFinally
<00562495    jmp        00562482
 00562497    pop        edi
 00562498    pop        esi
 00562499    pop        ebx
 0056249A    mov        esp,ebp
 0056249C    pop        ebp
 0056249D    ret        4
*}
//end;

//005624A0
//procedure sub_005624A0(?:?; ?:?; ?:?);
//begin
{*
 005624A0    push       ebp
 005624A1    mov        ebp,esp
 005624A3    push       0
 005624A5    push       ebx
 005624A6    push       esi
 005624A7    push       edi
 005624A8    mov        ebx,ecx
 005624AA    mov        esi,edx
 005624AC    mov        edi,dword ptr [ebp+8]
 005624AF    xor        eax,eax
 005624B1    push       ebp
 005624B2    push       562559
 005624B7    push       dword ptr fs:[eax]
 005624BA    mov        dword ptr fs:[eax],esp
 005624BD    mov        eax,esi
 005624BF    call       @LStrLen
 005624C4    cmp        eax,2
>005624C7    jl         0056253A
 005624C9    mov        eax,ebx
 005624CB    sub        al,22
>005624CD    je         005624D3
 005624CF    sub        al,5
>005624D1    jne        0056253A
 005624D3    mov        eax,1
 005624D8    dec        eax
 005624D9    test       esi,esi
>005624DB    je         005624E2
 005624DD    cmp        eax,dword ptr [esi-4]
>005624E0    jb         005624E7
 005624E2    call       @BoundErr
 005624E7    inc        eax
 005624E8    cmp        bl,byte ptr [esi+eax-1]
>005624EC    jne        0056253A
 005624EE    mov        eax,esi
 005624F0    call       @LStrLen
 005624F5    dec        eax
 005624F6    test       esi,esi
>005624F8    je         005624FF
 005624FA    cmp        eax,dword ptr [esi-4]
>005624FD    jb         00562504
 005624FF    call       @BoundErr
 00562504    inc        eax
 00562505    cmp        bl,byte ptr [esi+eax-1]
>00562509    jne        0056253A
 0056250B    lea        eax,[ebp-4]
 0056250E    push       eax
 0056250F    mov        eax,esi
 00562511    call       @LStrLen
 00562516    mov        ecx,eax
 00562518    sub        ecx,2
>0056251B    jno        00562522
 0056251D    call       @IntOver
 00562522    mov        edx,2
 00562527    mov        eax,esi
 00562529    call       @LStrCopy
 0056252E    mov        eax,dword ptr [ebp-4]
 00562531    mov        edx,edi
 00562533    call       004C004C
>00562538    jmp        00562543
 0056253A    mov        eax,edi
 0056253C    mov        edx,esi
 0056253E    call       @LStrAsg
 00562543    xor        eax,eax
 00562545    pop        edx
 00562546    pop        ecx
 00562547    pop        ecx
 00562548    mov        dword ptr fs:[eax],edx
 0056254B    push       562560
 00562550    lea        eax,[ebp-4]
 00562553    call       @LStrClr
 00562558    ret
<00562559    jmp        @HandleFinally
<0056255E    jmp        00562550
 00562560    pop        edi
 00562561    pop        esi
 00562562    pop        ebx
 00562563    pop        ecx
 00562564    pop        ebp
 00562565    ret        4
*}
//end;

//00562568
//procedure sub_00562568(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00562568    push       ebp
 00562569    mov        ebp,esp
 0056256B    add        esp,0FFFFFFF0
 0056256E    push       ebx
 0056256F    push       esi
 00562570    push       edi
 00562571    xor        ebx,ebx
 00562573    mov        dword ptr [ebp-10],ebx
 00562576    mov        ebx,ecx
 00562578    mov        dword ptr [ebp-8],edx
 0056257B    mov        dword ptr [ebp-4],eax
 0056257E    mov        esi,dword ptr [ebp+8]
 00562581    xor        eax,eax
 00562583    push       ebp
 00562584    push       562630
 00562589    push       dword ptr fs:[eax]
 0056258C    mov        dword ptr fs:[eax],esp
 0056258F    mov        byte ptr [esi+4],0
 00562593    mov        eax,esi
 00562595    mov        edx,ebx
 00562597    call       @LStrFromChar
 0056259C    cmp        bl,2F
>0056259F    jne        005625F1
 005625A1    lea        edx,[ebp-9]
 005625A4    mov        ecx,1
 005625A9    mov        eax,dword ptr [ebp-8]
 005625AC    mov        edi,dword ptr [eax]
 005625AE    call       dword ptr [edi+0C]
 005625B1    test       eax,eax
>005625B3    jle        005625DE
 005625B5    cmp        byte ptr [ebp-9],2A
>005625B9    jne        005625DE
 005625BB    mov        byte ptr [esi+4],0C
 005625BF    lea        ecx,[ebp-10]
 005625C2    mov        edx,dword ptr [ebp-8]
 005625C5    mov        eax,dword ptr [ebp-4]
 005625C8    call       004C0D28
 005625CD    mov        ecx,dword ptr [ebp-10]
 005625D0    mov        eax,esi
 005625D2    mov        edx,562648; '/*'
 005625D7    call       @LStrCat3
>005625DC    jmp        005625F1
 005625DE    test       eax,eax
>005625E0    jle        005625F1
 005625E2    mov        cx,1
 005625E6    or         edx,0FFFFFFFF
 005625E9    mov        eax,dword ptr [ebp-8]
 005625EC    mov        edi,dword ptr [eax]
 005625EE    call       dword ptr [edi+14]
 005625F1    cmp        byte ptr [esi+4],0
>005625F5    jne        0056261A
 005625F7    mov        eax,dword ptr [ebp+0C]
 005625FA    cmp        dword ptr [eax+41C],0
>00562601    je         0056261A
 00562603    mov        eax,dword ptr [ebp+0C]
 00562606    push       eax
 00562607    push       esi
 00562608    mov        eax,dword ptr [ebp+0C]
 0056260B    mov        eax,dword ptr [eax+41C]
 00562611    mov        ecx,ebx
 00562613    mov        edx,dword ptr [ebp-8]
 00562616    mov        ebx,dword ptr [eax]
 00562618    call       dword ptr [ebx]
 0056261A    xor        eax,eax
 0056261C    pop        edx
 0056261D    pop        ecx
 0056261E    pop        ecx
 0056261F    mov        dword ptr fs:[eax],edx
 00562622    push       562637
 00562627    lea        eax,[ebp-10]
 0056262A    call       @LStrClr
 0056262F    ret
<00562630    jmp        @HandleFinally
<00562635    jmp        00562627
 00562637    pop        edi
 00562638    pop        esi
 00562639    pop        ebx
 0056263A    mov        esp,ebp
 0056263C    pop        ebp
 0056263D    ret        8
*}
//end;

//0056264C
//constructor TZExpressionSymbolState.Create(?:TZExpressionSymbolState; _Dv__:Boolean);
//begin
{*
 0056264C    push       ebp
 0056264D    mov        ebp,esp
 0056264F    push       ebx
 00562650    push       esi
 00562651    test       dl,dl
>00562653    je         0056265D
 00562655    add        esp,0FFFFFFF0
 00562658    call       @ClassCreate
 0056265D    mov        ebx,edx
 0056265F    mov        esi,eax
 00562661    xor        edx,edx
 00562663    mov        eax,esi
 00562665    call       004C15E4
 0056266A    mov        edx,5626C0; '<='
 0056266F    mov        eax,esi
 00562671    mov        ecx,dword ptr [eax]
 00562673    call       dword ptr [ecx+4]; TZExpressionSymbolState.sub_004C1658
 00562676    mov        edx,5626CC; '>='
 0056267B    mov        eax,esi
 0056267D    mov        ecx,dword ptr [eax]
 0056267F    call       dword ptr [ecx+4]; TZExpressionSymbolState.sub_004C1658
 00562682    mov        edx,5626D8; '<>'
 00562687    mov        eax,esi
 00562689    mov        ecx,dword ptr [eax]
 0056268B    call       dword ptr [ecx+4]; TZExpressionSymbolState.sub_004C1658
 0056268E    mov        edx,5626E4; '!='
 00562693    mov        eax,esi
 00562695    mov        ecx,dword ptr [eax]
 00562697    call       dword ptr [ecx+4]; TZExpressionSymbolState.sub_004C1658
 0056269A    mov        eax,esi
 0056269C    test       bl,bl
>0056269E    je         005626AF
 005626A0    call       @AfterConstruction
 005626A5    pop        dword ptr fs:[0]
 005626AC    add        esp,0C
 005626AF    mov        eax,esi
 005626B1    pop        esi
 005626B2    pop        ebx
 005626B3    pop        ebp
 005626B4    ret
*}
//end;

//005626E8
//constructor TZExpressionWordState.Create(?:TZExpressionWordState; _Dv__:Boolean);
//begin
{*
 005626E8    push       ebp
 005626E9    mov        ebp,esp
 005626EB    push       ebx
 005626EC    push       esi
 005626ED    test       dl,dl
>005626EF    je         005626F9
 005626F1    add        esp,0FFFFFFF0
 005626F4    call       @ClassCreate
 005626F9    mov        ebx,edx
 005626FB    mov        esi,eax
 005626FD    push       0
 005626FF    mov        cl,0FF
 00562701    xor        edx,edx
 00562703    mov        eax,esi
 00562705    call       004C18EC
 0056270A    push       1
 0056270C    mov        cl,7A
 0056270E    mov        dl,61
 00562710    mov        eax,esi
 00562712    call       004C18EC
 00562717    push       1
 00562719    mov        cl,5A
 0056271B    mov        dl,41
 0056271D    mov        eax,esi
 0056271F    call       004C18EC
 00562724    push       1
 00562726    mov        cl,39
 00562728    mov        dl,30
 0056272A    mov        eax,esi
 0056272C    call       004C18EC
 00562731    push       1
 00562733    mov        cl,5F
 00562735    mov        dl,5F
 00562737    mov        eax,esi
 00562739    call       004C18EC
 0056273E    push       1
 00562740    mov        cl,0FF
 00562742    mov        dl,0C0
 00562744    mov        eax,esi
 00562746    call       004C18EC
 0056274B    mov        eax,esi
 0056274D    test       bl,bl
>0056274F    je         00562760
 00562751    call       @AfterConstruction
 00562756    pop        dword ptr fs:[0]
 0056275D    add        esp,0C
 00562760    mov        eax,esi
 00562762    pop        esi
 00562763    pop        ebx
 00562764    pop        ebp
 00562765    ret
*}
//end;

//00562768
//procedure sub_00562768(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00562768    push       ebp
 00562769    mov        ebp,esp
 0056276B    add        esp,0FFFFFFF8
 0056276E    push       ebx
 0056276F    push       esi
 00562770    push       edi
 00562771    xor        ebx,ebx
 00562773    mov        dword ptr [ebp-8],ebx
 00562776    mov        byte ptr [ebp-1],cl
 00562779    mov        esi,edx
 0056277B    mov        ebx,eax
 0056277D    mov        edi,dword ptr [ebp+8]
 00562780    xor        eax,eax
 00562782    push       ebp
 00562783    push       5627E1
 00562788    push       dword ptr fs:[eax]
 0056278B    mov        dword ptr fs:[eax],esp
 0056278E    mov        eax,dword ptr [ebp+0C]
 00562791    push       eax
 00562792    push       edi
 00562793    mov        cl,byte ptr [ebp-1]
 00562796    mov        edx,esi
 00562798    mov        eax,ebx
 0056279A    call       004C1834
 0056279F    lea        edx,[ebp-8]
 005627A2    mov        eax,dword ptr [edi]
 005627A4    call       UpperCase
 005627A9    mov        esi,9
 005627AE    mov        ebx,6168F8; gvar_006168F8:array[9] of String
 005627B3    mov        eax,dword ptr [ebp-8]
 005627B6    mov        edx,dword ptr [ebx]
 005627B8    call       @LStrCmp
>005627BD    jne        005627C5
 005627BF    mov        byte ptr [edi+4],0A
>005627C3    jmp        005627CB
 005627C5    add        ebx,4
 005627C8    dec        esi
<005627C9    jne        005627B3
 005627CB    xor        eax,eax
 005627CD    pop        edx
 005627CE    pop        ecx
 005627CF    pop        ecx
 005627D0    mov        dword ptr fs:[eax],edx
 005627D3    push       5627E8
 005627D8    lea        eax,[ebp-8]
 005627DB    call       @LStrClr
 005627E0    ret
<005627E1    jmp        @HandleFinally
<005627E6    jmp        005627D8
 005627E8    pop        edi
 005627E9    pop        esi
 005627EA    pop        ebx
 005627EB    pop        ecx
 005627EC    pop        ecx
 005627ED    pop        ebp
 005627EE    ret        8
*}
//end;

//005627F4
//constructor TZExpressionTokenizer.Create(?:TZExpressionTokenizer; _Dv__:Boolean);
//begin
{*
 005627F4    push       ebp
 005627F5    mov        ebp,esp
 005627F7    push       ebx
 005627F8    push       esi
 005627F9    test       dl,dl
>005627FB    je         00562805
 005627FD    add        esp,0FFFFFFF0
 00562800    call       @ClassCreate
 00562805    mov        ebx,edx
 00562807    mov        esi,eax
 00562809    mov        dl,1
 0056280B    mov        eax,[004C0658]; TZWhitespaceState
 00562810    call       TZWhitespaceState.Create; TZWhitespaceState.Create
 00562815    mov        dword ptr [esi+420],eax; TZExpressionTokenizer.?f420:TZWhitespaceState
 0056281B    mov        dl,1
 0056281D    mov        eax,[00561F18]; TZExpressionSymbolState
 00562822    call       TZExpressionSymbolState.Create; TZExpressionSymbolState.Create
 00562827    mov        dword ptr [esi+41C],eax; TZExpressionTokenizer.?f41C:TZGenericSQLSymbolState
 0056282D    mov        dl,1
 0056282F    mov        eax,[00561DD4]; TZExpressionNumberState
 00562834    call       TObject.Create; TZExpressionNumberState.Create
 00562839    mov        dword ptr [esi+414],eax; TZExpressionTokenizer.?f414:TZNumberState
 0056283F    mov        dl,1
 00562841    mov        eax,[00561E3C]; TZExpressionQuoteState
 00562846    call       TObject.Create; TZExpressionQuoteState.Create
 0056284B    mov        dword ptr [esi+418],eax; TZExpressionTokenizer.?f418:TZGenericSQLQuoteState
 00562851    mov        dl,1
 00562853    mov        eax,[00561F84]; TZExpressionWordState
 00562858    call       TZExpressionWordState.Create; TZExpressionWordState.Create
 0056285D    mov        dword ptr [esi+424],eax; TZExpressionTokenizer.?f424:TZGenericSQLWordState
 00562863    mov        dl,1
 00562865    mov        eax,[00561EAC]; TZExpressionCommentState
 0056286A    call       TObject.Create; TZExpressionCommentState.Create
 0056286F    mov        dword ptr [esi+410],eax; TZExpressionTokenizer.?f410:TZCppCommentState
 00562875    mov        eax,dword ptr [esi+41C]; TZExpressionTokenizer.?f41C:TZGenericSQLSymbolState
 0056287B    push       eax
 0056287C    mov        cl,0FF
 0056287E    xor        edx,edx
 00562880    mov        eax,esi
 00562882    call       004C19C8
 00562887    mov        eax,dword ptr [esi+420]; TZExpressionTokenizer.?f420:TZWhitespaceState
 0056288D    push       eax
 0056288E    mov        cl,20
 00562890    xor        edx,edx
 00562892    mov        eax,esi
 00562894    call       004C19C8
 00562899    mov        eax,dword ptr [esi+424]; TZExpressionTokenizer.?f424:TZGenericSQLWordState
 0056289F    push       eax
 005628A0    mov        cl,7A
 005628A2    mov        dl,61
 005628A4    mov        eax,esi
 005628A6    call       004C19C8
 005628AB    mov        eax,dword ptr [esi+424]; TZExpressionTokenizer.?f424:TZGenericSQLWordState
 005628B1    push       eax
 005628B2    mov        cl,5A
 005628B4    mov        dl,41
 005628B6    mov        eax,esi
 005628B8    call       004C19C8
 005628BD    mov        eax,dword ptr [esi+424]; TZExpressionTokenizer.?f424:TZGenericSQLWordState
 005628C3    push       eax
 005628C4    mov        cl,0FF
 005628C6    mov        dl,0C0
 005628C8    mov        eax,esi
 005628CA    call       004C19C8
 005628CF    mov        eax,dword ptr [esi+424]; TZExpressionTokenizer.?f424:TZGenericSQLWordState
 005628D5    push       eax
 005628D6    mov        cl,5F
 005628D8    mov        dl,5F
 005628DA    mov        eax,esi
 005628DC    call       004C19C8
 005628E1    mov        eax,dword ptr [esi+414]; TZExpressionTokenizer.?f414:TZNumberState
 005628E7    push       eax
 005628E8    mov        cl,39
 005628EA    mov        dl,30
 005628EC    mov        eax,esi
 005628EE    call       004C19C8
 005628F3    mov        eax,dword ptr [esi+414]; TZExpressionTokenizer.?f414:TZNumberState
 005628F9    push       eax
 005628FA    mov        cl,2E
 005628FC    mov        dl,2E
 005628FE    mov        eax,esi
 00562900    call       004C19C8
 00562905    mov        eax,dword ptr [esi+418]; TZExpressionTokenizer.?f418:TZGenericSQLQuoteState
 0056290B    push       eax
 0056290C    mov        cl,22
 0056290E    mov        dl,22
 00562910    mov        eax,esi
 00562912    call       004C19C8
 00562917    mov        eax,dword ptr [esi+418]; TZExpressionTokenizer.?f418:TZGenericSQLQuoteState
 0056291D    push       eax
 0056291E    mov        cl,27
 00562920    mov        dl,27
 00562922    mov        eax,esi
 00562924    call       004C19C8
 00562929    mov        eax,dword ptr [esi+410]; TZExpressionTokenizer.?f410:TZCppCommentState
 0056292F    push       eax
 00562930    mov        cl,2F
 00562932    mov        dl,2F
 00562934    mov        eax,esi
 00562936    call       004C19C8
 0056293B    mov        eax,esi
 0056293D    test       bl,bl
>0056293F    je         00562950
 00562941    call       @AfterConstruction
 00562946    pop        dword ptr fs:[0]
 0056294D    add        esp,0C
 00562950    mov        eax,esi
 00562952    pop        esi
 00562953    pop        ebx
 00562954    pop        ebp
 00562955    ret
*}
//end;

Initialization
Finalization
//00562958
{*
 00562958    push       ebp
 00562959    mov        ebp,esp
 0056295B    xor        eax,eax
 0056295D    push       ebp
 0056295E    push       562994
 00562963    push       dword ptr fs:[eax]
 00562966    mov        dword ptr fs:[eax],esp
 00562969    inc        dword ptr ds:[61EF58]
>0056296F    jne        00562986
 00562971    mov        eax,6168F8; gvar_006168F8:array[9] of String
 00562976    mov        ecx,9
 0056297B    mov        edx,dword ptr ds:[4010F8]; String
 00562981    call       @FinalizeArray
 00562986    xor        eax,eax
 00562988    pop        edx
 00562989    pop        ecx
 0056298A    pop        ecx
 0056298B    mov        dword ptr fs:[eax],edx
 0056298E    push       56299B
 00562993    ret
<00562994    jmp        @HandleFinally
<00562999    jmp        00562993
 0056299B    pop        ebp
 0056299C    ret
*}
end.