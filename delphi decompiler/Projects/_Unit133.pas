{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit133;

interface

uses
  Classes, Windows, Graphics;


implementation

//004D263C
//procedure sub_004D263C(?:?; ?:TStringDynArray; ?:AnsiString);
//begin
{*
 004D263C    push       ebp
 004D263D    mov        ebp,esp
 004D263F    push       ecx
 004D2640    mov        ecx,4
 004D2645    push       0
 004D2647    push       0
 004D2649    dec        ecx
<004D264A    jne        004D2645
 004D264C    xchg       ecx,dword ptr [ebp-4]
 004D264F    push       ebx
 004D2650    push       esi
 004D2651    push       edi
 004D2652    mov        edi,ecx
 004D2654    mov        dword ptr [ebp-8],edx
 004D2657    mov        dword ptr [ebp-4],eax
 004D265A    mov        eax,dword ptr [ebp-4]
 004D265D    call       @LStrAddRef
 004D2662    mov        eax,dword ptr [ebp-8]
 004D2665    call       @DynArrayAddRef
 004D266A    xor        eax,eax
 004D266C    push       ebp
 004D266D    push       4D2806
 004D2672    push       dword ptr fs:[eax]
 004D2675    mov        dword ptr fs:[eax],esp
 004D2678    mov        eax,edi
 004D267A    call       @LStrClr
 004D267F    mov        edx,dword ptr [ebp-4]
 004D2682    mov        eax,4D281C; ':'
 004D2687    call       004BEC98
 004D268C    mov        ebx,eax
 004D268E    test       ebx,ebx
>004D2690    jle        004D26BF
 004D2692    lea        eax,[ebp-0C]
 004D2695    push       eax
 004D2696    mov        eax,dword ptr [ebp-4]
 004D2699    call       @LStrLen
 004D269E    mov        ecx,eax
 004D26A0    sub        ecx,ebx
>004D26A2    jno        004D26A9
 004D26A4    call       @IntOver
 004D26A9    mov        edx,ebx
 004D26AB    add        edx,1
>004D26AE    jno        004D26B5
 004D26B0    call       @IntOver
 004D26B5    mov        eax,dword ptr [ebp-4]
 004D26B8    call       @LStrCopy
>004D26BD    jmp        004D26C7
 004D26BF    lea        eax,[ebp-0C]
 004D26C2    call       @LStrClr
 004D26C7    mov        edx,dword ptr [ebp-0C]
 004D26CA    mov        eax,4D281C; ':'
 004D26CF    call       004BEC98
 004D26D4    mov        ebx,eax
 004D26D6    cmp        ebx,1
>004D26D9    jle        004D26FA
 004D26DB    lea        eax,[ebp-0C]
 004D26DE    push       eax
 004D26DF    mov        ecx,ebx
 004D26E1    sub        ecx,1
>004D26E4    jno        004D26EB
 004D26E6    call       @IntOver
 004D26EB    mov        edx,1
 004D26F0    mov        eax,dword ptr [ebp-0C]
 004D26F3    call       @LStrCopy
>004D26F8    jmp        004D2702
 004D26FA    lea        eax,[ebp-0C]
 004D26FD    call       @LStrClr
 004D2702    cmp        dword ptr [ebp-0C],0
>004D2706    jne        004D2746
 004D2708    lea        eax,[ebp-10]
 004D270B    push       eax
 004D270C    lea        edx,[ebp-14]
 004D270F    mov        eax,[0061B9AC]; ^#122.sResString51:TResStringRec
 004D2714    call       LoadResString
 004D2719    mov        eax,dword ptr [ebp-14]
 004D271C    push       eax
 004D271D    mov        eax,dword ptr [ebp-4]
 004D2720    mov        dword ptr [ebp-1C],eax
 004D2723    mov        byte ptr [ebp-18],0B
 004D2727    lea        edx,[ebp-1C]
 004D272A    xor        ecx,ecx
 004D272C    pop        eax
 004D272D    call       Format
 004D2732    mov        ecx,dword ptr [ebp-10]
 004D2735    mov        dl,1
 004D2737    mov        eax,[004C6D20]; EZSQLException
 004D273C    call       EZSQLException.Create; EZSQLException.Create
 004D2741    call       @RaiseExcept
 004D2746    mov        eax,dword ptr [ebp-8]
 004D2749    call       @DynArrayHigh
 004D274E    mov        ebx,eax
 004D2750    test       ebx,ebx
>004D2752    jl         004D2785
 004D2754    inc        ebx
 004D2755    xor        esi,esi
 004D2757    mov        eax,dword ptr [ebp-8]
 004D275A    test       eax,eax
>004D275C    je         004D2763
 004D275E    cmp        esi,dword ptr [eax-4]
>004D2761    jb         004D2768
 004D2763    call       @BoundErr
 004D2768    mov        eax,dword ptr [eax+esi*4]
 004D276B    mov        edx,dword ptr [ebp-0C]
 004D276E    call       @LStrCmp
>004D2773    jne        004D2781
 004D2775    mov        eax,edi
 004D2777    mov        edx,dword ptr [ebp-0C]
 004D277A    call       @LStrAsg
>004D277F    jmp        004D2785
 004D2781    inc        esi
 004D2782    dec        ebx
<004D2783    jne        004D2757
 004D2785    cmp        dword ptr [edi],0
>004D2788    jne        004D27C8
 004D278A    lea        eax,[ebp-20]
 004D278D    push       eax
 004D278E    lea        edx,[ebp-24]
 004D2791    mov        eax,[0061C0A0]; ^#122.sResString52:TResStringRec
 004D2796    call       LoadResString
 004D279B    mov        eax,dword ptr [ebp-24]
 004D279E    push       eax
 004D279F    mov        eax,dword ptr [ebp-0C]
 004D27A2    mov        dword ptr [ebp-1C],eax
 004D27A5    mov        byte ptr [ebp-18],0B
 004D27A9    lea        edx,[ebp-1C]
 004D27AC    xor        ecx,ecx
 004D27AE    pop        eax
 004D27AF    call       Format
 004D27B4    mov        ecx,dword ptr [ebp-20]
 004D27B7    mov        dl,1
 004D27B9    mov        eax,[004C6D20]; EZSQLException
 004D27BE    call       EZSQLException.Create; EZSQLException.Create
 004D27C3    call       @RaiseExcept
 004D27C8    xor        eax,eax
 004D27CA    pop        edx
 004D27CB    pop        ecx
 004D27CC    pop        ecx
 004D27CD    mov        dword ptr fs:[eax],edx
 004D27D0    push       4D280D
 004D27D5    lea        eax,[ebp-24]
 004D27D8    mov        edx,2
 004D27DD    call       @LStrArrayClr
 004D27E2    lea        eax,[ebp-14]
 004D27E5    mov        edx,3
 004D27EA    call       @LStrArrayClr
 004D27EF    lea        eax,[ebp-8]
 004D27F2    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 004D27F8    call       @DynArrayClear
 004D27FD    lea        eax,[ebp-4]
 004D2800    call       @LStrClr
 004D2805    ret
<004D2806    jmp        @HandleFinally
<004D280B    jmp        004D27D5
 004D280D    pop        edi
 004D280E    pop        esi
 004D280F    pop        ebx
 004D2810    mov        esp,ebp
 004D2812    pop        ebp
 004D2813    ret
*}
//end;

//004D2820
//procedure sub_004D2820(?:?);
//begin
{*
 004D2820    push       ebp
 004D2821    mov        ebp,esp
 004D2823    add        esp,0FFFFFFF0
 004D2826    xor        eax,eax
 004D2828    mov        dword ptr [ebp-4],eax
 004D282B    mov        dword ptr [ebp-8],eax
 004D282E    xor        eax,eax
 004D2830    push       ebp
 004D2831    push       4D2898
 004D2836    push       dword ptr fs:[eax]
 004D2839    mov        dword ptr fs:[eax],esp
 004D283C    lea        eax,[ebp-4]
 004D283F    push       eax
 004D2840    lea        edx,[ebp-8]
 004D2843    mov        eax,[0061B9AC]; ^#122.sResString51:TResStringRec
 004D2848    call       LoadResString
 004D284D    mov        eax,dword ptr [ebp-8]
 004D2850    push       eax
 004D2851    mov        eax,dword ptr [ebp+8]
 004D2854    mov        eax,dword ptr [eax-4]
 004D2857    mov        dword ptr [ebp-10],eax
 004D285A    mov        byte ptr [ebp-0C],0B
 004D285E    lea        edx,[ebp-10]
 004D2861    xor        ecx,ecx
 004D2863    pop        eax
 004D2864    call       Format
 004D2869    mov        ecx,dword ptr [ebp-4]
 004D286C    mov        dl,1
 004D286E    mov        eax,[004C6D20]; EZSQLException
 004D2873    call       EZSQLException.Create; EZSQLException.Create
 004D2878    call       @RaiseExcept
 004D287D    xor        eax,eax
 004D287F    pop        edx
 004D2880    pop        ecx
 004D2881    pop        ecx
 004D2882    mov        dword ptr fs:[eax],edx
 004D2885    push       4D289F
 004D288A    lea        eax,[ebp-8]
 004D288D    mov        edx,2
 004D2892    call       @LStrArrayClr
 004D2897    ret
<004D2898    jmp        @HandleFinally
<004D289D    jmp        004D288A
 004D289F    mov        esp,ebp
 004D28A1    pop        ebp
 004D28A2    ret
*}
//end;

//004D28A4
//procedure sub_004D28A4(?:?; ?:?; ?:AnsiString; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004D28A4    push       ebp
 004D28A5    mov        ebp,esp
 004D28A7    push       ecx
 004D28A8    mov        ecx,4
 004D28AD    push       0
 004D28AF    push       0
 004D28B1    dec        ecx
<004D28B2    jne        004D28AD
 004D28B4    xchg       ecx,dword ptr [ebp-4]
 004D28B7    push       ebx
 004D28B8    push       esi
 004D28B9    push       edi
 004D28BA    mov        dword ptr [ebp-0C],ecx
 004D28BD    mov        dword ptr [ebp-8],edx
 004D28C0    mov        dword ptr [ebp-4],eax
 004D28C3    mov        esi,dword ptr [ebp+8]
 004D28C6    mov        edi,dword ptr [ebp+10]
 004D28C9    xor        eax,eax
 004D28CB    push       ebp
 004D28CC    push       4D2B8C
 004D28D1    push       dword ptr fs:[eax]
 004D28D4    mov        dword ptr fs:[eax],esp
 004D28D7    mov        eax,dword ptr [ebp-0C]
 004D28DA    mov        edx,4D2BA4; 'localhost'
 004D28DF    call       @LStrAsg
 004D28E4    mov        eax,dword ptr [ebp+18]
 004D28E7    xor        edx,edx
 004D28E9    mov        dword ptr [eax],edx
 004D28EB    mov        eax,dword ptr [ebp+14]
 004D28EE    call       @LStrClr
 004D28F3    mov        eax,edi
 004D28F5    call       @LStrClr
 004D28FA    mov        eax,dword ptr [ebp+0C]
 004D28FD    call       @LStrClr
 004D2902    mov        eax,esi
 004D2904    mov        edx,dword ptr [eax]
 004D2906    call       dword ptr [edx+44]
 004D2909    lea        eax,[ebp-10]
 004D290C    push       eax
 004D290D    mov        eax,dword ptr [ebp-4]
 004D2910    call       @LStrLen
 004D2915    mov        ecx,eax
 004D2917    sub        ecx,5
>004D291A    jno        004D2921
 004D291C    call       @IntOver
 004D2921    mov        edx,6
 004D2926    mov        eax,dword ptr [ebp-4]
 004D2929    call       @LStrCopy
 004D292E    mov        edx,dword ptr [ebp-10]
 004D2931    mov        eax,4D2BB8; ':'
 004D2936    call       004BEC98
 004D293B    mov        ebx,eax
 004D293D    test       ebx,ebx
>004D293F    jle        004D296E
 004D2941    lea        eax,[ebp-10]
 004D2944    push       eax
 004D2945    mov        eax,dword ptr [ebp-10]
 004D2948    call       @LStrLen
 004D294D    mov        ecx,eax
 004D294F    sub        ecx,ebx
>004D2951    jno        004D2958
 004D2953    call       @IntOver
 004D2958    mov        edx,ebx
 004D295A    add        edx,1
>004D295D    jno        004D2964
 004D295F    call       @IntOver
 004D2964    mov        eax,dword ptr [ebp-10]
 004D2967    call       @LStrCopy
>004D296C    jmp        004D2975
 004D296E    push       ebp
 004D296F    call       004D2820
 004D2974    pop        ecx
 004D2975    mov        edx,dword ptr [ebp-10]
 004D2978    mov        eax,4D2BC4; '//'
 004D297D    call       @LStrPos
 004D2982    dec        eax
>004D2983    jne        004D2A93
 004D2989    lea        eax,[ebp-10]
 004D298C    mov        ecx,2
 004D2991    mov        edx,1
 004D2996    call       @LStrDelete
 004D299B    mov        edx,dword ptr [ebp-10]
 004D299E    mov        eax,4D2BD0; '/:?'
 004D29A3    call       004BEC98
 004D29A8    mov        ebx,eax
 004D29AA    test       ebx,ebx
>004D29AC    jne        004D29B5
 004D29AE    push       ebp
 004D29AF    call       004D2820
 004D29B4    pop        ecx
 004D29B5    mov        eax,dword ptr [ebp-0C]
 004D29B8    push       eax
 004D29B9    mov        ecx,ebx
 004D29BB    sub        ecx,1
>004D29BE    jno        004D29C5
 004D29C0    call       @IntOver
 004D29C5    mov        edx,1
 004D29CA    mov        eax,dword ptr [ebp-10]
 004D29CD    call       @LStrCopy
 004D29D2    mov        ecx,ebx
 004D29D4    sub        ecx,1
>004D29D7    jno        004D29DE
 004D29D9    call       @IntOver
 004D29DE    lea        eax,[ebp-10]
 004D29E1    mov        edx,1
 004D29E6    call       @LStrDelete
 004D29EB    mov        edx,dword ptr [ebp-10]
 004D29EE    mov        eax,4D2BB8; ':'
 004D29F3    call       @LStrPos
 004D29F8    dec        eax
>004D29F9    jne        004D2A6A
 004D29FB    lea        eax,[ebp-10]
 004D29FE    mov        ecx,1
 004D2A03    mov        edx,1
 004D2A08    call       @LStrDelete
 004D2A0D    mov        edx,dword ptr [ebp-10]
 004D2A10    mov        eax,4D2BDC; '/?'
 004D2A15    call       004BEC98
 004D2A1A    mov        ebx,eax
 004D2A1C    test       ebx,ebx
>004D2A1E    jne        004D2A27
 004D2A20    push       ebp
 004D2A21    call       004D2820
 004D2A26    pop        ecx
 004D2A27    lea        eax,[ebp-14]
 004D2A2A    push       eax
 004D2A2B    mov        ecx,ebx
 004D2A2D    sub        ecx,1
>004D2A30    jno        004D2A37
 004D2A32    call       @IntOver
 004D2A37    mov        edx,1
 004D2A3C    mov        eax,dword ptr [ebp-10]
 004D2A3F    call       @LStrCopy
 004D2A44    mov        eax,dword ptr [ebp-14]
 004D2A47    call       StrToInt
 004D2A4C    mov        edx,dword ptr [ebp+18]
 004D2A4F    mov        dword ptr [edx],eax
 004D2A51    mov        ecx,ebx
 004D2A53    sub        ecx,1
>004D2A56    jno        004D2A5D
 004D2A58    call       @IntOver
 004D2A5D    lea        eax,[ebp-10]
 004D2A60    mov        edx,1
 004D2A65    call       @LStrDelete
 004D2A6A    mov        edx,dword ptr [ebp-10]
 004D2A6D    mov        eax,4D2BE8; '/'
 004D2A72    call       @LStrPos
 004D2A77    dec        eax
>004D2A78    je         004D2A81
 004D2A7A    push       ebp
 004D2A7B    call       004D2820
 004D2A80    pop        ecx
 004D2A81    lea        eax,[ebp-10]
 004D2A84    mov        ecx,1
 004D2A89    mov        edx,1
 004D2A8E    call       @LStrDelete
 004D2A93    mov        edx,dword ptr [ebp-10]
 004D2A96    mov        eax,4D2BF4; '?'
 004D2A9B    call       004BEC98
 004D2AA0    mov        ebx,eax
 004D2AA2    test       ebx,ebx
>004D2AA4    jle        004D2AE3
 004D2AA6    mov        eax,dword ptr [ebp+14]
 004D2AA9    push       eax
 004D2AAA    mov        ecx,ebx
 004D2AAC    sub        ecx,1
>004D2AAF    jno        004D2AB6
 004D2AB1    call       @IntOver
 004D2AB6    mov        edx,1
 004D2ABB    mov        eax,dword ptr [ebp-10]
 004D2ABE    call       @LStrCopy
 004D2AC3    lea        eax,[ebp-10]
 004D2AC6    mov        ecx,ebx
 004D2AC8    mov        edx,1
 004D2ACD    call       @LStrDelete
 004D2AD2    mov        ecx,4D2C00; ';'
 004D2AD7    mov        edx,dword ptr [ebp-10]
 004D2ADA    mov        eax,esi
 004D2ADC    call       004BF370
>004D2AE1    jmp        004D2AEE
 004D2AE3    mov        eax,dword ptr [ebp+14]
 004D2AE6    mov        edx,dword ptr [ebp-10]
 004D2AE9    call       @LStrAsg
 004D2AEE    cmp        dword ptr [ebp-8],0
>004D2AF2    je         004D2AFE
 004D2AF4    mov        edx,dword ptr [ebp-8]
 004D2AF7    mov        eax,esi
 004D2AF9    mov        ecx,dword ptr [eax]
 004D2AFB    call       dword ptr [ecx+40]
 004D2AFE    lea        ecx,[ebp-18]
 004D2B01    mov        edx,4D2C0C; 'UID'
 004D2B06    mov        eax,esi
 004D2B08    call       TStrings.GetValue
 004D2B0D    mov        edx,dword ptr [ebp-18]
 004D2B10    mov        eax,edi
 004D2B12    call       @LStrAsg
 004D2B17    cmp        dword ptr [edi],0
>004D2B1A    jne        004D2B35
 004D2B1C    lea        ecx,[ebp-1C]
 004D2B1F    mov        edx,4D2C18; 'username'
 004D2B24    mov        eax,esi
 004D2B26    call       TStrings.GetValue
 004D2B2B    mov        edx,dword ptr [ebp-1C]
 004D2B2E    mov        eax,edi
 004D2B30    call       @LStrAsg
 004D2B35    lea        ecx,[ebp-20]
 004D2B38    mov        edx,4D2C2C; 'PWD'
 004D2B3D    mov        eax,esi
 004D2B3F    call       TStrings.GetValue
 004D2B44    mov        edx,dword ptr [ebp-20]
 004D2B47    mov        eax,dword ptr [ebp+0C]
 004D2B4A    call       @LStrAsg
 004D2B4F    mov        eax,dword ptr [ebp+0C]
 004D2B52    cmp        dword ptr [eax],0
>004D2B55    jne        004D2B71
 004D2B57    lea        ecx,[ebp-24]
 004D2B5A    mov        edx,4D2C38; 'password'
 004D2B5F    mov        eax,esi
 004D2B61    call       TStrings.GetValue
 004D2B66    mov        edx,dword ptr [ebp-24]
 004D2B69    mov        eax,dword ptr [ebp+0C]
 004D2B6C    call       @LStrAsg
 004D2B71    xor        eax,eax
 004D2B73    pop        edx
 004D2B74    pop        ecx
 004D2B75    pop        ecx
 004D2B76    mov        dword ptr fs:[eax],edx
 004D2B79    push       4D2B93
 004D2B7E    lea        eax,[ebp-24]
 004D2B81    mov        edx,6
 004D2B86    call       @LStrArrayClr
 004D2B8B    ret
<004D2B8C    jmp        @HandleFinally
<004D2B91    jmp        004D2B7E
 004D2B93    pop        edi
 004D2B94    pop        esi
 004D2B95    pop        ebx
 004D2B96    mov        esp,ebp
 004D2B98    pop        ebp
 004D2B99    ret        14
*}
//end;

//004D2C44
//function sub_004D2C44(?:?; ?:?):?;
//begin
{*
 004D2C44    xor        ecx,ecx
 004D2C46    mov        cl,dl
 004D2C48    cmp        ecx,0E
>004D2C4B    ja         004D2CE0
 004D2C51    mov        cl,byte ptr [ecx+4D2C5E]
 004D2C57    jmp        dword ptr [ecx*4+4D2C6D]
 004D2C57    db         0
 004D2C57    db         1
 004D2C57    db         1
 004D2C57    db         1
 004D2C57    db         1
 004D2C57    db         1
 004D2C57    db         1
 004D2C57    db         1
 004D2C57    db         1
 004D2C57    db         2
 004D2C57    db         2
 004D2C57    db         3
 004D2C57    db         5
 004D2C57    db         6
 004D2C57    db         4
 004D2C57    dd         4D2CE0
 004D2C57    dd         4D2C89
 004D2C57    dd         4D2C90
 004D2C57    dd         4D2C93
 004D2C57    dd         4D2CA6
 004D2C57    dd         4D2CB8
 004D2C57    dd         4D2CCD
 004D2C89    dec        eax
 004D2C8A    sub        al,0A
 004D2C8C    setb       al
 004D2C8F    ret
 004D2C90    mov        al,1
 004D2C92    ret
 004D2C93    add        al,0F7
 004D2C95    sub        al,3
>004D2C97    jb         004D2CA3
 004D2C99    add        al,0FD
 004D2C9B    sub        al,3
>004D2C9D    jb         004D2CA3
 004D2C9F    xor        eax,eax
>004D2CA1    jmp        004D2CEE
 004D2CA3    mov        al,1
 004D2CA5    ret
 004D2CA6    add        al,0F7
 004D2CA8    sub        al,2
>004D2CAA    jb         004D2CB5
 004D2CAC    dec        eax
 004D2CAD    sub        al,3
>004D2CAF    jb         004D2CB5
 004D2CB1    xor        eax,eax
>004D2CB3    jmp        004D2CEE
 004D2CB5    mov        al,1
 004D2CB7    ret
 004D2CB8    add        al,0F7
 004D2CBA    sub        al,2
>004D2CBC    jb         004D2CCA
 004D2CBE    sub        al,1
>004D2CC0    je         004D2CCA
 004D2CC2    sub        al,2
>004D2CC4    je         004D2CCA
 004D2CC6    xor        eax,eax
>004D2CC8    jmp        004D2CEE
 004D2CCA    mov        al,1
 004D2CCC    ret
 004D2CCD    add        al,0F7
 004D2CCF    sub        al,2
>004D2CD1    jb         004D2CDD
 004D2CD3    add        al,0FE
 004D2CD5    sub        al,2
>004D2CD7    jb         004D2CDD
 004D2CD9    xor        eax,eax
>004D2CDB    jmp        004D2CEE
 004D2CDD    mov        al,1
 004D2CDF    ret
 004D2CE0    cmp        al,dl
>004D2CE2    jne        004D2CE8
 004D2CE4    test       al,al
>004D2CE6    jne        004D2CEC
 004D2CE8    xor        eax,eax
>004D2CEA    jmp        004D2CEE
 004D2CEC    mov        al,1
 004D2CEE    ret
*}
//end;

//004D2CF0
//procedure sub_004D2CF0(?:?; ?:AnsiString);
//begin
{*
 004D2CF0    push       ebp
 004D2CF1    mov        ebp,esp
 004D2CF3    push       ebx
 004D2CF4    mov        ebx,edx
 004D2CF6    and        eax,7F
 004D2CF9    cmp        eax,11
>004D2CFC    ja         004D2E50
 004D2D02    jmp        dword ptr [eax*4+4D2D09]
 004D2D02    dd         4D2E50
 004D2D02    dd         4D2D51
 004D2D02    dd         4D2D60
 004D2D02    dd         4D2D6F
 004D2D02    dd         4D2D7E
 004D2D02    dd         4D2D8D
 004D2D02    dd         4D2D9C
 004D2D02    dd         4D2DAB
 004D2D02    dd         4D2DBA
 004D2D02    dd         4D2DC9
 004D2D02    dd         4D2DD8
 004D2D02    dd         4D2DE7
 004D2D02    dd         4D2DF6
 004D2D02    dd         4D2E05
 004D2D02    dd         4D2E14
 004D2D02    dd         4D2E23
 004D2D02    dd         4D2E32
 004D2D02    dd         4D2E41
 004D2D51    mov        eax,ebx
 004D2D53    mov        edx,4D2E68; 'Boolean'
 004D2D58    call       @LStrAsg
 004D2D5D    pop        ebx
 004D2D5E    pop        ebp
 004D2D5F    ret
 004D2D60    mov        eax,ebx
 004D2D62    mov        edx,4D2E78; 'Byte'
 004D2D67    call       @LStrAsg
 004D2D6C    pop        ebx
 004D2D6D    pop        ebp
 004D2D6E    ret
 004D2D6F    mov        eax,ebx
 004D2D71    mov        edx,4D2E88; 'Short'
 004D2D76    call       @LStrAsg
 004D2D7B    pop        ebx
 004D2D7C    pop        ebp
 004D2D7D    ret
 004D2D7E    mov        eax,ebx
 004D2D80    mov        edx,4D2E98; 'Integer'
 004D2D85    call       @LStrAsg
 004D2D8A    pop        ebx
 004D2D8B    pop        ebp
 004D2D8C    ret
 004D2D8D    mov        eax,ebx
 004D2D8F    mov        edx,4D2EA8; 'Long'
 004D2D94    call       @LStrAsg
 004D2D99    pop        ebx
 004D2D9A    pop        ebp
 004D2D9B    ret
 004D2D9C    mov        eax,ebx
 004D2D9E    mov        edx,4D2EB8; 'Float'
 004D2DA3    call       @LStrAsg
 004D2DA8    pop        ebx
 004D2DA9    pop        ebp
 004D2DAA    ret
 004D2DAB    mov        eax,ebx
 004D2DAD    mov        edx,4D2EC8; 'Double'
 004D2DB2    call       @LStrAsg
 004D2DB7    pop        ebx
 004D2DB8    pop        ebp
 004D2DB9    ret
 004D2DBA    mov        eax,ebx
 004D2DBC    mov        edx,4D2ED8; 'BigDecimal'
 004D2DC1    call       @LStrAsg
 004D2DC6    pop        ebx
 004D2DC7    pop        ebp
 004D2DC8    ret
 004D2DC9    mov        eax,ebx
 004D2DCB    mov        edx,4D2EEC; 'String'
 004D2DD0    call       @LStrAsg
 004D2DD5    pop        ebx
 004D2DD6    pop        ebp
 004D2DD7    ret
 004D2DD8    mov        eax,ebx
 004D2DDA    mov        edx,4D2EFC; 'UnicodeString'
 004D2DDF    call       @LStrAsg
 004D2DE4    pop        ebx
 004D2DE5    pop        ebp
 004D2DE6    ret
 004D2DE7    mov        eax,ebx
 004D2DE9    mov        edx,4D2F14; 'Bytes'
 004D2DEE    call       @LStrAsg
 004D2DF3    pop        ebx
 004D2DF4    pop        ebp
 004D2DF5    ret
 004D2DF6    mov        eax,ebx
 004D2DF8    mov        edx,4D2F24; 'Date'
 004D2DFD    call       @LStrAsg
 004D2E02    pop        ebx
 004D2E03    pop        ebp
 004D2E04    ret
 004D2E05    mov        eax,ebx
 004D2E07    mov        edx,4D2F34; 'Time'
 004D2E0C    call       @LStrAsg
 004D2E11    pop        ebx
 004D2E12    pop        ebp
 004D2E13    ret
 004D2E14    mov        eax,ebx
 004D2E16    mov        edx,4D2F44; 'Timestamp'
 004D2E1B    call       @LStrAsg
 004D2E20    pop        ebx
 004D2E21    pop        ebp
 004D2E22    ret
 004D2E23    mov        eax,ebx
 004D2E25    mov        edx,4D2F58; 'AsciiStream'
 004D2E2A    call       @LStrAsg
 004D2E2F    pop        ebx
 004D2E30    pop        ebp
 004D2E31    ret
 004D2E32    mov        eax,ebx
 004D2E34    mov        edx,4D2F6C; 'UnicodeStream'
 004D2E39    call       @LStrAsg
 004D2E3E    pop        ebx
 004D2E3F    pop        ebp
 004D2E40    ret
 004D2E41    mov        eax,ebx
 004D2E43    mov        edx,4D2F84; 'BinaryStream'
 004D2E48    call       @LStrAsg
 004D2E4D    pop        ebx
 004D2E4E    pop        ebp
 004D2E4F    ret
 004D2E50    mov        eax,ebx
 004D2E52    mov        edx,4D2F9C; 'Unknown'
 004D2E57    call       @LStrAsg
 004D2E5C    pop        ebx
 004D2E5D    pop        ebp
 004D2E5E    ret
*}
//end;

//004D2FA4
//procedure sub_004D2FA4(?:Exception);
//begin
{*
 004D2FA4    push       ebp
 004D2FA5    mov        ebp,esp
 004D2FA7    push       ebx
 004D2FA8    mov        ebx,eax
 004D2FAA    mov        eax,ebx
 004D2FAC    mov        edx,dword ptr ds:[4C6D20]; EZSQLException
 004D2FB2    call       @IsClass
 004D2FB7    test       al,al
>004D2FB9    je         004D2FD1
 004D2FBB    mov        ecx,ebx
 004D2FBD    mov        dl,1
 004D2FBF    mov        eax,[004C6D20]; EZSQLException
 004D2FC4    call       EZSQLException.Create; EZSQLException.Create
 004D2FC9    call       @RaiseExcept
 004D2FCE    pop        ebx
 004D2FCF    pop        ebp
 004D2FD0    ret
 004D2FD1    mov        ecx,dword ptr [ebx+4]; Exception.?f4:String
 004D2FD4    mov        dl,1
 004D2FD6    mov        eax,[004C6D20]; EZSQLException
 004D2FDB    call       EZSQLException.Create; EZSQLException.Create
 004D2FE0    call       @RaiseExcept
 004D2FE5    pop        ebx
 004D2FE6    pop        ebp
 004D2FE7    ret
*}
//end;

//004D2FE8
//procedure sub_004D2FE8(?:?; ?:?);
//begin
{*
 004D2FE8    push       ebp
 004D2FE9    mov        ebp,esp
 004D2FEB    add        esp,0FFFFFFF4
 004D2FEE    push       ebx
 004D2FEF    push       esi
 004D2FF0    push       edi
 004D2FF1    mov        dword ptr [ebp-8],edx
 004D2FF4    mov        dword ptr [ebp-4],eax
 004D2FF7    mov        eax,dword ptr [ebp-4]
 004D2FFA    mov        edi,dword ptr [eax+8]
 004D2FFD    sub        edi,1
>004D3000    jno        004D3007
 004D3002    call       @IntOver
 004D3007    test       edi,edi
>004D3009    jl         004D30CB
 004D300F    inc        edi
 004D3010    mov        dword ptr [ebp-0C],0
 004D3017    mov        edx,dword ptr [ebp-0C]
 004D301A    mov        eax,dword ptr [ebp-4]
 004D301D    call       TObjectList.GetItem
 004D3022    mov        esi,eax
 004D3024    mov        dl,1
 004D3026    mov        eax,[004D5F00]; TZColumnInfo
 004D302B    call       TZColumnInfo.Create; TZColumnInfo.Create
 004D3030    mov        ebx,eax
 004D3032    mov        al,byte ptr [esi+4]
 004D3035    mov        byte ptr [ebx+4],al; TZColumnInfo.?f4:LongBool
 004D3038    mov        al,byte ptr [esi+5]
 004D303B    mov        byte ptr [ebx+5],al; TZColumnInfo.?f5:byte
 004D303E    mov        al,byte ptr [esi+6]
 004D3041    mov        byte ptr [ebx+6],al; TZColumnInfo.?f6:byte
 004D3044    mov        al,byte ptr [esi+7]
 004D3047    mov        byte ptr [ebx+7],al; TZColumnInfo.?f7:byte
 004D304A    mov        al,byte ptr [esi+8]
 004D304D    mov        byte ptr [ebx+8],al; TZColumnInfo.?f8:byte
 004D3050    mov        al,byte ptr [esi+9]
 004D3053    mov        byte ptr [ebx+9],al; TZColumnInfo.?f9:byte
 004D3056    mov        eax,dword ptr [esi+0C]
 004D3059    mov        dword ptr [ebx+0C],eax; TZColumnInfo.?fC:dword
 004D305C    lea        eax,[ebx+10]; TZColumnInfo.?f10:String
 004D305F    mov        edx,dword ptr [esi+10]
 004D3062    call       @LStrAsg
 004D3067    lea        eax,[ebx+14]; TZColumnInfo.?f14:String
 004D306A    mov        edx,dword ptr [esi+14]
 004D306D    call       @LStrAsg
 004D3072    lea        eax,[ebx+18]; TZColumnInfo.?f18:String
 004D3075    mov        edx,dword ptr [esi+18]
 004D3078    call       @LStrAsg
 004D307D    mov        eax,dword ptr [esi+1C]
 004D3080    mov        dword ptr [ebx+1C],eax; TZColumnInfo.?f1C:Integer
 004D3083    mov        eax,dword ptr [esi+20]
 004D3086    mov        dword ptr [ebx+20],eax; TZColumnInfo.?f20:dword
 004D3089    lea        eax,[ebx+24]; TZColumnInfo.?f24:String
 004D308C    mov        edx,dword ptr [esi+24]
 004D308F    call       @LStrAsg
 004D3094    lea        eax,[ebx+28]; TZColumnInfo.?f28:String
 004D3097    mov        edx,dword ptr [esi+28]
 004D309A    call       @LStrAsg
 004D309F    mov        al,byte ptr [esi+2C]
 004D30A2    mov        byte ptr [ebx+2C],al; TZColumnInfo.?f2C:byte
 004D30A5    mov        al,byte ptr [esi+2D]
 004D30A8    mov        byte ptr [ebx+2D],al; TZColumnInfo.?f2D:byte
 004D30AB    mov        al,byte ptr [esi+2E]
 004D30AE    mov        byte ptr [ebx+2E],al; TZColumnInfo.?f2E:byte
 004D30B1    mov        al,byte ptr [esi+2F]
 004D30B4    mov        byte ptr [ebx+2F],al; TZColumnInfo.?f2F:byte
 004D30B7    mov        edx,ebx
 004D30B9    mov        eax,dword ptr [ebp-8]
 004D30BC    call       00433178
 004D30C1    inc        dword ptr [ebp-0C]
 004D30C4    dec        edi
<004D30C5    jne        004D3017
 004D30CB    pop        edi
 004D30CC    pop        esi
 004D30CD    pop        ebx
 004D30CE    mov        esp,ebp
 004D30D0    pop        ebp
 004D30D1    ret
*}
//end;

//004D30D4
//procedure sub_004D30D4(?:TZAbstractStatement; ?:AnsiString; ?:AnsiString; ?:?);
//begin
{*
 004D30D4    push       ebp
 004D30D5    mov        ebp,esp
 004D30D7    add        esp,0FFFFFFF4
 004D30DA    push       ebx
 004D30DB    push       esi
 004D30DC    xor        ebx,ebx
 004D30DE    mov        dword ptr [ebp-0C],ebx
 004D30E1    mov        dword ptr [ebp-8],ecx
 004D30E4    mov        esi,edx
 004D30E6    mov        dword ptr [ebp-4],eax
 004D30E9    mov        ebx,dword ptr [ebp+8]
 004D30EC    mov        eax,dword ptr [ebp-4]
 004D30EF    call       @IntfAddRef
 004D30F4    xor        eax,eax
 004D30F6    push       ebp
 004D30F7    push       4D3167
 004D30FC    push       dword ptr fs:[eax]
 004D30FF    mov        dword ptr fs:[eax],esp
 004D3102    mov        eax,dword ptr [ebp-4]
 004D3105    mov        edx,dword ptr [eax]
 004D3107    call       dword ptr [edx+8C]
 004D310D    mov        ecx,ebx
 004D310F    mov        edx,esi
 004D3111    call       TStrings.GetValue
 004D3116    cmp        dword ptr [ebx],0
>004D3119    jne        004D313A
 004D311B    lea        edx,[ebp-0C]
 004D311E    mov        eax,dword ptr [ebp-4]
 004D3121    mov        ecx,dword ptr [eax]
 004D3123    call       dword ptr [ecx+88]
 004D3129    mov        eax,dword ptr [ebp-0C]
 004D312C    mov        edx,dword ptr [eax]
 004D312E    call       dword ptr [edx+68]
 004D3131    mov        ecx,ebx
 004D3133    mov        edx,esi
 004D3135    call       TStrings.GetValue
 004D313A    cmp        dword ptr [ebx],0
>004D313D    jne        004D3149
 004D313F    mov        eax,ebx
 004D3141    mov        edx,dword ptr [ebp-8]
 004D3144    call       @LStrAsg
 004D3149    xor        eax,eax
 004D314B    pop        edx
 004D314C    pop        ecx
 004D314D    pop        ecx
 004D314E    mov        dword ptr fs:[eax],edx
 004D3151    push       4D316E
 004D3156    lea        eax,[ebp-0C]
 004D3159    call       @IntfClear
 004D315E    lea        eax,[ebp-4]
 004D3161    call       @IntfClear
 004D3166    ret
<004D3167    jmp        @HandleFinally
<004D316C    jmp        004D3156
 004D316E    pop        esi
 004D316F    pop        ebx
 004D3170    mov        esp,ebp
 004D3172    pop        ebp
 004D3173    ret        4
*}
//end;

//004D3178
//procedure sub_004D3178(?:AnsiString; ?:AnsiString; ?:?; ?:?);
//begin
{*
 004D3178    push       ebp
 004D3179    mov        ebp,esp
 004D317B    push       ecx
 004D317C    push       ebx
 004D317D    push       esi
 004D317E    push       edi
 004D317F    mov        byte ptr [ebp-1],cl
 004D3182    mov        edi,edx
 004D3184    mov        ebx,eax
 004D3186    mov        esi,dword ptr [ebp+8]
 004D3189    test       ebx,ebx
>004D318B    jne        004D3198
 004D318D    mov        eax,esi
 004D318F    mov        edx,edi
 004D3191    call       @LStrAsg
>004D3196    jmp        004D31A4
 004D3198    mov        ecx,esi
 004D319A    mov        dl,byte ptr [ebp-1]
 004D319D    mov        eax,ebx
 004D319F    call       AnsiQuotedStr
 004D31A4    pop        edi
 004D31A5    pop        esi
 004D31A6    pop        ebx
 004D31A7    pop        ecx
 004D31A8    pop        ebp
 004D31A9    ret        4
*}
//end;

//004D31AC
//procedure sub_004D31AC(?:AnsiString; ?:?; ?:AnsiString);
//begin
{*
 004D31AC    push       ebp
 004D31AD    mov        ebp,esp
 004D31AF    push       ebx
 004D31B0    push       esi
 004D31B1    push       edi
 004D31B2    mov        edi,ecx
 004D31B4    mov        ebx,edx
 004D31B6    mov        esi,eax
 004D31B8    push       edi
 004D31B9    mov        ecx,ebx
 004D31BB    mov        edx,4D31D4; 'null'
 004D31C0    mov        eax,esi
 004D31C2    call       004D3178
 004D31C7    pop        edi
 004D31C8    pop        esi
 004D31C9    pop        ebx
 004D31CA    pop        ebp
 004D31CB    ret
*}
//end;

//004D31DC
//procedure sub_004D31DC(?:AnsiString; ?:AnsiString);
//begin
{*
 004D31DC    push       ebp
 004D31DD    mov        ebp,esp
 004D31DF    push       ebx
 004D31E0    push       esi
 004D31E1    mov        esi,edx
 004D31E3    mov        ebx,eax
 004D31E5    test       ebx,ebx
>004D31E7    jne        004D31F7
 004D31E9    mov        eax,esi
 004D31EB    mov        edx,4D320C; '%'
 004D31F0    call       @LStrAsg
>004D31F5    jmp        004D3200
 004D31F7    mov        eax,esi
 004D31F9    mov        edx,ebx
 004D31FB    call       @LStrAsg
 004D3200    pop        esi
 004D3201    pop        ebx
 004D3202    pop        ebp
 004D3203    ret
*}
//end;

end.