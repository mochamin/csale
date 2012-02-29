{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDbcASAUtils;

interface

uses
  Classes, Windows, Graphics, SysUtils, ZPlainASADriver;

type
  EZASAConvertError = class(Exception)
  end;
  _DynArr_151_3 = array of ?;
  TZASASQLDA = class(TInterfacedObject)
  public
    fC:dword;//fC
    f10:IZASAPlainDriver;//f10
    f14:dword;//f14
    f18:String;//f18
    f1C:.3;//f1C
    destructor Destroy; virtual;
    //constructor Create(?:TZASASQLDA; _Dv__:Boolean; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//00550C74
//procedure sub_00550C74(?:TZASASQLDA; ?:AnsiString);
//begin
{*
 00550C74    push       ebp
 00550C75    mov        ebp,esp
 00550C77    add        esp,0FFFFFFE8
 00550C7A    push       ebx
 00550C7B    xor        ecx,ecx
 00550C7D    mov        dword ptr [ebp-0C],ecx
 00550C80    mov        dword ptr [ebp-10],ecx
 00550C83    mov        dword ptr [ebp-8],ecx
 00550C86    mov        dword ptr [ebp-4],edx
 00550C89    mov        ebx,eax
 00550C8B    mov        eax,dword ptr [ebp-4]
 00550C8E    call       @LStrAddRef
 00550C93    xor        eax,eax
 00550C95    push       ebp
 00550C96    push       550D1E
 00550C9B    push       dword ptr fs:[eax]
 00550C9E    mov        dword ptr fs:[eax],esp
 00550CA1    push       0
 00550CA3    push       0FF
 00550CA5    mov        eax,dword ptr [ebp-4]
 00550CA8    push       eax
 00550CA9    lea        edx,[ebp-8]
 00550CAC    mov        eax,dword ptr [ebx+10]; TZASASQLDA.?f10:IZASAPlainDriver
 00550CAF    mov        ecx,dword ptr [eax]
 00550CB1    call       dword ptr [ecx+0C]
 00550CB4    mov        ecx,dword ptr [ebp-8]
 00550CB7    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00550CBC    mov        eax,dword ptr [eax]
 00550CBE    mov        dl,4
 00550CC0    mov        ebx,dword ptr [eax]
 00550CC2    call       dword ptr [ebx+40]
 00550CC5    lea        eax,[ebp-0C]
 00550CC8    push       eax
 00550CC9    lea        edx,[ebp-10]
 00550CCC    mov        eax,[0061C5CC]; ^#122.sResString0:TResStringRec
 00550CD1    call       LoadResString
 00550CD6    mov        eax,dword ptr [ebp-10]
 00550CD9    push       eax
 00550CDA    mov        eax,dword ptr [ebp-4]
 00550CDD    mov        dword ptr [ebp-18],eax
 00550CE0    mov        byte ptr [ebp-14],0B
 00550CE4    lea        edx,[ebp-18]
 00550CE7    xor        ecx,ecx
 00550CE9    pop        eax
 00550CEA    call       Format
 00550CEF    mov        ecx,dword ptr [ebp-0C]
 00550CF2    mov        dl,1
 00550CF4    mov        eax,[004C6D20]; EZSQLException
 00550CF9    call       EZSQLException.Create; EZSQLException.Create
 00550CFE    call       @RaiseExcept
 00550D03    xor        eax,eax
 00550D05    pop        edx
 00550D06    pop        ecx
 00550D07    pop        ecx
 00550D08    mov        dword ptr fs:[eax],edx
 00550D0B    push       550D25
 00550D10    lea        eax,[ebp-10]
 00550D13    mov        edx,4
 00550D18    call       @LStrArrayClr
 00550D1D    ret
<00550D1E    jmp        @HandleFinally
<00550D23    jmp        00550D10
 00550D25    pop        ebx
 00550D26    mov        esp,ebp
 00550D28    pop        ebp
 00550D29    ret
*}
//end;

//00551028
//constructor TZASASQLDA.Create(?:TZASASQLDA; _Dv__:Boolean; ?:?; ?:?; ?:?);
//begin
{*
 00551028    push       ebp
 00551029    mov        ebp,esp
 0055102B    push       ecx
 0055102C    push       ebx
 0055102D    push       esi
 0055102E    test       dl,dl
>00551030    je         0055103A
 00551032    add        esp,0FFFFFFF0
 00551035    call       @ClassCreate
 0055103A    mov        dword ptr [ebp-4],ecx
 0055103D    mov        ebx,edx
 0055103F    mov        esi,eax
 00551041    mov        eax,dword ptr [ebp-4]
 00551044    call       @IntfAddRef
 00551049    mov        eax,dword ptr [ebp+0C]
 0055104C    call       @LStrAddRef
 00551051    xor        eax,eax
 00551053    push       ebp
 00551054    push       5510AD
 00551059    push       dword ptr fs:[eax]
 0055105C    mov        dword ptr fs:[eax],esp
 0055105F    lea        eax,[esi+10]; TZASASQLDA.?f10:IZASAPlainDriver
 00551062    mov        edx,dword ptr [ebp-4]
 00551065    call       @IntfCopy
 0055106A    mov        eax,dword ptr [ebp+10]
 0055106D    mov        dword ptr [esi+14],eax; TZASASQLDA.?f14:dword
 00551070    lea        eax,[esi+18]; TZASASQLDA.?f18:String
 00551073    mov        edx,dword ptr [ebp+0C]
 00551076    call       @LStrAsg
 0055107B    mov        dx,word ptr [ebp+8]
 0055107F    mov        eax,esi
 00551081    call       00551104
 00551086    xor        edx,edx
 00551088    mov        eax,esi
 0055108A    call       TObject.Create
 0055108F    xor        eax,eax
 00551091    pop        edx
 00551092    pop        ecx
 00551093    pop        ecx
 00551094    mov        dword ptr fs:[eax],edx
 00551097    push       5510B4
 0055109C    lea        eax,[ebp-4]
 0055109F    call       @IntfClear
 005510A4    lea        eax,[ebp+0C]
 005510A7    call       @LStrClr
 005510AC    ret
<005510AD    jmp        @HandleFinally
<005510B2    jmp        0055109C
 005510B4    mov        eax,esi
 005510B6    test       bl,bl
>005510B8    je         005510C9
 005510BA    call       @AfterConstruction
 005510BF    pop        dword ptr fs:[0]
 005510C6    add        esp,0C
 005510C9    mov        eax,esi
 005510CB    pop        esi
 005510CC    pop        ebx
 005510CD    pop        ecx
 005510CE    pop        ebp
 005510CF    ret        0C
*}
//end;

//005510D4
destructor TZASASQLDA.Destroy;
begin
{*
 005510D4    push       ebp
 005510D5    mov        ebp,esp
 005510D7    push       ebx
 005510D8    push       esi
 005510D9    call       @BeforeDestruction
 005510DE    mov        ebx,edx
 005510E0    mov        esi,eax
 005510E2    mov        eax,esi
 005510E4    call       005515C4
 005510E9    mov        edx,ebx
 005510EB    and        dl,0FC
 005510EE    mov        eax,esi
 005510F0    call       TObject.Destroy
 005510F5    test       bl,bl
>005510F7    jle        00551100
 005510F9    mov        eax,esi
 005510FB    call       @ClassDestroy
 00551100    pop        esi
 00551101    pop        ebx
 00551102    pop        ebp
 00551103    ret
*}
end;

//00551104
//procedure sub_00551104(?:TZASASQLDA; ?:?);
//begin
{*
 00551104    push       ebp
 00551105    mov        ebp,esp
 00551107    push       ebx
 00551108    push       esi
 00551109    push       edi
 0055110A    mov        edi,edx
 0055110C    mov        ebx,eax
 0055110E    mov        eax,ebx
 00551110    call       005515C4
 00551115    movzx      edx,di
 00551118    mov        eax,dword ptr [ebx+10]; TZASASQLDA.?f10:IZASAPlainDriver
 0055111B    mov        ecx,dword ptr [eax]
 0055111D    call       dword ptr [ecx+40]
 00551120    mov        esi,eax
 00551122    mov        dword ptr [ebx+0C],esi; TZASASQLDA.?fC:dword
 00551125    test       esi,esi
>00551127    jne        00551135
 00551129    mov        edx,551160; 'Not enough memory for SQLDA'
 0055112E    mov        eax,ebx
 00551130    call       00550C74
 00551135    mov        eax,dword ptr [ebx+0C]; TZASASQLDA.?fC:dword
 00551138    movzx      eax,word ptr [eax+0C]
 0055113C    push       eax
 0055113D    lea        eax,[ebx+1C]; TZASASQLDA.?f1C:.3
 00551140    mov        ecx,1
 00551145    mov        edx,dword ptr ds:[55092C]; _DynArr_151_3
 0055114B    call       @DynArraySetLength
 00551150    add        esp,4
 00551153    pop        edi
 00551154    pop        esi
 00551155    pop        ebx
 00551156    pop        ebp
 00551157    ret
*}
//end;

//005515C4
//procedure sub_005515C4(?:TZASASQLDA);
//begin
{*
 005515C4    push       ebp
 005515C5    mov        ebp,esp
 005515C7    push       ebx
 005515C8    push       esi
 005515C9    push       edi
 005515CA    mov        ebx,eax
 005515CC    mov        eax,dword ptr [ebx+0C]; TZASASQLDA.?fC:dword
 005515CF    test       eax,eax
>005515D1    je         00551630
 005515D3    movzx      edi,word ptr [eax+0C]
 005515D7    sub        edi,1
>005515DA    jno        005515E1
 005515DC    call       @IntOver
 005515E1    test       edi,edi
>005515E3    jl         00551620
 005515E5    inc        edi
 005515E6    xor        esi,esi
 005515E8    cmp        esi,7FFF
>005515EE    jbe        005515F5
 005515F0    call       @BoundErr
 005515F5    imul       eax,esi,0B
>005515F8    jno        005515FF
 005515FA    call       @IntOver
 005515FF    mov        edx,dword ptr [ebx+0C]; TZASASQLDA.?fC:dword
 00551602    mov        eax,dword ptr [edx+eax*4+14]
 00551606    test       eax,eax
>00551608    je         0055161C
 0055160A    cmp        esi,7FFF
>00551610    jbe        00551617
 00551612    call       @BoundErr
 00551617    call       @FreeMem
 0055161C    inc        esi
 0055161D    dec        edi
<0055161E    jne        005515E8
 00551620    mov        edx,dword ptr [ebx+0C]; TZASASQLDA.?fC:dword
 00551623    mov        eax,dword ptr [ebx+10]; TZASASQLDA.?f10:IZASAPlainDriver
 00551626    mov        ecx,dword ptr [eax]
 00551628    call       dword ptr [ecx+4C]
 0055162B    xor        eax,eax
 0055162D    mov        dword ptr [ebx+0C],eax; TZASASQLDA.?fC:dword
 00551630    lea        eax,[ebx+1C]; TZASASQLDA.?f1C:.3
 00551633    mov        edx,dword ptr ds:[55092C]; _DynArr_151_3
 00551639    call       @DynArrayClear
 0055163E    pop        edi
 0055163F    pop        esi
 00551640    pop        ebx
 00551641    pop        ebp
 00551642    ret
*}
//end;

//005564B4
//function sub_005564B4(?:?):?;
//begin
{*
 005564B4    movsx      eax,ax
 005564B7    cmp        eax,2
>005564BA    jge        00556503
 005564BC    add        eax,0B
 005564BF    cmp        eax,0C
>005564C2    ja         00556584
 005564C8    jmp        dword ptr [eax*4+5564CF]
 005564C8    dd         556578
 005564C8    dd         556575
 005564C8    dd         55655A
 005564C8    dd         55655A
 005564C8    dd         55655D
 005564C8    dd         556560
 005564C8    dd         556569
 005564C8    dd         556578
 005564C8    dd         55657B
 005564C8    dd         55657B
 005564C8    dd         556575
 005564C8    dd         556584
 005564C8    dd         55655A
 00556503    cmp        eax,0C
>00556506    jg         00556546
>00556508    je         0055655A
 0055650A    cmp        eax,0B
>0055650D    ja         00556584
 0055650F    jmp        dword ptr [eax*4+556516]
 0055650F    dd         556584
 0055650F    dd         556584
 0055650F    dd         55656F
 0055650F    dd         55656F
 0055650F    dd         556566
 0055650F    dd         556563
 0055650F    dd         55656C
 0055650F    dd         55656C
 0055650F    dd         55656C
 0055650F    dd         556584
 0055650F    dd         556584
 0055650F    dd         556572
 00556546    sub        eax,5B
>00556549    je         00556581
 0055654B    dec        eax
>0055654C    je         0055657E
 0055654E    dec        eax
>0055654F    je         00556572
 00556551    sub        eax,3FA
>00556556    je         00556578
>00556558    jmp        00556584
 0055655A    mov        al,9
 0055655C    ret
 0055655D    mov        al,1
 0055655F    ret
 00556560    mov        al,2
 00556562    ret
 00556563    mov        al,3
 00556565    ret
 00556566    mov        al,4
 00556568    ret
 00556569    mov        al,5
 0055656B    ret
 0055656C    mov        al,7
 0055656E    ret
 0055656F    mov        al,7
 00556571    ret
 00556572    mov        al,0E
 00556574    ret
 00556575    mov        al,0F
 00556577    ret
 00556578    mov        al,11
 0055657A    ret
 0055657B    mov        al,0B
 0055657D    ret
 0055657E    mov        al,0D
 00556580    ret
 00556581    mov        al,0C
 00556583    ret
 00556584    xor        eax,eax
 00556586    ret
*}
//end;

//00556588
//procedure sub_00556588(?:IZASAPlainDriver; ?:dword; ?:?; ?:?);
//begin
{*
 00556588    push       ebp
 00556589    mov        ebp,esp
 0055658B    add        esp,0FFFFFBE0
 00556591    push       ebx
 00556592    push       esi
 00556593    push       edi
 00556594    xor        ebx,ebx
 00556596    mov        dword ptr [ebp-414],ebx
 0055659C    mov        dword ptr [ebp-418],ebx
 005565A2    mov        dword ptr [ebp-410],ebx
 005565A8    mov        dword ptr [ebp-8],ebx
 005565AB    mov        ebx,ecx
 005565AD    mov        esi,edx
 005565AF    mov        dword ptr [ebp-4],eax
 005565B2    mov        eax,dword ptr [ebp-4]
 005565B5    call       @IntfAddRef
 005565BA    mov        eax,dword ptr [ebp+8]
 005565BD    call       @LStrAddRef
 005565C2    xor        eax,eax
 005565C4    push       ebp
 005565C5    push       5566B4
 005565CA    push       dword ptr fs:[eax]
 005565CD    mov        dword ptr fs:[eax],esp
 005565D0    cmp        dword ptr [esi+0C],0
>005565D4    jge        0055667E
 005565DA    push       401
 005565DF    lea        ecx,[ebp-409]
 005565E5    mov        edx,esi
 005565E7    mov        eax,dword ptr [ebp-4]
 005565EA    mov        edi,dword ptr [eax]
 005565EC    call       dword ptr [edi+18]
 005565EF    mov        edx,eax
 005565F1    lea        eax,[ebp-8]
 005565F4    call       @LStrFromPChar
 005565F9    mov        eax,dword ptr [ebp+8]
 005565FC    push       eax
 005565FD    mov        eax,dword ptr [esi+0C]
 00556600    push       eax
 00556601    mov        eax,dword ptr [ebp-8]
 00556604    push       eax
 00556605    lea        edx,[ebp-410]
 0055660B    mov        eax,dword ptr [ebp-4]
 0055660E    mov        ecx,dword ptr [eax]
 00556610    call       dword ptr [ecx+0C]
 00556613    mov        ecx,dword ptr [ebp-410]
 00556619    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0055661E    mov        eax,dword ptr [eax]
 00556620    mov        edx,ebx
 00556622    mov        ebx,dword ptr [eax]
 00556624    call       dword ptr [ebx+40]
 00556627    lea        eax,[ebp-414]
 0055662D    push       eax
 0055662E    lea        edx,[ebp-418]
 00556634    mov        eax,[0061C5CC]; ^#122.sResString0:TResStringRec
 00556639    call       LoadResString
 0055663E    mov        eax,dword ptr [ebp-418]
 00556644    push       eax
 00556645    mov        eax,dword ptr [ebp-8]
 00556648    mov        dword ptr [ebp-420],eax
 0055664E    mov        byte ptr [ebp-41C],0B
 00556655    lea        edx,[ebp-420]
 0055665B    xor        ecx,ecx
 0055665D    pop        eax
 0055665E    call       Format
 00556663    mov        eax,dword ptr [ebp-414]
 00556669    push       eax
 0055666A    mov        ecx,dword ptr [esi+0C]
 0055666D    mov        dl,1
 0055666F    mov        eax,[004C6D20]; EZSQLException
 00556674    call       EZSQLException.Create; EZSQLException.Create
 00556679    call       @RaiseExcept
 0055667E    xor        eax,eax
 00556680    pop        edx
 00556681    pop        ecx
 00556682    pop        ecx
 00556683    mov        dword ptr fs:[eax],edx
 00556686    push       5566BB
 0055668B    lea        eax,[ebp-418]
 00556691    mov        edx,3
 00556696    call       @LStrArrayClr
 0055669B    lea        eax,[ebp-8]
 0055669E    call       @LStrClr
 005566A3    lea        eax,[ebp-4]
 005566A6    call       @IntfClear
 005566AB    lea        eax,[ebp+8]
 005566AE    call       @LStrClr
 005566B3    ret
<005566B4    jmp        @HandleFinally
<005566B9    jmp        0055668B
 005566BB    pop        edi
 005566BC    pop        esi
 005566BD    pop        ebx
 005566BE    mov        esp,ebp
 005566C0    pop        ebp
 005566C1    ret        4
*}
//end;

//005566C4
//procedure sub_005566C4(?:String; ?:TZAbstractStatement; ?:TZASAResultSet; ?:?);
//begin
{*
 005566C4    push       ebp
 005566C5    mov        ebp,esp
 005566C7    add        esp,0FFFFFFF0
 005566CA    push       ebx
 005566CB    push       esi
 005566CC    xor        ebx,ebx
 005566CE    mov        dword ptr [ebp-10],ebx
 005566D1    mov        dword ptr [ebp-0C],ecx
 005566D4    mov        dword ptr [ebp-8],edx
 005566D7    mov        dword ptr [ebp-4],eax
 005566DA    mov        esi,dword ptr [ebp+8]
 005566DD    mov        eax,dword ptr [ebp-4]
 005566E0    call       @LStrAddRef
 005566E5    mov        eax,dword ptr [ebp-8]
 005566E8    call       @IntfAddRef
 005566ED    mov        eax,dword ptr [ebp-0C]
 005566F0    call       @IntfAddRef
 005566F5    xor        eax,eax
 005566F7    push       ebp
 005566F8    push       5567BE
 005566FD    push       dword ptr fs:[eax]
 00556700    mov        dword ptr fs:[eax],esp
 00556703    mov        eax,dword ptr [ebp-8]
 00556706    mov        edx,dword ptr [eax]
 00556708    call       dword ptr [edx+60]; TZAbstractStatement.sub_004DFF7C
 0055670B    test       al,al
>0055670D    jne        0055671B
 0055670F    mov        eax,dword ptr [ebp-8]
 00556712    mov        edx,dword ptr [eax]
 00556714    call       dword ptr [edx+68]; TZAbstractStatement.sub_004DFFA0
 00556717    test       al,al
>00556719    je         00556786
 0055671B    mov        eax,dword ptr [ebp-4]
 0055671E    push       eax
 0055671F    push       0
 00556721    mov        ecx,dword ptr [ebp-0C]
 00556724    mov        dl,1
 00556726    mov        eax,[004D060C]; TZCachedResultSet
 0055672B    call       TZCachedResultSet.Create; TZCachedResultSet.Create
 00556730    mov        ebx,eax
 00556732    lea        edx,[ebp-10]
 00556735    mov        eax,dword ptr [ebp-0C]
 00556738    mov        ecx,dword ptr [eax]
 0055673A    call       dword ptr [ecx+0CC]; TZASAResultSet.sub_004D501C
 00556740    mov        eax,dword ptr [ebp-10]
 00556743    push       eax
 00556744    mov        ecx,dword ptr [ebp-8]
 00556747    mov        dl,1
 00556749    mov        eax,[00560B38]; TZASACachedResolver
 0055674E    call       TZGenericCachedResolver.Create; TZASACachedResolver.Create
 00556753    mov        edx,eax
 00556755    test       edx,edx
>00556757    je         0055675C
 00556759    sub        edx,0FFFFFFD4
 0055675C    mov        eax,ebx
 0055675E    call       004D0BDC
 00556763    mov        eax,dword ptr [ebp-8]
 00556766    mov        edx,dword ptr [eax]
 00556768    call       dword ptr [edx+60]; TZAbstractStatement.sub_004DFF7C
 0055676B    mov        edx,eax
 0055676D    mov        eax,ebx
 0055676F    call       004D4578
 00556774    mov        eax,esi
 00556776    mov        edx,ebx
 00556778    test       edx,edx
>0055677A    je         0055677F
 0055677C    sub        edx,0FFFFFFC8
 0055677F    call       @IntfCopy
>00556784    jmp        00556790
 00556786    mov        eax,esi
 00556788    mov        edx,dword ptr [ebp-0C]
 0055678B    call       @IntfCopy
 00556790    xor        eax,eax
 00556792    pop        edx
 00556793    pop        ecx
 00556794    pop        ecx
 00556795    mov        dword ptr fs:[eax],edx
 00556798    push       5567C5
 0055679D    lea        eax,[ebp-10]
 005567A0    call       @IntfClear
 005567A5    lea        eax,[ebp-0C]
 005567A8    call       @IntfClear
 005567AD    lea        eax,[ebp-8]
 005567B0    call       @IntfClear
 005567B5    lea        eax,[ebp-4]
 005567B8    call       @LStrClr
 005567BD    ret
<005567BE    jmp        @HandleFinally
<005567C3    jmp        0055679D
 005567C5    pop        esi
 005567C6    pop        ebx
 005567C7    mov        esp,ebp
 005567C9    pop        ebp
 005567CA    ret        4
*}
//end;

//005567D0
//procedure sub_005567D0(?:IZASAConnection; ?:IInterface; ?:AnsiString; ?:?);
//begin
{*
 005567D0    push       ebp
 005567D1    mov        ebp,esp
 005567D3    push       0
 005567D5    push       0
 005567D7    push       0
 005567D9    push       0
 005567DB    push       0
 005567DD    push       0
 005567DF    push       0
 005567E1    push       0
 005567E3    push       ebx
 005567E4    push       esi
 005567E5    mov        dword ptr [ebp-0C],ecx
 005567E8    mov        dword ptr [ebp-8],edx
 005567EB    mov        dword ptr [ebp-4],eax
 005567EE    mov        eax,dword ptr [ebp-4]
 005567F1    call       @IntfAddRef
 005567F6    mov        eax,dword ptr [ebp-8]
 005567F9    call       @IntfAddRef
 005567FE    mov        eax,dword ptr [ebp-0C]
 00556801    call       @LStrAddRef
 00556806    mov        eax,dword ptr [ebp+8]
 00556809    call       @LStrAddRef
 0055680E    xor        eax,eax
 00556810    push       ebp
 00556811    push       5569B3
 00556816    push       dword ptr fs:[eax]
 00556819    mov        dword ptr fs:[eax],esp
 0055681C    mov        dx,14
 00556820    mov        eax,dword ptr [ebp-8]
 00556823    mov        ecx,dword ptr [eax]
 00556825    call       dword ptr [ecx+0C]
 00556828    mov        eax,dword ptr [ebp-8]
 0055682B    mov        edx,dword ptr [eax]
 0055682D    call       dword ptr [edx+18]
 00556830    push       eax
 00556831    push       1
 00556833    lea        edx,[ebp-10]
 00556836    mov        eax,dword ptr [ebp-4]
 00556839    mov        ecx,dword ptr [eax]
 0055683B    call       dword ptr [ecx+98]
 00556841    mov        eax,dword ptr [ebp-10]
 00556844    push       eax
 00556845    mov        eax,dword ptr [ebp-4]
 00556848    mov        edx,dword ptr [eax]
 0055684A    call       dword ptr [edx+94]
 00556850    push       eax
 00556851    mov        eax,dword ptr [ebp-0C]
 00556854    call       @LStrToPChar
 00556859    mov        ebx,eax
 0055685B    mov        ecx,ebx
 0055685D    pop        edx
 0055685E    pop        eax
 0055685F    mov        esi,dword ptr [eax]
 00556861    call       dword ptr [esi+64]
 00556864    mov        eax,dword ptr [ebp+8]
 00556867    push       eax
 00556868    lea        edx,[ebp-14]
 0055686B    mov        eax,dword ptr [ebp-4]
 0055686E    mov        ecx,dword ptr [eax]
 00556870    call       dword ptr [ecx+98]
 00556876    mov        eax,dword ptr [ebp-14]
 00556879    push       eax
 0055687A    mov        eax,dword ptr [ebp-4]
 0055687D    mov        edx,dword ptr [eax]
 0055687F    call       dword ptr [edx+94]
 00556885    mov        edx,eax
 00556887    mov        cl,3
 00556889    pop        eax
 0055688A    call       00556588
 0055688F    mov        eax,dword ptr [ebp-8]
 00556892    mov        edx,dword ptr [eax]
 00556894    call       dword ptr [edx+18]
 00556897    cmp        word ptr [eax+0E],0
>0055689C    ja         005568C4
 0055689E    lea        edx,[ebp-18]
 005568A1    mov        eax,[0061B544]; ^#122.sResString28:TResStringRec
 005568A6    call       LoadResString
 005568AB    mov        ecx,dword ptr [ebp-18]
 005568AE    mov        dl,1
 005568B0    mov        eax,[004C6D20]; EZSQLException
 005568B5    call       EZSQLException.Create; EZSQLException.Create
 005568BA    call       @RaiseExcept
>005568BF    jmp        0055694F
 005568C4    mov        eax,dword ptr [ebp-8]
 005568C7    mov        edx,dword ptr [eax]
 005568C9    call       dword ptr [edx+18]
 005568CC    mov        si,word ptr [eax+0E]
 005568D0    mov        eax,dword ptr [ebp-8]
 005568D3    mov        edx,dword ptr [eax]
 005568D5    call       dword ptr [edx+18]
 005568D8    cmp        si,word ptr [eax+0C]
>005568DC    jbe        0055694F
 005568DE    mov        eax,dword ptr [ebp-8]
 005568E1    mov        edx,dword ptr [eax]
 005568E3    call       dword ptr [edx+18]
 005568E6    mov        dx,word ptr [eax+0E]
 005568EA    mov        eax,dword ptr [ebp-8]
 005568ED    mov        ecx,dword ptr [eax]
 005568EF    call       dword ptr [ecx+0C]
 005568F2    mov        eax,dword ptr [ebp-8]
 005568F5    mov        edx,dword ptr [eax]
 005568F7    call       dword ptr [edx+18]
 005568FA    push       eax
 005568FB    push       1
 005568FD    lea        edx,[ebp-1C]
 00556900    mov        eax,dword ptr [ebp-4]
 00556903    mov        ecx,dword ptr [eax]
 00556905    call       dword ptr [ecx+98]
 0055690B    mov        eax,dword ptr [ebp-1C]
 0055690E    push       eax
 0055690F    mov        eax,dword ptr [ebp-4]
 00556912    mov        edx,dword ptr [eax]
 00556914    call       dword ptr [edx+94]
 0055691A    push       eax
 0055691B    mov        ecx,ebx
 0055691D    pop        edx
 0055691E    pop        eax
 0055691F    mov        ebx,dword ptr [eax]
 00556921    call       dword ptr [ebx+64]
 00556924    mov        eax,dword ptr [ebp+8]
 00556927    push       eax
 00556928    lea        edx,[ebp-20]
 0055692B    mov        eax,dword ptr [ebp-4]
 0055692E    mov        ecx,dword ptr [eax]
 00556930    call       dword ptr [ecx+98]
 00556936    mov        eax,dword ptr [ebp-20]
 00556939    push       eax
 0055693A    mov        eax,dword ptr [ebp-4]
 0055693D    mov        edx,dword ptr [eax]
 0055693F    call       dword ptr [edx+94]
 00556945    mov        edx,eax
 00556947    mov        cl,3
 00556949    pop        eax
 0055694A    call       00556588
 0055694F    mov        eax,dword ptr [ebp-8]
 00556952    mov        edx,dword ptr [eax]
 00556954    call       dword ptr [edx+10]
 00556957    xor        eax,eax
 00556959    pop        edx
 0055695A    pop        ecx
 0055695B    pop        ecx
 0055695C    mov        dword ptr fs:[eax],edx
 0055695F    push       5569BA
 00556964    lea        eax,[ebp-20]
 00556967    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055696D    mov        ecx,2
 00556972    call       @FinalizeArray
 00556977    lea        eax,[ebp-18]
 0055697A    call       @LStrClr
 0055697F    lea        eax,[ebp-14]
 00556982    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 00556988    mov        ecx,2
 0055698D    call       @FinalizeArray
 00556992    lea        eax,[ebp-0C]
 00556995    call       @LStrClr
 0055699A    lea        eax,[ebp-8]
 0055699D    call       @IntfClear
 005569A2    lea        eax,[ebp-4]
 005569A5    call       @IntfClear
 005569AA    lea        eax,[ebp+8]
 005569AD    call       @LStrClr
 005569B2    ret
<005569B3    jmp        @HandleFinally
<005569B8    jmp        00556964
 005569BA    pop        esi
 005569BB    pop        ebx
 005569BC    mov        esp,ebp
 005569BE    pop        ebp
 005569BF    ret        4
*}
//end;

//005569C4
//procedure sub_005569C4(?:IZASAConnection; ?:IZASASQLDA; ?:IZASASQLDA; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005569C4    push       ebp
 005569C5    mov        ebp,esp
 005569C7    push       ecx
 005569C8    mov        ecx,7
 005569CD    push       0
 005569CF    push       0
 005569D1    dec        ecx
<005569D2    jne        005569CD
 005569D4    push       ecx
 005569D5    xchg       ecx,dword ptr [ebp-4]
 005569D8    push       ebx
 005569D9    push       esi
 005569DA    push       edi
 005569DB    mov        dword ptr [ebp-0C],ecx
 005569DE    mov        dword ptr [ebp-8],edx
 005569E1    mov        dword ptr [ebp-4],eax
 005569E4    mov        esi,dword ptr [ebp+0C]
 005569E7    mov        ebx,dword ptr [ebp+14]
 005569EA    mov        eax,dword ptr [ebp-4]
 005569ED    call       @IntfAddRef
 005569F2    mov        eax,dword ptr [ebp-8]
 005569F5    call       @IntfAddRef
 005569FA    mov        eax,dword ptr [ebp-0C]
 005569FD    call       @IntfAddRef
 00556A02    xor        eax,eax
 00556A04    push       ebp
 00556A05    push       556D7A
 00556A0A    push       dword ptr fs:[eax]
 00556A0D    mov        dword ptr fs:[eax],esp
 00556A10    cmp        byte ptr [esi],0
>00556A13    je         00556A6B
 00556A15    mov        dx,14
 00556A19    mov        eax,dword ptr [ebp-0C]
 00556A1C    mov        ecx,dword ptr [eax]
 00556A1E    call       dword ptr [ecx+0C]
 00556A21    mov        dx,14
 00556A25    mov        eax,dword ptr [ebp-8]
 00556A28    mov        ecx,dword ptr [eax]
 00556A2A    call       dword ptr [ecx+0C]
 00556A2D    mov        eax,dword ptr [ebp+10]
 00556A30    cmp        word ptr [eax],0
>00556A34    je         00556A6B
 00556A36    push       0
 00556A38    mov        eax,dword ptr [ebp+10]
 00556A3B    push       eax
 00556A3C    lea        edx,[ebp-10]
 00556A3F    mov        eax,dword ptr [ebp-4]
 00556A42    mov        ecx,dword ptr [eax]
 00556A44    call       dword ptr [ecx+98]
 00556A4A    mov        eax,dword ptr [ebp-10]
 00556A4D    push       eax
 00556A4E    mov        eax,dword ptr [ebp-4]
 00556A51    mov        edx,dword ptr [eax]
 00556A53    call       dword ptr [edx+94]
 00556A59    mov        edx,eax
 00556A5B    xor        ecx,ecx
 00556A5D    pop        eax
 00556A5E    mov        edi,dword ptr [eax]
 00556A60    call       dword ptr [edi+78]
 00556A63    mov        eax,dword ptr [ebp+10]
 00556A66    mov        word ptr [eax],0
 00556A6B    xor        edx,edx
 00556A6D    push       ebp
 00556A6E    push       556CCD
 00556A73    push       dword ptr fs:[edx]
 00556A76    mov        dword ptr fs:[edx],esp
 00556A79    mov        eax,dword ptr [ebp+10]
 00556A7C    push       eax
 00556A7D    mov        eax,ebx
 00556A7F    call       @LStrToPChar
 00556A84    push       eax
 00556A85    mov        eax,dword ptr [ebp-0C]
 00556A88    mov        edx,dword ptr [eax]
 00556A8A    call       dword ptr [edx+18]
 00556A8D    push       eax
 00556A8E    push       0A03
 00556A93    push       0
 00556A95    lea        edx,[ebp-14]
 00556A98    mov        eax,dword ptr [ebp-4]
 00556A9B    mov        ecx,dword ptr [eax]
 00556A9D    call       dword ptr [ecx+98]
 00556AA3    mov        eax,dword ptr [ebp-14]
 00556AA6    push       eax
 00556AA7    mov        eax,dword ptr [ebp-4]
 00556AAA    mov        edx,dword ptr [eax]
 00556AAC    call       dword ptr [edx+94]
 00556AB2    mov        edx,eax
 00556AB4    xor        ecx,ecx
 00556AB6    pop        eax
 00556AB7    mov        edi,dword ptr [eax]
 00556AB9    call       dword ptr [edi+6C]
 00556ABC    push       ebx
 00556ABD    lea        edx,[ebp-18]
 00556AC0    mov        eax,dword ptr [ebp-4]
 00556AC3    mov        ecx,dword ptr [eax]
 00556AC5    call       dword ptr [ecx+98]
 00556ACB    mov        eax,dword ptr [ebp-18]
 00556ACE    push       eax
 00556ACF    mov        eax,dword ptr [ebp-4]
 00556AD2    mov        edx,dword ptr [eax]
 00556AD4    call       dword ptr [edx+94]
 00556ADA    mov        edx,eax
 00556ADC    mov        cl,3
 00556ADE    pop        eax
 00556ADF    call       00556588
 00556AE4    mov        eax,dword ptr [ebp-4]
 00556AE7    mov        edx,dword ptr [eax]
 00556AE9    call       dword ptr [edx+94]
 00556AEF    cmp        dword ptr [eax+68],0
 00556AF3    mov        eax,dword ptr [ebp+8]
 00556AF6    sete       byte ptr [eax]
 00556AF9    mov        eax,dword ptr [ebp-0C]
 00556AFC    mov        edx,dword ptr [eax]
 00556AFE    call       dword ptr [edx+18]
 00556B01    mov        di,word ptr [eax+0E]
 00556B05    mov        eax,dword ptr [ebp-0C]
 00556B08    mov        edx,dword ptr [eax]
 00556B0A    call       dword ptr [edx+18]
 00556B0D    cmp        di,word ptr [eax+0C]
>00556B11    jbe        00556B85
 00556B13    mov        eax,dword ptr [ebp-0C]
 00556B16    mov        edx,dword ptr [eax]
 00556B18    call       dword ptr [edx+18]
 00556B1B    mov        dx,word ptr [eax+0E]
 00556B1F    mov        eax,dword ptr [ebp-0C]
 00556B22    mov        ecx,dword ptr [eax]
 00556B24    call       dword ptr [ecx+0C]
 00556B27    mov        eax,dword ptr [ebp+10]
 00556B2A    push       eax
 00556B2B    mov        eax,dword ptr [ebp-0C]
 00556B2E    mov        edx,dword ptr [eax]
 00556B30    call       dword ptr [edx+18]
 00556B33    push       eax
 00556B34    push       2
 00556B36    lea        edx,[ebp-1C]
 00556B39    mov        eax,dword ptr [ebp-4]
 00556B3C    mov        ecx,dword ptr [eax]
 00556B3E    call       dword ptr [ecx+98]
 00556B44    mov        eax,dword ptr [ebp-1C]
 00556B47    push       eax
 00556B48    mov        eax,dword ptr [ebp-4]
 00556B4B    mov        edx,dword ptr [eax]
 00556B4D    call       dword ptr [edx+94]
 00556B53    mov        edx,eax
 00556B55    xor        ecx,ecx
 00556B57    pop        eax
 00556B58    mov        edi,dword ptr [eax]
 00556B5A    call       dword ptr [edi+74]
 00556B5D    push       ebx
 00556B5E    lea        edx,[ebp-20]
 00556B61    mov        eax,dword ptr [ebp-4]
 00556B64    mov        ecx,dword ptr [eax]
 00556B66    call       dword ptr [ecx+98]
 00556B6C    mov        eax,dword ptr [ebp-20]
 00556B6F    push       eax
 00556B70    mov        eax,dword ptr [ebp-4]
 00556B73    mov        edx,dword ptr [eax]
 00556B75    call       dword ptr [edx+94]
 00556B7B    mov        edx,eax
 00556B7D    mov        cl,3
 00556B7F    pop        eax
 00556B80    call       00556588
 00556B85    mov        eax,dword ptr [ebp+8]
 00556B88    cmp        byte ptr [eax],0
>00556B8B    jne        00556C83
 00556B91    mov        eax,dword ptr [ebp+10]
 00556B94    push       eax
 00556B95    mov        eax,dword ptr [ebp-8]
 00556B98    mov        edx,dword ptr [eax]
 00556B9A    call       dword ptr [edx+18]
 00556B9D    push       eax
 00556B9E    push       1
 00556BA0    lea        edx,[ebp-24]
 00556BA3    mov        eax,dword ptr [ebp-4]
 00556BA6    mov        ecx,dword ptr [eax]
 00556BA8    call       dword ptr [ecx+98]
 00556BAE    mov        eax,dword ptr [ebp-24]
 00556BB1    push       eax
 00556BB2    mov        eax,dword ptr [ebp-4]
 00556BB5    mov        edx,dword ptr [eax]
 00556BB7    call       dword ptr [edx+94]
 00556BBD    mov        edx,eax
 00556BBF    xor        ecx,ecx
 00556BC1    pop        eax
 00556BC2    mov        edi,dword ptr [eax]
 00556BC4    call       dword ptr [edi+74]
 00556BC7    push       ebx
 00556BC8    lea        edx,[ebp-28]
 00556BCB    mov        eax,dword ptr [ebp-4]
 00556BCE    mov        ecx,dword ptr [eax]
 00556BD0    call       dword ptr [ecx+98]
 00556BD6    mov        eax,dword ptr [ebp-28]
 00556BD9    push       eax
 00556BDA    mov        eax,dword ptr [ebp-4]
 00556BDD    mov        edx,dword ptr [eax]
 00556BDF    call       dword ptr [edx+94]
 00556BE5    mov        edx,eax
 00556BE7    mov        cl,3
 00556BE9    pop        eax
 00556BEA    call       00556588
 00556BEF    mov        eax,dword ptr [ebp-8]
 00556BF2    mov        edx,dword ptr [eax]
 00556BF4    call       dword ptr [edx+18]
 00556BF7    mov        di,word ptr [eax+0E]
 00556BFB    mov        eax,dword ptr [ebp-8]
 00556BFE    mov        edx,dword ptr [eax]
 00556C00    call       dword ptr [edx+18]
 00556C03    cmp        di,word ptr [eax+0C]
>00556C07    jbe        00556C7B
 00556C09    mov        eax,dword ptr [ebp-8]
 00556C0C    mov        edx,dword ptr [eax]
 00556C0E    call       dword ptr [edx+18]
 00556C11    mov        dx,word ptr [eax+0E]
 00556C15    mov        eax,dword ptr [ebp-8]
 00556C18    mov        ecx,dword ptr [eax]
 00556C1A    call       dword ptr [ecx+0C]
 00556C1D    mov        eax,dword ptr [ebp+10]
 00556C20    push       eax
 00556C21    mov        eax,dword ptr [ebp-8]
 00556C24    mov        edx,dword ptr [eax]
 00556C26    call       dword ptr [edx+18]
 00556C29    push       eax
 00556C2A    push       1
 00556C2C    lea        edx,[ebp-2C]
 00556C2F    mov        eax,dword ptr [ebp-4]
 00556C32    mov        ecx,dword ptr [eax]
 00556C34    call       dword ptr [ecx+98]
 00556C3A    mov        eax,dword ptr [ebp-2C]
 00556C3D    push       eax
 00556C3E    mov        eax,dword ptr [ebp-4]
 00556C41    mov        edx,dword ptr [eax]
 00556C43    call       dword ptr [edx+94]
 00556C49    mov        edx,eax
 00556C4B    xor        ecx,ecx
 00556C4D    pop        eax
 00556C4E    mov        edi,dword ptr [eax]
 00556C50    call       dword ptr [edi+74]
 00556C53    push       ebx
 00556C54    lea        edx,[ebp-30]
 00556C57    mov        eax,dword ptr [ebp-4]
 00556C5A    mov        ecx,dword ptr [eax]
 00556C5C    call       dword ptr [ecx+98]
 00556C62    mov        eax,dword ptr [ebp-30]
 00556C65    push       eax
 00556C66    mov        eax,dword ptr [ebp-4]
 00556C69    mov        edx,dword ptr [eax]
 00556C6B    call       dword ptr [edx+94]
 00556C71    mov        edx,eax
 00556C73    mov        cl,3
 00556C75    pop        eax
 00556C76    call       00556588
 00556C7B    mov        eax,dword ptr [ebp-8]
 00556C7E    mov        edx,dword ptr [eax]
 00556C80    call       dword ptr [edx+10]
 00556C83    mov        byte ptr [esi],1
 00556C86    lea        eax,[ebp-34]
 00556C89    mov        ecx,ebx
 00556C8B    mov        edx,556D94; 'Prepare: '
 00556C90    call       @LStrCat3
 00556C95    mov        eax,dword ptr [ebp-34]
 00556C98    push       eax
 00556C99    lea        edx,[ebp-3C]
 00556C9C    mov        eax,dword ptr [ebp-4]
 00556C9F    mov        ecx,dword ptr [eax]
 00556CA1    call       dword ptr [ecx+98]
 00556CA7    mov        eax,dword ptr [ebp-3C]
 00556CAA    lea        edx,[ebp-38]
 00556CAD    mov        ecx,dword ptr [eax]
 00556CAF    call       dword ptr [ecx+0C]
 00556CB2    mov        ecx,dword ptr [ebp-38]
 00556CB5    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00556CBA    mov        eax,dword ptr [eax]
 00556CBC    mov        dl,3
 00556CBE    mov        ebx,dword ptr [eax]
 00556CC0    call       dword ptr [ebx+3C]
 00556CC3    xor        eax,eax
 00556CC5    pop        edx
 00556CC6    pop        ecx
 00556CC7    pop        ecx
 00556CC8    mov        dword ptr fs:[eax],edx
>00556CCB    jmp        00556D1E
<00556CCD    jmp        @HandleOnException
 00556CD2    dd        1
 00556CD6    dd        4087B0;Exception
 00556CDA    dd        556CDE
 00556CDE    mov        eax,dword ptr [ebp+10]
 00556CE1    cmp        word ptr [eax],0
>00556CE5    je         00556D14
 00556CE7    push       0
 00556CE9    mov        eax,dword ptr [ebp+10]
 00556CEC    push       eax
 00556CED    lea        edx,[ebp-40]
 00556CF0    mov        eax,dword ptr [ebp-4]
 00556CF3    mov        ecx,dword ptr [eax]
 00556CF5    call       dword ptr [ecx+98]
 00556CFB    mov        eax,dword ptr [ebp-40]
 00556CFE    push       eax
 00556CFF    mov        eax,dword ptr [ebp-4]
 00556D02    mov        edx,dword ptr [eax]
 00556D04    call       dword ptr [edx+94]
 00556D0A    mov        edx,eax
 00556D0C    xor        ecx,ecx
 00556D0E    pop        eax
 00556D0F    mov        ebx,dword ptr [eax]
 00556D11    call       dword ptr [ebx+78]
 00556D14    call       @RaiseAgain
 00556D19    call       @DoneExcept
 00556D1E    xor        eax,eax
 00556D20    pop        edx
 00556D21    pop        ecx
 00556D22    pop        ecx
 00556D23    mov        dword ptr fs:[eax],edx
 00556D26    push       556D81
 00556D2B    lea        eax,[ebp-40]
 00556D2E    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 00556D34    mov        ecx,2
 00556D39    call       @FinalizeArray
 00556D3E    lea        eax,[ebp-38]
 00556D41    mov        edx,2
 00556D46    call       @LStrArrayClr
 00556D4B    lea        eax,[ebp-30]
 00556D4E    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 00556D54    mov        ecx,9
 00556D59    call       @FinalizeArray
 00556D5E    lea        eax,[ebp-0C]
 00556D61    mov        edx,dword ptr ds:[5508F4]; IZASASQLDA
 00556D67    mov        ecx,2
 00556D6C    call       @FinalizeArray
 00556D71    lea        eax,[ebp-4]
 00556D74    call       @IntfClear
 00556D79    ret
<00556D7A    jmp        @HandleFinally
<00556D7F    jmp        00556D2B
 00556D81    pop        edi
 00556D82    pop        esi
 00556D83    pop        ebx
 00556D84    mov        esp,ebp
 00556D86    pop        ebp
 00556D87    ret        10
*}
//end;

//00556DA0
//procedure sub_00556DA0(?:?; ?:TZVariantDynArray; ?:TZSQLTypeArray; ?:?; ?:?);
//begin
{*
 00556DA0    push       ebp
 00556DA1    mov        ebp,esp
 00556DA3    push       ecx
 00556DA4    mov        ecx,6
 00556DA9    push       0
 00556DAB    push       0
 00556DAD    dec        ecx
<00556DAE    jne        00556DA9
 00556DB0    push       ecx
 00556DB1    xchg       ecx,dword ptr [ebp-4]
 00556DB4    push       ebx
 00556DB5    mov        dword ptr [ebp-8],ecx
 00556DB8    mov        dword ptr [ebp-4],edx
 00556DBB    mov        eax,dword ptr [ebp-4]
 00556DBE    call       @DynArrayAddRef
 00556DC3    mov        eax,dword ptr [ebp-8]
 00556DC6    call       @DynArrayAddRef
 00556DCB    mov        eax,dword ptr [ebp+8]
 00556DCE    call       @IntfAddRef
 00556DD3    xor        eax,eax
 00556DD5    push       ebp
 00556DD6    push       557339
 00556DDB    push       dword ptr fs:[eax]
 00556DDE    mov        dword ptr fs:[eax],esp
 00556DE1    mov        eax,dword ptr [ebp+8]
 00556DE4    mov        edx,dword ptr [eax]
 00556DE6    call       dword ptr [edx+24]
 00556DE9    cmp        eax,dword ptr [ebp+0C]
>00556DEC    je         00556E0F
 00556DEE    lea        edx,[ebp-1C]
 00556DF1    mov        eax,[0061B5C8]; ^#122.sResString47:TResStringRec
 00556DF6    call       LoadResString
 00556DFB    mov        ecx,dword ptr [ebp-1C]
 00556DFE    mov        dl,1
 00556E00    mov        eax,[004C6D20]; EZSQLException
 00556E05    call       EZSQLException.Create; EZSQLException.Create
 00556E0A    call       @RaiseExcept
 00556E0F    mov        eax,dword ptr [ebp+8]
 00556E12    mov        edx,dword ptr [eax]
 00556E14    call       dword ptr [edx+24]
 00556E17    sub        eax,1
>00556E1A    jno        00556E21
 00556E1C    call       @IntOver
 00556E21    test       eax,eax
>00556E23    jl         005572C4
 00556E29    inc        eax
 00556E2A    mov        dword ptr [ebp-18],eax
 00556E2D    mov        dword ptr [ebp-0C],0
 00556E34    mov        eax,dword ptr [ebp-0C]
 00556E37    imul       eax,eax,0B
>00556E3A    jno        00556E41
 00556E3C    call       @IntOver
 00556E41    mov        edx,dword ptr [ebp-4]
 00556E44    lea        edx,[edx+eax*4]
 00556E47    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00556E4C    mov        eax,dword ptr [eax]
 00556E4E    mov        ecx,dword ptr [eax]
 00556E50    call       dword ptr [ecx+0C]
 00556E53    test       al,al
>00556E55    je         00556E69
 00556E57    mov        cl,1
 00556E59    mov        edx,dword ptr [ebp-0C]
 00556E5C    mov        eax,dword ptr [ebp+8]
 00556E5F    mov        ebx,dword ptr [eax]
 00556E61    call       dword ptr [ebx+3C]
>00556E64    jmp        005572B8
 00556E69    mov        eax,dword ptr [ebp-0C]
 00556E6C    mov        edx,dword ptr [ebp-8]
 00556E6F    test       edx,edx
>00556E71    je         00556E78
 00556E73    cmp        eax,dword ptr [edx-4]
>00556E76    jb         00556E7D
 00556E78    call       @BoundErr
 00556E7D    movzx      eax,byte ptr [edx+eax]
 00556E81    cmp        eax,11
>00556E84    ja         00557297
 00556E8A    jmp        dword ptr [eax*4+556E91]
 00556E8A    dd         557297
 00556E8A    dd         556ED9
 00556E8A    dd         556F0A
 00556E8A    dd         556F5A
 00556E8A    dd         556FAC
 00556E8A    dd         556FEB
 00556E8A    dd         55701C
 00556E8A    dd         557052
 00556E8A    dd         557088
 00556E8A    dd         5570BE
 00556E8A    dd         5570F3
 00556E8A    dd         557133
 00556E8A    dd         557173
 00556E8A    dd         5571A9
 00556E8A    dd         5571DF
 00556E8A    dd         557215
 00556E8A    dd         557215
 00556E8A    dd         557215
 00556ED9    mov        eax,dword ptr [ebp-0C]
 00556EDC    imul       eax,eax,0B
>00556EDF    jno        00556EE6
 00556EE1    call       @IntOver
 00556EE6    mov        edx,dword ptr [ebp-4]
 00556EE9    lea        edx,[edx+eax*4]
 00556EEC    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00556EF1    mov        eax,dword ptr [eax]
 00556EF3    mov        ecx,dword ptr [eax]
 00556EF5    call       dword ptr [ecx+24]
 00556EF8    mov        ecx,eax
 00556EFA    mov        edx,dword ptr [ebp-0C]
 00556EFD    mov        eax,dword ptr [ebp+8]
 00556F00    mov        ebx,dword ptr [eax]
 00556F02    call       dword ptr [ebx+40]
>00556F05    jmp        005572B8
 00556F0A    mov        eax,dword ptr [ebp-0C]
 00556F0D    imul       eax,eax,0B
>00556F10    jno        00556F17
 00556F12    call       @IntOver
 00556F17    mov        edx,dword ptr [ebp-4]
 00556F1A    lea        edx,[edx+eax*4]
 00556F1D    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00556F22    mov        eax,dword ptr [eax]
 00556F24    mov        ecx,dword ptr [eax]
 00556F26    call       dword ptr [ecx+28]
 00556F29    add        eax,80
 00556F2E    adc        edx,0
 00556F31    cmp        edx,0
>00556F34    jne        00556F3B
 00556F36    cmp        eax,0FF
>00556F3B    jbe        00556F42
 00556F3D    call       @BoundErr
 00556F42    add        eax,0FFFFFF80
 00556F45    adc        edx,0FFFFFFFF
 00556F48    mov        ecx,eax
 00556F4A    mov        edx,dword ptr [ebp-0C]
 00556F4D    mov        eax,dword ptr [ebp+8]
 00556F50    mov        ebx,dword ptr [eax]
 00556F52    call       dword ptr [ebx+44]
>00556F55    jmp        005572B8
 00556F5A    mov        eax,dword ptr [ebp-0C]
 00556F5D    imul       eax,eax,0B
>00556F60    jno        00556F67
 00556F62    call       @IntOver
 00556F67    mov        edx,dword ptr [ebp-4]
 00556F6A    lea        edx,[edx+eax*4]
 00556F6D    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00556F72    mov        eax,dword ptr [eax]
 00556F74    mov        ecx,dword ptr [eax]
 00556F76    call       dword ptr [ecx+28]
 00556F79    add        eax,8000
 00556F7E    adc        edx,0
 00556F81    cmp        edx,0
>00556F84    jne        00556F8B
 00556F86    cmp        eax,0FFFF
>00556F8B    jbe        00556F92
 00556F8D    call       @BoundErr
 00556F92    add        eax,0FFFF8000
 00556F97    adc        edx,0FFFFFFFF
 00556F9A    mov        ecx,eax
 00556F9C    mov        edx,dword ptr [ebp-0C]
 00556F9F    mov        eax,dword ptr [ebp+8]
 00556FA2    mov        ebx,dword ptr [eax]
 00556FA4    call       dword ptr [ebx+48]
>00556FA7    jmp        005572B8
 00556FAC    mov        eax,dword ptr [ebp-0C]
 00556FAF    imul       eax,eax,0B
>00556FB2    jno        00556FB9
 00556FB4    call       @IntOver
 00556FB9    mov        edx,dword ptr [ebp-4]
 00556FBC    lea        edx,[edx+eax*4]
 00556FBF    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00556FC4    mov        eax,dword ptr [eax]
 00556FC6    mov        ecx,dword ptr [eax]
 00556FC8    call       dword ptr [ecx+28]
 00556FCB    push       eax
 00556FCC    sar        eax,1F
 00556FCF    cmp        eax,edx
 00556FD1    pop        eax
>00556FD2    je         00556FD9
 00556FD4    call       @BoundErr
 00556FD9    mov        ecx,eax
 00556FDB    mov        edx,dword ptr [ebp-0C]
 00556FDE    mov        eax,dword ptr [ebp+8]
 00556FE1    mov        ebx,dword ptr [eax]
 00556FE3    call       dword ptr [ebx+4C]
>00556FE6    jmp        005572B8
 00556FEB    mov        eax,dword ptr [ebp-0C]
 00556FEE    imul       eax,eax,0B
>00556FF1    jno        00556FF8
 00556FF3    call       @IntOver
 00556FF8    mov        edx,dword ptr [ebp-4]
 00556FFB    lea        edx,[edx+eax*4]
 00556FFE    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00557003    mov        eax,dword ptr [eax]
 00557005    mov        ecx,dword ptr [eax]
 00557007    call       dword ptr [ecx+28]
 0055700A    push       edx
 0055700B    push       eax
 0055700C    mov        edx,dword ptr [ebp-0C]
 0055700F    mov        eax,dword ptr [ebp+8]
 00557012    mov        ecx,dword ptr [eax]
 00557014    call       dword ptr [ecx+50]
>00557017    jmp        005572B8
 0055701C    mov        eax,dword ptr [ebp-0C]
 0055701F    imul       eax,eax,0B
>00557022    jno        00557029
 00557024    call       @IntOver
 00557029    mov        edx,dword ptr [ebp-4]
 0055702C    lea        edx,[edx+eax*4]
 0055702F    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00557034    mov        eax,dword ptr [eax]
 00557036    mov        ecx,dword ptr [eax]
 00557038    call       dword ptr [ecx+2C]
 0055703B    add        esp,0FFFFFFFC
 0055703E    fstp       dword ptr [esp]
 00557041    wait
 00557042    mov        edx,dword ptr [ebp-0C]
 00557045    mov        eax,dword ptr [ebp+8]
 00557048    mov        ecx,dword ptr [eax]
 0055704A    call       dword ptr [ecx+54]
>0055704D    jmp        005572B8
 00557052    mov        eax,dword ptr [ebp-0C]
 00557055    imul       eax,eax,0B
>00557058    jno        0055705F
 0055705A    call       @IntOver
 0055705F    mov        edx,dword ptr [ebp-4]
 00557062    lea        edx,[edx+eax*4]
 00557065    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0055706A    mov        eax,dword ptr [eax]
 0055706C    mov        ecx,dword ptr [eax]
 0055706E    call       dword ptr [ecx+2C]
 00557071    add        esp,0FFFFFFF8
 00557074    fstp       qword ptr [esp]
 00557077    wait
 00557078    mov        edx,dword ptr [ebp-0C]
 0055707B    mov        eax,dword ptr [ebp+8]
 0055707E    mov        ecx,dword ptr [eax]
 00557080    call       dword ptr [ecx+58]
>00557083    jmp        005572B8
 00557088    mov        eax,dword ptr [ebp-0C]
 0055708B    imul       eax,eax,0B
>0055708E    jno        00557095
 00557090    call       @IntOver
 00557095    mov        edx,dword ptr [ebp-4]
 00557098    lea        edx,[edx+eax*4]
 0055709B    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005570A0    mov        eax,dword ptr [eax]
 005570A2    mov        ecx,dword ptr [eax]
 005570A4    call       dword ptr [ecx+2C]
 005570A7    add        esp,0FFFFFFF4
 005570AA    fstp       tbyte ptr [esp]
 005570AD    wait
 005570AE    mov        edx,dword ptr [ebp-0C]
 005570B1    mov        eax,dword ptr [ebp+8]
 005570B4    mov        ecx,dword ptr [eax]
 005570B6    call       dword ptr [ecx+5C]
>005570B9    jmp        005572B8
 005570BE    mov        eax,dword ptr [ebp-0C]
 005570C1    imul       eax,eax,0B
>005570C4    jno        005570CB
 005570C6    call       @IntOver
 005570CB    mov        edx,dword ptr [ebp-4]
 005570CE    lea        edx,[edx+eax*4]
 005570D1    lea        ecx,[ebp-20]
 005570D4    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005570D9    mov        eax,dword ptr [eax]
 005570DB    mov        ebx,dword ptr [eax]
 005570DD    call       dword ptr [ebx+30]
 005570E0    mov        ecx,dword ptr [ebp-20]
 005570E3    mov        edx,dword ptr [ebp-0C]
 005570E6    mov        eax,dword ptr [ebp+8]
 005570E9    mov        ebx,dword ptr [eax]
 005570EB    call       dword ptr [ebx+64]
>005570EE    jmp        005572B8
 005570F3    mov        eax,dword ptr [ebp-0C]
 005570F6    imul       eax,eax,0B
>005570F9    jno        00557100
 005570FB    call       @IntOver
 00557100    mov        edx,dword ptr [ebp-4]
 00557103    lea        edx,[edx+eax*4]
 00557106    lea        ecx,[ebp-28]
 00557109    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0055710E    mov        eax,dword ptr [eax]
 00557110    mov        ebx,dword ptr [eax]
 00557112    call       dword ptr [ebx+34]
 00557115    mov        edx,dword ptr [ebp-28]
 00557118    lea        eax,[ebp-24]
 0055711B    call       @LStrFromWStr
 00557120    mov        ecx,dword ptr [ebp-24]
 00557123    mov        edx,dword ptr [ebp-0C]
 00557126    mov        eax,dword ptr [ebp+8]
 00557129    mov        ebx,dword ptr [eax]
 0055712B    call       dword ptr [ebx+64]
>0055712E    jmp        005572B8
 00557133    mov        eax,dword ptr [ebp-0C]
 00557136    imul       eax,eax,0B
>00557139    jno        00557140
 0055713B    call       @IntOver
 00557140    mov        edx,dword ptr [ebp-4]
 00557143    lea        edx,[edx+eax*4]
 00557146    lea        ecx,[ebp-30]
 00557149    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0055714E    mov        eax,dword ptr [eax]
 00557150    mov        ebx,dword ptr [eax]
 00557152    call       dword ptr [ebx+30]
 00557155    mov        eax,dword ptr [ebp-30]
 00557158    lea        edx,[ebp-2C]
 0055715B    call       004BF678
 00557160    mov        ecx,dword ptr [ebp-2C]
 00557163    mov        edx,dword ptr [ebp-0C]
 00557166    mov        eax,dword ptr [ebp+8]
 00557169    mov        ebx,dword ptr [eax]
 0055716B    call       dword ptr [ebx+68]
>0055716E    jmp        005572B8
 00557173    mov        eax,dword ptr [ebp-0C]
 00557176    imul       eax,eax,0B
>00557179    jno        00557180
 0055717B    call       @IntOver
 00557180    mov        edx,dword ptr [ebp-4]
 00557183    lea        edx,[edx+eax*4]
 00557186    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0055718B    mov        eax,dword ptr [eax]
 0055718D    mov        ecx,dword ptr [eax]
 0055718F    call       dword ptr [ecx+38]
 00557192    add        esp,0FFFFFFF8
 00557195    fstp       qword ptr [esp]
 00557198    wait
 00557199    mov        edx,dword ptr [ebp-0C]
 0055719C    mov        eax,dword ptr [ebp+8]
 0055719F    mov        ecx,dword ptr [eax]
 005571A1    call       dword ptr [ecx+6C]
>005571A4    jmp        005572B8
 005571A9    mov        eax,dword ptr [ebp-0C]
 005571AC    imul       eax,eax,0B
>005571AF    jno        005571B6
 005571B1    call       @IntOver
 005571B6    mov        edx,dword ptr [ebp-4]
 005571B9    lea        edx,[edx+eax*4]
 005571BC    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005571C1    mov        eax,dword ptr [eax]
 005571C3    mov        ecx,dword ptr [eax]
 005571C5    call       dword ptr [ecx+38]
 005571C8    add        esp,0FFFFFFF8
 005571CB    fstp       qword ptr [esp]
 005571CE    wait
 005571CF    mov        edx,dword ptr [ebp-0C]
 005571D2    mov        eax,dword ptr [ebp+8]
 005571D5    mov        ecx,dword ptr [eax]
 005571D7    call       dword ptr [ecx+70]
>005571DA    jmp        005572B8
 005571DF    mov        eax,dword ptr [ebp-0C]
 005571E2    imul       eax,eax,0B
>005571E5    jno        005571EC
 005571E7    call       @IntOver
 005571EC    mov        edx,dword ptr [ebp-4]
 005571EF    lea        edx,[edx+eax*4]
 005571F2    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005571F7    mov        eax,dword ptr [eax]
 005571F9    mov        ecx,dword ptr [eax]
 005571FB    call       dword ptr [ecx+38]
 005571FE    add        esp,0FFFFFFF8
 00557201    fstp       qword ptr [esp]
 00557204    wait
 00557205    mov        edx,dword ptr [ebp-0C]
 00557208    mov        eax,dword ptr [ebp+8]
 0055720B    mov        ecx,dword ptr [eax]
 0055720D    call       dword ptr [ecx+74]
>00557210    jmp        005572B8
 00557215    mov        eax,dword ptr [ebp-0C]
 00557218    imul       eax,eax,0B
>0055721B    jno        00557222
 0055721D    call       @IntOver
 00557222    mov        edx,dword ptr [ebp-4]
 00557225    lea        edx,[edx+eax*4]
 00557228    lea        ecx,[ebp-34]
 0055722B    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00557230    mov        eax,dword ptr [eax]
 00557232    mov        ebx,dword ptr [eax]
 00557234    call       dword ptr [ebx+40]
 00557237    mov        edx,dword ptr [ebp-34]
 0055723A    lea        eax,[ebp-10]
 0055723D    mov        ecx,557348; ['{47D209F1-D065-49DD-A156-EFD1E523F6BF}']
 00557242    call       @IntfCast
 00557247    mov        eax,dword ptr [ebp-10]
 0055724A    mov        edx,dword ptr [eax]
 0055724C    call       dword ptr [edx+0C]
 0055724F    test       al,al
>00557251    jne        005572B8
 00557253    mov        eax,dword ptr [ebp-10]
 00557256    mov        edx,dword ptr [eax]
 00557258    call       dword ptr [edx+30]
 0055725B    mov        dword ptr [ebp-14],eax
 0055725E    xor        eax,eax
 00557260    push       ebp
 00557261    push       557290
 00557266    push       dword ptr fs:[eax]
 00557269    mov        dword ptr fs:[eax],esp
 0055726C    mov        ecx,dword ptr [ebp-14]
 0055726F    mov        edx,dword ptr [ebp-0C]
 00557272    mov        eax,dword ptr [ebp+8]
 00557275    mov        ebx,dword ptr [eax]
 00557277    call       dword ptr [ebx+7C]
 0055727A    xor        eax,eax
 0055727C    pop        edx
 0055727D    pop        ecx
 0055727E    pop        ecx
 0055727F    mov        dword ptr fs:[eax],edx
 00557282    push       5572B8
 00557287    mov        eax,dword ptr [ebp-14]
 0055728A    call       TObject.Free
 0055728F    ret
<00557290    jmp        @HandleFinally
<00557295    jmp        00557287
 00557297    lea        edx,[ebp-38]
 0055729A    mov        eax,[0061B4A4]; ^#122.sResString75:TResStringRec
 0055729F    call       LoadResString
 005572A4    mov        ecx,dword ptr [ebp-38]
 005572A7    mov        dl,1
 005572A9    mov        eax,[00550894]; EZASAConvertError
 005572AE    call       Exception.Create; EZASAConvertError.Create
 005572B3    call       @RaiseExcept
 005572B8    inc        dword ptr [ebp-0C]
 005572BB    dec        dword ptr [ebp-18]
<005572BE    jne        00556E34
 005572C4    xor        eax,eax
 005572C6    pop        edx
 005572C7    pop        ecx
 005572C8    pop        ecx
 005572C9    mov        dword ptr fs:[eax],edx
 005572CC    push       557340
 005572D1    lea        eax,[ebp-38]
 005572D4    call       @LStrClr
 005572D9    lea        eax,[ebp-34]
 005572DC    call       @IntfClear
 005572E1    lea        eax,[ebp-30]
 005572E4    call       @LStrClr
 005572E9    lea        eax,[ebp-2C]
 005572EC    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 005572F2    call       @DynArrayClear
 005572F7    lea        eax,[ebp-28]
 005572FA    call       @WStrClr
 005572FF    lea        eax,[ebp-24]
 00557302    mov        edx,3
 00557307    call       @LStrArrayClr
 0055730C    lea        eax,[ebp-10]
 0055730F    call       @IntfClear
 00557314    lea        eax,[ebp-8]
 00557317    mov        edx,dword ptr ds:[4DE944]; TZSQLTypeArray
 0055731D    call       @DynArrayClear
 00557322    lea        eax,[ebp-4]
 00557325    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 0055732B    call       @DynArrayClear
 00557330    lea        eax,[ebp+8]
 00557333    call       @IntfClear
 00557338    ret
<00557339    jmp        @HandleFinally
<0055733E    jmp        005572D1
 00557340    pop        ebx
 00557341    mov        esp,ebp
 00557343    pop        ebp
 00557344    ret        8
*}
//end;

//00557358
//procedure sub_00557358(?:?; ?:AnsiString);
//begin
{*
 00557358    push       ebp
 00557359    mov        ebp,esp
 0055735B    add        esp,0FFFFFFF8
 0055735E    push       ebx
 0055735F    push       esi
 00557360    xor        ecx,ecx
 00557362    mov        dword ptr [ebp-4],ecx
 00557365    mov        ebx,edx
 00557367    mov        esi,eax
 00557369    xor        eax,eax
 0055736B    push       ebp
 0055736C    push       5573E4
 00557371    push       dword ptr fs:[eax]
 00557374    mov        dword ptr fs:[eax],esp
 00557377    mov        eax,ebx
 00557379    call       @LStrClr
>0055737E    jmp        005573A9
 00557380    mov        eax,7FFFFFFF
 00557385    call       @RandInt
 0055738A    mov        dword ptr [ebp-8],eax
 0055738D    fild       dword ptr [ebp-8]
 00557390    call       @TRUNC
 00557395    push       edx
 00557396    push       eax
 00557397    lea        eax,[ebp-4]
 0055739A    call       IntToStr
 0055739F    mov        edx,dword ptr [ebp-4]
 005573A2    mov        eax,ebx
 005573A4    call       @LStrCat
 005573A9    mov        eax,dword ptr [ebx]
 005573AB    call       @LStrLen
 005573B0    cmp        esi,eax
<005573B2    jg         00557380
 005573B4    mov        eax,dword ptr [ebx]
 005573B6    call       @LStrLen
 005573BB    cmp        esi,eax
>005573BD    jge        005573CE
 005573BF    push       ebx
 005573C0    mov        eax,dword ptr [ebx]
 005573C2    mov        ecx,esi
 005573C4    mov        edx,1
 005573C9    call       @LStrCopy
 005573CE    xor        eax,eax
 005573D0    pop        edx
 005573D1    pop        ecx
 005573D2    pop        ecx
 005573D3    mov        dword ptr fs:[eax],edx
 005573D6    push       5573EB
 005573DB    lea        eax,[ebp-4]
 005573DE    call       @LStrClr
 005573E3    ret
<005573E4    jmp        @HandleFinally
<005573E9    jmp        005573DB
 005573EB    pop        esi
 005573EC    pop        ebx
 005573ED    pop        ecx
 005573EE    pop        ecx
 005573EF    pop        ebp
 005573F0    ret
*}
//end;

end.