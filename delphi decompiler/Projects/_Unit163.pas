{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit163;

interface

uses
  Classes, Windows, Graphics;


implementation

//00547008
//function sub_00547008(?:dword):?;
//begin
{*
 00547008    imul       eax,eax,2D
>0054700B    jno        00547012
 0054700D    call       @IntOver
 00547012    add        eax,0B408
>00547017    jno        0054701E
 00547019    call       @IntOver
 0054701E    ret
*}
//end;

//00547020
//procedure sub_00547020(?:?; ?:dword);
//begin
{*
 00547020    push       ebp
 00547021    mov        ebp,esp
 00547023    push       ebx
 00547024    push       esi
 00547025    push       edi
 00547026    mov        edi,edx
 00547028    mov        ebx,eax
 0054702A    cmp        dword ptr [ebx],0
>0054702D    je         00547036
 0054702F    mov        eax,dword ptr [ebx]
 00547031    call       @FreeMem
 00547036    mov        eax,edi
 00547038    call       00547008
 0054703D    mov        esi,eax
 0054703F    mov        eax,esi
 00547041    call       @GetMem
 00547046    mov        dword ptr [ebx],eax
 00547048    mov        eax,dword ptr [ebx]
 0054704A    xor        ecx,ecx
 0054704C    mov        edx,esi
 0054704E    call       @FillChar
 00547053    mov        eax,dword ptr [ebx]
 00547055    mov        dword ptr [eax],edi
 00547057    mov        eax,dword ptr [ebx]
 00547059    xor        edx,edx
 0054705B    mov        dword ptr [eax+4],edx
 0054705E    pop        edi
 0054705F    pop        esi
 00547060    pop        ebx
 00547061    pop        ebp
 00547062    ret
*}
//end;

//00547064
//procedure sub_00547064(?:IZOraclePlainDriver; ?:?);
//begin
{*
 00547064    push       ebp
 00547065    mov        ebp,esp
 00547067    add        esp,0FFFFFFF4
 0054706A    push       ebx
 0054706B    push       esi
 0054706C    push       edi
 0054706D    mov        dword ptr [ebp-8],edx
 00547070    mov        dword ptr [ebp-4],eax
 00547073    mov        eax,dword ptr [ebp-4]
 00547076    call       @IntfAddRef
 0054707B    xor        eax,eax
 0054707D    push       ebp
 0054707E    push       54714D
 00547083    push       dword ptr fs:[eax]
 00547086    mov        dword ptr fs:[eax],esp
 00547089    mov        eax,dword ptr [ebp-8]
 0054708C    cmp        dword ptr [eax],0
>0054708F    je         00547130
 00547095    mov        eax,dword ptr [ebp-8]
 00547098    mov        eax,dword ptr [eax]
 0054709A    mov        esi,dword ptr [eax+4]
 0054709D    test       esi,esi
>0054709F    jle        00547126
 005470A5    mov        dword ptr [ebp-0C],1
 005470AC    mov        eax,dword ptr [ebp-0C]
 005470AF    dec        eax
 005470B0    cmp        eax,3FF
>005470B5    jbe        005470BC
 005470B7    call       @BoundErr
 005470BC    inc        eax
 005470BD    imul       eax,eax,2D
>005470C0    jno        005470C7
 005470C2    call       @IntOver
 005470C7    mov        edx,dword ptr [ebp-8]
 005470CA    mov        edx,dword ptr [edx]
 005470CC    lea        ebx,[edx+eax-25]
 005470D0    mov        eax,dword ptr [ebx+0C]
 005470D3    test       eax,eax
>005470D5    je         00547120
 005470D7    mov        di,word ptr [ebx+25]
 005470DB    mov        edx,edi
 005470DD    add        edx,0FFFFFF90
 005470E0    sub        dx,2
>005470E4    jae        005470FA
 005470E6    mov        edx,dword ptr [eax]
 005470E8    mov        ecx,32
 005470ED    mov        eax,dword ptr [ebp-4]
 005470F0    mov        edi,dword ptr [eax]
 005470F2    call       dword ptr [edi+94]
>005470F8    jmp        00547113
 005470FA    cmp        di,0BB
>005470FF    jne        00547113
 00547101    mov        edx,dword ptr [eax]
 00547103    mov        ecx,44
 00547108    mov        eax,dword ptr [ebp-4]
 0054710B    mov        edi,dword ptr [eax]
 0054710D    call       dword ptr [edi+94]
 00547113    mov        eax,dword ptr [ebx+0C]
 00547116    call       @FreeMem
 0054711B    xor        eax,eax
 0054711D    mov        dword ptr [ebx+0C],eax
 00547120    inc        dword ptr [ebp-0C]
 00547123    dec        esi
<00547124    jne        005470AC
 00547126    mov        eax,dword ptr [ebp-8]
 00547129    mov        eax,dword ptr [eax]
 0054712B    call       @FreeMem
 00547130    mov        eax,dword ptr [ebp-8]
 00547133    xor        edx,edx
 00547135    mov        dword ptr [eax],edx
 00547137    xor        eax,eax
 00547139    pop        edx
 0054713A    pop        ecx
 0054713B    pop        ecx
 0054713C    mov        dword ptr fs:[eax],edx
 0054713F    push       547154
 00547144    lea        eax,[ebp-4]
 00547147    call       @IntfClear
 0054714C    ret
<0054714D    jmp        @HandleFinally
<00547152    jmp        00547144
 00547154    pop        edi
 00547155    pop        esi
 00547156    pop        ebx
 00547157    mov        esp,ebp
 00547159    pop        ebp
 0054715A    ret
*}
//end;

//0054715C
//procedure sub_0054715C(?:IZOraclePlainDriver; ?:IInterface; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0054715C    push       ebp
 0054715D    mov        ebp,esp
 0054715F    add        esp,0FFFFFFF4
 00547162    push       ebx
 00547163    push       esi
 00547164    xor        ebx,ebx
 00547166    mov        dword ptr [ebp-0C],ebx
 00547169    mov        ebx,ecx
 0054716B    mov        dword ptr [ebp-8],edx
 0054716E    mov        dword ptr [ebp-4],eax
 00547171    mov        eax,dword ptr [ebp-4]
 00547174    call       @IntfAddRef
 00547179    mov        eax,dword ptr [ebp-8]
 0054717C    call       @IntfAddRef
 00547181    xor        eax,eax
 00547183    push       ebp
 00547184    push       547342
 00547189    push       dword ptr fs:[eax]
 0054718C    mov        dword ptr fs:[eax],esp
 0054718F    lea        eax,[ebp-0C]
 00547192    mov        edx,dword ptr [ebp-8]
 00547195    mov        ecx,547354; ['{C7F36FDF-8A64-477B-A0EB-3E8AB7C09F8D}']
 0054719A    call       @IntfCast
 0054719F    mov        eax,dword ptr [ebx]
 005471A1    mov        dl,byte ptr [ebp+10]
 005471A4    mov        byte ptr [eax+24],dl
 005471A7    mov        eax,dword ptr [ebx]
 005471A9    mov        dx,word ptr [ebp+0C]
 005471AD    mov        word ptr [eax+25],dx
 005471B1    mov        eax,dword ptr [ebp+8]
 005471B4    cmp        eax,0FFFF
>005471B9    jbe        005471C0
 005471BB    call       @BoundErr
 005471C0    mov        edx,dword ptr [ebx]
 005471C2    mov        word ptr [edx+16],ax
 005471C6    xor        edx,edx
 005471C8    mov        eax,dword ptr [ebx]
 005471CA    mov        al,byte ptr [eax+24]
 005471CD    xor        ecx,ecx
 005471CF    mov        cl,al
 005471D1    cmp        ecx,11
>005471D4    ja         005472AA
 005471DA    mov        cl,byte ptr [ecx+5471E7]
 005471E0    jmp        dword ptr [ecx*4+5471F9]
 005471E0    db         6
 005471E0    db         0
 005471E0    db         1
 005471E0    db         1
 005471E0    db         1
 005471E0    db         1
 005471E0    db         2
 005471E0    db         2
 005471E0    db         0
 005471E0    db         4
 005471E0    db         0
 005471E0    db         0
 005471E0    db         3
 005471E0    db         3
 005471E0    db         3
 005471E0    db         5
 005471E0    db         0
 005471E0    db         5
 005471E0    dd         5472AA
 005471E0    dd         547215
 005471E0    dd         547227
 005471E0    dd         547236
 005471E0    dd         547245
 005471E0    dd         54725F
 005471E0    dd         54731C
 00547215    mov        eax,dword ptr [ebx]
 00547217    mov        word ptr [eax+25],3
 0054721D    mov        edx,4
>00547222    jmp        005472AA
 00547227    mov        eax,dword ptr [ebx]
 00547229    mov        word ptr [eax+25],4
 0054722F    mov        edx,8
>00547234    jmp        005472AA
 00547236    mov        eax,dword ptr [ebx]
 00547238    mov        word ptr [eax+25],0BB
 0054723E    mov        edx,4
>00547243    jmp        005472AA
 00547245    mov        eax,dword ptr [ebx]
 00547247    mov        word ptr [eax+25],5
 0054724D    mov        eax,dword ptr [ebx]
 0054724F    movzx      edx,word ptr [eax+16]
 00547253    add        edx,1
>00547256    jno        0054725D
 00547258    call       @IntOver
>0054725D    jmp        005472AA
 0054725F    mov        edx,dword ptr [ebx]
 00547261    mov        dx,word ptr [edx+25]
 00547265    add        edx,0FFFFFF90
 00547268    sub        dx,2
>0054726C    jb         005472A5
 0054726E    cmp        al,0F
>00547270    jne        0054727C
 00547272    mov        eax,dword ptr [ebx]
 00547274    mov        word ptr [eax+25],5E
>0054727A    jmp        00547284
 0054727C    mov        eax,dword ptr [ebx]
 0054727E    mov        word ptr [eax+25],5F
 00547284    mov        eax,dword ptr [ebx]
 00547286    mov        ax,word ptr [eax+16]
 0054728A    test       ax,ax
>0054728D    jne        00547296
 0054728F    mov        edx,20004
>00547294    jmp        005472AA
 00547296    movzx      edx,ax
 00547299    add        edx,4
>0054729C    jno        005472A3
 0054729E    call       @IntOver
>005472A3    jmp        005472AA
 005472A5    mov        edx,4
 005472AA    mov        eax,dword ptr [ebx]
 005472AC    mov        esi,edx
 005472AE    mov        dword ptr [eax+18],esi
 005472B1    mov        eax,esi
 005472B3    call       @GetMem
 005472B8    mov        edx,dword ptr [ebx]
 005472BA    mov        dword ptr [edx+0C],eax
 005472BD    mov        eax,dword ptr [ebx]
 005472BF    mov        ax,word ptr [eax+25]
 005472C3    mov        edx,eax
 005472C5    add        edx,0FFFFFF90
 005472C8    sub        dx,2
>005472CC    jae        005472F3
 005472CE    push       32
 005472D0    push       0
 005472D2    push       0
 005472D4    mov        eax,dword ptr [ebp-0C]
 005472D7    mov        edx,dword ptr [eax]
 005472D9    call       dword ptr [edx+98]
 005472DF    mov        edx,eax
 005472E1    mov        eax,dword ptr [ebx]
 005472E3    mov        ecx,dword ptr [eax+0C]
 005472E6    mov        eax,dword ptr [ebp-4]
 005472E9    mov        ebx,dword ptr [eax]
 005472EB    call       dword ptr [ebx+90]
>005472F1    jmp        0054731C
 005472F3    cmp        ax,0BB
>005472F7    jne        0054731C
 005472F9    push       44
 005472FB    push       0
 005472FD    push       0
 005472FF    mov        eax,dword ptr [ebp-0C]
 00547302    mov        edx,dword ptr [eax]
 00547304    call       dword ptr [edx+98]
 0054730A    mov        edx,eax
 0054730C    mov        eax,dword ptr [ebx]
 0054730E    mov        ecx,dword ptr [eax+0C]
 00547311    mov        eax,dword ptr [ebp-4]
 00547314    mov        ebx,dword ptr [eax]
 00547316    call       dword ptr [ebx+90]
 0054731C    xor        eax,eax
 0054731E    pop        edx
 0054731F    pop        ecx
 00547320    pop        ecx
 00547321    mov        dword ptr fs:[eax],edx
 00547324    push       547349
 00547329    lea        eax,[ebp-0C]
 0054732C    call       @IntfClear
 00547331    lea        eax,[ebp-8]
 00547334    call       @IntfClear
 00547339    lea        eax,[ebp-4]
 0054733C    call       @IntfClear
 00547341    ret
<00547342    jmp        @HandleFinally
<00547347    jmp        00547329
 00547349    pop        esi
 0054734A    pop        ebx
 0054734B    mov        esp,ebp
 0054734D    pop        ebp
 0054734E    ret        0C
*}
//end;

//00547364
//procedure sub_00547364(?:IZOraclePlainDriver; ?:IZConnection; ?:dword; ?:?; ?:?);
//begin
{*
 00547364    push       ebp
 00547365    mov        ebp,esp
 00547367    add        esp,0FFFFFFBC
 0054736A    push       ebx
 0054736B    push       esi
 0054736C    xor        ebx,ebx
 0054736E    mov        dword ptr [ebp-44],ebx
 00547371    mov        dword ptr [ebp-40],ebx
 00547374    mov        dword ptr [ebp-1C],ebx
 00547377    mov        dword ptr [ebp-20],ebx
 0054737A    mov        dword ptr [ebp-38],ebx
 0054737D    mov        dword ptr [ebp-0C],ecx
 00547380    mov        dword ptr [ebp-8],edx
 00547383    mov        dword ptr [ebp-4],eax
 00547386    mov        eax,dword ptr [ebp-4]
 00547389    call       @IntfAddRef
 0054738E    mov        eax,dword ptr [ebp-8]
 00547391    call       @IntfAddRef
 00547396    mov        eax,dword ptr [ebp+8]
 00547399    call       @DynArrayAddRef
 0054739E    xor        eax,eax
 005473A0    push       ebp
 005473A1    push       547746
 005473A6    push       dword ptr fs:[eax]
 005473A9    mov        dword ptr fs:[eax],esp
 005473AC    lea        eax,[ebp-38]
 005473AF    mov        edx,dword ptr [ebp-8]
 005473B2    mov        ecx,547758; ['{C7F36FDF-8A64-477B-A0EB-3E8AB7C09F8D}']
 005473B7    call       @IntfCast
 005473BC    mov        eax,dword ptr [ebp+0C]
 005473BF    mov        eax,dword ptr [eax+4]
 005473C2    sub        eax,1
>005473C5    jno        005473CC
 005473C7    call       @IntOver
 005473CC    test       eax,eax
>005473CE    jl         005476F2
 005473D4    inc        eax
 005473D5    mov        dword ptr [ebp-3C],eax
 005473D8    mov        dword ptr [ebp-10],0
 005473DF    mov        eax,dword ptr [ebp-10]
 005473E2    add        eax,1
>005473E5    jno        005473EC
 005473E7    call       @IntOver
 005473EC    dec        eax
 005473ED    cmp        eax,3FF
>005473F2    jbe        005473F9
 005473F4    call       @BoundErr
 005473F9    inc        eax
 005473FA    imul       eax,eax,2D
>005473FD    jno        00547404
 005473FF    call       @IntOver
 00547404    mov        edx,dword ptr [ebp+0C]
 00547407    lea        ebx,[edx+eax-25]
 0054740B    mov        eax,dword ptr [ebx+0C]
 0054740E    mov        dword ptr [ebx+10],eax
 00547411    mov        eax,dword ptr [ebp-10]
 00547414    imul       eax,eax,0B
>00547417    jno        0054741E
 00547419    call       @IntOver
 0054741E    mov        edx,dword ptr [ebp+8]
 00547421    lea        edx,[edx+eax*4]
 00547424    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00547429    mov        eax,dword ptr [eax]
 0054742B    mov        ecx,dword ptr [eax]
 0054742D    call       dword ptr [ecx+0C]
 00547430    test       al,al
>00547432    je         00547444
 00547434    mov        word ptr [ebx+27],0FFFF
 0054743A    xor        eax,eax
 0054743C    mov        dword ptr [ebx+0C],eax
>0054743F    jmp        005476E6
 00547444    mov        word ptr [ebx+27],0
 0054744A    movzx      eax,word ptr [ebx+25]
 0054744E    cmp        eax,5
>00547451    jg         00547466
>00547453    je         005474E1
 00547459    sub        eax,3
>0054745C    je         00547480
 0054745E    dec        eax
>0054745F    je         005474B7
>00547461    jmp        005476E6
 00547466    add        eax,0FFFFFF90
 00547469    sub        eax,2
>0054746C    jb         0054761E
 00547472    sub        eax,49
>00547475    je         0054751F
>0054747B    jmp        005476E6
 00547480    mov        eax,dword ptr [ebp-10]
 00547483    imul       eax,eax,0B
>00547486    jno        0054748D
 00547488    call       @IntOver
 0054748D    mov        edx,dword ptr [ebp+8]
 00547490    lea        edx,[edx+eax*4]
 00547493    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00547498    mov        eax,dword ptr [eax]
 0054749A    mov        ecx,dword ptr [eax]
 0054749C    call       dword ptr [ecx+28]
 0054749F    push       eax
 005474A0    sar        eax,1F
 005474A3    cmp        eax,edx
 005474A5    pop        eax
>005474A6    je         005474AD
 005474A8    call       @BoundErr
 005474AD    mov        edx,dword ptr [ebx+0C]
 005474B0    mov        dword ptr [edx],eax
>005474B2    jmp        005476E6
 005474B7    mov        eax,dword ptr [ebp-10]
 005474BA    imul       eax,eax,0B
>005474BD    jno        005474C4
 005474BF    call       @IntOver
 005474C4    mov        edx,dword ptr [ebp+8]
 005474C7    lea        edx,[edx+eax*4]
 005474CA    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 005474CF    mov        eax,dword ptr [eax]
 005474D1    mov        ecx,dword ptr [eax]
 005474D3    call       dword ptr [ecx+2C]
 005474D6    mov        eax,dword ptr [ebx+0C]
 005474D9    fstp       qword ptr [eax]
 005474DB    wait
>005474DC    jmp        005476E6
 005474E1    mov        eax,dword ptr [ebp-10]
 005474E4    imul       eax,eax,0B
>005474E7    jno        005474EE
 005474E9    call       @IntOver
 005474EE    mov        edx,dword ptr [ebp+8]
 005474F1    lea        edx,[edx+eax*4]
 005474F4    lea        ecx,[ebp-40]
 005474F7    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 005474FC    mov        eax,dword ptr [eax]
 005474FE    mov        esi,dword ptr [eax]
 00547500    call       dword ptr [esi+30]
 00547503    mov        eax,dword ptr [ebp-40]
 00547506    call       @LStrToPChar
 0054750B    mov        edx,eax
 0054750D    mov        eax,dword ptr [ebx+0C]
 00547510    mov        ecx,400
 00547515    call       StrLCopy
>0054751A    jmp        005476E6
 0054751F    mov        eax,dword ptr [ebp-10]
 00547522    imul       eax,eax,0B
>00547525    jno        0054752C
 00547527    call       @IntOver
 0054752C    mov        edx,dword ptr [ebp+8]
 0054752F    lea        edx,[edx+eax*4]
 00547532    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00547537    mov        eax,dword ptr [eax]
 00547539    mov        ecx,dword ptr [eax]
 0054753B    call       dword ptr [ecx+38]
 0054753E    fstp       qword ptr [ebp-18]
 00547541    wait
 00547542    push       dword ptr [ebp-14]
 00547545    push       dword ptr [ebp-18]
 00547548    lea        ecx,[ebp-2A]
 0054754B    lea        edx,[ebp-28]
 0054754E    lea        eax,[ebp-26]
 00547551    call       DecodeDate
 00547556    push       dword ptr [ebp-14]
 00547559    push       dword ptr [ebp-18]
 0054755C    lea        eax,[ebp-32]
 0054755F    push       eax
 00547560    lea        ecx,[ebp-30]
 00547563    lea        edx,[ebp-2E]
 00547566    lea        eax,[ebp-2C]
 00547569    call       DecodeTime
 0054756E    mov        eax,dword ptr [ebx+0C]
 00547571    mov        eax,dword ptr [eax]
 00547573    push       eax
 00547574    movzx      eax,word ptr [ebp-26]
 00547578    add        eax,8000
 0054757D    cmp        eax,0FFFF
>00547582    jbe        00547589
 00547584    call       @BoundErr
 00547589    add        eax,0FFFF8000
 0054758E    push       eax
 0054758F    movzx      eax,word ptr [ebp-28]
 00547593    cmp        eax,0FF
>00547598    jbe        0054759F
 0054759A    call       @BoundErr
 0054759F    push       eax
 005475A0    movzx      eax,word ptr [ebp-2A]
 005475A4    cmp        eax,0FF
>005475A9    jbe        005475B0
 005475AB    call       @BoundErr
 005475B0    push       eax
 005475B1    movzx      eax,word ptr [ebp-2C]
 005475B5    cmp        eax,0FF
>005475BA    jbe        005475C1
 005475BC    call       @BoundErr
 005475C1    push       eax
 005475C2    movzx      eax,word ptr [ebp-2E]
 005475C6    cmp        eax,0FF
>005475CB    jbe        005475D2
 005475CD    call       @BoundErr
 005475D2    push       eax
 005475D3    movzx      eax,word ptr [ebp-30]
 005475D7    cmp        eax,0FF
>005475DC    jbe        005475E3
 005475DE    call       @BoundErr
 005475E3    push       eax
 005475E4    movzx      eax,word ptr [ebp-32]
 005475E8    push       eax
 005475E9    push       0
 005475EB    push       0
 005475ED    mov        eax,dword ptr [ebp-38]
 005475F0    mov        edx,dword ptr [eax]
 005475F2    call       dword ptr [edx+98]
 005475F8    mov        edx,eax
 005475FA    mov        ecx,dword ptr [ebp-0C]
 005475FD    mov        eax,dword ptr [ebp-4]
 00547600    mov        ebx,dword ptr [eax]
 00547602    call       dword ptr [ebx+0BC]
 00547608    push       4
 0054760A    push       0
 0054760C    mov        ecx,eax
 0054760E    mov        edx,dword ptr [ebp-0C]
 00547611    mov        eax,dword ptr [ebp-4]
 00547614    call       00547B30
>00547619    jmp        005476E6
 0054761E    mov        eax,dword ptr [ebp-10]
 00547621    imul       eax,eax,0B
>00547624    jno        0054762B
 00547626    call       @IntOver
 0054762B    mov        edx,dword ptr [ebp+8]
 0054762E    lea        edx,[edx+eax*4]
 00547631    lea        ecx,[ebp-44]
 00547634    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00547639    mov        eax,dword ptr [eax]
 0054763B    mov        esi,dword ptr [eax]
 0054763D    call       dword ptr [esi+40]
 00547640    mov        edx,dword ptr [ebp-44]
 00547643    lea        eax,[ebp-1C]
 00547646    mov        ecx,547768; ['{47D209F1-D065-49DD-A156-EFD1E523F6BF}']
 0054764B    call       @IntfCast
 00547650    mov        eax,dword ptr [ebp-1C]
 00547653    mov        edx,dword ptr [eax]
 00547655    call       dword ptr [edx+30]
 00547658    mov        dword ptr [ebp-24],eax
 0054765B    xor        eax,eax
 0054765D    push       ebp
 0054765E    push       5476DF
 00547663    push       dword ptr fs:[eax]
 00547666    mov        dword ptr fs:[eax],esp
 00547669    push       0
 0054766B    push       0
 0054766D    mov        eax,dword ptr [ebp-8]
 00547670    push       eax
 00547671    mov        eax,dword ptr [ebx+0C]
 00547674    mov        eax,dword ptr [eax]
 00547676    push       eax
 00547677    mov        al,byte ptr [ebx+24]
 0054767A    push       eax
 0054767B    mov        ecx,dword ptr [ebp-4]
 0054767E    mov        dl,1
 00547680    mov        eax,[005454A8]; TZOracleBlob
 00547685    call       TZOracleBlob.Create; TZOracleBlob.Create
 0054768A    mov        edx,eax
 0054768C    test       edx,edx
>0054768E    je         00547693
 00547690    sub        edx,0FFFFFFD4
 00547693    lea        eax,[ebp-20]
 00547696    call       @IntfCopy
 0054769B    mov        edx,dword ptr [ebp-24]
 0054769E    mov        eax,dword ptr [ebp-20]
 005476A1    mov        ecx,dword ptr [eax]
 005476A3    call       dword ptr [ecx+34]
 005476A6    mov        eax,dword ptr [ebp-20]
 005476A9    mov        edx,dword ptr [eax]
 005476AB    call       dword ptr [edx+44]
 005476AE    mov        eax,dword ptr [ebp-20]
 005476B1    mov        edx,dword ptr [eax]
 005476B3    call       dword ptr [edx+4C]
 005476B6    lea        eax,[ebx+29]
 005476B9    mov        edx,dword ptr [ebp-20]
 005476BC    call       @IntfCopy
 005476C1    xor        eax,eax
 005476C3    pop        edx
 005476C4    pop        ecx
 005476C5    pop        ecx
 005476C6    mov        dword ptr fs:[eax],edx
 005476C9    push       5476E6
 005476CE    lea        eax,[ebp-20]
 005476D1    call       @IntfClear
 005476D6    mov        eax,dword ptr [ebp-24]
 005476D9    call       TObject.Free
 005476DE    ret
<005476DF    jmp        @HandleFinally
<005476E4    jmp        005476CE
 005476E6    inc        dword ptr [ebp-10]
 005476E9    dec        dword ptr [ebp-3C]
<005476EC    jne        005473DF
 005476F2    xor        eax,eax
 005476F4    pop        edx
 005476F5    pop        ecx
 005476F6    pop        ecx
 005476F7    mov        dword ptr fs:[eax],edx
 005476FA    push       54774D
 005476FF    lea        eax,[ebp-44]
 00547702    call       @IntfClear
 00547707    lea        eax,[ebp-40]
 0054770A    call       @LStrClr
 0054770F    lea        eax,[ebp-38]
 00547712    call       @IntfClear
 00547717    lea        eax,[ebp-20]
 0054771A    call       @IntfClear
 0054771F    lea        eax,[ebp-1C]
 00547722    call       @IntfClear
 00547727    lea        eax,[ebp-8]
 0054772A    call       @IntfClear
 0054772F    lea        eax,[ebp-4]
 00547732    call       @IntfClear
 00547737    lea        eax,[ebp+8]
 0054773A    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 00547740    call       @DynArrayClear
 00547745    ret
<00547746    jmp        @HandleFinally
<0054774B    jmp        005476FF
 0054774D    pop        esi
 0054774E    pop        ebx
 0054774F    mov        esp,ebp
 00547751    pop        ebp
 00547752    ret        8
*}
//end;

//00547778
//procedure sub_00547778(?:dword);
//begin
{*
 00547778    push       ebp
 00547779    mov        ebp,esp
 0054777B    push       ecx
 0054777C    push       ebx
 0054777D    push       esi
 0054777E    push       edi
 0054777F    mov        dword ptr [ebp-4],eax
 00547782    mov        eax,dword ptr [ebp-4]
 00547785    mov        esi,dword ptr [eax+4]
 00547788    test       esi,esi
>0054778A    jle        005477CE
 0054778C    mov        edi,1
 00547791    mov        eax,edi
 00547793    add        eax,1
>00547796    jno        0054779D
 00547798    call       @IntOver
 0054779D    dec        eax
 0054779E    cmp        eax,3FF
>005477A3    jbe        005477AA
 005477A5    call       @BoundErr
 005477AA    inc        eax
 005477AB    imul       eax,eax,2D
>005477AE    jno        005477B5
 005477B0    call       @IntOver
 005477B5    mov        edx,dword ptr [ebp-4]
 005477B8    lea        ebx,[edx+eax-25]
 005477BC    lea        eax,[ebx+29]
 005477BF    call       @IntfClear
 005477C4    mov        eax,dword ptr [ebx+10]
 005477C7    mov        dword ptr [ebx+0C],eax
 005477CA    inc        edi
 005477CB    dec        esi
<005477CC    jne        00547791
 005477CE    pop        edi
 005477CF    pop        esi
 005477D0    pop        ebx
 005477D1    pop        ecx
 005477D2    pop        ebp
 005477D3    ret
*}
//end;

//005477D4
//function sub_005477D4(?:?; ?:?; ?:?):?;
//begin
{*
 005477D4    push       ebp
 005477D5    mov        ebp,esp
 005477D7    add        esp,0FFFFFFF8
 005477DA    push       ebx
 005477DB    push       esi
 005477DC    push       edi
 005477DD    xor        ebx,ebx
 005477DF    mov        dword ptr [ebp-8],ebx
 005477E2    mov        edi,ecx
 005477E4    mov        esi,edx
 005477E6    mov        dword ptr [ebp-4],eax
 005477E9    mov        eax,dword ptr [ebp-4]
 005477EC    call       @LStrAddRef
 005477F1    xor        eax,eax
 005477F3    push       ebp
 005477F4    push       54796D
 005477F9    push       dword ptr fs:[eax]
 005477FC    mov        dword ptr fs:[eax],esp
 005477FF    lea        edx,[ebp-8]
 00547802    mov        eax,dword ptr [ebp-4]
 00547805    call       UpperCase
 0054780A    mov        edx,dword ptr [ebp-8]
 0054780D    lea        eax,[ebp-4]
 00547810    call       @LStrLAsg
 00547815    xor        ebx,ebx
 00547817    mov        eax,dword ptr [ebp-4]
 0054781A    mov        edx,547988; 'CHAR'
 0054781F    call       @LStrCmp
>00547824    je         00547835
 00547826    mov        eax,dword ptr [ebp-4]
 00547829    mov        edx,547998; 'VARCHAR2'
 0054782E    call       @LStrCmp
>00547833    jne        0054783C
 00547835    mov        bl,9
>00547837    jmp        00547952
 0054783C    mov        eax,dword ptr [ebp-4]
 0054783F    mov        edx,5479AC; 'NCHAR'
 00547844    call       @LStrCmp
>00547849    je         0054785A
 0054784B    mov        eax,dword ptr [ebp-4]
 0054784E    mov        edx,5479BC; 'NVARCHAR2'
 00547853    call       @LStrCmp
>00547858    jne        00547861
 0054785A    mov        bl,0A
>0054785C    jmp        00547952
 00547861    mov        eax,dword ptr [ebp-4]
 00547864    mov        edx,5479D0; 'FLOAT'
 00547869    call       @LStrCmp
>0054786E    jne        00547877
 00547870    mov        bl,7
>00547872    jmp        00547952
 00547877    mov        eax,dword ptr [ebp-4]
 0054787A    mov        edx,5479E0; 'DATE'
 0054787F    call       @LStrCmp
>00547884    jne        0054788D
 00547886    mov        bl,0C
>00547888    jmp        00547952
 0054788D    mov        eax,dword ptr [ebp-4]
 00547890    mov        edx,5479F0; 'BLOB'
 00547895    call       @LStrCmp
>0054789A    jne        005478A3
 0054789C    mov        bl,11
>0054789E    jmp        00547952
 005478A3    mov        eax,dword ptr [ebp-4]
 005478A6    mov        edx,547A00; 'RAW'
 005478AB    call       @LStrCmp
>005478B0    je         005478C1
 005478B2    mov        eax,dword ptr [ebp-4]
 005478B5    mov        edx,547A0C; 'LONG RAW'
 005478BA    call       @LStrCmp
>005478BF    jne        005478C8
 005478C1    mov        bl,11
>005478C3    jmp        00547952
 005478C8    mov        eax,dword ptr [ebp-4]
 005478CB    mov        edx,547A20; 'CLOB'
 005478D0    call       @LStrCmp
>005478D5    jne        005478DB
 005478D7    mov        bl,0F
>005478D9    jmp        00547952
 005478DB    mov        eax,dword ptr [ebp-4]
 005478DE    mov        edx,547A30; 'NCLOB'
 005478E3    call       @LStrCmp
>005478E8    jne        005478EE
 005478EA    mov        bl,10
>005478EC    jmp        00547952
 005478EE    mov        eax,dword ptr [ebp-4]
 005478F1    mov        edx,547A40; 'LONG'
 005478F6    call       @LStrCmp
>005478FB    jne        00547901
 005478FD    mov        bl,0F
>005478FF    jmp        00547952
 00547901    mov        edx,547A50; 'TIMESTAMP'
 00547906    mov        eax,dword ptr [ebp-4]
 00547909    call       004BEDE8
 0054790E    test       al,al
>00547910    je         00547916
 00547912    mov        bl,0E
>00547914    jmp        00547952
 00547916    mov        eax,dword ptr [ebp-4]
 00547919    mov        edx,547A64; 'NUMBER'
 0054791E    call       @LStrCmp
>00547923    jne        00547952
 00547925    test       edi,edi
>00547927    jne        00547950
 00547929    test       esi,esi
>0054792B    jne        00547931
 0054792D    mov        bl,5
>0054792F    jmp        00547952
 00547931    cmp        esi,2
>00547934    jg         0054793A
 00547936    mov        bl,2
>00547938    jmp        00547952
 0054793A    cmp        esi,4
>0054793D    jg         00547943
 0054793F    mov        bl,3
>00547941    jmp        00547952
 00547943    cmp        esi,9
>00547946    jg         0054794C
 00547948    mov        bl,4
>0054794A    jmp        00547952
 0054794C    mov        bl,5
>0054794E    jmp        00547952
 00547950    mov        bl,7
 00547952    xor        eax,eax
 00547954    pop        edx
 00547955    pop        ecx
 00547956    pop        ecx
 00547957    mov        dword ptr fs:[eax],edx
 0054795A    push       547974
 0054795F    lea        eax,[ebp-8]
 00547962    mov        edx,2
 00547967    call       @LStrArrayClr
 0054796C    ret
<0054796D    jmp        @HandleFinally
<00547972    jmp        0054795F
 00547974    mov        eax,ebx
 00547976    pop        edi
 00547977    pop        esi
 00547978    pop        ebx
 00547979    pop        ecx
 0054797A    pop        ecx
 0054797B    pop        ebp
 0054797C    ret
*}
//end;

//00547A6C
//function sub_00547A6C(?:?):?;
//begin
{*
 00547A6C    push       ebp
 00547A6D    mov        ebp,esp
 00547A6F    add        esp,0FFFFFFF0
 00547A72    push       ebx
 00547A73    mov        ebx,eax
 00547A75    xor        eax,eax
 00547A77    mov        al,byte ptr [ebx]
 00547A79    sub        eax,64
>00547A7C    jno        00547A83
 00547A7E    call       @IntOver
 00547A83    imul       eax,eax,64
>00547A86    jno        00547A8D
 00547A88    call       @IntOver
 00547A8D    xor        edx,edx
 00547A8F    mov        dl,byte ptr [ebx+1]
 00547A92    add        eax,edx
>00547A94    jno        00547A9B
 00547A96    call       @IntOver
 00547A9B    sub        eax,64
>00547A9E    jno        00547AA5
 00547AA0    call       @IntOver
 00547AA5    cmp        eax,0FFFF
>00547AAA    jbe        00547AB1
 00547AAC    call       @BoundErr
 00547AB1    xor        ecx,ecx
 00547AB3    mov        cl,byte ptr [ebx+3]
 00547AB6    xor        edx,edx
 00547AB8    mov        dl,byte ptr [ebx+2]
 00547ABB    call       EncodeDate
 00547AC0    fstp       qword ptr [ebp-10]
 00547AC3    wait
 00547AC4    push       0
 00547AC6    xor        ecx,ecx
 00547AC8    mov        cl,byte ptr [ebx+6]
 00547ACB    sub        ecx,1
>00547ACE    jno        00547AD5
 00547AD0    call       @IntOver
 00547AD5    cmp        ecx,0FFFF
>00547ADB    jbe        00547AE2
 00547ADD    call       @BoundErr
 00547AE2    xor        edx,edx
 00547AE4    mov        dl,byte ptr [ebx+5]
 00547AE7    sub        edx,1
>00547AEA    jno        00547AF1
 00547AEC    call       @IntOver
 00547AF1    cmp        edx,0FFFF
>00547AF7    jbe        00547AFE
 00547AF9    call       @BoundErr
 00547AFE    xor        eax,eax
 00547B00    mov        al,byte ptr [ebx+4]
 00547B03    sub        eax,1
>00547B06    jno        00547B0D
 00547B08    call       @IntOver
 00547B0D    cmp        eax,0FFFF
>00547B12    jbe        00547B19
 00547B14    call       @BoundErr
 00547B19    call       EncodeTime
 00547B1E    fadd       qword ptr [ebp-10]
 00547B21    fstp       qword ptr [ebp-8]
 00547B24    wait
 00547B25    fld        qword ptr [ebp-8]
 00547B28    pop        ebx
 00547B29    mov        esp,ebp
 00547B2B    pop        ebp
 00547B2C    ret
*}
//end;

//00547B30
//procedure sub_00547B30(?:IZOraclePlainDriver; ?:dword; ?:?; ?:?; ?:?);
//begin
{*
 00547B30    push       ebp
 00547B31    mov        ebp,esp
 00547B33    add        esp,0FFFFFEE0
 00547B39    push       ebx
 00547B3A    push       esi
 00547B3B    xor        ebx,ebx
 00547B3D    mov        dword ptr [ebp-114],ebx
 00547B43    mov        dword ptr [ebp-118],ebx
 00547B49    mov        dword ptr [ebp-110],ebx
 00547B4F    mov        dword ptr [ebp-8],ebx
 00547B52    mov        ebx,ecx
 00547B54    mov        esi,edx
 00547B56    mov        dword ptr [ebp-4],eax
 00547B59    mov        eax,dword ptr [ebp-4]
 00547B5C    call       @IntfAddRef
 00547B61    mov        eax,dword ptr [ebp+8]
 00547B64    call       @LStrAddRef
 00547B69    xor        eax,eax
 00547B6B    push       ebp
 00547B6C    push       547D20
 00547B71    push       dword ptr fs:[eax]
 00547B74    mov        dword ptr fs:[eax],esp
 00547B77    lea        eax,[ebp-8]
 00547B7A    call       @LStrClr
 00547B7F    mov        dword ptr [ebp-0C],ebx
 00547B82    cmp        ebx,0
>00547B85    jg         00547BB5
>00547B87    je         00547CEA
 00547B8D    sub        ebx,0FFFFA178
>00547B93    je         00547C43
 00547B99    sub        ebx,5255
>00547B9F    je         00547C34
 00547BA5    sub        ebx,0C31
>00547BAB    je         00547C25
 00547BAD    dec        ebx
>00547BAE    je         00547BF2
>00547BB0    jmp        00547C50
 00547BB5    dec        ebx
>00547BB6    je         00547BC5
 00547BB8    sub        ebx,62
>00547BBB    je         00547BD4
 00547BBD    dec        ebx
>00547BBE    je         00547BE3
>00547BC0    jmp        00547C50
 00547BC5    lea        eax,[ebp-8]
 00547BC8    mov        edx,547D38; 'OCI_SUCCESS_WITH_INFO'
 00547BCD    call       @LStrLAsg
>00547BD2    jmp        00547C50
 00547BD4    lea        eax,[ebp-8]
 00547BD7    mov        edx,547D58; 'OCI_NEED_DATA'
 00547BDC    call       @LStrLAsg
>00547BE1    jmp        00547C50
 00547BE3    lea        eax,[ebp-8]
 00547BE6    mov        edx,547D70; 'OCI_NO_DATA'
 00547BEB    call       @LStrLAsg
>00547BF0    jmp        00547C50
 00547BF2    push       0
 00547BF4    lea        eax,[ebp-0C]
 00547BF7    push       eax
 00547BF8    lea        eax,[ebp-10C]
 00547BFE    push       eax
 00547BFF    push       0FF
 00547C04    push       2
 00547C06    mov        ecx,1
 00547C0B    mov        edx,esi
 00547C0D    mov        eax,dword ptr [ebp-4]
 00547C10    mov        ebx,dword ptr [eax]
 00547C12    call       dword ptr [ebx+40]
 00547C15    lea        edx,[ebp-8]
 00547C18    lea        eax,[ebp-10C]
 00547C1E    call       StrPas
>00547C23    jmp        00547C50
 00547C25    lea        eax,[ebp-8]
 00547C28    mov        edx,547D84; 'OCI_INVALID_HANDLE'
 00547C2D    call       @LStrLAsg
>00547C32    jmp        00547C50
 00547C34    lea        eax,[ebp-8]
 00547C37    mov        edx,547DA0; 'OCI_STILL_EXECUTING'
 00547C3C    call       @LStrLAsg
>00547C41    jmp        00547C50
 00547C43    lea        eax,[ebp-8]
 00547C46    mov        edx,547DBC; 'OCI_CONTINUE'
 00547C4B    call       @LStrLAsg
 00547C50    cmp        dword ptr [ebp-0C],0
>00547C54    je         00547CEA
 00547C5A    cmp        dword ptr [ebp-8],0
>00547C5E    je         00547CEA
 00547C64    mov        eax,dword ptr [ebp+8]
 00547C67    push       eax
 00547C68    mov        eax,dword ptr [ebp-0C]
 00547C6B    push       eax
 00547C6C    mov        eax,dword ptr [ebp-8]
 00547C6F    push       eax
 00547C70    lea        edx,[ebp-110]
 00547C76    mov        eax,dword ptr [ebp-4]
 00547C79    mov        ecx,dword ptr [eax]
 00547C7B    call       dword ptr [ecx+0C]
 00547C7E    mov        ecx,dword ptr [ebp-110]
 00547C84    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00547C89    mov        eax,dword ptr [eax]
 00547C8B    mov        dl,byte ptr [ebp+0C]
 00547C8E    mov        ebx,dword ptr [eax]
 00547C90    call       dword ptr [ebx+40]
 00547C93    lea        eax,[ebp-114]
 00547C99    push       eax
 00547C9A    lea        edx,[ebp-118]
 00547CA0    mov        eax,[0061C5CC]; ^#122.sResString0:TResStringRec
 00547CA5    call       LoadResString
 00547CAA    mov        eax,dword ptr [ebp-118]
 00547CB0    push       eax
 00547CB1    mov        eax,dword ptr [ebp-8]
 00547CB4    mov        dword ptr [ebp-120],eax
 00547CBA    mov        byte ptr [ebp-11C],0B
 00547CC1    lea        edx,[ebp-120]
 00547CC7    xor        ecx,ecx
 00547CC9    pop        eax
 00547CCA    call       Format
 00547CCF    mov        eax,dword ptr [ebp-114]
 00547CD5    push       eax
 00547CD6    mov        ecx,dword ptr [ebp-0C]
 00547CD9    mov        dl,1
 00547CDB    mov        eax,[004C6D20]; EZSQLException
 00547CE0    call       EZSQLException.Create; EZSQLException.Create
 00547CE5    call       @RaiseExcept
 00547CEA    xor        eax,eax
 00547CEC    pop        edx
 00547CED    pop        ecx
 00547CEE    pop        ecx
 00547CEF    mov        dword ptr fs:[eax],edx
 00547CF2    push       547D27
 00547CF7    lea        eax,[ebp-118]
 00547CFD    mov        edx,3
 00547D02    call       @LStrArrayClr
 00547D07    lea        eax,[ebp-8]
 00547D0A    call       @LStrClr
 00547D0F    lea        eax,[ebp-4]
 00547D12    call       @IntfClear
 00547D17    lea        eax,[ebp+8]
 00547D1A    call       @LStrClr
 00547D1F    ret
<00547D20    jmp        @HandleFinally
<00547D25    jmp        00547CF7
 00547D27    pop        esi
 00547D28    pop        ebx
 00547D29    mov        esp,ebp
 00547D2B    pop        ebp
 00547D2C    ret        8
*}
//end;

//00547DCC
//procedure sub_00547DCC(?:IZOraclePlainDriver; ?:TZAbstractStatement; ?:String; ?:?; ?:?; ?:?);
//begin
{*
 00547DCC    push       ebp
 00547DCD    mov        ebp,esp
 00547DCF    add        esp,0FFFFFFF0
 00547DD2    push       ebx
 00547DD3    push       esi
 00547DD4    push       edi
 00547DD5    xor        ebx,ebx
 00547DD7    mov        dword ptr [ebp-10],ebx
 00547DDA    mov        dword ptr [ebp-0C],ecx
 00547DDD    mov        dword ptr [ebp-8],edx
 00547DE0    mov        dword ptr [ebp-4],eax
 00547DE3    mov        edi,dword ptr [ebp+8]
 00547DE6    mov        eax,dword ptr [ebp-4]
 00547DE9    call       @IntfAddRef
 00547DEE    mov        eax,dword ptr [ebp-8]
 00547DF1    call       @IntfAddRef
 00547DF6    mov        eax,dword ptr [ebp-0C]
 00547DF9    call       @LStrAddRef
 00547DFE    xor        eax,eax
 00547E00    push       ebp
 00547E01    push       547EF4
 00547E06    push       dword ptr fs:[eax]
 00547E09    mov        dword ptr fs:[eax],esp
 00547E0C    mov        eax,dword ptr [ebp-8]
 00547E0F    push       eax
 00547E10    mov        eax,dword ptr [ebp-0C]
 00547E13    push       eax
 00547E14    mov        eax,dword ptr [ebp+10]
 00547E17    push       eax
 00547E18    mov        eax,dword ptr [ebp+0C]
 00547E1B    push       eax
 00547E1C    mov        ecx,dword ptr [ebp-4]
 00547E1F    mov        dl,1
 00547E21    mov        eax,[005450F0]; TZOracleResultSet
 00547E26    call       TZOracleResultSet.Create; TZOracleResultSet.Create
 00547E2B    mov        ebx,eax
 00547E2D    xor        edx,edx
 00547E2F    mov        eax,ebx
 00547E31    call       004D4578
 00547E36    mov        eax,dword ptr [ebp-8]
 00547E39    mov        edx,dword ptr [eax]
 00547E3B    call       dword ptr [edx+60]; TZAbstractStatement.sub_004DFF7C
 00547E3E    cmp        al,1
>00547E40    je         00547E4E
 00547E42    mov        eax,dword ptr [ebp-8]
 00547E45    mov        edx,dword ptr [eax]
 00547E47    call       dword ptr [edx+68]; TZAbstractStatement.sub_004DFFA0
 00547E4A    test       al,al
>00547E4C    je         00547EB6
 00547E4E    mov        eax,dword ptr [ebp-0C]
 00547E51    push       eax
 00547E52    push       0
 00547E54    mov        ecx,ebx
 00547E56    test       ecx,ecx
>00547E58    je         00547E5D
 00547E5A    sub        ecx,0FFFFFFC8
 00547E5D    mov        dl,1
 00547E5F    mov        eax,[004D060C]; TZCachedResultSet
 00547E64    call       TZCachedResultSet.Create; TZCachedResultSet.Create
 00547E69    mov        esi,eax
 00547E6B    mov        dl,1
 00547E6D    mov        eax,esi
 00547E6F    call       004D4578
 00547E74    lea        edx,[ebp-10]
 00547E77    mov        eax,ebx
 00547E79    mov        ecx,dword ptr [eax]
 00547E7B    call       dword ptr [ecx+0C4]; TZOracleResultSet.sub_004D4E80
 00547E81    mov        eax,dword ptr [ebp-10]
 00547E84    push       eax
 00547E85    mov        ecx,dword ptr [ebp-8]
 00547E88    mov        dl,1
 00547E8A    mov        eax,[0054C714]; TZOracleCachedResolver
 00547E8F    call       TZGenericCachedResolver.Create; TZOracleCachedResolver.Create
 00547E94    mov        edx,eax
 00547E96    test       edx,edx
>00547E98    je         00547E9D
 00547E9A    sub        edx,0FFFFFFD4
 00547E9D    mov        eax,esi
 00547E9F    call       004D0BDC
 00547EA4    mov        eax,edi
 00547EA6    mov        edx,esi
 00547EA8    test       edx,edx
>00547EAA    je         00547EAF
 00547EAC    sub        edx,0FFFFFFC8
 00547EAF    call       @IntfCopy
>00547EB4    jmp        00547EC6
 00547EB6    mov        eax,edi
 00547EB8    mov        edx,ebx
 00547EBA    test       edx,edx
>00547EBC    je         00547EC1
 00547EBE    sub        edx,0FFFFFFC8
 00547EC1    call       @IntfCopy
 00547EC6    xor        eax,eax
 00547EC8    pop        edx
 00547EC9    pop        ecx
 00547ECA    pop        ecx
 00547ECB    mov        dword ptr fs:[eax],edx
 00547ECE    push       547EFB
 00547ED3    lea        eax,[ebp-10]
 00547ED6    call       @IntfClear
 00547EDB    lea        eax,[ebp-0C]
 00547EDE    call       @LStrClr
 00547EE3    lea        eax,[ebp-8]
 00547EE6    call       @IntfClear
 00547EEB    lea        eax,[ebp-4]
 00547EEE    call       @IntfClear
 00547EF3    ret
<00547EF4    jmp        @HandleFinally
<00547EF9    jmp        00547ED3
 00547EFB    pop        edi
 00547EFC    pop        esi
 00547EFD    pop        ebx
 00547EFE    mov        esp,ebp
 00547F00    pop        ebp
 00547F01    ret        0C
*}
//end;

//00547F04
//procedure sub_00547F04(?:IZOraclePlainDriver; ?:IZConnection; ?:?; ?:?);
//begin
{*
 00547F04    push       ebp
 00547F05    mov        ebp,esp
 00547F07    add        esp,0FFFFFFF4
 00547F0A    push       ebx
 00547F0B    push       esi
 00547F0C    xor        ebx,ebx
 00547F0E    mov        dword ptr [ebp-0C],ebx
 00547F11    mov        ebx,ecx
 00547F13    mov        dword ptr [ebp-8],edx
 00547F16    mov        dword ptr [ebp-4],eax
 00547F19    mov        esi,dword ptr [ebp+8]
 00547F1C    mov        eax,dword ptr [ebp-4]
 00547F1F    call       @IntfAddRef
 00547F24    mov        eax,dword ptr [ebp-8]
 00547F27    call       @IntfAddRef
 00547F2C    xor        eax,eax
 00547F2E    push       ebp
 00547F2F    push       547FB2
 00547F34    push       dword ptr fs:[eax]
 00547F37    mov        dword ptr fs:[eax],esp
 00547F3A    lea        eax,[ebp-0C]
 00547F3D    mov        edx,dword ptr [ebp-8]
 00547F40    mov        ecx,547FC4; ['{C7F36FDF-8A64-477B-A0EB-3E8AB7C09F8D}']
 00547F45    call       @IntfCast
 00547F4A    xor        eax,eax
 00547F4C    mov        dword ptr [esi],eax
 00547F4E    push       2
 00547F50    push       0
 00547F52    push       0
 00547F54    mov        eax,dword ptr [ebp-0C]
 00547F57    mov        edx,dword ptr [eax]
 00547F59    call       dword ptr [edx+98]
 00547F5F    mov        edx,eax
 00547F61    mov        ecx,esi
 00547F63    mov        eax,dword ptr [ebp-4]
 00547F66    mov        esi,dword ptr [eax]
 00547F68    call       dword ptr [esi+24]
 00547F6B    xor        eax,eax
 00547F6D    mov        dword ptr [ebx],eax
 00547F6F    push       4
 00547F71    push       0
 00547F73    push       0
 00547F75    mov        eax,dword ptr [ebp-0C]
 00547F78    mov        edx,dword ptr [eax]
 00547F7A    call       dword ptr [edx+98]
 00547F80    mov        edx,eax
 00547F82    mov        ecx,ebx
 00547F84    mov        eax,dword ptr [ebp-4]
 00547F87    mov        ebx,dword ptr [eax]
 00547F89    call       dword ptr [ebx+24]
 00547F8C    xor        eax,eax
 00547F8E    pop        edx
 00547F8F    pop        ecx
 00547F90    pop        ecx
 00547F91    mov        dword ptr fs:[eax],edx
 00547F94    push       547FB9
 00547F99    lea        eax,[ebp-0C]
 00547F9C    call       @IntfClear
 00547FA1    lea        eax,[ebp-8]
 00547FA4    call       @IntfClear
 00547FA9    lea        eax,[ebp-4]
 00547FAC    call       @IntfClear
 00547FB1    ret
<00547FB2    jmp        @HandleFinally
<00547FB7    jmp        00547F99
 00547FB9    pop        esi
 00547FBA    pop        ebx
 00547FBB    mov        esp,ebp
 00547FBD    pop        ebp
 00547FBE    ret        4
*}
//end;

//00547FD4
//procedure sub_00547FD4(?:IZOraclePlainDriver; ?:?; ?:?);
//begin
{*
 00547FD4    push       ebp
 00547FD5    mov        ebp,esp
 00547FD7    push       ecx
 00547FD8    push       ebx
 00547FD9    push       esi
 00547FDA    push       edi
 00547FDB    mov        esi,ecx
 00547FDD    mov        ebx,edx
 00547FDF    mov        dword ptr [ebp-4],eax
 00547FE2    mov        eax,dword ptr [ebp-4]
 00547FE5    call       @IntfAddRef
 00547FEA    xor        eax,eax
 00547FEC    push       ebp
 00547FED    push       54803E
 00547FF2    push       dword ptr fs:[eax]
 00547FF5    mov        dword ptr fs:[eax],esp
 00547FF8    cmp        dword ptr [esi],0
>00547FFB    je         00548010
 00547FFD    mov        edx,dword ptr [esi]
 00547FFF    mov        ecx,2
 00548004    mov        eax,dword ptr [ebp-4]
 00548007    mov        edi,dword ptr [eax]
 00548009    call       dword ptr [edi+3C]
 0054800C    xor        eax,eax
 0054800E    mov        dword ptr [esi],eax
 00548010    cmp        dword ptr [ebx],0
>00548013    je         00548028
 00548015    mov        edx,dword ptr [ebx]
 00548017    mov        ecx,4
 0054801C    mov        eax,dword ptr [ebp-4]
 0054801F    mov        esi,dword ptr [eax]
 00548021    call       dword ptr [esi+3C]
 00548024    xor        eax,eax
 00548026    mov        dword ptr [ebx],eax
 00548028    xor        eax,eax
 0054802A    pop        edx
 0054802B    pop        ecx
 0054802C    pop        ecx
 0054802D    mov        dword ptr fs:[eax],edx
 00548030    push       548045
 00548035    lea        eax,[ebp-4]
 00548038    call       @IntfClear
 0054803D    ret
<0054803E    jmp        @HandleFinally
<00548043    jmp        00548035
 00548045    pop        edi
 00548046    pop        esi
 00548047    pop        ebx
 00548048    pop        ecx
 00548049    pop        ebp
 0054804A    ret
*}
//end;

//0054804C
//procedure sub_0054804C(?:IZOraclePlainDriver; ?:String; ?:dword; ?:?);
//begin
{*
 0054804C    push       ebp
 0054804D    mov        ebp,esp
 0054804F    add        esp,0FFFFFFF8
 00548052    push       ebx
 00548053    push       esi
 00548054    mov        esi,ecx
 00548056    mov        dword ptr [ebp-8],edx
 00548059    mov        dword ptr [ebp-4],eax
 0054805C    mov        ebx,dword ptr [ebp+8]
 0054805F    mov        eax,dword ptr [ebp-4]
 00548062    call       @IntfAddRef
 00548067    mov        eax,dword ptr [ebp-8]
 0054806A    call       @LStrAddRef
 0054806F    xor        eax,eax
 00548071    push       ebp
 00548072    push       5480CF
 00548077    push       dword ptr fs:[eax]
 0054807A    mov        dword ptr fs:[eax],esp
 0054807D    mov        eax,dword ptr [ebp-8]
 00548080    call       @LStrToPChar
 00548085    push       eax
 00548086    mov        eax,dword ptr [ebp-8]
 00548089    call       @LStrLen
 0054808E    push       eax
 0054808F    push       1
 00548091    push       0
 00548093    mov        ecx,ebx
 00548095    mov        edx,esi
 00548097    mov        eax,dword ptr [ebp-4]
 0054809A    mov        esi,dword ptr [eax]
 0054809C    call       dword ptr [esi+44]
 0054809F    push       3
 005480A1    mov        edx,dword ptr [ebp-8]
 005480A4    push       edx
 005480A5    mov        ecx,eax
 005480A7    mov        edx,ebx
 005480A9    mov        eax,dword ptr [ebp-4]
 005480AC    call       00547B30
 005480B1    xor        eax,eax
 005480B3    pop        edx
 005480B4    pop        ecx
 005480B5    pop        ecx
 005480B6    mov        dword ptr fs:[eax],edx
 005480B9    push       5480D6
 005480BE    lea        eax,[ebp-8]
 005480C1    call       @LStrClr
 005480C6    lea        eax,[ebp-4]
 005480C9    call       @IntfClear
 005480CE    ret
<005480CF    jmp        @HandleFinally
<005480D4    jmp        005480BE
 005480D6    pop        esi
 005480D7    pop        ebx
 005480D8    pop        ecx
 005480D9    pop        ecx
 005480DA    pop        ebp
 005480DB    ret        4
*}
//end;

//005480E0
//procedure sub_005480E0(?:IZOraclePlainDriver; ?:IZConnection; ?:String; ?:?; ?:?);
//begin
{*
 005480E0    push       ebp
 005480E1    mov        ebp,esp
 005480E3    add        esp,0FFFFFFF0
 005480E6    push       ebx
 005480E7    push       esi
 005480E8    xor        ebx,ebx
 005480EA    mov        dword ptr [ebp-10],ebx
 005480ED    mov        dword ptr [ebp-0C],ecx
 005480F0    mov        dword ptr [ebp-8],edx
 005480F3    mov        dword ptr [ebp-4],eax
 005480F6    mov        ebx,dword ptr [ebp+8]
 005480F9    mov        eax,dword ptr [ebp-4]
 005480FC    call       @IntfAddRef
 00548101    mov        eax,dword ptr [ebp-8]
 00548104    call       @IntfAddRef
 00548109    mov        eax,dword ptr [ebp-0C]
 0054810C    call       @LStrAddRef
 00548111    xor        eax,eax
 00548113    push       ebp
 00548114    push       548192
 00548119    push       dword ptr fs:[eax]
 0054811C    mov        dword ptr fs:[eax],esp
 0054811F    lea        eax,[ebp-10]
 00548122    mov        edx,dword ptr [ebp-8]
 00548125    mov        ecx,5481A4; ['{C7F36FDF-8A64-477B-A0EB-3E8AB7C09F8D}']
 0054812A    call       @IntfCast
 0054812F    push       ebx
 00548130    push       1
 00548132    push       0
 00548134    push       0
 00548136    push       0
 00548138    push       0
 0054813A    mov        eax,dword ptr [ebp-10]
 0054813D    mov        edx,dword ptr [eax]
 0054813F    call       dword ptr [edx+9C]
 00548145    mov        edx,eax
 00548147    mov        ecx,dword ptr [ebp+0C]
 0054814A    mov        eax,dword ptr [ebp-4]
 0054814D    mov        esi,dword ptr [eax]
 0054814F    call       dword ptr [esi+48]
 00548152    push       3
 00548154    mov        edx,dword ptr [ebp-0C]
 00548157    push       edx
 00548158    mov        ecx,eax
 0054815A    mov        edx,ebx
 0054815C    mov        eax,dword ptr [ebp-4]
 0054815F    call       00547B30
 00548164    xor        eax,eax
 00548166    pop        edx
 00548167    pop        ecx
 00548168    pop        ecx
 00548169    mov        dword ptr fs:[eax],edx
 0054816C    push       548199
 00548171    lea        eax,[ebp-10]
 00548174    call       @IntfClear
 00548179    lea        eax,[ebp-0C]
 0054817C    call       @LStrClr
 00548181    lea        eax,[ebp-8]
 00548184    call       @IntfClear
 00548189    lea        eax,[ebp-4]
 0054818C    call       @IntfClear
 00548191    ret
<00548192    jmp        @HandleFinally
<00548197    jmp        00548171
 00548199    pop        esi
 0054819A    pop        ebx
 0054819B    mov        esp,ebp
 0054819D    pop        ebp
 0054819E    ret        8
*}
//end;

//005481B4
//function sub_005481B4(?:IZOraclePlainDriver; ?:dword; ?:dword):?;
//begin
{*
 005481B4    push       ebp
 005481B5    mov        ebp,esp
 005481B7    add        esp,0FFFFFFF8
 005481BA    push       ebx
 005481BB    push       esi
 005481BC    mov        esi,ecx
 005481BE    mov        ebx,edx
 005481C0    mov        dword ptr [ebp-4],eax
 005481C3    mov        eax,dword ptr [ebp-4]
 005481C6    call       @IntfAddRef
 005481CB    xor        eax,eax
 005481CD    push       ebp
 005481CE    push       54820C
 005481D3    push       dword ptr fs:[eax]
 005481D6    mov        dword ptr fs:[eax],esp
 005481D9    xor        eax,eax
 005481DB    mov        dword ptr [ebp-8],eax
 005481DE    lea        eax,[ebp-8]
 005481E1    push       eax
 005481E2    push       0
 005481E4    push       9
 005481E6    push       esi
 005481E7    mov        ecx,4
 005481EC    mov        edx,ebx
 005481EE    mov        eax,dword ptr [ebp-4]
 005481F1    mov        ebx,dword ptr [eax]
 005481F3    call       dword ptr [ebx+50]
 005481F6    xor        eax,eax
 005481F8    pop        edx
 005481F9    pop        ecx
 005481FA    pop        ecx
 005481FB    mov        dword ptr fs:[eax],edx
 005481FE    push       548213
 00548203    lea        eax,[ebp-4]
 00548206    call       @IntfClear
 0054820B    ret
<0054820C    jmp        @HandleFinally
<00548211    jmp        00548203
 00548213    mov        eax,dword ptr [ebp-8]
 00548216    pop        esi
 00548217    pop        ebx
 00548218    pop        ecx
 00548219    pop        ecx
 0054821A    pop        ebp
 0054821B    ret
*}
//end;

end.