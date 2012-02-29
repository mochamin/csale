{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDbcCache;

interface

uses
  Classes, Windows, Graphics;

type
  _DynArr_137_2 = array of String;//varType equivalent:varStrArg;
  _DynArr_137_3 = array of ?;
  _DynArr_137_4 = array of ?;
  _DynArr_137_5 = array of ?;//varType equivalent:varInteger;
  _DynArr_137_6 = array of ?;//varType equivalent:varInteger;
  TZRowAccessor = class(TObject)
  public
    f4:dword;//f4
    f8:dword;//f8
    fC:dword;//fC
    f10:.2;//f10
    f14:.3;//f14
    f18:.4;//f18
    f1C:.5;//f1C
    f20:.6;//f20
    f24:Pointer;//f24
    f28:byte;//f28
    f2C:String;//f2C
    destructor Destroy; virtual;
    //constructor Create(?:TZRowAccessor; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//004C8318
//constructor TZRowAccessor.Create(?:TZRowAccessor; _Dv__:Boolean);
//begin
{*
 004C8318    push       ebp
 004C8319    mov        ebp,esp
 004C831B    add        esp,0FFFFFFF4
 004C831E    push       ebx
 004C831F    push       esi
 004C8320    push       edi
 004C8321    test       dl,dl
>004C8323    je         004C832D
 004C8325    add        esp,0FFFFFFF0
 004C8328    call       @ClassCreate
 004C832D    mov        dword ptr [ebp-8],ecx
 004C8330    mov        byte ptr [ebp-1],dl
 004C8333    mov        ebx,eax
 004C8335    xor        eax,eax
 004C8337    mov        dword ptr [ebx+24],eax; TZRowAccessor.?f24:Pointer
 004C833A    mov        eax,dword ptr [ebp-8]
 004C833D    mov        eax,dword ptr [eax+8]
 004C8340    mov        dword ptr [ebx+0C],eax; TZRowAccessor.?fC:dword
 004C8343    xor        eax,eax
 004C8345    mov        dword ptr [ebx+8],eax; TZRowAccessor.?f8:dword
 004C8348    mov        eax,dword ptr [ebx+0C]; TZRowAccessor.?fC:dword
 004C834B    push       eax
 004C834C    lea        eax,[ebx+10]; TZRowAccessor.?f10:.2
 004C834F    mov        ecx,1
 004C8354    mov        edx,dword ptr ds:[4C81D0]; _DynArr_137_2
 004C835A    call       @DynArraySetLength
 004C835F    add        esp,4
 004C8362    mov        eax,dword ptr [ebx+0C]; TZRowAccessor.?fC:dword
 004C8365    push       eax
 004C8366    lea        eax,[ebx+14]; TZRowAccessor.?f14:.3
 004C8369    mov        ecx,1
 004C836E    mov        edx,dword ptr ds:[4C81F4]; _DynArr_137_3
 004C8374    call       @DynArraySetLength
 004C8379    add        esp,4
 004C837C    mov        eax,dword ptr [ebx+0C]; TZRowAccessor.?fC:dword
 004C837F    push       eax
 004C8380    lea        eax,[ebx+18]; TZRowAccessor.?f18:.4
 004C8383    mov        ecx,1
 004C8388    mov        edx,dword ptr ds:[4C8218]; _DynArr_137_4
 004C838E    call       @DynArraySetLength
 004C8393    add        esp,4
 004C8396    mov        eax,dword ptr [ebx+0C]; TZRowAccessor.?fC:dword
 004C8399    push       eax
 004C839A    lea        eax,[ebx+1C]; TZRowAccessor.?f1C:.5
 004C839D    mov        ecx,1
 004C83A2    mov        edx,dword ptr ds:[4C823C]; _DynArr_137_5
 004C83A8    call       @DynArraySetLength
 004C83AD    add        esp,4
 004C83B0    mov        eax,dword ptr [ebx+0C]; TZRowAccessor.?fC:dword
 004C83B3    push       eax
 004C83B4    lea        eax,[ebx+20]; TZRowAccessor.?f20:.6
 004C83B7    mov        ecx,1
 004C83BC    mov        edx,dword ptr ds:[4C8260]; _DynArr_137_6
 004C83C2    call       @DynArraySetLength
 004C83C7    add        esp,4
 004C83CA    mov        byte ptr [ebx+28],0; TZRowAccessor.?f28:byte
 004C83CE    mov        eax,dword ptr [ebx+0C]; TZRowAccessor.?fC:dword
 004C83D1    sub        eax,1
>004C83D4    jno        004C83DB
 004C83D6    call       @IntOver
 004C83DB    test       eax,eax
>004C83DD    jl         004C84CE
 004C83E3    inc        eax
 004C83E4    mov        dword ptr [ebp-0C],eax
 004C83E7    xor        esi,esi
 004C83E9    mov        edx,esi
 004C83EB    mov        eax,dword ptr [ebp-8]
 004C83EE    call       TObjectList.GetItem
 004C83F3    mov        edi,eax
 004C83F5    mov        eax,dword ptr [ebx+10]; TZRowAccessor.?f10:.2
 004C83F8    test       eax,eax
>004C83FA    je         004C8401
 004C83FC    cmp        esi,dword ptr [eax-4]
>004C83FF    jb         004C8406
 004C8401    call       @BoundErr
 004C8406    lea        eax,[eax+esi*4]
 004C8409    mov        edx,dword ptr [edi+14]
 004C840C    call       @LStrAsg
 004C8411    mov        eax,dword ptr [ebx+14]; TZRowAccessor.?f14:.3
 004C8414    test       eax,eax
>004C8416    je         004C841D
 004C8418    cmp        esi,dword ptr [eax-4]
>004C841B    jb         004C8422
 004C841D    call       @BoundErr
 004C8422    mov        dl,byte ptr [edi+5]
 004C8425    mov        byte ptr [eax+esi],dl
 004C8428    mov        eax,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004C842B    test       eax,eax
>004C842D    je         004C8434
 004C842F    cmp        esi,dword ptr [eax-4]
>004C8432    jb         004C8439
 004C8434    call       @BoundErr
 004C8439    mov        dl,byte ptr [edi+2C]
 004C843C    mov        byte ptr [eax+esi],dl
 004C843F    mov        edx,edi
 004C8441    mov        eax,ebx
 004C8443    call       004C8764
 004C8448    mov        edx,dword ptr [ebx+1C]; TZRowAccessor.?f1C:.5
 004C844B    test       edx,edx
>004C844D    je         004C8454
 004C844F    cmp        esi,dword ptr [edx-4]
>004C8452    jb         004C8459
 004C8454    call       @BoundErr
 004C8459    mov        dword ptr [edx+esi*4],eax
 004C845C    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004C845F    test       eax,eax
>004C8461    je         004C8468
 004C8463    cmp        esi,dword ptr [eax-4]
>004C8466    jb         004C846D
 004C8468    call       @BoundErr
 004C846D    mov        edx,dword ptr [ebx+8]; TZRowAccessor.?f8:dword
 004C8470    mov        dword ptr [eax+esi*4],edx
 004C8473    mov        eax,dword ptr [ebx+1C]; TZRowAccessor.?f1C:.5
 004C8476    test       eax,eax
>004C8478    je         004C847F
 004C847A    cmp        esi,dword ptr [eax-4]
>004C847D    jb         004C8484
 004C847F    call       @BoundErr
 004C8484    mov        eax,dword ptr [eax+esi*4]
 004C8487    add        eax,1
>004C848A    jno        004C8491
 004C848C    call       @IntOver
 004C8491    add        dword ptr [ebx+8],eax; TZRowAccessor.?f8:dword
>004C8494    jno        004C849B
 004C8496    call       @IntOver
 004C849B    cmp        byte ptr [ebx+28],0; TZRowAccessor.?f28:byte
>004C849F    jne        004C84BF
 004C84A1    mov        eax,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004C84A4    test       eax,eax
>004C84A6    je         004C84AD
 004C84A8    cmp        esi,dword ptr [eax-4]
>004C84AB    jb         004C84B2
 004C84AD    call       @BoundErr
 004C84B2    mov        al,byte ptr [eax+esi]
 004C84B5    add        al,0F1
 004C84B7    sub        al,3
>004C84B9    jb         004C84BF
 004C84BB    xor        eax,eax
>004C84BD    jmp        004C84C1
 004C84BF    mov        al,1
 004C84C1    mov        byte ptr [ebx+28],al; TZRowAccessor.?f28:byte
 004C84C4    inc        esi
 004C84C5    dec        dword ptr [ebp-0C]
<004C84C8    jne        004C83E9
 004C84CE    mov        eax,dword ptr [ebx+8]; TZRowAccessor.?f8:dword
 004C84D1    add        eax,6
>004C84D4    jno        004C84DB
 004C84D6    call       @IntOver
 004C84DB    mov        dword ptr [ebx+4],eax; TZRowAccessor.?f4:dword
 004C84DE    mov        eax,ebx
 004C84E0    cmp        byte ptr [ebp-1],0
>004C84E4    je         004C84F5
 004C84E6    call       @AfterConstruction
 004C84EB    pop        dword ptr fs:[0]
 004C84F2    add        esp,0C
 004C84F5    mov        eax,ebx
 004C84F7    pop        edi
 004C84F8    pop        esi
 004C84F9    pop        ebx
 004C84FA    mov        esp,ebp
 004C84FC    pop        ebp
 004C84FD    ret
*}
//end;

//004C8500
destructor TZRowAccessor.Destroy;
begin
{*
 004C8500    push       ebp
 004C8501    mov        ebp,esp
 004C8503    push       ebx
 004C8504    push       esi
 004C8505    call       @BeforeDestruction
 004C850A    mov        ebx,edx
 004C850C    mov        esi,eax
 004C850E    mov        edx,ebx
 004C8510    and        dl,0FC
 004C8513    mov        eax,esi
 004C8515    call       TObject.Destroy
 004C851A    test       bl,bl
>004C851C    jle        004C8525
 004C851E    mov        eax,esi
 004C8520    call       @ClassDestroy
 004C8525    pop        esi
 004C8526    pop        ebx
 004C8527    pop        ebp
 004C8528    ret
*}
end;

//004C852C
//procedure sub_004C852C(?:TZRowAccessor; ?:dword);
//begin
{*
 004C852C    push       ebp
 004C852D    mov        ebp,esp
 004C852F    xor        ecx,ecx
 004C8531    push       ecx
 004C8532    push       ecx
 004C8533    push       ecx
 004C8534    push       ecx
 004C8535    push       ecx
 004C8536    push       ebx
 004C8537    mov        ebx,edx
 004C8539    xor        edx,edx
 004C853B    push       ebp
 004C853C    push       4C85CB
 004C8541    push       dword ptr fs:[edx]
 004C8544    mov        dword ptr fs:[edx],esp
 004C8547    cmp        dword ptr [eax+24],0; TZRowAccessor.?f24:Pointer
>004C854B    jne        004C856E
 004C854D    lea        edx,[ebp-4]
 004C8550    mov        eax,[0061BCE8]; ^#122.sResString29:TResStringRec
 004C8555    call       LoadResString
 004C855A    mov        ecx,dword ptr [ebp-4]
 004C855D    mov        dl,1
 004C855F    mov        eax,[004C6D20]; EZSQLException
 004C8564    call       EZSQLException.Create; EZSQLException.Create
 004C8569    call       @RaiseExcept
 004C856E    test       ebx,ebx
>004C8570    jle        004C8577
 004C8572    cmp        ebx,dword ptr [eax+0C]; TZRowAccessor.?fC:dword
>004C8575    jle        004C85B0
 004C8577    lea        eax,[ebp-8]
 004C857A    push       eax
 004C857B    lea        edx,[ebp-0C]
 004C857E    mov        eax,[0061B758]; ^#122.sResString30:TResStringRec
 004C8583    call       LoadResString
 004C8588    mov        eax,dword ptr [ebp-0C]
 004C858B    mov        dword ptr [ebp-14],ebx
 004C858E    mov        byte ptr [ebp-10],0
 004C8592    lea        edx,[ebp-14]
 004C8595    xor        ecx,ecx
 004C8597    call       Format
 004C859C    mov        ecx,dword ptr [ebp-8]
 004C859F    mov        dl,1
 004C85A1    mov        eax,[004C6D20]; EZSQLException
 004C85A6    call       EZSQLException.Create; EZSQLException.Create
 004C85AB    call       @RaiseExcept
 004C85B0    xor        eax,eax
 004C85B2    pop        edx
 004C85B3    pop        ecx
 004C85B4    pop        ecx
 004C85B5    mov        dword ptr fs:[eax],edx
 004C85B8    push       4C85D2
 004C85BD    lea        eax,[ebp-0C]
 004C85C0    mov        edx,3
 004C85C5    call       @LStrArrayClr
 004C85CA    ret
<004C85CB    jmp        @HandleFinally
<004C85D0    jmp        004C85BD
 004C85D2    pop        ebx
 004C85D3    mov        esp,ebp
 004C85D5    pop        ebp
 004C85D6    ret
*}
//end;

//004C85D8
//procedure sub_004C85D8(?:dword; ?:dword; ?:?);
//begin
{*
 004C85D8    push       ebp
 004C85D9    mov        ebp,esp
 004C85DB    add        esp,0FFFFFFC4
 004C85DE    push       ebx
 004C85DF    push       esi
 004C85E0    push       edi
 004C85E1    xor        ebx,ebx
 004C85E3    mov        dword ptr [ebp-18],ebx
 004C85E6    mov        dword ptr [ebp-34],ebx
 004C85E9    mov        dword ptr [ebp-38],ebx
 004C85EC    mov        dword ptr [ebp-3C],ebx
 004C85EF    mov        dword ptr [ebp-8],ebx
 004C85F2    mov        dword ptr [ebp-0C],ebx
 004C85F5    mov        dword ptr [ebp-4],ebx
 004C85F8    mov        ebx,ecx
 004C85FA    mov        edi,edx
 004C85FC    mov        esi,eax
 004C85FE    xor        eax,eax
 004C8600    push       ebp
 004C8601    push       4C8756
 004C8606    push       dword ptr fs:[eax]
 004C8609    mov        dword ptr fs:[eax],esp
 004C860C    cmp        dword ptr [esi+24],0
>004C8610    jne        004C8633
 004C8612    lea        edx,[ebp-4]
 004C8615    mov        eax,[0061BCE8]; ^#122.sResString29:TResStringRec
 004C861A    call       LoadResString
 004C861F    mov        ecx,dword ptr [ebp-4]
 004C8622    mov        dl,1
 004C8624    mov        eax,[004C6D20]; EZSQLException
 004C8629    call       EZSQLException.Create; EZSQLException.Create
 004C862E    call       @RaiseExcept
 004C8633    test       edi,edi
>004C8635    jle        004C863C
 004C8637    cmp        edi,dword ptr [esi+0C]
>004C863A    jle        004C8675
 004C863C    lea        eax,[ebp-8]
 004C863F    push       eax
 004C8640    lea        edx,[ebp-0C]
 004C8643    mov        eax,[0061B758]; ^#122.sResString30:TResStringRec
 004C8648    call       LoadResString
 004C864D    mov        eax,dword ptr [ebp-0C]
 004C8650    mov        dword ptr [ebp-14],edi
 004C8653    mov        byte ptr [ebp-10],0
 004C8657    lea        edx,[ebp-14]
 004C865A    xor        ecx,ecx
 004C865C    call       Format
 004C8661    mov        ecx,dword ptr [ebp-8]
 004C8664    mov        dl,1
 004C8666    mov        eax,[004C6D20]; EZSQLException
 004C866B    call       EZSQLException.Create; EZSQLException.Create
 004C8670    call       @RaiseExcept
 004C8675    mov        eax,edi
 004C8677    sub        eax,1
>004C867A    jno        004C8681
 004C867C    call       @IntOver
 004C8681    mov        edx,dword ptr [esi+18]
 004C8684    test       edx,edx
>004C8686    je         004C868D
 004C8688    cmp        eax,dword ptr [edx-4]
>004C868B    jb         004C8692
 004C868D    call       @BoundErr
 004C8692    mov        al,byte ptr [edx+eax]
 004C8695    mov        edx,ebx
 004C8697    call       004D2C44
 004C869C    test       al,al
>004C869E    jne        004C8726
 004C86A4    lea        eax,[ebp-18]
 004C86A7    push       eax
 004C86A8    mov        dword ptr [ebp-30],edi
 004C86AB    mov        byte ptr [ebp-2C],0
 004C86AF    sub        edi,1
>004C86B2    jno        004C86B9
 004C86B4    call       @IntOver
 004C86B9    mov        eax,dword ptr [esi+18]
 004C86BC    test       eax,eax
>004C86BE    je         004C86C5
 004C86C0    cmp        edi,dword ptr [eax-4]
>004C86C3    jb         004C86CA
 004C86C5    call       @BoundErr
 004C86CA    mov        al,byte ptr [eax+edi]
 004C86CD    lea        edx,[ebp-34]
 004C86D0    call       004D2CF0
 004C86D5    mov        eax,dword ptr [ebp-34]
 004C86D8    mov        dword ptr [ebp-28],eax
 004C86DB    mov        byte ptr [ebp-24],0B
 004C86DF    lea        edx,[ebp-38]
 004C86E2    mov        eax,ebx
 004C86E4    call       004D2CF0
 004C86E9    mov        eax,dword ptr [ebp-38]
 004C86EC    mov        dword ptr [ebp-20],eax
 004C86EF    mov        byte ptr [ebp-1C],0B
 004C86F3    lea        eax,[ebp-30]
 004C86F6    push       eax
 004C86F7    lea        edx,[ebp-3C]
 004C86FA    mov        eax,[0061AED4]; ^#122.sResString31:TResStringRec
 004C86FF    call       LoadResString
 004C8704    mov        eax,dword ptr [ebp-3C]
 004C8707    mov        ecx,2
 004C870C    pop        edx
 004C870D    call       Format
 004C8712    mov        ecx,dword ptr [ebp-18]
 004C8715    mov        dl,1
 004C8717    mov        eax,[004C6D20]; EZSQLException
 004C871C    call       EZSQLException.Create; EZSQLException.Create
 004C8721    call       @RaiseExcept
 004C8726    xor        eax,eax
 004C8728    pop        edx
 004C8729    pop        ecx
 004C872A    pop        ecx
 004C872B    mov        dword ptr fs:[eax],edx
 004C872E    push       4C875D
 004C8733    lea        eax,[ebp-3C]
 004C8736    mov        edx,3
 004C873B    call       @LStrArrayClr
 004C8740    lea        eax,[ebp-18]
 004C8743    call       @LStrClr
 004C8748    lea        eax,[ebp-0C]
 004C874B    mov        edx,3
 004C8750    call       @LStrArrayClr
 004C8755    ret
<004C8756    jmp        @HandleFinally
<004C875B    jmp        004C8733
 004C875D    pop        edi
 004C875E    pop        esi
 004C875F    pop        ebx
 004C8760    mov        esp,ebp
 004C8762    pop        ebp
 004C8763    ret
*}
//end;

//004C8764
//function sub_004C8764:?;
//begin
{*
 004C8764    xor        eax,eax
 004C8766    mov        al,byte ptr [edx+2C]
 004C8769    cmp        eax,11
>004C876C    ja         004C882F
 004C8772    jmp        dword ptr [eax*4+4C8779]
 004C8772    dd         4C882F
 004C8772    dd         4C87C1
 004C8772    dd         4C87C7
 004C8772    dd         4C87CD
 004C8772    dd         4C87D3
 004C8772    dd         4C87D9
 004C8772    dd         4C87DF
 004C8772    dd         4C87E5
 004C8772    dd         4C87EB
 004C8772    dd         4C87F1
 004C8772    dd         4C87FF
 004C8772    dd         4C8815
 004C8772    dd         4C8823
 004C8772    dd         4C8823
 004C8772    dd         4C8823
 004C8772    dd         4C8829
 004C8772    dd         4C8829
 004C8772    dd         4C8829
 004C87C1    mov        eax,2
 004C87C6    ret
 004C87C7    mov        eax,1
 004C87CC    ret
 004C87CD    mov        eax,2
 004C87D2    ret
 004C87D3    mov        eax,4
 004C87D8    ret
 004C87D9    mov        eax,8
 004C87DE    ret
 004C87DF    mov        eax,4
 004C87E4    ret
 004C87E5    mov        eax,8
 004C87EA    ret
 004C87EB    mov        eax,0A
 004C87F0    ret
 004C87F1    mov        eax,dword ptr [edx+1C]
 004C87F4    add        eax,1
>004C87F7    jno        004C87FE
 004C87F9    call       @IntOver
 004C87FE    ret
 004C87FF    imul       eax,dword ptr [edx+1C],2
>004C8803    jno        004C880A
 004C8805    call       @IntOver
 004C880A    add        eax,2
>004C880D    jno        004C8814
 004C880F    call       @IntOver
 004C8814    ret
 004C8815    mov        eax,dword ptr [edx+1C]
 004C8818    add        eax,2
>004C881B    jno        004C8822
 004C881D    call       @IntOver
 004C8822    ret
 004C8823    mov        eax,8
 004C8828    ret
 004C8829    mov        eax,4
 004C882E    ret
 004C882F    xor        eax,eax
 004C8831    ret
*}
//end;

//004C8834
//procedure sub_004C8834(?:dword; ?:Pointer; ?:dword; ?:?);
//begin
{*
 004C8834    push       ebp
 004C8835    mov        ebp,esp
 004C8837    push       ecx
 004C8838    push       ebx
 004C8839    push       esi
 004C883A    mov        ebx,ecx
 004C883C    sub        ebx,1
>004C883F    jno        004C8846
 004C8841    call       @IntOver
 004C8846    mov        esi,dword ptr [eax+20]
 004C8849    test       esi,esi
>004C884B    je         004C8852
 004C884D    cmp        ebx,dword ptr [esi-4]
>004C8850    jb         004C8857
 004C8852    call       @BoundErr
 004C8857    mov        esi,dword ptr [esi+ebx*4]
 004C885A    add        esi,1
>004C885D    jno        004C8864
 004C885F    call       @IntOver
 004C8864    cmp        esi,7FFF
>004C886A    jbe        004C8871
 004C886C    call       @BoundErr
 004C8871    lea        esi,[edx+esi+6]
 004C8875    mov        dword ptr [ebp-4],esi
 004C8878    mov        eax,dword ptr [eax+20]
 004C887B    test       eax,eax
>004C887D    je         004C8884
 004C887F    cmp        ebx,dword ptr [eax-4]
>004C8882    jb         004C8889
 004C8884    call       @BoundErr
 004C8889    mov        eax,dword ptr [eax+ebx*4]
 004C888C    cmp        eax,7FFF
>004C8891    jbe        004C8898
 004C8893    call       @BoundErr
 004C8898    lea        eax,[edx+eax+6]
 004C889C    cmp        byte ptr [eax],0
>004C889F    jne        004C88B0
 004C88A1    mov        eax,dword ptr [ebp+8]
 004C88A4    mov        edx,dword ptr [ebp-4]
 004C88A7    mov        edx,dword ptr [edx]
 004C88A9    call       @IntfCopy
>004C88AE    jmp        004C88B8
 004C88B0    mov        eax,dword ptr [ebp+8]
 004C88B3    call       @IntfClear
 004C88B8    pop        esi
 004C88B9    pop        ebx
 004C88BA    pop        ecx
 004C88BB    pop        ebp
 004C88BC    ret        4
*}
//end;

//004C88C0
//procedure sub_004C88C0(?:dword; ?:Pointer; ?:dword; ?:?);
//begin
{*
 004C88C0    push       ebp
 004C88C1    mov        ebp,esp
 004C88C3    push       ecx
 004C88C4    push       ebx
 004C88C5    push       esi
 004C88C6    push       edi
 004C88C7    mov        dword ptr [ebp-4],ecx
 004C88CA    mov        edi,edx
 004C88CC    mov        esi,eax
 004C88CE    mov        eax,dword ptr [ebp+8]
 004C88D1    call       @IntfAddRef
 004C88D6    xor        eax,eax
 004C88D8    push       ebp
 004C88D9    push       4C8986
 004C88DE    push       dword ptr fs:[eax]
 004C88E1    mov        dword ptr fs:[eax],esp
 004C88E4    mov        eax,dword ptr [ebp-4]
 004C88E7    sub        eax,1
>004C88EA    jno        004C88F1
 004C88EC    call       @IntOver
 004C88F1    mov        edx,dword ptr [esi+20]
 004C88F4    test       edx,edx
>004C88F6    je         004C88FD
 004C88F8    cmp        eax,dword ptr [edx-4]
>004C88FB    jb         004C8902
 004C88FD    call       @BoundErr
 004C8902    mov        edx,dword ptr [edx+eax*4]
 004C8905    add        edx,1
>004C8908    jno        004C890F
 004C890A    call       @IntOver
 004C890F    cmp        edx,7FFF
>004C8915    jbe        004C891C
 004C8917    call       @BoundErr
 004C891C    lea        ebx,[edi+edx+6]
 004C8920    mov        edx,dword ptr [esi+20]
 004C8923    test       edx,edx
>004C8925    je         004C892C
 004C8927    cmp        eax,dword ptr [edx-4]
>004C892A    jb         004C8931
 004C892C    call       @BoundErr
 004C8931    mov        eax,dword ptr [edx+eax*4]
 004C8934    cmp        eax,7FFF
>004C8939    jbe        004C8940
 004C893B    call       @BoundErr
 004C8940    lea        eax,[edi+eax+6]
 004C8944    mov        esi,eax
 004C8946    cmp        byte ptr [esi],0
>004C8949    jne        004C8954
 004C894B    mov        eax,ebx
 004C894D    call       @IntfClear
>004C8952    jmp        004C8958
 004C8954    xor        eax,eax
 004C8956    mov        dword ptr [ebx],eax
 004C8958    mov        eax,ebx
 004C895A    mov        edx,dword ptr [ebp+8]
 004C895D    call       @IntfCopy
 004C8962    cmp        dword ptr [ebp+8],0
>004C8966    je         004C896D
 004C8968    mov        byte ptr [esi],0
>004C896B    jmp        004C8970
 004C896D    mov        byte ptr [esi],1
 004C8970    xor        eax,eax
 004C8972    pop        edx
 004C8973    pop        ecx
 004C8974    pop        ecx
 004C8975    mov        dword ptr fs:[eax],edx
 004C8978    push       4C898D
 004C897D    lea        eax,[ebp+8]
 004C8980    call       @IntfClear
 004C8985    ret
<004C8986    jmp        @HandleFinally
<004C898B    jmp        004C897D
 004C898D    pop        edi
 004C898E    pop        esi
 004C898F    pop        ebx
 004C8990    pop        ecx
 004C8991    pop        ebp
 004C8992    ret        4
*}
//end;

//004C8998
//function sub_004C8998(?:TZRowAccessor; ?:dword):?;
//begin
{*
 004C8998    push       ebp
 004C8999    mov        ebp,esp
 004C899B    push       ebx
 004C899C    push       esi
 004C899D    mov        esi,edx
 004C899F    mov        ebx,eax
 004C89A1    mov        eax,dword ptr [ebx+4]; TZRowAccessor.?f4:dword
 004C89A4    call       @GetMem
 004C89A9    mov        dword ptr [esi],eax
 004C89AB    mov        edx,dword ptr [esi]
 004C89AD    mov        eax,ebx
 004C89AF    call       004C89D8
 004C89B4    mov        eax,dword ptr [esi]
 004C89B6    pop        esi
 004C89B7    pop        ebx
 004C89B8    pop        ebp
 004C89B9    ret
*}
//end;

//004C89BC
//procedure sub_004C89BC(?:dword; ?:Pointer);
//begin
{*
 004C89BC    push       ebp
 004C89BD    mov        ebp,esp
 004C89BF    push       ebx
 004C89C0    mov        ebx,edx
 004C89C2    test       ebx,ebx
>004C89C4    je         004C89D4
 004C89C6    mov        edx,ebx
 004C89C8    call       004C9468
 004C89CD    mov        eax,ebx
 004C89CF    call       @FreeMem
 004C89D4    pop        ebx
 004C89D5    pop        ebp
 004C89D6    ret
*}
//end;

//004C89D8
//procedure sub_004C89D8(?:TZRowAccessor; ?:dword);
//begin
{*
 004C89D8    push       ebp
 004C89D9    mov        ebp,esp
 004C89DB    test       edx,edx
>004C89DD    je         004C89FC
 004C89DF    xor        ecx,ecx
 004C89E1    mov        dword ptr [edx],ecx
 004C89E3    mov        byte ptr [edx+5],0
 004C89E7    mov        byte ptr [edx+4],0
 004C89EB    add        edx,6
 004C89EE    mov        ecx,1
 004C89F3    mov        eax,dword ptr [eax+8]; TZRowAccessor.?f8:dword
 004C89F6    xchg       eax,edx
 004C89F7    call       @FillChar
 004C89FC    pop        ebp
 004C89FD    ret
*}
//end;

//004C8A00
//procedure sub_004C8A00(?:dword; ?:Pointer; ?:Pointer);
//begin
{*
 004C8A00    push       ebp
 004C8A01    mov        ebp,esp
 004C8A03    add        esp,0FFFFFFF0
 004C8A06    push       ebx
 004C8A07    push       esi
 004C8A08    push       edi
 004C8A09    xor        ebx,ebx
 004C8A0B    mov        dword ptr [ebp-10],ebx
 004C8A0E    mov        dword ptr [ebp-8],ecx
 004C8A11    mov        dword ptr [ebp-4],edx
 004C8A14    mov        ebx,eax
 004C8A16    xor        eax,eax
 004C8A18    push       ebp
 004C8A19    push       4C8B3E
 004C8A1E    push       dword ptr fs:[eax]
 004C8A21    mov        dword ptr fs:[eax],esp
 004C8A24    mov        edx,dword ptr [ebp-8]
 004C8A27    mov        eax,ebx
 004C8A29    call       004C9468
 004C8A2E    mov        edi,dword ptr [ebp-8]
 004C8A31    mov        eax,dword ptr [ebp-4]
 004C8A34    mov        eax,dword ptr [eax]
 004C8A36    mov        dword ptr [edi],eax
 004C8A38    mov        eax,dword ptr [ebp-4]
 004C8A3B    mov        al,byte ptr [eax+4]
 004C8A3E    mov        byte ptr [edi+4],al
 004C8A41    mov        eax,dword ptr [ebp-4]
 004C8A44    mov        al,byte ptr [eax+5]
 004C8A47    mov        byte ptr [edi+5],al
 004C8A4A    lea        edx,[edi+6]
 004C8A4D    mov        eax,dword ptr [ebp-4]
 004C8A50    add        eax,6
 004C8A53    mov        ecx,dword ptr [ebx+8]
 004C8A56    call       Move
 004C8A5B    cmp        byte ptr [ebx+28],0
>004C8A5F    je         004C8B28
 004C8A65    mov        eax,dword ptr [ebx+0C]
 004C8A68    sub        eax,1
>004C8A6B    jno        004C8A72
 004C8A6D    call       @IntOver
 004C8A72    test       eax,eax
>004C8A74    jl         004C8B28
 004C8A7A    inc        eax
 004C8A7B    mov        dword ptr [ebp-0C],eax
 004C8A7E    xor        esi,esi
 004C8A80    mov        eax,dword ptr [ebx+18]
 004C8A83    test       eax,eax
>004C8A85    je         004C8A8C
 004C8A87    cmp        esi,dword ptr [eax-4]
>004C8A8A    jb         004C8A91
 004C8A8C    call       @BoundErr
 004C8A91    mov        al,byte ptr [eax+esi]
 004C8A94    add        al,0F1
 004C8A96    sub        al,3
>004C8A98    jae        004C8B1E
 004C8A9E    mov        eax,dword ptr [ebx+20]
 004C8AA1    test       eax,eax
>004C8AA3    je         004C8AAA
 004C8AA5    cmp        esi,dword ptr [eax-4]
>004C8AA8    jb         004C8AAF
 004C8AAA    call       @BoundErr
 004C8AAF    mov        eax,dword ptr [eax+esi*4]
 004C8AB2    cmp        eax,7FFF
>004C8AB7    jbe        004C8ABE
 004C8AB9    call       @BoundErr
 004C8ABE    cmp        byte ptr [edi+eax+6],0
>004C8AC3    jne        004C8B1E
 004C8AC5    mov        eax,dword ptr [ebx+20]
 004C8AC8    test       eax,eax
>004C8ACA    je         004C8AD1
 004C8ACC    cmp        esi,dword ptr [eax-4]
>004C8ACF    jb         004C8AD6
 004C8AD1    call       @BoundErr
 004C8AD6    mov        eax,dword ptr [eax+esi*4]
 004C8AD9    cmp        eax,7FFF
>004C8ADE    jbe        004C8AE5
 004C8AE0    call       @BoundErr
 004C8AE5    mov        byte ptr [edi+eax+6],1
 004C8AEA    lea        eax,[ebp-10]
 004C8AED    push       eax
 004C8AEE    mov        ecx,esi
 004C8AF0    add        ecx,1
>004C8AF3    jno        004C8AFA
 004C8AF5    call       @IntOver
 004C8AFA    mov        edx,dword ptr [ebp-4]
 004C8AFD    mov        eax,ebx
 004C8AFF    call       004C8834
 004C8B04    mov        eax,dword ptr [ebp-10]
 004C8B07    push       eax
 004C8B08    mov        ecx,esi
 004C8B0A    add        ecx,1
>004C8B0D    jno        004C8B14
 004C8B0F    call       @IntOver
 004C8B14    mov        edx,dword ptr [ebp-8]
 004C8B17    mov        eax,ebx
 004C8B19    call       004C88C0
 004C8B1E    inc        esi
 004C8B1F    dec        dword ptr [ebp-0C]
<004C8B22    jne        004C8A80
 004C8B28    xor        eax,eax
 004C8B2A    pop        edx
 004C8B2B    pop        ecx
 004C8B2C    pop        ecx
 004C8B2D    mov        dword ptr fs:[eax],edx
 004C8B30    push       4C8B45
 004C8B35    lea        eax,[ebp-10]
 004C8B38    call       @IntfClear
 004C8B3D    ret
<004C8B3E    jmp        @HandleFinally
<004C8B43    jmp        004C8B35
 004C8B45    pop        edi
 004C8B46    pop        esi
 004C8B47    pop        ebx
 004C8B48    mov        esp,ebp
 004C8B4A    pop        ebp
 004C8B4B    ret
*}
//end;

//004C8B4C
//procedure sub_004C8B4C(?:TZRowAccessor; ?:?);
//begin
{*
 004C8B4C    push       ebp
 004C8B4D    mov        ebp,esp
 004C8B4F    push       ebx
 004C8B50    push       esi
 004C8B51    mov        esi,edx
 004C8B53    mov        ebx,eax
 004C8B55    mov        edx,esi
 004C8B57    mov        eax,ebx
 004C8B59    call       004C8A00
 004C8B5E    mov        edx,esi
 004C8B60    mov        eax,ebx
 004C8B62    call       004C9468
 004C8B67    pop        esi
 004C8B68    pop        ebx
 004C8B69    pop        ebp
 004C8B6A    ret
*}
//end;

//004C8B6C
//procedure sub_004C8B6C(?:TZRowAccessor; ?:?; ?:Pointer);
//begin
{*
 004C8B6C    push       ebp
 004C8B6D    mov        ebp,esp
 004C8B6F    add        esp,0FFFFFFEC
 004C8B72    push       ebx
 004C8B73    push       esi
 004C8B74    push       edi
 004C8B75    xor        ebx,ebx
 004C8B77    mov        dword ptr [ebp-14],ebx
 004C8B7A    mov        dword ptr [ebp-0C],ebx
 004C8B7D    mov        dword ptr [ebp-8],ecx
 004C8B80    mov        dword ptr [ebp-4],edx
 004C8B83    mov        ebx,eax
 004C8B85    xor        eax,eax
 004C8B87    push       ebp
 004C8B88    push       4C8CD1
 004C8B8D    push       dword ptr fs:[eax]
 004C8B90    mov        dword ptr fs:[eax],esp
 004C8B93    mov        edx,dword ptr [ebp-8]
 004C8B96    mov        eax,ebx
 004C8B98    call       004C9468
 004C8B9D    mov        edi,dword ptr [ebp-8]
 004C8BA0    mov        eax,dword ptr [ebp-4]
 004C8BA3    mov        eax,dword ptr [eax]
 004C8BA5    mov        dword ptr [edi],eax
 004C8BA7    mov        eax,dword ptr [ebp-4]
 004C8BAA    mov        al,byte ptr [eax+4]
 004C8BAD    mov        byte ptr [edi+4],al
 004C8BB0    mov        eax,dword ptr [ebp-4]
 004C8BB3    mov        al,byte ptr [eax+5]
 004C8BB6    mov        byte ptr [edi+5],al
 004C8BB9    lea        edx,[edi+6]
 004C8BBC    mov        eax,dword ptr [ebp-4]
 004C8BBF    add        eax,6
 004C8BC2    mov        ecx,dword ptr [ebx+8]
 004C8BC5    call       Move
 004C8BCA    cmp        byte ptr [ebx+28],0
>004C8BCE    je         004C8CB3
 004C8BD4    mov        eax,dword ptr [ebx+0C]
 004C8BD7    sub        eax,1
>004C8BDA    jno        004C8BE1
 004C8BDC    call       @IntOver
 004C8BE1    test       eax,eax
>004C8BE3    jl         004C8CB3
 004C8BE9    inc        eax
 004C8BEA    mov        dword ptr [ebp-10],eax
 004C8BED    xor        esi,esi
 004C8BEF    mov        eax,dword ptr [ebx+18]
 004C8BF2    test       eax,eax
>004C8BF4    je         004C8BFB
 004C8BF6    cmp        esi,dword ptr [eax-4]
>004C8BF9    jb         004C8C00
 004C8BFB    call       @BoundErr
 004C8C00    mov        al,byte ptr [eax+esi]
 004C8C03    add        al,0F1
 004C8C05    sub        al,3
>004C8C07    jae        004C8CA9
 004C8C0D    mov        eax,dword ptr [ebx+20]
 004C8C10    test       eax,eax
>004C8C12    je         004C8C19
 004C8C14    cmp        esi,dword ptr [eax-4]
>004C8C17    jb         004C8C1E
 004C8C19    call       @BoundErr
 004C8C1E    mov        eax,dword ptr [eax+esi*4]
 004C8C21    cmp        eax,7FFF
>004C8C26    jbe        004C8C2D
 004C8C28    call       @BoundErr
 004C8C2D    cmp        byte ptr [edi+eax+6],0
>004C8C32    jne        004C8CA9
 004C8C34    mov        eax,dword ptr [ebx+20]
 004C8C37    test       eax,eax
>004C8C39    je         004C8C40
 004C8C3B    cmp        esi,dword ptr [eax-4]
>004C8C3E    jb         004C8C45
 004C8C40    call       @BoundErr
 004C8C45    mov        eax,dword ptr [eax+esi*4]
 004C8C48    cmp        eax,7FFF
>004C8C4D    jbe        004C8C54
 004C8C4F    call       @BoundErr
 004C8C54    mov        byte ptr [edi+eax+6],1
 004C8C59    lea        eax,[ebp-0C]
 004C8C5C    push       eax
 004C8C5D    mov        ecx,esi
 004C8C5F    add        ecx,1
>004C8C62    jno        004C8C69
 004C8C64    call       @IntOver
 004C8C69    mov        edx,dword ptr [ebp-4]
 004C8C6C    mov        eax,ebx
 004C8C6E    call       004C8834
 004C8C73    cmp        dword ptr [ebp-0C],0
>004C8C77    je         004C8C8F
 004C8C79    lea        edx,[ebp-14]
 004C8C7C    mov        eax,dword ptr [ebp-0C]
 004C8C7F    mov        ecx,dword ptr [eax]
 004C8C81    call       dword ptr [ecx+3C]
 004C8C84    mov        edx,dword ptr [ebp-14]
 004C8C87    lea        eax,[ebp-0C]
 004C8C8A    call       @IntfCopy
 004C8C8F    mov        eax,dword ptr [ebp-0C]
 004C8C92    push       eax
 004C8C93    mov        ecx,esi
 004C8C95    add        ecx,1
>004C8C98    jno        004C8C9F
 004C8C9A    call       @IntOver
 004C8C9F    mov        edx,dword ptr [ebp-8]
 004C8CA2    mov        eax,ebx
 004C8CA4    call       004C88C0
 004C8CA9    inc        esi
 004C8CAA    dec        dword ptr [ebp-10]
<004C8CAD    jne        004C8BEF
 004C8CB3    xor        eax,eax
 004C8CB5    pop        edx
 004C8CB6    pop        ecx
 004C8CB7    pop        ecx
 004C8CB8    mov        dword ptr fs:[eax],edx
 004C8CBB    push       4C8CD8
 004C8CC0    lea        eax,[ebp-14]
 004C8CC3    call       @IntfClear
 004C8CC8    lea        eax,[ebp-0C]
 004C8CCB    call       @IntfClear
 004C8CD0    ret
<004C8CD1    jmp        @HandleFinally
<004C8CD6    jmp        004C8CC0
 004C8CD8    pop        edi
 004C8CD9    pop        esi
 004C8CDA    pop        ebx
 004C8CDB    mov        esp,ebp
 004C8CDD    pop        ebp
 004C8CDE    ret
*}
//end;

//004C8CE0
//function sub_004C8CE0(?:Extended; ?:Extended):?;
//begin
{*
 004C8CE0    push       ebp
 004C8CE1    mov        ebp,esp
 004C8CE3    fld        tbyte ptr [ebp+14]
 004C8CE6    fld        tbyte ptr [ebp+8]
 004C8CE9    fsubp      st(1),st
 004C8CEB    fstp       tbyte ptr [ebp+14]
 004C8CEE    wait
 004C8CEF    fld        tbyte ptr [ebp+14]
 004C8CF2    fcomp      dword ptr ds:[4C8D20]; 0:Single
 004C8CF8    fnstsw     al
 004C8CFA    sahf
>004C8CFB    jbe        004C8D04
 004C8CFD    mov        eax,1
>004C8D02    jmp        004C8D19
 004C8D04    fld        tbyte ptr [ebp+14]
 004C8D07    fcomp      dword ptr ds:[4C8D20]; 0:Single
 004C8D0D    fnstsw     al
 004C8D0F    sahf
>004C8D10    jae        004C8D17
 004C8D12    or         eax,0FFFFFFFF
>004C8D15    jmp        004C8D19
 004C8D17    xor        eax,eax
 004C8D19    pop        ebp
 004C8D1A    ret        18
*}
//end;

//004C8D24
//function sub_004C8D24(?:?; ?:?):?;
//begin
{*
 004C8D24    cmp        dl,al
>004C8D26    jne        004C8D2B
 004C8D28    xor        eax,eax
 004C8D2A    ret
 004C8D2B    cmp        al,1
>004C8D2D    jne        004C8D36
 004C8D2F    mov        eax,1
>004C8D34    jmp        004C8D39
 004C8D36    or         eax,0FFFFFFFF
 004C8D39    ret
*}
//end;

//004C8D3C
//function sub_004C8D3C(?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 004C8D3C    push       ebp
 004C8D3D    mov        ebp,esp
 004C8D3F    mov        eax,dword ptr [ebp+10]
 004C8D42    mov        edx,dword ptr [ebp+14]
 004C8D45    sub        eax,dword ptr [ebp+8]
 004C8D48    sbb        edx,dword ptr [ebp+0C]
>004C8D4B    jno        004C8D52
 004C8D4D    call       @IntOver
 004C8D52    mov        dword ptr [ebp+10],eax
 004C8D55    mov        dword ptr [ebp+14],edx
 004C8D58    cmp        dword ptr [ebp+14],0
>004C8D5C    jne        004C8D66
 004C8D5E    cmp        dword ptr [ebp+10],0
>004C8D62    jbe        004C8D6F
>004C8D64    jmp        004C8D68
>004C8D66    jle        004C8D6F
 004C8D68    mov        eax,1
>004C8D6D    jmp        004C8D86
 004C8D6F    cmp        dword ptr [ebp+14],0
>004C8D73    jne        004C8D7D
 004C8D75    cmp        dword ptr [ebp+10],0
>004C8D79    jae        004C8D84
>004C8D7B    jmp        004C8D7F
>004C8D7D    jge        004C8D84
 004C8D7F    or         eax,0FFFFFFFF
>004C8D82    jmp        004C8D86
 004C8D84    xor        eax,eax
 004C8D86    pop        ebp
 004C8D87    ret        10
*}
//end;

//004C8D8C
//function sub_004C8D8C(?:TZRowAccessor; ?:Pointer; ?:Pointer; ?:?; ?:?):?;
//begin
{*
 004C8D8C    push       ebp
 004C8D8D    mov        ebp,esp
 004C8D8F    push       ecx
 004C8D90    mov        ecx,9
 004C8D95    push       0
 004C8D97    push       0
 004C8D99    dec        ecx
<004C8D9A    jne        004C8D95
 004C8D9C    push       ecx
 004C8D9D    xchg       ecx,dword ptr [ebp-4]
 004C8DA0    push       ebx
 004C8DA1    push       esi
 004C8DA2    push       edi
 004C8DA3    mov        dword ptr [ebp-4],ecx
 004C8DA6    mov        edi,edx
 004C8DA8    mov        esi,eax
 004C8DAA    mov        eax,dword ptr [ebp+0C]
 004C8DAD    call       @DynArrayAddRef
 004C8DB2    mov        eax,dword ptr [ebp+8]
 004C8DB5    call       @DynArrayAddRef
 004C8DBA    xor        eax,eax
 004C8DBC    push       ebp
 004C8DBD    push       4C9454
 004C8DC2    push       dword ptr fs:[eax]
 004C8DC5    mov        dword ptr fs:[eax],esp
 004C8DC8    xor        eax,eax
 004C8DCA    mov        dword ptr [ebp-8],eax
 004C8DCD    mov        eax,dword ptr [ebp+0C]
 004C8DD0    call       @DynArrayHigh
 004C8DD5    test       eax,eax
>004C8DD7    jl         004C93F0
 004C8DDD    inc        eax
 004C8DDE    mov        dword ptr [ebp-28],eax
 004C8DE1    mov        dword ptr [ebp-0C],0
 004C8DE8    mov        eax,dword ptr [ebp-0C]
 004C8DEB    mov        edx,dword ptr [ebp+0C]
 004C8DEE    test       edx,edx
>004C8DF0    je         004C8DF7
 004C8DF2    cmp        eax,dword ptr [edx-4]
>004C8DF5    jb         004C8DFC
 004C8DF7    call       @BoundErr
 004C8DFC    mov        ebx,dword ptr [edx+eax*4]
 004C8DFF    sub        ebx,1
>004C8E02    jno        004C8E09
 004C8E04    call       @IntOver
 004C8E09    mov        eax,dword ptr [esi+20]; TZRowAccessor.?f20:.6
 004C8E0C    test       eax,eax
>004C8E0E    je         004C8E15
 004C8E10    cmp        ebx,dword ptr [eax-4]
>004C8E13    jb         004C8E1A
 004C8E15    call       @BoundErr
 004C8E1A    mov        eax,dword ptr [eax+ebx*4]
 004C8E1D    cmp        eax,7FFF
>004C8E22    jbe        004C8E29
 004C8E24    call       @BoundErr
 004C8E29    cmp        byte ptr [edi+eax+6],1
>004C8E2E    jne        004C8E5E
 004C8E30    mov        eax,dword ptr [esi+20]; TZRowAccessor.?f20:.6
 004C8E33    test       eax,eax
>004C8E35    je         004C8E3C
 004C8E37    cmp        ebx,dword ptr [eax-4]
>004C8E3A    jb         004C8E41
 004C8E3C    call       @BoundErr
 004C8E41    mov        eax,dword ptr [eax+ebx*4]
 004C8E44    cmp        eax,7FFF
>004C8E49    jbe        004C8E50
 004C8E4B    call       @BoundErr
 004C8E50    mov        edx,dword ptr [ebp-4]
 004C8E53    cmp        byte ptr [edx+eax+6],1
>004C8E58    je         004C93E4
 004C8E5E    mov        eax,dword ptr [esi+20]; TZRowAccessor.?f20:.6
 004C8E61    test       eax,eax
>004C8E63    je         004C8E6A
 004C8E65    cmp        ebx,dword ptr [eax-4]
>004C8E68    jb         004C8E6F
 004C8E6A    call       @BoundErr
 004C8E6F    mov        eax,dword ptr [eax+ebx*4]
 004C8E72    cmp        eax,7FFF
>004C8E77    jbe        004C8E7E
 004C8E79    call       @BoundErr
 004C8E7E    mov        al,byte ptr [edi+eax+6]
 004C8E82    mov        edx,dword ptr [esi+20]; TZRowAccessor.?f20:.6
 004C8E85    test       edx,edx
>004C8E87    je         004C8E8E
 004C8E89    cmp        ebx,dword ptr [edx-4]
>004C8E8C    jb         004C8E93
 004C8E8E    call       @BoundErr
 004C8E93    mov        edx,dword ptr [edx+ebx*4]
 004C8E96    cmp        edx,7FFF
>004C8E9C    jbe        004C8EA3
 004C8E9E    call       @BoundErr
 004C8EA3    mov        ecx,dword ptr [ebp-4]
 004C8EA6    cmp        al,byte ptr [ecx+edx+6]
>004C8EAA    je         004C8F55
 004C8EB0    mov        eax,dword ptr [esi+18]; TZRowAccessor.?f18:.4
 004C8EB3    test       eax,eax
>004C8EB5    je         004C8EBC
 004C8EB7    cmp        ebx,dword ptr [eax-4]
>004C8EBA    jb         004C8EC1
 004C8EBC    call       @BoundErr
 004C8EC1    mov        al,byte ptr [eax+ebx]
 004C8EC4    add        al,0F1
 004C8EC6    sub        al,3
>004C8EC8    jb         004C8F55
 004C8ECE    mov        eax,dword ptr [esi+20]; TZRowAccessor.?f20:.6
 004C8ED1    test       eax,eax
>004C8ED3    je         004C8EDA
 004C8ED5    cmp        ebx,dword ptr [eax-4]
>004C8ED8    jb         004C8EDF
 004C8EDA    call       @BoundErr
 004C8EDF    mov        eax,dword ptr [eax+ebx*4]
 004C8EE2    cmp        eax,7FFF
>004C8EE7    jbe        004C8EEE
 004C8EE9    call       @BoundErr
 004C8EEE    mov        edx,dword ptr [ebp-4]
 004C8EF1    movzx      eax,byte ptr [edx+eax+6]
 004C8EF6    mov        edx,dword ptr [esi+20]; TZRowAccessor.?f20:.6
 004C8EF9    test       edx,edx
>004C8EFB    je         004C8F02
 004C8EFD    cmp        ebx,dword ptr [edx-4]
>004C8F00    jb         004C8F07
 004C8F02    call       @BoundErr
 004C8F07    mov        edx,dword ptr [edx+ebx*4]
 004C8F0A    cmp        edx,7FFF
>004C8F10    jbe        004C8F17
 004C8F12    call       @BoundErr
 004C8F17    movzx      edx,byte ptr [edi+edx+6]
 004C8F1C    sub        eax,edx
>004C8F1E    jno        004C8F25
 004C8F20    call       @IntOver
 004C8F25    mov        dword ptr [ebp-8],eax
 004C8F28    mov        eax,dword ptr [ebp-0C]
 004C8F2B    mov        edx,dword ptr [ebp+8]
 004C8F2E    test       edx,edx
>004C8F30    je         004C8F37
 004C8F32    cmp        eax,dword ptr [edx-4]
>004C8F35    jb         004C8F3C
 004C8F37    call       @BoundErr
 004C8F3C    cmp        byte ptr [edx+eax],0
>004C8F40    jne        004C93F0
 004C8F46    neg        dword ptr [ebp-8]
>004C8F49    jno        004C8F50
 004C8F4B    call       @IntOver
>004C8F50    jmp        004C93F0
 004C8F55    mov        eax,dword ptr [esi+20]; TZRowAccessor.?f20:.6
 004C8F58    test       eax,eax
>004C8F5A    je         004C8F61
 004C8F5C    cmp        ebx,dword ptr [eax-4]
>004C8F5F    jb         004C8F66
 004C8F61    call       @BoundErr
 004C8F66    mov        eax,dword ptr [eax+ebx*4]
 004C8F69    add        eax,1
>004C8F6C    jno        004C8F73
 004C8F6E    call       @IntOver
 004C8F73    cmp        eax,7FFF
>004C8F78    jbe        004C8F7F
 004C8F7A    call       @BoundErr
 004C8F7F    lea        eax,[edi+eax+6]
 004C8F83    mov        dword ptr [ebp-14],eax
 004C8F86    mov        eax,dword ptr [esi+20]; TZRowAccessor.?f20:.6
 004C8F89    test       eax,eax
>004C8F8B    je         004C8F92
 004C8F8D    cmp        ebx,dword ptr [eax-4]
>004C8F90    jb         004C8F97
 004C8F92    call       @BoundErr
 004C8F97    mov        eax,dword ptr [eax+ebx*4]
 004C8F9A    add        eax,1
>004C8F9D    jno        004C8FA4
 004C8F9F    call       @IntOver
 004C8FA4    cmp        eax,7FFF
>004C8FA9    jbe        004C8FB0
 004C8FAB    call       @BoundErr
 004C8FB0    mov        edx,dword ptr [ebp-4]
 004C8FB3    lea        eax,[edx+eax+6]
 004C8FB7    mov        dword ptr [ebp-18],eax
 004C8FBA    mov        eax,dword ptr [esi+18]; TZRowAccessor.?f18:.4
 004C8FBD    test       eax,eax
>004C8FBF    je         004C8FC6
 004C8FC1    cmp        ebx,dword ptr [eax-4]
>004C8FC4    jb         004C8FCB
 004C8FC6    call       @BoundErr
 004C8FCB    movzx      eax,byte ptr [eax+ebx]
 004C8FCF    cmp        eax,11
>004C8FD2    ja         004C93B8
 004C8FD8    jmp        dword ptr [eax*4+4C8FDF]
 004C8FD8    dd         4C93B8
 004C8FD8    dd         4C9108
 004C8FD8    dd         4C9027
 004C8FD8    dd         4C9044
 004C8FD8    dd         4C9061
 004C8FD8    dd         4C907A
 004C8FD8    dd         4C9097
 004C8FD8    dd         4C90BC
 004C8FD8    dd         4C90E1
 004C8FD8    dd         4C9168
 004C8FD8    dd         4C917B
 004C8FD8    dd         4C91A6
 004C8FD8    dd         4C9143
 004C8FD8    dd         4C9143
 004C8FD8    dd         4C9143
 004C8FD8    dd         4C9266
 004C8FD8    dd         4C9266
 004C8FD8    dd         4C9266
 004C9027    mov        eax,dword ptr [ebp-14]
 004C902A    movsx      eax,byte ptr [eax]
 004C902D    mov        edx,dword ptr [ebp-18]
 004C9030    movsx      edx,byte ptr [edx]
 004C9033    sub        eax,edx
>004C9035    jno        004C903C
 004C9037    call       @IntOver
 004C903C    mov        dword ptr [ebp-8],eax
>004C903F    jmp        004C93B8
 004C9044    mov        eax,dword ptr [ebp-14]
 004C9047    movsx      eax,word ptr [eax]
 004C904A    mov        edx,dword ptr [ebp-18]
 004C904D    movsx      edx,word ptr [edx]
 004C9050    sub        eax,edx
>004C9052    jno        004C9059
 004C9054    call       @IntOver
 004C9059    mov        dword ptr [ebp-8],eax
>004C905C    jmp        004C93B8
 004C9061    mov        eax,dword ptr [ebp-14]
 004C9064    mov        eax,dword ptr [eax]
 004C9066    mov        edx,dword ptr [ebp-18]
 004C9069    sub        eax,dword ptr [edx]
>004C906B    jno        004C9072
 004C906D    call       @IntOver
 004C9072    mov        dword ptr [ebp-8],eax
>004C9075    jmp        004C93B8
 004C907A    mov        eax,dword ptr [ebp-14]
 004C907D    push       dword ptr [eax+4]
 004C9080    push       dword ptr [eax]
 004C9082    mov        eax,dword ptr [ebp-18]
 004C9085    push       dword ptr [eax+4]
 004C9088    push       dword ptr [eax]
 004C908A    call       004C8D3C
 004C908F    mov        dword ptr [ebp-8],eax
>004C9092    jmp        004C93B8
 004C9097    mov        eax,dword ptr [ebp-14]
 004C909A    fld        dword ptr [eax]
 004C909C    add        esp,0FFFFFFF4
 004C909F    fstp       tbyte ptr [esp]
 004C90A2    wait
 004C90A3    mov        eax,dword ptr [ebp-18]
 004C90A6    fld        dword ptr [eax]
 004C90A8    add        esp,0FFFFFFF4
 004C90AB    fstp       tbyte ptr [esp]
 004C90AE    wait
 004C90AF    call       004C8CE0
 004C90B4    mov        dword ptr [ebp-8],eax
>004C90B7    jmp        004C93B8
 004C90BC    mov        eax,dword ptr [ebp-14]
 004C90BF    fld        qword ptr [eax]
 004C90C1    add        esp,0FFFFFFF4
 004C90C4    fstp       tbyte ptr [esp]
 004C90C7    wait
 004C90C8    mov        eax,dword ptr [ebp-18]
 004C90CB    fld        qword ptr [eax]
 004C90CD    add        esp,0FFFFFFF4
 004C90D0    fstp       tbyte ptr [esp]
 004C90D3    wait
 004C90D4    call       004C8CE0
 004C90D9    mov        dword ptr [ebp-8],eax
>004C90DC    jmp        004C93B8
 004C90E1    mov        eax,dword ptr [ebp-14]
 004C90E4    mov        dx,word ptr [eax+8]
 004C90E8    push       edx
 004C90E9    push       dword ptr [eax+4]
 004C90EC    push       dword ptr [eax]
 004C90EE    mov        eax,dword ptr [ebp-18]
 004C90F1    mov        dx,word ptr [eax+8]
 004C90F5    push       edx
 004C90F6    push       dword ptr [eax+4]
 004C90F9    push       dword ptr [eax]
 004C90FB    call       004C8CE0
 004C9100    mov        dword ptr [ebp-8],eax
>004C9103    jmp        004C93B8
 004C9108    mov        eax,dword ptr [ebp-18]
 004C910B    cmp        word ptr [eax],1
 004C910F    sbb        edx,edx
 004C9111    inc        edx
 004C9112    and        edx,7F
 004C9115    cmp        edx,1
>004C9118    jbe        004C911F
 004C911A    call       @BoundErr
 004C911F    mov        eax,dword ptr [ebp-14]
 004C9122    cmp        word ptr [eax],1
 004C9126    sbb        eax,eax
 004C9128    inc        eax
 004C9129    and        eax,7F
 004C912C    cmp        eax,1
>004C912F    jbe        004C9136
 004C9131    call       @BoundErr
 004C9136    call       004C8D24
 004C913B    mov        dword ptr [ebp-8],eax
>004C913E    jmp        004C93B8
 004C9143    mov        eax,dword ptr [ebp-14]
 004C9146    fld        qword ptr [eax]
 004C9148    add        esp,0FFFFFFF4
 004C914B    fstp       tbyte ptr [esp]
 004C914E    wait
 004C914F    mov        eax,dword ptr [ebp-18]
 004C9152    fld        qword ptr [eax]
 004C9154    add        esp,0FFFFFFF4
 004C9157    fstp       tbyte ptr [esp]
 004C915A    wait
 004C915B    call       004C8CE0
 004C9160    mov        dword ptr [ebp-8],eax
>004C9163    jmp        004C93B8
 004C9168    mov        edx,dword ptr [ebp-18]
 004C916B    mov        eax,dword ptr [ebp-14]
 004C916E    call       AnsiStrComp
 004C9173    mov        dword ptr [ebp-8],eax
>004C9176    jmp        004C93B8
 004C917B    lea        eax,[ebp-2C]
 004C917E    mov        edx,dword ptr [ebp-18]
 004C9181    call       @WStrFromPWChar
 004C9186    mov        eax,dword ptr [ebp-2C]
 004C9189    push       eax
 004C918A    lea        eax,[ebp-30]
 004C918D    mov        edx,dword ptr [ebp-14]
 004C9190    call       @WStrFromPWChar
 004C9195    mov        eax,dword ptr [ebp-30]
 004C9198    pop        edx
 004C9199    call       WideCompareStr
 004C919E    mov        dword ptr [ebp-8],eax
>004C91A1    jmp        004C93B8
 004C91A6    mov        eax,dword ptr [ebp-14]
 004C91A9    mov        ax,word ptr [eax]
 004C91AC    mov        word ptr [ebp-0E],ax
 004C91B0    mov        eax,dword ptr [ebp-18]
 004C91B3    mov        ax,word ptr [eax]
 004C91B6    mov        word ptr [ebp-10],ax
 004C91BA    mov        eax,dword ptr [esi+20]; TZRowAccessor.?f20:.6
 004C91BD    test       eax,eax
>004C91BF    je         004C91C6
 004C91C1    cmp        ebx,dword ptr [eax-4]
>004C91C4    jb         004C91CB
 004C91C6    call       @BoundErr
 004C91CB    mov        eax,dword ptr [eax+ebx*4]
 004C91CE    add        eax,1
>004C91D1    jno        004C91D8
 004C91D3    call       @IntOver
 004C91D8    add        eax,2
>004C91DB    jno        004C91E2
 004C91DD    call       @IntOver
 004C91E2    cmp        eax,7FFF
>004C91E7    jbe        004C91EE
 004C91E9    call       @BoundErr
 004C91EE    lea        eax,[edi+eax+6]
 004C91F2    mov        dword ptr [ebp-14],eax
 004C91F5    mov        eax,dword ptr [esi+20]; TZRowAccessor.?f20:.6
 004C91F8    test       eax,eax
>004C91FA    je         004C9201
 004C91FC    cmp        ebx,dword ptr [eax-4]
>004C91FF    jb         004C9206
 004C9201    call       @BoundErr
 004C9206    mov        eax,dword ptr [eax+ebx*4]
 004C9209    add        eax,1
>004C920C    jno        004C9213
 004C920E    call       @IntOver
 004C9213    add        eax,2
>004C9216    jno        004C921D
 004C9218    call       @IntOver
 004C921D    cmp        eax,7FFF
>004C9222    jbe        004C9229
 004C9224    call       @BoundErr
 004C9229    mov        edx,dword ptr [ebp-4]
 004C922C    lea        eax,[edx+eax+6]
 004C9230    mov        dword ptr [ebp-18],eax
 004C9233    lea        ecx,[ebp-34]
 004C9236    movsx      edx,word ptr [ebp-10]
 004C923A    mov        eax,dword ptr [ebp-18]
 004C923D    call       004BEF98
 004C9242    mov        eax,dword ptr [ebp-34]
 004C9245    push       eax
 004C9246    lea        ecx,[ebp-38]
 004C9249    movsx      edx,word ptr [ebp-0E]
 004C924D    mov        eax,dword ptr [ebp-14]
 004C9250    call       004BEF98
 004C9255    mov        eax,dword ptr [ebp-38]
 004C9258    pop        edx
 004C9259    call       CompareStr
 004C925E    mov        dword ptr [ebp-8],eax
>004C9261    jmp        004C93B8
 004C9266    lea        eax,[ebp-1C]
 004C9269    push       eax
 004C926A    mov        ecx,ebx
 004C926C    add        ecx,1
>004C926F    jno        004C9276
 004C9271    call       @IntOver
 004C9276    mov        edx,edi
 004C9278    mov        eax,esi
 004C927A    call       004C8834
 004C927F    cmp        dword ptr [ebp-1C],0
>004C9283    je         004C9295
 004C9285    mov        eax,dword ptr [ebp-1C]
 004C9288    mov        edx,dword ptr [eax]
 004C928A    call       dword ptr [edx+0C]
 004C928D    test       al,al
>004C928F    jne        004C9295
 004C9291    xor        eax,eax
>004C9293    jmp        004C9297
 004C9295    mov        al,1
 004C9297    mov        byte ptr [ebp-21],al
 004C929A    lea        eax,[ebp-20]
 004C929D    push       eax
 004C929E    mov        ecx,ebx
 004C92A0    add        ecx,1
>004C92A3    jno        004C92AA
 004C92A5    call       @IntOver
 004C92AA    mov        edx,dword ptr [ebp-4]
 004C92AD    mov        eax,esi
 004C92AF    call       004C8834
 004C92B4    cmp        dword ptr [ebp-20],0
>004C92B8    je         004C92CA
 004C92BA    mov        eax,dword ptr [ebp-20]
 004C92BD    mov        edx,dword ptr [eax]
 004C92BF    call       dword ptr [edx+0C]
 004C92C2    test       al,al
>004C92C4    jne        004C92CA
 004C92C6    xor        eax,eax
>004C92C8    jmp        004C92CC
 004C92CA    mov        al,1
 004C92CC    cmp        byte ptr [ebp-21],1
>004C92D0    jne        004C92DA
 004C92D2    cmp        al,1
>004C92D4    je         004C93E4
 004C92DA    cmp        al,byte ptr [ebp-21]
>004C92DD    je         004C92FD
 004C92DF    cmp        byte ptr [ebp-21],0
>004C92E3    je         004C92F1
 004C92E5    mov        dword ptr [ebp-8],0FFFFFFFF
>004C92EC    jmp        004C93B8
 004C92F1    mov        dword ptr [ebp-8],1
>004C92F8    jmp        004C93B8
 004C92FD    mov        eax,dword ptr [esi+18]; TZRowAccessor.?f18:.4
 004C9300    test       eax,eax
>004C9302    je         004C9309
 004C9304    cmp        ebx,dword ptr [eax-4]
>004C9307    jb         004C930E
 004C9309    call       @BoundErr
 004C930E    cmp        byte ptr [eax+ebx],0F
>004C9312    jne        004C933C
 004C9314    lea        edx,[ebp-3C]
 004C9317    mov        eax,dword ptr [ebp-20]
 004C931A    mov        ecx,dword ptr [eax]
 004C931C    call       dword ptr [ecx+18]
 004C931F    mov        eax,dword ptr [ebp-3C]
 004C9322    push       eax
 004C9323    lea        edx,[ebp-40]
 004C9326    mov        eax,dword ptr [ebp-1C]
 004C9329    mov        ecx,dword ptr [eax]
 004C932B    call       dword ptr [ecx+18]
 004C932E    mov        eax,dword ptr [ebp-40]
 004C9331    pop        edx
 004C9332    call       AnsiCompareStr
 004C9337    mov        dword ptr [ebp-8],eax
>004C933A    jmp        004C93B8
 004C933C    mov        eax,dword ptr [esi+18]; TZRowAccessor.?f18:.4
 004C933F    test       eax,eax
>004C9341    je         004C9348
 004C9343    cmp        ebx,dword ptr [eax-4]
>004C9346    jb         004C934D
 004C9348    call       @BoundErr
 004C934D    cmp        byte ptr [eax+ebx],11
>004C9351    jne        004C937B
 004C9353    lea        edx,[ebp-44]
 004C9356    mov        eax,dword ptr [ebp-20]
 004C9359    mov        ecx,dword ptr [eax]
 004C935B    call       dword ptr [ecx+18]
 004C935E    mov        eax,dword ptr [ebp-44]
 004C9361    push       eax
 004C9362    lea        edx,[ebp-48]
 004C9365    mov        eax,dword ptr [ebp-1C]
 004C9368    mov        ecx,dword ptr [eax]
 004C936A    call       dword ptr [ecx+18]
 004C936D    mov        eax,dword ptr [ebp-48]
 004C9370    pop        edx
 004C9371    call       CompareStr
 004C9376    mov        dword ptr [ebp-8],eax
>004C9379    jmp        004C93B8
 004C937B    mov        eax,dword ptr [esi+18]; TZRowAccessor.?f18:.4
 004C937E    test       eax,eax
>004C9380    je         004C9387
 004C9382    cmp        ebx,dword ptr [eax-4]
>004C9385    jb         004C938C
 004C9387    call       @BoundErr
 004C938C    cmp        byte ptr [eax+ebx],10
>004C9390    jne        004C93B8
 004C9392    lea        edx,[ebp-4C]
 004C9395    mov        eax,dword ptr [ebp-20]
 004C9398    mov        ecx,dword ptr [eax]
 004C939A    call       dword ptr [ecx+20]
 004C939D    mov        eax,dword ptr [ebp-4C]
 004C93A0    push       eax
 004C93A1    lea        edx,[ebp-50]
 004C93A4    mov        eax,dword ptr [ebp-1C]
 004C93A7    mov        ecx,dword ptr [eax]
 004C93A9    call       dword ptr [ecx+20]
 004C93AC    mov        eax,dword ptr [ebp-50]
 004C93AF    pop        edx
 004C93B0    call       WideCompareStr
 004C93B5    mov        dword ptr [ebp-8],eax
 004C93B8    cmp        dword ptr [ebp-8],0
>004C93BC    je         004C93E4
 004C93BE    mov        eax,dword ptr [ebp-0C]
 004C93C1    mov        edx,dword ptr [ebp+8]
 004C93C4    test       edx,edx
>004C93C6    je         004C93CD
 004C93C8    cmp        eax,dword ptr [edx-4]
>004C93CB    jb         004C93D2
 004C93CD    call       @BoundErr
 004C93D2    cmp        byte ptr [edx+eax],0
>004C93D6    jne        004C93F0
 004C93D8    neg        dword ptr [ebp-8]
>004C93DB    jno        004C93E2
 004C93DD    call       @IntOver
>004C93E2    jmp        004C93F0
 004C93E4    inc        dword ptr [ebp-0C]
 004C93E7    dec        dword ptr [ebp-28]
<004C93EA    jne        004C8DE8
 004C93F0    xor        eax,eax
 004C93F2    pop        edx
 004C93F3    pop        ecx
 004C93F4    pop        ecx
 004C93F5    mov        dword ptr fs:[eax],edx
 004C93F8    push       4C945B
 004C93FD    lea        eax,[ebp-50]
 004C9400    mov        edx,2
 004C9405    call       @WStrArrayClr
 004C940A    lea        eax,[ebp-48]
 004C940D    mov        edx,6
 004C9412    call       @LStrArrayClr
 004C9417    lea        eax,[ebp-30]
 004C941A    mov        edx,2
 004C941F    call       @WStrArrayClr
 004C9424    lea        eax,[ebp-20]
 004C9427    mov        edx,dword ptr ds:[4C7064]; IZBlob
 004C942D    mov        ecx,2
 004C9432    call       @FinalizeArray
 004C9437    lea        eax,[ebp+8]
 004C943A    mov        edx,dword ptr ds:[407380]; TBooleanDynArray
 004C9440    call       @DynArrayClear
 004C9445    lea        eax,[ebp+0C]
 004C9448    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 004C944E    call       @DynArrayClear
 004C9453    ret
<004C9454    jmp        @HandleFinally
<004C9459    jmp        004C93FD
 004C945B    mov        eax,dword ptr [ebp-8]
 004C945E    pop        edi
 004C945F    pop        esi
 004C9460    pop        ebx
 004C9461    mov        esp,ebp
 004C9463    pop        ebp
 004C9464    ret        8
*}
//end;

//004C9468
//procedure sub_004C9468(?:TZRowAccessor; ?:Pointer);
//begin
{*
 004C9468    push       ebp
 004C9469    mov        ebp,esp
 004C946B    add        esp,0FFFFFFF8
 004C946E    push       ebx
 004C946F    push       esi
 004C9470    push       edi
 004C9471    mov        dword ptr [ebp-4],edx
 004C9474    mov        ebx,eax
 004C9476    mov        edi,dword ptr [ebp-4]
 004C9479    mov        dword ptr [edi],0FFFFFFFF
 004C947F    mov        byte ptr [edi+4],0
 004C9483    mov        byte ptr [edi+5],0
 004C9487    cmp        byte ptr [ebx+28],0; TZRowAccessor.?f28:byte
>004C948B    je         004C9503
 004C948D    mov        eax,dword ptr [ebx+0C]; TZRowAccessor.?fC:dword
 004C9490    sub        eax,1
>004C9493    jno        004C949A
 004C9495    call       @IntOver
 004C949A    test       eax,eax
>004C949C    jl         004C9503
 004C949E    inc        eax
 004C949F    mov        dword ptr [ebp-8],eax
 004C94A2    xor        esi,esi
 004C94A4    mov        eax,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004C94A7    test       eax,eax
>004C94A9    je         004C94B0
 004C94AB    cmp        esi,dword ptr [eax-4]
>004C94AE    jb         004C94B5
 004C94B0    call       @BoundErr
 004C94B5    mov        al,byte ptr [eax+esi]
 004C94B8    add        al,0F1
 004C94BA    sub        al,3
>004C94BC    jae        004C94FD
 004C94BE    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004C94C1    test       eax,eax
>004C94C3    je         004C94CA
 004C94C5    cmp        esi,dword ptr [eax-4]
>004C94C8    jb         004C94CF
 004C94CA    call       @BoundErr
 004C94CF    mov        eax,dword ptr [eax+esi*4]
 004C94D2    cmp        eax,7FFF
>004C94D7    jbe        004C94DE
 004C94D9    call       @BoundErr
 004C94DE    cmp        byte ptr [edi+eax+6],0
>004C94E3    jne        004C94FD
 004C94E5    push       0
 004C94E7    mov        ecx,esi
 004C94E9    add        ecx,1
>004C94EC    jno        004C94F3
 004C94EE    call       @IntOver
 004C94F3    mov        edx,dword ptr [ebp-4]
 004C94F6    mov        eax,ebx
 004C94F8    call       004C88C0
 004C94FD    inc        esi
 004C94FE    dec        dword ptr [ebp-8]
<004C9501    jne        004C94A4
 004C9503    lea        eax,[edi+6]
 004C9506    mov        ecx,1
 004C950B    mov        edx,dword ptr [ebx+8]; TZRowAccessor.?f8:dword
 004C950E    call       @FillChar
 004C9513    pop        edi
 004C9514    pop        esi
 004C9515    pop        ebx
 004C9516    pop        ecx
 004C9517    pop        ecx
 004C9518    pop        ebp
 004C9519    ret
*}
//end;

//004C951C
//procedure sub_004C951C(?:TZRowAccessor);
//begin
{*
 004C951C    push       ebp
 004C951D    mov        ebp,esp
 004C951F    lea        edx,[eax+24]; TZRowAccessor.?f24:Pointer
 004C9522    call       004C8998
 004C9527    pop        ebp
 004C9528    ret
*}
//end;

//004C952C
//procedure sub_004C952C(?:dword);
//begin
{*
 004C952C    push       ebp
 004C952D    mov        ebp,esp
 004C952F    push       ebx
 004C9530    mov        ebx,eax
 004C9532    mov        edx,dword ptr [ebx+24]
 004C9535    mov        eax,ebx
 004C9537    call       004C89BC
 004C953C    xor        eax,eax
 004C953E    mov        dword ptr [ebx+24],eax
 004C9541    pop        ebx
 004C9542    pop        ebp
 004C9543    ret
*}
//end;

//004C9544
//procedure sub_004C9544(?:TZRowAccessor);
//begin
{*
 004C9544    push       ebp
 004C9545    mov        ebp,esp
 004C9547    mov        ecx,dword ptr [eax+24]; TZRowAccessor.?f24:Pointer
 004C954A    call       004C8B4C
 004C954F    pop        ebp
 004C9550    ret
*}
//end;

//004C9554
//procedure sub_004C9554(?:TZRowAccessor);
//begin
{*
 004C9554    push       ebp
 004C9555    mov        ebp,esp
 004C9557    mov        ecx,dword ptr [eax+24]; TZRowAccessor.?f24:Pointer
 004C955A    call       004C8B6C
 004C955F    pop        ebp
 004C9560    ret
*}
//end;

//004C9564
//procedure sub_004C9564(?:dword);
//begin
{*
 004C9564    push       ebp
 004C9565    mov        ebp,esp
 004C9567    mov        edx,dword ptr [eax+24]
 004C956A    call       004C9468
 004C956F    pop        ebp
 004C9570    ret
*}
//end;

//004C9574
//function sub_004C9574(?:dword; ?:?; ?:?):?;
//begin
{*
 004C9574    push       ebp
 004C9575    mov        ebp,esp
 004C9577    push       ecx
 004C9578    push       ebx
 004C9579    push       esi
 004C957A    mov        dword ptr [ebp-4],ecx
 004C957D    mov        esi,edx
 004C957F    mov        ebx,eax
 004C9581    mov        cl,9
 004C9583    mov        edx,esi
 004C9585    mov        eax,ebx
 004C9587    call       004C85D8
 004C958C    mov        eax,esi
 004C958E    sub        eax,1
>004C9591    jno        004C9598
 004C9593    call       @IntOver
 004C9598    mov        edx,dword ptr [ebx+20]
 004C959B    test       edx,edx
>004C959D    je         004C95A4
 004C959F    cmp        eax,dword ptr [edx-4]
>004C95A2    jb         004C95A9
 004C95A4    call       @BoundErr
 004C95A9    mov        edx,dword ptr [edx+eax*4]
 004C95AC    add        edx,1
>004C95AF    jno        004C95B6
 004C95B1    call       @IntOver
 004C95B6    cmp        edx,7FFF
>004C95BC    jbe        004C95C3
 004C95BE    call       @BoundErr
 004C95C3    mov        ecx,dword ptr [ebx+24]
 004C95C6    lea        edx,[ecx+edx+6]
 004C95CA    mov        ecx,dword ptr [ebx+20]
 004C95CD    test       ecx,ecx
>004C95CF    je         004C95D6
 004C95D1    cmp        eax,dword ptr [ecx-4]
>004C95D4    jb         004C95DB
 004C95D6    call       @BoundErr
 004C95DB    mov        eax,dword ptr [ecx+eax*4]
 004C95DE    cmp        eax,7FFF
>004C95E3    jbe        004C95EA
 004C95E5    call       @BoundErr
 004C95EA    mov        ecx,dword ptr [ebx+24]
 004C95ED    cmp        byte ptr [ecx+eax+6],1
 004C95F2    mov        eax,dword ptr [ebp-4]
 004C95F5    sete       byte ptr [eax]
 004C95F8    mov        eax,edx
 004C95FA    pop        esi
 004C95FB    pop        ebx
 004C95FC    pop        ecx
 004C95FD    pop        ebp
 004C95FE    ret
*}
//end;

//004C9600
//function sub_004C9600(?:dword; ?:?):?;
//begin
{*
 004C9600    push       ebp
 004C9601    mov        ebp,esp
 004C9603    push       ebx
 004C9604    push       esi
 004C9605    mov        esi,edx
 004C9607    mov        ebx,eax
 004C9609    mov        cl,9
 004C960B    mov        edx,esi
 004C960D    mov        eax,ebx
 004C960F    call       004C85D8
 004C9614    sub        esi,1
>004C9617    jno        004C961E
 004C9619    call       @IntOver
 004C961E    mov        eax,dword ptr [ebx+1C]
 004C9621    test       eax,eax
>004C9623    je         004C962A
 004C9625    cmp        esi,dword ptr [eax-4]
>004C9628    jb         004C962F
 004C962A    call       @BoundErr
 004C962F    mov        eax,dword ptr [eax+esi*4]
 004C9632    pop        esi
 004C9633    pop        ebx
 004C9634    pop        ebp
 004C9635    ret
*}
//end;

//004C9638
//function sub_004C9638(?:TZRowAccessor; ?:dword):?;
//begin
{*
 004C9638    push       ebp
 004C9639    mov        ebp,esp
 004C963B    push       0
 004C963D    push       ebx
 004C963E    push       esi
 004C963F    push       edi
 004C9640    mov        esi,edx
 004C9642    mov        edi,eax
 004C9644    xor        eax,eax
 004C9646    push       ebp
 004C9647    push       4C96FC
 004C964C    push       dword ptr fs:[eax]
 004C964F    mov        dword ptr fs:[eax],esp
 004C9652    mov        cl,9
 004C9654    mov        edx,esi
 004C9656    mov        eax,edi
 004C9658    call       004C85D8
 004C965D    mov        eax,esi
 004C965F    sub        eax,1
>004C9662    jno        004C9669
 004C9664    call       @IntOver
 004C9669    mov        edx,dword ptr [edi+20]; TZRowAccessor.?f20:.6
 004C966C    test       edx,edx
>004C966E    je         004C9675
 004C9670    cmp        eax,dword ptr [edx-4]
>004C9673    jb         004C967A
 004C9675    call       @BoundErr
 004C967A    mov        eax,dword ptr [edx+eax*4]
 004C967D    cmp        eax,7FFF
>004C9682    jbe        004C9689
 004C9684    call       @BoundErr
 004C9689    mov        edx,dword ptr [edi+24]; TZRowAccessor.?f24:Pointer
 004C968C    cmp        byte ptr [edx+eax+6],1
 004C9691    sete       bl
 004C9694    test       bl,bl
>004C9696    jne        004C96E6
 004C9698    mov        eax,esi
 004C969A    sub        eax,1
>004C969D    jno        004C96A4
 004C969F    call       @IntOver
 004C96A4    mov        edx,dword ptr [edi+18]; TZRowAccessor.?f18:.4
 004C96A7    test       edx,edx
>004C96A9    je         004C96B0
 004C96AB    cmp        eax,dword ptr [edx-4]
>004C96AE    jb         004C96B5
 004C96B0    call       @BoundErr
 004C96B5    mov        al,byte ptr [edx+eax]
 004C96B8    add        al,0F1
 004C96BA    sub        al,3
>004C96BC    jae        004C96E6
 004C96BE    lea        eax,[ebp-4]
 004C96C1    push       eax
 004C96C2    mov        ecx,esi
 004C96C4    mov        edx,dword ptr [edi+24]; TZRowAccessor.?f24:Pointer
 004C96C7    mov        eax,edi
 004C96C9    call       004C8834
 004C96CE    cmp        dword ptr [ebp-4],0
>004C96D2    je         004C96E4
 004C96D4    mov        eax,dword ptr [ebp-4]
 004C96D7    mov        edx,dword ptr [eax]
 004C96D9    call       dword ptr [edx+0C]
 004C96DC    test       al,al
>004C96DE    jne        004C96E4
 004C96E0    xor        ebx,ebx
>004C96E2    jmp        004C96E6
 004C96E4    mov        bl,1
 004C96E6    xor        eax,eax
 004C96E8    pop        edx
 004C96E9    pop        ecx
 004C96EA    pop        ecx
 004C96EB    mov        dword ptr fs:[eax],edx
 004C96EE    push       4C9703
 004C96F3    lea        eax,[ebp-4]
 004C96F6    call       @IntfClear
 004C96FB    ret
<004C96FC    jmp        @HandleFinally
<004C9701    jmp        004C96F3
 004C9703    mov        eax,ebx
 004C9705    pop        edi
 004C9706    pop        esi
 004C9707    pop        ebx
 004C9708    pop        ecx
 004C9709    pop        ebp
 004C970A    ret
*}
//end;

//004C970C
//function sub_004C970C(?:TZRowAccessor; ?:?; ?:?):?;
//begin
{*
 004C970C    push       ebp
 004C970D    mov        ebp,esp
 004C970F    add        esp,0FFFFFFF8
 004C9712    push       ebx
 004C9713    push       esi
 004C9714    push       edi
 004C9715    xor        ebx,ebx
 004C9717    mov        dword ptr [ebp-8],ebx
 004C971A    mov        dword ptr [ebp-4],ecx
 004C971D    mov        esi,edx
 004C971F    mov        ebx,eax
 004C9721    xor        eax,eax
 004C9723    push       ebp
 004C9724    push       4C9808
 004C9729    push       dword ptr fs:[eax]
 004C972C    mov        dword ptr fs:[eax],esp
 004C972F    mov        cl,9
 004C9731    mov        edx,esi
 004C9733    mov        eax,ebx
 004C9735    call       004C85D8
 004C973A    xor        edi,edi
 004C973C    mov        eax,esi
 004C973E    sub        eax,1
>004C9741    jno        004C9748
 004C9743    call       @IntOver
 004C9748    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004C974B    test       edx,edx
>004C974D    je         004C9754
 004C974F    cmp        eax,dword ptr [edx-4]
>004C9752    jb         004C9759
 004C9754    call       @BoundErr
 004C9759    mov        edx,dword ptr [edx+eax*4]
 004C975C    cmp        edx,7FFF
>004C9762    jbe        004C9769
 004C9764    call       @BoundErr
 004C9769    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004C976C    cmp        byte ptr [ecx+edx+6],0
>004C9771    jne        004C97EC
 004C9773    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004C9776    test       edx,edx
>004C9778    je         004C977F
 004C977A    cmp        eax,dword ptr [edx-4]
>004C977D    jb         004C9784
 004C977F    call       @BoundErr
 004C9784    mov        dl,byte ptr [edx+eax]
 004C9787    sub        dl,9
>004C978A    jne        004C97BF
 004C978C    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004C978F    test       edx,edx
>004C9791    je         004C9798
 004C9793    cmp        eax,dword ptr [edx-4]
>004C9796    jb         004C979D
 004C9798    call       @BoundErr
 004C979D    mov        eax,dword ptr [edx+eax*4]
 004C97A0    add        eax,1
>004C97A3    jno        004C97AA
 004C97A5    call       @IntOver
 004C97AA    cmp        eax,7FFF
>004C97AF    jbe        004C97B6
 004C97B1    call       @BoundErr
 004C97B6    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004C97B9    lea        edi,[edx+eax+6]
>004C97BD    jmp        004C97E4
 004C97BF    lea        eax,[ebp-8]
 004C97C2    push       eax
 004C97C3    mov        ecx,dword ptr [ebp-4]
 004C97C6    mov        edx,esi
 004C97C8    mov        eax,ebx
 004C97CA    call       004C9818
 004C97CF    mov        edx,dword ptr [ebp-8]
 004C97D2    lea        eax,[ebx+2C]; TZRowAccessor.?f2C:String
 004C97D5    call       @LStrAsg
 004C97DA    mov        eax,dword ptr [ebx+2C]; TZRowAccessor.?f2C:String
 004C97DD    call       @LStrToPChar
 004C97E2    mov        edi,eax
 004C97E4    mov        eax,dword ptr [ebp-4]
 004C97E7    mov        byte ptr [eax],0
>004C97EA    jmp        004C97F2
 004C97EC    mov        eax,dword ptr [ebp-4]
 004C97EF    mov        byte ptr [eax],1
 004C97F2    xor        eax,eax
 004C97F4    pop        edx
 004C97F5    pop        ecx
 004C97F6    pop        ecx
 004C97F7    mov        dword ptr fs:[eax],edx
 004C97FA    push       4C980F
 004C97FF    lea        eax,[ebp-8]
 004C9802    call       @LStrClr
 004C9807    ret
<004C9808    jmp        @HandleFinally
<004C980D    jmp        004C97FF
 004C980F    mov        eax,edi
 004C9811    pop        edi
 004C9812    pop        esi
 004C9813    pop        ebx
 004C9814    pop        ecx
 004C9815    pop        ecx
 004C9816    pop        ebp
 004C9817    ret
*}
//end;

//004C9818
//procedure sub_004C9818(?:TZRowAccessor; ?:dword; ?:?; ?:?);
//begin
{*
 004C9818    push       ebp
 004C9819    mov        ebp,esp
 004C981B    push       0
 004C981D    push       0
 004C981F    push       0
 004C9821    push       0
 004C9823    push       0
 004C9825    push       ebx
 004C9826    push       esi
 004C9827    push       edi
 004C9828    mov        dword ptr [ebp-4],ecx
 004C982B    mov        esi,edx
 004C982D    mov        ebx,eax
 004C982F    mov        edi,dword ptr [ebp+8]
 004C9832    xor        eax,eax
 004C9834    push       ebp
 004C9835    push       4C9B67
 004C983A    push       dword ptr fs:[eax]
 004C983D    mov        dword ptr fs:[eax],esp
 004C9840    mov        cl,9
 004C9842    mov        edx,esi
 004C9844    mov        eax,ebx
 004C9846    call       004C85D8
 004C984B    mov        eax,edi
 004C984D    call       @LStrClr
 004C9852    lea        eax,[ebp-8]
 004C9855    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004C985B    call       @DynArrayClear
 004C9860    mov        eax,esi
 004C9862    sub        eax,1
>004C9865    jno        004C986C
 004C9867    call       @IntOver
 004C986C    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004C986F    test       edx,edx
>004C9871    je         004C9878
 004C9873    cmp        eax,dword ptr [edx-4]
>004C9876    jb         004C987D
 004C9878    call       @BoundErr
 004C987D    mov        eax,dword ptr [edx+eax*4]
 004C9880    cmp        eax,7FFF
>004C9885    jbe        004C988C
 004C9887    call       @BoundErr
 004C988C    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004C988F    cmp        byte ptr [edx+eax+6],0
>004C9894    jne        004C9B27
 004C989A    mov        eax,esi
 004C989C    sub        eax,1
>004C989F    jno        004C98A6
 004C98A1    call       @IntOver
 004C98A6    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004C98A9    test       edx,edx
>004C98AB    je         004C98B2
 004C98AD    cmp        eax,dword ptr [edx-4]
>004C98B0    jb         004C98B7
 004C98B2    call       @BoundErr
 004C98B7    movzx      eax,byte ptr [edx+eax]
 004C98BB    cmp        eax,11
>004C98BE    ja         004C9B1F
 004C98C4    jmp        dword ptr [eax*4+4C98CB]
 004C98C4    dd         4C9B1F
 004C98C4    dd         4C9913
 004C98C4    dd         4C9945
 004C98C4    dd         4C9960
 004C98C4    dd         4C997B
 004C98C4    dd         4C9993
 004C98C4    dd         4C99AD
 004C98C4    dd         4C99CC
 004C98C4    dd         4C99EB
 004C98C4    dd         4C9A0A
 004C98C4    dd         4C9A52
 004C98C4    dd         4C9A71
 004C98C4    dd         4C9A90
 004C98C4    dd         4C9AB1
 004C98C4    dd         4C9AD2
 004C98C4    dd         4C9AF3
 004C98C4    dd         4C9A52
 004C98C4    dd         4C9AF3
 004C9913    mov        ecx,dword ptr [ebp-4]
 004C9916    mov        edx,esi
 004C9918    mov        eax,ebx
 004C991A    call       004C9D40
 004C991F    test       al,al
>004C9921    je         004C9934
 004C9923    mov        eax,edi
 004C9925    mov        edx,4C9B80; 'True'
 004C992A    call       @LStrAsg
>004C992F    jmp        004C9B1F
 004C9934    mov        eax,edi
 004C9936    mov        edx,4C9B90; 'False'
 004C993B    call       @LStrAsg
>004C9940    jmp        004C9B1F
 004C9945    mov        ecx,dword ptr [ebp-4]
 004C9948    mov        edx,esi
 004C994A    mov        eax,ebx
 004C994C    call       004C9FB8
 004C9951    movsx      eax,al
 004C9954    mov        edx,edi
 004C9956    call       IntToStr
>004C995B    jmp        004C9B1F
 004C9960    mov        ecx,dword ptr [ebp-4]
 004C9963    mov        edx,esi
 004C9965    mov        eax,ebx
 004C9967    call       004CA254
 004C996C    movsx      eax,ax
 004C996F    mov        edx,edi
 004C9971    call       IntToStr
>004C9976    jmp        004C9B1F
 004C997B    mov        ecx,dword ptr [ebp-4]
 004C997E    mov        edx,esi
 004C9980    mov        eax,ebx
 004C9982    call       004CA4EC
 004C9987    mov        edx,edi
 004C9989    call       IntToStr
>004C998E    jmp        004C9B1F
 004C9993    mov        ecx,dword ptr [ebp-4]
 004C9996    mov        edx,esi
 004C9998    mov        eax,ebx
 004C999A    call       004CA704
 004C999F    push       edx
 004C99A0    push       eax
 004C99A1    mov        eax,edi
 004C99A3    call       IntToStr
>004C99A8    jmp        004C9B1F
 004C99AD    mov        ecx,dword ptr [ebp-4]
 004C99B0    mov        edx,esi
 004C99B2    mov        eax,ebx
 004C99B4    call       004CA924
 004C99B9    add        esp,0FFFFFFF4
 004C99BC    fstp       tbyte ptr [esp]
 004C99BF    wait
 004C99C0    mov        eax,edi
 004C99C2    call       004BF500
>004C99C7    jmp        004C9B1F
 004C99CC    mov        ecx,dword ptr [ebp-4]
 004C99CF    mov        edx,esi
 004C99D1    mov        eax,ebx
 004C99D3    call       004CAB20
 004C99D8    add        esp,0FFFFFFF4
 004C99DB    fstp       tbyte ptr [esp]
 004C99DE    wait
 004C99DF    mov        eax,edi
 004C99E1    call       004BF500
>004C99E6    jmp        004C9B1F
 004C99EB    mov        ecx,dword ptr [ebp-4]
 004C99EE    mov        edx,esi
 004C99F0    mov        eax,ebx
 004C99F2    call       004CAD30
 004C99F7    add        esp,0FFFFFFF4
 004C99FA    fstp       tbyte ptr [esp]
 004C99FD    wait
 004C99FE    mov        eax,edi
 004C9A00    call       004BF500
>004C9A05    jmp        004C9B1F
 004C9A0A    mov        eax,edi
 004C9A0C    sub        esi,1
>004C9A0F    jno        004C9A16
 004C9A11    call       @IntOver
 004C9A16    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004C9A19    test       edx,edx
>004C9A1B    je         004C9A22
 004C9A1D    cmp        esi,dword ptr [edx-4]
>004C9A20    jb         004C9A27
 004C9A22    call       @BoundErr
 004C9A27    mov        edx,dword ptr [edx+esi*4]
 004C9A2A    add        edx,1
>004C9A2D    jno        004C9A34
 004C9A2F    call       @IntOver
 004C9A34    cmp        edx,7FFF
>004C9A3A    jbe        004C9A41
 004C9A3C    call       @BoundErr
 004C9A41    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004C9A44    lea        edx,[ecx+edx+6]
 004C9A48    call       @LStrFromPChar
>004C9A4D    jmp        004C9B1F
 004C9A52    lea        eax,[ebp-10]
 004C9A55    push       eax
 004C9A56    mov        ecx,dword ptr [ebp-4]
 004C9A59    mov        edx,esi
 004C9A5B    mov        eax,ebx
 004C9A5D    call       004C9BDC
 004C9A62    mov        edx,dword ptr [ebp-10]
 004C9A65    mov        eax,edi
 004C9A67    call       @LStrFromWStr
>004C9A6C    jmp        004C9B1F
 004C9A71    lea        eax,[ebp-14]
 004C9A74    push       eax
 004C9A75    mov        ecx,dword ptr [ebp-4]
 004C9A78    mov        edx,esi
 004C9A7A    mov        eax,ebx
 004C9A7C    call       004CAF54
 004C9A81    mov        eax,dword ptr [ebp-14]
 004C9A84    mov        edx,edi
 004C9A86    call       004BF648
>004C9A8B    jmp        004C9B1F
 004C9A90    mov        ecx,dword ptr [ebp-4]
 004C9A93    mov        edx,esi
 004C9A95    mov        eax,ebx
 004C9A97    call       004CB110
 004C9A9C    add        esp,0FFFFFFF8
 004C9A9F    fstp       qword ptr [esp]
 004C9AA2    wait
 004C9AA3    mov        edx,edi
 004C9AA5    mov        eax,4C9BA0; 'yyyy-mm-dd'
 004C9AAA    call       FormatDateTime
>004C9AAF    jmp        004C9B1F
 004C9AB1    mov        ecx,dword ptr [ebp-4]
 004C9AB4    mov        edx,esi
 004C9AB6    mov        eax,ebx
 004C9AB8    call       004CB24C
 004C9ABD    add        esp,0FFFFFFF8
 004C9AC0    fstp       qword ptr [esp]
 004C9AC3    wait
 004C9AC4    mov        edx,edi
 004C9AC6    mov        eax,4C9BB4; 'hh:mm:ss'
 004C9ACB    call       FormatDateTime
>004C9AD0    jmp        004C9B1F
 004C9AD2    mov        ecx,dword ptr [ebp-4]
 004C9AD5    mov        edx,esi
 004C9AD7    mov        eax,ebx
 004C9AD9    call       004CB380
 004C9ADE    add        esp,0FFFFFFF8
 004C9AE1    fstp       qword ptr [esp]
 004C9AE4    wait
 004C9AE5    mov        edx,edi
 004C9AE7    mov        eax,4C9BC8; 'yyyy-mm-dd hh:mm:ss'
 004C9AEC    call       FormatDateTime
>004C9AF1    jmp        004C9B1F
 004C9AF3    lea        eax,[ebp-0C]
 004C9AF6    push       eax
 004C9AF7    mov        ecx,esi
 004C9AF9    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004C9AFC    mov        eax,ebx
 004C9AFE    call       004C8834
 004C9B03    cmp        dword ptr [ebp-0C],0
>004C9B07    je         004C9B1F
 004C9B09    mov        eax,dword ptr [ebp-0C]
 004C9B0C    mov        edx,dword ptr [eax]
 004C9B0E    call       dword ptr [edx+0C]
 004C9B11    test       al,al
>004C9B13    jne        004C9B1F
 004C9B15    mov        edx,edi
 004C9B17    mov        eax,dword ptr [ebp-0C]
 004C9B1A    mov        ecx,dword ptr [eax]
 004C9B1C    call       dword ptr [ecx+18]
 004C9B1F    mov        eax,dword ptr [ebp-4]
 004C9B22    mov        byte ptr [eax],0
>004C9B25    jmp        004C9B2D
 004C9B27    mov        eax,dword ptr [ebp-4]
 004C9B2A    mov        byte ptr [eax],1
 004C9B2D    xor        eax,eax
 004C9B2F    pop        edx
 004C9B30    pop        ecx
 004C9B31    pop        ecx
 004C9B32    mov        dword ptr fs:[eax],edx
 004C9B35    push       4C9B6E
 004C9B3A    lea        eax,[ebp-14]
 004C9B3D    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004C9B43    call       @DynArrayClear
 004C9B48    lea        eax,[ebp-10]
 004C9B4B    call       @WStrClr
 004C9B50    lea        eax,[ebp-0C]
 004C9B53    call       @IntfClear
 004C9B58    lea        eax,[ebp-8]
 004C9B5B    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004C9B61    call       @DynArrayClear
 004C9B66    ret
<004C9B67    jmp        @HandleFinally
<004C9B6C    jmp        004C9B3A
 004C9B6E    pop        edi
 004C9B6F    pop        esi
 004C9B70    pop        ebx
 004C9B71    mov        esp,ebp
 004C9B73    pop        ebp
 004C9B74    ret        4
*}
//end;

//004C9BDC
//procedure sub_004C9BDC(?:TZRowAccessor; ?:dword; ?:?; ?:?);
//begin
{*
 004C9BDC    push       ebp
 004C9BDD    mov        ebp,esp
 004C9BDF    push       0
 004C9BE1    push       0
 004C9BE3    push       0
 004C9BE5    push       ebx
 004C9BE6    push       esi
 004C9BE7    push       edi
 004C9BE8    mov        dword ptr [ebp-4],ecx
 004C9BEB    mov        esi,edx
 004C9BED    mov        ebx,eax
 004C9BEF    mov        edi,dword ptr [ebp+8]
 004C9BF2    xor        eax,eax
 004C9BF4    push       ebp
 004C9BF5    push       4C9D2F
 004C9BFA    push       dword ptr fs:[eax]
 004C9BFD    mov        dword ptr fs:[eax],esp
 004C9C00    mov        cl,0A
 004C9C02    mov        edx,esi
 004C9C04    mov        eax,ebx
 004C9C06    call       004C85D8
 004C9C0B    mov        eax,edi
 004C9C0D    call       @WStrClr
 004C9C12    mov        eax,esi
 004C9C14    sub        eax,1
>004C9C17    jno        004C9C1E
 004C9C19    call       @IntOver
 004C9C1E    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004C9C21    test       edx,edx
>004C9C23    je         004C9C2A
 004C9C25    cmp        eax,dword ptr [edx-4]
>004C9C28    jb         004C9C2F
 004C9C2A    call       @BoundErr
 004C9C2F    mov        eax,dword ptr [edx+eax*4]
 004C9C32    cmp        eax,7FFF
>004C9C37    jbe        004C9C3E
 004C9C39    call       @BoundErr
 004C9C3E    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004C9C41    cmp        byte ptr [edx+eax+6],0
>004C9C46    jne        004C9D0B
 004C9C4C    mov        eax,esi
 004C9C4E    sub        eax,1
>004C9C51    jno        004C9C58
 004C9C53    call       @IntOver
 004C9C58    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004C9C5B    test       edx,edx
>004C9C5D    je         004C9C64
 004C9C5F    cmp        eax,dword ptr [edx-4]
>004C9C62    jb         004C9C69
 004C9C64    call       @BoundErr
 004C9C69    mov        al,byte ptr [edx+eax]
 004C9C6C    sub        al,0A
>004C9C6E    je         004C9C76
 004C9C70    sub        al,6
>004C9C72    je         004C9CBB
>004C9C74    jmp        004C9CE9
 004C9C76    mov        eax,edi
 004C9C78    sub        esi,1
>004C9C7B    jno        004C9C82
 004C9C7D    call       @IntOver
 004C9C82    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004C9C85    test       edx,edx
>004C9C87    je         004C9C8E
 004C9C89    cmp        esi,dword ptr [edx-4]
>004C9C8C    jb         004C9C93
 004C9C8E    call       @BoundErr
 004C9C93    mov        edx,dword ptr [edx+esi*4]
 004C9C96    add        edx,1
>004C9C99    jno        004C9CA0
 004C9C9B    call       @IntOver
 004C9CA0    cmp        edx,7FFF
>004C9CA6    jbe        004C9CAD
 004C9CA8    call       @BoundErr
 004C9CAD    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004C9CB0    lea        edx,[ecx+edx+6]
 004C9CB4    call       @WStrFromPWChar
>004C9CB9    jmp        004C9D03
 004C9CBB    lea        eax,[ebp-8]
 004C9CBE    push       eax
 004C9CBF    mov        ecx,esi
 004C9CC1    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004C9CC4    mov        eax,ebx
 004C9CC6    call       004C8834
 004C9CCB    cmp        dword ptr [ebp-8],0
>004C9CCF    je         004C9D03
 004C9CD1    mov        eax,dword ptr [ebp-8]
 004C9CD4    mov        edx,dword ptr [eax]
 004C9CD6    call       dword ptr [edx+0C]
 004C9CD9    test       al,al
>004C9CDB    jne        004C9D03
 004C9CDD    mov        edx,edi
 004C9CDF    mov        eax,dword ptr [ebp-8]
 004C9CE2    mov        ecx,dword ptr [eax]
 004C9CE4    call       dword ptr [ecx+20]
>004C9CE7    jmp        004C9D03
 004C9CE9    lea        eax,[ebp-0C]
 004C9CEC    push       eax
 004C9CED    mov        ecx,dword ptr [ebp-4]
 004C9CF0    mov        edx,esi
 004C9CF2    mov        eax,ebx
 004C9CF4    call       004C9818
 004C9CF9    mov        edx,dword ptr [ebp-0C]
 004C9CFC    mov        eax,edi
 004C9CFE    call       @WStrFromLStr
 004C9D03    mov        eax,dword ptr [ebp-4]
 004C9D06    mov        byte ptr [eax],0
>004C9D09    jmp        004C9D11
 004C9D0B    mov        eax,dword ptr [ebp-4]
 004C9D0E    mov        byte ptr [eax],1
 004C9D11    xor        eax,eax
 004C9D13    pop        edx
 004C9D14    pop        ecx
 004C9D15    pop        ecx
 004C9D16    mov        dword ptr fs:[eax],edx
 004C9D19    push       4C9D36
 004C9D1E    lea        eax,[ebp-0C]
 004C9D21    call       @LStrClr
 004C9D26    lea        eax,[ebp-8]
 004C9D29    call       @IntfClear
 004C9D2E    ret
<004C9D2F    jmp        @HandleFinally
<004C9D34    jmp        004C9D1E
 004C9D36    pop        edi
 004C9D37    pop        esi
 004C9D38    pop        ebx
 004C9D39    mov        esp,ebp
 004C9D3B    pop        ebp
 004C9D3C    ret        4
*}
//end;

//004C9D40
//function sub_004C9D40(?:TZRowAccessor; ?:dword; ?:?):?;
//begin
{*
 004C9D40    push       ebp
 004C9D41    mov        ebp,esp
 004C9D43    push       0
 004C9D45    push       0
 004C9D47    push       0
 004C9D49    push       ebx
 004C9D4A    push       esi
 004C9D4B    push       edi
 004C9D4C    mov        dword ptr [ebp-4],ecx
 004C9D4F    mov        esi,edx
 004C9D51    mov        edi,eax
 004C9D53    xor        eax,eax
 004C9D55    push       ebp
 004C9D56    push       4C9F6D
 004C9D5B    push       dword ptr fs:[eax]
 004C9D5E    mov        dword ptr fs:[eax],esp
 004C9D61    mov        cl,1
 004C9D63    mov        edx,esi
 004C9D65    mov        eax,edi
 004C9D67    call       004C85D8
 004C9D6C    xor        ebx,ebx
 004C9D6E    mov        eax,esi
 004C9D70    sub        eax,1
>004C9D73    jno        004C9D7A
 004C9D75    call       @IntOver
 004C9D7A    mov        edx,dword ptr [edi+20]; TZRowAccessor.?f20:.6
 004C9D7D    test       edx,edx
>004C9D7F    je         004C9D86
 004C9D81    cmp        eax,dword ptr [edx-4]
>004C9D84    jb         004C9D8B
 004C9D86    call       @BoundErr
 004C9D8B    mov        edx,dword ptr [edx+eax*4]
 004C9D8E    cmp        edx,7FFF
>004C9D94    jbe        004C9D9B
 004C9D96    call       @BoundErr
 004C9D9B    mov        ecx,dword ptr [edi+24]; TZRowAccessor.?f24:Pointer
 004C9D9E    cmp        byte ptr [ecx+edx+6],0
>004C9DA3    jne        004C9F4C
 004C9DA9    mov        edx,dword ptr [edi+18]; TZRowAccessor.?f18:.4
 004C9DAC    test       edx,edx
>004C9DAE    je         004C9DB5
 004C9DB0    cmp        eax,dword ptr [edx-4]
>004C9DB3    jb         004C9DBA
 004C9DB5    call       @BoundErr
 004C9DBA    movzx      edx,byte ptr [edx+eax]
 004C9DBE    cmp        edx,0A
>004C9DC1    ja         004C9F44
 004C9DC7    jmp        dword ptr [edx*4+4C9DCE]
 004C9DC7    dd         4C9F44
 004C9DC7    dd         4C9DFA
 004C9DC7    dd         4C9E37
 004C9DC7    dd         4C9E4D
 004C9DC7    dd         4C9E64
 004C9DC7    dd         4C9E7A
 004C9DC7    dd         4C9E96
 004C9DC7    dd         4C9EB3
 004C9DC7    dd         4C9ECD
 004C9DC7    dd         4C9EE7
 004C9DC7    dd         4C9EE7
 004C9DFA    mov        edx,dword ptr [edi+20]; TZRowAccessor.?f20:.6
 004C9DFD    test       edx,edx
>004C9DFF    je         004C9E06
 004C9E01    cmp        eax,dword ptr [edx-4]
>004C9E04    jb         004C9E0B
 004C9E06    call       @BoundErr
 004C9E0B    mov        eax,dword ptr [edx+eax*4]
 004C9E0E    add        eax,1
>004C9E11    jno        004C9E18
 004C9E13    call       @IntOver
 004C9E18    cmp        eax,7FFF
>004C9E1D    jbe        004C9E24
 004C9E1F    call       @BoundErr
 004C9E24    mov        edx,dword ptr [edi+24]; TZRowAccessor.?f24:Pointer
 004C9E27    lea        eax,[edx+eax+6]
 004C9E2B    cmp        word ptr [eax],1
 004C9E2F    sbb        ebx,ebx
 004C9E31    inc        ebx
>004C9E32    jmp        004C9F44
 004C9E37    mov        ecx,dword ptr [ebp-4]
 004C9E3A    mov        edx,esi
 004C9E3C    mov        eax,edi
 004C9E3E    call       004C9FB8
 004C9E43    test       al,al
 004C9E45    setne      bl
>004C9E48    jmp        004C9F44
 004C9E4D    mov        ecx,dword ptr [ebp-4]
 004C9E50    mov        edx,esi
 004C9E52    mov        eax,edi
 004C9E54    call       004CA254
 004C9E59    test       ax,ax
 004C9E5C    setne      bl
>004C9E5F    jmp        004C9F44
 004C9E64    mov        ecx,dword ptr [ebp-4]
 004C9E67    mov        edx,esi
 004C9E69    mov        eax,edi
 004C9E6B    call       004CA4EC
 004C9E70    test       eax,eax
 004C9E72    setne      bl
>004C9E75    jmp        004C9F44
 004C9E7A    mov        ecx,dword ptr [ebp-4]
 004C9E7D    mov        edx,esi
 004C9E7F    mov        eax,edi
 004C9E81    call       004CA704
 004C9E86    cmp        edx,0
>004C9E89    jne        004C9E8E
 004C9E8B    cmp        eax,0
 004C9E8E    setne      bl
>004C9E91    jmp        004C9F44
 004C9E96    mov        ecx,dword ptr [ebp-4]
 004C9E99    mov        edx,esi
 004C9E9B    mov        eax,edi
 004C9E9D    call       004CA924
 004C9EA2    fcomp      dword ptr ds:[4C9F80]; 0:Single
 004C9EA8    fnstsw     al
 004C9EAA    sahf
 004C9EAB    setne      bl
>004C9EAE    jmp        004C9F44
 004C9EB3    mov        ecx,dword ptr [ebp-4]
 004C9EB6    mov        edx,esi
 004C9EB8    mov        eax,edi
 004C9EBA    call       004CAB20
 004C9EBF    fcomp      dword ptr ds:[4C9F80]; 0:Single
 004C9EC5    fnstsw     al
 004C9EC7    sahf
 004C9EC8    setne      bl
>004C9ECB    jmp        004C9F44
 004C9ECD    mov        ecx,dword ptr [ebp-4]
 004C9ED0    mov        edx,esi
 004C9ED2    mov        eax,edi
 004C9ED4    call       004CAD30
 004C9ED9    fcomp      dword ptr ds:[4C9F80]; 0:Single
 004C9EDF    fnstsw     al
 004C9EE1    sahf
 004C9EE2    setne      bl
>004C9EE5    jmp        004C9F44
 004C9EE7    lea        eax,[ebp-0C]
 004C9EEA    push       eax
 004C9EEB    mov        ecx,dword ptr [ebp-4]
 004C9EEE    mov        edx,esi
 004C9EF0    mov        eax,edi
 004C9EF2    call       004C9818
 004C9EF7    mov        eax,dword ptr [ebp-0C]
 004C9EFA    lea        edx,[ebp-8]
 004C9EFD    call       UpperCase
 004C9F02    mov        eax,dword ptr [ebp-8]
 004C9F05    mov        edx,4C9F8C; 'T'
 004C9F0A    call       @LStrCmp
>004C9F0F    je         004C9F42
 004C9F11    mov        eax,dword ptr [ebp-8]
 004C9F14    mov        edx,4C9F98; 'Y'
 004C9F19    call       @LStrCmp
>004C9F1E    je         004C9F42
 004C9F20    mov        eax,dword ptr [ebp-8]
 004C9F23    mov        edx,4C9FA4; 'TRUE'
 004C9F28    call       @LStrCmp
>004C9F2D    je         004C9F42
 004C9F2F    mov        eax,dword ptr [ebp-8]
 004C9F32    mov        edx,4C9FB4; 'YES'
 004C9F37    call       @LStrCmp
>004C9F3C    je         004C9F42
 004C9F3E    xor        ebx,ebx
>004C9F40    jmp        004C9F44
 004C9F42    mov        bl,1
 004C9F44    mov        eax,dword ptr [ebp-4]
 004C9F47    mov        byte ptr [eax],0
>004C9F4A    jmp        004C9F52
 004C9F4C    mov        eax,dword ptr [ebp-4]
 004C9F4F    mov        byte ptr [eax],1
 004C9F52    xor        eax,eax
 004C9F54    pop        edx
 004C9F55    pop        ecx
 004C9F56    pop        ecx
 004C9F57    mov        dword ptr fs:[eax],edx
 004C9F5A    push       4C9F74
 004C9F5F    lea        eax,[ebp-0C]
 004C9F62    mov        edx,2
 004C9F67    call       @LStrArrayClr
 004C9F6C    ret
<004C9F6D    jmp        @HandleFinally
<004C9F72    jmp        004C9F5F
 004C9F74    mov        eax,ebx
 004C9F76    pop        edi
 004C9F77    pop        esi
 004C9F78    pop        ebx
 004C9F79    mov        esp,ebp
 004C9F7B    pop        ebp
 004C9F7C    ret
*}
//end;

//004C9FB8
//function sub_004C9FB8(?:TZRowAccessor; ?:dword; ?:?):?;
//begin
{*
 004C9FB8    push       ebp
 004C9FB9    mov        ebp,esp
 004C9FBB    add        esp,0FFFFFFF8
 004C9FBE    push       ebx
 004C9FBF    push       esi
 004C9FC0    push       edi
 004C9FC1    xor        ebx,ebx
 004C9FC3    mov        dword ptr [ebp-8],ebx
 004C9FC6    mov        dword ptr [ebp-4],ecx
 004C9FC9    mov        esi,edx
 004C9FCB    mov        edi,eax
 004C9FCD    xor        eax,eax
 004C9FCF    push       ebp
 004C9FD0    push       4CA244
 004C9FD5    push       dword ptr fs:[eax]
 004C9FD8    mov        dword ptr fs:[eax],esp
 004C9FDB    mov        cl,2
 004C9FDD    mov        edx,esi
 004C9FDF    mov        eax,edi
 004C9FE1    call       004C85D8
 004C9FE6    xor        ebx,ebx
 004C9FE8    mov        eax,esi
 004C9FEA    sub        eax,1
>004C9FED    jno        004C9FF4
 004C9FEF    call       @IntOver
 004C9FF4    mov        edx,dword ptr [edi+20]; TZRowAccessor.?f20:.6
 004C9FF7    test       edx,edx
>004C9FF9    je         004CA000
 004C9FFB    cmp        eax,dword ptr [edx-4]
>004C9FFE    jb         004CA005
 004CA000    call       @BoundErr
 004CA005    mov        edx,dword ptr [edx+eax*4]
 004CA008    cmp        edx,7FFF
>004CA00E    jbe        004CA015
 004CA010    call       @BoundErr
 004CA015    mov        ecx,dword ptr [edi+24]; TZRowAccessor.?f24:Pointer
 004CA018    cmp        byte ptr [ecx+edx+6],0
>004CA01D    jne        004CA228
 004CA023    mov        edx,dword ptr [edi+18]; TZRowAccessor.?f18:.4
 004CA026    test       edx,edx
>004CA028    je         004CA02F
 004CA02A    cmp        eax,dword ptr [edx-4]
>004CA02D    jb         004CA034
 004CA02F    call       @BoundErr
 004CA034    movzx      edx,byte ptr [edx+eax]
 004CA038    cmp        edx,0A
>004CA03B    ja         004CA220
 004CA041    jmp        dword ptr [edx*4+4CA048]
 004CA041    dd         4CA220
 004CA041    dd         4CA074
 004CA041    dd         4CA092
 004CA041    dd         4CA0CA
 004CA041    dd         4CA0F4
 004CA041    dd         4CA11D
 004CA041    dd         4CA14F
 004CA041    dd         4CA186
 004CA041    dd         4CA1BA
 004CA041    dd         4CA1EE
 004CA041    dd         4CA1EE
 004CA074    mov        ecx,dword ptr [ebp-4]
 004CA077    mov        edx,esi
 004CA079    mov        eax,edi
 004CA07B    call       004C9D40
 004CA080    test       al,al
>004CA082    je         004CA08B
 004CA084    mov        bl,1
>004CA086    jmp        004CA220
 004CA08B    xor        ebx,ebx
>004CA08D    jmp        004CA220
 004CA092    mov        edx,dword ptr [edi+20]; TZRowAccessor.?f20:.6
 004CA095    test       edx,edx
>004CA097    je         004CA09E
 004CA099    cmp        eax,dword ptr [edx-4]
>004CA09C    jb         004CA0A3
 004CA09E    call       @BoundErr
 004CA0A3    mov        eax,dword ptr [edx+eax*4]
 004CA0A6    add        eax,1
>004CA0A9    jno        004CA0B0
 004CA0AB    call       @IntOver
 004CA0B0    cmp        eax,7FFF
>004CA0B5    jbe        004CA0BC
 004CA0B7    call       @BoundErr
 004CA0BC    mov        edx,dword ptr [edi+24]; TZRowAccessor.?f24:Pointer
 004CA0BF    lea        eax,[edx+eax+6]
 004CA0C3    mov        bl,byte ptr [eax]
>004CA0C5    jmp        004CA220
 004CA0CA    mov        ecx,dword ptr [ebp-4]
 004CA0CD    mov        edx,esi
 004CA0CF    mov        eax,edi
 004CA0D1    call       004CA254
 004CA0D6    movsx      ebx,ax
 004CA0D9    add        ebx,80
 004CA0DF    cmp        ebx,0FF
>004CA0E5    jbe        004CA0EC
 004CA0E7    call       @BoundErr
 004CA0EC    add        ebx,0FFFFFF80
>004CA0EF    jmp        004CA220
 004CA0F4    mov        ecx,dword ptr [ebp-4]
 004CA0F7    mov        edx,esi
 004CA0F9    mov        eax,edi
 004CA0FB    call       004CA4EC
 004CA100    mov        ebx,eax
 004CA102    add        ebx,80
 004CA108    cmp        ebx,0FF
>004CA10E    jbe        004CA115
 004CA110    call       @BoundErr
 004CA115    add        ebx,0FFFFFF80
>004CA118    jmp        004CA220
 004CA11D    mov        ecx,dword ptr [ebp-4]
 004CA120    mov        edx,esi
 004CA122    mov        eax,edi
 004CA124    call       004CA704
 004CA129    add        eax,80
 004CA12E    adc        edx,0
 004CA131    cmp        edx,0
>004CA134    jne        004CA13B
 004CA136    cmp        eax,0FF
>004CA13B    jbe        004CA142
 004CA13D    call       @BoundErr
 004CA142    add        eax,0FFFFFF80
 004CA145    adc        edx,0FFFFFFFF
 004CA148    mov        ebx,eax
>004CA14A    jmp        004CA220
 004CA14F    mov        ecx,dword ptr [ebp-4]
 004CA152    mov        edx,esi
 004CA154    mov        eax,edi
 004CA156    call       004CA924
 004CA15B    call       @TRUNC
 004CA160    add        eax,80
 004CA165    adc        edx,0
 004CA168    cmp        edx,0
>004CA16B    jne        004CA172
 004CA16D    cmp        eax,0FF
>004CA172    jbe        004CA179
 004CA174    call       @BoundErr
 004CA179    add        eax,0FFFFFF80
 004CA17C    adc        edx,0FFFFFFFF
 004CA17F    mov        ebx,eax
>004CA181    jmp        004CA220
 004CA186    mov        ecx,dword ptr [ebp-4]
 004CA189    mov        edx,esi
 004CA18B    mov        eax,edi
 004CA18D    call       004CAB20
 004CA192    call       @TRUNC
 004CA197    add        eax,80
 004CA19C    adc        edx,0
 004CA19F    cmp        edx,0
>004CA1A2    jne        004CA1A9
 004CA1A4    cmp        eax,0FF
>004CA1A9    jbe        004CA1B0
 004CA1AB    call       @BoundErr
 004CA1B0    add        eax,0FFFFFF80
 004CA1B3    adc        edx,0FFFFFFFF
 004CA1B6    mov        ebx,eax
>004CA1B8    jmp        004CA220
 004CA1BA    mov        ecx,dword ptr [ebp-4]
 004CA1BD    mov        edx,esi
 004CA1BF    mov        eax,edi
 004CA1C1    call       004CAD30
 004CA1C6    call       @TRUNC
 004CA1CB    add        eax,80
 004CA1D0    adc        edx,0
 004CA1D3    cmp        edx,0
>004CA1D6    jne        004CA1DD
 004CA1D8    cmp        eax,0FF
>004CA1DD    jbe        004CA1E4
 004CA1DF    call       @BoundErr
 004CA1E4    add        eax,0FFFFFF80
 004CA1E7    adc        edx,0FFFFFFFF
 004CA1EA    mov        ebx,eax
>004CA1EC    jmp        004CA220
 004CA1EE    lea        eax,[ebp-8]
 004CA1F1    push       eax
 004CA1F2    mov        ecx,dword ptr [ebp-4]
 004CA1F5    mov        edx,esi
 004CA1F7    mov        eax,edi
 004CA1F9    call       004C9818
 004CA1FE    mov        eax,dword ptr [ebp-8]
 004CA201    xor        edx,edx
 004CA203    call       StrToIntDef
 004CA208    mov        ebx,eax
 004CA20A    add        ebx,80
 004CA210    cmp        ebx,0FF
>004CA216    jbe        004CA21D
 004CA218    call       @BoundErr
 004CA21D    add        ebx,0FFFFFF80
 004CA220    mov        eax,dword ptr [ebp-4]
 004CA223    mov        byte ptr [eax],0
>004CA226    jmp        004CA22E
 004CA228    mov        eax,dword ptr [ebp-4]
 004CA22B    mov        byte ptr [eax],1
 004CA22E    xor        eax,eax
 004CA230    pop        edx
 004CA231    pop        ecx
 004CA232    pop        ecx
 004CA233    mov        dword ptr fs:[eax],edx
 004CA236    push       4CA24B
 004CA23B    lea        eax,[ebp-8]
 004CA23E    call       @LStrClr
 004CA243    ret
<004CA244    jmp        @HandleFinally
<004CA249    jmp        004CA23B
 004CA24B    mov        eax,ebx
 004CA24D    pop        edi
 004CA24E    pop        esi
 004CA24F    pop        ebx
 004CA250    pop        ecx
 004CA251    pop        ecx
 004CA252    pop        ebp
 004CA253    ret
*}
//end;

//004CA254
//function sub_004CA254(?:TZRowAccessor; ?:dword; ?:?):?;
//begin
{*
 004CA254    push       ebp
 004CA255    mov        ebp,esp
 004CA257    add        esp,0FFFFFFF8
 004CA25A    push       ebx
 004CA25B    push       esi
 004CA25C    push       edi
 004CA25D    xor        ebx,ebx
 004CA25F    mov        dword ptr [ebp-8],ebx
 004CA262    mov        dword ptr [ebp-4],ecx
 004CA265    mov        esi,edx
 004CA267    mov        ebx,eax
 004CA269    xor        eax,eax
 004CA26B    push       ebp
 004CA26C    push       4CA4DB
 004CA271    push       dword ptr fs:[eax]
 004CA274    mov        dword ptr fs:[eax],esp
 004CA277    mov        cl,3
 004CA279    mov        edx,esi
 004CA27B    mov        eax,ebx
 004CA27D    call       004C85D8
 004CA282    xor        edi,edi
 004CA284    mov        eax,esi
 004CA286    sub        eax,1
>004CA289    jno        004CA290
 004CA28B    call       @IntOver
 004CA290    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CA293    test       edx,edx
>004CA295    je         004CA29C
 004CA297    cmp        eax,dword ptr [edx-4]
>004CA29A    jb         004CA2A1
 004CA29C    call       @BoundErr
 004CA2A1    mov        edx,dword ptr [edx+eax*4]
 004CA2A4    cmp        edx,7FFF
>004CA2AA    jbe        004CA2B1
 004CA2AC    call       @BoundErr
 004CA2B1    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CA2B4    cmp        byte ptr [ecx+edx+6],0
>004CA2B9    jne        004CA4BF
 004CA2BF    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CA2C2    test       edx,edx
>004CA2C4    je         004CA2CB
 004CA2C6    cmp        eax,dword ptr [edx-4]
>004CA2C9    jb         004CA2D0
 004CA2CB    call       @BoundErr
 004CA2D0    movzx      edx,byte ptr [edx+eax]
 004CA2D4    cmp        edx,0A
>004CA2D7    ja         004CA4B7
 004CA2DD    jmp        dword ptr [edx*4+4CA2E4]
 004CA2DD    dd         4CA4B7
 004CA2DD    dd         4CA310
 004CA2DD    dd         4CA330
 004CA2DD    dd         4CA344
 004CA2DD    dd         4CA37D
 004CA2DD    dd         4CA3A9
 004CA2DD    dd         4CA3DD
 004CA2DD    dd         4CA416
 004CA2DD    dd         4CA44C
 004CA2DD    dd         4CA482
 004CA2DD    dd         4CA482
 004CA310    mov        ecx,dword ptr [ebp-4]
 004CA313    mov        edx,esi
 004CA315    mov        eax,ebx
 004CA317    call       004C9D40
 004CA31C    test       al,al
>004CA31E    je         004CA329
 004CA320    mov        di,1
>004CA324    jmp        004CA4B7
 004CA329    xor        edi,edi
>004CA32B    jmp        004CA4B7
 004CA330    mov        ecx,dword ptr [ebp-4]
 004CA333    mov        edx,esi
 004CA335    mov        eax,ebx
 004CA337    call       004C9FB8
 004CA33C    movsx      edi,al
>004CA33F    jmp        004CA4B7
 004CA344    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CA347    test       edx,edx
>004CA349    je         004CA350
 004CA34B    cmp        eax,dword ptr [edx-4]
>004CA34E    jb         004CA355
 004CA350    call       @BoundErr
 004CA355    mov        eax,dword ptr [edx+eax*4]
 004CA358    add        eax,1
>004CA35B    jno        004CA362
 004CA35D    call       @IntOver
 004CA362    cmp        eax,7FFF
>004CA367    jbe        004CA36E
 004CA369    call       @BoundErr
 004CA36E    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CA371    lea        eax,[edx+eax+6]
 004CA375    mov        di,word ptr [eax]
>004CA378    jmp        004CA4B7
 004CA37D    mov        ecx,dword ptr [ebp-4]
 004CA380    mov        edx,esi
 004CA382    mov        eax,ebx
 004CA384    call       004CA4EC
 004CA389    mov        edi,eax
 004CA38B    add        edi,8000
 004CA391    cmp        edi,0FFFF
>004CA397    jbe        004CA39E
 004CA399    call       @BoundErr
 004CA39E    add        edi,0FFFF8000
>004CA3A4    jmp        004CA4B7
 004CA3A9    mov        ecx,dword ptr [ebp-4]
 004CA3AC    mov        edx,esi
 004CA3AE    mov        eax,ebx
 004CA3B0    call       004CA704
 004CA3B5    add        eax,8000
 004CA3BA    adc        edx,0
 004CA3BD    cmp        edx,0
>004CA3C0    jne        004CA3C7
 004CA3C2    cmp        eax,0FFFF
>004CA3C7    jbe        004CA3CE
 004CA3C9    call       @BoundErr
 004CA3CE    add        eax,0FFFF8000
 004CA3D3    adc        edx,0FFFFFFFF
 004CA3D6    mov        edi,eax
>004CA3D8    jmp        004CA4B7
 004CA3DD    mov        ecx,dword ptr [ebp-4]
 004CA3E0    mov        edx,esi
 004CA3E2    mov        eax,ebx
 004CA3E4    call       004CA924
 004CA3E9    call       @TRUNC
 004CA3EE    add        eax,8000
 004CA3F3    adc        edx,0
 004CA3F6    cmp        edx,0
>004CA3F9    jne        004CA400
 004CA3FB    cmp        eax,0FFFF
>004CA400    jbe        004CA407
 004CA402    call       @BoundErr
 004CA407    add        eax,0FFFF8000
 004CA40C    adc        edx,0FFFFFFFF
 004CA40F    mov        edi,eax
>004CA411    jmp        004CA4B7
 004CA416    mov        ecx,dword ptr [ebp-4]
 004CA419    mov        edx,esi
 004CA41B    mov        eax,ebx
 004CA41D    call       004CAB20
 004CA422    call       @TRUNC
 004CA427    add        eax,8000
 004CA42C    adc        edx,0
 004CA42F    cmp        edx,0
>004CA432    jne        004CA439
 004CA434    cmp        eax,0FFFF
>004CA439    jbe        004CA440
 004CA43B    call       @BoundErr
 004CA440    add        eax,0FFFF8000
 004CA445    adc        edx,0FFFFFFFF
 004CA448    mov        edi,eax
>004CA44A    jmp        004CA4B7
 004CA44C    mov        ecx,dword ptr [ebp-4]
 004CA44F    mov        edx,esi
 004CA451    mov        eax,ebx
 004CA453    call       004CAD30
 004CA458    call       @TRUNC
 004CA45D    add        eax,8000
 004CA462    adc        edx,0
 004CA465    cmp        edx,0
>004CA468    jne        004CA46F
 004CA46A    cmp        eax,0FFFF
>004CA46F    jbe        004CA476
 004CA471    call       @BoundErr
 004CA476    add        eax,0FFFF8000
 004CA47B    adc        edx,0FFFFFFFF
 004CA47E    mov        edi,eax
>004CA480    jmp        004CA4B7
 004CA482    lea        eax,[ebp-8]
 004CA485    push       eax
 004CA486    mov        ecx,dword ptr [ebp-4]
 004CA489    mov        edx,esi
 004CA48B    mov        eax,ebx
 004CA48D    call       004C9818
 004CA492    mov        eax,dword ptr [ebp-8]
 004CA495    xor        edx,edx
 004CA497    call       StrToIntDef
 004CA49C    mov        edi,eax
 004CA49E    add        edi,8000
 004CA4A4    cmp        edi,0FFFF
>004CA4AA    jbe        004CA4B1
 004CA4AC    call       @BoundErr
 004CA4B1    add        edi,0FFFF8000
 004CA4B7    mov        eax,dword ptr [ebp-4]
 004CA4BA    mov        byte ptr [eax],0
>004CA4BD    jmp        004CA4C5
 004CA4BF    mov        eax,dword ptr [ebp-4]
 004CA4C2    mov        byte ptr [eax],1
 004CA4C5    xor        eax,eax
 004CA4C7    pop        edx
 004CA4C8    pop        ecx
 004CA4C9    pop        ecx
 004CA4CA    mov        dword ptr fs:[eax],edx
 004CA4CD    push       4CA4E2
 004CA4D2    lea        eax,[ebp-8]
 004CA4D5    call       @LStrClr
 004CA4DA    ret
<004CA4DB    jmp        @HandleFinally
<004CA4E0    jmp        004CA4D2
 004CA4E2    mov        eax,edi
 004CA4E4    pop        edi
 004CA4E5    pop        esi
 004CA4E6    pop        ebx
 004CA4E7    pop        ecx
 004CA4E8    pop        ecx
 004CA4E9    pop        ebp
 004CA4EA    ret
*}
//end;

//004CA4EC
//function sub_004CA4EC(?:TZRowAccessor; ?:dword; ?:?):?;
//begin
{*
 004CA4EC    push       ebp
 004CA4ED    mov        ebp,esp
 004CA4EF    add        esp,0FFFFFFF8
 004CA4F2    push       ebx
 004CA4F3    push       esi
 004CA4F4    push       edi
 004CA4F5    xor        ebx,ebx
 004CA4F7    mov        dword ptr [ebp-8],ebx
 004CA4FA    mov        dword ptr [ebp-4],ecx
 004CA4FD    mov        esi,edx
 004CA4FF    mov        ebx,eax
 004CA501    xor        eax,eax
 004CA503    push       ebp
 004CA504    push       4CA6F3
 004CA509    push       dword ptr fs:[eax]
 004CA50C    mov        dword ptr fs:[eax],esp
 004CA50F    mov        cl,4
 004CA511    mov        edx,esi
 004CA513    mov        eax,ebx
 004CA515    call       004C85D8
 004CA51A    xor        edi,edi
 004CA51C    mov        eax,esi
 004CA51E    sub        eax,1
>004CA521    jno        004CA528
 004CA523    call       @IntOver
 004CA528    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CA52B    test       edx,edx
>004CA52D    je         004CA534
 004CA52F    cmp        eax,dword ptr [edx-4]
>004CA532    jb         004CA539
 004CA534    call       @BoundErr
 004CA539    mov        edx,dword ptr [edx+eax*4]
 004CA53C    cmp        edx,7FFF
>004CA542    jbe        004CA549
 004CA544    call       @BoundErr
 004CA549    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CA54C    cmp        byte ptr [ecx+edx+6],0
>004CA551    jne        004CA6D7
 004CA557    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CA55A    test       edx,edx
>004CA55C    je         004CA563
 004CA55E    cmp        eax,dword ptr [edx-4]
>004CA561    jb         004CA568
 004CA563    call       @BoundErr
 004CA568    movzx      edx,byte ptr [edx+eax]
 004CA56C    cmp        edx,0A
>004CA56F    ja         004CA6CF
 004CA575    jmp        dword ptr [edx*4+4CA57C]
 004CA575    dd         4CA6CF
 004CA575    dd         4CA5A8
 004CA575    dd         4CA5C9
 004CA575    dd         4CA5DD
 004CA575    dd         4CA5F1
 004CA575    dd         4CA629
 004CA575    dd         4CA64A
 004CA575    dd         4CA66D
 004CA575    dd         4CA690
 004CA575    dd         4CA6B3
 004CA575    dd         4CA6B3
 004CA5A8    mov        ecx,dword ptr [ebp-4]
 004CA5AB    mov        edx,esi
 004CA5AD    mov        eax,ebx
 004CA5AF    call       004C9D40
 004CA5B4    test       al,al
>004CA5B6    je         004CA5C2
 004CA5B8    mov        edi,1
>004CA5BD    jmp        004CA6CF
 004CA5C2    xor        edi,edi
>004CA5C4    jmp        004CA6CF
 004CA5C9    mov        ecx,dword ptr [ebp-4]
 004CA5CC    mov        edx,esi
 004CA5CE    mov        eax,ebx
 004CA5D0    call       004C9FB8
 004CA5D5    movsx      edi,al
>004CA5D8    jmp        004CA6CF
 004CA5DD    mov        ecx,dword ptr [ebp-4]
 004CA5E0    mov        edx,esi
 004CA5E2    mov        eax,ebx
 004CA5E4    call       004CA254
 004CA5E9    movsx      edi,ax
>004CA5EC    jmp        004CA6CF
 004CA5F1    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CA5F4    test       edx,edx
>004CA5F6    je         004CA5FD
 004CA5F8    cmp        eax,dword ptr [edx-4]
>004CA5FB    jb         004CA602
 004CA5FD    call       @BoundErr
 004CA602    mov        eax,dword ptr [edx+eax*4]
 004CA605    add        eax,1
>004CA608    jno        004CA60F
 004CA60A    call       @IntOver
 004CA60F    cmp        eax,7FFF
>004CA614    jbe        004CA61B
 004CA616    call       @BoundErr
 004CA61B    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CA61E    lea        eax,[edx+eax+6]
 004CA622    mov        edi,dword ptr [eax]
>004CA624    jmp        004CA6CF
 004CA629    mov        ecx,dword ptr [ebp-4]
 004CA62C    mov        edx,esi
 004CA62E    mov        eax,ebx
 004CA630    call       004CA704
 004CA635    push       eax
 004CA636    sar        eax,1F
 004CA639    cmp        eax,edx
 004CA63B    pop        eax
>004CA63C    je         004CA643
 004CA63E    call       @BoundErr
 004CA643    mov        edi,eax
>004CA645    jmp        004CA6CF
 004CA64A    mov        ecx,dword ptr [ebp-4]
 004CA64D    mov        edx,esi
 004CA64F    mov        eax,ebx
 004CA651    call       004CA924
 004CA656    call       @TRUNC
 004CA65B    push       eax
 004CA65C    sar        eax,1F
 004CA65F    cmp        eax,edx
 004CA661    pop        eax
>004CA662    je         004CA669
 004CA664    call       @BoundErr
 004CA669    mov        edi,eax
>004CA66B    jmp        004CA6CF
 004CA66D    mov        ecx,dword ptr [ebp-4]
 004CA670    mov        edx,esi
 004CA672    mov        eax,ebx
 004CA674    call       004CAB20
 004CA679    call       @TRUNC
 004CA67E    push       eax
 004CA67F    sar        eax,1F
 004CA682    cmp        eax,edx
 004CA684    pop        eax
>004CA685    je         004CA68C
 004CA687    call       @BoundErr
 004CA68C    mov        edi,eax
>004CA68E    jmp        004CA6CF
 004CA690    mov        ecx,dword ptr [ebp-4]
 004CA693    mov        edx,esi
 004CA695    mov        eax,ebx
 004CA697    call       004CAD30
 004CA69C    call       @TRUNC
 004CA6A1    push       eax
 004CA6A2    sar        eax,1F
 004CA6A5    cmp        eax,edx
 004CA6A7    pop        eax
>004CA6A8    je         004CA6AF
 004CA6AA    call       @BoundErr
 004CA6AF    mov        edi,eax
>004CA6B1    jmp        004CA6CF
 004CA6B3    lea        eax,[ebp-8]
 004CA6B6    push       eax
 004CA6B7    mov        ecx,dword ptr [ebp-4]
 004CA6BA    mov        edx,esi
 004CA6BC    mov        eax,ebx
 004CA6BE    call       004C9818
 004CA6C3    mov        eax,dword ptr [ebp-8]
 004CA6C6    xor        edx,edx
 004CA6C8    call       StrToIntDef
 004CA6CD    mov        edi,eax
 004CA6CF    mov        eax,dword ptr [ebp-4]
 004CA6D2    mov        byte ptr [eax],0
>004CA6D5    jmp        004CA6DD
 004CA6D7    mov        eax,dword ptr [ebp-4]
 004CA6DA    mov        byte ptr [eax],1
 004CA6DD    xor        eax,eax
 004CA6DF    pop        edx
 004CA6E0    pop        ecx
 004CA6E1    pop        ecx
 004CA6E2    mov        dword ptr fs:[eax],edx
 004CA6E5    push       4CA6FA
 004CA6EA    lea        eax,[ebp-8]
 004CA6ED    call       @LStrClr
 004CA6F2    ret
<004CA6F3    jmp        @HandleFinally
<004CA6F8    jmp        004CA6EA
 004CA6FA    mov        eax,edi
 004CA6FC    pop        edi
 004CA6FD    pop        esi
 004CA6FE    pop        ebx
 004CA6FF    pop        ecx
 004CA700    pop        ecx
 004CA701    pop        ebp
 004CA702    ret
*}
//end;

//004CA704
//function sub_004CA704(?:TZRowAccessor; ?:dword; ?:?):?;
//begin
{*
 004CA704    push       ebp
 004CA705    mov        ebp,esp
 004CA707    add        esp,0FFFFFFF4
 004CA70A    push       ebx
 004CA70B    push       esi
 004CA70C    push       edi
 004CA70D    xor        ebx,ebx
 004CA70F    mov        dword ptr [ebp-0C],ebx
 004CA712    mov        edi,ecx
 004CA714    mov        esi,edx
 004CA716    mov        ebx,eax
 004CA718    xor        eax,eax
 004CA71A    push       ebp
 004CA71B    push       4CA90F
 004CA720    push       dword ptr fs:[eax]
 004CA723    mov        dword ptr fs:[eax],esp
 004CA726    mov        cl,5
 004CA728    mov        edx,esi
 004CA72A    mov        eax,ebx
 004CA72C    call       004C85D8
 004CA731    mov        dword ptr [ebp-8],0
 004CA738    mov        dword ptr [ebp-4],0
 004CA73F    mov        eax,esi
 004CA741    sub        eax,1
>004CA744    jno        004CA74B
 004CA746    call       @IntOver
 004CA74B    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CA74E    test       edx,edx
>004CA750    je         004CA757
 004CA752    cmp        eax,dword ptr [edx-4]
>004CA755    jb         004CA75C
 004CA757    call       @BoundErr
 004CA75C    mov        edx,dword ptr [edx+eax*4]
 004CA75F    cmp        edx,7FFF
>004CA765    jbe        004CA76C
 004CA767    call       @BoundErr
 004CA76C    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CA76F    cmp        byte ptr [ecx+edx+6],0
>004CA774    jne        004CA8F6
 004CA77A    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CA77D    test       edx,edx
>004CA77F    je         004CA786
 004CA781    cmp        eax,dword ptr [edx-4]
>004CA784    jb         004CA78B
 004CA786    call       @BoundErr
 004CA78B    movzx      edx,byte ptr [edx+eax]
 004CA78F    cmp        edx,0A
>004CA792    ja         004CA8F1
 004CA798    jmp        dword ptr [edx*4+4CA79F]
 004CA798    dd         4CA8F1
 004CA798    dd         4CA7CB
 004CA798    dd         4CA800
 004CA798    dd         4CA81A
 004CA798    dd         4CA834
 004CA798    dd         4CA84B
 004CA798    dd         4CA889
 004CA798    dd         4CA8A1
 004CA798    dd         4CA8B9
 004CA798    dd         4CA8D1
 004CA798    dd         4CA8D1
 004CA7CB    mov        ecx,edi
 004CA7CD    mov        edx,esi
 004CA7CF    mov        eax,ebx
 004CA7D1    call       004C9D40
 004CA7D6    test       al,al
>004CA7D8    je         004CA7ED
 004CA7DA    mov        dword ptr [ebp-8],1
 004CA7E1    mov        dword ptr [ebp-4],0
>004CA7E8    jmp        004CA8F1
 004CA7ED    mov        dword ptr [ebp-8],0
 004CA7F4    mov        dword ptr [ebp-4],0
>004CA7FB    jmp        004CA8F1
 004CA800    mov        ecx,edi
 004CA802    mov        edx,esi
 004CA804    mov        eax,ebx
 004CA806    call       004C9FB8
 004CA80B    movsx      eax,al
 004CA80E    cdq
 004CA80F    mov        dword ptr [ebp-8],eax
 004CA812    mov        dword ptr [ebp-4],edx
>004CA815    jmp        004CA8F1
 004CA81A    mov        ecx,edi
 004CA81C    mov        edx,esi
 004CA81E    mov        eax,ebx
 004CA820    call       004CA254
 004CA825    movsx      eax,ax
 004CA828    cdq
 004CA829    mov        dword ptr [ebp-8],eax
 004CA82C    mov        dword ptr [ebp-4],edx
>004CA82F    jmp        004CA8F1
 004CA834    mov        ecx,edi
 004CA836    mov        edx,esi
 004CA838    mov        eax,ebx
 004CA83A    call       004CA4EC
 004CA83F    cdq
 004CA840    mov        dword ptr [ebp-8],eax
 004CA843    mov        dword ptr [ebp-4],edx
>004CA846    jmp        004CA8F1
 004CA84B    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CA84E    test       edx,edx
>004CA850    je         004CA857
 004CA852    cmp        eax,dword ptr [edx-4]
>004CA855    jb         004CA85C
 004CA857    call       @BoundErr
 004CA85C    mov        eax,dword ptr [edx+eax*4]
 004CA85F    add        eax,1
>004CA862    jno        004CA869
 004CA864    call       @IntOver
 004CA869    cmp        eax,7FFF
>004CA86E    jbe        004CA875
 004CA870    call       @BoundErr
 004CA875    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CA878    lea        eax,[edx+eax+6]
 004CA87C    mov        edx,dword ptr [eax]
 004CA87E    mov        dword ptr [ebp-8],edx
 004CA881    mov        edx,dword ptr [eax+4]
 004CA884    mov        dword ptr [ebp-4],edx
>004CA887    jmp        004CA8F1
 004CA889    mov        ecx,edi
 004CA88B    mov        edx,esi
 004CA88D    mov        eax,ebx
 004CA88F    call       004CA924
 004CA894    call       @TRUNC
 004CA899    mov        dword ptr [ebp-8],eax
 004CA89C    mov        dword ptr [ebp-4],edx
>004CA89F    jmp        004CA8F1
 004CA8A1    mov        ecx,edi
 004CA8A3    mov        edx,esi
 004CA8A5    mov        eax,ebx
 004CA8A7    call       004CAB20
 004CA8AC    call       @TRUNC
 004CA8B1    mov        dword ptr [ebp-8],eax
 004CA8B4    mov        dword ptr [ebp-4],edx
>004CA8B7    jmp        004CA8F1
 004CA8B9    mov        ecx,edi
 004CA8BB    mov        edx,esi
 004CA8BD    mov        eax,ebx
 004CA8BF    call       004CAD30
 004CA8C4    call       @TRUNC
 004CA8C9    mov        dword ptr [ebp-8],eax
 004CA8CC    mov        dword ptr [ebp-4],edx
>004CA8CF    jmp        004CA8F1
 004CA8D1    lea        eax,[ebp-0C]
 004CA8D4    push       eax
 004CA8D5    mov        ecx,edi
 004CA8D7    mov        edx,esi
 004CA8D9    mov        eax,ebx
 004CA8DB    call       004C9818
 004CA8E0    mov        eax,dword ptr [ebp-0C]
 004CA8E3    xor        edx,edx
 004CA8E5    call       StrToIntDef
 004CA8EA    cdq
 004CA8EB    mov        dword ptr [ebp-8],eax
 004CA8EE    mov        dword ptr [ebp-4],edx
 004CA8F1    mov        byte ptr [edi],0
>004CA8F4    jmp        004CA8F9
 004CA8F6    mov        byte ptr [edi],1
 004CA8F9    xor        eax,eax
 004CA8FB    pop        edx
 004CA8FC    pop        ecx
 004CA8FD    pop        ecx
 004CA8FE    mov        dword ptr fs:[eax],edx
 004CA901    push       4CA916
 004CA906    lea        eax,[ebp-0C]
 004CA909    call       @LStrClr
 004CA90E    ret
<004CA90F    jmp        @HandleFinally
<004CA914    jmp        004CA906
 004CA916    mov        eax,dword ptr [ebp-8]
 004CA919    mov        edx,dword ptr [ebp-4]
 004CA91C    pop        edi
 004CA91D    pop        esi
 004CA91E    pop        ebx
 004CA91F    mov        esp,ebp
 004CA921    pop        ebp
 004CA922    ret
*}
//end;

//004CA924
//function sub_004CA924(?:TZRowAccessor; ?:dword; ?:?):?;
//begin
{*
 004CA924    push       ebp
 004CA925    mov        ebp,esp
 004CA927    add        esp,0FFFFFFE8
 004CA92A    push       ebx
 004CA92B    push       esi
 004CA92C    push       edi
 004CA92D    xor        ebx,ebx
 004CA92F    mov        dword ptr [ebp-18],ebx
 004CA932    mov        edi,ecx
 004CA934    mov        esi,edx
 004CA936    mov        ebx,eax
 004CA938    xor        eax,eax
 004CA93A    push       ebp
 004CA93B    push       4CAB0C
 004CA940    push       dword ptr fs:[eax]
 004CA943    mov        dword ptr fs:[eax],esp
 004CA946    mov        cl,6
 004CA948    mov        edx,esi
 004CA94A    mov        eax,ebx
 004CA94C    call       004C85D8
 004CA951    xor        eax,eax
 004CA953    mov        dword ptr [ebp-4],eax
 004CA956    mov        eax,esi
 004CA958    sub        eax,1
>004CA95B    jno        004CA962
 004CA95D    call       @IntOver
 004CA962    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CA965    test       edx,edx
>004CA967    je         004CA96E
 004CA969    cmp        eax,dword ptr [edx-4]
>004CA96C    jb         004CA973
 004CA96E    call       @BoundErr
 004CA973    mov        edx,dword ptr [edx+eax*4]
 004CA976    cmp        edx,7FFF
>004CA97C    jbe        004CA983
 004CA97E    call       @BoundErr
 004CA983    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CA986    cmp        byte ptr [ecx+edx+6],0
>004CA98B    jne        004CAAF3
 004CA991    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CA994    test       edx,edx
>004CA996    je         004CA99D
 004CA998    cmp        eax,dword ptr [edx-4]
>004CA99B    jb         004CA9A2
 004CA99D    call       @BoundErr
 004CA9A2    movzx      edx,byte ptr [edx+eax]
 004CA9A6    cmp        edx,0A
>004CA9A9    ja         004CAAEE
 004CA9AF    jmp        dword ptr [edx*4+4CA9B6]
 004CA9AF    dd         4CAAEE
 004CA9AF    dd         4CA9E2
 004CA9AF    dd         4CAA07
 004CA9AF    dd         4CAA24
 004CA9AF    dd         4CAA3F
 004CA9AF    dd         4CAA59
 004CA9AF    dd         4CAA73
 004CA9AF    dd         4CAAAB
 004CA9AF    dd         4CAABC
 004CA9AF    dd         4CAACD
 004CA9AF    dd         4CAACD
 004CA9E2    mov        ecx,edi
 004CA9E4    mov        edx,esi
 004CA9E6    mov        eax,ebx
 004CA9E8    call       004C9D40
 004CA9ED    test       al,al
>004CA9EF    je         004CA9FD
 004CA9F1    mov        dword ptr [ebp-4],3F800000
>004CA9F8    jmp        004CAAEE
 004CA9FD    xor        eax,eax
 004CA9FF    mov        dword ptr [ebp-4],eax
>004CAA02    jmp        004CAAEE
 004CAA07    mov        ecx,edi
 004CAA09    mov        edx,esi
 004CAA0B    mov        eax,ebx
 004CAA0D    call       004C9FB8
 004CAA12    movsx      eax,al
 004CAA15    mov        dword ptr [ebp-8],eax
 004CAA18    fild       dword ptr [ebp-8]
 004CAA1B    fstp       dword ptr [ebp-4]
 004CAA1E    wait
>004CAA1F    jmp        004CAAEE
 004CAA24    mov        ecx,edi
 004CAA26    mov        edx,esi
 004CAA28    mov        eax,ebx
 004CAA2A    call       004CA254
 004CAA2F    mov        word ptr [ebp-0C],ax
 004CAA33    fild       word ptr [ebp-0C]
 004CAA36    fstp       dword ptr [ebp-4]
 004CAA39    wait
>004CAA3A    jmp        004CAAEE
 004CAA3F    mov        ecx,edi
 004CAA41    mov        edx,esi
 004CAA43    mov        eax,ebx
 004CAA45    call       004CA4EC
 004CAA4A    mov        dword ptr [ebp-8],eax
 004CAA4D    fild       dword ptr [ebp-8]
 004CAA50    fstp       dword ptr [ebp-4]
 004CAA53    wait
>004CAA54    jmp        004CAAEE
 004CAA59    mov        ecx,edi
 004CAA5B    mov        edx,esi
 004CAA5D    mov        eax,ebx
 004CAA5F    call       004CA704
 004CAA64    mov        dword ptr [ebp-14],eax
 004CAA67    mov        dword ptr [ebp-10],edx
 004CAA6A    fild       qword ptr [ebp-14]
 004CAA6D    fstp       dword ptr [ebp-4]
 004CAA70    wait
>004CAA71    jmp        004CAAEE
 004CAA73    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CAA76    test       edx,edx
>004CAA78    je         004CAA7F
 004CAA7A    cmp        eax,dword ptr [edx-4]
>004CAA7D    jb         004CAA84
 004CAA7F    call       @BoundErr
 004CAA84    mov        eax,dword ptr [edx+eax*4]
 004CAA87    add        eax,1
>004CAA8A    jno        004CAA91
 004CAA8C    call       @IntOver
 004CAA91    cmp        eax,7FFF
>004CAA96    jbe        004CAA9D
 004CAA98    call       @BoundErr
 004CAA9D    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CAAA0    lea        eax,[edx+eax+6]
 004CAAA4    mov        eax,dword ptr [eax]
 004CAAA6    mov        dword ptr [ebp-4],eax
>004CAAA9    jmp        004CAAEE
 004CAAAB    mov        ecx,edi
 004CAAAD    mov        edx,esi
 004CAAAF    mov        eax,ebx
 004CAAB1    call       004CAB20
 004CAAB6    fstp       dword ptr [ebp-4]
 004CAAB9    wait
>004CAABA    jmp        004CAAEE
 004CAABC    mov        ecx,edi
 004CAABE    mov        edx,esi
 004CAAC0    mov        eax,ebx
 004CAAC2    call       004CAD30
 004CAAC7    fstp       dword ptr [ebp-4]
 004CAACA    wait
>004CAACB    jmp        004CAAEE
 004CAACD    push       0
 004CAACF    push       0
 004CAAD1    push       0
 004CAAD3    lea        eax,[ebp-18]
 004CAAD6    push       eax
 004CAAD7    mov        ecx,edi
 004CAAD9    mov        edx,esi
 004CAADB    mov        eax,ebx
 004CAADD    call       004C9818
 004CAAE2    mov        eax,dword ptr [ebp-18]
 004CAAE5    call       004BEE6C
 004CAAEA    fstp       dword ptr [ebp-4]
 004CAAED    wait
 004CAAEE    mov        byte ptr [edi],0
>004CAAF1    jmp        004CAAF6
 004CAAF3    mov        byte ptr [edi],1
 004CAAF6    xor        eax,eax
 004CAAF8    pop        edx
 004CAAF9    pop        ecx
 004CAAFA    pop        ecx
 004CAAFB    mov        dword ptr fs:[eax],edx
 004CAAFE    push       4CAB13
 004CAB03    lea        eax,[ebp-18]
 004CAB06    call       @LStrClr
 004CAB0B    ret
<004CAB0C    jmp        @HandleFinally
<004CAB11    jmp        004CAB03
 004CAB13    fld        dword ptr [ebp-4]
 004CAB16    pop        edi
 004CAB17    pop        esi
 004CAB18    pop        ebx
 004CAB19    mov        esp,ebp
 004CAB1B    pop        ebp
 004CAB1C    ret
*}
//end;

//004CAB20
//function sub_004CAB20(?:TZRowAccessor; ?:dword; ?:?):?;
//begin
{*
 004CAB20    push       ebp
 004CAB21    mov        ebp,esp
 004CAB23    add        esp,0FFFFFFE4
 004CAB26    push       ebx
 004CAB27    push       esi
 004CAB28    push       edi
 004CAB29    xor        ebx,ebx
 004CAB2B    mov        dword ptr [ebp-1C],ebx
 004CAB2E    mov        edi,ecx
 004CAB30    mov        esi,edx
 004CAB32    mov        ebx,eax
 004CAB34    xor        eax,eax
 004CAB36    push       ebp
 004CAB37    push       4CAD1C
 004CAB3C    push       dword ptr fs:[eax]
 004CAB3F    mov        dword ptr fs:[eax],esp
 004CAB42    mov        cl,7
 004CAB44    mov        edx,esi
 004CAB46    mov        eax,ebx
 004CAB48    call       004C85D8
 004CAB4D    xor        eax,eax
 004CAB4F    mov        dword ptr [ebp-8],eax
 004CAB52    mov        dword ptr [ebp-4],eax
 004CAB55    mov        eax,esi
 004CAB57    sub        eax,1
>004CAB5A    jno        004CAB61
 004CAB5C    call       @IntOver
 004CAB61    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CAB64    test       edx,edx
>004CAB66    je         004CAB6D
 004CAB68    cmp        eax,dword ptr [edx-4]
>004CAB6B    jb         004CAB72
 004CAB6D    call       @BoundErr
 004CAB72    mov        edx,dword ptr [edx+eax*4]
 004CAB75    cmp        edx,7FFF
>004CAB7B    jbe        004CAB82
 004CAB7D    call       @BoundErr
 004CAB82    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CAB85    cmp        byte ptr [ecx+edx+6],0
>004CAB8A    jne        004CAD03
 004CAB90    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CAB93    test       edx,edx
>004CAB95    je         004CAB9C
 004CAB97    cmp        eax,dword ptr [edx-4]
>004CAB9A    jb         004CABA1
 004CAB9C    call       @BoundErr
 004CABA1    movzx      edx,byte ptr [edx+eax]
 004CABA5    cmp        edx,0A
>004CABA8    ja         004CACFE
 004CABAE    jmp        dword ptr [edx*4+4CABB5]
 004CABAE    dd         4CACFE
 004CABAE    dd         4CABE1
 004CABAE    dd         4CAC0E
 004CABAE    dd         4CAC2B
 004CABAE    dd         4CAC46
 004CABAE    dd         4CAC60
 004CABAE    dd         4CAC7D
 004CABAE    dd         4CAC8E
 004CABAE    dd         4CACCC
 004CABAE    dd         4CACDD
 004CABAE    dd         4CACDD
 004CABE1    mov        ecx,edi
 004CABE3    mov        edx,esi
 004CABE5    mov        eax,ebx
 004CABE7    call       004C9D40
 004CABEC    test       al,al
>004CABEE    je         004CAC01
 004CABF0    xor        eax,eax
 004CABF2    mov        dword ptr [ebp-8],eax
 004CABF5    mov        dword ptr [ebp-4],3FF00000
>004CABFC    jmp        004CACFE
 004CAC01    xor        eax,eax
 004CAC03    mov        dword ptr [ebp-8],eax
 004CAC06    mov        dword ptr [ebp-4],eax
>004CAC09    jmp        004CACFE
 004CAC0E    mov        ecx,edi
 004CAC10    mov        edx,esi
 004CAC12    mov        eax,ebx
 004CAC14    call       004C9FB8
 004CAC19    movsx      eax,al
 004CAC1C    mov        dword ptr [ebp-0C],eax
 004CAC1F    fild       dword ptr [ebp-0C]
 004CAC22    fstp       qword ptr [ebp-8]
 004CAC25    wait
>004CAC26    jmp        004CACFE
 004CAC2B    mov        ecx,edi
 004CAC2D    mov        edx,esi
 004CAC2F    mov        eax,ebx
 004CAC31    call       004CA254
 004CAC36    mov        word ptr [ebp-10],ax
 004CAC3A    fild       word ptr [ebp-10]
 004CAC3D    fstp       qword ptr [ebp-8]
 004CAC40    wait
>004CAC41    jmp        004CACFE
 004CAC46    mov        ecx,edi
 004CAC48    mov        edx,esi
 004CAC4A    mov        eax,ebx
 004CAC4C    call       004CA4EC
 004CAC51    mov        dword ptr [ebp-0C],eax
 004CAC54    fild       dword ptr [ebp-0C]
 004CAC57    fstp       qword ptr [ebp-8]
 004CAC5A    wait
>004CAC5B    jmp        004CACFE
 004CAC60    mov        ecx,edi
 004CAC62    mov        edx,esi
 004CAC64    mov        eax,ebx
 004CAC66    call       004CA704
 004CAC6B    mov        dword ptr [ebp-18],eax
 004CAC6E    mov        dword ptr [ebp-14],edx
 004CAC71    fild       qword ptr [ebp-18]
 004CAC74    fstp       qword ptr [ebp-8]
 004CAC77    wait
>004CAC78    jmp        004CACFE
 004CAC7D    mov        ecx,edi
 004CAC7F    mov        edx,esi
 004CAC81    mov        eax,ebx
 004CAC83    call       004CA924
 004CAC88    fstp       qword ptr [ebp-8]
 004CAC8B    wait
>004CAC8C    jmp        004CACFE
 004CAC8E    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CAC91    test       edx,edx
>004CAC93    je         004CAC9A
 004CAC95    cmp        eax,dword ptr [edx-4]
>004CAC98    jb         004CAC9F
 004CAC9A    call       @BoundErr
 004CAC9F    mov        eax,dword ptr [edx+eax*4]
 004CACA2    add        eax,1
>004CACA5    jno        004CACAC
 004CACA7    call       @IntOver
 004CACAC    cmp        eax,7FFF
>004CACB1    jbe        004CACB8
 004CACB3    call       @BoundErr
 004CACB8    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CACBB    lea        eax,[edx+eax+6]
 004CACBF    mov        edx,dword ptr [eax]
 004CACC1    mov        dword ptr [ebp-8],edx
 004CACC4    mov        edx,dword ptr [eax+4]
 004CACC7    mov        dword ptr [ebp-4],edx
>004CACCA    jmp        004CACFE
 004CACCC    mov        ecx,edi
 004CACCE    mov        edx,esi
 004CACD0    mov        eax,ebx
 004CACD2    call       004CAD30
 004CACD7    fstp       qword ptr [ebp-8]
 004CACDA    wait
>004CACDB    jmp        004CACFE
 004CACDD    push       0
 004CACDF    push       0
 004CACE1    push       0
 004CACE3    lea        eax,[ebp-1C]
 004CACE6    push       eax
 004CACE7    mov        ecx,edi
 004CACE9    mov        edx,esi
 004CACEB    mov        eax,ebx
 004CACED    call       004C9818
 004CACF2    mov        eax,dword ptr [ebp-1C]
 004CACF5    call       004BEE6C
 004CACFA    fstp       qword ptr [ebp-8]
 004CACFD    wait
 004CACFE    mov        byte ptr [edi],0
>004CAD01    jmp        004CAD06
 004CAD03    mov        byte ptr [edi],1
 004CAD06    xor        eax,eax
 004CAD08    pop        edx
 004CAD09    pop        ecx
 004CAD0A    pop        ecx
 004CAD0B    mov        dword ptr fs:[eax],edx
 004CAD0E    push       4CAD23
 004CAD13    lea        eax,[ebp-1C]
 004CAD16    call       @LStrClr
 004CAD1B    ret
<004CAD1C    jmp        @HandleFinally
<004CAD21    jmp        004CAD13
 004CAD23    fld        qword ptr [ebp-8]
 004CAD26    pop        edi
 004CAD27    pop        esi
 004CAD28    pop        ebx
 004CAD29    mov        esp,ebp
 004CAD2B    pop        ebp
 004CAD2C    ret
*}
//end;

//004CAD30
//function sub_004CAD30(?:TZRowAccessor; ?:dword; ?:?):?;
//begin
{*
 004CAD30    push       ebp
 004CAD31    mov        ebp,esp
 004CAD33    add        esp,0FFFFFFDC
 004CAD36    push       ebx
 004CAD37    push       esi
 004CAD38    push       edi
 004CAD39    xor        ebx,ebx
 004CAD3B    mov        dword ptr [ebp-24],ebx
 004CAD3E    mov        edi,ecx
 004CAD40    mov        esi,edx
 004CAD42    mov        ebx,eax
 004CAD44    xor        eax,eax
 004CAD46    push       ebp
 004CAD47    push       4CAF42
 004CAD4C    push       dword ptr fs:[eax]
 004CAD4F    mov        dword ptr fs:[eax],esp
 004CAD52    mov        cl,8
 004CAD54    mov        edx,esi
 004CAD56    mov        eax,ebx
 004CAD58    call       004C85D8
 004CAD5D    xor        eax,eax
 004CAD5F    mov        dword ptr [ebp-10],eax
 004CAD62    mov        dword ptr [ebp-0C],eax
 004CAD65    mov        word ptr [ebp-8],ax
 004CAD69    mov        eax,esi
 004CAD6B    sub        eax,1
>004CAD6E    jno        004CAD75
 004CAD70    call       @IntOver
 004CAD75    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CAD78    test       edx,edx
>004CAD7A    je         004CAD81
 004CAD7C    cmp        eax,dword ptr [edx-4]
>004CAD7F    jb         004CAD86
 004CAD81    call       @BoundErr
 004CAD86    mov        edx,dword ptr [edx+eax*4]
 004CAD89    cmp        edx,7FFF
>004CAD8F    jbe        004CAD96
 004CAD91    call       @BoundErr
 004CAD96    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CAD99    cmp        byte ptr [ecx+edx+6],0
>004CAD9E    jne        004CAF29
 004CADA4    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CADA7    test       edx,edx
>004CADA9    je         004CADB0
 004CADAB    cmp        eax,dword ptr [edx-4]
>004CADAE    jb         004CADB5
 004CADB0    call       @BoundErr
 004CADB5    movzx      edx,byte ptr [edx+eax]
 004CADB9    cmp        edx,0A
>004CADBC    ja         004CAF24
 004CADC2    jmp        dword ptr [edx*4+4CADC9]
 004CADC2    dd         4CAF24
 004CADC2    dd         4CADF5
 004CADC2    dd         4CAE2C
 004CADC2    dd         4CAE49
 004CADC2    dd         4CAE64
 004CADC2    dd         4CAE7E
 004CADC2    dd         4CAE9B
 004CADC2    dd         4CAEAC
 004CADC2    dd         4CAEBD
 004CADC2    dd         4CAF03
 004CADC2    dd         4CAF03
 004CADF5    mov        ecx,edi
 004CADF7    mov        edx,esi
 004CADF9    mov        eax,ebx
 004CADFB    call       004C9D40
 004CAE00    test       al,al
>004CAE02    je         004CAE1B
 004CAE04    xor        eax,eax
 004CAE06    mov        dword ptr [ebp-10],eax
 004CAE09    mov        dword ptr [ebp-0C],80000000
 004CAE10    mov        word ptr [ebp-8],3FFF
>004CAE16    jmp        004CAF24
 004CAE1B    xor        eax,eax
 004CAE1D    mov        dword ptr [ebp-10],eax
 004CAE20    mov        dword ptr [ebp-0C],eax
 004CAE23    mov        word ptr [ebp-8],ax
>004CAE27    jmp        004CAF24
 004CAE2C    mov        ecx,edi
 004CAE2E    mov        edx,esi
 004CAE30    mov        eax,ebx
 004CAE32    call       004C9FB8
 004CAE37    movsx      eax,al
 004CAE3A    mov        dword ptr [ebp-14],eax
 004CAE3D    fild       dword ptr [ebp-14]
 004CAE40    fstp       tbyte ptr [ebp-10]
 004CAE43    wait
>004CAE44    jmp        004CAF24
 004CAE49    mov        ecx,edi
 004CAE4B    mov        edx,esi
 004CAE4D    mov        eax,ebx
 004CAE4F    call       004CA254
 004CAE54    mov        word ptr [ebp-18],ax
 004CAE58    fild       word ptr [ebp-18]
 004CAE5B    fstp       tbyte ptr [ebp-10]
 004CAE5E    wait
>004CAE5F    jmp        004CAF24
 004CAE64    mov        ecx,edi
 004CAE66    mov        edx,esi
 004CAE68    mov        eax,ebx
 004CAE6A    call       004CA4EC
 004CAE6F    mov        dword ptr [ebp-14],eax
 004CAE72    fild       dword ptr [ebp-14]
 004CAE75    fstp       tbyte ptr [ebp-10]
 004CAE78    wait
>004CAE79    jmp        004CAF24
 004CAE7E    mov        ecx,edi
 004CAE80    mov        edx,esi
 004CAE82    mov        eax,ebx
 004CAE84    call       004CA704
 004CAE89    mov        dword ptr [ebp-20],eax
 004CAE8C    mov        dword ptr [ebp-1C],edx
 004CAE8F    fild       qword ptr [ebp-20]
 004CAE92    fstp       tbyte ptr [ebp-10]
 004CAE95    wait
>004CAE96    jmp        004CAF24
 004CAE9B    mov        ecx,edi
 004CAE9D    mov        edx,esi
 004CAE9F    mov        eax,ebx
 004CAEA1    call       004CA924
 004CAEA6    fstp       tbyte ptr [ebp-10]
 004CAEA9    wait
>004CAEAA    jmp        004CAF24
 004CAEAC    mov        ecx,edi
 004CAEAE    mov        edx,esi
 004CAEB0    mov        eax,ebx
 004CAEB2    call       004CAB20
 004CAEB7    fstp       tbyte ptr [ebp-10]
 004CAEBA    wait
>004CAEBB    jmp        004CAF24
 004CAEBD    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CAEC0    test       edx,edx
>004CAEC2    je         004CAEC9
 004CAEC4    cmp        eax,dword ptr [edx-4]
>004CAEC7    jb         004CAECE
 004CAEC9    call       @BoundErr
 004CAECE    mov        eax,dword ptr [edx+eax*4]
 004CAED1    add        eax,1
>004CAED4    jno        004CAEDB
 004CAED6    call       @IntOver
 004CAEDB    cmp        eax,7FFF
>004CAEE0    jbe        004CAEE7
 004CAEE2    call       @BoundErr
 004CAEE7    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CAEEA    lea        eax,[edx+eax+6]
 004CAEEE    mov        edx,dword ptr [eax]
 004CAEF0    mov        dword ptr [ebp-10],edx
 004CAEF3    mov        edx,dword ptr [eax+4]
 004CAEF6    mov        dword ptr [ebp-0C],edx
 004CAEF9    mov        dx,word ptr [eax+8]
 004CAEFD    mov        word ptr [ebp-8],dx
>004CAF01    jmp        004CAF24
 004CAF03    push       0
 004CAF05    push       0
 004CAF07    push       0
 004CAF09    lea        eax,[ebp-24]
 004CAF0C    push       eax
 004CAF0D    mov        ecx,edi
 004CAF0F    mov        edx,esi
 004CAF11    mov        eax,ebx
 004CAF13    call       004C9818
 004CAF18    mov        eax,dword ptr [ebp-24]
 004CAF1B    call       004BEE6C
 004CAF20    fstp       tbyte ptr [ebp-10]
 004CAF23    wait
 004CAF24    mov        byte ptr [edi],0
>004CAF27    jmp        004CAF2C
 004CAF29    mov        byte ptr [edi],1
 004CAF2C    xor        eax,eax
 004CAF2E    pop        edx
 004CAF2F    pop        ecx
 004CAF30    pop        ecx
 004CAF31    mov        dword ptr fs:[eax],edx
 004CAF34    push       4CAF49
 004CAF39    lea        eax,[ebp-24]
 004CAF3C    call       @LStrClr
 004CAF41    ret
<004CAF42    jmp        @HandleFinally
<004CAF47    jmp        004CAF39
 004CAF49    fld        tbyte ptr [ebp-10]
 004CAF4C    pop        edi
 004CAF4D    pop        esi
 004CAF4E    pop        ebx
 004CAF4F    mov        esp,ebp
 004CAF51    pop        ebp
 004CAF52    ret
*}
//end;

//004CAF54
//procedure sub_004CAF54(?:TZRowAccessor; ?:dword; ?:?; ?:?);
//begin
{*
 004CAF54    push       ebp
 004CAF55    mov        ebp,esp
 004CAF57    add        esp,0FFFFFFF8
 004CAF5A    push       ebx
 004CAF5B    push       esi
 004CAF5C    push       edi
 004CAF5D    xor        ebx,ebx
 004CAF5F    mov        dword ptr [ebp-8],ebx
 004CAF62    mov        dword ptr [ebp-4],ecx
 004CAF65    mov        esi,edx
 004CAF67    mov        ebx,eax
 004CAF69    xor        eax,eax
 004CAF6B    push       ebp
 004CAF6C    push       4CB0FE
 004CAF71    push       dword ptr fs:[eax]
 004CAF74    mov        dword ptr fs:[eax],esp
 004CAF77    mov        cl,0B
 004CAF79    mov        edx,esi
 004CAF7B    mov        eax,ebx
 004CAF7D    call       004C85D8
 004CAF82    mov        eax,dword ptr [ebp+8]
 004CAF85    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004CAF8B    call       @DynArrayClear
 004CAF90    mov        eax,esi
 004CAF92    sub        eax,1
>004CAF95    jno        004CAF9C
 004CAF97    call       @IntOver
 004CAF9C    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CAF9F    test       edx,edx
>004CAFA1    je         004CAFA8
 004CAFA3    cmp        eax,dword ptr [edx-4]
>004CAFA6    jb         004CAFAD
 004CAFA8    call       @BoundErr
 004CAFAD    mov        edx,dword ptr [edx+eax*4]
 004CAFB0    cmp        edx,7FFF
>004CAFB6    jbe        004CAFBD
 004CAFB8    call       @BoundErr
 004CAFBD    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CAFC0    cmp        byte ptr [ecx+edx+6],0
>004CAFC5    jne        004CB0E2
 004CAFCB    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CAFCE    test       edx,edx
>004CAFD0    je         004CAFD7
 004CAFD2    cmp        eax,dword ptr [edx-4]
>004CAFD5    jb         004CAFDC
 004CAFD7    call       @BoundErr
 004CAFDC    mov        dl,byte ptr [edx+eax]
 004CAFDF    sub        dl,0B
>004CAFE2    jne        004CB0BF
 004CAFE8    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CAFEB    test       edx,edx
>004CAFED    je         004CAFF4
 004CAFEF    cmp        eax,dword ptr [edx-4]
>004CAFF2    jb         004CAFF9
 004CAFF4    call       @BoundErr
 004CAFF9    mov        eax,dword ptr [edx+eax*4]
 004CAFFC    add        eax,1
>004CAFFF    jno        004CB006
 004CB001    call       @IntOver
 004CB006    cmp        eax,7FFF
>004CB00B    jbe        004CB012
 004CB00D    call       @BoundErr
 004CB012    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB015    lea        eax,[edx+eax+6]
 004CB019    mov        di,word ptr [eax]
 004CB01C    movsx      eax,di
 004CB01F    push       eax
 004CB020    mov        eax,dword ptr [ebp+8]
 004CB023    mov        ecx,1
 004CB028    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004CB02E    call       @DynArraySetLength
 004CB033    add        esp,4
 004CB036    movsx      edx,di
 004CB039    sub        edx,1
>004CB03C    jno        004CB043
 004CB03E    call       @IntOver
 004CB043    test       edx,edx
>004CB045    jl         004CB0DA
 004CB04B    inc        edx
 004CB04C    xor        eax,eax
 004CB04E    mov        ecx,esi
 004CB050    sub        ecx,1
>004CB053    jno        004CB05A
 004CB055    call       @IntOver
 004CB05A    mov        edi,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CB05D    test       edi,edi
>004CB05F    je         004CB066
 004CB061    cmp        ecx,dword ptr [edi-4]
>004CB064    jb         004CB06B
 004CB066    call       @BoundErr
 004CB06B    mov        ecx,dword ptr [edi+ecx*4]
 004CB06E    add        ecx,1
>004CB071    jno        004CB078
 004CB073    call       @IntOver
 004CB078    add        ecx,2
>004CB07B    jno        004CB082
 004CB07D    call       @IntOver
 004CB082    add        ecx,eax
>004CB084    jno        004CB08B
 004CB086    call       @IntOver
 004CB08B    cmp        ecx,7FFF
>004CB091    jbe        004CB098
 004CB093    call       @BoundErr
 004CB098    mov        edi,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB09B    mov        cl,byte ptr [edi+ecx+6]
 004CB09F    push       ecx
 004CB0A0    mov        ecx,dword ptr [ebp+8]
 004CB0A3    mov        ecx,dword ptr [ecx]
 004CB0A5    test       ecx,ecx
>004CB0A7    je         004CB0AE
 004CB0A9    cmp        eax,dword ptr [ecx-4]
>004CB0AC    jb         004CB0B3
 004CB0AE    call       @BoundErr
 004CB0B3    lea        edi,[ecx+eax]
 004CB0B6    pop        ecx
 004CB0B7    mov        byte ptr [edi],cl
 004CB0B9    inc        eax
 004CB0BA    dec        edx
<004CB0BB    jne        004CB04E
>004CB0BD    jmp        004CB0DA
 004CB0BF    lea        eax,[ebp-8]
 004CB0C2    push       eax
 004CB0C3    mov        ecx,dword ptr [ebp-4]
 004CB0C6    mov        edx,esi
 004CB0C8    mov        eax,ebx
 004CB0CA    call       004C9818
 004CB0CF    mov        eax,dword ptr [ebp-8]
 004CB0D2    mov        edx,dword ptr [ebp+8]
 004CB0D5    call       004BF678
 004CB0DA    mov        eax,dword ptr [ebp-4]
 004CB0DD    mov        byte ptr [eax],0
>004CB0E0    jmp        004CB0E8
 004CB0E2    mov        eax,dword ptr [ebp-4]
 004CB0E5    mov        byte ptr [eax],1
 004CB0E8    xor        eax,eax
 004CB0EA    pop        edx
 004CB0EB    pop        ecx
 004CB0EC    pop        ecx
 004CB0ED    mov        dword ptr fs:[eax],edx
 004CB0F0    push       4CB105
 004CB0F5    lea        eax,[ebp-8]
 004CB0F8    call       @LStrClr
 004CB0FD    ret
<004CB0FE    jmp        @HandleFinally
<004CB103    jmp        004CB0F5
 004CB105    pop        edi
 004CB106    pop        esi
 004CB107    pop        ebx
 004CB108    pop        ecx
 004CB109    pop        ecx
 004CB10A    pop        ebp
 004CB10B    ret        4
*}
//end;

//004CB110
//function sub_004CB110(?:TZRowAccessor; ?:dword; ?:?):?;
//begin
{*
 004CB110    push       ebp
 004CB111    mov        ebp,esp
 004CB113    add        esp,0FFFFFFEC
 004CB116    push       ebx
 004CB117    push       esi
 004CB118    push       edi
 004CB119    xor        ebx,ebx
 004CB11B    mov        dword ptr [ebp-0C],ebx
 004CB11E    mov        edi,ecx
 004CB120    mov        esi,edx
 004CB122    mov        ebx,eax
 004CB124    xor        eax,eax
 004CB126    push       ebp
 004CB127    push       4CB239
 004CB12C    push       dword ptr fs:[eax]
 004CB12F    mov        dword ptr fs:[eax],esp
 004CB132    mov        cl,0C
 004CB134    mov        edx,esi
 004CB136    mov        eax,ebx
 004CB138    call       004C85D8
 004CB13D    xor        eax,eax
 004CB13F    mov        dword ptr [ebp-8],eax
 004CB142    mov        dword ptr [ebp-4],eax
 004CB145    mov        eax,esi
 004CB147    sub        eax,1
>004CB14A    jno        004CB151
 004CB14C    call       @IntOver
 004CB151    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CB154    test       edx,edx
>004CB156    je         004CB15D
 004CB158    cmp        eax,dword ptr [edx-4]
>004CB15B    jb         004CB162
 004CB15D    call       @BoundErr
 004CB162    mov        eax,dword ptr [edx+eax*4]
 004CB165    cmp        eax,7FFF
>004CB16A    jbe        004CB171
 004CB16C    call       @BoundErr
 004CB171    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB174    cmp        byte ptr [edx+eax+6],0
>004CB179    jne        004CB220
 004CB17F    mov        eax,esi
 004CB181    sub        eax,1
>004CB184    jno        004CB18B
 004CB186    call       @IntOver
 004CB18B    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CB18E    test       edx,edx
>004CB190    je         004CB197
 004CB192    cmp        eax,dword ptr [edx-4]
>004CB195    jb         004CB19C
 004CB197    call       @BoundErr
 004CB19C    mov        al,byte ptr [edx+eax]
 004CB19F    add        al,0F7
 004CB1A1    sub        al,2
>004CB1A3    jb         004CB1F2
 004CB1A5    dec        eax
 004CB1A6    sub        al,3
>004CB1A8    jae        004CB21B
 004CB1AA    sub        esi,1
>004CB1AD    jno        004CB1B4
 004CB1AF    call       @IntOver
 004CB1B4    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CB1B7    test       eax,eax
>004CB1B9    je         004CB1C0
 004CB1BB    cmp        esi,dword ptr [eax-4]
>004CB1BE    jb         004CB1C5
 004CB1C0    call       @BoundErr
 004CB1C5    mov        eax,dword ptr [eax+esi*4]
 004CB1C8    add        eax,1
>004CB1CB    jno        004CB1D2
 004CB1CD    call       @IntOver
 004CB1D2    cmp        eax,7FFF
>004CB1D7    jbe        004CB1DE
 004CB1D9    call       @BoundErr
 004CB1DE    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB1E1    lea        eax,[edx+eax+6]
 004CB1E5    fld        qword ptr [eax]
 004CB1E7    call       @INT
 004CB1EC    fstp       qword ptr [ebp-8]
 004CB1EF    wait
>004CB1F0    jmp        004CB21B
 004CB1F2    lea        eax,[ebp-0C]
 004CB1F5    push       eax
 004CB1F6    mov        ecx,edi
 004CB1F8    mov        edx,esi
 004CB1FA    mov        eax,ebx
 004CB1FC    call       004C9818
 004CB201    mov        eax,dword ptr [ebp-0C]
 004CB204    call       004BF8B0
 004CB209    call       @TRUNC
 004CB20E    mov        dword ptr [ebp-14],eax
 004CB211    mov        dword ptr [ebp-10],edx
 004CB214    fild       qword ptr [ebp-14]
 004CB217    fstp       qword ptr [ebp-8]
 004CB21A    wait
 004CB21B    mov        byte ptr [edi],0
>004CB21E    jmp        004CB223
 004CB220    mov        byte ptr [edi],1
 004CB223    xor        eax,eax
 004CB225    pop        edx
 004CB226    pop        ecx
 004CB227    pop        ecx
 004CB228    mov        dword ptr fs:[eax],edx
 004CB22B    push       4CB240
 004CB230    lea        eax,[ebp-0C]
 004CB233    call       @LStrClr
 004CB238    ret
<004CB239    jmp        @HandleFinally
<004CB23E    jmp        004CB230
 004CB240    fld        qword ptr [ebp-8]
 004CB243    pop        edi
 004CB244    pop        esi
 004CB245    pop        ebx
 004CB246    mov        esp,ebp
 004CB248    pop        ebp
 004CB249    ret
*}
//end;

//004CB24C
//function sub_004CB24C(?:TZRowAccessor; ?:dword; ?:?):?;
//begin
{*
 004CB24C    push       ebp
 004CB24D    mov        ebp,esp
 004CB24F    add        esp,0FFFFFFF4
 004CB252    push       ebx
 004CB253    push       esi
 004CB254    push       edi
 004CB255    xor        ebx,ebx
 004CB257    mov        dword ptr [ebp-0C],ebx
 004CB25A    mov        edi,ecx
 004CB25C    mov        esi,edx
 004CB25E    mov        ebx,eax
 004CB260    xor        eax,eax
 004CB262    push       ebp
 004CB263    push       4CB36C
 004CB268    push       dword ptr fs:[eax]
 004CB26B    mov        dword ptr fs:[eax],esp
 004CB26E    mov        cl,0D
 004CB270    mov        edx,esi
 004CB272    mov        eax,ebx
 004CB274    call       004C85D8
 004CB279    xor        eax,eax
 004CB27B    mov        dword ptr [ebp-8],eax
 004CB27E    mov        dword ptr [ebp-4],eax
 004CB281    mov        eax,esi
 004CB283    sub        eax,1
>004CB286    jno        004CB28D
 004CB288    call       @IntOver
 004CB28D    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CB290    test       edx,edx
>004CB292    je         004CB299
 004CB294    cmp        eax,dword ptr [edx-4]
>004CB297    jb         004CB29E
 004CB299    call       @BoundErr
 004CB29E    mov        eax,dword ptr [edx+eax*4]
 004CB2A1    cmp        eax,7FFF
>004CB2A6    jbe        004CB2AD
 004CB2A8    call       @BoundErr
 004CB2AD    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB2B0    cmp        byte ptr [edx+eax+6],0
>004CB2B5    jne        004CB353
 004CB2BB    mov        eax,esi
 004CB2BD    sub        eax,1
>004CB2C0    jno        004CB2C7
 004CB2C2    call       @IntOver
 004CB2C7    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CB2CA    test       edx,edx
>004CB2CC    je         004CB2D3
 004CB2CE    cmp        eax,dword ptr [edx-4]
>004CB2D1    jb         004CB2D8
 004CB2D3    call       @BoundErr
 004CB2D8    mov        al,byte ptr [edx+eax]
 004CB2DB    add        al,0F7
 004CB2DD    sub        al,2
>004CB2DF    jb         004CB32E
 004CB2E1    dec        eax
 004CB2E2    sub        al,3
>004CB2E4    jae        004CB34E
 004CB2E6    sub        esi,1
>004CB2E9    jno        004CB2F0
 004CB2EB    call       @IntOver
 004CB2F0    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CB2F3    test       eax,eax
>004CB2F5    je         004CB2FC
 004CB2F7    cmp        esi,dword ptr [eax-4]
>004CB2FA    jb         004CB301
 004CB2FC    call       @BoundErr
 004CB301    mov        eax,dword ptr [eax+esi*4]
 004CB304    add        eax,1
>004CB307    jno        004CB30E
 004CB309    call       @IntOver
 004CB30E    cmp        eax,7FFF
>004CB313    jbe        004CB31A
 004CB315    call       @BoundErr
 004CB31A    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB31D    lea        eax,[edx+eax+6]
 004CB321    fld        qword ptr [eax]
 004CB323    call       @FRAC
 004CB328    fstp       qword ptr [ebp-8]
 004CB32B    wait
>004CB32C    jmp        004CB34E
 004CB32E    lea        eax,[ebp-0C]
 004CB331    push       eax
 004CB332    mov        ecx,edi
 004CB334    mov        edx,esi
 004CB336    mov        eax,ebx
 004CB338    call       004C9818
 004CB33D    mov        eax,dword ptr [ebp-0C]
 004CB340    call       004BF8B0
 004CB345    call       @FRAC
 004CB34A    fstp       qword ptr [ebp-8]
 004CB34D    wait
 004CB34E    mov        byte ptr [edi],0
>004CB351    jmp        004CB356
 004CB353    mov        byte ptr [edi],1
 004CB356    xor        eax,eax
 004CB358    pop        edx
 004CB359    pop        ecx
 004CB35A    pop        ecx
 004CB35B    mov        dword ptr fs:[eax],edx
 004CB35E    push       4CB373
 004CB363    lea        eax,[ebp-0C]
 004CB366    call       @LStrClr
 004CB36B    ret
<004CB36C    jmp        @HandleFinally
<004CB371    jmp        004CB363
 004CB373    fld        qword ptr [ebp-8]
 004CB376    pop        edi
 004CB377    pop        esi
 004CB378    pop        ebx
 004CB379    mov        esp,ebp
 004CB37B    pop        ebp
 004CB37C    ret
*}
//end;

//004CB380
//function sub_004CB380(?:TZRowAccessor; ?:dword; ?:?):?;
//begin
{*
 004CB380    push       ebp
 004CB381    mov        ebp,esp
 004CB383    add        esp,0FFFFFFF4
 004CB386    push       ebx
 004CB387    push       esi
 004CB388    push       edi
 004CB389    xor        ebx,ebx
 004CB38B    mov        dword ptr [ebp-0C],ebx
 004CB38E    mov        edi,ecx
 004CB390    mov        esi,edx
 004CB392    mov        ebx,eax
 004CB394    xor        eax,eax
 004CB396    push       ebp
 004CB397    push       4CB489
 004CB39C    push       dword ptr fs:[eax]
 004CB39F    mov        dword ptr fs:[eax],esp
 004CB3A2    mov        cl,0E
 004CB3A4    mov        edx,esi
 004CB3A6    mov        eax,ebx
 004CB3A8    call       004C85D8
 004CB3AD    xor        eax,eax
 004CB3AF    mov        dword ptr [ebp-8],eax
 004CB3B2    mov        dword ptr [ebp-4],eax
 004CB3B5    mov        eax,esi
 004CB3B7    sub        eax,1
>004CB3BA    jno        004CB3C1
 004CB3BC    call       @IntOver
 004CB3C1    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CB3C4    test       edx,edx
>004CB3C6    je         004CB3CD
 004CB3C8    cmp        eax,dword ptr [edx-4]
>004CB3CB    jb         004CB3D2
 004CB3CD    call       @BoundErr
 004CB3D2    mov        edx,dword ptr [edx+eax*4]
 004CB3D5    cmp        edx,7FFF
>004CB3DB    jbe        004CB3E2
 004CB3DD    call       @BoundErr
 004CB3E2    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB3E5    cmp        byte ptr [ecx+edx+6],0
>004CB3EA    jne        004CB470
 004CB3F0    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CB3F3    test       edx,edx
>004CB3F5    je         004CB3FC
 004CB3F7    cmp        eax,dword ptr [edx-4]
>004CB3FA    jb         004CB401
 004CB3FC    call       @BoundErr
 004CB401    mov        dl,byte ptr [edx+eax]
 004CB404    add        dl,0F7
 004CB407    sub        dl,2
>004CB40A    jb         004CB450
 004CB40C    dec        edx
 004CB40D    sub        dl,3
>004CB410    jae        004CB46B
 004CB412    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CB415    test       edx,edx
>004CB417    je         004CB41E
 004CB419    cmp        eax,dword ptr [edx-4]
>004CB41C    jb         004CB423
 004CB41E    call       @BoundErr
 004CB423    mov        eax,dword ptr [edx+eax*4]
 004CB426    add        eax,1
>004CB429    jno        004CB430
 004CB42B    call       @IntOver
 004CB430    cmp        eax,7FFF
>004CB435    jbe        004CB43C
 004CB437    call       @BoundErr
 004CB43C    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB43F    lea        eax,[edx+eax+6]
 004CB443    mov        edx,dword ptr [eax]
 004CB445    mov        dword ptr [ebp-8],edx
 004CB448    mov        edx,dword ptr [eax+4]
 004CB44B    mov        dword ptr [ebp-4],edx
>004CB44E    jmp        004CB46B
 004CB450    lea        eax,[ebp-0C]
 004CB453    push       eax
 004CB454    mov        ecx,edi
 004CB456    mov        edx,esi
 004CB458    mov        eax,ebx
 004CB45A    call       004C9818
 004CB45F    mov        eax,dword ptr [ebp-0C]
 004CB462    call       004BF8B0
 004CB467    fstp       qword ptr [ebp-8]
 004CB46A    wait
 004CB46B    mov        byte ptr [edi],0
>004CB46E    jmp        004CB473
 004CB470    mov        byte ptr [edi],1
 004CB473    xor        eax,eax
 004CB475    pop        edx
 004CB476    pop        ecx
 004CB477    pop        ecx
 004CB478    mov        dword ptr fs:[eax],edx
 004CB47B    push       4CB490
 004CB480    lea        eax,[ebp-0C]
 004CB483    call       @LStrClr
 004CB488    ret
<004CB489    jmp        @HandleFinally
<004CB48E    jmp        004CB480
 004CB490    fld        qword ptr [ebp-8]
 004CB493    pop        edi
 004CB494    pop        esi
 004CB495    pop        ebx
 004CB496    mov        esp,ebp
 004CB498    pop        ebp
 004CB499    ret
*}
//end;

//004CB49C
//function sub_004CB49C(?:TZRowAccessor; ?:?; ?:?):?;
//begin
{*
 004CB49C    push       ebp
 004CB49D    mov        ebp,esp
 004CB49F    push       0
 004CB4A1    push       ebx
 004CB4A2    push       esi
 004CB4A3    push       edi
 004CB4A4    mov        edi,ecx
 004CB4A6    mov        esi,edx
 004CB4A8    mov        ebx,eax
 004CB4AA    xor        eax,eax
 004CB4AC    push       ebp
 004CB4AD    push       4CB50E
 004CB4B2    push       dword ptr fs:[eax]
 004CB4B5    mov        dword ptr fs:[eax],esp
 004CB4B8    mov        cl,0F
 004CB4BA    mov        edx,esi
 004CB4BC    mov        eax,ebx
 004CB4BE    call       004C85D8
 004CB4C3    lea        eax,[ebp-4]
 004CB4C6    push       eax
 004CB4C7    mov        ecx,esi
 004CB4C9    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB4CC    mov        eax,ebx
 004CB4CE    call       004C8834
 004CB4D3    cmp        dword ptr [ebp-4],0
>004CB4D7    je         004CB4F1
 004CB4D9    mov        eax,dword ptr [ebp-4]
 004CB4DC    mov        edx,dword ptr [eax]
 004CB4DE    call       dword ptr [edx+0C]
 004CB4E1    test       al,al
>004CB4E3    jne        004CB4F1
 004CB4E5    mov        eax,dword ptr [ebp-4]
 004CB4E8    mov        edx,dword ptr [eax]
 004CB4EA    call       dword ptr [edx+30]
 004CB4ED    mov        ebx,eax
>004CB4EF    jmp        004CB4F3
 004CB4F1    xor        ebx,ebx
 004CB4F3    test       ebx,ebx
 004CB4F5    sete       byte ptr [edi]
 004CB4F8    xor        eax,eax
 004CB4FA    pop        edx
 004CB4FB    pop        ecx
 004CB4FC    pop        ecx
 004CB4FD    mov        dword ptr fs:[eax],edx
 004CB500    push       4CB515
 004CB505    lea        eax,[ebp-4]
 004CB508    call       @IntfClear
 004CB50D    ret
<004CB50E    jmp        @HandleFinally
<004CB513    jmp        004CB505
 004CB515    mov        eax,ebx
 004CB517    pop        edi
 004CB518    pop        esi
 004CB519    pop        ebx
 004CB51A    pop        ecx
 004CB51B    pop        ebp
 004CB51C    ret
*}
//end;

//004CB520
//function sub_004CB520(?:TZRowAccessor; ?:?; ?:?):?;
//begin
{*
 004CB520    push       ebp
 004CB521    mov        ebp,esp
 004CB523    push       0
 004CB525    push       ebx
 004CB526    push       esi
 004CB527    push       edi
 004CB528    mov        edi,ecx
 004CB52A    mov        esi,edx
 004CB52C    mov        ebx,eax
 004CB52E    xor        eax,eax
 004CB530    push       ebp
 004CB531    push       4CB592
 004CB536    push       dword ptr fs:[eax]
 004CB539    mov        dword ptr fs:[eax],esp
 004CB53C    mov        cl,11
 004CB53E    mov        edx,esi
 004CB540    mov        eax,ebx
 004CB542    call       004C85D8
 004CB547    lea        eax,[ebp-4]
 004CB54A    push       eax
 004CB54B    mov        ecx,esi
 004CB54D    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB550    mov        eax,ebx
 004CB552    call       004C8834
 004CB557    cmp        dword ptr [ebp-4],0
>004CB55B    je         004CB575
 004CB55D    mov        eax,dword ptr [ebp-4]
 004CB560    mov        edx,dword ptr [eax]
 004CB562    call       dword ptr [edx+0C]
 004CB565    test       al,al
>004CB567    jne        004CB575
 004CB569    mov        eax,dword ptr [ebp-4]
 004CB56C    mov        edx,dword ptr [eax]
 004CB56E    call       dword ptr [edx+30]
 004CB571    mov        ebx,eax
>004CB573    jmp        004CB577
 004CB575    xor        ebx,ebx
 004CB577    test       ebx,ebx
 004CB579    sete       byte ptr [edi]
 004CB57C    xor        eax,eax
 004CB57E    pop        edx
 004CB57F    pop        ecx
 004CB580    pop        ecx
 004CB581    mov        dword ptr fs:[eax],edx
 004CB584    push       4CB599
 004CB589    lea        eax,[ebp-4]
 004CB58C    call       @IntfClear
 004CB591    ret
<004CB592    jmp        @HandleFinally
<004CB597    jmp        004CB589
 004CB599    mov        eax,ebx
 004CB59B    pop        edi
 004CB59C    pop        esi
 004CB59D    pop        ebx
 004CB59E    pop        ecx
 004CB59F    pop        ebp
 004CB5A0    ret
*}
//end;

//004CB5A4
//procedure sub_004CB5A4(?:TZRowAccessor; ?:dword; ?:?; ?:?);
//begin
{*
 004CB5A4    push       ebp
 004CB5A5    mov        ebp,esp
 004CB5A7    add        esp,0FFFFFFE0
 004CB5AA    push       ebx
 004CB5AB    push       esi
 004CB5AC    push       edi
 004CB5AD    xor        ebx,ebx
 004CB5AF    mov        dword ptr [ebp-8],ebx
 004CB5B2    mov        dword ptr [ebp-1C],ebx
 004CB5B5    mov        dword ptr [ebp-20],ebx
 004CB5B8    mov        dword ptr [ebp-4],ecx
 004CB5BB    mov        esi,edx
 004CB5BD    mov        ebx,eax
 004CB5BF    mov        edi,dword ptr [ebp+8]
 004CB5C2    xor        eax,eax
 004CB5C4    push       ebp
 004CB5C5    push       4CB6DA
 004CB5CA    push       dword ptr fs:[eax]
 004CB5CD    mov        dword ptr fs:[eax],esp
 004CB5D0    mov        edx,esi
 004CB5D2    mov        eax,ebx
 004CB5D4    call       004C852C
 004CB5D9    mov        eax,esi
 004CB5DB    sub        eax,1
>004CB5DE    jno        004CB5E5
 004CB5E0    call       @IntOver
 004CB5E5    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CB5E8    test       edx,edx
>004CB5EA    je         004CB5F1
 004CB5EC    cmp        eax,dword ptr [edx-4]
>004CB5EF    jb         004CB5F6
 004CB5F1    call       @BoundErr
 004CB5F6    mov        al,byte ptr [edx+eax]
 004CB5F9    add        al,0F1
 004CB5FB    sub        al,3
>004CB5FD    jb         004CB66F
 004CB5FF    lea        eax,[ebp-8]
 004CB602    push       eax
 004CB603    mov        dword ptr [ebp-18],esi
 004CB606    mov        byte ptr [ebp-14],0
 004CB60A    mov        eax,esi
 004CB60C    sub        eax,1
>004CB60F    jno        004CB616
 004CB611    call       @IntOver
 004CB616    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CB619    test       edx,edx
>004CB61B    je         004CB622
 004CB61D    cmp        eax,dword ptr [edx-4]
>004CB620    jb         004CB627
 004CB622    call       @BoundErr
 004CB627    mov        al,byte ptr [edx+eax]
 004CB62A    lea        edx,[ebp-1C]
 004CB62D    call       004D2CF0
 004CB632    mov        eax,dword ptr [ebp-1C]
 004CB635    mov        dword ptr [ebp-10],eax
 004CB638    mov        byte ptr [ebp-0C],0B
 004CB63C    lea        eax,[ebp-18]
 004CB63F    push       eax
 004CB640    lea        edx,[ebp-20]
 004CB643    mov        eax,[0061B858]; ^#122.sResString32:TResStringRec
 004CB648    call       LoadResString
 004CB64D    mov        eax,dword ptr [ebp-20]
 004CB650    mov        ecx,1
 004CB655    pop        edx
 004CB656    call       Format
 004CB65B    mov        ecx,dword ptr [ebp-8]
 004CB65E    mov        dl,1
 004CB660    mov        eax,[004C6D20]; EZSQLException
 004CB665    call       EZSQLException.Create; EZSQLException.Create
 004CB66A    call       @RaiseExcept
 004CB66F    push       edi
 004CB670    mov        ecx,esi
 004CB672    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB675    mov        eax,ebx
 004CB677    call       004C8834
 004CB67C    cmp        dword ptr [edi],0
 004CB67F    mov        eax,dword ptr [ebp-4]
 004CB682    sete       byte ptr [eax]
 004CB685    cmp        dword ptr [edi],0
>004CB688    jne        004CB6B7
 004CB68A    xor        ecx,ecx
 004CB68C    mov        dl,1
 004CB68E    mov        eax,[004D3F38]; TZAbstractBlob
 004CB693    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 004CB698    mov        edx,eax
 004CB69A    test       edx,edx
>004CB69C    je         004CB6A1
 004CB69E    sub        edx,0FFFFFFE8
 004CB6A1    mov        eax,edi
 004CB6A3    call       @IntfCopy
 004CB6A8    mov        eax,dword ptr [edi]
 004CB6AA    push       eax
 004CB6AB    mov        ecx,esi
 004CB6AD    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CB6B0    mov        eax,ebx
 004CB6B2    call       004C88C0
 004CB6B7    xor        eax,eax
 004CB6B9    pop        edx
 004CB6BA    pop        ecx
 004CB6BB    pop        ecx
 004CB6BC    mov        dword ptr fs:[eax],edx
 004CB6BF    push       4CB6E1
 004CB6C4    lea        eax,[ebp-20]
 004CB6C7    mov        edx,2
 004CB6CC    call       @LStrArrayClr
 004CB6D1    lea        eax,[ebp-8]
 004CB6D4    call       @LStrClr
 004CB6D9    ret
<004CB6DA    jmp        @HandleFinally
<004CB6DF    jmp        004CB6C4
 004CB6E1    pop        edi
 004CB6E2    pop        esi
 004CB6E3    pop        ebx
 004CB6E4    mov        esp,ebp
 004CB6E6    pop        ebp
 004CB6E7    ret        4
*}
//end;

//004CB6EC
//procedure sub_004CB6EC(?:?; ?:dword; ?:TZVariant);
//begin
{*
 004CB6EC    push       ebp
 004CB6ED    mov        ebp,esp
 004CB6EF    add        esp,0FFFFFFF0
 004CB6F2    push       ebx
 004CB6F3    push       esi
 004CB6F4    push       edi
 004CB6F5    xor        ebx,ebx
 004CB6F7    mov        dword ptr [ebp-10],ebx
 004CB6FA    mov        dword ptr [ebp-0C],ebx
 004CB6FD    mov        edi,ecx
 004CB6FF    mov        esi,edx
 004CB701    mov        ebx,eax
 004CB703    xor        eax,eax
 004CB705    push       ebp
 004CB706    push       4CB931
 004CB70B    push       dword ptr fs:[eax]
 004CB70E    mov        dword ptr fs:[eax],esp
 004CB711    mov        byte ptr [ebp-5],0
 004CB715    mov        eax,esi
 004CB717    sub        eax,1
>004CB71A    jno        004CB721
 004CB71C    call       @IntOver
 004CB721    mov        edx,dword ptr [ebx+20]
 004CB724    test       edx,edx
>004CB726    je         004CB72D
 004CB728    cmp        eax,dword ptr [edx-4]
>004CB72B    jb         004CB732
 004CB72D    call       @BoundErr
 004CB732    mov        edx,dword ptr [edx+eax*4]
 004CB735    cmp        edx,7FFF
>004CB73B    jbe        004CB742
 004CB73D    call       @BoundErr
 004CB742    mov        ecx,dword ptr [ebx+24]
 004CB745    cmp        byte ptr [ecx+edx+6],0
>004CB74A    jne        004CB910
 004CB750    mov        edx,dword ptr [ebx+20]
 004CB753    test       edx,edx
>004CB755    je         004CB75C
 004CB757    cmp        eax,dword ptr [edx-4]
>004CB75A    jb         004CB761
 004CB75C    call       @BoundErr
 004CB761    mov        edx,dword ptr [edx+eax*4]
 004CB764    add        edx,1
>004CB767    jno        004CB76E
 004CB769    call       @IntOver
 004CB76E    cmp        edx,7FFF
>004CB774    jbe        004CB77B
 004CB776    call       @BoundErr
 004CB77B    mov        ecx,dword ptr [ebx+24]
 004CB77E    lea        edx,[ecx+edx+6]
 004CB782    mov        dword ptr [ebp-4],edx
 004CB785    mov        edx,dword ptr [ebx+18]
 004CB788    test       edx,edx
>004CB78A    je         004CB791
 004CB78C    cmp        eax,dword ptr [edx-4]
>004CB78F    jb         004CB796
 004CB791    call       @BoundErr
 004CB796    movzx      eax,byte ptr [edx+eax]
 004CB79A    cmp        eax,11
>004CB79D    ja         004CB90B
 004CB7A3    jmp        dword ptr [eax*4+4CB7AA]
 004CB7A3    dd         4CB90B
 004CB7A3    dd         4CB886
 004CB7A3    dd         4CB7F2
 004CB7A3    dd         4CB807
 004CB7A3    dd         4CB81C
 004CB7A3    dd         4CB830
 004CB7A3    dd         4CB846
 004CB7A3    dd         4CB857
 004CB7A3    dd         4CB868
 004CB7A3    dd         4CB8AB
 004CB7A3    dd         4CB8BB
 004CB7A3    dd         4CB8CB
 004CB7A3    dd         4CB898
 004CB7A3    dd         4CB898
 004CB7A3    dd         4CB898
 004CB7A3    dd         4CB8CB
 004CB7A3    dd         4CB8EB
 004CB7A3    dd         4CB8CB
 004CB7F2    mov        byte ptr [edi],2
 004CB7F5    mov        eax,dword ptr [ebp-4]
 004CB7F8    movsx      eax,byte ptr [eax]
 004CB7FB    cdq
 004CB7FC    mov        dword ptr [edi+2],eax
 004CB7FF    mov        dword ptr [edi+6],edx
>004CB802    jmp        004CB913
 004CB807    mov        byte ptr [edi],2
 004CB80A    mov        eax,dword ptr [ebp-4]
 004CB80D    movsx      eax,word ptr [eax]
 004CB810    cdq
 004CB811    mov        dword ptr [edi+2],eax
 004CB814    mov        dword ptr [edi+6],edx
>004CB817    jmp        004CB913
 004CB81C    mov        byte ptr [edi],2
 004CB81F    mov        eax,dword ptr [ebp-4]
 004CB822    mov        eax,dword ptr [eax]
 004CB824    cdq
 004CB825    mov        dword ptr [edi+2],eax
 004CB828    mov        dword ptr [edi+6],edx
>004CB82B    jmp        004CB913
 004CB830    mov        byte ptr [edi],2
 004CB833    mov        eax,dword ptr [ebp-4]
 004CB836    mov        edx,dword ptr [eax]
 004CB838    mov        dword ptr [edi+2],edx
 004CB83B    mov        edx,dword ptr [eax+4]
 004CB83E    mov        dword ptr [edi+6],edx
>004CB841    jmp        004CB913
 004CB846    mov        byte ptr [edi],3
 004CB849    mov        eax,dword ptr [ebp-4]
 004CB84C    fld        dword ptr [eax]
 004CB84E    fstp       tbyte ptr [edi+0A]
 004CB851    wait
>004CB852    jmp        004CB913
 004CB857    mov        byte ptr [edi],3
 004CB85A    mov        eax,dword ptr [ebp-4]
 004CB85D    fld        qword ptr [eax]
 004CB85F    fstp       tbyte ptr [edi+0A]
 004CB862    wait
>004CB863    jmp        004CB913
 004CB868    mov        byte ptr [edi],3
 004CB86B    mov        eax,dword ptr [ebp-4]
 004CB86E    mov        edx,dword ptr [eax]
 004CB870    mov        dword ptr [edi+0A],edx
 004CB873    mov        edx,dword ptr [eax+4]
 004CB876    mov        dword ptr [edi+0E],edx
 004CB879    mov        dx,word ptr [eax+8]
 004CB87D    mov        word ptr [edi+12],dx
>004CB881    jmp        004CB913
 004CB886    mov        byte ptr [edi],1
 004CB889    mov        eax,dword ptr [ebp-4]
 004CB88C    cmp        word ptr [eax],1
 004CB890    sbb        eax,eax
 004CB892    inc        eax
 004CB893    mov        byte ptr [edi+1],al
>004CB896    jmp        004CB913
 004CB898    mov        byte ptr [edi],6
 004CB89B    mov        eax,dword ptr [ebp-4]
 004CB89E    mov        edx,dword ptr [eax]
 004CB8A0    mov        dword ptr [edi+1C],edx
 004CB8A3    mov        edx,dword ptr [eax+4]
 004CB8A6    mov        dword ptr [edi+20],edx
>004CB8A9    jmp        004CB913
 004CB8AB    mov        byte ptr [edi],4
 004CB8AE    lea        eax,[edi+14]
 004CB8B1    mov        edx,dword ptr [ebp-4]
 004CB8B4    call       @LStrFromPChar
>004CB8B9    jmp        004CB913
 004CB8BB    mov        byte ptr [edi],5
 004CB8BE    lea        eax,[edi+18]
 004CB8C1    mov        edx,dword ptr [ebp-4]
 004CB8C4    call       @WStrFromPWChar
>004CB8C9    jmp        004CB913
 004CB8CB    mov        byte ptr [edi],4
 004CB8CE    lea        eax,[ebp-0C]
 004CB8D1    push       eax
 004CB8D2    lea        ecx,[ebp-5]
 004CB8D5    mov        edx,esi
 004CB8D7    mov        eax,ebx
 004CB8D9    call       004C9818
 004CB8DE    mov        edx,dword ptr [ebp-0C]
 004CB8E1    lea        eax,[edi+14]
 004CB8E4    call       @LStrAsg
>004CB8E9    jmp        004CB913
 004CB8EB    mov        byte ptr [edi],5
 004CB8EE    lea        eax,[ebp-10]
 004CB8F1    push       eax
 004CB8F2    lea        ecx,[ebp-5]
 004CB8F5    mov        edx,esi
 004CB8F7    mov        eax,ebx
 004CB8F9    call       004C9BDC
 004CB8FE    mov        edx,dword ptr [ebp-10]
 004CB901    lea        eax,[edi+18]
 004CB904    call       @WStrAsg
>004CB909    jmp        004CB913
 004CB90B    mov        byte ptr [edi],0
>004CB90E    jmp        004CB913
 004CB910    mov        byte ptr [edi],0
 004CB913    xor        eax,eax
 004CB915    pop        edx
 004CB916    pop        ecx
 004CB917    pop        ecx
 004CB918    mov        dword ptr fs:[eax],edx
 004CB91B    push       4CB938
 004CB920    lea        eax,[ebp-10]
 004CB923    call       @WStrClr
 004CB928    lea        eax,[ebp-0C]
 004CB92B    call       @LStrClr
 004CB930    ret
<004CB931    jmp        @HandleFinally
<004CB936    jmp        004CB920
 004CB938    pop        edi
 004CB939    pop        esi
 004CB93A    pop        ebx
 004CB93B    mov        esp,ebp
 004CB93D    pop        ebp
 004CB93E    ret
*}
//end;

//004CB940
//procedure sub_004CB940(?:dword; ?:?);
//begin
{*
 004CB940    push       ebp
 004CB941    mov        ebp,esp
 004CB943    push       ebx
 004CB944    push       esi
 004CB945    push       edi
 004CB946    mov        esi,edx
 004CB948    mov        ebx,eax
 004CB94A    mov        cl,9
 004CB94C    mov        edx,esi
 004CB94E    mov        eax,ebx
 004CB950    call       004C85D8
 004CB955    mov        edi,esi
 004CB957    sub        edi,1
>004CB95A    jno        004CB961
 004CB95C    call       @IntOver
 004CB961    mov        edx,dword ptr [ebx+20]
 004CB964    test       edx,edx
>004CB966    je         004CB96D
 004CB968    cmp        edi,dword ptr [edx-4]
>004CB96B    jb         004CB972
 004CB96D    call       @BoundErr
 004CB972    mov        edx,dword ptr [edx+edi*4]
 004CB975    cmp        edx,7FFF
>004CB97B    jbe        004CB982
 004CB97D    call       @BoundErr
 004CB982    mov        eax,dword ptr [ebx+24]
 004CB985    cmp        byte ptr [eax+edx+6],1
>004CB98A    jne        004CB9B5
 004CB98C    mov        edx,dword ptr [ebx+18]
 004CB98F    test       edx,edx
>004CB991    je         004CB998
 004CB993    cmp        edi,dword ptr [edx-4]
>004CB996    jb         004CB99D
 004CB998    call       @BoundErr
 004CB99D    mov        dl,byte ptr [edx+edi]
 004CB9A0    add        dl,0F1
 004CB9A3    sub        dl,3
>004CB9A6    jae        004CB9B5
 004CB9A8    push       0
 004CB9AA    mov        ecx,esi
 004CB9AC    mov        edx,eax
 004CB9AE    mov        eax,ebx
 004CB9B0    call       004C88C0
 004CB9B5    mov        eax,dword ptr [ebx+20]
 004CB9B8    test       eax,eax
>004CB9BA    je         004CB9C1
 004CB9BC    cmp        edi,dword ptr [eax-4]
>004CB9BF    jb         004CB9C6
 004CB9C1    call       @BoundErr
 004CB9C6    mov        eax,dword ptr [eax+edi*4]
 004CB9C9    cmp        eax,7FFF
>004CB9CE    jbe        004CB9D5
 004CB9D0    call       @BoundErr
 004CB9D5    mov        edx,dword ptr [ebx+24]
 004CB9D8    mov        byte ptr [edx+eax+6],0
 004CB9DD    pop        edi
 004CB9DE    pop        esi
 004CB9DF    pop        ebx
 004CB9E0    pop        ebp
 004CB9E1    ret
*}
//end;

//004CB9E4
//procedure sub_004CB9E4(?:TZRowAccessor; ?:dword);
//begin
{*
 004CB9E4    push       ebp
 004CB9E5    mov        ebp,esp
 004CB9E7    push       ebx
 004CB9E8    push       esi
 004CB9E9    push       edi
 004CB9EA    mov        esi,edx
 004CB9EC    mov        ebx,eax
 004CB9EE    mov        cl,9
 004CB9F0    mov        edx,esi
 004CB9F2    mov        eax,ebx
 004CB9F4    call       004C85D8
 004CB9F9    mov        edi,esi
 004CB9FB    sub        edi,1
>004CB9FE    jno        004CBA05
 004CBA00    call       @IntOver
 004CBA05    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CBA08    test       edx,edx
>004CBA0A    je         004CBA11
 004CBA0C    cmp        edi,dword ptr [edx-4]
>004CBA0F    jb         004CBA16
 004CBA11    call       @BoundErr
 004CBA16    mov        edx,dword ptr [edx+edi*4]
 004CBA19    cmp        edx,7FFF
>004CBA1F    jbe        004CBA26
 004CBA21    call       @BoundErr
 004CBA26    mov        eax,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CBA29    cmp        byte ptr [eax+edx+6],0
>004CBA2E    jne        004CBA59
 004CBA30    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CBA33    test       edx,edx
>004CBA35    je         004CBA3C
 004CBA37    cmp        edi,dword ptr [edx-4]
>004CBA3A    jb         004CBA41
 004CBA3C    call       @BoundErr
 004CBA41    mov        dl,byte ptr [edx+edi]
 004CBA44    add        dl,0F1
 004CBA47    sub        dl,3
>004CBA4A    jae        004CBA59
 004CBA4C    push       0
 004CBA4E    mov        ecx,esi
 004CBA50    mov        edx,eax
 004CBA52    mov        eax,ebx
 004CBA54    call       004C88C0
 004CBA59    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CBA5C    test       eax,eax
>004CBA5E    je         004CBA65
 004CBA60    cmp        edi,dword ptr [eax-4]
>004CBA63    jb         004CBA6A
 004CBA65    call       @BoundErr
 004CBA6A    mov        eax,dword ptr [eax+edi*4]
 004CBA6D    cmp        eax,7FFF
>004CBA72    jbe        004CBA79
 004CBA74    call       @BoundErr
 004CBA79    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CBA7C    mov        byte ptr [edx+eax+6],1
 004CBA81    pop        edi
 004CBA82    pop        esi
 004CBA83    pop        ebx
 004CBA84    pop        ebp
 004CBA85    ret
*}
//end;

//004CBA88
//procedure sub_004CBA88(?:TZRowAccessor; ?:dword; ?:?);
//begin
{*
 004CBA88    push       ebp
 004CBA89    mov        ebp,esp
 004CBA8B    add        esp,0FFFFFFF8
 004CBA8E    push       ebx
 004CBA8F    push       esi
 004CBA90    mov        byte ptr [ebp-1],cl
 004CBA93    mov        esi,edx
 004CBA95    mov        ebx,eax
 004CBA97    mov        cl,1
 004CBA99    mov        edx,esi
 004CBA9B    mov        eax,ebx
 004CBA9D    call       004C85D8
 004CBAA2    cmp        byte ptr [ebp-1],0
>004CBAA6    je         004CBAAF
 004CBAA8    mov        ecx,1
>004CBAAD    jmp        004CBAB1
 004CBAAF    xor        ecx,ecx
 004CBAB1    mov        eax,esi
 004CBAB3    sub        eax,1
>004CBAB6    jno        004CBABD
 004CBAB8    call       @IntOver
 004CBABD    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CBAC0    test       edx,edx
>004CBAC2    je         004CBAC9
 004CBAC4    cmp        eax,dword ptr [edx-4]
>004CBAC7    jb         004CBACE
 004CBAC9    call       @BoundErr
 004CBACE    movzx      edx,byte ptr [edx+eax]
 004CBAD2    cmp        edx,0A
>004CBAD5    ja         004CBC49
 004CBADB    jmp        dword ptr [edx*4+4CBAE2]
 004CBADB    dd         4CBC49
 004CBADB    dd         4CBB0E
 004CBADB    dd         4CBB77
 004CBADB    dd         4CBB9B
 004CBADB    dd         4CBBC2
 004CBADB    dd         4CBBCD
 004CBADB    dd         4CBBDD
 004CBADB    dd         4CBBF5
 004CBADB    dd         4CBC0D
 004CBADB    dd         4CBC25
 004CBADB    dd         4CBC25
 004CBB0E    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CBB11    test       edx,edx
>004CBB13    je         004CBB1A
 004CBB15    cmp        eax,dword ptr [edx-4]
>004CBB18    jb         004CBB1F
 004CBB1A    call       @BoundErr
 004CBB1F    mov        edx,dword ptr [edx+eax*4]
 004CBB22    cmp        edx,7FFF
>004CBB28    jbe        004CBB2F
 004CBB2A    call       @BoundErr
 004CBB2F    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CBB32    mov        byte ptr [ecx+edx+6],0
 004CBB37    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CBB3A    test       edx,edx
>004CBB3C    je         004CBB43
 004CBB3E    cmp        eax,dword ptr [edx-4]
>004CBB41    jb         004CBB48
 004CBB43    call       @BoundErr
 004CBB48    mov        eax,dword ptr [edx+eax*4]
 004CBB4B    add        eax,1
>004CBB4E    jno        004CBB55
 004CBB50    call       @IntOver
 004CBB55    cmp        eax,7FFF
>004CBB5A    jbe        004CBB61
 004CBB5C    call       @BoundErr
 004CBB61    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CBB64    lea        eax,[edx+eax+6]
 004CBB68    cmp        byte ptr [ebp-1],1
 004CBB6C    cmc
 004CBB6D    sbb        edx,edx
 004CBB6F    mov        word ptr [eax],dx
>004CBB72    jmp        004CBC49
 004CBB77    add        ecx,80
 004CBB7D    cmp        ecx,0FF
>004CBB83    jbe        004CBB8A
 004CBB85    call       @BoundErr
 004CBB8A    add        ecx,0FFFFFF80
 004CBB8D    mov        edx,esi
 004CBB8F    mov        eax,ebx
 004CBB91    call       004CBC70
>004CBB96    jmp        004CBC49
 004CBB9B    add        ecx,8000
 004CBBA1    cmp        ecx,0FFFF
>004CBBA7    jbe        004CBBAE
 004CBBA9    call       @BoundErr
 004CBBAE    add        ecx,0FFFF8000
 004CBBB4    mov        edx,esi
 004CBBB6    mov        eax,ebx
 004CBBB8    call       004CBE2C
>004CBBBD    jmp        004CBC49
 004CBBC2    mov        edx,esi
 004CBBC4    mov        eax,ebx
 004CBBC6    call       004CBFF8
>004CBBCB    jmp        004CBC49
 004CBBCD    mov        eax,ecx
 004CBBCF    cdq
 004CBBD0    push       edx
 004CBBD1    push       eax
 004CBBD2    mov        edx,esi
 004CBBD4    mov        eax,ebx
 004CBBD6    call       004CC1D4
>004CBBDB    jmp        004CBC49
 004CBBDD    mov        dword ptr [ebp-8],ecx
 004CBBE0    fild       dword ptr [ebp-8]
 004CBBE3    add        esp,0FFFFFFFC
 004CBBE6    fstp       dword ptr [esp]
 004CBBE9    wait
 004CBBEA    mov        edx,esi
 004CBBEC    mov        eax,ebx
 004CBBEE    call       004CC3E4
>004CBBF3    jmp        004CBC49
 004CBBF5    mov        dword ptr [ebp-8],ecx
 004CBBF8    fild       dword ptr [ebp-8]
 004CBBFB    add        esp,0FFFFFFF8
 004CBBFE    fstp       qword ptr [esp]
 004CBC01    wait
 004CBC02    mov        edx,esi
 004CBC04    mov        eax,ebx
 004CBC06    call       004CC604
>004CBC0B    jmp        004CBC49
 004CBC0D    mov        dword ptr [ebp-8],ecx
 004CBC10    fild       dword ptr [ebp-8]
 004CBC13    add        esp,0FFFFFFF4
 004CBC16    fstp       tbyte ptr [esp]
 004CBC19    wait
 004CBC1A    mov        edx,esi
 004CBC1C    mov        eax,ebx
 004CBC1E    call       004CC82C
>004CBC23    jmp        004CBC49
 004CBC25    cmp        byte ptr [ebp-1],0
>004CBC29    je         004CBC3B
 004CBC2B    mov        ecx,4CBC58; 'True'
 004CBC30    mov        edx,esi
 004CBC32    mov        eax,ebx
 004CBC34    call       004CCBB0
>004CBC39    jmp        004CBC49
 004CBC3B    mov        ecx,4CBC68; 'False'
 004CBC40    mov        edx,esi
 004CBC42    mov        eax,ebx
 004CBC44    call       004CCBB0
 004CBC49    pop        esi
 004CBC4A    pop        ebx
 004CBC4B    pop        ecx
 004CBC4C    pop        ecx
 004CBC4D    pop        ebp
 004CBC4E    ret
*}
//end;

//004CBC70
//procedure sub_004CBC70(?:TZRowAccessor; ?:dword; ?:?);
//begin
{*
 004CBC70    push       ebp
 004CBC71    mov        ebp,esp
 004CBC73    add        esp,0FFFFFFF8
 004CBC76    push       ebx
 004CBC77    push       esi
 004CBC78    push       edi
 004CBC79    xor        ebx,ebx
 004CBC7B    mov        dword ptr [ebp-8],ebx
 004CBC7E    mov        ebx,ecx
 004CBC80    mov        esi,edx
 004CBC82    mov        edi,eax
 004CBC84    xor        eax,eax
 004CBC86    push       ebp
 004CBC87    push       4CBE1C
 004CBC8C    push       dword ptr fs:[eax]
 004CBC8F    mov        dword ptr fs:[eax],esp
 004CBC92    mov        cl,2
 004CBC94    mov        edx,esi
 004CBC96    mov        eax,edi
 004CBC98    call       004C85D8
 004CBC9D    mov        eax,esi
 004CBC9F    sub        eax,1
>004CBCA2    jno        004CBCA9
 004CBCA4    call       @IntOver
 004CBCA9    mov        edx,dword ptr [edi+18]; TZRowAccessor.?f18:.4
 004CBCAC    test       edx,edx
>004CBCAE    je         004CBCB5
 004CBCB0    cmp        eax,dword ptr [edx-4]
>004CBCB3    jb         004CBCBA
 004CBCB5    call       @BoundErr
 004CBCBA    movzx      edx,byte ptr [edx+eax]
 004CBCBE    cmp        edx,0A
>004CBCC1    ja         004CBE06
 004CBCC7    jmp        dword ptr [edx*4+4CBCCE]
 004CBCC7    dd         4CBE06
 004CBCC7    dd         4CBCFA
 004CBCC7    dd         4CBD0D
 004CBCC7    dd         4CBD6E
 004CBCC7    dd         4CBD7F
 004CBCC7    dd         4CBD8D
 004CBCC7    dd         4CBD9E
 004CBCC7    dd         4CBDB9
 004CBCC7    dd         4CBDD4
 004CBCC7    dd         4CBDEF
 004CBCC7    dd         4CBDEF
 004CBCFA    test       bl,bl
 004CBCFC    setne      cl
 004CBCFF    mov        edx,esi
 004CBD01    mov        eax,edi
 004CBD03    call       004CBA88
>004CBD08    jmp        004CBE06
 004CBD0D    mov        edx,dword ptr [edi+20]; TZRowAccessor.?f20:.6
 004CBD10    test       edx,edx
>004CBD12    je         004CBD19
 004CBD14    cmp        eax,dword ptr [edx-4]
>004CBD17    jb         004CBD1E
 004CBD19    call       @BoundErr
 004CBD1E    mov        edx,dword ptr [edx+eax*4]
 004CBD21    cmp        edx,7FFF
>004CBD27    jbe        004CBD2E
 004CBD29    call       @BoundErr
 004CBD2E    mov        ecx,dword ptr [edi+24]; TZRowAccessor.?f24:Pointer
 004CBD31    mov        byte ptr [ecx+edx+6],0
 004CBD36    mov        edx,dword ptr [edi+20]; TZRowAccessor.?f20:.6
 004CBD39    test       edx,edx
>004CBD3B    je         004CBD42
 004CBD3D    cmp        eax,dword ptr [edx-4]
>004CBD40    jb         004CBD47
 004CBD42    call       @BoundErr
 004CBD47    mov        eax,dword ptr [edx+eax*4]
 004CBD4A    add        eax,1
>004CBD4D    jno        004CBD54
 004CBD4F    call       @IntOver
 004CBD54    cmp        eax,7FFF
>004CBD59    jbe        004CBD60
 004CBD5B    call       @BoundErr
 004CBD60    mov        edx,dword ptr [edi+24]; TZRowAccessor.?f24:Pointer
 004CBD63    lea        eax,[edx+eax+6]
 004CBD67    mov        byte ptr [eax],bl
>004CBD69    jmp        004CBE06
 004CBD6E    movsx      ecx,bl
 004CBD71    mov        edx,esi
 004CBD73    mov        eax,edi
 004CBD75    call       004CBE2C
>004CBD7A    jmp        004CBE06
 004CBD7F    movsx      ecx,bl
 004CBD82    mov        edx,esi
 004CBD84    mov        eax,edi
 004CBD86    call       004CBFF8
>004CBD8B    jmp        004CBE06
 004CBD8D    movsx      eax,bl
 004CBD90    cdq
 004CBD91    push       edx
 004CBD92    push       eax
 004CBD93    mov        edx,esi
 004CBD95    mov        eax,edi
 004CBD97    call       004CC1D4
>004CBD9C    jmp        004CBE06
 004CBD9E    movsx      eax,bl
 004CBDA1    mov        dword ptr [ebp-4],eax
 004CBDA4    fild       dword ptr [ebp-4]
 004CBDA7    add        esp,0FFFFFFFC
 004CBDAA    fstp       dword ptr [esp]
 004CBDAD    wait
 004CBDAE    mov        edx,esi
 004CBDB0    mov        eax,edi
 004CBDB2    call       004CC3E4
>004CBDB7    jmp        004CBE06
 004CBDB9    movsx      eax,bl
 004CBDBC    mov        dword ptr [ebp-4],eax
 004CBDBF    fild       dword ptr [ebp-4]
 004CBDC2    add        esp,0FFFFFFF8
 004CBDC5    fstp       qword ptr [esp]
 004CBDC8    wait
 004CBDC9    mov        edx,esi
 004CBDCB    mov        eax,edi
 004CBDCD    call       004CC604
>004CBDD2    jmp        004CBE06
 004CBDD4    movsx      eax,bl
 004CBDD7    mov        dword ptr [ebp-4],eax
 004CBDDA    fild       dword ptr [ebp-4]
 004CBDDD    add        esp,0FFFFFFF4
 004CBDE0    fstp       tbyte ptr [esp]
 004CBDE3    wait
 004CBDE4    mov        edx,esi
 004CBDE6    mov        eax,edi
 004CBDE8    call       004CC82C
>004CBDED    jmp        004CBE06
 004CBDEF    lea        edx,[ebp-8]
 004CBDF2    movsx      eax,bl
 004CBDF5    call       IntToStr
 004CBDFA    mov        ecx,dword ptr [ebp-8]
 004CBDFD    mov        edx,esi
 004CBDFF    mov        eax,edi
 004CBE01    call       004CCBB0
 004CBE06    xor        eax,eax
 004CBE08    pop        edx
 004CBE09    pop        ecx
 004CBE0A    pop        ecx
 004CBE0B    mov        dword ptr fs:[eax],edx
 004CBE0E    push       4CBE23
 004CBE13    lea        eax,[ebp-8]
 004CBE16    call       @LStrClr
 004CBE1B    ret
<004CBE1C    jmp        @HandleFinally
<004CBE21    jmp        004CBE13
 004CBE23    pop        edi
 004CBE24    pop        esi
 004CBE25    pop        ebx
 004CBE26    pop        ecx
 004CBE27    pop        ecx
 004CBE28    pop        ebp
 004CBE29    ret
*}
//end;

//004CBE2C
//procedure sub_004CBE2C(?:TZRowAccessor; ?:dword; ?:?);
//begin
{*
 004CBE2C    push       ebp
 004CBE2D    mov        ebp,esp
 004CBE2F    add        esp,0FFFFFFF8
 004CBE32    push       ebx
 004CBE33    push       esi
 004CBE34    push       edi
 004CBE35    xor        ebx,ebx
 004CBE37    mov        dword ptr [ebp-8],ebx
 004CBE3A    mov        edi,ecx
 004CBE3C    mov        esi,edx
 004CBE3E    mov        ebx,eax
 004CBE40    xor        eax,eax
 004CBE42    push       ebp
 004CBE43    push       4CBFEA
 004CBE48    push       dword ptr fs:[eax]
 004CBE4B    mov        dword ptr fs:[eax],esp
 004CBE4E    mov        cl,3
 004CBE50    mov        edx,esi
 004CBE52    mov        eax,ebx
 004CBE54    call       004C85D8
 004CBE59    mov        eax,esi
 004CBE5B    sub        eax,1
>004CBE5E    jno        004CBE65
 004CBE60    call       @IntOver
 004CBE65    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CBE68    test       edx,edx
>004CBE6A    je         004CBE71
 004CBE6C    cmp        eax,dword ptr [edx-4]
>004CBE6F    jb         004CBE76
 004CBE71    call       @BoundErr
 004CBE76    movzx      edx,byte ptr [edx+eax]
 004CBE7A    cmp        edx,0A
>004CBE7D    ja         004CBFD4
 004CBE83    jmp        dword ptr [edx*4+4CBE8A]
 004CBE83    dd         4CBFD4
 004CBE83    dd         4CBEB6
 004CBE83    dd         4CBECA
 004CBE83    dd         4CBEF1
 004CBE83    dd         4CBF53
 004CBE83    dd         4CBF61
 004CBE83    dd         4CBF72
 004CBE83    dd         4CBF8B
 004CBE83    dd         4CBFA4
 004CBE83    dd         4CBFBD
 004CBE83    dd         4CBFBD
 004CBEB6    test       di,di
 004CBEB9    setne      cl
 004CBEBC    mov        edx,esi
 004CBEBE    mov        eax,ebx
 004CBEC0    call       004CBA88
>004CBEC5    jmp        004CBFD4
 004CBECA    movsx      ecx,di
 004CBECD    add        ecx,80
 004CBED3    cmp        ecx,0FF
>004CBED9    jbe        004CBEE0
 004CBEDB    call       @BoundErr
 004CBEE0    add        ecx,0FFFFFF80
 004CBEE3    mov        edx,esi
 004CBEE5    mov        eax,ebx
 004CBEE7    call       004CBC70
>004CBEEC    jmp        004CBFD4
 004CBEF1    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CBEF4    test       edx,edx
>004CBEF6    je         004CBEFD
 004CBEF8    cmp        eax,dword ptr [edx-4]
>004CBEFB    jb         004CBF02
 004CBEFD    call       @BoundErr
 004CBF02    mov        edx,dword ptr [edx+eax*4]
 004CBF05    cmp        edx,7FFF
>004CBF0B    jbe        004CBF12
 004CBF0D    call       @BoundErr
 004CBF12    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CBF15    mov        byte ptr [ecx+edx+6],0
 004CBF1A    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CBF1D    test       edx,edx
>004CBF1F    je         004CBF26
 004CBF21    cmp        eax,dword ptr [edx-4]
>004CBF24    jb         004CBF2B
 004CBF26    call       @BoundErr
 004CBF2B    mov        eax,dword ptr [edx+eax*4]
 004CBF2E    add        eax,1
>004CBF31    jno        004CBF38
 004CBF33    call       @IntOver
 004CBF38    cmp        eax,7FFF
>004CBF3D    jbe        004CBF44
 004CBF3F    call       @BoundErr
 004CBF44    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CBF47    lea        eax,[edx+eax+6]
 004CBF4B    mov        word ptr [eax],di
>004CBF4E    jmp        004CBFD4
 004CBF53    movsx      ecx,di
 004CBF56    mov        edx,esi
 004CBF58    mov        eax,ebx
 004CBF5A    call       004CBFF8
>004CBF5F    jmp        004CBFD4
 004CBF61    movsx      eax,di
 004CBF64    cdq
 004CBF65    push       edx
 004CBF66    push       eax
 004CBF67    mov        edx,esi
 004CBF69    mov        eax,ebx
 004CBF6B    call       004CC1D4
>004CBF70    jmp        004CBFD4
 004CBF72    mov        word ptr [ebp-4],di
 004CBF76    fild       word ptr [ebp-4]
 004CBF79    add        esp,0FFFFFFFC
 004CBF7C    fstp       dword ptr [esp]
 004CBF7F    wait
 004CBF80    mov        edx,esi
 004CBF82    mov        eax,ebx
 004CBF84    call       004CC3E4
>004CBF89    jmp        004CBFD4
 004CBF8B    mov        word ptr [ebp-4],di
 004CBF8F    fild       word ptr [ebp-4]
 004CBF92    add        esp,0FFFFFFF8
 004CBF95    fstp       qword ptr [esp]
 004CBF98    wait
 004CBF99    mov        edx,esi
 004CBF9B    mov        eax,ebx
 004CBF9D    call       004CC604
>004CBFA2    jmp        004CBFD4
 004CBFA4    mov        word ptr [ebp-4],di
 004CBFA8    fild       word ptr [ebp-4]
 004CBFAB    add        esp,0FFFFFFF4
 004CBFAE    fstp       tbyte ptr [esp]
 004CBFB1    wait
 004CBFB2    mov        edx,esi
 004CBFB4    mov        eax,ebx
 004CBFB6    call       004CC82C
>004CBFBB    jmp        004CBFD4
 004CBFBD    lea        edx,[ebp-8]
 004CBFC0    movsx      eax,di
 004CBFC3    call       IntToStr
 004CBFC8    mov        ecx,dword ptr [ebp-8]
 004CBFCB    mov        edx,esi
 004CBFCD    mov        eax,ebx
 004CBFCF    call       004CCBB0
 004CBFD4    xor        eax,eax
 004CBFD6    pop        edx
 004CBFD7    pop        ecx
 004CBFD8    pop        ecx
 004CBFD9    mov        dword ptr fs:[eax],edx
 004CBFDC    push       4CBFF1
 004CBFE1    lea        eax,[ebp-8]
 004CBFE4    call       @LStrClr
 004CBFE9    ret
<004CBFEA    jmp        @HandleFinally
<004CBFEF    jmp        004CBFE1
 004CBFF1    pop        edi
 004CBFF2    pop        esi
 004CBFF3    pop        ebx
 004CBFF4    pop        ecx
 004CBFF5    pop        ecx
 004CBFF6    pop        ebp
 004CBFF7    ret
*}
//end;

//004CBFF8
//procedure sub_004CBFF8(?:TZRowAccessor; ?:dword; ?:Integer);
//begin
{*
 004CBFF8    push       ebp
 004CBFF9    mov        ebp,esp
 004CBFFB    add        esp,0FFFFFFF8
 004CBFFE    push       ebx
 004CBFFF    push       esi
 004CC000    push       edi
 004CC001    xor        ebx,ebx
 004CC003    mov        dword ptr [ebp-8],ebx
 004CC006    mov        edi,ecx
 004CC008    mov        esi,edx
 004CC00A    mov        ebx,eax
 004CC00C    xor        eax,eax
 004CC00E    push       ebp
 004CC00F    push       4CC1C6
 004CC014    push       dword ptr fs:[eax]
 004CC017    mov        dword ptr fs:[eax],esp
 004CC01A    mov        cl,4
 004CC01C    mov        edx,esi
 004CC01E    mov        eax,ebx
 004CC020    call       004C85D8
 004CC025    mov        eax,esi
 004CC027    sub        eax,1
>004CC02A    jno        004CC031
 004CC02C    call       @IntOver
 004CC031    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CC034    test       edx,edx
>004CC036    je         004CC03D
 004CC038    cmp        eax,dword ptr [edx-4]
>004CC03B    jb         004CC042
 004CC03D    call       @BoundErr
 004CC042    movzx      edx,byte ptr [edx+eax]
 004CC046    cmp        edx,0A
>004CC049    ja         004CC1B0
 004CC04F    jmp        dword ptr [edx*4+4CC056]
 004CC04F    dd         4CC1B0
 004CC04F    dd         4CC082
 004CC04F    dd         4CC095
 004CC04F    dd         4CC0BB
 004CC04F    dd         4CC0E4
 004CC04F    dd         4CC142
 004CC04F    dd         4CC152
 004CC04F    dd         4CC16A
 004CC04F    dd         4CC182
 004CC04F    dd         4CC19A
 004CC04F    dd         4CC19A
 004CC082    test       edi,edi
 004CC084    setne      cl
 004CC087    mov        edx,esi
 004CC089    mov        eax,ebx
 004CC08B    call       004CBA88
>004CC090    jmp        004CC1B0
 004CC095    mov        ecx,edi
 004CC097    add        ecx,80
 004CC09D    cmp        ecx,0FF
>004CC0A3    jbe        004CC0AA
 004CC0A5    call       @BoundErr
 004CC0AA    add        ecx,0FFFFFF80
 004CC0AD    mov        edx,esi
 004CC0AF    mov        eax,ebx
 004CC0B1    call       004CBC70
>004CC0B6    jmp        004CC1B0
 004CC0BB    mov        ecx,edi
 004CC0BD    add        ecx,8000
 004CC0C3    cmp        ecx,0FFFF
>004CC0C9    jbe        004CC0D0
 004CC0CB    call       @BoundErr
 004CC0D0    add        ecx,0FFFF8000
 004CC0D6    mov        edx,esi
 004CC0D8    mov        eax,ebx
 004CC0DA    call       004CBE2C
>004CC0DF    jmp        004CC1B0
 004CC0E4    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CC0E7    test       edx,edx
>004CC0E9    je         004CC0F0
 004CC0EB    cmp        eax,dword ptr [edx-4]
>004CC0EE    jb         004CC0F5
 004CC0F0    call       @BoundErr
 004CC0F5    mov        edx,dword ptr [edx+eax*4]
 004CC0F8    cmp        edx,7FFF
>004CC0FE    jbe        004CC105
 004CC100    call       @BoundErr
 004CC105    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CC108    mov        byte ptr [ecx+edx+6],0
 004CC10D    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CC110    test       edx,edx
>004CC112    je         004CC119
 004CC114    cmp        eax,dword ptr [edx-4]
>004CC117    jb         004CC11E
 004CC119    call       @BoundErr
 004CC11E    mov        eax,dword ptr [edx+eax*4]
 004CC121    add        eax,1
>004CC124    jno        004CC12B
 004CC126    call       @IntOver
 004CC12B    cmp        eax,7FFF
>004CC130    jbe        004CC137
 004CC132    call       @BoundErr
 004CC137    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CC13A    lea        eax,[edx+eax+6]
 004CC13E    mov        dword ptr [eax],edi
>004CC140    jmp        004CC1B0
 004CC142    mov        eax,edi
 004CC144    cdq
 004CC145    push       edx
 004CC146    push       eax
 004CC147    mov        edx,esi
 004CC149    mov        eax,ebx
 004CC14B    call       004CC1D4
>004CC150    jmp        004CC1B0
 004CC152    mov        dword ptr [ebp-4],edi
 004CC155    fild       dword ptr [ebp-4]
 004CC158    add        esp,0FFFFFFFC
 004CC15B    fstp       dword ptr [esp]
 004CC15E    wait
 004CC15F    mov        edx,esi
 004CC161    mov        eax,ebx
 004CC163    call       004CC3E4
>004CC168    jmp        004CC1B0
 004CC16A    mov        dword ptr [ebp-4],edi
 004CC16D    fild       dword ptr [ebp-4]
 004CC170    add        esp,0FFFFFFF8
 004CC173    fstp       qword ptr [esp]
 004CC176    wait
 004CC177    mov        edx,esi
 004CC179    mov        eax,ebx
 004CC17B    call       004CC604
>004CC180    jmp        004CC1B0
 004CC182    mov        dword ptr [ebp-4],edi
 004CC185    fild       dword ptr [ebp-4]
 004CC188    add        esp,0FFFFFFF4
 004CC18B    fstp       tbyte ptr [esp]
 004CC18E    wait
 004CC18F    mov        edx,esi
 004CC191    mov        eax,ebx
 004CC193    call       004CC82C
>004CC198    jmp        004CC1B0
 004CC19A    lea        edx,[ebp-8]
 004CC19D    mov        eax,edi
 004CC19F    call       IntToStr
 004CC1A4    mov        ecx,dword ptr [ebp-8]
 004CC1A7    mov        edx,esi
 004CC1A9    mov        eax,ebx
 004CC1AB    call       004CCBB0
 004CC1B0    xor        eax,eax
 004CC1B2    pop        edx
 004CC1B3    pop        ecx
 004CC1B4    pop        ecx
 004CC1B5    mov        dword ptr fs:[eax],edx
 004CC1B8    push       4CC1CD
 004CC1BD    lea        eax,[ebp-8]
 004CC1C0    call       @LStrClr
 004CC1C5    ret
<004CC1C6    jmp        @HandleFinally
<004CC1CB    jmp        004CC1BD
 004CC1CD    pop        edi
 004CC1CE    pop        esi
 004CC1CF    pop        ebx
 004CC1D0    pop        ecx
 004CC1D1    pop        ecx
 004CC1D2    pop        ebp
 004CC1D3    ret
*}
//end;

//004CC1D4
//procedure sub_004CC1D4(?:TZRowAccessor; ?:dword; ?:?; ?:?);
//begin
{*
 004CC1D4    push       ebp
 004CC1D5    mov        ebp,esp
 004CC1D7    push       0
 004CC1D9    push       ebx
 004CC1DA    push       esi
 004CC1DB    mov        esi,edx
 004CC1DD    mov        ebx,eax
 004CC1DF    xor        eax,eax
 004CC1E1    push       ebp
 004CC1E2    push       4CC3D6
 004CC1E7    push       dword ptr fs:[eax]
 004CC1EA    mov        dword ptr fs:[eax],esp
 004CC1ED    mov        cl,5
 004CC1EF    mov        edx,esi
 004CC1F1    mov        eax,ebx
 004CC1F3    call       004C85D8
 004CC1F8    mov        eax,esi
 004CC1FA    sub        eax,1
>004CC1FD    jno        004CC204
 004CC1FF    call       @IntOver
 004CC204    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CC207    test       edx,edx
>004CC209    je         004CC210
 004CC20B    cmp        eax,dword ptr [edx-4]
>004CC20E    jb         004CC215
 004CC210    call       @BoundErr
 004CC215    movzx      edx,byte ptr [edx+eax]
 004CC219    cmp        edx,0A
>004CC21C    ja         004CC3C0
 004CC222    jmp        dword ptr [edx*4+4CC229]
 004CC222    dd         4CC3C0
 004CC222    dd         4CC255
 004CC222    dd         4CC270
 004CC222    dd         4CC2A5
 004CC222    dd         4CC2DC
 004CC222    dd         4CC300
 004CC222    dd         4CC367
 004CC222    dd         4CC37C
 004CC222    dd         4CC391
 004CC222    dd         4CC3A6
 004CC222    dd         4CC3A6
 004CC255    cmp        dword ptr [ebp+0C],0
>004CC259    jne        004CC25F
 004CC25B    cmp        dword ptr [ebp+8],0
 004CC25F    setne      cl
 004CC262    mov        edx,esi
 004CC264    mov        eax,ebx
 004CC266    call       004CBA88
>004CC26B    jmp        004CC3C0
 004CC270    mov        eax,dword ptr [ebp+8]
 004CC273    mov        edx,dword ptr [ebp+0C]
 004CC276    add        eax,80
 004CC27B    adc        edx,0
 004CC27E    cmp        edx,0
>004CC281    jne        004CC288
 004CC283    cmp        eax,0FF
>004CC288    jbe        004CC28F
 004CC28A    call       @BoundErr
 004CC28F    add        eax,0FFFFFF80
 004CC292    adc        edx,0FFFFFFFF
 004CC295    mov        ecx,eax
 004CC297    mov        edx,esi
 004CC299    mov        eax,ebx
 004CC29B    call       004CBC70
>004CC2A0    jmp        004CC3C0
 004CC2A5    mov        eax,dword ptr [ebp+8]
 004CC2A8    mov        edx,dword ptr [ebp+0C]
 004CC2AB    add        eax,8000
 004CC2B0    adc        edx,0
 004CC2B3    cmp        edx,0
>004CC2B6    jne        004CC2BD
 004CC2B8    cmp        eax,0FFFF
>004CC2BD    jbe        004CC2C4
 004CC2BF    call       @BoundErr
 004CC2C4    add        eax,0FFFF8000
 004CC2C9    adc        edx,0FFFFFFFF
 004CC2CC    mov        ecx,eax
 004CC2CE    mov        edx,esi
 004CC2D0    mov        eax,ebx
 004CC2D2    call       004CBE2C
>004CC2D7    jmp        004CC3C0
 004CC2DC    mov        eax,dword ptr [ebp+8]
 004CC2DF    mov        edx,dword ptr [ebp+0C]
 004CC2E2    push       eax
 004CC2E3    sar        eax,1F
 004CC2E6    cmp        eax,edx
 004CC2E8    pop        eax
>004CC2E9    je         004CC2F0
 004CC2EB    call       @BoundErr
 004CC2F0    mov        ecx,eax
 004CC2F2    mov        edx,esi
 004CC2F4    mov        eax,ebx
 004CC2F6    call       004CBFF8
>004CC2FB    jmp        004CC3C0
 004CC300    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CC303    test       edx,edx
>004CC305    je         004CC30C
 004CC307    cmp        eax,dword ptr [edx-4]
>004CC30A    jb         004CC311
 004CC30C    call       @BoundErr
 004CC311    mov        edx,dword ptr [edx+eax*4]
 004CC314    cmp        edx,7FFF
>004CC31A    jbe        004CC321
 004CC31C    call       @BoundErr
 004CC321    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CC324    mov        byte ptr [ecx+edx+6],0
 004CC329    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CC32C    test       edx,edx
>004CC32E    je         004CC335
 004CC330    cmp        eax,dword ptr [edx-4]
>004CC333    jb         004CC33A
 004CC335    call       @BoundErr
 004CC33A    mov        eax,dword ptr [edx+eax*4]
 004CC33D    add        eax,1
>004CC340    jno        004CC347
 004CC342    call       @IntOver
 004CC347    cmp        eax,7FFF
>004CC34C    jbe        004CC353
 004CC34E    call       @BoundErr
 004CC353    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CC356    lea        eax,[edx+eax+6]
 004CC35A    mov        edx,dword ptr [ebp+8]
 004CC35D    mov        dword ptr [eax],edx
 004CC35F    mov        edx,dword ptr [ebp+0C]
 004CC362    mov        dword ptr [eax+4],edx
>004CC365    jmp        004CC3C0
 004CC367    fild       qword ptr [ebp+8]
 004CC36A    add        esp,0FFFFFFFC
 004CC36D    fstp       dword ptr [esp]
 004CC370    wait
 004CC371    mov        edx,esi
 004CC373    mov        eax,ebx
 004CC375    call       004CC3E4
>004CC37A    jmp        004CC3C0
 004CC37C    fild       qword ptr [ebp+8]
 004CC37F    add        esp,0FFFFFFF8
 004CC382    fstp       qword ptr [esp]
 004CC385    wait
 004CC386    mov        edx,esi
 004CC388    mov        eax,ebx
 004CC38A    call       004CC604
>004CC38F    jmp        004CC3C0
 004CC391    fild       qword ptr [ebp+8]
 004CC394    add        esp,0FFFFFFF4
 004CC397    fstp       tbyte ptr [esp]
 004CC39A    wait
 004CC39B    mov        edx,esi
 004CC39D    mov        eax,ebx
 004CC39F    call       004CC82C
>004CC3A4    jmp        004CC3C0
 004CC3A6    push       dword ptr [ebp+0C]
 004CC3A9    push       dword ptr [ebp+8]
 004CC3AC    lea        eax,[ebp-4]
 004CC3AF    call       IntToStr
 004CC3B4    mov        ecx,dword ptr [ebp-4]
 004CC3B7    mov        edx,esi
 004CC3B9    mov        eax,ebx
 004CC3BB    call       004CCBB0
 004CC3C0    xor        eax,eax
 004CC3C2    pop        edx
 004CC3C3    pop        ecx
 004CC3C4    pop        ecx
 004CC3C5    mov        dword ptr fs:[eax],edx
 004CC3C8    push       4CC3DD
 004CC3CD    lea        eax,[ebp-4]
 004CC3D0    call       @LStrClr
 004CC3D5    ret
<004CC3D6    jmp        @HandleFinally
<004CC3DB    jmp        004CC3CD
 004CC3DD    pop        esi
 004CC3DE    pop        ebx
 004CC3DF    pop        ecx
 004CC3E0    pop        ebp
 004CC3E1    ret        8
*}
//end;

//004CC3E4
//procedure sub_004CC3E4(?:TZRowAccessor; ?:dword; ?:?);
//begin
{*
 004CC3E4    push       ebp
 004CC3E5    mov        ebp,esp
 004CC3E7    push       0
 004CC3E9    push       ebx
 004CC3EA    push       esi
 004CC3EB    mov        esi,edx
 004CC3ED    mov        ebx,eax
 004CC3EF    xor        eax,eax
 004CC3F1    push       ebp
 004CC3F2    push       4CC5EF
 004CC3F7    push       dword ptr fs:[eax]
 004CC3FA    mov        dword ptr fs:[eax],esp
 004CC3FD    mov        cl,6
 004CC3FF    mov        edx,esi
 004CC401    mov        eax,ebx
 004CC403    call       004C85D8
 004CC408    mov        eax,esi
 004CC40A    sub        eax,1
>004CC40D    jno        004CC414
 004CC40F    call       @IntOver
 004CC414    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CC417    test       edx,edx
>004CC419    je         004CC420
 004CC41B    cmp        eax,dword ptr [edx-4]
>004CC41E    jb         004CC425
 004CC420    call       @BoundErr
 004CC425    movzx      edx,byte ptr [edx+eax]
 004CC429    cmp        edx,0A
>004CC42C    ja         004CC5D9
 004CC432    jmp        dword ptr [edx*4+4CC439]
 004CC432    dd         4CC5D9
 004CC432    dd         4CC465
 004CC432    dd         4CC482
 004CC432    dd         4CC4B9
 004CC432    dd         4CC4F2
 004CC432    dd         4CC518
 004CC432    dd         4CC530
 004CC432    dd         4CC591
 004CC432    dd         4CC5A6
 004CC432    dd         4CC5BB
 004CC432    dd         4CC5BB
 004CC465    fld        dword ptr [ebp+8]
 004CC468    fcomp      dword ptr ds:[4CC600]; 0:Single
 004CC46E    fnstsw     al
 004CC470    sahf
 004CC471    setne      cl
 004CC474    mov        edx,esi
 004CC476    mov        eax,ebx
 004CC478    call       004CBA88
>004CC47D    jmp        004CC5D9
 004CC482    fld        dword ptr [ebp+8]
 004CC485    call       @TRUNC
 004CC48A    add        eax,80
 004CC48F    adc        edx,0
 004CC492    cmp        edx,0
>004CC495    jne        004CC49C
 004CC497    cmp        eax,0FF
>004CC49C    jbe        004CC4A3
 004CC49E    call       @BoundErr
 004CC4A3    add        eax,0FFFFFF80
 004CC4A6    adc        edx,0FFFFFFFF
 004CC4A9    mov        ecx,eax
 004CC4AB    mov        edx,esi
 004CC4AD    mov        eax,ebx
 004CC4AF    call       004CBC70
>004CC4B4    jmp        004CC5D9
 004CC4B9    fld        dword ptr [ebp+8]
 004CC4BC    call       @TRUNC
 004CC4C1    add        eax,8000
 004CC4C6    adc        edx,0
 004CC4C9    cmp        edx,0
>004CC4CC    jne        004CC4D3
 004CC4CE    cmp        eax,0FFFF
>004CC4D3    jbe        004CC4DA
 004CC4D5    call       @BoundErr
 004CC4DA    add        eax,0FFFF8000
 004CC4DF    adc        edx,0FFFFFFFF
 004CC4E2    mov        ecx,eax
 004CC4E4    mov        edx,esi
 004CC4E6    mov        eax,ebx
 004CC4E8    call       004CBE2C
>004CC4ED    jmp        004CC5D9
 004CC4F2    fld        dword ptr [ebp+8]
 004CC4F5    call       @TRUNC
 004CC4FA    push       eax
 004CC4FB    sar        eax,1F
 004CC4FE    cmp        eax,edx
 004CC500    pop        eax
>004CC501    je         004CC508
 004CC503    call       @BoundErr
 004CC508    mov        ecx,eax
 004CC50A    mov        edx,esi
 004CC50C    mov        eax,ebx
 004CC50E    call       004CBFF8
>004CC513    jmp        004CC5D9
 004CC518    fld        dword ptr [ebp+8]
 004CC51B    call       @TRUNC
 004CC520    push       edx
 004CC521    push       eax
 004CC522    mov        edx,esi
 004CC524    mov        eax,ebx
 004CC526    call       004CC1D4
>004CC52B    jmp        004CC5D9
 004CC530    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CC533    test       edx,edx
>004CC535    je         004CC53C
 004CC537    cmp        eax,dword ptr [edx-4]
>004CC53A    jb         004CC541
 004CC53C    call       @BoundErr
 004CC541    mov        edx,dword ptr [edx+eax*4]
 004CC544    cmp        edx,7FFF
>004CC54A    jbe        004CC551
 004CC54C    call       @BoundErr
 004CC551    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CC554    mov        byte ptr [ecx+edx+6],0
 004CC559    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CC55C    test       edx,edx
>004CC55E    je         004CC565
 004CC560    cmp        eax,dword ptr [edx-4]
>004CC563    jb         004CC56A
 004CC565    call       @BoundErr
 004CC56A    mov        eax,dword ptr [edx+eax*4]
 004CC56D    add        eax,1
>004CC570    jno        004CC577
 004CC572    call       @IntOver
 004CC577    cmp        eax,7FFF
>004CC57C    jbe        004CC583
 004CC57E    call       @BoundErr
 004CC583    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CC586    lea        eax,[edx+eax+6]
 004CC58A    mov        edx,dword ptr [ebp+8]
 004CC58D    mov        dword ptr [eax],edx
>004CC58F    jmp        004CC5D9
 004CC591    fld        dword ptr [ebp+8]
 004CC594    add        esp,0FFFFFFF8
 004CC597    fstp       qword ptr [esp]
 004CC59A    wait
 004CC59B    mov        edx,esi
 004CC59D    mov        eax,ebx
 004CC59F    call       004CC604
>004CC5A4    jmp        004CC5D9
 004CC5A6    fld        dword ptr [ebp+8]
 004CC5A9    add        esp,0FFFFFFF4
 004CC5AC    fstp       tbyte ptr [esp]
 004CC5AF    wait
 004CC5B0    mov        edx,esi
 004CC5B2    mov        eax,ebx
 004CC5B4    call       004CC82C
>004CC5B9    jmp        004CC5D9
 004CC5BB    fld        dword ptr [ebp+8]
 004CC5BE    add        esp,0FFFFFFF4
 004CC5C1    fstp       tbyte ptr [esp]
 004CC5C4    wait
 004CC5C5    lea        eax,[ebp-4]
 004CC5C8    call       004BF500
 004CC5CD    mov        ecx,dword ptr [ebp-4]
 004CC5D0    mov        edx,esi
 004CC5D2    mov        eax,ebx
 004CC5D4    call       004CCBB0
 004CC5D9    xor        eax,eax
 004CC5DB    pop        edx
 004CC5DC    pop        ecx
 004CC5DD    pop        ecx
 004CC5DE    mov        dword ptr fs:[eax],edx
 004CC5E1    push       4CC5F6
 004CC5E6    lea        eax,[ebp-4]
 004CC5E9    call       @LStrClr
 004CC5EE    ret
<004CC5EF    jmp        @HandleFinally
<004CC5F4    jmp        004CC5E6
 004CC5F6    pop        esi
 004CC5F7    pop        ebx
 004CC5F8    pop        ecx
 004CC5F9    pop        ebp
 004CC5FA    ret        4
*}
//end;

//004CC604
//procedure sub_004CC604(?:TZRowAccessor; ?:dword; ?:?; ?:?);
//begin
{*
 004CC604    push       ebp
 004CC605    mov        ebp,esp
 004CC607    push       0
 004CC609    push       ebx
 004CC60A    push       esi
 004CC60B    mov        esi,edx
 004CC60D    mov        ebx,eax
 004CC60F    xor        eax,eax
 004CC611    push       ebp
 004CC612    push       4CC818
 004CC617    push       dword ptr fs:[eax]
 004CC61A    mov        dword ptr fs:[eax],esp
 004CC61D    mov        cl,7
 004CC61F    mov        edx,esi
 004CC621    mov        eax,ebx
 004CC623    call       004C85D8
 004CC628    mov        eax,esi
 004CC62A    sub        eax,1
>004CC62D    jno        004CC634
 004CC62F    call       @IntOver
 004CC634    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CC637    test       edx,edx
>004CC639    je         004CC640
 004CC63B    cmp        eax,dword ptr [edx-4]
>004CC63E    jb         004CC645
 004CC640    call       @BoundErr
 004CC645    movzx      edx,byte ptr [edx+eax]
 004CC649    cmp        edx,0A
>004CC64C    ja         004CC802
 004CC652    jmp        dword ptr [edx*4+4CC659]
 004CC652    dd         4CC802
 004CC652    dd         4CC685
 004CC652    dd         4CC6A2
 004CC652    dd         4CC6D9
 004CC652    dd         4CC712
 004CC652    dd         4CC738
 004CC652    dd         4CC750
 004CC652    dd         4CC768
 004CC652    dd         4CC7CF
 004CC652    dd         4CC7E4
 004CC652    dd         4CC7E4
 004CC685    fld        qword ptr [ebp+8]
 004CC688    fcomp      dword ptr ds:[4CC828]; 0:Single
 004CC68E    fnstsw     al
 004CC690    sahf
 004CC691    setne      cl
 004CC694    mov        edx,esi
 004CC696    mov        eax,ebx
 004CC698    call       004CBA88
>004CC69D    jmp        004CC802
 004CC6A2    fld        qword ptr [ebp+8]
 004CC6A5    call       @TRUNC
 004CC6AA    add        eax,80
 004CC6AF    adc        edx,0
 004CC6B2    cmp        edx,0
>004CC6B5    jne        004CC6BC
 004CC6B7    cmp        eax,0FF
>004CC6BC    jbe        004CC6C3
 004CC6BE    call       @BoundErr
 004CC6C3    add        eax,0FFFFFF80
 004CC6C6    adc        edx,0FFFFFFFF
 004CC6C9    mov        ecx,eax
 004CC6CB    mov        edx,esi
 004CC6CD    mov        eax,ebx
 004CC6CF    call       004CBC70
>004CC6D4    jmp        004CC802
 004CC6D9    fld        qword ptr [ebp+8]
 004CC6DC    call       @TRUNC
 004CC6E1    add        eax,8000
 004CC6E6    adc        edx,0
 004CC6E9    cmp        edx,0
>004CC6EC    jne        004CC6F3
 004CC6EE    cmp        eax,0FFFF
>004CC6F3    jbe        004CC6FA
 004CC6F5    call       @BoundErr
 004CC6FA    add        eax,0FFFF8000
 004CC6FF    adc        edx,0FFFFFFFF
 004CC702    mov        ecx,eax
 004CC704    mov        edx,esi
 004CC706    mov        eax,ebx
 004CC708    call       004CBE2C
>004CC70D    jmp        004CC802
 004CC712    fld        qword ptr [ebp+8]
 004CC715    call       @TRUNC
 004CC71A    push       eax
 004CC71B    sar        eax,1F
 004CC71E    cmp        eax,edx
 004CC720    pop        eax
>004CC721    je         004CC728
 004CC723    call       @BoundErr
 004CC728    mov        ecx,eax
 004CC72A    mov        edx,esi
 004CC72C    mov        eax,ebx
 004CC72E    call       004CBFF8
>004CC733    jmp        004CC802
 004CC738    fld        qword ptr [ebp+8]
 004CC73B    call       @TRUNC
 004CC740    push       edx
 004CC741    push       eax
 004CC742    mov        edx,esi
 004CC744    mov        eax,ebx
 004CC746    call       004CC1D4
>004CC74B    jmp        004CC802
 004CC750    fld        qword ptr [ebp+8]
 004CC753    add        esp,0FFFFFFFC
 004CC756    fstp       dword ptr [esp]
 004CC759    wait
 004CC75A    mov        edx,esi
 004CC75C    mov        eax,ebx
 004CC75E    call       004CC3E4
>004CC763    jmp        004CC802
 004CC768    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CC76B    test       edx,edx
>004CC76D    je         004CC774
 004CC76F    cmp        eax,dword ptr [edx-4]
>004CC772    jb         004CC779
 004CC774    call       @BoundErr
 004CC779    mov        edx,dword ptr [edx+eax*4]
 004CC77C    cmp        edx,7FFF
>004CC782    jbe        004CC789
 004CC784    call       @BoundErr
 004CC789    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CC78C    mov        byte ptr [ecx+edx+6],0
 004CC791    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CC794    test       edx,edx
>004CC796    je         004CC79D
 004CC798    cmp        eax,dword ptr [edx-4]
>004CC79B    jb         004CC7A2
 004CC79D    call       @BoundErr
 004CC7A2    mov        eax,dword ptr [edx+eax*4]
 004CC7A5    add        eax,1
>004CC7A8    jno        004CC7AF
 004CC7AA    call       @IntOver
 004CC7AF    cmp        eax,7FFF
>004CC7B4    jbe        004CC7BB
 004CC7B6    call       @BoundErr
 004CC7BB    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CC7BE    lea        eax,[edx+eax+6]
 004CC7C2    mov        edx,dword ptr [ebp+8]
 004CC7C5    mov        dword ptr [eax],edx
 004CC7C7    mov        edx,dword ptr [ebp+0C]
 004CC7CA    mov        dword ptr [eax+4],edx
>004CC7CD    jmp        004CC802
 004CC7CF    fld        qword ptr [ebp+8]
 004CC7D2    add        esp,0FFFFFFF4
 004CC7D5    fstp       tbyte ptr [esp]
 004CC7D8    wait
 004CC7D9    mov        edx,esi
 004CC7DB    mov        eax,ebx
 004CC7DD    call       004CC82C
>004CC7E2    jmp        004CC802
 004CC7E4    fld        qword ptr [ebp+8]
 004CC7E7    add        esp,0FFFFFFF4
 004CC7EA    fstp       tbyte ptr [esp]
 004CC7ED    wait
 004CC7EE    lea        eax,[ebp-4]
 004CC7F1    call       004BF500
 004CC7F6    mov        ecx,dword ptr [ebp-4]
 004CC7F9    mov        edx,esi
 004CC7FB    mov        eax,ebx
 004CC7FD    call       004CCBB0
 004CC802    xor        eax,eax
 004CC804    pop        edx
 004CC805    pop        ecx
 004CC806    pop        ecx
 004CC807    mov        dword ptr fs:[eax],edx
 004CC80A    push       4CC81F
 004CC80F    lea        eax,[ebp-4]
 004CC812    call       @LStrClr
 004CC817    ret
<004CC818    jmp        @HandleFinally
<004CC81D    jmp        004CC80F
 004CC81F    pop        esi
 004CC820    pop        ebx
 004CC821    pop        ecx
 004CC822    pop        ebp
 004CC823    ret        8
*}
//end;

//004CC82C
//procedure sub_004CC82C(?:TZRowAccessor; ?:dword; ?:Extended; ?:?; ?:?);
//begin
{*
 004CC82C    push       ebp
 004CC82D    mov        ebp,esp
 004CC82F    push       0
 004CC831    push       ebx
 004CC832    push       esi
 004CC833    mov        esi,edx
 004CC835    mov        ebx,eax
 004CC837    xor        eax,eax
 004CC839    push       ebp
 004CC83A    push       4CCA4C
 004CC83F    push       dword ptr fs:[eax]
 004CC842    mov        dword ptr fs:[eax],esp
 004CC845    mov        cl,8
 004CC847    mov        edx,esi
 004CC849    mov        eax,ebx
 004CC84B    call       004C85D8
 004CC850    mov        eax,esi
 004CC852    sub        eax,1
>004CC855    jno        004CC85C
 004CC857    call       @IntOver
 004CC85C    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CC85F    test       edx,edx
>004CC861    je         004CC868
 004CC863    cmp        eax,dword ptr [edx-4]
>004CC866    jb         004CC86D
 004CC868    call       @BoundErr
 004CC86D    movzx      edx,byte ptr [edx+eax]
 004CC871    cmp        edx,0A
>004CC874    ja         004CCA36
 004CC87A    jmp        dword ptr [edx*4+4CC881]
 004CC87A    dd         4CCA36
 004CC87A    dd         4CC8AD
 004CC87A    dd         4CC8CA
 004CC87A    dd         4CC901
 004CC87A    dd         4CC93A
 004CC87A    dd         4CC960
 004CC87A    dd         4CC978
 004CC87A    dd         4CC990
 004CC87A    dd         4CC9A8
 004CC87A    dd         4CCA17
 004CC87A    dd         4CCA17
 004CC8AD    fld        tbyte ptr [ebp+8]
 004CC8B0    fcomp      dword ptr ds:[4CCA5C]; 0:Single
 004CC8B6    fnstsw     al
 004CC8B8    sahf
 004CC8B9    setne      cl
 004CC8BC    mov        edx,esi
 004CC8BE    mov        eax,ebx
 004CC8C0    call       004CBA88
>004CC8C5    jmp        004CCA36
 004CC8CA    fld        tbyte ptr [ebp+8]
 004CC8CD    call       @TRUNC
 004CC8D2    add        eax,80
 004CC8D7    adc        edx,0
 004CC8DA    cmp        edx,0
>004CC8DD    jne        004CC8E4
 004CC8DF    cmp        eax,0FF
>004CC8E4    jbe        004CC8EB
 004CC8E6    call       @BoundErr
 004CC8EB    add        eax,0FFFFFF80
 004CC8EE    adc        edx,0FFFFFFFF
 004CC8F1    mov        ecx,eax
 004CC8F3    mov        edx,esi
 004CC8F5    mov        eax,ebx
 004CC8F7    call       004CBC70
>004CC8FC    jmp        004CCA36
 004CC901    fld        tbyte ptr [ebp+8]
 004CC904    call       @TRUNC
 004CC909    add        eax,8000
 004CC90E    adc        edx,0
 004CC911    cmp        edx,0
>004CC914    jne        004CC91B
 004CC916    cmp        eax,0FFFF
>004CC91B    jbe        004CC922
 004CC91D    call       @BoundErr
 004CC922    add        eax,0FFFF8000
 004CC927    adc        edx,0FFFFFFFF
 004CC92A    mov        ecx,eax
 004CC92C    mov        edx,esi
 004CC92E    mov        eax,ebx
 004CC930    call       004CBE2C
>004CC935    jmp        004CCA36
 004CC93A    fld        tbyte ptr [ebp+8]
 004CC93D    call       @TRUNC
 004CC942    push       eax
 004CC943    sar        eax,1F
 004CC946    cmp        eax,edx
 004CC948    pop        eax
>004CC949    je         004CC950
 004CC94B    call       @BoundErr
 004CC950    mov        ecx,eax
 004CC952    mov        edx,esi
 004CC954    mov        eax,ebx
 004CC956    call       004CBFF8
>004CC95B    jmp        004CCA36
 004CC960    fld        tbyte ptr [ebp+8]
 004CC963    call       @TRUNC
 004CC968    push       edx
 004CC969    push       eax
 004CC96A    mov        edx,esi
 004CC96C    mov        eax,ebx
 004CC96E    call       004CC1D4
>004CC973    jmp        004CCA36
 004CC978    fld        tbyte ptr [ebp+8]
 004CC97B    add        esp,0FFFFFFFC
 004CC97E    fstp       dword ptr [esp]
 004CC981    wait
 004CC982    mov        edx,esi
 004CC984    mov        eax,ebx
 004CC986    call       004CC3E4
>004CC98B    jmp        004CCA36
 004CC990    fld        tbyte ptr [ebp+8]
 004CC993    add        esp,0FFFFFFF8
 004CC996    fstp       qword ptr [esp]
 004CC999    wait
 004CC99A    mov        edx,esi
 004CC99C    mov        eax,ebx
 004CC99E    call       004CC604
>004CC9A3    jmp        004CCA36
 004CC9A8    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CC9AB    test       edx,edx
>004CC9AD    je         004CC9B4
 004CC9AF    cmp        eax,dword ptr [edx-4]
>004CC9B2    jb         004CC9B9
 004CC9B4    call       @BoundErr
 004CC9B9    mov        edx,dword ptr [edx+eax*4]
 004CC9BC    cmp        edx,7FFF
>004CC9C2    jbe        004CC9C9
 004CC9C4    call       @BoundErr
 004CC9C9    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CC9CC    mov        byte ptr [ecx+edx+6],0
 004CC9D1    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CC9D4    test       edx,edx
>004CC9D6    je         004CC9DD
 004CC9D8    cmp        eax,dword ptr [edx-4]
>004CC9DB    jb         004CC9E2
 004CC9DD    call       @BoundErr
 004CC9E2    mov        eax,dword ptr [edx+eax*4]
 004CC9E5    add        eax,1
>004CC9E8    jno        004CC9EF
 004CC9EA    call       @IntOver
 004CC9EF    cmp        eax,7FFF
>004CC9F4    jbe        004CC9FB
 004CC9F6    call       @BoundErr
 004CC9FB    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CC9FE    lea        eax,[edx+eax+6]
 004CCA02    mov        edx,dword ptr [ebp+8]
 004CCA05    mov        dword ptr [eax],edx
 004CCA07    mov        edx,dword ptr [ebp+0C]
 004CCA0A    mov        dword ptr [eax+4],edx
 004CCA0D    mov        dx,word ptr [ebp+10]
 004CCA11    mov        word ptr [eax+8],dx
>004CCA15    jmp        004CCA36
 004CCA17    mov        ax,word ptr [ebp+10]
 004CCA1B    push       eax
 004CCA1C    push       dword ptr [ebp+0C]
 004CCA1F    push       dword ptr [ebp+8]
 004CCA22    lea        eax,[ebp-4]
 004CCA25    call       004BF500
 004CCA2A    mov        ecx,dword ptr [ebp-4]
 004CCA2D    mov        edx,esi
 004CCA2F    mov        eax,ebx
 004CCA31    call       004CCBB0
 004CCA36    xor        eax,eax
 004CCA38    pop        edx
 004CCA39    pop        ecx
 004CCA3A    pop        ecx
 004CCA3B    mov        dword ptr fs:[eax],edx
 004CCA3E    push       4CCA53
 004CCA43    lea        eax,[ebp-4]
 004CCA46    call       @LStrClr
 004CCA4B    ret
<004CCA4C    jmp        @HandleFinally
<004CCA51    jmp        004CCA43
 004CCA53    pop        esi
 004CCA54    pop        ebx
 004CCA55    pop        ecx
 004CCA56    pop        ebp
 004CCA57    ret        0C
*}
//end;

//004CCA60
//procedure sub_004CCA60(?:TZRowAccessor; ?:?; ?:?);
//begin
{*
 004CCA60    push       ebp
 004CCA61    mov        ebp,esp
 004CCA63    add        esp,0FFFFFFF8
 004CCA66    push       ebx
 004CCA67    push       esi
 004CCA68    xor        ebx,ebx
 004CCA6A    mov        dword ptr [ebp-8],ebx
 004CCA6D    mov        dword ptr [ebp-4],ecx
 004CCA70    mov        esi,edx
 004CCA72    mov        ebx,eax
 004CCA74    xor        eax,eax
 004CCA76    push       ebp
 004CCA77    push       4CCBA2
 004CCA7C    push       dword ptr fs:[eax]
 004CCA7F    mov        dword ptr fs:[eax],esp
 004CCA82    mov        cl,9
 004CCA84    mov        edx,esi
 004CCA86    mov        eax,ebx
 004CCA88    call       004C85D8
 004CCA8D    mov        eax,esi
 004CCA8F    sub        eax,1
>004CCA92    jno        004CCA99
 004CCA94    call       @IntOver
 004CCA99    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CCA9C    test       edx,edx
>004CCA9E    je         004CCAA5
 004CCAA0    cmp        eax,dword ptr [edx-4]
>004CCAA3    jb         004CCAAA
 004CCAA5    call       @BoundErr
 004CCAAA    mov        dl,byte ptr [edx+eax]
 004CCAAD    sub        dl,9
>004CCAB0    jne        004CCB75
 004CCAB6    cmp        dword ptr [ebp-4],0
>004CCABA    je         004CCB4B
 004CCAC0    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CCAC3    test       edx,edx
>004CCAC5    je         004CCACC
 004CCAC7    cmp        eax,dword ptr [edx-4]
>004CCACA    jb         004CCAD1
 004CCACC    call       @BoundErr
 004CCAD1    mov        edx,dword ptr [edx+eax*4]
 004CCAD4    cmp        edx,7FFF
>004CCADA    jbe        004CCAE1
 004CCADC    call       @BoundErr
 004CCAE1    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CCAE4    mov        byte ptr [ecx+edx+6],0
 004CCAE9    mov        edx,dword ptr [ebx+1C]; TZRowAccessor.?f1C:.5
 004CCAEC    test       edx,edx
>004CCAEE    je         004CCAF5
 004CCAF0    cmp        eax,dword ptr [edx-4]
>004CCAF3    jb         004CCAFA
 004CCAF5    call       @BoundErr
 004CCAFA    mov        ecx,dword ptr [edx+eax*4]
 004CCAFD    sub        ecx,1
>004CCB00    jno        004CCB07
 004CCB02    call       @IntOver
 004CCB07    test       ecx,ecx
>004CCB09    jns        004CCB10
 004CCB0B    call       @BoundErr
 004CCB10    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CCB13    test       edx,edx
>004CCB15    je         004CCB1C
 004CCB17    cmp        eax,dword ptr [edx-4]
>004CCB1A    jb         004CCB21
 004CCB1C    call       @BoundErr
 004CCB21    mov        eax,dword ptr [edx+eax*4]
 004CCB24    add        eax,1
>004CCB27    jno        004CCB2E
 004CCB29    call       @IntOver
 004CCB2E    cmp        eax,7FFF
>004CCB33    jbe        004CCB3A
 004CCB35    call       @BoundErr
 004CCB3A    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CCB3D    lea        eax,[edx+eax+6]
 004CCB41    mov        edx,dword ptr [ebp-4]
 004CCB44    call       StrLCopy
>004CCB49    jmp        004CCB8C
 004CCB4B    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CCB4E    test       edx,edx
>004CCB50    je         004CCB57
 004CCB52    cmp        eax,dword ptr [edx-4]
>004CCB55    jb         004CCB5C
 004CCB57    call       @BoundErr
 004CCB5C    mov        eax,dword ptr [edx+eax*4]
 004CCB5F    cmp        eax,7FFF
>004CCB64    jbe        004CCB6B
 004CCB66    call       @BoundErr
 004CCB6B    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CCB6E    mov        byte ptr [edx+eax+6],1
>004CCB73    jmp        004CCB8C
 004CCB75    lea        eax,[ebp-8]
 004CCB78    mov        edx,dword ptr [ebp-4]
 004CCB7B    call       @LStrFromPChar
 004CCB80    mov        ecx,dword ptr [ebp-8]
 004CCB83    mov        edx,esi
 004CCB85    mov        eax,ebx
 004CCB87    call       004CCBB0
 004CCB8C    xor        eax,eax
 004CCB8E    pop        edx
 004CCB8F    pop        ecx
 004CCB90    pop        ecx
 004CCB91    mov        dword ptr fs:[eax],edx
 004CCB94    push       4CCBA9
 004CCB99    lea        eax,[ebp-8]
 004CCB9C    call       @LStrClr
 004CCBA1    ret
<004CCBA2    jmp        @HandleFinally
<004CCBA7    jmp        004CCB99
 004CCBA9    pop        esi
 004CCBAA    pop        ebx
 004CCBAB    pop        ecx
 004CCBAC    pop        ecx
 004CCBAD    pop        ebp
 004CCBAE    ret
*}
//end;

//004CCBB0
//procedure sub_004CCBB0(?:TZRowAccessor; ?:dword; ?:AnsiString);
//begin
{*
 004CCBB0    push       ebp
 004CCBB1    mov        ebp,esp
 004CCBB3    push       0
 004CCBB5    push       0
 004CCBB7    push       0
 004CCBB9    push       0
 004CCBBB    push       0
 004CCBBD    push       0
 004CCBBF    push       ebx
 004CCBC0    push       esi
 004CCBC1    mov        dword ptr [ebp-4],ecx
 004CCBC4    mov        esi,edx
 004CCBC6    mov        ebx,eax
 004CCBC8    mov        eax,dword ptr [ebp-4]
 004CCBCB    call       @LStrAddRef
 004CCBD0    xor        eax,eax
 004CCBD2    push       ebp
 004CCBD3    push       4CCF27
 004CCBD8    push       dword ptr fs:[eax]
 004CCBDB    mov        dword ptr fs:[eax],esp
 004CCBDE    mov        cl,9
 004CCBE0    mov        edx,esi
 004CCBE2    mov        eax,ebx
 004CCBE4    call       004C85D8
 004CCBE9    mov        byte ptr [ebp-9],0
 004CCBED    mov        eax,esi
 004CCBEF    sub        eax,1
>004CCBF2    jno        004CCBF9
 004CCBF4    call       @IntOver
 004CCBF9    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CCBFC    test       edx,edx
>004CCBFE    je         004CCC05
 004CCC00    cmp        eax,dword ptr [edx-4]
>004CCC03    jb         004CCC0A
 004CCC05    call       @BoundErr
 004CCC0A    movzx      edx,byte ptr [edx+eax]
 004CCC0E    cmp        edx,11
>004CCC11    ja         004CCEEE
 004CCC17    jmp        dword ptr [edx*4+4CCC1E]
 004CCC17    dd         4CCEEE
 004CCC17    dd         4CCC66
 004CCC17    dd         4CCCC1
 004CCC17    dd         4CCCF1
 004CCC17    dd         4CCD24
 004CCC17    dd         4CCD3E
 004CCC17    dd         4CCD59
 004CCC17    dd         4CCD7C
 004CCC17    dd         4CCD9F
 004CCC17    dd         4CCDC2
 004CCC17    dd         4CCE50
 004CCC17    dd         4CCE6C
 004CCC17    dd         4CCE85
 004CCC17    dd         4CCE9F
 004CCC17    dd         4CCEB9
 004CCC17    dd         4CCED3
 004CCC17    dd         4CCED3
 004CCC17    dd         4CCED3
 004CCC66    lea        edx,[ebp-8]
 004CCC69    mov        eax,dword ptr [ebp-4]
 004CCC6C    call       UpperCase
 004CCC71    mov        eax,dword ptr [ebp-8]
 004CCC74    mov        edx,4CCF3C; 'Y'
 004CCC79    call       @LStrCmp
>004CCC7E    je         004CCCB1
 004CCC80    mov        eax,dword ptr [ebp-8]
 004CCC83    mov        edx,4CCF48; 'T'
 004CCC88    call       @LStrCmp
>004CCC8D    je         004CCCB1
 004CCC8F    mov        eax,dword ptr [ebp-8]
 004CCC92    mov        edx,4CCF54; 'YES'
 004CCC97    call       @LStrCmp
>004CCC9C    je         004CCCB1
 004CCC9E    mov        eax,dword ptr [ebp-8]
 004CCCA1    mov        edx,4CCF60; 'TRUE'
 004CCCA6    call       @LStrCmp
>004CCCAB    je         004CCCB1
 004CCCAD    xor        ecx,ecx
>004CCCAF    jmp        004CCCB3
 004CCCB1    mov        cl,1
 004CCCB3    mov        edx,esi
 004CCCB5    mov        eax,ebx
 004CCCB7    call       004CBA88
>004CCCBC    jmp        004CCEEE
 004CCCC1    xor        edx,edx
 004CCCC3    mov        eax,dword ptr [ebp-4]
 004CCCC6    call       StrToIntDef
 004CCCCB    mov        ecx,eax
 004CCCCD    add        ecx,80
 004CCCD3    cmp        ecx,0FF
>004CCCD9    jbe        004CCCE0
 004CCCDB    call       @BoundErr
 004CCCE0    add        ecx,0FFFFFF80
 004CCCE3    mov        edx,esi
 004CCCE5    mov        eax,ebx
 004CCCE7    call       004CBC70
>004CCCEC    jmp        004CCEEE
 004CCCF1    xor        edx,edx
 004CCCF3    mov        eax,dword ptr [ebp-4]
 004CCCF6    call       StrToIntDef
 004CCCFB    mov        ecx,eax
 004CCCFD    add        ecx,8000
 004CCD03    cmp        ecx,0FFFF
>004CCD09    jbe        004CCD10
 004CCD0B    call       @BoundErr
 004CCD10    add        ecx,0FFFF8000
 004CCD16    mov        edx,esi
 004CCD18    mov        eax,ebx
 004CCD1A    call       004CBE2C
>004CCD1F    jmp        004CCEEE
 004CCD24    xor        edx,edx
 004CCD26    mov        eax,dword ptr [ebp-4]
 004CCD29    call       StrToIntDef
 004CCD2E    mov        ecx,eax
 004CCD30    mov        edx,esi
 004CCD32    mov        eax,ebx
 004CCD34    call       004CBFF8
>004CCD39    jmp        004CCEEE
 004CCD3E    xor        edx,edx
 004CCD40    mov        eax,dword ptr [ebp-4]
 004CCD43    call       StrToIntDef
 004CCD48    cdq
 004CCD49    push       edx
 004CCD4A    push       eax
 004CCD4B    mov        edx,esi
 004CCD4D    mov        eax,ebx
 004CCD4F    call       004CC1D4
>004CCD54    jmp        004CCEEE
 004CCD59    push       0
 004CCD5B    push       0
 004CCD5D    push       0
 004CCD5F    mov        eax,dword ptr [ebp-4]
 004CCD62    call       004BEE6C
 004CCD67    add        esp,0FFFFFFFC
 004CCD6A    fstp       dword ptr [esp]
 004CCD6D    wait
 004CCD6E    mov        edx,esi
 004CCD70    mov        eax,ebx
 004CCD72    call       004CC3E4
>004CCD77    jmp        004CCEEE
 004CCD7C    push       0
 004CCD7E    push       0
 004CCD80    push       0
 004CCD82    mov        eax,dword ptr [ebp-4]
 004CCD85    call       004BEE6C
 004CCD8A    add        esp,0FFFFFFF8
 004CCD8D    fstp       qword ptr [esp]
 004CCD90    wait
 004CCD91    mov        edx,esi
 004CCD93    mov        eax,ebx
 004CCD95    call       004CC604
>004CCD9A    jmp        004CCEEE
 004CCD9F    push       0
 004CCDA1    push       0
 004CCDA3    push       0
 004CCDA5    mov        eax,dword ptr [ebp-4]
 004CCDA8    call       004BEE6C
 004CCDAD    add        esp,0FFFFFFF4
 004CCDB0    fstp       tbyte ptr [esp]
 004CCDB3    wait
 004CCDB4    mov        edx,esi
 004CCDB6    mov        eax,ebx
 004CCDB8    call       004CC82C
>004CCDBD    jmp        004CCEEE
 004CCDC2    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CCDC5    test       edx,edx
>004CCDC7    je         004CCDCE
 004CCDC9    cmp        eax,dword ptr [edx-4]
>004CCDCC    jb         004CCDD3
 004CCDCE    call       @BoundErr
 004CCDD3    mov        edx,dword ptr [edx+eax*4]
 004CCDD6    cmp        edx,7FFF
>004CCDDC    jbe        004CCDE3
 004CCDDE    call       @BoundErr
 004CCDE3    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CCDE6    mov        byte ptr [ecx+edx+6],0
 004CCDEB    mov        edx,dword ptr [ebx+1C]; TZRowAccessor.?f1C:.5
 004CCDEE    test       edx,edx
>004CCDF0    je         004CCDF7
 004CCDF2    cmp        eax,dword ptr [edx-4]
>004CCDF5    jb         004CCDFC
 004CCDF7    call       @BoundErr
 004CCDFC    mov        ecx,dword ptr [edx+eax*4]
 004CCDFF    sub        ecx,1
>004CCE02    jno        004CCE09
 004CCE04    call       @IntOver
 004CCE09    test       ecx,ecx
>004CCE0B    jns        004CCE12
 004CCE0D    call       @BoundErr
 004CCE12    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CCE15    test       edx,edx
>004CCE17    je         004CCE1E
 004CCE19    cmp        eax,dword ptr [edx-4]
>004CCE1C    jb         004CCE23
 004CCE1E    call       @BoundErr
 004CCE23    mov        eax,dword ptr [edx+eax*4]
 004CCE26    add        eax,1
>004CCE29    jno        004CCE30
 004CCE2B    call       @IntOver
 004CCE30    cmp        eax,7FFF
>004CCE35    jbe        004CCE3C
 004CCE37    call       @BoundErr
 004CCE3C    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CCE3F    lea        eax,[edx+eax+6]
 004CCE43    mov        edx,dword ptr [ebp-4]
 004CCE46    call       StrPLCopy
>004CCE4B    jmp        004CCEEE
 004CCE50    lea        eax,[ebp-10]
 004CCE53    mov        edx,dword ptr [ebp-4]
 004CCE56    call       @WStrFromLStr
 004CCE5B    mov        ecx,dword ptr [ebp-10]
 004CCE5E    mov        edx,esi
 004CCE60    mov        eax,ebx
 004CCE62    call       004CCF68
>004CCE67    jmp        004CCEEE
 004CCE6C    lea        edx,[ebp-14]
 004CCE6F    mov        eax,dword ptr [ebp-4]
 004CCE72    call       004BF678
 004CCE77    mov        ecx,dword ptr [ebp-14]
 004CCE7A    mov        edx,esi
 004CCE7C    mov        eax,ebx
 004CCE7E    call       004CD104
>004CCE83    jmp        004CCEEE
 004CCE85    mov        eax,dword ptr [ebp-4]
 004CCE88    call       004BF8B0
 004CCE8D    add        esp,0FFFFFFF8
 004CCE90    fstp       qword ptr [esp]
 004CCE93    wait
 004CCE94    mov        edx,esi
 004CCE96    mov        eax,ebx
 004CCE98    call       004CD300
>004CCE9D    jmp        004CCEEE
 004CCE9F    mov        eax,dword ptr [ebp-4]
 004CCEA2    call       004BF8B0
 004CCEA7    add        esp,0FFFFFFF8
 004CCEAA    fstp       qword ptr [esp]
 004CCEAD    wait
 004CCEAE    mov        edx,esi
 004CCEB0    mov        eax,ebx
 004CCEB2    call       004CD450
>004CCEB7    jmp        004CCEEE
 004CCEB9    mov        eax,dword ptr [ebp-4]
 004CCEBC    call       004BF8B0
 004CCEC1    add        esp,0FFFFFFF8
 004CCEC4    fstp       qword ptr [esp]
 004CCEC7    wait
 004CCEC8    mov        edx,esi
 004CCECA    mov        eax,ebx
 004CCECC    call       004CD584
>004CCED1    jmp        004CCEEE
 004CCED3    lea        eax,[ebp-18]
 004CCED6    push       eax
 004CCED7    lea        ecx,[ebp-9]
 004CCEDA    mov        edx,esi
 004CCEDC    mov        eax,ebx
 004CCEDE    call       004CB5A4
 004CCEE3    mov        eax,dword ptr [ebp-18]
 004CCEE6    mov        edx,dword ptr [ebp-4]
 004CCEE9    mov        ecx,dword ptr [eax]
 004CCEEB    call       dword ptr [ecx+1C]
 004CCEEE    xor        eax,eax
 004CCEF0    pop        edx
 004CCEF1    pop        ecx
 004CCEF2    pop        ecx
 004CCEF3    mov        dword ptr fs:[eax],edx
 004CCEF6    push       4CCF2E
 004CCEFB    lea        eax,[ebp-18]
 004CCEFE    call       @IntfClear
 004CCF03    lea        eax,[ebp-14]
 004CCF06    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004CCF0C    call       @DynArrayClear
 004CCF11    lea        eax,[ebp-10]
 004CCF14    call       @WStrClr
 004CCF19    lea        eax,[ebp-8]
 004CCF1C    mov        edx,2
 004CCF21    call       @LStrArrayClr
 004CCF26    ret
<004CCF27    jmp        @HandleFinally
<004CCF2C    jmp        004CCEFB
 004CCF2E    pop        esi
 004CCF2F    pop        ebx
 004CCF30    mov        esp,ebp
 004CCF32    pop        ebp
 004CCF33    ret
*}
//end;

//004CCF68
//procedure sub_004CCF68(?:TZRowAccessor; ?:dword; ?:WideString);
//begin
{*
 004CCF68    push       ebp
 004CCF69    mov        ebp,esp
 004CCF6B    add        esp,0FFFFFFF8
 004CCF6E    push       ebx
 004CCF6F    push       esi
 004CCF70    push       edi
 004CCF71    xor        ebx,ebx
 004CCF73    mov        dword ptr [ebp-8],ebx
 004CCF76    mov        dword ptr [ebp-4],ecx
 004CCF79    mov        esi,edx
 004CCF7B    mov        ebx,eax
 004CCF7D    lea        eax,[ebp-4]
 004CCF80    call       @WStrAddRef
 004CCF85    xor        eax,eax
 004CCF87    push       ebp
 004CCF88    push       4CD0F4
 004CCF8D    push       dword ptr fs:[eax]
 004CCF90    mov        dword ptr fs:[eax],esp
 004CCF93    mov        cl,9
 004CCF95    mov        edx,esi
 004CCF97    mov        eax,ebx
 004CCF99    call       004C85D8
 004CCF9E    mov        edi,esi
 004CCFA0    sub        edi,1
>004CCFA3    jno        004CCFAA
 004CCFA5    call       @IntOver
 004CCFAA    mov        eax,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CCFAD    test       eax,eax
>004CCFAF    je         004CCFB6
 004CCFB1    cmp        edi,dword ptr [eax-4]
>004CCFB4    jb         004CCFBB
 004CCFB6    call       @BoundErr
 004CCFBB    mov        al,byte ptr [eax+edi]
 004CCFBE    sub        al,0A
>004CCFC0    jne        004CD0BF
 004CCFC6    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CCFC9    test       eax,eax
>004CCFCB    je         004CCFD2
 004CCFCD    cmp        edi,dword ptr [eax-4]
>004CCFD0    jb         004CCFD7
 004CCFD2    call       @BoundErr
 004CCFD7    mov        eax,dword ptr [eax+edi*4]
 004CCFDA    cmp        eax,7FFF
>004CCFDF    jbe        004CCFE6
 004CCFE1    call       @BoundErr
 004CCFE6    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CCFE9    mov        byte ptr [edx+eax+6],0
 004CCFEE    lea        eax,[ebp-4]
 004CCFF1    push       eax
 004CCFF2    mov        eax,dword ptr [ebx+1C]; TZRowAccessor.?f1C:.5
 004CCFF5    test       eax,eax
>004CCFF7    je         004CCFFE
 004CCFF9    cmp        edi,dword ptr [eax-4]
>004CCFFC    jb         004CD003
 004CCFFE    call       @BoundErr
 004CD003    mov        ecx,dword ptr [eax+edi*4]
 004CD006    sar        ecx,1
>004CD008    jns        004CD00D
 004CD00A    adc        ecx,0
 004CD00D    sub        ecx,1
>004CD010    jno        004CD017
 004CD012    call       @IntOver
 004CD017    mov        edx,1
 004CD01C    mov        eax,dword ptr [ebp-4]
 004CD01F    call       @WStrCopy
 004CD024    mov        eax,dword ptr [ebp-4]
 004CD027    call       @WStrLen
 004CD02C    test       eax,eax
>004CD02E    jle        004CD087
 004CD030    mov        eax,dword ptr [ebp-4]
 004CD033    call       @WStrLen
 004CD038    imul       ecx,eax,2
>004CD03B    jno        004CD042
 004CD03D    call       @IntOver
 004CD042    add        ecx,2
>004CD045    jno        004CD04C
 004CD047    call       @IntOver
 004CD04C    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CD04F    test       eax,eax
>004CD051    je         004CD058
 004CD053    cmp        edi,dword ptr [eax-4]
>004CD056    jb         004CD05D
 004CD058    call       @BoundErr
 004CD05D    mov        eax,dword ptr [eax+edi*4]
 004CD060    add        eax,1
>004CD063    jno        004CD06A
 004CD065    call       @IntOver
 004CD06A    cmp        eax,7FFF
>004CD06F    jbe        004CD076
 004CD071    call       @BoundErr
 004CD076    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD079    lea        edx,[edx+eax+6]
 004CD07D    mov        eax,dword ptr [ebp-4]
 004CD080    call       Move
>004CD085    jmp        004CD0D6
 004CD087    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CD08A    test       eax,eax
>004CD08C    je         004CD093
 004CD08E    cmp        edi,dword ptr [eax-4]
>004CD091    jb         004CD098
 004CD093    call       @BoundErr
 004CD098    mov        eax,dword ptr [eax+edi*4]
 004CD09B    add        eax,1
>004CD09E    jno        004CD0A5
 004CD0A0    call       @IntOver
 004CD0A5    cmp        eax,7FFF
>004CD0AA    jbe        004CD0B1
 004CD0AC    call       @BoundErr
 004CD0B1    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD0B4    lea        eax,[edx+eax+6]
 004CD0B8    mov        word ptr [eax],0
>004CD0BD    jmp        004CD0D6
 004CD0BF    lea        eax,[ebp-8]
 004CD0C2    mov        edx,dword ptr [ebp-4]
 004CD0C5    call       @LStrFromWStr
 004CD0CA    mov        ecx,dword ptr [ebp-8]
 004CD0CD    mov        edx,esi
 004CD0CF    mov        eax,ebx
 004CD0D1    call       004CCBB0
 004CD0D6    xor        eax,eax
 004CD0D8    pop        edx
 004CD0D9    pop        ecx
 004CD0DA    pop        ecx
 004CD0DB    mov        dword ptr fs:[eax],edx
 004CD0DE    push       4CD0FB
 004CD0E3    lea        eax,[ebp-8]
 004CD0E6    call       @LStrClr
 004CD0EB    lea        eax,[ebp-4]
 004CD0EE    call       @WStrClr
 004CD0F3    ret
<004CD0F4    jmp        @HandleFinally
<004CD0F9    jmp        004CD0E3
 004CD0FB    pop        edi
 004CD0FC    pop        esi
 004CD0FD    pop        ebx
 004CD0FE    pop        ecx
 004CD0FF    pop        ecx
 004CD100    pop        ebp
 004CD101    ret
*}
//end;

//004CD104
//procedure sub_004CD104(?:TZRowAccessor; ?:dword; ?:TByteDynArray);
//begin
{*
 004CD104    push       ebp
 004CD105    mov        ebp,esp
 004CD107    add        esp,0FFFFFFF0
 004CD10A    push       ebx
 004CD10B    push       esi
 004CD10C    push       edi
 004CD10D    xor        ebx,ebx
 004CD10F    mov        dword ptr [ebp-10],ebx
 004CD112    mov        dword ptr [ebp-4],ecx
 004CD115    mov        esi,edx
 004CD117    mov        ebx,eax
 004CD119    mov        eax,dword ptr [ebp-4]
 004CD11C    call       @DynArrayAddRef
 004CD121    xor        eax,eax
 004CD123    push       ebp
 004CD124    push       4CD2EF
 004CD129    push       dword ptr fs:[eax]
 004CD12C    mov        dword ptr fs:[eax],esp
 004CD12F    mov        cl,0B
 004CD131    mov        edx,esi
 004CD133    mov        eax,ebx
 004CD135    call       004C85D8
 004CD13A    cmp        dword ptr [ebp-4],0
>004CD13E    je         004CD2C2
 004CD144    mov        edi,esi
 004CD146    sub        edi,1
>004CD149    jno        004CD150
 004CD14B    call       @IntOver
 004CD150    mov        eax,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CD153    test       eax,eax
>004CD155    je         004CD15C
 004CD157    cmp        edi,dword ptr [eax-4]
>004CD15A    jb         004CD161
 004CD15C    call       @BoundErr
 004CD161    mov        al,byte ptr [eax+edi]
 004CD164    sub        al,0B
>004CD166    jne        004CD2A9
 004CD16C    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CD16F    test       eax,eax
>004CD171    je         004CD178
 004CD173    cmp        edi,dword ptr [eax-4]
>004CD176    jb         004CD17D
 004CD178    call       @BoundErr
 004CD17D    mov        eax,dword ptr [eax+edi*4]
 004CD180    cmp        eax,7FFF
>004CD185    jbe        004CD18C
 004CD187    call       @BoundErr
 004CD18C    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD18F    mov        byte ptr [edx+eax+6],0
 004CD194    mov        eax,dword ptr [ebp-4]
 004CD197    call       @DynArrayHigh
 004CD19C    add        eax,1
>004CD19F    jno        004CD1A6
 004CD1A1    call       @IntOver
 004CD1A6    mov        dword ptr [ebp-0C],eax
 004CD1A9    mov        eax,dword ptr [ebx+1C]; TZRowAccessor.?f1C:.5
 004CD1AC    test       eax,eax
>004CD1AE    je         004CD1B5
 004CD1B0    cmp        edi,dword ptr [eax-4]
>004CD1B3    jb         004CD1BA
 004CD1B5    call       @BoundErr
 004CD1BA    mov        eax,dword ptr [eax+edi*4]
 004CD1BD    sub        eax,2
>004CD1C0    jno        004CD1C7
 004CD1C2    call       @IntOver
 004CD1C7    mov        dword ptr [ebp-8],eax
 004CD1CA    lea        eax,[ebp-0C]
 004CD1CD    mov        edx,1
 004CD1D2    call       MinIntValue
 004CD1D7    add        eax,8000
 004CD1DC    cmp        eax,0FFFF
>004CD1E1    jbe        004CD1E8
 004CD1E3    call       @BoundErr
 004CD1E8    add        eax,0FFFF8000
 004CD1ED    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CD1F0    test       edx,edx
>004CD1F2    je         004CD1F9
 004CD1F4    cmp        edi,dword ptr [edx-4]
>004CD1F7    jb         004CD1FE
 004CD1F9    call       @BoundErr
 004CD1FE    mov        edx,dword ptr [edx+edi*4]
 004CD201    add        edx,1
>004CD204    jno        004CD20B
 004CD206    call       @IntOver
 004CD20B    cmp        edx,7FFF
>004CD211    jbe        004CD218
 004CD213    call       @BoundErr
 004CD218    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD21B    lea        edx,[ecx+edx+6]
 004CD21F    mov        word ptr [edx],ax
 004CD222    movsx      edx,ax
 004CD225    sub        edx,1
>004CD228    jno        004CD22F
 004CD22A    call       @IntOver
 004CD22F    test       edx,edx
>004CD231    jl         004CD2CB
 004CD237    inc        edx
 004CD238    xor        eax,eax
 004CD23A    mov        ecx,dword ptr [ebp-4]
 004CD23D    test       ecx,ecx
>004CD23F    je         004CD246
 004CD241    cmp        eax,dword ptr [ecx-4]
>004CD244    jb         004CD24B
 004CD246    call       @BoundErr
 004CD24B    mov        cl,byte ptr [ecx+eax]
 004CD24E    push       ecx
 004CD24F    mov        ecx,esi
 004CD251    sub        ecx,1
>004CD254    jno        004CD25B
 004CD256    call       @IntOver
 004CD25B    mov        edi,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CD25E    test       edi,edi
>004CD260    je         004CD267
 004CD262    cmp        ecx,dword ptr [edi-4]
>004CD265    jb         004CD26C
 004CD267    call       @BoundErr
 004CD26C    mov        ecx,dword ptr [edi+ecx*4]
 004CD26F    add        ecx,1
>004CD272    jno        004CD279
 004CD274    call       @IntOver
 004CD279    add        ecx,2
>004CD27C    jno        004CD283
 004CD27E    call       @IntOver
 004CD283    add        ecx,eax
>004CD285    jno        004CD28C
 004CD287    call       @IntOver
 004CD28C    cmp        ecx,7FFF
>004CD292    jbe        004CD299
 004CD294    call       @BoundErr
 004CD299    mov        edi,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD29C    lea        edi,[edi+ecx+6]
 004CD2A0    pop        ecx
 004CD2A1    mov        byte ptr [edi],cl
 004CD2A3    inc        eax
 004CD2A4    dec        edx
<004CD2A5    jne        004CD23A
>004CD2A7    jmp        004CD2CB
 004CD2A9    lea        edx,[ebp-10]
 004CD2AC    mov        eax,dword ptr [ebp-4]
 004CD2AF    call       004BF648
 004CD2B4    mov        ecx,dword ptr [ebp-10]
 004CD2B7    mov        edx,esi
 004CD2B9    mov        eax,ebx
 004CD2BB    call       004CCBB0
>004CD2C0    jmp        004CD2CB
 004CD2C2    mov        edx,esi
 004CD2C4    mov        eax,ebx
 004CD2C6    call       004CB9E4
 004CD2CB    xor        eax,eax
 004CD2CD    pop        edx
 004CD2CE    pop        ecx
 004CD2CF    pop        ecx
 004CD2D0    mov        dword ptr fs:[eax],edx
 004CD2D3    push       4CD2F6
 004CD2D8    lea        eax,[ebp-10]
 004CD2DB    call       @LStrClr
 004CD2E0    lea        eax,[ebp-4]
 004CD2E3    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004CD2E9    call       @DynArrayClear
 004CD2EE    ret
<004CD2EF    jmp        @HandleFinally
<004CD2F4    jmp        004CD2D8
 004CD2F6    pop        edi
 004CD2F7    pop        esi
 004CD2F8    pop        ebx
 004CD2F9    mov        esp,ebp
 004CD2FB    pop        ebp
 004CD2FC    ret
*}
//end;

//004CD300
//procedure sub_004CD300(?:TZRowAccessor; ?:dword; ?:?; ?:?);
//begin
{*
 004CD300    push       ebp
 004CD301    mov        ebp,esp
 004CD303    add        esp,0FFFFFFF4
 004CD306    push       ebx
 004CD307    push       esi
 004CD308    push       edi
 004CD309    xor        ecx,ecx
 004CD30B    mov        dword ptr [ebp-0C],ecx
 004CD30E    mov        esi,edx
 004CD310    mov        ebx,eax
 004CD312    xor        eax,eax
 004CD314    push       ebp
 004CD315    push       4CD429
 004CD31A    push       dword ptr fs:[eax]
 004CD31D    mov        dword ptr fs:[eax],esp
 004CD320    mov        cl,0E
 004CD322    mov        edx,esi
 004CD324    mov        eax,ebx
 004CD326    call       004C85D8
 004CD32B    mov        edi,esi
 004CD32D    sub        edi,1
>004CD330    jno        004CD337
 004CD332    call       @IntOver
 004CD337    mov        eax,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CD33A    test       eax,eax
>004CD33C    je         004CD343
 004CD33E    cmp        edi,dword ptr [eax-4]
>004CD341    jb         004CD348
 004CD343    call       @BoundErr
 004CD348    mov        al,byte ptr [eax+edi]
 004CD34B    add        al,0F7
 004CD34D    sub        al,2
>004CD34F    jb         004CD3F4
 004CD355    dec        al
>004CD357    je         004CD362
 004CD359    sub        al,2
>004CD35B    je         004CD3D1
>004CD35D    jmp        004CD413
 004CD362    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CD365    test       eax,eax
>004CD367    je         004CD36E
 004CD369    cmp        edi,dword ptr [eax-4]
>004CD36C    jb         004CD373
 004CD36E    call       @BoundErr
 004CD373    mov        eax,dword ptr [eax+edi*4]
 004CD376    cmp        eax,7FFF
>004CD37B    jbe        004CD382
 004CD37D    call       @BoundErr
 004CD382    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD385    mov        byte ptr [edx+eax+6],0
 004CD38A    fld        qword ptr [ebp+8]
 004CD38D    call       @TRUNC
 004CD392    mov        dword ptr [ebp-8],eax
 004CD395    mov        dword ptr [ebp-4],edx
 004CD398    fild       qword ptr [ebp-8]
 004CD39B    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CD39E    test       eax,eax
>004CD3A0    je         004CD3A7
 004CD3A2    cmp        edi,dword ptr [eax-4]
>004CD3A5    jb         004CD3AC
 004CD3A7    call       @BoundErr
 004CD3AC    mov        eax,dword ptr [eax+edi*4]
 004CD3AF    add        eax,1
>004CD3B2    jno        004CD3B9
 004CD3B4    call       @IntOver
 004CD3B9    cmp        eax,7FFF
>004CD3BE    jbe        004CD3C5
 004CD3C0    call       @BoundErr
 004CD3C5    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD3C8    lea        eax,[edx+eax+6]
 004CD3CC    fstp       qword ptr [eax]
 004CD3CE    wait
>004CD3CF    jmp        004CD413
 004CD3D1    fld        qword ptr [ebp+8]
 004CD3D4    call       @TRUNC
 004CD3D9    mov        dword ptr [ebp-8],eax
 004CD3DC    mov        dword ptr [ebp-4],edx
 004CD3DF    fild       qword ptr [ebp-8]
 004CD3E2    add        esp,0FFFFFFF8
 004CD3E5    fstp       qword ptr [esp]
 004CD3E8    wait
 004CD3E9    mov        edx,esi
 004CD3EB    mov        eax,ebx
 004CD3ED    call       004CD584
>004CD3F2    jmp        004CD413
 004CD3F4    push       dword ptr [ebp+0C]
 004CD3F7    push       dword ptr [ebp+8]
 004CD3FA    lea        edx,[ebp-0C]
 004CD3FD    mov        eax,4CD444; 'yyyy-mm-dd'
 004CD402    call       FormatDateTime
 004CD407    mov        ecx,dword ptr [ebp-0C]
 004CD40A    mov        edx,esi
 004CD40C    mov        eax,ebx
 004CD40E    call       004CCBB0
 004CD413    xor        eax,eax
 004CD415    pop        edx
 004CD416    pop        ecx
 004CD417    pop        ecx
 004CD418    mov        dword ptr fs:[eax],edx
 004CD41B    push       4CD430
 004CD420    lea        eax,[ebp-0C]
 004CD423    call       @LStrClr
 004CD428    ret
<004CD429    jmp        @HandleFinally
<004CD42E    jmp        004CD420
 004CD430    pop        edi
 004CD431    pop        esi
 004CD432    pop        ebx
 004CD433    mov        esp,ebp
 004CD435    pop        ebp
 004CD436    ret        8
*}
//end;

//004CD450
//procedure sub_004CD450(?:TZRowAccessor; ?:dword; ?:?; ?:?);
//begin
{*
 004CD450    push       ebp
 004CD451    mov        ebp,esp
 004CD453    push       0
 004CD455    push       ebx
 004CD456    push       esi
 004CD457    push       edi
 004CD458    mov        esi,edx
 004CD45A    mov        ebx,eax
 004CD45C    xor        eax,eax
 004CD45E    push       ebp
 004CD45F    push       4CD561
 004CD464    push       dword ptr fs:[eax]
 004CD467    mov        dword ptr fs:[eax],esp
 004CD46A    mov        cl,0D
 004CD46C    mov        edx,esi
 004CD46E    mov        eax,ebx
 004CD470    call       004C85D8
 004CD475    mov        edi,esi
 004CD477    sub        edi,1
>004CD47A    jno        004CD481
 004CD47C    call       @IntOver
 004CD481    mov        eax,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CD484    test       eax,eax
>004CD486    je         004CD48D
 004CD488    cmp        edi,dword ptr [eax-4]
>004CD48B    jb         004CD492
 004CD48D    call       @BoundErr
 004CD492    mov        al,byte ptr [eax+edi]
 004CD495    add        al,0F7
 004CD497    sub        al,2
>004CD499    jb         004CD52C
 004CD49F    sub        al,2
>004CD4A1    je         004CD4AC
 004CD4A3    dec        al
>004CD4A5    je         004CD512
>004CD4A7    jmp        004CD54B
 004CD4AC    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CD4AF    test       eax,eax
>004CD4B1    je         004CD4B8
 004CD4B3    cmp        edi,dword ptr [eax-4]
>004CD4B6    jb         004CD4BD
 004CD4B8    call       @BoundErr
 004CD4BD    mov        eax,dword ptr [eax+edi*4]
 004CD4C0    cmp        eax,7FFF
>004CD4C5    jbe        004CD4CC
 004CD4C7    call       @BoundErr
 004CD4CC    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD4CF    mov        byte ptr [edx+eax+6],0
 004CD4D4    fld        qword ptr [ebp+8]
 004CD4D7    call       @FRAC
 004CD4DC    mov        eax,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CD4DF    test       eax,eax
>004CD4E1    je         004CD4E8
 004CD4E3    cmp        edi,dword ptr [eax-4]
>004CD4E6    jb         004CD4ED
 004CD4E8    call       @BoundErr
 004CD4ED    mov        eax,dword ptr [eax+edi*4]
 004CD4F0    add        eax,1
>004CD4F3    jno        004CD4FA
 004CD4F5    call       @IntOver
 004CD4FA    cmp        eax,7FFF
>004CD4FF    jbe        004CD506
 004CD501    call       @BoundErr
 004CD506    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD509    lea        eax,[edx+eax+6]
 004CD50D    fstp       qword ptr [eax]
 004CD50F    wait
>004CD510    jmp        004CD54B
 004CD512    fld        qword ptr [ebp+8]
 004CD515    call       @FRAC
 004CD51A    add        esp,0FFFFFFF8
 004CD51D    fstp       qword ptr [esp]
 004CD520    wait
 004CD521    mov        edx,esi
 004CD523    mov        eax,ebx
 004CD525    call       004CD584
>004CD52A    jmp        004CD54B
 004CD52C    push       dword ptr [ebp+0C]
 004CD52F    push       dword ptr [ebp+8]
 004CD532    lea        edx,[ebp-4]
 004CD535    mov        eax,4CD578; 'hh:nn:ss'
 004CD53A    call       FormatDateTime
 004CD53F    mov        ecx,dword ptr [ebp-4]
 004CD542    mov        edx,esi
 004CD544    mov        eax,ebx
 004CD546    call       004CCBB0
 004CD54B    xor        eax,eax
 004CD54D    pop        edx
 004CD54E    pop        ecx
 004CD54F    pop        ecx
 004CD550    mov        dword ptr fs:[eax],edx
 004CD553    push       4CD568
 004CD558    lea        eax,[ebp-4]
 004CD55B    call       @LStrClr
 004CD560    ret
<004CD561    jmp        @HandleFinally
<004CD566    jmp        004CD558
 004CD568    pop        edi
 004CD569    pop        esi
 004CD56A    pop        ebx
 004CD56B    pop        ecx
 004CD56C    pop        ebp
 004CD56D    ret        8
*}
//end;

//004CD584
//procedure sub_004CD584(?:TZRowAccessor; ?:dword; ?:?; ?:?);
//begin
{*
 004CD584    push       ebp
 004CD585    mov        ebp,esp
 004CD587    push       0
 004CD589    push       ebx
 004CD58A    push       esi
 004CD58B    mov        esi,edx
 004CD58D    mov        ebx,eax
 004CD58F    xor        eax,eax
 004CD591    push       ebp
 004CD592    push       4CD6A9
 004CD597    push       dword ptr fs:[eax]
 004CD59A    mov        dword ptr fs:[eax],esp
 004CD59D    mov        cl,0E
 004CD59F    mov        edx,esi
 004CD5A1    mov        eax,ebx
 004CD5A3    call       004C85D8
 004CD5A8    mov        eax,esi
 004CD5AA    sub        eax,1
>004CD5AD    jno        004CD5B4
 004CD5AF    call       @IntOver
 004CD5B4    mov        edx,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CD5B7    test       edx,edx
>004CD5B9    je         004CD5C0
 004CD5BB    cmp        eax,dword ptr [edx-4]
>004CD5BE    jb         004CD5C5
 004CD5C0    call       @BoundErr
 004CD5C5    mov        dl,byte ptr [edx+eax]
 004CD5C8    add        dl,0F7
 004CD5CB    sub        dl,2
>004CD5CE    jb         004CD674
 004CD5D4    dec        dl
>004CD5D6    je         004CD5E5
 004CD5D8    dec        dl
>004CD5DA    je         004CD5F9
 004CD5DC    dec        dl
>004CD5DE    je         004CD60D
>004CD5E0    jmp        004CD693
 004CD5E5    push       dword ptr [ebp+0C]
 004CD5E8    push       dword ptr [ebp+8]
 004CD5EB    mov        edx,esi
 004CD5ED    mov        eax,ebx
 004CD5EF    call       004CD300
>004CD5F4    jmp        004CD693
 004CD5F9    push       dword ptr [ebp+0C]
 004CD5FC    push       dword ptr [ebp+8]
 004CD5FF    mov        edx,esi
 004CD601    mov        eax,ebx
 004CD603    call       004CD450
>004CD608    jmp        004CD693
 004CD60D    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CD610    test       edx,edx
>004CD612    je         004CD619
 004CD614    cmp        eax,dword ptr [edx-4]
>004CD617    jb         004CD61E
 004CD619    call       @BoundErr
 004CD61E    mov        edx,dword ptr [edx+eax*4]
 004CD621    cmp        edx,7FFF
>004CD627    jbe        004CD62E
 004CD629    call       @BoundErr
 004CD62E    mov        ecx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD631    mov        byte ptr [ecx+edx+6],0
 004CD636    mov        edx,dword ptr [ebx+20]; TZRowAccessor.?f20:.6
 004CD639    test       edx,edx
>004CD63B    je         004CD642
 004CD63D    cmp        eax,dword ptr [edx-4]
>004CD640    jb         004CD647
 004CD642    call       @BoundErr
 004CD647    mov        eax,dword ptr [edx+eax*4]
 004CD64A    add        eax,1
>004CD64D    jno        004CD654
 004CD64F    call       @IntOver
 004CD654    cmp        eax,7FFF
>004CD659    jbe        004CD660
 004CD65B    call       @BoundErr
 004CD660    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD663    lea        eax,[edx+eax+6]
 004CD667    mov        edx,dword ptr [ebp+8]
 004CD66A    mov        dword ptr [eax],edx
 004CD66C    mov        edx,dword ptr [ebp+0C]
 004CD66F    mov        dword ptr [eax+4],edx
>004CD672    jmp        004CD693
 004CD674    push       dword ptr [ebp+0C]
 004CD677    push       dword ptr [ebp+8]
 004CD67A    lea        edx,[ebp-4]
 004CD67D    mov        eax,4CD6C0; 'yyyy-mm-dd hh:nn:ss'
 004CD682    call       FormatDateTime
 004CD687    mov        ecx,dword ptr [ebp-4]
 004CD68A    mov        edx,esi
 004CD68C    mov        eax,ebx
 004CD68E    call       004CCBB0
 004CD693    xor        eax,eax
 004CD695    pop        edx
 004CD696    pop        ecx
 004CD697    pop        ecx
 004CD698    mov        dword ptr fs:[eax],edx
 004CD69B    push       4CD6B0
 004CD6A0    lea        eax,[ebp-4]
 004CD6A3    call       @LStrClr
 004CD6A8    ret
<004CD6A9    jmp        @HandleFinally
<004CD6AE    jmp        004CD6A0
 004CD6B0    pop        esi
 004CD6B1    pop        ebx
 004CD6B2    pop        ecx
 004CD6B3    pop        ebp
 004CD6B4    ret        8
*}
//end;

//004CD6D4
//procedure sub_004CD6D4(?:TZRowAccessor; ?:?; ?:?);
//begin
{*
 004CD6D4    push       ebp
 004CD6D5    mov        ebp,esp
 004CD6D7    add        esp,0FFFFFFF8
 004CD6DA    push       ebx
 004CD6DB    push       esi
 004CD6DC    push       edi
 004CD6DD    xor        ebx,ebx
 004CD6DF    mov        dword ptr [ebp-8],ebx
 004CD6E2    mov        edi,ecx
 004CD6E4    mov        esi,edx
 004CD6E6    mov        ebx,eax
 004CD6E8    xor        eax,eax
 004CD6EA    push       ebp
 004CD6EB    push       4CD735
 004CD6F0    push       dword ptr fs:[eax]
 004CD6F3    mov        dword ptr fs:[eax],esp
 004CD6F6    mov        cl,0F
 004CD6F8    mov        edx,esi
 004CD6FA    mov        eax,ebx
 004CD6FC    call       004C85D8
 004CD701    mov        byte ptr [ebp-1],0
 004CD705    lea        eax,[ebp-8]
 004CD708    push       eax
 004CD709    lea        ecx,[ebp-1]
 004CD70C    mov        edx,esi
 004CD70E    mov        eax,ebx
 004CD710    call       004CB5A4
 004CD715    mov        eax,dword ptr [ebp-8]
 004CD718    mov        edx,edi
 004CD71A    mov        ecx,dword ptr [eax]
 004CD71C    call       dword ptr [ecx+34]
 004CD71F    xor        eax,eax
 004CD721    pop        edx
 004CD722    pop        ecx
 004CD723    pop        ecx
 004CD724    mov        dword ptr fs:[eax],edx
 004CD727    push       4CD73C
 004CD72C    lea        eax,[ebp-8]
 004CD72F    call       @IntfClear
 004CD734    ret
<004CD735    jmp        @HandleFinally
<004CD73A    jmp        004CD72C
 004CD73C    pop        edi
 004CD73D    pop        esi
 004CD73E    pop        ebx
 004CD73F    pop        ecx
 004CD740    pop        ecx
 004CD741    pop        ebp
 004CD742    ret
*}
//end;

//004CD744
//procedure sub_004CD744(?:TZRowAccessor; ?:?; ?:?);
//begin
{*
 004CD744    push       ebp
 004CD745    mov        ebp,esp
 004CD747    add        esp,0FFFFFFF8
 004CD74A    push       ebx
 004CD74B    push       esi
 004CD74C    push       edi
 004CD74D    xor        ebx,ebx
 004CD74F    mov        dword ptr [ebp-8],ebx
 004CD752    mov        edi,ecx
 004CD754    mov        esi,edx
 004CD756    mov        ebx,eax
 004CD758    xor        eax,eax
 004CD75A    push       ebp
 004CD75B    push       4CD7A5
 004CD760    push       dword ptr fs:[eax]
 004CD763    mov        dword ptr fs:[eax],esp
 004CD766    mov        cl,11
 004CD768    mov        edx,esi
 004CD76A    mov        eax,ebx
 004CD76C    call       004C85D8
 004CD771    mov        byte ptr [ebp-1],0
 004CD775    lea        eax,[ebp-8]
 004CD778    push       eax
 004CD779    lea        ecx,[ebp-1]
 004CD77C    mov        edx,esi
 004CD77E    mov        eax,ebx
 004CD780    call       004CB5A4
 004CD785    mov        eax,dword ptr [ebp-8]
 004CD788    mov        edx,edi
 004CD78A    mov        ecx,dword ptr [eax]
 004CD78C    call       dword ptr [ecx+34]
 004CD78F    xor        eax,eax
 004CD791    pop        edx
 004CD792    pop        ecx
 004CD793    pop        ecx
 004CD794    mov        dword ptr fs:[eax],edx
 004CD797    push       4CD7AC
 004CD79C    lea        eax,[ebp-8]
 004CD79F    call       @IntfClear
 004CD7A4    ret
<004CD7A5    jmp        @HandleFinally
<004CD7AA    jmp        004CD79C
 004CD7AC    pop        edi
 004CD7AD    pop        esi
 004CD7AE    pop        ebx
 004CD7AF    pop        ecx
 004CD7B0    pop        ecx
 004CD7B1    pop        ebp
 004CD7B2    ret
*}
//end;

//004CD7B4
//procedure sub_004CD7B4(?:TZRowAccessor; ?:?; ?:?);
//begin
{*
 004CD7B4    push       ebp
 004CD7B5    mov        ebp,esp
 004CD7B7    add        esp,0FFFFFFF8
 004CD7BA    push       ebx
 004CD7BB    push       esi
 004CD7BC    push       edi
 004CD7BD    xor        ebx,ebx
 004CD7BF    mov        dword ptr [ebp-8],ebx
 004CD7C2    mov        edi,ecx
 004CD7C4    mov        esi,edx
 004CD7C6    mov        ebx,eax
 004CD7C8    xor        eax,eax
 004CD7CA    push       ebp
 004CD7CB    push       4CD815
 004CD7D0    push       dword ptr fs:[eax]
 004CD7D3    mov        dword ptr fs:[eax],esp
 004CD7D6    mov        byte ptr [ebp-1],0
 004CD7DA    mov        cl,10
 004CD7DC    mov        edx,esi
 004CD7DE    mov        eax,ebx
 004CD7E0    call       004C85D8
 004CD7E5    lea        eax,[ebp-8]
 004CD7E8    push       eax
 004CD7E9    lea        ecx,[ebp-1]
 004CD7EC    mov        edx,esi
 004CD7EE    mov        eax,ebx
 004CD7F0    call       004CB5A4
 004CD7F5    mov        eax,dword ptr [ebp-8]
 004CD7F8    mov        edx,edi
 004CD7FA    mov        ecx,dword ptr [eax]
 004CD7FC    call       dword ptr [ecx+34]
 004CD7FF    xor        eax,eax
 004CD801    pop        edx
 004CD802    pop        ecx
 004CD803    pop        ecx
 004CD804    mov        dword ptr fs:[eax],edx
 004CD807    push       4CD81C
 004CD80C    lea        eax,[ebp-8]
 004CD80F    call       @IntfClear
 004CD814    ret
<004CD815    jmp        @HandleFinally
<004CD81A    jmp        004CD80C
 004CD81C    pop        edi
 004CD81D    pop        esi
 004CD81E    pop        ebx
 004CD81F    pop        ecx
 004CD820    pop        ecx
 004CD821    pop        ebp
 004CD822    ret
*}
//end;

//004CD824
//procedure sub_004CD824(?:TZRowAccessor; ?:?; ?:IInterface);
//begin
{*
 004CD824    push       ebp
 004CD825    mov        ebp,esp
 004CD827    add        esp,0FFFFFFE0
 004CD82A    push       ebx
 004CD82B    push       esi
 004CD82C    push       edi
 004CD82D    xor        ebx,ebx
 004CD82F    mov        dword ptr [ebp-8],ebx
 004CD832    mov        dword ptr [ebp-1C],ebx
 004CD835    mov        dword ptr [ebp-20],ebx
 004CD838    mov        dword ptr [ebp-4],ecx
 004CD83B    mov        esi,edx
 004CD83D    mov        ebx,eax
 004CD83F    mov        eax,dword ptr [ebp-4]
 004CD842    call       @IntfAddRef
 004CD847    xor        eax,eax
 004CD849    push       ebp
 004CD84A    push       4CD923
 004CD84F    push       dword ptr fs:[eax]
 004CD852    mov        dword ptr fs:[eax],esp
 004CD855    mov        edx,esi
 004CD857    mov        eax,ebx
 004CD859    call       004C852C
 004CD85E    mov        edi,esi
 004CD860    sub        edi,1
>004CD863    jno        004CD86A
 004CD865    call       @IntOver
 004CD86A    mov        eax,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CD86D    test       eax,eax
>004CD86F    je         004CD876
 004CD871    cmp        edi,dword ptr [eax-4]
>004CD874    jb         004CD87B
 004CD876    call       @BoundErr
 004CD87B    mov        al,byte ptr [eax+edi]
 004CD87E    add        al,0F1
 004CD880    sub        al,3
>004CD882    jb         004CD8E8
 004CD884    lea        eax,[ebp-8]
 004CD887    push       eax
 004CD888    mov        dword ptr [ebp-18],esi
 004CD88B    mov        byte ptr [ebp-14],0
 004CD88F    mov        eax,dword ptr [ebx+18]; TZRowAccessor.?f18:.4
 004CD892    test       eax,eax
>004CD894    je         004CD89B
 004CD896    cmp        edi,dword ptr [eax-4]
>004CD899    jb         004CD8A0
 004CD89B    call       @BoundErr
 004CD8A0    mov        al,byte ptr [eax+edi]
 004CD8A3    lea        edx,[ebp-1C]
 004CD8A6    call       004D2CF0
 004CD8AB    mov        eax,dword ptr [ebp-1C]
 004CD8AE    mov        dword ptr [ebp-10],eax
 004CD8B1    mov        byte ptr [ebp-0C],0B
 004CD8B5    lea        eax,[ebp-18]
 004CD8B8    push       eax
 004CD8B9    lea        edx,[ebp-20]
 004CD8BC    mov        eax,[0061B858]; ^#122.sResString32:TResStringRec
 004CD8C1    call       LoadResString
 004CD8C6    mov        eax,dword ptr [ebp-20]
 004CD8C9    mov        ecx,1
 004CD8CE    pop        edx
 004CD8CF    call       Format
 004CD8D4    mov        ecx,dword ptr [ebp-8]
 004CD8D7    mov        dl,1
 004CD8D9    mov        eax,[004C6D20]; EZSQLException
 004CD8DE    call       EZSQLException.Create; EZSQLException.Create
 004CD8E3    call       @RaiseExcept
 004CD8E8    mov        eax,dword ptr [ebp-4]
 004CD8EB    push       eax
 004CD8EC    mov        ecx,esi
 004CD8EE    mov        edx,dword ptr [ebx+24]; TZRowAccessor.?f24:Pointer
 004CD8F1    mov        eax,ebx
 004CD8F3    call       004C88C0
 004CD8F8    xor        eax,eax
 004CD8FA    pop        edx
 004CD8FB    pop        ecx
 004CD8FC    pop        ecx
 004CD8FD    mov        dword ptr fs:[eax],edx
 004CD900    push       4CD92A
 004CD905    lea        eax,[ebp-20]
 004CD908    mov        edx,2
 004CD90D    call       @LStrArrayClr
 004CD912    lea        eax,[ebp-8]
 004CD915    call       @LStrClr
 004CD91A    lea        eax,[ebp-4]
 004CD91D    call       @IntfClear
 004CD922    ret
<004CD923    jmp        @HandleFinally
<004CD928    jmp        004CD905
 004CD92A    pop        edi
 004CD92B    pop        esi
 004CD92C    pop        ebx
 004CD92D    mov        esp,ebp
 004CD92F    pop        ebp
 004CD930    ret
*}
//end;

end.